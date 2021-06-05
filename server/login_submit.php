<?php
    session_start();
    include '../include/consql.php';
    if($_SERVER["REQUEST_METHOD"] == "POST"){
        $username=$_POST['account'];
        $pass=$_POST['password'];
        $pass=md5($pass);
        $check=0;
        $sql ="SELECT * FROM user where email='$username' ";
        $old = mysqli_query($conn,$sql);
        if(mysqli_num_rows($old)>0){
            $row = mysqli_fetch_assoc($old);
            if($row["password"]==$pass){
                if($row["level"]=='member'){
                    $_SESSION['user']=$row['username'];
                    $_SESSION['useremail']=$username;
                    header("location:../index.php");
                }
                if($row["level"]=='manager'){
                    $_SESSION['user']=$row['username'];
                    $_SESSION['manager']=$row['username'];
                    $_SESSION['useremail']=$username;
                    header("location:../index.php");
                }
                if($row["level"]=='admin'){
                    $_SESSION['user']=$row['username'];
                    $_SESSION['admin']=$row['username'];
                    $_SESSION['useremail']=$username;
                    header("location:../index.php");
                }
            }
            else{
                $_SESSION['error']="Mật khẩu không chính xác!";
                header("location:../client/login.php");
            }
        }
        else{
            $_SESSION['error']="Tài khoản mật khẩu không chính xác!";
            header("location:../client/login.php");
        }
        
    }
?>