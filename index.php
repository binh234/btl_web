<?php
    session_start();
    if(isset( $_SESSION['getnews'])){
        echo "<script>alert('Đăng ký thành công!');</script>"; 
        unset($_SESSION['getnews']);
    }
    
?>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Vinfast | Trang chủ</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/vin_logo.png" rel="icon">


    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i%7CRaleway:300,300i,400,400i,500,500i,600,600i,700,700i%7CPoppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
    <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">
    <script src="assets/vendor/jquery-easing/jquery.easing.min.js"></script>


    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">
</head>

<body>

    <!-- ======= Top Bar ======= -->
    <?php include 'include/topbar.php'; ?>

    <!-- ======= Header ======= -->
    <?php include 'include/header.php'; ?>
    <!-- End Header -->

    <!-- ======= Hero Section ======= -->
    <section id="hero">
        <div class="hero-container">
            <div id="heroCarousel" class="carousel slide carousel-fade" data-ride="carousel">

                <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

                <div class="carousel-inner" role="listbox">

                    <!-- Slide 1 -->
                    <div class="carousel-item active">
                        <div class="carousel-container">
                            <div class="carousel-content">
                                <a href="https://shop.vinfastauto.com/vi/car-vfe34.html?utm_source=homepage&utm_medium=slidebanner&utm_campaign=VFe34">
                                    <img src="assets/img/slide/vin_slide1.png" alt style="width:100%; height:auto">
                                </a>
                            </div>
                        </div>
                    </div>

                    <!-- Slide 2 -->
                    <div class="carousel-item">
                        <div class="carousel-container">
                            <div class="carousel-content">
                                <a href="https://www.vinfastauto.com/vi/vinfast-cong-bo-chinh-sach-ban-hang-cho-xe-o-thang-4-nam-2021">
                                    <img src="assets/img/slide/vin_slide2.jpg" alt style="width:100%; height:auto">
                                </a>
                            </div>
                        </div>
                    </div>

                    <!-- Slide 3 -->
                    <div class="carousel-item">
                        <div class="carousel-container">
                            <div class="carousel-content">
                                <a href="https://www.vinfastauto.com/vi/vinfast-chao-he-bang-chuong-trinh-khuyen-mai-xe-xin-gia-tot-uu-dai-cuc-hot">
                                    <img src="assets/img/slide/vin_slide3.jpg" alt style="width:100%; height:auto">
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- Slide 4 -->
                    <div class="carousel-item">
                        <div class="carousel-container">
                            <div class="carousel-content">
                                <a href="https://shop.vinfastauto.com/vi/vinfast-bike.html">
                                    <img src="assets/img/slide/vin_slide4.jpg" alt style="width:100%; height:auto">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon icofont-rounded-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>

                <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon icofont-rounded-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>

            </div>
        </div>
    </section>
    <!-- End Hero -->



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
    <script src="assets/vendor/jquery-sticky/jquery.sticky.js"></script>
    <script src="assets/vendor/aos/aos.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>

    <script>
        $(document).ready(function() {
            $("#nav-home").addClass("active");
        })
    </script>

</body>

</html>