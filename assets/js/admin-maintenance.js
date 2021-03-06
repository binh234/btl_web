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
            url: "../server/maintenance/get_all_schedule.php",
            type: "GET",
            dataType: "json",
        },
        columns: [{
                data: "id",
                title: "ID",
            },
            {
                data: "name",
                title: "Khách hàng",
            },
            {
                data: "email",
                title: "Email",
            },
            {
                data: "phone",
                title: "Số điện thoại",
            },
            {
                data: "productName",
                title: "Sản phẩm",
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
                },
            },
            {
                data: "service",
                title: "Dịch vụ",
            },
            {
                data: "note",
                title: "Ghi chú",
            },
            {
                data: "time",
                title: "Thời gian",
            },
            {
                data: "address",
                title: "Showroom",
            },
            {
                data: null,
                className: "center",
                render: function(data, type, row, meta) {
                    return (
                        '<a class="delete-data" data-toggle="modal" data-target="#deleteModal" data-id="' +
                        row["id"] +
                        '" href=""><i class="fas fa-fw fa-trash"></i></a>'
                    );
                },
            },
        ],
    });
}

function deleteSchedule() {
    let delete_form = document.getElementById("delete-form");
    let data = {
        id: delete_form.elements["id"].value,
    };
    sendRequest("../server/maintenance/delete_schedule.php", data);
}

$(document).ready(function() {
    $("#nav-maintenance").addClass("active");
    loadData();
    $("#deleteModal").on("show.bs.modal", function(e) {
        //get data-id attribute of the clicked element
        var id = $(e.relatedTarget).data("id");

        //populate the textbox
        $(e.currentTarget).find('input[name="id"]').val(id);
    });
});