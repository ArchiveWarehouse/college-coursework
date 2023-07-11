<?php
//データベースに繋げる
require('./data/data_connect.php');
$sql = "select product_type_id from products where product_name = '{$_POST['tutorial_name']}'";
$result = mysqli_query($con, $sql);
$id = 0;
if ($result->num_rows == 1) {
    $row = mysqli_fetch_assoc($result);
    $id = $row['product_type_id'];
    // echo $id.'<br>';
}

$sql_1 = "select * from products where product_type_id = $id;";
$result_1 = mysqli_query($con, $sql_1);
$count = mysqli_num_rows($result_1);
// echo $count;

$j = 0;

?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ozon Shopping Site</title>
    <link rel="stylesheet" href="./css/style3.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+JP:wght@200;600&display=swap" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.1/css/fontawesome.min.css"> -->

    <!-- slick -->
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css">
</head>

<body>
    <!-- --------------------------------------------------------- -->

    <div class="small-container">
        <h2 class="title">Product</h2>
        <!--商品種類からを選択したリスト-->

        <div>
            <form class="row-pro" action="./goods1.php" method="post">
                <?php while ($row_1 = mysqli_fetch_array($result_1)) {  ?>
                    <div class="col-4">

                        <!-- 写真を一つだけ選択する(1)-->
                        <?php $sql_2 = "select image_address from images where product_id = {$row_1['product_id']}"; ?>
                        <?php $result_2 = mysqli_query($con, $sql_2); ?>

                        <?php while ($row = mysqli_fetch_array($result_2)) { ?>
                            <?php if ($j < 1) { ?>
                                <?php $R = str_replace("..", "", $row['image_address']); ?>
                                <?php echo '<img src="./img' . $R . '"><br>'; ?></a>
                            <?php $j++;
                            } else {
                                $j = 0;
                                break;
                            } ?>
                        <?php } ?>
                        <!--(1)-->
                        <h4><?php echo $row_1['product_name']; ?></h4> <!--product_name-->

                        <div class="rating">
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star'></i>
                            <i class='bx bxs-star-half'></i>
                        </div>
                        <!-- price -->
                        <p>￥<?php echo number_format($row_1['price']); ?></p><br>
                        <button type="sub" name="sub" value="<?php echo $row_1['product_id']?>">詳しく</button>
                    </div>
                <?php } ?>
            </form>
        </div>
    </div>
    <!-- footer -->
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col-1">
                    <h3>Please Rate our website</h3>
                    <p>Rating does means a lot to us</p>


                </div>
                <div class="footer-col-2">
                    <img src="./img/OSONE_LOGO__1_-removebg-preview.png">
                    <p>Our Purpose is to make sure that Ozone online shop is fast, secure, and reliable.</p>
                </div>
                <div class="footer-col-3">
                    <h3>useful links</h3>
                    <ul>
                        <li>Coupons</li>
                        <li>Blog Post</li>
                        <li>Return Policy</li>
                        <li>Join Affiliate</li>
                    </ul>
                </div>
                <div class="footer-col-4" id="contact">
                    <h3>Follow Us</h3>
                    <ul>
                        <li><a href="https://www.facebook.com">Facebook</a></li>
                        <li><a href="https://twitter.com/?lang=en">Twitter</a></li>
                        <li><a href="https://www.instagram.com">Instagram</a></li>
                        <li><a href="https://www.youtube.com">Youtube</a></li>

                    </ul>
                </div>
            </div>
            <hr>
            <p class="copyright">Copyright 2022</p>
        </div>
    </div>
    <script src="./js/main3_1.js"></script>
</body>

</html>