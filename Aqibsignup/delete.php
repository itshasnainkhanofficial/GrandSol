
<?php
  include("conn.php");  
session_start();
	$delete_id   =   $_REQUEST['delete'];
	
	
	// sending query
	mysqli_query($conn,"DELETE * FROM `register` WHERE id = '$delete_id'")
	or die(mysqli_error());  	
	
	header("Location: loginprofile.php");
?> 
