<?php
  session_start();
  require_once("../data/data_connect.php");
  $sql = "select * from cart where email = '{$_SESSION['email']}';";
  $result = mysqli_query($con,$sql);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./cart3.css">
    <style type="text/css">
        .currency:before{
            content: '¥';
        }

    </style>
</head>
<body>
    <header>

    </header>
    
    <main>
        <div class="container flex">
            <div class="structure">
              <h1>Shopping cart</h1>
          
              <table id="table">
                <thead>
                  <tr>
                    <th>Product name</th>
                    <th>Unit price</th>
                    <th>Quantity</th>
                    <th>Subtotal</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody id="all_products">
                  <form action="../sent/check.php" method="post">
                  <?php while($row = mysqli_fetch_assoc($result)){ ?>
                    <?php $sql_1 = "select * from products where product_id = {$row['product_id']};"; ?>
                      <?php $result_1 = mysqli_query($con,$sql_1); ?>
                      <?php while($row_1 = mysqli_fetch_assoc($result_1)){ ?>
                        <tr>
                          <td><?php echo $row_1['product_name']; ?></td>
                          <td class="currency"><?php echo $row_1['price']; ?></td> <!--price-->
                          <td class="quantity"><input type="number" name="num[]" placeholder="Unit price" min="0" value="1" contenteditable></td>
                          <td class="currency"><?php echo $row_1['price'] ;?></td>  <!--total-->
                          <td class="remove">
                            <a href="./delete_cart_item.php?idp=<?php echo $row_1['product_id'];?>"><button type="button">Remove</button></a>
                          </td>
                            <td><input type="checkbox" name="check[]" value="<?php echo $row_1['product_id']; ?>"></td>
                            
                        </tr>
                      <?php }?>
                  <?php } ?>
              </table>
                        
              <h2>Total : <span id="total_display">¥ 0 </span></h2>
              <button >check</button>
                </form>
              <a href="../index_copy3.php"><button class="remove">back to homepage</button></a>
              
            </div>
          </div>
    </main>

    <footer>

    </footer>
    <script src="./cart3.js"></script>
</body>
</html>