<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
$con = mysqli_connect("localhost","root","","test");

/*
if(mysql_query("create database test",$con)){
echo "database";
}else {
	echo mysql_error();
	}
*/
if(mysqli_query("create table user(id int not null auto_increment,primary key(id),name varchar(25),email varchar(25),pass varchar(25))",$con)){
	echo "Table";
}else {
	echo mysql_error();
	}

?>
</body>
</html>