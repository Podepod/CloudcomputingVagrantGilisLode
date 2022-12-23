<?php
echo "Hello World?!";



$servername = "192.168.33.12";
$username   = "cloud";
$password   = "cloud";
$database   = "CloudDB";
$port       = "3306";

$conn = mysqli_connect($servername, $username, $password, $database, $port);

if (!$conn)
{
    die("Connection failed: " . mysqli_connect_error());
}
else
{
    echo "Connection successful!";
}

?>