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
    <?php 
include("conn.php");
session_start();

if(isset($_SESSION['name']) == ""){
  header("Location: register.php");
 } 
else{

echo  $_SESSION['name'] . " You are Log in to your profile";

}
?>
            <div class="text-right"><a href="logout.php" class="btn btn-danger"><i class="fa fa-sign-out" aria-hidden="true"></i> Log out</a></div>
            <div class="form-group">
                 
                <a href="register.php" class="btn btn-primary"><i class="fa fa-sign-in" aria-hidden="true"></i> Sign Up Here</a>
            </div>


            <table class="table table-hover table-condensed table-striped table-bordered text-center">
            <thead class="thead-inverse ">
            <tr>
                <th>id</th>
                <th>User Name</th>
                <th>Email Address</th>
                <th colspan="2">Action</th>
            </tr>
            </thead>
            <tbody>
            <?php 
            include("conn.php");
           $result =  mysqli_query($conn,"SELECT * FROM `register` ");
             while ($row = mysqli_fetch_array($result)){            
            ?>
            <tr>
                <?php $thisid = $row['id']; ?>
                <td><?php echo $row['id']; ?></td>
                <td><?php echo $row['username'];?></td>
                <td><?php echo $row['email'];?></td>
                <td><a href="edit.php?edit = <?php echo $thisid ?>">Edit</td>
                <td><a href="delete.php?delete =<?php echo $thisid ?>">Delete</td>
            </tr>
             <?php
            }
            ?>
            </tbody>
            </table>
        </div>

</body>
</html>
         