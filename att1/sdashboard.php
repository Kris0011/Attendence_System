<?php
session_start();

// Check if the user is logged in as a student
if (!isset($_SESSION['role']) || $_SESSION['role'] != 'student') {
	// Redirect to the login page if not logged in as a student
	header('Location: login.php');
	exit();
}

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "att1";

$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check if the connection was successful
if (!$conn) {
	die('Connection failed: ' . mysqli_connect_error());
}

// Prepare the SQL query to fetch the lectures of the current day
$table_name = strtolower(date('l'));
if($table_name!='saturday' && $table_name!='sunday'){
    $query = "SELECT * FROM $table_name";
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
}

// Get the next lecture time and lecture name
$next_lecture_time = '';
$next_lecture_name = '';
if ($table_name != 'saturday' && $table_name != 'sunday') {
    $current_time = date('H:i:s');
    foreach ($lectures as $lecture) {
        if ($lecture['Time'] > $current_time) {
            $next_lecture_time = $lecture['Time'];
            $next_lecture_name = $lecture['Lecture'];
            break;
        }
    }
}

mysqli_close($conn);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Student Dashboard</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <!-- Include custom CSS -->
    <style>
        #clock {
            font-size: 48px;
            text-align: center;
            margin-top: 30px;
            margin-bottom: 0px;
        }
        #next-lecture {
            font-size: 24px;
            /* text-align: center; */
            margin-top: 10px;
            margin-bottom: 30px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Student Dashboard</h1>
        <p>Welcome, <?php echo $_SESSION['name']; ?></p>

        <?php if ($table_name == 'saturday' || $table_name == 'sunday') { ?>
            <h2>Today is holiday</h2>
        <?php } else { ?>
            <h2>Lectures Today</h2>

            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Time</th>
                        <th scope="col">Lecture</th>
                    </tr>
                </thead>
                <tbody>
                <?php foreach ($lectures as $lecture) { ?>
                    <tr>
                        <td><?php echo $lecture['Time'] ; ?></td>
                        <td><?php echo $lecture['Lecture']; ?></td>
                        <td>
                            <form method="POST" action="register_attendance.php">
							<!-- <input type="hidden" name="lecture_id" value="<?php echo $lecture['ID']; ?>"> -->
							<button type="submit" class="btn btn-primary">Register Attendance</button>
							</form>
						</td>
				</tr>
				<?php } ?>
				</tbody>
			</table>
			<?php if ($next_lecture_time != '') { ?>
            	<h2>Next Lecture</h2>
            	<p id="next-lecture"><?php echo $next_lecture_name . ' at ' . $next_lecture_time; ?></p>
        	<?php } else { ?>
            	<h2>No more lectures today</h2>
        	<?php } ?>
    	<?php } ?>

    			<h2>Current Time</h2>
    			<p id="clock"></p>
				</div>

<!-- Include jQuery and Moment.js -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<!-- Include custom JavaScript -->
<script>
    // Update the clock every second
    setInterval(function() {
        var now = moment();
        var clock = now.format('h:mm:ss A');
        $('#clock').text(clock);
    }, 1000);
</script>

</body>
</html>