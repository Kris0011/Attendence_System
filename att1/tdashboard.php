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
$table_name = strtolower(date('l'));
if($table_name!='saturday' && $table_name!='sunday'){
	$query = "SELECT * FROM $table_name";
	// Execute the query
	$result = mysqli_query($conn, $query);
	
	// Check if the query was successful
	if (!$result) {
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
		<h1>Teacher Dashboard</h1>
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
					<?php while ($row = mysqli_fetch_assoc($result)) { ?>
						<tr>
							<td><?php echo $row['Time']." PM" ; ?></td>
							<td><?php echo $row['Lecture']; ?></td>
						</tr>
					<?php } ?>
				</tbody>
			</table>
		<?php } ?>

		<a href="logout.php" class="btn btn-danger">Logout</a>
	</div>

	<!-- Include Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>