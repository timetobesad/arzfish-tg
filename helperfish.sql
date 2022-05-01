-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2022 at 04:37 PM
-- Server version: 5.5.25
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `helperfish`
--

-- --------------------------------------------------------

--
-- Table structure for table `fish`
--

CREATE TABLE IF NOT EXISTS `fish` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) NOT NULL,
  `price` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `fish`
--

INSERT INTO `fish` (`id`, `title`, `price`) VALUES
(1, 'карп', 21224),
(2, 'сазан', 29115),
(3, 'щука', 25464),
(4, 'скумбрия', 26667),
(5, 'форель', 32999),
(6, 'сиг', 31655),
(7, 'линь', 22046),
(8, 'карась', 24443),
(9, 'окунь', 32463),
(10, 'амур', 23288),
(11, 'толстолоб', 31968),
(12, 'стерлядь', 29863),
(13, 'судак', 30504),
(14, 'семга', 30658),
(15, 'треска', 31365),
(16, 'палтус', 20500),
(17, 'навага', 29249),
(18, 'минтай', 32682),
(19, 'хек', 26836),
(20, 'путасс', 27437),
(21, 'голец', 30959),
(22, 'налим', 21779),
(23, 'чир', 30068),
(24, 'осетр', 24868),
(25, 'таймень', 19327),
(26, 'лосось', 28883),
(27, 'кижуч', 17652),
(28, 'пикша', 24037),
(29, 'шип', 19999),
(30, 'севрюга', 24471),
(31, 'белуга', 28615),
(32, 'полосатая', 22205),
(33, 'плотва', 21058),
(34, 'пескарь', 31655),
(35, 'берш', 28776),
(36, 'жерех', 29655),
(37, 'вырезуб', 19478),
(38, 'язь', 19297),
(39, 'сом', 28233),
(40, 'морской', 27277),
(41, 'зубан', 25902),
(42, 'испанская', 33223),
(43, 'пеламида', 20136),
(44, 'барракуда', 32029),
(45, 'корифенд', 29123),
(46, 'скат', 23951),
(47, 'павлинный', 28346),
(48, 'полосатый', 31924),
(49, 'глубинная', 31327),
(50, 'веслонос', 26431),
(51, 'угорь', 18119),
(52, 'химера', 23341),
(53, 'хариус', 20410),
(54, 'нерка', 27154),
(55, 'тунец', 32135),
(56, 'красный', 18863);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
