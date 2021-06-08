<?php
include '../../include/consql.php';

$email = $_POST['email'];
$name = $_POST['name'];
$phone = $_POST['phone'];
$productID = $_POST['product'];
$distance = $_POST['distance'];
$licensePlate = $_POST['licensePlate'];
$service = $_POST['service'];
$note = $_POST['note'];
$showroomID = $_POST['showroom'];
$scheduleDate = $_POST['scheduleDate'];
$scheduleTime = $_POST['scheduleTime'];
$time = "$scheduleDate $scheduleTime";

$info_sql = "SELECT id FROM userInfo WHERE email = '$email'";
$result = mysqli_query($conn, $info_sql);
if (mysqli_num_rows($result) == 0) {
    $sql = mysqli_prepare($conn, "INSERT INTO userInfo (email, name, phone, address) VALUES (?, ?, ?, ?)");
    $sql->bind_param('ssss', $email, $name, $phone, '');
    $res = $sql->execute();
    if ($res === false) {
        echo json_encode(array("msg" => htmlspecialchars($sql->error)));
        return;
    }
    $infoId = $conn->insert_id;
} else {
    $row = $result->fetch_assoc();
    $infoId = $row['id'];
}
$insert_sql = mysqli_prepare($conn, "INSERT INTO maintenanceSchedule (infoId, productId, showroomId, distance, licensePlate, service, note , time) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
$insert_sql->bind_param('iiiissss', $infoId, $productID, $showroomID, $distance, $licensePlate, $service, $note, $time);
$res = $insert_sql->execute();

$error = "";
if (false === $res) {
    $error = "Error: " . htmlspecialchars($insert_sql->error);
}
$insert_sql->close();

if ($error == "") {
    $error = "Đặt lịch thành công";
}

$result = array("msg" => $error);
echo json_encode($result);

mysqli_close($conn);
?>