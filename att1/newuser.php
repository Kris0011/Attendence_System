<?php

$ID = $_POST['ID'];
$pass = $_POST['password'];
$role = $_POST['role'];
$name =$_POST['Name'];
$subject = $_POST['subject'];

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
    echo "This ID already exists. Please try again with new ID.";
}

else if(mysqli_num_rows($resultname)!=0){
    echo "This name already exists. Please try again with new name.";
}

else{
    if($role == 'teacher'){
        $addstmt="INSERT INTO `teachers_data` (`ID`,`Password`,`Name`,`Subject`) VALUES ('$ID','$pass','$name','$subject')";
    }
    else{
        $addstmt="INSERT INTO `students_datab` (`ID`,`Roll No.`,`Name`) VALUES ('$ID','$pass','$name')";
    }
    $result=mysqli_query($conn,$addstmt);
    if($result == 'true'){
        echo "New User created succesfully. You will be sent back to login page. Login with your new password and id.";
        sleep(5);
        header("Location: att1login.html");
    }
    else{
        echo "Something went wrong. Please try again.";
    }
}

?>