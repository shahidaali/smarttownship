-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 09, 2020 at 12:54 PM
-- Server version: 5.7.24
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_smarttownship`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
CREATE TABLE IF NOT EXISTS `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `community_id` int(11) DEFAULT NULL,
  `address_type_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `flat` int(11) DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `bedroom` int(11) DEFAULT NULL,
  `bath` int(11) DEFAULT NULL,
  `garage` int(11) DEFAULT NULL,
  `area` double DEFAULT NULL,
  `area_unit` enum('sq_ft') COLLATE utf8mb4_unicode_ci DEFAULT 'sq_ft',
  `has_ground_floor` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `community_id`, `address_type_id`, `name`, `house`, `floor`, `flat`, `street`, `block`, `longitude`, `latitude`, `address`, `bedroom`, `bath`, `garage`, `area`, `area_unit`, `has_ground_floor`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'House 1', '1', 1, 1, '1', 'F', NULL, NULL, 'House 1 Floor#1 Flat#1, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 3, 2, 2, 200.5, 'sq_ft', 1, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(2, 2, 1, 'House 1', '1', 2, 1, '1', 'F', NULL, NULL, 'House 1 Floor#2 Flat#1, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 3, 2, 2, 200.5, 'sq_ft', 1, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(3, 2, 1, 'House 2', '2', 1, 1, '1', 'F', NULL, NULL, 'House 2 Floor#1 Flat#1, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 3, 2, 2, 200.5, 'sq_ft', 1, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(4, 2, 1, 'House 2', '2', 2, 1, '1', 'F', NULL, NULL, 'House 2 Floor#2 Flat#1, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 3, 2, 2, 200.5, 'sq_ft', 1, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(5, 2, 1, 'House 3', '3', 1, 1, '1', 'F', NULL, NULL, 'House 3 Floor#1 Flat#1, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 3, 2, 2, 200.5, 'sq_ft', 1, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(6, 2, 1, 'House 3', '3', 2, 1, '1', 'F', NULL, NULL, 'House 3 Floor#2 Flat#1, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 3, 2, 2, 200.5, 'sq_ft', 1, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(7, 2, 1, 'House 4', '4', 1, 1, '1', 'F', NULL, NULL, 'House 4 Floor#1 Flat#1, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 3, 2, 2, 200.5, 'sq_ft', 1, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(8, 2, 1, 'House 4', '4', 2, 1, '1', 'F', NULL, NULL, 'House 4 Floor#2 Flat#1, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 3, 2, 2, 200.5, 'sq_ft', 1, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(9, 2, 1, 'House 5', '5', 1, 1, '1', 'F', NULL, NULL, 'House 5 Floor#1 Flat#1, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 3, 2, 2, 200.5, 'sq_ft', 1, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(10, 2, 1, 'House 5', '5', 2, 1, '1', 'F', NULL, NULL, 'House 5 Floor#2 Flat#1, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 3, 2, 2, 200.5, 'sq_ft', 1, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(11, 2, 1, 'House 6', '6', 1, 1, '1', 'F', NULL, NULL, 'House 6 Floor#1 Flat#1, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 3, 2, 2, 200.5, 'sq_ft', 1, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(12, 2, 1, 'House 6', '6', 2, 1, '1', 'F', NULL, NULL, 'House 6 Floor#2 Flat#1, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 3, 2, 2, 200.5, 'sq_ft', 1, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(13, 2, 1, 'House 7', '7', 1, 1, '1', 'F', NULL, NULL, 'House 7 Floor#1 Flat#1, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 3, 2, 2, 200.5, 'sq_ft', 1, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(14, 2, 1, 'House 7', '7', 2, 1, '1', 'F', NULL, NULL, 'House 7 Floor#2 Flat#1, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 3, 2, 2, 200.5, 'sq_ft', 1, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(15, 2, 1, 'House 8', '8', 1, 1, '1', 'F', NULL, NULL, 'House 8 Floor#1 Flat#1, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 3, 2, 2, 200.5, 'sq_ft', 1, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(16, 2, 1, 'House 8', '8', 2, 1, '1', 'F', NULL, NULL, 'House 8 Floor#2 Flat#1, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 3, 2, 2, 200.5, 'sq_ft', 1, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(17, 2, 1, 'House 9', '9', 1, 1, '1', 'F', NULL, NULL, 'House 9 Floor#1 Flat#1, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 3, 2, 2, 200.5, 'sq_ft', 1, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(18, 2, 1, 'House 9', '9', 2, 1, '1', 'F', NULL, NULL, 'House 9 Floor#2 Flat#1, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 3, 2, 2, 200.5, 'sq_ft', 1, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(19, 2, 1, 'House 10', '10', 1, 1, '1', 'F', NULL, NULL, 'House 10 Floor#1 Flat#1, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 3, 2, 2, 200.5, 'sq_ft', 1, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(20, 2, 1, 'House 10', '10', 2, 1, '1', 'F', NULL, NULL, 'House 10 Floor#2 Flat#1, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 3, 2, 2, 200.5, 'sq_ft', 1, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(21, 2, 2, 'Building 1', '1', 1, 1, '1', 'F', NULL, NULL, 'Building 1 Floor#1 Flat#1, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(22, 2, 2, 'Building 1', '1', 1, 2, '1', 'F', NULL, NULL, 'Building 1 Floor#1 Flat#2, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(23, 2, 2, 'Building 1', '1', 1, 3, '1', 'F', NULL, NULL, 'Building 1 Floor#1 Flat#3, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(24, 2, 2, 'Building 1', '1', 1, 4, '1', 'F', NULL, NULL, 'Building 1 Floor#1 Flat#4, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(25, 2, 2, 'Building 1', '1', 1, 5, '1', 'F', NULL, NULL, 'Building 1 Floor#1 Flat#5, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(26, 2, 2, 'Building 1', '1', 1, 6, '1', 'F', NULL, NULL, 'Building 1 Floor#1 Flat#6, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(27, 2, 2, 'Building 1', '1', 1, 7, '1', 'F', NULL, NULL, 'Building 1 Floor#1 Flat#7, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(28, 2, 2, 'Building 1', '1', 1, 8, '1', 'F', NULL, NULL, 'Building 1 Floor#1 Flat#8, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(29, 2, 2, 'Building 1', '1', 1, 9, '1', 'F', NULL, NULL, 'Building 1 Floor#1 Flat#9, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(30, 2, 2, 'Building 1', '1', 1, 10, '1', 'F', NULL, NULL, 'Building 1 Floor#1 Flat#10, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(31, 2, 2, 'Building 1', '1', 2, 1, '1', 'F', NULL, NULL, 'Building 1 Floor#2 Flat#1, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(32, 2, 2, 'Building 1', '1', 2, 2, '1', 'F', NULL, NULL, 'Building 1 Floor#2 Flat#2, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(33, 2, 2, 'Building 1', '1', 2, 3, '1', 'F', NULL, NULL, 'Building 1 Floor#2 Flat#3, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(34, 2, 2, 'Building 1', '1', 2, 4, '1', 'F', NULL, NULL, 'Building 1 Floor#2 Flat#4, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(35, 2, 2, 'Building 1', '1', 2, 5, '1', 'F', NULL, NULL, 'Building 1 Floor#2 Flat#5, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(36, 2, 2, 'Building 1', '1', 2, 6, '1', 'F', NULL, NULL, 'Building 1 Floor#2 Flat#6, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(37, 2, 2, 'Building 1', '1', 2, 7, '1', 'F', NULL, NULL, 'Building 1 Floor#2 Flat#7, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(38, 2, 2, 'Building 1', '1', 2, 8, '1', 'F', NULL, NULL, 'Building 1 Floor#2 Flat#8, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(39, 2, 2, 'Building 1', '1', 2, 9, '1', 'F', NULL, NULL, 'Building 1 Floor#2 Flat#9, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(40, 2, 2, 'Building 1', '1', 2, 10, '1', 'F', NULL, NULL, 'Building 1 Floor#2 Flat#10, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(41, 2, 2, 'Building 1', '1', 3, 1, '1', 'F', NULL, NULL, 'Building 1 Floor#3 Flat#1, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(42, 2, 2, 'Building 1', '1', 3, 2, '1', 'F', NULL, NULL, 'Building 1 Floor#3 Flat#2, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(43, 2, 2, 'Building 1', '1', 3, 3, '1', 'F', NULL, NULL, 'Building 1 Floor#3 Flat#3, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(44, 2, 2, 'Building 1', '1', 3, 4, '1', 'F', NULL, NULL, 'Building 1 Floor#3 Flat#4, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(45, 2, 2, 'Building 1', '1', 3, 5, '1', 'F', NULL, NULL, 'Building 1 Floor#3 Flat#5, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(46, 2, 2, 'Building 1', '1', 3, 6, '1', 'F', NULL, NULL, 'Building 1 Floor#3 Flat#6, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(47, 2, 2, 'Building 1', '1', 3, 7, '1', 'F', NULL, NULL, 'Building 1 Floor#3 Flat#7, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(48, 2, 2, 'Building 1', '1', 3, 8, '1', 'F', NULL, NULL, 'Building 1 Floor#3 Flat#8, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(49, 2, 2, 'Building 1', '1', 3, 9, '1', 'F', NULL, NULL, 'Building 1 Floor#3 Flat#9, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(50, 2, 2, 'Building 1', '1', 3, 10, '1', 'F', NULL, NULL, 'Building 1 Floor#3 Flat#10, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(51, 2, 2, 'Building 1', '1', 4, 1, '1', 'F', NULL, NULL, 'Building 1 Floor#4 Flat#1, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(52, 2, 2, 'Building 1', '1', 4, 2, '1', 'F', NULL, NULL, 'Building 1 Floor#4 Flat#2, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(53, 2, 2, 'Building 1', '1', 4, 3, '1', 'F', NULL, NULL, 'Building 1 Floor#4 Flat#3, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(54, 2, 2, 'Building 1', '1', 4, 4, '1', 'F', NULL, NULL, 'Building 1 Floor#4 Flat#4, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(55, 2, 2, 'Building 1', '1', 4, 5, '1', 'F', NULL, NULL, 'Building 1 Floor#4 Flat#5, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(56, 2, 2, 'Building 1', '1', 4, 6, '1', 'F', NULL, NULL, 'Building 1 Floor#4 Flat#6, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(57, 2, 2, 'Building 1', '1', 4, 7, '1', 'F', NULL, NULL, 'Building 1 Floor#4 Flat#7, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(58, 2, 2, 'Building 1', '1', 4, 8, '1', 'F', NULL, NULL, 'Building 1 Floor#4 Flat#8, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(59, 2, 2, 'Building 1', '1', 4, 9, '1', 'F', NULL, NULL, 'Building 1 Floor#4 Flat#9, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(60, 2, 2, 'Building 1', '1', 4, 10, '1', 'F', NULL, NULL, 'Building 1 Floor#4 Flat#10, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(61, 2, 2, 'Building 1', '1', 5, 1, '1', 'F', NULL, NULL, 'Building 1 Floor#5 Flat#1, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(62, 2, 2, 'Building 1', '1', 5, 2, '1', 'F', NULL, NULL, 'Building 1 Floor#5 Flat#2, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(63, 2, 2, 'Building 1', '1', 5, 3, '1', 'F', NULL, NULL, 'Building 1 Floor#5 Flat#3, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(64, 2, 2, 'Building 1', '1', 5, 4, '1', 'F', NULL, NULL, 'Building 1 Floor#5 Flat#4, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(65, 2, 2, 'Building 1', '1', 5, 5, '1', 'F', NULL, NULL, 'Building 1 Floor#5 Flat#5, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(66, 2, 2, 'Building 1', '1', 5, 6, '1', 'F', NULL, NULL, 'Building 1 Floor#5 Flat#6, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(67, 2, 2, 'Building 1', '1', 5, 7, '1', 'F', NULL, NULL, 'Building 1 Floor#5 Flat#7, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(68, 2, 2, 'Building 1', '1', 5, 8, '1', 'F', NULL, NULL, 'Building 1 Floor#5 Flat#8, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(69, 2, 2, 'Building 1', '1', 5, 9, '1', 'F', NULL, NULL, 'Building 1 Floor#5 Flat#9, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 0, 'active', '2020-01-02 08:48:33', '2020-01-02 08:48:33'),
(70, 2, 2, 'Building 1', '1', 5, 10, '1', 'F', NULL, NULL, 'Building 1 Floor#5 Flat#10, St# 1 Block F, Johar Town, 54000 Kajang, Selangor, MY', 2, 1, 1, 80, 'sq_ft', 1, 'active', '2020-01-02 08:48:00', '2020-01-02 11:37:26'),
(71, 2, 4, 'Terrace 1', '1', 1, 1, '0', '0', NULL, NULL, 'Terrace# 1, Floor# 1 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(72, 2, 4, 'Terrace 1', '1', 2, 1, '0', '0', NULL, NULL, 'Terrace# 1, Floor# 2 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(73, 2, 4, 'Terrace 1', '1', 3, 1, '0', '0', NULL, NULL, 'Terrace# 1, Floor# 3 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(74, 2, 4, 'Terrace 2', '2', 1, 1, '0', '0', NULL, NULL, 'Terrace# 2, Floor# 1 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(75, 2, 4, 'Terrace 2', '2', 2, 1, '0', '0', NULL, NULL, 'Terrace# 2, Floor# 2 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(76, 2, 4, 'Terrace 2', '2', 3, 1, '0', '0', NULL, NULL, 'Terrace# 2, Floor# 3 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(77, 2, 4, 'Terrace 3', '3', 1, 1, '0', '0', NULL, NULL, 'Terrace# 3, Floor# 1 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(78, 2, 4, 'Terrace 3', '3', 2, 1, '0', '0', NULL, NULL, 'Terrace# 3, Floor# 2 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(79, 2, 4, 'Terrace 3', '3', 3, 1, '0', '0', NULL, NULL, 'Terrace# 3, Floor# 3 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(80, 2, 4, 'Terrace 4', '4', 1, 1, '0', '0', NULL, NULL, 'Terrace# 4, Floor# 1 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(81, 2, 4, 'Terrace 4', '4', 2, 1, '0', '0', NULL, NULL, 'Terrace# 4, Floor# 2 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(82, 2, 4, 'Terrace 4', '4', 3, 1, '0', '0', NULL, NULL, 'Terrace# 4, Floor# 3 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(83, 2, 4, 'Terrace 5', '5', 1, 1, '0', '0', NULL, NULL, 'Terrace# 5, Floor# 1 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(84, 2, 4, 'Terrace 5', '5', 2, 1, '0', '0', NULL, NULL, 'Terrace# 5, Floor# 2 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(85, 2, 4, 'Terrace 5', '5', 3, 1, '0', '0', NULL, NULL, 'Terrace# 5, Floor# 3 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(86, 2, 4, 'Terrace 6', '6', 1, 1, '0', '0', NULL, NULL, 'Terrace# 6, Floor# 1 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(87, 2, 4, 'Terrace 6', '6', 2, 1, '0', '0', NULL, NULL, 'Terrace# 6, Floor# 2 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(88, 2, 4, 'Terrace 6', '6', 3, 1, '0', '0', NULL, NULL, 'Terrace# 6, Floor# 3 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(89, 2, 4, 'Terrace 7', '7', 1, 1, '0', '0', NULL, NULL, 'Terrace# 7, Floor# 1 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(90, 2, 4, 'Terrace 7', '7', 2, 1, '0', '0', NULL, NULL, 'Terrace# 7, Floor# 2 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(91, 2, 4, 'Terrace 7', '7', 3, 1, '0', '0', NULL, NULL, 'Terrace# 7, Floor# 3 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(92, 2, 4, 'Terrace 8', '8', 1, 1, '0', '0', NULL, NULL, 'Terrace# 8, Floor# 1 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(93, 2, 4, 'Terrace 8', '8', 2, 1, '0', '0', NULL, NULL, 'Terrace# 8, Floor# 2 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(94, 2, 4, 'Terrace 8', '8', 3, 1, '0', '0', NULL, NULL, 'Terrace# 8, Floor# 3 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(95, 2, 4, 'Terrace 9', '9', 1, 1, '0', '0', NULL, NULL, 'Terrace# 9, Floor# 1 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(96, 2, 4, 'Terrace 9', '9', 2, 1, '0', '0', NULL, NULL, 'Terrace# 9, Floor# 2 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(97, 2, 4, 'Terrace 9', '9', 3, 1, '0', '0', NULL, NULL, 'Terrace# 9, Floor# 3 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(98, 2, 4, 'Terrace 10', '10', 1, 1, '0', '0', NULL, NULL, 'Terrace# 10, Floor# 1 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(99, 2, 4, 'Terrace 10', '10', 2, 1, '0', '0', NULL, NULL, 'Terrace# 10, Floor# 2 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(100, 2, 4, 'Terrace 10', '10', 3, 1, '0', '0', NULL, NULL, 'Terrace# 10, Floor# 3 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(101, 2, 4, 'Terrace 11', '11', 1, 1, '0', '0', NULL, NULL, 'Terrace# 11, Floor# 1 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(102, 2, 4, 'Terrace 11', '11', 2, 1, '0', '0', NULL, NULL, 'Terrace# 11, Floor# 2 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(103, 2, 4, 'Terrace 11', '11', 3, 1, '0', '0', NULL, NULL, 'Terrace# 11, Floor# 3 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(104, 2, 4, 'Terrace 12', '12', 1, 1, '0', '0', NULL, NULL, 'Terrace# 12, Floor# 1 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(105, 2, 4, 'Terrace 12', '12', 2, 1, '0', '0', NULL, NULL, 'Terrace# 12, Floor# 2 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(106, 2, 4, 'Terrace 12', '12', 3, 1, '0', '0', NULL, NULL, 'Terrace# 12, Floor# 3 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(107, 2, 4, 'Terrace 13', '13', 1, 1, '0', '0', NULL, NULL, 'Terrace# 13, Floor# 1 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(108, 2, 4, 'Terrace 13', '13', 2, 1, '0', '0', NULL, NULL, 'Terrace# 13, Floor# 2 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(109, 2, 4, 'Terrace 13', '13', 3, 1, '0', '0', NULL, NULL, 'Terrace# 13, Floor# 3 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(110, 2, 4, 'Terrace 14', '14', 1, 1, '0', '0', NULL, NULL, 'Terrace# 14, Floor# 1 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(111, 2, 4, 'Terrace 14', '14', 2, 1, '0', '0', NULL, NULL, 'Terrace# 14, Floor# 2 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(112, 2, 4, 'Terrace 14', '14', 3, 1, '0', '0', NULL, NULL, 'Terrace# 14, Floor# 3 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(113, 2, 4, 'Terrace 15', '15', 1, 1, '0', '0', NULL, NULL, 'Terrace# 15, Floor# 1 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(114, 2, 4, 'Terrace 15', '15', 2, 1, '0', '0', NULL, NULL, 'Terrace# 15, Floor# 2 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(115, 2, 4, 'Terrace 15', '15', 3, 1, '0', '0', NULL, NULL, 'Terrace# 15, Floor# 3 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(116, 2, 4, 'Terrace 16', '16', 1, 1, '0', '0', NULL, NULL, 'Terrace# 16, Floor# 1 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(117, 2, 4, 'Terrace 16', '16', 2, 1, '0', '0', NULL, NULL, 'Terrace# 16, Floor# 2 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(118, 2, 4, 'Terrace 16', '16', 3, 1, '0', '0', NULL, NULL, 'Terrace# 16, Floor# 3 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(119, 2, 4, 'Terrace 17', '17', 1, 1, '0', '0', NULL, NULL, 'Terrace# 17, Floor# 1 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(120, 2, 4, 'Terrace 17', '17', 2, 1, '0', '0', NULL, NULL, 'Terrace# 17, Floor# 2 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(121, 2, 4, 'Terrace 17', '17', 3, 1, '0', '0', NULL, NULL, 'Terrace# 17, Floor# 3 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(122, 2, 4, 'Terrace 18', '18', 1, 1, '0', '0', NULL, NULL, 'Terrace# 18, Floor# 1 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(123, 2, 4, 'Terrace 18', '18', 2, 1, '0', '0', NULL, NULL, 'Terrace# 18, Floor# 2 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(124, 2, 4, 'Terrace 18', '18', 3, 1, '0', '0', NULL, NULL, 'Terrace# 18, Floor# 3 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(125, 2, 4, 'Terrace 19', '19', 1, 1, '0', '0', NULL, NULL, 'Terrace# 19, Floor# 1 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(126, 2, 4, 'Terrace 19', '19', 2, 1, '0', '0', NULL, NULL, 'Terrace# 19, Floor# 2 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(127, 2, 4, 'Terrace 19', '19', 3, 1, '0', '0', NULL, NULL, 'Terrace# 19, Floor# 3 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(128, 2, 4, 'Terrace 20', '20', 1, 1, '0', '0', NULL, NULL, 'Terrace# 20, Floor# 1 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(129, 2, 4, 'Terrace 20', '20', 2, 1, '0', '0', NULL, NULL, 'Terrace# 20, Floor# 2 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01'),
(130, 2, 4, 'Terrace 20', '20', 3, 1, '0', '0', NULL, NULL, 'Terrace# 20, Floor# 3 St# 0 Block 0 Johar Town, 54000 Kajang, Selangor, MY', 1, 1, 1, 0, 'sq_ft', 0, 'active', '2020-01-09 07:02:01', '2020-01-09 07:02:01');

-- --------------------------------------------------------

--
-- Table structure for table `address_assets`
--

DROP TABLE IF EXISTS `address_assets`;
CREATE TABLE IF NOT EXISTS `address_assets` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `address_assets`
--

INSERT INTO `address_assets` (`id`, `type`, `address_id`, `name`, `description`, `image`, `asset_no`, `status`, `data`, `created_at`, `updated_at`) VALUES
(1, 'vehicle', 2, 'Honda City', 'Honda City (5th Generation) was launched on 31st January 2009 by Atlas Honda Cars Pakistan', 'address-assets\\December2019\\wVCBI3OkPLwOuNlCHH1S.jpg', '12345', 'active', NULL, '2019-12-17 02:39:00', '2019-12-17 02:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `address_types`
--

DROP TABLE IF EXISTS `address_types`;
CREATE TABLE IF NOT EXISTS `address_types` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_add_view` tinyint(1) DEFAULT '1',
  `has_stories` tinyint(1) NOT NULL DEFAULT '0',
  `stories` int(11) NOT NULL DEFAULT '0',
  `flats` int(11) NOT NULL DEFAULT '0',
  `address_format` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `address_types`
--

INSERT INTO `address_types` (`id`, `title`, `show_add_view`, `has_stories`, `stories`, `flats`, `address_format`, `status`, `created_at`, `updated_at`) VALUES
(1, 'House', 1, 0, 0, 0, 'House# [HOUSE]', 'active', '2019-12-18 11:55:00', '2019-12-31 02:02:03'),
(2, 'Building', 1, 1, 0, 0, 'Building# [HOUSE], Floor# [FLOOR], Flat# [FLAT]', 'active', '2019-12-18 11:55:00', '2020-01-09 07:16:14'),
(3, 'Flat', 0, 0, 0, 0, 'Building# [HOUSE], Floor# [STORY], Flat# [FLAT]', 'active', '2019-12-31 01:58:00', '2019-12-31 02:02:44'),
(4, 'Terrace', 1, 1, 3, 1, 'Terrace# [HOUSE], Floor# [FLOOR]', 'active', '2020-01-08 08:55:00', '2020-01-09 02:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `api_keys`
--

DROP TABLE IF EXISTS `api_keys`;
CREATE TABLE IF NOT EXISTS `api_keys` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `api_keys_name_index` (`name`),
  KEY `api_keys_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_keys`
--

INSERT INTO `api_keys` (`id`, `name`, `key`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'app1', 'v76neBD67GxP9xaYqCK2AfJ8syd7QpsbMvcvlHTDE2djK0jgWUfMXUgV88iIyjHz', 1, '2019-12-16 04:14:21', '2019-12-16 04:14:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `api_key_access_events`
--

DROP TABLE IF EXISTS `api_key_access_events`;
CREATE TABLE IF NOT EXISTS `api_key_access_events` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `api_key_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `api_key_access_events_ip_address_index` (`ip_address`),
  KEY `api_key_access_events_api_key_id_foreign` (`api_key_id`)
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_key_access_events`
--

INSERT INTO `api_key_access_events` (`id`, `api_key_id`, `ip_address`, `url`, `created_at`, `updated_at`) VALUES
(1, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/user/1', '2019-12-16 05:37:29', '2019-12-16 05:37:29'),
(2, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login?email=admin%40admin.com&password=password', '2019-12-16 07:00:01', '2019-12-16 07:00:01'),
(3, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-16 07:00:10', '2019-12-16 07:00:10'),
(4, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-16 07:00:48', '2019-12-16 07:00:48'),
(5, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-16 07:03:01', '2019-12-16 07:03:01'),
(6, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-16 07:03:11', '2019-12-16 07:03:11'),
(7, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-16 07:05:11', '2019-12-16 07:05:11'),
(8, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-16 07:06:14', '2019-12-16 07:06:14'),
(9, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-16 07:06:40', '2019-12-16 07:06:40'),
(10, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-16 07:06:56', '2019-12-16 07:06:56'),
(11, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-16 07:07:18', '2019-12-16 07:07:18'),
(12, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-16 07:07:33', '2019-12-16 07:07:33'),
(13, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-16 07:15:18', '2019-12-16 07:15:18'),
(14, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-16 07:17:14', '2019-12-16 07:17:14'),
(15, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-16 07:17:16', '2019-12-16 07:17:16'),
(16, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-16 07:23:26', '2019-12-16 07:23:26'),
(17, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-16 07:47:01', '2019-12-16 07:47:01'),
(18, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-16 07:47:17', '2019-12-16 07:47:17'),
(19, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-16 07:47:38', '2019-12-16 07:47:38'),
(20, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-16 07:47:54', '2019-12-16 07:47:54'),
(21, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-16 07:48:07', '2019-12-16 07:48:07'),
(22, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-16 07:49:34', '2019-12-16 07:49:34'),
(23, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-16 07:52:54', '2019-12-16 07:52:54'),
(24, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-16 07:52:59', '2019-12-16 07:52:59'),
(25, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-16 07:53:05', '2019-12-16 07:53:05'),
(26, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-16 07:53:10', '2019-12-16 07:53:10'),
(27, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-16 07:53:27', '2019-12-16 07:53:27'),
(28, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-16 07:58:40', '2019-12-16 07:58:40'),
(29, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-16 07:59:06', '2019-12-16 07:59:06'),
(30, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-16 08:00:01', '2019-12-16 08:00:01'),
(31, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-16 08:00:15', '2019-12-16 08:00:15'),
(32, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-16 08:03:51', '2019-12-16 08:03:51'),
(33, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-16 08:04:05', '2019-12-16 08:04:05'),
(34, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-16 08:04:22', '2019-12-16 08:04:22'),
(35, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-16 08:05:30', '2019-12-16 08:05:30'),
(36, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/user?id=', '2019-12-16 08:10:58', '2019-12-16 08:10:58'),
(37, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/user?id=1', '2019-12-16 08:11:05', '2019-12-16 08:11:05'),
(38, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/user?id=2', '2019-12-16 08:11:14', '2019-12-16 08:11:14'),
(39, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/user?id=3', '2019-12-16 08:11:19', '2019-12-16 08:11:19'),
(40, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/user?id=5', '2019-12-16 08:11:25', '2019-12-16 08:11:25'),
(41, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-16 08:26:04', '2019-12-16 08:26:04'),
(42, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-16 08:26:31', '2019-12-16 08:26:31'),
(43, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-16 08:26:48', '2019-12-16 08:26:48'),
(44, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-16 08:27:18', '2019-12-16 08:27:18'),
(45, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-16 08:41:53', '2019-12-16 08:41:53'),
(46, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-16 08:42:06', '2019-12-16 08:42:06'),
(47, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-16 08:44:03', '2019-12-16 08:44:03'),
(48, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-16 08:44:07', '2019-12-16 08:44:07'),
(49, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-16 08:44:13', '2019-12-16 08:44:13'),
(50, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-16 08:46:54', '2019-12-16 08:46:54'),
(51, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-17 02:15:04', '2019-12-17 02:15:04'),
(52, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-17 02:16:27', '2019-12-17 02:16:27'),
(53, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-17 02:17:51', '2019-12-17 02:17:51'),
(54, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-17 02:19:04', '2019-12-17 02:19:04'),
(55, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-17 02:19:33', '2019-12-17 02:19:33'),
(56, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-17 02:20:12', '2019-12-17 02:20:12'),
(57, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-17 02:20:28', '2019-12-17 02:20:28'),
(58, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-17 02:21:19', '2019-12-17 02:21:19'),
(59, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-17 02:21:38', '2019-12-17 02:21:38'),
(60, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-17 02:22:01', '2019-12-17 02:22:01'),
(61, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-17 02:23:17', '2019-12-17 02:23:17'),
(62, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-17 02:51:01', '2019-12-17 02:51:01'),
(63, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-17 02:51:17', '2019-12-17 02:51:17'),
(64, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-17 02:53:43', '2019-12-17 02:53:43'),
(65, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-17 02:54:13', '2019-12-17 02:54:13'),
(66, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-17 02:54:58', '2019-12-17 02:54:58'),
(67, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-17 02:56:51', '2019-12-17 02:56:51'),
(68, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-17 02:57:52', '2019-12-17 02:57:52'),
(69, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-17 02:58:34', '2019-12-17 02:58:34'),
(70, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-17 02:59:23', '2019-12-17 02:59:23'),
(71, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-17 02:59:54', '2019-12-17 02:59:54'),
(72, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-17 03:07:31', '2019-12-17 03:07:31'),
(73, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-17 03:08:20', '2019-12-17 03:08:20'),
(74, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/user?id=2', '2019-12-17 03:10:28', '2019-12-17 03:10:28'),
(75, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-23 04:30:44', '2019-12-23 04:30:44'),
(76, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-23 04:34:02', '2019-12-23 04:34:02'),
(77, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-23 04:34:41', '2019-12-23 04:34:41'),
(78, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/invite_visitor', '2019-12-23 05:54:14', '2019-12-23 05:54:14'),
(79, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/invite_visitor', '2019-12-23 05:58:26', '2019-12-23 05:58:26'),
(80, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/invite_visitor', '2019-12-23 06:02:02', '2019-12-23 06:02:02'),
(81, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/invite_visitor', '2019-12-23 06:05:40', '2019-12-23 06:05:40'),
(82, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/invite_visitor', '2019-12-23 06:06:08', '2019-12-23 06:06:08'),
(83, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/invite_visitor', '2019-12-23 06:16:46', '2019-12-23 06:16:46'),
(84, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-23 06:23:17', '2019-12-23 06:23:17'),
(85, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-23 06:23:43', '2019-12-23 06:23:43'),
(86, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-23 06:23:48', '2019-12-23 06:23:48'),
(87, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-23 06:24:09', '2019-12-23 06:24:09'),
(88, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-23 06:24:38', '2019-12-23 06:24:38'),
(89, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-23 06:24:54', '2019-12-23 06:24:54'),
(90, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-23 06:26:19', '2019-12-23 06:26:19'),
(91, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-23 06:27:35', '2019-12-23 06:27:35'),
(92, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-23 06:30:44', '2019-12-23 06:30:44'),
(93, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-23 06:30:58', '2019-12-23 06:30:58'),
(94, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-23 06:44:54', '2019-12-23 06:44:54'),
(95, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-23 06:45:52', '2019-12-23 06:45:52'),
(96, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-23 06:47:46', '2019-12-23 06:47:46'),
(97, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-23 06:48:16', '2019-12-23 06:48:16'),
(98, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/invite_visitor', '2019-12-23 07:21:02', '2019-12-23 07:21:02'),
(99, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-23 07:21:42', '2019-12-23 07:21:42'),
(100, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-23 07:22:29', '2019-12-23 07:22:29'),
(101, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-23 07:22:39', '2019-12-23 07:22:39'),
(102, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-23 07:23:06', '2019-12-23 07:23:06'),
(103, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-23 07:23:34', '2019-12-23 07:23:34'),
(104, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-23 07:23:58', '2019-12-23 07:23:58'),
(105, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-23 07:27:58', '2019-12-23 07:27:58'),
(106, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-23 07:28:12', '2019-12-23 07:28:12'),
(107, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/invite_visitor', '2019-12-24 06:47:25', '2019-12-24 06:47:25'),
(108, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 08:15:45', '2019-12-24 08:15:45'),
(109, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 08:17:11', '2019-12-24 08:17:11'),
(110, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 08:20:01', '2019-12-24 08:20:01'),
(111, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 08:23:15', '2019-12-24 08:23:15'),
(112, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 08:25:54', '2019-12-24 08:25:54'),
(113, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 08:28:57', '2019-12-24 08:28:57'),
(114, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 08:33:10', '2019-12-24 08:33:10'),
(115, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 08:33:20', '2019-12-24 08:33:20'),
(116, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 08:43:33', '2019-12-24 08:43:33'),
(117, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 08:48:40', '2019-12-24 08:48:40'),
(118, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 09:00:10', '2019-12-24 09:00:10'),
(119, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 09:00:30', '2019-12-24 09:00:30'),
(120, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 09:00:42', '2019-12-24 09:00:42'),
(121, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 09:02:09', '2019-12-24 09:02:09'),
(122, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 09:04:33', '2019-12-24 09:04:33'),
(123, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 09:05:31', '2019-12-24 09:05:31'),
(124, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 09:05:46', '2019-12-24 09:05:46'),
(125, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 09:07:43', '2019-12-24 09:07:43'),
(126, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 09:09:35', '2019-12-24 09:09:35'),
(127, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 09:10:05', '2019-12-24 09:10:05'),
(128, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 09:10:22', '2019-12-24 09:10:22'),
(129, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 09:10:33', '2019-12-24 09:10:33'),
(130, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 09:15:42', '2019-12-24 09:15:42'),
(131, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 09:16:07', '2019-12-24 09:16:07'),
(132, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 09:16:28', '2019-12-24 09:16:28'),
(133, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 09:16:39', '2019-12-24 09:16:39'),
(134, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 09:16:52', '2019-12-24 09:16:52'),
(135, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-24 09:17:37', '2019-12-24 09:17:37'),
(136, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/report_issue', '2019-12-26 02:57:45', '2019-12-26 02:57:45'),
(137, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/add_lost_found', '2019-12-26 03:21:19', '2019-12-26 03:21:19'),
(138, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/add_lost_found', '2019-12-26 03:22:13', '2019-12-26 03:22:13'),
(139, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/add_lost_found', '2019-12-26 03:23:07', '2019-12-26 03:23:07'),
(140, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/add_lost_found', '2019-12-26 03:24:09', '2019-12-26 03:24:09'),
(141, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/add_lost_found', '2019-12-26 03:25:40', '2019-12-26 03:25:40'),
(142, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/add_lost_found', '2019-12-26 03:29:04', '2019-12-26 03:29:04'),
(143, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/user?id=2', '2019-12-26 05:09:45', '2019-12-26 05:09:45'),
(144, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/list_issues', '2019-12-26 05:10:47', '2019-12-26 05:10:47'),
(145, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/list_issues?community_id=1', '2019-12-26 05:11:27', '2019-12-26 05:11:27'),
(146, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/list_issues?community_id=2', '2019-12-26 05:11:39', '2019-12-26 05:11:39'),
(147, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/list_issues?community_id=1', '2019-12-26 05:11:46', '2019-12-26 05:11:46'),
(148, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/list_issues?community_id=1', '2019-12-26 05:12:30', '2019-12-26 05:12:30'),
(149, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/list_issues?community_id=2', '2019-12-26 05:12:45', '2019-12-26 05:12:45'),
(150, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/list_issues?community_id=2', '2019-12-26 05:13:13', '2019-12-26 05:13:13'),
(151, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/list_issues?community_id=1', '2019-12-26 05:13:17', '2019-12-26 05:13:17'),
(152, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/lost-found/add', '2019-12-26 05:17:54', '2019-12-26 05:17:54'),
(153, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/issues/add', '2019-12-26 05:18:19', '2019-12-26 05:18:19'),
(154, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/issues/list?community_id=1', '2019-12-26 05:19:20', '2019-12-26 05:19:20'),
(155, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/lost-found/list?community_id=1', '2019-12-26 05:19:49', '2019-12-26 05:19:49'),
(156, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/lost-found/list?community_id=1', '2019-12-26 05:21:24', '2019-12-26 05:21:24'),
(157, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/lost-found/list?community_id=1', '2019-12-26 05:22:41', '2019-12-26 05:22:41'),
(158, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/issues/list?community_id=1', '2019-12-26 05:22:47', '2019-12-26 05:22:47'),
(159, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/security-updates/list?community_id=1', '2019-12-26 09:38:56', '2019-12-26 09:38:56'),
(160, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/recommendations/list?community_id=1', '2019-12-26 09:48:36', '2019-12-26 09:48:36'),
(161, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/security-updates/list?community_id=1', '2019-12-27 10:35:35', '2019-12-27 10:35:35'),
(162, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/lost-found/list?community_id=1', '2019-12-27 10:35:41', '2019-12-27 10:35:41'),
(163, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/vehicle_verification', '2019-12-27 10:36:28', '2019-12-27 10:36:28'),
(164, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/verification/vehicle', '2019-12-27 10:38:11', '2019-12-27 10:38:11'),
(165, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/visitor/invite', '2019-12-27 10:38:40', '2019-12-27 10:38:40'),
(166, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 01:31:37', '2019-12-30 01:31:37'),
(167, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 01:33:18', '2019-12-30 01:33:18'),
(168, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 01:33:39', '2019-12-30 01:33:39'),
(169, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 01:34:24', '2019-12-30 01:34:24'),
(170, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 01:34:42', '2019-12-30 01:34:42'),
(171, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 01:35:03', '2019-12-30 01:35:03'),
(172, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 01:35:19', '2019-12-30 01:35:19'),
(173, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 01:35:47', '2019-12-30 01:35:47'),
(174, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 01:38:07', '2019-12-30 01:38:07'),
(175, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 01:40:46', '2019-12-30 01:40:46'),
(176, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 01:40:55', '2019-12-30 01:40:55'),
(177, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 01:41:07', '2019-12-30 01:41:07'),
(178, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 01:42:24', '2019-12-30 01:42:24'),
(179, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 01:46:36', '2019-12-30 01:46:36'),
(180, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 01:46:49', '2019-12-30 01:46:49'),
(181, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 01:47:01', '2019-12-30 01:47:01'),
(182, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 01:47:24', '2019-12-30 01:47:24'),
(183, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 01:48:09', '2019-12-30 01:48:09'),
(184, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 01:48:24', '2019-12-30 01:48:24'),
(185, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-30 01:49:24', '2019-12-30 01:49:24'),
(186, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-30 01:55:01', '2019-12-30 01:55:01'),
(187, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-30 01:55:18', '2019-12-30 01:55:18'),
(188, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-30 01:55:45', '2019-12-30 01:55:45'),
(189, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-30 01:55:55', '2019-12-30 01:55:55'),
(190, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-30 01:56:11', '2019-12-30 01:56:11'),
(191, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-30 01:56:16', '2019-12-30 01:56:16'),
(192, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/user?id=2', '2019-12-30 01:56:46', '2019-12-30 01:56:46'),
(193, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/user/2', '2019-12-30 01:59:01', '2019-12-30 01:59:01'),
(194, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/user?id=2', '2019-12-30 01:59:36', '2019-12-30 01:59:36'),
(195, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/verification/vehicle', '2019-12-30 02:00:05', '2019-12-30 02:00:05'),
(196, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/verification/vehicle', '2019-12-30 02:00:35', '2019-12-30 02:00:35'),
(197, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/verification/vehicle', '2019-12-30 02:00:59', '2019-12-30 02:00:59'),
(198, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 02:14:13', '2019-12-30 02:14:13'),
(199, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 02:14:26', '2019-12-30 02:14:26'),
(200, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 02:17:20', '2019-12-30 02:17:20'),
(201, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 02:18:16', '2019-12-30 02:18:16'),
(202, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 02:25:35', '2019-12-30 02:25:35'),
(203, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 02:25:48', '2019-12-30 02:25:48'),
(204, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 02:26:01', '2019-12-30 02:26:01'),
(205, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 02:26:54', '2019-12-30 02:26:54'),
(206, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 02:27:00', '2019-12-30 02:27:00'),
(207, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-30 02:27:11', '2019-12-30 02:27:11'),
(208, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/security-updates/list?community_id=1', '2019-12-30 02:39:27', '2019-12-30 02:39:27'),
(209, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-30 04:11:32', '2019-12-30 04:11:32'),
(210, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-31 04:14:13', '2019-12-31 04:14:13'),
(211, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-31 04:16:06', '2019-12-31 04:16:06'),
(212, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-31 04:17:20', '2019-12-31 04:17:20'),
(213, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-31 04:17:29', '2019-12-31 04:17:29'),
(214, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-31 04:17:48', '2019-12-31 04:17:48'),
(215, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-31 04:18:30', '2019-12-31 04:18:30'),
(216, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/verification/vehicle', '2019-12-31 04:49:45', '2019-12-31 04:49:45'),
(217, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/verification/vehicle', '2019-12-31 04:49:52', '2019-12-31 04:49:52'),
(218, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-31 05:02:27', '2019-12-31 05:02:27'),
(219, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2019-12-31 05:02:45', '2019-12-31 05:02:45'),
(220, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-31 05:09:58', '2019-12-31 05:09:58'),
(221, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-31 05:10:17', '2019-12-31 05:10:17'),
(222, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/register', '2019-12-31 05:10:53', '2019-12-31 05:10:53'),
(223, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/user?id=2', '2020-01-01 02:25:22', '2020-01-01 02:25:22'),
(224, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/security-updates/list?community_id=1', '2020-01-03 01:30:45', '2020-01-03 01:30:45'),
(225, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/address/get?id=1', '2020-01-03 01:32:16', '2020-01-03 01:32:16'),
(226, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/address/get?id=1', '2020-01-03 01:32:32', '2020-01-03 01:32:32'),
(227, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/address/get?id=1', '2020-01-03 01:32:55', '2020-01-03 01:32:55'),
(228, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/address/get?id=1', '2020-01-03 01:33:36', '2020-01-03 01:33:36'),
(229, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/address/list?id=1', '2020-01-03 01:33:48', '2020-01-03 01:33:48'),
(230, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/address/list?community_id=1', '2020-01-03 01:33:57', '2020-01-03 01:33:57'),
(231, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/address/list?community_id=2', '2020-01-03 01:35:13', '2020-01-03 01:35:13'),
(232, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/community/list', '2020-01-03 01:38:18', '2020-01-03 01:38:18'),
(233, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/community/list', '2020-01-03 01:38:53', '2020-01-03 01:38:53'),
(234, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/community/get?id=1', '2020-01-03 01:42:39', '2020-01-03 01:42:39'),
(235, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/activity/list?community_id=1', '2020-01-03 02:09:44', '2020-01-03 02:09:44'),
(236, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/activity/list?community_id=1', '2020-01-03 02:10:31', '2020-01-03 02:10:31'),
(237, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/activity/list?community_id=1', '2020-01-03 02:12:17', '2020-01-03 02:12:17'),
(238, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/activity/list?community_id=1', '2020-01-03 02:15:16', '2020-01-03 02:15:16'),
(239, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/activity/list?community_id=1', '2020-01-03 02:15:49', '2020-01-03 02:15:49'),
(240, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/activity/list?community_id=1', '2020-01-03 02:18:47', '2020-01-03 02:18:47'),
(241, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/activity/list?community_id=1', '2020-01-03 02:20:22', '2020-01-03 02:20:22'),
(242, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/activity/list?community_id=1', '2020-01-03 02:22:01', '2020-01-03 02:22:01'),
(243, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/activity/list?community_id=1', '2020-01-03 02:22:43', '2020-01-03 02:22:43'),
(244, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/activity/list?community_id=1', '2020-01-03 02:23:02', '2020-01-03 02:23:02'),
(245, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/activity/list?community_id=1', '2020-01-03 02:30:28', '2020-01-03 02:30:28'),
(246, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/activity/list?community_id=1', '2020-01-03 02:58:03', '2020-01-03 02:58:03'),
(247, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/activity/list?community_id=1', '2020-01-03 02:58:51', '2020-01-03 02:58:51'),
(248, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/activity/list?community_id=1', '2020-01-03 03:00:48', '2020-01-03 03:00:48'),
(249, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/activity/list?community_id=1', '2020-01-03 03:03:56', '2020-01-03 03:03:56'),
(250, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/activity/list?community_id=1', '2020-01-03 03:04:19', '2020-01-03 03:04:19'),
(251, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/activity/list?community_id=1', '2020-01-03 03:04:43', '2020-01-03 03:04:43'),
(252, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/activity/list?community_id=1', '2020-01-03 03:14:40', '2020-01-03 03:14:40'),
(253, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/activity/list?community_id=1', '2020-01-03 03:20:42', '2020-01-03 03:20:42'),
(254, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2020-01-03 03:23:28', '2020-01-03 03:23:28'),
(255, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2020-01-03 03:31:55', '2020-01-03 03:31:55'),
(256, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2020-01-03 03:32:29', '2020-01-03 03:32:29'),
(257, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2020-01-03 03:33:00', '2020-01-03 03:33:00'),
(258, 1, '::1', 'http://localhost/laravel/smarttownship/public/api/login', '2020-01-03 03:34:54', '2020-01-03 03:34:54');

-- --------------------------------------------------------

--
-- Table structure for table `api_key_admin_events`
--

DROP TABLE IF EXISTS `api_key_admin_events`;
CREATE TABLE IF NOT EXISTS `api_key_admin_events` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `api_key_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `api_key_admin_events_ip_address_index` (`ip_address`),
  KEY `api_key_admin_events_event_index` (`event`),
  KEY `api_key_admin_events_api_key_id_foreign` (`api_key_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_key_admin_events`
--

INSERT INTO `api_key_admin_events` (`id`, `api_key_id`, `ip_address`, `event`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', 'created', '2019-12-16 04:14:21', '2019-12-16 04:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `asset_types`
--

DROP TABLE IF EXISTS `asset_types`;
CREATE TABLE IF NOT EXISTS `asset_types` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asset_types`
--

INSERT INTO `asset_types` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Vehicle', 'active', '2019-12-13 06:24:04', '2019-12-13 06:24:04');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2019-12-12 07:01:35', '2019-12-12 07:01:35'),
(2, NULL, 1, 'Category 2', 'category-2', '2019-12-12 07:01:35', '2019-12-12 07:01:35');

-- --------------------------------------------------------

--
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
CREATE TABLE IF NOT EXISTS `communities` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_format` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `communities`
--

INSERT INTO `communities` (`id`, `name`, `description`, `banner`, `postal_code`, `city`, `state`, `country`, `address_format`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Smart Town', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'communities\\December2019\\z8GvSpOeksdKkkkHSmCz.jpg', '43000', 'Kajang', 'Selangor', 'MY', 'St# [STREET] Block [BLOCK] [COMMUNITY], [POSTAL_CODE] [CITY], [STATE], [COUNTRY]', 1, '2019-12-13 02:33:00', '2020-01-09 02:59:39'),
(2, 'Johar Town', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'communities\\December2019\\0AfWYRfZrqAQjv6TklW0.jpg', '54000', 'Kajang', 'Selangor', 'MY', 'St# [STREET] Block [BLOCK] [COMMUNITY], [POSTAL_CODE] [CITY], [STATE], [COUNTRY]', 1, '2019-12-20 05:38:46', '2020-01-09 02:59:22');

-- --------------------------------------------------------

--
-- Table structure for table `community_address_types`
--

DROP TABLE IF EXISTS `community_address_types`;
CREATE TABLE IF NOT EXISTS `community_address_types` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `address_type_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `community_address_types`
--

INSERT INTO `community_address_types` (`id`, `community_id`, `address_type_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'active', '2019-12-20 03:21:14', '2019-12-20 03:22:33'),
(2, 1, 2, 'active', '2019-12-20 03:21:14', '2019-12-20 04:47:02'),
(3, 2, 1, 'active', '2019-12-20 05:52:08', '2019-12-20 05:54:08'),
(4, 2, 2, 'active', '2019-12-20 05:52:08', '2020-01-01 04:21:02'),
(5, 2, 4, 'active', '2020-01-09 02:18:56', '2020-01-09 02:18:56'),
(6, 1, 4, 'active', '2020-01-09 07:14:01', '2020-01-09 07:14:01');

-- --------------------------------------------------------

--
-- Table structure for table `community_assets`
--

DROP TABLE IF EXISTS `community_assets`;
CREATE TABLE IF NOT EXISTS `community_assets` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `asset_type_id` int(11) NOT NULL,
  `community_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 1, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 5),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 6),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 21),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 22),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 17),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Sub Roles', 0, 0, 0, 0, 0, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 14),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 19),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 1, 0, 0, 0, 0, '{}', 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '{}', 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 11),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'description', 'text_area', 'Description', 0, 0, 1, 1, 1, 1, '{}', 8),
(59, 7, 'banner', 'image', 'Banner', 0, 1, 1, 1, 1, 1, '{}', 9),
(60, 7, 'status', 'checkbox', 'Status', 1, 1, 1, 1, 1, 1, '{}', 10),
(61, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 11),
(62, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(63, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 0, 1, 0, 0, 0, '{}', 20),
(64, 8, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(65, 8, 'community_id', 'hidden', 'Community Id', 0, 0, 1, 1, 1, 1, '{}', 5),
(66, 8, 'house', 'text', 'House', 0, 1, 1, 1, 1, 1, '{}', 7),
(67, 8, 'street', 'text', 'Street', 0, 1, 1, 1, 1, 1, '{}', 10),
(68, 8, 'block', 'text', 'Block', 0, 1, 1, 1, 1, 1, '{}', 11),
(69, 8, 'longitude', 'text', 'Longitude', 0, 0, 1, 1, 1, 1, '{}', 12),
(70, 8, 'latitude', 'text', 'Latitude', 0, 0, 1, 1, 1, 1, '{}', 13),
(71, 8, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 14),
(72, 8, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"active\",\"options\":{\"active\":\"active\",\"inactive\":\"inactive\"}}', 21),
(73, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 22),
(74, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 23),
(75, 8, 'address_hasone_community_relationship', 'relationship', 'Community', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Community\",\"table\":\"communities\",\"type\":\"belongsTo\",\"column\":\"community_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"addresses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(76, 9, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(77, 9, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(78, 9, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"active\",\"options\":{\"active\":\"active\",\"pending\":\"pending\"}}', 3),
(79, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(80, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(81, 10, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(82, 10, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(83, 10, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(84, 10, 'image', 'media_picker', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(85, 10, 'asset_no', 'text', 'Asset No', 0, 1, 1, 1, 1, 1, '{}', 5),
(86, 10, 'belongs_to', 'select_dropdown', 'Belongs To', 1, 1, 1, 1, 1, 1, '{\"default\":\"user\",\"options\":{\"user\":\"User\",\"community\":\"Community\"}}', 6),
(87, 10, 'belongs_to_id', 'select_dropdown', 'Belongs To Id', 0, 1, 1, 1, 1, 1, '{}', 7),
(88, 10, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"active\",\"options\":{\"active\":\"active\",\"pending\":\"pending\"}}', 8),
(89, 10, 'data', 'text', 'Data', 1, 1, 1, 1, 1, 1, '{}', 9),
(90, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(91, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(92, 11, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(93, 11, 'asset_type_id', 'hidden', 'Asset Type Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(94, 11, 'community_id', 'hidden', 'Community Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(95, 11, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 6),
(96, 11, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 10),
(97, 11, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 8),
(98, 11, 'asset_no', 'text', 'Asset No', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 7),
(99, 11, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"active\",\"options\":{\"active\":\"active\",\"pending\":\"pending\"},\"display\":{\"width\":\"6\"}}', 9),
(100, 11, 'data', 'hidden', 'Data', 1, 1, 1, 1, 1, 1, '{}', 11),
(101, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 12),
(102, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(104, 11, 'community_asset_belongsto_community_relationship', 'relationship', 'Community', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Community\",\"table\":\"communities\",\"type\":\"belongsTo\",\"column\":\"community_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"addresses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(105, 11, 'community_asset_belongsto_asset_type_relationship', 'relationship', 'Asset Type', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\AssetType\",\"table\":\"asset_types\",\"type\":\"belongsTo\",\"column\":\"asset_type_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"addresses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(106, 12, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(107, 12, 'asset_type_id', 'hidden', 'Asset Type Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(108, 12, 'user_id', 'hidden', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(109, 12, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 6),
(110, 12, 'description', 'text_area', 'Description', 0, 0, 1, 1, 1, 1, '{}', 10),
(111, 12, 'image', 'image', 'Image', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 8),
(112, 12, 'asset_no', 'text', 'Asset No', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 7),
(113, 12, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"active\",\"options\":{\"active\":\"active\",\"pending\":\"pending\"},\"display\":{\"width\":\"6\"}}', 9),
(114, 12, 'data', 'hidden', 'Data', 0, 0, 1, 1, 1, 1, '{}', 11),
(115, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 12),
(116, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(117, 12, 'user_asset_belongsto_asset_type_relationship', 'relationship', 'Asset Type', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\AssetType\",\"table\":\"asset_types\",\"type\":\"belongsTo\",\"column\":\"asset_type_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"addresses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(118, 12, 'user_asset_belongsto_user_relationship', 'relationship', 'User', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"addresses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(119, 13, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(120, 13, 'address_id', 'hidden', 'Address Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(121, 13, 'user_id', 'hidden', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 8),
(122, 13, 'reference_id', 'hidden', 'Reference Id', 0, 0, 1, 1, 1, 1, '{}', 9),
(123, 13, 'type', 'select_dropdown', 'Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"owner\",\"options\":{\"owner\":\"Owner\",\"tenant\":\"Tenant\"}}', 10),
(124, 13, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"active\",\"options\":{\"active\":\"active\",\"inactive\":\"inactive\"}}', 11),
(125, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 12),
(126, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(130, 14, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(132, 14, 'address_id', 'hidden', 'Address Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(133, 14, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 6),
(134, 14, 'description', 'text_area', 'Description', 0, 0, 1, 1, 1, 1, '{}', 10),
(135, 14, 'image', 'image', 'Image', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 8),
(136, 14, 'asset_no', 'text', 'Asset No', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 7),
(137, 14, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"active\",\"options\":{\"active\":\"active\",\"inactive\":\"inactive\"},\"display\":{\"width\":\"6\"}}', 9),
(138, 14, 'data', 'hidden', 'Data', 0, 0, 0, 0, 0, 0, '{}', 11),
(139, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 12),
(140, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(141, 14, 'address_asset_belongsto_address_relationship', 'relationship', 'Address', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Address\",\"table\":\"addresses\",\"type\":\"belongsTo\",\"column\":\"address_id\",\"key\":\"id\",\"label\":\"address\",\"pivot_table\":\"address_assets\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(143, 16, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(144, 16, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(145, 16, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"active\",\"options\":{\"active\":\"active\",\"inactive\":\"inactive\"}}', 3),
(146, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(147, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(148, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(149, 17, 'community_id', 'hidden', 'Community Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(150, 17, 'address_type_id', 'hidden', 'Address Type Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(151, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(152, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(153, 17, 'community_address_type_belongsto_community_relationship', 'relationship', 'communities', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Community\",\"table\":\"communities\",\"type\":\"belongsTo\",\"column\":\"community_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"address_assets\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(154, 17, 'community_address_type_belongstomany_address_type_relationship', 'relationship', 'address_types', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\AddressType\",\"table\":\"address_types\",\"type\":\"belongsTo\",\"column\":\"address_type_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"address_types\",\"pivot\":\"0\",\"taggable\":\"on\"}', 7),
(155, 7, 'postal_code', 'text', 'Postal Code', 0, 1, 1, 1, 1, 1, '{}', 3),
(156, 7, 'city', 'text', 'City', 0, 1, 1, 1, 1, 1, '{}', 4),
(157, 7, 'state', 'select_dropdown', 'State', 0, 1, 1, 1, 1, 1, '{\"default\":\"Kuala Lumpur\",\"options\":{\"Kuala Lumpur\":\"Kuala Lumpur\",\"Selangor\":\"Selangor\"}}', 6),
(158, 7, 'country', 'select_dropdown', 'Country', 0, 1, 1, 1, 1, 1, '{\"default\":\"MY\",\"options\":{\"MY\":\"Malaysia\"}}', 5),
(159, 7, 'address_format', 'text_area', 'Address Format <br>Tokens: <code>[HOUSE], [COMMUNITY], [POSTAL_CODE], [CITY], [STATE], [COUNTRY]</code>', 0, 1, 1, 1, 1, 1, '{\"description\":\"e.g [HOUSE] St# [STREET] Block [BLOCK] [COMMUNITY], [POSTAL_CODE] [CITY], [STATE], [COUNTRY] will output as: 75 Kg Sg Ramal Lua St# 2 Block F Smart Town, 43000 Kajang, Selangor, Malaysia\"}', 7),
(160, 8, 'address_type_id', 'hidden', 'Address Type Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(161, 8, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 6),
(162, 8, 'address_belongsto_address_type_relationship', 'relationship', 'Address Type', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\AddressType\",\"table\":\"address_types\",\"type\":\"belongsTo\",\"column\":\"address_type_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"address_assets\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(163, 14, 'type', 'select_dropdown', 'Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"vehicle\",\"options\":{\"vehicle\":\"Vehicle\"}}', 2),
(164, 18, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(165, 18, 'invited_by', 'select_dropdown', 'Invited By', 1, 1, 1, 1, 1, 1, '{\"default\":\"address\",\"options\":{\"address\":\"Address\"}}', 2),
(166, 18, 'invited_by_id', 'text', 'Invited By Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(167, 18, 'invited_to', 'select_dropdown', 'Invited To', 0, 1, 1, 1, 1, 1, '{\"default\":\"vehicle\",\"options\":{\"vehicle\":\"Vehicle\"}}', 4),
(168, 18, 'invited_to_id', 'text', 'Invited To Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(169, 18, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"active\",\"options\":{\"active\":\"active\",\"expired\":\"expired\",\"used\":\"used\"}}', 6),
(170, 18, 'admin_status', 'select_dropdown', 'Admin Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"approved\",\"options\":{\"approved\":\"approved\",\"rejected\":\"rejected\"}}', 7),
(171, 18, 'data', 'text', 'Data', 0, 0, 1, 0, 0, 0, '{}', 8),
(172, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(173, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(174, 19, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(175, 19, 'invited_by_type', 'select_dropdown', 'Invited By Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"address\",\"options\":{\"address\":\"Address\"}}', 2),
(176, 19, 'invited_by', 'text', 'Invited By', 0, 1, 1, 1, 1, 1, '{}', 3),
(177, 19, 'invited_to_type', 'select_dropdown', 'Invited To Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"vehicle\",\"options\":{\"vehicle\":\"Vehicle\"}}', 4),
(178, 19, 'vehicle_no', 'text', 'Vehicle No', 0, 1, 1, 1, 1, 1, '{}', 5),
(179, 19, 'person_name', 'text', 'Person Name', 0, 1, 1, 1, 1, 1, '{}', 6),
(180, 19, 'person_phone', 'text', 'Person Phone', 0, 1, 1, 1, 1, 1, '{}', 7),
(181, 19, 'person_email', 'text', 'Person Email', 0, 1, 1, 1, 1, 1, '{}', 8),
(182, 19, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"waiting\",\"options\":{\"waiting\":\"waiting\",\"visited\":\"visited\"}}', 9),
(183, 19, 'admin_status', 'select_dropdown', 'Admin Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"approved\",\"options\":{\"approved\":\"approved\",\"pending\":\"pending\",\"rejected\":\"rejected\"}}', 10),
(184, 19, 'data', 'text', 'Data', 0, 0, 1, 0, 0, 1, '{}', 11),
(185, 19, 'date', 'timestamp', 'Date', 0, 1, 1, 1, 1, 1, '{}', 12),
(186, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 13),
(187, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(190, 20, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(191, 20, 'asset', 'text', 'Issue Title', 0, 1, 1, 1, 1, 1, '{}', 6),
(192, 20, 'latitude', 'text', 'Latitude', 0, 1, 1, 1, 1, 1, '{}', 8),
(193, 20, 'longitude', 'text', 'Longitude', 0, 1, 1, 1, 1, 1, '{}', 9),
(194, 20, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 7),
(195, 20, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 10),
(196, 20, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 11),
(197, 20, 'email', 'text', 'Email', 0, 0, 1, 1, 1, 1, '{}', 12),
(198, 20, 'picture', 'image', 'Picture', 0, 0, 1, 1, 1, 1, '{}', 13),
(199, 20, 'video', 'file', 'Video', 0, 0, 1, 1, 1, 1, '{}', 14),
(200, 20, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"active\",\"options\":{\"pending\":\"pending\",\"fixed\":\"fixed\"}}', 15),
(201, 20, 'admin_status', 'select_dropdown', 'Admin Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"active\",\"options\":{\"pending\":\"pending\",\"rejected\":\"rejected\",\"approved\":\"approved\"}}', 16),
(202, 20, 'detail', 'text_area', 'Detail', 0, 0, 1, 1, 1, 1, '{}', 18),
(205, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 20),
(206, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 21),
(207, 20, 'community_id', 'cascading_select', 'Community Id', 0, 1, 1, 1, 1, 1, '{\"cascading\":{\"target_model\":\"Community\",\"key\":\"id\",\"column\":\"community_id\",\"label\":\"name\"}}', 2),
(208, 20, 'user_id', 'cascading_select', 'User Id', 0, 1, 1, 1, 1, 1, '{\"cascading\":{\"target_model\":\"User\",\"key\":\"id\",\"column\":\"user_id\",\"label\":\"user_label\",\"search_column\":\"name\",\"filters\":{\"role_id\":2},\"parent\":{\"field_id\":\"community_id\",\"column\":\"community_id\"}}}', 3),
(209, 20, 'fixed_date', 'timestamp', 'Fixed Date', 0, 1, 1, 1, 1, 1, '{}', 17),
(210, 20, 'fixed_detail', 'text_area', 'Fixed Detail', 0, 0, 1, 1, 1, 1, '{}', 19),
(212, 13, 'community_id', 'text', 'Community Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(215, 21, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(216, 21, 'community_id', 'cascading_select', 'Community', 0, 1, 1, 1, 1, 1, '{\"cascading\":{\"target_model\":\"Community\",\"key\":\"id\",\"column\":\"community_id\",\"label\":\"name\"}}', 2),
(217, 21, 'user_id', 'cascading_select', 'Added By', 0, 1, 1, 1, 1, 1, '{\"cascading\":{\"target_model\":\"User\",\"key\":\"id\",\"column\":\"user_id\",\"label\":\"user_label\",\"search_column\":\"name\",\"filters\":{\"role_id\":2},\"parent\":{\"field_id\":\"community_id\",\"column\":\"community_id\"}}}', 3),
(218, 21, 'user_id_collected', 'cascading_select', 'Collected By', 0, 1, 1, 1, 1, 1, '{\"cascading\":{\"target_model\":\"User\",\"key\":\"id\",\"column\":\"user_id_collected\",\"label\":\"user_label\",\"search_column\":\"name\",\"filters\":{\"role_id\":2},\"parent\":{\"field_id\":\"community_id\",\"column\":\"community_id\"}}}', 14),
(219, 21, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 5),
(220, 21, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 6),
(221, 21, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 7),
(222, 21, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 8),
(223, 21, 'email', 'text', 'Email', 0, 0, 1, 1, 1, 1, '{}', 9),
(224, 21, 'picture', 'image', 'Picture', 0, 1, 1, 1, 1, 1, '{}', 10),
(225, 21, 'video', 'file', 'Video', 0, 0, 1, 1, 1, 1, '{}', 11),
(226, 21, 'type', 'select_dropdown', 'Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"lost\",\"options\":{\"lost\":\"lost\",\"found\":\"found\"}}', 4),
(227, 21, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"pending\",\"options\":{\"pending\":\"pending\",\"collected\":\"collected\",\"closed\":\"closed\"}}', 12),
(228, 21, 'detail', 'text_area', 'Detail', 0, 1, 1, 1, 1, 1, '{}', 16),
(229, 21, 'date', 'timestamp', 'Date', 0, 1, 1, 1, 1, 1, '{}', 13),
(230, 21, 'date_collected', 'timestamp', 'Date Collected', 0, 1, 1, 1, 1, 1, '{}', 15),
(231, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 17),
(232, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 18),
(236, 23, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(237, 23, 'community_id', 'cascading_select', 'Community Id', 0, 1, 1, 1, 1, 1, '{\"cascading\":{\"target_model\":\"Community\",\"key\":\"id\",\"column\":\"community_id\",\"label\":\"name\"}}', 2),
(238, 23, 'user_id', 'cascading_select', 'User Id', 0, 1, 1, 1, 1, 1, '{\"cascading\":{\"target_model\":\"User\",\"key\":\"id\",\"column\":\"user_id\",\"label\":\"name\",\"filters\":{\"role_id\":2},\"parent\":{\"field_id\":\"community_id\",\"column\":\"community_id\"}}}', 3),
(239, 23, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 6),
(240, 23, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 7),
(241, 23, 'latitude', 'text', 'Latitude', 0, 0, 1, 1, 1, 1, '{}', 8),
(242, 23, 'longitude', 'text', 'Longitude', 0, 0, 1, 1, 1, 1, '{}', 9),
(243, 23, 'picture', 'image', 'Picture', 0, 1, 1, 1, 1, 1, '{}', 10),
(244, 23, 'detail', 'text_area', 'Detail', 0, 1, 1, 1, 1, 1, '{}', 11),
(246, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 13),
(247, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(250, 25, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(251, 25, 'community_id', 'cascading_select', 'Community', 0, 1, 1, 1, 1, 1, '{\"cascading\":{\"target_model\":\"Community\",\"key\":\"id\",\"column\":\"community_id\",\"label\":\"name\"}}', 2),
(252, 25, 'user_id', 'cascading_select', 'Added By', 0, 1, 1, 1, 1, 1, '{\"cascading\":{\"target_model\":\"User\",\"key\":\"id\",\"column\":\"user_id\",\"label\":\"name\",\"filters\":{\"role_id\":2},\"parent\":{\"field_id\":\"community_id\",\"column\":\"community_id\"}}}', 3),
(253, 25, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 6),
(254, 25, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 7),
(255, 25, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 8),
(256, 25, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 9),
(257, 25, 'email', 'text', 'Email', 0, 0, 1, 1, 1, 1, '{}', 10),
(258, 25, 'picture', 'image', 'Picture', 0, 0, 1, 1, 1, 1, '{}', 11),
(259, 25, 'detail', 'text_area', 'Detail', 0, 1, 1, 1, 1, 1, '{}', 12),
(261, 25, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 14),
(262, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 15),
(265, 25, 'is_active', 'checkbox', 'Is Active', 1, 1, 1, 1, 1, 1, '{\"on\":\"Yes\",\"off\":\"No\",\"checked\":true}', 11),
(266, 23, 'is_active', 'checkbox', 'Is Active', 1, 1, 1, 1, 1, 1, '{\"on\":\"Yes\",\"off\":\"No\",\"checked\":true}', 10),
(269, 16, 'show_add_view', 'checkbox', 'Show In Add View', 0, 1, 1, 1, 1, 1, '{\"on\":\"Yes\",\"off\":\"No\",\"checked\":true}', 4),
(270, 16, 'address_format', 'text_area', 'Address Format', 0, 1, 1, 1, 1, 1, '{}', 8),
(272, 1, 'username', 'text', 'Username', 1, 1, 1, 1, 1, 1, '{}', 4),
(273, 1, 'community_id', 'text', 'Community Id', 0, 1, 1, 1, 1, 1, '{}', 7),
(274, 1, 'phone_number', 'text', 'Phone Number', 0, 1, 1, 1, 1, 1, '{}', 8),
(275, 1, 'dob', 'date', 'Dob', 0, 1, 1, 1, 1, 1, '{}', 9),
(276, 1, 'gender', 'select_dropdown', 'Gender', 0, 1, 1, 1, 1, 1, '{\"default\":\"Male\",\"options\":{\"Male\":\"Male\",\"Female\":\"Female\"}}', 10),
(277, 1, 'verification_code', 'hidden', 'Verification Code', 0, 0, 1, 1, 0, 0, '{}', 13),
(278, 1, 'verification_status', 'hidden', 'Verification Status', 1, 0, 1, 0, 0, 0, '{}', 18),
(279, 1, 'is_active', 'checkbox', 'Is Active', 1, 1, 1, 1, 1, 1, '{\"on\":\"Yes\",\"off\":\"No\",\"checked\":true}', 15),
(280, 1, 'user_belongsto_community_relationship', 'relationship', 'Community', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Community\",\"table\":\"communities\",\"type\":\"belongsTo\",\"column\":\"community_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"address_assets\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(281, 8, 'floor', 'text', 'Floor', 0, 1, 1, 1, 1, 1, '{}', 8),
(282, 8, 'flat', 'text', 'Flat', 0, 1, 1, 1, 1, 1, '{}', 9),
(283, 8, 'bedroom', 'text', 'Bedroom', 0, 1, 1, 1, 1, 1, '{}', 15),
(284, 8, 'bath', 'text', 'Bath', 0, 1, 1, 1, 1, 1, '{}', 16),
(285, 8, 'garage', 'text', 'Garage', 0, 1, 1, 1, 1, 1, '{}', 17),
(286, 8, 'area', 'text', 'Area', 0, 1, 1, 1, 1, 1, '{}', 18),
(287, 8, 'area_unit', 'select_dropdown', 'Area Unit', 0, 1, 1, 1, 1, 1, '{\"default\":\"sq_ft\",\"options\":{\"sq_ft\":\"Sq .Ft\"}}', 19),
(288, 8, 'has_ground_floor', 'checkbox', 'Has Ground Floor', 1, 1, 1, 1, 1, 1, '{\"on\":\"Yes\",\"off\":\"No\",\"checked\":false}', 20),
(289, 16, 'has_stories', 'checkbox', 'Has Stories', 1, 1, 1, 1, 1, 1, '{\"on\":\"Yes\",\"off\":\"No\",\"checked\":false}', 5),
(290, 16, 'stories', 'number', 'Stories (If Fixed)', 1, 1, 1, 1, 1, 1, '{}', 6),
(291, 16, 'flats', 'number', 'Flats Per Story (If Fixed)', 1, 1, 1, 1, 1, 1, '{}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":\"name\",\"scope\":null}', '2019-12-12 07:01:26', '2019-12-31 05:15:52'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-12-12 07:01:26', '2019-12-12 07:01:26'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-12-12 07:01:26', '2019-12-31 03:41:56'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-12-12 07:01:34', '2019-12-12 07:01:34'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-12-12 07:01:35', '2019-12-12 07:01:35'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-12-12 07:01:37', '2019-12-12 07:01:37'),
(7, 'communities', 'communities', 'Community', 'Communities', 'voyager-categories', 'App\\Community', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-12 07:04:25', '2019-12-30 12:13:46'),
(8, 'addresses', 'addresses', 'Address', 'Addresses', 'voyager-logbook', 'App\\Address', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"desc\",\"default_search_key\":\"address\",\"scope\":null}', '2019-12-13 05:18:27', '2020-01-02 11:36:12'),
(9, 'asset_types', 'asset-types', 'Asset Type', 'Asset Types', 'voyager-harddrive', 'App\\AssetType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-13 06:23:35', '2019-12-13 07:17:09'),
(10, 'assets', 'assets', 'Asset', 'Assets', 'voyager-harddrive', 'App\\Asset', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-13 06:26:51', '2019-12-13 06:45:14'),
(11, 'community_assets', 'community-assets', 'Community Asset', 'Community Assets', 'voyager-harddrive', 'App\\CommunityAsset', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-13 07:05:28', '2019-12-13 07:19:49'),
(12, 'user_assets', 'user-assets', 'User Asset', 'User Assets', 'voyager-harddrive', 'App\\UserAsset', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-13 08:37:24', '2019-12-13 08:47:22'),
(13, 'residents', 'residents', 'Resident', 'Residents', NULL, 'App\\Resident', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"type\",\"scope\":null}', '2019-12-17 01:57:06', '2019-12-26 02:28:08'),
(14, 'address_assets', 'address-assets', 'Address Asset', 'Address Assets', 'voyager-logbook', 'App\\AddressAsset', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-17 02:32:26', '2019-12-20 04:03:04'),
(16, 'address_types', 'address-types', 'Address Type', 'Address Types', 'voyager-logbook', 'App\\AddressType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-18 11:54:52', '2020-01-08 08:54:21'),
(17, 'community_address_types', 'community-address-types', 'Community Address Type', 'Community Address Types', 'voyager-logbook', 'App\\CommunityAddressType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-18 11:56:55', '2019-12-18 12:00:24'),
(18, 'invitations', 'invitations', 'Invitation', 'Invitations', 'voyager-bell', 'App\\Invitation', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-23 04:24:02', '2019-12-23 04:27:48'),
(19, 'visitors', 'visitors', 'Visitor', 'Visitors', 'voyager-bell', 'App\\Visitor', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-23 05:43:43', '2019-12-27 10:25:58'),
(20, 'issues', 'issues', 'Issue', 'Issues', 'voyager-warning', 'App\\Issue', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-24 07:49:59', '2019-12-30 02:56:12'),
(21, 'lost_founds', 'lost-founds', 'Lost Found', 'Lost Founds', 'voyager-flashlight', 'App\\LostFound', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-26 03:35:43', '2019-12-30 02:58:33'),
(23, 'security_updates', 'security-updates', 'Security Update', 'Security Updates', 'voyager-key', 'App\\SecurityUpdate', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-26 08:47:23', '2019-12-27 10:07:50'),
(25, 'recommendations', 'recommendations', 'Recommendation', 'Recommendations', 'voyager-lightbulb', 'App\\Recommendation', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-26 09:01:02', '2019-12-27 10:31:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invitations`
--

DROP TABLE IF EXISTS `invitations`;
CREATE TABLE IF NOT EXISTS `invitations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `invited_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invited_by_id` int(11) NOT NULL,
  `invited_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invited_to_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved',
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
CREATE TABLE IF NOT EXISTS `issues` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `community_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `asset` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `admin_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `detail` text COLLATE utf8mb4_unicode_ci,
  `fixed_date` timestamp NULL DEFAULT NULL,
  `fixed_detail` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `community_id`, `user_id`, `asset`, `latitude`, `longitude`, `address`, `name`, `phone`, `email`, `picture`, `video`, `status`, `admin_status`, `detail`, `fixed_date`, `fixed_detail`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Light Bulb', 31.4645789, 74.2419427, 'Johar Town, Lahore, Punjab', 'Shahid', '+923324703323', 'shahidhussainaali@gmail.com', NULL, NULL, 'pending', 'pending', 'A light bulb not working', NULL, NULL, '2019-12-24 08:33:20', '2019-12-24 08:33:20'),
(2, 1, 2, 'Light Bulb', 31.4645789, 74.2419427, 'Johar Town, Lahore, Punjab', 'Shahid', '+923324703323', 'shahidhussainaali@gmail.com', 'issues/December2019/kPmLbLRLsZgtw6wPsPS8.jpg', NULL, 'pending', 'pending', 'A light bulb not working', NULL, NULL, '2019-12-24 09:04:33', '2019-12-24 09:04:33'),
(3, 1, 2, 'Light Bulb', 31.4645789, 74.2419427, 'Johar Town, Lahore, Punjab', 'Shahid', '+923324703323', 'shahidhussainaali@gmail.com', 'issues/December2019/pfcdb0KTRtqnxXYL1zTg.jpg', NULL, 'pending', 'pending', 'A light bulb not working', NULL, NULL, '2019-12-24 09:10:33', '2019-12-24 09:10:33'),
(4, 1, 2, 'Light Bulb', 31.4645789, 74.2419427, 'Johar Town, Lahore, Punjab', 'Shahid', '+923324703323', 'shahidhussainaali@gmail.com', 'issues/December2019/0uxgHHYyW72BJDYrkxdU.jpg', NULL, 'pending', 'pending', 'A light bulb not working', NULL, NULL, '2019-12-24 09:17:37', '2019-12-24 09:17:37'),
(5, 1, 2, 'Light Bulb', 31.4645789, 74.2419427, 'Johar Town, Lahore, Punjab', 'Shahid', '+923324703323', 'shahidhussainaali@gmail.com', 'issues/December2019/RPuOQE7b5O8VaOc6PRvu.jpg', NULL, 'pending', 'pending', 'A light bulb not working', NULL, NULL, '2019-12-26 02:57:46', '2019-12-26 02:57:46'),
(6, 1, 2, 'Light Bulb', 31.4645789, 74.2419427, 'Johar Town, Lahore, Punjab', 'Shahid', '+923324703323', 'shahidhussainaali@gmail.com', 'issues/December2019/kR6Rsn6xJqn7AR3a2x6z.jpg', NULL, 'fixed', 'approved', 'A light bulb not working', '2019-12-27 15:19:00', NULL, '2019-12-26 05:18:00', '2019-12-27 10:19:27');

-- --------------------------------------------------------

--
-- Table structure for table `lost_founds`
--

DROP TABLE IF EXISTS `lost_founds`;
CREATE TABLE IF NOT EXISTS `lost_founds` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `community_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_id_collected` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('lost','found') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lost',
  `status` enum('pending','collected','closed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `detail` text COLLATE utf8mb4_unicode_ci,
  `date` timestamp NULL DEFAULT NULL,
  `date_collected` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lost_founds`
--

INSERT INTO `lost_founds` (`id`, `community_id`, `user_id`, `user_id_collected`, `title`, `address`, `name`, `phone`, `email`, `picture`, `video`, `type`, `status`, `detail`, `date`, `date_collected`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, 'Bicycle lost in playgroud', 'Johar Town, Lahore, Punjab', 'Shahid', '+923324703323', 'shahidhussainaali@gmail.com', 'lost_founds/December2019/2R2aoMfRvxCftG3pgXU4.jpg', NULL, 'lost', 'pending', 'My new bicycle got stolen from playground.', '2019-12-25 19:00:00', NULL, '2019-12-26 03:29:05', '2019-12-26 03:29:05'),
(2, 1, 2, 2, 'Bicycle lost in playgroud', 'Johar Town, Lahore, Punjab', 'Shahid', '+923324703323', 'shahidhussainaali@gmail.com', 'lost_founds/December2019/IQCyGoXrsoeotiCJFJk2.jpg', '[]', 'lost', 'collected', 'My new bicycle got stolen from playground.', '2019-12-25 19:00:00', '2019-12-26 19:00:00', '2019-12-26 05:17:54', '2019-12-27 10:21:22');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-12-12 07:01:29', '2019-12-12 07:01:29');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-12-12 07:01:29', '2019-12-12 07:01:29', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2019-12-12 07:01:29', '2019-12-12 07:09:06', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-12-12 07:01:29', '2019-12-12 07:01:29', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-12-12 07:01:29', '2019-12-12 07:01:29', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 13, '2019-12-12 07:01:29', '2019-12-26 09:08:36', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-12-12 07:01:29', '2019-12-12 07:09:07', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-12-12 07:01:29', '2019-12-12 07:09:07', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-12-12 07:01:29', '2019-12-12 07:09:07', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-12-12 07:01:30', '2019-12-12 07:09:07', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2019-12-12 07:01:30', '2019-12-26 09:08:36', 'voyager.settings.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 12, '2019-12-12 07:01:38', '2019-12-26 09:08:36', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-12-12 07:01:43', '2019-12-12 07:09:07', 'voyager.hooks', NULL),
(15, 1, 'Communities', '', '_self', 'voyager-calendar', '#000000', NULL, 6, '2019-12-12 07:04:25', '2019-12-20 12:09:04', 'voyager.communities.index', 'null'),
(23, 1, 'Address Types', '', '_self', 'voyager-logbook', NULL, NULL, 5, '2019-12-18 11:54:52', '2019-12-20 12:09:04', 'voyager.address-types.index', NULL),
(26, 1, 'Visitors', '', '_self', 'voyager-people', '#000000', NULL, 7, '2019-12-23 05:43:44', '2019-12-26 10:03:42', 'voyager.visitors.index', 'null'),
(27, 1, 'Issues', '', '_self', 'voyager-warning', '#000000', NULL, 8, '2019-12-24 07:49:59', '2019-12-24 09:18:50', 'voyager.issues.index', 'null'),
(28, 1, 'Lost Founds', '', '_self', 'voyager-flashlight', NULL, NULL, 9, '2019-12-26 03:35:44', '2019-12-26 03:49:31', 'voyager.lost-founds.index', NULL),
(29, 1, 'Security Updates', '', '_self', 'voyager-key', NULL, NULL, 10, '2019-12-26 08:47:23', '2019-12-26 09:08:32', 'voyager.security-updates.index', NULL),
(30, 1, 'Recommendations', '', '_self', 'voyager-lightbulb', NULL, NULL, 11, '2019-12-26 09:01:02', '2019-12-26 09:08:36', 'voyager.recommendations.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2019_12_12_000000_create_communities_table', 1),
(29, '2019_12_13_075002_create_addresses_table', 2),
(30, '2019_12_13_080559_create_residents_table', 2),
(31, '2019_12_13_084044_create_asset_types_table', 2),
(33, '2019_12_13_084107_create_community_assets_table', 3),
(34, '2019_12_13_084107_create_user_assets_table', 3),
(35, '2016_12_28_111110_create_api_keys_table', 4),
(36, '2016_12_28_111111_create_api_key_access_events_table', 4),
(37, '2016_12_28_111112_create_api_key_admin_events_table', 4),
(38, '2019_12_13_084107_create_address_assets_table', 5),
(39, '2019_12_13_084044_create_address_types_table', 6),
(40, '2019_12_13_084044_create_community_address_types_table', 6),
(41, '2019_12_13_084107_create_invitations_table', 7),
(42, '2019_12_13_084107_create_visitors_table', 8),
(43, '2019_12_13_084107_create_issues_table', 9),
(44, '2019_12_13_084107_create_lost_found_table', 10),
(47, '2019_12_13_084107_create_recommendations_table', 11),
(48, '2019_12_13_084107_create_security_updates_table', 11),
(49, '2019_10_30_153147_add_new_fields_to_users_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-12-12 07:01:39', '2019-12-12 07:01:39');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-12-12 07:01:30', '2019-12-12 07:01:30'),
(2, 'browse_bread', NULL, '2019-12-12 07:01:30', '2019-12-12 07:01:30'),
(3, 'browse_database', NULL, '2019-12-12 07:01:30', '2019-12-12 07:01:30'),
(4, 'browse_media', NULL, '2019-12-12 07:01:30', '2019-12-12 07:01:30'),
(5, 'browse_compass', NULL, '2019-12-12 07:01:30', '2019-12-12 07:01:30'),
(6, 'browse_menus', 'menus', '2019-12-12 07:01:30', '2019-12-12 07:01:30'),
(7, 'read_menus', 'menus', '2019-12-12 07:01:30', '2019-12-12 07:01:30'),
(8, 'edit_menus', 'menus', '2019-12-12 07:01:30', '2019-12-12 07:01:30'),
(9, 'add_menus', 'menus', '2019-12-12 07:01:30', '2019-12-12 07:01:30'),
(10, 'delete_menus', 'menus', '2019-12-12 07:01:30', '2019-12-12 07:01:30'),
(11, 'browse_roles', 'roles', '2019-12-12 07:01:31', '2019-12-12 07:01:31'),
(12, 'read_roles', 'roles', '2019-12-12 07:01:31', '2019-12-12 07:01:31'),
(13, 'edit_roles', 'roles', '2019-12-12 07:01:31', '2019-12-12 07:01:31'),
(14, 'add_roles', 'roles', '2019-12-12 07:01:31', '2019-12-12 07:01:31'),
(15, 'delete_roles', 'roles', '2019-12-12 07:01:31', '2019-12-12 07:01:31'),
(16, 'browse_users', 'users', '2019-12-12 07:01:31', '2019-12-12 07:01:31'),
(17, 'read_users', 'users', '2019-12-12 07:01:31', '2019-12-12 07:01:31'),
(18, 'edit_users', 'users', '2019-12-12 07:01:31', '2019-12-12 07:01:31'),
(19, 'add_users', 'users', '2019-12-12 07:01:31', '2019-12-12 07:01:31'),
(20, 'delete_users', 'users', '2019-12-12 07:01:31', '2019-12-12 07:01:31'),
(21, 'browse_settings', 'settings', '2019-12-12 07:01:31', '2019-12-12 07:01:31'),
(22, 'read_settings', 'settings', '2019-12-12 07:01:31', '2019-12-12 07:01:31'),
(23, 'edit_settings', 'settings', '2019-12-12 07:01:31', '2019-12-12 07:01:31'),
(24, 'add_settings', 'settings', '2019-12-12 07:01:31', '2019-12-12 07:01:31'),
(25, 'delete_settings', 'settings', '2019-12-12 07:01:32', '2019-12-12 07:01:32'),
(26, 'browse_categories', 'categories', '2019-12-12 07:01:34', '2019-12-12 07:01:34'),
(27, 'read_categories', 'categories', '2019-12-12 07:01:35', '2019-12-12 07:01:35'),
(28, 'edit_categories', 'categories', '2019-12-12 07:01:35', '2019-12-12 07:01:35'),
(29, 'add_categories', 'categories', '2019-12-12 07:01:35', '2019-12-12 07:01:35'),
(30, 'delete_categories', 'categories', '2019-12-12 07:01:35', '2019-12-12 07:01:35'),
(31, 'browse_posts', 'posts', '2019-12-12 07:01:37', '2019-12-12 07:01:37'),
(32, 'read_posts', 'posts', '2019-12-12 07:01:37', '2019-12-12 07:01:37'),
(33, 'edit_posts', 'posts', '2019-12-12 07:01:37', '2019-12-12 07:01:37'),
(34, 'add_posts', 'posts', '2019-12-12 07:01:37', '2019-12-12 07:01:37'),
(35, 'delete_posts', 'posts', '2019-12-12 07:01:37', '2019-12-12 07:01:37'),
(36, 'browse_pages', 'pages', '2019-12-12 07:01:38', '2019-12-12 07:01:38'),
(37, 'read_pages', 'pages', '2019-12-12 07:01:38', '2019-12-12 07:01:38'),
(38, 'edit_pages', 'pages', '2019-12-12 07:01:39', '2019-12-12 07:01:39'),
(39, 'add_pages', 'pages', '2019-12-12 07:01:39', '2019-12-12 07:01:39'),
(40, 'delete_pages', 'pages', '2019-12-12 07:01:39', '2019-12-12 07:01:39'),
(41, 'browse_hooks', NULL, '2019-12-12 07:01:43', '2019-12-12 07:01:43'),
(42, 'browse_communities', 'communities', '2019-12-12 07:04:25', '2019-12-12 07:04:25'),
(43, 'read_communities', 'communities', '2019-12-12 07:04:25', '2019-12-12 07:04:25'),
(44, 'edit_communities', 'communities', '2019-12-12 07:04:25', '2019-12-12 07:04:25'),
(45, 'add_communities', 'communities', '2019-12-12 07:04:25', '2019-12-12 07:04:25'),
(46, 'delete_communities', 'communities', '2019-12-12 07:04:25', '2019-12-12 07:04:25'),
(47, 'browse_addresses', 'addresses', '2019-12-13 05:18:28', '2019-12-13 05:18:28'),
(48, 'read_addresses', 'addresses', '2019-12-13 05:18:28', '2019-12-13 05:18:28'),
(49, 'edit_addresses', 'addresses', '2019-12-13 05:18:28', '2019-12-13 05:18:28'),
(50, 'add_addresses', 'addresses', '2019-12-13 05:18:28', '2019-12-13 05:18:28'),
(51, 'delete_addresses', 'addresses', '2019-12-13 05:18:28', '2019-12-13 05:18:28'),
(52, 'browse_asset_types', 'asset_types', '2019-12-13 06:23:36', '2019-12-13 06:23:36'),
(53, 'read_asset_types', 'asset_types', '2019-12-13 06:23:36', '2019-12-13 06:23:36'),
(54, 'edit_asset_types', 'asset_types', '2019-12-13 06:23:36', '2019-12-13 06:23:36'),
(55, 'add_asset_types', 'asset_types', '2019-12-13 06:23:36', '2019-12-13 06:23:36'),
(56, 'delete_asset_types', 'asset_types', '2019-12-13 06:23:36', '2019-12-13 06:23:36'),
(57, 'browse_assets', 'assets', '2019-12-13 06:26:52', '2019-12-13 06:26:52'),
(58, 'read_assets', 'assets', '2019-12-13 06:26:52', '2019-12-13 06:26:52'),
(59, 'edit_assets', 'assets', '2019-12-13 06:26:52', '2019-12-13 06:26:52'),
(60, 'add_assets', 'assets', '2019-12-13 06:26:52', '2019-12-13 06:26:52'),
(61, 'delete_assets', 'assets', '2019-12-13 06:26:52', '2019-12-13 06:26:52'),
(62, 'browse_community_assets', 'community_assets', '2019-12-13 07:05:29', '2019-12-13 07:05:29'),
(63, 'read_community_assets', 'community_assets', '2019-12-13 07:05:29', '2019-12-13 07:05:29'),
(64, 'edit_community_assets', 'community_assets', '2019-12-13 07:05:29', '2019-12-13 07:05:29'),
(65, 'add_community_assets', 'community_assets', '2019-12-13 07:05:29', '2019-12-13 07:05:29'),
(66, 'delete_community_assets', 'community_assets', '2019-12-13 07:05:29', '2019-12-13 07:05:29'),
(67, 'browse_user_assets', 'user_assets', '2019-12-13 08:37:25', '2019-12-13 08:37:25'),
(68, 'read_user_assets', 'user_assets', '2019-12-13 08:37:25', '2019-12-13 08:37:25'),
(69, 'edit_user_assets', 'user_assets', '2019-12-13 08:37:25', '2019-12-13 08:37:25'),
(70, 'add_user_assets', 'user_assets', '2019-12-13 08:37:25', '2019-12-13 08:37:25'),
(71, 'delete_user_assets', 'user_assets', '2019-12-13 08:37:25', '2019-12-13 08:37:25'),
(72, 'browse_residents', 'residents', '2019-12-17 01:57:06', '2019-12-17 01:57:06'),
(73, 'read_residents', 'residents', '2019-12-17 01:57:06', '2019-12-17 01:57:06'),
(74, 'edit_residents', 'residents', '2019-12-17 01:57:06', '2019-12-17 01:57:06'),
(75, 'add_residents', 'residents', '2019-12-17 01:57:06', '2019-12-17 01:57:06'),
(76, 'delete_residents', 'residents', '2019-12-17 01:57:06', '2019-12-17 01:57:06'),
(77, 'browse_address_assets', 'address_assets', '2019-12-17 02:32:26', '2019-12-17 02:32:26'),
(78, 'read_address_assets', 'address_assets', '2019-12-17 02:32:26', '2019-12-17 02:32:26'),
(79, 'edit_address_assets', 'address_assets', '2019-12-17 02:32:26', '2019-12-17 02:32:26'),
(80, 'add_address_assets', 'address_assets', '2019-12-17 02:32:26', '2019-12-17 02:32:26'),
(81, 'delete_address_assets', 'address_assets', '2019-12-17 02:32:26', '2019-12-17 02:32:26'),
(82, 'browse_address_types', 'address_types', '2019-12-18 11:54:52', '2019-12-18 11:54:52'),
(83, 'read_address_types', 'address_types', '2019-12-18 11:54:52', '2019-12-18 11:54:52'),
(84, 'edit_address_types', 'address_types', '2019-12-18 11:54:52', '2019-12-18 11:54:52'),
(85, 'add_address_types', 'address_types', '2019-12-18 11:54:52', '2019-12-18 11:54:52'),
(86, 'delete_address_types', 'address_types', '2019-12-18 11:54:52', '2019-12-18 11:54:52'),
(87, 'browse_community_address_types', 'community_address_types', '2019-12-18 11:56:56', '2019-12-18 11:56:56'),
(88, 'read_community_address_types', 'community_address_types', '2019-12-18 11:56:56', '2019-12-18 11:56:56'),
(89, 'edit_community_address_types', 'community_address_types', '2019-12-18 11:56:56', '2019-12-18 11:56:56'),
(90, 'add_community_address_types', 'community_address_types', '2019-12-18 11:56:56', '2019-12-18 11:56:56'),
(91, 'delete_community_address_types', 'community_address_types', '2019-12-18 11:56:56', '2019-12-18 11:56:56'),
(92, 'browse_invitations', 'invitations', '2019-12-23 04:24:03', '2019-12-23 04:24:03'),
(93, 'read_invitations', 'invitations', '2019-12-23 04:24:03', '2019-12-23 04:24:03'),
(94, 'edit_invitations', 'invitations', '2019-12-23 04:24:03', '2019-12-23 04:24:03'),
(95, 'add_invitations', 'invitations', '2019-12-23 04:24:03', '2019-12-23 04:24:03'),
(96, 'delete_invitations', 'invitations', '2019-12-23 04:24:03', '2019-12-23 04:24:03'),
(97, 'browse_visitors', 'visitors', '2019-12-23 05:43:44', '2019-12-23 05:43:44'),
(98, 'read_visitors', 'visitors', '2019-12-23 05:43:44', '2019-12-23 05:43:44'),
(99, 'edit_visitors', 'visitors', '2019-12-23 05:43:44', '2019-12-23 05:43:44'),
(100, 'add_visitors', 'visitors', '2019-12-23 05:43:44', '2019-12-23 05:43:44'),
(101, 'delete_visitors', 'visitors', '2019-12-23 05:43:44', '2019-12-23 05:43:44'),
(102, 'browse_issues', 'issues', '2019-12-24 07:49:59', '2019-12-24 07:49:59'),
(103, 'read_issues', 'issues', '2019-12-24 07:49:59', '2019-12-24 07:49:59'),
(104, 'edit_issues', 'issues', '2019-12-24 07:49:59', '2019-12-24 07:49:59'),
(105, 'add_issues', 'issues', '2019-12-24 07:49:59', '2019-12-24 07:49:59'),
(106, 'delete_issues', 'issues', '2019-12-24 07:49:59', '2019-12-24 07:49:59'),
(107, 'browse_lost_founds', 'lost_founds', '2019-12-26 03:35:44', '2019-12-26 03:35:44'),
(108, 'read_lost_founds', 'lost_founds', '2019-12-26 03:35:44', '2019-12-26 03:35:44'),
(109, 'edit_lost_founds', 'lost_founds', '2019-12-26 03:35:44', '2019-12-26 03:35:44'),
(110, 'add_lost_founds', 'lost_founds', '2019-12-26 03:35:44', '2019-12-26 03:35:44'),
(111, 'delete_lost_founds', 'lost_founds', '2019-12-26 03:35:44', '2019-12-26 03:35:44'),
(112, 'browse_security_updates', 'security_updates', '2019-12-26 08:47:23', '2019-12-26 08:47:23'),
(113, 'read_security_updates', 'security_updates', '2019-12-26 08:47:23', '2019-12-26 08:47:23'),
(114, 'edit_security_updates', 'security_updates', '2019-12-26 08:47:23', '2019-12-26 08:47:23'),
(115, 'add_security_updates', 'security_updates', '2019-12-26 08:47:23', '2019-12-26 08:47:23'),
(116, 'delete_security_updates', 'security_updates', '2019-12-26 08:47:23', '2019-12-26 08:47:23'),
(117, 'browse_recommendations', 'recommendations', '2019-12-26 09:01:02', '2019-12-26 09:01:02'),
(118, 'read_recommendations', 'recommendations', '2019-12-26 09:01:02', '2019-12-26 09:01:02'),
(119, 'edit_recommendations', 'recommendations', '2019-12-26 09:01:02', '2019-12-26 09:01:02'),
(120, 'add_recommendations', 'recommendations', '2019-12-26 09:01:02', '2019-12-26 09:01:02'),
(121, 'delete_recommendations', 'recommendations', '2019-12-26 09:01:02', '2019-12-26 09:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(42, 3),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-12-12 07:01:37', '2019-12-12 07:01:37'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-12-12 07:01:37', '2019-12-12 07:01:37'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-12-12 07:01:37', '2019-12-12 07:01:37'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-12-12 07:01:37', '2019-12-12 07:01:37');

-- --------------------------------------------------------

--
-- Table structure for table `recommendations`
--

DROP TABLE IF EXISTS `recommendations`;
CREATE TABLE IF NOT EXISTS `recommendations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `community_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recommendations`
--

INSERT INTO `recommendations` (`id`, `community_id`, `user_id`, `title`, `address`, `name`, `phone`, `email`, `picture`, `detail`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Dog walker available', 'House 524-E, Street 1, Madina Colony, Lahore', 'shahidhussainaali@gmail.com', '+923324703323', 'shahidhussainaali@gmail.com', 'recommendations\\December2019\\MSbY5dav7tTneBC5MXzc.jpg', 'Offer services or share local recommendations/restaurants/shops', 1, '2019-12-27 10:32:19', '2019-12-27 10:32:19');

-- --------------------------------------------------------

--
-- Table structure for table `residents`
--

DROP TABLE IF EXISTS `residents`;
CREATE TABLE IF NOT EXISTS `residents` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `community_id` int(11) DEFAULT NULL,
  `address_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'owner',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `residents`
--

INSERT INTO `residents` (`id`, `community_id`, `address_id`, `user_id`, `reference_id`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, NULL, 'owner', 'active', '2019-12-17 02:09:00', '2019-12-17 02:21:57'),
(2, 1, 2, 2, NULL, 'owner', 'active', '2019-12-17 02:17:45', '2019-12-17 02:17:45'),
(3, 1, 2, 3, NULL, 'tenant', 'active', '2019-12-17 02:23:00', '2019-12-17 02:57:47'),
(4, 1, 2, 4, 3, 'tenant', 'active', '2019-12-17 03:08:00', '2019-12-20 11:38:59');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', '2019-12-12 07:01:30', '2019-12-31 04:37:23'),
(2, 'user', 'Resident', '2019-12-12 07:01:30', '2019-12-31 04:36:58'),
(3, 'manager', 'Manager', '2019-12-13 02:39:40', '2019-12-13 02:39:40'),
(4, 'staff', 'Staff', '2019-12-13 02:40:06', '2019-12-13 02:40:06'),
(5, 'security', 'Security', '2019-12-31 03:41:30', '2019-12-31 04:36:42');

-- --------------------------------------------------------

--
-- Table structure for table `security_updates`
--

DROP TABLE IF EXISTS `security_updates`;
CREATE TABLE IF NOT EXISTS `security_updates` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `community_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `security_updates`
--

INSERT INTO `security_updates` (`id`, `community_id`, `user_id`, `title`, `address`, `latitude`, `longitude`, `picture`, `detail`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Stay alert to the latest breaches', 'House 524-E, Street 1, Madina Colony, Lahore', 31.4645789, 31.4645789, NULL, 'Stay alert to the latest breaches and security response in the neighborhood', 1, '2019-12-27 10:28:40', '2019-12-27 10:28:40');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Smart Town', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Smart Town Admin Panel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'admin.address_format_tokens', 'Address Format Tokens', '[{\r\n	\"token\":\"[HOUSE_NAME]\",\r\n	\"description\":\"Entered House Name in Series\"\r\n},{\r\n	\"token\":\"[HOUSE]\",\r\n	\"description\":\"Auto generated House no e.g 1, 2, 3 from series\"\r\n},{\r\n	\"token\":\"[FLOOR]\",\r\n	\"description\":\"Auto generated Floor no e.g 1, 2, 3 from series\"\r\n},{\r\n	\"token\":\"[FLAT]\",\r\n	\"description\":\"Auto generated Flat no e.g 1, 2, 3 from series\"\r\n},{\r\n	\"token\":\"[STREET]\",\r\n	\"description\":\"Entered Street in series e.g 1\"\r\n},{\r\n	\"token\":\"[BLOCK]\",\r\n	\"description\":\"Entered Block in series e.g F\"\r\n},{\r\n	\"token\":\"[COMMUNITY]\",\r\n	\"description\":\"Community name\"\r\n},{\r\n	\"token\":\"[POSTAL_CODE]\",\r\n	\"description\":\"Community Postal Code\"\r\n},{\r\n	\"token\":\"[CITY]\",\r\n	\"description\":\"Community City\"\r\n},{\r\n	\"token\":\"[STATE]\",\r\n	\"description\":\"Community State\"\r\n},{\r\n	\"token\":\"[COUNTRY]\",\r\n	\"description\":\"Community Country\"\r\n}]', NULL, 'text_area', 6, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-12-12 07:01:39', '2019-12-12 07:01:39'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-12-12 07:01:39', '2019-12-12 07:01:39'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-12-12 07:01:39', '2019-12-12 07:01:39'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-12-12 07:01:39', '2019-12-12 07:01:39'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-12-12 07:01:39', '2019-12-12 07:01:39'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-12-12 07:01:39', '2019-12-12 07:01:39'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-12-12 07:01:39', '2019-12-12 07:01:39'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-12-12 07:01:39', '2019-12-12 07:01:39'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-12-12 07:01:40', '2019-12-12 07:01:40'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-12-12 07:01:40', '2019-12-12 07:01:40'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-12-12 07:01:40', '2019-12-12 07:01:40'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-12-12 07:01:40', '2019-12-12 07:01:40'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-12-12 07:01:40', '2019-12-12 07:01:40'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-12-12 07:01:40', '2019-12-12 07:01:40'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-12-12 07:01:40', '2019-12-12 07:01:40'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-12-12 07:01:40', '2019-12-12 07:01:40'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-12-12 07:01:40', '2019-12-12 07:01:40'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-12-12 07:01:40', '2019-12-12 07:01:40'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-12-12 07:01:40', '2019-12-12 07:01:40'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-12-12 07:01:40', '2019-12-12 07:01:40'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-12-12 07:01:40', '2019-12-12 07:01:40'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-12-12 07:01:41', '2019-12-12 07:01:41'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-12-12 07:01:41', '2019-12-12 07:01:41'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-12-12 07:01:41', '2019-12-12 07:01:41'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-12-12 07:01:41', '2019-12-12 07:01:41'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-12-12 07:01:41', '2019-12-12 07:01:41'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-12-12 07:01:41', '2019-12-12 07:01:41'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-12-12 07:01:41', '2019-12-12 07:01:41'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-12-12 07:01:41', '2019-12-12 07:01:41'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-12-12 07:01:42', '2019-12-12 07:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `community_id` int(11) DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification_status` tinyint(1) NOT NULL DEFAULT '1',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `username` (`username`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `role_id`, `name`, `email`, `community_id`, `phone_number`, `dob`, `gender`, `verification_code`, `verification_status`, `is_active`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 'admin', 1, 'Admin', 'admin@admin.com', NULL, NULL, NULL, NULL, NULL, 1, 1, 'users/default.png', NULL, '$2y$10$BJD5NK0qLNm9JHSshVt11.n2Nc1Q0s96UJIIAPWGsp9A2y6UHg1i.', 'ZmwNV98y29MVtfXulxkbkNyl4BbFDFe5BkTVQX4C3JpMYtUB0suNQzcRAlb2', NULL, '2019-12-12 07:01:35', '2019-12-12 07:01:35'),
(2, 'shahidhussainaali', 2, 'Shahid Hussain', 'shahidhussainaali@gmail.com', 1, NULL, NULL, NULL, NULL, 1, 1, 'users/default.png', NULL, '$2y$10$q72UJdfUHQL7N.l2yLwL8.DI5yLs.uevPpgjEVxx7q6WlDNKLaURm', NULL, '{\"locale\":\"en\"}', '2019-12-13 08:40:54', '2019-12-13 08:40:54'),
(3, 'shahid', 2, 'Shahid', 'shahid@admin.com', 1, NULL, NULL, NULL, NULL, 1, 1, 'users/default.png', NULL, '$2y$10$g19ItC88DzfgYqa6BXUYOexiZH0qrTrWViQUmDwrGBVa8NL9MS1/y', NULL, NULL, '2019-12-16 08:04:22', '2019-12-16 08:04:22'),
(4, 'shahid2', 2, 'Shahid', 'shahid2@admin.com', 2, NULL, NULL, NULL, NULL, 1, 1, 'users/default.png', NULL, '$2y$10$LMt2WVHjGraJIJZ6Rp7MKexLw7486gs9mSGtDQMCjh6jwD8nleFi6', NULL, NULL, '2019-12-16 08:05:30', '2019-12-16 08:05:30'),
(5, 'shahidaali', 2, 'Shahid', 'shahidaali@admin.com', 1, '+923324703323', '1993-04-15', 'Male', NULL, 1, 1, 'users/default.png', NULL, '$2y$10$RKFguccSxhn9rE/foCfxZu9U6Ay5YSIKLZJ7nKt1rgq/e9ABp0fi.', NULL, NULL, '2019-12-30 01:46:36', '2019-12-31 04:02:44'),
(6, 'shahidaali1', 2, 'Shahid', 'shahidaali1@admin.com', 1, '+923324703323', '1993-04-15', 'male', NULL, 1, 1, 'users/default.png', NULL, '$2y$10$TE72TKzLbS9TphVQeeOEuu99USe6/LN5b1Mn44rmbskf43f..1NXm', NULL, NULL, '2019-12-30 01:47:02', '2019-12-30 01:47:02'),
(7, 'shahidaali2', 2, 'Shahid', 'shahidaali2@admin.com', 1, '+923324703323', '1993-04-15', 'female', NULL, 1, 1, 'users/default.png', NULL, '$2y$10$d3SR0cy2rrfVVof4EbqkduWL34zwlzEaKPPBiFDIk06k.cAysap/m', NULL, NULL, '2019-12-30 01:47:24', '2019-12-30 01:47:24'),
(8, 'shahidaali3', 2, 'Shahid', 'shahidaali3@admin.com', 1, '+923324703323', '1993-04-15', 'male', NULL, 1, 1, 'users/default.png', NULL, '$2y$10$dfmQ3h86M/1MwQm9QfTNJ.8/EkxT/AJmKgnMt4/DA6zV06ngiEEMC', NULL, NULL, '2019-12-30 01:48:24', '2019-12-30 01:48:24'),
(9, 'shahidaali4', 2, 'Shahid', 'shahidaali4@admin.com', 1, '+923324703323', '1993-04-15', 'Male', NULL, 1, 1, 'users/default.png', NULL, '$2y$10$MgqxwP1iNXfLq54l3XykE.VcQNg70R2dPlvPndRDzHTBQWEw0Xsfe', NULL, NULL, '2019-12-30 02:14:27', '2019-12-30 02:14:27'),
(10, 'shahidaali5', 2, 'Shahid', 'shahidaali5@admin.com', 1, '+923324703323', '1993-04-15', 'Male', NULL, 1, 1, 'users/December2019/8eMcXWS2KGZp04hPgIt2.png', NULL, '$2y$10$buUhOX/3WauTCGi6G68UVuVvIsdlC9vieDvXCjafs8iRJeUCWv1vy', NULL, NULL, '2019-12-30 02:17:21', '2019-12-30 02:17:21'),
(11, 'shahidaali6', 2, 'Shahid', 'shahidaali6@admin.com', 1, '+923324703323', '1993-04-15', 'Male', NULL, 1, 1, 'users/wKBcDW4DaB0rKHPrB75m.png', NULL, '$2y$10$D1Gonec7HPx2xyX2qLd7Uuem.EjA240W8dPESdf21GD26jcUzk7Nm', NULL, NULL, '2019-12-30 02:18:16', '2019-12-30 02:18:16'),
(12, 'shahidaali7', 2, 'Shahid', 'shahidaali7@admin.com', 1, '+923324703323', '1993-04-15', 'Male', NULL, 1, 1, '', NULL, '$2y$10$HOWvXSYxPqzFw4oqCj94AO8cydaGtXImNP/LD3ZXPIgPEvWq0uGAm', NULL, NULL, '2019-12-30 02:25:48', '2019-12-30 02:25:49'),
(13, 'shahidaali8', 4, 'Shahid', 'shahidaali8@admin.com', 1, '+923324703323', '1993-04-15', 'Male', NULL, 1, 1, 'users/O67RPgZ1MmcWUwZYfiue.png', NULL, '$2y$10$rNXrq/jCWTAVW3Ne1ppQoeXiEzf.yKPEfYQ80SK3oSUoc3nDeARGi', NULL, NULL, '2019-12-30 02:26:54', '2019-12-31 04:47:35'),
(14, 'shahidaali9', 5, 'Shahid', 'shahidaali9@admin.com', 1, '+923324703323', '1993-04-15', 'Male', NULL, 1, 1, 'users/default.png', NULL, '$2y$10$OHfrMCIU6qwfAEv9UU4AgeWvyNzYtjYWCjOrhKAEEu36el6oWYknC', NULL, NULL, '2019-12-30 02:27:12', '2019-12-31 04:36:18'),
(15, 'security', 5, 'Security', 'security@admin.com', 1, '+923324703323', '2019-12-31', 'Male', NULL, 1, 1, 'users/default.png', NULL, '$2y$10$DcRw1GEZhA7E5/24ZXeA8..XqvQpegYEuaMRvZvorJamFm8d03nRy', NULL, NULL, '2019-12-31 04:53:48', '2019-12-31 05:02:17'),
(16, 'shahidaali10', 2, 'Shahid', 'shahidaali10@admin.com', 1, '+923324703323', '1993-04-15', 'Male', NULL, 1, 1, 'users/euo8LaPMKYo2sKKQjm7D.png', NULL, '$2y$10$b.SB8.jwT5bAtY/Kjf06uurPNgj4HrI9xrPnQwS6QMi6oCAZ2tOlm', NULL, NULL, '2019-12-31 05:10:17', '2019-12-31 05:10:17'),
(17, 'shahidaali11', 5, 'Shahid', 'shahidaali11@admin.com', 1, '+923324703323', '1993-04-15', 'Male', NULL, 1, 1, 'users/shLt8fKOSdyvSatsgEcy.png', NULL, '$2y$10$j520fXwQX4ALD1CLkbxwPuOtD0iaeW4UkG1mJ9mBQCORTlib4Vrae', NULL, NULL, '2019-12-31 05:10:53', '2019-12-31 05:10:53');

-- --------------------------------------------------------

--
-- Table structure for table `user_assets`
--

DROP TABLE IF EXISTS `user_assets`;
CREATE TABLE IF NOT EXISTS `user_assets` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `asset_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

DROP TABLE IF EXISTS `visitors`;
CREATE TABLE IF NOT EXISTS `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `invited_by_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invited_by` int(11) DEFAULT NULL,
  `invited_to_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `person_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `person_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `person_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting',
  `admin_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved',
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `invited_by_type`, `invited_by`, `invited_to_type`, `vehicle_no`, `person_name`, `person_phone`, `person_email`, `status`, `admin_status`, `data`, `date`, `created_at`, `updated_at`) VALUES
(1, 'address', 2, 'vehicle', '54321', 'Shahid', '+923324703323', NULL, 'waiting', 'approved', NULL, '2019-12-29 19:00:00', '2019-12-23 06:05:00', '2019-12-23 07:28:07'),
(2, 'address', 1, 'vehicle', '12345', 'Shahid', '+923324703323', NULL, 'waiting', 'approved', NULL, '2019-12-23 19:00:00', '2019-12-23 07:21:00', '2019-12-23 07:27:40'),
(3, 'address', 1, 'vehicle', '12345', 'Shahid', '+923324703323', NULL, 'waiting', 'approved', NULL, '2019-12-27 15:19:00', '2019-12-27 10:38:40', '2019-12-27 10:38:40');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `api_key_access_events`
--
ALTER TABLE `api_key_access_events`
  ADD CONSTRAINT `api_key_access_events_api_key_id_foreign` FOREIGN KEY (`api_key_id`) REFERENCES `api_keys` (`id`);

--
-- Constraints for table `api_key_admin_events`
--
ALTER TABLE `api_key_admin_events`
  ADD CONSTRAINT `api_key_admin_events_api_key_id_foreign` FOREIGN KEY (`api_key_id`) REFERENCES `api_keys` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
