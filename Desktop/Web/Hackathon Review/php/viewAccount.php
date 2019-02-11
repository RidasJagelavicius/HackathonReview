<?php

include 'functions.php';
$servername = "localhost";
$username = "root";
$password = "raspberrypi";
$dbname = "HackathonReview";
$conn = new mysqli($servername, $username, $password, $dbname);

if(!isset($_GET['user']))
	die("No user entered! (How did you get here?)");

$uid = $mysqli->real_escape_string($_GET['user']);

$sql = "SELECT * FROM User_Info WHERE UID = '$uid'";
$row = mysqli_fetch_assoc(mysqli_query($conn,$sql));

echo 'Username: ' . $row['username'] . '<br>';
if(!$row['name'] == '')
	echo 'Name: ' . $row['name'] . '<br>';
if(!$row['gitlink'] == '')
	echo "<a href = " . $row['gitlink'] . '> Gitlink</a><br>'; 

$sql = "SELECT * FROM Reviews WHERE UID = '$uid'";
$num = mysqli_num_rows(mysqli_query($conn,$sql));

echo 'Number of reviews: ' . $num . '<br>';
