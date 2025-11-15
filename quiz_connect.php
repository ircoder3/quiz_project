<?php
$servername="localhost";
$username ="root";
$password = "";
$dbName = "quizz";

$connection = mysqli_connect($servername, $username, $password, $dbName);

if(!$connection) 
{
    die("connection failed" .mysqli_connect_error());

}

?>