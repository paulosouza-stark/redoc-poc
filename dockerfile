FROM node:22-alpine

# Diretório de trabalho dentro do container
WORKDIR /app

# Copia apenas o openapi.json para o container
COPY openapi.json .

# Instala o @redocly/cli globalmente
RUN npm install -g @redocly/cli

# Cria o diretório de saída
RUN mkdir -p /app/output

# Comando padrão para rodar o build dos docs
# O arquivo será gerado em /app/output/redoc-static.html
CMD ["npx", "@redocly/cli", "build-docs", "openapi.json", "--output", "output/redoc-static.html"]

