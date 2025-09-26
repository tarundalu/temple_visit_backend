<?php
header("Content-Type: application/json");
require_once "db.php";

$user_id = isset($_GET['user_id']) ? intval($_GET['user_id']) : 0;

$sql = "SELECT t.id, t.name, t.location, t.city, t.state, t.main_image, t.rating, t.reviews_count,
        CASE WHEN f.id IS NOT NULL THEN 1 ELSE 0 END AS is_favorite,
        CASE WHEN v.id IS NOT NULL THEN 1 ELSE 0 END AS is_visited
        FROM temples t
        LEFT JOIN temple_favorites f ON t.id = f.temple_id AND f.user_id = ?
        LEFT JOIN temple_visited v ON t.id = v.temple_id AND v.user_id = ?
        ORDER BY t.name ASC";

$stmt = $conn->prepare($sql);
$stmt->bind_param("ii", $user_id, $user_id);
$stmt->execute();
$result = $stmt->get_result();

$temples = [];
while ($row = $result->fetch_assoc()) {
    $temples[] = $row;
}

echo json_encode([
    "status" => true,
    "temples" => $temples
]);
?>
