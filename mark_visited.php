<?php
header("Content-Type: application/json");
require_once "db.php";

$data = json_decode(file_get_contents("php://input"), true);

$user_id = intval($data['user_id']);
$temple_id = intval($data['temple_id']);

// Check if already visited
$checkSql = "SELECT id FROM temple_visited WHERE user_id = ? AND temple_id = ?";
$stmt = $conn->prepare($checkSql);
$stmt->bind_param("ii", $user_id, $temple_id);
$stmt->execute();
$stmt->store_result();

if ($stmt->num_rows > 0) {
    echo json_encode(["status" => true, "message" => "Already marked as visited"]);
} else {
    // Insert new visited record
    $insertSql = "INSERT INTO temple_visited (user_id, temple_id) VALUES (?, ?)";
    $insertStmt = $conn->prepare($insertSql);
    $insertStmt->bind_param("ii", $user_id, $temple_id);
    if ($insertStmt->execute()) {
        echo json_encode(["status" => true, "message" => "Temple marked as visited"]);
    } else {
        echo json_encode(["status" => false, "message" => "Failed to mark visited"]);
    }
}
?>
