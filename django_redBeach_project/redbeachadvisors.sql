-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-08-2021 a las 01:11:54
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `redbeachadvisors`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account_emailaddress`
--

CREATE TABLE `account_emailaddress` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `account_emailaddress`
--

INSERT INTO `account_emailaddress` (`id`, `email`, `verified`, `primary`, `user_id`) VALUES
(1, 'erickfco1999@gmail.com', 1, 1, 'erickfco1999@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account_emailconfirmation`
--

CREATE TABLE `account_emailconfirmation` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
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
(21, 'Can add user', 6, 'add_register'),
(22, 'Can change user', 6, 'change_register'),
(23, 'Can delete user', 6, 'delete_register'),
(24, 'Can view user', 6, 'view_register'),
(25, 'Can add site', 7, 'add_site'),
(26, 'Can change site', 7, 'change_site'),
(27, 'Can delete site', 7, 'delete_site'),
(28, 'Can view site', 7, 'view_site'),
(29, 'Can add email address', 8, 'add_emailaddress'),
(30, 'Can change email address', 8, 'change_emailaddress'),
(31, 'Can delete email address', 8, 'delete_emailaddress'),
(32, 'Can view email address', 8, 'view_emailaddress'),
(33, 'Can add email confirmation', 9, 'add_emailconfirmation'),
(34, 'Can change email confirmation', 9, 'change_emailconfirmation'),
(35, 'Can delete email confirmation', 9, 'delete_emailconfirmation'),
(36, 'Can view email confirmation', 9, 'view_emailconfirmation'),
(37, 'Can add social account', 10, 'add_socialaccount'),
(38, 'Can change social account', 10, 'change_socialaccount'),
(39, 'Can delete social account', 10, 'delete_socialaccount'),
(40, 'Can view social account', 10, 'view_socialaccount'),
(41, 'Can add social application', 11, 'add_socialapp'),
(42, 'Can change social application', 11, 'change_socialapp'),
(43, 'Can delete social application', 11, 'delete_socialapp'),
(44, 'Can view social application', 11, 'view_socialapp'),
(45, 'Can add social application token', 12, 'add_socialtoken'),
(46, 'Can change social application token', 12, 'change_socialtoken'),
(47, 'Can delete social application token', 12, 'delete_socialtoken'),
(48, 'Can view social application token', 12, 'view_socialtoken'),
(49, 'Can add questions', 13, 'add_questions'),
(50, 'Can change questions', 13, 'change_questions'),
(51, 'Can delete questions', 13, 'delete_questions'),
(52, 'Can view questions', 13, 'view_questions'),
(53, 'Can add answers', 14, 'add_answers'),
(54, 'Can change answers', 14, 'change_answers'),
(55, 'Can delete answers', 14, 'delete_answers'),
(56, 'Can view answers', 14, 'view_answers');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-06-05 16:06:44.926432', '3', 'red Beach Advisors', 2, '[{\"changed\": {\"fields\": [\"Provider\"]}}]', 11, 'erick@gmail.com'),
(2, '2021-06-05 16:09:56.310272', '3', 'red Beach Advisors', 2, '[]', 11, 'erick@gmail.com'),
(3, '2021-06-05 16:19:15.376462', '3', 'red Beach Advisors', 2, '[]', 11, 'erick@gmail.com'),
(4, '2021-06-18 19:38:37.922761', '4', 'red Beach Advisors', 1, '[{\"added\": {}}]', 11, 'erick@gmail.com'),
(5, '2021-06-18 20:10:08.280106', '4', 'red Beach Advisors', 2, '[{\"changed\": {\"fields\": [\"Client id\", \"Secret key\"]}}]', 11, 'erick@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(8, 'account', 'emailaddress'),
(9, 'account', 'emailconfirmation'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(14, 'red_beach_advisors', 'answers'),
(13, 'red_beach_advisors', 'questions'),
(6, 'red_beach_advisors', 'register'),
(5, 'sessions', 'session'),
(7, 'sites', 'site'),
(10, 'socialaccount', 'socialaccount'),
(11, 'socialaccount', 'socialapp'),
(12, 'socialaccount', 'socialtoken');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-06-02 16:45:14.696754'),
(2, 'contenttypes', '0002_remove_content_type_name', '2021-06-02 16:45:14.814934'),
(3, 'auth', '0001_initial', '2021-06-02 16:45:15.155899'),
(4, 'auth', '0002_alter_permission_name_max_length', '2021-06-02 16:45:15.532204'),
(5, 'auth', '0003_alter_user_email_max_length', '2021-06-02 16:45:15.547311'),
(6, 'auth', '0004_alter_user_username_opts', '2021-06-02 16:45:15.563537'),
(7, 'auth', '0005_alter_user_last_login_null', '2021-06-02 16:45:15.581337'),
(8, 'auth', '0006_require_contenttypes_0002', '2021-06-02 16:45:15.586574'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2021-06-02 16:45:15.600532'),
(10, 'auth', '0008_alter_user_username_max_length', '2021-06-02 16:45:15.613866'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2021-06-02 16:45:15.625779'),
(12, 'auth', '0010_alter_group_name_max_length', '2021-06-02 16:45:15.650718'),
(13, 'auth', '0011_update_proxy_permissions', '2021-06-02 16:45:15.663286'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2021-06-02 16:45:15.676037'),
(15, 'red_beach_advisors', '0001_initial', '2021-06-02 16:45:15.851912'),
(16, 'account', '0001_initial', '2021-06-02 16:45:16.413781'),
(17, 'account', '0002_email_max_length', '2021-06-02 16:45:16.622514'),
(18, 'admin', '0001_initial', '2021-06-02 16:45:16.731119'),
(19, 'admin', '0002_logentry_remove_auto_add', '2021-06-02 16:45:16.900323'),
(20, 'admin', '0003_logentry_add_action_flag_choices', '2021-06-02 16:45:16.926294'),
(21, 'sessions', '0001_initial', '2021-06-02 16:45:17.042028'),
(22, 'sites', '0001_initial', '2021-06-02 16:45:17.126844'),
(23, 'sites', '0002_alter_domain_unique', '2021-06-02 16:45:17.160410'),
(24, 'socialaccount', '0001_initial', '2021-06-02 16:45:17.606037'),
(25, 'socialaccount', '0002_token_max_lengths', '2021-06-02 16:45:18.155939'),
(26, 'socialaccount', '0003_extra_data_default_dict', '2021-06-02 16:45:18.186505'),
(27, 'red_beach_advisors', '0002_answers_questions', '2021-06-12 15:53:10.002106'),
(28, 'red_beach_advisors', '0003_answers_email_register', '2021-06-12 16:10:58.772299');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('7x2ryddq4oz1va1iwhidx9cn7an9fr3t', 'eyJzb2NpYWxhY2NvdW50X3N0YXRlIjpbeyJwcm9jZXNzIjoibG9naW4iLCJzY29wZSI6IiIsImF1dGhfcGFyYW1zIjoiIn0sIjNhZmFNTWtGbTA3eCJdfQ:1lq6cY:R-6MjelEtHMaulGoE4KHzEBJkJZILFLWuP14IPL8WIE', '2021-06-21 04:12:14.883443'),
('itc5gpdst7cjobjuz2vri5iyq72g7gy8', '.eJxVjcsOgjAQRf-la0MEymNcqTFGTUxUFrojw7SVBmgj0IUa_10wbFzcxeSeM_fNsK7R9WWukGRhbZUba0iyBZPiebzcfO4eOrtmsN86_dqdTXPYNK087RSbsfxnuk62uRaj0mqqFFkfAJb3BnXtkW3-wQKpkmakp2UPiawzvfdjprrzVsMlTa8Je23NerL-XpXYleNqIBKRzGNfBmkUFlyASlUhMEDwxyBgimGIkCbxPFJhEnM-sEARR6UoYp8v1-BZLA:1lvKN1:DknG5zvo_a7bps8srvyt_xSg6dgKKtgynhxkos-vHPA', '2021-07-05 13:53:47.334297'),
('pnbodyodhzkjwhrw9ifip7nzz51zasry', 'eyJhbGxhdXRoX2ZhY2Vib29rX25vbmNlIjoiUU04enpENEhOdVc2WXZ5UGV6Y0lBcUJmTUhxUlJtTHIifQ:1mEeij:vvrYL7No0D7cEgbh8FRLCHyewIyvFXU6hnxhuQTV0ys', '2021-08-27 21:28:05.776687'),
('qvkuy9hziiistz5ks20xilqwz6gcw2zt', 'eyJhbGxhdXRoX2ZhY2Vib29rX25vbmNlIjoibUVBaVZyTkI0WEEwZEdzRnNBTFRFV21hOUozM3R0bGYifQ:1m8oVJ:HDChhsoag9HNS1gWeyHFGwyJ_vofK9lXuf5r2D0YW5E', '2021-08-11 18:42:05.685653'),
('rasikp3ue0phooh7ya7g5m74b9j9n209', 'eyJhbGxhdXRoX2ZhY2Vib29rX25vbmNlIjoiUExkbGIzQnlxeklSeloyWmJJQ2w2SnFZNkFId1RPcmgifQ:1m8Si5:3ZxzIXX3-zblvKtxZwfZDk3KwkEK6uwssFjvrsGk9S8', '2021-08-10 19:25:49.785002'),
('xzfwv9j8min95myf9av3ehbll8ob1dh5', '.eJxVjbGOgzAQRP_F9QkFbGPvVReqpEwRRboGrdfew4LYSYAqyr8fRDQppljNeztPgcOA89S1jBRczn2bcqIgvoW98dkfEjWVBnU8zWf-bQ58l82ldybfWXyJ9m3OY3i00S9KeETqmXIJAD9_V4xDQfn6CTqkPqSV3pYLJMpzmoo3s9VjsV-ukKZIOMWcms36eNXh2K2rlTfe7OoyVFZLpzywZeexQijXIKBFKRGsqXeapamVWlggrZCZtHj9AzLrWG8:1m9CvG:RwLCSXb380MPJ-Wyzx4B80srS8EYbDxfIAqjA3eg6kY', '2021-08-12 20:46:30.279961'),
('yvxak2o0bua2igc14eaqppzw31s5n8vl', 'eyJhbGxhdXRoX2ZhY2Vib29rX25vbmNlIjoiRDVLN3MxSDY4SXNNd2xqU2s1dU5CM2k4SkJBYWR4NVcifQ:1mEw01:R7zQK0tvTbtt9mVQfd_LRDo1m1RGgVgjDXBoo9Nk8T8', '2021-08-28 15:55:05.929825');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'localhost:8000', 'localhost:8000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `red_beach_advisors_answers`
--

CREATE TABLE `red_beach_advisors_answers` (
  `id_answer` int(11) NOT NULL,
  `txtanswer` varchar(255) NOT NULL,
  `id_question_id` int(11) NOT NULL,
  `email_register_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `red_beach_advisors_questions`
--

CREATE TABLE `red_beach_advisors_questions` (
  `id_question` int(11) NOT NULL,
  `txtquestion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `red_beach_advisors_questions`
--

INSERT INTO `red_beach_advisors_questions` (`id_question`, `txtquestion`) VALUES
(1, 'Were you honorably or dishonorably discharged?'),
(2, 'Please provide the amount of retirement monthly payments that you will receive. (USD)'),
(3, 'Would you like to be near a Veterans Affairs location?'),
(4, 'What is the highest level of education that you have attended?'),
(5, 'What is the industry of your career or speciality?'),
(6, 'How many years have you been in your primary career?'),
(7, 'What is the highest job role achieved?'),
(8, 'Are you married?'),
(9, 'How many people are in your immediate family?'),
(10, 'After you retire, how often would you like to work?'),
(11, 'What area of the US would you like to live?'),
(12, 'Do you want to be with your family?'),
(13, 'Please enter the cities your family currently resides'),
(14, 'What size city do you prefer?'),
(15, 'Do you want to buy or rent a home?');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `red_beach_advisors_register`
--

CREATE TABLE `red_beach_advisors_register` (
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `l_name` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `birthday` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `red_beach_advisors_register`
--

INSERT INTO `red_beach_advisors_register` (`last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `email`, `password`, `f_name`, `l_name`, `state`, `birthday`) VALUES
('2021-06-08 00:23:36.974302', 0, 'erick_francisco8', 'Erick Francisco', 'Patiño Olvera', 0, 1, '2021-06-05 16:21:35.502526', '', '!SYRmdcbRfIB0u92L8D5flNJ13iJ6yxUbh0JbDlH2', '', '', '', NULL),
(NULL, 1, 'admin', '', '', 0, 1, '2021-06-05 11:03:20.000000', 'admin@gmail.com', 'erick12345', '', '', '', NULL),
('2021-06-18 20:09:34.387919', 1, 'erick', '', '', 1, 1, '2021-06-05 16:05:41.893547', 'erick@gmail.com', 'pbkdf2_sha256$216000$9AkX60N0HzBx$cuguUzpbeiwUBeYybGKYd6kTjXOkckXPMxiINOWCzkI=', '', '', '', NULL),
('2021-06-12 15:37:48.470391', 0, '', 'Erick', 'Patiño', 0, 1, '2021-06-03 14:19:17.633635', 'erick@hotmail.com', 'pbkdf2_sha256$216000$vuGnwhmwAziE$5i1uC4IViSMsOqViKI9YTGoDe8Br4JkioZueGj0VY40=', '', '', 'Veracruz', '1999-10-04'),
('2021-08-13 21:19:57.889742', 0, 'erick_francisco', 'Erick Francisco', 'Patiño Olvera', 0, 1, '2021-06-05 03:08:25.676219', 'erickfco1999@gmail.com', '!Yx7vAado6dxeD9yCflzsuKoqpBiCHDqFbLIEs5cB', '', '', '', NULL),
('2021-06-08 00:25:06.686747', 0, '', 'George', 'Matthews', 0, 1, '2021-06-08 00:24:55.910041', 'george@hotmail.com', 'pbkdf2_sha256$216000$0o01PamxAIKK$XpEpbDpHQsaXntTcpqL18OJFz9+vwkbm0Byd6bN+sCA=', '', '', 'San Francisco', '1990-01-01'),
('2021-06-04 04:37:09.082695', 0, '', 'Jose', 'Martinez', 0, 1, '2021-06-04 03:59:28.884835', 'jose@gmail.com', 'pbkdf2_sha256$216000$qSPVfwUFBSgV$uznEZjZ2g1NRMYr9FdcheUf6I5WQ6Q2G6exGhMU2MHU=', '', '', 'Coatzintla', '2000-03-22'),
('2021-08-13 22:21:25.825950', 0, '', 'Juan', 'Perez', 0, 1, '2021-08-13 22:12:01.391871', 'juan@hotmail.com', 'pbkdf2_sha256$216000$CSZDMBQyWJcG$bd/41lj5PAqVCxHL457IB1qOThuuV4J9enFbfEJaZQ0=', '', '', 'California', '1980-12-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `red_beach_advisors_register_groups`
--

CREATE TABLE `red_beach_advisors_register_groups` (
  `id` int(11) NOT NULL,
  `register_id` varchar(100) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `red_beach_advisors_register_user_permissions`
--

CREATE TABLE `red_beach_advisors_register_user_permissions` (
  `id` int(11) NOT NULL,
  `register_id` varchar(100) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socialaccount_socialaccount`
--

CREATE TABLE `socialaccount_socialaccount` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `uid` varchar(191) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `socialaccount_socialaccount`
--

INSERT INTO `socialaccount_socialaccount` (`id`, `provider`, `uid`, `last_login`, `date_joined`, `extra_data`, `user_id`) VALUES
(1, 'google', '110970395393149950734', '2021-08-13 21:19:57.849258', '2021-06-05 03:08:25.712478', '{\"id\": \"110970395393149950734\", \"email\": \"erickfco1999@gmail.com\", \"verified_email\": true, \"name\": \"Erick Francisco Pati\\u00f1o Olvera\", \"given_name\": \"Erick Francisco\", \"family_name\": \"Pati\\u00f1o Olvera\", \"picture\": \"https://lh3.googleusercontent.com/a-/AOh14Gg1qO-vXLgjihls1k0suOF7_mafS-LTjWleU-WFyA=s96-c\", \"locale\": \"es\"}', 'erickfco1999@gmail.com'),
(2, 'linkedin_oauth2', 'rpBwKf4TO2', '2021-06-08 00:23:36.941390', '2021-06-05 16:21:35.545902', '{\"firstName\": {\"localized\": {\"en_US\": \"Erick Francisco\"}, \"preferredLocale\": {\"country\": \"US\", \"language\": \"en\"}}, \"lastName\": {\"localized\": {\"en_US\": \"Pati\\u00f1o Olvera\"}, \"preferredLocale\": {\"country\": \"US\", \"language\": \"en\"}}, \"id\": \"rpBwKf4TO2\"}', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socialaccount_socialapp`
--

CREATE TABLE `socialaccount_socialapp` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `client_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `socialaccount_socialapp`
--

INSERT INTO `socialaccount_socialapp` (`id`, `provider`, `name`, `client_id`, `secret`, `key`) VALUES
(1, 'google', 'red Beach Advisors', '645399367930-4e5n4vb0k5s6r1ls67tmn5dd7bdabbgd.apps.googleusercontent.com', '2dbT_Deke03C-s11wwfMnZ13', ''),
(3, 'linkedin_oauth2', 'red Beach Advisors', '86rd5p3iad2n7j', '8gCoXZtr9uXIWM5L', ''),
(4, 'facebook', 'red Beach Advisors', '857906791773255', '7bc3f9b90e8d0295fc88cd13fee5527e', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socialaccount_socialapp_sites`
--

CREATE TABLE `socialaccount_socialapp_sites` (
  `id` int(11) NOT NULL,
  `socialapp_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `socialaccount_socialapp_sites`
--

INSERT INTO `socialaccount_socialapp_sites` (`id`, `socialapp_id`, `site_id`) VALUES
(1, 1, 1),
(3, 3, 1),
(4, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socialaccount_socialtoken`
--

CREATE TABLE `socialaccount_socialtoken` (
  `id` int(11) NOT NULL,
  `token` longtext NOT NULL,
  `token_secret` longtext NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `socialaccount_socialtoken`
--

INSERT INTO `socialaccount_socialtoken` (`id`, `token`, `token_secret`, `expires_at`, `account_id`, `app_id`) VALUES
(1, 'ya29.a0ARrdaM8gqg88xBEJGd3O7WL8xp5iKzyf6tbd6MAekcREzNueW_IHlQOgr4ixS6Qn0CYsiVNzg9Ceb3SjEnnC1taRxyWVH8eEzCOeBURjBYTVIvcVpMr6muqODRmcDVsT4szzjT07Q3hqu95PrZispx1LBi2TBYU', '', '2021-08-13 22:19:56.522278', 1, 1),
(2, 'AQUrnVsV3DROCwyNvya-I39fOo6u-oonlygWRe5mxGBtX1tY_8_tHa9p2EMk6F4TdTX5Df_DwRVyU-iiQ0HMhrhz9f2DA1QrnOczLqoBI5JQozXCX1MZfhEFubUeQoM8N3Wj-ciGqvv7u7ggok-eu_31_dg-_8o0v4oRQ-PHS9WjhJJ7YgSZLl0pagYQuYAnvhOt3JsJsXS8TQAUaqJvEzowKtNZ0gjSKbVGLbbKRsCCUkyNnQUEIVyg3qv9i_fZR7aYTtIjBLnrhR35FxXSQdoafQvi9_GlIOkVRKKqI7LWVHO1hqU1oHgd6WLNPXJVWIPik1jPMVft5KzxubH3IPeJGK8jqg', '', '2021-08-07 00:23:35.382967', 2, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `account_emailaddress_user_id_2c513194_fk_red_beach` (`user_id`);

--
-- Indices de la tabla `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` (`email_address_id`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_red_beach` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indices de la tabla `red_beach_advisors_answers`
--
ALTER TABLE `red_beach_advisors_answers`
  ADD PRIMARY KEY (`id_answer`),
  ADD KEY `red_beach_advisors_a_id_question_id_ae768872_fk_red_beach` (`id_question_id`),
  ADD KEY `red_beach_advisors_a_email_register_id_876ed42f_fk_red_beach` (`email_register_id`);

--
-- Indices de la tabla `red_beach_advisors_questions`
--
ALTER TABLE `red_beach_advisors_questions`
  ADD PRIMARY KEY (`id_question`);

--
-- Indices de la tabla `red_beach_advisors_register`
--
ALTER TABLE `red_beach_advisors_register`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `red_beach_advisors_register_groups`
--
ALTER TABLE `red_beach_advisors_register_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `red_beach_advisors_regis_register_id_group_id_67276631_uniq` (`register_id`,`group_id`),
  ADD KEY `red_beach_advisors_r_group_id_8d76d2ae_fk_auth_grou` (`group_id`);

--
-- Indices de la tabla `red_beach_advisors_register_user_permissions`
--
ALTER TABLE `red_beach_advisors_register_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `red_beach_advisors_regis_register_id_permission_i_1c8fcd51_uniq` (`register_id`,`permission_id`),
  ADD KEY `red_beach_advisors_r_permission_id_387abcd9_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialaccount_provider_uid_fc810c6e_uniq` (`provider`,`uid`),
  ADD KEY `socialaccount_social_user_id_8146e70c_fk_red_beach` (`user_id`);

--
-- Indices de la tabla `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq` (`socialapp_id`,`site_id`),
  ADD KEY `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` (`site_id`);

--
-- Indices de la tabla `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq` (`app_id`,`account_id`),
  ADD KEY `socialaccount_social_account_id_951f210e_fk_socialacc` (`account_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `red_beach_advisors_answers`
--
ALTER TABLE `red_beach_advisors_answers`
  MODIFY `id_answer` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `red_beach_advisors_register_groups`
--
ALTER TABLE `red_beach_advisors_register_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `red_beach_advisors_register_user_permissions`
--
ALTER TABLE `red_beach_advisors_register_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD CONSTRAINT `account_emailaddress_user_id_2c513194_fk_red_beach` FOREIGN KEY (`user_id`) REFERENCES `red_beach_advisors_register` (`email`);

--
-- Filtros para la tabla `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`);

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_red_beach` FOREIGN KEY (`user_id`) REFERENCES `red_beach_advisors_register` (`email`);

--
-- Filtros para la tabla `red_beach_advisors_answers`
--
ALTER TABLE `red_beach_advisors_answers`
  ADD CONSTRAINT `red_beach_advisors_a_email_register_id_876ed42f_fk_red_beach` FOREIGN KEY (`email_register_id`) REFERENCES `red_beach_advisors_register` (`email`),
  ADD CONSTRAINT `red_beach_advisors_a_id_question_id_ae768872_fk_red_beach` FOREIGN KEY (`id_question_id`) REFERENCES `red_beach_advisors_questions` (`id_question`);

--
-- Filtros para la tabla `red_beach_advisors_register_groups`
--
ALTER TABLE `red_beach_advisors_register_groups`
  ADD CONSTRAINT `red_beach_advisors_r_group_id_8d76d2ae_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `red_beach_advisors_r_register_id_253e16c4_fk_red_beach` FOREIGN KEY (`register_id`) REFERENCES `red_beach_advisors_register` (`email`);

--
-- Filtros para la tabla `red_beach_advisors_register_user_permissions`
--
ALTER TABLE `red_beach_advisors_register_user_permissions`
  ADD CONSTRAINT `red_beach_advisors_r_permission_id_387abcd9_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `red_beach_advisors_r_register_id_a4154198_fk_red_beach` FOREIGN KEY (`register_id`) REFERENCES `red_beach_advisors_register` (`email`);

--
-- Filtros para la tabla `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD CONSTRAINT `socialaccount_social_user_id_8146e70c_fk_red_beach` FOREIGN KEY (`user_id`) REFERENCES `red_beach_advisors_register` (`email`);

--
-- Filtros para la tabla `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD CONSTRAINT `socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc` FOREIGN KEY (`socialapp_id`) REFERENCES `socialaccount_socialapp` (`id`),
  ADD CONSTRAINT `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Filtros para la tabla `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD CONSTRAINT `socialaccount_social_account_id_951f210e_fk_socialacc` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`),
  ADD CONSTRAINT `socialaccount_social_app_id_636a42d7_fk_socialacc` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
