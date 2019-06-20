-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 07-06-2019 a las 02:18:26
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
('sebas', 'sanchez');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `escenario`
--

INSERT INTO `escenario` (`Id_Escenario`, `Disponible`, `Deporte`, `Dimensiones`, `Caracteristicas`, `Predio`) VALUES
(1, 1, 'fut', 'grande', 'pasto', 'villa'),
(2, 1, 'fut5', 'grande', 'pasto', 'cannan'),
(3, 1, 'tenis', 'peque', 'buena', 'utp');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `predio`
--

INSERT INTO `predio` (`Id`, `Escenarios`, `Nombre`, `Telefono`, `Responsable`, `HorarioApertura`, `HorarioCierre`) VALUES
(1, 4256475, 'Gimnasio', '32423435', 'Nelson Mora', '12:00', '5:00'),
(2, 7774, 'tenis', '545120', 'hector', '10:15', '15:20'),
(3, 7775, 'tenis', '545120', 'sanchez', '10:15', '15:30');

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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`Id`, `HorarioInicio`, `HorarioFin`, `Predio`, `Escenario`, `IdUsuario`) VALUES
(18, '2019-06-06T16:37', '2019-05-06T16:39', NULL, NULL, 785457);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `Id` bigint(50) UNSIGNED NOT NULL,
  `Nombre` mediumtext NOT NULL,
  `Telefono` text NOT NULL,
  `Email` text,
  `Ubicacion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id`, `Nombre`, `Telefono`, `Email`, `Ubicacion`) VALUES
(785457, 'andres', '12154325', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
