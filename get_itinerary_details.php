<?php
header("Content-Type: application/json");
require_once "db.php";

$id = intval($_GET['id'] ?? 0);
if ($id <= 0) {
    echo json_encode(["status" => false, "message" => "Invalid ID"]);
    exit;
}

$sql = "SELECT * FROM itineraries WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $id);
$stmt->execute();
$result = $stmt->get_result();

if ($row = $result->fetch_assoc()) {
    $row['temples'] = json_decode($row['temples'], true);
    echo json_encode(["status" => true, "data" => $row]);
} else {
    echo json_encode(["status" => false, "message" => "Not found"]);
}
?>
