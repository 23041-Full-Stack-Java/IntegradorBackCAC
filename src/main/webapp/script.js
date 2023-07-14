function validar(formulario) {
  if (formulario.nombre.value.trim().length == 0) {
    alert("Debe completar el nombre");
    return false;
  }
  if (formulario.apellido.value.trim().length == 0) {
    alert("Debe completar el apellido");
    return false;
  }

  const re =
    /^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
  if (!re.test(formulario.email.value)) {
    alert("Debe completar con un email válido");
    return false;
  }

  if (formulario.cantidad.value.trim().length == 0) {
    alert("Ingrese la cantidad de entradas a comprar");
    return false;
  }
  return true;
}

document.addEventListener("DOMContentLoaded", function() {
  const btnResumen = document.getElementById("resumen");
  const btnBorrar = document.getElementById("borrar");

  btnResumen.addEventListener("click", captura);
  btnBorrar.addEventListener("click", limpiarFormulario);
});

function captura() {
  var cantidad = document.getElementById("cantidad").value;
  var categoria = document.getElementById("categoria").value;
  var descuento = 0;

  if (categoria == "Estudiante") {
    descuento = 0.2;
  } else if (categoria == "Trainee") {
    descuento = 0.5;
  } else if (categoria == "Junior") {
    descuento = 0.85;
  }

  var total = parseInt(cantidad) * 200 * descuento;
  document.getElementById("total").textContent = total;
}

function limpiarFormulario() {
  document.querySelector("#cantidad").value = "";
  document.querySelector("#categoria").value = "";
  document.querySelector("#nombre").value = "";
  document.querySelector("#apellido").value = "";
  document.querySelector("#email").value = "";
  document.querySelector("#total").textContent = "";
}
