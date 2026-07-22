-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2020 at 03:46 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstone`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--
DROP TABLE IF EXISTS `activity_log`;
CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  PRIMARY KEY (`activity_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(1, 'arjun', '2025-01-10 10:25:33', 'Add Subject Data Structures'),
(2, 'arjun', '2025-01-10 10:27:08', 'Edit Subject Data Structures'),
(3, 'kavya', '2025-02-05 11:30:46', 'Edit Subject DAA'),
(4, 'ramesh', '2025-02-05 11:31:12', 'Edit Subject C'),
(5, 'priya', '2025-02-05 11:31:24', 'Edit Subject C++'),
(6, 'arjun', '2025-02-05 11:31:34', 'Edit Subject Python'),
(7, 'kavya', '2025-02-05 11:31:54', 'Edit Subject Java'),
(8, 'ramesh', '2025-02-05 11:32:37', 'Add Subject AI'),
(9, 'priya', '2025-02-05 11:34:54', 'Edit Subject Robotics'),
(10, 'arjun', '2025-03-01 09:26:18', 'Add User admin'),
(11, 'admin', '2025-03-01 09:37:51', 'Add Subject Machine Learning');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `choices` varchar(3) NOT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `quiz_question_id`, `answer_text`, `choices`) VALUES
(81, 34, 'Personal Home Page', 'A'),
(82, 34, 'Programming Hypertext', 'B'),
(83, 34, 'PHP Hypertext Preprocessor', 'C'),
(84, 34, 'Philippines', 'D'),
(85, 35, 'True', 'A'),
(86, 35, 'False', 'B'),
(87, 36, 'Option A', 'A'),
(88, 36, 'Option B', 'B'),
(89, 36, 'Option C', 'C'),
(90, 36, 'Option D', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--
DROP TABLE IF EXISTS `assignment`;
CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(300) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`) VALUES
(2, 'uploads/6843_File_Doc3.docx', '2025-10-11 01:24:32', 'Introduction to Programming Assignment 1', 13, 36, 'Assignment number 1'),
(3, 'uploads/3617_File_login.mdb', '2025-10-28 19:35:28', 'Database Login Table Setup', 9, 80, 'Database Login Assignment'),
(4, 'admin/uploads/7146_File_normalization.ppt', '2025-10-30 18:48:15', 'Normalization Concepts Presentation', 9, 95, 'Normalization PPT'),
(5, 'admin/uploads/7784_File_ABSTRACT.docx', '2025-10-30 18:48:33', 'Abstract Writing Exercise', 9, 95, 'Abstract Doc'),
(6, 'admin/uploads/4536_File_ABSTRACT.docx', '2025-10-30 18:53:32', 'Abstract Document Submission', 9, 95, 'Abstract'),
(10, 'admin/uploads/2209_File_598378_543547629007198_436971088_n.jpg', '2025-11-01 13:13:18', 'Design Diagram Assignment 2', 9, 95, 'Assignment#2'),
(11, 'admin/uploads/1511_File_bootstrap.css', '2025-11-01 13:18:25', 'CSS Styling Exercise', 9, 95, 'CSS Assignment'),
(12, 'admin/uploads/4309_File_new  2.txt', '2025-11-17 23:21:46', 'Text File Handling', 12, 145, 'Text Handling'),
(13, 'admin/uploads/5901_File_IS 112-Personal Productivity Using IS.doc', '2025-11-18 16:59:35', 'IS 112 Productivity Assignment', 12, 145, 'Productivity Assignment'),
(15, 'admin/uploads/7077_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2025-11-25 10:38:45', 'AFS Illustration Assignment', 18, 159, 'AFS Illustration'),
(16, 'admin/uploads/8470_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2025-11-25 10:39:19', 'First Class Assignment', 18, 160, 'Assignment 1'),
(17, 'admin/uploads/2840_File_IMG_0698.jpg', '2025-11-25 15:53:20', 'Image Processing Task', 12, 161, 'Image Assignment'),
(19, '', '2025-12-07 20:11:39', 'Kevin Test Assignment', 12, 162, 'Kevin Assignment'),
(20, '', '2025-12-07 20:26:43', 'Data Analysis Exercise', 12, 145, 'Data Assignment'),
(21, '', '2025-12-07 20:26:43', 'Database Task', 12, 162, 'DB Task'),
(22, '', '2025-12-07 20:27:18', 'Project Draft Submission', 12, 162, 'Project Draft'),
(23, '', '2025-12-07 20:33:11', 'Test Assignment', 12, 162, 'Test'),
(24, 'admin/uploads/7053_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2025-12-07 20:39:05', 'Kevin Sample File', 12, 0, 'Kevin File'),
(25, 'admin/uploads/2417_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2025-12-07 20:41:10', 'Kevin Sample File', 12, 0, 'Kevin File'),
(26, 'admin/uploads/8095_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2025-12-07 20:43:25', 'Kevin Sample File', 12, 0, 'Kevin File'),
(27, 'admin/uploads/4089_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2025-12-07 20:47:48', 'Final Project Submission', 12, 0, 'Final Project'),
(28, 'admin/uploads/2948_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2025-12-07 20:48:59', 'Chapter Exercises', 12, 0, 'Chapter Exercises'),
(29, 'admin/uploads/5971_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2025-12-07 20:50:47', 'Exercise Submission', 12, 0, 'Exercise'),
(30, 'admin/uploads/6926_File_Resume.docx', '2014-02-13 11:27:59', 'Resume Submission', 12, 167, 'Resume'),
(31, 'admin/uploads/8289_File_sample.pdf', '2020-12-21 09:56:48', 'Sample Assignment File', 9, 186, 'Sample Assignment');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(7, 'BTECH-CSE-4A'),
(8, 'BTECH-CSE-4B'),
(12, 'BTECH-CSE-3A'),
(13, 'BTECH-CSE-3B'),
(14, 'BTECH-CSE-3C'),
(15, 'BTECH-CSE-2A'),
(16, 'BTECH-CSE-2B'),
(17, 'BTECH-CSE-2C'),
(18, 'BTECH-CSE-1A'),
(19, 'BTECH-CSE-1B'),
(20, 'BTECH-CSE-1C'),
(21, 'BSC-IT-1A'),
(22, 'BSC-IT-2A'),
(23, 'MCA-1A'),
(24, 'MBA-1A');

-- --------------------------------------------------------

--
-- Table structure for table `class_quiz`
--
DROP TABLE IF EXISTS `class_quiz`;
CREATE TABLE `class_quiz` (
  `class_quiz_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `quiz_time` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_quiz`
--

INSERT INTO `class_quiz` (`class_quiz_id`, `teacher_class_id`, `quiz_time`, `quiz_id`) VALUES
(13, 167, 3600, 3),
(14, 167, 3600, 3),
(15, 167, 1800, 3),
(16, 185, 900, 0),
(17, 186, 1800, 6);

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_overview`
--
DROP TABLE IF EXISTS `class_subject_overview`;
CREATE TABLE `class_subject_overview` (
  `class_subject_overview_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `content` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_subject_overview`
--

INSERT INTO `class_subject_overview` (`class_subject_overview_id`, `teacher_class_id`, `content`) VALUES
(1, 167, '<p>Chapter&nbsp; 1</p>\r\n\r\n<p>Cha</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES
(1, 'Mission', '<p><strong>Mission</strong></p><p>Our mission is to provide a smart, interactive study platform, deliver quality learning resources, enable skill development, and empower students to achieve academic success and personal growth in Telangana and beyond.</p>'),
(2, 'Vision', '<p><strong>Vision</strong></p><p>We envision a leading digital learning companion recognized for innovation, accessibility, and providing students with intelligent tools to enhance knowledge, productivity, and lifelong learning.</p>'),
(3, 'History', '<p><strong>History</strong></p><p>Web Desk Smart Study Companion was established to create a seamless, tech-enabled learning experience. Since its inception, it has expanded into multiple campuses in Telangana, focusing on integrating smart tools for education, community programs, and student engagement.</p>'),
(4, 'Footer', '<p style="text-align:center">Web Desk Smart Study Companion</p><p style="text-align:center">All Rights Reserved &reg;2025</p>'),
(5, 'Upcoming Events', '<p><strong>Upcoming Events:</strong></p><ul><li>Online Exams</li><li>Inter-Campus Quiz</li><li>Project Defense</li><li>Student Enrollment</li></ul>'),
(6, 'Title', '<p>Web Desk Smart Study Companion</p>'),
(7, 'News', '<p><strong>Recent News</strong></p><p>Our digital learning platform has conducted skill-building workshops, online seminars, and community engagement programs across Telangana. Students have participated in interactive training and gained valuable knowledge using our smart tools.</p>'),
(8, 'Announcements', '<p><strong>Announcements</strong></p><ul><li>Examination Period: October 1-3, 2025</li><li>Semestrial Break: October 4 - October 20, 2025</li></ul>'),
(10, 'Calendar', '<p><strong>Academic Calendar</strong></p><ul><li>First Semester: June 1, 2025 - October 1, 2025</li><li>Semestrial Break: October 2 - October 20, 2025</li><li>Second Semester: November 1, 2025 - March 31, 2026</li><li>Summer Break: April 1 - May 15, 2026</li></ul>'),
(11, 'Directories', '<p><strong>Directories</strong></p><ul><li>Student Support - 040-1234567</li><li>Accounting - 040-2345678</li><li>Administration Office - 040-3456789</li><li>Registrar''s Office - 040-4567890</li><li>Library - 040-5678901</li><li>Online Lab - 040-6789012</li></ul>'),
(12, 'President', '<p><strong>Message from the Director</strong></p><p>Welcome to Web Desk Smart Study Companion. We aim to provide a seamless digital learning experience with smart tools, interactive courses, and access to resources that help students excel academically. Together, we create an innovative learning ecosystem in Telangana.</p>'),
(13, 'Motto', '<p><strong>SMART STUDY COMPANION:</strong></p><p>Innovative, Interactive, and Intelligent Learning for All</p>'),
(14, 'Campuses', '<p><strong>Campuses</strong></p><ul><li>Campus 1</li><li>Campus 2</li></ul>');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `dean` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `dean`) VALUES
(4, 'CSE', 'Dr. Ravi Reddy'),
(5, 'AIML', 'Dr. Sravya Rao'),
(9, 'Data Science', 'Dr. Teja Chandra'),
(10, 'CSIT', 'Dr. Anjali Chowdary');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--
DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_title`, `teacher_class_id`, `date_start`, `date_end`) VALUES
(12, 'Orientation with the Parents of the College Freshmen', 0, '2025-06-04', '2025-06-04'),
(13, 'Start of Classes', 0, '2025-06-11', '2025-06-11'),
(14, 'Intercampus Sports and Cultural Fest/College Week', 0, '2025-11-19', '2025-11-22'),
(15, 'Long Test', 113, '2025-12-05', '2025-12-06'),
(16, 'Long Test', 0, '2025-12-05', '2025-12-06'),
(17, 'Sample Event', 147, '2025-11-16', '2025-11-16'),
(18, 'Sample', 186, '2025-12-22', '2025-12-24');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(500) NOT NULL,
  `fdatein` varchar(200) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `uploaded_by` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`, `uploaded_by`) VALUES
(133, 'admin/uploads/7939_File_449E26DB.jpg', '2025-10-01 10:00:00', 'Course material: sss', 14, 177, 'sss', 'Honey Reddy'),
(132, 'admin/uploads/7939_File_449E26DB.jpg', '2025-10-01 10:05:00', 'Lecture notes: sss', 14, 178, 'sss', 'Honey Reddy'),
(131, 'admin/uploads/7939_File_449E26DB.jpg', '2025-10-01 10:10:00', 'Assignment: sss', 14, 12, 'sss', 'Honey Reddy'),
(129, 'admin/uploads/7939_File_449E26DB.jpg', '2025-10-01 10:15:00', 'Supplementary material: sss', 0, 12, 'sss', ''),
(130, 'admin/uploads/7939_File_449E26DB.jpg', '2025-10-01 10:20:00', 'Extra reading: sss', 0, 12, 'sss', ''),
(128, 'admin/uploads/7614_File_1476273_644977475552481_2029187901_n.jpg', '2025-10-01 10:25:00', 'Project document: kevi', 12, 185, 'kevi', 'Manasa Chowdary'),
(127, 'admin/uploads/1085_File_Resume.docx', '2025-10-01 10:30:00', 'Student resume: q', 12, 183, 'q', 'Manasa Chowdary'),
(126, 'admin/uploads/7895_File_PERU REPORT.pptx', '2025-10-01 10:35:00', 'Chapter 1 presentation', 12, 182, 'chapter 1', 'Manasa Chowdary'),
(125, 'admin/uploads/2658_File_kevin.docx', '2025-10-01 10:40:00', 'Test document: test', 12, 181, 'test', 'Manasa Chowdary'),
(123, 'admin/uploads/4801_File_painting-02.jpg', '2025-10-01 10:45:00', 'Artwork submission: Test', 12, 163, 'Test', 'Manasa Chowdary'),
(122, 'admin/uploads/3985_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2025-10-01 10:50:00', 'Illustration: dasd', 12, 145, 'dasd', 'Manasa Chowdary'),
(121, 'admin/uploads/7439_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2025-10-01 10:55:00', 'Sample file: kevin', 12, 162, 'kevin', 'Manasa Chowdary'),
(120, 'admin/uploads/7439_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2025-10-01 11:00:00', 'Sample file: kevin', 12, 145, 'kevin', 'Manasa Chowdary'),
(119, 'admin/uploads/3166_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2025-10-01 11:05:00', 'Reference file: kevin', 12, 145, 'kevin', 'Manasa Chowdary'),
(118, 'admin/uploads/4849_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2025-10-01 11:10:00', 'Notes: qq', 0, 162, 'qq', 'Vikram Naidu'),
(117, 'admin/uploads/9467_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2025-10-01 11:15:00', 'Group report: report group 1', 0, 162, 'report group 1', 'Marrianne Tumala'),
(116, 'admin/uploads/5990_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2025-10-01 11:20:00', 'Worksheet: w', 12, 162, 'w', 'Manasa Chowdary'),
(115, 'admin/uploads/5990_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2025-10-01 11:25:00', 'Worksheet: w', 12, 145, 'w', 'Manasa Chowdary'),
(138, 'admin/uploads/3952_File_sample.pdf', '2025-10-01 11:30:00', 'Sample quiz material', 9, 186, 'Sample', 'Srinivas Reddy'),
(139, 'admin/uploads/3579_File_sample.pdf', '2025-10-01 11:35:00', 'Reference material', 9, 186, '234234', 'Srinivas Reddy'),
(140, 'admin/uploads/6898_File_sample.pdf', '2025-10-01 11:40:00', 'Reference material', 9, 186, '234234', 'Srinivas Reddy'),
(141, 'admin/uploads/9782_File_sample.pdf', '2025-10-01 11:45:00', 'Reference material', 9, 186, '234234', 'Srinivas Reddy');

-- --------------------------------------------------------
-- (other tables from part 1 continue)
-- --------------------------------------------------------

-- Table structure for table `message`
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(50) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `message_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump data for message (kept as in original)
INSERT INTO `message` (`message_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`, `message_status`) VALUES
(2, 112, 'fasf', '2025-10-01 10:00:00', 113, 'Arjun Kumar', 'Sai Reddy', ''),
(4, 101, 'bcjhbcjksdbckldj', '2025-10-01 10:05:00', 101, 'Srinivas Reddy', 'Srinivas Reddy', 'read'),
(17, 102, 'tst', '2025-10-01 10:10:00', 93, 'Manasa Chowdary', 'Kiran Reddy', ''),
(19, 102, 'fasfaf', '2025-10-01 10:12:00', 93, 'Manasa Chowdary', 'Kiran Reddy', ''),
(27, 93, 'fa', '2025-10-01 10:15:00', 102, 'Kiran Reddy', 'Manasa Chowdary', ''),
(28, 136, 'Submit your classcard', '2025-10-01 10:20:00', 102, 'Tejaswini Rao', 'Manasa Chowdary', ''),
(29, 18, 'Test message', '2025-10-01 10:25:00', 9, 'Allan Rao', 'Srinivas Reddy', '');

-- Table structure for message_sent
DROP TABLE IF EXISTS `message_sent`;
CREATE TABLE `message_sent` (
  `message_sent_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `message_sent` (`message_sent_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`) VALUES
(1, 101, 'Hello!', '2025-10-01 09:00:00', 100, 'Srinivas Reddy', 'Divya Rao'),
(2, 102, 'Please submit your assignment.', '2025-10-01 09:05:00', 100, 'Manasa Chowdary', 'Divya Rao'),
(3, 105, 'Reminder: Class tomorrow.', '2025-10-01 09:10:00', 106, 'Nithya Varma', 'Raghav Naidu'),
(4, 106, 'Good job on last quiz!', '2025-10-01 09:15:00', 106, 'Raghav Naidu', 'Raghav Naidu'),
(5, 111, 'Check your grades.', '2025-10-01 09:20:00', 93, 'Vishal Chowdary', 'Kiran Reddy'),
(6, 112, 'Assignment feedback.', '2025-10-01 09:25:00', 93, 'Arjun Kumar', 'Kiran Reddy'),
(7, 113, 'Project details.', '2025-10-01 09:30:00', 93, 'Sai Reddy', 'Kiran Reddy'),
(8, 136, 'Submit your classcard', '2025-10-01 09:35:00', 12, 'Tejaswini Rao', 'Radha Sai'),
(9, 18, 'Test message', '2025-10-01 09:40:00', 9, 'Allan Rao', 'Srinivas Reddy');

-- (many other tables and inserts from part1 retained as-is)
-- Now include the part 2 content (teacher_class_student and following tables)
-- --------------------------------------------------------

DROP TABLE IF EXISTS notification;
CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

-- INSERT INTO `notification` (`notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`) VALUES
-- (2, 0, 'Add Downloadable Materials file name <b>sss</b>', '2014-01-17 14:35:32', 'downloadable_student.php'),
-- (3, 167, 'Add Annoucements', '2014-01-17 14:36:32', 'announcements_student.php'),
-- (4, 0, 'Add Downloadable Materials file name <b>test</b>', '2014-02-13 11:10:56', 'downloadable_student.php'),
-- (5, 167, 'Add Assignment file name <b>q</b>', '2014-02-13 11:27:59', 'assignment_student.php'),
-- (6, 0, 'Add Downloadable Materials file name <b>chapter 1</b>', '2014-02-13 12:35:42', 'downloadable_student.php'),
-- (7, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-13 12:53:09', 'downloadable_student.php'),
-- (8, 0, 'Add Downloadable Materials file name <b>kevi</b>', '2014-02-13 13:31:18', 'downloadable_student.php'),
-- (9, 185, 'Add Practice Quiz file', '2014-02-13 13:33:27', 'student_quiz_list.php'),
-- (10, 167, 'Add Annoucements', '2014-02-13 13:45:59', 'announcements_student.php'),
-- (11, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:43:38', 'downloadable_student.php'),
-- (12, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:46:18', 'downloadable_student.php'),
-- (13, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:46:49', 'downloadable_student.php'),
-- (14, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:52:30', 'downloadable_student.php'),
-- (15, 186, 'Add Downloadable Materials file name <b>Sample</b>', '2020-12-21 09:24:50', 'downloadable_student.php'),
-- (16, 0, 'Add Downloadable Materials file name <b>123</b>', '2020-12-21 09:31:40', 'downloadable_student.php'),
-- (17, 0, 'Add Downloadable Materials file name <b>234234</b>', '2020-12-21 09:36:27', 'downloadable_student.php'),
-- (18, 0, 'Add Downloadable Materials file name <b>234234</b>', '2020-12-21 09:38:22', 'downloadable_student.php'),
-- (19, 186, 'Add Downloadable Materials file name <b>234234</b>', '2020-12-21 09:39:32', 'downloadable_student.php'),
-- (20, 186, 'Add Downloadable Materials file name <b>234234</b>', '2020-12-21 09:40:28', 'downloadable_student.php'),
-- (21, 186, 'Add Assignment file name <b>asdasd</b>', '2020-12-21 09:56:48', 'assignment_student.php'),
-- (22, 186, 'Add Annoucements', '2020-12-21 09:59:00', 'announcements_student.php'),
-- (23, 186, 'Add Practice Quiz file', '2020-12-21 10:10:11', 'student_quiz_list.php');



INSERT INTO `notification` (`notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`) VALUES
(2, 0, 'Add Downloadable Materials file name <b>sss</b>', '2025-10-01 09:00:00', 'downloadable_student.php'),
(3, 167, 'Add Annoucements', '2025-10-01 09:05:00', 'announcements_student.php'),
(4, 0, 'Add Downloadable Materials file name <b>test</b>', '2025-10-01 09:10:00', 'downloadable_student.php'),
(5, 167, 'Add Assignment file name <b>q</b>', '2025-10-01 09:15:00', 'assignment_student.php'),
(6, 0, 'Add Downloadable Materials file name <b>chapter 1</b>', '2025-10-01 09:20:00', 'downloadable_student.php'),
(7, 0, 'Add Downloadable Materials file name <b>q</b>', '2025-10-01 09:25:00', 'downloadable_student.php'),
(8, 0, 'Add Downloadable Materials file name <b>kevi</b>', '2025-10-01 09:30:00', 'downloadable_student.php'),
(9, 185, 'Add Practice Quiz file', '2025-10-01 09:35:00', 'student_quiz_list.php'),
(10, 167, 'Add Annoucements', '2025-10-01 09:40:00', 'announcements_student.php'),
(11, 0, 'Add Downloadable Materials file name <b>q</b>', '2025-10-01 09:45:00', 'downloadable_student.php'),
(12, 0, 'Add Downloadable Materials file name <b>q</b>', '2025-10-01 09:50:00', 'downloadable_student.php'),
(13, 0, 'Add Downloadable Materials file name <b>q</b>', '2025-10-01 09:55:00', 'downloadable_student.php'),
(14, 0, 'Add Downloadable Materials file name <b>q</b>', '2025-10-01 10:00:00', 'downloadable_student.php'),
(15, 186, 'Add Downloadable Materials file name <b>Sample</b>', '2025-10-01 10:05:00', 'downloadable_student.php'),
(16, 0, 'Add Downloadable Materials file name <b>123</b>', '2025-10-01 10:10:00', 'downloadable_student.php'),
(17, 0, 'Add Downloadable Materials file name <b>234234</b>', '2025-10-01 10:15:00', 'downloadable_student.php'),
(18, 0, 'Add Downloadable Materials file name <b>234234</b>', '2025-10-01 10:20:00', 'downloadable_student.php'),
(19, 186, 'Add Downloadable Materials file name <b>234234</b>', '2025-10-01 10:25:00', 'downloadable_student.php'),
(20, 186, 'Add Downloadable Materials file name <b>234234</b>', '2025-10-01 10:30:00', 'downloadable_student.php'),
(21, 186, 'Add Assignment file name <b>asdasd</b>', '2025-10-01 10:35:00', 'assignment_student.php'),
(22, 186, 'Add Annoucements', '2025-10-01 10:40:00', 'announcements_student.php'),
(23, 186, 'Add Practice Quiz file', '2025-10-01 10:45:00', 'student_quiz_list.php');


-- --------------------------------------------------------

--
-- Table structure for table `notification_read`
--
DROP TABLE IF EXISTS notification_read;
CREATE TABLE `notification_read` (
  `notification_read_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read`
--

INSERT INTO `notification_read` (`notification_read_id`, `student_id`, `student_read`, `notification_id`) VALUES
(1, 219, 'yes', 22),
(2, 219, 'yes', 21),
(3, 219, 'yes', 20),
(4, 219, 'yes', 19),
(5, 219, 'yes', 15);

-- --------------------------------------------------------

--
-- Table structure for table `notification_read_teacher`
--
DROP TABLE IF EXISTS notification_read_teacher;

CREATE TABLE `notification_read_teacher` (
  `notification_read_teacher_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_read` varchar(100) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read_teacher`
--

INSERT INTO `notification_read_teacher` (`notification_read_teacher_id`, `teacher_id`, `student_read`, `notification_id`) VALUES
(1, 12, 'yes', 14),
(2, 12, 'yes', 13),
(3, 12, 'yes', 12),
(4, 12, 'yes', 11),
(5, 12, 'yes', 10),
(6, 12, 'yes', 9),
(7, 12, 'yes', 8),
(8, 12, 'yes', 7);

-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--
DROP TABLE IF EXISTS question_type;
CREATE TABLE `question_type` (
  `question_type_id` int(11) NOT NULL,
  `question_type` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_type`
--

INSERT INTO `question_type` (`question_type_id`, `question_type`) VALUES
(1, 'Multiple Choice'),
(2, 'True or False');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--
DROP TABLE IF EXISTS quiz;
CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_title` varchar(50) NOT NULL,
  `quiz_description` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

-- INSERT INTO `quiz` (`quiz_id`, `quiz_title`, `quiz_description`, `date_added`, `teacher_id`) VALUES
-- (3, 'Sample Test', 'Test', '2025-12-03 23:01:56', 12),
-- (4, 'Chapter 1', 'topics', '2025-12-13 01:51:02', 14),
-- (5, 'test3', '123', '2014-01-16 04:12:07', 12),
-- (6, 'Sample Quiz', 'Sample 101', '2020-12-21 10:04:11', 9);


INSERT INTO `quiz` (`quiz_id`, `quiz_title`, `quiz_description`, `date_added`, `teacher_id`) VALUES
(3, 'Data Structures Quiz', 'Covers stacks, queues, linked lists, and trees.', '2025-10-01 09:00:00', 12),
(4, 'Programming in C Quiz', 'Chapter 1: Basics of C programming, syntax, and operators.', '2025-10-01 09:10:00', 14),
(5, 'Database Systems Quiz', 'Focus on SQL, relational databases, and normalization.', '2025-10-01 09:20:00', 12),
(6, 'Networking Fundamentals Quiz', 'Covers TCP/IP, protocols, and network topologies.', '2025-10-01 09:30:00', 9);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--
DROP TABLE IF EXISTS quiz_question;
CREATE TABLE `quiz_question` (
  `quiz_question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_text` varchar(100) NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_question`
--

-- INSERT INTO `quiz_question` (`quiz_question_id`, `quiz_id`, `question_text`, `question_type_id`, `points`, `date_added`, `answer`) VALUES
-- (33, 5, '<p>q</p>\r\n', 2, 0, '2014-01-17 04:15:03', 'False'),
-- (34, 3, '<p>Php Stands for ?</p>\r\n', 1, 0, '2014-01-17 12:25:17', 'C'),
-- (35, 3, '<p>Echo is a Php code that display the output.</p>\r\n', 2, 0, '2014-01-17 12:26:18', 'True'),
-- (36, 6, '<p>sample</p>\r\n', 1, 0, '2020-12-21 10:05:09', 'A'),
-- (37, 6, '<p>asdasd</p>\r\n', 2, 0, '2020-12-21 10:05:25', 'True'),
-- (38, 6, '<p>sdsd</p>\r\n', 2, 0, '2020-12-21 10:05:35', 'False');


INSERT INTO `quiz_question` (`quiz_question_id`, `quiz_id`, `question_text`, `question_type_id`, `points`, `date_added`, `answer`) VALUES
(33, 5, '<p>What is the time complexity of binary search?</p>', 1, 1, '2025-10-01 09:00:00', 'O(log n)'),
(34, 3, '<p>Which data structure uses FIFO order?</p>', 1, 1, '2025-10-01 09:05:00', 'Queue'),
(35, 3, '<p>In C, the keyword "void" represents a function with no return value.</p>', 2, 1, '2025-10-01 09:10:00', 'True'),
(36, 6, '<p>Which of these is an example of a NoSQL database?</p>', 1, 1, '2025-10-01 09:15:00', 'MongoDB'),
(37, 6, '<p>Does a stack follow LIFO order?</p>', 2, 1, '2025-10-01 09:20:00', 'True'),
(38, 6, '<p>TCP is a connectionless protocol.</p>', 2, 1, '2025-10-01 09:25:00', 'False');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--
DROP TABLE IF EXISTS school_year;
CREATE TABLE `school_year` (
  `school_year_id` int(11) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_year`
--

-- INSERT INTO `school_year` (`school_year_id`, `school_year`) VALUES
-- (2, '2023-2024'),
-- (3, '2024-2025');

INSERT INTO `school_year` (`school_year_id`, `school_year`) VALUES
(1, '2024-2025'),
(2, '2025-2026');


-- --------------------------------------------------------

--
-- Table structure for table `student`
--
DROP TABLE IF EXISTS student;
CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

-- INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `password`, `location`, `status`) VALUES
-- (113, 'Clifford', 'Ledesma', 13, '21100324', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (112, 'Raymond', 'Serion', 13, '2700372', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (111, 'Mark Dominic', 'Sayon', 13, '21100867', 'heni', 'uploads/mark.jpg', 'Unregistered'),
-- (108, 'Kaye Angela', 'Cueva', 13, '21101151', '', 'uploads/dp.jpg', 'Unregistered'),
-- (105, 'Neljie', 'Guirnela', 13, '21101131', '', 'uploads/Koala.jpg', 'Unregistered'),
-- (106, 'Razel', 'Palermo', 13, '29000676', '', 'uploads/razel.jpg', 'Unregistered'),
-- (103, 'Jade', 'Gordoncillo', 13, '21100617', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (104, 'Felix Kirby', 'Ubas', 13, '21100277', 'lms10117', 'uploads/kirb.jpg', 'Unregistered'),
-- (100, 'Jamilah', 'Lonot', 13, '21100303', '', 'uploads/jamila.jpg', 'Unregistered'),
-- (101, 'Xenia Jane', 'Billones', 13, '21100318', 'sen', 'uploads/xenia.jpg', 'Unregistered'),
-- (102, 'Carell', 'Catuburan', 13, '21101124', '', 'uploads/carel.jpg', 'Unregistered'),
-- (97, 'Mary Joy', 'Lambosan', 13, '20101289', '', 'uploads/Desert.jpg', 'Unregistered'),
-- (98, 'Christine Joy', 'Macaya', 13, '21100579', '', 'uploads/tin.jpg', 'Unregistered'),
-- (95, 'Ergin Joy', 'Satoc', 13, '21101142', '', 'uploads/ergin.jpg', 'Unregistered'),
-- (93, 'John Kevin ', 'Lorayna', 7, '111', 'teph', 'uploads/3094_384893504898082_1563225657_n.jpg', 'Registered'),
-- (94, 'Leah Mae', 'Padilla', 13, '21100471', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (76, 'Jamaica Mae', 'Alipe', 13, '21100555', '123', 'uploads/maica.jpg', 'Registered'),
-- (107, 'Jose Harry', 'Polondaya', 13, '29001002', 'florypis', 'uploads/harry.jpg', 'Registered'),
-- (110, 'Zyryn', 'Corugda', 13, '21100881', '', 'uploads/baby.jpg', 'Unregistered'),
-- (109, 'Rena', 'Lamberto', 13, '29001081', '', 'uploads/ca.jpg', 'Unregistered'),
-- (99, 'Ryan Teofilo', 'Malbata-an', 13, '21100315', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (96, 'Glecy Marie', 'Navarosa', 13, '20101436', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (209, 'dhalia', 'hofilena', 20, '21300311', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (75, 'Miralyn', 'Pabalate', 13, '21100855', 'em', 'uploads/em2.jpg', 'Unregistered'),
-- (74, 'Ma. Nonie', 'Mendoza', 13, '21100913', '', 'uploads/nonie.jpg', 'Unregistered'),
-- (73, 'Stephanie', 'Villanueva', 13, '21101042', 'tephai', 'uploads/3094_384893504898082_1563225657_n.jpg', 'Registered'),
-- (72, 'Jayvon', 'Pig-ao', 13, '21100547', 'test', 'uploads/von.jpg', 'Unregistered'),
-- (71, 'Noli', 'Mendoza', 13, '21100556', 'noledel', 'uploads/noli.jpg', 'Registered'),
-- (134, 'Victor Anthony', 'Jacobo', 12, '21101050', 'akositon', 'uploads/win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', 'Registered'),
-- (135, 'Albert Kezzel', 'Naynay', 14, '20101361', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (136, 'Jorgielyn', 'Serfino', 7, '20100331', 'jorgie', 'uploads/Koala.jpg', 'Registered'),
-- (137, 'Wina Mae', 'Espenorio', 8, '20100447', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (138, 'Brian Paul', 'Sablan', 7, '29000557', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (139, 'Rodzil', 'Camato', 7, '20100RC', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (140, 'Dean Martin', 'Tingson', 14, '21100665', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (141, 'Jared Reu', 'Windam', 15, '21100695', 'iloveyoujam', 'uploads/1463666_678111108874417_1795412912_n.jpg', 'Registered'),
-- (142, 'Lee Ann', 'Vertucio', 12, '21100351', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (143, 'Danica', 'Lamis', 12, '21100396', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (144, 'Neovi', 'Devierte', 12, '21100557', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (145, 'Eril Pio', 'Mercado', 12, '21100291', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (146, 'Johnedel', 'Bauno', 12, '21100411', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (147, 'Jerwin', 'Delos Reyes', 12, '21100369', 'jerwin27 cute', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
-- (148, 'Jendrix', 'Victosa', 12, '21100431', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (149, 'Jebson', 'Tordillos', 12, '21100406', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (150, 'Jethro', 'Pansales', 12, '21101273', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (151, 'Karyl June', 'Bacobo', 12, '21100895', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (152, 'Kristelle Shaine', 'Rubi', 12, '21101063', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (153, 'Richelle', 'Villarmia', 12, '20101392', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (154, 'Mae Ann', 'Panugaling', 12, '21100904', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (155, 'Ma. Roxette', 'Infante', 12, '21100421', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (156, 'Savrena Joy', 'Rael', 12, '2100287', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (157, 'Ace John', 'Casuyon', 12, '21100393', 'DianaraSayon', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
-- (158, 'Rose Mae', 'Pido', 12, '21101195', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (159, 'Mary Ann', 'Panaguiton', 12, '21100701', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (162, 'kimberly kaye', 'salvatierra', 14, '21101182', 'kimzteng', 'uploads/29001002.jpg', 'Registered'),
-- (210, 'cherylda', 'ohiman', 20, '21300036', 'sawsa', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
-- (164, 'Alit', 'Arvin', 14, '20101605', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (165, 'Ana Mae', 'Alquizar', 14, '21100785', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (166, 'Thessalonica', 'Arroz', 14, '21100651', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (167, 'Leslie', 'Campo', 14, '21100265', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (168, 'Ace', 'Casolino', 14, '27000921', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (169, 'Michael Jed', 'Flores', 14, '21100820', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (172, 'Hennie Rose', 'Laz', 14, '21100805', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (171, 'Joy', 'Macahilig', 14, '21100464', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (173, 'Ma. Nieva', 'Manuel ', 14, '21100711', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (174, 'Devina', 'Navarro', 14, '21100711', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (175, 'Aimee', 'Orlido', 14, '21100654', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (176, 'Mary Grace', 'Quizan', 14, '21100772', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (177, 'John Christopher', 'Reguindin', 14, '21100418', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (178, 'Mary Ann', 'Somosa', 14, '21101150', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (179, 'Marrianne', 'Tumala', 14, '21100710', 'test', 'uploads/win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', 'Registered'),
-- (180, 'Deo Christopher', 'Tribaco', 14, '21101227', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (181, 'Jerson', 'Vargas', 14, '21100819', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (182, 'Valencia', 'Jeralice', 14, '29000405', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (183, 'Cristine', 'Yanson', 14, '21101148', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (184, 'Ariane', 'Alix', 17, '21201166', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (185, 'Mark Arvin', 'Arandilla', 17, '21201453', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (186, 'Ryan Carl', 'Biaquis', 17, '21202444', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (187, 'Ria', 'Bitar', 17, '21202482', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (188, 'Jeremae', 'Bustamante', 17, '21200798', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (189, 'Rhen Mark', 'Callado', 17, '21201012', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (190, 'Ma. Geraldine', 'Carisma', 17, '21202419', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (191, 'Jenny', 'Casapao', 17, '21200855', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (192, 'Welson', 'Castro', 17, '120733', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (193, 'Kimberly Hope', 'Centina', 17, '21202538', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (194, 'Sandra', 'Gomez', 17, '21202535', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (195, 'Dona Jean', 'Guardialao', 17, '21201113', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (196, 'Jeara Mae', 'Guttierrez', 17, '21200782', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (197, 'Mary Joy', 'Jimenez', 17, '21201437', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (198, 'Cyril', 'Lambayong', 17, '21201163', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (199, 'Angelie', 'Lape', 17, '21202556', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (200, 'Jamine', 'Navarosa', 17, '21201115', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (201, 'Allen Joshua', 'Nicor', 17, '21201430', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (202, 'Charis', 'Onate', 17, '21200984', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (203, 'Ikea', 'Padonio', 17, '20100527', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (204, 'Marissa', 'Pasco', 17, '21200935', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (205, 'Kenneth', 'Sayon', 17, '21202468', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (206, 'Mary Grace', 'Morales', 14, '21100293', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (207, 'Danica', 'Delarmente', 14, '21100613', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (208, 'Irish Dawn', 'Belo', 19, '21300413', 'olebirish', 'uploads/Desert.jpg', 'Registered'),
-- (211, 'val', 'roushen', 7, '201011231', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (212, 'chrystelle Marie', 'Belecina', 15, '21201963', 'chrys', 'uploads/380903_288008981235527_682004916_n.jpg', 'Registered'),
-- (213, 'kearl joy', 'bartolome', 18, '21300410', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (214, 'marie', 'rojo', 18, '21300375', 'maayeeh', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
-- (215, 'cristine', 'trespuer', 18, '21300258', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (216, 'arian', 'baldostamon', 18, '21300176', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (217, 'Alyssa', 'David', 17, '21200507', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
-- (218, 'josie', 'banday', 7, '20100452', 'heaven', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
-- (219, 'Claire ', 'Blake', 18, '2011120', 'cblake123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered');

-- -- --------------------------------------------------------


INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `password`, `location`, `status`) VALUES
(113, 'Sai', 'Reddy', 13, '21100324', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(112, 'Arjun', 'Kumar', 13, '2700372', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(111, 'Vishal', 'Chowdary', 13, '21100867', 'heni', 'uploads/mark.jpg', 'Unregistered'),
(108, 'Sravya', 'Rao', 13, '21101151', '', 'uploads/dp.jpg', 'Unregistered'),
(105, 'Nithya', 'Varma', 13, '21101131', '', 'uploads/Koala.jpg', 'Unregistered'),
(106, 'Raghav', 'Naidu', 13, '29000676', '', 'uploads/razel.jpg', 'Unregistered'),
(103, 'Kavya', 'Reddy', 13, '21100617', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(104, 'Teja', 'Chandra', 13, '21100277', 'lms10117', 'uploads/kirb.jpg', 'Unregistered'),
(100, 'Divya', 'Rao', 13, '21100303', '', 'uploads/jamila.jpg', 'Unregistered'),
(101, 'Srinivas', 'Reddy', 13, '21100318', 'sen', 'uploads/xenia.jpg', 'Unregistered'),
(102, 'Manasa', 'Chowdary', 13, '21101124', '', 'uploads/carel.jpg', 'Unregistered'),
(97, 'Rajesh', 'Varma', 13, '20101289', '', 'uploads/Desert.jpg', 'Unregistered'),
(98, 'Sneha', 'Rao', 13, '21100579', '', 'uploads/tin.jpg', 'Unregistered'),
(95, 'Harsha', 'Naidu', 13, '21101142', '', 'uploads/ergin.jpg', 'Unregistered'),
(93, 'Kiran', 'Reddy', 7, '111', 'teph', 'uploads/3094_384893504898082_1563225657_n.jpg', 'Registered'),
(94, 'Lakshmi', 'Chowdary', 13, '21100471', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(76, 'Vani', 'Reddy', 13, '21100555', '123', 'uploads/maica.jpg', 'Registered'),
(107, 'Sandeep', 'Rao', 13, '29001002', 'florypis', 'uploads/harry.jpg', 'Registered'),
(110, 'Anjali', 'Chowdary', 13, '21100881', '', 'uploads/baby.jpg', 'Unregistered'),
(109, 'Deepak', 'Naidu', 13, '29001081', '', 'uploads/ca.jpg', 'Unregistered'),
(99, 'Ravi', 'Reddy', 13, '21100315', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(96, 'Meera', 'Varma', 13, '20101436', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(209, 'Hemanth', 'Rao', 20, '21300311', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(75, 'Divya', 'Chowdary', 13, '21100855', 'em', 'uploads/em2.jpg', 'Unregistered'),
(74, 'Anitha', 'Reddy', 13, '21100913', '', 'uploads/nonie.jpg', 'Unregistered'),
(73, 'Vikram', 'Naidu', 13, '21101042', 'tephai', 'uploads/3094_384893504898082_1563225657_n.jpg', 'Registered'),
(72, 'Aravind', 'Rao', 13, '21100547', 'test', 'uploads/von.jpg', 'Unregistered'),
(71, 'Nikhil', 'Varma', 13, '21100556', 'noledel', 'uploads/noli.jpg', 'Registered'),
(134, 'Praveen', 'Reddy', 12, '21101050', 'akositon', 'uploads/win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', 'Registered'),
(135, 'Suhas', 'Chowdary', 14, '20101361', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(136, 'Tejaswini', 'Rao', 7, '20100331', 'jorgie', 'uploads/Koala.jpg', 'Registered'),
(137, 'Sowmya', 'Varma', 8, '20100447', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(138, 'Harsh', 'Naidu', 7, '29000557', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(139, 'Raghavendra', 'Chowdary', 7, '20100RC', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(140, 'Deeksha', 'Rao', 14, '21100665', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(141, 'Jayanth', 'Varma', 15, '21100695', 'iloveyoujam', 'uploads/1463666_678111108874417_1795412912_n.jpg', 'Registered'),
(142, 'Ananya', 'Chowdary', 12, '21100351', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(143, 'Manasa', 'Reddy', 12, '21100396', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(144, 'Karthik', 'Varma', 12, '21100557', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(145, 'Pranav', 'Rao', 12, '21100291', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(146, 'Vishnu', 'Chowdary', 12, '21100411', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(147, 'Sandeep', 'Reddy', 12, '21100369', 'jerwin27 cute', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(148, 'Naveen', 'Varma', 12, '21100431', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(149, 'Raghav', 'Rao', 12, '21100406', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(150, 'Tejas', 'Chowdary', 12, '21101273', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered');

--
-- Table structure for table `student_assignment`
--
DROP TABLE IF EXISTS student_assignment;
CREATE TABLE `student_assignment` (
  `student_assignment_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `assignment_fdatein` varchar(50) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_assignment`
--

-- INSERT INTO `student_assignment` (`student_assignment_id`, `assignment_id`, `floc`, `assignment_fdatein`, `fdesc`, `fname`, `student_id`, `grade`) VALUES
-- (1, 31, 'admin/uploads/7820_File_sample.pdf', '2020-12-21 10:12:04', 'aaa', 'asdasd', 219, '');

-- -- --------------------------------------------------------

INSERT INTO `student_assignment` (`student_assignment_id`, `assignment_id`, `floc`, `assignment_fdatein`, `fdesc`, `fname`, `student_id`, `grade`) VALUES
(1, 31, 'admin/uploads/7820_File_sample.pdf', '2025-10-01 09:00:00', 'Submitted Assignment for S1', 'Ravi_Assignment_S1', 210, '');


--
-- Table structure for table `student_backpack`
--
DROP TABLE IF EXISTS student_backpack;
CREATE TABLE `student_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_backpack`
--

-- INSERT INTO `student_backpack` (`file_id`, `floc`, `fdatein`, `fdesc`, `student_id`, `fname`) VALUES
-- (1, 'admin/uploads/2658_File_kevin.docx', '2014-02-13 11:11:50', 'test', 210, 'test'),
-- (2, 'admin/uploads/9782_File_sample.pdf', '2020-12-21 10:12:54', 'adasd', 219, '234234'),
-- (3, 'admin/uploads/6898_File_sample.pdf', '2020-12-21 10:12:54', 'adasd', 219, '234234'),
-- (4, 'admin/uploads/3579_File_sample.pdf', '2020-12-21 10:12:54', 'adasd', 219, '234234');



INSERT INTO `student_backpack` (`file_id`, `floc`, `fdatein`, `fdesc`, `student_id`, `fname`) VALUES
(1, 'admin/uploads/2658_File_kevin.docx', '2025-10-01 09:00:00', 'Submitted Assignment ', 210, 'Ravi_Assignment_S1'),
(2, 'admin/uploads/9782_File_sample.pdf', '2025-10-02 10:15:00', 'Submitted Assignment ', 211, 'Sita_Assignment_S2'),
(3, 'admin/uploads/6898_File_sample.pdf', '2025-10-03 11:30:00', 'Submitted Assignment ', 212, 'Chandu_Assignment_S3'),
(4, 'admin/uploads/3579_File_sample.pdf', '2025-10-04 12:45:00', 'Submitted Assignment ', 213, 'Kavya_Assignment_S4');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_quiz`
--
DROP TABLE IF EXISTS student_class_quiz;
CREATE TABLE `student_class_quiz` (
  `student_class_quiz_id` int(11) NOT NULL,
  `class_quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_quiz_time` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_class_quiz`
--

INSERT INTO `student_class_quiz` (`student_class_quiz_id`, `class_quiz_id`, `student_id`, `student_quiz_time`, `grade`) VALUES
(1, 15, 107, '3600', '0 out of 2'),
(2, 16, 136, '3600', '0 out of 0'),
(3, 17, 219, '3600', '1 out of 3');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--
DROP TABLE IF EXISTS subject;
CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(100) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `unit` int(11) NOT NULL,
  `Pre_req` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

-- INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `category`, `description`, `unit`, `Pre_req`, `semester`) VALUES
-- (14, 'IS 411A', 'Senior Systems Project 1', '', '<p><span style=\"font-size: medium;\"><em>About the Subject</em></span></p>\r\n<p>This subject comprisea topics about systems development, SDLC methodologies, Conceptual Framework, diagrams such as DFD, ERD and Flowchart and writing a thesis proposal.</p>\r\n<p>&nbsp;</p>\r\n<p>The project requirement for this subject are:</p>\r\n<p>Chapters (1-5) Thesis Proposal</p>\r\n<p>100% Running System at the end of semester</p>\r\n<p>&nbsp;</p>', 3, '', ''),
-- (15, 'IS 412', 'Effective Human Communication for IT Professional', '', '<p><span style=\"font-size: medium;\"><em>About the Subject</em></span></p>\r\n<p>This subject is intended for IT students to develop or enhance communication skills that will be beneficial especially when used in the business industry. The lesson includes Verbal Communication (Written and Oral), Non-verbal Communication, etc.</p>', 3, '', ''),
-- (16, 'IS 311', 'Programming Languages', '', '<pre class=\"coursera-course-heading\" data-msg=\"coursera-course-about\"><span style=\"font-size: medium;\"><em>About the Subject</em></span></pre>\r\n<div class=\"coursera-course-detail\" data-user-generated=\"data-user-generated\">Learn many of the concepts that underlie all programming languages. Develop a programming style known as functional programming and contrast it with object-oriented programming. Through experience writing programs and studying three different languages, learn the key issues in designing and using programming languages, such as modularity and the complementary benefits of static and dynamic typing. This course is neither particularly theoretical nor just about programming specifics &ndash; it will give you a framework for understanding how to use language constructs effectively and how to design correct and elegant programs. By using different languages, you learn to think more deeply than in terms of the particular syntax of one language. The emphasis on functional programming is essential for learning how to write robust, reusable, composable, and elegant programs &ndash; in any language.</div>\r\n<h2 class=\"coursera-course-detail\" data-user-generated=\"data-user-generated\">&nbsp;</h2>\r\n<pre class=\"coursera-course-detail\" data-user-generated=\"data-user-generated\"><span style=\"font-size: medium;\"><em>&nbsp;Course Syllabus</em></span></pre>\r\n<div class=\"coursera-course-detail\" data-user-generated=\"data-user-generated\">\r\n<ul>\r\n<li>Syntax vs. semantics vs. idioms vs. libraries vs. tools</li>\r\n<li>ML basics (bindings, conditionals, records, functions)</li>\r\n<li>Recursive functions and recursive types</li>\r\n<li>Benefits of no mutation</li>\r\n<li>Algebraic datatypes, pattern matching</li>\r\n<li>Tail recursion</li>\r\n<li>First-class functions and function closures</li>\r\n<li>Lexical scope</li>\r\n<li>Equivalence and effects</li>\r\n<li>Parametric polymorphism and container types</li>\r\n<li>Type inference</li>\r\n<li>Abstract types and modules</li>\r\n<li>Racket basics</li>\r\n<li>Dynamic vs. static typing</li>\r\n<li>Implementing languages, especially higher-order functions</li>\r\n<li>Macro</li>\r\n<li>Ruby basics</li>\r\n<li>Object-oriented programming</li>\r\n<li>Pure object-orientation</li>\r\n<li>Implementing dynamic dispatch</li>\r\n<li>Multiple inheritance, interfaces, and mixins</li>\r\n<li>OOP vs. functional decomposition and extensibility</li>\r\n<li>Subtyping for records, functions, and objects</li>\r\n<li>Subtyping</li>\r\n<li>Class-based subtyping</li>\r\n<li>Subtyping vs. parametric polymorphism; bounded polymorphism</li>\r\n</ul>\r\n</div>', 3, '', ''),
-- (17, 'IS 413', 'Introduction to the IM Professional and Ethics', '', '<p>This subject discusses about Ethics, E-Commerce, Cybercrime Law, Computer Security, etc.</p>', 0, '', ''),
-- (22, 'IS 221', 'Application Development', '', '', 3, '', '2nd'),
-- (23, 'IS 222', 'Network and Internet Technology', '', '', 3, '', '2nd'),
-- (24, 'IS 223', 'Business Process', '', '', 3, '', '2nd'),
-- (25, 'IS 224', 'Discrete Structures', '', '', 3, '', '2nd'),
-- (26, 'IS 227', 'IS Programming 2', '', '', 3, '', '2nd'),
-- (27, 'SS POL GOV', 'Politics and Governance with Philippine Constitution', '', '', 3, '', '2nd'),
-- (28, 'LIT 1', 'Philippine  Literature', '', '', 3, '', '2nd'),
-- (29, 'ACCTG 2', 'Fundamentals of Accounting 2', '', '', 3, '', '2nd'),
-- (30, 'PE 4', 'Team Sports', '', '', 3, '', '2nd'),
-- (31, 'IS 302', 'Survey of Programming Languages', '', '', 3, '', '2nd'),
-- (32, 'IS 303', 'Structured Query Language', '', '', 3, '', '2nd'),
-- (33, 'IS 321', 'Information System Planning', '', '', 3, '', '2nd'),
-- (34, 'IS 322', 'Management of Technology', '', '', 3, '', '2nd'),
-- (35, 'IS 323', 'E-commerce Strategy Architectural', '', '', 3, '', '2nd'),
-- (36, 'IS 324', 'System Analysis and Design', '', '', 3, '', '2nd'),
-- (37, 'Law 1', 'Law on Obligation and Contracts', '', '', 3, '', '2nd'),
-- (38, 'Philo 1', 'Social Philosophy & Logic', '', '', 3, '', '2nd'),
-- (39, 'MQTB', 'Quantitative Techniques in Business', '', '', 3, '', '2nd'),
-- (40, 'RIZAL', 'Rizal: Life and Works', '', '<p>COURSE OUTLINE<br />\r\n1. Course Code : RIZAL</p>\r\n\r\n<p>2. Course Title &nbsp;: RIZAL (Rizal Life and Works)<br />\r\n3. Pre-requisite : none<br />\r\n5. Credit/ Class Schedule : 3 units; 3 hrs/week<br />\r\n6. Course Description&nbsp;<br />\r\n1. A critical analysis of Jose Rizal&rsquo;s life and ideas as reflected in his biography, his novels Noli Me Tangere and El Filibusterismo and in his other writings composed of essays and poems to provide the students a value based reference for reacting to certain ideas and behavior.<br />\r\n<br />\r\n<strong>PROGRAM OBJECTIVES</strong><br />\r\n1. To instill in the students human values and cultural refinement through the humanities and social sciences.<br />\r\n2. To inculcate high ethical standards in the students through its integration in the learning activities.<br />\r\n3. To have critical studies and discussions why Rizal is made the national hero of the Philippines.<br />\r\n<br />\r\nTOPICS:&nbsp;<br />\r\n1. A Hero is Born&nbsp;<br />\r\n2. Childhood Days in Calamba<br />\r\n3. School Days in Binan<br />\r\n4. Triumphs in the Ateneo<br />\r\n5. At the UST<br />\r\n6. In Spain<br />\r\n7. Paris to Berlin<br />\r\n8. Noli Me Tangere<br />\r\n9. Elias and Salome<br />\r\n10. Rizal&rsquo;s Tour of Europe with with Viola<br />\r\n11. Back to Calamba<br />\r\n12. HK, Macao and Japan<br />\r\n13. Rizal in Japan<br />\r\n14. Rizal in America<br />\r\n15. Life and Works in London<br />\r\n16. In Gay Paris<br />\r\n17. Rizal in Brussles<br />\r\n18. In Madrid<br />\r\n19. El Filibusterismo<br />\r\n20. In Hong Kong<br />\r\n21. Exile in Dapitan<br />\r\n22. The Trial of Rizal<br />\r\n23. Martyrdom at Bagumbayan<br />\r\n<br />\r\nTextbook and References:<br />\r\n1. Rizal&rsquo;s Life, Works and Writings (The Centennial Edition) by: Gregorio F. Zaide<br />\r\nand Sonia M. Zaide Quezon City, 1988. All Nations Publishing Co.<br />\r\n2. Coates, Austin. Rizal: First Filipino Nationalist and Martyr, Quezon City, UP Press 1999.<br />\r\n3. Constantino, Renato. Veneration Without Understanding. Quezon City, UP Press Inc., 2001.<br />\r\n4. Dela Cruz, W. &amp; Zulueta, M. Rizal: Buhay at Kaisipan. Manila, NBS Publications 2002.<br />\r\n5. Ocampo, Ambeth. Rizal Without the Overcoat (New Edition). Pasig City, anvil Publishing House 2002.<br />\r\n6. Odullo-de Guzman, Maria. Noli Me Tangere and El Filibusterismo. Manila, NBS Publications 1998.<br />\r\n7. Palma, Rafael. Rizal: The Pride of the Malay Race. Manila, Saint Anthony Company 2000.<br />\r\n8.Romero, M.C. &amp; Sta Roman, J. Rizal &amp; the Development of Filipino Consciousness (Third Edition). Manila, JMC Press Inc., 2001.<br />\r\n<br />\r\nCourse Evaluation:<br />\r\n<br />\r\n1. Quizzes : 30 %<br />\r\n2. Exams : 40 %<br />\r\n3. Class Standing : 20 %<br />\r\n- recitation<br />\r\n- attendance<br />\r\n- behavior<br />\r\n4. Final Grade<br />\r\n- 40 % previous grade<br />\r\n- 60 % current grade</p>\r\n', 3, '', '2nd'),
-- (41, 'IS 411B', 'Senior Systems Project 2', '', '', 3, '', '2nd'),
-- (42, '1234', 'Sample Subject', '', '<p>Sample Only</p>\r\n', 3, '', '1st');


INSERT INTO `subject` 
(`subject_id`, `subject_code`, `subject_title`, `category`, `description`, `unit`, `Pre_req`, `semester`) VALUES
(1, 'S1', 'Data Structures', '', 'Introduction to arrays, linked lists, stacks, queues, trees, and graphs.', 3, '', '1st'),
(2, 'S2', 'C Programming', '', 'Basics of C programming including syntax, loops, functions, and arrays.', 3, '', '1st'),
(3, 'S3', 'C++ Programming', '', 'Object-oriented programming with classes, inheritance, and polymorphism.', 3, '', '2nd'),
(4, 'S4', 'Java Programming', '', 'Core Java concepts including OOP, exceptions, and file handling.', 3, '', '2nd'),
(5, 'S5', 'Database Management Systems', '', 'SQL, ER diagrams, normalization, and relational databases.', 3, '', '2nd'),
(6, 'S6', 'Operating Systems', '', 'Processes, threads, memory management, and file systems.', 3, '', '2nd'),
(7, 'S7', 'Computer Networks', '', 'Networking basics, TCP/IP, OSI model, and network devices.', 3, '', '2nd'),
(8, 'S8', 'Software Engineering', '', 'SDLC, software models, testing, and project management.', 3, '', '2nd'),
(9, 'S9', 'Web Technologies', '', 'HTML, CSS, JavaScript, and basic web development.', 3, '', '2nd'),
(10, 'S10', 'Professional Ethics', '', 'Ethics, professional conduct, and IT laws.', 2, '', '2nd'),
(11, 'S11', 'Python Programming', '', 'Introduction to Python, data types, loops, functions, and modules.', 3, '', '2nd'),
(12, 'S12', 'Artificial Intelligence', '', 'Basics of AI, search algorithms, and knowledge representation.', 3, '', '3rd'),
(13, 'S13', 'Machine Learning', '', 'Introduction to supervised and unsupervised learning, and ML algorithms.', 3, '', '3rd'),
(14, 'S14', 'Data Analytics', '', 'Data analysis, visualization, and basic statistics using software tools.', 3, '', '3rd'),
(15, 'S15', 'Cloud Computing', '', 'Introduction to cloud services, architecture, and deployment models.', 3, '', '3rd'),
(16, 'S16', 'Mobile App Development', '', 'Basics of Android/iOS development and app lifecycle.', 3, '', '3rd'),
(17, 'S17', 'Embedded Systems', '', 'Microcontrollers, hardware interfacing, and embedded programming.', 3, '', '3rd'),
(18, 'S18', 'Computer Graphics', '', 'Graphics concepts, 2D/3D graphics, and rendering techniques.', 3, '', '3rd'),
(19, 'S19', 'Cyber Security', '', 'Network security, cryptography, malware analysis, and ethical hacking.', 3, '', '3rd'),
(20, 'S20', 'Human-Computer Interaction', '', 'User interface design, usability, and interaction models.', 3, '', '3rd'),
(21, 'S21', 'Compiler Design', '', 'Lexical analysis, parsing, syntax-directed translation, and code generation.', 3, '', '4th'),
(22, 'S22', 'Internet of Things', '', 'IoT concepts, sensors, data collection, and IoT applications.', 3, '', '4th'),
(23, 'S23', 'Big Data', '', 'Big Data concepts, Hadoop, Spark, and data processing.', 3, '', '4th'),
(24, 'S24', 'Project Work', '', 'Capstone project integrating learned skills to develop a complete system.', 3, '', '4th');


-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--
DROP TABLE IF EXISTS teacher;
CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `department_id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `about` varchar(500) NOT NULL,
  `teacher_status` varchar(20) NOT NULL,
  `teacher_stat` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

-- INSERT INTO `teacher` (`teacher_id`, `username`, `password`, `firstname`, `lastname`, `department_id`, `location`, `about`, `teacher_status`, `teacher_stat`) VALUES
-- (9, '1001', 'test', 'Jomar', 'Pabuaya', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
-- (5, '1002', 'red', 'Cristine', 'Redoblo', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', 'Activated'),
-- (11, '1003', 'aladin', 'Aladin', 'Cabrera', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', 'Activated'),
-- (13, 'test', 'test', 'Rammel', 'Cadagat', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', 'Activated'),
-- (12, '1000', 'morante', 'Ruby Mae ', 'Morante', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '<p style=\"text-align: justify;\">Dan Grossman has taught programming languages at the University of Washington since 2019. During his 10 years as a faculty member, his department&rsquo;s undergraduate students have elected him &ldquo;teacher of the year&rdquo; twice and awarded him second place once. His research, resulting in over 50 peer-reviewed publications, has covered the theory, design, and implementation of programming languages, as well as connections to computer architecture and softwar', '', 'Activated'),
-- (14, 'honey', 'lee', 'Honeylee', 'Magbanua', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', 'Activated'),
-- (15, 'chaw', 'chaw', 'Charito ', 'Puray', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', 'Activated'),
-- (17, '', '', 'Lovelyn ', 'Layson', 5, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', 'Activated'),
-- (18, 'test123', 'test123', 'Allan', 'Dela Torre', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
-- (19, 'delam', 'denise', 'Denesa', 'Lamique', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated');

-- -- --------------------------------------------------------


INSERT INTO `teacher` 
(`teacher_id`, `username`, `password`, `firstname`, `lastname`, `department_id`, `location`, `about`, `teacher_status`, `teacher_stat`) VALUES
(9, 'teacher1001', 'pass1001', 'Srinivas', 'Reddy', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(5, 'teacher1002', 'pass1002', 'Priya', 'Chowdary', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', 'Activated'),
(11, 'teacher1003', 'pass1003', 'Rohit', 'Naidu', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', 'Activated'),
(13, 'teacher1004', 'pass1004', 'Ramesh', 'Kumar', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', 'Activated'),
(12, 'teacher1000', 'pass1000', 'Radha', 'Sai', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '<p style="text-align: justify;">Experienced in teaching programming languages with multiple awards in undergraduate teaching excellence. Conducted research in programming languages and software design.</p>', '', 'Activated'),
(14, 'teacher1005', 'pass1005', 'Honey', 'Reddy', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', 'Activated'),
(15, 'teacher1006', 'pass1006', 'Charan', 'Varma', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', 'Activated'),
(17, 'teacher1007', 'pass1007', 'Lovely', 'Devi', 5, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', 'Activated'),
(18, 'teacher1008', 'pass1008', 'Allan', 'Rao', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(19, 'teacher1009', 'pass1009', 'Denisa', 'Sekhar', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated');

--
-- Table structure for table `teacher_backpack`
--
DROP TABLE IF EXISTS teacher_backpack;
CREATE TABLE `teacher_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--
DROP TABLE IF EXISTS teacher_class;
CREATE TABLE `teacher_class` (
  `teacher_class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class`
--

-- INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `thumbnails`, `school_year`) VALUES
-- (97, 9, 7, 15, 'admin/uploads/thumbnails.jpg', '2023-2024'),
-- (135, 0, 22, 29, 'admin/uploads/thumbnails.jpg', '2024-2025'),
-- (151, 5, 7, 14, 'admin/uploads/thumbnails.jpg', '2024-2025'),
-- (152, 5, 8, 14, 'admin/uploads/thumbnails.jpg', '2024-2025'),
-- (153, 5, 13, 36, 'admin/uploads/thumbnails.jpg', '2024-2025'),
-- (157, 18, 15, 23, 'admin/uploads/thumbnails.jpg', '2024-2025'),
-- (158, 18, 16, 23, 'admin/uploads/thumbnails.jpg', '2024-2025'),
-- (159, 18, 12, 23, 'admin/uploads/thumbnails.jpg', '2024-2025'),
-- (160, 18, 7, 29, 'admin/uploads/thumbnails.jpg', '2024-2025'),
-- (165, 134, 15, 23, 'admin/uploads/thumbnails.jpg', '2024-2025'),
-- (167, 12, 13, 35, 'admin/uploads/thumbnails.jpg', '2024-2025'),
-- (168, 12, 14, 35, 'admin/uploads/thumbnails.jpg', '2024-2025'),
-- (170, 12, 16, 24, 'admin/uploads/thumbnails.jpg', '2024-2025'),
-- (172, 18, 13, 39, 'admin/uploads/thumbnails.jpg', '2024-2025'),
-- (173, 18, 14, 39, 'admin/uploads/thumbnails.jpg', '2024-2025'),
-- (174, 13, 12, 16, 'admin/uploads/thumbnails.jpg', '2024-2025'),
-- (175, 13, 13, 16, 'admin/uploads/thumbnails.jpg', '2024-2025'),
-- (176, 13, 14, 16, 'admin/uploads/thumbnails.jpg', '2024-2025'),
-- (177, 14, 12, 32, 'admin/uploads/thumbnails.jpg', '2024-2025'),
-- (178, 14, 13, 32, 'admin/uploads/thumbnails.jpg', '2024-2025'),
-- (179, 14, 14, 32, 'admin/uploads/thumbnails.jpg', '2024-2025'),
-- (180, 19, 13, 22, 'admin/uploads/thumbnails.jpg', '2024-2025'),
-- (181, 12, 20, 24, 'admin/uploads/thumbnails.jpg', '2024-2025'),
-- (183, 12, 18, 24, 'admin/uploads/thumbnails.jpg', '2024-2025'),
-- (184, 12, 17, 25, 'admin/uploads/thumbnails.jpg', '2024-2025'),
-- (185, 12, 7, 22, 'admin/uploads/thumbnails.jpg', '2024-2025'),
-- (186, 9, 18, 42, 'admin/uploads/thumbnails.jpg', '2024-2025');



INSERT INTO `teacher_class` 
(`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `thumbnails`, `school_year`) VALUES
(97, 9, 7, 15, 'admin/uploads/thumbnails.jpg', '2025-2026'),
(135, 10, 22, 29, 'admin/uploads/thumbnails.jpg', '2025-2026'),
(151, 11, 7, 14, 'admin/uploads/thumbnails.jpg', '2025-2026'),
(152, 11, 8, 14, 'admin/uploads/thumbnails.jpg', '2025-2026'),
(153, 11, 13, 36, 'admin/uploads/thumbnails.jpg', '2025-2026'),
(157, 12, 15, 23, 'admin/uploads/thumbnails.jpg', '2025-2026'),
(158, 12, 16, 23, 'admin/uploads/thumbnails.jpg', '2025-2026'),
(159, 12, 12, 23, 'admin/uploads/thumbnails.jpg', '2025-2026'),
(160, 12, 7, 29, 'admin/uploads/thumbnails.jpg', '2025-2026'),
(165, 10, 15, 23, 'admin/uploads/thumbnails.jpg', '2025-2026'),
(167, 13, 13, 35, 'admin/uploads/thumbnails.jpg', '2025-2026'),
(168, 13, 14, 35, 'admin/uploads/thumbnails.jpg', '2025-2026'),
(170, 13, 16, 24, 'admin/uploads/thumbnails.jpg', '2025-2026'),
(172, 12, 13, 39, 'admin/uploads/thumbnails.jpg', '2025-2026'),
(173, 12, 14, 39, 'admin/uploads/thumbnails.jpg', '2025-2026'),
(174, 11, 12, 16, 'admin/uploads/thumbnails.jpg', '2025-2026'),
(175, 11, 13, 16, 'admin/uploads/thumbnails.jpg', '2025-2026'),
(176, 11, 14, 16, 'admin/uploads/thumbnails.jpg', '2025-2026'),
(177, 14, 12, 32, 'admin/uploads/thumbnails.jpg', '2025-2026'),
(178, 14, 13, 32, 'admin/uploads/thumbnails.jpg', '2025-2026'),
(179, 14, 14, 32, 'admin/uploads/thumbnails.jpg', '2025-2026'),
(180, 15, 13, 22, 'admin/uploads/thumbnails.jpg', '2025-2026'),
(181, 13, 20, 24, 'admin/uploads/thumbnails.jpg', '2025-2026'),
(183, 13, 18, 24, 'admin/uploads/thumbnails.jpg', '2025-2026'),
(184, 13, 17, 25, 'admin/uploads/thumbnails.jpg', '2025-2026'),
(185, 13, 7, 22, 'admin/uploads/thumbnails.jpg', '2025-2026'),
(186, 9, 18, 42, 'admin/uploads/thumbnails.jpg', '2025-2026');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_announcements`
--
DROP TABLE IF EXISTS teacher_class_announcements;

CREATE TABLE `teacher_class_announcements` (
  `teacher_class_announcements_id` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_announcements`
--

-- INSERT INTO `teacher_class_announcements` (`teacher_class_announcements_id`, `content`, `teacher_id`, `teacher_class_id`, `date`) VALUES
-- (2, '<p><strong>Project Deadline</strong></p>\r\n\r\n<p>In December 1st week&nbsp; system must fully functioning.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', '9', 87, '2025-10-30 13:21:13'),
-- (21, '<p>fsaf</p>\r\n', '9', 87, '2025-10-30 14:33:21'),
-- (31, '<p>Hi im kevin i edit this</p>\r\n', '9', 87, '2025-10-30 15:41:56'),
-- (33, '<p>hello teph</p>\r\n', '9', 95, '2025-10-30 17:44:28'),
-- (34, '<p>hello guys</p>\r\n', '9', 95, '2025-11-02 10:51:39'),
-- (35, '<p>dsdasd</p>\r\n', '12', 147, '2025-11-16 13:59:33'),
-- (36, '<p>BSIS 1A: Submit assignment on November 20, 2025 before 5pm.</p>\r\n', '12', 154, '2025-11-18 15:29:34'),
-- (37, '<p>aaaaa<br />\r\n&nbsp;</p>\r\n', '12', 167, '2014-01-17 14:36:32'),
-- (38, '<p>wala klase<img alt=\"sad\" src=\"http://localhost/lms/admin/vendors/ckeditor/plugins/smiley/images/sad_smile.gif\" style=\"height:20px; width:20px\" title=\"sad\" /></p>\r\n', '12', 167, '2014-02-13 13:45:59'),
-- (39, '<p>Test</p>\r\n', '9', 186, '2020-12-21 09:59:00');


INSERT INTO `teacher_class_announcements` 
(`teacher_class_announcements_id`, `content`, `teacher_id`, `teacher_class_id`, `date`) VALUES
(2, '<p><strong>Project Deadline</strong></p><p>System must be fully functional by first week of October 2025.</p>', 9, 87, NOW()),
(21, '<p>Announcement: Please check your class materials.</p>', 9, 87, NOW()),
(31, '<p>Hi, this is a class update.</p>', 9, 87, NOW()),
(33, '<p>Hello students!</p>', 9, 95, NOW()),
(34, '<p>Good morning, everyone.</p>', 9, 95, NOW()),
(35, '<p>Please submit your assignments on time.</p>', 12, 147, NOW()),
(36, '<p>Submit assignment before 5pm today.</p>', 12, 154, NOW()),
(37, '<p>Reminder: Class activities ongoing.</p>', 12, 167, NOW()),
(38, '<p>Class cancelled today <img alt="sad" src="http://localhost/lms/admin/vendors/ckeditor/plugins/smiley/images/sad_smile.gif" style="height:20px; width:20px" title="sad" /></p>', 12, 167, NOW()),
(39, '<p>Test announcement</p>', 9, 186, NOW());

-- --------------------------------------------------------

--
--
-- Table structure for table `teacher_class_student`
--
DROP TABLE IF EXISTS `teacher_class_student`;
CREATE TABLE `teacher_class_student` (
  `teacher_class_student_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_student`
--

INSERT INTO `teacher_class_student` (`teacher_class_student_id`, `teacher_class_id`, `student_id`, `teacher_id`) VALUES
(31, 165, 141, 134),
(32, 165, 134, 134),
(54, 167, 113, 12),
(55, 167, 112, 12),
(57, 167, 108, 12),
(58, 167, 105, 12),
(59, 167, 106, 12),
(60, 167, 103, 12),
(61, 167, 104, 12),
(62, 167, 100, 12),
(63, 167, 101, 12),
(64, 167, 102, 12),
(65, 167, 97, 12),
(66, 167, 98, 12),
(67, 167, 95, 12),
(68, 167, 94, 12),
(69, 167, 76, 12),
(70, 167, 107, 12),
(71, 167, 110, 12),
(72, 167, 109, 12),
(73, 167, 99, 12),
(74, 167, 96, 12),
(75, 167, 75, 12),
(76, 167, 74, 12),
(77, 167, 73, 12),
(78, 167, 72, 12),
(79, 167, 71, 12),
(80, 168, 135, 12),
(81, 168, 140, 12),
(82, 168, 162, 12),
(83, 168, 164, 12),
(84, 168, 165, 12),
(85, 168, 166, 12),
(86, 168, 167, 12),
(87, 168, 168, 12),
(88, 168, 169, 12),
(89, 168, 172, 12),
(90, 168, 171, 12),
(91, 168, 173, 12),
(92, 168, 174, 12),
(93, 168, 175, 12),
(94, 168, 176, 12),
(95, 168, 177, 12),
(96, 168, 178, 12),
(97, 168, 179, 12),
(98, 168, 180, 12),
(99, 168, 181, 12),
(100, 168, 182, 12),
(101, 168, 183, 12),
(102, 168, 206, 12),
(103, 168, 207, 12),
(127, 172, 113, 18),
(128, 172, 112, 18),
(129, 172, 111, 18),
(130, 172, 108, 18),
(131, 172, 105, 18),
(132, 172, 106, 18),
(133, 172, 103, 18),
(134, 172, 104, 18),
(135, 172, 100, 18),
(136, 172, 101, 18),
(137, 172, 102, 18),
(138, 172, 97, 18),
(139, 172, 98, 18),
(140, 172, 95, 18),
(141, 172, 94, 18),
(142, 172, 76, 18),
(143, 172, 107, 18),
(144, 172, 110, 18),
(145, 172, 109, 18),
(146, 172, 99, 18),
(147, 172, 96, 18),
(148, 172, 75, 18),
(149, 172, 74, 18),
(150, 172, 73, 18),
(151, 172, 72, 18),
(152, 172, 71, 18),
(153, 173, 135, 18),
(154, 173, 140, 18),
(155, 173, 162, 18),
(156, 173, 164, 18),
(157, 173, 165, 18),
(158, 173, 166, 18),
(159, 173, 167, 18),
(160, 173, 168, 18),
(161, 173, 169, 18),
(162, 173, 172, 18),
(163, 173, 171, 18),
(164, 173, 173, 18),
(165, 173, 174, 18),
(166, 173, 175, 18),
(167, 173, 176, 18),
(168, 173, 177, 18),
(169, 173, 178, 18),
(170, 173, 179, 18),
(171, 173, 180, 18),
(172, 173, 181, 18),
(173, 173, 182, 18),
(174, 173, 183, 18),
(175, 173, 206, 18),
(176, 173, 207, 18),
(177, 174, 134, 13),
(178, 174, 142, 13),
(179, 174, 143, 13),
(180, 174, 144, 13),
(181, 174, 145, 13),
(182, 174, 146, 13),
(183, 174, 147, 13),
(184, 174, 148, 13),
(185, 174, 149, 13),
(186, 174, 150, 13),
(187, 174, 151, 13),
(188, 174, 152, 13),
(189, 174, 153, 13),
(190, 174, 154, 13),
(191, 174, 155, 13),
(192, 174, 156, 13),
(193, 174, 157, 13),
(194, 174, 158, 13),
(195, 174, 159, 13),
(196, 175, 113, 13),
(197, 175, 112, 13),
(198, 175, 111, 13),
(199, 175, 108, 13),
(200, 175, 105, 13),
(201, 175, 106, 13),
(202, 175, 103, 13),
(203, 175, 104, 13),
(204, 175, 100, 13),
(205, 175, 101, 13),
(206, 175, 102, 13),
(207, 175, 97, 13),
(208, 175, 98, 13),
(209, 175, 95, 13),
(210, 175, 94, 13),
(211, 175, 76, 13),
(212, 175, 107, 13),
(213, 175, 110, 13),
(214, 175, 109, 13),
(215, 175, 99, 13),
(216, 175, 96, 13),
(217, 175, 75, 13),
(218, 175, 74, 13),
(219, 175, 73, 13),
(220, 175, 72, 13),
(221, 175, 71, 13),
(222, 176, 135, 13),
(223, 176, 140, 13),
(224, 176, 162, 13),
(225, 176, 164, 13),
(226, 176, 165, 13),
(227, 176, 166, 13),
(228, 176, 167, 13),
(229, 176, 168, 13),
(230, 176, 169, 13),
(231, 176, 172, 13),
(232, 176, 171, 13),
(233, 176, 173, 13),
(234, 176, 174, 13),
(235, 176, 175, 13),
(236, 176, 176, 13),
(237, 176, 177, 13),
(238, 176, 178, 13),
(239, 176, 179, 13),
(240, 176, 180, 13),
(241, 176, 181, 13),
(242, 176, 182, 13),
(243, 176, 183, 13),
(244, 176, 206, 13),
(245, 176, 207, 13),
(246, 177, 134, 14),
(247, 177, 142, 14),
(248, 177, 143, 14),
(249, 177, 144, 14),
(250, 177, 145, 14),
(251, 177, 146, 14),
(252, 177, 147, 14),
(253, 177, 148, 14),
(254, 177, 149, 14),
(255, 177, 150, 14),
(256, 177, 151, 14),
(257, 177, 152, 14),
(258, 177, 153, 14),
(259, 177, 154, 14),
(260, 177, 155, 14),
(261, 177, 156, 14),
(262, 177, 157, 14),
(263, 177, 158, 14),
(264, 177, 159, 14),
(265, 178, 113, 14),
(266, 178, 112, 14),
(267, 178, 111, 14),
(268, 178, 108, 14),
(269, 178, 105, 14),
(270, 178, 106, 14),
(271, 178, 103, 14),
(272, 178, 104, 14),
(273, 178, 100, 14),
(274, 178, 101, 14),
(275, 178, 102, 14),
(276, 178, 97, 14),
(277, 178, 98, 14),
(278, 178, 95, 14),
(279, 178, 94, 14),
(280, 178, 76, 14),
(281, 178, 107, 14),
(282, 178, 110, 14),
(283, 178, 109, 14),
(284, 178, 99, 14),
(285, 178, 96, 14),
(286, 178, 75, 14),
(287, 178, 74, 14),
(288, 178, 73, 14),
(289, 178, 72, 14),
(290, 178, 71, 14),
(291, 179, 135, 14),
(292, 179, 140, 14),
(293, 179, 162, 14),
(294, 179, 164, 14),
(295, 179, 165, 14),
(296, 179, 166, 14),
(297, 179, 167, 14),
(298, 179, 168, 14),
(299, 179, 169, 14),
(300, 179, 172, 14),
(301, 179, 171, 14),
(302, 179, 173, 14),
(303, 179, 174, 14),
(304, 179, 175, 14),
(305, 179, 176, 14),
(306, 179, 177, 14),
(307, 179, 178, 14),
(308, 179, 179, 14),
(309, 179, 180, 14),
(310, 179, 181, 14),
(311, 179, 182, 14),
(312, 179, 183, 14),
(313, 179, 206, 14),
(314, 179, 207, 14),
(315, 180, 113, 19),
(316, 180, 112, 19),
(317, 180, 111, 19),
(318, 180, 108, 19),
(319, 180, 105, 19),
(320, 180, 106, 19),
(321, 180, 103, 19),
(322, 180, 104, 19),
(323, 180, 100, 19),
(324, 180, 101, 19),
(325, 180, 102, 19),
(326, 180, 97, 19),
(327, 180, 98, 19),
(328, 180, 95, 19),
(329, 180, 94, 19),
(330, 180, 76, 19),
(331, 180, 107, 19),
(332, 180, 110, 19),
(333, 180, 109, 19),
(334, 180, 99, 19),
(335, 180, 96, 19),
(336, 180, 75, 19),
(337, 180, 74, 19),
(338, 180, 73, 19),
(339, 180, 72, 19),
(340, 180, 71, 19),
(341, 181, 209, 12),
(342, 181, 210, 12),
(345, 183, 213, 12),
(346, 183, 214, 12),
(347, 183, 215, 12),
(348, 183, 216, 12),
(349, 184, 184, 12),
(350, 184, 185, 12),
(351, 184, 186, 12),
(352, 184, 187, 12),
(353, 184, 188, 12),
(354, 184, 189, 12),
(355, 184, 190, 12),
(356, 184, 191, 12),
(358, 184, 193, 12),
(359, 184, 194, 12),
(360, 184, 195, 12),
(361, 184, 196, 12),
(362, 184, 197, 12),
(363, 184, 198, 12),
(364, 184, 199, 12),
(365, 184, 200, 12),
(366, 184, 201, 12),
(367, 184, 202, 12),
(368, 184, 203, 12),
(369, 184, 204, 12),
(370, 184, 205, 12),
(371, 184, 217, 12),
(372, 184, 192, 12),
(373, 185, 93, 12),
(374, 185, 136, 12),
(375, 185, 138, 12),
(376, 185, 139, 12),
(377, 185, 211, 12),
(378, 186, 213, 9),
(379, 186, 214, 9),
(380, 186, 215, 9),
(381, 186, 216, 9),
(382, 186, 219, 9);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notification`
--
DROP TABLE IF EXISTS `teacher_notification`;
CREATE TABLE `teacher_notification` (
  `teacher_notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_notification`
--

INSERT INTO `teacher_notification` 
(`teacher_notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`, `student_id`, `assignment_id`) VALUES
(15, 160, 'Submit Assignment', NOW(), 'view_submit_assignment.php', 93, 16),
(17, 161, 'Submit Assignment', NOW(), 'view_submit_assignment.php', 71, 17),
(18, 186, 'Submit Assignment', NOW(), 'view_submit_assignment.php', 219, 31);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_shared`
--
DROP TABLE IF EXISTS `teacher_shared`;
CREATE TABLE `teacher_shared` (
  `teacher_shared_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `shared_teacher_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_shared`
--

INSERT INTO `teacher_shared` (`teacher_shared_id`, `teacher_id`, `shared_teacher_id`, `floc`, `fdatein`, `fdesc`, `fname`) VALUES
(1, 12, 14, 'uploads/webdesk_lecture_notes.jpg', NOW(), 'Shared study material for Smart Study Companion', 'Lecture Notes');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(13, 'sneha', 'sneha123', 'Sneha', 'Reddy'),
(14, 'arjun', 'arjun123', 'Arjun', 'Kumar'),
(15, 'admin', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--
DROP TABLE IF EXISTS `user_log`;
CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(1, 'admin', '2025-09-01 09:00:00', '2025-09-01 17:00:00', 15),
(2, 'admin', '2025-09-02 09:15:00', '2025-09-02 17:05:00', 15),
(3, 'admin', '2025-09-03 10:00:00', '2025-09-03 18:00:00', 15),
(4, 'admin', '2025-09-04 09:30:00', '2025-09-04 17:20:00', 15),
(5, 'admin', '2025-09-05 08:45:00', '2025-09-05 17:10:00', 15),
(6, 'admin', '2025-09-06 09:05:00', '2025-09-06 17:00:00', 15),
(7, 'admin', '2025-09-07 09:25:00', '2025-09-07 16:55:00', 15),
(8, 'admin', '2025-09-08 09:40:00', '2025-09-08 17:15:00', 15),
(9, 'admin', '2025-09-09 10:00:00', '2025-09-09 17:30:00', 15),
(10, 'admin', '2025-09-10 09:50:00', '2025-09-10 17:45:00', 15),
(11, 'admin', '2025-09-11 09:55:00', '2025-09-11 17:50:00', 15),
(12, 'admin', '2025-09-12 10:10:00', '2025-09-12 17:40:00', 15),
(13, 'admin', '2025-09-13 09:20:00', '2025-09-13 17:35:00', 15),
(14, 'admin', '2025-09-14 09:30:00', '2025-09-14 17:45:00', 15),
(15, 'admin', '2025-09-15 10:05:00', '2025-09-15 17:50:00', 15),
(16, 'admin', '2025-09-16 09:50:00', '2025-09-16 17:40:00', 15),
(17, 'admin', '2025-09-17 09:15:00', '2025-09-17 17:30:00', 15),
(18, 'admin', '2025-09-18 09:45:00', '2025-09-18 17:55:00', 15),
(19, 'admin', '2025-09-19 10:10:00', '2025-09-19 18:05:00', 15),
(20, 'admin', '2025-09-20 09:30:00', '2025-09-20 17:35:00', 15),
(21, 'admin', '2025-09-21 09:55:00', '2025-09-21 17:50:00', 15),
(22, 'admin', '2025-09-22 10:05:00', '2025-09-22 17:55:00', 15),
(23, 'arjun', '2025-09-23 10:15:00', '2025-09-23 18:05:00', 14),
(24, 'arjun', '2025-09-24 10:25:00', '2025-09-24 18:10:00', 14),
(25, 'arjun', '2025-09-25 10:35:00', '2025-09-25 18:20:00', 14),
(26, 'arjun', '2025-09-26 10:45:00', '2025-09-26 18:30:00', 14),
(27, 'arjun', '2025-09-27 10:55:00', '2025-09-27 18:40:00', 14),
(28, 'arjun', '2025-09-28 11:05:00', '2025-09-28 18:50:00', 14),
(29, 'arjun', '2025-09-29 11:15:00', '2025-09-29 19:00:00', 14),
(30, 'arjun', '2025-09-30 11:25:00', '2025-09-30 19:10:00', 14),
(31, 'sneha', '2025-10-01 09:00:00', '2025-10-01 17:00:00', 13),
(32, 'sneha', '2025-10-02 09:10:00', '2025-10-02 17:05:00', 13),
(33, 'arjun', '2025-10-03 10:00:00', '2025-10-03 18:00:00', 14),
(34, 'arjun', '2025-10-04 10:15:00', '2025-10-04 18:10:00', 14),
(35, 'arjun', '2025-10-05 10:25:00', '2025-10-05 18:20:00', 14),
(36, 'arjun', '2025-10-06 10:35:00', '2025-10-06 18:30:00', 14),
(37, 'arjun', '2025-10-07 10:45:00', '2025-10-07 18:40:00', 14),
(38, 'arjun', '2025-10-08 10:55:00', '2025-10-08 18:50:00', 14),
(39, 'arjun', '2025-10-09 11:05:00', '2025-10-09 19:00:00', 14),
(40, 'arjun', '2025-10-10 11:15:00', '2025-10-10 19:10:00', 14),
(41, 'arjun', '2025-10-11 11:25:00', '2025-10-11 19:15:00', 14),
(42, 'arjun', '2025-10-12 11:35:00', '2025-10-12 19:20:00', 14),
(43, 'arjun', '2025-10-13 11:45:00', '2025-10-13 19:25:00', 14),
(44, 'sneha', '2025-10-14 09:00:00', '2025-10-14 17:00:00', 13),
(45, 'arjun', '2025-10-15 10:00:00', '2025-10-15 18:00:00', 14),
(46, 'sneha', '2025-10-16 09:15:00', '', 13),
(47, 'arjun', '2025-10-17 10:10:00', '2025-10-17 18:10:00', 14),
(48, 'arjun', '2025-10-18 10:20:00', '2025-10-18 18:20:00', 14),
(49, 'arjun', '2025-10-19 10:30:00', '2025-10-19 18:30:00', 14),
(50, 'arjun', '2025-10-20 10:40:00', '2025-10-20 18:40:00', 14),
(51, 'arjun', '2025-10-21 10:50:00', '2025-10-21 18:50:00', 14),
(52, 'arjun', '2025-10-22 11:00:00', '2025-10-22 19:00:00', 14),
(53, 'arjun', '2025-10-23 11:10:00', '2025-10-23 19:10:00', 14),
(54, 'arjun', '2025-10-24 11:20:00', '2025-10-24 19:20:00', 14),
(55, 'arjun', '2025-10-25 11:30:00', '2025-10-25 19:30:00', 14),
(56, 'arjun', '2025-10-26 11:40:00', '2025-10-26 19:40:00', 14),
(57, 'arjun', '2025-10-27 11:50:00', '2025-10-27 19:50:00', 14),
(58, 'arjun', '2025-10-28 12:00:00', '2025-10-28 20:00:00', 14),
(59, 'arjun', '2025-10-29 12:10:00', '2025-10-29 20:10:00', 14),
(60, 'arjun', '2025-10-30 12:20:00', '2025-10-30 20:20:00', 14),
(61, 'arjun', '2025-10-31 12:30:00', '2025-10-31 20:30:00', 14),
(62, 'arjun', '2025-11-01 12:40:00', '2025-11-01 20:40:00', 14),
(63, 'arjun', '2025-11-02 12:50:00', '2025-11-02 20:50:00', 14),
(64, 'arjun', '2025-11-03 13:00:00', '2025-11-03 21:00:00', 14),
(65, 'arjun', '2025-11-04 13:10:00', '2025-11-04 21:10:00', 14),
(66, 'admin', '2025-11-05 09:00:00', '2025-11-05 17:00:00', 15),
(67, 'admin', '2025-11-06 09:15:00', '2025-11-06 17:15:00', 15),
(68, 'admin', '2025-11-07 09:30:00', '2025-11-07 17:30:00', 15),
(69, 'admin', '2025-11-08 09:45:00', '2025-11-08 17:45:00', 15),
(70, 'admin', '2025-11-09 10:00:00', '2025-11-09 18:00:00', 15),
(71, 'arjun', '2025-11-10 10:15:00', '2025-11-10 18:15:00', 14),
(72, 'admin', '2025-11-11 09:00:00', '2025-11-11 17:00:00', 15),
(73, 'admin', '2025-11-12 09:15:00', '2025-11-12 17:15:00', 15),
(74, 'admin', '2025-11-13 09:30:00', '2025-11-13 17:30:00', 15),
(75, 'admin', '2025-11-14 09:45:00', '2025-11-14 17:45:00', 15),
(76, 'arjun', '2025-11-15 10:00:00', '', 14),
(77, 'admin', '2025-11-16 09:00:00', '2025-11-16 17:00:00', 15),
(78, 'admin', '2025-11-17 09:15:00', '2025-11-17 17:15:00', 15),
(79, 'admin', '2025-11-18 09:30:00', '2025-11-18 17:30:00', 15),
(80, 'admin', '2025-11-19 09:45:00', '2025-11-19 17:45:00', 15),
(81, 'admin', '2025-11-20 10:00:00', '2025-11-20 18:00:00', 15),
(82, 'admin', '2025-11-21 10:15:00', '2025-11-21 18:15:00', 15),
(83, 'admin', '2025-11-22 10:30:00', '2025-11-22 18:30:00', 15),
(84, 'admin', '2025-11-23 09:00:00', '2025-11-23 17:00:00', 15),
(85, 'admin', '2025-11-24 09:15:00', '', 15);



--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
-- ALTER TABLE `activity_log`
--   ADD PRIMARY KEY (`activity_log_id`);

--
-- Indexes for table `answer`
--
-- ALTER TABLE `answer`
--   ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `class_quiz`
--
ALTER TABLE `class_quiz`
  ADD PRIMARY KEY (`class_quiz_id`);

--
-- Indexes for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  ADD PRIMARY KEY (`class_subject_overview_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_sent`
--
ALTER TABLE `message_sent`
  ADD PRIMARY KEY (`message_sent_id`);

--
-- Indexes for table `notification`
--
-- ALTER TABLE `notification`
--   ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `notification_read`
--
-- ALTER TABLE `notification_read`
--   ADD PRIMARY KEY (`notification_read_id`);

--
-- Indexes for table `notification_read_teacher`
--
-- ALTER TABLE `notification_read_teacher`
--   ADD PRIMARY KEY (`notification_read_teacher_id`);

--
-- Indexes for table `question_type`
--
-- ALTER TABLE `question_type`
--   ADD PRIMARY KEY (`question_type_id`);

--
-- Indexes for table `quiz`
--
-- ALTER TABLE `quiz`
--   ADD PRIMARY KEY (`quiz_id`);

--
-- Indexes for table `quiz_question`
--
-- ALTER TABLE `quiz_question`
--   ADD PRIMARY KEY (`quiz_question_id`);

--
-- Indexes for table `school_year`
--
-- ALTER TABLE `school_year`
--   ADD PRIMARY KEY (`school_year_id`);

--
-- Indexes for table `student`
--
-- ALTER TABLE `student`
--   ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_assignment`
--
-- ALTER TABLE `student_assignment`
--   ADD PRIMARY KEY (`student_assignment_id`);

--
-- Indexes for table `student_backpack`
--
-- ALTER TABLE `student_backpack`
--   ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `student_class_quiz`
--
-- ALTER TABLE `student_class_quiz`
--   ADD PRIMARY KEY (`student_class_quiz_id`);

--
-- Indexes for table `subject`
--
-- ALTER TABLE `subject`
--   ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
-- ALTER TABLE `teacher`
--   ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_backpack`
--
-- ALTER TABLE `teacher_backpack`
--   ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `teacher_class`
--
-- ALTER TABLE `teacher_class`
--   ADD PRIMARY KEY (`teacher_class_id`);

--
-- Indexes for table `teacher_class_announcements`
--
-- ALTER TABLE `teacher_class_announcements`
--   ADD PRIMARY KEY (`teacher_class_announcements_id`);

--
-- Indexes for table `teacher_class_student`
--
-- ALTER TABLE `teacher_class_student`
--   ADD PRIMARY KEY (`teacher_class_student_id`);

--
-- Indexes for table `teacher_notification`
--
-- ALTER TABLE `teacher_notification`
--   ADD PRIMARY KEY (`teacher_notification_id`);

--
-- Indexes for table `teacher_shared`
--
-- ALTER TABLE `teacher_shared`
--   ADD PRIMARY KEY (`teacher_shared_id`);

--
-- Indexes for table `users`
--
-- ALTER TABLE `users`
--   ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_log`
-- --
-- ALTER TABLE `user_log`
--   ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `class_quiz`
--
ALTER TABLE `class_quiz`
  MODIFY `class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  MODIFY `class_subject_overview_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `message_sent`
--
ALTER TABLE `message_sent`
  MODIFY `message_sent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notification`
-- --
-- ALTER TABLE `notification`
--   MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  ADD PRIMARY KEY (`notification_id`);
--

-- AUTO_INCREMENT for table `notification_read`
ALTER TABLE `notification_read`
  MODIFY `notification_read_id` int(11) NOT NULL AUTO_INCREMENT,
  ADD PRIMARY KEY (`notification_read_id`),
  AUTO_INCREMENT=6;

-- AUTO_INCREMENT for table `notification_read_teacher`
ALTER TABLE `notification_read_teacher`
  MODIFY `notification_read_teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  ADD PRIMARY KEY (`notification_read_teacher_id`),
  AUTO_INCREMENT=9;

-- AUTO_INCREMENT for table `quiz`
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  ADD PRIMARY KEY (`quiz_id`),
  AUTO_INCREMENT=7;

-- AUTO_INCREMENT for table `quiz_question`
ALTER TABLE `quiz_question`
  MODIFY `quiz_question_id` int(11) NOT NULL AUTO_INCREMENT,
  ADD PRIMARY KEY (`quiz_question_id`),
  AUTO_INCREMENT=39;

-- AUTO_INCREMENT for table `school_year`
ALTER TABLE `school_year`
  MODIFY `school_year_id` int(11) NOT NULL AUTO_INCREMENT,
  ADD PRIMARY KEY (`school_year_id`),
  AUTO_INCREMENT=4;

-- AUTO_INCREMENT for table `student`
-- ALTER TABLE `student`
--   MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT,
--   ADD PRIMARY KEY (`student_id`),
--   AUTO_INCREMENT=220;


ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=151;

-- AUTO_INCREMENT for table `student_assignment`
ALTER TABLE `student_assignment`
  MODIFY `student_assignment_id` int(11) NOT NULL AUTO_INCREMENT,
  ADD PRIMARY KEY (`student_assignment_id`),
  AUTO_INCREMENT=2;

-- AUTO_INCREMENT for table `student_backpack`
ALTER TABLE `student_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT,
  ADD PRIMARY KEY (`file_id`),
  AUTO_INCREMENT=5;

-- AUTO_INCREMENT for table `student_class_quiz`
ALTER TABLE `student_class_quiz`
  MODIFY `student_class_quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  ADD PRIMARY KEY (`student_class_quiz_id`),
  AUTO_INCREMENT=4;

-- AUTO_INCREMENT for table `subject`
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  ADD PRIMARY KEY (`subject_id`),
  AUTO_INCREMENT=43;

-- AUTO_INCREMENT for table `teacher`
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  ADD PRIMARY KEY (`teacher_id`),
  AUTO_INCREMENT=20;

-- FIXED: AUTO_INCREMENT for table `teacher_backpack`
ALTER TABLE `teacher_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT,
  ADD PRIMARY KEY (`file_id`);

-- AUTO_INCREMENT for table `teacher_class`
ALTER TABLE `teacher_class`
  MODIFY `teacher_class_id` int(11) NOT NULL AUTO_INCREMENT,
  ADD PRIMARY KEY (`teacher_class_id`),
  AUTO_INCREMENT=187;

-- AUTO_INCREMENT for table `teacher_class_announcements`
ALTER TABLE `teacher_class_announcements`
  MODIFY `teacher_class_announcements_id` int(11) NOT NULL AUTO_INCREMENT,
  ADD PRIMARY KEY (`teacher_class_announcements_id`),
  AUTO_INCREMENT=40;
-- AUTO_INCREMENT for table `notification_read`
-- --
-- ALTER TABLE `notification_read`
--   MODIFY `notification_read_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

-- --
-- -- AUTO_INCREMENT for table `notification_read_teacher`
-- --
-- ALTER TABLE `notification_read_teacher`
--   MODIFY `notification_read_teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

-- --
-- -- AUTO_INCREMENT for table `quiz`
-- --
-- ALTER TABLE `quiz`
--   MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

-- --
-- -- AUTO_INCREMENT for table `quiz_question`
-- --
-- ALTER TABLE `quiz_question`
--   MODIFY `quiz_question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

-- --
-- -- AUTO_INCREMENT for table `school_year`
-- --
-- ALTER TABLE `school_year`
--   MODIFY `school_year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

-- --
-- -- AUTO_INCREMENT for table `student`
-- --
-- ALTER TABLE `student`
--   MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

-- --
-- -- AUTO_INCREMENT for table `student_assignment`
-- --
-- ALTER TABLE `student_assignment`
--   MODIFY `student_assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

-- --
-- -- AUTO_INCREMENT for table `student_backpack`
-- --
-- ALTER TABLE `student_backpack`
--   MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

-- --
-- -- AUTO_INCREMENT for table `student_class_quiz`
-- --
-- ALTER TABLE `student_class_quiz`
--   MODIFY `student_class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

-- --
-- -- AUTO_INCREMENT for table `subject`
-- --
-- ALTER TABLE `subject`
--   MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

-- --
-- -- AUTO_INCREMENT for table `teacher`
-- --
-- ALTER TABLE `teacher`
--   MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

-- --
-- -- AUTO_INCREMENT for table `teacher_backpack`
-- --
-- ALTER TABLE `teacher_backpack`
--   MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;

-- --
-- -- AUTO_INCREMENT for table `teacher_class`
-- --
-- ALTER TABLE `teacher_class`
--   MODIFY `teacher_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

-- --
-- -- AUTO_INCREMENT for table `teacher_class_announcements`
-- --
-- ALTER TABLE `teacher_class_announcements`
--   MODIFY `teacher_class_announcements_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

-- --
-- AUTO_INCREMENT for table `teacher_class_student`
--
-- ALTER TABLE `teacher_class_student`
--   MODIFY `teacher_class_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=383;
ALTER TABLE `teacher_class_student`
  MODIFY `teacher_class_student_id` int(11) NOT NULL AUTO_INCREMENT,
  ADD PRIMARY KEY (`teacher_class_student_id`),
  AUTO_INCREMENT=383;
--
-- AUTO_INCREMENT for table `teacher_notification`
--
-- ALTER TABLE `teacher_notification`
--   MODIFY `teacher_notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

-- --
-- -- AUTO_INCREMENT for table `teacher_shared`
-- --
-- ALTER TABLE `teacher_shared`
--   MODIFY `teacher_shared_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

-- --
-- -- AUTO_INCREMENT for table `users`
-- --
-- ALTER TABLE `users`
--   MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

-- --
-- -- AUTO_INCREMENT for table `user_log`
-- --
-- ALTER TABLE `user_log`
--   MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;


-- For teacher_notification
ALTER TABLE `teacher_notification`
  MODIFY `teacher_notification_id` int(11) NOT NULL AUTO_INCREMENT,
  ADD PRIMARY KEY (`teacher_notification_id`),
  AUTO_INCREMENT=19;

-- For teacher_shared
ALTER TABLE `teacher_shared`
  MODIFY `teacher_shared_id` int(11) NOT NULL AUTO_INCREMENT,
  ADD PRIMARY KEY (`teacher_shared_id`),
  AUTO_INCREMENT=2;

-- For users
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,
  ADD PRIMARY KEY (`user_id`),
  AUTO_INCREMENT=16;

-- For user_log
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT,
  ADD PRIMARY KEY (`user_log_id`),
  AUTO_INCREMENT=86;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
