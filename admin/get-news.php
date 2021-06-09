<?php
    session_start();
    include '../include/consql.php';
    $sql ="SELECT * FROM `getnews` ";
    $result = mysqli_query($conn,$sql);
    $getnews = mysqli_fetch_all($result, MYSQLI_ASSOC); 
    
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
                    <h1 class="h3 mb-2 text-gray-800">Danh sách Email đăng ký nhận tin tức</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Email đăng ký</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                            <table class="table display" id="dataTable">
                                    <thead>
                                        <tr> 
                                            <th class="table-success text-center" scope="col">Id</th>
                                            <th class="table-success text-center" scope="col">Emai người đăng ký</th>
                                            <th class="table-success text-center" scope="col"></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php foreach($getnews as $user): ?>
                                        <tr>
                                            <form action="../server/adminEdit.php" method="GET" onsubmit="return(confirmdelete())">
                                            <td class="text-center"><?php echo $user['id']; ?></td>
                                            <td class="text-center"><?php echo $user['email']; ?></td>
                                            <td class="text-center">
                                                <input type="text" value="<?php echo $user['email']; ?>" name ="emailgetnews" hidden>
                                                <button type="submit"  class="btn btn-outline-danger btn-sm"><i class="fas fa-fw fa-trash"></i></button>
                                            </td>
                                            </form>
                                        </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                        </table>
                            </div>
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

    <!-- Page level plugins -->
    <script src="../assets/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="../assets/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#nav-get-news').addClass("active");
            $('#dataTable').DataTable({
                language: {
                    lengthMenu: "Hiển thị _MENU_ hàng mỗi trang",
                    zeroRecords: "Không tìm thấy dữ liệu",
                    info: "Trang _PAGE_ của _PAGES_",
                    infoEmpty: "Không tìm thấy dữ liệu",
                    infoFiltered: "(filtered from _MAX_ total records)",
                    search: "Tìm kiếm:",
                    paginate: {
                        "first": "Đầu",
                        "last": "Cuối",
                        "next": "Sau",
                        "previous": "Trước"
                    },
                },
            });
        });

        function confirmdelete() {
            if (confirm("Bạn có muốn mục này?")){
                return true;
            }
            else{
                return false;
            }            
        }
    </script>

</body>

</html>