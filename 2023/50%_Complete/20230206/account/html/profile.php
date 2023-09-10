<!-- https://www.youtube.com/watch?v=P_A2kNpyQBs -->
<?php
    require_once("../../data/data_connect.php"); //connect database
    session_start();
    $email = $_SESSION['email']; //receive email

    $sql = "SELECT * from customers where email='{$email}'"; 
    $result = mysqli_query($con,$sql);

    

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+JP:wght@200;600&display=swap" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="../css/fixedstyle.css">

    <!-- icon -->
    <!-- https://ionic.io/ionicons -->
</head>

<body>
    <!-- navbar -->
    <div class="header">
        <div class="container">
            <div class="navbar">
                <div class="logo">
                    <img src="../img/OSONE_LOGO__1_-removebg-preview.png" width="125px">
                </div>
                <nav>
                    <ul>
                        <li><a href="../../index_copy3.php" target="_self">Home</a></li>
                        <li><a href="#contact" target="_self">Product</a></li>
                        <li><a href="#contact" target="_self">About</a></li>
                        <li><a href="#contact" target="_self">Contact</a></li>
                        <li><a href="../../Login_v1/change_page.php" target="_self">Account</a></li>
                    </ul>
                    <a href="../../cart3/cart3_1.php"><i class='bx bx-cart'></i></a>
                    <!-- <a href="cart.html"><i class='bx bx-cart'></i></a> -->
                </nav>
            </div> 
            <!-- <div class="row">
                <div class="col-2">
                    <h1>車速、 安全、 安心!</h1>
                    <a href="" class="btn">Explore now &#8594;</a>
                </div>
                <div class="col-2">
                    <img src="img/Family.png" alt="">

                </div>
            </div> -->

        </div>
    </div>
    <!-- sidebar -->
    <div class="navigation" style="margin-top: 90px;">
        <ul>
            <!-- <li class="list">
                <b></b>
                <b></b>
                <a href="fixed.html">
                    <span class="icon">
                        <ion-icon name="home-outline"></ion-icon>
                    </span>
                    <span class="title">Home</span>
                </a>
            </li> -->
            <li class="list active">
                <b></b>
                <b></b>
                <a href="profile.php">
                    <span class="icon"><ion-icon name="person-outline"></ion-icon></span>
                    <span class="title">プロフィール</span>
                </a>
            </li>
            <li class="list">
                <b></b>
                <b></b>
                <a href="order-history.php">
                    <span class="icon"><ion-icon name="clipboard-outline"></ion-icon></span>
                    <span class="title">注文歴史</span>
                </a>
            </li>
            <li class="list">
                <b></b>
                <b></b>
                <a href="setting.html">
                    <span class="icon"><ion-icon name="settings-outline"></ion-icon></span>
                    <span class="title">設定</span>
                </a>
            </li>
            <li class="list">
                <b></b>
                <b></b>
                <a href="#">
                    <span class="icon"><ion-icon name="help-outline"></ion-icon></span>
                    <span class="title">Help</span>
                </a>
            </li>
            <li class="list">
                <b></b>
                <b></b>
                <a href="password.html">
                    <span class="icon"><ion-icon name="lock-closed-outline"></ion-icon></span>
                    <span class="title">パスワード</span>
                </a>
            </li>   
            <li class="list" id="signout">
                <b></b>
                <b></b>
                <a href="sign_out.html">
                    <span class="icon"><ion-icon name="log-out-outline"></ion-icon></span>
                    <span class="title">サインアウト</span>
                </a>
            </li>
        </ul>
    </div>
    <!-- content -->
    <div class="content">
        <div class="rowside">
            <div class="context">
            </div>
            <div class="pp">
                <a href=""></a>
                <img src="../img/profile-removebg-preview.png" alt="">
                <li>
                    <!--追加処理 -->
                    <?php $row = mysqli_fetch_assoc($result);?>
                    <ul>名前 :<?php echo $row['first_name'];?></ul>
                    <ul>住所 :<?php echo $row['address'] ; ?></ul>
                    <ul>メール :<?php echo $row['email']; ?></ul>
                </li>
            </div>
        </div>
    </div>
    </div>

    <!-- footer -->
    <div class="footer" style="margin-top: 700px;
    ">
        <div class="container">
            <div class="row">
                <div class="footer-col-1">
                    <h3>Please Rate our website</h3>
                    <p>Rating does means a lot to us</p>


                </div>
                <div class="footer-col-2">
                    <img src="../img/OSONE_LOGO__1_-removebg-preview.png">
                    <p>Our Purpose is to make sure that Ozone online shop is fast, secure, and reliable.</p>
                </div>
                <div class="footer-col-3">
                    <h3>useful links</h3>
                    <ul>
                        <li>Coupons</li>
                        <li>Blog Post</li>
                        <li>Return Policy</li>
                        <li>Join Affiliate</li>
                    </ul>
                </div>
                <div class="footer-col-4" id="contact">
                    <h3>Follow Us</h3>
                    <ul>
                        <li><a href="https://www.facebook.com">Facebook</a></li>
                        <li><a href="https://twitter.com/?lang=en">Twitter</a></li>
                        <li><a href="https://www.instagram.com">Instagram</a></li>
                        <li><a href="https://www.youtube.com">Youtube</a></li>

                    </ul>
                </div>
            </div>
            <hr>
            <p class="copyright">Copyright 2022</p>
        </div>
    </div>

    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

    <script>



        //add active class in selected list item
        let list = document.querySelectorAll('.list');
        for (let i = 0; i < list.length; i++) {
            list[i].onclick = function () {
                let j = 0;
                while (j < list.length) {
                    list[j++].className = 'list';
                }
                list[i].className = 'list active';
            }
        }
    </script>
</body>

</html>