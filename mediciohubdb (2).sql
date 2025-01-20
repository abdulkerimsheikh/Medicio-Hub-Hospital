-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2025 at 03:10 PM
-- Server version: 10.5.4-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mediciohubdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `addpatient`
--

CREATE TABLE `addpatient` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `mobilenumber` varchar(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` longtext NOT NULL,
  `age` int(11) NOT NULL,
  `medicalhistory` longtext NOT NULL,
  `regdate_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `doctor_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addpatient`
--

INSERT INTO `addpatient` (`id`, `name`, `mobilenumber`, `email`, `gender`, `address`, `age`, `medicalhistory`, `regdate_at`, `updated_at`, `doctor_id_id`) VALUES
(1, 'fg', '4654654654', 'rajat@gmail.com', 'Male', 'O-908, GHU, Block-7', 36, 'Alergy with pollygrains.\r\nDependent on insulin', '2024-07-03 06:11:54.836525', '2024-07-03 06:11:54.836525', 2),
(2, 'umar', '1234567899', 'shanu@gmail.com', 'Male', 'O-908, GHU, Block-7 Bihar', 32, 'No.', '2024-07-03 06:13:32.768371', '2024-07-03 06:13:32.768371', 2),
(3, 'sidra', '7894561236', 'komal@gmail.com', 'Female', 'O-908, GHU, Block-7', 36, 'no', '2024-07-03 06:19:34.314114', '2024-07-03 06:19:34.314114', 2),
(4, 'ali noman', '7894562589', 'john@gmail.com', 'Male', 'P-789', 78, 'No', '2024-07-03 06:28:00.990278', '2024-07-03 06:28:00.990278', 2),
(5, 'jmil', '9878979878', 'gaurav@gmail.com', 'Male', 'k-850 Malvia nagar', 45, 'Nohg', '2024-07-03 06:29:28.945979', '2024-07-03 07:15:44.213821', 1),
(6, 'sonu', '1231231230', 'rahul@12gmai.com', 'Male', 'Test Address', 32, 'Fever, Cough', '2024-07-17 13:26:15.663144', '2024-07-17 13:26:15.663144', 6);

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` bigint(20) NOT NULL,
  `appointmentnumber` int(11) NOT NULL,
  `date_of_appointment` varchar(250) NOT NULL,
  `time_of_appointment` varchar(250) NOT NULL,
  `additional_msg` longtext NOT NULL,
  `remark` varchar(250) NOT NULL,
  `status` varchar(200) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `doctor_id_id` bigint(20) NOT NULL,
  `pat_id_id` bigint(20) NOT NULL,
  `spec_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `appointmentnumber`, `date_of_appointment`, `time_of_appointment`, `additional_msg`, `remark`, `status`, `created_at`, `updated_at`, `doctor_id_id`, `pat_id_id`, `spec_id_id`) VALUES
(2, 259417502, '2024-07-13', '15:00', 'gtrytujyhuykyik', '0', 'Canceled', '2024-07-03 06:06:56.595005', '2024-07-04 06:10:40.467005', 2, 2, 3),
(4, 708228277, '2024-07-06', '12:08', 'gh', 'Approved', 'Approved', '2024-07-04 06:07:34.677851', '2024-07-04 06:12:36.539895', 1, 2, 2),
(5, 510338955, '2024-07-13', '18:02', 'Do the needfull', 'Approved', 'Approved', '2024-07-10 11:32:23.976855', '2024-07-10 11:36:37.464805', 2, 4, 3),
(6, 504166765, '2024-07-30', '22:00', 'NA', 'Appointment is approved', 'Approved', '2024-07-17 13:24:48.272474', '2024-07-17 13:25:15.006631', 6, 5, 1),
(7, 970852346, '2025-01-30', '05:17', 'no', '0', '0', '2025-01-13 21:12:45.487363', '2025-01-13 21:12:45.487400', 6, 8, 1),
(8, 445570336, '2025-01-21', '14:32', 'dytfgjhjlk', '0', 'Canceled', '2025-01-20 07:30:09.517264', '2025-01-20 07:30:42.161164', 1, 10, 2),
(9, 482188906, '2025-01-25', '12:42', 'fhgj', '0', '0', '2025-01-20 07:39:12.217872', '2025-01-20 07:39:12.217896', 2, 11, 3),
(10, 453428768, '2025-01-22', '07:49', 'dfghjnjhgf', '0', '0', '2025-01-20 12:47:39.885606', '2025-01-20 12:47:39.885635', 1, 12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add page', 6, 'add_page'),
(22, 'Can change page', 6, 'change_page'),
(23, 'Can delete page', 6, 'delete_page'),
(24, 'Can view page', 6, 'view_page'),
(25, 'Can add specialization', 7, 'add_specialization'),
(26, 'Can change specialization', 7, 'change_specialization'),
(27, 'Can delete specialization', 7, 'delete_specialization'),
(28, 'Can view specialization', 7, 'view_specialization'),
(29, 'Can add user', 8, 'add_customuser'),
(30, 'Can change user', 8, 'change_customuser'),
(31, 'Can delete user', 8, 'delete_customuser'),
(32, 'Can view user', 8, 'view_customuser'),
(33, 'Can add doctor reg', 9, 'add_doctorreg'),
(34, 'Can change doctor reg', 9, 'change_doctorreg'),
(35, 'Can delete doctor reg', 9, 'delete_doctorreg'),
(36, 'Can view doctor reg', 9, 'view_doctorreg'),
(37, 'Can add add patient', 10, 'add_addpatient'),
(38, 'Can change add patient', 10, 'change_addpatient'),
(39, 'Can delete add patient', 10, 'delete_addpatient'),
(40, 'Can view add patient', 10, 'view_addpatient'),
(41, 'Can add medical history', 11, 'add_medicalhistory'),
(42, 'Can change medical history', 11, 'change_medicalhistory'),
(43, 'Can delete medical history', 11, 'delete_medicalhistory'),
(44, 'Can view medical history', 11, 'view_medicalhistory'),
(45, 'Can add patient reg', 12, 'add_patientreg'),
(46, 'Can change patient reg', 12, 'change_patientreg'),
(47, 'Can delete patient reg', 12, 'delete_patientreg'),
(48, 'Can view patient reg', 12, 'view_patientreg'),
(49, 'Can add appointment', 13, 'add_appointment'),
(50, 'Can change appointment', 13, 'change_appointment'),
(51, 'Can delete appointment', 13, 'delete_appointment'),
(52, 'Can view appointment', 13, 'view_appointment');

-- --------------------------------------------------------

--
-- Table structure for table `customuser`
--

CREATE TABLE `customuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `profile_pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customuser`
--

INSERT INTO `customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `user_type`, `profile_pic`) VALUES
(1, 'pbkdf2_sha256$870000$0c1nQe0a1mQ9BqlUlCHUwC$pH5e5CX6VYXsefUwyRAIo2gEtUPGLaNhLfHBpbe2A+A=', '2025-01-20 14:05:26.926482', 1, 'admin', 'Admin', 'Sample', 'admin@gmail.com', 1, 1, '2024-07-03 05:55:45.927159', '1', 'media/profile_pic/team-3_siVD141.jpg'),
(2, 'pbkdf2_sha256$720000$YvjfCkOooXnAj2Yqi4Ac6W$BF3Lo93NGDvd9qZLXgbrOnyjuhhlZjKKzSJndW15/94=', '2024-07-04 06:25:10.515473', 0, 'seema123', 'Aleena', 'Azam', 'seema@gmail.com', 0, 1, '2024-07-03 06:00:28.178180', '2', 'media/profile_pic/team-4_gxbxufu.jpg'),
(3, 'pbkdf2_sha256$390000$mx0aAeNLS6jJlMI1A1M3CE$8WMbkKH/EI/3pFmrylDCPtN6WYObCBmVjgWqxl9LGLk=', '2024-07-10 11:34:10.291187', 0, 'abir123', 'abeer', 'khan', 'abir@gmail.com', 0, 1, '2024-07-03 06:01:03.442982', '2', 'media/profile_pic/team-1_ykyrcIA.jpg'),
(5, 'pbkdf2_sha256$390000$ODpVpbBxIvgaZ3zIZUaToY$NSZT/YWRpaCijhWyyqIofx2xsVeDe0EzA3bfJNOFK0s=', '2024-07-10 06:31:23.230009', 0, 'mihir123', 'umar', 'ali', 'mihir@gmail.com', 0, 1, '2024-07-03 06:03:46.827136', '3', 'media/profile_pic/card1.jpg'),
(7, 'pbkdf2_sha256$720000$S9EHrrkh9LCrzfPkXpVhlS$682RT1nptcrRnOWAM7hV8gXR7v4VhZnvpAZxDdqC+x4=', NULL, 0, 'rahul123', 'Javeria', 'ali', 'rahul@gmail.com', 0, 1, '2024-07-05 05:54:00.450495', '2', 'media/profile_pic/3.jpg'),
(8, 'pbkdf2_sha256$720000$AfTbljHksBbHahypOldFq1$Yx7o76ALuJgXOShv1dicVO592T5m21JuXVv5MNZEGJM=', NULL, 0, 'kiran123', 'Kiran', 'ali', 'kiran@gmail.com', 0, 1, '2024-07-05 05:54:59.116427', '2', 'media/profile_pic/test-thumb2.jpg'),
(9, 'pbkdf2_sha256$390000$8zRlsCUONC2OrrSYUnnbF9$DRlcs1SLLKM8pHV5L5y/xsSUwqbAA77zxqSBjAQDIgI=', '2024-07-09 15:27:13.625794', 0, 'mayank123', 'ali', 'Raza', 'mayank@gmail.com', 0, 1, '2024-07-05 05:56:06.769395', '2', 'media/profile_pic/test-thumb4.jpg'),
(10, 'pbkdf2_sha256$390000$7oboQQxtrlmxEGJMXx2dJ2$EpDswftHbYxYgGEh1RUg+bPj8Dj5CMzFBEXOUJkN6wY=', '2024-07-10 11:26:43.539834', 0, 'test123', 'Test', 'Sample', 'test1@gmail.com', 0, 1, '2024-07-10 11:26:11.459035', '3', 'media/profile_pic/profile.png'),
(11, 'pbkdf2_sha256$870000$V5q9kON1VBzf15LCGzjzMu$qP7LOVKnGoRF3jJCLxrRI3c0agMGxxppyJfgulKvE+8=', '2025-01-01 22:15:54.339796', 0, 'john12', 'munawar', 'ali', 'john12@gmail.com', 0, 1, '2024-07-17 13:23:19.737445', '2', 'media/profile_pic/doctor_1.png'),
(12, 'pbkdf2_sha256$390000$95aukHI4txzGLuqLy4clM5$BDiwRM2sqqWi8vF+LiHCotZXQfKBVLHYNE227qWH7to=', '2024-07-19 15:26:43.023674', 0, 'amit12', 'Amit', 'Kumar', 'amit123@gmail.com', 0, 1, '2024-07-17 13:24:24.574003', '3', 'media/profile_pic/examination.png'),
(13, 'pbkdf2_sha256$870000$Kc9cTsgmBsIQz0eQrfszgT$Y8M+4NpAW5zhZgJvhN/gQHV4sLq8fQEpRMRgTQkPeqQ=', NULL, 0, 'fgf', 'umar', 'ali', 'uma@gmail', 0, 1, '2024-12-30 22:33:12.466185', '3', 'media/profile_pic/png-transparent-black-small-apple-logo-logo-material-apple-logo-black-_jyVsJvL.png'),
(14, 'pbkdf2_sha256$870000$I9TjqFQYA14mOWJhOGOD89$HkgrV6M+t0i7gSh4qxwEUZ37AGU0PzCgdHkrjMN9ink=', NULL, 0, 'gvjhbj', 'ali malik', 'ajs', 'dhd@fghhnb', 0, 1, '2025-01-13 21:02:30.901770', '3', 'media/profile_pic/group_bmhEeTm.png'),
(15, 'pbkdf2_sha256$870000$soy1Q33D7qznOTfZb7G9YX$0JRE9ugFys84BvYUiy7Ny2CovnTEx03Yz99/Hyreynk=', '2025-01-13 21:03:54.819596', 0, 'fggfddftg', 'ali shahzadal', 'sahab', 'alijaan23@gmail.com', 0, 1, '2025-01-13 21:03:29.442195', '3', 'media/profile_pic/group_pw6dG9Y.png'),
(16, 'pbkdf2_sha256$870000$VKVJk3RuyqhIVP4Z2APmUb$H+6JvumefYxUSjySOzymDxgZvLRtwKTAcvYMm1mH6dI=', NULL, 0, 'alan walker', 'Alan', 'Walker', 'alanwalker@gmail.com', 0, 1, '2025-01-19 12:17:40.367068', '3', 'media/profile_pic/group_z51olfR.png'),
(17, 'pbkdf2_sha256$870000$8tp0WD2zmO4gbvfgdlqzxL$9hql1gY/A/4p0DwBAHRzovSKi9Y+HW2EXkGTL211YgY=', '2025-01-20 07:29:39.013890', 0, 'abdulkareem', 'abdul kareem', 'khan', 'abdulkareem@gmail.com', 0, 1, '2025-01-20 07:28:44.304937', '3', 'media/profile_pic/group_lRUj8KN.png'),
(18, 'pbkdf2_sha256$870000$yt6OuQWpPwWA6LiNkQ78M6$Tje1Y6jM8EaYsSpv+Zdibb5e6uUjM9ykOKVKRkrkVZI=', '2025-01-20 07:36:03.834833', 0, 'alizain', 'ali', 'zain', 'alizain@gmail.com', 0, 1, '2025-01-20 07:32:10.576719', '2', 'media/profile_pic/group_OyvRF0a.png'),
(19, 'pbkdf2_sha256$870000$Q8rKEryK3TlVtUFavvY78s$wwt2W94T669iOdzaB7I+yEWaVg/V9iKMMyDwj3M0J44=', '2025-01-20 07:38:33.043204', 0, 'pakish', 'alizain', 'khan', 'alizainkhan@gmaild', 0, 1, '2025-01-20 07:38:16.061904', '3', 'media/profile_pic/WhatsApp_Image_2024-08-24_at_9_glMaOOM.19.59_PM.jpeg'),
(20, 'pbkdf2_sha256$870000$TH6AASk8vfQpQYtuKQoCHN$ewDTyqUF9Rm4roSux4inuWRKLJZHsI/bRBt32HSQXHA=', '2025-01-20 12:46:57.767181', 0, 'abubakar', 'abu bakar', 'mohsin', 'abubakar@gmail.com', 0, 1, '2025-01-20 12:45:50.002411', '3', 'media/profile_pic/WhatsApp_Image_2024-08-24_at_9_ufNY3RK.19.59_PM.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `customuser_groups`
--

CREATE TABLE `customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customuser_user_permissions`
--

CREATE TABLE `customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(10, 'dasapp', 'addpatient'),
(13, 'dasapp', 'appointment'),
(8, 'dasapp', 'customuser'),
(9, 'dasapp', 'doctorreg'),
(11, 'dasapp', 'medicalhistory'),
(6, 'dasapp', 'page'),
(12, 'dasapp', 'patientreg'),
(7, 'dasapp', 'specialization'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-07-03 05:44:28.187960'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-07-03 05:44:28.281178'),
(3, 'auth', '0001_initial', '2024-07-03 05:44:28.528291'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-07-03 05:44:28.586470'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-07-03 05:44:28.598444'),
(6, 'auth', '0004_alter_user_username_opts', '2024-07-03 05:44:28.606416'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-07-03 05:44:28.613699'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-07-03 05:44:28.615692'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-07-03 05:44:28.636640'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-07-03 05:44:28.648608'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-07-03 05:44:28.656590'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-07-03 05:44:28.667878'),
(13, 'auth', '0011_update_proxy_permissions', '2024-07-03 05:44:28.677851'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-07-03 05:44:28.685432'),
(15, 'dasapp', '0001_initial', '2024-07-03 05:44:29.566312'),
(16, 'admin', '0001_initial', '2024-07-03 05:44:29.719971'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-07-03 05:44:29.737724'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-07-03 05:44:29.752714'),
(19, 'sessions', '0001_initial', '2024-07-03 05:44:29.777562'),
(20, 'dasapp', '0002_remove_addpatient_fee_doctorreg_fee', '2024-07-03 05:54:32.408203'),
(21, 'dasapp', '0003_remove_appointment_prescription_and_more', '2024-07-05 11:24:43.638964'),
(22, 'dasapp', '0004_alter_customuser_options_alter_customuser_user_type_and_more', '2025-01-13 21:01:06.955134');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('a6tl5wohgv2gxyr39llinyxtogc264zf', '.eJxVjEEOwiAQRe_C2pAyBUpduu8ZmmFmKlUDSWlXxrsbki50-997_61mPPY0H1W2eWV1VU5dfreI9JTcAD8w34umkvdtjbop-qRVT4XldTvdv4OENbWaR4jgBSyz6dgHDnYwLMbJsrgonQ04MgZiITMAeUNI4iz02AcLrD5fBnw4vg:1sPhbm:6nkkPoo3Qw1rY3h2Pr6U2g9K96PRj2HWj0DyufIcShk', '2024-07-19 12:00:10.146860'),
('atiybfsx72bjahhu2vo0d5qql5z5ijx6', '.eJxVjMsOwiAQRf-FtSG8y7h07zeQYQCpGkhKuzL-uzbpQrf3nHNfLOC21rCNvIQ5sTOTip1-x4j0yG0n6Y7t1jn1ti5z5LvCDzr4taf8vBzu30HFUb81iMloiCTAg0WSCkE7iAXTRDZqZ71NzslS0JDxREJkpUoiB8Jmj8jeH_tBOD8:1sU4e1:KtM3hcColCYVpxQ2tnIy8zA-SAlbQMKLEmMkDQUno1Q', '2024-07-31 13:24:33.131060'),
('ffp42a2ybdcb3f0wugdzihwxpz3pnzzr', '.eJxVjL0OgzAQg98lcxWRwOWnY3eeAV3ujoa2ChKBqeq7FySGVpYXf7bfasBtzcNWZRkmVldlQF1-w4T0lHIQfmC5z5rmsi5T0kdFn7TqfmZ53c7u30HGmvc1IoPxu1MLnoLbxeJBnB1ROmpi4oY8emiCOMYAjmjsrKEQU2ytUZ8vF6I4RQ:1tXRbG:ZkPqypjNMMrohlDEAoVTueH2g3a3t1-2sOjqXMY-8JY', '2025-01-27 21:03:54.464042'),
('fn2ro38v73wv9eszxpvje5a2oleqaixy', '.eJxVjEEOwiAQRe_C2hBgCmVcuvcMBDqDVA0kpV0Z765NutDtf-_9lwhxW0vYOi9hJnEWWpx-txSnB9cd0D3WW5NTq-syJ7kr8qBdXhvx83K4fwcl9vKtOWVA0EyoEgykWVtCi9koNzqIaMCj9j5ZZ3jgyKAdZnQjKiTHaMT7A9KMNw0:1tUCfk:hbmMt7lCJEdJkWGo5HrG-Tazs6G4RiYr-eJuizSgMFc', '2025-01-18 22:31:08.080160');

-- --------------------------------------------------------

--
-- Table structure for table `doctorreg`
--

CREATE TABLE `doctorreg` (
  `id` bigint(20) NOT NULL,
  `mobilenumber` varchar(11) NOT NULL,
  `regdate_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `specialization_id_id` bigint(20) NOT NULL,
  `fee` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctorreg`
--

INSERT INTO `doctorreg` (`id`, `mobilenumber`, `regdate_at`, `updated_at`, `admin_id`, `specialization_id_id`, `fee`) VALUES
(1, '7654746598', '2024-07-03 06:00:28.927253', '2024-07-03 06:00:28.927253', 2, 2, 1200.00),
(2, '6459875649', '2024-07-03 06:01:04.182983', '2024-07-03 06:01:04.182983', 3, 3, 700.00),
(3, '7987897897', '2024-07-05 05:54:01.251910', '2024-07-05 05:54:01.251910', 7, 5, 1200.00),
(4, '7896549879', '2024-07-05 05:54:59.876680', '2024-07-05 05:54:59.876680', 8, 3, 800.00),
(5, '7813165787', '2024-07-05 05:56:07.515696', '2024-07-05 05:56:07.515696', 9, 1, 900.00),
(6, '1231231230', '2024-07-17 13:23:20.032938', '2024-07-17 13:23:20.033937', 11, 1, 1200.00),
(7, '65434567', '2025-01-20 07:32:12.189508', '2025-01-20 07:32:12.189550', 18, 4, 29000.00);

-- --------------------------------------------------------

--
-- Table structure for table `medicalhistory`
--

CREATE TABLE `medicalhistory` (
  `id` bigint(20) NOT NULL,
  `bloodpressure` varchar(250) NOT NULL,
  `weight` varchar(250) NOT NULL,
  `bloodsugar` varchar(250) NOT NULL,
  `bodytemp` varchar(250) NOT NULL,
  `prescription` longtext NOT NULL,
  `visitingdate_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `pat_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicalhistory`
--

INSERT INTO `medicalhistory` (`id`, `bloodpressure`, `weight`, `bloodsugar`, `bodytemp`, `prescription`, `visitingdate_at`, `updated_at`, `pat_id_id`) VALUES
(1, '90/120', '76', '110', '98', 'ljliuiouoiouio', '2024-07-10 11:42:57.636840', '2024-07-10 11:42:57.636840', 1),
(2, '60/132', '75', '89', '101', 'Levocit, Dolo600', '2024-07-17 13:26:46.597424', '2024-07-17 13:26:46.597424', 6);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` bigint(20) NOT NULL,
  `pagetitle` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `aboutus` longtext NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobilenumber` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `pagetitle`, `address`, `aboutus`, `email`, `mobilenumber`, `created_at`, `updated_at`) VALUES
(1, 'dynamic text', 'dynamic text', 'Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that does not yet have content. Lorem ipsum is typically a corrupted version of De finibus bonorum et malorum, a 1st-century BC ', 'dynamictext@gmail.com', 12345, '0000-00-00 00:00:00.000000', '2025-01-04 22:19:19.333592');

-- --------------------------------------------------------

--
-- Table structure for table `patientreg`
--

CREATE TABLE `patientreg` (
  `id` bigint(20) NOT NULL,
  `mobilenumber` varchar(11) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` longtext NOT NULL,
  `regdate_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patientreg`
--

INSERT INTO `patientreg` (`id`, `mobilenumber`, `gender`, `address`, `regdate_at`, `updated_at`, `admin_id`) VALUES
(2, '6549787977', 'Male', 'indria', '2024-07-03 06:03:47.580619', '2024-07-03 06:03:47.580619', 5),
(4, '9879879879', 'Female', 'pak', '2024-07-10 11:26:11.659497', '2024-07-10 11:26:11.659497', 10),
(5, '1233211230', 'Male', 'NA', '2024-07-17 13:24:24.823664', '2024-07-17 13:24:24.823664', 12),
(6, '0000000000', 'Male', 'vvvvvvvvvvv', '2024-12-30 22:33:14.094554', '2024-12-30 22:33:14.094581', 13),
(7, '4657687', 'Male', 'juytfhgvjhj', '2025-01-13 21:02:32.315899', '2025-01-13 21:02:32.315986', 14),
(8, '45676654', 'Female', 'gvvghjbv', '2025-01-13 21:03:30.776687', '2025-01-13 21:03:30.776807', 15),
(9, '54334567', 'Male', 'egfsa', '2025-01-19 12:17:42.240257', '2025-01-19 12:17:42.240316', 16),
(10, '7654345567', 'Male', 'setrjhj', '2025-01-20 07:28:45.980616', '2025-01-20 07:28:45.980713', 17),
(11, '87654', 'Male', 'iukjghf', '2025-01-20 07:38:17.686901', '2025-01-20 07:38:17.687020', 19),
(12, '346578', 'Male', 'ytdf', '2025-01-20 12:45:51.448962', '2025-01-20 12:45:51.449008', 20);

-- --------------------------------------------------------

--
-- Table structure for table `specialization`
--

CREATE TABLE `specialization` (
  `id` bigint(20) NOT NULL,
  `sname` varchar(200) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specialization`
--

INSERT INTO `specialization` (`id`, `sname`, `created_at`, `updated_at`) VALUES
(1, 'ENT', '2024-07-03 05:56:36.182418', '2024-07-03 05:56:36.182418'),
(2, 'Orthopedics', '2024-07-03 05:56:38.829407', '2024-07-03 05:56:38.829407'),
(3, 'Pediatrics', '2024-07-03 05:56:41.098436', '2024-07-03 05:56:41.098436'),
(4, 'Radiology', '2024-07-03 05:56:43.584408', '2024-07-03 05:56:43.584408'),
(5, 'Dermatologist', '2024-07-03 05:56:46.125439', '2024-07-03 05:56:46.125439'),
(9, 'pregnancy', '2025-01-20 12:49:46.625840', '2025-01-20 12:49:46.625913');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addpatient`
--
ALTER TABLE `addpatient`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobilenumber` (`mobilenumber`),
  ADD KEY `dasapp_addpatient_doctor_id_id_2ab4d43e_fk_dasapp_doctorreg_id` (`doctor_id_id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dasapp_appointment_doctor_id_id_045c6f58_fk_dasapp_doctorreg_id` (`doctor_id_id`),
  ADD KEY `dasapp_appointment_pat_id_id_4dc7f1bf_fk_dasapp_patientreg_id` (`pat_id_id`),
  ADD KEY `dasapp_appointment_spec_id_id_705df743_fk_dasapp_sp` (`spec_id_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `customuser`
--
ALTER TABLE `customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `customuser_groups`
--
ALTER TABLE `customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dasapp_customuser_groups_customuser_id_group_id_e4fe99d3_uniq` (`customuser_id`,`group_id`),
  ADD KEY `dasapp_customuser_groups_group_id_cecd6c59_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `customuser_user_permissions`
--
ALTER TABLE `customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dasapp_customuser_user_p_customuser_id_permission_f6b0a96d_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `dasapp_customuser_us_permission_id_28ebaabc_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_dasapp_customuser_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `doctorreg`
--
ALTER TABLE `doctorreg`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`),
  ADD KEY `dasapp_doctorreg_specialization_id_id_053c14bd_fk_dasapp_sp` (`specialization_id_id`);

--
-- Indexes for table `medicalhistory`
--
ALTER TABLE `medicalhistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dasapp_medicalhistory_pat_id_id_a331f557_fk_dasapp_addpatient_id` (`pat_id_id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patientreg`
--
ALTER TABLE `patientreg`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobilenumber` (`mobilenumber`),
  ADD UNIQUE KEY `admin_id` (`admin_id`);

--
-- Indexes for table `specialization`
--
ALTER TABLE `specialization`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addpatient`
--
ALTER TABLE `addpatient`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `customuser`
--
ALTER TABLE `customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `customuser_groups`
--
ALTER TABLE `customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customuser_user_permissions`
--
ALTER TABLE `customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `doctorreg`
--
ALTER TABLE `doctorreg`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `medicalhistory`
--
ALTER TABLE `medicalhistory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patientreg`
--
ALTER TABLE `patientreg`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `specialization`
--
ALTER TABLE `specialization`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addpatient`
--
ALTER TABLE `addpatient`
  ADD CONSTRAINT `dasapp_addpatient_doctor_id_id_2ab4d43e_fk_dasapp_doctorreg_id` FOREIGN KEY (`doctor_id_id`) REFERENCES `doctorreg` (`id`);

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `dasapp_appointment_doctor_id_id_045c6f58_fk_dasapp_doctorreg_id` FOREIGN KEY (`doctor_id_id`) REFERENCES `doctorreg` (`id`),
  ADD CONSTRAINT `dasapp_appointment_pat_id_id_4dc7f1bf_fk_dasapp_patientreg_id` FOREIGN KEY (`pat_id_id`) REFERENCES `patientreg` (`id`),
  ADD CONSTRAINT `dasapp_appointment_spec_id_id_705df743_fk_dasapp_sp` FOREIGN KEY (`spec_id_id`) REFERENCES `specialization` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `customuser_groups`
--
ALTER TABLE `customuser_groups`
  ADD CONSTRAINT `dasapp_customuser_gr_customuser_id_e4c9b5ff_fk_dasapp_cu` FOREIGN KEY (`customuser_id`) REFERENCES `customuser` (`id`),
  ADD CONSTRAINT `dasapp_customuser_groups_group_id_cecd6c59_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `customuser_user_permissions`
--
ALTER TABLE `customuser_user_permissions`
  ADD CONSTRAINT `dasapp_customuser_us_customuser_id_5a276bdd_fk_dasapp_cu` FOREIGN KEY (`customuser_id`) REFERENCES `customuser` (`id`),
  ADD CONSTRAINT `dasapp_customuser_us_permission_id_28ebaabc_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_dasapp_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `customuser` (`id`);

--
-- Constraints for table `doctorreg`
--
ALTER TABLE `doctorreg`
  ADD CONSTRAINT `dasapp_doctorreg_admin_id_a8e63d8d_fk_dasapp_customuser_id` FOREIGN KEY (`admin_id`) REFERENCES `customuser` (`id`),
  ADD CONSTRAINT `dasapp_doctorreg_specialization_id_id_053c14bd_fk_dasapp_sp` FOREIGN KEY (`specialization_id_id`) REFERENCES `specialization` (`id`);

--
-- Constraints for table `medicalhistory`
--
ALTER TABLE `medicalhistory`
  ADD CONSTRAINT `dasapp_medicalhistory_pat_id_id_a331f557_fk_dasapp_addpatient_id` FOREIGN KEY (`pat_id_id`) REFERENCES `addpatient` (`id`);

--
-- Constraints for table `patientreg`
--
ALTER TABLE `patientreg`
  ADD CONSTRAINT `dasapp_patientreg_admin_id_b2657d6f_fk_dasapp_customuser_id` FOREIGN KEY (`admin_id`) REFERENCES `customuser` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
