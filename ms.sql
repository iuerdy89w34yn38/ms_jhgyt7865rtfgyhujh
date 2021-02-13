-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 13, 2021 at 04:06 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_06_02_082928_create_tbl_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@admin.com', 'e0d7311192ff83c7632e7b449d5f29f7a4a8ec6194e122f7e4a4623909f55dc3', '2016-09-24 08:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

DROP TABLE IF EXISTS `tbl_attendance`;
CREATE TABLE IF NOT EXISTS `tbl_attendance` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `emp_id` int(3) NOT NULL,
  `work_in` datetime NOT NULL,
  `work_out` datetime NOT NULL,
  `guest` varchar(100) NOT NULL,
  `purpose` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`id`, `emp_id`, `work_in`, `work_out`, `guest`, `purpose`, `contact`) VALUES
(39, 1, '2021-02-10 09:15:17', '2021-02-10 12:57:57', '', 'work', '0'),
(40, 1, '2021-02-12 07:59:06', '2021-02-12 15:59:06', '', 'work', '0'),
(41, 1, '2021-02-11 08:11:17', '2021-02-11 15:45:57', '', 'work', '0'),
(42, 10, '2021-02-10 08:12:12', '2021-02-10 12:57:57', '', 'work', '0'),
(43, 10, '2021-02-13 07:59:06', '2021-02-13 10:30:30', '', 'work', '0'),
(44, 10, '2021-02-11 11:35:17', '2021-02-11 15:45:57', '', 'work', '0'),
(45, 1, '2021-02-13 08:29:26', '2021-02-13 08:29:26', '', 'work', '0'),
(46, 11, '2021-02-12 09:35:17', '2021-02-12 15:45:57', '', 'work', '0'),
(47, 11, '2021-02-13 08:35:17', '2021-02-13 15:45:57', '', 'work', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dept`
--

DROP TABLE IF EXISTS `tbl_dept`;
CREATE TABLE IF NOT EXISTS `tbl_dept` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `department` varchar(100) NOT NULL,
  `function` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dept`
--

INSERT INTO `tbl_dept` (`id`, `department`, `function`) VALUES
(1, 'Accounts Main', 'Accounting Functionality Issues'),
(2, 'Sales', 'Marketing & Sales'),
(3, 'Development', 'software coding'),
(4, 'Management', 'top level management administration');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_emp`
--

DROP TABLE IF EXISTS `tbl_emp`;
CREATE TABLE IF NOT EXISTS `tbl_emp` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `post_id` int(2) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `father` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `mobile` int(10) NOT NULL,
  `email` varchar(60) NOT NULL,
  `salary` double NOT NULL,
  `hourly` decimal(5,2) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `github` varchar(100) NOT NULL,
  `linkedin` varchar(100) NOT NULL,
  `address` longtext NOT NULL,
  `notes` varchar(300) NOT NULL,
  `doj` date NOT NULL,
  `password` varchar(300) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `resume` varchar(300) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_emp`
--

INSERT INTO `tbl_emp` (`id`, `post_id`, `name`, `sex`, `father`, `dob`, `mobile`, `email`, `salary`, `hourly`, `facebook`, `twitter`, `github`, `linkedin`, `address`, `notes`, `doj`, `password`, `photo`, `resume`, `status`) VALUES
(1, 2, 'Ahmad Raza', 'male', 'Zahid Raza', '1984-09-18', 927973, 'employee@admin.com', 60000, '2.00', 'ahmadr123', 'ahmadraza23', 'gitahmad', 'linkahmad', 'Address, 123, Lahore																																																																																									\r\n								\r\n								\r\n								\r\n								\r\n								\r\n								\r\n								\r\n								\r\n								\r\n								', 'target oriented, monthly sales should be 5l', '2020-09-10', '$2y$10$YvzGh5kyKWpEQKJPWXDe2evmfF6ztLPiaNBU6N553Z9lzPbbKAM4.', '1.png', '1.pdf', 1),
(10, 3, 'Hina Rashid', 'female', 'Rashid Hussain', '1970-01-01', 3702740, 'hina@wilcode.com', 35000, '2.00', 'hinarashid99', 'twithina', '', 'hinaras123', 'Sample Address, Street, Lahore', '', '2021-01-02', '$2y$10$t0boLV6ZbWr/Yt7WurIIXOKz6nzUd8ChP.rO0NW4OAYEh/UHnWYh2', '10.png', '', 1),
(11, 4, 'HAMZA PERVAIZ', 'male', 'Pervaiz Ahmad ', '1995-05-18', 2147483647, 'hamzapervaiz5@gmail.com', 50000, '0.00', '', '', '', '', 'Al Rehman Garden P II', '', '2021-02-02', '$2y$10$V6zhUna9EmhS8Dd2B67jP..MB1Z4PNj0EggI7SVPywtCmgBtslzKa', '24.png', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_leave`
--

DROP TABLE IF EXISTS `tbl_leave`;
CREATE TABLE IF NOT EXISTS `tbl_leave` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `emp_id` int(3) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` varchar(200) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0->pending, 1->appvoed, 2->declined',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_leave`
--

INSERT INTO `tbl_leave` (`id`, `emp_id`, `start_date`, `end_date`, `reason`, `status`) VALUES
(9, 1, '2021-02-15', '2021-02-15', 'Family Holiday ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

DROP TABLE IF EXISTS `tbl_logs`;
CREATE TABLE IF NOT EXISTS `tbl_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_time` datetime NOT NULL,
  `log` varchar(40) NOT NULL,
  `info` varchar(100) NOT NULL,
  `cat` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1 COMMENT='log everything here';

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`id`, `log_time`, `log`, `info`, `cat`) VALUES
(61, '2021-02-13 08:13:23', 'Profile Updated', '1', 'Employees'),
(62, '2021-02-13 08:13:50', 'Profile Updated', '10', 'Employees'),
(63, '2021-02-13 08:14:14', 'Profile Updated', '10', 'Employees'),
(64, '2021-02-13 08:14:40', 'Profile Updated', '1', 'Employees'),
(65, '2021-02-13 08:36:22', 'New Appoint', '24', 'Employees'),
(66, '2021-02-13 08:38:01', 'Profile Updated', '24', 'Employees');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payroll`
--

DROP TABLE IF EXISTS `tbl_payroll`;
CREATE TABLE IF NOT EXISTS `tbl_payroll` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `emp_id` int(5) NOT NULL,
  `pay` int(10) NOT NULL,
  `incentive` int(6) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `ded` decimal(10,2) NOT NULL,
  `net` decimal(10,2) NOT NULL,
  `dop` date NOT NULL,
  `period_frm` date NOT NULL,
  `period_to` date NOT NULL,
  `method` varchar(60) NOT NULL,
  `trans_id` varchar(50) NOT NULL,
  `trans_mode` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1 COMMENT='payroll table';

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

DROP TABLE IF EXISTS `tbl_post`;
CREATE TABLE IF NOT EXISTS `tbl_post` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `post` varchar(100) NOT NULL,
  `dept_id` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `post`, `dept_id`) VALUES
(1, 'Accounts Assistant', 1),
(2, 'Sales Manager', 2),
(3, 'Marketing Executive', 2),
(4, 'Programmer2', 3),
(5, 'Testing Enginer', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_projects`
--

DROP TABLE IF EXISTS `tbl_projects`;
CREATE TABLE IF NOT EXISTS `tbl_projects` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `proj_title` varchar(100) NOT NULL,
  `proj_desc` varchar(300) NOT NULL,
  `start_date` date NOT NULL,
  `deadline` date NOT NULL,
  `users` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0->current, 1->finished, 2->stopped',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_projects`
--

INSERT INTO `tbl_projects` (`id`, `proj_title`, `proj_desc`, `start_date`, `deadline`, `users`, `status`) VALUES
(3, 'AIMS Development ', 'Academy & Institute Management System', '2020-09-23', '2021-10-01', '', 0),
(4, 'HRM Core update', 'HRM script core update and modules added', '2020-12-17', '2021-04-25', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

DROP TABLE IF EXISTS `tbl_settings`;
CREATE TABLE IF NOT EXISTS `tbl_settings` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `field` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `category` int(1) NOT NULL COMMENT '1->company, 2->ded',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `field`, `value`, `category`) VALUES
(1, 'tax', '1', 2),
(3, 'pf', '0', 2),
(4, 'add1', 'New Street1', 1),
(5, 'add2', 'Main Road', 1),
(6, 'city', 'Lahore', 1),
(7, 'country', 'Pakistan', 1),
(8, 'Zip', '54000', 1),
(9, 'phone', '+923494965879', 1),
(10, 'email', 'info@wilcode.com', 1),
(11, 'web', 'www.wilcode.com', 1),
(12, 'company', 'Management Standard ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_timesheet`
--

DROP TABLE IF EXISTS `tbl_timesheet`;
CREATE TABLE IF NOT EXISTS `tbl_timesheet` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `emp_id` int(3) NOT NULL,
  `proj_id` int(5) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `task` varchar(150) NOT NULL,
  `notes` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_timesheet`
--

INSERT INTO `tbl_timesheet` (`id`, `emp_id`, `proj_id`, `start_time`, `end_time`, `task`, `notes`) VALUES
(94, 1, 3, '2021-02-10 08:01:23', '2021-02-10 15:01:28', '', ''),
(95, 1, 3, '2021-02-11 07:32:23', '2021-02-11 15:43:28', '', ''),
(96, 1, 4, '2021-02-12 08:12:23', '2021-02-12 13:33:28', '', ''),
(97, 1, 3, '2021-02-13 11:18:23', '2021-02-13 02:08:17', '', ''),
(98, 10, 4, '2021-02-10 09:01:23', '2021-02-10 10:01:28', '', ''),
(99, 10, 3, '2021-02-11 10:27:27', '2021-02-11 12:43:28', '', ''),
(100, 10, 4, '2021-02-12 10:12:23', '2021-02-12 14:33:28', '', ''),
(102, 11, 3, '2021-02-11 11:27:27', '2021-02-11 15:43:28', '', ''),
(103, 11, 4, '2021-02-12 09:12:23', '2021-02-12 14:33:28', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hassan Raza', 'admin@demo.com', '$2y$10$j3quwoQbbFeLXSoLe5rheO9MiqXwc3kxy0QteEwYgdU2V2qG9aYoO', '5BZlXx3iyzLBHxdVBAGWwQdN2ZVMWNuyWNbACnkvJXvm1d8tT7BjodZMevhH', '2020-09-10 18:20:27', '2021-02-11 13:04:37');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
