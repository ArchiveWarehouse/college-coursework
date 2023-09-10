<?php
    require("./data_connect.php");

    $sql = 'SELECT password FROM customer where email = "goukaku1234567@gmail.com";';
    $result = $con->query($sql);
    echo "$result";

?>