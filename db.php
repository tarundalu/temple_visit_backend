<?php
$host = "localhost";
$user = "root";
$pass = "";
$dbname = "temple_visit";

$conn = new mysqli($host, $user, $pass, $dbname);

if ($conn->connect_error) {
    die(json_encode(["status" => false, "message" => "DB Connection Failed"]));
}
?>
