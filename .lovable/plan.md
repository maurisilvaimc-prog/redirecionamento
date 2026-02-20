

## Correcao: Modal de Progresso nao aparece ao carregar arquivo

### Problema identificado

Quando o usuario seleciona um arquivo .exe/.dll, o `setInterval` que simula o progresso executa corretamente, mas:

1. O `ProgressModal` so e renderizado dentro do `IDRWorkspace` (pagina `/workspace`)
2. Se o usuario ja esta no workspace, ao atingir 100% o codigo chama `setDecompiling(false)` e `navigate()` no mesmo instante -- o modal some imediatamente e a navegacao pode causar remontagem do componente
3. O overlay esmaecido do `Layout` aparece (a "barra esmaecida"), mas o modal com a barra de progresso e sobreposto pela navegacao

### Solucao

**Arquivo: `src/components/MenuBar.tsx`**
- Separar a logica: primeiro completar a animacao de progresso com um pequeno delay antes de navegar
- Chamar `setDecompiling(false)` ANTES de navegar, com um `setTimeout` de ~500ms apos atingir 100%, para que o usuario veja o progresso finalizado
- Mover a logica de carregamento de dados simulados (popular units, strings, forms, etc. do store) para dentro do callback de conclusao

**Arquivo: `src/pages/IDRWorkspace.tsx`** (ou `src/App.tsx`)
- Mover o `ProgressModal` para o `Layout` ou para o `App.tsx` como componente global, para que ele apareca independente da rota atual
- Isso garante que se o usuario estiver na Home ou em qualquer rota, o modal de progresso sera visivel

**Arquivo: `src/components/Layout.tsx`**
- Remover o overlay esmaecido duplicado (`isDecompiling && <div ... />`) ja que o `ProgressModal` possui seu proprio backdrop

### Resumo das alteracoes

1. Tornar o `ProgressModal` global (renderizado no `App.tsx`)
2. Remover overlay duplicado do `Layout.tsx`
3. Ajustar timing no `MenuBar.tsx`: ao atingir 100%, aguardar 500ms, depois desativar decompiling e navegar
4. Garantir que o intervalo e limpo corretamente para evitar memory leaks

