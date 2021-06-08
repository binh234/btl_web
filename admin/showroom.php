<?php
session_start();
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

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Showroom</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                </table>
                            </div>
                            <div class="d-flex justify-content-end mt-3">
                                <button class="btn btn-success" data-toggle="modal" data-target="#addModal" data-address="" data-id="-1">Thêm showroom</button>
                            </div>
                        </div>
                    </div>

                    <!-- Add modal -->
                    <div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Thêm showroom</h5>
                                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form id="add-form">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <input type="hidden" class="form-control" name="id" value="">
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Địa chỉ</label>
                                                    <textarea class="form-control" name="address" value="" placeholder="Địa chỉ"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Hủy</button>
                                    <button type="button" class="btn btn-primary confirm-add" data-dismiss="modal" onclick="addShowroom()">Lưu</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Edit modal -->
                    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Cập nhật thông tin</h5>
                                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form id="edit-form">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <input type="hidden" class="form-control" name="id" value="">
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Địa chỉ</label>
                                                    <textarea class="form-control" name="address" value="" placeholder="Địa chỉ"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Hủy</button>
                                    <button type="button" class="btn btn-primary confirm-edit" data-dismiss="modal" onclick="updateShowroom()">Lưu cập nhật</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Delete modal -->
                    <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Bạn chắc chắn muốn xóa showroom này?</h5>
                                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form id="delete-form">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <input type="hidden" class="form-control" name="id" value="">
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <div class="modal-body">Chọn "Xóa" để tiếp tục</div>
                                </div>
                                <div class="modal-footer">
                                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Hủy</button>
                                    <button type="button" class="btn btn-danger confirm-delete" data-dismiss="modal" onclick="deleteShowroom()">Xóa</button>
                                </div>
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
    <script src="../assets/js/ajax-request.js"></script>

    <!-- Page level plugins -->
    <script src="../assets/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="../assets/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <script>
        function loadData() {
            $('#dataTable').DataTable({
                destroy: true,
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
                ajax: {
                    url: "../server/showroom/get_showroom.php",
                    // url: "raw.json",
                    type: "GET",
                    dataType: "json",
                },
                columns: [{
                        data: "id",
                        title: "ID"
                    },
                    {
                        data: "address",
                        title: "Địa chỉ"
                    },
                    {
                        data: null,
                        className: "center",
                        // defaultContent: '<a data-toggle="modal" data-target="#editModal" href=""><i class="fas fa-fw fa-edit" ></i></a><a href="#"><i class="fas fa-fw fa-trash"></i></a>',
                        render: function(data, type, row, meta) {
                            return '<a class="edit-data" data-toggle="modal" data-target="#editModal" data-address="' + row['address'] + '" data-id="' + row['id'] + '" href=""><i class="fas fa-fw fa-edit" ></i></a> <a class="delete-data" data-toggle="modal" data-target="#deleteModal" data-id="' + row['id'] + '" href=""><i class="fas fa-fw fa-trash"></i></a>';
                        }
                    }
                ]
            });
        }

        function addShowroom() {
            let add_form = document.getElementById("add-form");
            console.log(add_form.elements['address'].value)
            let data = {
                address: add_form.elements['address'].value
            }
            sendRequest("../server/showroom/add_showroom.php", data);
        }

        function updateShowroom() {
            let edit_form = document.getElementById("edit-form");
            let data = {
                id: edit_form.elements['id'].value,
                address: edit_form.elements['address'].value
            }
            sendRequest("../server/showroom/update_showroom.php", data);
        }

        function deleteShowroom() {
            let delete_form = document.getElementById("delete-form");
            let data = {
                id: delete_form.elements['id'].value,
            }
            sendRequest("../server/showroom/delete_showroom.php", data);
        }

        $(document).ready(function() {
            $('#nav-showroom').addClass("active");
            loadData();
            $('#editModal, #addModal').on('show.bs.modal', function(e) {

                //get data-id attribute of the clicked element
                var id = $(e.relatedTarget).data('id');
                var address = $(e.relatedTarget).data('address') || '';

                //populate the textbox
                $(e.currentTarget).find('input[name="id"]').val(id);
                $(e.currentTarget).find('textarea[name="address"]').val(address);
            });
            $('#deleteModal').on('show.bs.modal', function(e) {

                //get data-id attribute of the clicked element
                var id = $(e.relatedTarget).data('id');

                //populate the textbox
                $(e.currentTarget).find('input[name="id"]').val(id);
            });
        });
    </script>

</body>

</html>