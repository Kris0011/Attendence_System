<?php
    $name = $_POST['fname'];
    $Roll = $_POST['rollno'];
    $sid = $_POST['StudentID'];
    if (isset($_POST['date1'])) {
        $startingdate = $_POST['date1'];
    } else {
        echo "<h1>starting date not set.</h1>";
    }
    if (isset($_POST['date2'])) {
        $endingdate = $_POST['date2'];
    } 
    else 
    {
        echo "<h1>ending date not set.</h1>";
    }    
    $email = $_POST['email'];
    $subject = "About Leaving";
    $message = $_POST['m'];
    $to="np03022005@gmail.com";
    $headers = "From: $email";
    // set_ini("SMTP")
    if(mail($to,$subject,$message,$headers)){
        echo "<h1>mail sent successfuly</h1>";
    }
    else{
        echo "<h1>mail error occured</h1>";
    }
    // echo $email;
    // echo $endingdate ;
    // echo $startingdate ;

?>
