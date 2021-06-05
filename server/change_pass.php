<?php
    session_start();
    include '../include/consql.php';
    if($_SERVER["REQUEST_METHOD"] == "POST"){
        $emailuser= $_SESSION['useremail'];
        $passold=$_POST['passold'];
        $passold=md5($passold);
        $passnew=$_POST['passnew'];
        $repassnew=$_POST['repassnew'];
        $sql ="SELECT * FROM user where email='$emailuser' ";
        $old = mysqli_query($conn,$sql);
        $row = mysqli_fetch_assoc($old);
        if($row["password"]==$passold){
            if($passnew==$repassnew){
               $passnew=md5($passnew);
               $sql="UPDATE user SET password='$passnew' WHERE email='$emailuser' ";
                mysqli_query($conn,$sql);
                $_SESSION['sussces']="Thay đổi thành công!";
                header("location:../client/info.php");
            }
            else{
                $_SESSION['error']="Mật khẩu nhập lại không chính xác!";
                $check+=1;
                header("location:../client/info.php");
            }
        }
        else{
            $_SESSION['error']="Mật khẩu không chính xác!";
            header("location:../client/info.php");
        }
        
    }
?>