-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 05, 2025 at 04:09 AM
-- Server version: 9.1.0
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musikk`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

DROP TABLE IF EXISTS `activity_logs`;
CREATE TABLE IF NOT EXISTS `activity_logs` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `action` varchar(255) NOT NULL,
  `description` text,
  `ip_address` varchar(50) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`log_id`, `user_id`, `action`, `description`, `ip_address`, `user_agent`, `created_at`) VALUES
(1, 5, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 07:39:25'),
(2, 4, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 07:41:13'),
(3, 6, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 07:50:32'),
(4, 6, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 07:51:00'),
(5, 4, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 07:51:46'),
(6, 6, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 07:52:21'),
(7, 6, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 07:52:44'),
(8, 6, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:02:22'),
(9, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:02:22'),
(10, 6, 'page_view', 'Mengakses users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:02:41'),
(11, 6, 'page_view', 'Mengakses ajax_get_stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:03:23'),
(12, 6, 'page_view', 'Mengakses ajax_get_stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:04:22'),
(13, 6, 'page_view', 'Mengakses ajax_get_stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:05:22'),
(14, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:05:31'),
(15, 6, 'page_view', 'Mengakses users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:05:37'),
(16, 6, 'page_view', 'Mengakses podcasts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:05:38'),
(17, 6, 'page_view', 'Mengakses music', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:05:40'),
(18, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:05:41'),
(19, 6, 'page_view', 'Mengakses reports', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:05:44'),
(20, 6, 'page_view', 'Mengakses logs', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:05:47'),
(21, 6, 'page_view', 'Mengakses notifications', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:05:56'),
(22, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:05:59'),
(23, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:06:13'),
(24, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:06:17'),
(25, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:06:20'),
(26, 6, 'page_view', 'Mengakses ajax_get_stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:07:17'),
(27, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:07:57'),
(28, 6, 'page_view', 'Mengakses ajax_get_stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:08:58'),
(29, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:09:26'),
(30, 6, 'page_view', 'Mengakses user_detail', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:09:50'),
(31, 6, 'page_view', 'Mengakses users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:09:54'),
(32, 6, 'page_view', 'Mengakses music', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:09:55'),
(33, 6, 'page_view', 'Mengakses podcasts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:09:59'),
(34, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:10:05'),
(35, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:10:08'),
(36, 6, 'page_view', 'Mengakses podcasts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:13:05'),
(37, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:13:07'),
(38, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:13:09'),
(39, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:13:10'),
(40, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:13:12'),
(41, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:13:13'),
(42, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:13:13'),
(43, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:13:13'),
(44, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:13:13'),
(45, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:13:13'),
(46, 6, 'page_view', 'Mengakses podcasts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:13:32'),
(47, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:13:33'),
(48, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:13:36'),
(49, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:13:37'),
(50, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:13:37'),
(51, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:13:37'),
(52, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:13:37'),
(53, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:13:37'),
(54, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:13:37'),
(55, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:13:37'),
(56, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:13:38'),
(57, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:13:38'),
(58, 6, 'page_view', 'Mengakses reports', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:13:40'),
(59, 6, 'page_view', 'Mengakses logs', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:13:47'),
(60, 6, 'page_view', 'Mengakses user_detail', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:13:50'),
(61, 6, 'page_view', 'Mengakses user_detail', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:13:56'),
(62, 6, 'page_view', 'Mengakses logs', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:14:00'),
(63, 6, 'page_view', 'Mengakses notifications', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:14:06'),
(64, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:14:09'),
(65, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:14:20'),
(66, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:15:58'),
(67, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:17:34'),
(68, 6, 'page_view', 'Mengakses users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:17:36'),
(69, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:18:04'),
(70, 6, 'page_view', 'Mengakses podcasts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:18:15'),
(71, 6, 'page_view', 'Mengakses music', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:18:16'),
(72, 6, 'page_view', 'Mengakses users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:18:17'),
(73, 6, 'page_view', 'Mengakses users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:19:49'),
(74, 6, 'page_view', 'Mengakses users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:22:12'),
(75, 6, 'page_view', 'Mengakses user_detail', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:22:16'),
(76, 6, 'page_view', 'Mengakses user_detail', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:34:33'),
(77, 4, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:35:08'),
(78, 6, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:35:17'),
(79, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:35:17'),
(80, 6, 'page_view', 'Mengakses ajax_get_stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:36:24'),
(81, 6, 'page_view', 'Mengakses ajax_get_stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:37:19'),
(82, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:37:44'),
(83, 6, 'page_view', 'Mengakses ajax_get_stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:38:45'),
(84, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:39:00'),
(85, 6, 'page_view', 'Mengakses user_detail', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:39:03'),
(86, 6, 'page_view', 'Mengakses user_detail', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:41:29'),
(87, 6, 'page_view', 'Mengakses podcasts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:41:45'),
(88, 6, 'page_view', 'Mengakses podcasts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:41:48'),
(89, 6, 'page_view', 'Mengakses podcasts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:41:51'),
(90, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:41:53'),
(91, 6, 'page_view', 'Mengakses users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:41:54'),
(92, 6, 'page_view', 'Mengakses user_detail', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:41:56'),
(93, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:42:03'),
(94, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:42:03'),
(95, 6, 'page_view', 'Mengakses users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:42:07'),
(96, 6, 'page_view', 'Mengakses user_detail', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:42:11'),
(97, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:42:31'),
(98, 6, 'page_view', 'Mengakses settings_update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:42:39'),
(99, 6, 'settings_update', 'Memperbarui pengaturan sistem', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:42:39'),
(100, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:42:39'),
(101, 4, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:42:53'),
(102, 6, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:43:51'),
(103, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:43:51'),
(104, 6, 'page_view', 'Mengakses music', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:43:59'),
(105, 6, 'page_view', 'Mengakses music', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:44:01'),
(106, 6, 'page_view', 'Mengakses music', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:44:02'),
(107, 6, 'page_view', 'Mengakses music', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:44:03'),
(108, 6, 'page_view', 'Mengakses music', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:44:07'),
(109, 6, 'page_view', 'Mengakses podcasts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:44:10'),
(110, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:44:12'),
(111, 6, 'page_view', 'Mengakses playlist_delete', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:44:16'),
(112, 6, 'page_view', 'Mengakses playlist_delete', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:44:54'),
(113, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:46:05'),
(114, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:46:05'),
(115, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:46:05'),
(116, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:46:06'),
(117, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:46:06'),
(118, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:46:06'),
(119, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:46:07'),
(120, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:46:07'),
(121, 6, 'page_view', 'Mengakses playlist_delete', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:46:10'),
(122, 6, 'playlist_delete', 'Menghapus playlist ID: 6', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:46:10'),
(123, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:46:10'),
(124, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:46:17'),
(125, 6, 'page_view', 'Mengakses user_detail', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:46:22'),
(126, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:46:32'),
(127, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:46:37'),
(128, 6, 'page_view', 'Mengakses users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:46:49'),
(129, 6, 'page_view', 'Mengakses music', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:46:51'),
(130, 6, 'page_view', 'Mengakses podcasts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:46:52'),
(131, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:46:53'),
(132, 6, 'page_view', 'Mengakses users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:47:00'),
(133, 6, 'page_view', 'Mengakses music', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:47:01'),
(134, 6, 'page_view', 'Mengakses users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:47:03'),
(135, 6, 'page_view', 'Mengakses user_delete', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:47:06'),
(136, 6, 'user_delete', 'Menghapus pengguna ID: 5', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:47:06'),
(137, 6, 'page_view', 'Mengakses users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:47:06'),
(138, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:47:12'),
(139, 6, 'page_view', 'Mengakses reports', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:47:18'),
(140, 6, 'page_view', 'Mengakses logs', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:47:19'),
(141, 6, 'page_view', 'Mengakses logs', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:47:32'),
(142, 6, 'page_view', 'Mengakses logs', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:47:43'),
(143, 6, 'page_view', 'Mengakses logs', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:47:47'),
(144, 6, 'page_view', 'Mengakses logs', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:47:51'),
(145, 6, 'page_view', 'Mengakses logs', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:47:58'),
(146, 6, 'page_view', 'Mengakses notifications', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:48:00'),
(147, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:48:03'),
(148, 6, 'page_view', 'Mengakses settings_update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:48:10'),
(149, 6, 'settings_update', 'Memperbarui pengaturan sistem', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:48:10'),
(150, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:48:10'),
(151, 6, 'page_view', 'Mengakses settings_update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:48:15'),
(152, 6, 'settings_update', 'Memperbarui pengaturan sistem', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:48:15'),
(153, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:48:15'),
(154, 4, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:48:31'),
(155, 6, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:48:45'),
(156, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:48:45'),
(157, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:48:47'),
(158, 4, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:49:04'),
(159, 6, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:50:00'),
(160, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:50:00'),
(161, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:50:02'),
(162, 6, 'page_view', 'Mengakses settings_update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:52:39'),
(163, 6, 'settings_update', 'Memperbarui pengaturan sistem', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:52:39'),
(164, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:52:40'),
(165, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:58:34'),
(166, 6, 'page_view', 'Mengakses users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:58:37'),
(167, 6, 'page_view', 'Mengakses music', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:58:38'),
(168, 6, 'page_view', 'Mengakses music', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:58:39'),
(169, 6, 'page_view', 'Mengakses podcasts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:58:40'),
(170, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:58:40'),
(171, 6, 'page_view', 'Mengakses reports', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:58:43'),
(172, 6, 'page_view', 'Mengakses export_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:58:49'),
(173, 6, 'page_view', 'Mengakses export_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:58:53'),
(174, 6, 'page_view', 'Mengakses export_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:58:59'),
(175, 6, 'page_view', 'Mengakses export_report', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:59:01'),
(176, 6, 'page_view', 'Mengakses logs', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:59:09'),
(177, 6, 'page_view', 'Mengakses notifications', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:59:12'),
(178, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:59:15'),
(179, 6, 'page_view', 'Mengakses settings_update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:59:21'),
(180, 6, 'settings_update', 'Memperbarui pengaturan sistem', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:59:21'),
(181, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:59:21'),
(182, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:59:24'),
(183, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:59:24'),
(184, 4, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 08:59:42'),
(185, 6, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 09:00:06'),
(186, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 09:00:06'),
(187, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 09:00:09'),
(188, 6, 'page_view', 'Mengakses settings_update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 09:00:13'),
(189, 6, 'settings_update', 'Memperbarui pengaturan sistem', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 09:00:13'),
(190, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 09:00:13'),
(191, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 09:04:31'),
(192, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 09:04:32'),
(193, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 09:04:33'),
(194, 6, 'page_view', 'Mengakses notifications', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 09:04:35'),
(195, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 09:04:41'),
(196, 6, 'page_view', 'Mengakses settings_update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 09:04:46'),
(197, 6, 'settings_update', 'Memperbarui pengaturan sistem', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 09:04:46'),
(198, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 09:04:46'),
(199, 4, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 09:05:02'),
(200, 6, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 09:08:41'),
(201, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 09:08:41'),
(202, 6, 'page_view', 'Mengakses notifications', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 09:08:44'),
(203, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 09:08:47'),
(204, 6, 'page_view', 'Mengakses settings_update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 09:08:51'),
(205, 6, 'settings_update', 'Memperbarui pengaturan sistem', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 09:08:51'),
(206, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-15 09:08:51'),
(207, 4, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 13:17:53'),
(208, 6, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 13:18:03'),
(209, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 13:18:03'),
(210, 6, 'page_view', 'Mengakses music', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 13:18:08'),
(211, 6, 'page_view', 'Mengakses users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 13:18:09'),
(212, 6, 'page_view', 'Mengakses podcasts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 13:18:10'),
(213, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 13:18:10'),
(214, 6, 'page_view', 'Mengakses reports', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 13:18:12'),
(215, 6, 'page_view', 'Mengakses reports', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 13:18:13'),
(216, 6, 'page_view', 'Mengakses logs', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 13:18:14'),
(217, 6, 'page_view', 'Mengakses user_detail', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 13:18:18'),
(218, 6, 'page_view', 'Mengakses notifications', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 13:18:21'),
(219, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 13:18:30'),
(220, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 13:22:37'),
(221, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 13:22:40'),
(222, 6, 'page_view', 'Mengakses settings_update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 13:22:45'),
(223, 6, 'settings_update', 'Memperbarui pengaturan sistem', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 13:22:45'),
(224, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 13:22:45'),
(225, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 13:22:49'),
(226, 4, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-16 13:25:06'),
(227, 6, 'page_view', 'Mengakses settings_update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 13:25:14'),
(228, 6, 'settings_update', 'Memperbarui pengaturan sistem', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 13:25:14'),
(229, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 13:25:14'),
(230, 6, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 17:15:13'),
(231, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 17:15:13'),
(232, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 17:15:20'),
(233, 4, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-16 17:25:43'),
(234, 6, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 17:26:58'),
(235, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 17:26:58'),
(236, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 17:27:02'),
(237, 6, 'page_view', 'Mengakses settings_update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 17:27:20'),
(238, 6, 'settings_update', 'Memperbarui pengaturan sistem', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 17:27:20'),
(239, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-16 17:27:20'),
(240, 6, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 06:44:08'),
(241, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 06:44:08'),
(242, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 06:44:15'),
(243, 6, 'page_view', 'Mengakses settings_update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 06:44:22'),
(244, 6, 'settings_update', 'Memperbarui pengaturan sistem', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 06:44:22'),
(245, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 06:44:22'),
(246, 4, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 06:44:37'),
(247, 6, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 06:45:30');
INSERT INTO `activity_logs` (`log_id`, `user_id`, `action`, `description`, `ip_address`, `user_agent`, `created_at`) VALUES
(248, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 06:45:30'),
(249, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 06:45:32'),
(250, 6, 'page_view', 'Mengakses settings_update', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 06:45:36'),
(251, 6, 'settings_update', 'Memperbarui pengaturan sistem', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 06:45:36'),
(252, 6, 'page_view', 'Mengakses settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 06:45:36'),
(253, 4, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 06:45:58'),
(254, 4, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:10:22'),
(255, 6, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:20:14'),
(256, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:20:15'),
(257, 6, 'page_view', 'Mengakses users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:20:17'),
(258, 6, 'page_view', 'Mengakses music', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:20:19'),
(259, 6, 'page_view', 'Mengakses music', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:20:50'),
(260, 6, 'page_view', 'Mengakses podcasts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:20:52'),
(261, 6, 'page_view', 'Mengakses playlists', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:20:53'),
(262, 6, 'page_view', 'Mengakses reports', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:20:54'),
(263, 6, 'page_view', 'Mengakses logs', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:20:56'),
(264, 6, 'page_view', 'Mengakses notifications', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:20:58'),
(265, 6, 'page_view', 'Mengakses users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:21:00'),
(266, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:21:01'),
(267, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:21:09'),
(268, 6, 'page_view', 'Mengakses ajax_get_stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:22:09'),
(269, 6, 'page_view', 'Mengakses ajax_get_stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:23:10'),
(270, 6, 'page_view', 'Mengakses ajax_get_stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:24:09'),
(271, 6, 'page_view', 'Mengakses ajax_get_stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:25:09'),
(272, 6, 'page_view', 'Mengakses ajax_get_stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:26:10'),
(273, 6, 'page_view', 'Mengakses ajax_get_stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:27:09'),
(274, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:27:11'),
(275, 6, 'page_view', 'Mengakses music', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:27:15'),
(276, 6, 'page_view', 'Mengakses music', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:38:24'),
(277, 6, 'page_view', 'Mengakses music_detail', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:38:31'),
(278, 6, 'page_view', 'Mengakses music', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:38:38'),
(279, 4, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:38:58'),
(280, 6, 'login', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:56:59'),
(281, 6, 'page_view', 'Mengakses index', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:56:59'),
(282, 6, 'page_view', 'Mengakses podcasts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-12-03 07:57:02');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
CREATE TABLE IF NOT EXISTS `admin_notifications` (
  `notification_id` int NOT NULL AUTO_INCREMENT,
  `type` enum('bug_report','support_request','new_content','system') DEFAULT 'system',
  `title` varchar(255) NOT NULL,
  `message` text,
  `user_id` int DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`notification_id`),
  KEY `is_read` (`is_read`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
CREATE TABLE IF NOT EXISTS `albums` (
  `id` int NOT NULL AUTO_INCREMENT,
  `artist_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `release_year` int DEFAULT NULL,
  `album_type` varchar(50) DEFAULT 'Album',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `artist_id` (`artist_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `artist_id`, `title`, `cover_image`, `release_year`, `album_type`, `created_at`) VALUES
(1, 1, 'Divide', 'divide.jpg', 2017, 'Album', '2025-11-13 18:36:33'),
(2, 1, 'Multiply', 'multiply.jpg', 2014, 'Album', '2025-11-13 18:36:33'),
(3, 1, 'No 6', 'no6.jpg', 2019, 'Album', '2025-11-13 18:36:33'),
(4, 1, 'Equals', 'equals.jpg', 2021, 'Album', '2025-11-13 18:36:33'),
(5, 1, 'Peru', 'peru.jpg', 2021, 'Single', '2025-11-13 18:36:33'),
(6, 1, 'X', 'x.jpg', 2014, 'Album', '2025-11-13 18:36:33'),
(7, 2, 'Back from the Edge', 'james-arthur-album.jpg', 2016, 'Album', '2025-11-13 18:36:54'),
(8, 3, '1989', 'taylor-1989.jpg', 2014, 'Album', '2025-11-13 18:36:54'),
(9, 3, 'Lover', 'taylor-lover.jpg', 2019, 'Album', '2025-11-13 18:36:54'),
(10, 4, 'After Hours', 'weeknd-after-hours.jpg', 2020, 'Album', '2025-11-13 18:36:54'),
(11, 4, 'Starboy', 'weeknd-starboy.jpg', 2016, 'Album', '2025-11-13 18:36:54');

-- --------------------------------------------------------

--
-- Table structure for table `api_cache`
--

DROP TABLE IF EXISTS `api_cache`;
CREATE TABLE IF NOT EXISTS `api_cache` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cache_key` varchar(255) NOT NULL,
  `api_source` enum('spotify','lastfm','musixmatch') NOT NULL,
  `endpoint` varchar(255) NOT NULL,
  `response_data` longtext NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `expires_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cache_key` (`cache_key`),
  KEY `api_source` (`api_source`),
  KEY `expires_at` (`expires_at`),
  KEY `idx_cache_expires` (`expires_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `api_usage_log`
--

DROP TABLE IF EXISTS `api_usage_log`;
CREATE TABLE IF NOT EXISTS `api_usage_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `api_source` enum('spotify','lastfm','musixmatch') NOT NULL,
  `endpoint` varchar(255) NOT NULL,
  `request_count` int DEFAULT '1',
  `last_request_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `request_date` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_endpoint_date` (`api_source`,`endpoint`,`request_date`),
  KEY `idx_usage_date` (`request_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
CREATE TABLE IF NOT EXISTS `artists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT '0',
  `monthly_listeners` bigint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `image`, `is_verified`, `monthly_listeners`, `created_at`) VALUES
(1, 'Ed Sheeran', 'ed-sheeran.jpg', 1, 82735050, '2025-11-13 18:36:33'),
(2, 'James Arthur', 'james-arthur.jpg', 1, 28000000, '2025-11-13 18:36:33'),
(3, 'Taylor Swift', 'taylor-swift.jpg', 1, 95000000, '2025-11-13 18:36:33'),
(4, 'The Weeknd', 'the-weeknd.jpg', 1, 110000000, '2025-11-13 18:36:33');

-- --------------------------------------------------------

--
-- Table structure for table `artist_enrichment`
--

DROP TABLE IF EXISTS `artist_enrichment`;
CREATE TABLE IF NOT EXISTS `artist_enrichment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `artist_id` int DEFAULT NULL,
  `artist_name` varchar(255) NOT NULL,
  `spotify_id` varchar(100) DEFAULT NULL,
  `lastfm_mbid` varchar(100) DEFAULT NULL,
  `bio` longtext,
  `genres` text,
  `popularity` int DEFAULT '0',
  `followers` int DEFAULT '0',
  `image_url` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `artist_id` (`artist_id`),
  KEY `spotify_id` (`spotify_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bug_reports`
--

DROP TABLE IF EXISTS `bug_reports`;
CREATE TABLE IF NOT EXISTS `bug_reports` (
  `report_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `priority` enum('low','medium','high','critical') DEFAULT 'medium',
  `status` enum('open','in_progress','resolved','closed') DEFAULT 'open',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`report_id`),
  KEY `user_id` (`user_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
CREATE TABLE IF NOT EXISTS `favorites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `song_id` int DEFAULT NULL,
  `album_id` int DEFAULT NULL,
  `artist_id` int DEFAULT NULL,
  `type` enum('song','album','artist') NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `song_id` (`song_id`),
  KEY `album_id` (`album_id`),
  KEY `artist_id` (`artist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `song_id`, `album_id`, `artist_id`, `type`, `created_at`) VALUES
(1, 2, 1, NULL, NULL, 'song', '2025-11-14 01:37:12'),
(2, 2, 2, NULL, NULL, 'song', '2025-11-14 01:37:12'),
(3, 2, 4, NULL, NULL, 'song', '2025-11-14 01:37:12'),
(4, 3, 7, NULL, NULL, 'song', '2025-11-14 01:37:12'),
(5, 3, 8, NULL, NULL, 'song', '2025-11-14 01:37:12'),
(6, 2, NULL, 1, NULL, 'album', '2025-11-14 01:37:12'),
(7, 3, NULL, 2, NULL, 'album', '2025-11-14 01:37:12'),
(8, 2, NULL, NULL, 1, 'artist', '2025-11-14 01:37:12'),
(9, 3, NULL, NULL, 2, 'artist', '2025-11-14 01:37:12'),
(10, 4, NULL, NULL, NULL, '', '2025-12-03 07:49:55');

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

DROP TABLE IF EXISTS `music`;
CREATE TABLE IF NOT EXISTS `music` (
  `music_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `album` varchar(255) DEFAULT NULL,
  `duration` int DEFAULT '0',
  `file_path` varchar(500) DEFAULT NULL,
  `cover_image` varchar(500) DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `upload_by` int DEFAULT NULL,
  `play_count` int DEFAULT '0',
  `rating` decimal(3,2) DEFAULT '0.00',
  `status` enum('approved','pending','rejected') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`music_id`),
  KEY `upload_by` (`upload_by`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`music_id`, `title`, `artist`, `album`, `duration`, `file_path`, `cover_image`, `genre`, `upload_by`, `play_count`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sample Song 1', 'Demo Artist', 'Demo Album', 180, 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3', NULL, 'Pop', 1, 0, 0.00, 'approved', '2025-12-03 07:35:53', '2025-12-03 07:35:53'),
(2, 'Sample Song 2', 'Demo Artist', 'Demo Album', 200, 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3', NULL, 'Rock', 1, 0, 0.00, 'approved', '2025-12-03 07:35:53', '2025-12-03 07:35:53'),
(3, 'Sample Song 3', 'Demo Artist', 'Demo Album', 220, 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3', NULL, 'Electronic', 1, 0, 0.00, 'approved', '2025-12-03 07:35:53', '2025-12-03 07:35:53'),
(4, 'testing', 'ferdy', 'saya', 0, 'assets/audio/demo.mp3', '', 'Rock', 6, 0, 0.00, 'approved', '2025-12-03 07:37:58', '2025-12-03 07:37:58'),
(5, 'coba', 'mulyadi', 'hai', 0, 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3', '', 'Blues', 6, 0, 0.00, 'approved', '2025-12-03 07:38:21', '2025-12-03 07:38:21'),
(6, 'poasasass', 'sasasaas', '', 0, 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3', '', 'Folk', 6, 0, 0.00, 'approved', '2025-12-03 07:57:48', '2025-12-03 07:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

DROP TABLE IF EXISTS `playlists`;
CREATE TABLE IF NOT EXISTS `playlists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `cover_image` varchar(255) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `play_count` int DEFAULT '0',
  `status` enum('active','deleted') DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `user_id`, `name`, `description`, `cover_image`, `is_public`, `created_at`, `updated_at`, `play_count`, `status`) VALUES
(5, 4, 'fer', NULL, NULL, 1, '2025-11-13 18:47:53', '2025-11-13 18:47:53', 0, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `playlist_songs`
--

DROP TABLE IF EXISTS `playlist_songs`;
CREATE TABLE IF NOT EXISTS `playlist_songs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `playlist_id` int NOT NULL,
  `song_id` int NOT NULL,
  `position` int DEFAULT '0',
  `added_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `playlist_id` (`playlist_id`),
  KEY `song_id` (`song_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist_songs`
--

INSERT INTO `playlist_songs` (`id`, `playlist_id`, `song_id`, `position`, `added_at`) VALUES
(1, 1, 1, 1, '2025-11-14 01:37:12'),
(2, 1, 2, 2, '2025-11-14 01:37:12'),
(3, 1, 4, 3, '2025-11-14 01:37:12'),
(4, 2, 3, 1, '2025-11-14 01:37:12'),
(5, 2, 6, 2, '2025-11-14 01:37:12'),
(6, 3, 7, 1, '2025-11-14 01:37:12'),
(7, 3, 8, 2, '2025-11-14 01:37:12'),
(8, 3, 9, 3, '2025-11-14 01:37:12'),
(9, 4, 1, 1, '2025-11-14 01:37:12'),
(10, 4, 5, 2, '2025-11-14 01:37:12'),
(11, 4, 10, 3, '2025-11-14 01:37:12');

-- --------------------------------------------------------

--
-- Table structure for table `play_history`
--

DROP TABLE IF EXISTS `play_history`;
CREATE TABLE IF NOT EXISTS `play_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `song_id` int NOT NULL,
  `played_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `duration_played` int DEFAULT '0',
  `device` varchar(50) DEFAULT 'web',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `song_id` (`song_id`),
  KEY `played_at` (`played_at`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `play_history`
--

INSERT INTO `play_history` (`id`, `user_id`, `song_id`, `played_at`, `duration_played`, `device`) VALUES
(1, 2, 1, '2025-11-14 00:37:12', 210, 'web'),
(2, 2, 2, '2025-11-13 23:37:12', 189, 'web'),
(3, 2, 4, '2025-11-13 22:37:12', 234, 'web'),
(4, 3, 7, '2025-11-14 01:07:12', 198, 'web'),
(5, 3, 8, '2025-11-13 01:37:12', 245, 'web'),
(6, 3, 9, '2025-11-12 01:37:12', 223, 'web'),
(7, NULL, 1, '2025-11-13 20:37:12', 210, 'web'),
(8, NULL, 3, '2025-11-13 19:37:12', 178, 'web');

-- --------------------------------------------------------

--
-- Table structure for table `podcasts`
--

DROP TABLE IF EXISTS `podcasts`;
CREATE TABLE IF NOT EXISTS `podcasts` (
  `podcast_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `host` varchar(255) NOT NULL,
  `description` text,
  `duration` int DEFAULT '0',
  `file_path` varchar(500) DEFAULT NULL,
  `cover_image` varchar(500) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `upload_by` int DEFAULT NULL,
  `play_count` int DEFAULT '0',
  `rating` decimal(3,2) DEFAULT '0.00',
  `status` enum('approved','pending','rejected') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`podcast_id`),
  KEY `upload_by` (`upload_by`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `premium_packages`
--

DROP TABLE IF EXISTS `premium_packages`;
CREATE TABLE IF NOT EXISTS `premium_packages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `package_name` varchar(50) NOT NULL,
  `package_type` enum('Basic','Premium','VIP') NOT NULL,
  `description` text,
  `monthly_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `yearly_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `features` text,
  `max_downloads` int DEFAULT NULL,
  `max_playlists` int DEFAULT NULL,
  `audio_quality` varchar(20) DEFAULT 'standard',
  `ad_free` tinyint(1) DEFAULT '0',
  `skip_unlimited` tinyint(1) DEFAULT '0',
  `exclusive_content` tinyint(1) DEFAULT '0',
  `offline_mode` tinyint(1) DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `display_order` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `premium_packages`
--

INSERT INTO `premium_packages` (`id`, `package_name`, `package_type`, `description`, `monthly_price`, `yearly_price`, `features`, `max_downloads`, `max_playlists`, `audio_quality`, `ad_free`, `skip_unlimited`, `exclusive_content`, `offline_mode`, `is_active`, `display_order`, `created_at`, `updated_at`) VALUES
(1, 'Basic Plan', 'Basic', 'Paket dasar untuk pengguna yang ingin menikmati musik tanpa iklan', 29000.00, 290000.00, '[\"Mendengarkan tanpa iklan\", \"Kualitas audio standard\", \"10 download per bulan\", \"5 playlist maksimal\", \"Skip terbatas (6x per jam)\"]', 10, 5, 'standard', 1, 0, 0, 0, 1, 1, '2025-12-03 07:05:47', '2025-12-03 07:05:47'),
(2, 'Premium Plan', 'Premium', 'Paket premium dengan fitur lengkap untuk pengalaman terbaik', 49000.00, 490000.00, '[\"Mendengarkan tanpa iklan\", \"Kualitas audio tinggi (320kbps)\", \"Download unlimited\", \"Playlist unlimited\", \"Skip unlimited\", \"Mode offline\", \"Akses konten eksklusif\"]', NULL, NULL, 'high', 1, 1, 1, 1, 1, 2, '2025-12-03 07:05:47', '2025-12-03 07:05:47'),
(3, 'VIP Plan', 'VIP', 'Paket VIP dengan semua fitur premium plus konten eksklusif artis', 99000.00, 990000.00, '[\"Semua fitur Premium\", \"Kualitas audio lossless\", \"Akses early release\", \"Konten eksklusif artis\", \"Meet & greet priority\", \"Merchandise discount\", \"24/7 Premium support\"]', NULL, NULL, 'lossless', 1, 1, 1, 1, 1, 3, '2025-12-03 07:05:47', '2025-12-03 07:05:47'),
(4, 'Basic Plan', 'Basic', 'Paket dasar untuk pengguna yang ingin menikmati musik tanpa iklan', 29000.00, 290000.00, '[\"Mendengarkan tanpa iklan\", \"Kualitas audio standard\", \"10 download per bulan\", \"5 playlist maksimal\", \"Skip terbatas (6x per jam)\"]', 10, 5, 'standard', 1, 0, 0, 0, 1, 1, '2025-12-03 07:05:49', '2025-12-03 07:05:49'),
(5, 'Premium Plan', 'Premium', 'Paket premium dengan fitur lengkap untuk pengalaman terbaik', 49000.00, 490000.00, '[\"Mendengarkan tanpa iklan\", \"Kualitas audio tinggi (320kbps)\", \"Download unlimited\", \"Playlist unlimited\", \"Skip unlimited\", \"Mode offline\", \"Akses konten eksklusif\"]', NULL, NULL, 'high', 1, 1, 1, 1, 1, 2, '2025-12-03 07:05:49', '2025-12-03 07:05:49'),
(6, 'VIP Plan', 'VIP', 'Paket VIP dengan semua fitur premium plus konten eksklusif artis', 99000.00, 990000.00, '[\"Semua fitur Premium\", \"Kualitas audio lossless\", \"Akses early release\", \"Konten eksklusif artis\", \"Meet & greet priority\", \"Merchandise discount\", \"24/7 Premium support\"]', NULL, NULL, 'lossless', 1, 1, 1, 1, 1, 3, '2025-12-03 07:05:49', '2025-12-03 07:05:49'),
(7, 'Basic Plan', 'Basic', 'Paket dasar untuk pengguna yang ingin menikmati musik tanpa iklan', 29000.00, 290000.00, '[\"Mendengarkan tanpa iklan\", \"Kualitas audio standard\", \"10 download per bulan\", \"5 playlist maksimal\", \"Skip terbatas (6x per jam)\"]', 10, 5, 'standard', 1, 0, 0, 0, 1, 1, '2025-12-03 07:07:13', '2025-12-03 07:07:13'),
(8, 'Premium Plan', 'Premium', 'Paket premium dengan fitur lengkap untuk pengalaman terbaik', 49000.00, 490000.00, '[\"Mendengarkan tanpa iklan\", \"Kualitas audio tinggi (320kbps)\", \"Download unlimited\", \"Playlist unlimited\", \"Skip unlimited\", \"Mode offline\", \"Akses konten eksklusif\"]', NULL, NULL, 'high', 1, 1, 1, 1, 1, 2, '2025-12-03 07:07:13', '2025-12-03 07:07:13'),
(9, 'VIP Plan', 'VIP', 'Paket VIP dengan semua fitur premium plus konten eksklusif artis', 99000.00, 990000.00, '[\"Semua fitur Premium\", \"Kualitas audio lossless\", \"Akses early release\", \"Konten eksklusif artis\", \"Meet & greet priority\", \"Merchandise discount\", \"24/7 Premium support\"]', NULL, NULL, 'lossless', 1, 1, 1, 1, 1, 3, '2025-12-03 07:07:13', '2025-12-03 07:07:13'),
(10, 'Basic Plan', 'Basic', 'Paket dasar untuk pengguna yang ingin menikmati musik tanpa iklan', 29000.00, 290000.00, '[\"Mendengarkan tanpa iklan\", \"Kualitas audio standard\", \"10 download per bulan\", \"5 playlist maksimal\", \"Skip terbatas (6x per jam)\"]', 10, 5, 'standard', 1, 0, 0, 0, 1, 1, '2025-12-03 07:09:40', '2025-12-03 07:09:40'),
(11, 'Premium Plan', 'Premium', 'Paket premium dengan fitur lengkap untuk pengalaman terbaik', 49000.00, 490000.00, '[\"Mendengarkan tanpa iklan\", \"Kualitas audio tinggi (320kbps)\", \"Download unlimited\", \"Playlist unlimited\", \"Skip unlimited\", \"Mode offline\", \"Akses konten eksklusif\"]', NULL, NULL, 'high', 1, 1, 1, 1, 1, 2, '2025-12-03 07:09:40', '2025-12-03 07:09:40'),
(12, 'VIP Plan', 'VIP', 'Paket VIP dengan semua fitur premium plus konten eksklusif artis', 99000.00, 990000.00, '[\"Semua fitur Premium\", \"Kualitas audio lossless\", \"Akses early release\", \"Konten eksklusif artis\", \"Meet & greet priority\", \"Merchandise discount\", \"24/7 Premium support\"]', NULL, NULL, 'lossless', 1, 1, 1, 1, 1, 3, '2025-12-03 07:09:40', '2025-12-03 07:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
CREATE TABLE IF NOT EXISTS `songs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `artist_id` int NOT NULL,
  `album_id` int DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `duration` time DEFAULT NULL,
  `plays` bigint DEFAULT '0',
  `audio_file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `artist_id` (`artist_id`),
  KEY `album_id` (`album_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `artist_id`, `album_id`, `title`, `duration`, `plays`, `audio_file`, `created_at`) VALUES
(1, 1, 4, 'Shivers', '00:03:27', 1952015881, NULL, '2025-11-13 18:36:33'),
(2, 1, 1, 'Shape of You', '00:04:07', 3024067930, NULL, '2025-11-13 18:36:33'),
(3, 1, 1, 'Perfect', '00:04:23', 2800000000, NULL, '2025-11-13 18:36:33'),
(4, 1, 3, 'Bad Habits', '00:03:51', 2500000000, NULL, '2025-11-13 18:36:33'),
(5, 2, 7, 'Say You Wont Let Go', '00:03:32', 1800000000, NULL, '2025-11-13 18:36:54'),
(6, 2, 7, 'Impossible', '00:03:44', 950000000, NULL, '2025-11-13 18:36:54'),
(7, 3, 8, 'Shake It Off', '00:03:39', 2600000000, NULL, '2025-11-13 18:36:54'),
(8, 3, 8, 'Blank Space', '00:03:51', 2400000000, NULL, '2025-11-13 18:36:54'),
(9, 3, 9, 'Lover', '00:03:41', 1200000000, NULL, '2025-11-13 18:36:54'),
(10, 4, 10, 'Blinding Lights', '00:03:20', 3500000000, NULL, '2025-11-13 18:36:54'),
(11, 4, 10, 'Save Your Tears', '00:03:35', 2100000000, NULL, '2025-11-13 18:36:54'),
(12, 4, 11, 'Starboy', '00:03:50', 2800000000, NULL, '2025-11-13 18:36:54');

-- --------------------------------------------------------

--
-- Table structure for table `song_lyrics`
--

DROP TABLE IF EXISTS `song_lyrics`;
CREATE TABLE IF NOT EXISTS `song_lyrics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `song_id` int DEFAULT NULL,
  `track_name` varchar(255) NOT NULL,
  `artist_name` varchar(255) NOT NULL,
  `lyrics` longtext NOT NULL,
  `source` varchar(50) DEFAULT 'musixmatch',
  `copyright` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `song_id` (`song_id`),
  KEY `track_artist` (`track_name`,`artist_name`),
  KEY `idx_lyrics_search` (`track_name`,`artist_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spotify_tracks`
--

DROP TABLE IF EXISTS `spotify_tracks`;
CREATE TABLE IF NOT EXISTS `spotify_tracks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `song_id` int DEFAULT NULL,
  `spotify_id` varchar(100) NOT NULL,
  `spotify_uri` varchar(150) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `popularity` int DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `spotify_id` (`spotify_id`),
  KEY `song_id` (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_history`
--

DROP TABLE IF EXISTS `subscription_history`;
CREATE TABLE IF NOT EXISTS `subscription_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subscription_id` int NOT NULL,
  `user_id` int NOT NULL,
  `action` enum('subscribed','renewed','cancelled','expired','upgraded','downgraded') NOT NULL,
  `package_name` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `notes` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `subscription_id` (`subscription_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

DROP TABLE IF EXISTS `support_tickets`;
CREATE TABLE IF NOT EXISTS `support_tickets` (
  `ticket_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` enum('open','in_progress','resolved','closed') DEFAULT 'open',
  `priority` enum('low','medium','high') DEFAULT 'medium',
  `assigned_to` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ticket_id`),
  KEY `user_id` (`user_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

DROP TABLE IF EXISTS `system_settings`;
CREATE TABLE IF NOT EXISTS `system_settings` (
  `setting_id` int NOT NULL AUTO_INCREMENT,
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `app_name` varchar(255) NOT NULL DEFAULT 'Musikk',
  `app_logo` varchar(255) NOT NULL DEFAULT '/assets/logo.png',
  PRIMARY KEY (`setting_id`),
  UNIQUE KEY `setting_key` (`setting_key`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`setting_id`, `setting_key`, `setting_value`, `updated_at`, `app_name`, `app_logo`) VALUES
(1, 'app_name', 'Musik Happy', '2025-11-16 17:27:20', 'Musikk', '/assets/logo.png'),
(2, 'app_logo', 'assets/images/logo.png', '2025-11-15 07:22:16', 'Musikk', '/assets/logo.png'),
(3, 'email_notifications', 'enabled', '2025-11-15 07:22:16', 'Musikk', '/assets/logo.png'),
(4, 'maintenance_mode', 'disabled', '2025-12-03 06:45:36', 'Musikk', '/assets/logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `is_premium` tinyint(1) DEFAULT '0',
  `google_id` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `role_id` int DEFAULT '3',
  `status` enum('active','inactive','blocked') DEFAULT 'active',
  `last_login` timestamp NULL DEFAULT NULL,
  `login_count` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `fk_users_role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `full_name`, `avatar`, `is_premium`, `google_id`, `created_at`, `updated_at`, `role_id`, `status`, `last_login`, `login_count`) VALUES
(4, 'ferdy', 'ferdy@gmail.com', '$2y$10$PfWhA2DIEr83OgaS5PY8SOvy2e4mzpxmFLK9f6ljFmbSzsQBts5rO', 'ferdy', NULL, 0, NULL, '2025-11-13 18:37:44', '2025-12-03 14:38:58', 3, 'active', '2025-12-03 00:38:58', 15),
(6, 'admin', 'admin@musikk.com', '$2y$10$8NbvaCDPDKWGyzsWqAL/MOJq2t..fDh3Y6k.3s9VctrEpprx.lyQK', 'Administrator', NULL, 1, NULL, '2025-11-15 14:47:17', '2025-12-03 14:56:59', 1, 'active', '2025-12-03 00:56:59', 18);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  `permissions` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_name` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`role_id`, `role_name`, `permissions`, `created_at`) VALUES
(1, 'admin', '{\"all\": true}', '2025-11-15 07:21:28'),
(2, 'moderator', '{\"manage_content\": true, \"manage_users\": false}', '2025-11-15 07:21:28'),
(3, 'user', '{\"view_content\": true}', '2025-11-15 07:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

DROP TABLE IF EXISTS `user_subscriptions`;
CREATE TABLE IF NOT EXISTS `user_subscriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `package_id` int NOT NULL,
  `subscription_type` enum('monthly','yearly') NOT NULL,
  `status` enum('active','expired','cancelled','pending') NOT NULL DEFAULT 'pending',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `auto_renew` tinyint(1) DEFAULT '0',
  `payment_method` varchar(50) DEFAULT NULL,
  `amount_paid` decimal(10,2) DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `package_id` (`package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `playlists`
--
ALTER TABLE `playlists`
  ADD CONSTRAINT `playlists_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscription_history`
--
ALTER TABLE `subscription_history`
  ADD CONSTRAINT `subscription_history_ibfk_1` FOREIGN KEY (`subscription_id`) REFERENCES `user_subscriptions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscription_history_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_role` FOREIGN KEY (`role_id`) REFERENCES `user_roles` (`role_id`) ON DELETE SET NULL;

--
-- Constraints for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD CONSTRAINT `user_subscriptions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_subscriptions_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `premium_packages` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
