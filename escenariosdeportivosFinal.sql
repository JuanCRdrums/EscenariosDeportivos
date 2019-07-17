-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 17-07-2019 a las 02:29:01
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
('hector', 'mesa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escenario`
--

DROP TABLE IF EXISTS `escenario`;
CREATE TABLE IF NOT EXISTS `escenario` (
  `Id_Escenario` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Disponible` tinyint(1) NOT NULL,
  `Deporte` text NOT NULL,
  `Caracteristicas` text NOT NULL,
  `Predio` text NOT NULL,
  `Ancho` text NOT NULL,
  `Alto` text NOT NULL,
  `Nombre_Escenario` text NOT NULL,
  `Ubicacion` text NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  PRIMARY KEY (`Id_Escenario`),
  UNIQUE KEY `Predio` (`Predio`(20)) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `escenario`
--

INSERT INTO `escenario` (`Id_Escenario`, `Disponible`, `Deporte`, `Caracteristicas`, `Predio`, `Ancho`, `Alto`, `Nombre_Escenario`, `Ubicacion`, `Telefono`) VALUES
(1, 1, 'futbol', 'futbol 8', '1', '100', '100', 'futbol8', 'centro', '0'),
(4, 1, 'voley', 'voley playa', '4', '200', '400', 'voley playa', 'centro', '0'),
(5, 1, '$Deporte', '$CaracteristicasVarias', '$predio', '$Ancho', '100', '$Nombre_Escenario', '$Ubicacion', '12'),
(6, 1, 'Tenis', 'Tenis de Campo', '5', '200', '400', 'Tenis', 'dosquebradas', '3196365120');

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `predio`
--

INSERT INTO `predio` (`Id`, `Escenarios`, `Nombre`, `Telefono`, `Responsable`, `HorarioApertura`, `HorarioCierre`, `Ubicacion`) VALUES
(1, 1, 'escenario 1', '3678625385', 'yo', '6:00 am', '12:00 am', 'centro'),
(4, 4, 'predio 1', '333333', 'hector', '6:00 am', '12:00 am', 'centro');

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
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`Id`, `HorarioInicio`, `HorarioFin`, `Predio`, `Escenario`, `IdUsuario`) VALUES
(21, '2019-07-18T00:01', '2019-07-18T00:01', '', '1', 1088030414),
(19, '2019-07-17T09:00', '2019-07-17T10:00', NULL, NULL, 1088030414),
(22, '2019-07-17T00:01', '2019-07-17T00:01', '1', '1', 1088030414),
(25, '2019-07-17T12:00', '2019-07-17T13:01', '5', '6', 42147721),
(24, '2019-07-25T01:01', '2019-07-25T02:02', '1', '1', 100);

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
(1, 'hector', '3196365120', 'hector@ghsgha.com', 'centro\r\n'),
(1088030414, 'hector', '3196365120', NULL, NULL),
(42147721, 'profe', '23221232132', 'profe@ayudenos.porfavor', NULL),
(100, 'camila', '4362738', 'camila@teamo.com', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
