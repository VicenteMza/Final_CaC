package util;

import java.util.ArrayList;
import java.util.List;

public class ValidationOrador {
    public static List<String> validateName(String name) {
        ValidationOrador orador = new ValidationOrador();
        return orador.validateField("nombre", name, 50);
    }

    public static List<String> validateLastName(String lastName) {
        ValidationOrador orador = new ValidationOrador();
        return orador.validateField("apellido", lastName, 50);
    }
    public static List<String> validateEmail(String email){
        List<String> errors = new ArrayList<>();
        if (email == null || email.isEmpty()){
            errors.add("El correo no puede estar vacío.");
        }
        if (email != null && email.matches("a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}")){
            errors.add("El formato del correo electrónico no es válido.");
        }
        return errors;
    }
    public static List<String> validateSubject(String subject){
        List<String> errors = new ArrayList<>();
        if (subject.isEmpty() || subject.length() > 500){
            errors.add("El tema no puede estas vacio y no puede tener más de 500 caracteres.");
        }
        return errors;
    }
    private List<String> validateField(String fieldName, String value, int maxLength) {
        List<String> errors = new ArrayList<>();
        if (value == null || value.isEmpty()) {
            errors.add("El " + fieldName + " no puede estar vacío.");
        }
        if (value != null && value.length() > maxLength) {
            errors.add("El " + fieldName + " no puede tener más de " + maxLength + " caracteres.");
        }
        if (value != null && !value.matches("[a-zA-Z ]+")) {
            errors.add("El " + fieldName + " solo puede contener letras y espacios.");
        }
        return errors;
    }
}
