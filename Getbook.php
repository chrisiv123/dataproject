<?php
include_once 'includes/dbh.inc.php';
?>
<!DOCTYPE html>
<html>
<head>
    
<title>Books</title>
   
    
    </head>
<body>
    <form action="includes/sub.php" method="POST">
    <input type="text" name="first" placeholder="First Name">  
        <br>
        <input type="text" name="last" placeholder="Last Name"> 
        <br>
        <input type="text" name="email" placeholder="E-mail"> 
        <br>
        <button type="submit" name="submit">Subscribe</button>
    
    </form>
    
    
 

    


    </body>
</html>