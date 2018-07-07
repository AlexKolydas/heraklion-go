-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 06, 2017 at 07:15 AM
-- Server version: 10.1.25-MariaDB-
-- PHP Version: 7.0.22-0ubuntu0.17.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `c4ptixiaki`
--

-- --------------------------------------------------------

--
-- Table structure for table `conts`
--

CREATE TABLE `conts` (
  `id` int(11) NOT NULL,
  `NameOfUser` varchar(10) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `number` double NOT NULL,
  `email` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conts`
--

INSERT INTO `conts` (`id`, `NameOfUser`, `Name`, `number`, `email`, `date`, `description`) VALUES
(23, 'Alekos', 'makis', 6980162585, 'alex1mcgrady@hotmail', '2017-05-25 11:12:02', 'sss'),
(24, 'Alekos', 'Sotiris', 6980162585, 'alex1mcgrady@hotmail', '2017-05-25 11:29:59', 'pedobear'),
(25, 'Alekos', 'Alexandros', 6980162585, 'alex1mcgrady@hotmail', '2017-05-25 12:39:56', ''),
(26, 'sot', 'Alexandros', 6980162585, 'alex1mcgrady@hotmail', '2017-05-31 08:28:09', 'kkk'),
(27, 'sot', 'mitsos', 6980162585, 'alex1mcgrady@hotmail', '2017-05-31 08:50:58', 'mitsoulas'),
(28, 'giannis', 'Alexandros', 6980162585, 'alex1mcgrady@hotmail', '2017-05-31 09:54:09', ''),
(29, 'sot', 'makas', 6980162585, 'alex1mcgrady@hotmail', '2017-05-31 10:43:00', 'sss'),
(30, 'sot', 'katerina', 6980162585, 'alex1mcgrady@hotmail', '2017-05-31 11:09:34', 'dddd');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `body`) VALUES
(1, '1)ena'),
(2, '2)duo');

-- --------------------------------------------------------

--
-- Table structure for table `unityusers`
--

CREATE TABLE `unityusers` (
  `id` int(11) NOT NULL,
  `user` varchar(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  `password` varchar(15) NOT NULL,
  `charact` varchar(20) NOT NULL,
  `money` int(11) NOT NULL,
  `attack` int(11) NOT NULL,
  `defence` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `health` int(3) NOT NULL,
  `xp` int(11) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `fight` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unityusers`
--

INSERT INTO `unityusers` (`id`, `user`, `name`, `password`, `charact`, `money`, `attack`, `defence`, `level`, `health`, `xp`, `avatar`, `fight`) VALUES
(25, 'alex', 'alekos', 'alex', 'Samurai', 6250, 1034, 211, 56, 23200, 175, '', 1),
(27, 'makkis', 'makkis', 'makkis', 'Knight', 0, 15, 10, 0, 400, 0, '', 1),
(28, 'sot', 'sotiris', 'sot', 'Knight', 4500, 319, 70, 4, 2000, 16, '', 1),
(29, 'adc', 'adc45', 'adc', 'Samurai', 0, 20, 5, 0, 400, 0, '', 1),
(30, 'giannis', 'john', 'alex', 'Samurai', 400, 10, 5, 0, 400, 0, '', 1),
(31, 'giw', 'giwta', 'alex', 'Samurai', 400, 10, 5, 0, 400, 0, '', 1),
(32, 'bill', 'vasilis', 'alex', 'Knight', 400, 5, 10, 0, 400, 0, '', 1),
(33, 'mitsos', 'mitsaras', 'mitsakos', 'Samurai', 400, 10, 5, 0, 400, 0, '', 1),
(34, 'mak', 'mak', 'mak', 'Knight', 400, 5, 10, 0, 400, 0, '', 1),
(35, 'd', 'd', 'd', 'Samurai', 400, 10, 5, 0, 400, 0, '', 1),
(36, 'kostas', 'kostas', 'kost', 'Samurai', 400, 10, 5, 0, 400, 0, '', 1),
(37, 'kostas', 'kostas', 'kost', 'Samurai', 400, 10, 5, 0, 400, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE `weapons` (
  `name` varchar(255) NOT NULL,
  `level` int(11) NOT NULL,
  `attack` int(11) NOT NULL,
  `defence` int(11) NOT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weapons`
--

INSERT INTO `weapons` (`name`, `level`, `attack`, `defence`, `cost`) VALUES
('atc1', 0, 5, 0, 200),
('atc2', 0, 7, 0, 300),
('atc3', 0, 10, 0, 400),
('atc4', 5, 15, 0, 600),
('atc5', 5, 18, 0, 750),
('atc6', 5, 20, 0, 900),
('def1', 0, 0, 5, 200),
('def2', 0, 0, 7, 300),
('def3', 0, 0, 10, 400),
('def4', 5, 0, 15, 600),
('def5', 5, 0, 18, 750),
('def6', 5, 0, 20, 900);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conts`
--
ALTER TABLE `conts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `email` (`email`(191));

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unityusers`
--
ALTER TABLE `unityusers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conts`
--
ALTER TABLE `conts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `unityusers`
--
ALTER TABLE `unityusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
