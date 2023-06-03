<?php
session_start();

$ID = $_POST['ID'];
$pass2 = $_POST['password'];
$pass = isset($_POST['password']) ? date('d-m-Y', strtotime($_POST['password'])) : date('d-m-Y');
$role = $_POST['role'];
$department = $_POST['department'];

$_SESSION['department'] = $department;

require 'config.php';

if ($role == 'teacher') {
  $sql = "SELECT * FROM `teachers_data` WHERE `ID`='$ID'";
  $result = mysqli_query($conn, $sql);
  if (mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);
    if (password_verify($pass, $row['DOB'])) {
      // Login successful, redirect to teacher dashboard
      $name = $row['Name'];
      $_SESSION['ID'] = $ID;
      $_SESSION['pass'] = $pass;
      $_SESSION['role'] = $role;
      $_SESSION['name'] = $name;
      $lecture = $row['lecture'];
      $_SESSION['lecture'] = $lecture;

      header('Location: tdashboard.php');
    } else {
      // Password incorrect, display error message
      
      echo '<script>
        if(confirm("Incorrect password.Press `ok` or `cancel` to go back to login page.")){
          window.location.replace("index.html");
        }
        else{
          window.location.replace("index.html");
        }
      </script>';
      // header('index.html');
    }
  } else {
    // Teacher ID not found, display error message
    echo '<script>
        if(confirm("Teacher ID not found.Press `ok` or `cancel` to go back to login page.")){
          window.location.replace("index.html");
        }
        else{
          window.location.replace("index.html");
        }
      </script>';
  }
} elseif($role == 'student') {
  $sql = "SELECT * FROM `students` WHERE `ID`='$ID'";
  $result = mysqli_query($conn, $sql);
  if (mysqli_num_rows($result) > 0) {

    $row = mysqli_fetch_assoc($result);
    if (password_verify($pass, $row['DOB'])) {
      // Login successful, redirect to student dashboard
      $name = $row['Name'];
      $no = $row['Roll No.'];
      $_SESSION['ID'] = $ID;
      $_SESSION['pass'] = $pass;
      $_SESSION['role'] = $role;
      $_SESSION['name'] = $name;
      $_SESSION['Roll No.'] = $no;
      $div = $row['Division'];
      $image_id = $row['image_id'];
      $_SESSION['Division'] = $div;
      $_SESSION['image_id'] = $image_id;
      header('Location: sdashboard.php');
    } else {
      // Password incorrect, display error message
      echo '<script>
        if(confirm("Incorrect password.Press `ok` or `cancel` to go back to login page.")){
          window.location.replace("index.html");
        }
        else{
          window.location.replace("index.html");
        }
      </script>';
    }
  } else {
    // Student ID not found, display error message
    echo '<script>
        if(confirm("Student ID not found.Press `ok` or `cancel` to go back to login page.")){
          window.location.replace("index.html");
        }
        else{
          window.location.replace("index.html");
        }
      </script>';
  }
}
elseif($role == 'admin'){
    $sql=  "SELECT * FROM `admin` WHERE `Name`='$ID' AND `Password`='$pass2'";
    $result = mysqli_query($conn, $sql);
    if(mysqli_num_rows($result) > 0){
      header('Location: admin.php');
    }
    else{
      echo '<script>
        if(confirm("Incorrect Admin login details.Press `ok` or `cancel` to go back to login page.")){
          window.location.replace("index.html");
        }
        else{
          window.location.replace("index.html");
        }
      </script>';
    }



}

mysqli_close($conn);
?>
