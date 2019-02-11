<?php
//Session Data
include 'functions.php';
session_start();

// Login information
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = 'raspberrypi';
$db = 'HackathonReview';

// Create connection to SQL
$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $db);

echo '<h1> Account Information </h1>';

if(isset($_COOKIE['username']))//If user is logged in with cookies
	$username = $_COOKIE["username"];//Take username from cookie
else if(isset($_SESSION['username']))
	$username = $_SESSION["username"];//Take username from session
else
	die("User not logged in!");

$sql = "SELECT * FROM User_Info WHERE username = '$username'"; // Select User Data from Table
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_assoc($result); // Store data in array $row
?>

<html>
<form method = "post">
  Email: <input type="text" readonly="readonly" name="email" value="<?php echo $row['email'];?>"><br>
  Username: <input type="text" name="username" value="<?php echo $row['username'];?>"><br> 
  Name: <input type ="text" name = "name" value = "<?php echo $row['name'];?>"><br>
  Gitlink: <input type = "url" name = "gitlink" value = "<?php echo $row['gitlink'];?>"><br>
  <input type="submit" value="Save changes" name = "submitbutton">
</form>
<form action = "index.php" method = "post"> 
	<p> <input type = "submit" value = "Go home"/></p>
</form>
</html>

<?php

if(isset($_POST['submitbutton'])) // when button pressed
{

if(isset($_SESSION['username']))
	$oldname = $_SESSION['username']; // temp store oldname
if(isset($_COOKIE['username']))
	$oldname = $_COOKIE['username']; // temp store oldname

//TAKE FROM FORM
$newname = $mysqli->real_escape_string($_POST['username']); // take input username and store in $newname
$realname = $mysqli->real_escape_string($_POST['name']);
$gitlink = $mysqli->real_escape_string($_POST['gitlink']);

//NAME ALREADY EXISTS VALIDATION
if($newname != $oldname){
$samename = "SELECT * FROM User_Info WHERE username = '$newname'";
$num = mysqli_num_rows(mysqli_query($conn, $samename));
if($num > 0)
die("Username already taken!");}

//UPDATE SESSION
if(isset($_SESSION['username'])){ 
	$oldname = $_SESSION['username'];
	$sql = "UPDATE User_Info SET username = '$newname', name = '$realname', gitlink = '$gitlink' WHERE username = '$oldname'";
	unset($_SESSION['username']); // Destroy old session
	session_destroy();
	session_start();
	$_SESSION['username'] = $newname; // Make new session with new username
}
//UPDATE COOKIE
else if(isset($_COOKIE['username'])){
	$sql = "UPDATE User_Info SET username = '$newname', name = '$realname', gitlink = '$gitlink' WHERE username = '$oldname'";
	setcookie("username", $newname, time() - 7200); // Destroy old cookie
	setcookie("username", $newname, time() + 7200); // Bake new cookie
}

mysqli_query($conn,$sql); // The actual storing process happens here
	
echo '<p> Stored ' . $newname . ' </p>';
}
?>




