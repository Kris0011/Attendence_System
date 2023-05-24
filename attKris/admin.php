<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  <link rel="stylesheet" href="style.css">
  <title>Login</title>
  <script src="script.js" defer></script>
</head>
<body>
<!-- changed by naitk  3-->
<div id="main-content" >
    <h2>All Records</h2>
    <?php
        $conn = mysqli_connect("localhost","root","","ce") or die("connection Failed");
        $sql= "SELECT * FROM students";
        $result = mysqli_query($conn,$sql) or die("Query Unsucessful");
        if(mysqli_num_rows($result)>0){
    ?>
    <table cellpadding="10px">
        <thead>
            <th>Roll No</th>
            <th>Name</th>
            <th>ID</th>
            <th>Enrollment Year</th>
            <th>Batch Year</th>
            <th>Session No</th>
            <th>Gender</th>
            <th>Division</th>
        </thead>
        <tbody>
            <?php
            while($row = mysqli_fetch_assoc($result)){
            ?>
            <tr>
                <td><?php echo $row['Roll No.'] ?></td>
                <td><?php echo $row['ID'] ?></td>
                <td><?php echo $row['Name'] ?></td>
                <td><?php echo $row['Enrollment Year'] ?></td>
                <td><?php echo $row['Batch Year'] ?></td>
                <td><?php echo $row['Session No'] ?></td>
                <td><?php echo $row['Gender'] ?></td>
                <td><?php echo $row['Division'] ?></td>
                <td>
                    <a href='edit.php?id=<?php echo $row['ID'] ?>'>Edit</a>
                    <a href='delete.php?id=<?php echo $row['ID'] ?>' onclick="return confirmDelete('<?php echo $row['ID'] ?>')">Delete</a>
                </td>
            </tr>
            <?php } ?>
        </tbody>
    </table>
    <?php } ?>
</div>
</div>
</body>
<script>
    function confirmDelete(id) {
        var b = confirm("Do You Want To Delete The Data of " + id);
        if (b == true) {
            window.location.href = "delete.php?id=" + id;
        }
        return false;
    }
</script>
</html>
