<?php
session_start();

$number = $_SESSION['Roll No.'];
// echo $ID;
require 'config.php';


if ($_SERVER['REQUEST_METHOD'] == 'POST') {
	// Get the selected date or default to today's date
	$date = isset($_POST['date']) ? date('d-m-Y', strtotime($_POST['date'])) : date('d-m-Y');
	$rollNo = $number; // Assuming you have the roll number in a form field
	$attendanceData = array(); // Array to store attendance data for each lecture
	$weekattendanceData = array(); // Array to store attendance data for each lecture
	$monthattendanceData = array(); // Array to store attendance data for each lecture

	// Check which button is submitted
	if (isset($_POST['viewAttendance'])) {
		// View Attendance button is submitted
		foreach ($array as $lecture) {
			$sql1 = "SELECT * FROM `$lecture` WHERE `Roll No.`='$rollNo'";

			// execute the query
			$result1 = mysqli_query($conn, $sql1);

			// check if any rows are returned
			if (mysqli_num_rows($result1) > 0) {
				// iterate through the rows and store the values in the attendanceData array
				while ($row1 = mysqli_fetch_assoc($result1)) {
					if (isset($row1[$date])) {
						$attendanceData[$lecture][$date] = $row1[$date];
					}
				}
			}
		}
	} elseif (isset($_POST['lastWeekAttendance'])) {
		$currentDate = date('d-m-Y');
		// Calculate the start date for the last week
		$startDate = date('d-m-Y', strtotime('+0 days', strtotime($currentDate)));

		foreach ($array as $lecture) {
			$sql1 = "SELECT * FROM `$lecture` WHERE `Roll No.`='$rollNo'";

			// execute the query
			$result1 = mysqli_query($conn, $sql1);

			// check if any rows are returned
			if (mysqli_num_rows($result1) > 0) {
				// iterate through the rows and store the values in the attendanceData array
				while ($row1 = mysqli_fetch_assoc($result1)) {
					for ($i = 6; $i >= 0; $i--) {
						$date = date('d-m-Y', strtotime("-$i days", strtotime($currentDate)));
						if (isset($row1[$date])) {
							$weekattendanceData[$lecture][$date] = $row1[$date];
						}
					}
				}
			}
		}

	} elseif (isset($_POST['lastMonthAttendance'])) {
		// Last Month Attendance button is submitted
		// Logic to retrieve attendance data for the last month
		// ...

		$currentDate = date('d-m-Y');
		// Calculate the start date for the last week
		$startDate = date('d-m-Y', strtotime('+0 days', strtotime($currentDate)));

		foreach ($array as $lecture) {
			$sql1 = "SELECT * FROM `$lecture` WHERE `Roll No.`='$rollNo'";

			// execute the query
			$result1 = mysqli_query($conn, $sql1);

			// check if any rows are returned
			if (mysqli_num_rows($result1) > 0) {
				// iterate through the rows and store the values in the attendanceData array
				while ($row1 = mysqli_fetch_assoc($result1)) {
					for ($i = 29; $i >= 0; $i--) {
						$date = date('d-m-Y', strtotime("-$i days", strtotime($currentDate)));
						if (isset($row1[$date])) {
							$monthattendanceData[$lecture][$date] = $row1[$date];
						}
					}
				}
			}
		}

	}
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
		<form method="POST" action="checkAttendence_student.php">
			<h3>Select a date to check the attendance of that day</h3>
			<div class="form-group">
				<label for="date">Select a Date:</label>
				<input type="date" name="date" id="date" class="form-control">
			</div>
			<button type="submit" name="viewAttendance" class="btn btn-primary">View Attendance</button>
			<button type="submit" name="lastWeekAttendance" class="btn btn-primary">Last week Attendance</button>
			<button type="submit" name="lastMonthAttendance" class="btn btn-primary">Last Month Attendance</button>
		</form>
		<!-- </form>
		<form action="/">
	</form>
	<form action="/">
		</form> -->
	</div>
	<div class="container">

		<?php if (isset($_POST['viewAttendance'])) { ?>
			<h2>Attendance on
				<?php echo $date; ?>
			</h2>
			<table class="table">
				<thead>
					<tr>
						<th scope="col">Subject</th>
						<th scope="col">Attendance</th>
					</tr>
				</thead>
				<tbody>
					<?php foreach ($attendanceData as $lecture => $attendance) { ?>
						<tr>
							<td>
								<?php echo $lecture; ?>
							</td>
							<?php if (isset($attendance[$date])) { ?>
								<td class="<?php echo ($attendance[$date] == 'Absent') ? 'absent' : 'present'; ?>">
									<?php echo $attendance[$date]; ?>
								</td>
							<?php } else { ?>
								<td class="none">No data available</td>
							<?php } ?>
						</tr>
					<?php } ?>
				</tbody>
			</table>
		<?php } ?>

		<?php if (isset($_POST['lastWeekAttendance'])) { ?>
			<h2>Attendance for Last Week</h2>
			<table class="table">
				<thead>
					<tr>
						<th scope="col">Subject</th>
						<?php
						// Iterate over the last 2 days and display the date headers
						$currentDate = date('d-m-Y');
						for ($i = 1; $i >= 0; $i--) {
							$date = date('d-m-Y', strtotime("-$i days", strtotime($currentDate)));
							?>
							<th scope="col">
								<?php echo $date; ?>
							</th>
						<?php } ?>
					</tr>
				</thead>
				<tbody>
					<?php foreach ($weekattendanceData as $lecture => $attendance) { ?>
						<tr>
							<td>
								<?php echo $lecture; ?>
							</td>
							<?php
							// Iterate over the last 2 days and display the attendance data
							for ($i = 1; $i >= 0; $i--) {
								$date = date('d-m-Y', strtotime("-$i days", strtotime($currentDate)));
								?>
								<?php if (isset($attendance[$date])) { ?>
									<td class="<?php echo ($attendance[$date] == 'Absent') ? 'absent' : 'present'; ?>">
										<?php echo $attendance[$date]; ?>
									</td>
								<?php } else { ?>
									<td class="none">No data available</td>
								<?php } ?>
							<?php } ?>
						</tr>
					<?php } ?>
				</tbody>
			</table>
		<?php } ?>

		<?php if (isset($_POST['lastMonthAttendance'])) { ?>
			<h2>Attendance for Last Month</h2>
			<table class="table">
				<thead>
					<tr>
						<th scope="col">Subject</th>
						<?php
						// Iterate over the last 2 days and display the date headers
						$currentDate = date('d-m-Y');
						for ($i = 1; $i >= 0; $i--) {
							$date = date('d-m-Y', strtotime("-$i days", strtotime($currentDate)));
							?>
							<th scope="col">
								<?php echo $date; ?>
							</th>
						<?php } ?>
					</tr>
				</thead>
				<tbody>
					<?php foreach ($monthattendanceData as $lecture => $attendance) { ?>
						<tr>
							<td>
								<?php echo $lecture; ?>
							</td>
							<?php
							// Iterate over the last 2 days and display the attendance data
							for ($i = 1; $i >= 0; $i--) {
								$date = date('d-m-Y', strtotime("-$i days", strtotime($currentDate)));
								?>
								<?php if (isset($attendance[$date])) { ?>
									<td class="<?php echo ($attendance[$date] == 'Absent') ? 'absent' : 'present'; ?>">
										<?php echo $attendance[$date]; ?>
									</td>
								<?php } else { ?>
									<td class="none">No data available</td>
								<?php } ?>
							<?php } ?>
						</tr>
					<?php } ?>
				</tbody>
			</table>
		<?php } ?>
	</div>


	<!-- Include Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>

</html>