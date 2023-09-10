<?php
    require_once("./data_connect.php");

    session_start();
    $email = $_SESSION['email'];
    $sql = "SELECT email from customers where email='{$email}'";

    $reault = mysqli_query($con,$sql);
    $count = mysqli_num_rows($reault);

    if ($count > 1) {
        echo "erro";
    }else{
        $sql = "";
    }


?>