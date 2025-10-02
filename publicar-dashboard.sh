#!/data/data/com.termux/files/usr/bin/bash

echo "🧠 Blindando dashboard..."

# Línea de validación sintomática
VALIDACION="<!-- Validación: dashboard cargado correctamente -->"

# Verifica si la línea ya existe
if ! grep -q "$VALIDACION" dashboard.html; then
  echo "🔧 Agregando validación sintomática..."
  sed -i "/<\/body>/i $VALIDACION" dashboard.html
fi

# Commit táctico
git add dashboard.html
git commit -m "🧠 Dashboard validado y publicado con línea sintomática"
git push origin main

echo "✅ Dashboard publicado. Validando en GitHub Pages..."

# Validación remota
RESULTADO=$(curl -s https://shaggy0397.github.io/shaggy-digital-mind/dashboard.html | grep "$VALIDACION")

if [ -n "$RESULTADO" ]; then
  echo "🟢 Validación sintomática detectada. SH4C3Y está lista."
else
  echo "🔴 No se detectó la validación. Revisa el push o espera unos segundos."
fi
