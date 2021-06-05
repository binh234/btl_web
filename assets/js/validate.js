function validate() {


    let account = document.Form.account.value;
    if (account.length < 6) {
        alert("Tài khoản phải có ít nhất 6 kí tự");
        return false;
    }

    let email = document.Form.email.value;
    if (email.search(/^.+@.+\..+$/i) == -1) {
        alert("Email không đúng định dạng!");
        return false;
    }

    let password = document.Form.password.value;
    let repass = document.Form.repass.value;
    if (password.length < 1 || repass.length < 1) {
        alert("Hãy nhập mật khẩu!");
        return false;
    }

    return true;
}

// function check confirm when press button delete
function confirmdelete(del) {
    if (confirm("Bạn có muốn xóa dữ liệu này?")) {
        window.location.href = '../server/adminEdit.php?del_id=' + del + '';
        return true;
    } else {
        return false;
    }
}