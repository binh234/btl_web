<?php
    session_start();
    include '../include/consql.php';
    if($_SERVER["REQUEST_METHOD"] == "POST"){
        $email=$_POST['email'];
        $sql ="INSERT INTO getnews (email) VALUES ('$email')";
        $old = mysqli_query($conn,$sql);
        $_SESSION['getnews']="Đăng kí thành công!";
        header("location:../index.php");
        
    }
?>