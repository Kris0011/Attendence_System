<?php
$time=$_POST['time'];
$lecture=$_POST['lecture'];
$password=$_POST['password'];
$div = $_POST['Division'];

session_start();
require 'config.php';

$query = "DELETE FROM `pass_holder` WHERE  `lecture` = '$lecture'";
if(mysqli_query($conn,$query))
    echo "<h1>Attendence taken successfully.</h1>";
else
    die("could not end attendence.Error:".mysqli_error($conn));
?>
