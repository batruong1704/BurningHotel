<?php
session_start();
include("../config.php");
$ID = $_GET['ID'];
$sql = "SELECT * From doan where  ID='$ID'";
$result = mysqli_query($con, $sql);
if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        $ID = $row["ID"];
        $TenMon = $row["TenMon"];
        $PhanLoai = $row["PhanLoai"];
        $ThoiGianNau = $row["ThoiGianNau"];
        $DoKho = $row["DoKho"];
        $ThanhPhan = $row["ThanhPhan"];
        $HamLuongcalo = $row["HamLuongcalo"];
        $ThanhTien = $row["ThanhTien"];
        $MoTa = $row["MoTa"];
        $SoLuongDaBan = $row["SoLuongDaBan"];
        $img = $row['img'];
    }
}
$result = mysqli_query($con, "SELECT COUNT(*) as total FROM giohang WHERE makhachhang = $_SESSION[makhachhang]");
$row = mysqli_fetch_assoc($result);
$so_luong_mon = $row['total'];
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết món</title>
    <link rel="stylesheet" href="../css/restaurant/menu/menu_detail.css?v= <?php echo time(); ?>">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="icon" href="../public_html/favicon.ico" type="image/png">
    <script src="https://kit.fontawesome.com/f6b816f05e.js" crossorigin="anonymous"></script>
    <!-- CSS only -->
    <link rel="stylesheet" href="../common/bootstrap-5.2.2-dist/css/bootstrap.min.css">
</head>

<body>
    <!-- header -->
    <?php include('../logged/header.php'); ?>
    <!-- end header -->
    <!-- banner -->
    <section id="banner">
        <div class="container-fluid p-0 text-center">
            <div class="img h-100">
                <img src="../img/restaurant/menu/banner.png" alt="" class="w-100">
                <div class="box">
                    <h3 style="font-size:20px;font-family: Montserrat-Bold;border-top: 2px solid #937438;border-bottom: 2px solid #937438;width:150px">
                        Chi Tiết Món</h3>
                </div>
            </div>
        </div>
    </section>
    <!-- end banner -->

    <!-- food detail -->
    <section id="food-detail">
        <hcon>
            <div class="shopping">
                <img src="../img/restaurant/icon/shopping-car.svg" alt="cart">
                <span class="quantity">
                    <?php echo $so_luong_mon ?>
                </span>
            </div>
        </hcon>
        <div class="container py-5">
            <div class="row">

                <div class="col-6 ">
                    <div class="">
                        <img src="<?php echo $img ?>" alt="" class="" style="height:80%; width:90%">
                    </div>
                </div>
                <div class="col-5 detail-content p-3 ps-0">
                    <h3><?php echo $TenMon ?></h3>
                    <div class="vote">
                        <span>
                            <i class="fa fa-star"></i>
                        </span>
                        <span>
                            <i class="fa fa-star"></i>
                        </span>
                        <span>
                            <i class="fa fa-star"></i>
                        </span>
                        <span>
                            <i class="fa fa-star"></i>
                        </span>
                        <span>
                            <i class="fa fa-star"></i>
                        </span>
                        <span style="color:silver">(0 custom review)</span>
                    </div>
                    <h6><?php echo $ThanhTien ?> VNĐ</h6>
                    <hr style="border-style:dashed">
                    <p><?php echo $MoTa ?></p>
                    <div class="adjbutton d-flex">
                        <div id="buy-amount">
                            <button class="plus-btn" onclick="minusHandleClick()">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M19.5 12h-15" />
                                </svg>
                            </button>
                            <input type="text" name="soluong" id="soluong" value="1">
                            <button class="minus-btn" onclick="plusHandleClick()">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
                                </svg>
                            </button>
                        </div>
                        <button class="btnaddcart">Add to cart</button>
                    </div>
                    <div class="food-information">
                        <h6>#no: <span><?php echo $ID ?></span></h6>
                        <h6>CATEGORY: <span><?php echo $PhanLoai ?></span></h6>
                        <h6>TAGS: <span>Recipes, Sweet, Tasty</span></h6>
                        <h6>SHARE: <span class="icon fab fa-instagram"></span><span class="icon fab fa-facebook"></span><span class="icon fab fa-twitter"></span><span class="icon fab fa-pinterest"></span> </h6>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!-- end food detail -->

    <!-- cart -->
    <div class="supercard">
        <h1>Card</h1>
        <ul class="listCard ps-0">
        </ul>
        <div class="checkOut">
            <div class="total"><?php echo $so_luong_mon ?></div>
            <div class="closeShopping">Close</div>
        </div>
    </div>
    <!-- end cart -->

    <!-- ingredients -->
    <section id="ingredients">
        <div class="container py-5">
            <h3>Chi tiết thành phần</h3>
            <div class="row border-top border-2">
                <div class="col-8 border-end border-2">

                </div>
                <div class="col-4 p-5">
                    <div class="card border-0" style="width: 18rem;">
                        <img src="../img/restaurant/menu/menu-detail.png" class="card-img-top  rounded-0" alt="...">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-8 p-0  d-flex align-items-center">
                                    <i class="icon far fa-clock"></i>
                                    <h6>Cooking time:</h6>
                                </div>
                                <div class="col-4 p-0 d-flex justify-content-end">
                                    <p class="mb-0"><?php echo $ThoiGianNau ?> phút</p>
                                </div>
                            </div>
                            <div class="row py-3">
                                <div class="col-8 p-0  d-flex align-items-center">
                                    <i class="icon far fa-clock"></i>
                                    <h6>Difficulty:</h6>
                                </div>
                                <div class="col-4 p-0 d-flex justify-content-end">
                                    <p class="mb-0"><?php echo $DoKho ?></p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-8 p-0  d-flex align-items-center">
                                    <i class="icon far fa-clock"></i>
                                    <h6>Servings:</h6>
                                </div>
                                <div class="col-4 p-0 d-flex justify-content-end">
                                    <p class="mb-0"><?php echo $HamLuongcalo ?> calories</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end ingredients -->

    <!-- similar dish -->
    <?php
    $mang_chuoi = explode(' ', $TenMon);
    $conditions = [];

    foreach ($mang_chuoi as $tu) {
        $conditions[] = "TenMon LIKE '%" . mysqli_real_escape_string($con, $tu) . "%'";
    }

    $sql = "SELECT * FROM doan WHERE (" . implode(' OR ', $conditions) . ") AND PhanLoai = '" . $PhanLoai . "'";


    $result = mysqli_query($con, $sql);
    $IDs = array();
    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_array($result)) {
            $IDs[] = array(
                'TenMon' => $row['TenMon'], "PhanLoai" => $row['PhanLoai'], "ThoiGianNau" => $row['ThoiGianNau'], "DoKho" => $row['DoKho'], "ThanhPhan" => $row['ThanhPhan'], "HamLuongcalo" => $row['HamLuongcalo'], "ThanhTien" => $row['ThanhTien'], "MoTa" => $row['MoTa'], "SoLuongDaBan" => $row['SoLuongDaBan'], "img" => $row['img'],
                'ID' => $row['ID']
            );
        }
    }
    ?>
    <section id="similar-dish">
        <div class="container py-5">
            <div class="title">
                <h3>Món tương tự</h3>
                <button>Order now</button>
            </div>
            <div class="row">
                <?php foreach ($IDs as $key => $value) { ?>

                    <div class="col-4  pt-3">

                        <div class="card" style="width: 18  rem;">
                            <img src="<?php echo $value['img'] ?>" class="card-img-top w-100" alt="..." style="height: 236px;">
                            <div class="card-body">
                                <h6><?php echo $value['TenMon'] ?></h6>
                                <hr style="border-style:dashed">
                                <div class="information">
                                    <h6><?php echo $value['ThanhTien'] ?></h6>
                                    <div class="vote">
                                        <span>
                                            <i class="fa fa-star"></i>
                                        </span>
                                        <span>
                                            <i class="fa fa-star"></i>
                                        </span>
                                        <span>
                                            <i class="fa fa-star"></i>
                                        </span>
                                        <span>
                                            <i class="fa fa-star"></i>
                                        </span>
                                        <span>
                                            <i class="fa fa-star"></i>
                                        </span>
                                    </div>
                                    <p><?php echo $value["PhanLoai"] ?></p>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>

    </section>
    <!-- end similar dish -->

    <!-- footer -->
    <?php include('../logged/footer.php'); ?>
    <!-- end footer -->
    <script src="../common/bootstrap-5.2.2-dist/js/popper.min.js"></script>
    <script src="../common/bootstrap-5.2.2-dist/js/bootstrap.min.js"></script>
    <script src="../js/tanggiamsoluong.js"></script>
    <script src="cart.js"></script>

</body>

</html>