
function chonngaydi() {
    ngayhientai = new Date();
    ngayden = new Date(document.getElementById("ngayden").value);
    ngaydi = new Date(document.getElementById("ngaydi").value);
    if (ngaydi < ngayhientai || ngayden>ngaydi) {
        document.getElementById("thongbaongaydi").innerHTML = "Ngày đi không hợp lệ";
    } 
    else {
        document.getElementById("thongbaongaydi").innerHTML = "";
    }
} 

function chonngayden() {
    ngayhientai = new Date();
    ngayden = new Date(document.getElementById("ngayden").value);
    ngaydi = new Date(document.getElementById("ngaydi").value);
    if (ngayden < ngayhientai || ngayden > ngaydi) {
        document.getElementById("thongbaongayden").innerHTML = "Ngày đến không hợp lệ";
    } 
    else {
        document.getElementById("thongbaongayden").innerHTML = ""; 
    }
} 