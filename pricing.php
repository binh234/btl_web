<?php
session_start();
include 'include/consql.php';

if (isset($_SESSION['useremail'])) {
    $emailuser = $_SESSION['useremail'];
    $sql = "SELECT * FROM userinfo where email='$emailuser' ";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    $infoId = $row['id'];
    $mem_sql = "SELECT * FROM member where infoId='$infoId'";
    $result = mysqli_query($conn, $mem_sql);
    if (mysqli_num_rows($result) == 0) {
        $type = "None";
        $expireDate = date('Y-m-d');
        $mem_id = -1;
    } else {
        $mem_row = mysqli_fetch_assoc($result);
        $type = $mem_row['type'];
        $date = new Datetime($mem_row['expireDate']);
        $expireDate = $date->format('Y-m-d');
        $mem_id = $mem_row['id'];
    }
} else {
    header("location:client/login.php");
}
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

                    <div class="col-lg-4 box <?php if ($type == "Member") {
                                                    echo 'featured';
                                                } ?>">
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
                        <?php
                        if ($type == "Member" && $expireDate > date('Y-m-d')) {
                            echo '<button class="btn buy-btn mb-2" data-type="Member">Gia hạn</button>';
                            echo "<p>Hết hạn vào $expireDate</p>";
                        ?>
                        <?php
                        } else {
                            echo '<button href="#" class="btn buy-btn" data-type="Member">Kích hoạt</button>';
                        } ?>
                    </div>

                    <div class="col-lg-4 box <?php if ($type == "VIP" || $type == "None") {
                                                    echo 'featured';
                                                } ?>">
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
                        <?php
                        if ($type == "VIP" && $expireDate > date('Y-m-d')) {
                            echo '<button class="btn buy-btn mb-2" data-type="VIP">Gia hạn</button>';
                            echo "<p>Hết hạn vào $expireDate</p>";
                        ?>
                        <?php
                        } else {
                            echo '<button href="#" class="btn buy-btn" data-type="VIP">Kích hoạt</button>';
                        } ?>
                    </div>

                    <div class="col-lg-4 box <?php if ($type == "VIP365") {
                                                    echo 'featured';
                                                } ?>">
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
                        <?php
                        if ($type == "VIP365" && $expireDate > date('Y-m-d')) {
                            echo '<button class="btn buy-btn mb-2" data-type="VIP365">Gia hạn</button>';
                            echo "<p>Hết hạn vào $expireDate</p>";
                        ?>
                        <?php
                        } else {
                            echo '<button href="#" class="btn buy-btn" data-type="VIP365">Kích hoạt</button>';
                        } ?>
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
    <script src="assets/vendor/aos/aos.js"></script>
    <script src="assets/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>

    <script>
        $(document).ready(function() {
            $("#nav-pricing").addClass("active");

            $(".buy-btn").on("click", function() {
                new_type = $(this).data("type");
                old_type = '<?php echo $type ?>';
                message = `Bạn đang thực hiện thay đổi cấp độ thẻ thành viên. Thao tác này có thể làm thay đổi ngày hết hạn và các ưu đãi của thẻ:
                Nâng cấp thẻ: Làm mới ngày hết hạn của thẻ
                Hạ cấp thẻ: Làm mới các ưu đãi của thẻ
Không thể quay lại sau khi thực hiện. Bạn muốn tiếp tục?`
                if (new_type == old_type || old_type == "None" || confirm(message)) {
                    $.ajax({
                        url: "server/member/register_member.php",
                        dataType: "json",
                        type: "POST",
                        data: {
                            id: "<?php echo $mem_id ?>",
                            info: '<?php echo $infoId ?>',
                            type: new_type,
                            old_type: '<?php echo $type ?>',
                            expireDate: '<?php echo $expireDate ?>'
                        },
                        success: function(data) {
                            console.log(data);
                            if (data["msg"] == "success") {
                                location.reload();
                            } else {
                                alert(data["msg"]);
                            }
                        }
                    })
                }
            })
        })
    </script>

</body>

</html>
<?php mysqli_close($conn); ?>