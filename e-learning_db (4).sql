-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 02, 2022 at 08:39 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-learning_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `admin_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `admin_pass` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin02');

-- --------------------------------------------------------

--
-- Table structure for table `course_details`
--

CREATE TABLE `course_details` (
  `course_id` int(11) NOT NULL,
  `course_name` text COLLATE utf8_bin NOT NULL,
  `course_desc` text COLLATE utf8_bin NOT NULL,
  `course_img` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `course_details`
--

INSERT INTO `course_details` (`course_id`, `course_name`, `course_desc`, `course_img`) VALUES
(1, 'Learn Python Programming', 'Python is a powerful general-purpose programming language. It is used in web development, data science, creating software prototypes, and so on.', '../image/courseimg/python.jpg'),
(2, 'Learn Java Programming', 'Java is a powerful general-purpose programming language. It is used to develop desktop and mobile applications, big data processing, embedded systems, and so on. ', '../image/courseimg/Java.png'),
(3, 'Learn Javascript Programming', 'JavaScript is a powerful and flexible programming language. It can execute on a web browser that allows us to make interactive webpages such as popup menus, animations, form validation, etc.\r\n\r\n', '../image/courseimg/JavaScript.png'),
(4, 'Learn C++ Programming', 'C++ is a powerful general-purpose programming language. It can be used to develop operating systems, browsers, games, and so on.', '../image/courseimg/C++Logo.png'),
(5, 'Learn PHP', ' PHP is a programming language that allows web developers to create dynamic content that interacts with databases. ', '../image/courseimg/php.png'),
(6, 'Learn Andriod ', 'Android is an open source and Linux-based operating system for mobile devices such as smartphones and tablet computers.', '../image/courseimg/android.png'),
(7, 'Learn C programming ', 'C is powerful general-purpose programming language . It can be used to develop software like operating systems,database,compilers and so on', '../image/courseimg/C++.png');

-- --------------------------------------------------------

--
-- Table structure for table `enrolled_courses`
--

CREATE TABLE `enrolled_courses` (
  `enrollCourse_id` int(11) NOT NULL,
  `courseId` int(11) NOT NULL,
  `courseName` text COLLATE utf8_bin NOT NULL,
  `userEmail` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `enrolled_courses`
--

INSERT INTO `enrolled_courses` (`enrollCourse_id`, `courseId`, `courseName`, `userEmail`) VALUES
(1, 1, ' Learn Python Programming', 'sonammehta@gmail.com'),
(2, 2, ' Learn Java Programming', 'sonammehta@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `enrolled_videotut`
--

CREATE TABLE `enrolled_videotut` (
  `enroll_id` int(11) NOT NULL,
  `courseId` int(11) NOT NULL,
  `courseName` text COLLATE utf8_bin NOT NULL,
  `userEmail` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `enrolled_videotut`
--

INSERT INTO `enrolled_videotut` (`enroll_id`, `courseId`, `courseName`, `userEmail`) VALUES
(1, 1, ' Learn Python Programming', 'sonammehta@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `f_content` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `f_content`, `user_id`) VALUES
(1, ' I recommend this e-learning website to all the students interested in programming', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lesson_details`
--

CREATE TABLE `lesson_details` (
  `lesson_id` int(11) NOT NULL,
  `lesson_name` text COLLATE utf8_bin NOT NULL,
  `lesson_data` text COLLATE utf8_bin NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `lesson_details`
--

INSERT INTO `lesson_details` (`lesson_id`, `lesson_name`, `lesson_data`, `course_id`, `course_name`) VALUES
(1, 'History', '../lessondata/python1.pdf', 1, 'Learn Python Programming'),
(2, 'Installing and running python', '../lessondata/Python PPT 1.pdf', 1, 'Learn Python Programming'),
(4, 'Names & Assignment', '../lessondata/py ppt3.pdf', 1, 'Learn Python Programming'),
(5, 'Sequence Type: tuple, list, string', '../lessondata/py ppt4.pdf', 1, 'Learn Python Programming'),
(6, 'What is Java?', '../lessondata/what is java.pdf', 2, 'Learn Java Programming'),
(7, 'History of Java', '../lessondata/history of java.pdf', 2, 'Learn Java Programming'),
(8, 'Features of Java', '../lessondata/features of java.pdf', 2, 'Learn Java Programming'),
(9, 'Variables in Java', '../lessondata/variables in java.pdf', 2, 'Learn Java Programming');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `que_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` text COLLATE utf8_bin NOT NULL,
  `quizLink` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`que_id`, `course_id`, `course_name`, `quizLink`) VALUES
(1, 5, 'Learn PHP', 'https://forms.gle/BhADy9qa7ssPGuaL8');

-- --------------------------------------------------------

--
-- Table structure for table `solved_quiz`
--

CREATE TABLE `solved_quiz` (
  `quiz_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` text COLLATE utf8_bin NOT NULL,
  `userEmail` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `solved_quiz`
--

INSERT INTO `solved_quiz` (`quiz_id`, `course_id`, `course_name`, `userEmail`) VALUES
(1, 5, ' Learn PHP', 'sonammehta@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `user_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `user_pass` varchar(255) COLLATE utf8_bin NOT NULL,
  `user_occ` varchar(255) COLLATE utf8_bin NOT NULL,
  `user_img` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `user_name`, `user_email`, `user_pass`, `user_occ`, `user_img`) VALUES
(1, 'Sonam Mehta', 'sonammehta@gmail.com', 'sonam', 'Web Developer', '../image/userImage/student2.jpg'),
(2, 'John', 'john@gmail.com', 'john123', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `video_tutorials`
--

CREATE TABLE `video_tutorials` (
  `videotut_id` int(11) NOT NULL,
  `course_name` text COLLATE utf8_bin NOT NULL,
  `video_topic` text COLLATE utf8_bin NOT NULL,
  `video_link` text COLLATE utf8_bin NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `video_tutorials`
--

INSERT INTO `video_tutorials` (`videotut_id`, `course_name`, `video_topic`, `video_link`, `course_id`) VALUES
(1, 'Learn Python Programming', ' History', 'https://www.youtube.com/embed/Tm5u97I7OrM', 1),
(2, 'Learn Python Programming', ' Sequence Types ', 'https://www.youtube.com/embed/lFi3aenAfZU', 1),
(3, 'Learn Python Programming', ' Installing and Running Python', 'https://www.youtube.com/embed/AwIXfaGEN4c', 1),
(4, 'Learn Python Programming', ' Names and Assignment ', 'https://www.youtube.com/embed/E5WJGTILFPw', 1),
(5, 'Learn Java Programming', ' What is Java?', 'https://www.youtube.com/embed/2Xa3Y4xz8_s', 2),
(7, 'Learn Java Programming', ' History of Java', 'https://www.youtube.com/embed/DcQPtlFlgzY', 2),
(8, 'Learn Java Programming', ' Features of Java', 'https://www.youtube.com/embed/O5hShUO6wxs', 2),
(10, 'Learn Java Programming', ' Variables in Java', 'https://www.youtube.com/embed/N8LDSryePuc', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course_details`
--
ALTER TABLE `course_details`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `enrolled_courses`
--
ALTER TABLE `enrolled_courses`
  ADD PRIMARY KEY (`enrollCourse_id`);

--
-- Indexes for table `enrolled_videotut`
--
ALTER TABLE `enrolled_videotut`
  ADD PRIMARY KEY (`enroll_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `lesson_details`
--
ALTER TABLE `lesson_details`
  ADD PRIMARY KEY (`lesson_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`que_id`);

--
-- Indexes for table `solved_quiz`
--
ALTER TABLE `solved_quiz`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `video_tutorials`
--
ALTER TABLE `video_tutorials`
  ADD PRIMARY KEY (`videotut_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_details`
--
ALTER TABLE `course_details`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `enrolled_courses`
--
ALTER TABLE `enrolled_courses`
  MODIFY `enrollCourse_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `enrolled_videotut`
--
ALTER TABLE `enrolled_videotut`
  MODIFY `enroll_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lesson_details`
--
ALTER TABLE `lesson_details`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `que_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `solved_quiz`
--
ALTER TABLE `solved_quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `video_tutorials`
--
ALTER TABLE `video_tutorials`
  MODIFY `videotut_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
