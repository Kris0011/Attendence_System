<?php

$department = $_SESSION['department'] ;
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "$department";
$conn = mysqli_connect($servername, $username, $password, $dbname);
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}


if($department=='CE'){
  $div1='A';
  $div2='B';
  $array = array('pps-2', 'maths-2', 'physics','english');

}
elseif($department=='IT'){
  $div1='E';
  $div2='F';
  $array = array('pps-2', 'maths-2', 'physics','english');

}
$_SESSION['div1']=$div1;
$_SESSION['div2']=$div2;
$_SESSION['conn']=$conn;
// $_SESSION['subjects'] = $subjects;
?>