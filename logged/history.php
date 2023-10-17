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
               $ngayhientai=date("Y-m-d ", time());
              
               $sql = "SELECT * From chitietdatphong,phong,phieudatphong,quanlytaikhoan where phong.MaPhong=chitietdatphong.MaPhong
                                     AND quanlytaikhoan.ID=phieudatphong.MaKhachHang AND phieudatphong.MaPDP=chitietdatphong.MaPDP AND quanlytaikhoan.ID='".$_SESSION['makhachhang']."'" ;
               $result = mysqli_query($con, $sql);
               $lichsuphongs = array();
               if(mysqli_num_rows($result) > 0){
                  while($row = mysqli_fetch_array($result)){
                      $lichsuphongs[]=array('KieuPhong'=>$row["KieuPhong"], 'TongTien'=>$row["TongTien"],'ThanhToanTruoc'=>$row["ThanhToanTruoc"],
                      'NgayDen'=>$row["NgayDen"],'NgayDi'=>$row["NgayDi"], 'PhuongThucThanhToan'=> $row['PhuongThucThanhToan'],
                      'IMG'=>$row['IMG'], 'NgayTT'=>$row["NgayTT"]);
                      echo"</br>";
                  }
               }
               
              ?>
        
        <div class="mainroom">
        <?php foreach($lichsuphongs as $key => $value) { ?>
            <div class="ngaydat"> <?php echo  date("d-m-Y", strtotime($value['NgayTT']));?></div>
            <div class="mainroom_1">
                <div class="mainroom12">
                    <img src="<?php echo $value['IMG']?>" alt="" width="250px" height="200px">
                </div>

                <div class="mainroom11">
                    <p class="mainroom111"><?php echo $value['KieuPhong']?></p>
                    <p class="mainroom112">Tổng Số Tiền : <?php echo $value['TongTien']?> VNĐ</p>
                    <p class="mainroom112">Ngày Đến - Ngày Đi: <?php echo $value['NgayDen']. '/' .$value['NgayDi']?></p>
                    <p class="mainroom112">Đã thanh toán: <?php echo $value['ThanhToanTruoc'] ?> VNĐ</p>
                    <p class="mainroom112">Phương thức thanh toán:  <?php echo $value['PhuongThucThanhToan']?></p>
                </div>
                <div class="mainroom13">
                    <div class="mainroom131">Trạng thái</div>
                    <div class="mainroom132">
                        <?php
                            if($ngayhientai<$value['NgayDen']){
                                echo 'Đã đặt cọc';
                            }
                            else if($ngayhientai>=$value['NgayDen'] & $ngayhientai<=$value['NgayDi']){
                                echo 'Chờ thanh toán';
                            }
                            else{
                                echo 'Đã thanh toán ';
                            }
                        ?>
                    </div>
                </div>
            </div>
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