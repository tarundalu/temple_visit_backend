<?php
header("Content-Type: application/json");
require_once "db.php";

$data = json_decode(file_get_contents("php://input"), true);

$mobile = $data['mobile'];
$password = $data['password'];

$sql = "SELECT * FROM users WHERE mobile = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $mobile);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    $user = $result->fetch_assoc();

    if (password_verify($password, $user['password'])) {
        unset($user['password']); 
        echo json_encode([
            "status" => true,
            "message" => "Login successful",
            "user" => $user
        ]);
    } else {
        echo json_encode([
            "status" => false,
            "message" => "Invalid password"
        ]);
    }
} else {
    echo json_encode([
        "status" => false,
        "message" => "User not found"
    ]);
}
?>
