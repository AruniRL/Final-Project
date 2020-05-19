-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2020 at 02:25 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finaldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(100) NOT NULL,
  `product_title` varchar(225) NOT NULL,
  `ip_address` varchar(225) NOT NULL,
  `quality` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `product_id`, `product_title`, `ip_address`, `quality`) VALUES
(24, 3, 'Capsicum', '::1', 1),
(25, 4, 'Strawberry', '::1', 1),
(26, 16, 'Carrot-cosmic purple', '::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inqury`
--

CREATE TABLE `inqury` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inqury`
--

INSERT INTO `inqury` (`username`, `email`, `subject`, `message`) VALUES
('aruni', 'aruniliyanage617@gmail.com', 'info', 'hi'),
('avi', 'avi@gmail.com', 'for ordering plants', 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_title` varchar(200) NOT NULL,
  `product_cat` varchar(100) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keyword` varchar(100) NOT NULL,
  `views` int(11) NOT NULL,
  `visible` tinyint(1) DEFAULT '1',
  `date` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_cat`, `product_price`, `product_desc`, `product_image`, `product_keyword`, `views`, `visible`, `date`) VALUES
(4, 'Strawberry', '1', 200, '', 'product-2.jpg', '', 0, 0, ''),
(5, 'BeeT Root', '1', 30, '', 'product-3.jpg', '', 0, 0, ''),
(6, 'Kaju Plants', '1', 50, '', 'product-6.jpg', '', 0, 0, ''),
(7, 'Mint Plants', '1', 20, '', 'product-7.jpg', '', 0, 0, ''),
(8, 'Capsicum-sweet banana', '2', 50, '', 'p2.JPG', '', 0, 0, ''),
(9, 'Yellow capcicum', '2', 70, '', 'p3.jpg', '', 0, 0, ''),
(10, 'Capsicum perple', '2', 30, '', 'p4.jpeg', '', 0, 0, ''),
(11, 'Capsicum-hot chill', '2', 50, '', 'p5.jpg', '', 0, 0, ''),
(12, 'Habanero Rot-chill', '2', 30, '', 'p6.jpg', '', 0, 0, ''),
(13, 'Capsicum-Perple Bell', '2', 130, '', 'p8.jpg', '', 0, 0, ''),
(14, 'Carrot-chantenay red cored', '2', 40, '', 'p14.jpg', '', 0, 0, ''),
(15, 'Carrot-chantenay royal', '2', 40, '', 'p15.jpg', '', 0, 0, ''),
(16, 'Carrot-cosmic purple', '2', 40, '', 'p16.jpg', '', 0, 0, ''),
(18, 'Willard mango plants', '3', 100, '', 'p1.jpg', '', 0, 0, ''),
(19, 'Gira Amba plants', '3', 120, '', 'p2.jpg', '', 0, 0, ''),
(20, 'tejc mango plants', '3', 100, '', 'p3.jpeg', '', 0, 0, ''),
(21, 'Mee Amba', '3', 100, '', 'p4.jpeg', '', 0, 0, ''),
(22, 'malwana mango plants', '3', 100, '', 'p5.webp', '', 0, 0, ''),
(23, 'thailand mango plants', '3', 150, '', 'p6.jpg', '', 0, 0, ''),
(25, 'red jumbo plants', '3', 20, '', 'p7.jpg', '', 0, 0, ''),
(26, 'turmeric plants', '4', 100, '', 'p1.webp', '', 0, 0, ''),
(27, 'Akkapana plants', '4', 50, '', 'p2.jpg', '', 0, 0, ''),
(28, 'Aralu plants', '4', 50, '', 'p3.jpg', '', 0, 0, ''),
(29, 'Red Rose Plants', '5', 150, '', 'Redrose.jpg', '', 0, 0, ''),
(30, 'Red and White Rose Plants', '5', 200, '', 'redandwhite.jpg', '', 0, 0, ''),
(31, 'Claire Rose Plants', '5', 200, '', 'claire.jpg', '', 0, 0, ''),
(32, 'Pink Rose Plants', '5', 150, '', 'pinkrose.jpg', '', 0, 0, ''),
(33, 'Lotus Plants', '5', 450, '', 'lotus.jpg', '', 0, 0, ''),
(34, 'Nelum Plants', '5', 450, '', 'nelum.jpg', '', 0, 0, ''),
(35, 'Olu Plants', '5', 450, '', 'olu.jpg', '', 0, 0, ''),
(36, 'Bean seeds', '6', 20, '', 'beans.jpg', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `cat_id` int(100) NOT NULL,
  `cat_title` varchar(200) NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`cat_id`, `cat_title`, `visible`) VALUES
(1, 'All', 1),
(2, 'Vegetables', 1),
(3, 'fruits', 1),
(4, 'herbs', 1),
(5, 'Flowers', 1),
(6, 'seeds', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `parent_comment_id` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `comment_sender_name` varchar(40) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`comment_id`, `parent_comment_id`, `comment`, `comment_sender_name`, `date`) VALUES
(4, 0, 'test comment', 'randika', '2020-05-16 06:06:42'),
(5, 4, 'test reply comment', 'randika', '2020-05-16 06:06:59'),
(6, 0, 'plants and seeds home', 'aruni', '2020-05-16 11:32:50'),
(7, 6, 'yes', 'sami', '2020-05-16 11:33:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_s`
--

CREATE TABLE `user_s` (
  `id` int(100) NOT NULL,
  `ip_address` varchar(225) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `contact` text NOT NULL,
  `user_address` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'guest',
  `visible` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_s`
--

INSERT INTO `user_s` (`id`, `ip_address`, `name`, `email`, `password`, `country`, `city`, `contact`, `user_address`, `image`, `role`, `visible`) VALUES
(7, '::1', 'admin', 'admin@gmail.com', 'admin', 'LK', '091', ' galle', 'galle.', '1327-a.jpg', 'admin', 1),
(8, '::1', 'sami', 'sami@gmail.com', 'sami', 'LK', '011', ' colombo', 'colombo', '5259562062.webp', 'guest', 1),
(9, '::1', 'sasha', 'sasha@gmail.com', '126', 'AU', '035', ' ambalangoda', 'galle', 'otjbibjaAbiifyN9uVaZyL-320-80.jpg', 'guest', 1),
(10, '::1', 'admin1', 'admin1@gmail.com', 'admin1', 'AT', '025', ' colombo', 'colombo', '', 'guest', 1),
(14, '::1', 'admin4', 'admin4@gmail.com', '1234', 'Montserrat', '091', ' galle', 'galle', 'images.jpg', 'guest', 1),
(15, '::1', 'rasangi', 'rasangi@gmail.com', 'rasangi', 'Barbados', 'gg', ' gg', 'yy', 'EwRzWu.jpg', 'guest', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `inqury`
--
ALTER TABLE `inqury`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `user_s`
--
ALTER TABLE `user_s`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_s`
--
ALTER TABLE `user_s`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
