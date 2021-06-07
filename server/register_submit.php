<?php
    session_start();
    include '../include/consql.php';
    if($_SERVER["REQUEST_METHOD"] == "POST"){
        $username=$_POST['account'];
        $email=$_POST['email'];
        $pass=$_POST['password'];
        $repass=$_POST['repass'];
        $level="member";
        $check=0;
        $sql ="SELECT * FROM user where email='$email' ";
        $old = mysqli_query($conn,$sql);
        if(mysqli_num_rows($old)>0){
            $_SESSION['email']="Email đã được đăng ký!";
            $check+=1;
            header("location:../client/register.php");
        }
        if($pass!=$repass){
            $_SESSION['pass']="Mật khẩu nhập lại không hợp lệ!";
            $check+=1;
            header("location:../client/register.php");
        }
        if($check==0){
            $pass=md5($pass);
            $sql="INSERT INTO user (password,email,level) VALUES ('$pass','$email','$level')";
            if (mysqli_query($conn,$sql) == TRUE) {
                $id = $conn->insert_id;
                $sql="INSERT INTO userinfo (userId, name, email, phone, address) VALUES ($id, '$username','$email', '', '')";
                mysqli_query($conn,$sql);
                $_SESSION['sussces']="Đăng kí thành công";
            } else {
                $_SESSION['sussces']="Đăng kí thất bại!";
            }
            header("location:../client/register.php");
        }
        
    }
?>