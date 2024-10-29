<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página Principal</title>
    <link rel="stylesheet" href="index.css">
    <link rel="icon" href="https://maxiahorro.com.pe/wp-content/uploads/2021/06/favicon.ico" type="image/x-icon">
</head>
<body>
    <header>
        <div class="top-bar">
        </div>
        <div class="main-header">
            <div class="logo">
                <img src="https://maxiahorro.com.pe/wp-content/uploads/2021/05/logo.png" alt="">
            </div>
            <div class="header-icons">
                <img src="images/inises.png" alt="iniciosesi">
                <a href="login.jsp">Inicio de sesión</a>
                <a href="register.jsp" class="register-btn">Regístrate</a>
            </div>
        </div>
        <nav>
            <a href="#banners">Ofertas</a>
            <a href="menuProductos.jsp">Productos</a>
            <a href="contacto.jsp">Atención al cliente</a>
            <a href="acerca.jsp">Acerca de nosotros</a>
        </nav>
    </header>
    <main>
        <div class="slideshow-container full-width">
            <div class="mySlides fade">
                <img src="https://maxiahorro.com.pe/wp-content/uploads/2021/07/catalogobanner.jpg" style="width:100%">
            </div>
            <div class="mySlides fade">
                <img src="https://maxiahorro.com.pe/wp-content/uploads/2024/09/ContraEspecial_BannerWeb_Maxi.jpg" style="width:100%">
            </div>
            <div class="mySlides fade">
                <img src="https://maxiahorro.com.pe/wp-content/uploads/2024/09/BannerWeb_MaxiSORTEOLIMA.jpg" style="width:100%">
            </div>
            <div class="mySlides fade">
                <img src="https://maxiahorro.com.pe/wp-content/uploads/2024/09/BannerWeb_MaxiLIMASORTEO.jpg" style="width:100%">
            </div>
            <div class="mySlides fade">
                <img src="https://maxiahorro.com.pe/wp-content/uploads/2021/06/contactonew.jpg" style="width:100%">
            </div>
            <div class="mySlides fade">
                <img src="https://maxiahorro.com.pe/wp-content/uploads/2021/06/merkatnew.jpg" style="width:100%">
            </div>

            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
        </div>
        <br>

        <div style="text-align:center">
            <span class="dot" onclick="currentSlide(1)"></span>
            <span class="dot" onclick="currentSlide(2)"></span>
            <span class="dot" onclick="currentSlide(3)"></span>
            <span class="dot" onclick="currentSlide(4)"></span>
            <span class="dot" onclick="currentSlide(5)"></span>
            <span class="dot" onclick="currentSlide(6)"></span>
        </div>

        <div class="features">
            <div class="feature">
                <img src="images/deli.png" alt="Entrega gratis">
                <p>Entrega gratis<br>A tu puerta</p>
            </div>
            <div class="feature">
                <img src="images/contact.png" alt="Atención al cliente">
                <p>A tu disposición<br>Asistencia online 24/7</p>
            </div>
        </div>
    </main>

    <div class="container">
        <div class="company-info">
            <img src="https://peruretail.sfo3.cdn.digitaloceanspaces.com/wp-content/uploads/SMU-Maxi-Ahorro-2.jpeg" class="company-image">
            <div class="company-details">
                <h2>Sobre Nosotros</h2>
                <p>
                    Somos una cadena de supermercados con 9 años de trayectoria.
                    Contamos con 18 tiendas y más de 600 colaboradores en las ciudades de Lima, Piura e Ica.
                </p>
                <p>
                    Nuestra misión es ser una compañía cercana a nuestros clientes, simplificándoles la vida, 
                    con las mejores soluciones para su día a día.
                </p>
                <p>
                    Nuestra visión es ser la cadena líder de supermercados de descuento y conveniencia de Perú, 
                    siendo respetada por nuestros clientes, trabajadores y proveedores; contribuyendo así a la 
                    formalización y desarrollo del comercio minorista y mayorista del país.  
                </p>
            </div>
        </div>
    </div> <br>

    <div id="banners" class="banners-publicidad">
        <div class="banner">
            <img src="https://maxiahorro.com.pe/wp-content/uploads/2024/09/ALBUM-YAPAS-MAXI-ANIVERSARIO-01-1.jpg" alt="publicidad 1">
        </div>
        <div class="banner">
            <img src="https://maxiahorro.com.pe/wp-content/uploads/2024/09/Album-Ofertas-carretillazo-2-1-1.jpg" alt="publicidad 2">
        </div>
    </div><br>

    <footer>
        <div class="footer-container">
            <div class="footer-column">
                <h2>MAXIAHORRO</h2>
                <p>¿Necesitas ayuda?</p>
                <p>Visita <a href="#">Atención al Cliente</a> para ayuda o llámanos al</p>
                <p><strong>+51 956695969-108</strong></p>
            </div>
            <div class="footer-column">
                <h3>Menú</h3>
                <p>Ofertas</p>
                <p>Inicio de sesión</p>
                <p>Atención del cliente</p>
                <p>Acerca de nosotros</p>
                <p>Registro</p>
            </div>
            <div class="footer-column">
                <h3>Categorías</h3>
                <p>Abarrotes</p>
                <p>Bebidas</p>
                <p>Congelados</p>
                <p>Lácteos</p>
                <p>Desayunos, etc</p>
            </div>
            <div class="footer-column">
                <h3>Info</h3>
                <p>Acerca de</p>
                <p>Atención al cliente</p>
                <p>Ubicaciones</p>
            </div>
            <div class="footer-column">
                <h3>Mi elección</h3>
                <p>Favoritos</p>
                <p>Mis pedidos</p>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="social-media">
                <a href="https://www.facebook.com/MaxiahorroPE" target="_blank"><img src="images/facebook.png" alt="Facebook"></a>
                <a href="https://maps.app.goo.gl/sb6BbfKuRJXRPagY6" target="_blank"><img src="images/mapsg.png" alt="google maps"></a>
                <a href="#" target="_blank"><img src="images/WhatsApp.svg.png" alt="whatsapp"></a>
            </div>
            <div class="footer-links">
                <a href="#">Envío y devoluciones</a>
                <a href="#">Términos y condiciones</a>
                <a href="#">Métodos de pago → → →</a>
            </div>
            <div class="payment-methods">
                <img src="images/master.png" alt="Mastercard">
                <img src="images/america.png" alt="American Express">
                <img src="images/pay.png" alt="PayPal">
                <img src="images/vis.jpg" alt="Visa">
            </div>
        </div>
    </footer>
    
    <script src="index.js"></script>
</body>
</html>
