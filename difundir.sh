#!/bin/bash

echo "🎯 Preparando difusión repo-ready de SH4C3Y..."

# 1. Generar QR de instalación
echo "📱 Generando QR..."
mkdir -p ascii
qrencode -o ascii/qr-sh4c3y.png "https://shaggy0397.github.io/shaggy-digital-mind/"
qrencode -t ANSIUTF8 "https://shaggy0397.github.io/shaggy-digital-mind/" > ascii/qr-ascii.txt
echo "✅ QR generado en ascii/qr-sh4c3y.png"

# 2. Copiar arte ASCII splash
echo "🎨 Copiando arte ASCII..."
cat << "EOF" > ascii/splash.txt
╔════════════════════════════════════╗
║   SH4C3Y DIGITAL MIND             ║
║   Asistente táctil y simbólico    ║
║   Validación sintomática: ✅       ║
║   Powered by DEIMON ENTERPRISE™   ║
╚════════════════════════════════════╝
EOF
echo "✅ Splash guardado en ascii/splash.txt"

# 3. Insertar arte y QR en README
echo "🧾 Actualizando README.md..."
cat << "EOF" > README.md
# SH4C3Y digital mind 💠

Asistente táctil y simbólico para notas, dictado y memoria digital.  
Blindado con tecnología DEIMON ENTERPRISE™.  
Validación sintomática 100% superada ✅

---

## 🧬 Instalación rápida

```bash
git clone https://github.com/shaggy0397/shaggy-digital-mind.git
cd shaggy-digital-mind
bash iniciar-servidor.sh
