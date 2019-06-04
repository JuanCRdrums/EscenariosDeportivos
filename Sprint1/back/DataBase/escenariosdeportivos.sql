-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 04-06-2019 a las 05:08:43
-- Versión del servidor: 10.2.8-MariaDB
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escenariosdeportivos`
--
CREATE DATABASE IF NOT EXISTS `escenariosdeportivos` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `escenariosdeportivos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

DROP TABLE IF EXISTS `administrador`;
CREATE TABLE IF NOT EXISTS `administrador` (
  `usuario` text NOT NULL,
  `contraseña` varchar(20) NOT NULL,
  PRIMARY KEY (`usuario`(50))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escenario`
--

DROP TABLE IF EXISTS `escenario`;
CREATE TABLE IF NOT EXISTS `escenario` (
  `Id_Escenario` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Disponible` tinyint(1) NOT NULL,
  `Deporte` text NOT NULL,
  `Dimensiones` text NOT NULL,
  `Caracteristicas` text NOT NULL,
  `Predio` text NOT NULL,
  PRIMARY KEY (`Id_Escenario`),
  UNIQUE KEY `Predio` (`Predio`(20)) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `predio`
--

DROP TABLE IF EXISTS `predio`;
CREATE TABLE IF NOT EXISTS `predio` (
  `Id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Escenarios` int(20) NOT NULL,
  `Nombre` text NOT NULL,
  `Telefono` text NOT NULL,
  `Responsable` text NOT NULL,
  `HorarioApertura` text NOT NULL,
  `HorarioCierre` text NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Escenarios` (`Escenarios`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

DROP TABLE IF EXISTS `reserva`;
CREATE TABLE IF NOT EXISTS `reserva` (
  `Id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `IdUsuario` int(50) NOT NULL,
  `HoraInicio` text NOT NULL,
  `HorarioFin` text NOT NULL,
  `Predio` text NOT NULL,
  `Escenario` text NOT NULL,
  `NumeroReserva` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IdUsuario` (`IdUsuario`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `Id` bigint(50) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nombre` mediumtext NOT NULL,
  `Telefono` int(25) NOT NULL,
  `Email` text NOT NULL,
  `Ubicacion` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
