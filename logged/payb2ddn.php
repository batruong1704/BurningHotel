<?php session_start();?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pay-B2</title>
    <link rel="stylesheet" href="../css/pay1.css?v=<?php echo time(); ?>" type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- link css bootstrap -->
    <link rel="stylesheet" href="../common/bootstrap-5.2.2-dist/css/bootstrap.min.css">
    <!-- link slick -->
    <link rel="stylesheet" type="text/css" href="../common/slick/slick.css">
    <link rel="stylesheet" type="text/css" href="../common/slick/slick-theme.css">
    <link rel="stylesheet" href="../css/style.css">
</head>

<body>
     <!-- header -->
     <?php
        include('header.php');
        include('../config.php');
    ?>
    
    <!-- Banner -->
    <form action="" method="POST">
    <section id="banner">
        <div class="container-fluid p-0 text-center">
            <div class="img">
                <img src="../img/pay/banner.jpg" alt="" class="img-fluid">
                <div class="box">
                    <div class="trangtri"></div>
                    <p class="m-0" style="font-size: 14px;font-family: Montserrat-Regular">Home - <span
                            style="color: #937438;">Room List</span></p>
                    <h3 style="font-size:36px;font-family: Montserrat-Bold;">Thanh Toán</h3>
                    <div class="trangtri"></div>
                </div>
            </div>
        </div>
    </section>
    <section id="step">
        <div class="a">
            <nav aria-label="...">
                <ul class="pagination d-flex justify-content-between mb-0">
                    <li class="page-item"><a class="page-link rounded-circle" href="#">1</a></li>
                    <li class="page-item" aria-current="page">
                        <span class="page-link rounded-circle">2</span>
                    </li>
                    <li class="page-item"><a class="page-link rounded-circle" href="#">3</a></li>
                </ul>
            </nav>
        </div>
        <div class="b">
            <nav aria-label="...">
                <ul class="pagination d-flex justify-content-between mb-0">
                    <li class="page-item" aria-current="page">
                        <span class="page-link  border-0">Thông tin khách hàng</span>
                    </li>
                    <li class="page-item"><a class="page-link  border-0" href="#">Chi tiết thanh toán</a></li>
                    <li class="page-item"><a class="page-link  border-0" href="#">Thành công</a></li>
                </ul>
            </nav>
        </div>
    </section>
    <!-- endBanner -->
    <?php
   
    $maphong=$_GET['MaPhong'];
    $sql = "SELECT * From phong where  MaPhong='$maphong'";
    $result = mysqli_query($con, $sql);
    if(mysqli_num_rows($result)>0){
        while($row=mysqli_fetch_assoc($result)){
            $KieuPhong=$row["KieuPhong"];
            $LoaiGiuong=$row["LoaiGiuong"];
            $SLMax=$row["SLMax"];
            $GiaPhong=$row["GiaPhong"];
            
        }
    }
  
     ?>
    <section id="Time" style="background-color: #352911; color: white;">
        <div class="container d-flex pt-3" style="align-items: center;">
            <img src="../img/thanhtoan1/icon-tt2.png" style="height: 45px;" alt="">
            <p class="mt-3 ms-1" style="font-family:Montserrat-Regular;">Thời gian hoàn tất thanh toán 
            <span id="phut" style="color: red;">1 </span>:
            <span id="giay" style="color: red;">00</span> 
            <span>phút</span>

                <script>
                    var phut = parseInt(document.getElementById('phut').innerHTML);
                    var giay = parseInt(document.getElementById('giay').innerHTML);
                    var timeout;

                    function CapNhatTrangThaiPhong() {
                        var maphong = <?php echo json_encode($maphong); ?>; // Truyền giá trị từ PHP vào JavaScript
                        var xmlhttp = new XMLHttpRequest();
                        xmlhttp.open("GET", "CapNhapTrangThaiPhong.php?maphong=" + maphong, true);
                        xmlhttp.send();
                    }

                    function updateCountdown() {
                        giay -= 1;
                        if (giay == -1) {
                            phut -= 1;
                            giay = 59;
                        }
                        if (phut == -1) {
                            clearTimeout(timeout);
                            CapNhatTrangThaiPhong();
                            alert('Thời gian thanh toán đã hết!');
                            window.location="home.php";
                        }
                        document.getElementById('phut').innerHTML  = phut;
                        document.getElementById('giay').innerHTML  = giay;
                        timeout = setTimeout(updateCountdown, 1000);
                    }

                    updateCountdown(); // Bắt đầu đếm ngược
                </script>
            </p>
        </div>
    </section>

    <section id="center" style="background-color: #181A1B; color: white;">
        <div class="container pt-4" style="align-items: center;">
            <h3 class="mb-3 " style="font-family: Montserrat-Bold;">Chi Tiết Thanh Toán</h3>
            <img src="../img/pay/roomstyle_deluxe1.png" alt="" class=" rounded-3">
            <h3 class="pt-2" style="font-family: Montserrat-Bold;"><?php echo $KieuPhong?></h3>

        </div>
        <div class=" container d-flex mb-2">
            <div class="img">
                <img src="../img/icon_3p.png" alt="" class="img-fluid">
            </div>
            
            <p class="ps-1 m-0">(<?php echo $SLMax?>) Guest's</p>
        </div>
        <div class=" container ps-3">
            <p class="mb-0 ms-4"> <i class="fa fa-circle"></i> Sức chứa tối đa <?php echo $SLMax?> người</p>
            <p class="mb-0 ms-4"> <i class="fa fa-circle"></i> Loại giường : <?php echo $LoaiGiuong?> </p>
            <p class="mb-0 ms-4"> <i class="fa fa-circle"></i> Cho phép ở thêm 1 người lớn và 1 trẻ nhỏ, trên 3 người bạn có
                thể sẽ chịu thêm phí</p>
        </div>
        <hr style="width: 80%; margin: 0 50px; border: 0; border-top: 5px solid;">
    </section>

    <section id="loaiphong" style="background-color:#181A1B; color: white;">

        <div class="container ">
            <h3 class="mb-3 pt-2" style="font-family: Montserrat-Bold;">Chi Tiết Giá</h3>
            <div class="row">
                <div class="col-6 d-flex">
                    <div>
                        <p class="m-0 ms-5" style="font-family:Montserrat-Regular;">1 phòng x
                        <?php
                            $songay1 = abs(strtotime($_SESSION['ngaydi']) - strtotime($_SESSION['ngayden']));
                            echo $songay=floor($songay1 / (60*60*24));
                        ?>
                        
                        ngày
                     </p>
                    </div>
                </div>
                <div class="col-6 ">
                    <div>
                        <p class="m-0" style=" padding-left: 200px; font-family:Montserrat-Regular;color:white">
                        <?php
                            echo $tienphong=$GiaPhong*$songay;
                        ?>
                        VNĐ
                     </p>
                    </div>
                </div>
            </div>

            <div class="row ">
                <div class="col-6 d-flex">
                    <div>
                        <p class="m-0 ms-5" style="font-family:Montserrat-Regular;">Tiền Dịch Vụ</p>
                    </div>
                </div>
                <div class="col-6 ">
                    <div>
                <?php
                if(ISSET($_POST['submit'])){
                    $sql = "UPDATE phong SET TrangThai='Phòng chờ' WHERE MaPhong='".$maphong."'";
                    mysqli_query($con,$sql);
                       
                    if (isset($_POST['dichvu'])) {
                        $dichvu = $_POST['dichvu'];
                        $explode = array();
                        $madichvu =array();
                        foreach ($dichvu as $value) {
                            $parts = explode('-', $value);
                            $explode[] = $parts[0];
                            $madichvu[]=$parts[1];
                        }
                      
                        $tiendichvu = array_sum($explode);
                        $_SESSION['tiendichvu']=$tiendichvu;
                        $_SESSION['madichvu']=$madichvu;
                    }
                    else{
                        $_SESSION['tiendichvu']=0;
                    }
                }
                ?>

                    <p class="m-0" style=" padding-left: 200px; font-family:Montserrat-Regular;color:white"><?php echo  $_SESSION['tiendichvu'] ?>VNĐ</p>
                  
                    </div>

             

                </div>
            </div>

            <div class="row mt-2" style="font-size:20px;">
                <div class="col-6 d-flex" >
                    <div>
                        <h5 class="ms-5" style="font-family:Montserrat-Regular;">Tổng thanh toán</h5>
                    </div>
                </div>
                <div class="col-6">
                    <div>
                        <h5 style="color:white; padding-left: 200px; font-family:Montserrat-Regular;">
                        <?php
                            echo $tongtien=$tienphong+ $_SESSION['tiendichvu'];
                        ?>
                        VNĐ
                    </h5>
                    </div>
                </div>
            </div>
            
            <div class="row mt-2">
                <div class="col-6 d-flex" >
                    <div>
                        <h5 class="ms-5" style="font-family:Montserrat-Regular; font-size:18px;">Ưu đãi giảm giá</h5>
                    </div>
                </div>
                <div class="col-6">
                    <div>
                        <h5 style="color:white; padding-left: 200px; font-family:Montserrat-Regular;">
                        <?php
                       if($tongtien>6000000 && $tongtien<15000000){
                            $uudai=($tongtien/100)*3;
                            echo $uudai;
                       }
                       else if($tongtien>15000000){
                        $uudai=($tongtien/100)*5;
                        echo $uudai;
                       }
                       else{
                         echo $uudai=0;

                       }
                       
                        ?>
                        VNĐ
                    </h5>
                    </div>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-6 d-flex">
                    <div>
                        <h5 class="ms-5" style="font-family:Montserrat-Regular;">Số tiền phải trả</h5>
                    </div>
                </div>
                <div class="col-6">
                    <div>
                        <h5 style="color:#EBB853; padding-left: 200px; font-family:Montserrat-Regular;">
                        <?php
                          echo $phaitra=$tongtien-$uudai;
                        ?>
                        VNĐ
                    </h5>
                    </div>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-6 d-flex">
                    <div>
                        <h5 class="ms-5" style="font-family:Montserrat-Regular;">Số tiền thanh toán trước (>=10%)</h5>
                    </div>
                </div>
                <div class="col-6">
                    <div style="width:60%;padding-left:200px">
                        <input type="text" name="thanhtoantruoc" style="display:flex;width:100%;background-color: #181A1B;color:brown;border:none;border-bottom: 1px solid #525354;font-family:Montserrat-Regular" placeholder="Nhập số tiền tại đây" required>
                    </div>
                </div>
            </div>

        </div>
        <hr style="width: 80%; margin: 0 50px; border: 0; border-top: 5px solid;">
    </section>

    <section id="pttt" style="background-color:#181A1B; color: white;">
        <div class="container">
            <div>
                <h3 class="mb-2 pt-2" style="font-family: Montserrat-Bold;">Phương Thức Thanh Toán</h3>
                <p class="m-0 ms-4" style="font-family:Montserrat-Regular; padding-right: 150px;">
                    Hưỡng dẫn thanh toán sẽ được gửi tới quý khách khi nhấn nút thanh toán phòng sẽ được gửi tới bạn,
                    vui
                    lòng thanh toán trước <span style="color: rgba(228, 17, 20, 0.77)"><?php echo date("d-m-Y", time())?></span>. Quá thời hạn trên chúng tôi có thể không gửi được phòng này
                    cho bạn nữa.
                </p>
                <h3 class=" pt-2" style="font-family: Montserrat-Bold;">Chọn ngân hàng</h3>
                <div class="nganhang d-flex pb-3">
                    <div class="row">
                        <div class="col-3  mt-3 ">
                            <div class="img">
                                <img src="../img/pay/bidv.jpg" alt="">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-3  mt-3 ">
                            <div class="img">
                                <img src="../img/pay/techcombank.jpg" alt="">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-3  mt-3 ">
                            <div class="img">
                                <img src="../img/pay/vietcombank.jpg" alt="">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-3  mt-3 ">
                            <div class="img">
                                <img src="../img/pay/vietinbank.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr style="width: 80%; margin: 0 50px; border: 0; border-top: 5px solid;">
    </section>
    <section id="chon" style="background-color:#181A1B; color: white;">
        <div class="row d-flex ps-5 pt-3 pb-3">
            <div class="col-6">
                <label for="qr" style="font-family:Montserrat-Regular;">Thanh toán bằng QR-Pay</label>
            </div>
            <div class="col-6 ">
                <input type="radio" id ="qr" name="thanhtoan" value="Thanh toán bằng QR-Pay">
            </div>
        </div>

        <hr style="width: 80%; margin: 0 50px; border: 0; border-top: 5px solid;">
        <div class="row d-flex ps-5 pt-3 pb-3">
            <div class="col-6">
                <label for="atm" style="font-family:Montserrat-Regular;">Thẻ ATM/Tài khoản ngân hàng</label>
            </div>
            <div class="col-6 ">
                <input type="radio" id="atm" name="thanhtoan" value="Thẻ ATM/Tài khoản ngân hàng" >

            </div>
        </div>
        <hr style="width: 80%; margin: 0 50px; border: 0; border-top: 5px solid;">
        <div class="row d-flex ps-5 pt-3 pb-3">
            <div class="col-6">
                <label for="visa" style="font-family:Montserrat-Regular;">Thẻ Visa, Master Card</label>
            </div>
            <div class="col-6 ">
                <input type="radio" id="visa" name="thanhtoan" value="Thẻ Visa, Master Card">
            </div>
        </div>
    </section>

    <section id="button">
        <div class="pb-3"><button type="submit" name="btn" style="font-family:Montserrat-Regular;">Thanh Toán</button></div>
    </section>
  </form>
  
            <?php
      
            if(ISSET($_POST['btn'])){
                $makhachhang=$_SESSION['makhachhang'];
                $ngayden=date("Y-m-d", strtotime($_SESSION['ngayden']));
                $ngaydi=date("Y-m-d", strtotime($_SESSION['ngaydi']));
                $ngaytt=date("Y-m-d ", time());
                $thanhtoantruoc = $_POST["thanhtoantruoc"];
                if ($thanhtoantruoc < $phaitra * 0.1) {
                    echo "<script>";
                    echo "alert('Số tiền thanh toán chưa đủ!!!')";
                    echo "</script>";
                }
                else if(empty($_POST['thanhtoan'])){
                    echo "<script>";
                    echo "alert('Vui lòng chọn phương thức thanh toán')";
                    echo "</script>";
                }
                else{
                    $pttt=$_POST['thanhtoan'];
                    $sql="INSERT INTO phieudatphong VALUES ('','".$makhachhang."','".$phaitra."','".$thanhtoantruoc."','".$pttt."','" .$ngaytt."')";
                    if(mysqli_query($con,$sql)){
                        $maphieudatphong=mysqli_insert_id($con);
                        echo "<script>";
                        echo "alert('Đặt phòng thành công!')";
                        echo "</script>";
                    
                    }
                   
                    $sql="INSERT INTO chitietdatphong VALUES ('','".$maphieudatphong."','".$maphong."','".$ngayden."','".$ngaydi."')";
                    mysqli_query($con,$sql);

                    $sql = "UPDATE phong SET TrangThai='Đầy' WHERE MaPhong='".$maphong."'";
                    if(mysqli_query($con,$sql)){
                        echo '<script>
                              alert("Chúc bạn có một kỳ nghỉ vui vẻ!"); 
                              </script>';
                    }

                    $sql="INSERT INTO phieudichvu VALUES ('','".$maphieudatphong."','".$_SESSION["tiendichvu"]."')";
                    if(mysqli_query($con,$sql)){
                        $maphieudichvu=mysqli_insert_id($con);
                    }

                    foreach( $_SESSION['madichvu'] as $mdv){
                         $sql1 = "INSERT INTO chitietdichvu VALUES ('','".$maphieudichvu."','".$mdv."')";
                         mysqli_query($con, $sql1);
                    }
                    
                    if($thanhtoantruoc==$phaitra){
                        $trangthai="Đã hoàn thành";
                    }
                    else {
                        $trangthai="Chờ thanh toán";
                    }
                    $sql="INSERT INTO hoadon VALUES ('','".$maphieudatphong."','".$phaitra."','".$trangthai."')";
                    mysqli_query($con,$sql);
                         ?>
                        <script>
                            var m= <?php echo json_encode($maphieudatphong);?>;
                            alert('Mã đặt phòng của bạn là: ' + m);
                            window.location="home.php";
                            </script>
                        <?php
                        
                    
                   
                }
        }
    
     

            ?>

     <!-- footer -->
     <?php
    include('footer.php');
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