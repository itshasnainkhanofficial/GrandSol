<?php 
session_start();

if( isset($_SESSION['name']) == ""){
  header("Location: register.php");
 } 

// session_destroy();
// unset($_SESSION['name']);

echo "You are Log in to your profile";
 echo  $_SESSION['name'] ;


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="bootstrap-4.0.0-alpha.6/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<body>
    <div class="text-right"><i class="fa fa-sign-out" aria-hidden="true"></i><a href="logout.php"> Log out</a></div>

</body>
</html>