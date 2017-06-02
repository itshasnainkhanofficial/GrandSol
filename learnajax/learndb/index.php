<?php

 include("addfile.php");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <form method="post">
    <label>Name:</label>
    <input type="text" name="name" id="name">
    <label>FatherName:</label>
    <input type="text" name="fname" id="fname">
    <label>Section:</label>
    <input type="text" name="section" id="section">
    <input type="submit" name="submit" onclick="great();">   
    </form>

    <script>
    function great(){
    var ajaxreq = new XMLHttpRequest();
        
    ajaxreq.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200) {
     document.getElementById("output").innerHTML = ajaxreq.responseText;
    }
    }
     data = new  FormData();
    data.append('name',name);
    data.append('fname',fname);
    data.append('section',section);

    newpara = "text="+data;
    ajaxreq.open("POST", "view.php", true);
    ajaxreq.setRequestHeader("Content-type","application/x-www-form-urlencoded")
    ajaxreq.send(newpara);
    
    }


</script>
</body>
</html>