# OpenCode pelo celular — sem PC próprio

Este repositório configura o agente do OpenCode via GitHub Actions. Ele permite pedir tarefas de programação em Issues/PRs pelo navegador do celular.

## Importante: isso não é um servidor OpenCode permanente

O GitHub Actions inicia um runner temporário quando uma tarefa é acionada e o encerra ao terminar. Portanto, este workflow **não fornece um endereço de servidor contínuo para conectar o aplicativo OpenCode Mobile**. Para essa conexão direta, é necessário um servidor OpenCode em execução num dispositivo ou host remoto.

## Configuração inicial

1. Instale o aplicativo oficial do GitHub para o repositório: https://github.com/apps/opencode-agent
2. Em **Settings → Secrets and variables → Actions**, crie o segredo `GROQ_API_KEY` com sua chave Groq. Nunca coloque a chave no código.
3. Confirme que GitHub Actions está habilitado para este repositório.
4. Abra uma Issue e comente um pedido começando com `/opencode` ou `/oc`, por exemplo:

   `/opencode Analise a estrutura deste repositório e sugira os próximos passos. Não faça alterações destrutivas.`

5. Acompanhe **Actions** e a Issue/PR para ver o resultado.

## Modelo

O workflow está configurado para `groq/llama-3.3-70b-versatile`. A disponibilidade do modelo e o acesso ao provedor dependem da conta e da configuração atual da Groq.

## Segurança

- Não coloque tokens ou chaves em arquivos versionados.
- Revise as alterações propostas antes de mesclar PRs.
- Dê ao aplicativo do OpenCode acesso somente a este repositório, se possível.
- O agente só é acionado por comentários contendo `/oc` ou `/opencode`.
