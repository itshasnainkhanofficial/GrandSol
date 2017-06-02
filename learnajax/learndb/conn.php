<?php

 $conn = mysqli_connect("localhost","root","","learndb");

    if(!$conn){
    die("Could not connect" . mysqli_error());
     }

?>