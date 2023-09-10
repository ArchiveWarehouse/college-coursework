<?php

session_start();
if($_SESSION['login'] == 2){
    header('location:./cart3_1.php');
}else{
    header('location:../cart-cantlog.html');
}

?>