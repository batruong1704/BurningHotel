let openShopping = document.querySelector('.shopping');
let closeShopping = document.querySelector('.closeShopping');
let list = document.querySelector('.list');
let listCard = document.querySelector('.listCard');
let body = document.querySelector('body');
let total = document.querySelector('.total');
let quantity = document.querySelector('.quantity');

let customerId = localStorage.getItem("makhachhang");

openShopping.addEventListener('click', () => {
    body.classList.add('active');
});

closeShopping.addEventListener('click', () => {
    body.classList.remove('active');
});

function initApp() {
    fetch('get-cart.php?customer_id=' + customerId)
        .then(response => response.json())
        .then(data => {
            data.forEach((value, key) => {
                let newDiv = document.createElement('div');
                newDiv.classList.add('item');
                newDiv.innerHTML = `
                    <img src="image/${value.img}">
                    <div class="title">${value.mamonan}</div>
                    <div class="price">${value.gia.toLocaleString()}</div>
                    <button onclick="addToCard(${key})">Add To Card</button>`;
                list.appendChild(newDiv);
            });
        })
        .catch(error => {
            console.error('Error:', error);
        });
}

initApp();

let listCards = [];

function addToCard(key) {
    // Thực hiện thêm món ăn vào giỏ hàng và lưu vào cơ sở dữ liệu
    fetch('add_to_cart.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({
            customerId: customerId,
            productId: key + 1, // Sửa lại nếu mã món ăn không phải là key + 1
        }),
    })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                reloadCard();
            } else {
                console.error('Error:', data.message);
            }
        })
        .catch(error => {
            console.error('Error:', error);
        });
}

function reloadCard() {
    fetch(`get-cart.php?customer_id=${customerId}`)
        .then(response => response.json())
        .then(data => {
            listCard.innerHTML = '';
            let count = 0;
            let totalPrice = 0;

            data.forEach((value, key) => {
                totalPrice = totalPrice + value.gia;
                count = count + value.soluong;

                if (value != null) {
                    let newDiv = document.createElement('li');
                    newDiv.innerHTML = `
                        <div><img src="image/${value.img}"/></div>
                        <div>${value.mamonan}</div>
                        <div>${value.gia.toLocaleString()}</div>
                        <div>
                            <button onclick="changeQuantity(${key}, ${value.soluong - 1})">-</button>
                            <div class="count">${value.soluong}</div>
                            <button onclick="changeQuantity(${key}, ${value.soluong + 1})">+</button>
                        </div>`;
                    listCard.appendChild(newDiv);
                }
            });

            total.innerText = totalPrice.toLocaleString();
            quantity.innerText = count;
        })
        .catch(error => {
            console.error('Error:', error);
        });
}

function changeQuantity(key, quantity) {
    fetch('update_quantity.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({
            cartItemId: key + 1, // Sửa lại nếu mã giỏ hàng không phải là key + 1
            newQuantity: quantity,
        }),
    })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                reloadCard();
            } else {
                console.error('Error:', data.message);
            }
        })
        .catch(error => {
            console.error('Error:', error);
        });
}
