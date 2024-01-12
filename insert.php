<?php
// Establish a connection to the database
$servername = "your_server_name";
$username = "your_username";
$password = "your_password";
$dbname = "your_database_name";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Handle the form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $class = $_POST["class"];
    $student = $_POST["student"];
    $date = $_POST["date"];
    $absenceStatus = $_POST["absenceStatus"];
    $kommentar = $_POST["Kommentar"];

    // Insert data into the Absenz table
    $sql = "INSERT INTO Absenz (date, AbsenzStatus, GrundID, AbteilungID, LoginID, StudentID, Kommentar)
            VALUES ('$date', '$absenceStatus', 1, 2, 1, 1, '$kommentar')"; // Note: adjust GrundID, AbteilungID, LoginID based on your data

    if ($conn->query($sql) === TRUE) {
        echo "Record inserted successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Close the database connection
$conn->close();
?>
