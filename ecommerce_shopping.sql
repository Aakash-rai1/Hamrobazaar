-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2024 at 05:50 AM
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
(7, 'Books', 'Nikunj', '2023-04-18 07:01:34', '18-04-2023 08:38:01 AM'),
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
(11, 8, '43', 1, '2024-04-08 02:17:28', 'COD', NULL);

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
(21, 4, 4, 'iphone13 pro max', 'Apple', 2500, 2300, 'Best', '13pro.jpg', 'th.jpg', 'graphite.jpg', 25, 'In Stock'),
(37, 8, 15, 'Iphone 14', 'apple', 1600, 1500, 'apple', '14.jpg', '14pro.jpg', '14.jpg', 10, 'In Stock'),
(38, 10, 19, 'Jordan', 'Jordan', 210, 199, 'Jordan<br>', 'j1.jpg', 'j2.jpg', 'j3.jpg', 20, 'In Stock'),
(39, 10, 19, 'Jorden 2', 'Jordan', 160, 150, 'Jordan<br>', 'j2.jpg', 'j3.jpg', 'j2.jpg', 20, 'In Stock'),
(40, 8, 16, 'Victus gaming', 'HP', 1600, 1500, 'Victus gaming<br>', 'v1.jpg', 'v2.jpg', 'v3.jpg', 20, 'In Stock'),
(41, 8, 17, 'LED 7', 'Samsung', 1020, 999, 'good', 'led2.jpg', 'led1.jpg', 'led3.jpg', 20, 'In Stock'),
(42, 8, 16, 'Aliean', 'DELL', 2600, 2500, 'DELL', 'a1.jpg', 'a2.jpg', 'a3.jpg', 20, 'In Stock'),
(43, 7, 14, 'harry porter', 'harry porter', 60, 50, 'harry porter<br>', 'harrypotter.0.jpg', 'harrypotter.0.jpg', 'harrypotter.0.jpg', 5, 'In Stock');

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
(13, 7, 'Jhonwick'),
(14, 7, 'Nikunj'),
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
(32, 'ashish@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-17 03:46:29', NULL, 1);

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
(9, 'ashish', 'ashish@gmail.com', 0, 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
