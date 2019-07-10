-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 06-06-2019 a las 11:57:57
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `escenariosdeportivos`
--

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

--
-- Volcado de datos para la tabla `administrador`
--

INSERT DELAYED IGNORE INTO `administrador` (`usuario`, `contraseña`) VALUES
('felipe', ''),
('bravo', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escenario`
--

DROP TABLE IF EXISTS `escenario`;
CREATE TABLE IF NOT EXISTS `escenario` (
  `Id_Escenario` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Disponible` tinyint(1) NOT NULL,
  `Deporte` text NOT NULL,
  `Dimensiones` text NOT NULL,
  `Caracteristicas` text NOT NULL,
  `Predio` text NOT NULL,
  PRIMARY KEY (`Id_Escenario`),
  UNIQUE KEY `Predio` (`Predio`(20)) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `predio`
--

DROP TABLE IF EXISTS `predio`;
CREATE TABLE IF NOT EXISTS `predio` (
  `Id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Escenarios` int(20) NOT NULL,
  `Nombre` text NOT NULL,
  `Telefono` text NOT NULL,
  `Responsable` text NOT NULL,
  `HorarioApertura` text NOT NULL,
  `HorarioCierre` text NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Escenarios` (`Escenarios`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

DROP TABLE IF EXISTS `reserva`;
CREATE TABLE IF NOT EXISTS `reserva` (
  `Id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `IdUsuario` int(50) NOT NULL,
  `HorarioInicio` datetime NOT NULL,
  `HorarioFin` text NOT NULL,
  `Predio` text,
  `Escenario` text,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IdUsuario` (`IdUsuario`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT DELAYED IGNORE INTO `reserva` (`Id`, `IdUsuario`, `HorarioInicio`, `HorarioFin`, `Predio`, `Escenario`) VALUES
(3, 1, '3334-03-31 04:44:00', '0424-03-31T14:03', NULL, NULL),
(4, 12, '2222-12-11 02:02:00', '2012-02-23T03:03', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `Id` bigint(50) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` mediumtext NOT NULL,
  `Telefono` int(25) NOT NULL,
  `Email` text NOT NULL,
  `Ubicacion` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
