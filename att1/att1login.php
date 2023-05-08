<?php

$ID = $_POST['ID'];
$pass = $_POST['password'];
$role = $_POST['role'];

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "att1";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

if ($role == 'teacher') {
    $sql = "SELECT * FROM `teachers_data` WHERE `ID`='$ID' AND `Password`='$pass'";
} 
else {
    $sql = "SELECT * FROM `students_datab` WHERE `ID`='$ID' AND `Roll No.`='$pass'";
}


$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) == 1) {
    $row = mysqli_fetch_assoc($result);
    $name = $row['Name'];
  session_start();
  $_SESSION['ID'] = $ID;
  $_SESSION['pass'] = $pass;
  $_SESSION['role'] = $role;
  $_SESSION['name'] = $name;
  
    if($role=='student'){
        header("Location: sdashboard.php");
    }
    else{
        header("Location: tdashboard.php");
    }
  exit();
} else {

  echo "Invalid login.";
}

mysqli_close($conn);
?>
