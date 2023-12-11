<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ page import="java.util.List" %>
    <%@ page import="model.OradorEntity" %>
      <!doctype html>
      <html lang="en">

      <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Lista de Oradores</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="./css/footer.css">
        <link rel="stylesheet" href="./css/send-button.css">
        <style>
          html,body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
          }

          #page-content {
            flex: 1 0 auto;
          }
        </style>
      </head>

      <body class="d-flex flex-column">
        <div id="page-content">
          <h1 class="text-decoration-underline display-4 text-center mt-4 mb-4 ">Listado de Oradores</h1>

          <% List<OradorEntity> oradores = (List<OradorEntity>) request.getAttribute("oradores");
              if (oradores.isEmpty()) {
              %>
              <p>No hay oradores para mostrar.</p>
              <% } else { %>
                <table class="table table-striped">
                  <thead>
                    <tr>
                      <th scope="col">Nombre</th>
                      <th scope="col">Apellido</th>
                      <th scope="col">Email</th>
                      <th scope="col">Descripción</th>
                    </tr>
                  </thead>
                  <% for (OradorEntity orador : oradores) { %>
                    <tbody>
                      <tr>
                        <td>
                          <%= orador.getName() %>
                        </td>
                        <td>
                          <%= orador.getLastName() %>
                        </td>
                        <td>
                          <%= orador.getEmail() %>
                        </td>
                        <td>
                          <%= orador.getSubject() %>
                        </td>
                      </tr>
                    </tbody>
                    <% } %>
                </table>
                <% } %>

                  <form action="index.jsp">
                  <div class="col-md-2">
                    <input type="submit" class="btn btn-success send" value="Volver a Inicio">
                  </div>
                  </form>
        </div>
        <jsp:include page="/jsp/footer.jsp" />
      </body>

      </html>