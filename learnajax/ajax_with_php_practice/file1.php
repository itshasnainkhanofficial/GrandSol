<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <input type="text" id="name">
    <input type="button" value="button" onclick="great()">
    <div id="output">

    </div>

    <script>
    function great(){
    var ajaxreq = new XMLHttpRequest();
        
    ajaxreq.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200) {
     document.getElementById("output").innerHTML = this.resposeText;
    }
    }
    ajaxreq.open("GET", "file2.php", true);
    ajaxreq.send();
    
    }
    </script>
</body>
</html>