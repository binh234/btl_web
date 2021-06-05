<?php
    session_start();
    if(isset($_SESSION['user'])){
        echo $_SESSION['user'];
        unset($_SESSION['user']);
    }
    session_destroy();
    header("location:../index.php");
?>