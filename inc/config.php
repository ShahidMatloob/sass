<?php
date_default_timezone_set("Asia/Karachi");
$servername = "phpdatabase.crdjj0huoxwe.eu-west-2.rds.amazonaws.com";
$username = "admin";
$password = "";
$db = "sass";

// Create connection
$connection = mysqli_connect($servername, $username, $password, $db);

// Check connection
if (!$connection) {
  die("Connection failed: " . mysqli_connect_error());
}
$shipping_ammount['shipping'] = 200;

?>
