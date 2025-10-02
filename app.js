function limpiarDictado(texto) {
  const palabras = texto.split(' ');
  return palabras.filter((p, i) => p !== palabras[i - 1]).join(' ');
}

async function procesarConDEIMON(textoOriginal) {
  const textoLimpio = limpiarDictado(textoOriginal);
  const resultado = await gemini.extract(textoLimpio, {
    cliente: { type: "STRING" },
    productos: { type: "ARRAY", items: { type: "STRING" } },
    total: { type: "NUMBER" },
    estado: { type: "STRING", enum: ["Pagado", "Pendiente"] }
  });
  actualizarVistaPrevia(resultado);
  registrarVenta(resultado);
}

function actualizarVistaPrevia(data) {
  document.getElementById('preview-cliente').textContent = data.cliente || '--';
  document.getElementById('preview-productos').textContent = data.productos?.join(', ') || '--';
  document.getElementById('preview-total').textContent = `$${data.total?.toFixed(2) || '0.00'}`;
  document.getElementById('preview-estado').textContent = data.estado || '--';
}

function registrarVenta(data) {
  const fila = document.createElement('tr');
  fila.innerHTML = `<td>${data.cliente}</td><td>$${data.total.toFixed(2)}</td>`;
  document.getElementById('sales-log-body').appendChild(fila);
}
