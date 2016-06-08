
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-09-2015 a las 14:42:36
-- Versión del servidor: 10.0.20-MariaDB
-- Versión de PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `u459825808_estud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE IF NOT EXISTS `estudiantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text COLLATE utf8_unicode_ci NOT NULL,
  `apellido` text COLLATE utf8_unicode_ci NOT NULL,
  `cedula` text COLLATE utf8_unicode_ci NOT NULL,
  `correo` text COLLATE utf8_unicode_ci NOT NULL,
  `telefono` text COLLATE utf8_unicode_ci NOT NULL,
  `nucleo` text COLLATE utf8_unicode_ci NOT NULL,
  `seccion` text COLLATE utf8_unicode_ci NOT NULL,
  `carrera` text COLLATE utf8_unicode_ci NOT NULL,
  `materia` text COLLATE utf8_unicode_ci NOT NULL,
  `periodo` text COLLATE utf8_unicode_ci NOT NULL,
  `nota1` int(11) NOT NULL,
  `nota2` int(11) NOT NULL,
  `nota3` int(11) NOT NULL,
  `nota4` int(11) NOT NULL,
  `nota5` int(11) NOT NULL,
  `nota6` int(11) NOT NULL,
  `nota7` int(11) NOT NULL,
  `nota8` int(11) NOT NULL,
  `nota9` int(11) NOT NULL,
  `notafinal` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=177 ;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `nombre`, `apellido`, `cedula`, `correo`, `telefono`, `nucleo`, `seccion`, `carrera`, `materia`, `periodo`, `nota1`, `nota2`, `nota3`, `nota4`, `nota5`, `nota6`, `nota7`, `nota8`, `nota9`, `notafinal`) VALUES
(89, 'MARIA', 'RODRIGUEZ', '21188567', 'mariaelisar7@gmail.com', '04261655307', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 14, 30, 22, 22, 0, 0, 0, 0, 0, 88),
(165, 'ADRIANA', 'RIERA', '20743139', '', '', 'COL', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 7, 23, 6, 6, 0, 0, 0, 0, 0, 42),
(88, 'PEDRO', 'SCANDELA', '20725701', 'pedroscandela@hotmail.com', '0426-6682124', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 19, 15, 0, 0, 0, 0, 0, 0, 0, 7),
(87, 'YOEGLIMAR', 'PEROZO', '25192006', 'yoeglimarperozo@gmail.com', '04168601692', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 19, 30, 25, 20, 0, 0, 0, 0, 0, 94),
(159, 'BRANDOR', 'MARQUEZ', '24266634', 'Brandormarquez@gmail.com', '04120702716', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82, 'YOHANNY', 'GONZALEZ', '24606622', 'yohannycarolina15@gmail.com', '04167621631', 'Cabimas', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 9, 30, 25, 20, 0, 0, 0, 0, 0, 84),
(85, 'CARLOS', 'GONZALEZ', '26524398', 'carlos_2_5_95@hotmail.com', '04146285850', 'Cabimas', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 9, 30, 25, 20, 0, 0, 0, 0, 0, 84),
(84, 'CARLOS', 'GONZALEZ', '26524398', 'carlos_2_5_95@hotmail.com', '04146285850', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 19, 10, 0, 0, 0, 0, 0, 0, 0, 6),
(83, 'ENMANUEL', 'CARRILLO', '20059597', 'enmanuelcarrillo@gmail.com', '04146770575', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(80, 'WOLFAN', 'PEÑA', '20743816', 'wolfanpe@gmail.com', '04164666225', 'Cabimas', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 7, 0, 0, 0, 0, 0, 0, 0, 0, 7),
(72, 'RAFAEL', 'PINEDA', '11451075', 'LAMPINEDA@GMAIL.COM', '04126572357', 'Cabimas', 'S001', 'Informatica', 'Programación II', '2014-U', 11, 5, 7, 13, 0, 7, 15, 0, 0, 12),
(71, 'IVAN', 'DOMINGUEZ', '21206320', 'ivandominguest@hotmail.com', '04146643188', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2014-U', 15, 3, 0, 11, 10, 12, 0, 0, 0, 10),
(43, 'JHEKSON', 'DIAZ', '23606299', 'jhekson19@gmail.com', '04126647158', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2014-U', 11, 5, 7, 13, 15, 12, 0, 0, 0, 13),
(44, 'FABIAN', 'FIGUEROA', '18807550', 'fabianfigueroaprieto@gmail.com', '04161630560', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2014-U', 11, 5, 7, 8, 0, 0, 0, 0, 0, 6),
(45, 'YAMILETH', 'LUGO', '21382710', 'yamilethlugo1@hotmail.com', '04248604829', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2014-U', 11, 5, 9, 0, 0, 10, 15, 0, 0, 10),
(69, 'YOLIMAR', 'MORALES', '24606742', 'Yolimar1904@gmail.com', '04246878548', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2014-U', 15, 5, 9, 0, 0, 12, 10, 0, 0, 10),
(48, 'ELIAS', 'FARIAS', '19831328', 'eliasfaria_89@hotmail.com', '04269606460', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2014-U', 15, 3, 0, 11, 10, 10, 15, 0, 0, 13),
(49, 'DANILO', 'BRICEÑO', '20744328', 'bridani@hotmail.com', '04122135556', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2014-U', 16, 5, 9, 14, 9, 8, 12, 0, 0, 15),
(50, 'JOSE', 'FERNANDEZ', '22052051', 'josefernanandez@gmail.com', '04246678011', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2014-U', 15, 3, 0, 11, 3, 8, 13, 0, 0, 11),
(51, 'DENNIS ', 'PIÑA', '23469678', 'DENNISLUGOGCK@GMAIL.COM', '0414-9677065', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2014-U', 16, 0, 5, 8, 15, 10, 16, 0, 0, 14),
(52, 'DAVID', 'RODRIGUEZ', '19831995', 'elbaterist18@gmail.com', '04127930359', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2014-U', 16, 0, 5, 8, 0, 10, 12, 0, 0, 10),
(53, 'GINETH', 'CALLEJAS', '23882326', 'gineth32@gmail.com', '04121055740', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2014-U', 16, 5, 9, 14, 11, 12, 0, 0, 0, 13),
(54, 'GABRIELA', 'CHIRINOS', '21045461', 'gabriela61293@gmail.com', '04165694295', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2014-U', 11, 3, 9, 0, 11, 10, 18, 0, 0, 12),
(55, 'ELIANNY', 'PEROZO', '21187642', 'elianny_11_5@hotmail.com', '04121687388', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2014-U', 16, 0, 5, 8, 0, 10, 16, 0, 0, 11),
(56, 'NELMARY', 'OBREGON', '20086837', 'nema_18_60@hotmail.com', '04126481309', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2014-U', 16, 5, 5, 0, 0, 10, 15, 0, 0, 10),
(68, 'JAKMARY', 'INFANTE', '21044100', 'jakmary21@gmail.com', '04262000709', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2014-U', 11, 5, 0, 9, 10, 10, 15, 0, 0, 12),
(58, 'DILIANY', 'INFANTE', '20725045', 'dilianyraquel@gmail.com', '04263615393', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2014-U', 11, 5, 0, 0, 0, 0, 0, 0, 0, 3),
(67, 'DERICKSSON', 'MORALES', '20861214', 'darkenzs93@gmail.com', '04246052098', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2014-U', 16, 5, 9, 14, 14, 0, 16, 0, 0, 15),
(60, 'GERALDINE', 'MONTILLA', '20455654', 'geraldinmontilla@hotmail.com', '04246299523', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2014-U', 11, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(66, 'KAREN', 'GONZALEZ', '20203843', 'gonzalezk@hotmailcom', '04264872522', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2014-U', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(62, 'ANDREA', 'OLIVEROS', '23469615', 'av.oj.19@gmail.com', '04146031121', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2014-U', 11, 3, 9, 0, 10, 10, 18, 0, 0, 12),
(63, 'OSMER', 'FREITES', '21212130', 'osmer_ojfs@hotmail.com', '04163085944', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2014-U', 15, 3, 0, 11, 0, 10, 16, 0, 0, 11),
(64, 'JESSIKA', 'GONZALEZ', '22481173', 'jessikagonzalez18@gmail.com', '04160199473', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2014-U', 16, 3, 0, 8, 8, 10, 10, 0, 0, 11),
(65, 'RHINA', 'MARTINEZ', '19459770', 'rhinamartines@gmail.com', '04146820150', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2014-U', 16, 3, 0, 8, 11, 10, 16, 0, 0, 13),
(90, 'MORELIS', 'DIAZ', '23467512', 'morelis_12@hotmail.com', '04146756483', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 14, 10, 5, 5, 0, 0, 0, 0, 0, 7),
(91, 'MARY ', 'SIERRA', '23589698', 'marycarmensierra11@gmail.com', '04246872100', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 14, 10, 5, 5, 0, 0, 0, 0, 0, 7),
(92, 'YOLIMAR', 'MORALES', '24606742', 'yolimar1904@gmail.com', '04246878548', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 8, 13, 9, 9, 0, 0, 0, 0, 0, 39),
(93, 'DAVID', 'LOPEZ', '20858744', 'daavid99@gmail.com', '+584121239485', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 6, 8, 5, 5, 0, 0, 0, 0, 0, 24),
(94, 'DAVID', 'LOPEZ', '20858744', 'daavid99@gmail.com', '+584121239485', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 14, 40, 5, 5, 0, 0, 0, 0, 0, 13),
(95, 'IVANESA ', 'RODRIGUEZ ', '23881192', 'ivanesandreina@gmail.com', '04246878226', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 19, 15, 15, 10, 0, 0, 0, 0, 0, 12),
(96, 'MARIA', 'CALDERA', '23881493', 'mariacaldera28@gmail.com', '04163512282', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 9, 30, 22, 22, 0, 0, 0, 0, 0, 83),
(98, 'JOSUE', 'VARGAS', '22238044', 'vargaschirinojosue@gmail.com', '04146693784', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(99, 'JOSUE', 'VARGAS', '22238044', 'vargaschirinojosue@gmail.com', '04146693784', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 15, 8, 0, 0, 0, 0, 0, 0, 0, 5),
(100, 'RITMARI ', 'SOLER', '21044476', 'RITMARI.SOLER@GMAIL.COM', '0426669853', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 14, 15, 15, 10, 0, 0, 0, 0, 0, 11),
(164, 'JHON ', 'GOMEZ', '23882905', 'jagb0694@gmail.com', '04146690243', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 15, 8, 0, 0, 0, 0, 0, 0, 0, 5),
(166, 'ANDRES', 'RAMIREZ', '24262036', '', '', 'COL', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 10, 20, 11, 10, 0, 0, 0, 0, 0, 51),
(162, 'WINGRICEL', 'LOYO', '20257683', 'lwingricel@gmail.com', '04161746597', 'COL', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 15, 23, 16, 16, 0, 0, 0, 0, 0, 70),
(106, 'ZUHENNY', 'NERY', '24369319', 'zuhennyn@gmail.com', '04146823757', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 15, 10, 5, 5, 0, 0, 0, 0, 0, 7),
(107, 'JORWIS', 'HERNANDEZ', '18371481', 'jorwis212@gmail.com', '04140646891', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(108, 'YAMILETH', 'LUGO', '21382710', 'yamilethlugo1@hotmail.com', '04248604829', 'Cabimas', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 10, 23, 16, 16, 0, 0, 0, 0, 0, 65),
(109, 'ANNYULIETH', 'BORJAS', '20743309', 'borjas_92@hotmail.com', '04146538393', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 15, 8, 15, 10, 0, 0, 0, 0, 0, 10),
(111, 'LEONEL ', 'PALMAR', '25958473', 'leopalmr@gmail.com', '04146834267', 'Cabimas', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 5, 22, 22, 20, 0, 0, 0, 0, 0, 69),
(112, 'KAREN', 'GONZALEZ', '20203843', 'gkarenalexandra@gmail.com', '04264872522', 'Cabimas', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(113, 'KAREN', 'GONZALEZ', '20203843', 'gkarenalexandra@gmail.com', '04264872522', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(114, 'JORGE', 'GUARICUCO', '23765746', 'JorgeLuisGuaricuco@gmail.com', '04121020280', 'Cabimas', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 11, 30, 25, 20, 0, 0, 0, 0, 0, 86),
(115, 'ELIANNY', 'PEROZO', '21187642', 'elianny_11_5@hotmail.com', '04121687388', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 8, 13, 9, 9, 0, 0, 0, 0, 0, 39),
(116, 'DARIO', 'GOMEZ', '23.467.052', 'dariodanielgomez@hotmail.com', '04166687994', 'Cabimas', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 20, 0, 0, 0, 0, 0, 0, 0, 20),
(118, 'HUGO', 'MAVARES', '21.043.894', 'hugoenriquemavares@hotmail.com', '04263658429', 'Cabimas', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 2, 12, 12, 0, 0, 0, 0, 0, 0, 26),
(122, 'ELIZETH', 'TORRES', '21644169', 'elizethtorrescolman@gmail.com', '04268233533', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 15, 23, 22, 22, 0, 0, 0, 0, 0, 82),
(167, 'GRISMAR', 'NIETO', '20744505', '', '', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 9, 23, 11, 10, 0, 0, 0, 0, 0, 53),
(124, 'JHONNY', 'AGUILAR', '25192149', 'aguilarjhonny10@gmail.com', '04121205028', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 8, 8, 6, 6, 0, 0, 0, 0, 0, 28),
(125, 'ANGELI', 'RINCON', '20743492', 'RINCONAAB@HOTMAIL.COM', '04145071276', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(126, 'EDWIN', 'MARIN', '24251681', 'marinedwin98@gmail.com', '04246195610', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 10, 30, 25, 20, 0, 0, 0, 0, 0, 85),
(127, 'ROSANGELA', 'MALDONADO', '24486432', 'rosangelamaldonado28@gmail.com', '04261010060', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 11, 30, 25, 20, 0, 0, 0, 0, 0, 86),
(128, 'YOSELYN', 'ROMERO', '21044163', 'yosekynr92@gmaik.com', '04126515575', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 12, 8, 5, 5, 0, 0, 0, 0, 0, 30),
(129, 'GERVI', 'SANCHEZ', '22120184', 'gervisanchez.gs@gmail.com', '04160860289', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 2, 22, 20, 20, 0, 0, 0, 0, 0, 64),
(132, 'YURIANGEL', 'ROJAS', '25555050', 'yuriangelrojas@gmail.com', '04246036232', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 8, 20, 6, 6, 0, 0, 0, 0, 0, 40),
(133, 'WALDNER', 'SENCIAL', '23882201', 'waldnersencial@gmail.com', '04246565984', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 5, 22, 11, 10, 0, 0, 0, 0, 0, 48),
(134, 'JOSE', 'MACHADO', '25666711', 'humberto_machado100@hotmail.com', '02643711558', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 10, 14, 14, 10, 0, 0, 0, 0, 0, 48),
(135, 'JESSIKA', 'GONZALEZ', '22481173', 'jessikagonzalez18@gmail.com', '04160199473', 'Cabimas', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 7, 22, 0, 0, 0, 0, 0, 0, 0, 29),
(137, 'ALBERT', 'NAVA', '24369686', 'albertjosenava@gmail.com', '02643711472', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 5, 8, 14, 10, 0, 0, 0, 0, 0, 37),
(139, 'JESSIMAR', 'MELENDEZ', '23859803', 'JESSIMAR.MELENDEZD@GMAIL.COM', '04146530230', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(140, 'HENRY', 'MATOS', '23514139', 'henryjosematosavila@gmail.com', '04268602011', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 10, 20, 16, 16, 0, 0, 0, 0, 0, 62),
(141, 'LIBNY', 'LEON PARRA ', '19311272', 'libnyleon89@gmail.com', '', 'Cabimas', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(142, 'NEIDYS', 'GONZALEZ', '20456359', 'neidys_71292@hotmail.com', '04121055760', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 14, 15, 15, 10, 0, 0, 0, 0, 0, 11),
(144, 'ADRIANA', 'CARRIZO', '23463833', 'adriana_lucia_c@hotmail.com', '04146160966', 'Cabimas', 'S002', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(145, 'RICHARD', 'PIRELA', '23467524', 'richarddanielpirela@gmail.com', '04268145803', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 19, 10, 0, 0, 0, 0, 0, 0, 0, 6),
(146, 'JOSEANTONIO', 'CHIRINOS', '20084280', 'joseantoniochirino_200@hotmail.com', '04246612869', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 19, 8, 15, 10, 0, 0, 0, 0, 0, 10),
(147, 'CARLOS', 'PRIETO', '21210513', 'the_prieto214@hotmail.com', '04246862042', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(148, 'DILIANY', 'INFANTE', '20725045', 'dilianyraquel@gmail.com', '04263615393', 'Cabimas', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(149, 'DILIANY', 'INFANTE', '20725045', 'dilianyraquel@gmail.com', '04263615393', 'Cabimas', 'S002', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(150, 'GERALDINE', 'MONTILLA', '20455654', 'geraldinmontilla@hotmail.com', '04246299523', 'Cabimas', 'S002', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(151, 'FRANCESCO', 'DI BELLA', '23463549', 'frxn777@gmail.com', '04268607387', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 19, 15, 15, 15, 0, 0, 0, 0, 0, 13),
(152, 'ERNESTO', 'LARGO', '21229661', 'aemm_101@hotmail.com', '04263687963', 'Cabimas', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 9, 0, 22, 20, 0, 0, 0, 0, 0, 51),
(153, 'YOHANA', 'GONZALEZ', '20623649', 'yohanag1992@gmail', '04121256167', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 8, 12, 16, 16, 0, 0, 0, 0, 0, 52),
(154, 'HEBERT', 'MOLINA', '18064138', 'hebertjose99@gmail.com', '', 'Cabimas', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(157, 'NATHALIA ', 'ALVIAREZ', '19676142', 'alviarez.d.n@gmail.com', '04247174448', 'Cabimas', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(158, 'DIMARYS ', 'MEDINA', '21429470', '', '', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 14, 15, 15, 10, 0, 0, 0, 0, 0, 11),
(169, 'ELIAS', 'FARIA', '19831328', 'eliasfaria989@gmail.com', '04269606460', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-II', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(170, 'DAVID', 'MOSQUERA', '21044952', '', '', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(171, 'GERALDINE', 'MONTILLA', '20455654', '', '', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(172, 'DILIANY', 'INFANTE', '20725045', '', '', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(176, 'ELIAS', 'FARIAS', '19831328', '', '', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 9, 20, 10, 10, 0, 0, 0, 0, 0, 49),
(174, 'ADRIANA', 'CARRIZO', '23463883', '', '', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(175, 'ALEJANDRA', 'GARCIA', '20861176', '', '', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
