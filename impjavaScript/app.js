

//regular Expressions....
// var regexp4cnic = /^[0-9]{13}$/;
// var regexp4date = /^[0-9]{4}\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])/;
// var regexp4contactstrik = /^\+92[0-9]{3}\-[0-9]{7}$/;
// var regexp4date = /^(0[1-9]|1[012])\/(0[1-9]|[12][0-9]|3[01])\/[0-9]{4}$/;
// var regexp4phone = /^021-[0-9]{8}$/
// var regexp4alphanumeric = /^[A-Za-z\d\s ]*$/;
var regexp4contact = /^92[0-9]{10}$/;
var regexp4ptcl = /^021[0-9]{8}$/;
var regexp4alphanumeric = /^[A-Za-z\d\s\-]{1,50}$/;
var regexp4cnic = /^[0-9]{5}\-[0-9]{7}\-[0-9]{1}$/;
var regexp4fee = /^[0-9]+$/;
var regexp4fax = /^\+?[0-9]{6,}$/;
var regexp4name = /^[A-Za-z\s\-]{1,50}$/;
var regexp4city = /^[A-Za-z ]{4,50}$/;
var regexp4address = /^[A-Za-z]+[0-9 _\-.,]*$/;
var regexp4skype = /^[a-zA-Z][a-zA-Z0-9\.,\-_]{5,31}$/;
var regexp4id = /^[0-9\b]+$/;
var regexp4email = /^\s*[\w\-\+_]+(\.[\w\-\+_]+)*\@[\w\-\+_]+\.[\w\-\+_]+(\.[\w\-\+_]+)*\s*$/;
var regexp4textarea = /^[A-Za-z ]{20,200}$/;
var regexp4normalpassword = /^[\w\d]+$/;


function reset_password() {
    email = document.getElementById('email').value;
    if(!regexp4email.test(email)) {
        document.getElementById('reponse_reset_password').innerHTML = "<p style='color:red'>Please enter a valid email address..</p>";
        return;
    }
    data = new FormData();
    data.append('email',email);
    call_ajax('reponse_reset_password','./user_operations/ajax/forget_password.php ',data)
}

function change_password(user_id) {
    password = document.getElementById('current_pass').value;
    new_password = document.getElementById('new_pass').value;
    c_password = document.getElementById('c_pass').value;
    if(c_password != new_password) {
        alertify.error("Passwords not matched..!");
        return;
    }
    data = new FormData();
    data.append('id',user_id);
    data.append('password',password);
    data.append('new_password',new_password);
    call_ajax('','./user_operations/ajax/change_password.php ',data);
}

function reset_password_hash(id) {
    password = document.getElementById('password').value;
    c_password = document.getElementById('c_password').value;
    if(c_password != password) {
       document.getElementById('content').innerHTML = "<p style='color:red;'>Passwords not matched..!</p>";
        return;
    }
    data = new FormData();
    data.append('id',id);
    data.append('password',password);
    call_ajax('content','./user_operations/ajax/reset_password.php ',data);
}

$.fn.modal.Constructor.prototype.enforceFocus = function () {
    var that = this;
    $(document).on('focusin.modal', function (e) {
        if ($(e.target).hasClass('select2-input')) {
            return true;
        }

        if (that.$element[0] !== e.target && !that.$element.has(e.target).length) {
            that.$element.focus();
        }
    });
};

function print_div(print_target)
{
    var divElements = document.getElementById(print_target).innerHTML;
    newpage_print = window.open('', '_blank' );
    data = "<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>"
    var script = newpage_print.document.createElement('script');
    script.setAttribute('type', 'text/javascript');
    script.innerHTML = "function none_it() { try { document.getElementById('sample_1_length').style.display = 'none'; document.getElementById('sample_1_filter').style.display = 'none'; document.getElementById('sample_1_paginate').style.display = 'none'; document.getElementById('sample_1_info').style.display = 'none'; } catch(ex)  {  return false; } } setInterval(function(){ none_it(); window.print(); window.close(); }, 1000);";
    newpage_print.document.body.innerHTML = data + divElements;
    newpage_print.document.body.appendChild(script);
}


var multiple_select_box = function () {
    $(".select2_multiple").select2({
        maximumSelectionLength: 100,
        placeholder: "please select",
        allowClear: true
    });
}
multiple_select_box.call();


var handleDataTableButtons = function() {
    if ($(".data_loaded_table").length) {
        $(".data_loaded_table").DataTable({
            dom: "Bfrtip",
            buttons: [
                {
                    extend: "copy",
                    className: "btn-sm"
                },
                {
                    extend: "csv",
                    className: "btn-sm"
                },
                {
                    extend: "excel",
                    className: "btn-sm"
                },
                {
                    extend: "pdfHtml5",
                    className: "btn-sm"
                },
                {
                    extend: "print",
                    className: "btn-sm"
                },
            ],
            responsive: true
        });
    }
};

TableManageButtons = function() {
    "use strict";
    return {
        init: function() {
            handleDataTableButtons();
        }
    };
}();


TableManageButtons.init();



function selet2(){
    $(document).ready(function() {
        $(".select2_single").select2({
            placeholder: "Select",
            allowClear: true
        });

        $(".select2_group").select2({});
        $(".select2_multiple").select2({
            maximumSelectionLength: 4,
            placeholder: "With Max Selection limit 4",
            allowClear: true
        });
    });
}
selet2();

if (inquiry_from.valueOf() > inquiry_to.valueOf()) {
    alertify.error("Start date cannot be after the end date");
		return;
}

    try{

        var teacher_subject_new;

        for ( var i = 0; i < teacher_subject.selectedOptions.length; i++) {
            if(i==0) {
                teacher_subject_new = teacher_subject.selectedOptions[i].value;
            } else {
                teacher_subject_new +=  ","+teacher_subject.selectedOptions[i].value;
            }
        }

        var teacher_classrequire_new ;

        for ( var i = 0; i < teacher_classrequire.selectedOptions.length; i++) {
            if(i==0) {
                teacher_classrequire_new = teacher_classrequire.selectedOptions[i].value;
            } else {
                teacher_classrequire_new +=  ","+teacher_classrequire.selectedOptions[i].value;
            }
        }

    }catch(e){
        teacher_subject_new = 'null';
        teacher_classrequire_new = 'null';
    }