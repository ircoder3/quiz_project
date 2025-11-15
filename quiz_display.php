<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quiz</title>
    <link rel="stylesheet" href="quiz.css">
<body>
<div class="container">
<?php
include "quiz_connect.php"; 
$username = isset($_POST['username']) ? $_POST['username'] : "Guest";
echo "<h1>Welcome, ".$username."!</h1>";
$sql = "SELECT * FROM quiz_table";
$result = mysqli_query($connection,$sql);

echo "<h1> Welcome ". $username.". Here is the Quiz</h1>";
echo "<form method='POST' action='quiz_submit.php'>";
while($row = mysqli_fetch_assoc($result)) {
    echo "<input type='hidden' name='username' value='".$username."'>";

    echo "<p><strong>".$row["id"].". ".$row["question"]."</strong></p>";
    echo "<input type='radio' name='answer".$row["id"]."' value='".$row["option1"]."' required> ".$row["option1"]."<br>";
    echo "<input type='radio' name='answer".$row["id"]."' value='".$row["option2"]."'> ".$row["option2"]."<br>";
    echo "<input type='radio' name='answer".$row["id"]."' value='".$row["option3"]."'> ".$row["option3"]."<br>";
    echo "<input type='radio' name='answer".$row["id"]."' value='".$row["option4"]."'> ".$row["option4"]."<br><br>";
}

echo "<input type='text' name='username' placeholder='Enter username:' required><br><br>";
echo "<input type='submit' name='submit' value='SUBMIT QUIZ'>";
echo "</form>";
?>

