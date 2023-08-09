-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-08-2023 a las 23:01:01
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parking`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parkings`
--

CREATE TABLE `parkings` (
  `id` int(4) NOT NULL,
  `parkings` varchar(50) NOT NULL,
  `space` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `parkings`
--

INSERT INTO `parkings` (`id`, `parkings`, `space`) VALUES
(1, 'Estacionamiento A', 35),
(2, 'Estacionamiento B', 50),
(3, 'Estacionamiento C', 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(10) NOT NULL,
  `rol` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `username`, `password`, `rol`) VALUES
(1, 'Luis Mora', 'lemb1922@gmail.com', 'luism', '12345', 'SUPER-ADMIN'),
(2, 'Eduardo Beltran ', 'edubel234@gmail.com', 'edbeltran', '3221', 'ADMIN'),
(3, 'Jesus Morales', 'yisusmorl24@gmail.com', 'yisusm', 'kg48ds', 'USER'),
(4, 'Carlos Beltran', 'carlosbn@gmail.com', 'carlbn', '123678', 'USER'),
(5, 'Jose Lopez', 'joselopez@gmail.com', 'joslopez', '2345', 'USER'),
(6, 'Miriam Nazario', 'mirnaz@gmail.com', 'mirnaz', '123456', 'USER');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id` varchar(10) NOT NULL,
  `input_datetime` datetime NOT NULL,
  `output_datetime` datetime NOT NULL,
  `payment` float NOT NULL,
  `plate` varchar(12) NOT NULL,
  `parking_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id`, `input_datetime`, `output_datetime`, `payment`, `plate`, `parking_id`) VALUES
('AAPP1202', '2023-07-24 13:40:43', '0000-00-00 00:00:00', 0, 'AAAPP1', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `parkings`
--
ALTER TABLE `parkings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `parkings`
--
ALTER TABLE `parkings`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
