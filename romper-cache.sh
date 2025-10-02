#!/data/data/com.termux/files/usr/bin/bash

echo "⚡ Forzando reconstrucción de GitHub Pages..."

# Commit vacío para activar el rebuild
git commit --allow-empty -m "⚡ Commit vacío para romper caché CDN"
git push origin main

echo "🧹 Limpiando caché local del navegador..."

# Abre el dashboard en modo incógnito
termux-open-url "https://shaggy0397.github.io/shaggy-digital-mind/dashboard.html"

echo "🧪 Reintentando validación sintomática..."

# Espera 5 segundos y valida
sleep 5
./validar-dashboard.sh
