-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2020 at 07:01 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oes`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `email` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'admin',
  `avator` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`email`, `login`, `role`, `avator`) VALUES
('admin@admin.com', '$2y$10$Iizqh23ak5FV9mVbi1QEOO7w/GZOT6Na9c/B51KghjOb38SW2zZV.', 'admin', ''),
('abdelmoula-bouchareb@hotmail.com', '12345', 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alerts`
--

CREATE TABLE `tbl_alerts` (
  `id` int(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_alerts`
--

INSERT INTO `tbl_alerts` (`id`, `code`, `description`, `type`) VALUES
(1, '001', 'Invalid email or password', 'warning'),
(2, '002', 'Name is used, please select another name', 'warning'),
(3, '003', 'Department have been registered', 'success'),
(4, '004', 'Department have been deleted', 'success'),
(5, '005', 'Department has been updated', 'success'),
(6, '006', 'Class has been registered', 'success'),
(7, '007', 'Class has been deleted', 'success'),
(8, '008', 'Class has been updated', 'success'),
(9, '009', 'Subject has been registered', 'success'),
(10, '010', 'Subject have been deleted', 'success'),
(11, '011', 'Subject has been updated', 'success'),
(12, '012', 'Email address is already registered', 'warning'),
(13, '013', 'Student have been registered', 'success'),
(14, '014', 'Student have been deleted', 'success'),
(15, '015', 'Student have been updated', 'success'),
(16, '016', 'School info has been updated', 'success'),
(17, '017', 'Logo image must be 400 X 400 Pixels', 'warning'),
(18, '018', 'Exam have been registered', 'success'),
(19, '019', 'Enroll number has been deleted', 'success'),
(20, '020', 'Exam has been updated', 'success'),
(21, '021', 'Question has been added', 'success'),
(22, '022', 'Profile have been updated', 'success'),
(23, '023', 'Password has been updated', 'success'),
(24, '024', 'Account was not found', 'danger'),
(25, '025', 'Open your email to continue', 'info'),
(26, '026', 'An error occurred while sending e-mail', 'warning'),
(27, '027', 'Assessment have been re-activated', 'success'),
(28, '028', 'All assessments have been re-acativate', 'success'),
(29, '029', 'Exam have been deleted', 'success'),
(30, '030', 'Notice have been pinned', 'success'),
(31, '031', 'Notice have been deleted', 'success'),
(32, '032', 'Please add some question before activating the exam', 'warning'),
(33, '033', 'Exam has been set active', 'success'),
(34, '034', 'Exam has been set inactive', 'success'),
(35, '035', 'Question has been deleted', 'success'),
(36, '036', 'Question has been updated', 'success');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_asessment_records`
--

CREATE TABLE `tbl_asessment_records` (
  `id` int(255) NOT NULL,
  `student` varchar(255) NOT NULL,
  `exam` varchar(255) NOT NULL,
  `date_taken` varchar(255) NOT NULL,
  `completed` varchar(255) NOT NULL DEFAULT '-NIL-',
  `score` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_classes`
--

CREATE TABLE `tbl_classes` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `reg_date` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_classes`
--

INSERT INTO `tbl_classes` (`id`, `name`, `department`, `reg_date`) VALUES
('CL-680489', 'Mcw2', 'DP-718989', '24/01/2020'),
('CL-698164', 'Btt', 'DP-427043', '25/01/2020'),
('CL-712082', 'Tuto', 'DP-718989', '07/05/2020'),
('CL-075506', 'Qqq', 'DP-427043', '25/01/2020'),
('CL-230323', 'Mcw3', 'DP-718989', '26/01/2020'),
('CL-152128', 'Infog', 'DP-621927', '07/05/2020');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_departments`
--

CREATE TABLE `tbl_departments` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `reg_date` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_departments`
--

INSERT INTO `tbl_departments` (`id`, `name`, `reg_date`) VALUES
('DP-718989', 'Computer Science', '24/01/2020'),
('DP-787699', 'Economie', '24/01/2020'),
('DP-427043', 'Svt', '25/01/2020'),
('DP-738232', 'Physics', '25/01/2020'),
('DP-005841', 'Sdfd', '25/01/2020'),
('DP-456896', 'Werwe', '25/01/2020'),
('DP-291053', 'Rwer', '25/01/2020'),
('DP-245925', 'Wrer', '25/01/2020'),
('DP-701539', 'Dsf', '25/01/2020'),
('DP-660195', 'Fsdfsdsd', '25/01/2020'),
('DP-379362', 'Tyrtyrt', '25/01/2020'),
('DP-743228', 'Tertert', '25/01/2020'),
('DP-442521', 'Gdfg', '25/01/2020'),
('DP-020797', 'Fdgd', '25/01/2020'),
('DP-145174', 'Rwerw', '25/01/2020'),
('DP-243222', 'Jtt', '25/01/2020'),
('DP-194898', 'Hgjgh', '25/01/2020'),
('DP-951324', 'Ghgh', '25/01/2020'),
('DP-621927', 'Graphic Design', '07/05/2020');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enroll_numbers`
--

CREATE TABLE `tbl_enroll_numbers` (
  `code` varchar(255) NOT NULL,
  `student` varchar(255) NOT NULL,
  `exam` varchar(255) NOT NULL,
  `expire_date` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_enroll_numbers`
--

INSERT INTO `tbl_enroll_numbers` (`code`, `student`, `exam`, `expire_date`) VALUES
('EN-321-759-906', 'ST-693138', 'EX-344486', '28 January, 2020');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exams`
--

CREATE TABLE `tbl_exams` (
  `exam_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `passmark` varchar(255) NOT NULL,
  `re_exam` varchar(255) NOT NULL,
  `deadline` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `exam_type` varchar(255) NOT NULL,
  `fee` varchar(255) DEFAULT NULL,
  `terms` longtext NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'INACTIVE'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_exams`
--

INSERT INTO `tbl_exams` (`exam_id`, `name`, `duration`, `passmark`, `re_exam`, `deadline`, `department`, `class`, `subject`, `exam_type`, `fee`, `terms`, `status`) VALUES
('EX-336318', 'Math', '60', '50', '0', '', 'DP-718989', 'CL-680489', 'SB-784783', 'Free', '', '\r\n                                        ', 'INACTIVE'),
('EX-564702', 'Fsfsd', '423', '24', '3', '', 'DP-718989', 'CL-680489', 'SB-784783', 'Free', '', '\r\n                                        ', 'INACTIVE'),
('EX-344486', 'Tttt', '29', '34', '34', '31 January, 2020', 'DP-718989', 'CL-680489', 'SB-941163', 'Paid', '', '                                                                                                                                                                    \r\n                                                                                                                                                                                                        ', 'INACTIVE'),
('EX-295203', 'Cx', '50', '60', '125', '8 May, 2020', 'DP-718989', 'CL-680489', 'SB-784783', 'Free', '', 'sdfsd                            ', 'INACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notice`
--

CREATE TABLE `tbl_notice` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `notice` longtext NOT NULL,
  `posted_date` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questions`
--

CREATE TABLE `tbl_questions` (
  `id` int(255) NOT NULL,
  `question` longtext NOT NULL,
  `type` longtext NOT NULL,
  `op1` longtext NOT NULL,
  `op2` longtext NOT NULL,
  `op3` longtext NOT NULL,
  `op4` longtext NOT NULL,
  `answer` longtext NOT NULL,
  `exam` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_questions`
--

INSERT INTO `tbl_questions` (`id`, `question`, `type`, `op1`, `op2`, `op3`, `op4`, `answer`, `exam`) VALUES
(1, '4  == \'4\' ?', '1', 'Oui', 'Non', 'Other', 'Tt', 'op1', 'EX-336318'),
(2, 'Sdsda', '1', 'Ok', 'Asda', 'Das', 'Dadasd', 'op1', 'EX-344486'),
(3, 'Mk;lk;k;lk', '2', '', '', '', '', '15', 'EX-344486'),
(4, 'Trwrwe', '1', 'Jkkj', 'Khkj', 'Kkhkh', 'Jklk', 'op1', 'EX-344486');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reset_tokens`
--

CREATE TABLE `tbl_reset_tokens` (
  `id` int(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_reset_tokens`
--

INSERT INTO `tbl_reset_tokens` (`id`, `token`, `user`, `role`) VALUES
(2, 'f4a7f90e2a11c8bac30f253dff71f702', 'abdelmoula-bouchareb@hotmail.com', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_school_info`
--

CREATE TABLE `tbl_school_info` (
  `school_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_school_info`
--

INSERT INTO `tbl_school_info` (`school_name`, `phone`, `email`, `address`, `logo`) VALUES
('Wizdom Academy', '0689 938 643', 'email@example.com', 'Brevet de technicien superieur, Taza', '74732.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_students`
--

CREATE TABLE `tbl_students` (
  `id` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'student',
  `avator` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_students`
--

INSERT INTO `tbl_students` (`id`, `first_name`, `last_name`, `gender`, `department`, `class`, `email`, `login`, `role`, `avator`) VALUES
('ST-693138', 'Abdelmoula', 'Bouchreb', 'Male', 'DP-718989', 'CL-680489', 'abdelmoula-bouchareb@hotmail.com', '$2y$10$r7Qp4qEUlnqLOA0xdbPnTetwiTVbq9knI8dcrufMq4bDJRUKmCGJS', 'student', NULL),
('ST-356920', 'Yassine', 'Hakkach', 'Male', 'DP-718989', 'CL-680489', 'yassine@hakkach.com', '$2y$10$spx8jwRCMjykQFhByhHf0OQQJYisL7/fA6P6btuOZtGvZnWam4S1.', 'student', NULL),
('ST-723801', 'Khadija', 'Mourrabit', 'Female', 'DP-718989', 'CL-680489', 'fatiha@naaima.com', '$2y$10$YdTX6ECGYdZm33Fp2WNa3OIa0XDyfQjH8RRQZZxEJP3BD3UHB/zvm', 'student', NULL),
('ST-106231', 'Hamid', 'Zaaboul', 'Male', 'DP-718989', 'CL-680489', 'hanida@kjf.com', '$2y$10$wlpLTEOgdnEcxVIJsfuO7.Y2DMuckvEKrCPbRQUM4r3KtoiEfXg2y', 'student', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subjects`
--

CREATE TABLE `tbl_subjects` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `reg_date` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subjects`
--

INSERT INTO `tbl_subjects` (`id`, `name`, `department`, `class`, `reg_date`) VALUES
('SB-784783', 'Math', 'DP-718989', 'CL-680489', '24/01/2020'),
('SB-941163', 'Eer', 'DP-718989', 'CL-680489', '25/01/2020'),
('SB-595988', 'Hmoussa', 'DP-718989', 'CL-680489', '25/01/2020'),
('SB-693667', 'Yiyi', 'DP-718989', 'CL-712082', '07/05/2020');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_asessment_records`
--
ALTER TABLE `tbl_asessment_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_classes`
--
ALTER TABLE `tbl_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_departments`
--
ALTER TABLE `tbl_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_enroll_numbers`
--
ALTER TABLE `tbl_enroll_numbers`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `tbl_exams`
--
ALTER TABLE `tbl_exams`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `tbl_notice`
--
ALTER TABLE `tbl_notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_questions`
--
ALTER TABLE `tbl_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reset_tokens`
--
ALTER TABLE `tbl_reset_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_school_info`
--
ALTER TABLE `tbl_school_info`
  ADD PRIMARY KEY (`school_name`);

--
-- Indexes for table `tbl_students`
--
ALTER TABLE `tbl_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_asessment_records`
--
ALTER TABLE `tbl_asessment_records`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_notice`
--
ALTER TABLE `tbl_notice`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_questions`
--
ALTER TABLE `tbl_questions`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_reset_tokens`
--
ALTER TABLE `tbl_reset_tokens`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
