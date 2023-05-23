<?php

$time = $_POST['time'];
$lecture = $_POST['lecture'];
$div = $_POST['Division'];
$name = $_POST['name'];

session_start();

require 'config.php';

$current_time = date('H:i:s');

$query = "SELECT * FROM `pass_holder` WHERE `lecture` = '$lecture'";
$result = mysqli_query($conn,$query);
$row = mysqli_fetch_assoc($result);
if($current_time < $time){
    die("Lecture not started yet.");
}

elseif(mysqli_num_rows($result) == 0){
    die("Teacher has not started taking attendence yet.");
}


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <title>Login</title>

    <style>
        form {
            width: 400px;
            margin: 100px auto;
        }

        body {
            background-color: black;
            background: url(bg3.jpeg);
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>

</head>

<body>


    <form action="checkpass.php" method="post" class="p-4 bg-light rounded">

        <h2 class="mb-4 text-center">Attendance System Password registration by student</h2>

        <h3 class="mb-4 text-center">For lecture of
            <?php echo $lecture; ?> at
            <?php echo $time ?>
        </h3>

        <!-- <h3><?php echo $row['lecture']; ?></h3> -->

        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Password</label>
            <input type="text" class="form-control" id="exampleInputPassword1" name="password"
                placeholder="Enter your password" required>
        </div>
        <input type="hidden" value="<?php echo $div ?>" name="Division">
        <input type="hidden" value="<?php echo $time ?>" name="time">
        <input type="hidden" value="<?php echo $lecture ?>" name="lecture">
        <input type="hidden" value="<?php echo $name ?>" name="name">


        <button type="submit" class="btn btn-primary w-100">Enter password</button>

    </form>

    <h3 id="message" class="mb-3 text-center" style="display: none;">Invalid password</h3>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>

</body>

</html>