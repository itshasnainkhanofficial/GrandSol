<?php
//provide your hostname, username and dbname
$host="localhost"; 
$username="root";  
$password="";
$db_name="books"; 
//$con=mysql_connect("$host", "$username", "$password")or die("cannot connect");
$con=mysqli_connect("$host", "$username", "$password","$db_name");
$book_name = $_POST['book_name'];
$sql = "select book_name from book_mast where book_name LIKE '$book_name%'";
$result = mysqli_query($con,$sql);
while($row = mysqli_fetch_array($result))
{
echo "<p>".$row['book_name']."</p>";
}
?>
