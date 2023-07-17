-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2023 at 06:45 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `goukaku2`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `email` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`email`, `product_id`) VALUES
('bank.otaku0725@gmail.com', 30),
('bank.otaku0725@gmail.com', 33),
('bank.otaku0725@gmail.com', 34);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(256) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `profile_image` varchar(256) DEFAULT NULL,
  `login` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`first_name`, `last_name`, `gender`, `email`, `address`, `password`, `profile_image`, `login`) VALUES
('bank', 'song', 'man', 'bank.otaku0725@gmail.com', '5330015大阪府大阪市東淀川区大隅', '123456', NULL, 0),
('Goukaku', 'Project', 'man', 'goukaku1234567@gmail.com', '5330014大阪府大阪市東淀川区豊新', '1234', NULL, 2),
('gogaku', 'seikou', 'other', 'songvilaxay17@icloud.com', '5470013大阪府大阪市平野区長吉長原東', '789456', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `detail_order`
--

CREATE TABLE `detail_order` (
  `detail_id` int(11) NOT NULL,
  `product_id` int(10) DEFAULT NULL,
  `order_id` int(10) DEFAULT NULL,
  `amont` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `detail_order`
--

INSERT INTO `detail_order` (`detail_id`, `product_id`, `order_id`, `amont`, `cost`) VALUES
(7, 26, 3, 1, 130500),
(8, 45, 4, 1, 60000),
(9, 68, 5, 1, 23000),
(10, 3, 6, 1, 1500),
(24, 22, 33, 1, 200000),
(25, 22, 34, 1, 200000),
(26, 33, 34, 1, 4000);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `image_id` int(10) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image_address` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`image_id`, `product_id`, `image_address`) VALUES
(5, 2, '../upImages/large/abc@abc.ac.jp20230113091723.jpeg'),
(6, 2, '../upImages/small/abc@abc.ac.jp20230113091723.jpeg'),
(7, 3, '../upImages/large/abc@abc.ac.jp20230113092535.jpg'),
(8, 3, '../upImages/small/abc@abc.ac.jp20230113092535.jpg'),
(9, 3, '../upImages/large/abc@abc.ac.jp20230113092551.jpg'),
(10, 3, '../upImages/small/abc@abc.ac.jp20230113092551.jpg'),
(11, 3, '../upImages/large/abc@abc.ac.jp20230113092600.jpg'),
(12, 3, '../upImages/small/abc@abc.ac.jp20230113092600.jpg'),
(13, 3, '../upImages/large/abc@abc.ac.jp20230113092609.jpg'),
(14, 3, '../upImages/small/abc@abc.ac.jp20230113092609.jpg'),
(15, 3, '../upImages/large/abc@abc.ac.jp20230113092631.jpg'),
(16, 3, '../upImages/small/abc@abc.ac.jp20230113092631.jpg'),
(17, 3, '../upImages/large/abc@abc.ac.jp20230113092642.jpg'),
(18, 3, '../upImages/small/abc@abc.ac.jp20230113092642.jpg'),
(19, 4, '../upImages/large/abc@abc.ac.jp20230113093202.jpg'),
(20, 4, '../upImages/small/abc@abc.ac.jp20230113093202.jpg'),
(21, 4, '../upImages/large/abc@abc.ac.jp20230113093216.jpg'),
(22, 4, '../upImages/small/abc@abc.ac.jp20230113093216.jpg'),
(23, 4, '../upImages/large/abc@abc.ac.jp20230113093224.jpg'),
(24, 4, '../upImages/small/abc@abc.ac.jp20230113093224.jpg'),
(25, 4, '../upImages/large/abc@abc.ac.jp20230113093235.jpg'),
(26, 4, '../upImages/small/abc@abc.ac.jp20230113093235.jpg'),
(27, 4, '../upImages/large/abc@abc.ac.jp20230113093243.jpg'),
(28, 4, '../upImages/small/abc@abc.ac.jp20230113093243.jpg'),
(29, 4, '../upImages/large/abc@abc.ac.jp20230113093253.jpg'),
(30, 4, '../upImages/small/abc@abc.ac.jp20230113093253.jpg'),
(31, 4, '../upImages/large/abc@abc.ac.jp20230113093302.jpg'),
(32, 4, '../upImages/small/abc@abc.ac.jp20230113093302.jpg'),
(33, 5, '../upImages/large/abc@abc.ac.jp20230113095641.jpg'),
(34, 5, '../upImages/small/abc@abc.ac.jp20230113095641.jpg'),
(35, 5, '../upImages/large/abc@abc.ac.jp20230113095657.jpg'),
(36, 5, '../upImages/small/abc@abc.ac.jp20230113095657.jpg'),
(37, 6, '../upImages/large/abc@abc.ac.jp20230113095914.jpg'),
(38, 6, '../upImages/small/abc@abc.ac.jp20230113095914.jpg'),
(39, 6, '../upImages/large/abc@abc.ac.jp20230113095923.jpg'),
(40, 6, '../upImages/small/abc@abc.ac.jp20230113095923.jpg'),
(41, 6, '../upImages/large/abc@abc.ac.jp20230113095939.jpg'),
(42, 6, '../upImages/small/abc@abc.ac.jp20230113095939.jpg'),
(43, 6, '../upImages/large/abc@abc.ac.jp20230113095947.jpg'),
(44, 6, '../upImages/small/abc@abc.ac.jp20230113095947.jpg'),
(45, 7, '../upImages/large/abc@abc.ac.jp20230113100146.jpg'),
(46, 7, '../upImages/small/abc@abc.ac.jp20230113100146.jpg'),
(47, 7, '../upImages/large/abc@abc.ac.jp20230113100154.jpg'),
(48, 7, '../upImages/small/abc@abc.ac.jp20230113100154.jpg'),
(49, 7, '../upImages/large/abc@abc.ac.jp20230113100218.jpg'),
(50, 7, '../upImages/small/abc@abc.ac.jp20230113100218.jpg'),
(51, 7, '../upImages/large/abc@abc.ac.jp20230113100218.jpg'),
(52, 7, '../upImages/small/abc@abc.ac.jp20230113100218.jpg'),
(53, 7, '../upImages/large/abc@abc.ac.jp20230113100218.jpg'),
(54, 7, '../upImages/small/abc@abc.ac.jp20230113100218.jpg'),
(55, 7, '../upImages/large/abc@abc.ac.jp20230113100219.jpg'),
(56, 7, '../upImages/small/abc@abc.ac.jp20230113100219.jpg'),
(57, 7, '../upImages/large/abc@abc.ac.jp20230113100219.jpg'),
(58, 7, '../upImages/small/abc@abc.ac.jp20230113100219.jpg'),
(59, 7, '../upImages/large/abc@abc.ac.jp20230113100219.jpg'),
(60, 7, '../upImages/small/abc@abc.ac.jp20230113100219.jpg'),
(61, 7, '../upImages/large/abc@abc.ac.jp20230113100219.jpg'),
(62, 7, '../upImages/small/abc@abc.ac.jp20230113100219.jpg'),
(63, 7, '../upImages/large/abc@abc.ac.jp20230113100219.jpg'),
(64, 7, '../upImages/small/abc@abc.ac.jp20230113100219.jpg'),
(65, 7, '../upImages/large/abc@abc.ac.jp20230113100219.jpg'),
(66, 7, '../upImages/small/abc@abc.ac.jp20230113100219.jpg'),
(67, 7, '../upImages/large/abc@abc.ac.jp20230113100219.jpg'),
(68, 7, '../upImages/small/abc@abc.ac.jp20230113100219.jpg'),
(69, 7, '../upImages/large/abc@abc.ac.jp20230113100220.jpg'),
(70, 7, '../upImages/small/abc@abc.ac.jp20230113100220.jpg'),
(71, 7, '../upImages/large/abc@abc.ac.jp20230113100220.jpg'),
(72, 7, '../upImages/small/abc@abc.ac.jp20230113100220.jpg'),
(73, 7, '../upImages/large/abc@abc.ac.jp20230113100220.jpg'),
(74, 7, '../upImages/small/abc@abc.ac.jp20230113100220.jpg'),
(75, 7, '../upImages/large/abc@abc.ac.jp20230113100220.jpg'),
(76, 7, '../upImages/small/abc@abc.ac.jp20230113100220.jpg'),
(77, 7, '../upImages/large/abc@abc.ac.jp20230113100220.jpg'),
(78, 7, '../upImages/small/abc@abc.ac.jp20230113100220.jpg'),
(79, 7, '../upImages/large/abc@abc.ac.jp20230113100220.jpg'),
(80, 7, '../upImages/small/abc@abc.ac.jp20230113100220.jpg'),
(81, 7, '../upImages/large/abc@abc.ac.jp20230113100220.jpg'),
(82, 7, '../upImages/small/abc@abc.ac.jp20230113100220.jpg'),
(83, 7, '../upImages/large/abc@abc.ac.jp20230113100220.jpg'),
(84, 7, '../upImages/small/abc@abc.ac.jp20230113100220.jpg'),
(85, 7, '../upImages/large/abc@abc.ac.jp20230113100220.jpg'),
(86, 7, '../upImages/small/abc@abc.ac.jp20230113100220.jpg'),
(87, 7, '../upImages/large/abc@abc.ac.jp20230113100221.jpg'),
(88, 7, '../upImages/small/abc@abc.ac.jp20230113100221.jpg'),
(89, 7, '../upImages/large/abc@abc.ac.jp20230113100221.jpg'),
(90, 7, '../upImages/small/abc@abc.ac.jp20230113100221.jpg'),
(91, 7, '../upImages/large/abc@abc.ac.jp20230113100221.jpg'),
(92, 7, '../upImages/small/abc@abc.ac.jp20230113100221.jpg'),
(93, 7, '../upImages/large/abc@abc.ac.jp20230113100221.jpg'),
(94, 7, '../upImages/small/abc@abc.ac.jp20230113100221.jpg'),
(95, 8, '../upImages/large/abc@abc.ac.jp20230113100313.jpg'),
(96, 8, '../upImages/small/abc@abc.ac.jp20230113100313.jpg'),
(97, 8, '../upImages/large/abc@abc.ac.jp20230113100322.jpg'),
(98, 8, '../upImages/small/abc@abc.ac.jp20230113100322.jpg'),
(99, 8, '../upImages/large/abc@abc.ac.jp20230113100340.jpg'),
(100, 8, '../upImages/small/abc@abc.ac.jp20230113100340.jpg'),
(101, 8, '../upImages/large/abc@abc.ac.jp20230113100347.jpg'),
(102, 8, '../upImages/small/abc@abc.ac.jp20230113100347.jpg'),
(103, 8, '../upImages/large/abc@abc.ac.jp20230113100353.jpg'),
(104, 8, '../upImages/small/abc@abc.ac.jp20230113100353.jpg'),
(105, 8, '../upImages/large/abc@abc.ac.jp20230113100402.jpg'),
(106, 8, '../upImages/small/abc@abc.ac.jp20230113100402.jpg'),
(107, 9, '../upImages/large/abc@abc.ac.jp20230113100529.jpg'),
(108, 9, '../upImages/small/abc@abc.ac.jp20230113100529.jpg'),
(109, 9, '../upImages/large/abc@abc.ac.jp20230113100535.jpg'),
(110, 9, '../upImages/small/abc@abc.ac.jp20230113100535.jpg'),
(111, 9, '../upImages/large/abc@abc.ac.jp20230113100542.jpg'),
(112, 9, '../upImages/small/abc@abc.ac.jp20230113100542.jpg'),
(113, 9, '../upImages/large/abc@abc.ac.jp20230113100551.jpg'),
(114, 9, '../upImages/small/abc@abc.ac.jp20230113100551.jpg'),
(115, 10, '../upImages/large/abc@abc.ac.jp20230113100735.jpg'),
(116, 10, '../upImages/small/abc@abc.ac.jp20230113100735.jpg'),
(117, 10, '../upImages/large/abc@abc.ac.jp20230113100741.jpg'),
(118, 10, '../upImages/small/abc@abc.ac.jp20230113100741.jpg'),
(119, 10, '../upImages/large/abc@abc.ac.jp20230113100748.jpg'),
(120, 10, '../upImages/small/abc@abc.ac.jp20230113100748.jpg'),
(121, 10, '../upImages/large/abc@abc.ac.jp20230113100754.jpg'),
(122, 10, '../upImages/small/abc@abc.ac.jp20230113100754.jpg'),
(123, 10, '../upImages/large/abc@abc.ac.jp20230113100802.jpg'),
(124, 10, '../upImages/small/abc@abc.ac.jp20230113100802.jpg'),
(125, 10, '../upImages/large/abc@abc.ac.jp20230113100808.jpg'),
(126, 10, '../upImages/small/abc@abc.ac.jp20230113100808.jpg'),
(127, 10, '../upImages/large/abc@abc.ac.jp20230113100816.jpg'),
(128, 10, '../upImages/small/abc@abc.ac.jp20230113100816.jpg'),
(129, 10, '../upImages/large/abc@abc.ac.jp20230113100823.jpg'),
(130, 10, '../upImages/small/abc@abc.ac.jp20230113100823.jpg'),
(131, 10, '../upImages/large/abc@abc.ac.jp20230113100839.jpg'),
(132, 10, '../upImages/small/abc@abc.ac.jp20230113100839.jpg'),
(133, 10, '../upImages/large/abc@abc.ac.jp20230113100852.jpg'),
(134, 10, '../upImages/small/abc@abc.ac.jp20230113100852.jpg'),
(135, 10, '../upImages/large/abc@abc.ac.jp20230113100923.jpg'),
(136, 10, '../upImages/small/abc@abc.ac.jp20230113100923.jpg'),
(137, 10, '../upImages/large/abc@abc.ac.jp20230113100933.jpg'),
(138, 10, '../upImages/small/abc@abc.ac.jp20230113100933.jpg'),
(139, 10, '../upImages/large/abc@abc.ac.jp20230113100941.jpg'),
(140, 10, '../upImages/small/abc@abc.ac.jp20230113100941.jpg'),
(221, 12, '../upImages/large/abc@abc.ac.jp20230113103309.jpg'),
(222, 12, '../upImages/small/abc@abc.ac.jp20230113103309.jpg'),
(223, 12, '../upImages/large/abc@abc.ac.jp20230113103326.jpg'),
(224, 12, '../upImages/small/abc@abc.ac.jp20230113103326.jpg'),
(225, 12, '../upImages/large/abc@abc.ac.jp20230113103338.jpg'),
(226, 12, '../upImages/small/abc@abc.ac.jp20230113103338.jpg'),
(227, 12, '../upImages/large/abc@abc.ac.jp20230113103345.jpg'),
(228, 12, '../upImages/small/abc@abc.ac.jp20230113103345.jpg'),
(229, 12, '../upImages/large/abc@abc.ac.jp20230113103357.jpg'),
(230, 12, '../upImages/small/abc@abc.ac.jp20230113103357.jpg'),
(231, 12, '../upImages/large/abc@abc.ac.jp20230113103405.jpg'),
(232, 12, '../upImages/small/abc@abc.ac.jp20230113103405.jpg'),
(233, 12, '../upImages/large/abc@abc.ac.jp20230113103413.jpg'),
(234, 12, '../upImages/small/abc@abc.ac.jp20230113103413.jpg'),
(235, 12, '../upImages/large/abc@abc.ac.jp20230113103457.jpg'),
(236, 12, '../upImages/small/abc@abc.ac.jp20230113103457.jpg'),
(237, 12, '../upImages/large/abc@abc.ac.jp20230113103506.jpg'),
(238, 12, '../upImages/small/abc@abc.ac.jp20230113103506.jpg'),
(239, 12, '../upImages/large/abc@abc.ac.jp20230113103519.jpg'),
(240, 12, '../upImages/small/abc@abc.ac.jp20230113103519.jpg'),
(241, 12, '../upImages/large/abc@abc.ac.jp20230113103528.jpg'),
(242, 12, '../upImages/small/abc@abc.ac.jp20230113103528.jpg'),
(243, 12, '../upImages/large/abc@abc.ac.jp20230113103537.jpg'),
(244, 12, '../upImages/small/abc@abc.ac.jp20230113103537.jpg'),
(245, 12, '../upImages/large/abc@abc.ac.jp20230113103546.jpg'),
(246, 12, '../upImages/small/abc@abc.ac.jp20230113103546.jpg'),
(247, 12, '../upImages/large/abc@abc.ac.jp20230113103555.jpg'),
(248, 12, '../upImages/small/abc@abc.ac.jp20230113103555.jpg'),
(249, 12, '../upImages/large/abc@abc.ac.jp20230113103604.jpg'),
(250, 12, '../upImages/small/abc@abc.ac.jp20230113103604.jpg'),
(251, 12, '../upImages/large/abc@abc.ac.jp20230113103624.jpg'),
(252, 12, '../upImages/small/abc@abc.ac.jp20230113103624.jpg'),
(253, 12, '../upImages/large/abc@abc.ac.jp20230113103633.jpg'),
(254, 12, '../upImages/small/abc@abc.ac.jp20230113103633.jpg'),
(255, 13, '../upImages/large/abc@abc.ac.jp20230113104455.jpg'),
(256, 13, '../upImages/small/abc@abc.ac.jp20230113104455.jpg'),
(257, 13, '../upImages/large/abc@abc.ac.jp20230113104503.jpg'),
(258, 13, '../upImages/small/abc@abc.ac.jp20230113104503.jpg'),
(259, 13, '../upImages/large/abc@abc.ac.jp20230113104526.jpg'),
(260, 13, '../upImages/small/abc@abc.ac.jp20230113104526.jpg'),
(261, 13, '../upImages/large/abc@abc.ac.jp20230113104535.jpg'),
(262, 13, '../upImages/small/abc@abc.ac.jp20230113104535.jpg'),
(263, 13, '../upImages/large/abc@abc.ac.jp20230113104542.jpg'),
(264, 13, '../upImages/small/abc@abc.ac.jp20230113104542.jpg'),
(265, 18, '../upImages/large/abc@abc.ac.jp20230113130212.jpeg'),
(266, 20, '../upImages/large/abc@abc.ac.jp20230113131633.jpeg'),
(267, 21, '../upImages/large/abc@abc.ac.jp20230113131920.jpg'),
(268, 21, '../upImages/large/abc@abc.ac.jp20230113131933.jpg'),
(269, 21, '../upImages/large/abc@abc.ac.jp20230113131942.jpg'),
(270, 21, '../upImages/large/abc@abc.ac.jp20230113132142.jpg'),
(271, 22, '../upImages/large/abc@abc.ac.jp20230116141252.jpg'),
(272, 22, '../upImages/large/abc@abc.ac.jp20230116141303.jpg'),
(273, 22, '../upImages/large/abc@abc.ac.jp20230116141317.jpg'),
(274, 22, '../upImages/large/abc@abc.ac.jp20230116141326.jpg'),
(275, 22, '../upImages/large/abc@abc.ac.jp20230116141334.jpg'),
(276, 22, '../upImages/large/abc@abc.ac.jp20230116141346.jpg'),
(277, 23, '../upImages/large/abc@abc.ac.jp20230116185027.jpg'),
(278, 23, '../upImages/large/abc@abc.ac.jp20230116185038.jpg'),
(279, 23, '../upImages/large/abc@abc.ac.jp20230116185048.jpg'),
(280, 23, '../upImages/large/abc@abc.ac.jp20230116185057.jpg'),
(281, 23, '../upImages/large/abc@abc.ac.jp20230116185116.jpg'),
(282, 23, '../upImages/large/abc@abc.ac.jp20230116185132.jpg'),
(283, 24, '../upImages/large/abc@abc.ac.jp20230116190824.jpg'),
(284, 24, '../upImages/large/abc@abc.ac.jp20230116190842.jpg'),
(285, 24, '../upImages/large/abc@abc.ac.jp20230116190858.jpg'),
(286, 24, '../upImages/large/abc@abc.ac.jp20230116190921.jpg'),
(287, 24, '../upImages/large/abc@abc.ac.jp20230116190939.jpg'),
(288, 25, '../upImages/large/abc@abc.ac.jp20230116191236.jpg'),
(289, 25, '../upImages/large/abc@abc.ac.jp20230116191249.jpg'),
(290, 25, '../upImages/large/abc@abc.ac.jp20230116191303.jpg'),
(291, 25, '../upImages/large/abc@abc.ac.jp20230116191315.jpg'),
(292, 25, '../upImages/large/abc@abc.ac.jp20230116191356.jpg'),
(293, 25, '../upImages/large/abc@abc.ac.jp20230116191408.jpg'),
(294, 26, '../upImages/large/abc@abc.ac.jp20230116191639.jpg'),
(295, 26, '../upImages/large/abc@abc.ac.jp20230116191652.jpg'),
(296, 26, '../upImages/large/abc@abc.ac.jp20230116191711.jpg'),
(297, 26, '../upImages/large/abc@abc.ac.jp20230116191726.jpg'),
(298, 26, '../upImages/large/abc@abc.ac.jp20230116191739.jpg'),
(299, 26, '../upImages/large/abc@abc.ac.jp20230116191751.jpg'),
(300, 27, '../upImages/large/abc@abc.ac.jp20230116192030.jpg'),
(301, 27, '../upImages/large/abc@abc.ac.jp20230116192040.jpg'),
(302, 27, '../upImages/large/abc@abc.ac.jp20230116192059.jpg'),
(303, 27, '../upImages/large/abc@abc.ac.jp20230116192112.jpg'),
(304, 28, '../upImages/large/abc@abc.ac.jp20230116192643.jpg'),
(305, 28, '../upImages/large/abc@abc.ac.jp20230116192655.jpg'),
(306, 28, '../upImages/large/abc@abc.ac.jp20230116192706.jpg'),
(307, 28, '../upImages/large/abc@abc.ac.jp20230116192718.jpg'),
(308, 28, '../upImages/large/abc@abc.ac.jp20230116192736.jpg'),
(309, 28, '../upImages/large/abc@abc.ac.jp20230116192747.jpg'),
(310, 29, '../upImages/large/abc@abc.ac.jp20230116193411.jpg'),
(311, 29, '../upImages/large/abc@abc.ac.jp20230116193423.jpg'),
(312, 29, '../upImages/large/abc@abc.ac.jp20230116193432.jpg'),
(313, 29, '../upImages/large/abc@abc.ac.jp20230116193446.jpg'),
(314, 29, '../upImages/large/abc@abc.ac.jp20230116193457.jpg'),
(315, 29, '../upImages/large/abc@abc.ac.jp20230116193509.jpg'),
(316, 30, '../upImages/large/abc@abc.ac.jp20230116194001.jpg'),
(317, 30, '../upImages/large/abc@abc.ac.jp20230116194019.jpg'),
(318, 30, '../upImages/large/abc@abc.ac.jp20230116194034.jpg'),
(319, 30, '../upImages/large/abc@abc.ac.jp20230116194047.jpg'),
(320, 30, '../upImages/large/abc@abc.ac.jp20230116194102.jpg'),
(321, 30, '../upImages/large/abc@abc.ac.jp20230116194116.jpg'),
(322, 33, '../upImages/large/abc@abc.ac.jp20230122130224.jpg'),
(323, 33, '../upImages/large/abc@abc.ac.jp20230122130243.jpg'),
(324, 33, '../upImages/large/abc@abc.ac.jp20230122130254.jpg'),
(325, 33, '../upImages/large/abc@abc.ac.jp20230122130312.jpg'),
(326, 34, '../upImages/large/abc@abc.ac.jp20230122130504.jpg'),
(327, 34, '../upImages/large/abc@abc.ac.jp20230122130512.jpg'),
(328, 35, '../upImages/large/abc@abc.ac.jp20230122130925.jpg'),
(329, 35, '../upImages/large/abc@abc.ac.jp20230122130933.jpg'),
(330, 35, '../upImages/large/abc@abc.ac.jp20230122130943.jpg'),
(331, 35, '../upImages/large/abc@abc.ac.jp20230122130954.jpg'),
(332, 36, '../upImages/large/abc@abc.ac.jp20230122131159.jpg'),
(333, 36, '../upImages/large/abc@abc.ac.jp20230122131217.jpg'),
(334, 36, '../upImages/large/abc@abc.ac.jp20230122131228.jpg'),
(335, 36, '../upImages/large/abc@abc.ac.jp20230122131241.jpg'),
(336, 37, '../upImages/large/abc@abc.ac.jp20230122131419.jpg'),
(337, 37, '../upImages/large/abc@abc.ac.jp20230122131429.jpg'),
(338, 37, '../upImages/large/abc@abc.ac.jp20230122131444.jpg'),
(339, 37, '../upImages/large/abc@abc.ac.jp20230122131456.jpg'),
(340, 38, '../upImages/large/abc@abc.ac.jp20230122131642.jpg'),
(341, 38, '../upImages/large/abc@abc.ac.jp20230122131654.jpg'),
(342, 38, '../upImages/large/abc@abc.ac.jp20230122131707.jpg'),
(343, 38, '../upImages/large/abc@abc.ac.jp20230122131717.jpg'),
(344, 39, '../upImages/large/abc@abc.ac.jp20230122132045.jpg'),
(345, 39, '../upImages/large/abc@abc.ac.jp20230122132054.jpg'),
(346, 40, '../upImages/large/abc@abc.ac.jp20230122132254.jpg'),
(347, 40, '../upImages/large/abc@abc.ac.jp20230122132304.jpg'),
(348, 40, '../upImages/large/abc@abc.ac.jp20230122132313.jpg'),
(349, 40, '../upImages/large/abc@abc.ac.jp20230122132326.jpg'),
(350, 41, '../upImages/large/abc@abc.ac.jp20230122132505.jpg'),
(351, 41, '../upImages/large/abc@abc.ac.jp20230122132519.jpg'),
(352, 41, '../upImages/large/abc@abc.ac.jp20230122132529.jpg'),
(353, 41, '../upImages/large/abc@abc.ac.jp20230122132540.jpg'),
(354, 42, '../upImages/large/abc@abc.ac.jp20230122132738.jpg'),
(355, 42, '../upImages/large/abc@abc.ac.jp20230122132749.jpg'),
(356, 42, '../upImages/large/abc@abc.ac.jp20230122132805.jpg'),
(357, 42, '../upImages/large/abc@abc.ac.jp20230122132814.jpg'),
(358, 43, '../upImages/large/abc@abc.ac.jp20230122133001.jpg'),
(359, 43, '../upImages/large/abc@abc.ac.jp20230122133012.jpg'),
(360, 43, '../upImages/large/abc@abc.ac.jp20230122133026.jpg'),
(361, 43, '../upImages/large/abc@abc.ac.jp20230122133037.jpg'),
(362, 44, '../upImages/large/abc@abc.ac.jp20230123204427.jpg'),
(363, 44, '../upImages/large/abc@abc.ac.jp20230123204441.jpg'),
(364, 44, '../upImages/large/abc@abc.ac.jp20230123204453.jpg'),
(365, 44, '../upImages/large/abc@abc.ac.jp20230123204506.jpg'),
(366, 44, '../upImages/large/abc@abc.ac.jp20230123204518.jpg'),
(367, 45, '../upImages/large/abc@abc.ac.jp20230123204740.jpg'),
(368, 45, '../upImages/large/abc@abc.ac.jp20230123204751.jpg'),
(369, 45, '../upImages/large/abc@abc.ac.jp20230123204804.jpg'),
(370, 45, '../upImages/large/abc@abc.ac.jp20230123204815.jpg'),
(371, 45, '../upImages/large/abc@abc.ac.jp20230123204830.jpg'),
(372, 45, '../upImages/large/abc@abc.ac.jp20230123204840.jpg'),
(373, 46, '../upImages/large/abc@abc.ac.jp20230123205021.jpg'),
(374, 46, '../upImages/large/abc@abc.ac.jp20230123205036.jpg'),
(375, 46, '../upImages/large/abc@abc.ac.jp20230123205047.jpg'),
(376, 46, '../upImages/large/abc@abc.ac.jp20230123205056.jpg'),
(377, 47, '../upImages/large/abc@abc.ac.jp20230123205253.jpg'),
(378, 47, '../upImages/large/abc@abc.ac.jp20230123205309.jpg'),
(379, 47, '../upImages/large/abc@abc.ac.jp20230123205318.jpg'),
(380, 47, '../upImages/large/abc@abc.ac.jp20230123205327.jpg'),
(381, 47, '../upImages/large/abc@abc.ac.jp20230123205339.jpg'),
(382, 48, '../upImages/large/abc@abc.ac.jp20230123205530.jpg'),
(383, 48, '../upImages/large/abc@abc.ac.jp20230123205539.jpg'),
(384, 48, '../upImages/large/abc@abc.ac.jp20230123205549.jpg'),
(385, 48, '../upImages/large/abc@abc.ac.jp20230123205602.jpg'),
(386, 48, '../upImages/large/abc@abc.ac.jp20230123205619.jpg'),
(387, 49, '../upImages/large/abc@abc.ac.jp20230123205755.jpg'),
(388, 49, '../upImages/large/abc@abc.ac.jp20230123205805.jpg'),
(389, 49, '../upImages/large/abc@abc.ac.jp20230123205820.jpg'),
(390, 49, '../upImages/large/abc@abc.ac.jp20230123205830.jpg'),
(391, 49, '../upImages/large/abc@abc.ac.jp20230123205842.jpg'),
(392, 50, '../upImages/large/abc@abc.ac.jp20230123210043.jpg'),
(393, 50, '../upImages/large/abc@abc.ac.jp20230123210059.jpg'),
(394, 50, '../upImages/large/abc@abc.ac.jp20230123210116.jpg'),
(395, 50, '../upImages/large/abc@abc.ac.jp20230123210125.jpg'),
(396, 50, '../upImages/large/abc@abc.ac.jp20230123210136.jpg'),
(397, 51, '../upImages/large/abc@abc.ac.jp20230123210312.jpg'),
(398, 51, '../upImages/large/abc@abc.ac.jp20230123210324.jpg'),
(399, 51, '../upImages/large/abc@abc.ac.jp20230123210334.jpg'),
(400, 51, '../upImages/large/abc@abc.ac.jp20230123210344.jpg'),
(401, 51, '../upImages/large/abc@abc.ac.jp20230123210354.jpg'),
(402, 52, '../upImages/large/abc@abc.ac.jp20230123210540.jpg'),
(403, 52, '../upImages/large/abc@abc.ac.jp20230123210911.jpg'),
(404, 52, '../upImages/large/abc@abc.ac.jp20230123210925.jpg'),
(405, 52, '../upImages/large/abc@abc.ac.jp20230123210940.jpg'),
(406, 53, '../upImages/large/abc@abc.ac.jp20230123211405.jpg'),
(407, 53, '../upImages/large/abc@abc.ac.jp20230123211425.jpg'),
(408, 53, '../upImages/large/abc@abc.ac.jp20230123211433.jpg'),
(409, 53, '../upImages/large/abc@abc.ac.jp20230123211444.jpg'),
(410, 53, '../upImages/large/abc@abc.ac.jp20230123211456.jpg'),
(411, 54, '../upImages/large/abc@abc.ac.jp20230124105846.jpg'),
(412, 54, '../upImages/large/abc@abc.ac.jp20230124105858.jpg'),
(413, 54, '../upImages/large/abc@abc.ac.jp20230124105914.jpg'),
(414, 54, '../upImages/large/abc@abc.ac.jp20230124105922.jpg'),
(415, 54, '../upImages/large/abc@abc.ac.jp20230124105935.jpg'),
(416, 54, '../upImages/large/abc@abc.ac.jp20230124105943.jpg'),
(417, 54, '../upImages/large/abc@abc.ac.jp20230124105952.jpg'),
(418, 55, '../upImages/large/abc@abc.ac.jp20230124110700.jpg'),
(419, 55, '../upImages/large/abc@abc.ac.jp20230124110713.jpg'),
(420, 55, '../upImages/large/abc@abc.ac.jp20230124110729.jpg'),
(421, 55, '../upImages/large/abc@abc.ac.jp20230124110739.jpg'),
(422, 56, '../upImages/large/abc@abc.ac.jp20230124110902.jpg'),
(423, 56, '../upImages/large/abc@abc.ac.jp20230124110917.jpg'),
(424, 56, '../upImages/large/abc@abc.ac.jp20230124110932.jpg'),
(425, 56, '../upImages/large/abc@abc.ac.jp20230124110941.jpg'),
(426, 56, '../upImages/large/abc@abc.ac.jp20230124110958.jpg'),
(427, 57, '../upImages/large/abc@abc.ac.jp20230124111205.jpg'),
(428, 57, '../upImages/large/abc@abc.ac.jp20230124111216.jpg'),
(429, 57, '../upImages/large/abc@abc.ac.jp20230124111232.jpg'),
(430, 57, '../upImages/large/abc@abc.ac.jp20230124111242.jpg'),
(431, 57, '../upImages/large/abc@abc.ac.jp20230124111253.jpg'),
(432, 57, '../upImages/large/abc@abc.ac.jp20230124111306.jpg'),
(433, 58, '../upImages/large/abc@abc.ac.jp20230201125922.jpg'),
(434, 58, '../upImages/large/abc@abc.ac.jp20230201125936.jpg'),
(435, 58, '../upImages/large/abc@abc.ac.jp20230201125950.jpg'),
(436, 58, '../upImages/large/abc@abc.ac.jp20230201130001.jpg'),
(437, 59, '../upImages/large/abc@abc.ac.jp20230201130344.jpg'),
(438, 59, '../upImages/large/abc@abc.ac.jp20230201130353.jpg'),
(439, 59, '../upImages/large/abc@abc.ac.jp20230201130405.jpg'),
(440, 59, '../upImages/large/abc@abc.ac.jp20230201130418.jpg'),
(441, 59, '../upImages/large/abc@abc.ac.jp20230201130428.jpg'),
(442, 60, '../upImages/large/abc@abc.ac.jp20230201134221.jpg'),
(443, 60, '../upImages/large/abc@abc.ac.jp20230201134230.jpg'),
(444, 60, '../upImages/large/abc@abc.ac.jp20230201134246.jpg'),
(445, 60, '../upImages/large/abc@abc.ac.jp20230201134302.jpg'),
(446, 60, '../upImages/large/abc@abc.ac.jp20230201134317.jpg'),
(447, 61, '../upImages/large/abc@abc.ac.jp20230201134434.jpg'),
(448, 61, '../upImages/large/abc@abc.ac.jp20230201134442.jpg'),
(449, 61, '../upImages/large/abc@abc.ac.jp20230201134456.jpg'),
(450, 61, '../upImages/large/abc@abc.ac.jp20230201134530.jpg'),
(451, 62, '../upImages/large/abc@abc.ac.jp20230201134713.jpg'),
(452, 62, '../upImages/large/abc@abc.ac.jp20230201134726.jpg'),
(453, 62, '../upImages/large/abc@abc.ac.jp20230201134747.jpg'),
(454, 62, '../upImages/large/abc@abc.ac.jp20230201134802.jpg'),
(455, 62, '../upImages/large/abc@abc.ac.jp20230201134825.jpg'),
(456, 62, '../upImages/large/abc@abc.ac.jp20230201134836.jpg'),
(457, 63, '../upImages/large/abc@abc.ac.jp20230201135022.jpg'),
(458, 63, '../upImages/large/abc@abc.ac.jp20230201135035.jpg'),
(459, 63, '../upImages/large/abc@abc.ac.jp20230201135047.jpg'),
(460, 63, '../upImages/large/abc@abc.ac.jp20230201135107.jpg'),
(461, 64, '../upImages/large/abc@abc.ac.jp20230201135329.jpg'),
(462, 64, '../upImages/large/abc@abc.ac.jp20230201135339.jpg'),
(463, 64, '../upImages/large/abc@abc.ac.jp20230201135353.jpg'),
(464, 64, '../upImages/large/abc@abc.ac.jp20230201135403.jpg'),
(465, 65, '../upImages/large/abc@abc.ac.jp20230201135602.jpg'),
(466, 65, '../upImages/large/abc@abc.ac.jp20230201135616.jpg'),
(467, 65, '../upImages/large/abc@abc.ac.jp20230201135625.jpg'),
(468, 65, '../upImages/large/abc@abc.ac.jp20230201135648.jpg'),
(469, 66, '../upImages/large/abc@abc.ac.jp20230201135947.jpg'),
(470, 66, '../upImages/large/abc@abc.ac.jp20230201135959.jpg'),
(471, 66, '../upImages/large/abc@abc.ac.jp20230201140009.jpg'),
(472, 66, '../upImages/large/abc@abc.ac.jp20230201140023.jpg'),
(473, 67, '../upImages/large/abc@abc.ac.jp20230201140524.jpg'),
(474, 67, '../upImages/large/abc@abc.ac.jp20230201140533.jpg'),
(475, 67, '../upImages/large/abc@abc.ac.jp20230201140545.jpg'),
(476, 67, '../upImages/large/abc@abc.ac.jp20230201140554.jpg'),
(477, 67, '../upImages/large/abc@abc.ac.jp20230201140603.jpg'),
(478, 68, '../upImages/large/abc@abc.ac.jp20230201194733.jpg'),
(479, 68, '../upImages/large/abc@abc.ac.jp20230201194744.jpg'),
(480, 68, '../upImages/large/abc@abc.ac.jp20230201194800.jpg'),
(481, 68, '../upImages/large/abc@abc.ac.jp20230201194815.jpg'),
(482, 68, '../upImages/large/abc@abc.ac.jp20230201194831.jpg'),
(483, 68, '../upImages/large/abc@abc.ac.jp20230201194841.jpg'),
(484, 69, '../upImages/large/abc@abc.ac.jp20230201195032.jpg'),
(485, 69, '../upImages/large/abc@abc.ac.jp20230201195043.jpg'),
(486, 69, '../upImages/large/abc@abc.ac.jp20230201195054.jpg'),
(487, 69, '../upImages/large/abc@abc.ac.jp20230201195104.jpg'),
(488, 69, '../upImages/large/abc@abc.ac.jp20230201195114.jpg'),
(489, 70, '../upImages/large/abc@abc.ac.jp20230201195301.jpg'),
(490, 70, '../upImages/large/abc@abc.ac.jp20230201195314.jpg'),
(491, 70, '../upImages/large/abc@abc.ac.jp20230201195324.jpg'),
(492, 70, '../upImages/large/abc@abc.ac.jp20230201195334.jpg'),
(493, 71, '../upImages/large/abc@abc.ac.jp20230201195500.jpg'),
(494, 71, '../upImages/large/abc@abc.ac.jp20230201195510.jpg'),
(495, 71, '../upImages/large/abc@abc.ac.jp20230201195519.jpg'),
(496, 71, '../upImages/large/abc@abc.ac.jp20230201195531.jpg'),
(497, 71, '../upImages/large/abc@abc.ac.jp20230201195544.jpg'),
(498, 72, '../upImages/large/abc@abc.ac.jp20230201195734.jpg'),
(499, 72, '../upImages/large/abc@abc.ac.jp20230201195750.jpg'),
(500, 72, '../upImages/large/abc@abc.ac.jp20230201195808.jpg'),
(501, 72, '../upImages/large/abc@abc.ac.jp20230201195818.jpg'),
(502, 72, '../upImages/large/abc@abc.ac.jp20230201195825.jpg'),
(503, 73, '../upImages/large/abc@abc.ac.jp20230201200054.jpg'),
(504, 73, '../upImages/large/abc@abc.ac.jp20230201200107.jpg'),
(505, 73, '../upImages/large/abc@abc.ac.jp20230201200116.jpg'),
(506, 73, '../upImages/large/abc@abc.ac.jp20230201200125.jpg'),
(507, 73, '../upImages/large/abc@abc.ac.jp20230201200134.jpg'),
(508, 74, '../upImages/large/abc@abc.ac.jp20230201200341.jpg'),
(509, 74, '../upImages/large/abc@abc.ac.jp20230201200352.jpg'),
(510, 74, '../upImages/large/abc@abc.ac.jp20230201200410.jpg'),
(511, 74, '../upImages/large/abc@abc.ac.jp20230201200419.jpg'),
(512, 74, '../upImages/large/abc@abc.ac.jp20230201200427.jpg'),
(513, 75, '../upImages/large/abc@abc.ac.jp20230201200724.jpg'),
(514, 75, '../upImages/large/abc@abc.ac.jp20230201200744.jpg'),
(515, 75, '../upImages/large/abc@abc.ac.jp20230201200754.jpg'),
(516, 75, '../upImages/large/abc@abc.ac.jp20230201200805.jpg'),
(517, 75, '../upImages/large/abc@abc.ac.jp20230201200813.jpg'),
(518, 76, '../upImages/large/abc@abc.ac.jp20230201200934.jpg'),
(519, 76, '../upImages/large/abc@abc.ac.jp20230201200942.jpg'),
(520, 76, '../upImages/large/abc@abc.ac.jp20230201200954.jpg'),
(521, 76, '../upImages/large/abc@abc.ac.jp20230201201002.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `order_id` int(10) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `order_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `save` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`order_id`, `email`, `order_time`, `save`) VALUES
(3, 'bank.otaku0725@gmail.com', '2023-02-06 01:50:32', 2),
(4, 'songvilaxay17@icloud.com', '2023-02-06 01:55:23', 2),
(5, 'bank.otaku0725@gmail.com', '2023-02-06 02:08:45', 2),
(6, 'bank.otaku0725@gmail.com', '2023-02-06 03:16:03', 2),
(11, 'bank.otaku0725@gmail.com', '2023-02-06 04:32:43', 1),
(33, 'goukaku1234567@gmail.com', '2023-02-15 02:03:38', 2),
(34, 'goukaku1234567@gmail.com', '2023-02-15 02:05:37', 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` longtext DEFAULT NULL,
  `product_describe` longtext DEFAULT NULL,
  `price` int(100) DEFAULT NULL,
  `amount` int(100) DEFAULT NULL,
  `product_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_describe`, `price`, `amount`, `product_type_id`) VALUES
(2, 'Miku', 'Miku pictures ', 2000, 1000, 1),
(3, 'FLIPPER Snapback Hat, American Flag, Flat Brim Hat, Baseball Cap, Mens, Womens, Baseball Hat, Unisex, Adjustable, Snapback Hat\r\n', 'Product Details\r\nMaterial Composition80% Acrylic, 20% Wool\r\nCare InstructionsHand Wash Only\r\nClosure TypeSnap\r\nFit TypeRegular\r\nAbout this Item\r\nA Korean brand, popular in Amazon US.\r\nColors: Available in various colors to choose from.\r\nAdjustable Size: The size can be adjusted using the adjuster on the back. This cap fits head circumferences of 22.4 to 22.8 inches (57 to 58 cm).\r\nComfortable to wear. You can wear it during spring, summer, fall, and winter.\r\nThemes: Vintage style, K-pop, hip hop style, snapback hat, baseball hat, ball cap.', 1500, 10, 1),
(4, 'Gatiamo Women s Side Cap, English Letters, One Point, Embroidery, Adjuster, Adjustable Hat\r\n', 'Product Details\r\nMaterial Composition100% Synthetic\r\nPattern無地\r\n\r\nAbout this Item\r\nEmbroidered Roman logo is simple and stylish\r\nComes with an adjuster that allows you to adjust\r\nOne size fits all: Head circumference approx. 21.7 - 23.6 inches (55\r\nBrim Length: Approx. 2.8 inches (7\r\nDepth: Approx. 4.7 inches (12 cm)', 1250, 15, 1),
(5, 'Ichiyon Plus icap0263 Men s Hat, Cap, Work Cap', 'Product Details\r\nMaterial Composition100% Polyester\r\nCare InstructionsHand Wash Only\r\nClosure TypeBuckle\r\nFit Type調整可能\r\n\r\n\r\nAbout this Item\r\nDesign: Hat, Cap: Men s. Material: 100% polyester. Product code: icap0263. Other: Adjustable, size 14+, limited original cap; summer.\r\nLarge-sized stylish work cap.\r\nIchyon Plus’s popular work cap.This hat is recommended for summer.This summer work cap is easy to match with men’s outfits.The poly jute material is similar to mesh, and is refreshing and breathable.The leather tag on the side is a highlightA large size (L) is available too, so you can choose the size that best fits you.Great work hat for golf, running, outdoor activities and summer work.\r\nColor: Gray.\r\nSize M: Head Circumference (Actual Size): Approx. 24.2 in (61.5 cm), Depth: Approx. 3.3 in (8.5 cm), Brim: Approx. 2.4 in (6 cm).', 550, 25, 1),
(6, 'New Balance Men s NB Logo Cap\r\n', 'Product Details\r\nMaterial Composition100% Cotton\r\nClosure TypeSnap\r\nCountry of OriginChina\r\nAbout this Item\r\nSize L: Brim 2.8 inches (7 cm), Height 4.5 inches (11.5 cm), Inner Circumference 23.6 inches (57 to 60 cm)', 880, 10, 1),
(7, 'Material Composition NEW ERA', 'Product Details\r\nMaterial Composition100% Cotton\r\nClosure TypeBuckle\r\nPatternグラフィック\r\nAbout this Item\r\nSize: One size fits all; Brim: 2.8 inches (7 cm), Height: 3.9 inches (10 cm), Inner Circumference: 22.2 inches (56.5 cm)\r\n', 5500, 20, 1),
(8, 'Nike Futura Pro Cap', 'Product Details\r\nMaterial Composition100% ポリエステル\r\nCare Instructions洗濯機洗い\r\nClosure Typeスナップ\r\n\r\nAbout this Item\r\nSize F = Approx. 22.4–23.2 inches (57–59 cm) around the head\r\nSizes are measured by our staff.', 3000, 55, 1),
(9, '[Nike] Nike Jordan Jumpman Snapback Cap AR2118 011 / 019 [Parallel Import]', 'Size Chart \r\nProduct Details\r\nMaterial Composition100% ポリエステル\r\nClosure Typeスナップ\r\nPatternグラフィック\r\n\r\nAbout this Item\r\n・サイズ調整可', 3200, 22, 1),
(10, 'The North Face NN41811 Trucker Cap, Unisex', 'Product Details\r\nMaterial Composition100% Cotton (Z Only)\r\nCare InstructionsHand Wash Only\r\nClosure TypeNo\r\nPatternグラフィック\r\n\r\nAbout this Item\r\nPopular baseball cap as a classic street casual cap\r\nFlat Brim/Embroidered Logo/American Neck Sizing\r\nMade from recycled polyester, this item is environmentally friendly\r\nUV protection\r\nCompatible size (head circumference): 22.2 - 23.4 inches (56.5 - 59.5 cm), Brim length: 2.8 inches', 5000, 55, 1),
(12, 'Under Armour 1305036 Men’s Blitzing 3.0 Cap', 'Product Details\r\nFit Typeストレッチ\r\nAbout this Item\r\nSize LGXL: Brim 2.8 inches (7 cm), Height 4.1 inches (10.5 cm), Inner circumference 22.4 inches (57 cm).', 2700, 27, 1),
(13, 'VWill Cap, Men s, Women s, Hip Hop Cap, Baseball Cap, Hip Hop Style, Hat, The Attitude, Embroidered, Casual, Golf, Travel, UV Protection, Adjustable, Unisex (3 Colors), Free Size', 'Product Details\r\nMaterial Composition100% Cotton, 100% Polyester\r\nClosure TypeSnap\r\nPattern無地\r\n\r\n\r\nAbout this Item\r\nMaterial: Cotton, polyester, high quality. The fabric is carefully selected, so it is breathable. Not thin or thick, it can be worn in spring, summer, autumn and winter\r\nSize: Approx. 22.0 - 23.6 inches (56 - 60 You can adjust the size to fit your head\r\nDesign: The trendy design will fit any outfit. Solid color and unisex fit for everyone. Can also be used as a couple cap\r\n【Color Selection】 Available in a variety of colors. You can choose the color you like\r\n(Quality etc.) Made with good materials and workmanship. Quality guaranteed. Suitable for casual and trendy occasions like golf and travel. Good gift choice', 2000, 20, 1),
(14, 'YULOONG 100% Cotton Retro Washable Denim Baseball Cap, Adjustable, Unisex', 'Product Details\r\nMaterial Composition100% Cotton\r\nCare InstructionsHand Wash Only\r\nClosure TypeBuckle\r\nAbout this Item\r\n\r\n✪Material: 100% Cotton, Selected High Quality Cotton Fabric\r\n✪Style:Vintage Washed Denim,Classic Cotton\r\nStyle: Unisex and suitable for outdoor sports sunscreen, etc\r\n✪Adjustable Size: Stainless steel copper buckle, easy to adjust strap back, buckle style closure stays securely and fits all head shapes\r\n✪Washing method: Hand wash, water temperature below 40℃ Do not bleach or twist hard', 5020, 50, 1),
(18, 'Luangprabang ', 'Water fall ', 200, 3, 1),
(19, 'Bank', 'San', 400, 2, 1),
(20, 'Laos', 'Map', 100, 3, 1),
(21, 'YULOONG 100% Cotton Retro Washable Denim Baseball Cap, Adjustable, Unisex\r\n', 'Product Details\r\nMaterial Composition100% Cotton\r\nCare InstructionsHand Wash Only\r\nClosure TypeBuckle\r\nAbout this Item\r\n\r\n✪Material: 100% Cotton, Selected High Quality Cotton Fabric\r\n✪Style:Vintage Washed Denim,Classic Cotton\r\nStyle: Unisex and suitable for outdoor sports sunscreen, etc\r\n✪Adjustable Size: Stainless steel copper buckle, easy to adjust strap back, buckle style closure stays securely and fits all head shapes\r\n✪Washing method: Hand wash, water temperature below 40℃ Do not bleach or twist hard', 2700, 35, 1),
(22, '2021 Apple MacBook Pro (16\", Apple M1 Pro Chip with 10-Core CPU and 16-Core GPU, 16GB RAM, 512GB SSD) - Silver', 'Specific Uses For Product	Personal\r\nBrand	Apple(アップル)\r\nOperating System	Mac OS\r\nMemory Storage Capacity	512 GB\r\nScreen Size	16 Inches\r\nRam Memory Installed Size	16 GB\r\nModel Name	MacBook Pro\r\nIncluded Components	16\" MacBook Pro, USB-C to MagSafe 3 Cable (2 m), 140W USB-C Power Adapter\r\nCPU Model	Others\r\nColor	Sliver\r\n', 200000, 20, 2),
(23, 'MacBook 13インチAir 2022: 8コアCPUと8コアGPUを搭載したApple M2チップ, 256GB SSD - ミッドナイト', 'Brand	Apple(アップル)\r\nModel Name	MacBook Air\r\nScreen Size	13.6 Inches\r\nColor	ミッドナイト\r\nCPU Model	Others\r\nRam Memory Installed Size	8 GB\r\nOperating System	Mac OS\r\nGraphics Card Description	Integrated\r\nCPU Speed	3.2 GHz\r\nHard Disk Description	SSD\r\n', 170000, 50, 2),
(24, 'ASUS FA506IEB-R7R3050TW11 TUF Gaming A15 FA506IEB (AMD Ryzen 7 4800H, 16GB, 512GB, RTX 3050 Ti Laptop GPU, 15.6 in. FHD 144Hz, Graphite Black)', 'Brand	ASUS\r\nSeries	TUF Gaming A15 FA506IEB\r\nScreen Size	15.6 Inches\r\nColor	Black (black 19-3911tcx)\r\nCPU Model	AMD Ryzen 7\r\nRam Memory Installed Size	16 GB\r\nOperating System	Windows 11\r\nGraphics Card Description	統合された\r\nGraphics Coprocessor	GeForce RTX 3050 Ti Laptop/Radeon Graphics\r\nCPU Speed	2900 MHz', 150000, 200, 2),
(25, 'Dell Gaming Laptop Alienware x14 R1 Lunarite Win11/14.0FHD/Core i7-12700H/16GB/512GB SSD/RTX3060/Webcam/Wireless LAN NAX8F64A-CHLW', 'Brand	Dell\r\nSeries	Alienware x14 R1\r\nScreen Size	14 Inches\r\nColor	Wht\r\nCPU Model	Core i7\r\nRam Memory Installed Size	16 GB\r\nOperating System	Windows 11 Home\r\nGraphics Card Description	統合された\r\nCPU Speed	2.3 GHz\r\nHard Disk Description	SSD', 167000, 400, 2),
(26, 'Dell Inspiron 15 3511 Laptop, NI335A-BWLS Silver (Intel 11th Gen Core i3-1115G4,8GB, 256GB SSD, 15.6\" FHD)', 'Brand	Dell\r\nSeries	Inspiron 15 3000 3511\r\nScreen Size	15.6 Inches\r\nColor	Sliver\r\nCPU Model	Core i3\r\nRam Memory Installed Size	8 GB\r\nOperating System	Windows 11 Home\r\nSpecial Feature	HD Audio, Fingerprint Reader, Memory Card Slot, Anti Glare Coating, Numeric Keypad\r\nGraphics Card Description	統合された\r\nGraphics Coprocessor	Intel UHD Graphics', 130500, 250, 2),
(27, 'HP Laptop HP 15s-fq2000 15.6\" Intel Core i5-1135G7 8GB Memory 512GB SSD Full HD Windows 11 Pure White with Microsoft Office (Model Number: 54H79PA-AAAB)', 'Brand	ヒューレット・パッカード(HP)\r\nSeries	HP 15s\r\nScreen Size	15.6 Inches\r\nColor	Sliver\r\nHard Disk Size	512 GB\r\nCPU Model	Core i5\r\nRam Memory Installed Size	8 GB\r\nOperating System	Windows 11\r\nGraphics Card Description	統合された\r\nGraphics Coprocessor', 155000, 560, 2),
(28, 'HP Laptop, HP ENVY x360', 'HP Laptop, HP ENVY x360, 13-ay1000, 13.3\", AMD Ryzen 7, 16GB Memory, 1TB SSD, Full HD Touch Panel, Convertible Type, Nightfall Black, with Microsoft Office (Model Number: 59F10PA-AAIE)\r\n\r\n\r\nBrand	ヒューレット・パッカード(HP)\r\nSeries	ENVY x360 13-ay1000\r\nScreen Size	13.3 Inches\r\nColor	Night fall black\r\nHard Disk Size	1 TB\r\nCPU Model	Ryzen 7\r\nRam Memory Installed Size	16 GB\r\nOperating System	Windows 11 Home\r\nGraphics Coprocessor	AMD Radeon™ グラフィックス (プロセッサーに内蔵)\r\nCPU Speed	4.2 GHz', 210000, 300, 2),
(29, 'Japan Acer Acer Nitro5 AN515-57-WA76Y6', 'Japan Acer Acer Nitro5 AN515-57-WA76Y6 Corei7-11800H 16GB 512GB SSD NVIDIA GeForce RTX 3060 Laptop GPU No Drive 15.6 QHD (2560 x 1440) 165Hz IPS Panel Windows 11 Home 64 Bit NitroSense Shale Black\r\n\r\n\r\nBrand	日本エイサー\r\nSeries	Nitro 5\r\nScreen Size	15.6 Inches\r\nColor	Black (black 19-3911tcx)\r\nCPU Model	Core i7\r\nRam Memory Installed Size	16 GB\r\nOperating System	Windows 11\r\nGraphics Card Description	統合された\r\nGraphics Coprocessor	NVIDIA GeForce RTX 3060\r\nCPU Speed	2300 MHz', 260000, 300, 2),
(30, 'MSI Gaming Laptop GF65', 'MSI Gaming Laptop GF65 i7 RTX3060/15.6FHD/144Hz/16GB/512GB/Windows 11/GF65-10UE-437JP\r\n\r\n\r\n\r\nBrand	MSI\r\nSeries	MSI Gaming2022.2-2\r\nScreen Size	15.6 Inches\r\nColor	Black (black 19-3911tcx)\r\nHard Disk Size	512 GB\r\nCPU Model	Intel Core i7\r\nRam Memory Installed Size	16 GB\r\nOperating System	Windows 11 Home\r\nSpecial Feature	Gaming\r\nGraphics Card Description	専用', 300000, 123, 2),
(33, 'Bulgari Rose Goldea Blossom Delight Eau De Parfum', 'Bulgari Rose Goldea Blossom Delight Eau De Parfum, 2.5 fl oz (75 ml)\r\n\r\n\r\n\r\nBrand	BVLGARI(ブルガリ)\r\nItem Form	Liquid\r\nItem Volume	75 Milliliters\r\nScent	Floral rose musk\r\nItem Weight	2.5 Ounces\r\nAbout this item\r\nRose Goldea Blossoms Delight is a dazzling Eau de Parfum that impress with the energy and darling of youth. The spirit of this fragrance represents infinite possibilities in life', 4000, 50, 3),
(34, 'Chanel Bleu de Chanel EDT .03 fl oz (50ml)', 'Chanel Bleu de Chanel EDT .03 fl oz (50ml)\r\n\r\nMay be available at a lower price from other sellers, potentially without free Prime shipping.\r\nBrand	CHANEL\r\nItem Form	エアゾール\r\nItem Volume	50 Milliliters\r\nScent	ウッド\r\nSpecial Feature	香料入り\r\nAbout this item\r\nProduct size (W x D x H): 2.8 x 1.2 x 3.9 inches (7 x 3.1 x 10 cm)\r\nVolume: 1.7 fl oz (50ml)', 20000, 300, 3),
(35, 'COACH Coach Man EDT 100mL (Parallel Import) 100ml (x1)', 'COACH Coach Man EDT 100mL (Parallel Import) 100ml (x1)\r\n\r\n\r\nBrand	COACH(コーチ)\r\nItem Form	Other\r\nItem Volume	100 Milliliters\r\nScent	Wood \r\nSpecial Feature	‐\r\nAbout this item\r\nSize: 3.4 fl oz (100 ml)\r\nCountry of Origin: France\r\nVolume: 3.4 fl oz (100', 23000, 300, 3),
(36, 'Calvin Klein CK-one Eau De Toilette 3.4 fl oz (100 ml)', 'Calvin Klein CK-one Eau De Toilette 3.4 fl oz (100 ml)\r\n\r\n\r\nBrand	CALVIN KLEIN(カルバンクライン)\r\nItem Form	Spray\r\nItem Volume	100 Milliliters\r\nScent	Citrus\r\nFragrance Concentration	Eau_de_toilette\r\nAbout this item\r\nUnisex\r\nCountry of Origin: Spain\r\nVolume: 3.4 fl oz (100 ml)', 15000, 231, 3),
(37, 'David Beckham Instinct 75ML EDT [Parallel Import]', 'David Beckham Instinct 75ML EDT [Parallel Import]\r\n\r\nBrand	DAVID BECKHAM(デヴィッド ベッカム)\r\nItem Form	Liquid\r\nItem Volume	2.5 Fluid Ounces\r\nScent	Oriental\r\nMaterial Feature	HZMT\r\nAbout this item\r\nProduct Size (W x D x H): 2.7 x 1.7 x 4.6 inches (68 x 4\r\nVolume: 2.5 fl oz (75', 13600, 125, 3),
(38, 'Ferrari Black EDT 4.2 fl oz (125ml)', 'Ferrari Black EDT 4.2 fl oz (125ml)\r\n\r\nBrand	Ferrari(フェラーリ)\r\nItem Form	液体\r\nItem Volume	4.2 Fluid Ounces\r\nScent	ベルガモット, プラム, バニラ, ローズ, シナモン, ライム, カルダモン, ムスク, アップル, ジャスミン, アンバーウッド, シダー\r\nFragrance Concentration	Eau_de_toilette\r\nAbout this item\r\nCountry of origin: Italy\r\nQuantity : 4.2 fl oz (125ml)', 23600, 142, 3),
(39, 'Gucci Bloom Netter Lady Fiori EDT 100ml', 'Gucci Bloom Netter Lady Fiori EDT 100ml\r\n\r\nBrand	GUCCI(グッチ)\r\nItem Form	Liquid\r\nItem Volume	3.4 Fluid Ounces\r\nScent	Cipre\r\nItem Weight	0.33 Kilograms\r\nAbout this item\r\nGucci GUCCI\r\nPerfume Women s Fragrance\r\nEau de Parfum\r\nFull Bottle\r\n3.4 fl oz (100', 25000, 400, 3),
(40, 'ジャンヌ・アルテス ブンブン プールフェム 100ml', 'ジャンヌ・アルテス ブンブン プールフェム 100ml\r\n\r\nshipping.\r\nBrand	JEANNE ARTHES(ジャンヌ・アルテス)\r\nItem Form	エアゾール\r\nItem Volume	100 Milliliters\r\nScent	ローズ, ムスク, サンダルウッド, アンバーウッド, シダー\r\nFragrance Concentration	Eau_de_parfum\r\nAbout this item\r\nCountry of origin : FRANCE\r\nVolume : 3.4 fl oz (100ｍl)', 26300, 300, 3),
(41, 'Molton Brown Russian Leather Collection RL Eau de Parfan, 3.4 fl oz (100 ml) (x 1)', 'Molton Brown Russian Leather Collection RL Eau de Parfan, 3.4 fl oz (100 ml) (x 1)\r\n\r\n\r\nBrand	MOLTON BROWN(モルトンブラウン)\r\nItem Form	Other\r\nItem Volume	100 Milliliters\r\nScent	Wood \r\nModel Name	Russian Leather Collection RL Eau De Parfan', 22020, 120, 3),
(42, 'Samurai Woman Dolce Vanilla Eau De Parfum 1.4 fl oz (40 ml)', 'Samurai Woman Dolce Vanilla Eau De Parfum 1.4 fl oz (40 ml)\r\n\r\n\r\nBrand	Samourai woman(サムライウーマン)\r\nItem Form	Aerosol\r\nItem Volume	40 Milliliters\r\nScent	Floral\r\nSpecial Feature	‐\r\nAbout this item\r\nScent: Floral Vanilla Note\r\nVolume: 1.4 fl oz (40 ml)', 11200, 211, 3),
(43, 'GALLEIDO PREMIUM PARFUM Luxe 30ml', 'GALLEIDO PREMIUM PARFUM Luxe 30ml 単品 女性用香水ガレイドプレミアムパルファム 女性用 レディース 香水 フレグランス パルファム いい匂い\r\n\r\n\r\n\r\nBrand	モテメン\r\nItem Form	液体\r\nItem Volume	30 Milliliters\r\nSpecial Feature	香料入り\r\nAge Range (Description)	大人\r\nAbout this item\r\n【待望のレディース香水】大人気GALLEIDO香水シリーズ新作\r\n【男性に向けたレディース香水】男性と会う機会の多い方へ\r\n【香り由来のモテ香水】レディースのモテ香水\r\n【実際に調査を実施】徹底調査から生まれた好感度アップ成分配合\r\n【国内香水工場生産】安心安全のMADE IN JAPAN\r\n【女性の第一印象は匂いから】イメージチェンジをしたい女性に\r\n【どんなシーンでも】きつくない香りなのでほんのり香る', 17600, 330, 3),
(44, 'ASIAMENG Round Smart Watch', 'Brand	ASIAMENG\r\nStyle	Retro\r\nColor	Green gold\r\nSpecial Feature	Design tool\r\nItem Shape	Round\r\nAbout this item\r\n(Incoming Call Notification & Fun Functions) Supports notifications of incoming calls, LINE, Instagram, Gmail, Twitter, Facebook, Skype, WhatsApp, Youtube and Snapchat, so you can be careful with vibration. You can check the notification details on your smart watch, also support you if you don t want to answer a call or hang up a call. Your device can store up to 10 recent notifications and easily check your free time. Even when your smartphone is not at hand, you won t miss notifications of important information, making your life more convenient. Also, this smart watch is full of fun features, including alarm clock, manner mode, arm lift, music control, find your device, stopwatch, screen brightness adjustment, remote shooting, multi-language, etc. Note: This product does not support answer calls or reply notifications\r\n【Fully Round & Custom Dial】 1.28 inch round HD high resolution screen and sleek metal body. The screen is clear and the perfectly round design will highlight your taste. The smart watch has 6 dials, and the dedicated app has more than 50 cloud dials. It also features a customizable dial, so you can upload your favorite photos or choose the color of your text to create your own dial. Get your personalized smart watch with this fashionable watch for both women and men. Tips:You need to log in to the dedicated app to use this feature\r\n13 kinds of exercise modes & adjustable screen brightness & arm lift: Comes with 13 different exercise modes: running, walking, cycling, climbing, yoga, jumping rope, tennis, baseball, basketball, badminton, soccer, rugby, table tennis. Suitable for various sports needs. This smart watch has 4 levels of brightness adjustment, you can freely adjust the display to suit different environments. This ensures that your screen is always clear, while also saving energy. The wrist lift function automatically turns on when you turn your wrist, so you can easily check the time without pressing the power button. Note: The arm raising function will not work in manner mode\r\nLong Battery & IP68 Waterproof: The battery can last up to 7 days of normal use and 30 days of standby time. Eliminates the hassle of frequent charging. In addition, it has IP68 waterproof capabilities, so you don t have to worry about swimming, rain, housework, etc. (Note: hot water, boiling water, sauna, corrosive salt water will damage the watch.)\r\n【Compatible Devices/Customer Services】Using the dedicated app \"OnlyFit\", it supports smartphones with iOS 9.0 and Android 5.0 and above (Tablet and PC are not supported). Manufacturer warranty is 1 year from date of purchase. If the product purchased from the seller is defective, please contact customer service support. Account Service: Order history, Seller, Ask questions', 10000, 23, 5),
(45, 'Apple Watch SE(GPS + Cellularモデル)', 'Apple Watch SE(GPS + Cellularモデル)- 44mmスペースグレイアルミニウムケースとミッドナイトスポーツバンド - レギュラー\r\n\r\n\r\nBrand	Apple(アップル)\r\nModel Name	Apple Watch Series 3\r\nStyle	GPS + Cellular\r\nColor	Space Grey Aluminum Case and Midnight Sport Band - Regular\r\nSpecial Feature	通話, GPS\r\nAbout this item\r\niPhoneが手元になくても電話、メッセージの送受信、道順の確認ができるGPS+Cellularモデル\r\n大きなOLEDRetinaディスプレイ\r\nSeries3と比べて最大2倍速いプロセッサ\r\nAppleWatchで毎日の体の動きを記録して、その成果をiPhoneのフィットネスアプリで確認\r\nランニング、ウォーキング、サイクリング、ヨガ、水泳、ダンスなどのワークアウトを測定', 60000, 30, 5),
(46, 'スマートウォッチ【2022年末登場 1.7インチ大画面】Bluetooth5.2', 'スマートウォッチ【2022年末登場 1.7インチ大画面】Bluetooth5.2 活動量計 血中酸素濃度測定 多種スポーツモード スポーツウォッチ 腕時計 歩数計 着信通知 睡眠モニター IP68防水 スマートブレスレット 音楽再生 DIY文字盤 smart watch 目覚まし時計 明度調整 遠隔カメラ 腕上げ点灯 電卓 ミニゲーム 天気予報 座りすぎ注意 メンズ レディース 老人 母の日 父の日 ギフト 軽量 日本語説明書付き iPhone&Android対応\r\n\r\n\r\nBrand	DREAMCIA\r\nModel Name	K21-black\r\nStyle	休闲\r\nColor	ブラック\r\nScreen Size	1.7 Feet\r\nAbout this item\r\n【1.70インチ大画面&22種類運動モード】スマートウォッチは1.7インチの高解像度大画面を採用され、画質がより鮮明になり、通知や文字などがはっきり見られます。高齢者にも使いやすいです。スポーツウォッチは22種類運動モード（ウォーキング、ランニングライディングなど）付け、好きな運動タープを自由に選ぶことができます。屋内では、ヨガ、縄跳びなどを選択でき、屋外では水泳と登山などを選択できます。運動終わったら、スマートウォッチに記録あり、心拍数、カロリーなどデータが表示されます。\r\n【Bluetooth5.2&文字盤自由変更】2022年末の誠意がある作品登場。最先端技術のBluetooth5.2の採用されたスマート ウォッチは以前旧世代のBluetoothより、通信範囲、接続の安定性が飛躍的に向上しました。最大12メートルの接続距離になります。Smart　watch本体は６種文字盤あり、スマホと接続したら、アプリで120以上の表盤画面をダウンロード出来ます。DIY文字盤もでき、家族、恋人など好きな写真を文字盤として設定できます。\r\n【便利な通知機能&睡眠モニター】スマートウォッチとスマホがペアリング場合、電話、Line、SMS、Twitter、Facebookなどからの通知はバイブで知らせます。（必要に応じて振動強度を調整できます）大切な通知も見逃されません。不便な場合には、時計をタップするだけで通話を拒否します。睡眠モニター機能あり、毎晩スマートウォッチをつけて寝ると、「深い睡眠」「浅い睡眠」、寝入った時間や起きた時間が測定でき、毎晩の睡眠の質を自分で把握できます。アプリで詳しい情報が見れます。\r\n【音楽制御&IP68防水&ミニゲーム】 スマートウォッチ とスマホをペアリングしたら、音楽制御ができます。音楽再生/一時停止、曲送り/曲戻し、着信拒否などの操作が実現ので、わざわざスマートフォンをポケットやカバンから取り出して操作する必要がない、とても便利です。ユニークなIP68防水性能を備えており、水の侵入を防ぐので、スポーツの汗や急な雨も心配なくて安心に使えます。（水泳/入浴/温泉などの高温/高水流の場合は製品の故障になる可能性がありますので注意してください。）三種類のミニゲームが付け、バスを待っている間、または長い仕事の後にリラックスできます。\r\n【輝度調整&豊富な機能】環境の変化に合わせて適切な明るさを調整でき、最大5レベルの明るさ調整できます。ほかには、アプリと連接したら、色な生活に役に立つ機能があります。電卓、遠隔カメラ、座りがち注意、携帯探し、天気予報など機能が搭載されます。この smart watch はAndroid 4.4、iOS9.0以上に対応しています。万が一商品不具合のようでしたら、お気軽にご連絡下さい。セット内容：スマートウォッチの本体x1、日本語取り扱い説明書*1、専用充電ケーブル*1。', 30000, 60, 5),
(47, 'スマートウォッチ 通話機能付き 2022', 'スマートウォッチ 通話機能付き 2022 音楽再生 メッセージ通知 腕時計 活動量計 スポーツウォッチ 多種類運動モード 天気予報 遠隔カメラ 目覚まし時計 座り過ぎ通知 日本語対応(ブラック)\r\n\r\n\r\n\r\nBrand	Ｌａｎａｖｉｄａ\r\nColor	ブラック\r\nSpecial Feature	活動量計, GPS, カメラ\r\nCompatible Devices	スマートフォン\r\nConnectivity Technology	Bluetooth\r\nAbout this item\r\n【Bluetooth5.0通話機能付き&音楽制御】Bluetooth5.0技術を搭載され、スマホとペアリングすると、スマートウォッチ側で時計側で発着信することが可能です。時計側のアドレス帳には8件の連絡先を登録することができます。そして、アプリに接続し、スマホの音楽の開始/一時停止/前/次の曲を制御できます。\r\n【メッセージ通知】スマホとペアリングすると、スマホのメッセージは同時に時計にプッシュされるので、スマホを取り出すことなくメッセージを確認することができ、とても便利です。Twitter/Instagram/Facebook/Lineなどのメッセージをプッシュすることができます。\r\n【多種類運動モード&座り過ぎ通知】基本の歩数、消費カロリー、移動距離を記録する以上、歩く/ランニング/自転車/バドミントン/縄跳び/バスケットボール/サッカー、7つのスポーツモードを選択できます。そして、座り過ぎ通知の機能もあり、健康的な生活を管理することができます。\r\n【長持ちバッテリー&多言語設定可能】本製品のバッテリー容量は400mAhで、フル充電後の待機時間は約30日、使用時間は約7～15日です。時計側は多言語に対応しており、携帯電話とペアリングすると自動的にペアリングされた言語環境に切り替わります。\r\n【多種類の生活機能搭載され&多彩な文字盤選択でき】腕時計はさまざまな便利機能を搭載しています。遠隔カメラ、目覚まし時計、女性秘書、ストップウォッチ、天気予報など、生活をより快適に、より楽しくします。スマホのアプリ側は、豊富なダイヤルを利用できます。使用中に分からないことがあった場合、お気軽にご連絡ください。', 35000, 30, 5),
(48, 'OMMQ', 'スマートウォッチ smart watch 【シリコン＋本革 ベルト 2セット】 血中酸素濃度測定 活動量計 歩数計 IP67防水 ストップウォッチ 目覚まし時計 長座注意 長時間待機 ins/Line/Twitter/Eメール/着信＆メッセージ通知 プレゼント 音楽再生 天気情報 アラーム スマホ探し 輝度調整＆腕上げ点灯 プレゼント 敬老の日 自分へのご褒美 iPhone/Android 日本語説明書付\r\n\r\nBrand	OMMQ\r\nColor	イエローゴールド\r\nSpecial Feature	活動量計, 座り過ぎ通知\r\nCompatible Devices	スマートフォン\r\nConnectivity Technology	Bluetooth, GPS\r\nAbout this item\r\n【2022 ファッションバージョン スマートウォッチ】2022初デビューの大画面の丸形フルカラースクリーンを搭載しており、解像度は360*360にアップし、快適な視覚感と優れた操作感を持たすスマートウォッチです。例のない快適な視覚感と優れた操作感をもたらします。本体の文字盤を搭載する以外、専用アプリ「FunKeep」で45種類以上の文字盤をダウンロードできるし、家族や恋人、アイドルなどの写真を文字盤の画面に変えることもできます。毎日のお気持ちによって、文字盤スタイルを取り替えましょう。クリスマス、感謝祭、父の日、バレンタインデー、記念日などはあなたとあなたのお子様、お父さん、ご主人、大切な方へのプレゼントに最適です。\r\n【Bluetooth通話機能付き & 音声AIアシスタント】スマートウォッチ にはスピーカーと高性能マイクが内蔵され、スマホと簡単なペアリングだけで、直接に電話をかけることや着信拒否など機能を実現できます。運転、家事中で両手開放、より便利に。音声コマンドでニュースや情報にアクセスしたり、天気を簡単に確認したり、スマートホームデバイスを操作したりすることができます。着信に応答または拒否することができます。専用アプリと接続したらキーパットで電話番号をダイヤルすれば電話をかけます。また専用アプリに連絡先を追加すると、スマートウォッチで追加したリストを表示され、リストから電話もかけます。通話記録を保存することもできます。電話をポケットやバッグに入れたままでもBluetooth通話可能、運転中でも運動中でも両手を解放できます。また、ウオッチで携帯電話の音楽を再生できます。 曲送り・曲戻し・一時停止、音量調整等の操作もできます。 またAACスピーカー搭載され、立体音質で究極の体験を与えられます。\r\n【血中酸素濃度測定】血中酸素濃度を測定可能です。呼吸トレーニング機能も搭載され、深呼吸訓練を行い、ストレスを解放し、リラックスできます。また歩数、カロリー消費を記録する上、睡眠の質を確認することもできます。そのほかに座りがち注意、毎日の生活習慣の養いに役立ちます。\r\n【実用な機能満載 & IP67生活防水 & 長持ちバッテリー】天気予報、遠隔カメラ、音楽制御、目覚まし時計、女性の生理周期管理、呼吸訓練など便利な機能が備えることも魅力です。IP67等級の生活防水機能を持って、汗、雨、水しぶきにも大丈夫。日常生活の手洗いや洗顔の際にも取り外す必要ありません。220mAhバッテリーが搭載、一回のフル充電で5-10日間長持ち可能で頻繁に充電する手間が省けます。\r\n【活動量計・24つスポーツモード&便利な通知機能】走行距離など日々の様々な活動量の計測が可能 Smart Watch です。アプリでライニング時間を設定でき、組み合わせたGPS机能で働作を記録し、運動軌跡などが一目瞭然です。このスマートウォッチは24つスポーツモードを選択することができ、体の状況により運動目標を設定してしっかり管理を実現できます スマートウォッチは、Line、Twitter、Ins、Facebook、Instagram、着信などの通知は、全部バイブレーションで通知されます。一切の大事な連絡を絶対に見逃しません。また、メッセージ内容や相手の名前または対応するアプリのアイコンも表示されます。', 25050, 203, 5),
(49, 'SOPPY', 'スマートウォッチ 2022モデル 1.1インチHDスクリーン スリム 女性向け 健康管理 3ATM防水 体重記録 メッセージ・Line着信通知 アラーム機能 リマインダー機能 運動モード iPhone対応 Android対応 活動量計 (ワイン)\r\n\r\n\r\nBrand	SOPPY\r\nModel Name	C60\r\nStyle	カジュアル\r\nColor	ワイン\r\nSpecial Feature	カロリートラッカー, 心拍計\r\nAbout this item\r\n【細めのすっきりしたデザイン】 超軽量で肌に優しい設計のストラップは装着感や使用感が良く、日常生活や仕事の中でもほとんどつけていないような心地よさをもたらしてくれます。\r\n【運動管理】 フィットネストラッカーには25種類のプロスポーツモードがあり、アプリで好きなスポーツモードを好きな数だけ自分専用のスポーツモードとして選択し、スポーツデータを記録することができます。\r\n【3ATM防水仕様】：3ATM防水機能も付いているので雨の日でも濡れてしまうのを気にせず使え、日常生活でお風呂に入る時以外は特に外すことはありません。（※ご注意：完全防水ではない為、潜水、または温泉など湯気溢れる場合に避けてください。）\r\n【多種類スタイル文字盤】 スマートウォッチには6つの文字盤が内蔵されており、アプリを通して、45種以上のウォッチフェイスを自由的に切り替えられます。 または文字盤を直接カスタマイズできます。\r\n【対応機種＆サーポート】：本製品はIOS 8.2以上、Android4.4以上、Bluetooth5.0以上の機種のみ対応しております。Google Pixel 4a、Google Pixel 4、Google Pixel 4 XL、arrows、ASUS、Zenfone、HTC、LG、Google、Nexus、Microsoftも対応。もし商品についてご不明なところがございましたら、お気軽に本店のサーポートにお問い合わせください。', 40000, 306, 5),
(50, 'Semiro', 'スマートウォッチ 【2022秋 革新なBluetooth5.3】\r\n 活動量計 血中酸素濃度測定 1.7インチ大画面 スポーツウォッチ 24種類運動モード 腕時計 歩数計 \r\nIP68防水 着信通知 SMS/Twitter/Line通知 音楽再生 目覚まし時計 iPhone&Android対応 \r\nカメラ制御/文字盤自由設/明度調整/天気予報/懐中電灯/多言語 メンズ/レディース スマートブレスレット \r\n母の日 父の日 敬老の日 誕生日 プレゼント 日本語説明書 smart watch\r\n\r\n\r\nBrand	Semiro\r\nColor	ブルー\r\nSpecial Feature	活動量計\r\nCompatible Devices	スマートフォン\r\nBand Color	ブルー\r\nAbout this item\r\n【2022秋新登場&革新チップBluetooth5.3】従来の5.0より、Bluetooth5.3搭載の該当 スマートウォッチ は安定性が飛躍的に向上され、高速なデータ伝送を実現します。着信やメッセージの受信、LINE、Twitter、Facebook、メール、Instagramなどのアプリからの通知を表示し、内容も確認できます。運動中や会議中はわざわざスマホを取り出す手間が要りません。音楽再生に進化されて、スマートウォッチ 本体からスマホの音楽を制御にも役立ちます。音楽開始・停止、前の曲、次の曲を簡単に操作できます。\r\n【一日中健康管理 & 多種類運動モード】 活動量計 を手元につけるだけて、昼も夜も24時間に、多くのトラッキング機能より、自分の状態を十分に把握します。歩数データーはもちろん、血中酸素濃度測定や睡眠状況の記録までも可能です。ランニング、自転車、縄跳び、水泳、テニス、野球など24種類運動モードを選択することができ、消費カロリー、距離などのデータを記録し、合理的に運動量、運動時間を管理することができます。\r\n【1.7インチ超大画面 ＆ 文字盤を自由設定】1.7インチフルタッチスクリーンの スマートウォッチ は、より高精度な大画面で通知や文字を表示されます。また、輝度調整可能で日差しが強い昼間でもはっきり見えます。本体の文字盤を搭載する以外、専用アプリ「Gloryfit」で80種類以上の文字盤をダウンロードできるし、お好きの写真も設定可能、家族や恋人、アイドルなどの写真を文字盤の画面に変えることもできます。毎日のお気持ちによって、文字盤スタイルを取り替えましょう。\r\n【実用な機能満載 & IP68生活防水 & 長持ちバッテリー】天気予報、遠隔カメラ、目覚まし時計、座りがち、懐中電灯など便利な機能が備えることもこのスマートウォッチの魅力です。IP68等級の生活防水機能を持って、汗、雨、水しぶきにも大丈夫。日常生活の手洗いや洗顔の際にも取り外す必要ありません。長持ちバッテリー内蔵により、約3時間充電し、一度のフル充電で10日間の連続使用が可能、最大30日のロングモードもサポートします。充電切れが少なく、充電の手間がわずらわしいという方でも安心感があります。（個人の利用状況と電波強度によっては、持続可能な利用時間が異なります）。\r\n【充実な付属品＆多様な適応デバイス】付属品：スマートウォッチ 本体×1、充電ケーブル×1、日本語取説書×1。この smart watch はAndroid 4.4、iOS9.0、及びBluetooth 4.0以上に対応しています。スポーツ性と実用性を備えるため、父の日、母の日、敬老の日、クリスマス、新年、誕生日、記念日などに一番適用するプレゼントです。専用アプリに合わせて使えば、このスマートウォッチが持つ様々な便利な生活機能を享受できます。\r\n', 22000, 40, 5),
(51, 'Vanuo', 'スマートウォッチ 通話 1.85インチ超大画面 排水モード 活動量計 スポーツウォッチ 多種類運動モード 多機能 Smart Watch 振動強度調整 音楽制御 遠隔撮影 天気予報 輝度調整 350mAh長持ちバッテリー メンズ レディース 腕時計 iPhone/Android対応 日本語対応\r\n\r\nBrand	Vanuo\r\nSpecial Feature	活動量計, GPS, カメラ\r\nCompatible Devices	スマートフォン\r\nConnectivity Technology	Bluetooth, GPS\r\nWater Resistance Level	Waterproof\r\nAbout this item\r\n【1.85インチスクリーン・安心の排水機能】 1.85インチのカラースクリーンを搭載されし、文字がもっと明らかになり、強い日差し下にも見やいです。IP67級の防水及び防塵性能を持っており、日常生活の手洗いや洗顔の際も取り外す必要ありません。また、このスマートウォッチには最新の排水機能が搭載されています。指示に従って、機械の内部から水を排出することができます。ご注意：※お風呂、サウナ、温泉水や温泉の湯気及び高い水圧は故障の原因となります。\r\n【Bluetooth5.0 通話機能・メッセージ通知 】先端のBluetooth5.0が搭載され、スピーディーな転送速度で通信範囲はより広めに。接続の安定性も大幅に向上されました。ペアリングした後、スマートウォッチで直接に電話をかけることや着信拒否も実現可能。通話履歴、通話記録も保存できます。LINEメッセージ、Twitter、Facebook、メールなどのアプリからのメッセージ通知も確認できます。会議中や電車中でもメッセージを見逃しません。\r\n【長持ちバッテリー・活動量計】このスマートウォッチは350mahの大容量バッテリーを内蔵し、2時間のフルー充電で7-30日使用可能です。頻繁に充電する手間がは省けます。外出や出張の際、バッテリー不足の心配はありません。歩数の機能をはじめ、ランニング、サイクルなど20種類の運動モードも付きます。アプリと接続すれば、運動距離、時間、など日々の様々な活動量の計測が可能です。GPS機能がついているスマートウォッチですから、移動経路の記録が簡単になります。より快適に運動することができます。\r\n【分割画面機能・音楽コントロール】文字盤の画面を右にスライドして画面が分割され、よく使う機能が表示されます。音楽再生に進化されて、スポーツウォッチからスマホの音楽を制御にも役立ちます。音楽開始・停止、前の曲、次の曲を簡単に操作できます。\r\n【実用な機能満載・多様な適応デバイス】天気予報、遠隔カメラ、目覚まし時計、座りすぎ警告通知、電卓、懐中電灯など便利な機能が備えることもこのスマートウォッチの魅力です。この smart watch はAndroid 4.4、iOS8.0、及びBluetooth 5.0以上に対応しています。専用アプリ「Da fit」に合わせて使えば、このスマートウォッチが持つ様々な便利な生活機能を享受できます。', 36000, 50, 5),
(52, 'Xiaomi Mi Smart Band 5', 'Xiaomi Mi Smart Band 5, Japanese Version, 1.1 Inch OLED Display, 14 Days Battery Life, 10 Sports Modes, 5 ATM Waterproof, Over 60 Dials, Activity Meter\r\n\r\n\r\nBrand	シャオミ(Xiaomi)\r\nModel Name	Xiaomi Mi Smart Band 5 Smart Band\r\nStyle	Smart Band 5\r\nColor	Black-1\r\nScreen Size	1.1 Inches\r\nAbout this item\r\n50M Water Resistant*(Wear for Shower and Swimming)\r\nHeart Rate Monitoring: Full day heart rate, manual heart rate, resting heart rate, heart rate curve\r\nThe [Japanese authorized distributor] refers to products that are fulfilled by Amazon.co.jp\r\nLarge dynamic display with over 65 dial themes\r\n14 days long battery life\r\nYou can check your daily health data by linking with the Mi Fit app\r\n24 Hour Heart Rate and Sleep Monitoring\r\nThis product is a general wellness and fitness product and cannot be used for medical purposes such as diagnosis of diseases, therapeutic or prevention\r\nEquipped with 11 different sports modes (rowing machine, jump rope, yoga, elliptical, etc.)\r\nLarge dynamic color display', 30000, 60, 5),
(53, 'Sony Wena WNW-A21A/B Smart Bracelet', 'Sony Wena WNW-A21A/B Smart Bracelet, Wristwatch to Smartwatch Conversion, Electronic Money, Suica, Alexa, Activity Meter, iOS/Android Compatible, Wena 3 Rubber Bracelet, Color: Black\r\n\r\n\r\nBrand	ウェナ(wena)\r\nStyle	Rubber\r\nColor	Black\r\nScreen Size	119 Hundredths-Inches\r\nSpecial Feature	Time Display, Alarm Clock, Activity Tracker, Pedometer, Calorie Tracker, Notifications\r\nAbout this item\r\nThis product listing is for the wena 3 band only(Head sold separatelyThe Sony wena is the world’s first smartwatch that integrates smartwatch functionality directly into the band(*This watchband has an integrated electronic display. wena project research.)\r\nComes with an internal battery that holds 1 weeks worth of battery life plus 24 hours of reserve powerIf you run out of battery, the band will go into reserve power mode where you can continue to use its electronic money function for up to 24 hours. This enables you keep shopping, recharging E credits (via convenient store or credit charging machines), and swiping through ticket booths.\r\nElectronic money function: You can use a variety of electronic money types such as Suica, Rakuten, Edy, iD, and QUIC PayThere is no need to turn anything on, just place the wena 3 onto scanners accordinglyYou can also check credit balances and usage history using the appSuica works with both iOS/Android smartphones\r\nActivity log function: Not only does it gauge the depth of your sleep, count steps taken, and calculate expended calories, but its dual optical sensors also captures your heart rate, as well as your maximum oxygen intake (VO2 Max)Estimates your stress and energy levels\r\nNotification function: In addition to notifications for email and phone calls, the notifications also include schedules, weather forecasts, and alarms. A large touch screen on the buckle allows you to check and operate notifications without pulling out your smartphone', 50000, 60, 5),
(54, 'adidas Ultimashow LDC87 Men s Sneakers', 'adidas Ultimashow LDC87 Men s Sneakers\r\n\r\nMaterial CompositionSynthetic Fiber\r\nOuter MaterialSynthetic fiber\r\nClosure TypeLace-Up\r\nCountry of OriginMyanmar\r\nAbout this Item\r\nShoelace closure\r\nTextile upper\r\nStable fit\r\nJogging shoes\r\nTextile lining / EVA midsole', 23000, 60, 6),
(55, 'Chamaripa', '[Chamaripa] 身長アップシューズ メンズ スニーカー 6cm 身長アップ靴 軽量 通気 ジム 疲れにくい 歩きやすい 防滑人気 身長盛れる ウォーキングシューズ カジュアル ブラック\r\n\r\n\r\nAbout this Item\r\n♛【人気ランキング上位の6cm身長アップスニーカー】2021年6月末までの累計販売量は20万足に達成し、メンズ・スニーカー新品ランキング、売れ筋ランキング等多数の部門で売れ筋No.1を獲得したことのある人気スポーツシューズです。一体織りメッシュは、軽量、通気、速乾など機能が優れて、熱がこもるのを防ぎ、さわやかな履き心地を提供してくれます。一日履いても蒸れにくいです。最大身長6cmアップ。誰にも気づかれずに身長を高く見せてくれるウォーキングシューズです\r\n', 25000, 30, 6),
(56, 'DISCY SHOE EAT REVEKCA Men s Sneakers', 'DISCY SHOE EAT REVEKCA Men s Sneakers\r\n\r\nProduct Details\r\nSole MaterialSynthetic sole\r\nOuter MaterialNatural leather/synthetic leather\r\nClosure Typeレースアップ\r\nAbout this Item\r\nSole Thickness: 0.4 inch (1 cm).', 20000, 40, 6),
(57, 'Foxsense Men s Business Shoes', 'Foxsense Men s Business Shoes, Leather Shoes, Dress Shoes, Genuine Leather, Straight Tip, Gentlemen’s Shoes, Oxford Shoes\r\n\r\nProduct Details\r\nSole MaterialRubber\r\nShaft Heightアンクル\r\nOuter MaterialNatural Italian cowhide leather\r\nClosure TypeStraight tip\r\nAbout this Item\r\n★ Highly-popular business shoes, with over 200,000 pairs sold\r\nLightweight loafers made from Italian kip leather with a faded finish.Unstructured and soft, they add comfort and elegance to your casual holiday wear\r\nStraight tip shoes are designed with a single horizontal line at the toe part.Straight tips are known for being resistant to wrinkling in the area beyond the horizontal line.The consummately formal design is suitable even for ceremonial occasions; you’ll want to have a pair in this design\r\nBe in for work, school, in a business setting, dating, job hunting, formal occasions, or elsewhere, these business shoes pair superbly with all kinds of suits\r\nFeatures a 5-hole Oxford design with a topline that even fits feet with high insteps, plus a distinctive leather-and-rubber combination sole', 15000, 60, 6),
(58, 'New Balance ML574D Men s Sneakers (black)', 'Product Details\r\nMaterial CompositionUpper Material: Artificial leather, natural leather, synthetic fiber/Sole Type: [Outsole]\r\nSole MaterialRubber\r\nClosure TypeLace-Up\r\nWater Resistance LevelNot Water Resistant\r\nAbout this Item\r\nSole Thickness: 0.8 inches (2 cm)', 13000, 60, 6),
(59, 'New Balance ML574D Men s Sneakers NAVYGREEN', 'Product Details\r\nMaterial CompositionUpper Material: Artificial leather, natural leather, synthetic fiber/Sole Type: [Outsole]\r\nSole MaterialRubber\r\nClosure TypeLace-Up\r\nWater Resistance LevelNot Water Resistant\r\nAbout this Item\r\nSole Thickness: 0.8 inches (2 cm)', 13000, 45, 6),
(60, 'New Balance ML574D Men s Sneakers (ORANGENAVY)', 'Product Details\r\nMaterial CompositionUpper Material: Artificial leather, natural leather, synthetic fiber/Sole Type: [Outsole]\r\nSole MaterialRubber\r\nClosure TypeLace-Up\r\nWater Resistance LevelNot Water Resistant\r\nAbout this Item\r\nSole Thickness: 0.8 inches (2 cm)', 16300, 56, 6),
(61, 'New Balance ML574D Men s Sneakers (RED)', 'Product Details\r\nMaterial CompositionUpper Material: Artificial leather, natural leather, synthetic fiber/Sole Type: [Outsole]\r\nSole MaterialRubber\r\nClosure TypeLace-Up\r\nWater Resistance LevelNot Water Resistant\r\nAbout this Item\r\nSole Thickness: 0.8 inches (2 cm)', 14000, 60, 6),
(62, 'Nike DC3728-003 Revolution 6 Next Nature', 'Product Details\r\nClosure TypeLace-Up\r\nAbout this Item\r\nNike Revolution 6 Next Nature\r\nNIKE Revolution 6 Next Nature\r\nProduct Number: DC3728-003\r\nColors: Black, iron gray, white\r\nSize: 9.8 inches (25.0 cm)', 16000, 150, 6),
(63, 'PUMA[プーマ] ランニングシューズ', 'Product Details\r\nOuter MaterialSynthetic Fiber\r\nClosure TypeLace-Up\r\nWater Resistance LevelNot Water Resistant\r\nAbout this Item\r\nSole Thickness: 1.4 inches (3.5 cm)', 20000, 56, 6),
(64, 'Timberland 6inch Premium Boots 6 Premium Yellow', '[Timberland] Timberland 6inch Premium Boots 6 Premium Yellow Boots Junior s Women s wehat Nubuck # 12909 [parallel import goods] [並行輸入品]\r\n\r\nSole MaterialRubber\r\nShaft Heightアンクル\r\nOuter MaterialLeather\r\nClosure TypeLace-Up\r\nAbout this Item\r\nProduct control number: timberland-12909\r\nMaterial: Upper: Natural leather, synthetic fiber, nubuck', 17800, 60, 6),
(65, 'Timberland Women s Tillston 6 Double Collar Boot', 'Product Details\r\nMaterial Composition100%スエード\r\nSole Materialゴム\r\nShaft Height6\r\nShaft Circumference10\r\nAbout this Item\r\n品質と快適さを念頭に置いてデザインされています\r\nどんな機会にも完璧にフィットし、スタイリッシュ。\r\nアッパーはLWG シルバー定格タンナリーのプレミアムレザーを使用。\r\nEVAインソール\r\nTimberland限定保証の対象となります。 保証請求の作成方法に関する完全な条件、制限、および手順については、Timberland のウェブサイトをご覧ください。', 19000, 80, 6),
(66, 'ZKHD', 'Men Women Boxing Shoes Lightweight Anti Skid Fitness Sneakers Breathable Buffer for Gym Squat Wrestling,White-7UK\r\n\r\nPRO BOXING BOOT: Ultra-thin anti-slip sole, optimize leg strength, make you exercise safe and comfortable, effectively reduce fatigue\r\nEXQUISITE CRAFTSMANSHIP: Soft microfiber + mesh upper, superior softness and comfort\r\nExcellent Ankle Support: Increases the upper and protects the ankle in all directions for added stability\r\nSuitable for: fitness equipment, shooting sports, fitness and body, martial arts defense, venue entertainment equipment, health massage, dance movement', 21000, 56, 6),
(67, 'moimos Sneakers', 'Product Details\r\nOuter MaterialNylon\r\nClosure TypeLace-Up\r\nAbout this Item\r\nFeatures: Casual sneakers. The sole design is cool and breathable. Your feet will look stylish with this pair of shoes\r\nWeight: 21.3 oz (600 g)\r\nColors: White, black, red\r\nSize: 9.6 inches (24.5 cm), 9.8 inches (25.0 cm), 10.2 inches (26.0 cm), 10.4 inches (25.0 cm), 10.6 inches (26.5 cm), 10.6 inches (27.0 cm); *The English belt has been cut and processed, so the pattern may differ from one by one', 21500, 60, 6),
(68, 'Sony SRS-XE200 Wireless Speaker', 'Sony SRS-XE200 Wireless Speaker : Waterproof IP67 / Wide Listening Area / Hands-free Calling / 16 Hours Long Battery / SRS-XE200 BC Black\r\n\r\n\r\nBrand	ソニー(SONY)\r\nModel Name	SRS-XE200\r\nSpeaker Type	Components\r\nSpecial Feature	Wireless, Built-in microphone\r\nRecommended Uses For Product	音楽プレーヤー用, コンピューター用, スマートフォンまたはタブレット用\r\nAbout this item\r\nWide listening area: Equipped with a new \"Line-Shape Diffuser\" technology, this product achieves a wide listening area, allowing you to enjoy even sound quality even when close or away from the speaker\r\nHow to choose from vertically or horizontally: Enjoy it vertically and horizontally with your family or enjoy stereo sound by yourself\r\nEquipped with powerful sound pressure \"X-Balanced Speaker Unit\" to achieve high sound quality and loud pressure, and the clear sound quality with less distortion and improved vocal clarity than before\r\nHigh portability, waterproof IP67 compatible, tough to use, long battery can be used for up to 16 hours\r\nHigh Performance Hands-Free Calling: High sound quality feature supports high performance hands-free calls. Equipped with a microphone mute button for convenient online meetings and phone calls', 23000, 60, 7),
(69, 'Anker SoundCore 2 blk', 'Anker SoundCore 2 blk\r\n\r\n\r\nBrand	Anker\r\nSpeaker Type	Bluetoothスピーカー\r\nConnectivity Technology	Bluetooth, AUX\r\nSpecial Feature	デュアルドライバー, IPX7防水規格, マイク内蔵, 完全ワイヤレスステレオ, 低音\r\nRecommended Uses For Product	音楽\r\nAbout this item\r\n[* Attention Please: Anker products are only the authorised seller so please be careful. AnkerDirect] Best Seller is even more powerful: 1 ND Generation SoundCore from 2 two w drivers enhanced with 2 High Performance w Driver provides a more impressive sound you have achieved it. * This product is a class of 2016 and 2017 year 上半期 Amazon Best Seller 1 ND to win in the speaker department for Anker SoundCore top models.\r\nEnhanced bass output: Anker s Proprietary Technology bassup technology lets you enjoy a wide range of tones and deep bass.\r\nIncredible continuous playing time: Built-in high capacity lithium ion battery (approximately 500 songs) and with industry leading power management technology provides up to 24 hours of continuous music playback. You can also check the remaining battery also has Bluetooth Pairing for iphone and ipad from the speaker itself. (IOS 6 or above devices only).\r\nYour favorite music anywhere: in addition to the 1 ND Generation and remains easy to design your newly IPX5 waterproof support you can count on. Enjoy your favorite music even in any environment.\r\nPackage Includes: 2 Anker SoundCore, Micro USB Cable, Instruction Manual, 18 months warranty and customer supports', 30000, 100, 7),
(70, 'Bose SoundLink Flex Bluetooth Speaker', 'Bose SoundLink Flex Bluetooth Speaker Portable Wireless Speaker with Mic Up to 12 Hours Playback Waterproof Dustproof 8\" (W) x 3.5\" (H) x 2.0\" (D) 580g White Smoke\r\n\r\nBrand	BOSE(ボーズ)\r\nModel Name	SLink Flex\r\nSpeaker Type	Wireless Speaker\r\nConnectivity Technology	Bluetooth\r\nSpecial Feature	Built-in Microphone - Allows you to take calls through portable Bluetooth speakers. One button allows access to your phone s voice input from Siri or Google Assistant, BLUETOOTH WIRELESS SPEAKER - SoundLink Flex can be paired with Bluetooth enabled devices, such as smartphones and other Bose speakers within a range of about 9 meters, Bose Connect App - App automatically updates speakers to the latest software Moreover, you can do a variety of things such as customizing settings and adding product featuresBuilt-in Microphone - Allows you to take calls through portable Bluetooth speakers. One button allows access t… See more\r\nAbout this item\r\nState of the Art Design - SoundLink Flex outdoor speaker is equipped with Boy s exclusive technology. Plus, the custom-designed transducer allows you to enjoy deep, clear, immersive audio at home or on the go\r\nCLEAR SOUND - Bose exclusive PositionIQ technology automatically detects speaker position and optimizes sound quality according to direction and environment\r\nWATERPROOF WIRELESS SPEAKER FOR OUTDOOR - SoundLink Flex has been rigorously tested and IP67 compliant. Waterproof material sealed design - Perfect for outdoor activities\r\nPORTABLE BLUETOOTH SPEAKER - Resists water, dust, debris, and is highly resistant to drops and rust so you can take it to a variety of locations. Easy to carry and store, designed to resist corrosion and UV rays\r\nRechargeable Wireless Speaker Battery - Rechargeable with USB-C Cable (Included) Lithium-ion battery provides up to 12 hours of use on a single charge', 40000, 56, 7),
(71, 'DOSS SoundBox Pro+ Bluetooth', 'DOSS SoundBox Pro+ Bluetoothスピーカー ワイヤレス ポータブル 小型スピーカー 【24W 重低音／１5時間再生 ／ワイヤレスステレオ対応／ライティング機能／IPX5 防水／マイク内蔵／20ｍ最大伝送距離／Aux-in TFカード対応 お風呂 アオトドア適用】(Black)\r\n\r\n\r\n\r\nBrand	DOSS\r\nConnectivity Technology	Wireless, Bluetooth\r\nSpecial Feature	防水, Bluetooth, ワイヤレス, ポータブル, マイク内蔵\r\nMounting Type	テーブルトップ\r\nMaterial	ABS\r\nAbout this item\r\n「DOSSを選ぶ理由」DOSSは、業界20年間の経験が持っているオーディオ製品の専門家として海外で約2千万のユーザー様が支持されている人気スピーカーブランドです。DOSS Bluetoothスピーカーシリーズは抜群な品質に基づいて米国、フランス、イギリスやドイツアマゾンの売れ筋ランキングに入っています是非お試しください。\r\n「迫力がある大音量＆Micro SDカード/AUX入力対応」：2*12Wフルレンジドライバーとデュアルパッシブラジエータを搭載しており、SoundBox Pro+高音質Bluetoothスピーカーから圧倒的な重低音、タイトな中音、クリアな高音を響く、心に衝撃的な気持ちを贈ります。業界最先端の音質調節技術を採用してどんなボリュームでも歪みを最⼩限に抑えます。DOSS独自開発した重低音強化技術により重低音ボタン「EXTRA BASS」をワンタッチするとよりパワフルな音楽をお楽しみいただけます。スマートフォンなどBluetooth機器が持たない場合、SDカードやAUX INケーブルを利用してスピーカーから音声を再生も可能になります。\r\n「長時間連続再生＆IPX5防水」DOSS Soundbox Pro+ワイヤレススピーカーは2600mAh大容量リチウムイオン電池を内蔵、約3時間かかって満充電状態になります。50%の音量で最大約15時間（約300曲）のシームレス音楽を再生できます。 (バッテリー寿命はご使用、設定、環境条件によって異なります。）また、バッテリー残量はスマホの画面から確認が可能です。IPX5の防水規格なのでキッチン、海水浴やお風呂場など多数のシーンでも安心に音楽を鑑賞できます。\r\n「イルミネーション機能＆TWS対応」雰囲気を盛り上がるために特別に設計されたイルミネーション機能は、三つのライト効果を搭載しており、音楽を再生する時すぴーかーのランプはリズムに合わせて点滅しています。2台のSoundBox Pro+ブルートゥーススピーカーをペアリングすれば、ステレオサウンドと2倍の音場を実現します。深夜の照明を消した湯舟、パーティー、キャンプ、ダンスなどの場合にロマンチックな雰囲気、臨場感を構築して、視覚も聴覚も新たな体験をもらえます。\r\n「パッケージ内容」：SoundBox Pro+ ポータブルスピーカー＊１、USB充電ケーブル＊１、日本語取扱説明書＊１。保証時間：１年間 製品を注文して何か問題があれば、お気軽に私ともに連絡ください。', 35000, 45, 7),
(72, 'JBL CHARGE5 JBLCHARGE5BLU Bluetooth Speaker', 'JBL CHARGE5 JBLCHARGE5BLU Bluetooth Speaker, 2-Way Speaker Configuration, USB C Charging, IP67 Dustproof, Waterproof, Passive Radiator, Portable, 2021 Model, Blue\r\n\r\n\r\nBrand	JBL\r\nModel Name	Charge 5\r\nSpeaker Type	Outdoor Speaker\r\nConnectivity Technology	Bluetooth\r\nSpecial Feature	Wireless, Portable, Bluetooth, Waterproof, Dustproof\r\nAbout this item\r\nGenuine Domestic Product, Brand New Only\r\nTechnical Standards Compliance Mark Certified. Frequency Range: 2400 MHz - 2483.5 MHz\r\nBased on the authentic 2-way speaker configuration of the top model, it achieves dynamic high sound quality\r\nA 2-way function that allows up to 20 hours of playback while also being useful as a mobile battery\r\nUpdated to IP67 waterproof and dustproof function that can be used safely indoors or outdoors\r\nWith a rich wireless function, PartyBoost can connect up to 100 devices simultaneously\r\nAvailable in a wide variety of colors, ranging from basic colors to colors that complement outdoor scenes', 45000, 86, 7),
(73, 'MIFA A90 Bluetooth Speaker', 'MIFA A90 Bluetooth Speaker, 60 W, Wireless Stereo Support, IPX7 Waterproof, RGB LED Light, Up to 30 Hours of Continuous Playback, Micro SD Card Support, True Wireless Stereo Function, USB C Charging, Protective Case, Portable Strap Included\r\n\r\nBrand	MIFA\r\nSpeaker Type	Outdoor Speaker\r\nConnectivity Technology	Bluetooth\r\nSpecial Feature	Wireless, Built-in microphone\r\nMounting Type	Tabletop\r\nAbout this item\r\n(60W Powerful Sound & 360° Omnidirectional Speaker) The MIFA A90 speaker is equipped with the latest dual drive technology to output impressive sound up to 60W and deliver 360° stereo. The bass enhancement diaphragm unit is placed on both sides of the body for a clear mid and high range for bass depth and power\r\nRGB Light & TWS Function: The LED lights on both sides of the speaker will change according to the song. Dynamic and colorful lighting and acoustical effects make you feel full of the atmosphere. Pairing two speakers gives you amazing immersive stereo sound. It also connects TWS to two speakers at a time so that all controls are linked\r\n(30 Hours Continuous Playback & IPX7 Waterproof) Adopts an enhanced 8,000 mAh lithium-ion battery and the latest power management technology that allows up to 30 hours of continuous playback on a full charge without worrying about running out of battery. In addition, the charging terminal uses a USB type C to provide fast charging for about 5 hours. With its IPX7 waterproof performance, you can enjoy your favorite music anywhere, whether you re on the river, at the beach, at the pool, or at the beach\r\nBluetooth 5.0 & Micro SD Card / AUX Input: Bluetooth 5.0 allows you to easily connect to your smartphone and other devices with improved communication range, connection speed, and connection stability. It also supports TF card and AUX input, so you can easily connect it to smartphones, tablets, computers, TVs, etc. Built-in microphone provides stability for hands-free calling\r\nTechnical Compliance Certification and Security Certification are acquired by authoritative certification agency. MIFA JP only sells MIFA products with a 18-month warranty and if you have any questions during use, please contact us via \"Account Service\" → \"Order History\" → \"Sale:MIFA JP\" → \"Ask Questions\" and we will respond quickly to your satisfaction as soon as possible so you can purchase with confidence', 36200, 89, 7),
(74, 'Marshall Emberton Wireless Portable Waterproof Speaker', 'Marshall Emberton Wireless Portable Waterproof Speaker, Black and Brass, 20 Hours of Continuous Playback, IPX7 Waterproof, Small, Rapid Charging, Authentic Japanese Product\r\n\r\n\r\nBrand	Marshall (マーシャル)\r\nModel Name	Emberton\r\nSpeaker Type	Outdoor Speaker\r\nConnectivity Technology	Bluetooth\r\nSpecial Feature	Wireless, Portable, Waterproof\r\nAbout this item\r\nEmberton weighs only 700g and is designed to be portable\r\nIt produces rich, clear and powerful sound that is compact yet provides 360 degrees of sound that you can listen comfortably anywhere\r\nMarshall, the most compact portable speaker from Emberton is now available as an iconic British brand and loved by famous musicians around the world\r\nOnly those purchased from Marshall official store are guaranteed authentic domestic products\r\nSilicone appearance and metal grille, IPX7 waterproof, sturdy and durable, suitable for outdoor use\r\nUp to 20 hours of continuous playback and quick charge technology', 51000, 78, 7),
(75, 'Tribit XSound Go Bluetooth スピーカー ', 'VGP 2022 SUMMER 受賞】Tribit XSound Go Bluetooth スピーカー IPX7完全防水 スピーカー ポータブルスピーカー Bluetooth5.0 スピーカー 16W 24時間連続再生 ブルートゥーススピーカー TWS対応 低音強化/内蔵マイク搭載 USB-C接続 ブラック\r\n\r\n\r\nBrand	Tribit\r\nSpeaker Type	デュアルスピーカー\r\nConnectivity Technology	Bluetooth\r\nSpecial Feature	8Wx2ライバー; Bluetooth 5.0; 24時間連続再生;IPX7完全防水：一時的(30分)に水に浸かった状態に対する保護\r\nRecommended Uses For Product	音楽プレーヤー用 テレビ用　映画用　パーティー\r\nAbout this item\r\n【海外で大人気】Tribit XSound Goは各人気ブランドと共に、有名メデイアの「 Bluetooth スピーカー」という評価ランキングに入り、8.2の高得点を獲得しました。信頼できる人気メーカー XSound Go Bluetooth スピーカーを是非お試しください。また安心な18ヶ月保証と24時間カスタマーサポートをご用意。ご質問があればいつでもご連絡ください。\r\n【TWS対応できるXSound Goスピーカー】USB C充電端子が搭載され、なおかつ上下左右対称なデザインなので、どちらの向きでも挿し込むことができます。また、TWS対応で、真のステレオ音場を実現し、どんな場所でも、臨場感あふれるステレオサウンドを楽しめます。\r\n【大音量＆高音質】パワフルのドライバーを2つ搭載し、共計16wの大出力で最大音量にしても音が割れたりすることもなく、低音から高音までバランスよく鳴り響きます。また、Tribit XSound Goは低音を強化する先端技術を採用しており、音楽ホールような強い臨場感を体感できます。より原音に近いサウンド、室内だけではなく室外でも満足度の高い音が聞き取れます。\r\n【完全防水IPX7】Tribit XSound Goは防水スピーカーでは珍しいIPX7防水認証を採用。完全防水なので、1メートルの水中の中に三十分間入れても影響ありません。もちろん、海やプールなどのアウトドア、お風呂場での利用も心配ありません。水がある環境で、どこでも音楽を楽しんで利用できます。\r\n【24時間連続再生＆30メートルの通信距離】Tribit XSound Goは24時間/500曲の連続再生が可能。一日中音楽を聴くことができます。Bluetooth5.0技術を搭載されたTribit XSound Goは汎用性が高く、高速かつ途切れないペアリングにより、iPhone、Androidなどの全ての機種に対応できます。また、通信範囲がとても広く、障害物がない状況で、30メートルまで接続可能。', 22200, 42, 7),
(76, 'HP Bluetooth Speaker', 'HP Bluetooth Speaker, USB-C Charging, Microphone, Compact, Bluetooth, IP54 Waterproof, Dustproof, HP 350 Bluetooth (Model Number: 2D802AA#UF), Genuine Japanese Product\r\n\r\nBrand	ヒューレット・パッカード(HP)\r\nModel Name	HP Bluetooth Speaker\r\nSpeaker Type	Components\r\nConnectivity Technology	Bluetooth\r\nSpecial Feature	Built-in microphone, Bluetooth, Wire\r\nAbout this item\r\nDimensions (W x D x H): 3.1 x 4.0 x 1.3 inches\r\nWeight: 6.3 oz (180 g)\r\nCharging: USB-C\r\nConnection: Bluetooth 5.0 compatible/3.5mm audio jack\r\nOther: Passed IP54 test, waterproof and dustproof design', 33200, 88, 7);

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `product_type_id` int(11) NOT NULL,
  `product_type_name` varchar(50) NOT NULL,
  `product_type_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`product_type_id`, `product_type_name`, `product_type_image`) VALUES
(1, 'caps', NULL),
(2, 'laptops', NULL),
(3, 'perfume', NULL),
(4, 'sale', NULL),
(5, 'smart watch', NULL),
(6, 'sneakers', NULL),
(7, 'speaker bluetooth', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test1`
--

CREATE TABLE `test1` (
  `num` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test1`
--

INSERT INTO `test1` (`num`, `name`) VALUES
(1111, 'bank'),
(1112, 'miku');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`email`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `password` (`password`);

--
-- Indexes for table `detail_order`
--
ALTER TABLE `detail_order`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`product_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_order`
--
ALTER TABLE `detail_order`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=522;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `product_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`email`) REFERENCES `customers` (`email`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `detail_order`
--
ALTER TABLE `detail_order`
  ADD CONSTRAINT `detail_order_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `detail_order_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`order_id`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `Order_list_ibfk_1` FOREIGN KEY (`email`) REFERENCES `customers` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
