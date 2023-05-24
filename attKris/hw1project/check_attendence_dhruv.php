<?php

    $time=$_POST['time'];
    $lecture=$_POST['lecture'];
    $password=$_POST['password'];
    $div = $_POST['Division'];

    // echo $password;

    $att_start_time = date('H:i:s');
    $date = date('d-m-y');

    // if($time > date('H:i:s')){
    //     echo "Lecture not started yet";
    // }
    // else{
        session_start();
        require 'config.php';

        // echo $password;

        $query = "SELECT * FROM `pass_holder` WHERE `lecture` = '$lecture'";
        $result = mysqli_query($conn, $query);
        if(mysqli_num_rows($result) != 0){
          die("The lecture row already exists in password holder. please delete the existing password to continue.");
        }

        $query = "SELECT * FROM `$lecture`";
        $result = mysqli_query($conn, $query);
        $collist = mysqli_fetch_field($result);
        foreach($collist as $val){
          if($val->name == $date){
            die("The Date column".$date." already exists in subject".$lecture.". Delete the existing column to continue.");
          }
        }

        $query = "INSERT INTO `pass_holder` (`lecture` , `att_start_time` , `password` , `Division`) VALUES ('$lecture' , '$att_start_time' , '$password' , '$div')";
        if(!mysqli_query($conn, $query)){
            die('query failed to execute, please go back and try again.');
        }

        $query2 = "ALTER TABLE `$lecture` ADD `$date` varchar(10)";
        if(!mysqli_query($conn, $query2)){
            die("oops-> something went wrong. please try again.");
        }


        mysqli_close($conn);

    // }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">    
    <title>Login</title>
    
    <style>
      form{
        width: 400px;
        margin: 100px auto;
      }
      body{
        background-color: black;
        background: url(bg3.jpeg);
        background-repeat: no-repeat;
        background-size: cover;
      }
    </style>
    
</head>
<body>


    <form action="endattendence.php" method="post" class="p-4 bg-light rounded">
        
        <h2 class="mb-4 text-center">Attendance System Password Setup by teacher</h2>
        
        <h3 class="mb-4 text-center">For lecture of <?php echo $lecture; ?> at <?php echo $time ?></h3>

        <h3 class="mb-4 text-center">The password you have setup is<br><?php echo $password; ?></h3>

        <input type="hidden" value="<?php echo $time ?>" name="time">
        <input type="hidden" value="<?php echo $lecture ?>" name="lecture">
        <input type="hidden" value="<?php echo $div ?>" name="Division">
        <input type="hidden" value="<?php echo $password ?>" name="password">
        
        <h3 class="mb-4 text-center">Please press the below button only when all the students have registered attendence.</h3>

        <button type="submit" class="btn btn-primary w-100">End Attendence</button>
        
      </form>

      <h3 id="message" class="mb-3 text-center" style="display: none;">Attendance in progress. Please wait for 5 min and do not close this page in the mean time.</h3>
      
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script> 
    
</body>
</html>
