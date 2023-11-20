<?php
require_once('../config.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['customerId']) && isset($_POST['productId']) && isset($_POST['quantity'])) {
        $customerId = $_POST['customerId'];
        $productId = $_POST['productId'];
        $quantity = $_POST['quantity'];

        $checkSql = "SELECT * FROM giohang WHERE makhachhang = $customerId AND mamonan = $productId";
        $checkResult = $con->query($checkSql);

        if ($checkResult->num_rows > 0) {
            $row = $checkResult->fetch_assoc();
            $cartItemId = $row['id'];
            $newQuantity = $row['soluong'] + $quantity;

            $updateSql = "UPDATE giohang SET soluong = $newQuantity WHERE id = $cartItemId AND makhachhang = $customerId";
            mysqli_query($con, $updateSql);
        } else {
            $insertSql = "INSERT INTO giohang (mamonan, soluong, gia, makhachhang) 
               SELECT ID, $quantity, ThanhTien, $customerId FROM doan WHERE ID = $productId";
            mysqli_query($con, $insertSql);
        }

        $getQuantitySql = "SELECT soluong FROM giohang WHERE makhachhang = $customerId AND mamonan = $productId";
        $result = $con->query($getQuantitySql);
        $newQuantity = $result->fetch_assoc()['soluong'];

        $response = ['success' => true, 'message' => 'Product added to cart.', 'newQuantity' => $newQuantity];
        echo json_encode($response);
    } else {
        $response = ['success' => false, 'message' => 'Invalid request.'];
        echo json_encode($response);
    }
} else {
    $response = ['success' => false, 'message' => 'Invalid request.'];
    echo json_encode($response);
}

mysqli_close($con);
?>
