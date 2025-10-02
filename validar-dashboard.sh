#!/data/data/com.termux/files/usr/bin/bash

URL="https://shaggy0397.github.io/shaggy-digital-mind/dashboard.html"
VALIDACION="<!-- Validación: dashboard cargado correctamente -->"

echo "🔍 Verificando dashboard publicado en:"
echo "$URL"
echo

RESULTADO=$(curl -s "$URL" | grep "$VALIDACION")

if [ -n "$RESULTADO" ]; then
  echo "✅ Validación sintomática detectada. SH4C3Y está lista."
else
  echo "❌ No se detectó la línea de validación. Revisa el archivo dashboard.html."
fi
