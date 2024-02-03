-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2023 at 03:37 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `javascript_login_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE `login_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `login_time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_history`
--

INSERT INTO `login_history` (`id`, `user_id`, `login_time`) VALUES
(2, 11, '2023-09-06 08:34:51'),
(3, 11, '2023-09-06 08:48:08'),
(4, 12, '2023-09-06 08:48:37'),
(5, 13, '2023-09-06 08:49:46'),
(6, 15, '2023-09-06 08:53:30'),
(7, 16, '2023-09-06 10:04:59'),
(8, 23, '2023-09-06 11:55:10'),
(9, 25, '2023-09-07 05:54:26'),
(10, 26, '2023-09-08 06:14:31'),
(11, 27, '2023-09-08 07:12:11'),
(12, 29, '2023-09-08 07:12:31'),
(13, 25, '2023-09-08 07:14:05'),
(14, 30, '2023-09-08 07:19:09'),
(15, 31, '2023-09-08 07:21:17'),
(16, 32, '2023-09-08 07:21:59'),
(17, 32, '2023-09-08 07:22:07'),
(18, 32, '2023-09-08 07:26:26'),
(19, 32, '2023-09-08 07:27:32'),
(20, 35, '2023-09-08 07:28:12'),
(21, 36, '2023-09-08 07:28:38'),
(22, 32, '2023-09-08 07:31:58'),
(23, 35, '2023-09-08 07:32:24'),
(24, 35, '2023-09-08 07:32:52'),
(25, 32, '2023-09-08 11:32:33'),
(26, 30, '2023-09-08 11:32:42'),
(27, 32, '2023-09-08 11:33:13'),
(28, 31, '2023-09-08 11:33:41'),
(29, 35, '2023-09-08 11:33:52'),
(30, 36, '2023-09-08 11:34:01'),
(31, 30, '2023-09-08 13:17:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` enum('admin','encoder','viewer','customer') DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `date`, `time`, `username`, `password`, `type`, `status`) VALUES
(11, '2023-09-06', '02:34:00', 'dexter', '$2y$10$15JXJAMJSD1AGBkuBsE3/exg1uSXip61GlbO2V47Cxsgw411ufo9S', 'admin', 'active'),
(12, '2023-09-06', '02:48:26', 'jean', '$2y$10$jTSpm1/LQIo4pKUIX.1OmenoFBWd1tx1/w5Ot0gCmqlDnTRVxe0JC', '', 'active'),
(13, '2023-09-06', '02:49:37', 'rold', '$2y$10$XPMcOQTBuueT39KTmjf70.jxfdw2q2bqbCh6Ath4vVTAnFzglqFnS', '', 'active'),
(14, '2023-09-06', '02:51:20', 'leomar', '$2y$10$WWGtW.kMCj3eAmG2EXHiP.51o2FzO0yAU8ooCeZuNSlD94N8zDvYm', '', 'active'),
(15, '2023-09-06', '02:53:21', 'mike', '$2y$10$l7ZirXz/x5s24DNw.luiDOZPieKglWuDgIbplaiSEsg9NIGkXu4VO', 'viewer', 'active'),
(16, '2023-09-06', '04:04:47', 'albert', '$2y$10$cLbcBjxwF3QZncBMtE7Imeuo9ChZGpqBraF9WHNJLWiYiTK9AUmXO', 'viewer', 'active'),
(17, '2023-09-06', '05:01:29', 'joylene', '$2y$10$YhUK2zlf3CB0vC9exYWlM.SKb9JS9sJvzFSortZellMeeV/Q5sQ2i', 'customer', 'active'),
(18, '2023-09-06', '05:06:58', 'eliver', '$2y$10$PhyZaRBqDoG4f4Za5M4eK.VWZ80twBd4X7XHp097JQ4czG/T/u5Ni', 'viewer', 'active'),
(19, '2023-09-06', '05:11:01', 'rajie', '$2y$10$DYfM1C5Oxmj6XEmMovQRRO7fNdxC/vc3n3OMNWNXzqxb5yRmDTSNu', 'encoder', 'active'),
(20, '2023-09-06', '05:23:11', 'jeansarmen', '$2y$10$lCMl8k/QEO4t439YvWPSjOUqqy8A0cBF6el61RuvogpZXgVc56GB6', 'customer', 'active'),
(21, '2023-09-06', '11:48:46', 'dexteralolod', '$2y$10$s.Jr6wmkPgvlzpz4ZIYQm.InE1bHEe1RP859G7lAG0eDeYQLSMZNO', 'viewer', 'active'),
(22, '2023-09-06', '11:51:44', 'carlogerongco', '$2y$10$MtK.Ku0jCqEJ7a.FOqP/RumfD62sKzdlRFlMtgyUMdTApH5hCNnIm', 'customer', 'active'),
(23, '2023-09-06', '11:54:59', 'alolod', '$2y$10$SLi4C7IizCMd8df8I7wSV.NiE5zbxT5yW8iKqFU/9uxtC0Tz3CXkO', 'viewer', 'active'),
(24, '2023-09-06', '12:08:21', 'hans', '$2y$10$TMH6rwOw5zwf388/JG7CK.NNxqH.nNj7Xva.YOsgSVA7/rM3uRYCq', '', 'active'),
(25, '2023-09-07', '05:54:10', 'mateo', '$2y$10$UeDCFx3ZqbwVNVOQyeELUeS036oJc3ykDD46QN97wKIaBjhm8l88O', 'encoder', 'active'),
(26, '2023-09-08', '06:14:12', 'charissa', '$2y$10$VX8.DGgbXB.XKi7YgQ4o1..zeyzPLdSlHMT/ueult69IPn1scOpwi', 'encoder', 'active'),
(27, '2023-09-08', '06:27:26', 'kim', '$2y$10$ASUos1alEwsSnH0AxL1VDONxYGBIcaNWVj5x.sJBID0VnAa2dsmSe', '', 'active'),
(28, '2023-09-08', '07:08:19', 'stay', '$2y$10$mkdMYQo8TG1t5QeIAYi/tOhciLwFJgZYznClfHLonI/MOLRQj0sJG', 'encoder', 'active'),
(29, '2023-09-08', '07:12:24', 'ambot', '$2y$10$zs.5jkISHKxm8aJC7kwWMONI5aeTSCc.MksbSwupsmoA14AOsymDC', 'customer', 'active'),
(30, '2023-09-08', '07:18:58', 'admin', '$2y$10$Ywr1ykwGuXfhbQ2OKbTLEeAVkYmCLDdhJ8slqvcOEXesOj2oQ.j7O', 'admin', 'active'),
(31, '2023-09-08', '07:21:08', 'encoder', '$2y$10$1oSa60mgvshLgGo4ikchge5RBquAeX9waWJ1ARws3OCC1NSBJ1w1O', 'encoder', 'active'),
(32, '2023-09-08', '07:21:52', 'user', '$2y$10$YvC7qNQAhe1j/XjgmLaYVOlrgXvtD5XOo0FZxfLlCdzD5rzwoZnPe', '', 'active'),
(33, '2023-09-08', '07:26:18', 'user', '$2y$10$ZDUZxEiKvTeKbo9nfRtYeeDMNcFMmN2ULVt9QL2k1syAN2J/Pyp2K', '', 'active'),
(34, '2023-09-08', '07:27:20', 'user', '$2y$10$bbEfIDmtTQr1HKGHqm0qzuqGOH8g/D9xjmGobEYF3vsERlLHWUEAq', 'viewer', 'active'),
(35, '2023-09-08', '07:28:01', 'viewer', '$2y$10$FZduvJpgqvWGrSZ2eZsDsOZPesOCJ1becxnkefmbkHuFQMNBSkULO', 'viewer', 'active'),
(36, '2023-09-08', '07:28:29', 'customer', '$2y$10$Tc/UwzbX8NcOs87TyT6nJ.e9Rd3k8Oc0LnPcP0HXrFtGBqeFK599u', 'customer', 'active'),
(37, '2023-09-08', '10:27:25', 'pearly', '$2y$10$INQ5B.b2Qq0aymOhTPBfseMWTuyyXz86JBLi.Vetpbs/dv5SfxOFa', 'encoder', 'active'),
(38, '2023-09-08', '10:28:02', 'pearly', '$2y$10$1P0WrFf5xup08fV1TCVj1O6kFBy.0TLXL3xctfjLTXmhQVqCntbNa', 'viewer', 'active'),
(39, '2023-09-08', '13:16:57', 'admin', '$2y$10$heB/sFs2s4V79OldBu5mZ.bJxADiT6OXf3QR9c4CsCZijntf5W7F.', 'encoder', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_history`
--
ALTER TABLE `login_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_history`
--
ALTER TABLE `login_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `login_history`
--
ALTER TABLE `login_history`
  ADD CONSTRAINT `login_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
