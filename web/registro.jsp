<%-- 
    Document   : registro
    Created on : 18/10/2020, 04:03:06 PM
    Author     : Gianmarco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--BOOTSTRAP 4-->
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Registro</title>
    </head>
    <body>
        <div class="container">
            <h2>Registro de Usuario</h2>
            <form action="ServletUsuario" method="POST">
                <div class="form-group">
                    <label for="nombre">Nombre(s):</label>
                    <input type="text" name="txtNombre" class="form-control">
                </div>
                <div class="form-group">
                    <label for="apellidos">Apellidos:</label>
                    <input type="text" name="txtApellidos" class="form-control">
                </div>
                <div class="form-group">
                    <label for="fechanac">Fecha de nacimiento:</label>
                    <input type="date" name="txtFechaNac" class="form-control">
                </div>
                <div class="form-group">
                    <label>Edad:</label>
                    <input type="number" name="txtEdad" class="form-control">
                </div> 
                <div class="form-group">
                    <label for="genero">Genero:</label>
                    <select name="cboGenero" class="form-control">
                        <option>Masculino</option>
                        <option>Femenino</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="correo">Correo:</label>
                    <input type="email" name="txtCorreo" class="form-control">
                </div>
                <div class="form-group">
                    <label for="usuario">Usuario:</label>
                    <input type="text" name="txtUsuario" class="form-control">
                </div>
                <div class="form-group">
                    <label for="clave">Clave:</label>
                    <input type="password" name="txtClave" class="form-control">
                </div>
                <button type="submit" name="btnRegistrar" class="btn btn-primary">Registrar</button>
            </form>
        </div>
    </body>
</html>
