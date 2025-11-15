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
$username = $_POST['username'];

$sql = "SELECT * FROM quiz_table";
$result = mysqli_query($connection, $sql);
$score = 0;
$total = 0;

while($row = mysqli_fetch_assoc($result)) {
    $question_id = $row['id'];
    $correct_answer = $row['answer'];  
    if(isset($_POST['answer'.$question_id])) {
        $user_answer = $_POST['answer'.$question_id];
        
        if($user_answer == $correct_answer) {
            $score= $score+1;
        }
        $total=$total+1;
    }
}

$sql = "INSERT INTO quiz_result(`username`, `score`) VALUES ('$username', '$score')";


if(mysqli_query($connection, $sql)) {
    echo "QUIZ SUBMITTED <br>";
    echo"successfully submitted. <br> <br>";
} else {
    echo "Error occurred $sql <br>" . mysqli_error($connection);
}

$percentage = (($score/$total)*100);
echo "Name: " . $username . "<br>";
echo "Scored: " . $score ." out of ". $total . "<br>";
echo "Percentage: " . $percentage . "<br><br>";

echo "<a href='quiz_display.php'>Take Quiz Again</a>";

?>