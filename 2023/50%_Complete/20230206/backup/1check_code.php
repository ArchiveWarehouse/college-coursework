<?php
    session_start();

    if (isset($_SESSION['RANDOM'])) {
        $ran = $_SESSION['RANDOM'];
        $get_code = $_POST['code'];
        if ($get_code == $ran) {
            unset($_SESSION['RANDOM']);
            header('location:../Login_v1/login.html');
        }else{
            echo "fails";
            echo '<a href="../email_input.html">再送信</a>';
        }
    }else{
        header('location:../email_input.html');
    }

?>
