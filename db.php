<?php

$host = 'localhost'; // Your MySQL host name
$username = 'root'; // Your MySQL user name
$password = ''; // Your MySQL password
$database = 'vaidya'; // Your MySQL database name

// Create a connection to the database
$conn = mysqli_connect($host, $username, $password, $database);

// Check if the connection was successful
if (!$conn) {
die("Connection failed: " . mysqli_connect_error());
}
?>