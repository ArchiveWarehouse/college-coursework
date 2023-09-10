<?php
    session_start();
    // require_once("../data/data_connect.php");
    // $sql = "select * from products where product_id = {$_SESSION['b']}";
    // $result = mysqli_query($con, $sql);
    // $name ;
    // $p;

    // while($row = mysqli_fetch_array($result)){
    //     $name = $row['product_name'];
    //     $id = $row['product_id'];
    // }


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>注文確認書</title>
    <link rel="stylesheet" href="../Login_v1/css/style2.css">
    <style>
        #texbox{
            float: right;
        }
        button{
            float: right;
            top: 8px;
            right: 2px;
            margin-left: 35%;
        }
        .home{
            margin-left: 36%;
        }
        #check{
            margin-left: 43%;
        }
    </style>
</head>
<body>
<div id="app">
    <form action="../payment/pay.php" method="post">
        <!-- product and price  -->
        <!-- product_name = {$_POST['name']}
                price per product = {$_POST['ppp']}
                amont = {$_POST['am']}
                total = {$_POST['tp']}
                address = {$_POST['add']}
                payment by = {$_POST['pb']} -->
    <table>
        <tbody>
            <tr>
                <td><b>product_name :</b> <div id="texbox"><?php echo $_POST['name']; ?></div><br>
                </td>
            </tr>
        
            <tr>
                <td><b>price per one product :</b> <div id="texbox"><?php echo $_POST['ppp']; ?></div> <br>
                </td>
            </tr>

            <tr>
                <td><b>amount :</b> <div id="texbox"><?php echo $_POST['am']; ?></div> <br>
                </td>
            </tr>
                
            <tr>
                <td><b>total price :</b> <div id="texbox"><?php echo $_POST['tp']; ?></div> <br>
                </td>
            </tr>
                <!-- change address or edit address  -->
            <tr>        
                <div>
                    <td><b>address :</b> <div id="texbox"><?php echo $_POST['add']; ?></div><br>
                    <!-- <a href="../edit_address/input_add.html"><button type="button" id="btn">edit</button><br></a> -->
                    <!-- <button type="button" id="btn">edit</button><br> -->
                    </td>
                </div>
            </tr>

            <tr>
            <!-- choose payment -->
                <div>
                    <td><b>
                    payment by :</b> <div id="texbox"><?php echo $_POST['pb']; ?></div><br>
                    <!-- <a href="../payment/pay_choice.html"><button type="button" id="btn">edit</button><br></a> -->
                    </td>
                </div>
            </tr>
        </tbody>
    </table>
                <input id="check" type="submit" name="sub" value="pay">
    </form>
</div>
</body>
</html>