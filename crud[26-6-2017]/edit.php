<?php 
include('server.php');
echo $edit_id = $_GET['edit'];

 $result =  mysqli_query($conn,"select  * from insertion where id = '$edit_id'");

 while($row = mysqli_fetch_array($result)){
     $id      = $row['id'];
     $name    = $row['name'];
     $address = $row['address'];
 }


?>
<?php 
if(isset($_POST['update'])){
     $uid       = $_POST['uid'];
     $uname    = $_POST['uname'];
     $uaddress = $_POST['uaddress'];
     if(mysqli_query($conn,"UPDATE `insertion` SET `name`='$uname',`address`='$uaddress' WHERE id = '$uid'")){
         header("location:view.php");
     }
}


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/bootstrap.css">
    <title>Document</title>
</head>
<body>
    
    <form method="POST" action="edit.php" class="form-inline">
        <div class="form-group">
            <div class="input-group">
            <label>Name:</label>
            <input type='hidden' name='uid' value='<?php echo $id?>'>
            <input type="text" name="uname" value='<?php echo $name?>'>
        </div>
        </div>
        <div class="form-group">
            <div class="input-group">
            <label>Address:</label>
            <input type="text" name="uaddress" value='<?php echo $address?>'>
        </div>
        </div>
        <div class="form-group">
             <input type="submit" name="update" class="btn btn-success" value="Update">
        </div>
        </div>       
    </form>
</body>
</html>