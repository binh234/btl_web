!(function($) {
    "use strict";

    $("form.validate-form").submit(function(e) {
        e.preventDefault();

        var f = $(this).find(".form-group"),
            ferror = false,
            emailExp = /^[^\s()<>@,;:\/]+@\w[\w\.-]+\.[a-z]{2,}$/i,
            phoneExp = /\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/;

        f.children("input").each(function() {
            // run all inputs

            var i = $(this); // current input
            var rule = i.attr("data-rule");

            if (rule !== undefined) {
                var ierror = false; // error flag for current input
                var pos = rule.indexOf(":", 0);
                if (pos >= 0) {
                    var exp = rule.substr(pos + 1, rule.length);
                    rule = rule.substr(0, pos);
                    f;
                } else {
                    rule = rule.substr(pos + 1, rule.length);
                }

                switch (rule) {
                    case "required":
                        if (i.val() === "") {
                            ferror = ierror = true;
                        }
                        break;

                    case "minlen":
                        if (i.val().length < parseInt(exp)) {
                            ferror = ierror = true;
                        }
                        break;

                    case "maxlen":
                        if (i.val().length > parseInt(exp)) {
                            ferror = ierror = true;
                        }
                        break;

                    case "email":
                        if (!emailExp.test(i.val())) {
                            ferror = ierror = true;
                        }
                        break;

                    case "phone":
                        if (!phoneExp.test(i.val())) {
                            ferror = ierror = true;
                        }
                        break;

                    case "checked":
                        if (!i.is(":checked")) {
                            ferror = ierror = true;
                        }
                        break;

                    case "regexp":
                        exp = new RegExp(exp);
                        if (!exp.test(i.val())) {
                            ferror = ierror = true;
                        }
                        break;
                }
                i.next(".validate")
                    .html(
                        ierror ?
                        i.attr("data-msg") !== undefined ?
                        i.attr("data-msg") :
                        "wrong Input" :
                        ""
                    )
                    .show("blind");
            }
        });
        f.children("textarea").each(function() {
            // run all inputs

            var i = $(this); // current input
            var rule = i.attr("data-rule");

            if (rule !== undefined) {
                var ierror = false; // error flag for current input
                var pos = rule.indexOf(":", 0);
                if (pos >= 0) {
                    var exp = rule.substr(pos + 1, rule.length);
                    rule = rule.substr(0, pos);
                } else {
                    rule = rule.substr(pos + 1, rule.length);
                }

                switch (rule) {
                    case "required":
                        if (i.val() === "") {
                            ferror = ierror = true;
                        }
                        break;

                    case "minlen":
                        if (i.val().length < parseInt(exp)) {
                            ferror = ierror = true;
                        }
                        break;
                }
                i.next(".validate")
                    .html(
                        ierror ?
                        i.attr("data-msg") != undefined ?
                        i.attr("data-msg") :
                        "wrong Input" :
                        ""
                    )
                    .show("blind");
            }
        });
        if (ferror) return false;

        var this_form = $(this);
        var action = $(this).attr("action");
        form_submit(this_form, action, this_form.serialize());

        return true;
    });

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
            })
            .fail(function(data) {
                console.log(data);
                var error_msg = "Form submission failed!<br>";
                if (data.statusText || data.status) {
                    error_msg += "Status:";
                    if (data.statusText) {
                        error_msg += " " + data.statusText;
                    }
                    if (data.status) {
                        error_msg += " " + data.status;
                    }
                    error_msg += "<br>";
                }
                if (data.responseText) {
                    error_msg += data.responseText;
                }
                this_form.find(".loading").slideUp();
                this_form.find(".error-message").slideDown().html(error_msg);
            });
    }
})(jQuery);