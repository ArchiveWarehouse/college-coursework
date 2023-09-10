<?php
    require_once("../data/data_connect.php");

    session_start();
    
    $name = [] ;
    $id = [];
    $p = [];
    for($i = 0; $i < $_SESSION['count']; $i++){
        $sql = "select * from products where product_id = '{$_SESSION['b'][$i]}'; ";
        $result = mysqli_query($con,$sql);
        while($row = mysqli_fetch_array($result)){
            $name[$i] = $row['product_name'];
            $id[$i] = $row['product_id'];
            $p[$i] = $row['price'];
        }

    }
    // $tp = $p[0] * $_SESSION['am'][0];
    mb_language("Japanese");
    mb_internal_encoding("UTF-8");
    
    $from = '送信元メールアドレス';
    $to = "{$_SESSION['email']}";
    $subject = 'Thank You';
    $message_all = '';
    for($i = 0; $i < $_SESSION['count']; $i++){
        $message_all .= "product_name =".$name[$i]."\namount = ".$_SESSION['am'][$i]."\ntotal = ".$p[$i]*$_SESSION['am'][$i]."\n";
    }
    $message_all .= "address = ".$_SESSION['add']."\npayment by = ".$_SESSION['pay']."\nご注文ありがとうございます。\n";
    // $message = <<< EOF

    // product_name = {$name[0]}
    // price per product = {$p[0]}
    // amont = {$_SESSION['am'][0]}
    // total = {$tp}
    // address = {$_SESSION['add']}
    // payment by = {$_SESSION['pay']}
    
    // ご注文ありがとうございます。
    // EOF;
    // echo $message;
    
    if (mb_send_mail($to, $subject, $message_all, "From: {$from}")) {

        //database にご注文情報を保存します

        //Order_list にお客さんのメールを保存
        $sql_1 = "insert into order_list(email,save) values('{$to}',1);";
        mysqli_query($con,$sql_1);

        //detail_ordder に注文情報を保存
        $sql_2 = "select * from order_list where email = '{$to}' and save = 1";
        $result_2 = mysqli_query($con,$sql_2);
        $count = mysqli_num_rows($result_2);
        if($count == 1){
            $id_2;
            while($row_2 = mysqli_fetch_assoc($result_2)){
                $id_2 = $row_2['order_id'];
            }
            for($i = 0; $i < $_SESSION['count']; $i++){
                $tp = $p[$i]*$_SESSION['am'][$i];
                $sql_3 = "insert into detail_order(product_id,order_id,amont,cost) values($id[$i],$id_2,{$_SESSION['am'][$i]},$tp);";
                mysqli_query($con,$sql_3);

            }
            $sql_4 = "update Order_list set save = 2 where email = '{$to}' and save = 1";
            mysqli_query($con,$sql_4);
            for($j = 0; $j < $_SESSION['count']; $j++){
                $sql_5 = "delete from cart where email = '{$_SESSION['email']}' and product_id = {$_SESSION['b'][$j]};";
                mysqli_query($con,$sql_5);

            }
        }
        mysqli_close($con);

        unset($_SESSION['count']);
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
        unset($_SESSION['count']);
        unset($_SESSION['b']);
        unset($_SESSION['am']);
        unset($_SESSION['add']);
        unset($_SESSION['pay']);

        echo '<div class="seiko">送信失敗。</div>'; //実際のシステムでは、記述しない。
        echo '
    <div id="home">
        <a href="../index_copy3.php">ホームページ戻ります</a><div class="dots"></div>
    </div>';
            }
    

?>