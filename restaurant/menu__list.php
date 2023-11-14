<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page</title>
    <link rel="stylesheet/less" type="text/css" href="../css/restaurant/menu/menulist.module.scss?v= <?php echo time(); ?>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- link css bootstrap -->
    <link rel="stylesheet" href="../common/bootstrap-5.2.2-dist/css/bootstrap.min.css">
    <!-- link slick -->
    <link rel="stylesheet" type="text/css" href="../common/slick/slick.css">
    <link rel="stylesheet" type="text/css" href="../common/slick/slick-theme.css">
    <link rel="stylesheet" href="../css/style.css">

    <link rel="icon" href="../public_html/favicon.ico" type="image/png">
    <script src="https://cdn.jsdelivr.net/npm/less@4.1.1"></script>
</head> 

<body>
    <!-- header -->
    <?php include('../logged/header.php'); ?> 
    <!-- banner -->
    <section id="banner">
        <div class="container-fluid p-0 text-center">
            <div class="img h-100">
                <img src="../img/service/banner_service_1.jpg" alt="" class="w-100">
                <div class="box">
                    <div class="tieude"></div>
                    <p class="m-0" style="font-size: 14px;font-family: Montserrat-Regular">Restaurant</p>
                    <h3 style="font-size:36px;font-family: Montserrat-Bold;">Menu List</h3>
                    <div class="tieude"></div>
                </div>
            </div>
        </div>
    </section>
    <!-- end banner -->


    <!-- TODO: content -->

    <section id="content">
        <div class="sub__content">
            <div class="image">
                <img src="../img/restaurant/montrangmieng/Bánh cupcake socola.jpg" alt="hinhanhdoan" />
            </div>
            <div class="detail">
                <h4>Bánh Kem Socola</h4>
                <p class="describe">Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio praesentium aliquid eveniet molestiae
                    nisi obcaecati qui aliquam eius, consectetur alias assumenda vitae modi, quis aut aperiam commodi
                    totam. Optio, sed!</p>
                <div class="sup__detail">
                    <p class="topic">Danh Mục: </p>
                    <p class="infor">Đồ ăn nhanh</p>
                </div>
                <div class="sup__detail">
                    <p class="topic">Lương Kalo: </p>
                    <p class="infor">45 kl</p>
                </div>
                <div class="sup__detail">
                    <p class="topic">Giá: </p>
                    <p class="infor">45.000 VND</p>
                </div>
                <div class="sup__detail">
                    <p class="topic"></p>
                    <p class="infor"></p>
                </div>
            </div>
        </div>


    </section>



    <!-- content -->

    <!-- footer -->
    <?php include('../logged/footer.php'); ?>
        
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