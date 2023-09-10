<?php
    session_start();
    require_once("../../data/data_connect.php");
    $sql = "select * from Order_list where email ='{$_SESSION['email']}'";
    $result = mysqli_query($con, $sql);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>注文歴史</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+JP:wght@200;600&display=swap" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="../css/fixedstyle.css">
    <style>
        section {
            width: 1000px;
            max-width: 800px;
            margin-left: -450px;
            margin-right: auto;
            margin-top: 60px;
        }
        section + section {
            margin-top: 2.5em;
        }
        h1 {
            font-weight: 700;
            line-height: 1.125;
            font-size: clamp(1.5rem, 2.5vw, 2.5rem);
        }
        h2 {
            margin-top: 0.25em;
            color: #999;
            font-size: clamp(1.125rem, 2.5vw, 1.25rem);
        }
        h2 + * {
            margin-top: 1.5em;
        }
        summary {
            background-color: #fff;
            position: relative;
            cursor: pointer;
            padding: 1em 0.5em;
            list-style: none;
        }
        summary::-webkit-details-marker {
            display: none;
        }
        summary:hover {
            background-color: #f2f5f9;
        }
        summary div {
            display: flex;
            align-items: center;
        }
        summary h3 {
            display: flex;
            flex-direction: column;
        }
        summary small {
            color: #999;
            font-size: 0.875em;
        }
        summary strong {
            font-weight: 700;
        }
        summary span:first-child {
            width: 4rem;
            height: 4rem;
            border-radius: 10px;
            background-color: #f3e1e1;
            display: flex;
            flex-shrink: 0;
            align-items: center;
            justify-content: center;
            margin-right: 1.25em;
        }
        summary span:first-child svg {
            width: 2.25rem;
            height: 2.25rem;
        }
        summary span:last-child {
            font-weight: 700;
            margin-left: auto;
        }
        summary:focus {
            outline: none;
        }
        summary .plus {
            color: #289672;
        }
        details {
            border-bottom: 1px solid #b5bfd9;
        }
        details[open] {
            box-shadow: -3px 0 0 #b5bfd9;
        }
        details:first-of-type {
            border-top: 1px solid #b5bfd9;
        }
        details > div {
            padding: 2em 2em 0;
            font-size: 0.875em;
        }
        dl {
            display: flex;
            flex-wrap: wrap;
        }
        dl dt {
            font-weight: 700;
        }
        dl div {
            margin-right: 4em;
            margin-bottom: 2em;
        }


        span img{
            width: 64px;
            height: 38px;
        }
 
    </style>

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
                    <span class="icon"><ion-icon name="home-outline"></ion-icon></span>
                    <span class="title">Home</span>
                </a>
            </li> -->
            <li class="list">
                <b></b>
                <b></b>
                <a href="profile.php">
                    <span class="icon"><ion-icon name="person-outline"></ion-icon></span>
                    <span class="title">プロフィール</span>
                </a>
            </li>
            <li class="list active">
                <b></b>
                <b></b>
                <a href="order-history.html">
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
                <a href="setting.html">
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
                <div class="orhi">
                    <section >
                        <h1>注文歴史</h1>
                        <h2>今日</h2>

<!------------------------------------------------------------------------------------------------------------>
<?php while ($row = mysqli_fetch_assoc($result)){  ?> 
    <?php $sql_1 = "select * from detail_order where order_id = {$row['order_id']};";?>
    <?php $result_1 = mysqli_query($con, $sql_1);?>
    <?php while ($row_1 = mysqli_fetch_assoc($result_1)){?>
        <?php $sql_2 = "select * from products where product_id = {$row_1['product_id']};";?>
            <?php $result_2 = mysqli_query($con, $sql_2);?>
            <?php while ($row_2 = mysqli_fetch_assoc($result_2)){?>
                    <details>
                            <summary>   
                                <div>
                                    <div class="img_span">
                                    <!-- 写真 -->
                                    <span style="background-color: #ffffff;">
                                    <!-- 写真を一つだけ選択する(1)-->
                            <?php $sql_3 = "select image_address from images where product_id = {$row_2['product_id']}";?>
                            <?php $result_3 = mysqli_query($con,$sql_3); ?>
                            <?php $j = 0 ?> 
                                <?php while($row_3 = mysqli_fetch_array($result_3)) {?>
                                    <?php if($j < 1 ){ ?>
                                        <?php $R = str_replace("..","",$row_3['image_address']); ?>
                                        <?php echo '<img src="../../img'.$R.'"><br>'; ?>
                                        <?php  $j++;}else{ $j = 0; break ;} ?>
                                <?php } ?>
                            <!--(1)-->
                                    </span>
                                    </div>
                                    <h3>
                                        <!-- title -->
                                        <strong><?php echo $row_2 ['product_name']; ?></strong>
                                        
                                    </h3>
                                    <!-- price -->
                                    <span>￥<?php echo number_format($row_2['price']); ?></span>
                                </div>
                            </summary>
                            <div>
                                <dl>
                                    <div>
                                        <!-- time purchased -->
                                        <dt>Time</dt>
                                        <dd><?php echo $row ['order_time']; ?></dd>
                                    </div>
                    
                                    <div>
                                        <!-- payment method -->
                                        <dt>Payment Method</dt>
                                        <dd>Visa</dd>
                                    </div>
                                </dl>
                            </div>
                        </details>
                        <?php } ?>
                        <?php } ?>
                        <?php } ?>

<!------------------------------------------------------------------------------------------------------------>
                        <!-- <details>
                            <summary>
                                <div>
                                    <div class="img_span">
                                    
                                    <span style="background-color: #ffffff;">
                                        <img src="../../img/upImages/large/abc@abc.ac.jp20230116141252.jpg" alt="">
                                    </span>
                                    </div>
                                    <h3>
                                       
                                        <strong>パソコン</strong>
                                        <small>Macbook</small>
                                    </h3>
                                    
                                    <span>￥200,000</span>
                                </div>
                            </summary>
                            <div>
                                <dl>
                                    <div>
                                      
                                        <dt>Time</dt>
                                        <dd>4.27pm</dd>
                                    </div>
                    
                                    <div>
                                        
                                        <dt>Payment Method</dt>
                                        <dd>Visa</dd>
                                    </div>
                    
                                    
                                </dl>
                            </div>
                        </details> -->
<!------------------------------------------------------------------------------------------------------------>
                        <!-- <details>
                            <summary>
                                <div>
                                    <div class="img_span">
                                   
                                    <span style="background-color: #ffffff;">
                                        <img src="../../img/upImages/large/abc@abc.ac.jp20230116141252.jpg" alt="">
                                    </span>
                                    </div>
                                    <h3>
                                     
                                        <strong>パソコン</strong>
                                        <small>Macbook</small>
                                    </h3>
                             
                                    <span>￥200,000</span>
                                </div>
                            </summary>
                            <div>
                                <dl>
                                    <div>
                                 
                                        <dt>Time</dt>
                                        <dd>4.27pm</dd>
                                    </div>
                    
                                    <div>
                                        
                                        <dt>Payment Method</dt>
                                        <dd>Visa</dd>
                                    </div>                                
                                </dl>
                            </div>
                        </details> -->
<!------------------------------------------------------------------------------------------------------------>

                      
<!--                         
                     <details>
                            <summary>
                                <div>
                                    <div class="img_span">
                                    
                                    <span style="background-color: #ffffff;">
                                        <img src="../../img/upImages/large/abc@abc.ac.jp20230116141252.jpg" alt="">
                                    </span>
                                    </div>
                                    <h3>
                                        
                                        <strong>パソコン</strong>
                                        <small>Macbook</small>
                                    </h3>
                                    
                                    <span>￥200,000</span>
                                </div>
                            </summary>
                            <div>
                                <dl>
                                    <div>
                                        
                                        <dt>Time</dt>
                                        <dd>4.27pm</dd>
                                    </div>
                    
                                    <div>
                                       
                                        <dt>Payment Method</dt>
                                        <dd>Visa</dd>
                                    </div>
                    
                                    <div>
                                        <dt>Reference ID</dt>
                                        <dd>3125-568911</dd>
                                    </div>
                                </dl>
                            </div>
                        </details>









                       
                    </section>
                </div>
            </div>
        </div>
    </div>
-->
<!-- footer -->
<div class="footer" style="margin-top: 200px;  width: 1500px; margin-left:-500px">
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
        for(let i = 0; i<list.length; i++){
            list[i].onclick = function(){
                let j = 0;
                while(j<list.length){
                    list[j++].className = 'list';
                }
                list[i].className = 'list active';
            }
        }
    </script>
</body>
</html>