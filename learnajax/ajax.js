


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


function callingit(){
   var workingajax =  get_XmlHttp();
    workingajax.onreadystatechange = function() {
    document.getElementById("demo").innerHTML = "Ali";
  };
    workingajax.open("GET", "", true);
  workingajax.send();
}

