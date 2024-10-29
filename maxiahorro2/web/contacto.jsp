<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Atención al cliente</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="contacto.css">
</head>
<body>
    <div class="background"></div>
    <div class="container">
        <div class="contact-box">
            <div class="form-section">
                <h2>CONTACTANOS</h2>
                <form id="contactForm" action="ContactoServlet" method="post">
                    <input type="text" id="name" name="name" placeholder="Nombre" required>
                    <input type="email" id="email" name="email" placeholder="Correo Electronico" required>
                    <textarea id="message" name="message" placeholder="Ingrese su mensaje" rows="4" required></textarea>
                    <button type="submit">ENVIAR</button>
                </form>
            </div>
            <div class="info-section">
                <div class="info-item">
                    <span class="icon"><i class="fas fa-phone"></i></span>
                    <h3>LLÁMANOS</h3>
                    <p>1 (234) 567-891</p>
                </div>
                <div class="info-item">
                    <span class="icon"><i class="fas fa-envelope"></i></span>
                    <h3>EMAIL</h3>
                    <p>MaxiA@gmail.com</p>
                </div>
                <div class="info-item">
                    <span class="icon"><i class="fas fa-map-marker-alt"></i></span>
                    <h3>UBICACIÓN</h3>
                    <p>Calle. Callao 244, Ica 11002</p>
                </div>
                <div class="info-item">
                    <span class="icon"><i class="fas fa-clock"></i></span>
                    <h3>HORAS DE ATENCIÓN</h3>
                    <p>Lun - Dom .... 7 am - 11 pm</p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
