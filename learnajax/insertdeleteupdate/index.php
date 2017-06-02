<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>phptaab.blogspot.in</title>

</head>

<body>
<form method="post">
<table>
	<tr>
		<td>Title:</td>
		<td><input type="text" name="title" class="form-control"/></td>
	</tr>
	<tr>
		<td>Author</td>
		<td><input type="text" name="author" class="form-control"/></td>
	</tr>
	<tr>
		<td>Publisher Name</td>
		<td><input type="text" name="name" class="form-control"/></td>
	</tr>
	<tr>
		<td>Copyright Year</td>
		<td><input type="text" name="copy" class="form-control"/></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td><input type="submit" name="submit" value="add" class="btn btn-success btn-lg"/></td>
	</tr>
</table>
<?php
if (isset($_POST['submit']))
include(db.php);
	
			 		$title     = $_POST['title'];
					$author    = $_POST['author'];					
					$name      = $_POST['name'];
					$copy      = $_POST['copy'];
												
		 mysqli_query($conn,"INSERT INTO `example`(Title,Author,PublisherName,CopyrightYear) 
		 VALUES ('$title','$author','$name','$copy')"); 
				
				
	        }
?>
</form>
<!--<table border="1">
	
			<?php
			include("db.php");
			
				
			$result=mysqli_query($conn,"SELECT * FROM example");
			
			while($test = mysqli_fetch_array($result))
			{
				$id = $test['BookID'];	
				echo "<tr align='center'>";	
				echo"<td><font color='black'>". $test['BookID']. "</font></td>";
				echo"<td><font color='black'>". $test['Title']. "</font></td>";
				echo"<td><font color='black'>". $test['Author']. "</font></td>";
				echo"<td><font color='black'>". $test['PublisherName']. "</font></td>";
				echo"<td><font color='black'>". $test['CopyrightYear']. "</font></td>";	
				echo"<td> <a href ='view.php?BookID=$id'>Edit</a>";
				echo"<td> <a href ='del.php?BookID=$id'><center>Delete</center></a>";
				echo "</tr>";
			}
			mysqli_close($conn);
			?>
</table>-->
<script src="js/bootstrap.js"></script>
<script src="css/bootstrap.css"></script>
</body>
</html>
