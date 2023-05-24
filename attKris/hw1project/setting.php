<?php
session_start();

require "config.php";

$image_id = $_SESSION['image_id'];
$id = $_SESSION['ID'];

if (isset($_FILES['image']) && $_FILES['image']['error'] === UPLOAD_ERR_OK) {
    $image_id = $_FILES['image']['name'];
    $_file_types = $_FILES['image']['type'];
    $_file_temp = $_FILES['image']['tmp_name'];
    $_file_size = $_FILES['image']['size'];
    move_uploaded_file($_file_temp, "UPLOAD-IMAGES/" . $image_id);
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="style.css">
  <script src="script.js" defer></script>
  <style>
    
    .image img {
            height: 200px;
            border-radius: 10%;
        }
        .nav img{
            height:50px;
            width:15px;
        }
  </style>
</head>
<body>
<div id="main-content">
    <h2>Update Record</h2>
    <div class="image">
                <img src="UPLOAD-IMAGES/<?php echo $image_id; ?>" alt="Image description">
            </div>
    <form action="" method="post" enctype="multipart/form-data">
                <div class="mb-3">
                    <label class="form-label">Profile Picture</label>
                    <input type="file" class="form-control" name="image">
                    <button type="submit" class="btn btn-primary">Update</button>
                    <?php
                    $conn = mysqli_connect($servername, $username, $password, $dbname) or die('Connection failed: ' . mysqli_connect_error());
                    // echo $image_id;
                    $sql = "UPDATE `students` SET `image_id` = '$image_id' WHERE `ID`='$id' ";
                    mysqli_query($conn,$sql) or die("unsuccesful Query");
                    mysqli_close($conn);
                ?>
            </form>

   
</div>
</div>
</body>
</html>
