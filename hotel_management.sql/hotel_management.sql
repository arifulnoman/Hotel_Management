-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2022 at 12:48 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

CREATE TABLE `admin_cred` (
  `sr_no` int(11) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `admin_pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
(1, 'noman', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `total_pay` int(11) NOT NULL,
  `room_no` varchar(10) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`sr_no`, `booking_id`, `room_name`, `price`, `total_pay`, `room_no`, `user_name`, `phonenum`, `address`) VALUES
(30, 33, 'Delux Room', 12000, 12000, 'a5', 'Minhazul Abedin', '01741058603', 'Mohammadpur, Dhaka'),
(31, 34, 'Simple Room 2', 240, 960, NULL, 'Minhazul Abedin', '01741058603', 'Mohammadpur, Dhaka'),
(32, 35, 'Delux Room', 12000, 60000, NULL, 'Minhazul Abedin', '01741058603', 'Mohammadpur, Dhaka'),
(33, 36, 'Delux Room', 12000, 12000, 'f4', 'Minhazul Abedin', '01741058603', 'Mohammadpur, Dhaka'),
(34, 37, 'Simple Room 3', 122, 732, NULL, 'Minhazul Abedin', '01741058603', 'Mohammadpur, Dhaka'),
(35, 38, 'Simple Room 3', 122, 854, NULL, 'Minhazul Abedin', '01741058603', 'Mohammadpur, Dhaka'),
(36, 39, 'Simple Room 3', 122, 488, NULL, 'Minhazul Abedin', '01741058603', 'Mohammadpur, Dhaka'),
(37, 40, 'Simple Room 3', 122, 122, NULL, 'Minhazul Abedin', '01741058603', 'Mohammadpur, Dhaka'),
(38, 41, 'Delux Room', 12000, 36000, NULL, 'Minhazul Abedin', '01741058603', 'Mohammadpur, Dhaka'),
(39, 42, 'Delux Room', 12000, 60000, NULL, 'Minhazul Abedin', '01741058603', 'Mohammadpur, Dhaka'),
(40, 43, 'Delux Room', 12000, 24000, NULL, 'Minhazul Abedin', '01741058603', 'Mohammadpur, Dhaka'),
(41, 44, 'Delux Room', 12000, 108000, NULL, 'Minhazul Abedin', '01741058603', 'Mohammadpur, Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `booking_order`
--

CREATE TABLE `booking_order` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `arrival` int(11) NOT NULL DEFAULT 0,
  `refund` int(11) DEFAULT NULL,
  `booking_status` varchar(100) NOT NULL DEFAULT 'pending',
  `order_id` varchar(150) NOT NULL,
  `trans_id` varchar(200) DEFAULT NULL,
  `trans_amt` int(11) NOT NULL,
  `trans_status` varchar(150) NOT NULL DEFAULT 'pending',
  `trans_resp_msg` varchar(200) DEFAULT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_order`
--

INSERT INTO `booking_order` (`booking_id`, `user_id`, `room_id`, `check_in`, `check_out`, `arrival`, `refund`, `booking_status`, `order_id`, `trans_id`, `trans_amt`, `trans_status`, `trans_resp_msg`, `datentime`) VALUES
(33, 4, 9, '2022-12-24', '2022-12-25', 1, NULL, 'booked', 'ORD_43651775', 'SSLCZ_TEST_63a6e98e1865e', 12000, 'TXN_SUCCESS', 'You have successfully done the transaction', '2022-12-24 17:59:13'),
(34, 4, 7, '2022-12-24', '2022-12-28', 0, 1, 'cancelled', 'ORD_43144559', 'SSLCZ_TEST_63a6e9fc3bb7d', 960, 'TXN_SUCCESS', 'You have successfully done the transaction', '2022-12-24 18:01:02'),
(35, 4, 9, '2022-12-24', '2022-12-29', 0, 0, 'cancelled', 'ORD_41308401', 'SSLCZ_TEST_63a6ebba06b84', 60000, 'TXN_SUCCESS', 'You have successfully done the transaction', '2022-12-24 18:08:28'),
(36, 4, 9, '2022-12-30', '2022-12-31', 1, NULL, 'booked', 'ORD_41471983', 'SSLCZ_TEST_63a6ecd65e199', 12000, 'TXN_SUCCESS', 'You have successfully done the transaction', '2022-12-24 18:13:13'),
(37, 4, 8, '2022-12-24', '2022-12-30', 0, NULL, 'pending', 'ORD_46529772', 'SSLCZ_TEST_63a6ed36e1092', 732, 'pending', NULL, '2022-12-24 18:14:48'),
(38, 4, 8, '2022-12-24', '2022-12-31', 0, NULL, 'booked', 'ORD_44365445', 'SSLCZ_TEST_63a6ed46c8cd4', 854, 'TXN_SUCCESS', 'You have successfully done the transaction', '2022-12-24 18:15:05'),
(39, 4, 8, '2022-12-24', '2022-12-28', 0, NULL, 'pending', 'ORD_49327361', 'SSLCZ_TEST_63a6ee0d80836', 488, 'pending', NULL, '2022-12-24 18:18:26'),
(40, 4, 8, '2022-12-24', '2022-12-25', 0, NULL, 'payment failed', 'ORD_48822632', 'SSLCZ_TEST_63a6ee84d400d', 122, 'TXN_FAILED', 'Sorry! The transaction was unsuccessful', '2022-12-24 18:20:21'),
(41, 4, 9, '2022-12-24', '2022-12-27', 0, NULL, 'payment failed', 'ORD_47016387', 'SSLCZ_TEST_63a6eed4dffea', 36000, 'TXN_FAILED', 'Sorry! The transaction was unsuccessful', '2022-12-24 18:21:46'),
(42, 4, 9, '2022-12-24', '2022-12-29', 0, NULL, 'booked', 'ORD_45316268', 'SSLCZ_TEST_63a6f7c514c0e', 60000, 'TXN_SUCCESS', 'You have successfully done the transaction', '2022-12-24 18:59:49'),
(43, 4, 9, '2022-12-24', '2022-12-26', 0, NULL, 'payment failed', 'ORD_42498811', 'SSLCZ_TEST_63a6f812bb8e6', 24000, 'TXN_FAILED', 'Sorry! The transaction was unsuccessful', '2022-12-24 19:01:07'),
(44, 4, 9, '2022-12-25', '2023-01-03', 0, NULL, 'booked', 'ORD_46421197', 'SSLCZ_TEST_63a76eb076aae', 108000, 'TXN_SUCCESS', 'You have successfully done the transaction', '2022-12-25 03:27:12');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `sr_no` int(11) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`sr_no`, `image`) VALUES
(5, 'IMG_46513.png'),
(6, 'IMG_99842.png'),
(7, 'IMG_51642.png'),
(8, 'IMG_53671.png'),
(9, 'IMG_21702.png'),
(11, 'IMG_58297.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gmap` varchar(100) NOT NULL,
  `pn1` bigint(20) NOT NULL,
  `pn2` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `insta` varchar(100) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `iframe` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
(1, 'East West University, Aftab Nagar, Dhaka', 'https://goo.gl/maps/tws8rP3wAzh68yZS7', 8801670731331, 8801741058603, '2019-1-60-196@std.ewubd.edu', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://twitter.com/i/flow/login', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d29211.723447588338!2d90.440318!3d23.766435!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c78c71227c15:0x9f0818437919415d!2sAftab Nagar, Dhaka!5e0!3m2!1sen!2sbd!4v1669159054240!5m2!1sen!2sbd');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
(16, 'IMG_31601.svg', 'Wi-Fi', 'Wi-Fi password nai amr kase'),
(17, 'IMG_98071.svg', 'Air Conditioner', 'Ac chalale thanda lage'),
(18, 'IMG_45680.svg', 'Television', 'Tv er remote kothay'),
(19, 'IMG_24145.svg', 'Geyser', 'Pani gorom thakle lage valo'),
(20, 'IMG_80906.svg', 'Spa', 'Free te massage korate k na chay'),
(21, 'IMG_99888.svg', 'Room Heater', 'Thanday room heater khub dorkar');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(9, 'Washroom'),
(12, 'Bedroom'),
(13, 'Balcony'),
(14, 'Kitchen');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `area` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `description` varchar(350) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `removed` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `area`, `price`, `quantity`, `adult`, `children`, `description`, `status`, `removed`) VALUES
(1, 'dx', 12, 12, 21, 21, 21, 'dsaf', 1, 1),
(2, 'Simple Room 2', 1020, 200, 5, 3, 4, 'Goriber room eta', 0, 1),
(3, 'dasf', 12, 21, 21, 12, 21, 'sdfg', 0, 1),
(4, 'noman', 12, 21, 21, 21, 21, 'adsg', 1, 1),
(5, 'Goriber Room', 1221, 4000, 2, 2, 4, 'Hebbi Room eta', 1, 1),
(6, 'Simple Room', 1220, 120, 2, 2, 3, 'Kom dami ekta room', 1, 0),
(7, 'Simple Room 2', 2020, 240, 2, 2, 4, 'Eta aro gorib marka ekta room', 1, 0),
(8, 'Simple Room 3', 1000, 122, 2, 2, 2, 'dsaf', 1, 0),
(9, 'Delux Room', 5000, 12000, 12, 8, 15, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web pag', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_facilities`
--

INSERT INTO `room_facilities` (`sr_no`, `room_id`, `facilities_id`) VALUES
(69, 7, 17),
(70, 7, 18),
(71, 7, 19),
(72, 7, 21),
(74, 6, 16),
(75, 6, 17),
(76, 6, 20),
(77, 6, 21),
(82, 9, 16),
(83, 9, 17),
(84, 9, 18),
(85, 9, 21),
(90, 8, 16),
(91, 8, 17),
(92, 8, 18),
(93, 8, 19),
(94, 8, 21);

-- --------------------------------------------------------

--
-- Table structure for table `room_features`
--

CREATE TABLE `room_features` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_features`
--

INSERT INTO `room_features` (`sr_no`, `room_id`, `features_id`) VALUES
(53, 7, 13),
(54, 7, 14),
(58, 6, 9),
(59, 6, 12),
(60, 6, 13),
(61, 6, 14),
(66, 9, 9),
(67, 9, 12),
(68, 9, 13),
(69, 9, 14),
(73, 8, 12),
(74, 8, 13),
(75, 8, 14);

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`sr_no`, `room_id`, `image`, `thumb`) VALUES
(25, 6, 'IMG_19737.png', 1),
(27, 7, 'IMG_92465.png', 1),
(28, 8, 'IMG_43403.png', 1),
(29, 9, 'IMG_95725.png', 0),
(30, 9, 'IMG_32941.png', 0),
(31, 9, 'IMG_17376.png', 1),
(32, 6, 'IMG_77409.png', 0),
(33, 6, 'IMG_94291.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_about` varchar(250) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'Goriber HOTEL', 'I had a wonderful experience at the Goriber Hotel. Every staff member I encountered, from the valet to the check-in to the cleaning staff were delightful and eager to help! Thank you! Will recommend to my colleagues!', 0);

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team_details`
--

INSERT INTO `team_details` (`sr_no`, `name`, `picture`) VALUES
(10, 'Minhaz', 'IMG_35716.jpg'),
(11, 'Sojib', 'IMG_96771.jpg'),
(12, 'Akash', 'IMG_50481.jpg'),
(13, 'Shupti', 'IMG_99244.jpg'),
(15, 'Emon', 'IMG_86810.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_cred`
--

CREATE TABLE `user_cred` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `phonenum` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `dob` date NOT NULL,
  `profile` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `token` varchar(200) DEFAULT NULL,
  `t_expire` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_cred`
--

INSERT INTO `user_cred` (`id`, `name`, `email`, `address`, `phonenum`, `pincode`, `dob`, `profile`, `password`, `is_verified`, `token`, `t_expire`, `status`, `datentime`) VALUES
(3, 'Ariful Haque Noman', 'haqueariful33@gmail.com', 'ads', '016707313311', 12, '2022-12-12', 'IMG_13356.jpeg', '$2y$10$2Flajth4yCevNaXc3mCj4u/c1ZLqzbjqOf1xPCJcz9vIThU6rpGsy', 0, '0d1b93f2c1f005d7c8b5b2604a853fd3', NULL, 0, '2022-12-17 06:08:57'),
(4, 'Minhazul Abedin', 'learnerspointacademiccare@gmail.com', 'Mohammadpur, Dhaka', '01741058603', 1206, '1998-01-06', 'IMG_59355.jpeg', '$2y$10$QqmxPAmD9C7a3UCiFa7PbeFic9aezOw9x5ObtK6mlseeMSoE5TUUy', 1, NULL, NULL, 1, '2022-12-20 02:09:42');

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_queries`
--

INSERT INTO `user_queries` (`sr_no`, `name`, `email`, `subject`, `message`, `date`, `seen`) VALUES
(9, 'Ariful Haque Noman', 'arifulhaquenoman27@gmail.com', 'Car Parking Issue', 'ksjdbnk', '2022-12-03', 0),
(10, 'Ariful Haque Noman', 'arifulhaquenoman27@gmail.com', 'Car Parking Issue', 'ksjdbnk', '2022-12-03', 0),
(11, 'Ariful Haque Noman', 'arifulhaquenoman27@gmail.com', 'Car Parking Issue', 'ksjdbnk', '2022-12-03', 0),
(12, 'Ariful Haque Noman', 'arifulhaquenoman27@gmail.com', 'Car Parking Issue', 'ksjdbnk', '2022-12-03', 0),
(13, 'Ariful Haque Noman', 'arifulhaquenoman27@gmail.com', 'Car Parking Issue', 'ksjdbnk', '2022-12-03', 0),
(14, 'Ariful Haque Noman', 'arifulhaquenoman27@gmail.com', 'Car Parking Issue', 'ksjdbnk', '2022-12-03', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room id` (`room_id`),
  ADD KEY `facilities id` (`facilities_id`);

--
-- Indexes for table `room_features`
--
ALTER TABLE `room_features`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `features id` (`features_id`),
  ADD KEY `rm id` (`room_id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `user_cred`
--
ALTER TABLE `user_cred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `booking_order`
--
ALTER TABLE `booking_order`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `room_features`
--
ALTER TABLE `room_features`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_cred`
--
ALTER TABLE `user_cred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD CONSTRAINT `booking_details_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`);

--
-- Constraints for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD CONSTRAINT `booking_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`),
  ADD CONSTRAINT `booking_order_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD CONSTRAINT `facilities id` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `room id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_features`
--
ALTER TABLE `room_features`
  ADD CONSTRAINT `features id` FOREIGN KEY (`features_id`) REFERENCES `features` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `rm id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
