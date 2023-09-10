<?php

    session_start();
    require_once('../data/data_connect.php');

    //ログインします
    if(isset($_SESSION['email'])){
        //cart 
        if(isset($_POST['cart'])){
            // header('Location:../../cart3/cart3.html');
            require_once("../cart3/cart3.php");
        }
        if (isset($_POST['check'])) {
            $_SESSION['count'] = 1;
            $_SESSION['b'] = []; //product_id を保存する
            $_SESSION['am'] = []; //amont を保存する
            if(count($_POST['check']) > 1){ //product_id 一個以上場合
                $a = 0;
                for($i = 0; $i < count($_POST['check']); $i++){
                    $_SESSION['b'][$i] = $_POST['check'][$i];
                    $_SESSION['am'][$i] = $_POST['num'][$i];
                    $a++;
                }
                $_SESSION['count'] = $a;
            }else{
                $_SESSION['b'][0] = $_POST['check'][0]; //product_id
                $_SESSION['am'][0] = $_POST['num'][0]; //amont

            }

            //name, price, id を保存する
            $name = [];
            $id =[];
            $p = [];
            
            for($i = 0; $i < $_SESSION['count']; $i++){
                $sql = "select * from products where product_id = {$_SESSION['b'][$i]};";
                $result = mysqli_query($con,$sql);
                while($row = mysqli_fetch_array($result)){
                    $name[$i] = $row['product_name'];
                    $id[$i] = $row['product_id'];
                    $p[$i]= $row['price'];
                }

            }
            // for($i = 0 ; $i < $_SESSION['count']; $i++){
            //     echo $id[$i].','.$name[$i].','.$p[$i].','.$_SESSION['am'][$i].'<br>';
            // }
            
            $_SESSION['add'] = 'input you address';
            $_SESSION['pay'] = 'please choose your payment';
    
            require_once('./check_page.php');
        }
        //input_add.htmlから　アドレス
        if (isset($_POST['sub'])) {
            $name = [];
            $id =[];
            $p = [];
            
            for($i = 0; $i < $_SESSION['count']; $i++){
                $sql = "select * from products where product_id = {$_SESSION['b'][$i]};";
                $result = mysqli_query($con,$sql);
                while($row = mysqli_fetch_array($result)){
                    $name[$i] = $row['product_name'];
                    $id[$i] = $row['product_id'];
                    $p[$i]= $row['price'];
                }

            }
            $_SESSION['pay'] = 'please choose your payment';
            $_SESSION['add'] = $_POST['zipcode'].$_POST['address1'].$_POST['address2'].$_POST['address3'].$_POST['mashion'];
            require_once('./check_page.php');
        }
        //pay_choice.htmlから　お支払方法
        if (isset($_POST['pay_type'])) {
            $name = [];
            $id =[];
            $p = [];
            
            for($i = 0; $i < $_SESSION['count']; $i++){
                $sql = "select * from products where product_id = {$_SESSION['b'][$i]};";
                $result = mysqli_query($con,$sql);
                while($row = mysqli_fetch_array($result)){
                    $name[$i] = $row['product_name'];
                    $id[$i] = $row['product_id'];
                    $p[$i]= $row['price'];
                }

            }
            $_SESSION['pay'] = $_POST['pay_type_1'];
            require_once('./check_page.php');
    
        }
    }else{
        //ログインされていません。
        //pageを作ってください。
        require_once('../cantlog.html')
    }
    //goods1.php から送信
    // $b = $_POST['check']; //goods1.php から
    // $sub = $_POST['sub']; // input_add.html から
    // $am = $_POST['num']; // goods1.php から
    
    // $b = $_POST['send_try'];


?>
