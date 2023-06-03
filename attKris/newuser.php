<?php

$ID = $_POST['ID'];
$pass = $_POST['password'];
$role = $_POST['role'];
$name =$_POST['Name'];
$lecture = $_POST['lecture'];

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "att1";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

if ($role == 'teacher') {
    $sql1 = "SELECT * FROM `teachers_data` WHERE `ID` = '$ID'";
    $sql2 = "SELECT * FROM `teachers_data` WHERE `Name` = '$name'";
} 
else {
    $sql1 = "SELECT * FROM `students_datab` WHERE `ID` = '$ID'";
    $sql2 = "SELECT * FROM `students_datab` WHERE `Name` = '$name'";
}

$resultid=mysqli_query($conn,$sql1);
$resultname=mysqli_query($conn,$sql2);


if(mysqli_num_rows($resultid)!=0){
    echo "<h1>This ID already exists. Please try again with new ID.</h1>";
}

else if(mysqli_num_rows($resultname)!=0){
    echo "<h1>This name already exists. Please try again with new name.</h1>";
}

else{
    if($role == 'teacher'){
        $addstmt="INSERT INTO `teachers_data` (`ID`,`Password`,`Name`,`lecture`) VALUES ('$ID','$pass','$name','$lecture')";
    }
    else{
        $addstmt="INSERT INTO `students_datab` (`ID`,`Roll No.`,`Name`) VALUES ('$ID','$pass','$name')";
    }
    $result=mysqli_query($conn,$addstmt);
    if($result){
        echo "<h1>New User created succesfully. You will be sent back to login page. Login with your new password and id.</h1>";
        sleep(5);
        header("Location: login.html");
    }
    else{
        echo "<h1>Something went wrong. Please try again.</h1>";
    }
}

?>
