<?php

$localhost = "localhost";
$root = "root";
$password = "";
$dbname = "shop_db";

// Create connection
$conn = mysqli_connect($localhost, $root, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>