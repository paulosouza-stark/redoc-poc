FROM node:22-alpine

# Diretório de trabalho dentro do container
WORKDIR /app

# Copia o openapi.json e redocly.yaml para o container
COPY petstore.json .
COPY redocly.yaml .

# Instala o @redocly/cli globalmente
RUN npm install -g @redocly/cli

# Comando padrão para rodar o build dos docs
# Gera o arquivo em /app/redoc-static.html e copia para /app/output (montado como volume na raiz do repo)
CMD sh -c "npx @redocly/cli build-docs petstore.json --output redoc-static.html && cp redoc-static.html /app/output/redoc-static.html"

