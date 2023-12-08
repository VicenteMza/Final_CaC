<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.OradorEntity"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
     <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
    <title>Listado de Oradores</title>
</head>
<body>
    <h1>Listado de Oradores</h1>

    <%
        List<OradorEntity> oradores = (List<OradorEntity>) request.getAttribute("oradores");
        if (oradores.isEmpty()) {
    %>
        <p>No hay oradores para mostrar.</p>
    <%
        } else {
    %>
        <table>
            <tr>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Email</th>
                <th>Descripción</th>
            </tr>
            <%
                for (OradorEntity orador : oradores) {
            %>
            <tr>
                <td><%= orador.getName() %></td>
                <td><%= orador.getLastName() %></td>
                <td><%= orador.getEmail() %></td>
                <td><%= orador.getSubject() %></td>
            </tr>
            <%
                }
            %>
        </table>
    <%
        }
    %>

    <form action="index.jsp">
        <input type="submit" value="Volver a Inicio">
    </form>

   <jsp:include page="/jsp/footer.jsp"/>

</body>
</html>
