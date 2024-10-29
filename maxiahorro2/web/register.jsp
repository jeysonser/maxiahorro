<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro - Maxi Ahorro</title>
    <link rel="stylesheet" href="register.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <div class="form-container">
        <div class="avatar">
            <i class="fas fa-user"></i>
        </div>
        <h2>Registro</h2>
        <form action="RegisterServlet" method="post"> <!-- Cambiado para apuntar al servlet -->
            <div class="input-group">
                <i class="fas fa-user"></i>
                <input type="text" name="nombre" placeholder="Nombre" required>
            </div>
            <div class="input-group">
                <i class="fas fa-user"></i>
                <input type="text" name="apellido" placeholder="Apellido" required>
            </div>
            <div class="input-group">
                <i class="fas fa-envelope"></i>
                <input type="email" name="email" placeholder="Correo electrónico" required>
            </div>
            <div class="input-group">
                <i class="fas fa-phone"></i>
                <input type="tel" name="telefono" placeholder="Teléfono" required>
            </div>
            <div class="input-group">
                <i class="fas fa-user"></i>
                <input type="text" name="usuario" placeholder="Usuario" required>
            </div>
            <div class="input-group">
                <i class="fas fa-lock"></i>
                <input type="password" name="contraseña" placeholder="Contraseña" required>
            </div>
            <div class="input-group">
                <i class="fas fa-lock"></i>
                <input type="password" name="confirmar_contraseña" placeholder="Confirmar Contraseña" required>
            </div>
            <button type="submit">Registrarse</button>
        </form>
        <a href="login.jsp">¿Ya tiene una cuenta? Iniciar Sesión</a>
    </div>
</body>
</html>