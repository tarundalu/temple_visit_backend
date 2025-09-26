<?php
header("Content-Type: application/json");
require_once "db.php";

$user_id = isset($_GET['user_id']) ? intval($_GET['user_id']) : 0;

if ($user_id <= 0) {
    echo json_encode(["status" => false, "message" => "Invalid user"]);
    exit;
}

$sql = "SELECT * FROM itineraries WHERE user_id = ? ORDER BY created_at DESC";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $user_id);
$stmt->execute();
$result = $stmt->get_result();

$itineraries = [];
while ($row = $result->fetch_assoc()) {
    $row['temples'] = json_decode($row['temples']); // Convert to array
    $itineraries[] = $row;
}

echo json_encode(["status" => true, "itineraries" => $itineraries]);
?>
