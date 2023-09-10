<?php 
    // session_start();
    // require_once("../pro_1_update/data/data_connect.php");
    $email_c =  $_SESSION['email'];
    $id_c =  $_POST['cart'];

    $sql = "select * from cart where email = '{$email_c}' and product_id = $id_c;";
    $result = mysqli_query($con,$sql);
    $count = mysqli_num_rows($result);
    if($count >= 1){
        echo "already in cart<br>";
        echo '<a href="../index_copy3.php">back to homepage</a>';
    }else{
        // echo "can put in your cart<br>";
        $sql_1 = "insert into cart(email,product_id) values('{$email_c}',$id_c);";
        mysqli_query($con,$sql_1);
        mysqli_close($con);
        echo '<a href="../index_copy3.php">back to homepage</a>';
        // require_once('cart3_1.php');
    }
?>