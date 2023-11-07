-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2023 at 09:30 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hifixsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `apply_request`
--

CREATE TABLE `apply_request` (
  `id` bigint(20) NOT NULL,
  `application` varchar(20) NOT NULL,
  `reason` longtext NOT NULL,
  `user_post_id` bigint(20) NOT NULL,
  `worker_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apply_request`
--

INSERT INTO `apply_request` (`id`, `application`, `reason`, `user_post_id`, `worker_id`, `date`) VALUES
(1, 'accept', 'Near me', 3, 14, '2023-03-10'),
(2, 'reject', 'So far', 9, 14, '2023-03-10'),
(6, 'accept', 'kjdsbfk bkbgf kgfksf', 7, 14, '2023-03-13'),
(8, 'accept', 'Visiting Charge = 150', 12, 18, '2023-03-13');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` bigint(20) NOT NULL,
  `area_name` varchar(30) NOT NULL,
  `city_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `area_name`, `city_id`) VALUES
(1, 'Nehrunagar', 1),
(2, 'Iskon', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add sub_category', 8, 'add_sub_category'),
(30, 'Can change sub_category', 8, 'change_sub_category'),
(31, 'Can delete sub_category', 8, 'delete_sub_category'),
(32, 'Can view sub_category', 8, 'view_sub_category'),
(33, 'Can add user_profile', 9, 'add_user_profile'),
(34, 'Can change user_profile', 9, 'change_user_profile'),
(35, 'Can delete user_profile', 9, 'delete_user_profile'),
(36, 'Can view user_profile', 9, 'view_user_profile'),
(37, 'Can add worker_profile', 10, 'add_worker_profile'),
(38, 'Can change worker_profile', 10, 'change_worker_profile'),
(39, 'Can delete worker_profile', 10, 'delete_worker_profile'),
(40, 'Can view worker_profile', 10, 'view_worker_profile'),
(41, 'Can add area', 11, 'add_area'),
(42, 'Can change area', 11, 'change_area'),
(43, 'Can delete area', 11, 'delete_area'),
(44, 'Can view area', 11, 'view_area'),
(45, 'Can add city', 12, 'add_city'),
(46, 'Can change city', 12, 'change_city'),
(47, 'Can delete city', 12, 'delete_city'),
(48, 'Can view city', 12, 'view_city'),
(49, 'Can add feedback', 13, 'add_feedback'),
(50, 'Can change feedback', 13, 'change_feedback'),
(51, 'Can delete feedback', 13, 'delete_feedback'),
(52, 'Can view feedback', 13, 'view_feedback'),
(53, 'Can add post_problem', 14, 'add_post_problem'),
(54, 'Can change post_problem', 14, 'change_post_problem'),
(55, 'Can delete post_problem', 14, 'delete_post_problem'),
(56, 'Can view post_problem', 14, 'view_post_problem'),
(57, 'Can add contact_us', 15, 'add_contact_us'),
(58, 'Can change contact_us', 15, 'change_contact_us'),
(59, 'Can delete contact_us', 15, 'delete_contact_us'),
(60, 'Can view contact_us', 15, 'view_contact_us'),
(61, 'Can add apply_request', 16, 'add_apply_request'),
(62, 'Can change apply_request', 16, 'change_apply_request'),
(63, 'Can delete apply_request', 16, 'delete_apply_request'),
(64, 'Can view apply_request', 16, 'view_apply_request'),
(65, 'Can add hire', 17, 'add_hire'),
(66, 'Can change hire', 17, 'change_hire'),
(67, 'Can delete hire', 17, 'delete_hire'),
(68, 'Can view hire', 17, 'view_hire');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$Ml3PvZl8Z4NKPfyALiRzhP$DrjLCXudSscGAC7swINsrKG4YGkZ9YCLX4/J8gGUvPs=', '2023-02-23 06:34:43.666836', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-01-13 04:06:25.790900'),
(11, 'pbkdf2_sha256$390000$Bxm2zLKma0An7XSRDveK3b$4ekM5Wc9aWy8GloQxj5SP/3guSkkz60eyefLor2qmRA=', '2023-04-26 06:27:36.222575', 0, 'maulik1', 'Maulik', 'Dalwadi', 'maulik@gmail.com', 0, 1, '2023-02-24 06:27:30.280359'),
(14, 'pbkdf2_sha256$390000$k6h2hEbjaGsBAWMkkVcWCF$rj0FdjhUR+BO/LN9ApPFtJ3QiyFAVVhQ9w3M4jDMLGg=', '2023-04-26 06:22:25.964016', 0, 'jayesh1', 'Jayeshhhh', 'Kher', 'jayesh@gmail.com', 0, 1, '2023-02-27 05:23:32.848898'),
(15, 'pbkdf2_sha256$390000$GPfMftknS6CdMb8GgCsvTU$Atm59zKVn4kkS+59WgOGP0fFkgB2zqQOqTOcuL3yQJQ=', '2023-03-09 08:07:59.485922', 0, 'alkesh', 'Alkesh', 'Kaba', 'alkesh@gmail.com', 0, 1, '2023-03-06 05:11:37.895517'),
(16, 'pbkdf2_sha256$390000$yT1DSsHj9jr2rJV3SvGGAe$1yFJiEH5zLkZ5UlEVj7/yIka7JF8mvRpDePlgiwxfQQ=', '2023-03-16 05:15:06.658947', 0, 'harsh1', 'Harsh', 'Patel', 'harsh@gmail.com', 0, 1, '2023-03-07 09:02:05.422419'),
(17, 'pbkdf2_sha256$390000$VXs0irK3FtTAJHDA7i9GPf$BNAzSC1PZuug6+dcN9U2vozDn59jF4IALv6BseTmNTg=', '2023-03-13 06:52:00.070699', 0, 'rajesh', 'RajeshSharma', 'Sharma', 'rajesh@gmail.com', 0, 1, '2023-03-13 06:42:43.811719'),
(18, 'pbkdf2_sha256$390000$koPRs8bQIXAf4huhYKf9QA$33y3Lg0THNicAG02tLBkIjxC6oDpZQQz5x5p8JqzsTM=', '2023-03-13 06:48:09.279858', 0, 'vijay', 'Vijay', 'Soni', 'vijay@gmail.com', 0, 1, '2023-03-13 06:47:58.440775');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`) VALUES
(1, 'Electrician'),
(2, 'Plumber'),
(3, 'Carpenter'),
(4, 'Painter');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` bigint(20) NOT NULL,
  `city_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `city_name`) VALUES
(1, 'Ahmedabad'),
(2, 'Gandhinagar'),
(3, 'Surat'),
(4, 'Rajkot');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `contact_category` varchar(30) NOT NULL,
  `message` longtext NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `contact`, `contact_category`, `message`, `date`) VALUES
(1, 'Maulik', 'maulik@gmail.com', 9887766554, 'Electrical', 'Contact Me', '2023-03-16');

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
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'myadmin', 'area'),
(7, 'myadmin', 'category'),
(12, 'myadmin', 'city'),
(8, 'myadmin', 'sub_category'),
(6, 'sessions', 'session'),
(15, 'user', 'contact_us'),
(13, 'user', 'feedback'),
(17, 'user', 'hire'),
(14, 'user', 'post_problem'),
(9, 'user', 'user_profile'),
(16, 'workers', 'apply_request'),
(10, 'workers', 'worker_profile');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-01-13 04:05:10.060726'),
(2, 'auth', '0001_initial', '2023-01-13 04:05:10.627846'),
(3, 'admin', '0001_initial', '2023-01-13 04:05:10.754998'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-01-13 04:05:10.788216'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-01-13 04:05:10.802429'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-01-13 04:05:10.898242'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-01-13 04:05:10.969734'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-01-13 04:05:10.995231'),
(9, 'auth', '0004_alter_user_username_opts', '2023-01-13 04:05:11.009286'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-01-13 04:05:11.057073'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-01-13 04:05:11.072706'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-01-13 04:05:11.088375'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-01-13 04:05:11.119610'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-01-13 04:05:11.141046'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-01-13 04:05:11.166696'),
(16, 'auth', '0011_update_proxy_permissions', '2023-01-13 04:05:11.182839'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-01-13 04:05:11.200299'),
(18, 'sessions', '0001_initial', '2023-01-13 04:05:11.245772'),
(19, 'myadmin', '0001_initial', '2023-02-03 09:01:32.583294'),
(20, 'myadmin', '0002_sub_category', '2023-02-16 16:43:52.482727'),
(21, 'user', '0001_initial', '2023-02-17 05:06:43.870161'),
(22, 'user', '0002_delete_user_profile', '2023-02-17 05:18:08.647352'),
(23, 'user', '0003_initial', '2023-02-17 05:18:54.537045'),
(24, 'workers', '0001_initial', '2023-02-18 06:56:18.299225'),
(25, 'workers', '0002_delete_worker_profile', '2023-02-18 07:29:46.703500'),
(26, 'workers', '0003_initial', '2023-02-18 07:33:03.024948'),
(27, 'myadmin', '0003_city_area', '2023-02-23 18:01:13.622856'),
(28, 'myadmin', '0004_delete_area', '2023-02-24 05:26:48.733695'),
(29, 'myadmin', '0005_area', '2023-02-24 05:27:43.129391'),
(30, 'user', '0004_user_profile_area_alter_user_profile_city', '2023-02-24 06:16:43.496538'),
(31, 'user', '0005_delete_user_profile', '2023-02-24 06:16:43.524372'),
(32, 'user', '0006_initial', '2023-02-24 06:16:43.702690'),
(33, 'user', '0007_alter_user_profile_area', '2023-02-24 06:16:44.673323'),
(34, 'user', '0008_delete_user_profile', '2023-02-24 06:16:44.688895'),
(35, 'user', '0009_initial', '2023-02-24 06:16:44.767959'),
(36, 'user', '0010_alter_user_profile_city', '2023-02-24 06:16:44.899952'),
(37, 'user', '0011_alter_user_profile_city_alter_user_profile_table', '2023-02-24 06:16:45.099380'),
(38, 'user', '0012_user_profile_area_alter_user_profile_city', '2023-02-24 06:16:45.366124'),
(39, 'user', '0013_alter_user_profile_table', '2023-02-24 06:17:43.270026'),
(40, 'workers', '0004_worker_profile_area_alter_worker_profile_city', '2023-02-24 06:33:50.912279'),
(41, 'user', '0014_feedback', '2023-02-24 06:46:32.914668'),
(42, 'user', '0015_post_problem', '2023-02-26 04:24:37.627713'),
(43, 'user', '0016_contact_us', '2023-02-27 05:55:46.217434'),
(44, 'user', '0017_delete_post_problem', '2023-02-27 06:13:41.381077'),
(45, 'user', '0018_post_problem', '2023-02-27 06:14:02.324831'),
(46, 'user', '0019_alter_user_profile_user', '2023-03-01 08:29:22.233160'),
(47, 'user', '0020_alter_post_problem_user_alter_user_profile_user', '2023-03-01 08:29:22.734283'),
(48, 'workers', '0005_apply_request', '2023-03-03 06:48:38.502764'),
(49, 'workers', '0006_alter_apply_request_worker', '2023-03-03 08:42:15.661952'),
(50, 'workers', '0007_delete_apply_request', '2023-03-07 08:25:09.781368'),
(51, 'workers', '0008_apply_request', '2023-03-07 08:25:27.631542'),
(52, 'user', '0021_hire', '2023-03-09 05:37:48.199376'),
(53, 'user', '0022_alter_hire_table', '2023-03-09 05:42:06.040788'),
(54, 'user', '0023_delete_hire', '2023-03-09 05:42:43.008059'),
(55, 'user', '0024_hire', '2023-03-09 05:43:40.569861'),
(56, 'user', '0025_delete_hire', '2023-03-09 07:46:17.709632'),
(57, 'user', '0026_hire', '2023-03-09 08:05:54.496513'),
(58, 'workers', '0009_apply_request_date', '2023-03-10 06:02:19.753928'),
(59, 'user', '0027_post_problem_date', '2023-03-10 06:03:35.123267'),
(60, 'user', '0028_hire_date', '2023-03-10 06:04:36.954094'),
(61, 'user', '0029_delete_contact_us', '2023-03-16 08:32:10.023448'),
(62, 'user', '0030_contact_us', '2023-03-16 08:33:38.061574'),
(63, 'user', '0031_delete_contact_us', '2023-03-16 08:37:56.598757'),
(64, 'user', '0032_contact_us', '2023-03-16 08:38:06.943564');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('t57t06pwlqfeupt216oxwl0mjekenb5e', '.eJxVjEEOwiAUBe_C2hBACsWl-56B_PehUjU0Ke3KeHdt0oVu38y8l4i0rSVuLS9xSuIitBan3xHEj1x3ku5Ub7Pkua7LBLkr8qBNDnPKz-vh_h0UauVbE_Xo4JG7McBod4a3NnmvnGEbyEAbT250PXwAg0NihASVjQqZHIv3BxuEOPI:1prYcq:13Ffr8V56Z4tRx-EsuDJlo2ing_eK17v4iu1KsOTG9Q', '2023-05-10 06:27:36.222575');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) NOT NULL,
  `rating` varchar(20) NOT NULL,
  `comment` longtext NOT NULL,
  `date` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `rating`, `comment`, `date`, `user_id`) VALUES
(1, '***', 'Nice', '2023-02-24', 11),
(2, '*****', 'This is very Nice Portal', '2023-03-06', 15),
(3, '**', 'Nice', '2023-03-13', 17);

-- --------------------------------------------------------

--
-- Table structure for table `hire`
--

CREATE TABLE `hire` (
  `id` bigint(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `description` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_post_id` bigint(20) NOT NULL,
  `worker_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hire`
--

INSERT INTO `hire` (`id`, `status`, `description`, `user_id`, `user_post_id`, `worker_id`, `date`) VALUES
(1, 'accept', 'hewvhf jf jfsbdfj ', 11, 3, 14, '2023-03-09'),
(2, 'reject', 'kn hgj', 15, 9, 14, '2023-03-10'),
(3, 'reject', 'nicekuegfu ifg ', 11, 7, 16, '2023-03-10'),
(7, 'accept', 'ok', 17, 12, 18, '2023-03-13');

-- --------------------------------------------------------

--
-- Table structure for table `post_problem`
--

CREATE TABLE `post_problem` (
  `id` bigint(20) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `problem_description` longtext NOT NULL,
  `problem_image` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `area_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `subcategory_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_problem`
--

INSERT INTO `post_problem` (`id`, `subject`, `problem_description`, `problem_image`, `address`, `area_id`, `category_id`, `city_id`, `subcategory_id`, `user_id`, `date`) VALUES
(3, 'Repair', 'Repair Fridge', 'ryan-hoffman-982Nb-awyVE-unsplash.jpg', 'Near Iskon', 2, 1, 1, 2, 11, '2023-03-10'),
(7, 'Repairing', 'repair', 'anomaly-WWesmHEgXDs-unsplash.jpg', 'Near Nehrunagar', 1, 1, 1, 1, 11, '2023-03-10'),
(9, 'This is for Testing Purpose', 'This is very small issue', 'Screenshot_20230227_130409.png', 'This is very small issue', 1, 1, 1, 2, 15, '2023-03-10'),
(11, 'Hello Subject', 'Hello Description', 'g1.jpg', 'Hello Address', 1, 1, 1, 1, 17, '2023-03-13'),
(12, 'Painter Subject', 'Painter Description', 'bg.jpg', 'Painter Description', 1, 4, 1, 2, 17, '2023-03-13');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` bigint(20) NOT NULL,
  `sub_category_name` varchar(30) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `sub_category_name`, `category_id`) VALUES
(1, 'AC', 1),
(2, 'Fridge', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `id` bigint(20) NOT NULL,
  `address` longtext NOT NULL,
  `contact` bigint(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `date_of_birth` date NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `area_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id`, `address`, `contact`, `gender`, `date_of_birth`, `city_id`, `user_image`, `user_id`, `area_id`) VALUES
(1, 'Nehrunagar', 9887766554, 'male', '2000-09-27', 1, '1667709.jpg', 11, 1),
(2, 'Bapunagar', 9016647480, 'male', '2023-03-05', 1, '3.png', 15, 1),
(3, 'Naroda', 9872536721, 'male', '2023-03-06', 1, 'g9.jpg', 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `worker_profile`
--

CREATE TABLE `worker_profile` (
  `id` bigint(20) NOT NULL,
  `address` longtext NOT NULL,
  `contact` bigint(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `date_of_birth` date NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `work_description` longtext NOT NULL,
  `worker_image` varchar(255) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `subcategory_id` bigint(20) NOT NULL,
  `worker_id` int(11) NOT NULL,
  `area_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `worker_profile`
--

INSERT INTO `worker_profile` (`id`, `address`, `contact`, `gender`, `date_of_birth`, `city_id`, `work_description`, `worker_image`, `category_id`, `subcategory_id`, `worker_id`, `area_id`) VALUES
(3, 'Near Iscon', 9887769860, 'male', '2001-08-31', 1, 'Fridge Fitting', 'Hanuman-5.jpg', 1, 2, 14, 2),
(4, 'Near Nehrunagar,Ahmedabad', 9872536721, 'male', '2000-10-23', 1, 'Reapair Ac ', '2.png', 2, 1, 16, 1),
(5, 'Naroda', 9887762343, 'male', '2023-03-01', 1, 'This is a Electrician', 'g1.jpg', 1, 1, 18, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apply_request`
--
ALTER TABLE `apply_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `apply_request_user_post_id_16dc0f6e_fk_post_problem_id` (`user_post_id`),
  ADD KEY `apply_request_worker_id_c792464c_fk_auth_user_id` (`worker_id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`),
  ADD KEY `area_city_id_6c07a4b7_fk_city_id` (`city_id`);

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
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `hire`
--
ALTER TABLE `hire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hire_user_id_9d3f0539_fk_auth_user_id` (`user_id`),
  ADD KEY `hire_user_post_id_02a1224b_fk_post_problem_id` (`user_post_id`),
  ADD KEY `hire_worker_id_787b369d_fk_auth_user_id` (`worker_id`);

--
-- Indexes for table `post_problem`
--
ALTER TABLE `post_problem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_problem_area_id_85d83e28_fk_area_id` (`area_id`),
  ADD KEY `post_problem_category_id_69c09b21_fk_category_id` (`category_id`),
  ADD KEY `post_problem_city_id_4d3c4b8d_fk_city_id` (`city_id`),
  ADD KEY `post_problem_subcategory_id_886a1178_fk_sub_category_id` (`subcategory_id`),
  ADD KEY `post_problem_user_id_0970054d` (`user_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_category_category_id_f461f657_fk_category_id` (`category_id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_profile_user_id_8fdce8e2_uniq` (`user_id`),
  ADD KEY `user_profile_city_id_c26ebadc` (`city_id`),
  ADD KEY `user_profiles_area_id_c2dfaa6f_fk_area_id` (`area_id`);

--
-- Indexes for table `worker_profile`
--
ALTER TABLE `worker_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `worker_id` (`worker_id`),
  ADD KEY `worker_profile_category_id_58fc9d8e_fk_category_id` (`category_id`),
  ADD KEY `worker_profile_subcategory_id_88e4d66e_fk_sub_category_id` (`subcategory_id`),
  ADD KEY `worker_profile_area_id_85b9479b_fk_area_id` (`area_id`),
  ADD KEY `worker_profile_city_id_29756bc5` (`city_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apply_request`
--
ALTER TABLE `apply_request`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hire`
--
ALTER TABLE `hire`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post_problem`
--
ALTER TABLE `post_problem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `worker_profile`
--
ALTER TABLE `worker_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apply_request`
--
ALTER TABLE `apply_request`
  ADD CONSTRAINT `apply_request_user_post_id_16dc0f6e_fk_post_problem_id` FOREIGN KEY (`user_post_id`) REFERENCES `post_problem` (`id`),
  ADD CONSTRAINT `apply_request_worker_id_c792464c_fk_auth_user_id` FOREIGN KEY (`worker_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `area`
--
ALTER TABLE `area`
  ADD CONSTRAINT `area_city_id_6c07a4b7_fk_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`);

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
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_user_id_0104a377_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `hire`
--
ALTER TABLE `hire`
  ADD CONSTRAINT `hire_user_id_9d3f0539_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `hire_user_post_id_02a1224b_fk_post_problem_id` FOREIGN KEY (`user_post_id`) REFERENCES `post_problem` (`id`),
  ADD CONSTRAINT `hire_worker_id_787b369d_fk_auth_user_id` FOREIGN KEY (`worker_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `post_problem`
--
ALTER TABLE `post_problem`
  ADD CONSTRAINT `post_problem_area_id_85d83e28_fk_area_id` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`),
  ADD CONSTRAINT `post_problem_category_id_69c09b21_fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `post_problem_city_id_4d3c4b8d_fk_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `post_problem_subcategory_id_886a1178_fk_sub_category_id` FOREIGN KEY (`subcategory_id`) REFERENCES `sub_category` (`id`),
  ADD CONSTRAINT `post_problem_user_id_0970054d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD CONSTRAINT `sub_category_category_id_f461f657_fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD CONSTRAINT `user_profile_user_id_8fdce8e2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `user_profiles_area_id_c2dfaa6f_fk_area_id` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`),
  ADD CONSTRAINT `user_profiles_city_id_8363eb17_fk_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`);

--
-- Constraints for table `worker_profile`
--
ALTER TABLE `worker_profile`
  ADD CONSTRAINT `worker_profile_area_id_85b9479b_fk_area_id` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`),
  ADD CONSTRAINT `worker_profile_category_id_58fc9d8e_fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `worker_profile_city_id_29756bc5_fk_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `worker_profile_subcategory_id_88e4d66e_fk_sub_category_id` FOREIGN KEY (`subcategory_id`) REFERENCES `sub_category` (`id`),
  ADD CONSTRAINT `worker_profile_worker_id_1fb936ea_fk_auth_user_id` FOREIGN KEY (`worker_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
