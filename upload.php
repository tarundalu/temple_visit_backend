<?php
require_once 'config.php'; // Your DB connection file

// Enable CORS if needed for frontend apps
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json");

// Check required fields
if (empty($_POST['temple_name']) || empty($_POST['category']) || !isset($_FILES['image'])) {
    echo json_encode(['status' => 'error', 'message' => 'Temple name, category, and image are required.']);
    exit;
}

$temple_name = $_POST['temple_name'];
$category = $_POST['category'];

// File handling
$image = $_FILES['image'];
$target_dir = "uploads/" . strtolower($category) . "/";
if (!is_dir($target_dir)) {
    mkdir($target_dir, 0777, true);
}

$filename = basename($image["name"]);
$target_file = $target_dir . time() . "_" . $filename;

if (move_uploaded_file($image["tmp_name"], $target_file)) {
    // Save to DB
    $stmt = $conn->prepare("INSERT INTO temple_images (temple_name, category, image_url) VALUES (?, ?, ?)");
    $stmt->bind_param("sss", $temple_name, $category, $target_file);
    
    if ($stmt->execute()) {
        echo json_encode(['status' => 'success', 'message' => 'Image uploaded successfully']);
    } else {
        echo json_encode(['status' => 'error', 'message' => 'Failed to save image in database']);
    }

    $stmt->close();
} else {
    echo json_encode(['status' => 'error', 'message' => 'Failed to upload image']);
}

$conn->close();
?>
