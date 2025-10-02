#!/data/data/com.termux/files/usr/bin/bash

echo "🧪 Validando dashboard publicado…"
curl -s https://shaggy0397.github.io/shaggy-digital-mind/dashboard.html | grep Validación && echo "✅ Dashboard cargado correctamente." || echo "⚠️ Validación no detectada."

echo "🎨 Generando arte ASCII simbólico…"
cat << "EOF" > arte-sh4c3y.txt
╭────────────────────────────╮
│  SH4C3Y digital mind       │
│  🧠 Dashboard sin splash    │
│  🤖 Validación sintomática  │
│  🚀 Publicado como .html    │
│  💎 Repo-ready blindado     │
╰────────────────────────────╯
EOF
cat arte-sh4c3y.txt

echo "📲 Generando QR para difusión comunitaria…"
qrencode -o QR.png "https://shaggy0397.github.io/shaggy-digital-mind/dashboard.html"
echo "✅ QR generado: QR.png"

echo "📦 Confirmando publicación en GitHub Pages…"
echo "🔗 https://shaggy0397.github.io/shaggy-digital-mind/dashboard.html"

echo "🎉 Ritual de cierre completado. SH4C3Y está lista para inspirar."
