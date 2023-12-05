package model;

public class OradorEntity {
    private String name;
    private String lasName;
    private String email;
    private String subject;
    private String registration_date;

    public OradorEntity() {
    }

    public OradorEntity(String name, String lasName, String email, String subject, String registration_date) {
        this.name = name;
        this.lasName = lasName;
        this.email = email;
        this.subject = subject;
        this.registration_date = registration_date;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLasName() {
        return lasName;
    }

    public void setLasName(String lasName) {
        this.lasName = lasName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getRegistration_date() {
        return registration_date;
    }

    public void setRegistration_date(String registration_date) {
        this.registration_date = registration_date;
    }
}
