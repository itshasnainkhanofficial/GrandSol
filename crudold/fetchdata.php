   <?php 
            include('server.php');

            $result = mysqli_query($conn,"select * from insertion");
                while ($row = mysqli_fetch_array($result)){
                    ?>
                    <tr>
                    
                    <td><?php echo $row['id']?></td>
                    <td><?php echo  $row['name']?></td>
                    <td><?php echo $row['address']?></td>
                    <td><a href="edit.php?edit=<?php echo $row['id']; ?>">Edit</a></td>
                    <td><a href="delete.php?delete=<?php echo $row['id']; ?>">Delete</a></td>
                    </tr>
                    <?php
                }
            ?>