<?php
  include '../../include/consql.php';
  
  $result = mysqli_query($conn, "SELECT maintenanceSchedule.id, userInfo.name, email, phone, product.name as productName, type, service, note, time, distance, licensePlate, showroom.address FROM maintenanceSchedule 
  INNER JOIN product ON product.id = maintenanceSchedule.productId
  INNER JOIN showroom ON showroom.id = maintenanceSchedule.showroomID
  INNER JOIN userInfo ON userInfo.id = maintenanceSchedule.infoId
  ORDER BY time DESC")->fetch_all(MYSQLI_ASSOC);
  echo json_encode( array("data" => $result));

  mysqli_close($conn);
?>