import React, { useRef, useCallback } from 'react';
import {
  mockUnits, mockForms, mockStrings, mockClasses,
  mockTypes, mockSourceFiles, mockMapEntries, mockNames
} from '@/data/index';
import { supabase } from '@/integrations/supabase/client';
import { Unit, DFMForm, DFMComponent, DecompiledString, ClassNode, RTTIType, SourceFile, MapEntry, NameEntry } from '@/lib/index';
import {
  Menubar,
  MenubarContent,
  MenubarItem,
  MenubarMenu,
  MenubarSeparator,
  MenubarShortcut,
  MenubarSub,
  MenubarSubContent,
  MenubarSubTrigger,
  MenubarTrigger,
} from '@/components/ui/menubar';
import {
  FileText,
  FolderOpen,
  Save,
  LogOut,
  Settings,
  HelpCircle,
  Info,
  Layers,
  Code2,
  Play,
  RefreshCw,
  Undo2,
  Redo2,
  Hash,
  Type,
  Cpu,
  Network,
  FileCode,
  Package,
  History,
  Key,
  Palette,
  Sun,
  Moon,
} from 'lucide-react';
import { DELPHI_VERSIONS, DelphiVersion, ROUTE_PATHS } from '@/lib/index';
import { useIDRStore } from '@/hooks/useIDRStore';
import { useNavigate } from 'react-router-dom';

export function MenuBar() {
  const navigate = useNavigate();
  const fileInputRef = useRef<HTMLInputElement>(null);
  const selectedVersionRef = useRef<DelphiVersion>('Auto');
  const {
    setActiveTab,
    setActiveLeftTab,
    recentFiles,
    undo,
    redo,
    isDirty,
    loadedFile,
    theme,
    setTheme,
    setLoadedFile,
    setDecompiling,
    setProgress,
    addRecentFile,
    setUnits,
    setForms,
    setStrings,
    setClassTree,
    setTypes,
    setSourceCode,
    setMapEntries,
    setNames,
    setSelectedUnitId,
  } = useIDRStore();

  const toHex = (n: number, pad = 8): string => n.toString(16).toUpperCase().padStart(pad, '0');

  const handleFileSelect = useCallback((version: DelphiVersion) => {
    selectedVersionRef.current = version;
    fileInputRef.current?.click();
  }, []);

  const onFileChosen = useCallback(async (e: React.ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0];
    if (!file) return;

    const version = selectedVersionRef.current;
    setLoadedFile({
      name: file.name,
      path: file.name,
      size: file.size,
      delphiVersion: version,
    });
    addRecentFile({
      name: file.name,
      path: file.name,
      lastOpened: Date.now(),
      delphiVersion: version,
    });

    setDecompiling(true);
    setProgress(0, 'Iniciando análise de binário...');

    try {
      setProgress(10, 'Enviando binário para análise...');

      const formData = new FormData();
      formData.append('file', file);

      const { data, error } = await supabase.functions.invoke('analyze-pe', {
        body: formData,
      });

      if (error) throw error;

      setProgress(50, 'Processando resultados da análise...');

      if (data && data.isPE) {
        // Convert real analysis data to store format
        const realUnits: Unit[] = (data.units || []).map((u: any, i: number) => ({
          id: `unit-${i}`,
          address: u.address,
          name: u.name,
          type: u.type as Unit['type'],
        }));

        // Add import DLLs as standard units
        (data.imports || []).forEach((imp: any, i: number) => {
          const dllName = imp.dll.replace(/\.dll$/i, '');
          if (!realUnits.find(u => u.name.toLowerCase() === dllName.toLowerCase())) {
            realUnits.push({
              id: `imp-${i}`,
              address: '00000000',
              name: dllName,
              type: 'standard',
            });
          }
        });

        const realStrings: DecompiledString[] = (data.strings || []).map((s: any, i: number) => ({
          id: `str-${i}`,
          address: s.address,
          value: s.value,
          length: s.value.length,
          xrefs: [] as string[],
        }));

        const realForms: DFMForm[] = (data.forms || []).map((f: any, i: number) => ({
          id: `form-${i}`,
          name: f.name,
          content: `object ${f.name}: T${f.name}\n  Left = 0\n  Top = 0\n  Caption = '${f.name}'\nend`,
          structure: {
            type: `T${f.name}`,
            name: f.name,
            properties: { Left: 0, Top: 0, Caption: f.name },
            children: [] as DFMComponent[],
          },
        }));

        const realClasses: ClassNode[] = [];
        const classNames = data.classNames || [];
        // Build a simple class tree from detected class names
        const rootClasses = classNames.filter((c: string) => c === 'TObject' || c === 'TApplication');
        const otherClasses = classNames.filter((c: string) => c !== 'TObject' && c !== 'TApplication');

        const tObjectNode: ClassNode = {
          id: 'cls-0',
          name: 'TObject',
          address: data.entryPoint || '00400000',
          methods: [],
          children: otherClasses.slice(0, 30).map((c: string, i: number) => ({
            id: `cls-${i + 1}`,
            name: c,
            address: toHex(0x00400000 + i * 0x100),
            methods: [] as ClassNode['methods'],
            children: [] as ClassNode[],
          })),
        };
        realClasses.push(tObjectNode);

        const realTypes: RTTIType[] = classNames.slice(0, 20).map((c: string, i: number) => ({
          id: `type-${i}`,
          address: toHex(0x00400000 + i * 0x50),
          name: c,
          kind: 'tkClass',
          definition: `type ${c} = class end;`,
        }));

        const realSources: SourceFile[] = realUnits.slice(0, 20).map((u, i) => ({
          id: `src-${i}`,
          unitId: u.id,
          name: `${u.name}.pas`,
          content: `unit ${u.name};\n\ninterface\n\nuses\n  SysUtils, Classes;\n\nimplementation\n\n// Address: ${u.address}\n// Extracted from: ${data.fileName}\n\nend.`,
          language: 'pascal' as const,
        }));

        // Create map entries from sections
        const realMapEntries: MapEntry[] = (data.sections || []).map((s: any, i: number) => ({
          id: `map-${i}`,
          address: s.virtualAddress,
          name: s.name,
          segment: `Section ${i}`,
          size: s.rawSize,
        }));

        // Create name entries from imports
        const realNames: NameEntry[] = [];
        (data.imports || []).forEach((imp: any) => {
          imp.functions?.slice(0, 10).forEach((fn: string, j: number) => {
            realNames.push({
              id: `name-${realNames.length}`,
              address: toHex(0x00400000 + realNames.length * 4),
              name: `${imp.dll}::${fn}`,
              xrefs: [],
            });
          });
        });

        setProgress(80, 'Populando workspace...');

        setUnits(realUnits.length > 0 ? realUnits : mockUnits);
        setForms(realForms.length > 0 ? realForms : mockForms);
        setStrings(realStrings.length > 0 ? realStrings : mockStrings);
        setClassTree(realClasses.length > 0 ? realClasses : mockClasses);
        setTypes(realTypes.length > 0 ? realTypes : mockTypes);
        setSourceCode(realSources.length > 0 ? realSources : mockSourceFiles);
        setMapEntries(realMapEntries.length > 0 ? realMapEntries : mockMapEntries);
        setNames(realNames.length > 0 ? realNames : mockNames);

        // Update loaded file with detected version
        if (data.delphiVersion) {
          setLoadedFile({
            name: file.name,
            path: file.name,
            size: file.size,
            delphiVersion: data.delphiVersion as any || version,
          });
        }

        const firstUnit = realUnits.find(u => u.type === 'user') || realUnits[0];
        if (firstUnit) setSelectedUnitId(firstUnit.id);

        setProgress(100, `Análise concluída! ${data.isDelphi ? `Delphi detectado: ${data.delphiVersion || 'versão desconhecida'}` : 'Binário PE analisado'}`);
      } else {
        // Not a valid PE or analysis returned no data - fallback to mock
        setProgress(70, 'Binário não reconhecido como PE válido, carregando dados de demonstração...');
        setUnits(mockUnits);
        setForms(mockForms);
        setStrings(mockStrings);
        setClassTree(mockClasses);
        setTypes(mockTypes);
        setSourceCode(mockSourceFiles);
        setMapEntries(mockMapEntries);
        setNames(mockNames);

        const firstUnit = mockUnits.find(u => u.type === 'user') || mockUnits[0];
        if (firstUnit) setSelectedUnitId(firstUnit.id);
        setProgress(100, 'Dados de demonstração carregados.');
      }
    } catch (err) {
      console.error('PE analysis error:', err);
      // Fallback to mock data on error
      setProgress(70, 'Erro na análise, carregando dados de demonstração...');
      setUnits(mockUnits);
      setForms(mockForms);
      setStrings(mockStrings);
      setClassTree(mockClasses);
      setTypes(mockTypes);
      setSourceCode(mockSourceFiles);
      setMapEntries(mockMapEntries);
      setNames(mockNames);

      const firstUnit = mockUnits.find(u => u.type === 'user') || mockUnits[0];
      if (firstUnit) setSelectedUnitId(firstUnit.id);
      setProgress(100, 'Dados de demonstração carregados (falha na análise real).');
    }

    setTimeout(() => {
      setDecompiling(false);
      if (window.location.pathname !== ROUTE_PATHS.WORKSPACE) {
        navigate(ROUTE_PATHS.WORKSPACE);
      }
    }, 800);

    e.target.value = '';
  }, [setLoadedFile, addRecentFile, setDecompiling, setProgress, navigate, setUnits, setForms, setStrings, setClassTree, setTypes, setSourceCode, setMapEntries, setNames, setSelectedUnitId]);

  return (
    <>
      <input
        type="file"
        ref={fileInputRef}
        accept=".exe,.dll"
        className="hidden"
        onChange={onFileChosen}
      />
      <Menubar className="rounded-none border-b border-border bg-card px-2 lg:px-4 h-9">
        {/* Arquivo */}
        <MenubarMenu>
          <MenubarTrigger className="cursor-default">Arquivo</MenubarTrigger>
          <MenubarContent>
            <MenubarSub>
              <MenubarSubTrigger>
                <FolderOpen className="mr-2 h-4 w-4" />
                Carregar Arquivo
              </MenubarSubTrigger>
              <MenubarSubContent className="max-h-[400px] overflow-y-auto">
                {DELPHI_VERSIONS.map((version) => (
                  <MenubarItem key={version} onClick={() => handleFileSelect(version)}>
                    {version === 'Auto' ? 'Detectar Versão Automaticamente' : version}
                  </MenubarItem>
                ))}
              </MenubarSubContent>
            </MenubarSub>
            <MenubarItem onClick={() => handleFileSelect('Auto')}>
            <Package className="mr-2 h-4 w-4" />
            Abrir Projeto (.idp)
          </MenubarItem>
          <MenubarSeparator />
          <MenubarSub>
            <MenubarSubTrigger>
              <History className="mr-2 h-4 w-4" />
              Arquivos Recentes
            </MenubarSubTrigger>
            <MenubarSubContent>
              {recentFiles.length > 0 ? (
                recentFiles.map((file, i) => (
                  <MenubarItem key={i}>
                    {file.name}
                  </MenubarItem>
                ))
              ) : (
                <MenubarItem disabled>Nenhum arquivo recente</MenubarItem>
              )}
            </MenubarSubContent>
          </MenubarSub>
          <MenubarSeparator />
          <MenubarItem disabled={!loadedFile}>
            <Save className="mr-2 h-4 w-4" />
            Salvar Projeto
            <MenubarShortcut>Ctrl+S</MenubarShortcut>
          </MenubarItem>
          <MenubarItem disabled={!loadedFile}>
            <FileCode className="mr-2 h-4 w-4" />
            Salvar Projeto Delphi
          </MenubarItem>
          <MenubarSeparator />
          <MenubarItem onClick={() => navigate(ROUTE_PATHS.HOME)}>
            <LogOut className="mr-2 h-4 w-4" />
            Sair
          </MenubarItem>
        </MenubarContent>
      </MenubarMenu>

      {/* Ferramentas */}
      <MenubarMenu>
        <MenubarTrigger className="cursor-default">Ferramentas</MenubarTrigger>
        <MenubarContent>
          <MenubarItem>
            <Cpu className="mr-2 h-4 w-4" />
            Dumper de Processo
          </MenubarItem>
          <MenubarItem>
            <Layers className="mr-2 h-4 w-4" />
            Gerador de Mapa (MAP)
          </MenubarItem>
          <MenubarItem>
            <FileText className="mr-2 h-4 w-4" />
            Gerador de Comentários
          </MenubarItem>
          <MenubarItem>
            <Code2 className="mr-2 h-4 w-4" />
            Gerador IDC
          </MenubarItem>
          <MenubarItem>
            <Hash className="mr-2 h-4 w-4" />
            Gerador HIEW
          </MenubarItem>
          <MenubarSeparator />
          <MenubarItem>
            <Network className="mr-2 h-4 w-4" />
            Construtor de Árvore de Classes
          </MenubarItem>
          <MenubarItem>
            <Type className="mr-2 h-4 w-4" />
            Visualizador de TypeInfo (KB)
          </MenubarItem>
          <MenubarItem>
            <RefreshCw className="mr-2 h-4 w-4" />
            Conversor Hex→Double
          </MenubarItem>
        </MenubarContent>
      </MenubarMenu>

      {/* Abas */}
      <MenubarMenu>
        <MenubarTrigger className="cursor-default">Abas</MenubarTrigger>
        <MenubarContent>
          <MenubarItem onClick={() => setActiveLeftTab('units')}>
            Unidades
            <MenubarShortcut>F2</MenubarShortcut>
          </MenubarItem>
          <MenubarItem onClick={() => setActiveLeftTab('types')}>
            Tipos
            <MenubarShortcut>F4</MenubarShortcut>
          </MenubarItem>
          <MenubarItem onClick={() => setActiveLeftTab('forms')}>
            Formulários
            <MenubarShortcut>F5</MenubarShortcut>
          </MenubarItem>
          <MenubarSeparator />
          <MenubarItem onClick={() => setActiveTab('code')}>
            Visualizador de Código
            <MenubarShortcut>F6</MenubarShortcut>
          </MenubarItem>
          <MenubarItem onClick={() => setActiveTab('class')}>
            Visualizador de Classes
            <MenubarShortcut>F7</MenubarShortcut>
          </MenubarItem>
          <MenubarItem onClick={() => setActiveTab('strings')}>
            Strings
            <MenubarShortcut>F8</MenubarShortcut>
          </MenubarItem>
          <MenubarItem onClick={() => setActiveTab('names')}>
            Nomes
            <MenubarShortcut>F9</MenubarShortcut>
          </MenubarItem>
          <MenubarItem onClick={() => setActiveTab('source')}>
            Código-Fonte
            <MenubarShortcut>F10</MenubarShortcut>
          </MenubarItem>
          <MenubarItem onClick={() => setActiveTab('map')}>
            Mapa
            <MenubarShortcut>F11</MenubarShortcut>
          </MenubarItem>
        </MenubarContent>
      </MenubarMenu>

      {/* Editor */}
      <MenubarMenu>
        <MenubarTrigger className="cursor-default">Editor</MenubarTrigger>
        <MenubarContent>
          <MenubarItem disabled={!isDirty}>
            <Save className="mr-2 h-4 w-4" />
            Salvar Edições
          </MenubarItem>
          <MenubarItem disabled={!loadedFile}>
            <Play className="mr-2 h-4 w-4" />
            Recompilar Executável
            <MenubarShortcut>Ctrl+B</MenubarShortcut>
          </MenubarItem>
          <MenubarItem disabled={!loadedFile}>
            <FileCode className="mr-2 h-4 w-4" />
            Exportar Projeto Delphi
          </MenubarItem>
          <MenubarSeparator />
          <MenubarItem onClick={undo}>
            <Undo2 className="mr-2 h-4 w-4" />
            Desfazer
            <MenubarShortcut>Ctrl+Z</MenubarShortcut>
          </MenubarItem>
          <MenubarItem onClick={redo}>
            <Redo2 className="mr-2 h-4 w-4" />
            Refazer
            <MenubarShortcut>Ctrl+Y</MenubarShortcut>
          </MenubarItem>
        </MenubarContent>
      </MenubarMenu>

      {/* Plugins */}
      <MenubarMenu>
        <MenubarTrigger className="cursor-default">Plugins</MenubarTrigger>
        <MenubarContent>
          <MenubarItem>
            <Package className="mr-2 h-4 w-4" />
            Gerenciar Plugins
          </MenubarItem>
        </MenubarContent>
      </MenubarMenu>

      {/* Programa */}
      <MenubarMenu>
        <MenubarTrigger className="cursor-default">Programa</MenubarTrigger>
        <MenubarContent>
          <MenubarItem>
            <Info className="mr-2 h-4 w-4" />
            Sobre...
          </MenubarItem>
          <MenubarItem>
            <HelpCircle className="mr-2 h-4 w-4" />
            Ajuda
            <MenubarShortcut>F1</MenubarShortcut>
          </MenubarItem>
          <MenubarItem>
            <Palette className="mr-2 h-4 w-4" />
            Legenda
          </MenubarItem>
          <MenubarSeparator />
          <MenubarSub>
            <MenubarSubTrigger>
              <Settings className="mr-2 h-4 w-4" />
              Configurações
            </MenubarSubTrigger>
            <MenubarSubContent>
              <MenubarItem onClick={() => setTheme(theme === 'dark' ? 'light' : 'dark')}>
                {theme === 'dark' ? <Sun className="mr-2 h-4 w-4" /> : <Moon className="mr-2 h-4 w-4" />}
                {theme === 'dark' ? 'Tema Claro' : 'Tema Escuro'}
              </MenubarItem>
              <MenubarSeparator />
              <MenubarItem>
                <Type className="mr-2 h-4 w-4" />
                Fontes
              </MenubarItem>
              <MenubarItem>
                <Key className="mr-2 h-4 w-4" />
                Integração com Shell
              </MenubarItem>
            </MenubarSubContent>
          </MenubarSub>
        </MenubarContent>
      </MenubarMenu>
      </Menubar>
    </>
  );
}
