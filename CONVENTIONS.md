## Convenções de commits

Referência: [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/#summary)

Este projeto segue a convenção de commits para manter o histórico do projeto organizado e permitir o versionamento automático com base no [SemVer](https://semver.org/lang/pt-BR/).

### Prefixos aceitos

- `fix:` indica que uma **correção de bug**. Gera um incremento de **PATCH** na versão. (Ex.: `1.0.0` → `1.0.1`)
- `feat:` indica a adição de uma **nova funcionalidade** sem quebrar a compatibilidade já estabelecida. Gera um incremento de **MINOR** na versão. (Ex.: `1.0.0` → `1.1.0`)
- `docs:` indica alterações **apenas na documentação**, sem impacto no código executável. **Não gera nova versão.**
- `chore:` indica alterações de **manutenção**, como atualizações de pacotes e dependências, ou ajustes internos. **Não gera nova versão.**
- `test:` indica alterações relacionadas **apenas a testes**, sem impacto no código de produção. **Não gera nova versão.**
- `refactor:` indica **melhorias e refatorações internas** na estrutura do código, sem alterar seu comportamento externo. **Não gera nova versão.**

### 🚨 Mudanças incompatíveis (BREAKING CHANGES)

Se uma alteração **quebrar a compatibilidade com versões anteriores**, ela deve ser sinalizada com `!` no prefixo do commit **ou** com o texto `BREAKING CHANGE:` no corpo da mensagem.
Esse tipo de alteração gera um incremento de **MAJOR** na versão.  
_Exemplo: `1.2.3` → `2.0.0`_

#### Exemplo de commit com breaking change:

```bash
feat!: remover suporte ao formato XML

BREAKING CHANGE: a API não aceita mais requisições XML. Use JSON.
```
