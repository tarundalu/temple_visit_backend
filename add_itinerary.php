<?php
header("Content-Type: application/json");
require_once "db.php";

$data = json_decode(file_get_contents("php://input"), true);

$user_id = isset($data['user_id']) ? intval($data['user_id']) : 0;
$title = trim($data['title'] ?? '');
$start_date = $data['start_date'] ?? '';
$end_date = $data['end_date'] ?? '';
$status = $data['status'] ?? 'Planning';
$temples = $data['temples'] ?? [];

if ($user_id <= 0 || empty($title) || empty($start_date) || empty($end_date) || empty($temples)) {
    echo json_encode(["status" => false, "message" => "Invalid input"]);
    exit;
}

$temples_json = json_encode($temples);

$sql = "INSERT INTO itineraries (user_id, title, start_date, end_date, status, temples) 
        VALUES (?, ?, ?, ?, ?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param("isssss", $user_id, $title, $start_date, $end_date, $status, $temples_json);

if ($stmt->execute()) {
    echo json_encode(["status" => true, "message" => "Itinerary added successfully"]);
} else {
    echo json_encode(["status" => false, "message" => "Failed to add itinerary"]);
}
?>
