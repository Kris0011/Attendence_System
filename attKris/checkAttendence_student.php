<?php
session_start();

$number = $_SESSION['Roll No.'];
// echo $ID;
require 'config.php';




if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // get the selected date
    $date = isset($_POST['date']) ? date('d-m-Y', strtotime($_POST['date'])) : date('Y-m-d');
    $rollNo = $number; // Assuming you have the roll number in a form field
	$attendanceData = array(); // Array to store attendance data for each lecture
    foreach ($array as $lecture) {
        $sql1 = "SELECT * FROM `$lecture` WHERE `Roll No.`='$rollNo'";

        // execute the query
        $result1 = mysqli_query($conn, $sql1);

        // check if any rows are returned
        if (mysqli_num_rows($result1) > 0) {
            // iterate through the rows and print the values
            while ($row1 = mysqli_fetch_assoc($result1)) {
                if (isset($row1[$date])) {

					$attendanceData[$lecture][$date] = $row1[$date];
                }
                // print other columns as needed
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
			<div class="form-group">
				<label for="date">Select a Date:</label>
				<input type="date" name="date" id="date" class="form-control">
			</div>
			<button type="submit" class="btn btn-primary">View Attendance</button>
		</form>
	</div>
	<?php if (isset($attendanceData)) { ?>
        <h1>Attendance  on <?php echo $date; ?></h1>
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
                        <td><?php echo $lecture; ?></td>
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


	<!-- Include Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>

</html>