<?php
header("Content-Type: application/json");
require_once "db.php";

$user_id = intval($_GET['user_id']);

$sql = "SELECT t.id, t.name, t.location, t.city, t.state, t.main_image, t.rating 
        FROM temples t
        JOIN temple_favorites f ON t.id = f.temple_id
        WHERE f.user_id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $user_id);
$stmt->execute();
$result = $stmt->get_result();

$favorites = [];
while ($row = $result->fetch_assoc()) {
    $favorites[] = $row;
}

echo json_encode(["status" => true, "favorites" => $favorites]);
?>
