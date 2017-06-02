
<h1>View</h1>
<table border="1">

<tr>
<th>ID</th>
<th>Name</th>
<th>Father Name</th>
<th>Section</th>
</tr>
<?php
include("conn.php");

$result = "SELECT * FROM table1";
 $res = mysqli_query($conn,$result);

 while($row = mysqli_fetch_array($res)) {   

?>
<tr>
<td><?= $row['id'] ?></td>
<td><?= $row['Name']; ?></td>
<td><?= $row['Father_Name']; ?></td>
<td><?= $row['Section']; ?></td>
</tr>

<?php
}
?>

</table>



