


// function get_XmlHttp() {
//     var xmlHttp = null;
//     if(window.XMLHttpRequest) {		// for Forefox, IE7+, Opera, Safari, ...
//         xmlHttp = new XMLHttpRequest();
//     }
//     else if(window.ActiveXObject) {	// for Internet Explorer 5 or 6
//         xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
//     }
//     return xmlHttp;
// }


// function callingit(){
//    var workingajax =  get_XmlHttp();
//     workingajax.onreadystatechange = function() {
//     document.getElementById("demo").innerHTML = "Ali";
//   };
//     workingajax.open("GET", "", true);
//     workingajax.send();
// }
function loadDoc() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
     document.getElementById("demo").innerHTML = this.responseText;
    }
  };
  xhttp.open("GET", "ajax_info.php", true);
  xhttp.send();
}
