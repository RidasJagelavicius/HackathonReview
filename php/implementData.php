<?php

$activated = False;
if($activated){

include 'functions.php';
$file = fopen('HackathonInfo.txt','r');


$name=array(); 
$state=array(); 
$city=array(); 
$start=array(); 
$end=array(); 
$siteURL=array(); 
$logoURL=array(); 
$backgroundURL=array();

$count = 1;
while(!feof($file))
{
	if($count%9 == 1)
		$name[] = fgets($file);
	else if($count%9 == 2)
		$start[] = fgets($file);
	else if($count%9 == 3)
		$end[] = fgets($file);
	else if($count%9 == 4)
		$city[] = fgets($file);
	else if($count%9 == 5)
		$state[] = fgets($file);
	else if($count%9 == 6)
		$siteURL[] = fgets($file);
	else if($count%9 == 7)
		$logoURL[] = fgets($file);
	else if($count%9 == 8)
		$backgroundURL[] = fgets($file);
	else if($count%9 == 0)
		fgets($file);
	$count++;
}

$num_hacks = $count / 9;

for ($x = 0; $x < $num_hacks; $x++)
{
	$sql = "INSERT INTO Hackathons (Name, State, City, Start, End, siteURL, logoURL, backgroundURL) VALUES ('$name[$x]','$state[$x]','$city[$x]','$start[$x]','$end[$x]','$siteURL[$x]','$logoURL[$x]','$backgroundURL[$x]')";
	mysqli_query($conn,$sql);
}
}
else{
	die("Script not activated");
}
?>
