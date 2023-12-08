document.querySelector('.needs-validation').addEventListener('submit', function (event) {
    const form = event.target;

    validateField(form, 'nombre', /^[a-zA-Z]{3,50}$/, 'El nombre debe contener solo letras y tener entre 3 y 50 caracteres');
    validateField(form, 'apellido', /^[a-zA-Z]{3,50}$/, 'El apellido debe contener solo letras y tener entre 3 y 50 caracteres');
    validateField(form, 'email', /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/, 'El email debe tener un formato válido, por ejemplo: mail@mail.com');
    validateField(form, 'tema', /^.{1,500}$/, 'La descripción no debe ser más larga de 500 caracteres');

    // Prevenir el envío del formulario si hay errores
    if (!form.checkValidity()) {
        event.preventDefault();
        event.stopPropagation();
    }
    form.classList.add('was-validated');
}, false);

function validateField(form, fieldName, regex, errorMessage) {
    const field = form.elements[fieldName];
    const feedbackDiv = field.parentElement.querySelector('.invalid-feedback');

    if (!regex.test(field.value)) {
        // Cambiar el mensaje de error predeterminado
        field.setCustomValidity(errorMessage);
        feedbackDiv.textContent = errorMessage;
    } else {
        field.setCustomValidity('');
        feedbackDiv.textContent = '';
    }
}