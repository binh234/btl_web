<?php
include '../../include/consql.php';

include '../upload_image.php';

$id = $_POST['id'];
$name = $_POST['name'];
$model = $_POST['model'];
$title = $_POST['title'];
$engine = $_POST['engine'];
$color = $_POST['color'];
$wattage = $_POST['wattage'];
$price = $_POST['price'];
$width = $_POST['width'];
$height = $_POST['height'];
$length = $_POST['length'];
$maxVelocity = $_POST['maxVelocity'];
$consume = $_POST['consume'];
$type = $_POST['type'];

if ($uploadOk == 1) {
    $image = $target_file;
} else {
    $image = "";
}

$insert_sql = mysqli_prepare($conn, "UPDATE product  SET name = ?, model = ?, title = ?, engine = ?, color = ?, wattage = ?, price = ?, width = ?, height = ?, length = ?, maxVelocity = ?, consume = ?, type = ?, image = ?) WHERE id=?");
$insert_sql->bind_param('sssssiiiiiiiss', $name, $model, $title, $engine, $color, $wattage, $price, $width, $height, $length, $maxVelocity, $consume, $type, $image);
$res = $insert_sql->execute();

$error = "";
if (false === $res) {
    $error = "Error: " . htmlspecialchars($insert_sql->error);
}
$insert_sql->close();

if ($error == "") {
    $error = "success";
}

$result = array("msg" => $error);
echo json_encode($result);

mysqli_close($conn);
?>