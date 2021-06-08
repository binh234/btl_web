<?php
  include '../../include/consql.php';
  
  $result = mysqli_query($conn, "SELECT member.id, type, startDate, expireDate, email,name, phone 
  FROM member 
  INNER JOIN userInfo ON userInfo.id = member.infoId")->fetch_all(MYSQLI_ASSOC);
  echo json_encode( array("data" => $result));

  mysqli_close($conn);
?>
