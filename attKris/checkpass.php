<?php

$time = $_POST['time'];
$lecture = $_POST['lecture'];
$div = $_POST['Division'];
$name = $_POST['name'];
$studentpass = $_POST['password'];

session_start();
$roll = $_SESSION['pass'];
$date = date('d-m-Y');

require 'config.php';

$query = "SELECT * FROM `pass_holder` WHERE `lecture` = '$lecture'";
$result = mysqli_query($conn,$query);
$row = mysqli_fetch_assoc($result);
$teacherpass = $row['password'];

if($studentpass == $teacherpass){
    $getquery = "SELECT * FROM `students` WHERE `Roll No.` = '$roll'";
    $getresult = mysqli_query($conn, $getquery);
    $getrow = mysqli_fetch_assoc($getresult);
    $currentattendence = $getrow[$lecture];
    $currentattendence++;
    $newquery = "UPDATE `students` SET `$lecture` = '$currentattendence' WHERE `Roll No.` = '$roll'";
    $query3 = "UPDATE `$lecture` SET `$date` = 'Present' WHERE `Roll No.` = '$roll'";
    if(!mysqli_query($conn , $query3))
        die("subject presence not added!");
    

    if(!mysqli_query($conn, $newquery)){
        die("something went wrong, please try again.");
    }
    else{
        echo "attendence successful".$currentattendence." ".$lecture;
    }
}
else{
    echo "Invalid password.";
}

?>