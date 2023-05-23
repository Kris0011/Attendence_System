<?php
    $servername = "localhost";// "sql105.epizy.com";
    $username = "root"; // "epiz_34151132";
    $password = ""; // "QjzyIUrfKh9SXe";
    $dbname = "att1"; // "epiz_34151132_att1";
    
    $conn = mysqli_connect($servername, $username, $password, $dbname);

    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
?>