<?php include('../config.php'); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page</title>
    <link rel="stylesheet/less" type="text/css"
        href="../css/restaurant/menu/menulist.module.scss?v= <?php echo time(); ?>">
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
    <?php include('../logged/header.php'); ?>

    <section id="content">
        <?php
        if (isset($_GET['category'])) {
            $category = $_GET['category'];

            // Đếm tổng số dòng trong bảng
            $count_sql = "SELECT COUNT(*) as count FROM doan WHERE PhanLoai = '$category'";
            $count_result = $con->query($count_sql);
            $total_rows = $count_result->fetch_assoc()['count'];

            $items_per_page = 5; // Số mục hiển thị mỗi lần
        
            // Kiểm tra nếu có dữ liệu
            if ($total_rows > 0) {
                $current_page = isset($_GET['page']) ? $_GET['page'] : 1;
                $start = ($current_page - 1) * $items_per_page;

                // Thực hiện truy vấn với LIMIT để chỉ lấy một phần dữ liệu
                $sql = "SELECT TenMon, MoTa, PhanLoai, HamLuongcalo, ThanhTien, img FROM doan WHERE PhanLoai = '$category' LIMIT $start, $items_per_page";
                $result = $con->query($sql);

                // Hiển thị dữ liệu
                while ($row = $result->fetch_assoc()) {
                    echo '<div class="sub__content">';
                    echo '<div class="image">';
                    echo '<img src="../img/restaurant/menu/' . $row["img"] . '" alt="hinhanhdoan" />';
                    echo '</div>';
                    echo '<div class="detail">';
                    echo '<h4>' . $row["TenMon"] . '</h4>';
                    echo '<p class="describe">' . $row["MoTa"] . '</p>';
                    echo '<div class="sup__detail">';
                    echo '<p class="topic">Danh Mục: </p>';
                    echo '<p class="infor">' . $row["PhanLoai"] . '</p>';
                    echo '</div>';
                    echo '<div class="sup__detail">';
                    echo '<p class="topic">Hàm Lượng: </p>';
                    echo '<p class="infor">' . $row["HamLuongcalo"] . ' Kalo</p>';
                    echo '</div>';
                    echo '<div class="sup__detail">';
                    echo '<p class="topic">Giá: </p>';
                    echo '<p class="infor">' . $row["ThanhTien"] . ' VND</p>';
                    echo '</div>';
                    echo '<div class="sup__detail">';
                    echo '<p class="topic"></p>';
                    echo '<p class="infor"></p>';
                    echo '</div>';
                    echo '</div>';
                    echo '</div>';
                }

                // Hiển thị nút "Quay lại" nếu không phải trang đầu tiên
                if ($current_page > 1) {
                    $prev_page = $current_page - 1;
                    echo '<a href="?category=' . $category . '&page=' . $prev_page . '"><</a>';
                }

                // Hiển thị các nút số trang
                $total_pages = ceil($total_rows / $items_per_page);
                for ($i = 1; $i <= $total_pages; $i++) {
                    echo '<a href="?category=' . $category . '&page=' . $i . '">' . $i . '</a>';
                }

                // Hiển thị nút "Xem thêm" nếu còn dữ liệu
                if ($result->num_rows == $items_per_page) {
                    $next_page = $current_page + 1;
                    echo '<a href="?category=' . $category . '&page=' . $next_page . '">></a>';
                } else {
                    // Ẩn nút "Xem thêm" nếu ở trang cuối
                    if (isset($next_page)) {
                        echo '<style> a[href="?category=' . $category . '&page=' . $next_page . '"] { display: none; } </style>';
                    }
                }
            } else {
                echo "0 kết quả";
            }
        }
        ?>

    </section>


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