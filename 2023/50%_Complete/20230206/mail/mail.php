
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>mail.php</title>
</head>
<body>
    <?php
        session_start();
        mb_language("Japanese");
        mb_internal_encoding("UTF-8");
        // $name = $_POST['name'];
        $name = "Ozone";
        $to_email = $_POST['email'];
        $random = rand(10000,99999);
        $message = "{$random}";
        $_SESSION['RANDOM'] = $message;
        $_SESSION['email'] = $to_email;
        $headers = "From: sender email"; //会社のアドレス
        // echo $name;
        // echo $to_email;
        // echo $message;

        if (mail($to_email,$name, $message,"From: bank.otaku0725@gmail.com")){
            header('location:../check_code.html');
        } else{
            echo "メールの送信に失敗しました。";
            echo '<a href:"./mail.php">もう一度、コードを送ります。</a><br>';
            echo '<a href:"../email_input.html">emailを変更します。</a><br>';
        }
        
    ?>
</body>
</html>