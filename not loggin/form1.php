<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/form1.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="icon" href="../public_html/favicon.ico" type="image/png">
    <script src="https://kit.fontawesome.com/a0ff9460a2.js" crossorigin="anonymous"></script>
    <!-- CSS only -->
    <link rel="stylesheet" href="../common/bootstrap-5.2.2-dist/css/bootstrap.min.css">
</head>
<body>
    <!-- header -->
    <?php
    include('header.php');
    ?>
    <!-- banner -->
    <section id="banner">
        <div class="container-fluid p-0 text-center">
            <div class="img h-100">
                <img src="https://doanhanquoc.com/wp-content/uploads/2021/09/banner-ly.jpg" alt="" class="w-100">
                <div class="box">
                    <p style="border-top: 2px solid #937438;border-bottom: 2px solid #937438;text-align:left; width:100px">RESERVATION</p>
                    <b style="font-size: 45px;text-align:left;">This evening will be great!</b>
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Perferendis</p>
                    <div>
                        <Button class="btbook">Book a Table</Button>
                        <Button class="btget">Get in touch</Button>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end banner -->

    <!-- service -->
    <section id="service">
      <div class="container pb-5">
        <div class="row bg-right">
          <div class="col-6 p-4">
            <p style="border-top: 2px solid #937438;border-bottom: 2px solid #937438;text-align:left; width:67px">FEATURE</p>
            <h3 style="width:200px">Always fresh ingredients</h3>
            <p style="width:400px">the people, food and the prime locations make Rodich the perfect place good frinds & family to come together and have great time </p>
            <button class="p-2">View Menu</button>
          </div>
          <div class="col-6 p-0">
            <div class="img1 d-flex justify-content-end">
              <img src="https://www.hoteljob.vn/files/Anh-HTJ-Hong/dung-cu-trang-tri-mon-an-cho-dau-bep-au-1.jpg" alt="" style="width: 600px;">
            </div>
          </div>
        </div>
        <div class="row bg-left">
          <div class="col-6 p-0">
            <div class="img1 d-flex justify-content-start">
              <img src="https://www.hoteljob.vn/files/Ni%20-%20%E1%BA%A2nh%20HTJ/2018/Th%C3%A1ng%208/Trang-tri-mon-an-02.jpg" alt="" style="width: 600px;">
            </div>
          </div>
          <div class="col-6 p-4">
            <p style="border-top: 2px solid #937438;border-bottom: 2px solid #937438;text-align:left; width:67px">FEATURE</p>
            <h3>We invite you to visit our restaurant</h3>
            <p style="width:400px">Every time you perfectly dine with us, it should happy for great inspired food in an environment designed with individual touches unique to the local area. </p>
            <button class="p-2">View Menu</button>
          </div>
        </div>
      </div>
    </section>
    <!-- end service -->

    <!-- footer -->
    <?php
    include('footer.php');
    ?>

        <script src="../common/bootstrap-5.2.2-dist/js/popper.min.js"></script>
        <script src="../common/bootstrap-5.2.2-dist/js/bootstrap.min.js"></script>
</body>
</html>