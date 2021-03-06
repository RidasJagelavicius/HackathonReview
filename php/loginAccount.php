<?php

include 'functions.php';
$conn = connectToDatabase();

	if(isset($_POST['email']) && isset($_POST['password']))
	{
		//$email = $mysqli->real_escape_string($_POST['email']);
		//$user_password = $mysqli->real_escape_string($_POST['password']);
		
		$email = $_POST['email'];
		$user_password = $_POST['password'];
		$rememberme = $_POST['rememberMe'];
	}
	else
		die("One or more of your inputs are missing. Please return and re-check your entries.");
	
	
	// Tell SQL to take the stored hash from the database which corresponds to the input email 
	$sql = "SELECT hash FROM User_Info WHERE email = '$email'";
	
	// Query the server with our request (from above)
	$result = mysqli_query($conn, $sql);
	
	// Find the number of rows matching our search
	$resultCheck = mysqli_num_rows($result);

	// Set var $row equal to the result row of our query (this is an array)
	$row = mysqli_fetch_assoc($result);
	
	// Verify the given password matches the stored hash (if true, then login is good)
	$check = password_verify($user_password , $row['hash']); // hash is accessed through array notation
	
	$sql = "SELECT username FROM User_Info WHERE email = '$email'";
	$result = mysqli_query($conn,$sql);
	$row = mysqli_fetch_assoc($result);
	$username = $row['username'];

	
	if($check == TRUE)
	{
		if($rememberme == TRUE)
			setcookie("username",$username , time() + 7200); // 48 hours in seconds
		else
			$_SESSION['username'] = $username;
	
		header("Location:/html/index.html");
		//echo('Login success!');
		exit();
	}
	else
		die("Incorrect username / password.");
	
	mysqli_close($conn);

?>
