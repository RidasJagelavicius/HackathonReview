<?php

include 'functions.php';

$file = fopen('HackathonInfo.txt','r');

while(!feof($file))
{
	echo fgets($file) . '<br>';
}

?>