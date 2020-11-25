-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2019 at 02:12 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
`message_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
`order_id` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  `poruductID` int(11) NOT NULL,
  `price` double(11,2) NOT NULL,
  `total` double(11,2) NOT NULL,
  `status` varchar(100) NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `transaction_code` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE IF NOT EXISTS `order_details` (
`orderid` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` double(11,2) NOT NULL,
  `productID` int(11) NOT NULL,
  `total` double(11,2) NOT NULL,
  `status` varchar(100) NOT NULL,
  `modeofpayment` varchar(100) NOT NULL,
  `transaction_code` varchar(200) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`orderid`, `memberID`, `qty`, `price`, `productID`, `total`, `status`, `modeofpayment`, `transaction_code`) VALUES
(4, 17, 100, 1000.00, 11, 100000.00, 'Delivered', 'Paypal', ''),
(5, 17, 100, 3000.00, 12, 300000.00, 'Delivered', 'Paypal', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_member`
--

CREATE TABLE IF NOT EXISTS `tb_member` (
`memberID` int(25) NOT NULL,
  `Firstname` varchar(25) NOT NULL,
  `Lastname` varchar(25) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Contact_Number` varchar(25) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_member`
--

INSERT INTO `tb_member` (`memberID`, `Firstname`, `Lastname`, `Email`, `Password`, `Contact_Number`, `address`) VALUES
(17, 'Harry', 'Den', 'harryden@gmail.com', 'pass', '09474557757', 'bacolod city');

-- --------------------------------------------------------

--
-- Table structure for table `tb_products`
--

CREATE TABLE IF NOT EXISTS `tb_products` (
`productID` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `category` varchar(200) NOT NULL,
  `originated` varchar(500) NOT NULL,
  `price` double(11,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `location` varchar(500) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_products`
--

INSERT INTO `tb_products` (`productID`, `name`, `description`, `category`, `originated`, `price`, `quantity`, `location`) VALUES
(11, 'c21-college', 'gray & blue', 'School', 'USA', 1000.00, 100, 'upload/C21-COLLEGE-AND-SCHOOL-BAG-SDL129446205-1-935a9.JPG'),
(10, 'Louis-Vuitton', 'Leather brown & peach', 'Hand', 'USA', 12000.00, 100, 'upload/Louis-Vuitton-Neverfull-GM.jpg'),
(12, '40L', 'Hiking Bag Red & Black', 'Travelling', 'USA', 3000.00, 100, 'upload/40L-brand-hiking-backpacks-High-quality-waterproof-Nylon-men-travel-bags-sports-shoulder-bags-Laptop-rucksack.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
`user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(1, 'admin', 'admin', 'Cherylda', 'Ohiman');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
 ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
 ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
 ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `tb_member`
--
ALTER TABLE `tb_member`
 ADD PRIMARY KEY (`memberID`);

--
-- Indexes for table `tb_products`
--
ALTER TABLE `tb_products`
 ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_member`
--
ALTER TABLE `tb_member`
MODIFY `memberID` int(25) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tb_products`
--
ALTER TABLE `tb_products`
MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
