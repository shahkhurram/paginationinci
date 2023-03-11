-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2022 at 06:46 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pagination_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mobile`, `email`, `address`) VALUES
(1, 'user 1', '1234567890', 'abc@xyz.com', 'Delhi'),
(2, 'Ayasha', '1234567890', 'abc@xyz.com', 'Lucknow'),
(3, 'Alisha', '1234567890', 'abc@xyz.com', 'Banglore'),
(4, 'Mritunjazy', '1234567895', 'abc5@xyz.com', 'Karnataka'),
(5, 'Pramod', '1234567897', 'abc7@xyz.com', 'Lucknow'),
(6, 'user 8', '068755554', 'abc8@xyz.com', 'Varanasi'),
(7, 'Ajay', '888888238', 'abc8@xyz.com', 'Varanasi'),
(8, 'Ayasha Katiyar', '888888238', 'abc8@xyz.com', 'Varanasi'),
(9, 'Anisha Katiyar', '888888238', 'abc8@xyz.com', 'Varanasi'),
(10, ' Ajay Kumar Mauray', '888888238', 'abc8@xyz.com', 'Varanasi'),
(11, 'Harsh Omar', 'Kartikey Mishra', 'abc8@xyz.com', 'Lucknow'),
(12, 'Shivram', '888888238', 'shivram@xyz.com', 'Varanasi'),
(13, 'Niranjan Sahu', '888888238', 'abc8@xyz.com', 'Varanasi'),
(14, 'Pradeeep Kumar', '21212121', 'abc8@xyz.com', 'Lucknow'),
(15, 'Preeetam Gupta', '888888238', 'preetam@xyz.com', 'Varanasi'),
(16, 'Ajay Kumar', '068755554', 'abc8@xyz.com', 'Varanasi'),
(17, 'Ajay Verma', '888888238', 'abc8@xyz.com', 'Varanasi'),
(18, 'Amrita Arora', '59696969658', 'amirta@gmail.com', 'Lucknow'),
(19, 'Vivek Agnihotri', '495954954549', 'vivek@gmail.com', 'Jalandhar'),
(20, 'Mahima Chaudhary', '9686965594', 'mahima@gmail.com', 'Mumbai'),
(21, 'Akshay Khanna', '50565596965', 'akshaya@gmail.com', 'Maharashtra');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
