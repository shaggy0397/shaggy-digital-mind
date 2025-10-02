#!/bin/bash

echo "🔍 Validando SH4C3Y digital mind..."

# Branding
grep -q "SH4C3Y digital mind" index.html && echo "✅ index.html branding OK" || echo "❌ index.html branding incorrecto"
grep -q '"short_name": "SH4C3Y"' manifest.json && echo "✅ manifest.json OK" || echo "❌ manifest.json incorrecto"

# Service Worker
grep -q "sh4c3y-cache" service-worker.js && echo "✅ Cache actualizado en SW" || echo "❌ Cache viejo en SW"
grep -q "caches.delete" service-worker.js && echo "✅ Limpieza de caches OK" || echo "❌ Falta limpieza de caches"

# Filtro sintomático
grep -q "filter\|replace" app.js && echo "✅ Filtro de dictado presente" || echo "❌ Falta filtro de dictado"

# Archivos clave
for file in index.html manifest.json service-worker.js app.js style.css README.md; do
  [ -f "$file" ] && echo "✅ $file presente" || echo "❌ $file faltante"
done

# Íconos
[ -f assets/icon-192.png ] && echo "✅ icon-192.png presente" || echo "❌ icon-192.png faltante"
[ -f assets/icon-512.png ] && echo "✅ icon-512.png presente" || echo "❌ icon-512.png faltante"

# Arte ASCII
[ -d ascii ] && echo "✅ Carpeta de arte ASCII presente" || echo "⚠️ Falta carpeta 'ascii'"

# Duplicados sintomáticos
[ -f serviceWorker.js ] && echo "⚠️ Duplicado 'serviceWorker.js' detectado" || echo "✅ Sin duplicados de SW"
[ -d shaggy-digital-mind ] && echo "⚠️ Carpeta anidada 'shaggy-digital-mind/' detectada" || echo "✅ Estructura raíz limpia"

# Validadores extra
[ -f validar-shaggy.sh ] && echo "✅ Script validador shaggy presente" || echo "⚠️ Falta 'validar-shaggy.sh'"
[ -f blindar-sh4c3y.sh ] && echo "✅ Script blindaje presente" || echo "⚠️ Falta 'blindar-sh4c3y.sh'"

echo "🧠 Validación sintomática completada."
