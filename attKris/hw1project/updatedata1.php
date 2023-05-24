<?php
    $stu_id1= $_POST['id1'];
    $stu_name = $_POST['sname'];   
    $stu_Rollno = $_POST['sroll'];
    $stu_ey = $_POST['sey'];
    $stu_by = $_POST['sby'];
    $stu_sessionno = $_POST['ssessionno'];
    $stu_div = $_POST['sdiv'];

    $conn = mysqli_connect("localhost","root","","ce") or die("connection Failed");
    $query = "UPDATE students 
    SET `Roll No.` = ?, `Name` = ?, `Enrollment Year` = ?, `Batch Year` = ?, `Session No` = ?, `Division` = ?
    WHERE `ID` = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("sssiiss", $stu_Rollno, $stu_name, $stu_ey, $stu_by, $stu_sessionno, $stu_div, $stu_id1);
    $stmt->execute();
    $stmt->close();
    header("Location: admin.php");
    exit();
?> 
