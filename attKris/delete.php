<?php
    $id=$_GET['id'];
    $conn = mysqli_connect("localhost","root","","ce") or die("connection Failed");
    $query = "DELETE FROM students WHERE `ID` = '$id'";
    $result = mysqli_query($conn, $query);
    header("Location:admin.php");
    exit();
?> 