<?php
function db_connect($user, $pass) {
	$servername = "localhost";

	// Create connection
	$conn = new mysqli($servername, $user, $pass);

	// Check connection
	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	return $conn;
}

function fetch_post($name) {
	$value = null;
	if ($_SERVER['REQUEST_METHOD'] == 'POST' and isset($_POST[$name]))
	{
		$value = $_POST[$name];
	}

	return $value;
}
?>