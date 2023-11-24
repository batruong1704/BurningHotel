
function chonngaydi() {
    var ngayhientai = new Date();
    var ngayden = new Date(document.getElementById("ngayden").value);
    var ngaydi = new Date(document.getElementById("ngaydi").value);

    if (ngaydi < ngayhientai) {
        document.getElementById("thongbaongaydi").innerHTML = "Ngày đi không hợp lệ";
    } else {
        document.getElementById("thongbaongaydi").innerHTML = "";
        document.getElementById("thongbaongayden").innerHTML = "";
        localStorage.setItem("ngayden", ngayden.toISOString().split('T')[0]);
        localStorage.setItem("ngaydi", ngaydi.toISOString().split('T')[0]);
    }
}

function chonngayden() {
    var ngayhientai = new Date();
    var ngayden = new Date(document.getElementById("ngayden").value);
    var ngaydi = new Date(document.getElementById("ngaydi").value);

    if (ngayden < ngayhientai || ngayden > ngaydi) {
        document.getElementById("thongbaongayden").innerHTML = "Ngày đến không hợp lệ";
    } else {
        document.getElementById("thongbaongayden").innerHTML = "";
        document.getElementById("thongbaongaydi").innerHTML = "";
        localStorage.setItem("ngayden", ngayden.toISOString().split('T')[0]);
        localStorage.setItem("ngaydi", ngaydi.toISOString().split('T')[0]);
    }
}