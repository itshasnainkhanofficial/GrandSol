<?php
  include("db.php");  

	$id =$_REQUEST['BookID'];
	
	
	// sending query
	mysqli_query($conn,"DELETE FROM example WHERE BookID = '$id'")
	or die(mysqli_error());  	
	
	header("Location: index.php");
?> 