
<?php
        include('conn.php') ;
        
         if (isset($_POST['submit'])){

        mysqli_query($conn,"table1");

        $name         = $_POST["name"];
        $fathername   = $_POST["fname"];
        $section          = $_POST["section"];

        mysqli_query($conn,"INSERT INTO `table1` (`Name`, `Father_Name`, `Section`) VALUES ('$name',' $fathername','$section')");
       
       
        }

?>