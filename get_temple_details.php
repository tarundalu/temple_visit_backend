<?php
header("Content-Type: application/json");
require_once "db.php";

if (!isset($_GET['id'])) {
    echo json_encode(["status" => false, "message" => "Temple ID is required"]);
    exit;
}

$temple_id = intval($_GET['id']);
$user_id = isset($_GET['user_id']) ? intval($_GET['user_id']) : 0;

// Fetch temple details with is_favorite and is_visited
$sqlTemple = "SELECT t.id, t.name, t.location, t.city, t.state, t.distance, t.main_image, 
              t.overview, t.timings, t.how_to_reach, t.rating, t.reviews_count,
              CASE WHEN f.id IS NOT NULL THEN 1 ELSE 0 END AS is_favorite,
              CASE WHEN v.id IS NOT NULL THEN 1 ELSE 0 END AS is_visited
              FROM temples t
              LEFT JOIN temple_favorites f ON t.id = f.temple_id AND f.user_id = ?
              LEFT JOIN temple_visited v ON t.id = v.temple_id AND v.user_id = ?
              WHERE t.id = ?";

$stmt = $conn->prepare($sqlTemple);
$stmt->bind_param("iii", $user_id, $user_id, $temple_id);
$stmt->execute();
$temple = $stmt->get_result()->fetch_assoc();

if (!$temple) {
    echo json_encode(["status" => false, "message" => "Temple not found"]);
    exit;
}

// Fetch images
$sqlImages = "SELECT image_url FROM temple_images WHERE temple_id = ?";
$stmt = $conn->prepare($sqlImages);
$stmt->bind_param("i", $temple_id);
$stmt->execute();
$resImages = $stmt->get_result();
$images = [];
while ($row = $resImages->fetch_assoc()) {
    $images[] = $row['image_url'];
}

// Fetch reviews
$sqlReviews = "SELECT r.rating, r.review, u.name AS user_name 
               FROM temple_reviews r
               JOIN users u ON r.user_id = u.id
               WHERE r.temple_id = ? ORDER BY r.created_at DESC";
$stmt = $conn->prepare($sqlReviews);
$stmt->bind_param("i", $temple_id);
$stmt->execute();
$resReviews = $stmt->get_result();
$reviews = [];
while ($row = $resReviews->fetch_assoc()) {
    $reviews[] = $row;
}

echo json_encode([
    "status" => true,
    "temple" => $temple,
    "images" => $images,
    "reviews" => $reviews
]);
?>
