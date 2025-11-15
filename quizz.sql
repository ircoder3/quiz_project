-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2025 at 09:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizz`
--

-- --------------------------------------------------------

--
-- Table structure for table `quiz_result`
--

CREATE TABLE `quiz_result` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `score` int(3) NOT NULL,
  `submitted_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_result`
--

INSERT INTO `quiz_result` (`id`, `username`, `score`, `submitted_time`) VALUES
(1, 'ABC', 9, '2025-11-15 19:43:45');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_table`
--

CREATE TABLE `quiz_table` (
  `id` int(11) NOT NULL,
  `question` varchar(500) NOT NULL,
  `option1` varchar(255) NOT NULL,
  `option2` varchar(255) NOT NULL,
  `option3` varchar(255) NOT NULL,
  `option4` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_table`
--

INSERT INTO `quiz_table` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(1, 'What is the full form of OS?', 'Open Source', 'Operating System', 'Oracle System', 'Online Service', 'Operating System'),
(2, 'What does the \"ls\" command do in the Operating System (Unix/Linux)?', 'Deletes the files or directory', 'Changes the files or directory', 'Lists the contents of a directory', 'Creates a new directory', 'Lists the contents of a directory'),
(3, 'What does the Pwd command do?', 'Shows the current directory', 'Deletes a file', 'Lists all users', 'Creates a new folder', 'Shows the current directory'),
(4, 'Which of the following command is used to remove a file?', 'mv', 'cp', 'ls', 'rm', 'rm'),
(5, 'What does \"mkdir\" command do?', 'Creates new directory', 'Deletes a directory', 'Shows the current directory', 'Lists files in a directory', 'Creates new directory'),
(6, 'How do you create a new directory named \"Lab_Programs\" ?', 'cd Lab_Programs', 'rm Lab_Programs', 'mv Lab_Programs', 'mkdir Lab_Programs', 'mkdir Lab_Programs'),
(7, 'Which command is used to copy a file from one location to another?', 'mv ', 'cp', 'rm', 'ls', 'cp'),
(8, 'What does GUI stand for?', 'Global User Internet', 'Generally Used Internet', 'Graphical User Interface', 'Graphical Unified Input', 'Graphical User Interface'),
(9, 'Which of these is an example of an operating system?', 'MS word', 'Google Chrome', 'Firefox', 'Windows', 'Windows'),
(10, 'Which of these actions is safest to do before deleting files?', 'Check the file contents', 'close the computer', 'Restart the computer', 'Remove the charging cable (if charging)', 'Check the file contents');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quiz_result`
--
ALTER TABLE `quiz_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_table`
--
ALTER TABLE `quiz_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quiz_result`
--
ALTER TABLE `quiz_result`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quiz_table`
--
ALTER TABLE `quiz_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
