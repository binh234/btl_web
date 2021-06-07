<?php
    session_start();
    include '../include/consql.php';
    $emailuser=$name=$phone=$address=$year='';
    if(isset( $_SESSION['useremail'])){
        $emailuser= $_SESSION['useremail'];
        $sql ="SELECT * FROM userinfo where email='$emailuser' ";
        $result = mysqli_query($conn,$sql);
        $row = mysqli_fetch_assoc($result);
        $name= $row['name'];
        $phone= $row['phone'];
        $address= $row['address'];
    }
    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang người dùng</title>
    <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../assets/css/login_style.css" rel="stylesheet">
</head>
<body> 

    <div class="container-fluid px-1 px-md-5 px-lg-1 px-xl-5 py-5 mx-auto">
        <div class="card card0 border-0">
            <div class="row d-flex">
                <div class="col-lg-4 text-center">
                    <br>
                    <img src="../assets/img/user/user.png" >
                    <h6 class="mb-0  "><?php echo $name;?></h6>
                    <h6 class="mb-0   "><?php echo "Email:".$emailuser;?></h6>
                    <h6 class="mb-0  "><?php echo "Sđt:".$phone;?></h6>
                    <h6 class="mb-0  "><?php echo "Địa chỉ:".$address;?></h6> <br>
                    <?php include '../include/changepass.php'; ?>
                </div>
                <div class="col-lg-7">
                    <div class="card2 card border-0 px-4 py-5">
                        <div class="row mb-4 px-3 text-center">
                            <a href="../index.php">
                                <img src="../assets/img/login/logo_login.png" class="imagelogo">
                            </a>
                        </div>
                        <div class="row px-3 mb-4 "> 
                            <h5 class="mb-0  text-center ">Thông tin cá nhân</h5>
                            <div class="line"></div> 
                        </div>
                        
                        <form action="../server/updateinforuser.php" method="POST" name="Form" >
                            <div class="row px-3"> <label class="mb-1">
                                <h6 class="mb-0 text-sm ">Họ tên </h6>
                            </label> <input class="mb-3" type="text" name="name" value="<?php echo $name;?>" required> </div>
                            <div class="row px-3"> <label class="mb-1">
                                <h6 class="mb-0 text-sm ">Số điện thoại </h6>
                            </label> <input class="mb-3" type="text" name="phone" value="<?php echo$phone;?>" placeholder="Chưa cập nhập số điện thoại" required> </div>
                            <div class="row px-3"> <label class="mb-1">
                                <h6 class="mb-0 text-sm ">Địa chỉ </h6>
                            </label> <input class="mb-3" type="text" name="adress" value="<?php echo$address;?>" placeholder="Chưa cập nhập địa chỉ" required> </div>
                            <div class="row mb-3 px-3"> 
                                <button type="submit" class="btn btn-blue text-center">Cập nhập</button> 
                            </div>
                            <div class="row mb-4 px-3 text-center text-primary">
                                <?php
                                    if(isset($_SESSION['update'])){
                                        echo $_SESSION['update'];
                                        unset($_SESSION['update']);
                                    }
                                ?>
                            </div>
                        </form> 
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="../assets/vendor/jquery/jquery.min.js"></script>
    <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>