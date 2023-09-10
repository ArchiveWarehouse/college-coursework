<?php
    session_start();

    if (isset($_SESSION['RANDOM'])) {
        $ran = $_SESSION['RANDOM'];
        $get_code = [];
        $get_code[0] = $_POST['code1'];
        $get_code[1] = $_POST['code2'];
        $get_code[2] = $_POST['code3'];
        $get_code[3] = $_POST['code4'];
        $get_code[4] = $_POST['code5'];
        $get_all = '';
        for($i = 0; $i < 5; $i++ ){
            $get_all .= $get_code[$i];
        }
        if ($get_all == $ran) {
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
