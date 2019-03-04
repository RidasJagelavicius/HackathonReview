<?php
session_start();

// Login information
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$db = 'HackathonReview';
// Create connection to SQL
$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $db);
?>