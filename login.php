<?php
// database connection settings
$host = "localhost";
$username = "root";
$password = "";
$dbname = "vaidya";

// create database connection
$conn = new mysqli($host, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// authenticate login credentials
$username = $_POST['username'];
$password = $_POST['password'];
$sql = "SELECT * FROM user_info WHERE username='$username' AND password='$password'";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    // successful login
    header("Location: home.php");
    exit();
} else {
    // failed login
    echo "Invalid username or password.";
}

$conn->close();
?>
