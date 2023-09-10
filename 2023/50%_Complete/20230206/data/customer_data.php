<?php 
    session_start();
    //connect to database
    require_once('./data_connect.php');

    //input
    $name = $_POST['name'];
    $last = $_POST['last'];
    $email = $_SESSION['email'];
    $gender = $_POST['gender'];
    $address = $_POST['zipcode'].$_POST['address1'].$_POST['address2'].$_POST['address3'];
    $password = $_POST['password'];

    // echo "$name<br>";
    // echo "$last<br>";
    // echo "$email<br>";
    // echo "$gender<br>";
    // echo "$address<br>";
    // echo "$password";

    //checking
    if($name == ''&& $last == ''&& $email == ''&& $gender == ''&& $address == ''&& $password == ''){
        echo "全部ところに情報を入力してください。<br>";
        echo '<a href="../Login_v1/index.html">back to login</a>';
        //全部入力しないともう一回入力させる
    }else{
        $sql1 = "SELECT * FROM customers where email = '$email';"; //$name の値はstring
        //同じメールアドレスを利用しないように確認
        $result = mysqli_query($con,$sql1);
        $count = mysqli_num_rows($result);
        echo $count."<br>";
        // for ($i=0; $i < $count; $i++) { 
        //     $row = mysqli_fetch_assoc($result);
        //     echo "first_name= ".$row["first_name"]."<br>";
        //     echo "last_name = ".$row["last_name"]."<br>";
        //     echo "email = ".$row["email"]."<br>";
        //     echo "gender = ".$row["gender"]."<br>";
        //     echo "address = ".$row["address"]."<br>";

        // }
        
        if ($count >= 1) {
            echo "別のメールアドレスを入力してください。<br>";
            echo '<a href="../Login_v1/index.html">back to login</a>';
        }else{
            $sql = "INSERT INTO customers(first_name,last_name,email,gender,address,password,login) VALUE('$name','$last','$email','$gender','$address','$password',0)";
            $ans = $con->query($sql);
            
            if ($ans) {
                // echo "success<br>";
                // echo '<a href="../index.html">back to page</a>'; 
                header("location:../Login_v1/index.html");
            }else{
                echo "error<br>";
                echo '<a href="../Login_v1/index.html">back to login</a>';
            }
            
        }
    }
    $con->close();
    $mysql = new mysqli('localhost','root','','pro_1');
    
?>