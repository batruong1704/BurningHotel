<?php
session_start();
include("../config.php");

// Nhận dữ liệu từ phía client
$data = json_decode(file_get_contents("php://input"));

// Lấy thông tin từ dữ liệu nhận được
$cartItemId = $data->cartItemId;
$newQuantity = $data->newQuantity;

// Kiểm tra xem đã đăng nhập chưa
if (!isset($_SESSION['makhachhang'])) {
    echo json_encode(array('success' => false, 'message' => 'Bạn phải đăng nhập để cập nhật giỏ hàng.'));
    exit();
}

// Cập nhật số lượng trong CSDL
$sqlUpdateQuantity = "UPDATE giohang SET soluong = $newQuantity WHERE id = $cartItemId AND makhachhang = $_SESSION[makhachhang]";

if (mysqli_query($con, $sqlUpdateQuantity)) {
    echo json_encode(array('success' => true, 'message' => 'Cập nhật số lượng thành công.'));
} else {
    echo json_encode(array('success' => false, 'message' => 'Có lỗi xảy ra khi cập nhật số lượng.'));
}
?>
