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
        <label>Name</label>
        <input type="text" name'name'>

        <label>Fater Name</label>
        <input type="text" name'fname'>

        <label>Section</label>
        <input type="text" name'section'>
        
        <input type='submit' name="submit">
   


<?php

    if(isset($_POST["submit"])){
        $conn = mysqli_connect("localhost","root","","learndb");
        if(!conn)
        {
            die("Could not connected" . mysqli_error());
        }
        mysqli_query($conn ,'table1');
                    $name        = $_POST['name'] ;
					$fname       = $_POST['fname'] ;					
					$section     = $_POST['section'];

       mysqli_query($conn,"INSERT INTO `table1`(`Name`, `Father_Name`,
        `Section`) VALUES ('$name','$fname','$section')");

    }
?>
</form>
</body>
</html>