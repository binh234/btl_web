<?php
    session_start();
    include 'include/consql.php';
    $sql ="SELECT * FROM `product` where type ='motor' ";
    $result = mysqli_query($conn,$sql);
    $motors = mysqli_fetch_all($result, MYSQLI_ASSOC); 
?>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Xe máy điện Vinfast</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/vin_logo.png" rel="icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i%7CRaleway:300,300i,400,400i,500,500i,600,600i,700,700i%7CPoppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/product_style.css" rel="stylesheet">
</head>

<body>

    <!-- ======= Top Bar ======= -->
    <?php include 'include/topbar.php'; ?>

    <!-- ======= Header ======= -->
    <?php include 'include/header.php'; ?>
    <!-- End Header -->

    <main id="main">

        <!-- ======= Breadcrumbs ======= -->
        <section id="breadcrumbs" class="breadcrumbs">
            <div class="container">

                <ol>
                    <li><a href="index.html">Trang chủ</a></li>
                    <li>Xe máy điện</li>
                </ol>
                <h2>Xe máy điện </h2>

            </div>
        </section>
        <!-- End Breadcrumbs -->

        <!-- ========Electric motocycle -->
        <section id="electric-motocycle" class="electric-motocycle">
            <div class="container">

                <div class="row">
                    

                    
                    <?php foreach($motors as $moto): ?>
                        <div class="col-lg-4 col-md-6 mt-4 mt-md-0 d-flex align-items-stretch">
                        <div class="card" data-aos="fade-up" data-aos-delay="100">
                            <div class="card-body">
                                <div class="product-title">
                                    <h3>DÒNG <?php  echo $moto['model'];?> </h3>
                                    <p class="subtitle"><?php  echo $moto['title'];?></p>
                                    <p class="product-name"><?php  echo $moto['name'];?></p>
                                </div>
                                <ul class="product-details">
                                    <li data-aos="fade-up" data-aos-delay="100"><i class="icofont-check-circled"></i> Vận hành êm ái, hai chế độ lái Eco và Sport linh hoạt</li>
                                    <li data-aos="fade-up" data-aos-delay="300"><i class="icofont-check-circled"></i> Công nghệ <?php  echo $moto['gear'].", động cơ ".$moto['engine'];?>, tiêu chuẩn chống nước IP57</li>
                                    <li data-aos="fade-up" data-aos-delay="300"><i class="icofont-check-circled"></i> Kích thước: <?php  echo $moto['height']."x". $moto['width']."x".$moto['length'];?> </li>
                                    <li data-aos="fade-up" data-aos-delay="300"><i class="icofont-check-circled"></i> Giá bán: <?php  echo $moto['price']."VNĐ";?> </li>
                                </ul>
                            </div>
                            <img src="assets/img/xedien/feliz.png" class="card-img-bottom" alt="...">
                            <a href="portfolio-details.php" class="btn btn-detail">Chi tiết</a>
                        </div>
                    </div>
                    <?php endforeach; ?>

                    

                    

                    

                </div>

            </div>
        </section>

        <!-- ======== Electric motocycle ==========-->

    </main>
    <!-- End #main -->

    <!-- ======= Footer ======= -->
    <?php include 'include/footer.php'; ?>
    <!-- End Footer -->

    <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

    <!-- Vendor JS Files -->
    <script src="assets/vendor/jquery/jquery.min.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>
    <script src="assets/vendor/jquery-sticky/jquery.sticky.js"></script>
    <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="assets/vendor/aos/aos.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>

    <script>
        $(document).ready(function() {
            $("#nav-product").addClass("active");
            $("#nav-motor").addClass("active");
        })
    </script>

</body>

</html>