#!/bin/bash

echo "🔍 Validando SH4C3Y digital mind..."

# Validar branding en index.html
grep -q "SH4C3Y digital mind" index.html && echo "✅ index.html branding OK" || echo "❌ index.html branding incorrecto"

# Validar manifest.json
grep -q '"short_name": "SH4C3Y"' manifest.json && echo "✅ manifest.json OK" || echo "❌ manifest.json incorrecto"

# Validar cache name en service-worker.js
grep -q "sh4c3y-cache-v2" service-worker.js && echo "✅ Cache actualizado en SW" || echo "❌ Cache viejo en SW"

# Validar limpieza de caches en SW
grep -q "caches.delete" service-worker.js && echo "✅ Limpieza de caches OK" || echo "❌ Falta limpieza de caches"

# Validar filtro de dictado en app.js
grep -q "replace" app.js && echo "✅ Filtro de dictado presente" || echo "❌ Falta filtro de dictado"

# Validar archivos clave
for file in index.html manifest.json service-worker.js app.js; do
  [ -f "$file" ] && echo "✅ $file presente" || echo "❌ $file faltante"
done

# Validar íconos
[ -f assets/icon-192.png ] && echo "✅ icon-192.png presente" || echo "❌ icon-192.png faltante"
[ -f assets/icon-512.png ] && echo "✅ icon-512.png presente" || echo "❌ icon-512.png faltante"

echo "🧠 Validación sintomática completada."
