<?php
session_start();

$ID = $_POST['ID'];
$pass = $_POST['password'];
$role = $_POST['role'];
$department = $_POST['department'];

$_SESSION['department'] = $department;

require 'config.php';

if ($role == 'teacher') {
  $sql = "SELECT * FROM `teachers_data` WHERE `ID`='$ID' AND `Password`='$pass'";
} 
else {
  $sql = "SELECT * FROM `students` WHERE `ID`='$ID' AND `Roll No.`='$pass'";
}

$result = mysqli_query($conn, $sql);


if (mysqli_num_rows($result) == 1) {
  $row = mysqli_fetch_assoc($result);
  $name = $row['Name'];
  $_SESSION['ID'] = $ID;
  $_SESSION['pass'] = $pass;
  $_SESSION['role'] = $role;
  $_SESSION['name'] = $name;
  
  if ($role == 'student') {
    $div = $row['Division'];
    $image_id = $row['image_id'];
    $_SESSION['Division'] = $div ;
    $_SESSION['image_id'] = $image_id ;
    header("Location: sdashboard_new.php");
    exit();
  }
  else {
    $lecture = $row['lecture'];
    $_SESSION['lecture'] = $lecture ;
    header("Location: tdashboard.php");
    exit();
  }
} 
else {
  echo "Invalid login.<a href='index.html'>Try again</a>";
  
}

mysqli_close($conn);
?>
