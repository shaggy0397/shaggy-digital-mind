#!/bin/bash

echo "🚀 Publicando SH4C3Y en GitHub Pages..."

# Verificar si gh-pages existe
if git show-ref --quiet refs/heads/gh-pages; then
  echo "✅ Branch gh-pages existe"
else
  echo "📦 Creando branch gh-pages..."
  git checkout -b gh-pages
  git push origin gh-pages
fi

# Merge desde main
git checkout gh-pages
git merge main
git push origin gh-pages

# Mostrar QR repo-ready
echo "📱 Escanea para instalar SH4C3Y:"
qrencode -t ANSIUTF8 "https://shaggy0397.github.io/shaggy-digital-mind/"

echo "✅ Publicación completada"
