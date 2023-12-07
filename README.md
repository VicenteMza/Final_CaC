# Proyecto Web Java con JSP, Servlets y MySQL

Este proyecto es una aplicación web desarrollada en Java utilizando tecnologías como JSP, Servlets y MySQL para el almacenamiento de datos.

## Estructura del Proyecto

- **src**: Contiene los archivos fuente Java.
    - **controller**: Clases Servlet.
    - **dao**: Clases para la conexión y operaciones con la base de datos.
    - **model**: (Opcional) Clases que representan las entidades del modelo.

- **webapp**: Contiene archivos relacionados con la interfaz web.
    - **index.jsp**: Página principal o punto de entrada.
    - **otras carpetas y archivos JSP**: Para organizar la interfaz de usuario.

## Configuración de la Base de Datos

1. **MySQL**: Asegúrate de tener un servidor MySQL en ejecución.

2. **Configuración de la Base de Datos**:
    - Crea una base de datos llamada `integrador_cac`.
    - Configura las credenciales de acceso en `dao/DBConnection.java`.

# Crear la base de datos
CREATE DATABASE IF NOT EXISTS integrador_cac;
USE integrador_cac;

### Crear la tabla de oradores
CREATE TABLE oradores (
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
lastName VARCHAR(50) NOT NULL,
email VARCHAR(255) NOT NULL,
subject VARCHAR(500) NOT NULL,
registration_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY(id)
);
## Ejecución del Proyecto
**Acceso**:
1. - Accede a la aplicación desde [http://localhost:8080/](http://localhost:8080/).
2. - Asegúrate de tener **apache-tomcat-8.5.95** instalado.
3. - Asegurate de estar usando **JDK 17**.