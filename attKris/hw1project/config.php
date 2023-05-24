<?php

$department = $_SESSION['department'] ;
$servername = "localhost";
$username = "root";
$password1 = "";
$dbname = "$department";
$conn = mysqli_connect($servername, $username, $password1, $dbname);
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

function customexceptionhandler($exception){
    echo "Some unknown exception has occured. Please restart the procedure.";
}

set_exception_handler('customexceptionhandler');

function customerrorhandler($errno, $errstr, $errfile, $errline) {
  echo "<b>Custom error:</b> [$errno] $errstr<br>";
  echo " Error on line $errline in $errfile<br>";
  die();
}

set_error_handler('customerrorhandler');

// $_SESSION['subjects'] = $subjects;
?>