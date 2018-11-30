<?php
include_once 'includes/dbh.inc.php';

?>
<!DOCTYPE html>
<html>
<head>
   
<title>Books</title>
    <p>BOOKS</p>
    <link rel="stylesheet" href="includes/linkcs.css">
    </head>
<body>
    
<?php
    $sql = "SELECT 1book.name,1book.pages,1author.name_author,1book.publishing_date 
FROM 1book , 1author 
where 1book.id_author = 1author.id_author
AND publishing_date >'2015-1-1';";
    $results = mysqli_query($con,$sql);
    $wid =  "darkTable";
    echo "<table class=$wid>";
    echo "<tr><th>book name</th><th>pages</th><th>Author</th><th>Date</th></tr>";
    while ($row = mysqli_fetch_assoc($results)){
         echo "<tr><td>";
        echo $row['name'];
         echo "</td><td>";
        echo $row['pages'];
        echo "</td><td>";
         echo $row['name_author'];
                echo "</td><td>";
                echo $row['publishing_date'];

        echo "</td></tr>";
    }
      
    ?>
   
    </body>
</html>