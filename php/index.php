<DOCTYPE html>
<html>
<body>
<h1> Home Page </h1>
<p>
<?php

include 'functions.php';
if(isset($_SESSION['username'])) 
{
	echo ("Hello, " . $_SESSION["username"] . "! (SESSION)");
	$session = TRUE;
}
else if(isset($_COOKIE['username']))
{
	echo ("Hello, " . $_COOKIE["username"] . "!");
	$cookie = TRUE;
}
?>
</p>

<?php
if(!$session && !$cookie) // If User is NOT logged in, only print Register Account and Login
{
	echo '<form action = "registerAccount.php" method = "post">' ;
	echo '<p> <input type = "submit" value = "Register a new account" /></p>';
	echo '</form>';


	echo '<form action = "loginAccount.php" method = "post">';
	echo '<p> <input type = "submit" value = "Login" /></p>';
	echo '</form>';
}
else // Print logout, account settings, search, and view hackathon
{
	
	echo '<form action = "logout.php" method = "post">';
	echo '<p> <input type = "submit" value = "Logout" /></p>';
	echo '</form>';

	echo '<form action = "changeAccount.php" method = "post">';
	echo '<p> <input type = "submit" value = "Account Information" /></p>';
	echo '</form>';

	echo '<form action = "search.php" method = "post">';
	echo '<p> <input type = "text" name = "userSearch" placeholder = "Search for an account"/></p>';
	echo '<p> <input type = "submit" value = "Search"/></p>';	
	echo '</form>';

	echo '<form action = "viewHackathon.php?hackid=1" method = "post">';
	echo '<p> <input type = "submit" value = "DemonHacks"/></p>';
	echo '</form>';
}
?>
</body>
</html>
