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

// cart.js

function initApp() {
    fetch('get-cart.php?customer_id=' + customerId)
        .then(response => response.json())
        .then(data => {
            listCard.innerHTML = '';  // Xóa bỏ nội dung cũ

            data.forEach((value, key) => {
                let newLi = document.createElement('li');
                newLi.innerHTML = `
                    <div><img src="${value.img}"/></div>
                    <div>${value.tenmon}</div>
                    <div>${value.gia.toLocaleString()}</div>
                    <div>
                            <button onclick="changeQuantity(${value.id}, ${value.soluong - 1})">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                            stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M19.5 12h-15" />
                            </svg>
                    </button>
                        <div class="count">${value.soluong}</div>
                        <button onclick="changeQuantity(${value.id}, ${value.soluong + 1})">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                            stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
                            </svg>
                    </button>
                    </div>`;
                listCard.appendChild(newLi);
                let newDiv = document.createElement('div');
                newDiv.classList.add('item');
                newDiv.innerHTML = `
                    <img src="${value.img}">
                    <div class="title">${value.tenmon}</div>
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
    // Đảm bảo customerId đã được đặt giá trị
    if (!customerId) {
        console.error('Customer ID is not set.');
        return;
    }

    fetch('cart__add.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({
            customerId: customerId,
            productId: key + 1,
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
            listCard.innerHTML = ''; // Xóa nội dung cũ trong listCard
            let count = 0;
            let totalPrice = 0;

            data.forEach((value, key) => {
                totalPrice = totalPrice + value.gia;
                count = count + value.soluong;

                if (value != null) {
                    // Tạo một phần tử mới cho mỗi sản phẩm và thêm vào listCard
                    let newDiv = document.createElement('li');
                    newDiv.innerHTML = `
                        <div><img src="${value.img}"/></div>
                        <div>${value.tenmon}</div>
                        <div>${value.gia.toLocaleString()}</div>
                        <div>
                            <button onclick="changeQuantity(${key}, ${value.soluong - 1})">-</button>
                            <div class="count" id="count-${key}">${value.soluong}</div>
                            <button onclick="changeQuantity(${key}, ${value.soluong + 1})">+</button>
                        </div>`;
                    listCard.appendChild(newDiv);

                    // Cập nhật số lượng trực tiếp trong listCard
                    document.getElementById(`count-${key}`).innerText = value.soluong;
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
