<?php
session_start();
$a = $_POST['sub'];
// $b = $_POST['send_try'];

require_once('./data/data_connect.php');
$sql = "select * from products where product_id = $a";
$result = mysqli_query($con, $sql);
$name;
$id;
$describe;
$p;
$am;

while ($row = mysqli_fetch_array($result)) {
    $name = $row['product_name'];
    $id = $row['product_id'];
    $describe = $row['product_describe'];
    $p = $row['price'];
}
// echo '<a href="./sent/check.php">確認します</a>';
// echo '<a href="./index_copy3.php">back to homepage</a>'
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./csstst.css">
    <script src="https://kit.fontawesome.com/28d97b5ec6.js" crossorigin="anonymous"></script>
    <title><?php echo $name; ?></title>
</head>

<body>
    <!-- ページほしい -->
    <form action="./sent/check.php" method="POST">
        <!-- picture -->
        <div class="card-wrapper">
            <div class="card">
                <div class="product-imgs">
                    <div class="img-display">
                        <div class="slideshow-container">
                            <div class="img-showcase">
                                <?php $sql1 = "SELECT image_address from images where product_id = {$id};"; ?>
                                <?php $result1 = mysqli_query($con, $sql1); ?>
                                <?php while ($row1 = mysqli_fetch_array($result1)) { ?>
                                    <div class="mySlides fade">
                                        <?php $R = str_replace("..", "", $row1['image_address']); ?>
                                        <?php echo '<img src="./img' . $R . '"><br>'; ?>
                                    </div>
                                <?php } ?>
                                <div class="prev" onclick="plusSlides(-1)">&#10094</div>
                                <div class="next" onclick="plusSlides(1)">&#10095</div>
                            </div>
                            <?php $sql1 = "SELECT image_address from images where product_id = {$id};"; ?>
                            <?php $result1 = mysqli_query($con, $sql1); ?>
                            <?php $slide = 1 ?>
                            <div style="text-align:center">
                                <?php while ($row1 = mysqli_fetch_array($result1)) { ?>
                                    <span class="dot" onclick="currentSlide(<?php echo $slide ?>)"></span>
                                    <?php $slide++ ?>
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- picture -->
                <div class="product-content">
                    <div class="product-title"><?php echo $name; ?></div>
                    <div class="product-rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                        <span>4.7(21)</span>
                    </div>
                    <div class="price">￥<?php echo number_format($p); ?></div>
                    <div class="describe">
                        <h2>商品について: </h2>
                        <p> <?php echo $describe; ?></p>
                        <ul>
                            <li>カーラー: <span>Black</span></li>
                            <li><span></span></li>
                            <li>タイプ :<span>ワイヤレススピーカー</span></li>
                            <li><span></span></li>
                            <li><span>在庫有り</span></li>
                        </ul>
                    </div>
                    <div class="purchase-info">
                        <input type="number" name="num[]" min="0" value="1">
                        <button type="submit" name="cart" class="btn" value="<?php echo $id; ?>">
                            カート <i class="fas fa-shopping-cart"></i>
                        </button>
                        <!-- <button type="button" class="btn">比べる</button> -->
                        <button class="btn" type="submit" name="check[]" value="<?php echo $id; ?>">
                            Payment <i class="fas fa-bag-shopping"></i>
                        </button>
                    </div>


                </div>
            </div>
        </div>
    </form>
    <button onclick="history.go(-1)">GO BACK</button>
</body>
<script src="./slide.js"></script>

</html>