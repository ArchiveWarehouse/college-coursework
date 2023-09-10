<?php
    session_start();
    $a = $_POST['sub'];
    // $b = $_POST['send_try'];

    require_once('./data/data_connect.php');
    $sql = "select * from products where product_id = $a";
    $result = mysqli_query($con,$sql);
    $name ;
    $id ;
    $describe ;
    $p;
    $am;
    
    while($row = mysqli_fetch_array($result)){
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
        <title><?php echo $name; ?></title>
    </head>
    <body>
        <!-- ページほしい -->
        <form action="./sent/check.php" method="POST">
            product_id : <?php echo $id; ?><br>
            product_name : <?php echo $name ;?><br>
            describe : <?php echo $describe; ?><br>
            price : <?php echo $p; ?>
            amount : <input type="number" name="num" placeholder="Unit price" min="0" value="1" contenteditable><br>

            <!-- picture -->
            <?php $sql1 = "SELECT image_address from images where product_id = {$id};"; ?>
            <?php $result1 = mysqli_query($con,$sql1); ?>
            <?php $count = mysqli_num_rows($result); ?>
            <?php for ($i=0; $i < $count; $i++) {  ?>
                <?php while ($row1 = mysqli_fetch_array($result1)) {?>
                    <?php $R = str_replace("..","",$row1['image_address']); ?>
        
                    <?php echo '<img src="./img'.$R.'"><br>';?>
                <?php } ?>
            <?php } ?>
            <!-- picture -->
            <button type="submit" name="check[]" value="<?php echo $id; ?>">payment</button><br>
            <button type="submit" name="cart" value="<?php echo $id; ?>">cart</button><br>
            <a href="./index_copy3.php">back to homepage</a>
        </form>
</body>
</html>