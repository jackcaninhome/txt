-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- �D��: 127.0.0.1
-- ���ͮɶ��G 2018-03-29 09:57:52
-- ���A������: 10.1.25-MariaDB
-- PHP �����G 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- ��Ʈw�G `test0329`
--

-- --------------------------------------------------------

--
-- ��ƪ��c `moneybook`
--

CREATE TABLE `moneybook` (
  `m_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;

--
-- �w�ץX��ƪ�����
--

--
-- ��ƪ���� `moneybook`
--
ALTER TABLE `moneybook`
  ADD PRIMARY KEY (`m_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;