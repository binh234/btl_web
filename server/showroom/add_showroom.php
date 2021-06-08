<?php
include '../../include/consql.php';

$address = $_POST['address'];

$insert_sql = mysqli_prepare($conn, "INSERT INTO showroom (address) VALUES (?)");
$insert_sql->bind_param('s', $address);
$res = $insert_sql->execute();

$error = "";
if (false === $res) {
    $error .= "Error: " . htmlspecialchars($insert_sql->error);
}
$insert_sql->close();

if ($error == "") {
    $error = "success";
}

$result = array("msg" => $error);
echo json_encode($result);

mysqli_close($conn);
?>