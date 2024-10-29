<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carrito de Compras</title>
    <link rel="stylesheet" href="menuproductos.css">
</head>
<body>
    <!-- Header -->
    <header>
        <h1>Carrito de Compras</h1>
    </header>

    <!-- Cart Table -->
    <section class="cart-section">
        <table id="cartTable" class="cart-table">
            <thead>
                <tr>
                    <th>Producto</th>
                    <th>Cantidad</th>
                    <th>Precio</th>
                    <th>Total</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <!-- Filas de productos agregados dinámicamente -->
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="3" class="text-right">Total General:</td>
                    <td id="grandTotal">S/ 0.00</td>
                    <td></td>
                </tr>
            </tfoot>
        </table>
    </section>

    <!-- Botón para regresar al menú de productos -->
    <div class="back-to-menu">
        <button onclick="window.location.href='productos.jsp'">Seleccionar Más Productos</button>
    </div>

    <script src="cart.js"></script>
</body>
</html>
