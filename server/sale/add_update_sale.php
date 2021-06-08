<?php
include '../../include/consql.php';

$id = $_POST['id'];
$infoID = $_POST['client'];
$productID = $_POST['product'];
$method = $_POST['method'];
$time = date("Y-m-d h:i:s");

$error = "";

$sql = "SELECT price FROM product WHERE id = '$productID'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) == 0) {
    echo json_encode(array("msg" => "Can't get product information"));
    return;
}
$row = $result->fetch_assoc();
$price = $row['price'];

if ($id == "-1") {
    $insert_sql = mysqli_prepare($conn, "INSERT INTO saleHistory (infoId, productId, price, method, time) VALUES (?, ?, ?, ?, ?)");
    $insert_sql->bind_param('iiiss', $infoID, $productID, $price, $method, $time);
    $res = $insert_sql->execute();
    if (false === $res) {
        $error .= "Error: " . htmlspecialchars($insert_sql->error);
    }
    $insert_sql->close();
} else {
    $update_sql = mysqli_prepare($conn, "UPDATE saleHistory SET infoId = ?, productId = ?, price = ?, method = ? WHERE id=?");
    $update_sql->bind_param('iiisi', $infoID, $productID, $price, $method, $id);
    $res = $update_sql->execute();
    if (false === $res) {
        $error .= "Error: " . htmlspecialchars($update_sql->error);
    }
    $update_sql->close();
}

if ($error == "") {
    $error = "success";
}

$result = array("msg" => $error);
echo json_encode($result);

mysqli_close($conn);
?>