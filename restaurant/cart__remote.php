<?php
session_start();
include("../config.php");

// Nhận dữ liệu từ phía client
$data = json_decode(file_get_contents("php://input"));

// Lấy thông tin từ dữ liệu nhận được
$cartItemId = $data->cartItemId;

// Kiểm tra xem đã đăng nhập chưa
if (!isset($_SESSION['makhachhang'])) {
    echo json_encode(array('success' => false, 'message' => 'Bạn phải đăng nhập để xoá sản phẩm.'));
    exit();
}

// Xoá sản phẩm khỏi CSDL
$sqlRemoveItem = "DELETE FROM giohang WHERE id = $cartItemId AND makhachhang = $_SESSION[makhachhang]";

if (mysqli_query($con, $sqlRemoveItem)) {
    echo json_encode(array('success' => true, 'message' => 'Xoá sản phẩm thành công.'));
} else {
    echo json_encode(array('success' => false, 'message' => 'Có lỗi xảy ra khi xoá sản phẩm.'));
}
?>
