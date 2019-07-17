-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 17-07-2019 a las 05:19:43
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.2.18

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

DROP TABLE IF EXISTS `administrador`;
CREATE TABLE IF NOT EXISTS `administrador` (
  `usuario` text NOT NULL,
  `contrasena` varchar(20) NOT NULL,
  PRIMARY KEY (`usuario`(50))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`usuario`, `contrasena`) VALUES
('yo', 'yo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escenario`
--

DROP TABLE IF EXISTS `escenario`;
CREATE TABLE IF NOT EXISTS `escenario` (
  `Id_Escenario` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Disponible` tinyint(1) NOT NULL,
  `Deporte` text NOT NULL,
  `Ancho` text NOT NULL,
  `Caracteristicas` text NOT NULL,
  `Predio` text NOT NULL,
  `Alto` text NOT NULL,
  PRIMARY KEY (`Id_Escenario`),
  UNIQUE KEY `Predio` (`Predio`(20)) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `escenario`
--

INSERT INTO `escenario` (`Id_Escenario`, `Disponible`, `Deporte`, `Ancho`, `Caracteristicas`, `Predio`, `Alto`) VALUES
(4, 1, 'futbol', '100', 'abierto', 'campestre', '50'),
(5, 1, 'tenis', '200', 'polvo', '2', '100');

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
  `Ubicacion` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Escenarios` (`Escenarios`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `predio`
--

INSERT INTO `predio` (`Id`, `Escenarios`, `Nombre`, `Telefono`, `Responsable`, `HorarioApertura`, `HorarioCierre`, `Ubicacion`) VALUES
(4, 4, 'mesas', '214242', 'hector', '22:22', '22:34', 'aqui'),
(5, 3, 'andres', '233322', 'hector', '22:10', '22:50', 'centro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

DROP TABLE IF EXISTS `reserva`;
CREATE TABLE IF NOT EXISTS `reserva` (
  `Id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `HorarioInicio` text NOT NULL,
  `HorarioFin` text NOT NULL,
  `Predio` text,
  `Escenario` text,
  `IdUsuario` int(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`Id`, `HorarioInicio`, `HorarioFin`, `Predio`, `Escenario`, `IdUsuario`) VALUES
(19, '2222-02-25T02:22', '2222-02-25T14:23', NULL, NULL, 24134);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `Id_Usuario` bigint(50) UNSIGNED NOT NULL,
  `Nombre` mediumtext NOT NULL,
  `Telefono` text NOT NULL,
  `Email` text,
  `Ubicacion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id_Usuario`),
  UNIQUE KEY `Id` (`Id_Usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id_Usuario`, `Nombre`, `Telefono`, `Email`, `Ubicacion`) VALUES
(24134, 'andres', '23123', 'awef@uhufd.com', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
