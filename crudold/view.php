<?php
include("server.php");
if(isset($_POST['insert'])){
 $name      = $_POST['name'];
 $address   = $_POST['address'];
    mysqli_query($conn,"INSERT INTO `insertion`(`name`, `address`) VALUES ('$name','$address')");

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
   
    <h1>Insert</h1>
    

    <form method="POST" action="" class="form-inline">
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
             <input type="submit" name="insert" class="btn btn-success" value="insert" onclick='loadDoc()'>
        </div>
        </div>       
    </form>
    
<h1 class='text-center'>View</h1>
    <table class="table table-border table-striped table-hover">
        <thead class="table-inverse">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Address</th>
                <th colspan="2" >Action</th>
            </tr>
        </thead>
        <tbody id='demo'>
            <?php 
            include('server.php');

            $result = mysqli_query($conn,"select * from insertion");
                while ($row = mysqli_fetch_array($result)){
                    ?>
                    <tr>
                    
                    <td><?php echo $row['id']?></td>
                    <td><?php echo  $row['name']?></td>
                    <td><?php echo $row['address']?></td>
                    <td><a href="edit.php?edit=<?php echo $row['id']; ?>">Edit</a></td>
                <td><a href="delete.php?delete=<?php echo $row['id']; ?>">Delete</a></td>
                    </tr>
                    <?php
                }
            ?>
        </tbody>
    </table>
    <script src='app.js'></script>
</body>
</html>

<!--function loadDoc() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("demo").innerHTML =
      this.responseText;
    }
  };
  xhttp.open("GET", "fetchdata.php", true);
  xhttp.send();
}-->