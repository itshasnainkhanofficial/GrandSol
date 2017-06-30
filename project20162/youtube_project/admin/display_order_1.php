<?php
include "header.php";
include "menu.php";
$link=mysqli_connect("localhost","root","");
mysqli_select_db($link,"youtube_project");
?>
      
        <div class="grid_10">
            <div class="box round first">
                <h2>
                    Order Items</h2>
                <div class="block">
                <?php
                    $id=$_GET["id"];
                $res=mysqli_query($link,"select * from confirm_order_product where order_id=$id");
                echo "<table border='1'>";
                echo "<tr>";
                echo "<td >"; echo "product image"; echo "</td>";
                echo "<td >"; echo "product name"; echo "</td>";
                echo "<td >"; echo "product price"; echo "</td>";
                echo "<td >"; echo "product qty"; echo "</td>";
                echo "<td >"; echo "product total"; echo "</td>";
                echo "</tr>";
                while($row=mysqli_fetch_array($res))
                {
                    echo "<tr>";
                    echo "<td valign='top'>"; ?> <img src="<?php echo $row["product_image"]; ?>" height="100" width="100"> <?php echo "</td>";
                    echo "<td valign='top'>"; echo $row["product_name"]; echo "</td>";
                    echo "<td valign='top'>"; echo $row["product_price"]; echo "</td>";
                    echo "<td valign='top'>"; echo $row["product_qty"]; echo "</td>";
                    echo "<td valign='top'>"; echo $row["product_total"]; echo "</td>";
                    echo "</tr>";

                }
                echo "</table>";
                 ?>
                </div>
            </div>
<?php
include "footer.php";  
  
?>         
     