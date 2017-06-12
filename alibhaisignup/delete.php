
<?php
  include("conn.php");  

session_start();
//echo $_SESSION['user_id'];
//die();

	$delete_id   =   $_REQUEST['delete'];
	
	
	// sending query
	if(mysqli_query($conn,"DELETE FROM register WHERE id = '$delete_id'")){
		
		if($_SESSION['user_id'] == $delete_id){
			header("Location: logout.php");
		
		}else{
			header("Location: loginprofile.php");
			//echo $_SESSION['user_id'];
		}
			
	}else{
		die(mysqli_error()); 
	}
	 
	
?> 