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
                $info_sql = "SELECT * FROM userinfo where email='$username' LIMIT 1";
                $info_result = mysqli_query($conn, $info_sql);
                $info_row = mysqli_fetch_assoc($info_result);
                if($row["level"]=='member'){
                    $_SESSION['user']=$info_row['name'];
                    $_SESSION['useremail']=$username;
                    header("location:../index.php");
                }
                if($row["level"]=='manager'){
                    $_SESSION['user']=$info_row['name'];
                    $_SESSION['manager']=$info_row['name'];
                    $_SESSION['useremail']=$username;
                    header("location:../index.php");
                }
                if($row["level"]=='admin'){
                    $_SESSION['user']=$info_row['name'];
                    $_SESSION['admin']=$info_row['name'];
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