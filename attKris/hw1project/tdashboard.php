<?php
session_start();

// Check if the user is logged in as a student
if (!isset($_SESSION['role']) || $_SESSION['role'] != 'teacher') {
	// Redirect to the login page if not logged in as a student
	header('Location: index.html');
	exit();
}


require 'config.php';
$conn = $_SESSION['conn'];


$lecture1='Lecture_'.$div1;
$lecture2='Lecture_'.$div2;

$time1 = 'Time_'.$div1;
$time2 = 'Time_'.$div2;

$lecture = $_SESSION['lecture'];
$table_name = strtolower(date('l'));
if ($table_name != 'saturday' && $table_name != 'sunday') {
	$query1 = "SELECT * FROM $table_name WHERE `$lecture1`='$lecture' ";
	$query2 = "SELECT * FROM $table_name WHERE `$lecture2`='$lecture' ";

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
	<title>Teacher Dashboard</title>
	<!-- Include Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<style>
		/* Sidebar styles */
		.sidebar {
			height: 100%;
			position: fixed;
		}

		.sidebar-sticky {
			position: sticky;
			top: 0;
		}

		/* Active link styles */
		.nav-link.active {
			background-color: #007bff;
			color: #fff !important;
		}
	</style>
</head>

<body>
	<div class="container-fluid">
		<div class="row">
			<!-- Sidebar -->
			<nav class="col-sm-2 bg-light sidebar">
				<div class="sidebar-sticky">
					<ul class="nav flex-column">
						<li class="nav-item">
							<a class="nav-link active" href="view_attendence.php">View Attendance</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="teacher_timetable.php">My Timetable</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">Settings</a>
						</li>
					</ul>
				</div>
			</nav>
		</div>
		<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
			<div class="header">
				<h1>Teacher Dashboard</h1>
				<p>Welcome,
					<?php echo $_SESSION['name']; ?>
				</p>
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
							<th scope="col">lecture</th>
							<th scope="col"></th>

						</tr>
					</thead>
					<tbody>
						<?php while ($row = mysqli_fetch_assoc($result1)) { ?>
							<tr>
								<td>
									<?php echo $row[$time1]; ?>
								</td>
								<td>A</td>
								<td>
									<?php echo $row[$lecture1]; ?>
								</td>
								<td>
									<form method="POST" action="manual_attendence.php" style="margin:5px">
										<input type="hidden" name="Division" value="<?php echo $div1;?>">
										<input type="hidden" name="time" value="<?php echo $row[$time1]; ?>">
										<input type="hidden" name="lecture" value="<?php echo $row[$lecture1]; ?>">
										<button type="submit" name="manual_attendence" class="btn btn-primary">Manual
											Attendance</button>
									</form>
									<form method="POST" action="password_attendence.php" style="margin:5px">
										<input type="hidden" name="Division" value="<?php echo $div1;?>">
										<input type="hidden" name="time" value="<?php echo $row[$time1]; ?>">
										<input type="hidden" name="lecture" value="<?php echo $row[$lecture1]; ?>">
										<button type="submit" name="password_attendence" class="btn btn-secondary">Password
											Attendance</button>
									</form>
								</td>
							</tr>
						<?php } ?>
						<?php while ($row = mysqli_fetch_assoc($result2)) { ?>
							<tr>
								<td>
									<?php echo $row[$time2]; ?>
								</td>
								<td>B</td>
								<td>
									<?php echo $row[$lecture2]; ?>
								</td>
								<td>
									<form method="POST" action="manual_attendence.php" style="margin:5px">
										<input type="hidden" name="Division" value="<?php echo $div2;?>">
										<input type="hidden" name="time" value="<?php echo $row[$time2]; ?>">
										<input type="hidden" name="lecture" value="<?php echo $row[$lecture2]; ?>">
										<button type="submit" name="manual_attendence" class="btn btn-primary">Manual
											Attendance</button>
									</form>
									<form method="POST" action="password_attendence.php" style="margin:5px">
										<input type="hidden" name="Division" value="<?php echo $div2;?>">
										<input type="hidden" name="time" value="<?php echo $row[$time2]; ?>">
										<input type="hidden" name="lecture" value="<?php echo $row[$lecture2]; ?>">
										<button type="submit" name="password_attendence" class="btn btn-secondary">Password
											Attendance</button>
									</form>
								</td>
							</tr>
						<?php } ?>
					</tbody>
				</table>
			<?php } ?>

			<a href="logout.php" class="btn btn-danger">Logout</a>
		</main>
	</div>

	<!-- Include Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>

</html>