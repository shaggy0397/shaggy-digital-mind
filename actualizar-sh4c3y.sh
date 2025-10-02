#!/data/data/com.termux/files/usr/bin/bash

echo "🔍 Verificando cambios en index.html…"
if git diff --quiet index.html; then
  echo "✅ No hay cambios en index.html. Nada que actualizar."
else
  echo "🧠 Cambios detectados. Preparando commit…"
  git add index.html
  git commit -m "🔧 Actualización repo-ready desde Android: dashboard sin splash"
  git push origin main
  echo "🚀 Cambios publicados en GitHub."
fi

echo "🧪 Validación sintomática:"
grep "Validación: dashboard cargado correctamente" index.html && echo "✅ Línea de validación presente." || echo "⚠️ Validación no detectada."

echo "🎨 Arte simbólico:"
echo "╭────────────────────────────╮"
echo "│  SH4C3Y digital mind       │"
echo "│  🧠 Dashboard activo        │"
echo "│  🤚 Splash eliminado        │"
echo "│  🚀 Publicado en GitHub     │"
echo "╰────────────────────────────╯"
