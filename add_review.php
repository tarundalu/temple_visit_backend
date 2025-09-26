<?php
header("Content-Type: application/json");
require_once "db.php";

$data = json_decode(file_get_contents("php://input"), true);

$temple_id = intval($data['temple_id']);
$user_id = intval($data['user_id']);
$rating = floatval($data['rating']);
$review = trim($data['review']);

// Check if temple exists
$checkTemple = "SELECT id FROM temples WHERE id = ?";
$stmt = $conn->prepare($checkTemple);
$stmt->bind_param("i", $temple_id);
$stmt->execute();
$stmt->store_result();
if ($stmt->num_rows == 0) {
    echo json_encode(["status" => false, "message" => "Temple not found"]);
    exit;
}

// Insert the review
$insertSql = "INSERT INTO temple_reviews (temple_id, user_id, rating, review) VALUES (?, ?, ?, ?)";
$insertStmt = $conn->prepare($insertSql);
$insertStmt->bind_param("iids", $temple_id, $user_id, $rating, $review);

if ($insertStmt->execute()) {
    // Recalculate rating and review count
    $calcSql = "SELECT COUNT(*) AS total_reviews, AVG(rating) AS avg_rating FROM temple_reviews WHERE temple_id = ?";
    $calcStmt = $conn->prepare($calcSql);
    $calcStmt->bind_param("i", $temple_id);
    $calcStmt->execute();
    $result = $calcStmt->get_result()->fetch_assoc();

    $new_count = $result['total_reviews'];
    $new_rating = round($result['avg_rating'], 1);

    // Update temple record
    $updateSql = "UPDATE temples SET reviews_count = ?, rating = ? WHERE id = ?";
    $updateStmt = $conn->prepare($updateSql);
    $updateStmt->bind_param("idi", $new_count, $new_rating, $temple_id);
    $updateStmt->execute();

    echo json_encode([
        "status" => true,
        "message" => "Review added successfully",
        "new_rating" => $new_rating,
        "reviews_count" => $new_count
    ]);
} else {
    echo json_encode(["status" => false, "message" => "Failed to add review"]);
}
?>
