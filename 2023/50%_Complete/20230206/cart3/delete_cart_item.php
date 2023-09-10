<?php
    require("../data/data_connect.php");

    $id = $_GET['idp'];
    $sql = "delete from cart where product_id = '{$id}';";
    $result = mysqli_query($con,$sql);

    if($result){
        header("location:./cart3_1.php");
    }else{
        header("location:../index_copy3.php");
    }

?>