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

$username = $_POST['username'];
$password = $_POST['password'];

$stmt = $conn->prepare('SELECT * FROM users WHERE username = ?');
$stmt->bind_param('s', $username);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    $user = $result->fetch_assoc();
    
    if (password_verify($password, $user['password'])) {
        
        switch($user['type']) {
            case 'admin':
                $redirect = 'admin_dashboard.html';
                break;
            case 'encoder':
                $redirect = 'encoder_dashboard.html';
                break;
            case 'viewer':
                $redirect = 'viewer_dashboard.html';
                break;
            case 'customer':
                $redirect = 'customer_dashboard.html';
                break;
            default:
                $redirect = 'index.html';
                break;
        }

        $stmt = $conn->prepare('INSERT INTO login_history (user_id) VALUES (?)');
        $stmt->bind_param('i', $user['id']);
        if (!$stmt->execute()) {
            echo json_encode(['success' => false, 'message' => 'Error recording login history: ' . $stmt->error]);
        } else {
            echo json_encode(['success' => true, 'redirect' => $redirect]);
        }
        
    } else {
        echo json_encode(['success' => false, 'message' => 'Invalid username or password.']);
    }
} else {
    echo json_encode(['success' => false, 'message' => 'Invalid username or password.']);
}

$conn->close();
?>
