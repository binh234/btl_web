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
    <link href="../assets/vendor/select2/css/select2.min.css" rel="stylesheet">
    <link href="../assets/vendor/select2/css/select2-bootstrap4.min.css" rel="stylesheet">
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
                            <h6 class="m-0 font-weight-bold text-primary">Lịch sử giao dịch</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                </table>
                            </div>
                            <div class="d-flex justify-content-end mt-3">
                                <button class="btn btn-success" data-toggle="modal" data-target="#editModal" data-address="" data-id="-1">Thêm</button>
                            </div>
                        </div>
                    </div>

                    <!-- Edit modal -->
                    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Thông tin giao dịch</h5>
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
                                                    <label class="bmd-label-floating">Khách hàng</label>
                                                    <select class="form-control client-select" id="client" name="client">
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Sản phẩm</label>
                                                    <select class="form-control client-select" id="product" name="product">
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Phương thức thanh toán</label>
                                                    <select class="form-control" id="method" name="method">
                                                        <option value="Trả thẳng">Trả thẳng</option>
                                                        <option value="Trả góp">Trả góp</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Hủy</button>
                                    <button type="button" class="btn btn-primary confirm-edit" data-dismiss="modal" onclick="updateTransaction()">Lưu</button>
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
                                    <button type="button" class="btn btn-danger confirm-delete" data-dismiss="modal" onclick="deleteTransaction()">Xóa</button>
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
    <script src="../assets/vendor/select2/js/select2.full.min.js"></script>

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
                    url: "../server/sale/get_sale_history.php",
                    // url: "raw.json",
                    type: "GET",
                    dataType: "json",
                },
                columns: [{
                        data: "id",
                        title: "ID"
                    },
                    {
                        data: "name",
                        title: "Khách hàng"
                    },
                    {
                        data: "email",
                        title: "Email"
                    },
                    {
                        data: "phone",
                        title: "Số điện thoại"
                    },
                    {
                        data: "productName",
                        title: "Sản phẩm"
                    },
                    {
                        data: "type",
                        title: "Phân loại",
                        render: function(data, type, row, meta) {
                            if (data == "car") {
                                return "Ô tô";
                            } else {
                                return "Xe máy điện";
                            }
                        }
                    },
                    {
                        data: "price",
                        title: "Giá bán"
                    },
                    {
                        data: "method",
                        title: "Thanh toán"
                    },
                    {
                        data: "time",
                        title: "Thời gian"
                    },
                    {
                        data: null,
                        className: "center",
                        render: function(data, type, row, meta) {
                            return '<a class="edit-data" data-toggle="modal" data-target="#editModal" data-id="' + row['id'] + '" data-infoId="' + row['infoId'] + '" data-productId="' + row['productId'] + '" href=""><i class="fas fa-fw fa-edit" ></i></a> <a class="delete-data" data-toggle="modal" data-target="#deleteModal" data-id="' + row['id'] + '" href=""><i class="fas fa-fw fa-trash"></i></a>';
                        }
                    }
                ]
            });
        }

        function getClientList() {
            $.ajax({
                url: "../server/info/get_all_info.php",
                type: "GET",
                dataType: "json",
                success: function(data) {
                    // console.log(data);
                    client = document.getElementById("client");

                    while (client.childNodes.length > 0) {
                        client.removeChild(client.lastChild);
                    }

                    data["data"].forEach(function(item, index) {
                        option = document.createElement("option");
                        option.value = item["id"];
                        option.text = item["name"] + " - " + item["email"] + " - " + item["phone"];
                        client.appendChild(option);
                    })

                    $('#client').select2({
                        theme: 'bootstrap4',
                        placeholder: "Chọn một khách hàng",
                        allowClear: true,
                        scrollAfterSelect: true,
                        width: '100%',
                    });
                }
            })
        }

        function getProductList() {
            $.ajax({
                url: "../server/product/get_all_product_name.php",
                type: "GET",
                dataType: "json",
                success: function(data) {
                    // console.log(data);
                    product = document.getElementById("product");

                    while (product.childNodes.length > 0) {
                        product.removeChild(product.lastChild);
                    }

                    data["data"].forEach(function(item, index) {
                        option = document.createElement("option");
                        option.value = item["id"];
                        option.text = item["name"];
                        product.appendChild(option);
                    })

                    $('#product').select2({
                        theme: 'bootstrap4',
                        placeholder: "Chọn một sản phẩm",
                        allowClear: true,
                        scrollAfterSelect: true,
                        width: '100%',
                    });
                }
            })
        }

        function updateTransaction() {
            let data = $('#edit-form').serialize();
            sendRequest("../server/sale/add_update_sale.php", data);
        }

        function deleteTransaction() {
            let delete_form = document.getElementById("delete-form");
            let data = {
                id: delete_form.elements['id'].value,
            }
            sendRequest("../server/sale/delete_sale.php", data);
        }

        $(document).ready(function() {
            $('#nav-sale').addClass("active");
            loadData();
            getClientList();
            getProductList();
            $('#editModal, #addModal').on('show.bs.modal', function(e) {

                //get data-id attribute of the clicked element
                var id = $(e.relatedTarget).data('id');

                //populate the textbox
                $(e.currentTarget).find('input[name="id"]').val(id);

                if (id != "-1") {
                    infoId = $(e.relatedTarget).data('infoid');
                    productId = $(e.relatedTarget).data('productid');

                    client = $('#client option[value=' + infoId + ']').val();
                    $('#client').val(client).trigger('change');

                    product = $('#product option[value=' + productId + ']').val();
                    $('#product').val(product).trigger('change');
                }
                else {
                    $('#client').val(null).trigger('change');
                    $('#product').val(null).trigger('change');
                }
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