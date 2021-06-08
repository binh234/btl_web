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
            url: "../server/showroom/get_showroom.php",
            // url: "raw.json",
            type: "GET",
            dataType: "json",
        },
        columns: [{
                data: "id",
                title: "ID",
            },
            {
                data: "address",
                title: "Địa chỉ",
            },
            {
                data: null,
                className: "center",
                // defaultContent: '<a data-toggle="modal" data-target="#editModal" href=""><i class="fas fa-fw fa-edit" ></i></a><a href="#"><i class="fas fa-fw fa-trash"></i></a>',
                render: function(data, type, row, meta) {
                    return (
                        '<a class="edit-data" data-toggle="modal" data-target="#editModal" data-address="' +
                        row["address"] +
                        '" data-id="' +
                        row["id"] +
                        '" href=""><i class="fas fa-fw fa-edit" ></i></a> <a class="delete-data" data-toggle="modal" data-target="#deleteModal" data-id="' +
                        row["id"] +
                        '" href=""><i class="fas fa-fw fa-trash"></i></a>'
                    );
                },
            },
        ],
    });
}

function addShowroom() {
    let add_form = document.getElementById("add-form");
    console.log(add_form.elements["address"].value);
    let data = {
        address: add_form.elements["address"].value,
    };
    sendRequest("../server/showroom/add_showroom.php", data);
}

function updateShowroom() {
    let edit_form = document.getElementById("edit-form");
    let data = {
        id: edit_form.elements["id"].value,
        address: edit_form.elements["address"].value,
    };
    sendRequest("../server/showroom/update_showroom.php", data);
}

function deleteShowroom() {
    let delete_form = document.getElementById("delete-form");
    let data = {
        id: delete_form.elements["id"].value,
    };
    sendRequest("../server/showroom/delete_showroom.php", data);
}

$(document).ready(function() {
    $("#nav-showroom").addClass("active");
    loadData();
    $("#editModal, #addModal").on("show.bs.modal", function(e) {
        //get data-id attribute of the clicked element
        var id = $(e.relatedTarget).data("id");
        var address = $(e.relatedTarget).data("address") || "";

        //populate the textbox
        $(e.currentTarget).find('input[name="id"]').val(id);
        $(e.currentTarget).find('textarea[name="address"]').val(address);
    });
    $("#deleteModal").on("show.bs.modal", function(e) {
        //get data-id attribute of the clicked element
        var id = $(e.relatedTarget).data("id");

        //populate the textbox
        $(e.currentTarget).find('input[name="id"]').val(id);
    });
});