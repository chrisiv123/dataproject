<?php
include_once 'includes/dbh.inc.php';

?>
<!DOCTYPE html>
<html>
<head>
   
<title>Books</title>
    <p>JOURNALS</p>
    <link rel="stylesheet" href="includes/linkcs.css">
    </head>
<body>
    
<?php
    $sql = "SELECT 1journal.name,1journal.pages,1author.name_author 
FROM 1journal , 1author 
where 1journal.id_author = 1author.id_author;";
    $results = mysqli_query($con,$sql);
    $wid =  "darkTable";
    echo "<table class=$wid>";
    echo "<tr><th>book name</th><th>pages</th><th>author</th></tr>";
    while ($row = mysqli_fetch_assoc($results)){
         echo "<tr><td>";
        echo $row['name'];
         echo "</td><td>";
        echo $row['pages'];
        echo "</td><td>";
         echo $row['name_author'];
        echo "</td></tr>";
    }
      
    ?>
   
    </body>
</html>