<?php
    session_start()
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../assets/css/login_style.css" rel="stylesheet">
</head>

<body>
    <div class="container-fluid px-1 px-md-5 px-lg-1 px-xl-5 py-5 mx-auto">
        <div class="card card0 border-0">
            <div class="row d-flex">
                <div class="col-lg-6">
                    <img src="../assets/img/login/image_login.png" class="image">
                </div>
                <div class="col-lg-6">
                    <div class="card2 card border-0 px-4 py-5">
                        <div class="row mb-4 px-3">
                            <img src="../assets/img/login/logo_login.png" class="imagelogo">
                        </div>
                        <div class="row px-3 mb-4 "> 
                            <h5 class="mb-0  text-center ">Đăng nhập</h5>
                            <div class="line"></div> 
                        </div>
                        <a class="text-danger">
                            <?php
                                if(isset($_SESSION['error'])){
                                    echo $_SESSION['error'];
                                    unset($_SESSION['error']);
                                }
                             ?>
                        </a>
                        <?php include '../include/login.php'; ?>
                        <div class="row mb-4 px-3 "> 
                            <small class="font-weight-bold text-center">Chưa có tài khoản? <a href="register.php" class="text-danger ">Đăng ký ngay</small> 
                        </div>  
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../assets/js/validate.js" type=text/javascript></script>
</body>

</html>