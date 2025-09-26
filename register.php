<?php
header("Content-Type: application/json");
require_once "db.php";

$data = json_decode(file_get_contents("php://input"), true);

$name = $data['name'];
$mobile = $data['mobile'];
$password = password_hash($data['password'], PASSWORD_BCRYPT);

// Check if mobile already exists
$checkSql = "SELECT id FROM users WHERE mobile = ?";
$checkStmt = $conn->prepare($checkSql);
$checkStmt->bind_param("s", $mobile);
$checkStmt->execute();
$checkStmt->store_result();

if ($checkStmt->num_rows > 0) {
    echo json_encode(["status" => false, "message" => "Mobile number already registered"]);
    exit;
}

// Insert new user
$sql = "INSERT INTO users (name, mobile, password) VALUES (?, ?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param("sss", $name, $mobile, $password);

if ($stmt->execute()) {
    echo json_encode(["status" => true, "message" => "User registered successfully"]);
} else {
    echo json_encode(["status" => false, "message" => "Failed to register user"]);
}
?>
