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
//so i made 2 tables in the database quizz table 1 is quiz_table which has 7 columns and quiz_result with 4 colums which displays score and details entered
