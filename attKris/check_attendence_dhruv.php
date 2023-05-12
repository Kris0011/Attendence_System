<?php

    $time=$_POST['time'];
    $lecture=$_POST['lecture'];
    $password=$_POST['password'];
    $div = $_POST['Division'];

    // echo $password;

    $att_start_time = date('H:i:s');

    // if($time > date('H:i:s')){
    //     echo "Lecture not started yet";
    // }
    // else{
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "att1";

        $conn = mysqli_connect($servername, $username, $password, $dbname);

        // Check if the connection was successful
        if (!$conn) {
            die('Connection failed: ' . mysqli_connect_error());
        }

        echo $password;

        $query = "INSERT INTO `pass_holder` (`lecture` , `att_start_time` , `password` , `Division`) VALUES ('$lecture' , '$att_start_time' , '$password' , '$div')";
        if(!mysqli_query($conn, $query)){
            die('query failed to execute, please go back and try again.');
        }



        // sleep(30);

        // $query = "DELETE FROM `pass_holder` WHERE  `lecture` = '$lecture'";
        // mysqli_query($conn,$query);

        echo "Attendence taken successfully.";
        mysqli_close($conn);

    // }

?>