# openapi

## Run poc

### Opção 1: Usando o script (recomendado)

1. Execute `open -a Docker` para abrir o Docker Desktop no seu Mac.
2. Execute `sh build.sh` para construir a imagem Docker e gerar a documentação automaticamente.
3. Execute `open redoc-static.html` para abrir o arquivo HTML gerado no navegador.

### Opção 2: Comandos manuais

1. Execute `open -a Docker` para abrir o Docker Desktop no seu Mac.
2. Execute `docker build -t redoc-docs .` para construir a imagem Docker.
3. Execute `docker run -v "$(pwd):/app/output" redoc-docs` para gerar a documentação. O arquivo `redoc-static.html` será salvo diretamente na pasta raiz do projeto.
4. Execute `open redoc-static.html` para abrir o arquivo HTML gerado no navegador.