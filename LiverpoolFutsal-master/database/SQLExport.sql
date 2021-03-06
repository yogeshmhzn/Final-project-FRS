-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2019 at 03:55 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `liverpool`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `transnum` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `tgl` date NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `fieldnum` int(11) DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Waiting for Confirmation',
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`transnum`, `username`, `tgl`, `start`, `end`, `duration`, `fieldnum`, `status`, `datecreated`) VALUES
(1, 'ACHMAD', '2018-11-01', 20, 22, 2, 4, 'Accepted', '2018-10-31 00:00:00');


-- --------------------------------------------------------

--
-- Stand-in structure for view `booking_price`
-- (See below for the actual view)
--
CREATE TABLE `booking_price` (
`transnum` bigint(20) unsigned
,`username` varchar(30)
,`tgl` date
,`start` int(11)
,`end` int(11)
,`duration` int(11)
,`fieldnum` int(11)
,`status` varchar(30)
,`datecreated` datetime
,`price` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `name` text NOT NULL,
  `phonenum` text NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `role` varchar(30) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`name`, `phonenum`, `username`, `password`, `role`) VALUES
('AANG', '81927536639', 'AANG', '$2y$10$IxZX2Bh3VrXa1ZCUsQH6Puk8lb/Rh72LBVsyYFu2ehjuIin.kujJq', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `field`
--

CREATE TABLE `field` (
  `fieldnum` int(11) NOT NULL,
  `tipe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `field`
--

INSERT INTO `field` (`fieldnum`, `tipe`) VALUES
(1, 'Sintetis'),
(2, 'Finil'),
(3, 'Finil'),
(4, 'Sintetis');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `transnum` int(11) DEFAULT NULL,
  `opt` int(11) DEFAULT NULL,
  `totalprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`transnum`, `opt`, `totalprice`) VALUES
(1, 13, 3000),
(2, 13, 3200),
(3, 5, 3000),
(4, 5, 3200),
(5, 5, 1500),
(6, 5, 1600),
(7, 13, 1500),
(8, 5, 1600),
(9, 5, 1500),
(10, 13, 750),
(11, 5, 1000),
(12, 5, 750),
(13, 13, 1500),
(14, 13, 1600),
(15, 5, 3200),
(16, 5, 3000),
(17, 13, 1600),
(18, 5, 1600),
(19, 13, 3000),
(20, 5, 1600),
(21, 5, 1500),
(22, 13, 1600),
(23, 5, 1600),
(24, 5, 1500),
(25, 13, 1500),
(26, 5, 3000),
(27, 5, 2600),
(28, 5, 1600),
(29, 5, 1500),
(30, 13, 3200),
(31, 5, 1500),
(32, 13, 3000),
(33, 5, 1500),
(34, 5, 1600),
(35, 13, 3000),
(36, 10, 1100),
(37, 2, 2200),
(38, 5, 1350),
(39, 13, 1350),
(40, 5, 1350),
(41, 5, 2500),
(42, 2, 1000),
(43, 2, 1000),
(44, 13, 1250),
(45, 5, 1250),
(46, 13, 1250),
(47, 5, 1350),
(48, 13, 1250),
(49, 13, 2700),
(50, 5, 2500),
(51, 5, 2700),
(52, 5, 1350),
(53, 2, 1000),
(54, 13, 1250),
(55, 13, 1250),
(56, 5, 1350),
(57, 5, 2500),
(58, 13, 2500),
(59, 5, 1350),
(60, 5, 1350),
(61, 5, 1350),
(62, 5, 2500),
(63, 13, 1350),
(64, 13, 1350),
(65, 5, 2700),
(66, 5, 2500),
(67, 13, 2500),
(68, 5, 1250),
(69, 5, 2700),
(70, 5, 2500),
(71, 5, 1250),
(72, 2, 750),
(73, 5, 1500),
(74, 5, 1600),
(75, 5, 1500),
(76, 13, 3000),
(77, 13, 1600),
(78, 5, 1600),
(79, 5, 1600),
(80, 13, 1500),
(81, 5, 1600),
(82, 5, 3000),
(83, 5, 750),
(84, 13, 1500),
(85, 5, 1600),
(86, 5, 1500),
(87, 5, 1600),
(88, 13, 3000),
(89, 5, 1500),
(90, 13, 1600),
(91, 5, 1500),
(92, 13, 1500),
(93, 13, 1500),
(94, 5, 1600),
(95, 5, 1500),
(96, 5, 1600),
(97, 5, 1500),
(98, 13, 1500),
(99, 13, 3200),
(100, 5, 1600),
(101, 5, 1600),
(102, 5, 3000),
(103, 5, 1500),
(104, 13, 1500),
(105, 5, 1600),
(106, 5, 1500),
(107, 10, 3500),
(108, 10, 3960),
(109, 2, 4950),
(110, 2, 3600),
(111, 5, 1350),
(112, 5, 1250),
(113, 13, 1350),
(114, 5, 1250),
(115, 5, 1350),
(116, 13, 1250),
(117, 13, 1350),
(118, 5, 1350),
(119, 5, 2500),
(120, 5, 1350),
(121, 5, 1350),
(122, 5, 1250),
(123, 5, 2700),
(124, 13, 1250),
(125, 13, 2700),
(126, 5, 1350),
(127, 5, 1250),
(128, 5, 1350),
(129, 5, 2500),
(130, 5, 1000),
(131, 5, 2500),
(132, 13, 1350),
(133, 5, 1350),
(134, 5, 1250),
(135, 13, 1250),
(136, 13, 1350),
(137, 5, 1350),
(138, 5, 1350),
(139, 5, 2500),
(140, 5, 1350),
(141, 5, 1250),
(142, 5, 1500),
(143, 5, 1500),
(144, 5, 3200),
(145, 13, 3000),
(146, 5, 1600),
(147, 13, 1500),
(148, 5, 1500),
(149, 13, 1600),
(150, 5, 1000),
(151, 2, 1000),
(152, 5, 1600),
(153, 5, 3000),
(154, 5, 1500),
(155, 13, 1600),
(156, 5, 1600),
(157, 5, 1500),
(158, 13, 3000),
(159, 13, 1600),
(160, 5, 1600),
(161, 5, 1500),
(162, 13, 1500),
(163, 13, 1600),
(164, 5, 1600),
(165, 5, 1500),
(166, 5, 1600),
(167, 5, 1500),
(168, 5, 1600),
(169, 5, 3000),
(170, 5, 750),
(171, 5, 1500),
(172, 13, 1500),
(173, 13, 1600),
(174, 5, 1600),
(175, 5, 1500),
(176, 5, 1500),
(177, 13, 3000),
(178, 13, 1600),
(179, 5, 1600),
(180, 5, 1500),
(181, 13, 1500),
(182, 5, 1250),
(183, 5, 1250),
(184, 13, 2500),
(185, 5, 1250),
(186, 2, 2000),
(187, 2, 2000),
(188, 10, 1000),
(189, 2, 1000),
(190, 13, 1350),
(191, 13, 1250),
(192, 13, 1350),
(193, 13, 1250),
(194, 5, 2700),
(195, 13, 2700),
(196, 5, 1350),
(197, 5, 2500),
(198, 13, 2500),
(199, 5, 2500),
(200, 5, 1350),
(201, 5, 1350),
(202, 13, 2700),
(203, 5, 1350),
(204, 13, 1250),
(205, 5, 1350),
(206, 13, 1350),
(207, 5, 1350),
(208, 5, 2500),
(209, 13, 2500),
(210, 5, 1350),
(211, 10, 750),
(212, 2, 750),
(213, 10, 750),
(214, 13, 1250),
(215, 5, 2500),
(216, 13, 1350),
(217, 5, 1350),
(218, 13, 1350),
(219, 5, 1350),
(220, 5, 1250),
(221, 13, 2500),
(222, 13, 2700),
(223, 5, 2700),
(224, 5, 1250),
(225, 13, 1600),
(226, 5, 1600),
(227, 13, 1600),
(228, 13, 1600),
(229, 5, 2600),
(230, 5, 3200),
(231, 13, 3000),
(232, 13, 3200),
(233, 5, 1600),
(234, 5, 3000),
(235, 5, 1500),
(236, 13, 3000),
(237, 13, 3200),
(238, 5, 1500),
(239, 5, 1600),
(240, 5, 1500),
(241, 5, 1000),
(242, 2, 1000),
(243, 5, 1500),
(244, 13, 3200),
(245, 5, 1500),
(246, 13, 3000),
(247, 13, 3200),
(248, 5, 3200),
(249, 5, 1500),
(250, 13, 2700),
(251, 5, 1250),
(252, 5, 1250),
(253, 5, 1250),
(254, 5, 1250),
(255, 13, 1250),
(256, 10, 1000),
(257, 2, 1100),
(258, 10, 1000),
(259, 2, 2000),
(260, 2, 1000),
(261, 5, 1250),
(262, 5, 1350),
(263, 13, 1250),
(264, 5, 2500),
(265, 13, 1350),
(266, 10, 1500),
(267, 5, 1350),
(268, 5, 1350),
(269, 5, 1350),
(270, 5, 1350),
(271, 5, 2500),
(272, 5, 2500),
(273, 5, 1350),
(274, 13, 750),
(275, 5, 1250),
(276, 13, 1250),
(277, 5, 1250),
(278, 13, 1350),
(279, 5, 1350),
(280, 5, 750),
(281, 13, 3000),
(282, 5, 1600),
(283, 2, 750),
(284, 5, 1600),
(285, 13, 1500),
(286, 5, 1600),
(287, 5, 3000),
(288, 13, 1500),
(289, 13, 3200),
(290, 5, 1600),
(291, 5, 1500),
(292, 13, 1600),
(293, 5, 1600),
(294, 13, 1500),
(295, 5, 1600),
(296, 5, 1500),
(297, 5, 1600),
(298, 5, 1600),
(299, 5, 1000),
(300, 5, 1600),
(301, 5, 1500),
(302, 13, 1500),
(303, 13, 3200),
(304, 5, 1600),
(305, 5, 1500),
(306, 13, 3200),
(307, 5, 1600),
(308, 13, 1500),
(309, 5, 1500),
(310, 13, 1500),
(311, 2, 2200),
(312, 13, 1250),
(313, 13, 1250),
(314, 5, 1250),
(315, 5, 1350),
(316, 13, 3750),
(317, 5, 1250),
(318, 5, 2500),
(319, 10, 750),
(320, 13, 1250),
(321, 13, 1350),
(322, 5, 1250),
(323, 13, 1350),
(324, 5, 2700),
(325, 13, 2500),
(326, 5, 1350),
(327, 5, 2500),
(328, 5, 2500),
(329, 13, 1250),
(330, 13, 1350),
(331, 5, 2500),
(332, 5, 2700),
(333, 5, 1250),
(334, 5, 1350),
(335, 5, 1500),
(336, 13, 1600),
(337, 5, 1600),
(338, 5, 1600),
(339, 5, 3000),
(340, 13, 4500),
(341, 13, 3200),
(342, 5, 1600),
(343, 5, 1500),
(344, 5, 3200),
(345, 5, 1500),
(346, 13, 1500),
(347, 5, 750),
(348, 5, 1600),
(349, 13, 1600),
(350, 5, 1600),
(351, 5, 1500),
(352, 13, 1500),
(353, 5, 1600),
(354, 5, 1500),
(355, 13, 1600),
(356, 5, 1500),
(357, 5, 1600),
(358, 5, 1500),
(359, 13, 3000),
(360, 13, 3200),
(361, 13, 1600),
(362, 5, 3200),
(363, 5, 4500),
(364, 13, 1500),
(365, 5, 1500),
(366, 5, 1500),
(367, 5, 3200),
(368, 5, 1500),
(369, 13, 3000),
(370, 5, 1600),
(371, 5, 1500),
(372, 13, 3200),
(373, 5, 1600),
(374, 5, 1500),
(375, 5, 1600),
(376, 5, 1350),
(377, 5, 1350),
(378, 5, 1000),
(379, 2, 1000),
(380, 10, 2000),
(381, 10, 1100),
(382, 2, 1100),
(383, 2, 1000),
(384, 2, 1100),
(385, 5, 1250),
(386, 5, 2700),
(387, 5, 250),
(388, 10, 750),
(389, 5, 1350),
(390, 5, 2700),
(391, 2, 750),
(392, 5, 2500),
(393, 13, 1250),
(394, 5, 1350),
(395, 13, 2700),
(396, 13, 1250),
(397, 13, 1350),
(398, 5, 2700),
(399, 5, 2500),
(400, 5, 1350),
(401, 5, 1600),
(402, 5, 1600),
(403, 5, 750),
(404, 5, 1600),
(405, 13, 1600),
(406, 13, 1500),
(407, 5, 1600),
(408, 5, 3000),
(409, 13, 1600),
(410, 13, 1500),
(411, 5, 1500),
(412, 5, 3200),
(413, 13, 1600),
(414, 5, 1500),
(415, 13, 1600),
(416, 5, 3200),
(417, 5, 1600),
(418, 5, 1500),
(419, 13, 1500),
(420, 13, 1500),
(421, 13, 3200),
(422, 5, 3200),
(423, 5, 1500),
(424, 5, 1500),
(425, 13, 3000),
(426, 13, 1500),
(427, 5, 1500),
(428, 13, 1500),
(429, 5, 1000),
(430, 13, 2500),
(431, 5, 1250),
(432, 5, 2700),
(433, 13, 2500),
(434, 2, 1100),
(435, 2, 1000),
(436, 2, 1100),
(437, 2, 1000),
(438, 5, 2500),
(439, 5, 2500),
(440, 5, 1250),
(441, 13, 1350),
(442, 13, 1250),
(443, 13, 1350),
(444, 5, 1350),
(445, 5, 2500),
(446, 13, 1350),
(447, 5, 2500),
(448, 5, 1250),
(449, 5, 2500),
(450, 13, 4500),
(451, 5, 1600),
(452, 13, 1600),
(453, 13, 1500),
(454, 5, 1500),
(455, 5, 1600),
(456, 5, 1600),
(457, 5, 1600),
(458, 13, 1500),
(459, 13, 1600),
(460, 5, 1500),
(461, 13, 3000),
(462, 5, 1600),
(463, 13, 3200),
(464, 13, 1500),
(465, 5, 1500),
(466, 5, 1600),
(467, 5, 1500),
(468, 13, 1500),
(469, 5, 1600),
(470, 5, 1500),
(471, 13, 1600),
(472, 13, 1500),
(473, 5, 1600),
(474, 5, 1500),
(475, 13, 1500),
(476, 5, 1600),
(477, 13, 3200),
(478, 5, 1500),
(479, 5, 1500),
(480, 5, 1500),
(481, 10, 3200),
(482, 2, 1500),
(483, 5, 2500),
(484, 13, 1350),
(485, 2, 2000),
(486, 10, 1100),
(487, 2, 1000),
(488, 2, 1000),
(489, 2, 1100),
(490, 13, 1250),
(491, 5, 1350),
(492, 5, 1250),
(493, 5, 2500),
(494, 5, 2500),
(495, 13, 1350),
(496, 5, 1250),
(497, 5, 1350),
(498, 5, 2500),
(499, 5, 2700),
(500, 5, 2500),
(501, 5, 1250);

-- --------------------------------------------------------

--
-- Table structure for table `pricelist`
--

CREATE TABLE `pricelist` (
  `opt` int(11) NOT NULL,
  `fieldnum` int(11) DEFAULT NULL,
  `startday` int(11) NOT NULL,
  `endday` int(11) NOT NULL,
  `starttime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pricelist`
--

INSERT INTO `pricelist` (`opt`, `fieldnum`, `startday`, `endday`, `starttime`, `endtime`, `price`) VALUES
(1, 1, 1, 5, 7, 14, 750),
(2, 2, 1, 5, 7, 14, 1000),
(3, 1, 7, 3, 14, 24, 1250),
(4, 2, 7, 3, 14, 24, 1350),
(5, 1, 6, 7, 7, 14, 1000),
(6, 2, 6, 7, 7, 14, 1100),
(7, 1, 4, 6, 14, 24, 1500),
(8, 2, 4, 6, 14, 24, 1600),
(9, 4, 1, 5, 7, 14, 750),
(10, 3, 1, 5, 7, 14, 1000),
(11, 4, 7, 3, 14, 24, 1250),
(12, 3, 7, 3, 14, 24, 1350),
(13, 4, 6, 7, 7, 14, 1000),
(14, 3, 6, 7, 7, 14, 1100),
(15, 4, 4, 6, 14, 24, 1500),
(16, 3, 4, 6, 14, 24, 1600);

-- --------------------------------------------------------

--
-- Stand-in structure for view `transaksi`
-- (See below for the actual view)
--
CREATE TABLE `transaksi` (
`transnum` bigint(20) unsigned
,`tgl` date
,`username` varchar(30)
,`phonenum` text
,`start` int(11)
,`end` int(11)
,`duration` int(11)
,`fieldnum` int(11)
,`tipe` text
,`totalprice` int(11)
,`status` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `verifikasi`
-- (See below for the actual view)
--
CREATE TABLE `verifikasi` (
`transnum` bigint(20) unsigned
,`username` varchar(30)
,`phonenum` text
,`tgl` date
,`start` int(11)
,`end` int(11)
,`duration` int(11)
,`fieldnum` int(11)
,`tipe` text
,`status` varchar(30)
);

-- --------------------------------------------------------

--
-- Structure for view `booking_price`
--
DROP TABLE IF EXISTS `booking_price`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `booking_price`  AS  select `booking`.`transnum` AS `transnum`,`booking`.`username` AS `username`,`booking`.`tgl` AS `tgl`,`booking`.`start` AS `start`,`booking`.`end` AS `end`,`booking`.`duration` AS `duration`,`booking`.`fieldnum` AS `fieldnum`,`booking`.`status` AS `status`,`booking`.`datecreated` AS `datecreated`,`price`.`totalprice` AS `price` from (`booking` join `price` on((`booking`.`transnum` = `price`.`transnum`))) ;

-- --------------------------------------------------------

--
-- Structure for view `transaksi`
--
DROP TABLE IF EXISTS `transaksi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `transaksi`  AS  select `booking`.`transnum` AS `transnum`,`booking`.`tgl` AS `tgl`,`customer`.`username` AS `username`,`customer`.`phonenum` AS `phonenum`,`booking`.`start` AS `start`,`booking`.`end` AS `end`,`booking`.`duration` AS `duration`,`field`.`fieldnum` AS `fieldnum`,`field`.`tipe` AS `tipe`,`price`.`totalprice` AS `totalprice`,`booking`.`status` AS `status` from (((`customer` join `booking` on((`customer`.`username` = `booking`.`username`))) join `price` on((`booking`.`transnum` = `price`.`transnum`))) join `field` on((`booking`.`fieldnum` = `field`.`fieldnum`))) where (`booking`.`status` <> 'Waiting for Confirmation') ;

-- --------------------------------------------------------

--
-- Structure for view `verifikasi`
--
DROP TABLE IF EXISTS `verifikasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `verifikasi`  AS  select `booking`.`transnum` AS `transnum`,`customer`.`username` AS `username`,`customer`.`phonenum` AS `phonenum`,`booking`.`tgl` AS `tgl`,`booking`.`start` AS `start`,`booking`.`end` AS `end`,`booking`.`duration` AS `duration`,`field`.`fieldnum` AS `fieldnum`,`field`.`tipe` AS `tipe`,`booking`.`status` AS `status` from (((`customer` join `booking` on((`customer`.`username` = `booking`.`username`))) join `price` on((`booking`.`transnum` = `price`.`transnum`))) join `field` on((`booking`.`fieldnum` = `field`.`fieldnum`))) where (`booking`.`status` = 'Waiting for Confirmation') ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`transnum`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `field`
--
ALTER TABLE `field`
  ADD PRIMARY KEY (`fieldnum`);

--
-- Indexes for table `pricelist`
--
ALTER TABLE `pricelist`
  ADD PRIMARY KEY (`opt`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `transnum` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
