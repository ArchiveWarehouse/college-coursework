<?php
    //check_account and login
    require_once("./data_connect.php");
    session_start();
    //input
    $email = $_POST["email"];
    $password = $_POST["password"];

    //check customer complete input email and pass
    
    $sql = "SELECT email FROM customers WHERE email = '$email' and password = '$password' and login = 0;";
    $result = $con->query($sql);
    $count = $result->num_rows;
    if ($count == 1) {
        $_SESSION['email'] = $email; 
        $sql = "update customers set login = 2 where email = '$email' and password = '$password';";
        mysqli_query($con,$sql);
        // echo $_SESSION['email'];
        header("location:../index_copy3.php");
    }else{
        unset($_SESSION['email']);
        echo "そのアカウントが見つかりません。<br>";
        // header("location:./index.html");
        echo '<a href="../Login_v1/index.html">back to index.html</a>';
    }
    $con->close();




?>