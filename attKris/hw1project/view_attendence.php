<?php
session_start();

$lecture = $_SESSION['lecture'];
require "config.php";

$lecture1='Lecture_'.$div1;
$lecture2='Lecture_'.$div2;

$time1 = 'Time_'.$div1;
$time2 = 'Time_'.$div2;

// check if form has been submitted via POST method
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
	// get the selected date
	$date = isset($_POST['date']) ? date('d-m-Y', strtotime($_POST['date'])) : date('d-m-Y');
	// echo $date ;

	// query to get attendance for the selected date
	$sql = "SELECT `Roll No.`, `$date` FROM `$lecture`";

	// execute the query
	$result = mysqli_query($conn, $sql);
}
?>

<!DOCTYPE html>
<html>

<head>
	<title>View Attendance</title>
	<!-- Include Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<style>
		form {
			margin: 20px auto;
		}

		h1 {
			text-align: center;
			margin: 20px;
		}

		table {
			margin: 30px;
			/* padding: 10px; */

		}

		.absent {
			color: red;
		}

		.present {
			color: green;
		}

		.none {
			color: grey;
		}
	</style>
</head>

<body>
	<div class="container">
		<form method="POST" action="view_attendence.php">
			<div class="form-group">
				<label for="date">Select a Date:</label>
				<input type="date" name="date" id="date" class="form-control">
			</div>
			<button type="submit" class="btn btn-primary">View Attendance</button>
		</form>
	</div>
	<?php if ($_SERVER['REQUEST_METHOD'] == 'POST') { ?>
	<h1>Attendance of
		<?php echo $date ?>
	</h1>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Roll No.</th>
					<th scope="col">Attendance</th>
				</tr>
			</thead>
			<tbody>
				<?php while ($row = mysqli_fetch_assoc($result)) { ?>
					<tr>
						<td>
							<?php echo $row['Roll No.']; ?>
						</td>
						<?php if ($row[$date] == 'Absent') { ?>
							<td class="absent">
								<?php echo $row[$date]; ?>
							</td>
						<?php } else if ($row[$date] == 'Present') { ?>
								<td class="present">
								<?php echo $row[$date]; ?>
								</td>
						<?php } else { ?>
								<td class="none">
								<?php echo $row[$date]; ?>
								</td>
						<?php } ?>
					</tr>
				<?php } ?>
			</tbody>
		</table>
	<?php } ?>

	<!-- Include Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>

</html>