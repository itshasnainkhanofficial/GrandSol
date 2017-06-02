<?php  
	$conn = mysqli_connect('localhost', 'root', '','jobs');
	 if (!$conn)
    {
	 die('Could not connect: ' . mysqli_error());
	}
	mysqli_query($conn,'jobs');
?>

    