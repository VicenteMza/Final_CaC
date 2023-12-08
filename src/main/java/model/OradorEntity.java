package model;

public class OradorEntity {
    private Long id;
    private String name;
    private String lastName;
    private String email;
    private String subject;
    private String registration_date;

    public OradorEntity() {
    }

    public OradorEntity(Long id, String name, String lastName, String email, String subject, String registration_date) {
        this.id = id;
        this.name = name;
        this.lastName = lastName;
        this.email = email;
        this.subject = subject;
        this.registration_date = registration_date;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
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

    @Override
    public String toString() {
        return "OradorEntity{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", lastName='" + lastName + '\'' +
                ", email='" + email + '\'' +
                ", subject='" + subject + '\'' +
                ", registration_date='" + registration_date + '\'' +
                '}';
    }
}
