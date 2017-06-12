<?php 
include("conn.php");

if(isset($_POST['save'])){

$uid = $_POST['user_id'];
$uname = $_POST['uname'];
$uemail = $_POST['uemail'];
$upass = $_POST['upass'];

if(mysqli_query($conn,"UPDATE `register` SET `password`='$upass',`username`='$uname',
`email`='$uemail' WHERE id = '$uid' ")){
header("location: loginprofile.php");
}


}

$edit_id = $_GET['edit'];

$queryselect = mysqli_query($conn,"SELECT * FROM `register` WHERE id = $edit_id ");

while ($row = mysqli_fetch_array($queryselect)){
    $showid     = $row[0];
    $password   = $row[1];
    $username   = $row[2];
    $email      = $row[3];
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
    <title>Document</title>
</head>
<body>
<div class="container">
    
<form method="POST" action="edit.php" autocomplete="off">

    <div class="form-group text-center">
        <h1 class="">Sign Up</h1>
    </div>
    <div class="error"> </div>

        <div class="form-group">
              <div class="input-group">
              <span class="input-group-addon"><span class="fa fa-user"></span></span>
              <input type="hidden" value="<?= $showid  ?>" name="user_id" >
                    <input type="text" name="uname" value="<?php echo $username ?>" class="form-control" placeholder="Enter Name" maxlength="50"/>
                </div>
                <span class="text-danger"></span>
            </div>


             <div class="form-group">
                 <div class="input-group">
                 <span class="input-group-addon"><span class="fa fa-envelope"></span></span>
                     <input type="email" name="uemail" value="<?php echo $email?>" class="form-control" placeholder="Enter Your Email" maxlength="40" />
                </div>
                <span class="text-danger"></span>
            </div>


            <div class="form-group">
             <div class="input-group">
              <span class="input-group-addon"><span class="fa fa-key"></span></span>
                 <input type="password" name="upass" value="<?php echo $password?>" class="form-control" placeholder="Enter Password" maxlength="15" />
                </div>
                <span class="text-danger"></span>
            </div>



            <div class="form-group">
             <button type="submit" class="btn btn-block btn-primary" name="save"><i class="fa fa-user-save" aria-hidden="true"></i> Save</button>
            </div>
          
</form>
</div>

</body>
</html>