-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-03-2018 a las 12:18:01
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 5.6.33

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `milenio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agentes`
--

CREATE TABLE `agentes` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `mail` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tlf` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `twitter` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `foto` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `eslogan` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `codigo_agente` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `activacion` tinyint(1) DEFAULT NULL,
  `permisos` smallint(6) DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cargo` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `agentes`
--

INSERT INTO `agentes` (`id`, `nombre`, `apellidos`, `mail`, `tlf`, `twitter`, `foto`, `eslogan`, `codigo_agente`, `activacion`, `permisos`, `password`, `cargo`) VALUES
(1, 'Jose María', 'Alfaro', 'jma@nuevomilenio-inmo.com', '916890303', '@jmalfaroj', 'agentes/jma.jpg', 'Hola soy Jose María ¿te puedo ayudar?', 'J', 1, 0, 'e607c58e7a4792d79aad4754e23a1c8f', 3),
(3, 'Beatriz', 'Maroto', 'beatriz@nuevomilenio-inmo.com', '671855085', '@BeatrizMaroto2', '/agentes/bea.jpg', 'Hola soy Beatriz ¿te puedo ayudar?', 'BZ', 1, 0, 'e607c58e7a4792d79aad4754e23a1c8f', 8),
(4, 'Magdala', 'Romero', 'magdala@nuevomilenio-inmo.com', '626088062', '@magdalaromero', 'agentes/magdala.jpg', 'Hola soy Magdala ¿te puedo ayudar?', 'M', 1, 0, 'e607c58e7a4792d79aad4754e23a1c8f', 1),
(6, 'Belén', 'Fernández', 'belen@nuevomilenio-inmo.com', '916890303', '@milenioinmo', 'agentes/belen.jpg', 'Hola soy Belén ¿te puedo ayudar?', 'BL', 1, 0, 'e607c58e7a4792d79aad4754e23a1c8f', 2),
(7, 'Maria', 'Saez', 'msaez@nuevomilenio-inmo.com', '916890303', '@msaezg67', 'agentes/msaez.jpg', 'Hola soy María ¿te puedo ayudar?', 'MA', 1, 0, 'e607c58e7a4792d79aad4754e23a1c8f', 2),
(8, 'Yéssica', 'González', 'yessica@nuevomilenio-inmo.com', '611439922', NULL, 'agentes/yessica.jpg', NULL, 'Y', 1, 0, 'e607c58e7a4792d79aad4754e23a1c8f', 1),
(9, 'Eva', 'Trujillo', 'eva@nuevomilenio-inmo.com', '649132373', NULL, 'agentes/eva.jpg', NULL, 'EVA', 1, 0, 'e607c58e7a4792d79aad4754e23a1c8f', 1),
(10, 'Irene', 'García', 'irene@nuevomilenio-inmo.com', '635469922', '@IreneGGarin', 'agentes/irene.jpg', NULL, NULL, 1, 0, 'fd261e6cde908907a87a6b8d5754e9fb', 9),
(11, 'Elena', 'Alfaro', 'elena@nuevomilenio-inmo.com', '651149011', '@elenalfaro9', 'agentes/elena.jpg', 'Hola soy Elena ¿Te puedo ayudar?', 'E', 1, 0, NULL, 1),
(12, 'Paloma', 'Platero', 'paloma@nuevomilenio-inmo.com', '653091929', '', 'agentes/paloma.jpg', '', 'Paloma', 1, 0, 'c4ca4238a0b923820dcc509a6f75849b', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`id`, `nombre`) VALUES
(1, 'Agente'),
(2, 'Coordinación'),
(3, 'Gerencia'),
(4, 'Gestión'),
(5, 'Interiorismo'),
(6, 'Arquitectura Técnica'),
(7, 'Marketing'),
(8, 'Agente / Arquitectura técnica'),
(9, 'Agente / Marketing');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) NOT NULL,
  `referencia` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
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
  `primera_importacion` tinyint(1) DEFAULT NULL,
  `codigo_primera_importacion` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `anotaciones` text COLLATE utf8_spanish_ci,
  `id_agente` bigint(20) NOT NULL,
  `fecha_entrada` date DEFAULT NULL,
  `referencia_interes` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `zona_interes` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `c_zona` bigint(20) DEFAULT NULL,
  `presupuesto_min` bigint(20) UNSIGNED DEFAULT NULL,
  `presupuesto_max` bigint(20) UNSIGNED DEFAULT NULL,
  `id_agente_entrada` int(11) DEFAULT NULL,
  `origen` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dni` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `canal_entrada` smallint(5) UNSIGNED DEFAULT NULL,
  `referencia_interes_inicial` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `poblaciones`
--

CREATE TABLE `poblaciones` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `codigo_pr` bigint(20) NOT NULL,
  `activa` tinyint(1) DEFAULT NULL,
  `principal` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `poblaciones`
--

INSERT INTO `poblaciones` (`id`, `nombre`, `codigo_pr`, `activa`, `principal`) VALUES
(31860, 'Ajalvir', 15, 0, 0),
(31868, 'Alcala De Henares', 15, 0, 0),
(31869, 'Alcobendas', 15, 0, 0),
(31872, 'Alcorcón', 15, 1, 0),
(31875, 'Aldea Del Fresno', 15, 0, 0),
(31877, 'Algete', 15, 0, 0),
(31882, 'Alpedrete', 15, 0, 0),
(31885, 'Ambite', 15, 0, 0),
(31890, 'Aranjuez', 15, 0, 0),
(31893, 'Arganda Del Rey', 15, 0, 0),
(31899, 'Arroyomolinos', 15, 0, 0),
(31925, 'Batres', 15, 0, 0),
(31927, 'Becerril De La Sierra', 15, 0, 0),
(31929, 'Belmonte De Tajo', 15, 0, 0),
(31932, 'Bercial (Buitrago), El', 15, 0, 0),
(31938, 'Boadilla Del Monte', 15, 0, 0),
(31939, 'Boalo, El', 15, 0, 0),
(31940, 'Brunete', 15, 0, 0),
(31956, 'Cabanillas De La Sierra', 15, 0, 0),
(31964, 'Cadalso De Los Vidrios', 15, 0, 0),
(31972, 'Campo Real', 15, 0, 0),
(31981, 'Caraba&ntilde;a', 15, 0, 0),
(32026, 'Cercedilla', 15, 0, 0),
(32050, 'Chapineria', 15, 0, 0),
(32054, 'Chinchon', 15, 0, 0),
(32059, 'Ciempozuelos', 15, 0, 0),
(32074, 'Cobe&ntilde;a', 15, 0, 0),
(32081, 'Collado Mediano', 15, 0, 0),
(32082, 'Collado Villalba', 15, 0, 0),
(32083, 'Colmenar De Oreja', 15, 0, 0),
(32084, 'Colmenar Del Arroyo', 15, 0, 0),
(32085, 'Colmenar Viejo', 15, 0, 0),
(32089, 'Colmenarejo', 15, 0, 0),
(32150, 'Corpa', 15, 0, 0),
(32154, 'Coslada', 15, 0, 0),
(32168, 'Cubas De La Sagra', 15, 0, 0),
(32176, 'Daganzo De Arriba', 15, 0, 0),
(32225, 'Fresnedilla De La Oliva', 15, 0, 0),
(32231, 'Fuenlabrada', 15, 0, 0),
(32237, 'Fuente El Saz De Jarama', 15, 0, 0),
(32246, 'Fuentidue&ntilde;a De Tajo', 15, 0, 0),
(32247, 'Galapagar', 15, 0, 0),
(32260, 'Getafe', 15, 0, 0),
(32266, 'Gozquez De Arribas', 15, 0, 0),
(32270, 'Gri&ntilde;on', 15, 0, 0),
(32271, 'Guadalix De La Sierra', 15, 0, 0),
(32273, 'Guadarrama', 15, 0, 0),
(32293, 'Hoyo De Manzanares', 15, 0, 0),
(32300, 'Humanes De Madrid', 15, 0, 0),
(32320, 'Legan&eacute;s', 15, 0, 0),
(32330, 'Loeches', 15, 0, 0),
(32338, 'Madrid', 15, 0, 1),
(32342, 'Majadahonda', 15, 0, 0),
(32349, 'Manzanares El Real', 15, 0, 0),
(32360, 'Meco', 15, 0, 0),
(32364, 'Mejorada Del Campo', 15, 0, 0),
(32373, 'Miraflores De La Sierra', 15, 0, 0),
(32402, 'Moraleja De Enmedio', 15, 0, 0),
(32404, 'Moralzarzal', 15, 0, 0),
(32405, 'Morata De Taju&ntilde;a', 15, 0, 0),
(32408, 'M&oacute;stoles', 15, 0, 0),
(32413, 'Navacerrada, Pueblo', 15, 0, 0),
(32415, 'Navalafuente', 15, 0, 0),
(32416, 'Navalagamella', 15, 0, 0),
(32417, 'Navalcarnero', 15, 0, 0),
(32427, 'Navas Del Rey', 15, 0, 0),
(32439, 'Nuevo Baztan', 15, 0, 0),
(32445, 'Olmeda De Las Fuentes', 15, 0, 0),
(32459, 'Paracuellos De Jarama', 15, 0, 0),
(32466, 'Parla', 15, 0, 0),
(32476, 'Parquelagos', 15, 0, 0),
(32482, 'Pedrezuela', 15, 0, 0),
(32487, 'Pelayos De La Presa', 15, 0, 0),
(32501, 'Perales De TajuÃ±a', 15, 0, 0),
(32518, 'Pinto', 15, 0, 0),
(32556, 'Pozuelo De Alarcon', 15, 0, 0),
(32557, 'Pozuelo Del Rey', 15, 0, 0),
(32592, 'Quijorna', 15, 0, 0),
(32627, 'Rivas-Vaciamadrid', 15, 0, 0),
(32631, 'Robledo De Chavela', 15, 0, 0),
(32645, 'Rozas De Madrid, Las', 15, 0, 0),
(32651, 'San Agustin De Guadalix', 15, 0, 0),
(32655, 'San Fernando De Henares', 15, 0, 0),
(32662, 'San Martin De La Vega', 15, 0, 0),
(32664, 'San Martin De Valdeiglesias', 15, 0, 0),
(32668, 'San Sebastian De Los Reyes', 15, 0, 0),
(32687, 'Santos De La Humosa, Los', 15, 0, 0),
(32694, 'Serranillos Del Valle', 15, 0, 0),
(32695, 'Sevilla La Nueva', 15, 0, 0),
(32708, 'Soto Del Real', 15, 0, 0),
(32713, 'Talamanca Del Jarama', 15, 0, 0),
(32722, 'Titulcia', 15, 0, 0),
(32729, 'Torrejon De Ardoz', 15, 0, 0),
(32730, 'Torrejon De La Calzada', 15, 0, 0),
(32731, 'Torrejon De Velasco', 15, 0, 0),
(32733, 'Torrelaguna', 15, 0, 0),
(32735, 'Torrelodones', 15, 0, 0),
(32738, 'Torres De La Alameda', 15, 0, 0),
(32739, 'Tres Cantos', 15, 0, 0),
(32763, 'Valdemorillo', 15, 0, 0),
(32765, 'Valdemoro', 15, 0, 0),
(32767, 'Valdeolmos', 15, 0, 0),
(32770, 'Valdepielagos', 15, 0, 0),
(32775, 'Valdetorres De Jarama', 15, 0, 0),
(32776, 'Valdilecha', 15, 0, 0),
(32788, 'Vellon, El', 15, 0, 0),
(32802, 'Villa Del Prado', 15, 0, 0),
(32806, 'Villaconejos', 15, 0, 0),
(32809, 'Villalbilla', 15, 0, 0),
(32813, 'Villanueva De La Ca?ada', 15, 0, 0),
(32815, 'Villanueva Del Pardillo', 15, 0, 0),
(32816, 'Villar Del Olmo', 15, 0, 0),
(32817, 'Villarejo De Salvanes', 15, 0, 0),
(32821, 'Villaviciosa De Odon', 15, 0, 0),
(56904, 'Albarreal De Tajo', 45, 0, 0),
(56907, 'Alcabon', 45, 0, 0),
(56909, 'Alcaudete De La Jara', 45, 0, 0),
(56919, 'Almorox', 45, 0, 0),
(56923, 'Arges', 45, 0, 0),
(56928, 'Barcience', 45, 0, 0),
(56929, 'Bargas', 45, 0, 0),
(56937, 'Borox', 45, 0, 0),
(56945, 'Caba&ntilde;as De Yepes', 45, 0, 0),
(56946, 'Cabezamesada', 45, 0, 0),
(56949, 'Calera Y Chozas', 45, 0, 0),
(56952, 'Camarena', 45, 0, 0),
(56953, 'Camarenilla', 45, 0, 0),
(56957, 'Carmena', 45, 0, 0),
(56959, 'Carranque', 45, 0, 0),
(56960, 'Carriches', 45, 0, 0),
(56963, 'Casar De Escalona, El', 45, 0, 0),
(56966, 'Casarrubios Del Monte', 45, 0, 0),
(56972, 'Cazalegas', 45, 0, 0),
(56973, 'Cebolla', 45, 0, 0),
(56974, 'Cedillo Del Condado', 45, 0, 0),
(56979, 'Chozas De Canales', 45, 0, 0),
(56981, 'Ciruelos', 45, 0, 0),
(56985, 'Consuegra', 45, 0, 0),
(56987, 'Corral De Almaguer', 45, 0, 0),
(56992, 'Domingo Perez', 45, 0, 0),
(56993, 'Dos Barrios', 45, 0, 0),
(56998, 'Escalona', 45, 0, 0),
(57002, 'Esquivias', 45, 0, 0),
(57006, 'Fuensalida', 45, 0, 0),
(57015, 'Guardia, La', 45, 0, 0),
(57021, 'Hormigos', 45, 0, 0),
(57023, 'Huerta De Valdecarabanos', 45, 0, 0),
(57027, 'Illescas', 45, 0, 0),
(57030, 'Layos', 45, 0, 0),
(57031, 'Lillo', 45, 0, 0),
(57034, 'Lominchar', 45, 0, 0),
(57038, 'Magan', 45, 0, 0),
(57040, 'Malpica De Tajo', 45, 0, 0),
(57045, 'Mascaraque', 45, 0, 0),
(57046, 'Mata, La', 45, 0, 0),
(57052, 'Mentrida', 45, 0, 0),
(57054, 'Miguel Esteban', 45, 0, 0),
(57056, 'Mocejon', 45, 0, 0),
(57062, 'Nambroca', 45, 0, 0),
(57073, 'Noblejas', 45, 0, 0),
(57076, 'Noves', 45, 0, 0),
(57079, 'Oca&ntilde;a', 45, 0, 0),
(57080, 'Olias Del Rey', 45, 0, 0),
(57081, 'Ontigola', 45, 0, 0),
(57083, 'Orgaz', 45, 0, 0),
(57088, 'Pantoja', 45, 0, 0),
(57099, 'Polan', 45, 0, 0),
(57101, 'Portillo De Toledo, El', 45, 0, 0),
(57114, 'Quintanar De La Orden', 45, 0, 0),
(57117, 'Quismondo', 45, 0, 0),
(57119, 'Recas', 45, 0, 0),
(57129, 'Romeral, El', 45, 0, 0),
(57137, 'San Roman De Los Montes', 45, 0, 0),
(57140, 'Santa Cruz De La Zarza', 45, 0, 0),
(57142, 'Santa Cruz De Retamar', 45, 0, 0),
(57143, 'Santa Olalla', 45, 0, 0),
(57147, 'Sese&ntilde;a Nuevo', 45, 0, 0),
(57154, 'Talavera De La Reina', 45, 0, 0),
(57156, 'Tembleque', 45, 0, 0),
(57158, 'Toledo', 45, 0, 1),
(57163, 'Torrijos', 45, 0, 0),
(57166, 'Ugena', 45, 0, 0),
(57175, 'Valmojado', 45, 0, 0),
(57180, 'Ventas De Retamosa', 45, 0, 0),
(57185, 'Villaca&ntilde;as', 45, 0, 0),
(57187, 'Villaluenga', 45, 0, 0),
(57188, 'Villamiel De Toledo', 45, 0, 0),
(57191, 'Villanueva De Alcardete', 45, 0, 0),
(57194, 'Villarrubia De Santiago', 45, 0, 0),
(57196, 'Villaseca De La Sagra', 45, 0, 0),
(57197, 'Villasequilla', 45, 0, 0),
(57198, 'Villatobas', 45, 0, 0),
(57199, 'Viso De San Juan, El', 45, 0, 0),
(57202, 'Yepes', 45, 0, 0),
(57203, 'Yuncler', 45, 0, 0),
(57205, 'Yuncos', 45, 0, 0),
(89006, 'Sese&ntilde;a', 45, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE `provincias` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `activa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`id`, `nombre`, `activa`) VALUES
(15, 'Madrid', 1),
(45, 'Toledo', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas`
--

CREATE TABLE `zonas` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `codigo_po` bigint(20) NOT NULL,
  `activa` tinyint(1) NOT NULL,
  `nombre_admin` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `zonas`
--

INSERT INTO `zonas` (`id`, `nombre`, `codigo_po`, `activa`, `nombre_admin`) VALUES
(1, 'Campodón', 31872, 1, NULL),
(2, 'Centro', 31872, 1, NULL),
(5, 'Ondarreta', 31872, 1, NULL),
(7, 'Parque Oeste/Fuente Cisneros', 31872, 1, 'P.Oeste/F.Cisneros'),
(8, 'Polí­gonos', 31872, 1, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agentes`
--
ALTER TABLE `agentes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `poblaciones`
--
ALTER TABLE `poblaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zonas`
--
ALTER TABLE `zonas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agentes`
--
ALTER TABLE `agentes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT de la tabla `poblaciones`
--
ALTER TABLE `poblaciones`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89007;

--
-- AUTO_INCREMENT de la tabla `provincias`
--
ALTER TABLE `provincias`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `zonas`
--
ALTER TABLE `zonas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
