import React, { useState, useMemo } from 'react';
import { 
  ArrowLeft, 
  ArrowRight, 
  Code2, 
  Crosshair, 
  Hash, 
  Search, 
  Copy, 
  Edit3, 
  ExternalLink,
  ChevronRight
} from 'lucide-react';
import { useIDRStore } from '@/hooks/useIDRStore';
import { Button } from '@/components/ui/button';
import { ScrollArea } from '@/components/ui/scroll-area';
import { Separator } from '@/components/ui/separator';
import {
  ContextMenu,
  ContextMenuContent,
  ContextMenuItem,
  ContextMenuSeparator,
  ContextMenuTrigger,
  ContextMenuSub,
  ContextMenuSubTrigger,
  ContextMenuSubContent
} from '@/components/ui/context-menu';
import { Badge } from '@/components/ui/badge';
import { cn } from '@/lib/utils';

interface AsmLine {
  address: string;
  bytes: string;
  mnemonic: string;
  operands: string;
  comment?: string;
  isLabel?: boolean;
  isModified?: boolean;
}

export function CodeViewer() {
  const { 
    loadedFile, 
    selectedUnitId, 
    units, 
    sourceCode,
    setActiveTab, 
    font 
  } = useIDRStore();
  
  const [currentAddress, setCurrentAddress] = useState('00401000');
  const [history, setHistory] = useState<string[]>(['00401000']);
  const [historyIndex, setHistoryIndex] = useState(0);

  const selectedUnit = useMemo(() => 
    units.find(u => u.id === selectedUnitId), 
    [units, selectedUnitId]
  );


  // Parse assembly/pascal from the selected unit's source files
  const asmLines: AsmLine[] = useMemo(() => {
    if (!selectedUnitId) return [];

    // Find ASM source first, then Pascal
    const asmFile = sourceCode.find(f => f.unitId === selectedUnitId && f.language === 'asm');
    const pasFile = sourceCode.find(f => f.unitId === selectedUnitId && f.language === 'pascal');
    
    const sourceContent = asmFile?.content || pasFile?.content || '';
    if (!sourceContent) return [];

    const lines: AsmLine[] = [];
    const contentLines = sourceContent.split('\n');

    for (const line of contentLines) {
      const trimmed = line.trim();
      
      // Match assembly lines like: "0066B808   8B00   mov     eax, [eax]"
      const asmMatch = trimmed.match(/^([0-9A-Fa-f]{8})\s+([0-9A-Fa-f\s]+?)\s{2,}(\w+)\s*(.*?)$/);
      if (asmMatch) {
        const [, addr, bytes, mnemonic, rest] = asmMatch;
        const commentIdx = rest.indexOf(';');
        const operands = commentIdx >= 0 ? rest.substring(0, commentIdx).trim() : rest.trim();
        const comment = commentIdx >= 0 ? rest.substring(commentIdx + 1).trim() : undefined;
        lines.push({ address: addr, bytes: bytes.trim(), mnemonic, operands, comment });
        continue;
      }

      // Match lines from {* ... *} blocks: " 0066B808    mov     eax,[eax]"
      const blockMatch = trimmed.match(/^>?([0-9A-Fa-f]{8})\s+(\w+)\s*(.*?)$/);
      if (blockMatch) {
        const [, addr, mnemonic, rest] = blockMatch;
        const commentIdx = rest.indexOf(';');
        const operands = commentIdx >= 0 ? rest.substring(0, commentIdx).trim() : rest.trim();
        const comment = commentIdx >= 0 ? rest.substring(commentIdx + 1).trim() : undefined;
        lines.push({ address: addr, bytes: '', mnemonic, operands, comment });
        continue;
      }

      // Match procedure/function labels
      const labelMatch = trimmed.match(/^(procedure|function|constructor|destructor)\s+(.+)/i);
      if (labelMatch) {
        lines.push({ address: '', bytes: '', mnemonic: labelMatch[1], operands: labelMatch[2], isLabel: true });
        continue;
      }

      // Match "//00XXXXXX" address comments as section headers
      const sectionMatch = trimmed.match(/^\/\/([0-9A-Fa-f]{8})$/);
      if (sectionMatch) {
        lines.push({ address: sectionMatch[1], bytes: '', mnemonic: '--- ', operands: `Section @ ${sectionMatch[1]}`, isLabel: true });
        continue;
      }

      // Skip non-code lines (comments, empty, begin/end, {*, *})
      if (!trimmed || trimmed.startsWith('//') || trimmed.startsWith('{') || trimmed.startsWith('*}') || 
          trimmed === 'begin' || trimmed === 'end;' || trimmed === 'end.' ||
          trimmed.startsWith('unit ') || trimmed === 'interface' || trimmed === 'implementation' ||
          trimmed.startsWith('uses')) {
        continue;
      }
    }

    return lines.length > 0 ? lines : [
      { address: '', bytes: '', mnemonic: '; ', operands: 'Nenhum código assembly disponível para esta unidade', isLabel: true }
    ];
  }, [selectedUnitId, sourceCode]);

  const navigateTo = (address: string) => {
    const newHistory = history.slice(0, historyIndex + 1);
    newHistory.push(address);
    setHistory(newHistory);
    setHistoryIndex(newHistory.length - 1);
    setCurrentAddress(address);
  };

  const goBack = () => {
    if (historyIndex > 0) {
      const newIndex = historyIndex - 1;
      setHistoryIndex(newIndex);
      setCurrentAddress(history[newIndex]);
    }
  };

  const goForward = () => {
    if (historyIndex < history.length - 1) {
      const newIndex = historyIndex + 1;
      setHistoryIndex(newIndex);
      setCurrentAddress(history[newIndex]);
    }
  };

  const goToEntryPoint = () => navigateTo('00401000');

  const getMnemonicColor = (mnemonic: string) => {
    const m = mnemonic.toLowerCase();
    if (['call', 'jmp', 'ret', 'jz', 'jnz', 'je', 'jne'].includes(m)) return 'text-chart-1'; // Jump/Call (Blue)
    if (['push', 'pop', 'mov', 'lea'].includes(m)) return 'text-chart-2'; // Data (Green)
    if (['add', 'sub', 'xor', 'inc', 'dec', 'cmp'].includes(m)) return 'text-chart-5'; // Logic (Purple)
    return 'text-foreground';
  };

  return (
    <div className="flex flex-col h-full bg-background border-l border-border">
      {/* Toolbar Superior */}
      <div className="flex items-center justify-between p-2 border-b border-border bg-card/50">
        <div className="flex items-center gap-1">
          <Button 
            variant="ghost" 
            size="icon" 
            className="h-8 w-8" 
            onClick={goToEntryPoint}
            title="Ir para Entry Point (EP)"
          >
            <Crosshair className="h-4 w-4 text-primary" />
          </Button>
          <Separator orientation="vertical" className="h-4 mx-1" />
          <Button 
            variant="ghost" 
            size="icon" 
            className="h-8 w-8" 
            disabled={historyIndex === 0}
            onClick={goBack}
          >
            <ArrowLeft className="h-4 w-4" />
          </Button>
          <Button 
            variant="ghost" 
            size="icon" 
            className="h-8 w-8"
            disabled={historyIndex >= history.length - 1}
            onClick={goForward}
          >
            <ArrowRight className="h-4 w-4" />
          </Button>
          <Separator orientation="vertical" className="h-4 mx-1" />
          <Button 
            variant="secondary" 
            size="sm" 
            className="h-8 gap-2 px-3"
            onClick={() => setActiveTab('source')}
          >
            <Code2 className="h-4 w-4 text-chart-2" />
            <span>Decompile Src</span>
          </Button>
        </div>

        <div className="flex items-center gap-2">
          <Badge variant="outline" className="font-mono font-normal text-xs bg-muted/30 border-primary/20">
            {selectedUnit ? selectedUnit.name : 'Nenhuma Unidade Selecionada'}
          </Badge>
          <div className="flex items-center gap-1 px-2 py-1 bg-muted/50 rounded text-xs font-mono border border-border">
            <Hash className="h-3 w-3 text-muted-foreground" />
            <span className="text-chart-1 font-bold">{currentAddress}</span>
          </div>
        </div>
      </div>

      {/* Area de Conteúdo */}
      <div className="flex flex-1 overflow-hidden">
        {/* Visualizador de Assembly */}
        <div className="flex-1 overflow-hidden relative group">
          <ScrollArea className="h-full">
            <div 
              className="p-4 min-w-[800px]"
              style={{ fontFamily: font.family, fontSize: `${font.size}px` }}
            >
              <table className="w-full border-collapse font-mono">
                <tbody>
                  {asmLines.map((line, idx) => (
                    <ContextMenu key={idx}>
                      <ContextMenuTrigger asChild>
                        <tr 
                          className={cn(
                            "hover:bg-accent/30 group/row cursor-default select-none transition-colors",
                            line.isModified && "bg-chart-4/10",
                            line.isLabel && "text-primary font-bold"
                          )}
                        >
                          <td className="w-24 text-muted-foreground/60 pr-4 py-0.5 align-top">
                            {line.address}
                          </td>
                          <td className="w-32 text-chart-3 pr-4 py-0.5 align-top opacity-70">
                            {line.bytes}
                          </td>
                          <td className={cn(
                            "w-24 pr-4 py-0.5 align-top font-bold",
                            getMnemonicColor(line.mnemonic)
                          )}>
                            {line.mnemonic}
                          </td>
                          <td className="w-64 pr-4 py-0.5 align-top text-foreground">
                            {line.operands}
                          </td>
                          <td className="text-muted-foreground italic py-0.5 align-top">
                            {line.comment ? `; ${line.comment}` : ''}
                            {line.isModified && <span className="ml-2 text-[10px] text-chart-4 font-bold uppercase">[MOD]</span>}
                          </td>
                        </tr>
                      </ContextMenuTrigger>
                      <ContextMenuContent className="w-64">
                        <ContextMenuItem onClick={() => navigateTo(line.address)} disabled={!line.address}>
                          <ExternalLink className="mr-2 h-4 w-4" /> Ir para Endereço
                        </ContextMenuItem>
                        <ContextMenuItem>
                          <Search className="mr-2 h-4 w-4" /> Explorar Endereço
                        </ContextMenuItem>
                        <ContextMenuSeparator />
                        <ContextMenuItem>
                          <Edit3 className="mr-2 h-4 w-4" /> Nomear Posição
                        </ContextMenuItem>
                        <ContextMenuSub>
                          <ContextMenuSubTrigger>
                            <Code2 className="mr-2 h-4 w-4" /> Protótipo
                          </ContextMenuSubTrigger>
                          <ContextMenuSubContent>
                            <ContextMenuItem>Ver Protótipo</ContextMenuItem>
                            <ContextMenuItem>Editar Protótipo</ContextMenuItem>
                          </ContextMenuSubContent>
                        </ContextMenuSub>
                        <ContextMenuSeparator />
                        <ContextMenuItem onClick={() => navigator.clipboard.writeText(line.address)}>
                          <Copy className="mr-2 h-4 w-4" /> Copiar Endereço
                        </ContextMenuItem>
                        <ContextMenuItem>
                          <Copy className="mr-2 h-4 w-4" /> Copiar Linha
                        </ContextMenuItem>
                        <ContextMenuSeparator />
                        <ContextMenuItem>
                          <Hash className="mr-2 h-4 w-4" /> Ver XRefs
                        </ContextMenuItem>
                      </ContextMenuContent>
                    </ContextMenu>
                  ))}
                </tbody>
              </table>
            </div>
          </ScrollArea>
        </div>

        {/* Painel lateral de XRefs (Opcional/Ocultável) */}
        <div className="w-64 border-l border-border bg-card/30 flex flex-col">
          <div className="p-2 border-b border-border bg-muted/20 flex items-center justify-between">
            <span className="text-[10px] font-bold uppercase tracking-wider text-muted-foreground">Referências Cruzadas (XRefs)</span>
            <Badge variant="secondary" className="h-4 px-1 text-[10px]">3</Badge>
          </div>
          <ScrollArea className="flex-1">
            <div className="p-2 space-y-1">
              {[ 
                { addr: '0040512A', type: 'call', name: 'Initialization' },
                { addr: '00452B04', type: 'data', name: 'TForm1.Create' },
                { addr: '0048F1C0', type: 'jump', name: 'VCL.Events' }
              ].map((ref, i) => (
                <button 
                  key={i} 
                  className="w-full text-left p-2 hover:bg-accent rounded group transition-all border border-transparent hover:border-border"
                  onClick={() => navigateTo(ref.addr)}
                >
                  <div className="flex items-center justify-between">
                    <span className="text-xs font-mono text-chart-1">{ref.addr}</span>
                    <Badge variant="outline" className="text-[9px] h-3 px-1">{ref.type}</Badge>
                  </div>
                  <div className="text-[10px] text-muted-foreground truncate mt-0.5 flex items-center">
                    <ChevronRight className="h-3 w-3 inline mr-1 opacity-0 group-hover:opacity-100" />
                    {ref.name}
                  </div>
                </button>
              ))}
            </div>
          </ScrollArea>
        </div>
      </div>
    </div>
  );
}
