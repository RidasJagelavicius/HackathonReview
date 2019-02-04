<?php

include 'functions.php';

$servername = "localhost";
$username = "root";
$password = "raspberrypi";
$dbname = "HackathonReview";
$conn = new mysqli($servername, $username, $password, $dbname);

$hackid = $_GET['hackid'];

$sql = "SELECT * FROM Hackathons WHERE HackID = '$hackid'";
if(mysqli_num_rows(mysqli_query($conn,$sql)) < 1)
	die("Hackathon not found, try searching again.");
$row = mysqli_fetch_assoc(mysqli_query($conn,$sql));


echo 'Name: ' . $row['Name'] . '<br>';
echo 'Host: ' . $row['University'] . '<br>';
echo 'Sponsors: ' . $row['Sponsors'] . '<br>';
echo 'State: ' . $row['State'] . '<br>';
echo 'City: ' . $row['City'] . '<br>';
?>

<form method = "post">
	<p><input type = "text" placeholder = "Pros" name = "pros" maxlength = 240></p>
	<p><input type = "text" placeholder = "Cons" name = "cons" maxlength = 240></p>
	<p><input type = "submit" text = "Submit review!" name = "submitbutton"></p>
</form>
<?php

$sql = "SELECT * FROM Reviews WHERE hackid = '$hackid'";
$result = mysqli_query($conn,$sql);
echo 'Reviews<br><br>';
while($row = mysqli_fetch_assoc($result))
	{
		$uid = $row['UID'];
		$sql2 = "SELECT * FROM User_Info WHERE UID = '$uid'";
		$row2 = mysqli_fetch_assoc(mysqli_query($conn,$sql2));
		echo 'Reviewer: ';
		echo '<a href="viewAccount.php?user=' .$row2['UID'] . '">' . $row2['username'] . '</a><br>';
		echo 'Pros: ' . $row['Pros'] . '<br>';
		echo 'Cons: ' . $row['Cons'] . '<br>';
		echo '<br><br>';
	}

if(isset($_SESSION['username']))
	
{
	$session = TRUE;
	$user = $_SESSION['username'];
	$sql = "SELECT UID FROM User_Info WHERE username = '$user'";
}
else if(isset($_COOKIE['username']))
{
	$cookie = TRUE;
	$user = $_COOKIE['username'];
	$sql = "SELECT UID FROM User_Info WHERE username = '$user'";
}
else
	die("Cookie/Session not found (not logged in)");

$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_assoc($result);
$uid = $row['UID'];

if(isset($_POST['submitbutton']))
{
	$pros = $_POST['pros'];
	$cons = $_POST['cons'];
	$sql = "SELECT * FROM Reviews WHERE UID = '$uid' AND HackID = '$hackid'";
	if(mysqli_num_rows(mysqli_query($conn,$sql)) > 0)
		die("You can not submit more than one review!");
	else
	{
		$sql = "INSERT INTO Reviews (pros, cons, hackid, UID) VALUES ('$pros','$cons','$hackid','$uid')";
		mysqli_query($conn,$sql);
		echo 'Stored review!';
	}
}
?>