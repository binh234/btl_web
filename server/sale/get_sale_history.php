<?php
  include '../../include/consql.php';
  
  $result = mysqli_query($conn, "SELECT saleHistory.id, infoId, productId, userInfo.name, email, phone, product.name as productName, type, saleHistory.price, method, time
  FROM saleHistory
  INNER JOIN product ON product.id = saleHistory.productId
  INNER JOIN userInfo ON userInfo.id = saleHistory.infoId
  ORDER BY time DESC")->fetch_all(MYSQLI_ASSOC);
  echo json_encode( array("data" => $result));

  mysqli_close($conn);
