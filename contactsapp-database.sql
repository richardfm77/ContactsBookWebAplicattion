-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 07-07-2023 a las 06:13:32
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `contactsapp`
--

CREATE DATABASE `contactsapp`;

USE `contactsapp`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contact`
--

INSERT INTO `contact` (`id`, `name`, `telephone`, `email`) VALUES
(26, 'Lecrer', '7263293210', 'ferrarilec@unu.com'),
(25, 'Max Verstapen', '8627365318', 'vestrapen@gmail.com'),
(3, 'Vania Rios', '5581732323', 'van@unu.com'),
(24, 'Sergio Perez', '5514654372', 'serg@gmail.com'),
(23, 'Ximena Flore', '2121637610', 'xis@outlook.com'),
(20, 'Carlos Sainz', '1273829301', 'carlo33@outlook.com'),
(22, 'Pedrito Perez', '6527182712', 'perdo77@ciencias.unam.mx'),
(18, 'Ricardo Flores', '5528962635', 'ricardo_fm77@ciencias.unam.mx'),
(27, 'Kevin Magnuses', '1262128719', 'magnuses@gmail.com'),
(28, 'Lando Norris', '1293827326', 'lando@maclren.com'),
(29, 'Yuki Tsnuda', '2739878732', 'tsnuda@outlook.com'),
(30, 'Pierre gasly', '23821737243', 'gasly@gmail.com'),
(31, 'Sebatian Vetel', '2376398212', 'vetel00@gmial.com'),
(32, 'Fernando Alonso', '1729873652', 'alonso@outlook.com'),
(33, 'Estban Ocon', '7621729819', 'ocon@gmail.com'),
(34, 'Lewis Hamilton', '3729218373', 'lewis@mercedes.com'),
(35, 'George Russell', '2726179817', 'russ@gmial.com'),
(36, 'Nico', '2032129827', 'nic@gmail.com'),
(37, 'Oscar piastri', '2387327635', 'piastri@maclaren.com'),
(38, 'De Vries', '2382129827', 'vries@otmail.com'),
(39, 'Valteri Botas', '1228891232', 'botas@gmail.com'),
(40, 'Zhou', '1297537623', 'zhou@hotmail.com'),
(41, 'Alexander Albon', '2321983212', 'albon@hotmail.com'),
(42, 'Logan', '2122128753', 'logan@gmail.com'),
(43, 'Santiago Medina', '9083637212', 'med@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
