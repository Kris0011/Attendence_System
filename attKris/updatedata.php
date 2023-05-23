<?php
session_start();
$id = $_SESSION['ID'];
?>
<?php
    $stu_name = $_POST['sname'];   
    $stu_id = $_POST['sid'];
    $stu_Rollno = $_POST['sroll'];
    $stu_ey = $_POST['sey'];
    $stu_by = $_POST['sby'];
    $stu_sessionno = $_POST['ssessionno'];
    $stu_div = $_POST['sdiv'];

    $conn = mysqli_connect("localhost","root","","ce") or die("connection Failed");
    $query = "UPDATE students 
    SET `Roll No.` = ?, `ID` = ?, `Name` = ?, `Enrollment Year` = ?, `Batch Year` = ?, `Session No` = ?, `Division` = ?
    WHERE `ID` = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("sssiiiss", $stu_Rollno, $stu_id, $stu_name, $stu_ey, $stu_by, $stu_sessionno, $stu_div, $id);
    $stmt->execute();
    $stmt->close();
    header("Location:sdashboard_new.php");
    exit();

?> 