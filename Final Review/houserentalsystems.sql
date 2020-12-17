-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2020 at 12:28 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `houserentalsystems`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `renteemail` varchar(30) NOT NULL,
  `renteremail` varchar(30) NOT NULL,
  `houseid` int(20) NOT NULL,
  `cost` int(10) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`renteemail`, `renteremail`, `houseid`, `cost`, `address`) VALUES
('munnaf.prince.48@gmail.com', 'munnaf.prince.48@gmail.com', 4, 12325, 'NTR Circle, Madanapalle'),
('munnaf.prince.48@gmail.com', 'munnaf.prince.48@gmail.com', 4, 12325, 'NTR Circle, Madanapalle'),
('munnaf.prince.48@gmail.com', 'munnaf.prince.48@gmail.com', 2, 15000, 'NTR Circle, Madanapalle'),
('munnaf.prince.48@gmail.com', 'munnaf.prince.48@gmail.com', 2, 15000, 'NTR Circle, Madanapalle'),
('munnaf.prince.48@gmail.com', 'munnaf.prince.48@gmail.com', 2, 15000, 'NTR Circle, Madanapalle'),
('munnaf.prince.48@gmail.com', 'munnaf.prince.48@gmail.com', 2, 15000, 'NTR Circle, Madanapalle'),
('munnaf.prince.48@gmail.com', 'munnaf.prince.48@gmail.com', 2, 15000, 'NTR Circle, Madanapalle'),
('munnaf.prince.48@gmail.com', 'munnaf.prince.48@gmail.com', 4, 12325, 'NTR Circle, Madanapalle'),
('munnaf.prince.48@gmail.com', 'munnaf.prince.48@gmail.com', 3, 8709, 'Angallu, Madanapallee'),
('munnaf.prince.48@gmail.com', 'munnaf.prince.48@gmail.com', 2, 15000, 'NTR Circle, Madanapalle'),
('munnaf.prince.48@gmail.com', 'munnaf.prince.48@gmail.com', 4, 12325, 'NTR Circle, Madanapalle'),
('munnaf.prince.48@gmail.com', 'munnaf.prince.48@gmail.com', 3, 8709, 'Angallu, Madanapallee'),
('munnaf.prince.48@gmail.com', 'munnaf.prince.48@gmail.com', 2, 15000, 'NTR Circle, Madanapalle'),
('munnaf.prince.48@gmail.com', 'munnaf.prince.48@gmail.com', 3, 8709, 'Angallu, Madanapallee'),
('munnaf.prince.48@gmail.com', 'munnaf.prince.48@gmail.com', 4, 12325, 'NTR Circle, Madanapalle'),
('munnaf.prince.48@gmail.com', 'munnaf.prince.48@gmail.com', 4, 12325, 'NTR Circle, Madanapalle'),
('munnaf.prince.48@gmail.com', 'munnaf.prince.48@gmail.com', 4, 12325, 'NTR Circle, Madanapalle'),
('munnaf.prince.48@gmail.com', 'munnaf.prince.48@gmail.com', 4, 12325, 'NTR Circle, Madanapalle'),
('munnaf.prince.48@gmail.com', 'munnaf.prince.48@gmail.com', 2, 15000, 'NTR Circle, Madanapalle'),
('munnaf.prince.48@gmail.com', 'munnaf.prince.48@gmail.com', 3, 8709, 'Angallu, Madanapallee'),
('munnaf.prince.48@gmail.com', 'munnaf.prince.48@gmail.com', 2, 15000, 'NTR Circle, Madanapalle'),
('munnaf.prince.48@gmail.com', 'munnaf.prince.48@gmail.com', 3, 8709, 'Angallu, Madanapallee'),
('munnaf.prince.48@gmail.com', 'munnaf.prince.48@gmail.com', 4, 12325, 'NTR Circle, Madanapalle'),
('munnaf.prince.48@gmail.com', 'munnaf.prince.48@gmail.com', 4, 12325, 'NTR Circle, Madanapalle');

-- --------------------------------------------------------

--
-- Table structure for table `customercare`
--

CREATE TABLE `customercare` (
  `username` varchar(30) NOT NULL,
  `useremail` varchar(40) NOT NULL,
  `details` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customercare`
--

INSERT INTO `customercare` (`username`, `useremail`, `details`) VALUES
('', '', ''),
('', '', ''),
('munnaf', '', 'this house is quite good. And the rooms are spacious.'),
('munnaf', 'munnaf.prince.48@gmail.com', 'this house is quite good. And the rooms are spacious'),
('', '', ''),
('munnaf', 'munnaf.prince.48@gmail.com', 'hello \r\nbyee'),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('munnaf', 'munnaf.prince.48@gmail.com', 'the rooms are spacious \r\nthanking you.'),
('munnaf', 'munnaf.prince.48@gmail.com', 'the rooms are spacious \r\nthanking you.'),
('munnaf', 'munnaf.prince.48@gmail.com', 'hello\r\nhai byee\r\nthanking you'),
('munnaf', 'munnaf.prince.48@gmail.com', 'hello\r\nhai byee\r\nthanking you'),
('munnaf', 'munnaf.prince.48@gmail.com', 'hello\r\nhai byee\r\nthanking you'),
('munnaf', 'munnaf.prince.48@gmail.com', 'hello\r\nhai byee\r\nthanking you'),
('munnaf', 'munnaf.prince.48@gmail.com', 'hai bye\r\nthaks for the response\r\nbye'),
('munnaf', 'munnaf.prince.48@gmail.com', 'hai bye\r\nthaks for the response\r\nbye'),
('munnaf', 'munnaf.prince.48@gmail.com', 'hai bye\r\nthaks for the response\r\nbye'),
('munnaf', 'munnaf.prince.48@gmail.com', 'hai bye\r\nthaks for the response\r\nbye'),
('munnaf', 'munnaf.prince.48@gmail.com', 'hai bye\r\nthaks for the response\r\nbye'),
('munnaf', 'munnaf.prince.48@gmail.com', 'fsfsdfsdfsdfsdff'),
('munnaf', 'munnaf.prince.48@gmail.com', 'fsfsdfsdfsdfsdff'),
('munnaf', 'koilakuntlamunnaf@gmail.com', 'hai\r\nhello\r\nbye'),
('', '', ''),
('munnaf', 'munnaf.prince.48@gmail.com', 'the rooms are spacious the house is warm enough.'),
('', '', ''),
('', '', ''),
('', '', ''),
('munnaf', 'munnaf.prince.48@gmail.com', 'the rooms are spacious the house is warm enough.'),
('munnaf', 'munnaf.prince.48@gmail.com', 'the rooms are spacious the house is warm enough.');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `name` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `price` varchar(10) NOT NULL,
  `namecard` varchar(30) NOT NULL,
  `cardNumber` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`name`, `email`, `price`, `namecard`, `cardNumber`) VALUES
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('Munnaf', 'munnaf.prince.48@gmail.com', '', 'Munnaf Koilakuntla', '1111222233334444'),
('', '', '8709', '', ''),
('Munnaf', 'munnaf.prince.48@gmail.com', '8709', 'Munnaf Koilakuntla', '1111222233334444'),
('', '', '12325', '', ''),
('Munnaf', 'munnaf.prince.48@gmail.com', '12325', 'Munnaf Koilakuntla', '1111222233334444'),
('', '', '15000', '', ''),
('', '', '15000', '', ''),
('Munnaf', 'munnaf.prince.48@gmail.com', '15000', 'Munnaf Koilakuntla', '1111222233334444'),
('', '', '15000', '', ''),
('', '', '15000', '', ''),
('', '', '12325', '', ''),
('', '', '8709', '', ''),
('', '', '15000', '', ''),
('', '', '12325', '', ''),
('', '', '8709', '', ''),
('', '', '15000', '', ''),
(' ', ' ', '8709', ' ', ' '),
(' ', ' ', '12325', ' ', ' '),
('Munnaf', 'munnaf.prince.48@gmail.com', '12325', 'Munnaf Koilakuntla', '1111222233334444'),
(' ', ' ', '12325', ' ', ' '),
('Munnaf', 'munnaf.prince.48@gmail.com', '12325', 'Munnaf Koilakuntla', '1111222233334444'),
(' ', ' ', '15000', ' ', ' '),
(' ', ' ', '8709', ' ', ' '),
(' ', ' ', '15000', ' ', ' '),
(' ', ' ', '8709', ' ', ' '),
(' ', ' ', '12325', ' ', ' '),
(' ', ' ', '12325', ' ', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `username` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `mobileno` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`username`, `email`, `password`, `mobileno`) VALUES
('narru', 'gpedxhyimdpzfzlmpw@kiabws.online', 'mnbvcxz', 2147483647),
('loknath', 'hdllnkschvhowdoddu@niwghx.online', '123456', 2147483647),
('munni', 'munni.koilakuntla24@gmail.com', 'mnbvcxz', 2147483647),
('RaviTeja', 'mxyehzgynhgdrpcbka@wqcefp.online', 'mnbvcxz', 987654321),
('loknath', 'nta.gov.india@gmail.com', 'Loknath@123', 2147483647),
('ravi', 'yznfbfqnsvitpcncck@avxrja.com', 'hai123', 987654321);

-- --------------------------------------------------------

--
-- Table structure for table `sethome`
--

CREATE TABLE `sethome` (
  `email` varchar(30) NOT NULL,
  `housetype` varchar(5) NOT NULL,
  `price` int(10) NOT NULL,
  `address` longtext NOT NULL,
  `latitude` double(10,6) NOT NULL,
  `longitude` double(10,6) NOT NULL,
  `city` varchar(20) NOT NULL,
  `houseid` int(11) NOT NULL,
  `booked` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sethome`
--

INSERT INTO `sethome` (`email`, `housetype`, `price`, `address`, `latitude`, `longitude`, `city`, `houseid`, `booked`) VALUES
('hai@gmail.com', '2BHK', 9999, 'Angallu, Madanapalle', 15.912900, 79.739987, 'Madanapalle', 1, 0),
('munnaf.prince.48@gmail.com', '4BHK', 15000, 'NTR Circle, Madanapalle', 15.912900, 79.739987, 'Hyderbad', 2, 0),
('munnaf.prince.48@gmail.com', '1BHK', 8709, 'Angallu, Madanapallee', 15.912900, 79.739987, 'Hyderbad', 3, 0),
('munnaf.prince.48@gmail.com', '2BHK', 12325, 'NTR Circle, Madanapalle', 15.912900, 79.739987, 'Hyderbad', 4, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sethome`
--
ALTER TABLE `sethome`
  ADD PRIMARY KEY (`houseid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sethome`
--
ALTER TABLE `sethome`
  MODIFY `houseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
