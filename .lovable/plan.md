

## Correcao: Dados decompilados nao aparecem apos carregamento

### Problema identificado

Apos analisar o codigo, identifiquei dois problemas:

1. **Navegacao redundante**: Quando o usuario ja esta em `/workspace` e carrega um arquivo, o `navigate(ROUTE_PATHS.WORKSPACE)` tenta navegar para a mesma rota. Isso pode causar comportamentos inesperados no React Router, como re-renderizacao sem atualizar o estado visual.

2. **Dependencias do useCallback incompletas**: O callback `onFileChosen` usa `useCallback` com dependencias que nao incluem os setters de dados (`setUnits`, `setForms`, etc.). Embora os setters do Zustand sejam estaveis, e boa pratica inclui-los para garantir consistencia.

### Solucao

**Arquivo: `src/components/MenuBar.tsx`**

- Remover a chamada `navigate(ROUTE_PATHS.WORKSPACE)` quando o usuario ja esta na rota `/workspace` (usar `window.location.pathname` para verificar)
- Adicionar todos os setters de dados na lista de dependencias do `useCallback`
- Forcar uma atualizacao visual apos popular o store: garantir que `setDecompiling(false)` ocorra apos todos os setters de dados serem chamados

A logica ficara assim:

```
if (p >= 100) {
  clearInterval(interval);
  setProgress(100, 'Analise concluida!');
  // Popular dados
  setUnits(mockUnits);
  setForms(mockForms);
  // ... demais setters
  setTimeout(() => {
    setDecompiling(false);
    // So navegar se nao estiver no workspace
    if (window.location.pathname !== ROUTE_PATHS.WORKSPACE) {
      navigate(ROUTE_PATHS.WORKSPACE);
    }
  }, 500);
}
```

- Atualizar as dependencias do `useCallback` para incluir todos os setters usados

### Resultado esperado

Apos selecionar um arquivo .exe/.dll:
1. Modal de progresso aparece e vai ate 100%
2. Dados sao carregados no store (units, forms, strings, classes, etc.)
3. Modal fecha e o painel esquerdo exibe as unidades, tipos e formularios
4. A area central exibe o codigo decompilado
5. A barra de status mostra o nome do arquivo carregado

