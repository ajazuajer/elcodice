
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 05-07-2015 a las 22:31:19
-- Versión del servidor: 5.1.69
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
-- Estructura de tabla para la tabla `agenda`
--

CREATE TABLE IF NOT EXISTS `agenda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` text COLLATE utf8_spanish_ci NOT NULL,
  `hora` text COLLATE utf8_spanish_ci NOT NULL,
  `status` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `agenda`
--

INSERT INTO `agenda` (`id`, `codigo`, `tipo`, `fecha`, `hora`, `status`) VALUES
(1, '001-15', 'ORDINARIA', '2015-05-20', '08:00', 'AGENDA'),
(2, '002-15', 'ORDINARIA', '2015-05-19', '08:00', 'ACTA'),
(3, '003-15', 'ORDINARIA', '2015-05-18', '08:00', 'AGENDA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendaasistencia`
--

CREATE TABLE IF NOT EXISTS `agendaasistencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `coord` text COLLATE utf8_spanish_ci NOT NULL,
  `secretaria` text COLLATE utf8_spanish_ci NOT NULL,
  `mecanica` text COLLATE utf8_spanish_ci NOT NULL,
  `electricidad` text COLLATE utf8_spanish_ci NOT NULL,
  `informatica` text COLLATE utf8_spanish_ci NOT NULL,
  `especial` text COLLATE utf8_spanish_ci NOT NULL,
  `practicas` text COLLATE utf8_spanish_ci NOT NULL,
  `serviciocomun` text COLLATE utf8_spanish_ci NOT NULL,
  `secretdocente` text COLLATE utf8_spanish_ci NOT NULL,
  `representanteestu` text COLLATE utf8_spanish_ci NOT NULL,
  `otro` text COLLATE utf8_spanish_ci NOT NULL,
  `coord2` text COLLATE utf8_spanish_ci NOT NULL,
  `secretaria2` text COLLATE utf8_spanish_ci NOT NULL,
  `electricidad2` text COLLATE utf8_spanish_ci NOT NULL,
  `mecanica2` text COLLATE utf8_spanish_ci NOT NULL,
  `informatica2` text COLLATE utf8_spanish_ci NOT NULL,
  `especial2` text COLLATE utf8_spanish_ci NOT NULL,
  `practicas2` text COLLATE utf8_spanish_ci NOT NULL,
  `serviciocomun2` text COLLATE utf8_spanish_ci NOT NULL,
  `secretdocente2` text COLLATE utf8_spanish_ci NOT NULL,
  `representanteestu2` text COLLATE utf8_spanish_ci NOT NULL,
  `otro2` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendacasos`
--

CREATE TABLE IF NOT EXISTS `agendacasos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `numerocaso` int(11) NOT NULL,
  `tipomocion` text COLLATE utf8_spanish_ci NOT NULL,
  `dependencia` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `cedula` text COLLATE utf8_spanish_ci NOT NULL,
  `solicitud` text COLLATE utf8_spanish_ci NOT NULL,
  `asunto` text COLLATE utf8_spanish_ci NOT NULL,
  `respuesta` text COLLATE utf8_spanish_ci NOT NULL,
  `observaciones` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `agendacasos`
--

INSERT INTO `agendacasos` (`id`, `codigo`, `numerocaso`, `tipomocion`, `dependencia`, `cedula`, `solicitud`, `asunto`, `respuesta`, `observaciones`) VALUES
(1, '002-15', 1, 'CASO', 'ALEJANDRO AZUAJE', '1444970', '', 'AS', 'DIFERIDO', ''),
(2, '001-15', 1, 'INFORM COORD', 'A', 'A', '', 'A', 'APROBADO', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anexos`
--

CREATE TABLE IF NOT EXISTS `anexos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `apellido` text COLLATE utf8_spanish_ci NOT NULL,
  `cedula` text COLLATE utf8_spanish_ci NOT NULL,
  `carrera` text COLLATE utf8_spanish_ci NOT NULL,
  `materia` text COLLATE utf8_spanish_ci NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `periodo` text COLLATE utf8_spanish_ci NOT NULL,
  `seccion` text COLLATE utf8_spanish_ci NOT NULL,
  `nota` text COLLATE utf8_spanish_ci NOT NULL,
  `docentenom` text COLLATE utf8_spanish_ci NOT NULL,
  `docenteape` text COLLATE utf8_spanish_ci NOT NULL,
  `docenteced` text COLLATE utf8_spanish_ci NOT NULL,
  `firma` polygon NOT NULL,
  `creacion` text COLLATE utf8_spanish_ci NOT NULL,
  `estatus` text COLLATE utf8_spanish_ci NOT NULL,
  `numanexo` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `anexos`
--

INSERT INTO `anexos` (`id`, `nombre`, `apellido`, `cedula`, `carrera`, `materia`, `codigo`, `periodo`, `seccion`, `nota`, `docentenom`, `docenteape`, `docenteced`, `firma`, `creacion`, `estatus`, `numanexo`) VALUES
(1, 'A', 'A', 'A', 'INFORMATICA', 'ANALISIS Y DISEÑO DE ALGORITMOS', '', '2015-I', 'S001', '22', '12', '12', '12', '', '28-05-2015', 'PENDIENTE', 'AANALISIS Y DISEÑO DE ALGORITMOSS001'),
(2, 'S', 'S', 'S', 'INFORMATICA', 'ANALISIS Y DISEÑO DE ALGORITMOS', '', '2015-I', 'S001', '11', 'A', 'A', 'A', '', '28-05-2015', '', 'AA11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistenciadocente`
--

CREATE TABLE IF NOT EXISTS `asistenciadocente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `periodo` text COLLATE utf8_spanish_ci NOT NULL,
  `dia` text COLLATE utf8_spanish_ci NOT NULL,
  `hora` text COLLATE utf8_spanish_ci NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `apellido` text COLLATE utf8_spanish_ci NOT NULL,
  `materia` text COLLATE utf8_spanish_ci NOT NULL,
  `seccion` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aulas`
--

CREATE TABLE IF NOT EXISTS `aulas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aula` text COLLATE utf8_spanish_ci NOT NULL,
  `ubicacion` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `aulas`
--

INSERT INTO `aulas` (`id`, `aula`, `ubicacion`) VALUES
(3, 'PB01', 'HUMANIDADES Y EDUCACION'),
(4, 'PB02', 'HUMANIDADES Y EDUCACION'),
(5, 'PB03', 'HUMANIDADES Y EDUCACION'),
(6, 'PB04', 'HUMANIDADES Y EDUCACION'),
(7, 'PB05', 'HUMANIDADES Y EDUCACION'),
(8, 'PB06', 'HUMANIDADES Y EDUCACION'),
(9, 'PB07', 'HUMANIDADES Y EDUCACION'),
(10, 'PB08', 'HUMANIDADES Y EDUCACION'),
(11, 'AULA DIDACTICA', 'HUMANIDADES Y EDUCACION'),
(12, 'LAB INF EDUC', 'HUMANIDADES Y EDUCACION'),
(13, 'LAB INF ECON', 'HUMANIDADES Y EDUCACION'),
(14, 'SALA DIBUJO', 'HUMANIDADES Y EDUCACION'),
(15, 'SALA MECANICA', 'HUMANIDADES Y EDUCACION');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargaacademica`
--

CREATE TABLE IF NOT EXISTS `cargaacademica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `periodo` text COLLATE utf8_spanish_ci NOT NULL,
  `dia` text COLLATE utf8_spanish_ci NOT NULL,
  `horae` text COLLATE utf8_spanish_ci NOT NULL,
  `horas` text COLLATE utf8_spanish_ci NOT NULL,
  `turno` text COLLATE utf8_spanish_ci NOT NULL,
  `aula` text COLLATE utf8_spanish_ci NOT NULL,
  `carrera` text COLLATE utf8_spanish_ci NOT NULL,
  `materia` text COLLATE utf8_spanish_ci NOT NULL,
  `sem` int(11) NOT NULL,
  `seccion` text COLLATE utf8_spanish_ci NOT NULL,
  `docente` text COLLATE utf8_spanish_ci NOT NULL,
  `correo` text COLLATE utf8_spanish_ci NOT NULL,
  `contenido` text COLLATE utf8_spanish_ci NOT NULL,
  `firma` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `cargaacademica`
--

INSERT INTO `cargaacademica` (`id`, `periodo`, `dia`, `horae`, `horas`, `turno`, `aula`, `carrera`, `materia`, `sem`, `seccion`, `docente`, `correo`, `contenido`, `firma`) VALUES
(1, '2015-I', '2MARTES', '01:00pm', '04:20pm', '2', 'LAB INF ECON', 'INFORMATICA', 'ANALISIS Y DISEÑO DE ALGORITMOS', 4, 'S002', 'ALEJANDRO AZUAJE', 'tundercrash@hotmail.com', '', ''),
(2, '2015-I', '1LUNES', '06:50pm', '08:30pm', '1', 'PB02', 'INFORMATICA', 'ELECTIVA I: RECURSOS HUMANOS', 1, 'S001', 'SIN DOCENTE ASIGNADO', 'ajazuajer@gmail.com', '', ''),
(5, '2015-I', '1LUNES', '08:00am', '01:50pm', '2', 'LAB INF ECON', 'INFORMATICA', 'ANALISIS Y DISEÑO DE ALGORITMOS', 2, 'S001', 'BRIGIDA DI CARLO', 'brigidadicarlo@hotmail.com', '', ''),
(6, '2015-I', '2MARTES', '06:00pm', '06:50pm', '1', 'LAB INF ECON', 'INFORMATICA', 'ANALISIS Y DISEÑO DE ALGORITMOS', 2, 'S001', 'CARLOS COLINA', 'carlosc.555@hotmail.com', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE IF NOT EXISTS `carreras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `programa` text COLLATE utf8_spanish_ci NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  UNIQUE KEY `id_2` (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `descripcion`, `programa`, `codigo`) VALUES
(10, 'INFORMATICA', 'HUMANIDADES Y EDUCACION', '2654L0'),
(11, 'ESPECIAL', 'HUMANIDADES Y EDUCACION', '2654B0'),
(12, 'INDUSTRIAL:MECANICA', 'HUMANIDADES Y EDUCACION', '2654A1'),
(13, 'INDUSTRIAL:ELECTRICIDAD', 'HUMANIDADES Y EDUCACION', '2654A2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE IF NOT EXISTS `docentes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `apellido` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `correo` text COLLATE utf8_spanish_ci NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `dedicacion` text COLLATE utf8_spanish_ci NOT NULL,
  `clave` text COLLATE utf8_spanish_ci NOT NULL,
  `pregunta` text COLLATE utf8_spanish_ci NOT NULL,
  `respuesta` text COLLATE utf8_spanish_ci NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=17336876 ;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id`, `cedula`, `nombre`, `apellido`, `telefono`, `correo`, `categoria`, `dedicacion`, `clave`, `pregunta`, `respuesta`) VALUES
(17336813, 2868293, 'RAFAEL', 'RAMIREZ', '0412-1236819', 'rrramirezcas@Gmail.com', '', '', '', '', ''),
(17336814, 3117988, 'REMIGIO', 'MONTERO', '0416-7624776', 'monteros15@cantv.net', '', '', '', '', ''),
(17336815, 3515200, 'GLADYS', 'MOLERO DE VIRLA', '0414-6449951', 'glamolvir@yahoo.es', '', '', '', '', ''),
(17336816, 4016087, 'MIREYA', 'MEDINA', '0414-6562570', 'Mireyamedina]@hotmail.com', '', '', '', '', ''),
(17336817, 4519905, 'JORGE', 'CASTELLANOS', '0416-6640017', 'jorgecastellanos03@hotmail.com', '', '', '', '', ''),
(17336818, 4705176, 'MARY', 'ORDOÃ‘EZ', '0414-6565564', 'mar.viol@hotmail.com', '', '', '', '', ''),
(17336819, 4708806, 'ANGEL', 'BLANCO', '0416-4612413', 'arblancop@gmail.com', '', '', '', '', ''),
(17336820, 4709454, 'XIOMARA', 'RAMONES', '0424-6224687', 'Xiomara_ramonez@hotmail.com', '', '', '', '', ''),
(17336821, 5045452, 'FRANCIS', 'PADRON', '0414-3618958', 'francismamalp@gmail.com', '', '', '', '', ''),
(17336822, 5102131, 'XIOMARA', 'FAJARDO', '0416-5604654', 'xiomara_fajardo@hotmail.com', '', '', '', '', ''),
(17336823, 5164793, 'AGUSTIN', 'DEL MORAL', '0426-6004127', 'Delmoral33@gmail.com', '', '', '', '', ''),
(17336824, 5178351, 'JOEL', 'BETANCOURT', '0414-9619197', 'joeljbg@gmail.com', '', '', '', '', ''),
(17336825, 5180303, 'ROMULO', 'RONDON', '0416-2683140', 'romulorondon@hotmail.com', '', '', '', '', ''),
(17336826, 5287969, 'JOSE', 'BURGOS', '0416-8615335', 'burgostovar@hotmail.com', '', '', '', '', ''),
(17336827, 5288867, 'CARLOS', 'COLINA', '0265-6311240', 'carlosc.555@hotmail.com', '', '', '', '', ''),
(17336828, 5715044, 'THANIA', 'RINCON', '4246229263', 'thaniarincon@hotmail.com', '', '', '', '', ''),
(17336829, 5715375, 'MARISOL', 'CUICAS', '4149632020', 'maritrinicuicas@gmail.com', '', '', '', '', ''),
(17336830, 5813543, 'HEBERTO', 'VARGAS', '2644220988', 'Hebertovargas@hotmail.com', '', '', '', '', ''),
(17336831, 7610636, 'ISBEIDA', 'SANCHEZ', '0424-6505462', 'isbeida@hotmail.com', '', '', '', '', ''),
(17336832, 7673637, 'ERIKA', 'MAURER', '0426-3054971', 'emaurer2006@gmail.com', '', '', '', '', ''),
(17336833, 7690100, 'BLADIMIR', 'TORRES', '0416-7621703', 'omnibladi@hotmail.com', '', '', '', '', ''),
(17336834, 7786065, 'ANA TERESA', 'PRIETO', '', 'ANATERE63_3@HOTMAIL.COM', '', '', '', '', ''),
(17336835, 7836222, 'MAIROBIS', 'GUERRA', '0414-6748914', 'mairobis-guerra-@hotmail.com', '', '', '', '', ''),
(17336836, 7842103, 'LEIRA', 'GIL', '4162642280', 'leiragil@hotmail.com', '', '', '', '', ''),
(17336837, 7865141, 'ANTONIO', 'PEROZO', '0424-6001209', 'antonioperozo@hotmail.com', '', '', '', '', ''),
(17336838, 7866367, 'LUZMILA', 'URRIBARRI', '0426-6245922', 'mila_663@hotmail.com', '', '', '', '', ''),
(17336839, 7866855, 'RUSBELIS', 'CAÃ‘IZALEZ', '0414-1673508', 'rusbe@hotmail.com', '', '', '', '', ''),
(17336840, 7868068, 'SUNNY', 'PEROZO', '0416-664883', 'sunperozo@gmail.com', '', '', '', '', ''),
(17336841, 7874564, 'YLSE', 'DURAN', '', 'ylsemoreladg@hotmail.com', '', '', '', '', ''),
(17336842, 7901074, 'IRALI', 'ARAQUE', '0414-6668534', 'iraliaraque@hotmail.com', '', '', '', '', ''),
(17336843, 7967094, 'HENRY', 'MOLLEDA', '0416-8692437', 'molledah@gmail.com', '', '', '', '', ''),
(17336844, 7968907, 'OMAR', 'GONZALEZ', '0414-6557639', ' OMARGONZALEZ29@HOTMAIL.COM', '', '', '', '', ''),
(17336845, 8505356, 'NORBERTO', 'ANDRADE', '4122323984', 'Norbertojo.ango@gmail.com', '', '', '', '', ''),
(17336846, 8509928, 'JOANNA', 'PIRELA', '0424-2647469', 'joannapirela@hotmail.com', '', '', '', '', ''),
(17336847, 8515722, 'HECTOR', 'MAZURKIEWICKZ', '', 'hjmazurkiewicz@yahoo.com', '', '', '', '', ''),
(17336848, 9215928, 'GERARDO', 'LEAL', '0424-6764720', 'gerardoalbertoleal@hotmail.com', '', '', '', '', ''),
(17336849, 9710769, 'SONIA', 'FERRER', '0416-3674806', 'soniaferrerP@hotmail.com', '', '', '', '', ''),
(17336850, 9799762, 'JOSEABEL', 'CEGARRA', '0412-6753119', 'joseabelcegarra@hotmail.com', '', '', '', '', ''),
(17336851, 9923555, 'CALIA', 'CASTRO', '0426-5605216', 'daliamilagrosdr@hotmail.com', '', '', '', '', ''),
(17336852, 10080825, 'JELLICY', 'NARVAEZ', '0416-6622129', 'jellicynarvaez@gmail.com', '', '', '', '', ''),
(17336853, 10082854, 'YASMIRA', 'ROVERO', '0416-6650966', 'yasmirarovero@hotmail.com', '', '', '', '', ''),
(17336854, 10083375, 'YOSELIN', 'BERMUDEZ', '0412-6455288', 'yoseberle@yahoo.com', '', '', '', '', ''),
(17336855, 10087109, 'LILIBETH', 'ARRIETA', '4164648818', 'lilibetharrietaduran@hotmail.com', '', '', '', '', ''),
(17336856, 10088229, 'JORGE', 'SALAS', '0416-7630105', 'jorgelusc@hotmail.com', '', '', '', '', ''),
(17336857, 10088938, 'NELSON', 'REYES', '0264-2417983', 'Nelson_reyes32@hotmail.com', '', '', '', '', ''),
(17336858, 10172681, 'BRIGIDA', 'DI CARLO', '0264- 2999297       ', 'brigidadicarlo@hotmail.com', '', '', '', '', ''),
(17336859, 10414930, 'MARIANA', 'FERNANDEZ', '0414-9665493', 'mfernandezreina@hotmail.com', '', '', '', '', ''),
(17336860, 10425575, 'CESAR', 'PEREZ', '0416-4686444', 'cesarperezjimenez@yahoo.es', '', '', '', '', ''),
(17336861, 10595678, 'HENDRIK', 'RIVERA', '0414-6069552', 'hendrickrivera@hotmail.com', '', '', '', '', ''),
(17336862, 10600635, 'YURIEV', 'PEREZ', '0414-6378913', 'yurievperez@gmail.com', '', '', '', '', ''),
(17336863, 10709615, 'CLAUDIA', 'CORTEZ', '0412-6856077', 'claudipatricia21@yahoo.es', '', '', '', '', ''),
(17336864, 11111111, 'JHOAN', 'ANTUNEZ', '0412-0784611', 'antunez.j@gmail.com', '', '', '', '', ''),
(17336865, 11450075, 'ELSA', 'SANCHEZ', '0416-2615950', 'renuevoelsa@yahoo.com', '', '', '', '', ''),
(17336866, 11451135, 'LUISIM', 'GARCIA', '0414-6559685', 'luisimgarcia@hotmail.com', '', '', '', '', ''),
(17336867, 11607049, 'JHOAN', 'ORTIGOZA', '4164644210', 'johan.ortigoza@gmail.com', '', '', '', '', ''),
(17336868, 12444116, 'ANY', 'RODRIGUEZ', '0416-6708570', 'any.amrbI1402@gmail.com', '', '', '', '', ''),
(17336869, 13024360, 'LUISA', 'SERRA', '0424-8117213', 'serra_sl@yahoo.com', '', '', '', '', ''),
(17336870, 13024609, 'NELISA', 'TALES', '0412-6627528', 'nelisatales@gmail.com', '', '', '', '', ''),
(17336871, 13024647, 'YUSMIN', 'LEAL', '0424-6633844', 'yusminlealt@hotmail.com', '', '', '', '', ''),
(17336872, 13024925, 'NAIROBY', 'NAMIAS', '0412-0784607 ', 'nairobynamias@gmail.com', '', '', '', '', ''),
(17336873, 13561453, 'DUBISAY', 'MORALES', '0424-6232376', 'dubisay@gmail.com', '', '', '', '', ''),
(17336874, 14449706, 'ALEJANDRO', 'AZUAJE', '0426-7237081', 'tundercrash@hotmail.com', '', '', '', '', ''),
(17336875, 17336623, 'ORIANA', 'RINCON', '0416-2213500', 'Oriana623@gmail.com', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enmiendas`
--

CREATE TABLE IF NOT EXISTS `enmiendas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docente1` text COLLATE utf8_spanish_ci NOT NULL,
  `docente2` text COLLATE utf8_spanish_ci NOT NULL,
  `docente3` text COLLATE utf8_spanish_ci NOT NULL,
  `estudiante1` text COLLATE utf8_spanish_ci NOT NULL,
  `estudiante2` text COLLATE utf8_spanish_ci NOT NULL,
  `estudiante3` text COLLATE utf8_spanish_ci NOT NULL,
  `estudiante4` text COLLATE utf8_spanish_ci NOT NULL,
  `materia` text COLLATE utf8_spanish_ci NOT NULL,
  `periodo` text COLLATE utf8_spanish_ci NOT NULL,
  `seccion` text COLLATE utf8_spanish_ci NOT NULL,
  `planilla` text COLLATE utf8_spanish_ci NOT NULL,
  `linea` int(11) NOT NULL,
  `nota1` int(11) NOT NULL,
  `nota2` int(11) NOT NULL,
  `numenmienda` text COLLATE utf8_spanish_ci NOT NULL,
  `creacion` text COLLATE utf8_spanish_ci NOT NULL,
  `estatus` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=165 ;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `nombre`, `apellido`, `cedula`, `correo`, `telefono`, `nucleo`, `seccion`, `carrera`, `materia`, `periodo`, `nota1`, `nota2`, `nota3`, `nota4`, `nota5`, `nota6`, `nota7`, `nota8`, `nota9`, `notafinal`) VALUES
(89, 'MARIA', 'RODRIGUEZ', '21188567', 'mariaelisar7@gmail.com', '04261655307', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(88, 'PEDRO', 'SCANDELA', '20725701', 'pedroscandela@hotmail.com', '0426-6682124', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(87, 'YOEGLIMAR', 'PEROZO', '25192006', 'yoeglimarperozo@gmail.com', '04168601692', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(159, 'BRANDOR', 'MARQUEZ', '24266634', 'Brandormarquez@gmail.com', '04120702716', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82, 'YOHANNY', 'GONZALEZ', '24606622', 'yohannycarolina15@gmail.com', '04167621631', 'Cabimas', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(85, 'CARLOS', 'GONZALEZ', '26524398', 'carlos_2_5_95@hotmail.com', '04146285850', 'Cabimas', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(84, 'CARLOS', 'GONZALEZ', '26524398', 'carlos_2_5_95@hotmail.com', '04146285850', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(83, 'ENMANUEL', 'CARRILLO', '20059597', 'enmanuelcarrillo@gmail.com', '04146770575', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(160, 'ANTONIO', 'ALVAREZ', '23554678', 'antonioalvarez713@gmail', '04246061367', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(80, 'WOLFAN', 'PEÑA', '20743816', 'wolfanpe@gmail.com', '04164666225', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
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
(90, 'MORELIS', 'DIAZ', '23467512', 'morelis_12@hotmail.com', '04146756483', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(91, 'MARY ', 'SIERRA', '23589698', 'marycarmensierra11@gmail.com', '04246872100', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(92, 'YOLIMAR', 'MORALES', '24606742', 'yolimar1904@gmail.com', '04246878548', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(93, 'DAVID', 'LOPEZ', '20858744', 'daavid99@gmail.com', '+584121239485', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(94, 'DAVID', 'LOPEZ', '20858744', 'daavid99@gmail.com', '+584121239485', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(95, 'IVANESA ', 'RODRIGUEZ ', '23881192', 'ivanesandreina@gmail.com', '04246878226', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(96, 'MARIA', 'CALDERA', '23881493', 'mariacaldera28@gmail.com', '04163512282', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98, 'JOSUE', 'VARGAS', '22238044', 'vargaschirinojosue@gmail.com', '04146693784', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(99, 'JOSUE', 'VARGAS', '22238044', 'vargaschirinojosue@gmail.com', '04146693784', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(100, 'RITMARI ', 'SOLER', '21044476', 'RITMARI.SOLER@GMAIL.COM', '0426669853', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(164, 'JHON ', 'GOMEZ', '23882905', 'jagb0694@gmail.com', '04146690243', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(163, 'ANGELICA', 'CASSANO', '20743782', 'angelicassano@gmail.com', '04267007787', 'COL', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(162, 'WINGRICEL', 'LOYO', '20257683', 'lwingricel@gmail.com', '04161746597', 'COL', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(106, 'ZUHENNY', 'NERY', '24369319', 'zuhennyn@gmail.com', '04146823757', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(107, 'JORWIS', 'HERNANDEZ', '18371481', 'jorwis212@gmail.com', '04140646891', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(108, 'YAMILETH', 'LUGO', '21382710', 'yamilethlugo1@hotmail.com', '04248604829', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(109, 'ANNYULIETH', 'BORJAS', '20743309', 'borjas_92@hotmail.com', '04146538393', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(111, 'LEONEL ', 'PALMAR', '25958473', 'leopalmr@gmail.com', '04146834267', 'Cabimas', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(112, 'KAREN', 'GONZALEZ', '20203843', 'gkarenalexandra@gmail.com', '04264872522', 'Cabimas', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(113, 'KAREN', 'GONZALEZ', '20203843', 'gkarenalexandra@gmail.com', '04264872522', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(114, 'JORGE', 'GUARICUCO', '23765746', 'JorgeLuisGuaricuco@gmail.com', '04121020280', 'Cabimas', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(115, 'ELIANNY', 'PEROZO', '21187642', 'elianny_11_5@hotmail.com', '04121687388', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(116, 'DARIO', 'GOMEZ', '23.467.052', 'dariodanielgomez@hotmail.com', '04166687994', 'Cabimas', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(118, 'HUGO', 'MAVARES', '21.043.894', 'hugoenriquemavares@hotmail.com', '04263658429', 'Cabimas', 'S002', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(122, 'ELIZETH', 'TORRES', '21644169', 'elizethtorrescolman@gmail.com', '04268233533', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(124, 'JHONNY', 'AGUILAR', '25192149', 'aguilarjhonny10@gmail.com', '04121205028', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(125, 'ANGELI', 'RINCON', '20743492', 'RINCONAAB@HOTMAIL.COM', '04145071276', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(126, 'EDWIN', 'MARIN', '24251681', 'marinedwin98@gmail.com', '04246195610', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(127, 'ROSANGELA', 'MALDONADO', '24486432', 'rosangelamaldonado28@gmail.com', '04261010060', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(128, 'YOSELYN', 'ROMERO', '21044163', 'yosekynr92@gmaik.com', '04126515575', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(129, 'GERVI', 'SANCHEZ', '22120184', 'gervisanchez.gs@gmail.com', '04160860289', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(132, 'YURIANGEL', 'ROJAS', '25555050', 'yuriangelrojas@gmail.com', '04246036232', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(133, 'WALDNER', 'SENCIAL', '23882201', 'waldnersencial@gmail.com', '04246565984', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(134, 'JOSE', 'MACHADO', '25666711', 'humberto_machado100@hotmail.com', '02643711558', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(135, 'JESSIKA', 'GONZALEZ', '22481173', 'jessikagonzalez18@gmail.com', '04160199473', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(137, 'ALBERT', 'NAVA', '24369686', 'albertjosenava@gmail.com', '02643711472', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(139, 'JESSIMAR', 'MELENDEZ', '23859803', 'JESSIMAR.MELENDEZD@GMAIL.COM', '04146530230', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(140, 'HENRY', 'MATOS', '23514139', 'henryjosematosavila@gmail.com', '04268602011', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(141, 'LIBNY', 'LEON PARRA ', '19311272', 'libnyleon89@gmail.com', '', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(142, 'NEIDYS', 'GONZALEZ', '20456359', 'neidys_71292@hotmail.com', '04121055760', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(144, 'ADRIANA', 'CARRIZO', '23463833', 'adriana_lucia_c@hotmail.com', '04146160966', 'Cabimas', 'S002', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(145, 'RICHARD', 'PIRELA', '23467524', 'richarddanielpirela@gmail.com', '04268145803', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(146, 'JOSEANTONIO', 'CHIRINOS', '20084280', 'joseantoniochirino_200@hotmail.com', '04246612869', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(147, 'CARLOS', 'PRIETO', '21210513', 'the_prieto214@hotmail.com', '04246862042', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(148, 'DILIANY', 'INFANTE', '20725045', 'dilianyraquel@gmail.com', '04263615393', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(149, 'DILIANY', 'INFANTE', '20725045', 'dilianyraquel@gmail.com', '04263615393', 'Cabimas', 'S002', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(150, 'GERALDINE', 'MONTILLA', '20455654', 'geraldinmontilla@hotmail.com', '04246299523', 'Cabimas', 'S002', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(151, 'FRANCESCO', 'DI BELLA', '23463549', 'frxn777@gmail.com', '04268607387', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(152, 'ERNESTO', 'LARGO', '21229661', 'aemm_101@hotmail.com', '04263687963', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(153, 'YOHANA', 'GONZALEZ', '20623649', 'yohanag1992@gmail', '04121256167', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(154, 'HEBERT', 'MOLINA', '18064138', 'hebertjose99@gmail.com', '', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(157, 'NATHALIA ', 'ALVIAREZ', '19676142', 'alviarez.d.n@gmail.com', '04247174448', 'Cabimas', 'S001', 'Informatica', 'AyD de Algoritmos', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(158, 'DIMARYS ', 'MEDINA', '21429470', '', '', 'Cabimas', 'S001', 'Informatica', 'Programacion II', '2015-I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
