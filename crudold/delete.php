<?php
 include('server.php');
 echo $delete_id = $_GET['delete'];

 if(mysqli_query($conn,"DELETE FROM `insertion` WHERE id= '$delete_id'")){

	header("location:view.php");

 }
 	else{
		die(mysqli_error($conn));  	
	}

?>