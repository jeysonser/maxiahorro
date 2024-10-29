<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nuestras Gafas</title>
    <link rel="stylesheet" href="menuproductos.css">
</head>
<body>
    <!-- Main Content -->
    <header class="banner-header">
        <img src="<%= request.getContextPath() %>/images/logomaxiahorro.png" alt="Banner Promocional" class="banner-image">
    </header>

    <section class="glasses-section text-center py-5">
        <!-- Search Bar -->
        <div class="search-container">
            <input type="text" id="searchInput" placeholder="Buscar productos...">
            <button id="searchButton">Buscar</button>
            <button id="backToMenu" style="display: none;">Volver al Menú Principal</button> <!-- Botón para volver al menú -->
        </div>

        <!-- Filter Dropdown -->
        <div class="filter-dropdown">
            <label for="filterSelect">Filtros</label>
            <select id="filterSelect">
                <option value="">Seleccione una opción</option>
                <option value="food">Alimentos</option>
                <option value="drinks">Bebidas</option>
                <option value="groceries">Abarrotes</option>
                <option value="reset">Restablecer Filtros</option>
            </select>
        </div>

        <div class="glasses-container" id="glassesContainer">
            <!-- Producto 1 -->
            <div class="product-item" data-category="food">
                <div class="card">
                    <img src="<%= request.getContextPath() %>/images/2.png" alt="Papas INKA CHIPS con Sal de Mar">
                    <div class="card-body">
                        <h5 class="card-title">Papas INKA CHIPS con Sal de Mar</h5>
                        <p class="card-text">Bolsa 135g</p>
                        <p class="card-text">P. regular S/ 7.80</p>
                        <button class="add-to-cart-btn" onclick="addToCart('Papas INKA CHIPS con Sal de Mar', 7.80)">Agregar al carrito</button>
                    </div>
                </div>
            </div>

            <!-- Producto 2 -->
            <div class="product-item" data-category="food">
                <div class="card">
                    <img src="<%= request.getContextPath() %>/images/1.png" alt="Galletas FIELD ChokoSoda">
                    <div class="card-body">
                        <h5 class="card-title">Galletas FIELD ChokoSoda</h5>
                        <p class="card-text">Paquete 6un Paquete 216g</p>
                        <p class="card-text">P. regular S/ 6.30</p>
                        <button class="add-to-cart-btn" onclick="addToCart('Galletas FIELD ChokoSoda', 6.30)">Agregar al carrito</button>
                    </div>
                </div>
            </div>

            <!-- Producto 3 -->
            <div class="product-item" data-category="food">
                <div class="card">
                    <img src="<%= request.getContextPath() %>/images/3.png" alt="Wafer NESTLÉ Sublime">
                    <div class="card-body">
                        <h5 class="card-title">Wafer NESTLÉ Sublime</h5>
                        <p class="card-text">Paquete 6un</p>
                        <p class="card-text">P. regular S/ 7.90</p>
                        <button class="add-to-cart-btn" onclick="addToCart('Wafer NESTLÉ Sublime', 7.90)">Agregar al carrito</button>
                    </div>
                </div>
            </div>

            <!-- Producto 4 -->
            <div class="product-item" data-category="food">
                <div class="card">
                    <img src="<%= request.getContextPath() %>/images/4.png" alt="Azúcar Blanca BELL'S">
                    <div class="card-body">
                        <h5 class="card-title">Azúcar Blanca BELL'S</h5>
                        <p class="card-text">Bolsa 5Kg</p>
                        <p class="card-text">P. regular S/ 24.00</p>
                        <button class="add-to-cart-btn" onclick="addToCart('Azúcar Blanca BELL\'S', 24.00)">Agregar al carrito</button>
                    </div>
                </div>
            </div>

            <!-- Producto 5 -->
            <div class="product-item" data-category="food">
                <div class="card">
                    <img src="<%= request.getContextPath() %>/images/5.png" alt="Papas INKA CHIPS Jalapeños">
                    <div class="card-body">
                        <h5 class="card-title">Papas INKA CHIPS Jalapeños</h5>
                        <p class="card-text">Bolsa 135g</p>
                        <p class="card-text">P. regular S/ 7.80</p>
                        <button class="add-to-cart-btn" onclick="addToCart('Papas INKA CHIPS Jalapeños', 7.80)">Agregar al carrito</button>
                    </div>
                </div>
            </div>

            <!-- Producto 6 -->
            <div class="product-item" data-category="food">
                <div class="card">
                    <img src="<%= request.getContextPath() %>/images/6.png" alt="Aceite de Soya SAO">
                    <div class="card-body">
                        <h5 class="card-title">Aceite de Soya SAO</h5>
                        <p class="card-text">Botella 900ml</p>
                        <p class="card-text">P. regular S/ 5.60</p>
                        <button class="add-to-cart-btn" onclick="addToCart('Aceite de Soya SAO', 5.60)">Agregar al carrito</button>
                    </div>
                </div>
            </div>

            <!-- Producto 7 -->
            <div class="product-item" data-category="food">
                <div class="card">
                    <img src="<%= request.getContextPath() %>/images/7.png" alt="Arroz Extra COSTEÑO">
                    <div class="card-body">
                        <h5 class="card-title">Arroz Extra COSTEÑO</h5>
                        <p class="card-text">Bolsa 5Kg</p>
                        <p class="card-text">P. regular S/ 25.00</p>
                        <button class="add-to-cart-btn" onclick="addToCart('Arroz Extra COSTEÑO', 25.00)">Agregar al carrito</button>
                    </div>
                </div>
            </div>

            <!-- Producto 8 -->
            <div class="product-item" data-category="food">
                <div class="card">
                    <img src="<%= request.getContextPath() %>/images/8.png" alt="Mayonesa ALACENA">
                    <div class="card-body">
                        <h5 class="card-title">Mayonesa ALACENA</h5>
                        <p class="card-text">Doypack 850g</p>
                        <p class="card-text">P. regular S/ 18.90</p>
                        <button class="add-to-cart-btn" onclick="addToCart('Mayonesa ALACENA', 18.90)">Agregar al carrito</button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="menuProductos.js"></script>
</body>
</html>
