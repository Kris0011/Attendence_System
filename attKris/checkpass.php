<?php

$time = $_POST['time'];
$lecture = $_POST['lecture'];
$div = $_POST['Division'];
$name = $_POST['name'];
$studentpass = $_POST['password'];
// $updatecol = strtolower($lecture);

session_start();
$roll = $_SESSION['Roll No.'];
$date = date('d-m-Y');

require 'config.php';

$query = "SELECT * FROM `pass_holder` WHERE `lecture` = '$lecture'";
$result = mysqli_query($conn,$query);
$row = mysqli_fetch_assoc($result);
$teacherpass = $row['password'];

// function colno($lecture){
//     if($lecture == "PPS-2")
//         return 10;
//     if($lecture == "Maths-2")
//         return 11;
//     if($lecture == "Physics")
//         return 12;
//     if($lecture == "English")
//         return 13;
//     if($lecture == "Env. Studies")
//         return 14;
// }

if($studentpass == $teacherpass){
    $getquery = "SELECT * FROM `students` WHERE `Roll No.` = '$roll'";
    $getresult = mysqli_query($conn, $getquery);
    $getrow = mysqli_fetch_assoc($getresult);
    echo $lecture;
    echo $name;
    // $colno = colno($lecture);
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
       echo '<h1 style="  text-align:center;">attendence successful '.$lecture.' '.$date.' '.$roll.'</h1>';
    }
}
else{
    echo '<script>
        if(confirm("Incorrect password For attendence.Press `ok` or `cancel` to go back to login page.")){
          window.location.replace("index.html");
        }
        else{
          window.location.replace("index.html");
        }
      </script>';
}

?>