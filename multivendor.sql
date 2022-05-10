-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2022 at 03:37 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multivendor`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pro_id` int(11) NOT NULL,
  `proname` varchar(20) NOT NULL,
  `short_line` varchar(50) NOT NULL,
  `detail_des` varchar(50) NOT NULL,
  `img_1` varchar(200) NOT NULL,
  `img_2` varchar(200) NOT NULL,
  `img_3` varchar(200) NOT NULL,
  `img_4` varchar(200) NOT NULL,
  `size` varchar(50) NOT NULL,
  `actual_p` double NOT NULL,
  `discount_p` double NOT NULL,
  `selling_p` double NOT NULL,
  `stocks` varchar(50) NOT NULL,
  `categ` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_id`, `proname`, `short_line`, `detail_des`, `img_1`, `img_2`, `img_3`, `img_4`, `size`, `actual_p`, `discount_p`, `selling_p`, `stocks`, `categ`) VALUES
(1, 'shirt ', 'shortline', 'detaildes', 'img1', ' imag2', 'img3', 'img4', 'l', 111, 100, 90, '23', 'men'),
(2, ' ', '', '', '', ' ', '', '', '', 0, 0, 0, '', ''),
(3, 'saree ', 'best branded tshirts', 'c fd bgfvnb hv', 'C:fakepath20210211_113116.jpg', ' C:fakepath20210211_113116.jpg', 'C:fakepath20210211_113116.jpg', 'C:fakepath20210211_113213.jpg', 'xxxl', 243, 232, 213, '24', 'fvdgf'),
(4, 'asddaadaa ', 'ytfytfyf', 'jvhulilkpjioo', 'C:fakepathzoho1.jpg', ' C:fakepath20210211_113213.jpg', 'C:fakepathScreenshot_20211101_223317.jpg', 'C:fakepathScreenshot_20211101_235029.jpg', 'xl', 1099, 25, 999, '25', 'women'),
(5, 'm dmvwmvw ', 'dcwdfwcm', 'fwefm1f', 'C:fakepathScreenshot_20211101_223317.jpg', ' C:fakepathScreenshot_20211101_235029.jpg', 'C:fakepath20210211_113213.jpg', 'C:fakepathScreenshot_20211101_235029.jpg', 'l', 977, 0, 0, '', ''),
(6, ' ', '', '', '', ' ', '', '', '', 0, 52, 0, '', ''),
(7, 'aslkaspow ', 'wrqorjqo', 'dqojfiejoqlkw', 'C:fakepath20210211_113213.jpg', ' C:fakepathScreenshot_20211101_235029.jpg', 'C:fakepathScreenshot_20211101_223317.jpg', 'C:fakepathzoho1.jpg', '', 789, 50, 739, '28', 'sklksqkskdxksx'),
(8, 'ADSDD ', 'FSDSFSE', 'EFWVSDC', 'C:fakepathScreenshot_20211101_235029.jpg', ' C:fakepathScreenshot_20211101_223317.jpg', 'C:fakepathsign.jpg', 'C:fakepathzoho1.jpg', 'l', 999, 150, 849, '30', 'SDCDCAWFASD'),
(9, 'tshirts ', 'kuytrewqwertyui', 'qwedrtgyhjikl', 'C:fakepathcard2.png', ' C:fakepathcard3.png', 'C:fakepathcard7.png', 'C:fakepathcard8.png', 'xs,s,m,l,xl,xxl', 1059, 150, 909, '30', 'men'),
(10, 'hjagdhkadsf ', 'dfwgrfed', 'jkuoilkjl', 'C:fakepathcard2.png', ' ', '', '', 's,m,l,xl', 1422, 52, 255, '30', 'khulfuei');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, '', '', ''),
(8, 'aji', 'aji@gmail.com', '12345678'),
(12, 'hfhf', 'dsr@123.com', 'dd'),
(13, 'sri01', 'sri01@gmail.com', '12345678'),
(14, 'sun', 'sun@gmail.com', '12345678'),
(15, 'misha', 'misha@gmail.com', '12345678'),
(23, 'asdfgh', 'abc@gmail.com', '12345678'),
(24, 'sri0109', 'sri0109@gmail.com', '12345678'),
(25, 'sri010', 'sri010@gmail.com', '12345678'),
(26, 'sri0107', 'sri0107@gmail.com', '12345678'),
(27, 'sri01067', 'sri01067@gmail.com', '12345678'),
(28, 'sri010673', 'sri010673@gmail.com', '12345678'),
(29, 'sri010671', 'sri010671@gmail.com', '12345678'),
(30, 'azmitha', 'azmitha@gmail.com', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
