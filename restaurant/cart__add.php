<?php
require_once('../config.php');

if (isset($_POST['customerId']) && isset($_POST['productId'])) {
    $customerId = $_POST['customerId'];
    $productId = $_POST['productId'];

    // Thêm món vào giỏ hàng của khách hàng
    $sql = "INSERT INTO giohang (mamonan, soluong, gia, makhachhang) 
            SELECT TenMon, 1, ThanhTien, $customerId FROM doan WHERE ID = $productId";
    mysqli_query($con, $sql);

    // Truy vấn để lấy số lượng mới của sản phẩm sau khi thêm vào giỏ hàng
    $getQuantitySql = "SELECT soluong FROM giohang WHERE makhachhang = $customerId AND mamonan = $productId";
    $result = $con->query($getQuantitySql);
    $newQuantity = $result->fetch_assoc()['soluong'];

    // Trả về số lượng mới
    $response = ['success' => true, 'message' => 'Product added to cart.', 'newQuantity' => $newQuantity];
    echo json_encode($response);
} else {
    $response = ['success' => false, 'message' => 'Invalid request.'];
    echo json_encode($response);
}

// Đóng kết nối
mysqli_close($con);
?>
