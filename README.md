# openapi

## Documentação API Customizada com Redocly

Este projeto contém uma documentação API customizada usando Redocly/Redoc com um layout e tema personalizados, diferente do padrão.

## 🎨 Customizações Aplicadas

### Tema e Cores
- **Paleta de cores moderna**: Indigo (#6366F1) como cor primária
- **Cores HTTP personalizadas**: Cada método HTTP tem sua cor distintiva
  - GET: Verde esmeralda (#10B981)
  - POST: Azul (#3B82F6)
  - PUT: Âmbar (#F59E0B)
  - PATCH: Roxo (#8B5CF6)
  - DELETE: Vermelho (#EF4444)
- **Cores de status**: Success, Warning e Error customizadas

### Tipografia Moderna
- **Fonte principal**: DM Sans (elegante e moderna)
- **Títulos**: Space Grotesk (geometric, bold com letter-spacing negativo)
- **Código**: JetBrains Mono (monospace moderna)
- **Line-height otimizado**: 1.7 para melhor legibilidade

### Layout Moderno e Arredondado
- **Bordas arredondadas**: Todos os elementos com border-radius (12px-24px)
- **Sombras suaves**: Profundidade visual com box-shadows sutis
- **Espaçamentos generosos**: Padding e margins aumentados para respiração visual
- **Sidebar**: Fundo branco com bordas arredondadas
- **Painel direito**: Fundo cinza claro (#F9FAFB) para melhor contraste
- **Cards e containers**: Todos com bordas arredondadas (12px-16px)
- **Botões e badges**: Border-radius de 8px com transições suaves
- **Inputs**: Border-radius de 10px com focus states elegantes
- **Scrollbar**: Customizada e arredondada (12px)
- **Container principal**: Em desktop, card flutuante com sombra e bordas arredondadas (24px)

### Funcionalidades e Interações
- Busca habilitada com inputs arredondados
- Agrupamento por tags
- Exemplos de request/response expandidos
- Navegação otimizada
- Layout responsivo
- **Animações suaves**: Transições em todos os elementos (cubic-bezier)
- **Hover effects**: Elevação sutil em botões e links
- **Focus states**: Anéis de foco arredondados em inputs
- **Antialiasing**: Font smoothing para texto mais nítido

## 🚀 Como executar

### Opção 1: Usando o script (recomendado)

1. Execute `open -a Docker` para abrir o Docker Desktop no seu Mac.
2. Execute `sh build.sh` para construir a imagem Docker e gerar a documentação automaticamente.
3. Execute `open redoc-static.html` para abrir o arquivo HTML gerado no navegador.

### Opção 2: Comandos manuais

1. Execute `open -a Docker` para abrir o Docker Desktop no seu Mac.
2. Execute `docker build -t redoc-docs .` para construir a imagem Docker.
3. Execute `docker run -v "$(pwd):/app/output" redoc-docs` para gerar a documentação. O arquivo `redoc-static.html` será salvo diretamente na pasta raiz do projeto.
4. Execute `open redoc-static.html` para abrir o arquivo HTML gerado no navegador.

### Opção 3: Visualização direta (sem build)

Para visualizar a documentação com as customizações aplicadas diretamente:

1. Abra o arquivo `redoc.html` no navegador
2. As customizações de tema serão aplicadas via atributos do componente `<redoc>`

## 📝 Arquivos de Configuração

- **`redocly.yaml`**: Contém todas as configurações de tema, cores, tipografia e layout
- **`redoc.html`**: Versão HTML com tema inline para visualização direta
- **`redoc-static.html`**: Arquivo gerado pelo build (será criado após executar o build)

## 🔧 Personalização Adicional

Para personalizar ainda mais, edite o arquivo `redocly.yaml` com as opções disponíveis. Consulte a [documentação oficial do Redocly](https://redocly.com/docs/redoc) para mais opções de configuração.