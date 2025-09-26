<?php
require_once 'config.php'; // DB connection ($conn)

header('Content-Type: application/json');

$category = $_GET['category'] ?? '';

if (empty($category)) {
    echo json_encode(["status" => "error", "message" => "Category is required."]);
    exit;
}

$stmt = $conn->prepare("SELECT temple_name, image_url FROM temple_images WHERE category = ?");
$stmt->bind_param("s", $category);
$stmt->execute();
$result = $stmt->get_result();

$images = [];

while ($row = $result->fetch_assoc()) {
    $images[] = [
        'temple_name' => $row['temple_name'],
        'image_url' => $row['image_url']
    ];
}

echo json_encode([
    "status" => "success",
    "category" => $category,
    "temples" => $images
]);

$stmt->close();
$conn->close();
?>
