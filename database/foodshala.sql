-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2019 at 12:34 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodshala`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `customerName` varchar(50) NOT NULL,
  `customerNumber` varchar(25) NOT NULL,
  `customerEmail` varchar(25) NOT NULL,
  `foodPreference` varchar(20) NOT NULL,
  `customerCity` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customerName`, `customerNumber`, `customerEmail`, `foodPreference`, `customerCity`, `password`) VALUES
(1, 'AKSHAY JADHAV', '1234567890', 'akshay@gmail.com', 'Veg', 'Vita', '$2y$10$RKHztlmqX4ILBxTnqNjbTeS7vRIPiEclVm1ZuyswF3am7wN5JXcF.');

-- --------------------------------------------------------

--
-- Table structure for table `fooditems`
--

CREATE TABLE `fooditems` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `foodItemName` varchar(50) NOT NULL,
  `foodItemPrice` varchar(25) NOT NULL,
  `foodType` varchar(20) NOT NULL,
  `image` varchar(20) NOT NULL,
  `restaurantName` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fooditems`
--

INSERT INTO `fooditems` (`id`, `user_id`, `foodItemName`, `foodItemPrice`, `foodType`, `image`, `restaurantName`) VALUES
(1, '1', 'Chicken Pizza ', '300', 'Non-veg', 'bg.jpg', 'MyCafe'),
(2, '1', ' Pizza ', '120', 'Veg', 'bg2.jpg', 'MyCafe'),
(3, '1', 'Cold Coffee', '50', 'Veg', 'coldCoffee.jpg', 'MyCafe'),
(4, '1', 'Hot Coffee', '30', 'Veg', 'coldCoffee.jpg', 'MyCafe');

-- --------------------------------------------------------

--
-- Table structure for table `foodorders`
--

CREATE TABLE `foodorders` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `food_id` varchar(20) NOT NULL,
  `restaurant_id` varchar(20) NOT NULL,
  `foodItemName` varchar(25) NOT NULL,
  `foodItemPrice` varchar(25) NOT NULL,
  `foodItemQuantity` varchar(25) NOT NULL,
  `totalBill` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodorders`
--

INSERT INTO `foodorders` (`id`, `customer_id`, `food_id`, `restaurant_id`, `foodItemName`, `foodItemPrice`, `foodItemQuantity`, `totalBill`) VALUES
(3, '1', '2', '1', ' Pizza ', '120', '1', '120'),
(4, '1', '2', '1', ' Pizza ', '120', '1', '120'),
(5, '1', '4', '1', 'Hot Coffee', '30', '2', '60');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL,
  `restaurantName` varchar(255) NOT NULL,
  `restaurantNumber` varchar(25) NOT NULL,
  `restaurantEmail` varchar(50) NOT NULL,
  `createdBy` varchar(25) NOT NULL,
  `restaurantCity` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`id`, `restaurantName`, `restaurantNumber`, `restaurantEmail`, `createdBy`, `restaurantCity`, `password`) VALUES
(1, 'MyCafe', '1234567890', 'myCafe@gmail.com', 'Owner', 'Vita', '$2y$10$/Y9dQfGqzH69cvrgTtkioeWLeIxVwhGNc5gfVv3mfcmyyiD68wXpq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fooditems`
--
ALTER TABLE `fooditems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foodorders`
--
ALTER TABLE `foodorders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fooditems`
--
ALTER TABLE `fooditems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `foodorders`
--
ALTER TABLE `foodorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
