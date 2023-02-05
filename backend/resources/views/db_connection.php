<?php

$servername = "localhost";
$username = "root";
$password = "password";
$dbname = "shop_db";

// Create connection
$conn = mysqli_connect($localhost, $root, $shop_db);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>