const botonBorrar = document.getElementById("borrar");
const totalSpan = document.getElementById("total");

botonBorrar.addEventListener("click", function (event) {
  borrarFormulario(event, document.getElementById("formulario"));
});

function borrarFormulario(event, form) {
  event.preventDefault();

  const formFields = form.querySelectorAll('input, select');

  formFields.forEach(field => {
    if (field.type === 'text' || field.type === 'email' || field.type === 'number') {
      field.value = '';
    } else if (field.type === 'select-one') {
      field.selectedIndex = 3;
    }
  });

  // Deja en blanco el campo "Total a pagar"
  totalSpan.textContent = '';
}