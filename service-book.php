<?php
session_start();
include 'include/consql.php';
if (isset($_SESSION['user'])) {
    $car_sql = "SELECT id, name FROM product WHERE type='car'";
    $car_result = mysqli_query($conn, $car_sql)->fetch_all(MYSQLI_ASSOC);
    $motor_sql = "SELECT id, name FROM product WHERE type='motor'";
    $motor_result = mysqli_query($conn, $motor_sql)->fetch_all(MYSQLI_ASSOC);
} else {
    header("location:client/login.php");
}
?>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Vinfast | Đặt lịch bảo dưỡng</title>
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
    <link href="assets/vendor/select2/css/select2.min.css" rel="stylesheet">
    <link href="assets/vendor/select2/css/select2-bootstrap4.min.css" rel="stylesheet">

    <!-- Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/service_style.css" rel="stylesheet">
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
                    <li><a href="services.html">Dịch vụ</a></li>
                    <li>Đặt lịch bảo dưỡng</li>
                </ol>
                <h2>Đặt lịch bảo dưỡng</h2>

            </div>
        </section>
        <!-- End Breadcrumbs -->

        <!-- ======= Booking Section ======= -->
        <section id="services" class="services">
            <div class="container">
                <div class="row">
                    <form class="validate-form w-100" action="server/maintenance/add_schedule.php" method="post" id="book-form">
                        <div class="row w-100">
                            <div class="col-lg-6 col-12 p-4" data-aos="fade-up">
                                <label class="form-title d-flex">
                                    <i class="d-flex">1</i>
                                    <span>Thông tin khách hàng</span>
                                </label>
                                <div class="row required">
                                    <label class="col-lg-2 col-12 col-form-label" for="name">Họ tên</label>
                                    <div class="col-lg-10 col-12 form-group">
                                        <input type="text" name="name" class="form-control" id="name" placeholder="Nguyễn Văn A" data-rule="minlen:6" data-msg="Vui lòng nhập ít nhất 6 ký tự" />
                                        <div class="validate"></div>
                                    </div>
                                </div>
                                <div class="row required">
                                    <label class="col-lg-2 col-12 col-form-label" for="phone">SĐT</label>
                                    <div class="col-lg-10 col-12 form-group">
                                        <input type="text" name="phone" class="form-control" id="phone" placeholder="Số điện thoại" data-rule="phone" data-msg="Vui lòng nhập số điện thoại hợp lệ" />
                                        <div class="validate"></div>
                                    </div>
                                </div>
                                <div class="row required">
                                    <label class="col-lg-2 col-12 col-form-label" for="email">Email</label>
                                    <div class="col-lg-10 col-12 form-group">
                                        <input type="text" name="email" class="form-control" id="email" placeholder="Email" data-rule="email" data-msg="Vui lòng nhập email hợp lệ" />
                                        <div class="validate"></div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6 col-12 p-4" data-aos="fade-up" data-aos-delay="100">
                                <label class="form-title d-flex">
                                    <i class="d-flex">2</i>
                                    <span>Thông tin xe</span>
                                </label>
                                <div class="row required">
                                    <label class="col-lg-2 col-12 col-form-label" for="product">Mẫu xe</label>
                                    <div class="col-lg-10 col-12 form-group">
                                        <select class="custom-select w-100" id="product" name="product">
                                            <optgroup label="Ô tô">
                                                <?php
                                                foreach ($car_result as $car) :
                                                    echo '<option value="' . $car['id'] . '">' . $car['name'] . '</option>';
                                                endforeach;
                                                ?>
                                            </optgroup>
                                            <optgroup label="Xe máy">
                                                <?php
                                                foreach ($motor_result as $motor) :
                                                    echo '<option value="' . $motor['id'] . '">' . $motor['name'] . '</option>';
                                                endforeach;
                                                ?>
                                            </optgroup>
                                        </select>
                                    </div>
                                </div>
                                <div class="row required">
                                    <label class="col-lg-2 col-12 col-form-label" for="distance">Số KM</label>
                                    <div class="col-lg-10 col-12 form-group">
                                        <input type="number" name="distance" class="form-control" id="distance" placeholder="Số Km đã đi" data-rule="required" data-msg="Vui lòng nhập số km đã đi" />
                                        <div class="validate"></div>
                                    </div>
                                </div>
                                <div class="row required">
                                    <label class="col-lg-2 col-12 col-form-label" for="licensePlate">Biển xe</label>
                                    <div class="col-lg-10 col-12 form-group">
                                        <input type="text" name="licensePlate" class="form-control" id="licensePlate" placeholder="Biển số xe" data-rule="required" data-msg="Vui lòng nhập biển số xe" />
                                        <div class="validate"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row w-100 mt-4">
                            <div class="col-lg-6 col-12 p-4" data-aos="fade-up" data-aos-delay="100">
                                <label class="form-title d-flex">
                                    <i class="d-flex">3</i>
                                    <span>Lựa chọn dịch vụ</span>
                                </label>
                                <div class="row required">
                                    <label class="col-lg-2 col-12 col-form-label" for="service">Dịch vụ</label>
                                    <div class="col-lg-10 col-12 form-group">
                                        <select class="custom-select w-100" id="service" name="service">
                                            <option value="Bảo dưỡng nhanh">Bảo dưỡng nhanh</option>
                                            <option value="Bảo dưỡng định kỳ">Bảo dưỡng định kỳ</option>
                                            <option value="Gia hạn bảo hành">Gia hạn bảo hành</option>
                                            <option value="Chăm sóc, làm đẹp xe">Chăm sóc, làm đẹp xe</option>
                                            <option value="Thay thế phụ tùng">Thay thế phụ tùng</option>
                                            <option value="Dịch vụ khác">Dịch vụ khác</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <label class="col-lg-2 col-12 col-form-label" for="note">Ghi chú</label>
                                    <div class="col-lg-10 col-12 form-group">
                                        <textarea name="note" class="form-control" id="note" placeholder="Cụ thể yêu cầu mong muốn hỗ trợ..." rows="4" maxlength="500"></textarea>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6 col-12 p-4" data-aos="fade-up" data-aos-delay="200">
                                <label class="form-title d-flex">
                                    <i class="d-flex">4</i>
                                    <span>Chọn địa điểm, đặt lịch</span>
                                </label>
                                <div class="row required">
                                    <label class="col-lg-2 col-12 col-form-label">Showroom</label>
                                    <div class="col-lg-10 col-12 form-group">
                                        <div class="row">
                                            <div class="col-lg-12 col-12 mt-2">
                                                <select name="showroom" id="showroom" class="placeholder-select w-100" data-placeholder="Showroom"></select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row required">
                                    <label class="col-lg-2 col-12 col-form-label">Ngày</label>
                                    <div class="col-lg-10 col-12 form-group">
                                        <div class="row no-gutters">
                                            <div class="col-lg-6 col-12 pr-0 pr-lg-1">
                                                <div class="input-group">
                                                    <input type="date" class="form-control w-100" id="scheduleDate" name="scheduleDate" required>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-12 mt-2 mt-lg-0">
                                                <select class="form-control w-100" name="scheduleTime" id="scheduleTime">
                                                    <option value="08:30">8:30</option>
                                                    <option value="09:00">9:00</option>
                                                    <option value="09:30">9:30</option>
                                                    <option value="10:00">10:00</option>
                                                    <option value="10:30">10:30</option>
                                                    <option value="11:00">11:00</option>
                                                    <option value="11:30">11:30</option>
                                                    <option value="13:00">13:00</option>
                                                    <option value="13:30">13:30</option>
                                                    <option value="14:00">14:00</option>
                                                    <option value="14:30">14:30</option>
                                                    <option value="15:00">15:00</option>
                                                    <option value="15:30">15:30</option>
                                                    <option value="16:00">16:00</option>
                                                    <option value="16:30">16:30</option>
                                                    <option value="17:00">17:00</option>
                                                    <option value="17:30">17:30</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-center mt-3" data-aos="fade-up" data-aos-delay="100">
                            <input type="submit" class="btn btn-main mt-4" value="Đăng ký lịch hẹn">
                        </div>
                    </form>
                </div>
            </div>

        </section>
        <!-- End Booking Section -->

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
    <script src="assets/vendor/select2/js/select2.full.min.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>
    <script src="assets/js/validate-form.js"></script>
    <script>
        function getUserInfo() {
            $.ajax({
                url: "server/info/get_user_info.php",
                type: "GET",
                dataType: "json",
                success: function(data) {
                    // console.log(data);
                    if (data['msg'] == 'success') {
                        user_info = data['data']
                        $('#name').val(user_info['name']);
                        $('#email').val(user_info['email']);
                        $('#phone').val(user_info['phone']);
                    }
                },
                error: function(e) {
                    console.log(e);
                }
            })
        }

        function getShowroom() {
            $.ajax({
                url: "server/showroom/get_showroom.php",
                type: "GET",
                dataType: "json",
                success: function(data) {
                    // console.log(data);
                    showroom = document.getElementById("showroom");

                    while (showroom.childNodes.length > 0) {
                        showroom.removeChild(showroom.lastChild);
                    }

                    data["data"].forEach(function(item, index) {
                        option = document.createElement("option");
                        option.value = item["id"];
                        option.text = item["address"];
                        showroom.appendChild(option);
                    })

                    $('#showroom').select2({
                        theme: 'bootstrap4',
                        allowClear: true,
                        scrollAfterSelect: true,
                        width: '100%',
                    });
                }
            })
        }

        $(document).ready(function() {
            $('.placeholder-select').select2({
                theme: 'bootstrap4',
                allowClear: true,
                scrollAfterSelect: true,
                width: '100%',
            });
            $("#nav-services").addClass("active");
            $("#nav-maintenance").addClass("active");

            getUserInfo();
            getShowroom();
            // $('#book-form').submit(function(e) {
            //     e.preventDefault();
            //     console.log($(this).serialize());
            // })
        });
    </script>

</body>

</html>
<?php mysqli_close($conn); ?>