<?php
header("Content-Type: application/json");
require_once "db.php";

$data = json_decode(file_get_contents("php://input"), true);
$id = intval($data['id'] ?? 0);
$status = $data['status'] ?? '';

if ($id <= 0 || !in_array($status, ['Draft','Planning','Upcoming'])) {
    echo json_encode(["status" => false, "message" => "Invalid input"]);
    exit;
}

$sql = "UPDATE itineraries SET status = ? WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("si", $status, $id);

if ($stmt->execute()) {
    echo json_encode(["status" => true, "message" => "Status updated"]);
} else {
    echo json_encode(["status" => false, "message" => "Failed"]);
}
?>
