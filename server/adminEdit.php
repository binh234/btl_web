<?php
    session_start();
    include '../include/consql.php';

//delete record
    if(isset($_GET['del_id'])){
        $id=$_GET['del_id'];
        $sql ="SELECT email FROM user where id='$id' ";
        $row = mysqli_fetch_assoc(mysqli_query($conn,$sql));
        $email=$row['email'];
        $sql="DELETE FROM user WHERE id='$id'";
        mysqli_query($conn,$sql);
        //var_dump($id);
        $sql="DELETE FROM userinfor WHERE email='$email'";
        mysqli_query($conn,$sql);
        header("location:../client/admin.php");
    }

//change level
    elseif(isset($_GET['level']) && isset($_GET['id']) ){
        $level=$_GET['level'];
        $id=$_GET['id'];
        $sql = "UPDATE user SET level='$level' WHERE id='$id'";
        mysqli_query($conn,$sql);
        header("location:../client/admin.php");
    }
    else{
        header("location:../client/admin.php");
    }
?>