#!/bin/bash

# Script para build e geração da documentação Redoc

set -e  # Para o script se houver erro

echo "🔨 Construindo a imagem Docker..."
docker build -t redoc-docs .

echo ""
echo "📦 Gerando documentação..."
mkdir -p output
docker run -v "$(pwd)/output:/app/output" redoc-docs

echo ""
echo "✅ Documentação gerada com sucesso em: output/redoc-static.html"
echo ""
echo "Para visualizar, execute:"
echo "  open output/redoc-static.html"

