<?php
include '../../include/consql.php';

$id = $_POST['id'];

$delete_sql = mysqli_prepare($conn, "DELETE FROM showroom WHERE id=?");
$delete_sql->bind_param('i', $id);
$res = $delete_sql->execute();

$error = "";
if (false === $res) {
    $error .= "Error: " . htmlspecialchars($delete_sql->error);
}
$delete_sql->close();

if ($error == "") {
    $error = "success";
}

$result = array("msg" => $error);
echo json_encode($result);

mysqli_close($conn);
?>