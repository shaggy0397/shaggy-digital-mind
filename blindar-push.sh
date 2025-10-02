#!/bin/bash

echo "🧠 Iniciando blindaje repo-ready de SH4C3Y..."

# 1. Validación sintomática
echo "🔍 Ejecutando validación sintomática..."
bash validar-sh4c3y.sh

# 2. Verificación de branding
echo "🎨 Verificando branding visual..."
bash verificar-branding.sh

# 3. Commit en main
echo "📦 Commit en main..."
git add .
git commit -m "🧠 Validación total y branding SH4C3Y confirmado"
git push origin main

# 4. Merge y push a gh-pages
echo "🚀 Publicando en GitHub Pages..."
git checkout gh-pages
git merge main
git push origin gh-pages
git checkout main

# 5. Mostrar QR repo-ready
echo "📱 Escanea para instalar SH4C3Y:"
qrencode -t ANSIUTF8 "https://shaggy0397.github.io/shaggy-digital-mind/"

echo "✅ SH4C3Y blindada y publicada con éxito"
