<?php
 session_start();
 require_once('../config.php');
 if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST["btn"])) {
        $maphieudatphong = $_POST['maphieudatphong'];

        $sql = "SELECT * FROM phieudatphong pdp,chitietdatphong ctdp, hoadon hd
                WHERE pdp.MaPDP=ctdp.MaPDP AND pdp.MaPDP=hd.MaPDP AND pdp.MaPDP = $maphieudatphong AND MaKhachHang = " . $_SESSION['makhachhang'];
        $result = mysqli_query($con, $sql);

        $sql1 ="SELECT * FROM datban WHERE ID=$maphieudatphong AND MaKhachHang = " . $_SESSION['makhachhang'];
        $result1 = mysqli_query($con, $sql1);
      
        if (mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            $ngayden = $row['NgayDen'];
            $ngaydi=$row['NgayDi'];
            $ngayhientai = date("Y-m-d");
            if ($ngayden<=$ngayhientai && $ngayhientai<=$ngaydi) {
                $response['message'] = 'Đúng mã đặt phòng!';
                $response['mahoadon'] = $row['MaHoaDon'];
            }
            else{
                $response['message'] = 'Quá thời gian';
            }
            } 
        
        else if(mysqli_num_rows($result1) > 0){
            $row = mysqli_fetch_assoc($result1);
            $response['message'] = 'Đúng mã đặt bàn!';
            $response['ngayden'] = $row['NgayDen'];
            $response['thoigian'] =$row['ThoiGian'];
            $response['iddatban'] =$maphieudatphong;
        }    
        else {
            $response['message'] = 'Nhập sai mã. Vui lòng kiểm tra lại!';
        }
        echo json_encode($response);
    }
    
?>
