function loadData() {
    $("#dataTable").DataTable({
        destroy: true,
        language: {
            lengthMenu: "Hiển thị _MENU_ hàng mỗi trang",
            zeroRecords: "Không tìm thấy dữ liệu",
            info: "Trang _PAGE_ của _PAGES_",
            infoEmpty: "Không tìm thấy dữ liệu",
            infoFiltered: "(filtered from _MAX_ total records)",
            search: "Tìm kiếm:",
            paginate: {
                first: "Đầu",
                last: "Cuối",
                next: "Sau",
                previous: "Trước",
            },
        },
        ajax: {
            url: "../server/product/get_all_product.php?type=motor",
            // url: "raw.json",
            type: "GET",
            dataType: "json",
        },
        columns: [{
                data: "id",
                title: "ID",
            },
            {
                data: "name",
                title: "Tên",
            },
            {
                data: "title",
                title: "Tiêu đề",
            },
            {
                data: "model",
                title: "Dòng",
            },
            {
                data: "color",
                title: "Màu",
            },
            {
                data: "wattage",
                title: "Công suất",
            },
            {
                data: null,
                title: "Kích thước (D x R x C)",
                render: function(data, type, row, meta) {
                    return row["length"] + "x" + row['width'] + 'x' + row['height'] + " cm";
                },
            },
            {
                data: "price",
                title: "Giá bán",
            },
            {
                data: "consume",
                title: "Nhiên liệu",
            },
            {
                data: null,
                className: "center",
                // defaultContent: '<a data-toggle="modal" data-target="#editModal" href=""><i class="fas fa-fw fa-edit" ></i></a><a href="#"><i class="fas fa-fw fa-trash"></i></a>',
                render: function(data, type, row, meta) {
                    return (
                        '<a href="product-form.php?id=' +
                        row["id"] +
                        '"><i class="fas fa-fw fa-edit" ></i></a> <a class="delete-data" data-toggle="modal" data-target="#deleteModal" data-id="' +
                        row["id"] +
                        '" href=""><i class="fas fa-fw fa-trash"></i></a>'
                    );
                },
            },
        ],
    });
}

function deleteProduct() {
    let delete_form = document.getElementById("delete-form");
    let data = {
        id: delete_form.elements["id"].value,
    };
    sendRequest("../server/product/delete_product.php", data);
}

$(document).ready(function() {
    $("#nav-motor").addClass("active");
    loadData();
    $("#deleteModal").on("show.bs.modal", function(e) {
        //get data-id attribute of the clicked element
        var id = $(e.relatedTarget).data("id");

        //populate the textbox
        $(e.currentTarget).find('input[name="id"]').val(id);
    });
});