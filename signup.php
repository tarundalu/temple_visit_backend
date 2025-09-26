<?php
require_once 'config.php'; // includes the $conn variable

// Collect POST data
$display_name = $_POST['display_name'] ?? '';
$mobile_number = $_POST['mobile_number'] ?? '';
$password = $_POST['password'] ?? '';

// Validate input
if (empty($display_name) || empty($mobile_number) || empty($password)) {
    die("All fields are required.");
}

// Hash the password
$password_hash = password_hash($password, PASSWORD_BCRYPT);

// Prepare and bind (using MySQLi)
$stmt = $conn->prepare("INSERT INTO users (display_name, mobile_number, password_hash) VALUES (?, ?, ?)");
$stmt->bind_param("sss", $display_name, $mobile_number, $password_hash);

// Execute and check
if ($stmt->execute()) {
    echo "✅ Account created successfully!";
} else {
    if ($conn->errno === 1062) {
        echo "⚠️ Mobile number already registered.";
    } else {
        echo "❌ Error: " . $conn->error;
    }
}

$stmt->close();
$conn->close();
?>
