<?php

include('data_connect.php'); 

$searchTerm = $_GET['term'];
$sql = "SELECT * FROM products WHERE product_name LIKE '".$searchTerm."%'"; 
$result = $con->query($sql); 
if ($result->num_rows > 0) {
  $tutorialData = array(); 
  while($row = $result->fetch_assoc()) {

   $data['id']    = $row['product_id']; 
   $data['value'] = $row['product_name'];
   array_push($tutorialData, $data);
} 
}
 echo json_encode($tutorialData);
?>