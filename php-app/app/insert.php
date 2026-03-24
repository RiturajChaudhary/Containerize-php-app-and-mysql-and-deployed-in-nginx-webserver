<?php
$host = "mysql";
$username = "phpuser";
$password = "php123";
$database = "php_app";

$conn = new mysqli($host, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$name = $_POST['name'];
$email = $_POST['email'];

$stmt = $conn->prepare("INSERT INTO students (name, email) VALUES (?, ?)");
$stmt->bind_param("ss", $name, $email);

if ($stmt->execute()) {
    echo "<h2>Record inserted successfully</h2>";
    echo "<a href='index.html'>Go Back</a> | <a href='display.php'>View Records</a>";
} else {
    echo "Error: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
