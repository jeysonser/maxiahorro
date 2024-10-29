let cart = [];
const cartTotalElement = document.createElement('div');
cartTotalElement.id = 'cart-total';
cartTotalElement.style.position = 'fixed';
cartTotalElement.style.top = '10px';
cartTotalElement.style.right = '10px';
cartTotalElement.style.backgroundColor = 'white';
cartTotalElement.style.padding = '10px';
cartTotalElement.style.border = '1px solid black';
document.body.appendChild(cartTotalElement);

const updateCartTotal = () => {
    const total = cart.reduce((acc, item) => acc + item.price * item.quantity, 0);
    cartTotalElement.innerText = `Total: S/ ${total.toFixed(2)}`;
};

const addToCart = (name, price) => {
    const existingProduct = cart.find(item => item.name === name);
    if (existingProduct) {
        existingProduct.quantity += 1;
    } else {
        cart.push({ name, price: parseFloat(price), quantity: 1 });
    }
    updateCartTotal();
};

const filterProducts = (category) => {
    const products = document.querySelectorAll('.product-item');
    products.forEach(product => {
        if (category === 'food') {
            const isFoodProduct = product.getAttribute('data-category') === 'food' && 
                (product.querySelector('.card-title').innerText === "Papas INKA CHIPS con Sal de Mar" || 
                product.querySelector('.card-title').innerText === "Galletas FIELD ChokoSoda" ||
                product.querySelector('.card-title').innerText === "Wafer NESTLÉ Sublime" ||
                product.querySelector('.card-title').innerText === "Azúcar Blanca BELL'S");
            product.style.display = isFoodProduct ? 'block' : 'none';
        } else {
            product.style.display = 'block'; // Mostrar todos si se restablecen filtros
        }
    });
};

const searchProducts = (searchTerm) => {
    const products = document.querySelectorAll('.product-item');
    let foundProduct = false; // Bandera para verificar si hay productos encontrados
    products.forEach(product => {
        const productName = product.querySelector('.card-title').innerText.toLowerCase();
        const matchesSearch = productName.includes(searchTerm.toLowerCase());
        product.style.display = matchesSearch ? 'block' : 'none';
        if (matchesSearch) foundProduct = true; // Cambiar la bandera si se encuentra un producto
    });
    // Mostrar botón "Volver al Menú Principal" si se encontró al menos un producto
    document.getElementById('backToMenu').style.display = foundProduct ? 'inline-block' : 'none';
};

// Evento para mostrar todos los productos
document.getElementById('backToMenu').addEventListener('click', () => {
    const products = document.querySelectorAll('.product-item');
    products.forEach(product => {
        product.style.display = 'block'; // Mostrar todos los productos
    });
    document.getElementById('backToMenu').style.display = 'none'; // Ocultar el botón "Volver al Menú Principal"
});

document.querySelectorAll('.add-to-cart-btn').forEach(button => {
    button.addEventListener('click', (e) => {
        const productItem = e.target.closest('.product-item');
        const name = productItem.querySelector('.card-title').innerText;
        const price = productItem.querySelector('.card-text').innerText.match(/S\/ (\d+.\d+)/)[1];
        addToCart(name, price);
    });
});

document.getElementById('filterSelect').addEventListener('change', (e) => {
    const value = e.target.value;
    if (value === 'food') {
        filterProducts('food');
    } else {
        filterProducts('');
    }
});

document.getElementById('searchButton').addEventListener('click', () => {
    const searchTerm = document.getElementById('searchInput').value;
    searchProducts(searchTerm);
});
