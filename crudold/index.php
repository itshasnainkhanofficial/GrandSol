<?php
include("server.php");
session_start();
$name = "";
$address = "";
$id = 0;
$edit_state= false;
if(isset($_POST["save"])){
    $name      = $_POST["name"];
    $address   = $_POST["address"];

$query = "INSERT INTO `insertion`(`name`, `address`) VALUES ('$name','$address')";
$_SESSION['mesg'] = "Address Saved";
mysqli_query($conn,$query);



}

 ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="bootstrap-4.0.0-alpha.6-dist/css/bootstrap.min.css">
    <title>Document</title>
</head>
<body>
    <?php if(isset($_SESSION['mesg']));?>
        <div>
            <?php 
                echo $_SESSION['mesg'];
                unset($_SESSION['mesg'])
            ?>
        </div>
    <h1>Insert update delete</h1>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Address</th>
                <th colspan="2" >Action</th>
            </tr>
        </thead>
        <tbody>
            <?php 
            
            $result = mysqli_query($conn,"select * from insertion");
            while ($row = mysqli_fetch_array($result)){
                ?>
            <tr>
                <td><?php echo $row["name"]; ?></td>
                <td><?php echo $row["address"]; ?></td>
                <td><a href="#">Edit</a></td>
                <td><a href="#">Delete</a></td>
            </tr>
            <?php
            }
            
            ?>
        </tbody>
    </table>

    <form method="POST" action="index.php" class="form-inline">
        <div class="form-group">
            <div class="input-group">
            <label>Name:</label>
            <input type="text" name="name">
        </div>
        </div>
        <div class="form-group">
            <div class="input-group">
            <label>Address:</label>
            <input type="text" name="address">
        </div>
        </div>
        <div class="form-group">
             <div class="input-group">
                 <?php if($edit_state == false) ;?>
             <input type="submit" name="save" class="btn btn-success" value="Save">
               <?php else  ?>
             <input type="submit" name="Update" class="btn btn-success" value="Update">
             
        </div>
        </div>       
    </form>
    
</body>
</html>