<?php
include '../../include/consql.php';

$id = $_POST['id'];
$address = $_POST['address'];

$update_sql = mysqli_prepare($conn, "UPDATE showroom SET address=? WHERE id=?");
$update_sql->bind_param('si', $address, $id);
$res = $update_sql->execute();

$error = "";
if (false === $res) {
    $error .= "Error: " . htmlspecialchars($update_sql->error);
}
$update_sql->close();

if ($error == "") {
    $error = "success";
}

$result = array("msg" => $error);
echo json_encode($result);

mysqli_close($conn);
?>