<?php
  include '../../include/consql.php';
  
  if (isset($_GET['type'])) {
    $type = $_GET['type'];
    $result = mysqli_query($conn, "SELECT * FROM product WHERE type='$type'")->fetch_all(MYSQLI_ASSOC);
  }
  else if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $result = mysqli_query($conn, "SELECT * FROM product WHERE id='$id'")->fetch_all(MYSQLI_ASSOC);
  }
  else {
    $result = mysqli_query($conn, "SELECT * FROM product")->fetch_all(MYSQLI_ASSOC);
  }
  echo json_encode( array("data" => $result));

  mysqli_close($conn);
?>