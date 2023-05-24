<?php

$time = $_POST['time'];
$lecture = $_POST['lecture'];
$div = $_POST['Division'];
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


    <form action="check_attendence_dhruv.php" method="post" class="p-4 bg-light rounded">
        
        <h2 class="mb-4 text-center">Attendance System Password Setup by teacher</h2>
        
        <h3 class="mb-4 text-center">For lecture of <?php echo $lecture; ?> at <?php echo $time ?></h3>

        <div class="mb-3">
          <label for="exampleInputPassword1" class="form-label">Password</label>
          <input type="text" class="form-control" id="exampleInputPassword1" name="password" placeholder="Enter your password" required>
        </div>

        <input type="hidden" value="<?php echo $time ?>" name="time">
        <input type="hidden" value="<?php echo $lecture ?>" name="lecture">
        <input type="hidden" value="<?php echo $div ?>" name="Division">
        

        <button type="submit" class="btn btn-primary w-100" onclick="attstart()">Set password</button>
        
      </form>

      <h3 id="message" class="mb-3 text-center" style="display: none;">Attendance in progress. Please wait for 5 min and do not close this page in the mean time.</h3>
      
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script> 
    <script>
      function attstart(){
        document.getElementById("message").style.display="block";
        document.getElementById("message").innerHTML += document.getElementById("exampleInputPassword1").value;
      }
    </script>     
</body>
</html>
