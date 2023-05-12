<?php
session_start();

$attendance = $_POST['attendance'];

// Connect to the database
require 'config.php';

$date = date("d-m-Y");
$lecture = strtolower($_SESSION['lecture']);
$div =  $_SESSION['Division'];

// Iterate through each element of the $attendance array
foreach ($attendance as $roll_no => $status) {
    // Update the attendance status for the student with the given roll number
    $sql = "UPDATE `$lecture` SET `$date` = '$status' WHERE `Division` = '$div' AND `Roll No.` = '$roll_no'";
    mysqli_query($conn, $sql);
}
// Close the database connection
mysqli_close($conn);


?>