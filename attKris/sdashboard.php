<?php
session_start();

// Check if the user is logged in as a student
if (!isset($_SESSION['role']) || $_SESSION['role'] != 'student') {
    // Redirect to the login page if not logged in as a student
    header('Location: login.php');
    exit();
}
require 'config.php';


//taking image_id from table
$image_id = $_SESSION['image_id'];
$ID = $_SESSION['ID'];

// Prepare the SQL query to fetch the lectures of the current day
$table_name = strtolower(date('l'));
if ($table_name != 'saturday' && $table_name != 'sunday') {
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
$next_lecture_time = '';
$next_lecture_name = '';
if ($table_name != 'saturday' && $table_name != 'sunday') {
    $current_time = date('H:i:s');
    foreach ($lectures as $lecture) {
        if ($lecture['Time_' . $_SESSION['Division']] > $current_time) {
            $next_lecture_time = $lecture['Time_' . $_SESSION['Division']];
            $next_lecture_name = $lecture['Lecture_' . $_SESSION['Division']];
            break;
        }
    }
}
if (isset($_FILES['image']) && $_FILES['image']['error'] === UPLOAD_ERR_OK) {
    $image_id = $_FILES['image']['name'];
    $_file_types = $_FILES['image']['type'];
    $_file_temp = $_FILES['image']['tmp_name'];
    $_file_size = $_FILES['image']['size'];
    move_uploaded_file($_file_temp, "UPLOAD-IMAGES/" . $image_id);
    // echo $image_id;
}
// mysqli_close($conn);
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

        .image img {
            height: 200px;
            border-radius: 10%;
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
                            <a class="nav-link" href="checkAttendence_student.php">
                                <i class="bi bi-calendar2-check-fill me-2"></i>Check Attendance
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="stimetable.php">
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
        <div class="image">
            <img src="UPLOAD-IMAGES/<?php echo $image_id; ?>" alt="Image description">
        </div>


        <!-- Content -->
        <div class="col-md-10">
            <p>Welcome,
                <?php echo $_SESSION['name']; ?>
            </p>

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
                                <td>
                                    <?php echo $lecture['Time_' . $_SESSION['Division']]; ?>
                                </td>
                                <td>
                                    <?php echo $lecture['Lecture_' . $_SESSION['Division']]; ?>
                                </td>
                                <td>
                                    <form method="POST" action="register_attendence.php">
                                        <input type="hidden" value="<?php echo $lecture['Time_' . $_SESSION['Division']]; ?>" name="time">
                                        <input type="hidden" value="<?php echo $lecture['Lecture_' . $_SESSION['Division']]; ?>" name="lecture">
                                        <input type="hidden" value="<?php echo $_SESSION['Division'] ?>" name="Division">
                                        <input type="hidden" value="<?php echo $_SESSION['name'] ?>" name="name">
                                        
                                        <button type="submit" class="btn btn-primary">Register Attendance</button>

                                    </form>
                                </td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
                <?php if ($next_lecture_time != '') { ?>
                    <h2>Next Lecture</h2>
                    <p id="next-lecture">
                        <?php echo $next_lecture_name . ' at ' . $next_lecture_time; ?>
                    </p>
                <?php } else { ?>
                    <h2>No more lectures today</h2>
                <?php } ?>
            <?php } ?>
            <form action="" method="post" enctype="multipart/form-data">
                <div class="mb-3">
                    <label class="form-label">Profile Picture</label>
                    <input type="file" class="form-control" name="image">
                    <button type="submit" class="btn btn-primary">Update</button>
                    <?php
                    $sql = "UPDATE `students` SET `image_id` = '$image_id' WHERE `ID`='$ID' ";
                    mysqli_query($conn,$sql) or die("unsuccesful Query");
                    // mysqli_close($conn);
                ?>
            </form>
            <!-- <?php echo $image_id ?> -->

        </div>
        
    </main>

    <!-- Include jQuery and Moment.js -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
    <!-- Include custom JavaScript -->
    <script>
        // Update the clock every second
        setInterval(function () {
            var now = moment();
            var clock = now.format('h:mm:ss A');
            $('#clock').text(clock);
        }, 1000);
    </script>

</body>

</html>