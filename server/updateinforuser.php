<?php
    session_start();
    include '../include/consql.php';
    if($_SERVER["REQUEST_METHOD"] == "POST"){
        $emailuser= $_SESSION['useremail'];
        $name= $_POST['name'];
        $phone= $_POST['phone'];
        $adress= $_POST['adress'];
        $year= $_POST['year'];
        $sql="UPDATE userinfor SET username='$name', year='$year', phone='$phone', address='$adress' WHERE email='$emailuser' ";
        mysqli_query($conn,$sql);
        $sql="UPDATE user SET username='$name' WHERE email='$emailuser' ";
        mysqli_query($conn,$sql);
        unset($_SESSION['user']);
        $_SESSION['user']=$name;
        unset($_SESSION['update']);
        $_SESSION['update']="Cập nhập thành công!";
        header("location:../client/info.php");
    }
?>