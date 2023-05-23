<?php
session_start();

$attendance = $_POST['attendance'];

// Connect to the database
require 'config.php';

$date = date("d-m-Y");
$lecture = strtolower($_SESSION['lecture']);
$div = $_SESSION['Division'];

// Iterate through each element of the $attendance array
foreach ($attendance as $roll_no => $status) {
    // Update the attendance status for the student with the given roll number
    $sql = "UPDATE `$lecture` SET `$date` = '$status' WHERE `Division` = '$div' AND `Roll No.` = '$roll_no'";
    mysqli_query($conn, $sql);

    // Increment attended and total lecture counts based on the updated status
    if ($status == 'Present') {
        $sqlAttended = "UPDATE `$lecture` SET `attended_lectures` = `attended_lectures` + 1, `total_lectures` = `total_lectures` + 1 WHERE `Division` = '$div' AND `Roll No.` = '$roll_no'";
    } elseif ($status == 'Absent') {
        $sqlAttended = "UPDATE `$lecture` SET `total_lectures` = `total_lectures` + 1 WHERE `Division` = '$div' AND `Roll No.` = '$roll_no'";
    }

    mysqli_query($conn, $sqlAttended);
}

// Close the database connection
mysqli_close($conn);



?>
