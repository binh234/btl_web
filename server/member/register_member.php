<?php
include '../../include/consql.php';

$mem_dict = array("None"=>0, "Member"=>1, "VIP"=>2, "VIP365"=>3);

$id = $_POST['id'];
$infoID = $_POST['info'];
$type = $_POST['type'];
$oldType = $_POST['old_type'];
$oldExpireDate = $_POST['expireDate'];

if ($oldExpireDate <= date('Y-m-d') || $mem_dict[$type] > $mem_dict[$oldType]) {
    $oldExpireDate = date('Y-m-d');
}

$date = new DateTime($oldExpireDate);
if ($mem_dict[$type] == 3) {
    $interval = new DateInterval('P1Y');
}
else {
    $interval = new DateInterval('P30D');
}
$date->add($interval);
$expireDate = $date->format('Y-m-d');

$error = "";

if ($id == "-1") {
    $insert_sql = mysqli_prepare($conn, "INSERT INTO member (infoId, type, startDate, expireDate) VALUES (?, ?, ?, ?)");
    $insert_sql->bind_param('isss', $infoID, $type, $oldExpireDate, $expireDate);
    $res = $insert_sql->execute();
    if (false === $res) {
        $error .= "Error: " . htmlspecialchars($insert_sql->error);
    }
    $insert_sql->close();
} else {
    $update_sql = mysqli_prepare($conn, "UPDATE member SET infoId = ?, type = ?, expireDate = ? WHERE id=?");
    $update_sql->bind_param('issi', $infoID, $type, $expireDate, $id);
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