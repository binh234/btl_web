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
        } else {
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