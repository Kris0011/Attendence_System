<?php
    $name = $_POST['fname'];
    $Roll = $_POST['rollno'];
    $sid = $_POST['StudentID'];
    if (isset($_POST['date1'])) {
        $startigdate = $_POST['date1'];
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
    echo $email;
    echo $endingdate ;
?>