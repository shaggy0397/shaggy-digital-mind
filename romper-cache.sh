#!/data/data/com.termux/files/usr/bin/bash

echo "🔧 Renombrando index.html a dashboard.html…"
mv index.html dashboard.html

echo "🧠 Actualizando manifest.json…"
sed -i 's/index.html/dashboard.html/' manifest.json

echo "📦 Preparando commit táctico…"
git add dashboard.html manifest.json
git commit -m "🚨 Rompe-caché: dashboard publicado como dashboard.html"
git push origin main

echo "🧪 Validación sintomática:"
curl -s https://shaggy0397.github.io/shaggy-digital-mind/dashboard.html | grep Validación && echo "✅ Dashboard cargado correctamente." || echo "⚠️ Validación no detectada."

echo "🎨 Arte simbólico:"
echo "╭────────────────────────────╮"
echo "│  SH4C3Y digital mind       │"
echo "│  🧠 Dashboard sin splash    │"
echo "│  🚀 Publicado como .html    │"
echo "│  🛡️ Caché rota con éxito     │"
echo "╰────────────────────────────╯"
