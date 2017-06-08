<?php 
session_start();
//  if( isset($_SESSION['name']) !="" ){
//   header("Location: loginprofile.php");
//  }
$conn = mysqli_connect("localhost","root","","loginsystem");

if(!$conn){
    die("Connection Failed" . mysqli_connect_error());
}


 if ( isset($_POST['signup']) ) {
   $name    = $_POST["name"];
   $email   = $_POST["email"];
   $pass    = $_POST["pass"];

   mysqli_query($conn,"INSERT INTO `register`(`password`, `username`, `email`) VALUES ('$pass','$name','$email')");
   $_SESSION['name'] = $name;
  header("Location: loginprofile.php");
}

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
<div class="container">
<div class="text-right"><i class="fa fa-sign-out" aria-hidden="true"></i><a href="logout.php"> Log out</a></div>
<form method="POST" action="register.php" autocomplete="off">

    <div class="form-group text-center">
        <h1 class="">Sign Up</h1>
    </div>
    <div class="error"> </div>

        <div class="form-group">
              <div class="input-group">
              <span class="input-group-addon"><span class="fa fa-user"></span></span>
                    <input type="text" name="name" class="form-control" placeholder="Enter Name" maxlength="50"/>
                </div>
                <span class="text-danger"></span>
            </div>


             <div class="form-group">
                 <div class="input-group">
                 <span class="input-group-addon"><span class="fa fa-envelope"></span></span>
                     <input type="email" name="email" class="form-control" placeholder="Enter Your Email" maxlength="40" />
                </div>
                <span class="text-danger"></span>
            </div>


            <div class="form-group">
             <div class="input-group">
              <span class="input-group-addon"><span class="fa fa-key"></span></span>
                 <input type="password" name="pass" class="form-control" placeholder="Enter Password" maxlength="15" />
                </div>
                <span class="text-danger"></span>
            </div>



            <div class="form-group">
             <button type="submit" class="btn btn-block btn-primary" name="signup"><i class="fa fa-user-plus" aria-hidden="true"></i> Sign Up</button>
            </div>

            <div class="form-group">
                <i class="fa fa-sign-in" aria-hidden="true"></i>
             <a href="login.php">Sign in Here</a>
            </div>
</form>


</div>
<script src="jquery-3.2.1.min.js"></script>
<script src="bootstrap-4.0.0-alpha.6/dist/js/bootstrap.min.js"></script>
</body>
</html>