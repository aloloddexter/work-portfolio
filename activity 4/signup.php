<?php
// Database connection settings
$servername = "srv1152.hstgr.io";
$dbUsername = "u993175761_activity_4_5"; // Changed variable name to avoid conflict with POST data
$dbPassword = "CH@riots02";
$dbname = "u993175761_activity_4_5"; // Corrected to remove extra parenthesis

// Create connection
$conn = new mysqli($servername, $dbUsername, $dbPassword, $dbname);

// Check connection
if ($conn->connect_error) {
  die(json_encode(['success' => false, 'message' => 'Connection failed: ' . $conn->connect_error]));
}

// User input from form
$username = $_POST['username'];
$password = password_hash($_POST['password'], PASSWORD_DEFAULT); // Consider additional validation/sanitization
$type = $_POST['type']; // Consider validation/sanitization

// Prepare and bind
$stmt = $conn->prepare('INSERT INTO users (date, time, username, password, type, status) VALUES (CURDATE(), CURTIME(), ?, ?, ?, "active")');
$stmt->bind_param('sss', $username, $password, $type);

// Execute and respond
if ($stmt->execute()) {
  echo "New user created successfully";
  echo '<meta http-equiv="refresh" content="2;url=index.html">';
} else {
  echo json_encode(['success' => false, 'message' => 'Error: ' . $stmt->error]);
}

$conn->close();
?>
