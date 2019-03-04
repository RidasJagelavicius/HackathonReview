<?php
include 'functions.php';
session_start();

// Create connection to SQL
$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $db);

//$search = $mysqli->real_escape_string($_POST['userSearch']);
$search = $_GET['userSearch'];

if(trim($search) == '')
	die("No search term entered!");

$sql = "SELECT * FROM User_Info WHERE username LIKE '%".$search."%'"; // concatenate % STRING % to find any value with STRING inside it
$result = mysqli_query($conn, $sql);
$numNames = mysqli_num_rows($result);

$sql2 = "SELECT * FROM Hackathons WHERE Name LIKE '%".$search."%'";
$result2 = mysqli_query($conn,$sql2);
$numHacks = mysqli_num_rows($result2);

	if($numNames > 0)
	{
		echo 'Usernames<br>';
		echo '<ul>';
		while($row = mysqli_fetch_assoc($result))
		{
			echo '<a href = "viewAccount.php?user=' .$row['UID'] . '"><li>' . $row['username'] . '</li></a>';
		}
		echo '</ul>';
	}
	if($numHacks > 0)
	{	
		echo 'Hackathons<br>';
		echo '<ul>';
	
		while($row2 = mysqli_fetch_assoc($result2))
		{
			echo '<a href = "viewHackathon.php?hackid=' .$row2['HackID'] . '"><li>' . $row2['Name'] . '</li></a>';
		}
		echo '</ul>';
	}
	if($numHacks + $numNames < 1)
		die('No matches found');
?>


