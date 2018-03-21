-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-03-2018 a las 13:36:29
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inmovinescrm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `apellidos` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `mail` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `inquilino` tinyint(1) NOT NULL,
  `arrendatario` tinyint(1) NOT NULL,
  `comprador` tinyint(1) NOT NULL,
  `vendedor` tinyint(1) NOT NULL,
  `telefono` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `telefono_1` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `mail_1` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `comentarios` text COLLATE utf8_spanish_ci,
  `id_agente` bigint(20) NOT NULL,
  `fecha_entrada` date DEFAULT NULL,
  `presupuesto_min` bigint(20) UNSIGNED DEFAULT NULL,
  `presupuesto_max` bigint(20) UNSIGNED DEFAULT NULL,
  `id_agente_entrada` int(11) DEFAULT NULL,
  `dni` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `canal_entrada` smallint(5) UNSIGNED DEFAULT NULL,
  `inueble_interes_inicial` bigint(20) UNSIGNED DEFAULT NULL,
  `nacionalidad` bigint(20) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intereses`
--

CREATE TABLE `intereses` (
  `id` bigint(20) NOT NULL,
  `habitaciones` int(11) NOT NULL,
  `baños` int(11) NOT NULL,
  `m2` int(11) NOT NULL,
  `precioMax` int(11) NOT NULL,
  `id_provincia` bigint(20) NOT NULL,
  `id_municipio` bigint(20) NOT NULL,
  `id_cliente` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `intereses`
--
ALTER TABLE `intereses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT de la tabla `intereses`
--
ALTER TABLE `intereses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
