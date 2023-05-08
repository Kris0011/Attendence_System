<?php
session_start();
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "att1";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die('Connection failed: ' . mysqli_connect_error());
}

$days = array('monday', 'tuesday', 'wednesday', 'thursday', 'friday');
$timetables = array();

foreach ($days as $day) {
    $query = "SELECT * FROM $day";
    // Execute the query
    $result = mysqli_query($conn, $query);

    // Check if the query was successful
    if (!$result) {
        die('Query failed: ' . mysqli_error($conn));
    }
    
    // Fetch all rows from the result set and store them in an array
    $lectures = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $lectures[] = $row;
    }
    
    $timetables[$day] = $lectures;
}

mysqli_close($conn);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>Time-Table</title>
    <style>
        /* h1{
            text-align: center;
        } */
    </style>
</head>
<body>
    <div class="col-md-10">
        <h1>Time-Table</h1>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Day</th>
                    <th scope="col">Time</th>
                    <th scope="col">Lecture</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($timetables as $day => $lectures) { ?>
                    <?php foreach ($lectures as $lecture) { ?>
                        <tr>
                            <?php if ($lecture == reset($lectures)) { ?>
                                <td rowspan="<?php echo count($lectures); ?>"><?php echo ucfirst($day); ?></td>
                            <?php } ?>
                            <td><?php echo $lecture['Time_'.$_SESSION['Division']]; ?></td>
                            <td><?php echo $lecture['Lecture_'.$_SESSION['Division']]; ?></td>
                        </tr>
                    <?php } ?>
                <?php } ?>
            </tbody>
        </table>
    </div>
</body>
</html>
