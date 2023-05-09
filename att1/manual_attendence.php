<?php
session_start();
$div = $_POST['Division'];


$servername = "localhost";
$username = "root";
$password = "";
$dbname = "att1";
$conn = mysqli_connect($servername, $username, $password, $dbname);
$sql = "SELECT * FROM `students_ce` WHERE Division='$div' ";

$result = mysqli_query($conn, $sql);

?>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<title>Manual Attendance</title>
	<style>
		form {
			margin: 50px;
		}

		h1 {
			padding: 20px 20px 5px 20px;
			text-align: center;
		}
	</style>
</head>

<body>
	<h1>Division
		<?php echo $div ?> Students
	</h1>
	<form method="POST" action="process_attendance.php">
		<input type="hidden" name="division" value="<?php echo $div; ?>">
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Roll No.</th>
					<th scope="col">Name</th>
					<th scope="col">Attendance</th>
				</tr>
			</thead>
			<tbody>
				<?php while ($row = mysqli_fetch_assoc($result)) { ?>
					<tr>
						<td>
							<?php echo $row['Roll No.']; ?>
						</td>
						<td>
							<?php echo $row['Name']; ?>
						</td>
						<td>
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="attendance[<?php echo $row['Roll No.']; ?>]"
									id="present-<?php echo $row['Roll No.']; ?>" value="Present" checked>
								<label class="form-check-label" for="present-<?php echo $row['Roll No.']; ?>">
									Present
								</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="attendance[<?php echo $row['Roll No.']; ?>]"
									id="absent-<?php echo $row['Roll No.']; ?>" value="Absent">
								<label class="form-check-label" for="absent-<?php echo $row['Roll No.']; ?>">
									Absent
								</label>
							</div>
						</td>
					</tr>
				<?php } ?>
			</tbody>
		</table>
		<input type="hidden" name="Division" value="<?php echo $div; ?>">
		<button type="submit" class="btn btn-primary">Submit Attendance</button>
	</form>
</body>

</html>