-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2019 at 06:37 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shareposts`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(20) NOT NULL DEFAULT '1',
  `value1` int(10) NOT NULL DEFAULT '0',
  `value2` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`, `status`, `value1`, `value2`) VALUES
(1, 5, 'post 1', 'This is test post one', '2018-11-02 19:27:00', '1', 0, 0),
(2, 5, 'post2 ', 'This is test post two', '2018-11-02 19:27:00', '1', 0, 0),
(4, 3, 'Post 3', 'This is post three', '2018-11-04 15:20:33', '0', 0, 0),
(8, 3, 'Comple', 'I have to complete it by tomorrow.', '2018-11-04 21:06:22', '1', 0, 0),
(9, 3, 'kajs', ',makd', '2018-11-04 23:09:26', '0', 0, 0),
(10, 16, 'Project', 'yes ,Please complete the project tomorrow 9:30', '2018-11-05 00:04:38', '0', 0, 0),
(12, 16, 'project', 'project should be completed by tomorrow', '2018-11-05 00:27:46', '1', 0, 0),
(15, 17, 'list1', 'This is list 1', '2018-11-05 00:37:17', '0', 0, 0),
(17, 18, 'List1', 'This is list 1', '2018-11-05 00:39:18', '1', 0, 0),
(18, 18, 'list 3', 'this is list 3', '2018-11-05 00:59:09', '1', 0, 0),
(20, 19, 'List 2', 'This is List 2', '2018-11-05 01:31:33', '1', 0, 0),
(22, 9, 'List1', 'This is list 1', '2018-11-05 01:50:44', '0', 0, 0),
(23, 3, 'list4', 'This is list 4', '2018-11-05 11:38:26', '1', 0, 0),
(24, 2, 'List 1', 'This is List 1', '2018-11-12 06:25:57', '1', 0, 0),
(35, 20, 'Dukati', 'Hero Honda', '2018-11-12 20:29:42', '1', 7, 5),
(36, 23, 'Dukati', 'Himalaya', '2018-11-12 21:42:18', '0', 9, 6),
(37, 23, 'Harley', 'R15', '2018-11-12 22:33:22', '0', 10, 7),
(38, 2, 'list 2', 'this is list 2', '2018-11-14 05:02:53', '1', 0, 0),
(39, 23, 'maja', 'juno', '2018-11-14 09:47:02', '1', 4, 6),
(40, 23, 'rag', 'dd', '2018-11-14 09:47:45', '1', 9, 8),
(41, 24, 'list 1', 'this is list one', '2018-11-14 09:58:47', '1', 0, 0),
(42, 24, 'List 2', 'This is list two', '2018-11-14 09:59:02', '1', 0, 0),
(43, 3, 'task 5', 'This is task 5', '2019-07-03 14:30:15', '1', 0, 0),
(44, 3, 'Remid 1', 'Please remindit yesterdaty', '2019-07-03 14:31:21', '1', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `value1` varchar(255) DEFAULT '0',
  `value2` varchar(255) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `value1`, `value2`) VALUES
(1, 'shubham', 'shubham.jaiswal911@gmailcom', '123456', '2018-11-01 17:39:56', NULL, NULL),
(2, 'rahul', 'rahu.kk@gmail.com', '$2y$10$MkVrsnVTS2N0Z4xLef3y0O9qA0pp00wkTTVrLNarXb9r13J6sSMa6', '2018-11-01 18:25:15', NULL, NULL),
(3, 'rahul', 'rahul.kk@gmail.com', '$2y$10$mLOjwkkD2rGTrAitdMhKYuyw.qehqfYx6o/kfeMwLqFfWxW9li.Xm', '2018-11-01 19:24:09', NULL, NULL),
(4, 'shubh', 'jj.jais@gmail.com', '$2y$10$86Djs9NmICfSmMQYJ9ZCaOkYsaKHgYL3.YQg6yhfdc8I5/WyhIEsG', '2018-11-01 19:39:54', NULL, NULL),
(5, 'shubh', 'jj.jaiss@gmail.com', '$2y$10$HxApTyWp1.QYwW7IET6t3OH4ihE6u9sPY1.8OUmYz0RBlxEqU74XG', '2018-11-01 19:41:53', NULL, NULL),
(6, 'shubhkk', 'ajj.jaiss@gmail.com', '$2y$10$9vA9OfgmPWbCJQR6gQwfheabrvjvMcdIixZI2pLl1hrtPjZ6FedEi', '2018-11-01 19:45:07', NULL, NULL),
(7, 'shubhsd', 'shubham11.jaiswal911@gmailcom', '$2y$10$gSJlA6M90YhQkKhS7F939uGao994Cpk58y7usGh.p032MnS66/GTm', '2018-11-01 19:58:36', NULL, NULL),
(8, 'wwww', 'shubham.jaiswaqqql9111@gmailcom', '$2y$10$3QW3t1qnTv/CortTv7Io5eOTjSBfU/LkYOGXP3LzDgeNyjIhSIf/6', '2018-11-01 20:06:53', NULL, NULL),
(9, 'ssss', 'ss..kk@gmail.com', '$2y$10$e.HsRG83/Hw.A6EGJ6xN4.NjgxcT5r6ErIF7DaDaTyGL6/tOgUDEC', '2018-11-01 20:08:10', NULL, NULL),
(10, 'sssswd', 'ss..kkwd@gmail.com', '$2y$10$hBNW1Pr/jj3rNG6AhIGiuOuMZrPFJUfgeO33uwGhZyTb1fbS6fcou', '2018-11-01 20:08:44', NULL, NULL),
(11, 'sssswd', 'ss..k1kwd@gmail.com', '$2y$10$VSVs.7cbeHJNQGBQoS.Wo.ctSGuH//gGPQLS9720JGZdezE3l87MW', '2018-11-01 20:10:37', NULL, NULL),
(12, 'wqww', 'ss.ss@gmail.com', '$2y$10$sF7V6HlG1Nb1nOidExfp2e0zHl.doftQaoPjGZ/L/8DGQ52988hu6', '2018-11-01 20:11:55', NULL, NULL),
(13, 'sww', 'ssw.jj@gmail.com', '$2y$10$OLvMWHOh4yzLIgUmd3dcl.a/tymdV981BQiKOU2CXwNlgU3LAzma.', '2018-11-01 20:13:48', NULL, NULL),
(14, 'munna', 'munna.j@gmail.com', '$2y$10$.EiD1.ZyST8abEEoP50JY.UiUHa0bi5q/YBOcOuphPjkgtvV.VtAi', '2018-11-02 17:43:11', NULL, NULL),
(15, 'pp', 'pp.kk@gmail.com', '$2y$10$jiOYCS6cnEwMaHPW0fA5k.6H85TYMp3.FMt52/jEZMQRcQIGe48WC', '2018-11-02 17:45:07', NULL, NULL),
(16, 'shubham Jaiswal', 'shubh.jk1518@gmail.com', '$2y$10$tUDKxHjjp599W7eaJzN0c.tT/SACaHSrlhV/cC94CvyqyVCqB0aJi', '2018-11-05 00:03:42', NULL, NULL),
(17, 'mamav', 'manav.jais@gmail.com', '$2y$10$/0GO7jg0TpD.aD1YUaBTiuKL3vgf4gxLtceR6q.vf4YtOZQk2IFau', '2018-11-05 00:28:54', NULL, NULL),
(18, 'shubhj', 'kk.kk@gmail.com', '$2y$10$5VtuqIGisa/eQcFBPeMCKOj6pFBNvRLlMumlb1jqNyW3DAcvg3tyu', '2018-11-05 00:38:54', NULL, NULL),
(19, 'Shun', 'ss.kk@gmail.com', '$2y$10$858ATjEeSYRjkAEFGauF4uMWs5PMEQw/ZFFhG47ElCL5EGbhJiiXq', '2018-11-05 01:30:56', NULL, NULL),
(20, 'rahuuu', 'kuku@gmail.com', '$2y$10$b1KH.4VJuqH9ktJTIBlgYewZDu2gB076bG6AbMgFMfkWRGesOjSIi', '2018-11-12 06:30:58', NULL, NULL),
(21, 'mmmm', 'mm.mm@gmailcom', '$2y$10$7LHQ7KInAlnNFBRjtwGIIu9X1HnEYf/KV8Ldoa2X7z3yOe9m.vIuW', '2018-11-12 06:47:02', NULL, NULL),
(22, 'qq', 'wwgmail.com', '123456', '2018-11-12 10:14:49', '3', '4'),
(23, 'Krishna', 'krishna.sing@gmail.com', '$2y$10$PcLMp/z4CJZLw18RZhryYOIbrTf3Y3sxiW3PrbhkK0j0bJtqVMvou', '2018-11-12 21:41:21', '0', '0'),
(24, 'lallu', 'll.kk@gmailcom', '$2y$10$ebzC9c.zZiXfnRiyMC9VCOYizkYokd0LHhsf1bRJrvXqorijntwRK', '2018-11-14 09:58:11', '0', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
