

## Correcao: Extrair dados reais dos arquivos legados e conectar a interface

### Problema

Apos o progresso atingir 100%, a interface carrega dados simulados muito reduzidos (6 unidades, 2 formularios, 5 strings). Alem disso, clicar em uma unidade no painel esquerdo nao atualiza o visualizador de codigo -- o CodeViewer mostra assembly generico hardcoded, ignorando a unidade selecionada.

Os arquivos reais na pasta `Projects/` (125+ arquivos `.pas`, 15+ arquivos `.dfm`) nunca sao usados.

### Solucao

#### 1. Expandir os dados simulados (`src/data/index.ts`)

Recriar os mock data baseados nos arquivos legados reais da pasta `Projects/`:

- **Units**: Gerar ~30+ unidades a partir dos nomes reais dos arquivos (`system.pas`, `SysUtils`, `Classes`, `Controls`, `Forms`, `StdCtrls`, `Menus`, `Graphics`, `Grids`, `_Unit2`, `_Unit3`, `_Unit4`, etc.), com enderecos e tipos corretos (standard para VCL, user para _UnitN, etc.)
- **Forms**: Gerar formularios baseados nos `.dfm` reais (`FMain_11011981`, `FStringInfo_11011981`, `FTypeInfo_11011981`, `FAboutDlg_11011981`, `FExplorer_11011981`, `FPlugins`, etc.) com conteudo e estrutura parseados
- **Strings**: Extrair strings reais dos arquivos `.pas` (ex: `'Interactive Delphi Reconstructor'`, `'jpeg'`, `'jpg'`, `'0x'`, etc.)
- **Classes**: Arvore de classes mais completa baseada no `system.pas` (TObject > TPersistent > TComponent > TControl > TWinControl > TForm, etc.)
- **Types**: Tipos RTTI reais (`TModalResult`, `TAlignment`, `Boolean`, `TBoundArray`, etc.)
- **Source files**: Associar conteudo Pascal real dos `.pas` a cada unidade
- **Names**: Extrair nomes/simbolos reais (`WinMain`, `TFMain_11011981.Create`, `TFStringInfo_11011981.FormKeyDown`, etc.)
- **Map entries**: Segmentos de memoria reais baseados nos enderecos encontrados nos arquivos

#### 2. Conectar CodeViewer a unidade selecionada (`src/components/CodeViewer.tsx`)

Atualmente o `asmLines` e um `useMemo` que retorna dados fixos. Alterar para:

- Quando `selectedUnitId` mudar, buscar o `SourceFile` correspondente com `language: 'asm'`
- Se encontrar, parsear o conteudo assembly em linhas de `AsmLine` (endereco, bytes, mnemonico, operandos, comentario)
- Se nao encontrar assembly, buscar o `.pas` e mostrar o codigo decompilado com os blocos `{* ... *}`

#### 3. Conectar SourceEditor a unidade selecionada

O SourceEditor ja busca por `sourceCode.find(f => f.unitId === selectedUnitId)` -- so precisa que os dados tenham o `unitId` correto.

#### 4. Selecao automatica da primeira unidade

No `MenuBar.tsx`, apos popular os dados, chamar `setSelectedUnitId` com o ID da primeira unidade do usuario, para que o workspace ja abra com conteudo visivel.

### Resumo das alteracoes por arquivo

| Arquivo | Alteracao |
|---------|-----------|
| `src/data/index.ts` | Reescrever com ~30 units, ~10 forms, ~20 strings, arvore de classes completa, tipos RTTI, source files com conteudo Pascal/ASM real, names e map entries baseados nos legados |
| `src/components/CodeViewer.tsx` | Parsear assembly da unidade selecionada em vez de usar dados fixos |
| `src/components/MenuBar.tsx` | Apos popular dados, selecionar a primeira unidade automaticamente |

### Resultado esperado

1. Barra de progresso completa ate 100%
2. Workspace abre com painel esquerdo exibindo ~30+ unidades reais
3. Primeira unidade ja selecionada, mostrando seu codigo assembly no CodeViewer
4. Clicar em outra unidade atualiza o CodeViewer com o assembly correspondente
5. Aba Forms mostra formularios reais do IDR com editor visual funcional
6. Aba Strings mostra strings extraidas dos arquivos legados
7. Aba SourceCode mostra o Pascal decompilado da unidade selecionada

