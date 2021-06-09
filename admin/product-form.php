<?php
session_start();
if (isset($_GET['id'])) {
    $id = $_GET['id'];
} else {
    $id = -1;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="../assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../assets/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="../assets/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <?php include 'sidebar.php'; ?>

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <?php include 'topbar.php'; ?>

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Thông tin sản phẩm</h1>
                    <p class="mb-4">Nhập thông tin sản phẩm.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Thông tin sản phẩm</h6>
                        </div>
                        <div class="card-body">
                            <form action="../server/product/add_product.php" method="post" enctype="multipart/form-data" class="validate-form">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="form-group">
                                            <input type="hidden" class="form-control" id="id" name="id" value="-1" hidden>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Tên</label>
                                            <input type="text" class="form-control" id="name" name="name" placeholder="Tên sản phẩm">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Dòng sản phẩm</label>
                                            <input type="text" class="form-control" id="model" name="model" placeholder="Dòng sản phẩm">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Tiêu đề</label>
                                            <input type="text" class="form-control" id="title" name="title" placeholder="Tiêu đề">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Màu</label>
                                            <input type="text" class="form-control" id="color" name="color" placeholder="Màu">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Động cơ</label>
                                            <input type="text" class="form-control" id="engine" name="engine" placeholder="Động cơ">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Hộp số</label>
                                            <input type="text" class="form-control" id="gear" name="gear" placeholder="Hộp số">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Công suất (W)</label>
                                            <input type="number" class="form-control" id="wattage" name="wattage" placeholder="Công suất (W)">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Giá bán</label>
                                            <input type="number" class="form-control" id="price" name="price" placeholder="Giá bán">
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Dài</label>
                                            <input type="number" class="form-control" id="length" name="length" placeholder="Chiều dài">
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Rộng</label>
                                            <input type="number" class="form-control" id="width" name="width" placeholder="Chiều rộng">
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Cao</label>
                                            <input type="number" class="form-control" id="height" name="height" placeholder="Chiều cao">
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Nhiên liệu (lít)</label>
                                            <input type="number" class="form-control" id="consume" name="consume" placeholder="Nhiêu liệu">
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Tốc độ tối đa</label>
                                            <input type="number" class="form-control" id="maxVelocity" name="maxVelocity" placeholder="Tốc độ tối đa">
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Loại sản phẩm</label>
                                            <select class="form-control" id="type" name="type">
                                                <option value="car">Ô tô</option>
                                                <option value="motor">Xe máy điện</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Hình ảnh</label>
                                            <input type="file" name="image" id="image">
                                        </div>
                                    </div>
                                </div>
                                <input class="btn btn-primary" type="submit" value="Lưu" name="submit">
                            </form>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <?php include './footer.php'; ?>

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Bootstrap core JavaScript-->
    <script src="../assets/vendor/jquery/jquery.min.js"></script>
    <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../assets/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../assets/js/admin.js"></script>
    <script src="../assets/js/ajax-request.js"></script>
    <script src="../assets/validate-form.js"></script>

    <!-- Page level plugins -->
    <script src="../assets/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="../assets/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <script>
        function form_submit(this_form, action, data) {
            $.ajax({
                    type: "POST",
                    url: action,
                    data: data,
                    dataType: "json",
                    timeout: 40000,
                })
                .done(function(data) {
                    alert(data["msg"]);
                    window.location.href = "car.php";
                })
                .fail(function(data) {
                    console.log(data);
                    alert("Không thể gửi dữ liệu lên server. Vui lòng thử lại sau!");
                });
        }

        function getProductInfo() {
            var id = "<?php echo $id ?>";
            if (id == "-1") {
                return;
            }
            $.ajax({
                url: "../server/product/get_all_product.php?id=" + "<?php echo $id ?>",
                type: "GET",
                dataType: "json",
                success: function(data) {
                    console.log(data["data"]);
                    data = data["data"];
                    $("#id").val(data["id"]);
                    $("#name").val(data["name"]);
                    $("#title").val(data["title"]);
                    $("#model").val(data["model"]);
                    $("#engine").val(data["engine"]);
                    $("#color").val(data["color"]);
                    $("#price").val(data["price"]);
                    $("#gear").val(data["gear"]);
                    $("#maxVelocity").val(data["maxVelocity"]);
                    $("#wattage").val(data["wattage"]);
                    $("#length").val(data["length"]);
                    $("#width").val(data["width"]);
                    $("#height").val(data["height"]);
                    $("#consume").val(data["consume"]);
                }
            })
        }

        $(document).ready(function() {
            getProductInfo();

            $(".validate-form").submit(function(e) {
                e.preventDefault();
                var this_form = $(this);
                var action = $(this).attr("action");
                form_submit(this_form, action, this_form.serialize());
                return true;
            })
        })
    </script>

</body>

</html>