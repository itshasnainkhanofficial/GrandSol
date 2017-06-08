<?php 
 //Start the Session
$conn = mysqli_connect("localhost","root","","loginsystem");

if(!$conn){
    die("Connection Failed" . mysqli_connect_error());
}


session_start();
//3. If the form is submitted or not.
//3.1 If the form is submitted
if (isset($_POST['signin'])){
//3.1.1 Assigning posted values to variables.
$username = $_POST['name'];
$password = $_POST['pass'];
//3.1.2 Checking the values are existing in the database or not
$query = "SELECT * FROM `register` WHERE username='$username' and password='$password'";
 
$result = mysqli_query($conn, $query);

$count = mysqli_num_rows($result);
echo $count;
//3.1.2 If the posted values are equal to the database values, then session will be created for the user.
if ($count == 1){
$_SESSION['name'] = $username;
header("location:loginprofile.php"); 
}else{
//3.1.3 If the login credentials doesn't match, he will be shown with an error message.
echo "Invalid Login Credentials.";
}
}
//3.1.4 if the user is logged in Greets the user with message
if (isset($_SESSION['username'])){

$username = $_SESSION['username'];
//   header("Location: loginprofile.php");
}else{
    
//3.2 When the user visits the page first time, simple login form will be displayed.
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
<form method="POST" action="login.php" autocomplete="off">

    <div class="form-group text-center">
        <h1 class="">Sign In</h1>
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
              <span class="input-group-addon"><span class="fa fa-key"></span></span>
                 <input type="password" name="pass" class="form-control" placeholder="Enter Password" maxlength="15" />
                </div>
                <span class="text-danger"></span>
            </div>



            <div class="form-group">
             <button type="submit" class="btn btn-block btn-primary" name="signin"><i class="fa fa-user-plus" aria-hidden="true"></i> Sign Up</button>
            </div>

            <div class="form-group">
                <i class="fa fa-sign-in" aria-hidden="true"></i>
             <a href="register.php">Sign Up Here</a>
            </div>
</form>


</div>
<script src="jquery-3.2.1.min.js"></script>
<script src="bootstrap-4.0.0-alpha.6/dist/js/bootstrap.min.js"></script>
</body>
</html>