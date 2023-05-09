<?php
 session_start();

// Check if the user is logged in as a student
if (!isset($_SESSION['role']) || $_SESSION['role'] != 'teacher') {
	// Redirect to the login page if not logged in as a student
	header('Location: login.php');
	exit();
}

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "att1";

$conn = mysqli_connect($servername, $username, $password, $dbname);
// / Prepare the SQL query to fetch the lectures of the current day

$subject = $_SESSION['Subject'];
$table_name = strtolower(date('l'));
if($table_name!='saturday' && $table_name!='sunday'){
	$query1 = "SELECT * FROM $table_name WHERE `Lecture_A`='$subject' ";
	$query2 = "SELECT * FROM $table_name WHERE `Lecture_B`='$subject' ";


	// Execute the query
	$result1 = mysqli_query($conn, $query1);
	$result2 = mysqli_query($conn, $query2);

	
	// Check if the query was successful
	if (!$result1 || !$result2) {
		die('Query failed: ' . mysqli_error($conn));
	}
}

?>
<!DOCTYPE html>
<html>
<head>
	<title>Student Dashboard</title>
	<!-- Include Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="header">
			<h1>Teacher Dashboard</h1>
			<p>Welcome, <?php echo $_SESSION['name']; ?></p>
		</div>
		

		<?php if ($table_name == 'saturday' || $table_name == 'sunday') { ?>
			<h2>Today is holiday</h2>
		<?php } else { ?>
			<h2>Your Lectures Today</h2>

			<table class="table">
				<thead>
					<tr>
						<th scope="col">Time</th>
						<th scope="col">Division</th>	
						<th scope="col">Subject</th>
						<th scope="col"></th>

					</tr>
				</thead>
				<tbody>
					<?php while ($row = mysqli_fetch_assoc($result1)) { ?>
						<tr>
							<td><?php echo $row['Time_A']; ?></td>
							<td>A</td>
							<td><?php echo $row['Lecture_A']; ?></td>
							<td>
								<form method="POST" action="manual_attendence.php" style="margin:5px">
									<input type="hidden" name="Division" value="A">
									<input type="hidden" name="time" value="<?php echo $row['Time_A'];?>">
									<input type="hidden" name="lecture" value="<?php echo $row['Lecture_A'];?>">
									<button type="submit" name="manual_attendence" class="btn btn-primary">Manual Attendance</button>
								</form>
								<form method="POST" action="take_attendence_dhruv.php" style="margin:5px">	
									<input type="hidden" name="Division" value="A">
									<input type="hidden" name="time" value="<?php echo $row['Time_A'];?>">
									<input type="hidden" name="lecture" value="<?php echo $row['Lecture_A'];?>">
									<button type="submit" name="password_attendence" class="btn btn-secondary">Password Attendance</button>
								</form>
                        	</td>
						</tr>
					<?php } ?>
					<?php while ($row = mysqli_fetch_assoc($result2)) { ?>
						<tr>
							<td><?php echo $row['Time_B'] ; ?></td>
							<td>B</td>
							<td><?php echo $row['Lecture_B']; ?></td>
							<td>
								<form method="POST" action="manual_attendence.php" style="margin:5px">
									<input type="hidden" name="Division" value="B">
									<input type="hidden" name="time" value="<?php echo $row['Time_B'];?>">
									<input type="hidden" name="lecture" value="<?php echo $row['Lecture_B'];?>">
									<button type="submit" name="manual_attendence" class="btn btn-primary">Manual Attendance</button>
								</form>
								<form method="POST" action="take_attendence.php" style="margin:5px">
									<input type="hidden" name="Division" value="B">	
									<input type="hidden" name="time" value="<?php echo $row['Time_B'];?>">
									<input type="hidden" name="lecture" value="<?php echo $row['Lecture_B'];?>">
									<button type="submit" name="password_attendence" class="btn btn-secondary">Password Attendance</button>
								</form>
                        	</td>
						</tr>
					<?php } ?>
				</tbody>
			</table>
		<?php } ?>

		<a href="index.html" class="btn btn-danger">Logout</a>
	</div>

	<!-- Include Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>