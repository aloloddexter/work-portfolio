<?php
$servername = "srv1152.hstgr.io";
$username = "993175761_activity_4_5";
$password = "CH@riots02";
$dbname = "993175761_activity_4_5)";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>

