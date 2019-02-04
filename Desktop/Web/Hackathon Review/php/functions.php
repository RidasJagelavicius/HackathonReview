<?php
session_start();

// Login information
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = 'raspberrypi';
$db = 'HackathonReview';
// Create connection to SQL
$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $db);
?>