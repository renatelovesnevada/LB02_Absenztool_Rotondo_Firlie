<?php
$servername = "your_servername";
$username = "your_username";
$password = "your_password";
$dbname = "Absenzensystem";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch data from the Absenz table
$sql = "SELECT * FROM Absenz";
$result = $conn->query($sql);

// Convert the result to an associative array
$data = array();
while ($row = $result->fetch_assoc()) {
    $data[] = $row;
}

// Return the data as JSON
echo json_encode($data);

// Close the connection
$conn->close();
?>
