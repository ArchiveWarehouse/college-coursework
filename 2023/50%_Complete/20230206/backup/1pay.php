
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        *{
            background: rgb(185,214,233);
            background: radial-gradient(circle, rgba(185,214,233,1) 100%, rgba(252,252,252,0) 100%);
            
        }
        .seiko{
            margin: 0 0 auto;
            color: red;
            width: 100%;
            padding-left: 47%;
            padding-top: 15%;
            font-size: 30px;
        }
        a{
            text-decoration: none;
        }
        .btn{
            display: block;
            width: 50px;
            height: 50px;
            background-color: rgba(239, 87, 87, 0.5);
            border-radius: 50%;
            text-align: center;
            line-height: 60px;
        }
        .escape{
            position: absolute;
            top: 40%;
            left: 49.7%;
        }
        #home{
            display: flex;
            float: left;
            padding-left: 46%;
        }
        .dots {
            width: 24px;
            height: 11.5px;
            background: radial-gradient(circle closest-side,#000000 90%,#0000) 0%   50%,
                    radial-gradient(circle closest-side,#000000 90%,#0000) 50%  50%,
                    radial-gradient(circle closest-side,#000000 90%,#0000) 100% 50%;
            background-size: calc(100%/3) 5.8px;
            background-repeat: no-repeat;
            animation: dots-7ar3yq 1s infinite linear;
            padding-top: 8px;
        }
        @keyframes dots-7ar3yq {
            20% {
                background-position: 0%   0%, 50%  50%,100%  50%;
            }

            40% {
                background-position: 0% 100%, 50%   0%,100%  50%;
            }

            60% {
                background-position: 0%  50%, 50% 100%,100%   0%;
            }

            80% {
                background-position: 0%  50%, 50%  50%,100% 100%;
            }
        }
    </style>
</head>
<body>
    


<?php
    require_once("../data/data_connect.php");

    session_start();
    
    $sql = "select * from products where product_id = '{$_SESSION['b']}'; ";
    $result = mysqli_query($con,$sql);
    $name ;
    $id;
    $p;
    
    while($row = mysqli_fetch_array($result)){
        $name = $row['product_name'];
        $id = $row['product_id'];
        $p = $row['price'];
    }
    $tp = $p * $_SESSION['am'];
    mb_language("Japanese");
    mb_internal_encoding("UTF-8");
    
    $from = '送信元メールアドレス';
    $to = "{$_SESSION['email']}";
    $subject = 'セキュリティコードの送信';
    $message = <<< EOF

    
    product_name = {$name}
    price per product = {$p}
    amont = {$_SESSION['am']}
    total = {$tp}
    address = {$_SESSION['add']}
    payment by = {$_SESSION['pay']}
    
    ご注文ありがとうございます。
    EOF;
    if (mb_send_mail($to, $subject, $message, "From: {$from}")) {

        //database にご注文情報を保存します

        //Order_list にお客さんのメールを保存
        $sql_1 = "insert into Order_list(email,save) values('{$to}',1);";
        mysqli_query($con,$sql_1);

        //detail_ordder に注文情報を保存
        $sql_2 = "select * from Order_list where email = '{$to}' and save = 1";
        $result_2 = mysqli_query($con,$sql_2);
        $count = mysqli_num_rows($result_2);
        if($count == 1){
            $id_2;
            while($row_2 = mysqli_fetch_assoc($result_2)){
                $id_2 = $row_2['order_id'];
            }
            $sql_3 = "insert into detail_order(product_id,order_id,amont,cost) values($id,$id_2,{$_SESSION['am']},$tp);";
            mysqli_query($con,$sql_3);
            $sql_4 = "update Order_list set save = 2 where email = '{$to}' and save = 1";
            mysqli_query($con,$sql_4);
        }
        mysqli_close($con);


        unset($_SESSION['b']);
        unset($_SESSION['am']);
        unset($_SESSION['add']);
        unset($_SESSION['pay']);
        
        // ページほしい
        echo '<div class="seiko">送信成功。</div>'; //実際のシステムでは、記述しない。
        //セキュリティコード入力のフォームを読み込む
        echo '
        <div id="home">
            <a href="../index_copy3.php">ホームページ戻ります</a><div class="dots"></div>
        </div>';
    }
    else {
        mysqli_close($con);
        unset($_SESSION['b']);
        unset($_SESSION['am']);
        unset($_SESSION['add']);
        unset($_SESSION['pay']);

            // ページほしい
            
                echo '<div class="seiko">送信失敗。</div>'; //実際のシステムでは、記述しない。
                echo '
            <div id="home">
                <a href="../index_copy3.php">ホームページ戻ります</a><div class="dots"></div>
            </div>';
            }

?>

<!-- <script>
        var timer = setTimeout(function() {
            window.location='../index_copy3.php'
        }, 6000);
    </script> -->
</body>
</html>