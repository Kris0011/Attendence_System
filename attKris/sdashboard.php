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
        if ($lecture['Time_B'] > $current_time) {
            $next_lecture_time = $lecture['Time_B'];
            $next_lecture_name = $lecture['Lecture_B'];
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

        /* Icon styles */
        .bi {
            display: inline-block;
            font-size: 1.5rem;
            line-height: 1;
            vertical-align: -0.125em;
        }

        .bi-house-door-fill {
            color: #007bff;
        }

        .bi-calendar2-check-fill {
            color: #28a745;
        }

        .bi-table {
            color: #ffc107;
        }

    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <nav class="col-md-2 d-none d-md-block bg-light sidebar">
            <div class="sidebar-sticky">
                <ul class="nav flex-column">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">
                    <i class="bi bi-house-door-fill me-2"></i>Home
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                    <i class="bi bi-calendar2-check-fill me-2"></i>Check Attendance
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="timetable.php">
                    <i class="bi bi-table me-2"></i>Time-Table
                    </a>
                </li>
                </ul>
            </div>
            </nav>
        </div>
    </div>


            <!-- Main content -->
            <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
                <div class="pt-3 pb-2 mb-3 border-bottom">
                    <h1 class="h2">Student Dashboard</h>
                </div>

    
    <!-- Content -->
    <div class="col-md-10">
        <p>Welcome, <?php echo $_SESSION['name']; ?></p>

        <?php if ($table_name == 'saturday' || $table_name == 'sunday') { ?>
            <h2>Today is holiday</h2>
        <?php } else { ?>
            <h2>Today's Time-Table</h2>

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
                        <td><?php echo $lecture['Time_'.$_SESSION['Division']] ; ?></td>
                        <td><?php echo $lecture['Lecture_'.$_SESSION['Division']]; ?></td>
                        <td>
                            <form method="POST" action="register_attendance.php">
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

      
    </div>
</div>
</main>

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