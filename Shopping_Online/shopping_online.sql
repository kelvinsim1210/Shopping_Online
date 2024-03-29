-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2024-01-05 14:27:27
-- 服务器版本： 10.4.24-MariaDB
-- PHP 版本： 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `shopping_online`
--

-- --------------------------------------------------------

--
-- 表的结构 `commodity_list`
--

CREATE TABLE `commodity_list` (
  `Id` char(15) NOT NULL,
  `Name` char(20) NOT NULL,
  `Introduction` char(200) NOT NULL,
  `Price` int(10) NOT NULL,
  `M_Id` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `customer_list`
--

CREATE TABLE `customer_list` (
  `Id` char(11) NOT NULL,
  `Name` char(20) NOT NULL,
  `Register_Time` timestamp NOT NULL DEFAULT current_timestamp(),
  `Sex` char(10) NOT NULL,
  `Password` char(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `customer_list`
--

INSERT INTO `customer_list` (`Id`, `Name`, `Register_Time`, `Sex`, `Password`) VALUES
('C0000000000', 'kskl', '2024-01-05 03:21:08', '男', '$2y$10$n4/AJ135avANCwk3N1.rvOOiM.gM9sCe6LhNKqYDqfgyQI/FTfp.O'),
('C0000000001', 'long', '2024-01-05 03:21:29', '男', '$2y$10$9Gso3cP9fnMflNul0P1NhOIAsPLNprDBxWGRA0CxvYZCz5NWvc09y');

-- --------------------------------------------------------

--
-- 表的结构 `logistics_list`
--

CREATE TABLE `logistics_list` (
  `Id` char(11) NOT NULL,
  `Name` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `merchant_list`
--

CREATE TABLE `merchant_list` (
  `Id` char(11) NOT NULL,
  `Name` char(20) NOT NULL,
  `Register_Time` timestamp NOT NULL DEFAULT current_timestamp(),
  `Password` char(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `merchant_list`
--

INSERT INTO `merchant_list` (`Id`, `Name`, `Register_Time`, `Password`) VALUES
('M0000000000', 'qq1', '2024-01-05 05:26:51', '$2y$10$MiyyH3SbYBMC3.HzkxfjIeVfnUtup7V0F3XXP/6NxBoTy6c6FSok.'),
('M0000000001', 'qq2', '2024-01-05 05:27:11', '$2y$10$.1/wEhvGKoN5Dmby2njKi.oqwhKGJfCi8KZTpmwImr5xpHQ178uYS');

-- --------------------------------------------------------

--
-- 表的结构 `trade_list`
--

CREATE TABLE `trade_list` (
  `CO_Id` char(15) NOT NULL,
  `C_Id` char(11) NOT NULL,
  `Status` char(10) NOT NULL,
  `L_Id` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
