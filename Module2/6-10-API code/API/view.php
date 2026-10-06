<?php
  
  include('connect.php');
  
  $sql = "select * from students";
  $request = mysqli_query($con, $sql); 
  $response = array();
 
  while($row = mysqli_fetch_array($request))
  {
    $value["id"]=$row["id"];
    $value["name"]=$row["name"];
    $value["surname"]=$row["surname"];
    $value["email"]=$row["email"];
    array_push($response,$value);
  }
  
  echo json_encode($response);
  mysqli_close($con);
  
?>