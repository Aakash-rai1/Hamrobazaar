-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2024 at 06:43 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'Books', 'Self-help', '2023-04-18 07:01:34', '18-04-2023 08:38:01 AM'),
(8, 'Electronic', 'Electronic products', '2023-04-18 07:01:55', NULL),
(9, 'Furniture', 'Furniture', '2023-04-18 07:02:16', '18-04-2023 08:45:35 AM'),
(10, 'Fashion', 'Fashion ', '2023-04-18 07:02:30', '18-04-2023 08:38:39 AM');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(7, 4, '1', 1, '2023-04-18 05:26:03', 'Debit / Credit card', NULL),
(8, 4, '3', 1, '2023-04-18 05:26:03', 'Debit / Credit card', NULL),
(9, 7, '2', 1, '2023-04-18 06:39:35', 'Internet Banking', NULL),
(10, 1, '32', 6, '2023-04-18 07:33:28', 'Internet Banking', NULL),
(11, 8, '43', 1, '2024-04-08 02:17:28', 'COD', NULL),
(12, 9, '1', 1, '2024-04-17 04:25:00', NULL, NULL),
(13, 9, '1', 1, '2024-04-17 04:26:00', NULL, NULL),
(14, 9, '1', 1, '2024-04-17 04:32:09', NULL, NULL),
(15, 9, '1', 1, '2024-04-17 04:35:00', NULL, NULL),
(16, 9, '1', 1, '2024-04-17 04:35:06', NULL, NULL),
(17, 9, '2', 1, '2024-04-17 04:35:43', NULL, NULL),
(18, 9, '2', 1, '2024-04-17 04:35:54', NULL, NULL),
(19, 9, '1', 1, '2024-04-17 04:38:47', NULL, NULL),
(20, 9, '38', 1, '2024-04-17 04:38:47', NULL, NULL),
(21, 9, '2', 1, '2024-04-17 04:39:52', NULL, NULL),
(22, 9, '2', 1, '2024-04-17 04:40:43', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`) VALUES
(1, 8, 15, 'iphone 15', 'Apple', 1800, 2000, 'apple', 'iphone15a.jpg', 'iphone-15-pro.jpeg', 'iphone15a.jpg', 10, 'In Stock'),
(2, 7, 14, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 20, 25, ' How the rich earn.', 'richdad.jpg', 'richdad1.jpg', 'richdad.jpg', 5, 'In Stock'),
(3, 9, 18, 'Cedar table', 'Ikea', 250, 320, 'Sturdy and attractive.', 'ikea1.jpg', 'ikea2.jpg', 'ikea.jpeg', 5, 'In Stock'),
(18, 9, 18, 'Bed', 'Ikea', 180, 200, 'Ikea Bed.', 'bed1.jpeg', 'bed2.jpeg', 'bed3.jpeg', 5, 'In Stock'),
(21, 4, 4, 'iPhone13 Pro Max', 'Apple', 2500, 2300, 'This is one of the greatest Iphone', '13pro.jpg', 'iPhone-13-Green.jpeg', 'back.png', 10, 'In Stock'),
(37, 8, 15, 'iphone 14', 'Apple', 1600, 1500, 'apple', '14.jpg', '14pro.jpg', '14.jpg', 10, 'In Stock'),
(38, 10, 19, 'Kyrie 3', 'Nike', 90, 120, 'Third shoe of Kyrie Irving Signature shoe series', 'kyriewhite.jpg', 'samurai.jpg', 'flame.jpg', 20, 'In Stock'),
(39, 10, 19, 'Chuck 70 Vintage', 'Converse', 90, 130, 'Old School Converse', 'black.jpg', 'white.jpg', 'black.jpg', 20, 'In Stock'),
(40, 8, 16, 'Acer Nitro 5 2024', 'Acer', 1600, 1500, 'The latest budget gaming series from acer', 'nitro1.jpg', 'nitro2.jpg', 'nitro3.jpg', 20, 'In Stock'),
(41, 8, 17, 'Samsung Neo QLED 8k', 'Samsung', 2550, 2650, 'Experience 8K experience', 'led2.jpg', 'led1.jpg', 'led3.jpg', 20, 'In Stock'),
(42, 8, 16, 'Alienware Gaming', 'Alienware', 2600, 3200, 'Midrange gaming laptop', 'a1.jpg', 'a2.jpg', 'a3.jpg', 20, 'In Stock'),
(43, 7, 14, 'Ikigai', 'ikigai', 60, 50, ' explores the Japanese concept of finding ones purpose in life by analyzing the habits and beliefs of the worlds longest-living people.', 'ikigai.jpg', 'ikigai2.jpg', 'ikigai3.jpeg', 5, 'In Stock');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`) VALUES
(2, 4, 'Led Television'),
(3, 4, 'Television'),
(4, 4, 'Mobiles'),
(5, 4, 'Mobile Accessories'),
(6, 4, 'Laptops'),
(7, 4, 'Computers'),
(8, 3, 'Comics'),
(9, 5, 'Beds'),
(10, 5, 'Sofas'),
(11, 5, 'Dining Tables'),
(12, 6, 'Men Footwears'),
(13, 7, 'Self-help'),
(14, 7, 'Finance'),
(15, 8, 'Mobiles'),
(16, 8, 'Laptops'),
(17, 8, 'LED TV'),
(18, 9, 'Table'),
(19, 10, 'Men Shoes');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(25, 'johndoe@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-18 05:24:11', '18-04-2023 06:56:27 AM', 1),
(26, 'johndoe@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-18 06:27:39', '18-04-2023 08:03:39 AM', 1),
(27, 'janesmith@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-18 06:35:08', '18-04-2023 08:05:15 AM', 1),
(28, 'alicejohnson@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-18 06:35:59', '18-04-2023 08:06:03 AM', 1),
(29, 'bobwilliams@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-18 06:36:51', NULL, 0),
(30, 'bobwilliams@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-18 06:37:02', '18-04-2023 09:04:57 AM', 1),
(31, 'ashish@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-08 02:03:54', NULL, 1),
(32, 'ashish@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-17 04:24:30', NULL, 0),
(33, 'ashish@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-17 04:24:52', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`) VALUES
(4, 'John Doe', 'johndoe@gmail.com', 6479782497, '4de518f35a2a288388de929d56fe7852', '170 clark avenue', 'ontario', 'kitchener', 395010, '170 clark avenue', 'ontario', 'kitchener', 0),
(6, 'Alice Johnson', 'alicejohnson@gmail.com', 4587982546, 'a1b89835caa6c1577a3e4acf813cf385', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Bob Williams', 'bobwilliams@gmail.com', 8579651425, 'b4078c14fbcb7b3ef69a5f915a753d5b', 'blobkline', 'ontario', 'kitchener', 325412, 'blobkline', 'ontario', 'kitchener', 325412),
(8, 'Ashish', 'ashish@gmail.com', 123456789, '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'ashish', 'ashish@gmail.com', 4375998691, 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
