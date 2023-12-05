# Proyecto Web Java con JSP, Servlets y MySQL

Este proyecto es una aplicación web desarrollada en Java utilizando tecnologías como JSP, Servlets y MySQL para el almacenamiento de datos.

## Estructura del Proyecto

- **src**: Contiene los archivos fuente Java.
    - **servlets**: Clases Servlet.
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

## Ejecución del Proyecto
1. **Acceso**:
    - Accede a la aplicación desde [http://localhost:8080/](http://localhost:8080/).
