#!/bin/bash

echo "🔍 Validando estructura de SHAGGY DIGITAL MIND..."

# Archivos raíz
archivos=("index.html" "style.css" "app.js" "manifest.json" "service-worker.js" "README.md")
carpetas=("assets" "ascii")

# Validar archivos
for archivo in "${archivos[@]}"; do
  if [ -f "$archivo" ]; then
    echo "✅ $archivo encontrado"
  else
    echo "❌ $archivo faltante"
  fi
done

# Validar carpetas
for carpeta in "${carpetas[@]}"; do
  if [ -d "$carpeta" ]; then
    echo "✅ Carpeta $carpeta encontrada"
  else
    echo "❌ Carpeta $carpeta faltante"
  fi
done

# Validar íconos
if [ -f "assets/icon-192.png" ] && [ -f "assets/icon-512.png" ]; then
  echo "✅ Íconos visuales encontrados"
else
  echo "❌ Faltan íconos en assets/"
fi

# Validar arte ASCII
if [ -f "ascii/shaggy-preview.txt" ]; then
  echo "✅ Arte ASCII encontrado"
else
  echo "❌ Arte ASCII faltante"
fi

echo "🧠 Validación completada"
