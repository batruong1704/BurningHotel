<?php
session_start();
include("../config.php");

// Xác định thông tin sản phẩm từ request
$productId = $_POST['productId'];
$quantity = $_POST['quantity'];

// Kiểm tra xem khách hàng đã đăng nhập chưa
if (!isset($_SESSION['makhachhang'])) {
    // Nếu chưa đăng nhập, trả về thông báo lỗi
    echo json_encode(array('success' => false, 'message' => 'Bạn phải đăng nhập để thêm món vào giỏ hàng.'));
    exit();
}

// Kiểm tra xem món đã tồn tại trong giỏ hàng chưa
$sqlCheckExistence = "SELECT * FROM giohang WHERE makhachhang = $_SESSION[makhachhang] AND mamonan = $productId";
$resultCheckExistence = mysqli_query($con, $sqlCheckExistence);

if (mysqli_num_rows($resultCheckExistence) > 0) {
    // Nếu món đã tồn tại, cập nhật số lượng
    $row = mysqli_fetch_assoc($resultCheckExistence);
    $newQuantity = $row['soluong'] + $quantity;
    $sqlUpdateQuantity = "UPDATE giohang SET soluong = $newQuantity WHERE makhachhang = $_SESSION[makhachhang] AND mamonan = $productId";
    mysqli_query($con, $sqlUpdateQuantity);
} else {
    // Nếu món chưa tồn tại, thêm món mới
    $sqlAddToCart = "INSERT INTO giohang (mamonan, soluong, gia, makhachhang) 
    SELECT ID, $quantity, ThanhTien, $_SESSION[makhachhang] FROM doan WHERE ID = $productId";
    mysqli_query($con, $sqlAddToCart);
}

// Đếm số lượng các món khác nhau đã đặt theo mã khách hàng
$countResult = mysqli_query($con, "SELECT COUNT(*) as soluongmon FROM giohang WHERE makhachhang = $_SESSION[makhachhang]");
$countRow = mysqli_fetch_assoc($countResult);
$so_luong_mon = $countRow['soluongmon'];

// Trả về phản hồi với số lượng món mới
echo json_encode(array('success' => true, 'so_luong_mon' => $so_luong_mon));
?>
