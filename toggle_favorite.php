<?php
header("Content-Type: application/json");
require_once "db.php";

$data = json_decode(file_get_contents("php://input"), true);

$user_id = intval($data['user_id']);
$temple_id = intval($data['temple_id']);

// Check if already favorited
$checkSql = "SELECT id FROM temple_favorites WHERE user_id = ? AND temple_id = ?";
$stmt = $conn->prepare($checkSql);
$stmt->bind_param("ii", $user_id, $temple_id);
$stmt->execute();
$stmt->store_result();

if ($stmt->num_rows > 0) {
    // Remove favorite
    $deleteSql = "DELETE FROM temple_favorites WHERE user_id = ? AND temple_id = ?";
    $deleteStmt = $conn->prepare($deleteSql);
    $deleteStmt->bind_param("ii", $user_id, $temple_id);
    if ($deleteStmt->execute()) {
        echo json_encode(["status" => true, "message" => "Removed from favorites"]);
    } else {
        echo json_encode(["status" => false, "message" => "Failed to remove favorite"]);
    }
} else {
    // Add favorite
    $insertSql = "INSERT INTO temple_favorites (user_id, temple_id) VALUES (?, ?)";
    $insertStmt = $conn->prepare($insertSql);
    $insertStmt->bind_param("ii", $user_id, $temple_id);
    if ($insertStmt->execute()) {
        echo json_encode(["status" => true, "message" => "Added to favorites"]);
    } else {
        echo json_encode(["status" => false, "message" => "Failed to add favorite"]);
    }
}
?>
