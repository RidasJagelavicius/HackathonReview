<?php

include 'functions.php';

$file = fopen('HackathonInfo.txt','r');

$count = 1;

$name=array(); 
$state=array(); 
$city=array(); 
$start=array(); 
$end=array(); 
$siteURL=array(); 
$logoURL=array(); 
$backgroundURL=array();

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
	$count++;
}
var_dump($name);
?>