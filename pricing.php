<?php
    session_start();
?>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Vinfast | Thẻ thành viên</title>
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
    <link href="assets/css/pricing_style.css" rel="stylesheet">
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
                    <li>Thẻ thành viên</li>
                </ol>
                <h2>Thẻ thành viên</h2>

            </div>
        </section>
        <!-- End Breadcrumbs -->

        <!-- ======= Pricing Section ======= -->
        <section id="pricing" class="pricing">
            <div class="container">

                <div class="row no-gutters">

                    <div class="col-lg-4 box">
                        <h3>Thành viên</h3>
                        <h4>0 <sup>đ</sup><span> một tháng</span></h4>
                        <ul>
                            <li><i class="bx bx-check"></i>Hỗ trợ 24/7</li>
                            <li><i class="bx bx-check"></i>Đội ngũ tư vấn chuyên nghiệp</li>
                            <li><i class="bx bx-check"></i>Phiếu giảm giá 500,000đ / tháng</li>
                            <li class="na"><i class="bx bx-x"></i> Cập nhật thông tin mẫu xe, ưu đãi sớm nhất</li>
                            <li class="na"><i class="bx bx-x"></i> Đăng ký lái thử miễn phí</li>
                            <li class="na"><i class="bx bx-x"></i> Bảo hành tận nơi</li>
                        </ul>
                        <a href="#" class="buy-btn">Kích hoạt</a>
                    </div>

                    <div class="col-lg-4 box featured">
                        <h3>VIP</h3>
                        <h4>3 <sup>triệu</sup><span> một tháng</span></h4>
                        <ul>
                            <li><i class="bx bx-check"></i>Hỗ trợ 24/7</li>
                            <li><i class="bx bx-check"></i>Đội ngũ tư vấn chuyên nghiệp</li>
                            <li><i class="bx bx-check"></i>Phiếu giảm giá 1,500,000đ / tháng</li>
                            <li><i class="bx bx-check"></i> Cập nhật thông tin mẫu xe, ưu đãi sớm nhất</li>
                            <li><i class="bx bx-check"></i> Đăng ký lái thử miễn phí 1 ngày / tháng</li>
                            <li class="na"><i class="bx bx-x"></i> Bảo hành tận nơi</li>
                        </ul>
                        <a href="#" class="buy-btn">Kích hoạt</a>
                    </div>

                    <div class="col-lg-4 box">
                        <h3>VIP365</h3>
                        <h4>32 <sup>triệu</sup><span> một năm</span></h4>
                        <ul>
                            <li><i class="bx bx-check"></i>Hỗ trợ 24/7</li>
                            <li><i class="bx bx-check"></i>Đội ngũ tư vấn chuyên nghiệp</li>
                            <li><i class="bx bx-check"></i>Phiếu giảm giá 2,000,000đ / tháng</li>
                            <li><i class="bx bx-check"></i> Cập nhật thông tin mẫu xe, ưu đãi sớm nhất</li>
                            <li><i class="bx bx-check"></i> Đăng ký lái thử miễn phí 3 ngày / tháng</li>
                            <li><i class="bx bx-check"></i> Bảo hành tận nơi</li>
                        </ul>
                        <a href="#" class="buy-btn">Kích hoạt</a>
                    </div>

                </div>

            </div>
        </section>
        <!-- End Pricing Section -->

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
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>

    <script>
        $(document).ready(function() {
            $("#nav-pricing").addClass("active");
        })
    </script>

</body>

</html>