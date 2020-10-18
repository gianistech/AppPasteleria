<%-- 
    Document   : principal
    Created on : 18/10/2020, 11:34:39 AM
    Author     : Gianmarco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--BOOTSTRAP 4-->
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <!--Estilos adicionales-->
        <link href="estilos/principal_estilos.css" rel="stylesheet" type="text/css"/>
        <title>Principal</title>
    </head>
    <body>
        <div class="container-fluid">
            <div id="cabecera"></div>
            
            <div id="links">
                <form action="#" method="POST">
                    <input type="text" name="txtUsuario" placeholder="Usuario">
                    <input type="password" name="txtClave" placeholder="Clave">
                    <button type="submit" class="btn btn-primary btn-sm">Ingresar</button>
                    <button type="button" class="btn btn-secondary btn-sm">Registrarse</button>
                </form>
                
            </div>
            
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
              <a class="navbar-brand" href="#">Nombre
                  <img src="imagenes/icono_pastel.png">
              </a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>

              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                  <li class="nav-item active">
                    <a class="nav-link" href="#">Inicio <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Contactanos</a>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Categorias
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item" href="#">Galletas</a>
                      <a class="dropdown-item" href="#">Pasteles</a>
                      <a class="dropdown-item" href="#">Cupcakes</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">Pedidos personalizados</a>
                    </div>
                  </li>
                  <li class="nav-item">
                    <!--<a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>-->
                  </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                  <input class="form-control mr-sm-2" type="search" placeholder="Buscar..." aria-label="search">
                  <button class="btn btn-outline-info my-2 my-sm-0" type="submit">Buscar</button>
                </form>
              </div>
            </nav>
            
            <div class="container">
            
                <div class="card-group">
                  <div class="card">
                    <img src="imagenes/cupcakes.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                      <h5 class="card-title">Cupcakes</h5>
                      <p class="card-text">Deliciosos y perfectos para cada ocasión, aquí encontraran una amplia variedad de estos productos y podrán personalizarlos a su gusto.</p>
                      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                      <a href="#" class="btn btn-info">Ver</a>
                    </div>
                  </div>
                  <div class="card">
                    <img src="imagenes/galletas.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                      <h5 class="card-title">Galletas</h5>
                      <p class="card-text">Galletas con chispas de chocolate, vainilla, fresa, y más. Aquí encontrarán todas las galletas que te puedas imaginar y además la capaidad de crear la tuya propia.</p>
                      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                      <a href="#" class="btn btn-info">Ver</a>
                    </div>
                  </div>
                  <div class="card">
                    <img src="imagenes/pastel_chocolate.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                      <h5 class="card-title">Pasteles</h5>
                      <p class="card-text">Crea tu propio pastel con la cubierta que deseas, decorado y sabor que esperas.</p>
                      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                      <a href="#" class="btn btn-info">Ver</a>
                    </div>
                  </div>
                </div>
            
            </div>
            
            <div id="pie"></div>
        </div>
        <!--Jquery, Popper.js y JavaScript plugins-->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
</html>
