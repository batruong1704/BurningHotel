<?php
    $con = mysqli_connect("localhost", "root", "", "burninghotel");
    if (!$con) {
        echo 'Kết nối không thành công';
    }
    $maphong = $_GET['maphong'];
    $sql = "UPDATE phong SET TrangThai='Trống' WHERE MaPhong='" . $maphong . "'";
    if (mysqli_query($con, $sql)) {
        echo 'Cập nhật thành công';
    } else {
        echo 'Cập nhật không thành công' ;
    }
