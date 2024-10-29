<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro</title>
    <link rel="stylesheet" href="login.css">
</head>
<body>
    <div class="contenedor">
        <div class="formulario">
            <h2>Inicio de sesión</h2>
            <form action="LoginServlet" method="post"> <!-- Cambiado a LoginServlet -->
                <label for="nombre-usuario">Nombre de Usuario</label>
                <input type="text" id="nombre-usuario" name="nombre_usuario" required>

                <label for="contraseña">Contraseña</label>
                <input type="password" id="contraseña" name="contraseña" required>

                <button type="submit">Iniciar sesión</button> <!-- Cambiado a type="submit" -->
            </form>
        </div>
    </div>
</body>
</html>