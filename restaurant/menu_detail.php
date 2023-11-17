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

    <!-- detail -->
    <section id="food-detail">
        <div class="container py-5">
            <div class="row">
                <div class="col-6 pe-0">
                    <div class="d-flex justify-content-center">
                        <img src="../img/restaurant/menu/menu-detail.png" alt="" class="" style="width:80%; height:80%">
                    </div>
                </div>
                <div class="col-5 detail-content p-3 ps-0">
                    <h3>Chicken Burger</h3>
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
                    <h6>$14.00</h6>
                    <hr style="border-style:dashed">
                    <p>Interactively procrastinate high-payoff content without backward compatible data uickly cultivate optimal processes and tactical via accurate e-markets.</p>
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
                        <h6>#no: <span>0010</span></h6>
                        <h6>CATEGORY: <span>Food</span></h6>
                        <h6>TAGS: <span>Recipes, Sweet, Tasty</span></h6>
                        <h6>SHARE: <span class="icon fab fa-instagram"></span><span class="icon fab fa-facebook"></span><span class="icon fab fa-twitter"></span><span class="icon fab fa-pinterest"></span> </h6>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end detail -->

    <!-- footer -->
    <?php include('../logged/footer.php'); ?>
    <!-- end footer -->
    <script src="../js/tanggiamsoluong.js"></script>
</body>

</html>