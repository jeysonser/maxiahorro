// Variables para almacenar los productos del carrito
let cart = [];

// Función para agregar productos al carrito
function addToCart(name, price) {
    const product = cart.find(item => item.name === name);
    if (product) {
        product.quantity++;
    } else {
        cart.push({ name, price, quantity: 1 });
    }
    updateCartTable();
}

// Función para actualizar la tabla del carrito en el HTML
function updateCartTable() {
    const cartTableBody = document.querySelector("#cartTable tbody");
    cartTableBody.innerHTML = ""; // Limpiar contenido previo

    let grandTotal = 0;
    cart.forEach((item, index) => {
        const total = item.price * item.quantity;
        grandTotal += total;

        // Crear fila de producto
        const row = document.createElement("tr");
        row.innerHTML = `
            <td>${item.name}</td>
            <td><input type="number" value="${item.quantity}" min="1" onchange="changeQuantity(${index}, this.value)" /></td>
            <td>S/ ${item.price.toFixed(2)}</td>
            <td>S/ ${total.toFixed(2)}</td>
            <td>
                <button onclick="removeFromCart(${index})">Eliminar</button>
            </td>
        `;
        cartTableBody.appendChild(row);
    });

    // Actualizar el total general
    document.getElementById("grandTotal").textContent = `S/ ${grandTotal.toFixed(2)}`;
}

// Función para cambiar la cantidad de un producto
function changeQuantity(index, newQuantity) {
    cart[index].quantity = parseInt(newQuantity, 10);
    updateCartTable();
}

// Función para eliminar un producto del carrito
function removeFromCart(index) {
    cart.splice(index, 1); // Eliminar el producto del array
    updateCartTable(); // Actualizar la tabla
}

// Agregar listeners a los botones de "Agregar al carrito" de la página de productos
document.querySelectorAll(".add-to-cart-btn").forEach(button => {
    button.addEventListener("click", () => {
        const productCard = button.closest(".product-item");
        const name = productCard.querySelector(".card-title").textContent;
        const price = parseFloat(productCard.querySelector(".card-text").textContent.replace("P. regular S/ ", ""));
        addToCart(name, price);
    });
});
