-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2017 at 02:42 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comic_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `password` varchar(150) NOT NULL,
  `password_hash` varchar(150) DEFAULT NULL,
  `password_reset_token` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `authen_key` varchar(255) DEFAULT NULL,
  `role` tinyint(2) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `is_active` tinyint(2) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `gender` tinyint(2) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `is_online` tinyint(2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `slug` varchar(210) DEFAULT NULL,
  `hot` tinyint(2) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `admin_create` int(11) NOT NULL,
  `admin_modify` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chapter`
--

CREATE TABLE `chapter` (
  `id` int(10) UNSIGNED NOT NULL,
  `comic_text_id` int(11) DEFAULT NULL,
  `content` text,
  `comic_img_id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `hot` tinyint(2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comic_image`
--

CREATE TABLE `comic_image` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cate` int(11) NOT NULL,
  `name` varchar(400) NOT NULL,
  `name2` varchar(400) NOT NULL,
  `image` varchar(200) NOT NULL,
  `author` varchar(150) DEFAULT NULL,
  `hot` tinyint(2) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `rate_count` float(3,1) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `introduct` varchar(1000) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `kind` int(11) NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `admin_create` int(11) DEFAULT NULL,
  `admin_modify` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comic_text`
--

CREATE TABLE `comic_text` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cate` int(11) NOT NULL,
  `name` varchar(400) NOT NULL,
  `name2` varchar(400) NOT NULL,
  `image` varchar(200) NOT NULL,
  `author` varchar(150) DEFAULT NULL,
  `hot` tinyint(2) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `rate_count` float(3,1) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `introduct` varchar(1000) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `kind` int(11) NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `admin_create` int(11) DEFAULT NULL,
  `admin_modify` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_chap` int(11) DEFAULT NULL,
  `name_img` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `object_relation`
--

CREATE TABLE `object_relation` (
  `id` int(10) UNSIGNED NOT NULL,
  `comic_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `password` varchar(150) NOT NULL,
  `password_hash` varchar(150) DEFAULT NULL,
  `password_reset_token` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `authen_key` varchar(255) DEFAULT NULL,
  `role` tinyint(2) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `is_active` tinyint(2) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `gender` tinyint(2) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `is_online` tinyint(2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comic_image`
--
ALTER TABLE `comic_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comic_text`
--
ALTER TABLE `comic_text`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `object_relation`
--
ALTER TABLE `object_relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comic_image`
--
ALTER TABLE `comic_image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comic_text`
--
ALTER TABLE `comic_text`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `object_relation`
--
ALTER TABLE `object_relation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
