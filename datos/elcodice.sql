-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 28-02-2016 a las 17:21:02
-- Versión del servidor: 5.5.47-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `elcodice`
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
  `docente` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=208 ;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `nombre`, `apellido`, `cedula`, `correo`, `telefono`, `nucleo`, `seccion`, `carrera`, `materia`, `periodo`, `nota1`, `nota2`, `nota3`, `nota4`, `nota5`, `nota6`, `nota7`, `nota8`, `nota9`, `notafinal`, `docente`) VALUES
(89, 'MARIA', 'RODRIGUEZ', '21188567', 'mariaelisar7@gmail.com', '04261655307', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 14, 30, 22, 22, 0, 0, 0, 0, 0, 88, ''),
(165, 'ADRIANA', 'RIERA', '20743139', '', '', 'COL', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 7, 23, 6, 6, 0, 0, 0, 0, 0, 42, ''),
(88, 'PEDRO', 'SCANDELA', '20725701', 'pedroscandela@hotmail.com', '0426-6682124', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 19, 15, 0, 0, 0, 0, 0, 0, 0, 34, ''),
(87, 'YOEGLIMAR', 'PEROZO', '25192006', 'yoeglimarperozo@gmail.com', '04168601692', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 19, 30, 25, 20, 0, 0, 0, 0, 0, 94, ''),
(159, 'BRANDOR', 'MARQUEZ', '24266634', 'Brandormarquez@gmail.com', '04120702716', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(82, 'YOHANNY', 'GONZALEZ', '24606622', 'yohannycarolina15@gmail.com', '04167621631', 'COL', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 9, 30, 25, 20, 0, 0, 0, 0, 0, 84, ''),
(85, 'CARLOS', 'GONZALEZ', '26524398', 'carlos_2_5_95@hotmail.com', '04146285850', 'COL', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 9, 30, 25, 20, 0, 0, 0, 0, 0, 84, ''),
(84, 'CARLOS', 'GONZALEZ', '26524398', 'carlos_2_5_95@hotmail.com', '04146285850', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 19, 10, 0, 0, 0, 0, 0, 0, 0, 29, ''),
(83, 'ENMANUEL', 'CARRILLO', '20059597', 'enmanuelcarrillo@gmail.com', '04146770575', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(80, 'WOLFAN', 'PEÑA', '20743816', 'wolfanpe@gmail.com', '04164666225', 'COL', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 7, 0, 0, 0, 0, 0, 0, 0, 0, 7, ''),
(72, 'RAFAEL', 'PINEDA', '11451075', 'LAMPINEDA@GMAIL.COM', '04126572357', 'COL', 'S001', 'Informatica', 'Programación II', '2014-U', 11, 5, 7, 13, 0, 7, 15, 0, 0, 58, ''),
(71, 'IVAN', 'DOMINGUEZ', '21206320', 'ivandominguest@hotmail.com', '04146643188', 'COL', 'S001', 'Informatica', 'Programacion II', '2014-U', 15, 3, 0, 11, 10, 12, 0, 0, 0, 51, ''),
(43, 'JHEKSON', 'DIAZ', '23606299', 'jhekson19@gmail.com', '04126647158', 'COL', 'S001', 'Informatica', 'Programacion II', '2014-U', 11, 5, 7, 13, 15, 12, 0, 0, 0, 63, ''),
(44, 'FABIAN', 'FIGUEROA', '18807550', 'fabianfigueroaprieto@gmail.com', '04161630560', 'COL', 'S001', 'Informatica', 'Programacion II', '2014-U', 11, 5, 7, 8, 0, 0, 0, 0, 0, 31, ''),
(45, 'YAMILETH', 'LUGO', '21382710', 'yamilethlugo1@hotmail.com', '04248604829', 'COL', 'S001', 'Informatica', 'Programacion II', '2014-U', 11, 5, 9, 0, 0, 10, 15, 0, 0, 50, ''),
(69, 'YOLIMAR', 'MORALES', '24606742', 'Yolimar1904@gmail.com', '04246878548', 'COL', 'S001', 'Informatica', 'Programacion II', '2014-U', 15, 5, 9, 0, 0, 12, 10, 0, 0, 51, ''),
(48, 'ELIAS', 'FARIAS', '19831328', 'eliasfaria_89@hotmail.com', '04269606460', 'COL', 'S001', 'Informatica', 'Programacion II', '2014-U', 15, 3, 0, 11, 10, 10, 15, 0, 0, 64, ''),
(49, 'DANILO', 'BRICEÑO', '20744328', 'bridani@hotmail.com', '04122135556', 'COL', 'S001', 'Informatica', 'Programacion II', '2014-U', 16, 5, 9, 14, 9, 8, 12, 0, 0, 73, ''),
(50, 'JOSE', 'FERNANDEZ', '22052051', 'josefernanandez@gmail.com', '04246678011', 'COL', 'S001', 'Informatica', 'Programacion II', '2014-U', 15, 3, 0, 11, 3, 8, 13, 0, 0, 53, ''),
(51, 'DENNIS ', 'PIÑA', '23469678', 'DENNISLUGOGCK@GMAIL.COM', '0414-9677065', 'COL', 'S001', 'Informatica', 'Programacion II', '2014-U', 16, 0, 5, 8, 15, 10, 16, 0, 0, 70, ''),
(52, 'DAVID', 'RODRIGUEZ', '19831995', 'elbaterist18@gmail.com', '04127930359', 'COL', 'S001', 'Informatica', 'Programacion II', '2014-U', 16, 0, 5, 8, 0, 10, 12, 0, 0, 51, ''),
(53, 'GINETH', 'CALLEJAS', '23882326', 'gineth32@gmail.com', '04121055740', 'COL', 'S001', 'Informatica', 'Programacion II', '2014-U', 16, 5, 9, 14, 11, 12, 0, 0, 0, 67, ''),
(54, 'GABRIELA', 'CHIRINOS', '21045461', 'gabriela61293@gmail.com', '04165694295', 'COL', 'S001', 'Informatica', 'Programacion II', '2014-U', 11, 3, 9, 0, 11, 10, 18, 0, 0, 62, ''),
(55, 'ELIANNY', 'PEROZO', '21187642', 'elianny_11_5@hotmail.com', '04121687388', 'COL', 'S001', 'Informatica', 'Programacion II', '2014-U', 16, 0, 5, 8, 0, 10, 16, 0, 0, 55, ''),
(56, 'NELMARY', 'OBREGON', '20086837', 'nema_18_60@hotmail.com', '04126481309', 'COL', 'S001', 'Informatica', 'Programacion II', '2014-U', 16, 5, 5, 0, 0, 10, 15, 0, 0, 51, ''),
(68, 'JAKMARY', 'INFANTE', '21044100', 'jakmary21@gmail.com', '04262000709', 'COL', 'S001', 'Informatica', 'Programacion II', '2014-U', 11, 5, 0, 9, 10, 10, 15, 0, 0, 60, ''),
(58, 'DILIANY', 'INFANTE', '20725045', 'dilianyraquel@gmail.com', '04263615393', 'COL', 'S001', 'Informatica', 'Programacion II', '2014-U', 11, 5, 0, 0, 0, 0, 0, 0, 0, 16, ''),
(67, 'DERICKSSON', 'MORALES', '20861214', 'darkenzs93@gmail.com', '04246052098', 'COL', 'S001', 'Informatica', 'Programacion II', '2014-U', 16, 5, 9, 14, 14, 0, 16, 0, 0, 74, ''),
(60, 'GERALDINE', 'MONTILLA', '20455654', 'geraldinmontilla@hotmail.com', '04246299523', 'COL', 'S001', 'Informatica', 'Programacion II', '2014-U', 11, 0, 0, 0, 0, 0, 0, 0, 0, 11, ''),
(66, 'KAREN', 'GONZALEZ', '20203843', 'gonzalezk@hotmailcom', '04264872522', 'COL', 'S001', 'Informatica', 'Programacion II', '2014-U', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(62, 'ANDREA', 'OLIVEROS', '23469615', 'av.oj.19@gmail.com', '04146031121', 'COL', 'S001', 'Informatica', 'Programacion II', '2014-U', 11, 3, 9, 0, 10, 10, 18, 0, 0, 61, ''),
(63, 'OSMER', 'FREITES', '21212130', 'osmer_ojfs@hotmail.com', '04163085944', 'COL', 'S001', 'Informatica', 'Programacion II', '2014-U', 15, 3, 0, 11, 0, 10, 16, 0, 0, 55, ''),
(64, 'JESSIKA', 'GONZALEZ', '22481173', 'jessikagonzalez18@gmail.com', '04160199473', 'COL', 'S001', 'Informatica', 'Programacion II', '2014-U', 16, 3, 0, 8, 8, 10, 10, 0, 0, 55, ''),
(65, 'RHINA', 'MARTINEZ', '19459770', 'rhinamartines@gmail.com', '04146820150', 'COL', 'S001', 'Informatica', 'Programacion II', '2014-U', 16, 3, 0, 8, 11, 10, 16, 0, 0, 64, ''),
(90, 'MORELIS', 'DIAZ', '23467512', 'morelis_12@hotmail.com', '04146756483', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 14, 10, 5, 5, 0, 0, 0, 0, 0, 34, ''),
(91, 'MARY ', 'SIERRA', '23589698', 'marycarmensierra11@gmail.com', '04246872100', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 14, 10, 5, 5, 0, 0, 0, 0, 0, 34, ''),
(92, 'YOLIMAR', 'MORALES', '24606742', 'yolimar1904@gmail.com', '04246878548', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 8, 13, 9, 9, 0, 0, 0, 0, 0, 39, ''),
(93, 'DAVID', 'LOPEZ', '20858744', 'daavid99@gmail.com', '+584121239485', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 6, 8, 5, 5, 0, 0, 0, 0, 0, 24, ''),
(94, 'DAVID', 'LOPEZ', '20858744', 'daavid99@gmail.com', '+584121239485', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 14, 40, 5, 5, 0, 0, 0, 0, 0, 64, ''),
(95, 'IVANESA ', 'RODRIGUEZ ', '23881192', 'ivanesandreina@gmail.com', '04246878226', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 19, 15, 15, 10, 0, 0, 0, 0, 0, 59, ''),
(96, 'MARIA', 'CALDERA', '23881493', 'mariacaldera28@gmail.com', '04163512282', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 9, 30, 22, 22, 0, 0, 0, 0, 0, 83, ''),
(98, 'JOSUE', 'VARGAS', '22238044', 'vargaschirinojosue@gmail.com', '04146693784', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(99, 'JOSUE', 'VARGAS', '22238044', 'vargaschirinojosue@gmail.com', '04146693784', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 15, 8, 0, 0, 0, 0, 0, 0, 0, 23, ''),
(100, 'RITMARI ', 'SOLER', '21044476', 'RITMARI.SOLER@GMAIL.COM', '0426669853', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 14, 15, 15, 10, 0, 0, 0, 0, 0, 54, ''),
(164, 'JHON ', 'GOMEZ', '23882905', 'jagb0694@gmail.com', '04146690243', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 15, 8, 0, 0, 0, 0, 0, 0, 0, 23, ''),
(166, 'ANDRES', 'RAMIREZ', '24262036', '', '', 'COL', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 10, 20, 11, 10, 0, 0, 0, 0, 0, 51, ''),
(162, 'WINGRICEL', 'LOYO', '20257683', 'lwingricel@gmail.com', '04161746597', 'COL', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 15, 23, 16, 16, 0, 0, 0, 0, 0, 70, ''),
(106, 'ZUHENNY', 'NERY', '24369319', 'zuhennyn@gmail.com', '04146823757', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 15, 10, 5, 5, 0, 0, 0, 0, 0, 35, ''),
(107, 'JORWIS', 'HERNANDEZ', '18371481', 'jorwis212@gmail.com', '04140646891', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(108, 'YAMILETH', 'LUGO', '21382710', 'yamilethlugo1@hotmail.com', '04248604829', 'COL', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 10, 23, 16, 16, 0, 0, 0, 0, 0, 65, ''),
(109, 'ANNYULIETH', 'BORJAS', '20743309', 'borjas_92@hotmail.com', '04146538393', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 15, 8, 15, 10, 0, 0, 0, 0, 0, 48, ''),
(111, 'LEONEL ', 'PALMAR', '25958473', 'leopalmr@gmail.com', '04146834267', 'COL', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 5, 22, 22, 20, 0, 0, 0, 0, 0, 69, ''),
(112, 'KAREN', 'GONZALEZ', '20203843', 'gkarenalexandra@gmail.com', '04264872522', 'COL', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(113, 'KAREN', 'GONZALEZ', '20203843', 'gkarenalexandra@gmail.com', '04264872522', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(114, 'JORGE', 'GUARICUCO', '23765746', 'JorgeLuisGuaricuco@gmail.com', '04121020280', 'COL', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 11, 30, 25, 20, 0, 0, 0, 0, 0, 86, ''),
(115, 'ELIANNY', 'PEROZO', '21187642', 'elianny_11_5@hotmail.com', '04121687388', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 8, 13, 9, 9, 0, 0, 0, 0, 0, 39, ''),
(116, 'DARIO', 'GOMEZ', '23.467.052', 'dariodanielgomez@hotmail.com', '04166687994', 'COL', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 20, 0, 0, 0, 0, 0, 0, 0, 20, ''),
(118, 'HUGO', 'MAVARES', '21.043.894', 'hugoenriquemavares@hotmail.com', '04263658429', 'COL', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 2, 12, 12, 0, 0, 0, 0, 0, 0, 26, ''),
(122, 'ELIZETH', 'TORRES', '21644169', 'elizethtorrescolman@gmail.com', '04268233533', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 15, 23, 22, 22, 0, 0, 0, 0, 0, 82, ''),
(167, 'GRISMAR', 'NIETO', '20744505', '', '', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 9, 23, 11, 10, 0, 0, 0, 0, 0, 53, ''),
(124, 'JHONNY', 'AGUILAR', '25192149', 'aguilarjhonny10@gmail.com', '04121205028', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 8, 8, 6, 6, 0, 0, 0, 0, 0, 28, ''),
(125, 'ANGELI', 'RINCON', '20743492', 'RINCONAAB@HOTMAIL.COM', '04145071276', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(126, 'EDWIN', 'MARIN', '24251681', 'marinedwin98@gmail.com', '04246195610', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 10, 30, 25, 20, 0, 0, 0, 0, 0, 85, ''),
(127, 'ROSANGELA', 'MALDONADO', '24486432', 'rosangelamaldonado28@gmail.com', '04261010060', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 11, 30, 25, 20, 0, 0, 0, 0, 0, 86, ''),
(128, 'YOSELYN', 'ROMERO', '21044163', 'yosekynr92@gmaik.com', '04126515575', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 12, 8, 5, 5, 0, 0, 0, 0, 0, 30, ''),
(129, 'GERVI', 'SANCHEZ', '22120184', 'gervisanchez.gs@gmail.com', '04160860289', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 2, 22, 20, 20, 0, 0, 0, 0, 0, 64, ''),
(132, 'YURIANGEL', 'ROJAS', '25555050', 'yuriangelrojas@gmail.com', '04246036232', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 8, 20, 6, 6, 0, 0, 0, 0, 0, 40, ''),
(133, 'WALDNER', 'SENCIAL', '23882201', 'waldnersencial@gmail.com', '04246565984', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 5, 22, 11, 10, 0, 0, 0, 0, 0, 48, ''),
(134, 'JOSE', 'MACHADO', '25666711', 'humberto_machado100@hotmail.com', '02643711558', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 10, 14, 14, 10, 0, 0, 0, 0, 0, 48, ''),
(135, 'JESSIKA', 'GONZALEZ', '22481173', 'jessikagonzalez18@gmail.com', '04160199473', 'COL', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 7, 22, 0, 0, 0, 0, 0, 0, 0, 29, ''),
(137, 'ALBERT', 'NAVA', '24369686', 'albertjosenava@gmail.com', '02643711472', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 5, 8, 14, 10, 0, 0, 0, 0, 0, 37, ''),
(139, 'JESSIMAR', 'MELENDEZ', '23859803', 'JESSIMAR.MELENDEZD@GMAIL.COM', '04146530230', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(140, 'HENRY', 'MATOS', '23514139', 'henryjosematosavila@gmail.com', '04268602011', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 10, 20, 16, 16, 0, 0, 0, 0, 0, 62, ''),
(141, 'LIBNY', 'LEON PARRA ', '19311272', 'libnyleon89@gmail.com', '', 'COL', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(142, 'NEIDYS', 'GONZALEZ', '20456359', 'neidys_71292@hotmail.com', '04121055760', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 14, 15, 15, 10, 0, 0, 0, 0, 0, 54, ''),
(145, 'RICHARD', 'PIRELA', '23467524', 'richarddanielpirela@gmail.com', '04268145803', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 19, 10, 0, 0, 0, 0, 0, 0, 0, 29, ''),
(146, 'JOSEANTONIO', 'CHIRINOS', '20084280', 'joseantoniochirino_200@hotmail.com', '04246612869', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 19, 8, 15, 10, 0, 0, 0, 0, 0, 52, ''),
(147, 'CARLOS', 'PRIETO', '21210513', 'the_prieto214@hotmail.com', '04246862042', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(148, 'DILIANY', 'INFANTE', '20725045', 'dilianyraquel@gmail.com', '04263615393', 'COL', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(151, 'FRANCESCO', 'DI BELLA', '23463549', 'frxn777@gmail.com', '04268607387', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 19, 15, 15, 15, 0, 0, 0, 0, 0, 64, ''),
(152, 'ERNESTO', 'LARGO', '21229661', 'aemm_101@hotmail.com', '04263687963', 'COL', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 9, 0, 22, 20, 0, 0, 0, 0, 0, 51, ''),
(153, 'YOHANA', 'GONZALEZ', '20623649', 'yohanag1992@gmail', '04121256167', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 8, 12, 16, 16, 0, 0, 0, 0, 0, 52, ''),
(154, 'HEBERT', 'MOLINA', '18064138', 'hebertjose99@gmail.com', '', 'COL', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(157, 'NATHALIA ', 'ALVIAREZ', '19676142', 'alviarez.d.n@gmail.com', '04247174448', 'COL', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(158, 'DIMARYS ', 'MEDINA', '21429470', '', '', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 14, 15, 15, 10, 0, 0, 0, 0, 0, 54, ''),
(170, 'DAVID', 'MOSQUERA', '21044952', '', '', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(171, 'GERALDINE', 'MONTILLA', '20455654', '', '', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(172, 'DILIANY', 'INFANTE', '20725045', '', '', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(176, 'ELIAS', 'FARIAS', '19831328', '', '', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 9, 20, 10, 10, 0, 0, 0, 0, 0, 49, ''),
(174, 'ADRIANA', 'CARRIZO', '23463883', '', '', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(175, 'ALEJANDRA', 'GARCIA', '20861176', '', '', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(178, 'ROMER', 'SANCHEZ', '27184940', '', '', 'COL', 'S002', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 12, 1, 10, 0, 0, 0, 0, 0, 0, 0, ''),
(179, 'ALVIN', 'ARIAS', '26174716', '', '', 'COL', 'S001', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(180, 'MOISES', 'ALMARZA', '25788286', '', '', 'COL', 'S001', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 10, 2, 15, 10, 0, 0, 0, 0, 0, 0, ''),
(181, 'JOSE', 'BARRETO', '25788151', '', '', 'COL', 'S001', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 10, 2, 15, 10, 0, 0, 0, 0, 0, 0, ''),
(182, 'LILIANA', 'CAÃ‘IZALEZ', '18946324', '', '', 'COL', 'S001', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(183, 'GABRIEL', 'CHIRINOS', '26550329', '', '', 'COL', 'S001', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 10, 4, 16, 10, 0, 0, 0, 0, 0, 0, ''),
(184, 'ROSANGELICA', 'CUMARE', '21212923', '', '', 'COL', 'S001', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 10, 3, 16, 10, 0, 0, 0, 0, 0, 0, ''),
(185, 'AIBERT', 'DOMINGUEZ', '26175146', '', '', 'COL', 'S001', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 10, 4, 16, 10, 0, 0, 0, 0, 0, 0, ''),
(186, 'JONATAN', 'LOPEZ', '18979103', '', '', 'COL', 'S001', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(187, 'EDGLIMAR', 'MARIN', '26143843', '', '', 'COL', 'S001', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 10, 3, 16, 10, 0, 0, 0, 0, 0, 0, ''),
(188, 'INAMAR', 'MORALES', '24953285', '', '', 'COL', 'S001', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 7, 5, 10, 10, 0, 0, 0, 0, 0, 0, ''),
(189, 'JHOWARD', 'MORILLO', '23882082', '', '', 'COL', 'S001', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 12, 1, 10, 0, 0, 0, 0, 0, 0, 0, ''),
(190, 'JHERWIN', 'MORILLO', '23882106', '', '', 'COL', 'S001', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 12, 1, 10, 0, 0, 0, 0, 0, 0, 0, ''),
(191, 'JOSUE', 'PERNALETE', '25817945', '', '', 'COL', 'S001', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 10, 2, 15, 10, 0, 0, 0, 0, 0, 0, ''),
(192, 'JOELYS', 'PINILLO', '24736774', '', '', 'COL', 'S001', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 10, 3, 16, 10, 0, 0, 0, 0, 0, 0, ''),
(193, 'YINESKA', 'QUERO', '25309346', '', '', 'COL', 'S001', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 10, 3, 16, 10, 0, 0, 0, 0, 0, 0, ''),
(194, 'CESAR', 'QUINTERO', '24370551', '', '', 'COL', 'S001', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 10, 4, 16, 10, 0, 0, 0, 0, 0, 0, ''),
(195, 'LUIS', 'RIVAS', '25483646', '', '', 'COL', 'S001', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(196, 'LUIS', 'RODRIGUEZ', '25788063', '', '', 'COL', 'S001', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 7, 5, 10, 0, 0, 0, 0, 0, 0, 0, ''),
(197, 'ISABEL', 'ROMERO', '27680549', '', '', 'COL', 'S001', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 10, 3, 16, 10, 0, 0, 0, 0, 0, 0, ''),
(198, 'JUDITH', 'SILVA', '21186464', '', '', 'COL', 'S001', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 7, 5, 10, 10, 0, 0, 0, 0, 0, 0, ''),
(199, 'ANGEL', 'VILCHEZ', '21382314', '', '', 'COL', 'S001', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 12, 1, 10, 10, 0, 0, 0, 0, 0, 0, ''),
(200, 'MARIANYELI', 'CEPEDA', '26912015', '', '', 'COL', 'S002', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 7, 5, 10, 10, 0, 0, 0, 0, 0, 0, ''),
(201, 'SANDY', 'CHIRINOS', '23514860', '', '', 'COL', 'S002', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 10, 4, 16, 10, 0, 0, 0, 0, 0, 0, ''),
(202, 'OMAR', 'DIAZ', '25187222', '', '', 'COL', 'S002', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 10, 2, 15, 10, 0, 0, 0, 0, 0, 0, ''),
(203, 'YESSICA', 'HERNANDEZ', '24254306', '', '', 'COL', 'S002', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 7, 5, 10, 10, 0, 0, 0, 0, 0, 0, ''),
(204, 'YOUMORY', 'MARTINEZ', '24736230', '', '', 'COL', 'S002', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 10, 5, 10, 10, 0, 0, 0, 0, 0, 0, ''),
(205, 'CARLOS', 'MOSQUERA', '17336851', '', '', 'COL', 'S002', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(206, 'RUTH', 'PACHANO', '26201692', '', '', 'COL', 'S002', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(207, 'HEVEL', 'VILLALOBOS', '21644159', '', '', 'COL', 'S002', 'INFORMATICA', 'FUNDAMENTOS DE LAS AREAS DE LA INFORMATICA', '2015-II', 0, 5, 15, 5, 0, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` text COLLATE utf8_unicode_ci NOT NULL,
  `nombre` text COLLATE utf8_unicode_ci NOT NULL,
  `apellido` text COLLATE utf8_unicode_ci NOT NULL,
  `clave` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `cedula`, `nombre`, `apellido`, `clave`) VALUES
(1, '14449706', 'Alejandro', 'Azuaje', 'recall');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
