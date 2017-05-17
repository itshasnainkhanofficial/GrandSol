<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>



</head>

<body>
<div id="box">
    <h2>Name</h2>
    <input type="text" id="name" placeholder="Enter your name" />
    <br />
    <br />
    <input type="text" id="email" placeholder="Enter your E-mail" />
    <br />
    <br />
    <input type="password" id="pass" placeholder="Enter your Password" />
    <br />
    <br />
    <input type="button" name="sub" id="submit" value="Submit" onclick="test_data()" />
</div>
<div id="test"></div>
<script src="jquery-1.11.1.min.js"></script>
<script>
function call_ajax_with_functions(response_div, php_file, form_data, functions) {
    var request =  get_XmlHttp();
    request.open("POST", php_file, true);
    request.send(form_data);
    $('body').append(modal);
    $('#background_fade').fadeIn();

    request.onreadystatechange = function() {
        if (request.readyState == 4) {
            $('#background_fade').fadeOut(function() {
                $(this).remove();
            });
            if(response_div == '') {
                if(request.responseText.search('fail') != -1) {
                    alertify.error(request.responseText);
                } else {
                    alertify.success(request.responseText);
                }
            } else {
                document.getElementById(response_div).innerHTML = request.responseText;
            }
            if(functions.length > 0) {
                while (functions.length) {
                    functions.shift().call();
                }
            }
        }
    }
}
    function call_ajax(response_div, php_file, form_data) {
    var request =  get_XmlHttp();
    request.open("POST", php_file, true);
    request.send(form_data);
    $('body').append(modal);
    $('#background_fade').fadeIn();
    request.onreadystatechange = function() {

        if (request.readyState == 4) {
            $('#background_fade').fadeOut(function() {
                $(this).remove();
            });
            if(response_div == '') {
                if(request.responseText.search('success') != -1) {
                    alertify.success(request.responseText);
                } else {
                    alertify.error(request.responseText);
                }
            } else {
                if(request.responseText != ""){
                    document.getElementById(response_div).innerHTML = request.responseText;
                }
            }
        }
    }
}
function get_XmlHttp() {
    var xmlHttp = null;
    if(window.XMLHttpRequest) {		// for Forefox, IE7+, Opera, Safari, ...
        xmlHttp = new XMLHttpRequest();
    }
    else if(window.ActiveXObject) {	// for Internet Explorer 5 or 6
        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    return xmlHttp;
}
var modal = (function () {/*
 <div id="background_fade" style="z-index:9999999; height: 100% !important; min-height: 100%; width: 100%; position: fixed; top: 0; background-color: rgba(0, 0, 0, 0.7);display:none;">
 <div id="processing" style="z-index:99999999;display: block; padding-right: 17px;" class="modal fade in" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 <div class="modal-dialog ajax_modal">
 <div class="modal-content">
 <div class="modal-header">
 <button type="button" id="Modal_close_btn" class="close" onclick="$('#background_fade').fadeOut(function() { $(this).remove(); }); " aria-hidden="true">x</button>
 <h4 class="modal-title" id="modal_title">Processing..</h4>
 </div>
 <div class="modal-body">
 <div id="modal_data" style="padding: 5px 20px;">
 <div class="form-group">
 <i class="fa fa-spinner fa-pulse fa-3x fa-fw"></i>
 <span>Please wait while we are processing your request.</span><br>
 <span>It could take a few seconds depending on your internet connection speed.</span>
 </div>
 </div>
 </div>
 </div>
 </div>
 */}).toString().match(/[^]*\/\*([^]*)\*\/\}$/)[1];



function test_data(){

    
    var name = document.getElementById("name").value;
    var email = document.getElementById("email").value;
    var pass = document.getElementById("pass").value;
    if(name==""){
    alert('give name please');
    }
    data = new FormData();
	data.append("name",name);
	data.append("email",email);
    data.append("pass",pass);
   
    var a = function(){call_ajax('class_routin_view','./classRoutine/reload/classRoutine_reload.php','x')}
     arr = [a];
	
	call_ajax_with_functions("test","test2.php",data,arr);

	}

</script>
</body>
</html>
