<html>
<form method="post">
 <h> Register a new account </h>
 <p>Email: <input type="text" name="email" /></p>
 <p>Password: <input type="password" name="password"/></p>
 <p>Username: <input type="text" name = "username"/></p>
 <p><input type="submit" name="submitbutton"/></p>
</form>
</html>

<?php

// Login information
$servername = "localhost";
$username = "root";
$password = "raspberrypi";
$dbname = "HackathonReview";
$conn = new mysqli($servername, $username, $password, $dbname);


if(isset($_POST['submitbutton']))
{
	if(isset($_POST['email']) && !empty($_POST['email']) && isset($_POST['password']) && !empty($_POST['password']))
	{
		$email = $_POST['email'];
		$user_password = $_POST['password'];
		$user_name = $_POST['username'];
	}
	else
		die("One or more of your inputs are missing. Please return and re-check your entries.");


	if (!filter_var($email, FILTER_VALIDATE_EMAIL)){
		die("Invalid characters found in email.");
	}
	
	$allowed = array(".", "-", "_"); // you can add here more values you want to allow.
	if(!ctype_alnum(str_replace($allowed, '', $user_name )))
	die("Invalid username.");

	$hash = password_hash($user_password, PASSWORD_DEFAULT); 
	
	//CHECK IF EMAIL EXISTS
	$sql = "SELECT email FROM User_Info WHERE email = '$email'";
	$num = mysqli_num_rows(mysqli_query($conn, $sql));
	if($num > 0)
		die("Email already registered!");
	//CHECK IF USERNAME EXISTS
	$sql = "SELECT username FROM User_Info WHERE username = '$user_name'";
	$num = mysqli_num_rows(mysqli_query($conn,$sql));
	if($num > 0)
		die("Username taken!");
	
	// Insert given data into the table "User_Info"
	$sql = "INSERT INTO User_Info (email, hash, username) VALUES ('$email','$hash','$user_name')";

	if ($conn->query($sql) === TRUE) {
		echo "New account registered successfully";
	} 

	else {
		echo "Error: " . $sql . "<br>" . $conn->error;
}
	
	mysqli_close($conn);
}
?>