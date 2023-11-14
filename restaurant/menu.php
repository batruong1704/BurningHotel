<?php include('../config.php'); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/restaurant/menu/menu.css?v= <?php echo time(); ?>">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="icon" href="../public_html/favicon.ico" type="image/png">
    <script src="https://kit.fontawesome.com/a0ff9460a2.js" crossorigin="anonymous"></script>
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
                    <h3
                        style="font-size:20px;font-family: Montserrat-Bold;border-top: 2px solid #937438;border-bottom: 2px solid #937438;width:63px">
                        MENU</h3>
                </div>
            </div>
        </div>
    </section>
    <!-- end banner -->

    <!-- drink -->
    <section id="drink">
        <div class="container  py-5">
            <div class="row">
                <div class="col-4">
                    <img src="../img/restaurant/menu/anh1.png" alt="" class="img-fluid">
                </div>
                <div class="col-8">
                    <h3>Drink</h3>
                    <?php
                    $sql = "SELECT TenMon, ThanhPhan, ThanhTien FROM doan WHERE PhanLoai = 'Món chính' LIMIT 4";
                    $result = $con->query($sql);

                    // Bắt đầu vòng lặp để hiển thị dữ liệu
                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                            echo '<div class="row">';
                            echo '<div class="col-2 d-flex justify-content-center">';
                            echo '<img src="../img/restaurant/main/monan1.png" alt="" class="rounded-circle" style="width:70px; height:70px">';
                            echo '</div>';
                            echo '<div class="col-8">';
                            echo '<h4>' . $row["TenMon"] . '</h4>';
                            echo '<p>' . $row["ThanhPhan"] . '</p>';
                            echo '</div>';
                            echo '<div class="col-2 d-flex align-items-end">';
                            echo '<b style="margin-bottom: 1rem;">' . $row["ThanhTien"] . '</b>';
                            echo '</div>';
                        }
                    } else {
                        echo "0 kết quả";
                    }
                    ?>
                </div>
                <button class="butn" onclick="redirectToMenuList('Món chính')">See Main Dishes</button>
            </div>
        </div>
        </div>
    </section>
    <!-- end drink -->

    <div class="container-fluid p-0">
        <img src="../img/restaurant/menu/anh2.png" alt="" class="w-100" style="height: 200px;">
    </div>

    <!-- maindishes -->
    <section id="maindishes">
        <div class="container py-5">
            <div class="row">
                <div class="col-8">
                    <h3>Main Dishes</h3>
                    <?php
                    $sql_main_dishes = "SELECT TenMon, ThanhPhan, ThanhTien FROM doan WHERE PhanLoai = 'Món chính' LIMIT 4";
                    $result_main_dishes = $con->query($sql_main_dishes);

                    // Bắt đầu vòng lặp để hiển thị dữ liệu
                    if ($result_main_dishes->num_rows > 0) {
                        while ($result = $result_main_dishes->fetch_assoc()) {
                            echo '<div class="row">';
                            echo '<div class="col-2 d-flex justify-content-center">';
                            echo '<img src="../img/restaurant/main/monan2.png" alt="" class="rounded-circle" style="width:70px; height:70px">';
                            echo '</div>';
                            echo '<div class="col-8">';
                            echo '<h4>' . $result["TenMon"] . '</h4>';
                            echo '<p>' . $result["ThanhPhan"] . '</p>';
                            echo '</div>';
                            echo '<div class="col-2 d-flex align-items-end">';
                            echo '<b style="margin-bottom: 1rem;">' . $result["ThanhTien"] . '</b>';
                            echo '</div>';
                            echo '</div>';
                        }
                    } else {
                        echo "0 kết quả";
                    }
                    ?>
                    <button class="butn" onclick="redirectToMenuList('Món chính')">See Main Dishes</button>
                </div>
                <div class="col-4">
                    <img src="../img/restaurant/menu/anh3.png" alt="" class="img-fluid">
                </div>
            </div>
        </div>
    </section>

    <!-- end maindishes -->

    <div class="container-fluid p-0">
        <img src="../img/restaurant/menu/anh4.png" alt="" class="w-100" style="height: 200px;">
    </div>

    <!-- dessert -->
    <section id="dessert">
        <div class="container py-5">
            <div class="row">
                <div class="col-4">
                    <img src="../img/restaurant/menu/anh5.png" alt="" class="img-fluid">
                </div>
                <div class="col-8">
                    <h3>Dessert</h3>
                    <?php
                    $sql_dessert = "SELECT TenMon, ThanhPhan, ThanhTien FROM doan WHERE PhanLoai = 'Món chính' LIMIT 4";
                    $result_dessert = $con->query($sql_dessert);

                    // Bắt đầu vòng lặp để hiển thị dữ liệu
                    if ($result_dessert->num_rows > 0) {
                        while ($row_dessert = $result_dessert->fetch_assoc()) {
                            echo '<div class="row">';
                            echo '<div class="col-2 d-flex justify-content-center">';
                            echo '<img src="../img/restaurant/main/monan3.png" alt="" class="rounded-circle" style="width:70px; height:70px">';
                            echo '</div>';
                            echo '<div class="col-8">';
                            echo '<h4>' . $row_dessert["TenMon"] . '</h4>';
                            echo '<p>' . $row_dessert["ThanhPhan"] . '</p>';
                            echo '</div>';
                            echo '<div class="col-2 d-flex align-items-end">';
                            echo '<b style="margin-bottom: 1rem;">' . $row_dessert["ThanhTien"] . '</b>';
                            echo '</div>';
                            echo '</div>';
                        }
                    } else {
                        echo "0 kết quả";
                    }
                    ?>
                    <button class="butn" onclick="redirectToMenuList('Món chính')">See Main Dishes</button>
                </div>
            </div>
        </div>
    </section>

    <script>
        function redirectToMenuList(category) {
            window.location.href = 'menu__list.php?category=' + encodeURIComponent(category);
        }
    </script>
    <!-- end dessert -->
    <!-- book table -->
    <?php include('booktable.php') ?>
    <!-- footer -->
    <?php include('../logged/footer.php'); ?>
</body>

</html>