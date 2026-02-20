
## Plano: Seletor de Arquivos .exe/.dll ao clicar em "Detectar Versao Automaticamente"

### O que muda

Ao clicar em "Detectar Versao Automaticamente" (ou qualquer versao Delphi no submenu), o sistema vai:

1. Abrir o seletor de arquivos nativo do navegador, filtrando por `.exe` e `.dll`
2. Apos o usuario escolher um arquivo, iniciar a simulacao de analise (barra de progresso)
3. Salvar o nome e tamanho do arquivo selecionado no estado global
4. Redirecionar para o workspace

### Detalhes tecnicos

**Arquivo: `src/components/MenuBar.tsx`**
- Adicionar um `<input type="file" accept=".exe,.dll" />` oculto (hidden) com `useRef`
- Criar funcao `handleFileSelect` que abre o file picker
- Criar funcao `onFileChosen` que recebe o `File` do input, salva no store (`setLoadedFile`) com nome, tamanho e versao selecionada, e entao inicia a animacao de progresso
- "Detectar Versao Automaticamente" chamara `handleFileSelect` com versao `'Auto'`
- As demais versoes (Delphi 2, 3, etc.) tambem abrirao o file picker, passando a versao correspondente

**Arquivo: `src/hooks/useIDRStore.ts`**
- Nenhuma alteracao necessaria -- `setLoadedFile` ja existe e aceita `name`, `path`, `size` e `delphiVersion`

### Fluxo do usuario

1. Clica em Arquivo > Carregar Arquivo > Detectar Versao Automaticamente
2. Abre o seletor de arquivos do sistema operacional (filtrado para .exe e .dll)
3. Seleciona um arquivo
4. Aparece modal de progresso simulando a analise
5. Ao concluir, redireciona para `/workspace` com o arquivo "carregado"
