-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-03-2023 a las 15:55:31
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ejemplo405`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantel`
--

CREATE TABLE `plantel` (
  `´id_plantel´` int(11) NOT NULL,
  `´nombreplantel´` varchar(55) NOT NULL,
  `´clave´` varchar(55) NOT NULL,
  `´direccion´` varchar(255) NOT NULL,
  `´telefonoplantel´` varchar(55) NOT NULL,
  `´emailplantel´` varchar(55) NOT NULL,
  `´id_municipio´` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuario`
--

CREATE TABLE `tusuario` (
  `´id_tusuario´` int(11) NOT NULL,
  `´nombretusuario´` varchar(55) NOT NULL,
  `´descriccion´` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `´id_usuario´` int(11) NOT NULL,
  `´nombreusuario´` varchar(55) NOT NULL,
  `´apaterno´` varchar(55) NOT NULL,
  `´amaterno´` varchar(55) NOT NULL,
  `´telefono´` varchar(55) NOT NULL,
  `´email´` varchar(255) NOT NULL,
  `´pasword´` varchar(55) NOT NULL,
  `´id_plantel´` int(11) NOT NULL,
  `´id_tusuario´` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `plantel`
--
ALTER TABLE `plantel`
  ADD PRIMARY KEY (`´id_plantel´`);

--
-- Indices de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  ADD PRIMARY KEY (`´id_tusuario´`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`´id_usuario´`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `plantel`
--
ALTER TABLE `plantel`
  MODIFY `´id_plantel´` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  MODIFY `´id_tusuario´` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `´id_usuario´` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
