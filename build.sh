#!/bin/bash

# Script para build e geração da documentação Redoc

set -e  # Para o script se houver erro

echo "🔨 Construindo a imagem Docker..."
docker build -t redoc-docs .

echo ""
echo "📦 Gerando documentação..."
docker run --rm -v "$(pwd):/app/output" redoc-docs

echo ""
echo "✅ Documentação gerada com sucesso em: redoc-static.html"
echo ""
echo "Para visualizar, execute:"
echo "  open redoc-static.html"

