<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF8"%>
<%@ page import="java.util.List" %>
<!doctype html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <title>Conferencia</title>
</head>

<body>
<!--header-->
<header id="header-container">
    <!-- El encabezado se cargará aquí dinámicamente con JavaScript -->
</header>

<!--imagen y texto principal-->
<div class="container-fluid">
    <div class="row flex-row-reverse imgfondo text-white align-items-center">
        <div class="col-8c col-md-4 tarjeta1">
            <h1>Conf Bs As</h1>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Hic rerum aliquam ea doloribus alias iste
                provident
                quisquam dicta mollitia ullam officiis laborum porro, doloremque praesentium.</p>
            <div class="flex">
                <button type="button" class="btn btn-outline-light">Quiero ser Orador</button>
                <button type="button" class="btn btn-success btn-comprar"><a class="nav-link"
                                                                             href="comprarTicket.html">Comprar
                    ticket</a></button>
            </div>
        </div>
    </div>
</div>
<!--tarjetas de Oradores-->
<section>
    <div class="container" id="Oradores">
        <h5 class="text-center">CONOCE A LOS</h5>
        <h2 class="text-center">ORADORES</h2>
        <div class="row row-cols-1 row-cols-md-3 g-4 tarjeta" id="oradores">
            <div class="col">
                <div class="card text-lg-start">
                    <img src="img/steve.jpg" class="card-img-top" alt="Foto Steve Jovs" loading="lazy" id="foto">
                    <div class="card-body">
                        <button type="button" class="btn btn-JavaScript">JavaScript</button>
                        <button type="button" class="btn btn-React">React</button>
                        <h5 class="card-title">Steve Jovs</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit omnis
                            excepturi
                            neque dolor eum dolorem eaque tenetur possimus, itaque molestias eius nisi cupiditate fugiat
                            similique
                            repellat, illo sunt minus sed? </p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card text-lg-start" id="tarjeta">
                    <img src="img/bill.jpg" class="card-img-top" alt="foto de Bill Gates" loading="lazy">
                    <div class="card-body">
                        <button type="button" class="btn btn-JavaScript">JavaScript</button>
                        <button type="button" class="btn btn-React">React</button>
                        <h5 class="card-title">Bill Gates</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Velit corrupti
                            quis sequi
                            excepturi minima eum harum molestias assumenda? Excepturi itaque dolorem hic recusandae
                            velit.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card text-lg-start" id="tarjeta">
                    <img src="img/ada.jpeg" class="card-img-top" alt="Foto Ada" loading="lazy">
                    <div class="card-body">
                        <button type="button" class="btn btn-Negocios">Negocios</button>
                        <button type="button" class="btn btn-Startup">Startup</button>
                        <h5 class="card-title">Ada Lovelace</h5>
                        <p class="card-text">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis
                            architecto
                            totam, ipsam officiis quaerat iusto excepturi optio sed veritatis. Voluptatibus optio
                            delectus deleniti
                            adipisci illum iste accusamus!</p>
                    </div>
                </div>
            </div>
        </div>
</section>
<!--lugar y fecha-->
<section class="row" id="Lugar">
    <img class="col-12c col-md-6 px-0" src="img/honolulu.jpg" alt="imagen playa">
    <div class="col-12  col-md-6 text-white bg-dark " id="playa">
        <h2 class="central">Bs As - Octubre</h2>
        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Vel voluptas necessitatibus totam nam tempora
            cupiditate nostrum asperiores possimus commodi cumque! Excepturi magnam ex non soluta dolore, eaque sapiente
            expedita aperiam!</p>
        <button type="button" class="btn btn-outline-light text-light">Conocé más</button>
    </div>
</section>
<!--quiero ser orador-->
<section>
    <div class="container text-center" id="Conviertete">
        <h6>CONVIERTETE EN UN</h6>
        <h4>ORADOR</h4>
        <p>Anótate como orador, para dar una charla ignite.Cuéntanos de que quieres hablar</p>

        <!-- Especifica la URL del servlet y el método POST -->
        <form action="oradores" method="post" class="needs-validation" novalidate>
            <div class="row d-inline-flex formulario">
                <div  class="row g-3" >
                    <div class="col-md-6">
                        <input type="text" class="form-control" name="nombre" placeholder="Nombre" aria-label="Nombre" required>
                        <div class="invalid-feedback">
                            <!-- Validado por validateOrador.js -->
                        </div>
                    </div>

                    <div class="col-md-6">
                        <input type="text" class="form-control" name="apellido" placeholder="Apellido" aria-label="Apellido" required>
                        <div class="invalid-feedback">
                            <!-- Validado por validateOrador.js -->
                        </div>
                    </div>
                    
                </div>
                <div class="input-group sm-3">
                    <input type="email" class="form-control" name="email" placeholder="email" aria-label="email" required>
                    <div class="invalid-feedback">
                        <!-- Validado por validateOrador.js -->
                    </div>
                </div>
                <div class="input-group">
                    <span class="input-text"></span>
                    <textarea class="form-control" name="tema" aria-label="With textarea" placeholder="Sobre qué quieres hablar" required></textarea>
                    <div class="invalid-feedback">
                        <!-- Validado por validateOrador.js -->
                    </div>
                </div>
                <div class="col-md-6">
                    <input class="btn btn-success enviar" type="submit" value="Enviar">
                </div>
                <div class="col-md-6">
                    <button class="btn btn-success enviar" id="listOradores">Listar Oradores</button>
                </div>
                <p class="text-start" style="font-size: small;">Recuerda incluir un titulo para tu charla</p>
            </div>
        </form>
    </div>
</section>

<footer id="footer-container">
    <!-- El footer se cargará aquí dinámicamente con JavaScript -->
</footer>

<%-- Código Java para mostrar alertas de errres en al carga de un orador --%>
<%
    List<String> errors = (List<String>) request.getAttribute("errors");
    if(errors != null && !errors.isEmpty()){
%>
        <script type="text/javascript">
            let errors = '<%= String.join("\\n", errors) %>';
            alert('Se encontraron errores: \n' + errors);
        </script>
<%
    }
%>
<!--<script src="js/bootstrap.bundle.min.js"></script>-->
<script src="js/loadHeaderFooter.js"></script>
<script src="./js/validateOrador.js"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="./js/listOradores.js"></script>

</body>

</html>