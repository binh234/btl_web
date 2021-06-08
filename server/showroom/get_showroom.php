<?php
  include '../../include/consql.php';
  
  $result = mysqli_query($conn, "SELECT * FROM showroom")->fetch_all(MYSQLI_ASSOC);
  echo json_encode( array("data" => $result));

  mysqli_close($conn);
?>
