-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2014 at 07:13 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `belajarlar`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_username_unique` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'mmmm', 'msms', '2014-07-26 05:36:48', '2014-07-26 05:36:48'),
(2, 'scarins', '$2y$10$fvj0fkpFFiT.g.4YiUzMbu7zf06rLLQPFF33N7jV2KdEn3e9jUhdu', '2014-07-26 05:37:55', '2014-07-26 05:37:55'),
(3, 'sca', '$2y$10$C3DXttPj7wE.cfI1/Ug.We2VbFsLZ4uz7DjmpOXW4pQHMkYxuYLyK', '2014-07-26 05:38:28', '2014-07-26 05:38:28'),
(4, 'mw', '$2y$10$RMYbUZ5ZTDwB7tm7nABALePbYLmLPZjcxPypVzlZ4jyUuNBQOSW5G', '2014-07-26 05:39:42', '2014-07-26 05:39:42'),
(5, 'ndand', '$2y$10$YES2XSBPojrA8MYEd3ZhtOqiNZ8A7jj8x7Kgf6vhy7L4rX90mmp46', '2014-07-26 05:39:59', '2014-07-26 05:39:59'),
(6, 'scarings', '$2y$10$yDeOfjA/q3wP/UjJwwwXzeu02U/sReaKbNitqhM20XrjlnHYwIvx.', '2014-07-26 06:36:54', '2014-07-26 06:36:54');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
