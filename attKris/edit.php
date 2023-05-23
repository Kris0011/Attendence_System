<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="style.css">
  <title>CRUD</title>
</head>
<body>
<div id="main-content">
    <h2>Update Record</h2>
    <?php 
            $conn = mysqli_connect("localhost","root","","ce") or die("connection Failed");
            $stu_id1=$_GET['id'];
            $sql= "SELECT * FROM `students` where ID='$stu_id1'";
            $result = mysqli_query($conn,$sql) or die("Query Unsucessful");
            while($row=mysqli_fetch_assoc($result)){
    ?>
    <form class="post-form" action="updatedata1.php?id=<?php echo $row['ID']?>'"  method="post">
        <div class="form-group">
            <label>Roll No</label>
            <input type="text" name="sroll" value="<?php echo $row['Roll No.']?>"/>
        </div>
        <div class="form-group">
            <!-- <label>Roll No</label> -->
            <input type="hidden" name="id1" value="<?php echo $row['ID']?>"/>
        </div>
        <div class="form-group">
          <label>Name</label>    
            <input type="text" name="sname" value="<?php echo $row['Name']?>"/>
        </div>
        <div class="form-group">
            <label>Enrollment Year:</label>
            <input type="number" name="sey" value="<?php echo $row['Enrollment Year']?>"/>
        </div>
        <div class="form-group">
            <label>Batch Year:</label>
            <input type="number" name="sby" value="<?php echo $row['Batch Year']?>"/>
        </div>
        <div class="form-group">
            <label>Session No:</label>
            <input type="number" name="ssessionno" value="<?php echo $row['Session No']?>"/>
        </div>
        <div class="form-group">
            <label>Division</label>
            <input type="text" name="sdiv" value="<?php echo $row['Division']?>"/>
        </div>
        <input class="submit" type="submit" value="Update"/>
    </form>
    <?php } ?>
</div>
</div>
</body>
</html>