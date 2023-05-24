<?php


$password = '01-01-2004';
$hashed_password = password_hash($password, PASSWORD_DEFAULT);
$conn = mysqli_connect("localhost","root","","ce");

$sql = "UPDATE `teachers_data` SET `DOB` = '$hashed_password'";

$result = mysqli_query($conn,$sql);

if(!$result){
    echo "Error";
}
else{
    echo "Success";
}



?>