<?php
$username = "";
setcookie("username",$username , time() -7200);
session_start();
unset($_SESSION['username']);
session_destroy();
header("Location: index.php");
exit();
?>