<?php
$hostname = "localhost";
$username = "u747381090_orbe";
$password = "8;AhtcF!6";
$database = "u747381090_cathydb";

$connection = mysqli_connect($hostname, $username, $password, $database);

if (!$connection) {
    die("Connection failed: " . mysqli_connect_error());
}
?>
