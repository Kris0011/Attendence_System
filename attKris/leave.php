<?php
    $name = $_POST['fname'];
    $Roll = $_POST['rollno'];
    $sid = $_POST['StudentID'];
    if (isset($_POST['date1'])) {
        $startingdate = $_POST['date1'];
    } else {
        echo "something error occured";
    }
    if (isset($_POST['date2'])) {
        $endingdate = $_POST['date2'];
    } 
    else 
    {
        echo "something error occured";
    }    
    $email = $_POST['email'];
    $subject = "About Leaving";
    $message = $_POST['m'];
    $to="np03022005@gmail.com";
    $headers = "From: $email";
    if(mail($to,$subject,$message,$headers)){
        echo "mail sent";
    }
    else{
        echo "mail error occured";
    }
    // echo $email;
    // echo $endingdate ;
    // echo $startingdate ;

?>