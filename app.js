// 🧠 Filtro sintomático para dictado
function limpiarDictado(texto) {
  return texto
    .replace(/\b(\w+)\b(?=\s+\1\b)/gi, '') // elimina repeticiones consecutivas
    .replace(/\s{2,}/g, ' ') // elimina espacios dobles
    .trim();
}

// 🧾 Guardar nota con filtro aplicado
function guardarNota() {
  const nota = document.getElementById('nota').value;
  const notaLimpia = limpiarDictado(nota);
  console.log("Guardando:", notaLimpia);
  // Aquí puedes guardar en localStorage, backend o mostrar en pantalla
}

// 📅 Ver notas del día
function verNotas() {
  console.log("Mostrando notas de hoy...");
}

// 🎙️ Activar dictado por voz
function grabarVoz() {
  console.log("Iniciando grabación...");
  // Aquí puedes integrar Web Speech API
}

// 🤖 Preguntar a DEIMON
function enviarPregunta() {
  const pregunta = document.getElementById('pregunta').value;
  console.log("DEIMON responde a:", pregunta);
}
