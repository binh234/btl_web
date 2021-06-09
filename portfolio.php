<?php
    session_start();
    include 'include/consql.php';
    $sql ="SELECT * FROM `product` where type ='car' ";
    $result = mysqli_query($conn,$sql);
    $otos = mysqli_fetch_all($result, MYSQLI_ASSOC); 
?>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Ô tô Vinfast</title>
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
                    <li>Ô tô</li>
                </ol>
                <h2>Ô tô</h2>

            </div>
        </section>
        <!-- End Breadcrumbs -->

        <!-- ======= Cars Section ======= -->
        <section id="cars" class="cars">
            <div class="container">

                <div class="row">

                    <?php foreach($otos as $oto): ?>
                    <div class="col-lg-4 col-md-6 mt-4 mt-md-0 d-flex align-items-stretch">
                        <div class="card" data-aos="fade-up" data-aos-delay="100">
                            <div class="card-body">
                                <div class="product-title">
                                    <h3>DÒNG <?php  echo $oto['model'];?> </h3>
                                    <p class="subtitle"><?php  echo $oto['title'];?></p>
                                    <p class="product-name"><?php  echo $oto['name'];?></p>
                                </div>
                                <ul class="product-details">
                                    <li data-aos="fade-up" data-aos-delay="100"><i class="icofont-check-circled"></i> Thiết kế uy lực đầy kiểu hãnh, tôn dấu ấn tinh hoa hoa của chủ nhân</li>
                                    <li data-aos="fade-up" data-aos-delay="200"><i class="icofont-check-circled"></i> Khả năng vận hành vượt trội với động cơ <?php  echo $oto['engine'].", ". $oto['gear'];?> </li>
                                    <li data-aos="fade-up"><i class="icofont-check-circled"></i> Kích thước: <?php  echo $oto['height']."x". $oto['width']."x".$oto['length'];?> </li>
                                    <li data-aos="fade-up"><i class="icofont-check-circled"></i> Giá bán: <?php  echo $oto['price']."VNĐ";?> </li>
                                </ul>
                            </div>
                            <img src="assets/img/oto/president.png" class="card-img-bottom" alt="president">
                            <a href="portfolio-details.php" class="btn btn-detail">Chi tiết</a>
                        </div>
                    </div>
                    <?php endforeach; ?>

                    <div class="col-lg-4 col-md-6 mt-4 d-flex align-items-stretch">
                        <div class="card" data-aos="fade-up" data-aos-delay="400">
                            <div class="card-body">
                                <div class="product-title">
                                    <h3>CÔNG NGHỆ THÔNG MINH CHO TƯƠNG LAI</h3>
                                    <p class=" text-justify">Đặt khách hàng làm trọng tâm, các mẫu xe thông minh của VinFast được ứng dụng những công nghệ ưu việt hàng đầu thế giới như trí tuệ nhân tạo, máy học và học sâu cùng các tính năng tự hành cấp độ cao, mở ra không gian
                                        hưởng thụ tiện nghi, giải trí hoàn hảo cùng trải nghiệm cá nhân hóa đáng giá nhất.
                                    </p>
                                </div>
                            </div>
                            <img src="assets/img/oto/vinfast.png" class="card-img-bottom" alt="vinfast">
                        </div>
                    </div>

                </div>

            </div>
        </section>
        <!-- End Cars Section -->

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
    <script src="assets/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="assets/vendor/aos/aos.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>

    <script>
        $(document).ready(function() {
            $("#nav-product").addClass("active");
            $("#nav-car").addClass("active");
        })
    </script>

</body>

</html>