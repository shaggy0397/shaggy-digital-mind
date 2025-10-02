#!/bin/bash

echo "🎨 Verificando estilo visual de SH4C3Y..."

# 1. Verifica que style.css exista
[ -f style.css ] && echo "✅ style.css presente" || echo "❌ style.css faltante"

# 2. Verifica que esté referenciado en index.html
grep -q '<link rel="stylesheet" href="style.css"' index.html && echo "✅ style.css referenciado en index.html" || echo "❌ Falta referencia a style.css"

# 3. Verifica que tenga fondo helado
grep -q "linear-gradient(135deg, #00ffff" style.css && echo "✅ Paleta helada activa" || echo "⚠️ Fondo helado no detectado"

# 4. Verifica que los botones tengan estilo táctil
grep -q "button {" style.css && echo "✅ Estilo táctil para botones presente" || echo "⚠️ Botones sin estilo definido"

echo "🧠 Verificación de estilo completada."
