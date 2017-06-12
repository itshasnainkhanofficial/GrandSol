

<?php
session_start();
  include("conn.php");  

	$delete_id   =   $_GET['delete'];
	
	
	// sending query
	if(mysqli_query($conn,"DELETE FROM register WHERE id = '$delete_id'")){
		header("Location: loginprofile.php");
	}
	 else{ 
		 
		 die(mysqli_error());
	 }  	
	
	
?> 