<?php 
 session_start();

echo "You are Log out to your profile";
 echo  $_SESSION['name'] ;
 echo $_SESSION['email'] ;
 echo $_SESSION['pass'] ;

?>