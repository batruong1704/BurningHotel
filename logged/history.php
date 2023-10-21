<?php session_start();?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/history.css?v=<?php echo time(); ?>" type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- link css bootstrap -->
    <link rel="stylesheet" href="../common/bootstrap-5.2.2-dist/css/bootstrap.min.css">
    <!-- link slick -->
    <link rel="stylesheet" type="text/css" href="../common/slick/slick.css">
    <link rel="stylesheet" type="text/css" href="../common/slick/slick-theme.css">
    <link rel="stylesheet" href="../css/style.css">
    <title>Document</title>
</head>
<body>
    <?php
    include('header.php');
    include('../config.php');
    ?>
    <div class="main">
    <?php
   
               $sql = "SELECT *FROM phieudatphong AS pdp
                        INNER JOIN chitietdatphong AS ctdp ON pdp.MaPDP = ctdp.MaPDP
                        INNER JOIN phong AS p ON ctdp.MaPhong = p.MaPhong
                        LEFT JOIN phieudichvu AS pdv ON pdp.MaPDP = pdv.MaPDP
                        LEFT JOIN chitietdichvu AS ctdv ON pdv.MaPDV = ctdv.MaPDV
                        INNER JOIN quanlytaikhoan AS qltk ON qltk.ID = pdp.MaKhachHang
                        INNER JOIN hoadon AS hd ON hd.MaPDP = pdp.MaPDP
                        WHERE qltk.ID = '".$_SESSION['makhachhang']."'
                        GROUP BY pdp.MaPDP";
                        
               $result = mysqli_query($con, $sql);
               $lichsuphongs = array();
               if(mysqli_num_rows($result) > 0){
                  while($row = mysqli_fetch_array($result)){
                    
                    $lichsuphongs[]=array('MaPDP'=>$row["MaPDP"],'MaPDV'=>$row["MaPDV"],'KieuPhong'=>$row["KieuPhong"], 'TongTien'=>$row["TongTien"],
                                    'ThanhToanTruoc'=>$row["ThanhToanTruoc"],'TinhTrang'=>$row['TinhTrang'],
                                    'NgayDen'=>$row["NgayDen"],'NgayDi'=>$row["NgayDi"], 'PhuongThucThanhToan'=> $row['PhuongThucThanhToan'],
                                    'IMG'=>$row['IMG'], 'NgayTT'=>$row["NgayTT"]);
                  }
               }
               
              ?>
     
        <div class="mainroom">
        <?php foreach($lichsuphongs as $key => $value) { 
            $ngayden=date("d-m-Y", strtotime($value['NgayDen']));
            $ngaydi=date("d-m-Y", strtotime($value['NgayDi']));
            $ngayhientai=date("d-m-Y ", time());
            $ngaythanhtoan=date("d-m-Y", strtotime($value['NgayTT']));
            ?>
            <div class="ngaydat"> <?php echo  $ngaythanhtoan ?></div>
            <div class="mainroom_1">
                <div class="mainroom12">
                    <img src="<?php echo $value['IMG']?>" alt="" width="250px" height="200px">
                </div>

                <div class="mainroom11">
                    <p class="mainroom111"><?php echo $value['KieuPhong']?></p>
                    <p class="mainroom112">Tổng Số Tiền : <?php echo $value['TongTien']?> VNĐ</p>
                    <p class="mainroom112">Ngày Đến - Ngày Đi: <?php echo $ngayden .' / '.$ngaydi?></p>
                    <p class="mainroom112">Ngày đặt phòng: <?php echo $ngaythanhtoan ?></p>
                </div>
                <div class="mainroom13">
                    <div class="mainroom131">Trạng thái</div>
                    <div class="mainroom132" id="trangthai">
                        <?php
                            echo $value['TinhTrang'];
                        ?>
                    </div>
                    <div> <a style="text-decoration: none " href="thongtinphong.php?MaPDP=<?php echo $value['MaPDP']?>">Xem chi tiết</a></div>
                    <div> <a id="huyphong" style="text-decoration: none " href="HuyDatPhong.php?MaPDP=<?php echo $value['MaPDP']; ?>&MaPDV=<?php echo $value['MaPDV']; ?>" onclick="return confirm('Bạn có chắc chắn muốn hủy đặt phòng?')">Hủy Đặt Phòng</a> </div>
                </div>
            </div>
            <script>
                trangthai=document.getElementById('trangthai').innerHTML;
                ngayhientai = new Date('<?php echo $ngayhientai?>');
                ngayden = new Date('<?php echo $ngayden?>');
                
                if((trangthai == "Đã đặt cọc")|| (trangthai == "Đã thanh toán" && ngayhientai<ngayden)) {
                    document.getElementById('huyphong').style.display = "block";
                 }
                else{
                    document.getElementById('huyphong').style.display = "none";
                }
                </script>
            <?php
                }
                ?>
        </div>
                
      </div>
    
    <?php
        include('footer.php')
    ?>
     <!-- jquery -->
     <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
    <!-- bootstrap -->
    <script src="../common/bootstrap-5.2.2-dist/js/popper.min.js"></script>
    <script src="../common/bootstrap-5.2.2-dist/js/bootstrap.min.js"></script>
    <!-- slick -->
    <script src="../common/slick/slick.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="../js/scrip.js"></script>
</body>
</html>