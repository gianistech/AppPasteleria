<%-- 
    Document   : login
    Created on : 18/10/2020, 04:02:54 PM
    Author     : Gianmarco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--BOOTSTRAP 4-->
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <!--Estilos-->
        <link href="estilos/login_estilos.css" rel="stylesheet" type="text/css"/>
        <title>Iniciar Sesión</title>
    </head>
    <body>
        <h2>Inicio de Sesión</h2>
        <div class="container">
            <form action="#" method="POST">
                <div class="form-group">
                    <label for="usuario">Usuario:</label>
                    <input type="text" name="txtusuario" class="form-control">
                </div>
                <div class="form-group">
                    <label for="clave">Clave:</label>
                    <input type="password" name="txtclave" class="form-control">
                </div>
                <button type="submit" name="btnIngresar" class="btn btn-primary">Ingresar</button>
            </form>
        </div>
    </body>
</html>
