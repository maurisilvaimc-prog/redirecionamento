

## Correcoes: Menu Transparente, Toggle Dark/Light Mode, e Dados Completos

### Problemas Identificados

1. **Menu transparente**: O componente `Menubar` em `MenuBar.tsx` usa `bg-card` que no tema claro pode parecer transparente. Alem disso, o header do `Layout.tsx` usa `bg-muted/40` (com opacidade), tornando a barra semi-transparente e dificultando a leitura.

2. **Sem toggle dark/light mode**: O store tem `theme` e `setTheme`, mas nao existe nenhum botao na interface para alternar entre os temas. A classe `.dark` nunca e aplicada ao `<html>` ou `<body>`, apenas ao wrapper do Layout de forma incorreta.

3. **Decompilacao incompleta**: Muitas units legadas da pasta `Projects/` nao estao incluidas nos dados simulados (ex: `_Unit11` a `_Unit125`, `Chart.pas`, `Series.pas`, `ExtActns.pas`, etc.). Tambem faltam source files para a maioria das units standard.

### Solucao

#### 1. Corrigir Menu Transparente

**Arquivo: `src/components/Layout.tsx`**
- Mudar `bg-muted/40` para `bg-card` no header superior (linha 36)
- Garantir que o header tenha background solido sem opacidade

**Arquivo: `src/components/MenuBar.tsx`**
- Menubar ja usa `bg-card` -- garantir que nao tem transparencia
- Remover `border-b border-border` duplicado (o Layout ja aplica)

**Arquivo: `src/components/ToolBar.tsx`**
- Mudar `bg-secondary/30` para `bg-card` na barra de ferramentas (linha 87)

#### 2. Adicionar Toggle Dark/Light Mode

**Arquivo: `src/components/Layout.tsx`**
- Aplicar a classe `dark` no elemento `<html>` usando `useEffect` que observa `theme` do store, em vez de aplicar no div wrapper (que nao funciona com CSS variables)

**Arquivo: `src/components/ToolBar.tsx`**
- Adicionar um botao `Sun/Moon` na area `ml-auto` da toolbar para alternar entre temas
- Ao clicar, chamar `setTheme(theme === 'dark' ? 'light' : 'dark')`

**Arquivo: `src/components/MenuBar.tsx`**
- No menu "Programa > Configuracoes", adicionar item "Tema Escuro / Claro" com toggle

#### 3. Expandir Dados de Decompilacao Completa

**Arquivo: `src/data/units.ts`**
- Adicionar todas as units que existem na pasta `Projects/` mas estao faltando:
  - `_Unit11` a `_Unit125` (todas as existentes)
  - Units standard faltantes: `Chart`, `Series`, `TeEngine`, `TeCanvas`, `TeeProcs`, `TeeFunci`, `Outline`, `ActnList`, `CheckLst`, `Clipbrd`, `ColorGrd`, `ExtActns`, `ExtDlgs`, `FileCtrl`, `ImgList`, `ListActns`, `MPlayer`, `Mask`, `StdActns`, `TabNotBk`, `Tabs`, `ToolWin`, `ValEdit`
- Total estimado: ~80+ units (refletindo todas as 125+ units do legado)

**Arquivo: `src/data/sources.ts`**
- Adicionar source files Pascal para mais units (pelo menos as principais como `_Unit3`, `_Unit4`, `_Unit5`, `_Unit6`, `_Unit7`, `_Unit10`, `_Unit14`, `_Unit15`)
- Extrair conteudo real dos arquivos `.pas` do legado
- Adicionar source ASM para units standard como `SysUtils`, `Classes`, `Controls`

**Arquivo: `src/data/strings.ts`**
- Expandir com mais strings extraidas dos arquivos legados (atualmente 25 strings, expandir para ~50+)

**Arquivo: `src/data/classes.ts`**
- Adicionar mais classes da hierarquia VCL que estao faltando (TGraphicControl, TCustomControl, TScrollingWinControl, etc.)

### Resumo das Alteracoes por Arquivo

| Arquivo | Alteracao |
|---------|-----------|
| `src/components/Layout.tsx` | Background solido no header; aplicar classe `dark` no `<html>` via useEffect |
| `src/components/ToolBar.tsx` | Background solido; adicionar botao toggle dark/light |
| `src/components/MenuBar.tsx` | Adicionar item de tema no menu Configuracoes |
| `src/data/units.ts` | Expandir para ~80+ units reais do legado |
| `src/data/sources.ts` | Adicionar source files para mais units (conteudo real dos `.pas`) |
| `src/data/strings.ts` | Expandir para ~50+ strings reais |
| `src/data/classes.ts` | Expandir arvore de classes VCL |

### Resultado Esperado

1. Menu com background solido e legivel em ambos os temas
2. Botao de toggle dark/light visivel na toolbar
3. Workspace exibindo ~80+ units decompiladas apos o carregamento
4. Selecionar qualquer unit mostra seu codigo Pascal/ASM real no CodeViewer e SourceEditor
5. Interface funcional tanto no tema claro quanto escuro

