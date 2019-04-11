<?php

function evaluateLogin(){
	//Preconditions: None
	//Postconditions: $username, a variable containing the user's name, is returned. 
	//				  If the user is not logged in, the name is NULL.
	
	session_start(); //Resumes current session 
	
	if(isset($_COOKIE['username']))
		$username = $_COOKIE['username']
	
	else if(isset($_SESSION['username']))
		$username = $_SESSION['username'];

	else
		$username = NULL;
	return $username;
}



function connectToDatabase(){
	//Preconditions: None
	//Postconditions: $conn will be linked to the database provided through the variables
	$dbhost = 'localhost';
	$dbuser = 'root';
	$dbpass = '';
	$db = 'HackathonReview';
	// Create connection to SQL
	$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $db);
	return $conn
}
?>