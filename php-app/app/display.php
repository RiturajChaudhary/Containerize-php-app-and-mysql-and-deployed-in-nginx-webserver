<?php
$host = "mysql";
$username = "phpuser";
$password = "php123";
$database = "php_app";

$conn = new mysqli($host, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$result = $conn->query("SELECT * FROM students");

echo "<h2>Student Records</h2>";
echo "<a href='index.html'>Go Back</a><br><br>";

if ($result->num_rows > 0) {
    echo "<table border='1' cellpadding='10' cellspacing='0'>";
    echo "<tr><th>ID</th><th>Name</th><th>Email</th></tr>";
    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>". $row['id'] ."</td>";
        echo "<td>". $row['name'] ."</td>";
        echo "<td>". $row['email'] ."</td>";
        echo "</tr>";
    }
    echo "</table>";
} else {
    echo "No records found.";
}

$conn->close();
?>
