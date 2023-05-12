<?php
session_start();
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "att1";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get current date in DD-MM-YYYY format
$date = date("d-m-y");
$lecture = strtolower($_SESSION['lecture']);
$div = $_SESSION['Division'];


// sql to add a new column
$sql = "ALTER TABLE `$lecture` ADD `$date` VARCHAR(10) DEFAULT 'None'";
$result = mysqli_query($conn, $sql);


if ($result === TRUE) {
    $sql2 = "UPDATE `$lecture` SET `$date` = 'Absent' WHERE `Division` = 'A' ";
} else {
    echo "Error creating column: " . $conn->error;
}

$conn->close();
?>