    
    <?php
include_once 'dbh.inc.php';
$first=$_POST['first'];
$last=$_POST['last'];
$email=$_POST['email'];
    $sql= "INSERT INTO 1sub (first_name,Last_name,Email) VALUES ($first,$last,$email);";
    mysqli_query($con,$sql);        
  header("Location:../index.php");
        