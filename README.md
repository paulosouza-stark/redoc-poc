# openapi

## Run poc

### Opção 1: Usando o script (recomendado)

1. Execute `open -a Docker` para abrir o Docker Desktop no seu Mac.
2. Execute `./build.sh` para construir a imagem Docker e gerar a documentação automaticamente.
3. Execute `open output/redoc-static.html` para abrir o arquivo HTML gerado no navegador.

### Opção 2: Comandos manuais

1. Execute `open -a Docker` para abrir o Docker Desktop no seu Mac.
2. Execute `docker build -t redoc-docs .` para construir a imagem Docker.
3. Execute `docker run -v "$(pwd)/output:/app/output" redoc-docs` para gerar a documentação.
4. Execute `open output/redoc-static.html` para abrir o arquivo HTML gerado no navegador.

