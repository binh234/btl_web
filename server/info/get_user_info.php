<?php
    session_start();
    include '../../include/consql.php';
    $email=$name=$phone=$address=$year='';
    $result = array("msg" => "error", "data" => "");
    if(isset( $_SESSION['useremail'])){
        $email= $_SESSION['useremail'];
        $sql ="SELECT * FROM userInfo where email='$email' LIMIT 1";
        $result = mysqli_query($conn,$sql);
        $row = mysqli_fetch_assoc($result);
        $result = array("msg" => "success", "data" => $row);
    }
    echo json_encode($result);    
?>