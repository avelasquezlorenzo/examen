-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2020 a las 21:01:37
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `php_oop_crud_level_1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Fashion', '2014-06-01 00:35:07', '2014-05-30 15:34:33'),
(2, 'Electronics', '2014-06-01 00:35:07', '2014-05-30 15:34:33'),
(3, 'Motors', '2014-06-01 00:35:07', '2014-05-30 15:34:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(512) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `image`, `created`, `modified`) VALUES
(1, 'LG P880 4X HD', 'My first awesome phone!', 336, 3, '', '2014-06-01 01:12:26', '2014-05-31 15:12:26'),
(2, 'Google Nexus 4', 'The most awesome phone of 2013!', 299, 2, '', '2014-06-01 01:12:26', '2014-05-31 15:12:26'),
(3, 'Samsung Galaxy S4', 'How about no?', 600, 3, '', '2014-06-01 01:12:26', '2014-05-31 15:12:26'),
(6, 'Bench Shirt', 'The best shirt!', 29, 1, '', '2014-06-01 01:12:26', '2014-05-31 00:12:21'),
(7, 'Lenovo Laptop', 'My business partner.', 399, 2, '', '2014-06-01 01:13:45', '2014-05-31 00:13:39'),
(8, 'Samsung Galaxy Tab 10.1', 'Good tablet.', 259, 2, '', '2014-06-01 01:14:13', '2014-05-31 00:14:08'),
(9, 'Spalding Watch', 'My sports watch.', 199, 1, '', '2014-06-01 01:18:36', '2014-05-31 00:18:31'),
(10, 'Sony Smart Watch', 'The coolest smart watch!', 300, 2, '', '2014-06-06 17:10:01', '2014-06-05 16:09:51'),
(11, 'Huawei Y300', 'For testing purposes.', 100, 2, '', '2014-06-06 17:11:04', '2014-06-05 16:10:54'),
(12, 'Abercrombie Lake Arnold Shirt', 'Perfect as gift!', 60, 1, '', '2014-06-06 17:12:21', '2014-06-05 16:12:11'),
(13, 'Abercrombie Allen Brook Shirt', 'Cool red shirt!', 70, 1, '', '2014-06-06 17:12:59', '2014-06-05 16:12:49'),
(25, 'Abercrombie Allen Anew Shirt', 'Awesome new shirt!', 999, 1, '', '2014-11-22 18:42:13', '2014-11-21 18:42:13'),
(26, 'Another product', 'Awesome product!', 5555, 2, '', '2014-11-22 19:07:34', '2014-11-21 19:07:34'),
(27, 'Bag', 'Awesome bag for you!', 999, 1, '', '2014-12-04 21:11:36', '2014-12-03 21:11:36'),
(28, 'Wallet', 'You can absolutely use this one!', 799, 1, '', '2014-12-04 21:12:03', '2014-12-03 21:12:03'),
(30, 'Wal-mart Shirt', '', 555, 2, '', '2014-12-13 00:52:29', '2014-12-12 00:52:29'),
(31, 'Amanda Waller Shirt', 'New awesome shirt!', 333, 1, '', '2014-12-13 00:52:54', '2014-12-12 00:52:54'),
(32, 'Washing Machine Model PTRR', 'Some new product.', 999, 1, '', '2015-01-08 22:44:15', '2015-01-07 22:44:15'),
(40, 'test', 'gth', 12, 2, '', '2020-12-09 20:19:52', '2020-12-09 19:19:52'),
(41, 'test2', 'rgrgt', 32, 2, '', '2020-12-09 20:42:33', '2020-12-09 19:42:33'),
(43, 'grgr', 'gg', 324, 2, 'af0100e56ad95de4d3da9e7e035ede5ab89c03d2-WhatsApp Image 2020-06-07 at 15.32.16.jpeg', '2020-12-09 20:51:00', '2020-12-09 19:51:00'),
(44, 'test5', 'rgreg', 12, 2, '6347821734f00a0867b572df0836a0fcf43e9dd0-WhatsApp Image 2020-06-07 at 15.32.20 (3).jpeg', '2020-12-09 20:52:11', '2020-12-09 19:52:11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
