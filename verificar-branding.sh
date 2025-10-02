#!/bin/bash

echo "🔍 Verificando branding visual en index.html..."

# Verifica título
grep -q "<title>SH4C3Y digital mind</title>" index.html && echo "✅ Título correcto" || echo "❌ Título incorrecto o ausente"

# Verifica encabezado visual
grep -q "<h1>SH4C3Y digital mind</h1>" index.html && echo "✅ Encabezado visual correcto" || echo "❌ Encabezado visual incorrecto"

# Verifica manifest referenciado
grep -q '<link rel="manifest" href="manifest.json"' index.html && echo "✅ Manifest referenciado" || echo "❌ Falta referencia al manifest"

# Verifica que no haya rastros de SHAGGY
grep -q "SHAGGY" index.html && echo "⚠️ Branding viejo detectado: SHAGGY" || echo "✅ Sin rastros de SHAGGY"

echo "🧠 Verificación de branding completada."
