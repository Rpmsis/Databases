-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-07-2024 a las 21:51:59
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `activosbd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `idactividades` int(11) NOT NULL,
  `actividad` varchar(100) NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `kg` float NOT NULL,
  `material` varchar(50) NOT NULL,
  `ubicacion` varchar(100) NOT NULL,
  `timestandar` int(100) NOT NULL,
  `hora` int(20) NOT NULL,
  `minutos` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`idactividades`, `actividad`, `fecha`, `kg`, `material`, `ubicacion`, `timestandar`, `hora`, `minutos`) VALUES
(4, 'FFFF', '2024-07-12', 43545, 'TEJOS 316', 'MONDELEZ', 150, 2, 30),
(5, 'gggg', '2024-07-12', 3232, 'TEJOS 316', 'MONDELEZ', 340, 5, 40),
(6, 'ddfff', '2024-07-12', 444, 'TEJOS 316', 'MONDELEZ', 345, 5, 45),
(7, 'fff', '2024-07-12', 3334340000, 'TEJOS 316', 'MONDELEZ', 405, 6, 45),
(8, 'dfvdfvdf', '2024-07-12', 23322, 'ALMACÉN 1', 'FISHER', 122, 2, 2),
(9, 'ggggg', '2024-07-12', 344343, 'TEJOS 316', 'MONDELEZ', 366, 7, 7),
(10, 'Probando solo minutos en una actividad', '2024-07-15', 2024, '2024', '1', 50, 0, 50),
(11, 'Minutos', '2024-07-15', 1, 'ALMACÉN 1', 'MONDELEZ', 45, 0, 45);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activosfijos`
--

CREATE TABLE `activosfijos` (
  `idActfijos` int(11) NOT NULL,
  `folioActivo` varchar(100) NOT NULL,
  `Fcreacion` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `activosfijos`
--

INSERT INTO `activosfijos` (`idActfijos`, `folioActivo`, `Fcreacion`) VALUES
(145, '11072401', '2024-07-11'),
(146, '11072402', '2024-07-11'),
(147, '11072403', '2024-07-11'),
(148, '11072404', '2024-07-11'),
(149, '11072405', '2024-07-11'),
(150, '11072406', '2024-07-11'),
(151, '11072407', '2024-07-11'),
(152, '11072408', '2024-07-11'),
(153, '11072409', '2024-07-11'),
(154, '11072410', '2024-07-11'),
(155, '11072411', '2024-07-11'),
(156, '11072412', '2024-07-11'),
(157, '11072413', '2024-07-11'),
(158, '11072414', '2024-07-11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consumibles`
--

CREATE TABLE `consumibles` (
  `idconsumible` int(11) NOT NULL,
  `folioActivo` varchar(100) NOT NULL,
  `fecha` varchar(100) NOT NULL,
  `unidadmedida` varchar(100) NOT NULL,
  `enteros` int(11) NOT NULL,
  `fracciones` int(11) NOT NULL,
  `canestandar` int(250) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `descripcion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `consumibles`
--

INSERT INTO `consumibles` (`idconsumible`, `folioActivo`, `fecha`, `unidadmedida`, `enteros`, `fracciones`, `canestandar`, `tipo`, `descripcion`) VALUES
(5, 'C15072401', '2024-07-15', 'Piezas', 40, 0, 40, 'Escobas', 'Para pateo'),
(6, 'C15072402', '2024-07-15', 'Piezas', 40, 0, 40, 'Escobas', 'Para pateo'),
(7, 'C15072403', '2024-07-15', 'Piezas', 40, 0, 40, 'Escobas', 'Para pateo'),
(8, 'C15072404', '2024-07-15', 'Piezas', 40, 0, 40, 'Escobas', 'Para pateo'),
(9, 'C15072405', '2024-07-15', 'Piezas', 40, 0, 40, 'Escobas', 'Para pateo'),
(10, 'C15072406', '2024-07-15', 'Piezas', 40, 0, 40, 'Escobas', 'Para pateo'),
(11, 'C15072407', '2024-07-15', 'Piezas', 40, 0, 40, 'Escobas', 'Para pateo'),
(12, 'C15072408', '2024-07-15', 'Piezas', 40, 0, 40, 'Escobas', 'Para pateo'),
(13, 'C15072409', '2024-07-15', 'Piezas', 40, 0, 40, 'Escobas', 'Para pateo'),
(14, 'C15072410', '2024-07-15', 'Piezas', 40, 0, 40, 'Escobas', 'Para pateo'),
(15, 'C15072411', '2024-07-15', 'Piezas', 40, 0, 40, 'Escobas', 'Para pateo'),
(16, 'C15072412', '2024-07-15', 'Litros', 2, 500, 2500, 'Jabon liquido', 'Para manos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forms`
--

CREATE TABLE `forms` (
  `idForms` int(11) NOT NULL,
  `responsable` varchar(100) NOT NULL,
  `preguntas` varchar(100) NOT NULL,
  `periodo` varchar(50) NOT NULL,
  `folioActivo` varchar(100) NOT NULL,
  `Fcreacion` varchar(50) NOT NULL,
  `fechaInicio` varchar(50) NOT NULL,
  `inconformidad` varchar(100) NOT NULL,
  `estatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `forms`
--

INSERT INTO `forms` (`idForms`, `responsable`, `preguntas`, `periodo`, `folioActivo`, `Fcreacion`, `fechaInicio`, `inconformidad`, `estatus`) VALUES
(2, 'Logistica', '¿Cuentas con combustible de un camión?', 'Diario', '', '', 'undefined', '', 'Activo'),
(3, 'Logistica', '¿Cuentas con permiso para conducir?', '(Fuera de Servicio) MONTACARGAS VERDE TAYLOR 26 TO', '', '', '12/06/24', '', 'Activo'),
(4, 'Mantenimiento', '¿Tienes seguro de vida?', '(Fuera de Servicio) MONTACARGAS VERDE TAYLOR 26 TO', '', '', '12/06/24', '', 'Activo'),
(5, 'Mantenimiento', '¿Tienes chaleco?', 'Diario', '', '', '12/06/24', '', 'Activo'),
(6, 'ALMA LUCERO ZEPEDA  ALONSO', '¿Tienes ?', 'Semanal', '12/06/24', '', 'Inactivo', 'function(error,respuesta){\n        \n        if(error){\n            console.log(error)\n            re', 'Inactivo'),
(7, 'ALMA LUCERO ZEPEDA  ALONSO', '¿Tienes botas?', 'Semanal', '(Fuera de Servicio) MONTACARGAS VERDE TAYLOR 26 TON PUE (MC-04) @ RPM PATIO PUE.', '', '12/06/24', 'Mantenimiento industrial', 'Activo'),
(8, 'ALMA LUCERO ZEPEDA  ALONSO', '¿Qué hora son?', 'Semanal', '(Fuera de Servicio) MONTACARGAS VERDE TAYLOR 26 TON PUE (MC-04) @ RPM PATIO PUE.', '', '12/06/24', 'Mantenimiento industrial', 'Inactivo'),
(9, 'ALMA LUCERO ZEPEDA  ALONSO', 'sdfgh', 'Semanal', '(Fuera de Servicio) MONTACARGAS VERDE TAYLOR 26 TON PUE (MC-04) @ RPM PATIO PUE.', '', '12/06/24', 'Sistemas de gestión de calidad', 'Activo'),
(10, 'ALMA LUCERO ZEPEDA  ALONSO', 'sdfgh', 'Semanal', '(Fuera de Servicio) MONTACARGAS VERDE TAYLOR 26 TON PUE (MC-04) @ RPM PATIO PUE.', '', '15/06/24', 'Mantenimiento industrial', 'Activo'),
(11, 'LUIS REY HERNANDEZ ROMERO', 'Holi :D', 'Diario', '( Fuera de servicio) MONTACARGAS HELI PUE (MC-03) UBICADO @ RPM PATIO PUE.', '', '17/06/24', 'Tecnologías de la información', 'Activo'),
(12, '', 'Holi x2', 'Semanal', '(Fuera de Servicio) MONTACARGAS VERDE TAYLOR 26 TON PUE (MC-04) @ RPM PATIO PUE.', '', '17/06/27', 'Tecnologías de la información', 'Activo'),
(13, '', 'HOli x3', 'Semanal', '(Fuera de Servicio) MONTACARGAS VERDE TAYLOR 26 TON PUE (MC-04) @ RPM PATIO PUE.', '', '6/12/2024', 'Mantenimiento industrial', 'Activo'),
(14, ' ', '¿Cuentas con combustible?', 'Diario', 'undefined', '', '12-06-24', 'undefined', ' :D'),
(15, 'BRISA AUZA ROSAS', '¿Cuentas con combustible de un camión?', 'Diario', 'Minicargador', '', '25-06-24', 'Logistica,Seguridad', 'Activo'),
(16, 'BRISA AUZA ROSAS', '¿aaaaaaaa?', 'Diario', '25062401', '', '25-06-24', 'Logistica,Seguridad', 'Activo'),
(17, 'BRISA AUZA ROSAS', '¿bbbbbbb?', 'Diario', '26062401,26062402,26062403', '2024-06-26 ', '2024-06-27', 'Logistica,Seguridad', 'Activo'),
(18, 'BRISA AUZA ROSAS', '¿ccccc?', 'Diario', '26062401,26062402,26062405', '2024-06-26 ', '2024-07-01', 'Logistica,Seguridad', 'Activo'),
(19, 'BRISA AUZA ROSAS', '¿ddddddd?', 'Quincenal', '26062401,26062402,26062413', '2024-06-26 ', '2024-06-13', 'Logistica,Seguridad', 'Activo'),
(20, 'BRISA AUZA ROSAS', '¿eeeeee?', 'Mensual', '26062402,26062411', '', '2024-06-26', 'Logistica,Seguridad', 'Activo'),
(21, 'BRISA AUZA ROSAS', '¿gggg?', 'Mensual', '26062409', '', '2024-06-26', 'Logistica,Seguridad', 'Activo'),
(22, 'BRISA AUZA ROSAS', '¿hhhh?', 'Quincenal', '26062409,26062401', '2024-06-26 ', '2024-07-01', 'Logistica,Seguridad', 'Activo'),
(23, 'BRISA AUZA ROSAS', '¿iiiii?', 'Mensual', '26062409,26062401', '2024-06-26', '2024-07-01', 'Logistica,Seguridad', 'Activo'),
(24, 'BRISA AUZA ROSAS', '¿iiiii?', 'Mensual', '26062409,26062401', '2024-06-26', ' 2024-07-01', 'Logistica,Seguridad', 'Inactivo'),
(25, 'BRISA AUZA ROSAS', '¿jjjjjjj?', 'Semanal', '26062409,26062401', '2024-06-26 ', '2024-06-28', 'Logistica,Seguridad', 'Activo'),
(26, 'BRISA AUZA ROSAS', '¿kkkkk?', 'Anual', '26062409,26062401', '2024-06-26', '2024-07-01', 'Logistica,Seguridad', 'Activo'),
(27, 'BRISA AUZA ROSAS', '¿llll?', 'Anual', '26062409,26062401', '2024-06-26', '2024-07-01', 'Logistica,Seguridad', 'Inactivo'),
(28, 'BRISA AUZA ROSAS', '¿mmmmm?', 'Diario', '26062409,26062401', '2024-06-26', '2024-07-01', 'Logistica,Seguridad', 'Inactivo'),
(29, 'BRISA AUZA ROSAS', '¿nnnnnn?', 'Semanal', '26062409,26062401', '2024-06-28', '2024-06-28', 'Logistica,Seguridad', 'Activo'),
(30, 'BRISA AUZA ROSAS', '¿vvvvvvvv?', 'Semanal', '26062409,26062401', '2024-06-28', '2024-01-02', 'Logistica,Seguridad', 'Activo'),
(31, 'BRISA AUZA ROSAS', '¿ddddddd?', 'Semanal', '26062409,26062401', '2024-06-28', '2024-01-02', 'Logistica,Seguridad', 'Activo'),
(32, 'BRISA AUZA ROSAS', '¿eeeeeee?', 'Semanal', '26062409,26062401', '2024-06-28', '2024-01-02', 'Logistica,Seguridad', 'Activo'),
(33, 'BRISA AUZA ROSAS', '¿erererererer?', 'Mensual', '26062409,26062401', '2024-06-29', '2024-01-02', 'Logistica,Seguridad', 'Activo'),
(34, 'BRISA AUZA ROSAS', '¿hhhbbhhbbhh?', 'Mensual', '26062409,26062401', '2024-06-29', '2024-01-02', 'Logistica,Seguridad', 'Activo'),
(35, 'BRISA AUZA ROSAS', '¿bbbbbbbbbbbbbbbb?', 'Mensual', '26062409,26062401', '2024-06-29', '2024-01-02', 'Logistica,Seguridad', 'Activo'),
(36, 'BRISA AUZA ROSAS', '¿hhhhhhhhhhhhhhhhhhhh?', 'Mensual', '26062409,26062401', '2024-06-29', '2024-01-02', 'Logistica,Seguridad', 'Activo'),
(37, 'LUIS REY HERNANDEZ ROMERO', '¿eeeeeee?', 'Semanal', 'Semanal', '2024-07-02', '2024-07-02', 'Logistica,Seguridad', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos`
--

CREATE TABLE `insumos` (
  `IdInsumos` int(11) NOT NULL,
  `folioInsumos` varchar(100) NOT NULL,
  `F_creacion` varchar(10) NOT NULL,
  `tipoAct` varchar(50) NOT NULL,
  `F_alta` varchar(10) NOT NULL,
  `descrip` varchar(250) NOT NULL,
  `proveedor` varchar(50) NOT NULL,
  `folioOC` varchar(50) NOT NULL,
  `monto` decimal(65,0) NOT NULL,
  `F_adqui` varchar(10) NOT NULL,
  `Numserie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `insumos`
--

INSERT INTO `insumos` (`IdInsumos`, `folioInsumos`, `F_creacion`, `tipoAct`, `F_alta`, `descrip`, `proveedor`, `folioOC`, `monto`, `F_adqui`, `Numserie`) VALUES
(57, '11072404', '2024-07-11', 'VEHÍCULOS', '2024-07-11', 'Holaaaa', 'yyyyyy', '44444444', '44444', '2024-07-11', 'g4554'),
(58, '11072405', '2024-07-11', 'VEHÍCULOS', '2024-07-11', 'vehiculo 11072405', 'rrrrrrrrrrrrrrr', '3333333333', '33333333', '2024-07-11', '333333333333'),
(59, '11072406', '2024-07-11', 'MONTACARGAS', '2024-07-11', '11072406MONTACARGAS', 'r4rvfrv', '4333333', '333333', '2024-07-11', '434232'),
(60, '11072407', '2024-07-11', 'MAQUINARIA', '2024-07-11', 'fdddddddddddddd', 'ggfffffffffffff', 'e4444444444444', '343', '2024-07-11', '333232332'),
(61, '11072408', '2024-07-11', 'HERRAMIENTA', '2024-07-11', 'fdddddddddd', 'ggggggg', '3344', '33434', '2024-07-11', '34343'),
(62, '11072409', '2024-07-11', 'VEHÍCULOS', '2024-07-11', 'fddddddddd', 'ggggggggg', '44555', '445', '2024-07-11', 'e434443'),
(63, '11072411', '2024-07-11', 'VEHÍCULOS', '2024-07-11', 'asd', 's.a', '5010as', '5000', '2024-07-11', '13243da');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `idinventario` int(11) NOT NULL,
  `folioActivo` varchar(100) NOT NULL,
  `unidadmedida` varchar(100) NOT NULL,
  `enteros` int(11) NOT NULL,
  `fracciones` int(11) NOT NULL,
  `canestandar` int(11) NOT NULL,
  `responsable` varchar(100) NOT NULL,
  `tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimiento`
--

CREATE TABLE `mantenimiento` (
  `idMantenimiento` int(11) NOT NULL,
  `folioMant` varchar(100) NOT NULL,
  `falta` varchar(35) NOT NULL,
  `fabricacion` varchar(35) NOT NULL,
  `tipoAct` varchar(100) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `capacidad` varchar(100) NOT NULL,
  `clasificacion` varchar(100) NOT NULL,
  `nmotor` varchar(100) NOT NULL,
  `tipocontmate` varchar(50) NOT NULL,
  `especificacion` varchar(50) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `descripadi` varchar(100) NOT NULL,
  `descripgen` varchar(250) NOT NULL,
  `idubicacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mantenimiento`
--

INSERT INTO `mantenimiento` (`idMantenimiento`, `folioMant`, `falta`, `fabricacion`, `tipoAct`, `modelo`, `capacidad`, `clasificacion`, `nmotor`, `tipocontmate`, `especificacion`, `marca`, `descripadi`, `descripgen`, `idubicacion`) VALUES
(76, '11072402', '2024-07-11', 'NA', 'INFRAESTRUCTURA', 'NA', 'NA', 'B', 'NA', 'NA', 'NA', 'NA', 'GGGG', 'HOLAAAA', 'BAÑOS 2'),
(77, '11072403', '2024-07-11', 'NA', 'INFRAESTRUCTURA', 'NA', 'NA', 'B', 'NA', 'NA', 'NA', 'NA', 'hhhhh', 'hhhhh', 'Oficina de TIC'),
(78, '11072404', '2024-07-11', 'NA', 'NA', 'fefdcw34', 'NA', 'B', '24343', 'NA', 'NA', 'NA', 'NA', 'NA', 'BAÑOS 2'),
(79, '11072405', '2024-07-11', 'NA', 'NA', 'dddd', 'NA', 'B', '3333', 'NA', 'NA', 'NA', 'NA', 'NA', 'Baños de CH'),
(80, '11072406', '2024-07-11', 'NA', 'NA', 'gggggg', '873 x 873', 'B', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'Oficina de TIC'),
(81, '11072410', '2024-07-11', '2024-07-17', 'EQUIPOS DE CONTENCIÓN', 'NA', 'gggg', 'B', 'NA', 'ESPECIAL/OTRO', 'OTRO', 'NA', 'NA', 'gggg', 'Oficina de TIC'),
(82, '11072412', '2024-07-11', 'NA', 'INFRAESTRUCTURA', 'NA', 'NA', 'B', 'NA', 'NA', 'NA', 'NA', 'asdsad', 'asd', 'Oficina de TIC'),
(83, '11072413', '2024-07-11', '2024-07-11', 'EQUIPOS PARA MANEJO DE MATERIALES', 'NA', 'asd', 'B', 'NA', 'BASCULANTE/GÓNDOLA', 'DRENAJES', 'NA', 'NA', 'dasd', 'Baños de CH'),
(84, '11072411', '2024-07-11', 'NA', 'VEHÍCULOS', 'asda', 'NA', 'B', 'dasdas', 'NA', 'NA', 'NA', 'NA', 'NA', 'Oficina de TIC'),
(85, '11072407', '2024-07-11', 'NA', 'MAQUINARIA', 'sd', 'fsdfsd', 'B', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'BAÑOS 2'),
(86, '11072414', '2024-07-11', '2024-07-11', 'EQUIPOS DE CONTENCIÓN', 'NA', '50', 'B', 'NA', 'CARRO TRANSPORTADOR', 'TAPAS/CUBIERTAS', 'NA', 'NA', 'qwe', 'Oficina de TIC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `idRespuesta` int(11) NOT NULL,
  `idPregunta` int(50) NOT NULL,
  `folioActivo` varchar(100) NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `resp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `respuesta`
--

INSERT INTO `respuesta` (`idRespuesta`, `idPregunta`, `folioActivo`, `fecha`, `resp`) VALUES
(1, 19, '26062401', '2024-06-14', 'Si'),
(2, 18, '26062401', '2024-06-26', 'Si'),
(3, 17, '26062401', '2024-06-26', 'Si'),
(4, 16, '26062401', '2024-06-26', 'Si'),
(5, 0, '26062401', '2024-06-26', 'Si'),
(6, 18, '26062402', '2024-06-26', 'Si'),
(7, 17, '26062403', '2024-06-26', 'Si'),
(8, 17, '26062401', '2024-06-27', 'Si'),
(11, 25, '26062401', '2024-06-10', 'Si'),
(12, 25, '26062401', '2024-06-17', 'Si'),
(13, 32, '26062401', '2024-06-03', 'Si'),
(14, 32, '26062401', '2024-06-10', 'Si'),
(15, 32, '26062401', '2024-06-21', 'Si'),
(16, 33, '26062401', '2024-03-02', 'Si'),
(17, 34, '26062401', '2024-06-29', 'Si'),
(18, 34, '26062401', '2024-06-29', 'Si'),
(19, 34, '26062401', '2024-06-29', 'Si'),
(20, 33, '26062401', '2024-04-02', 'Si'),
(21, 33, '26062401', '2024-05-01', 'Si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socioscom`
--

CREATE TABLE `socioscom` (
  `idsocio` int(11) NOT NULL,
  `unidadneg` varchar(100) NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `folio` varchar(100) NOT NULL,
  `socio` varchar(100) NOT NULL,
  `gasto` decimal(10,0) NOT NULL,
  `compra` decimal(10,0) NOT NULL,
  `material` varchar(100) NOT NULL,
  `rsocial` varchar(100) NOT NULL,
  `rfc` varchar(30) NOT NULL,
  `tipopers` varchar(100) NOT NULL,
  `regimen` varchar(200) NOT NULL,
  `cfdi` varchar(50) NOT NULL,
  `cortemes` varchar(50) NOT NULL,
  `forpago` varchar(50) NOT NULL,
  `diapago` varchar(50) NOT NULL,
  `colonia` varchar(50) NOT NULL,
  `noext` varchar(50) NOT NULL,
  `noint` varchar(50) NOT NULL,
  `municipio` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `cpostal` int(30) NOT NULL,
  `departm` varchar(100) NOT NULL,
  `nomv` varchar(100) NOT NULL,
  `emailv` varchar(50) NOT NULL,
  `telv` varchar(30) NOT NULL,
  `movilv` varchar(30) NOT NULL,
  `nomcon` varchar(100) NOT NULL,
  `emailcon` varchar(50) NOT NULL,
  `telcon` varchar(30) NOT NULL,
  `movilcon` varchar(30) NOT NULL,
  `beneficiario` varchar(100) NOT NULL,
  `banco` varchar(100) NOT NULL,
  `clabe` varchar(100) NOT NULL,
  `cuenta` varchar(100) NOT NULL,
  `sucursal` varchar(100) NOT NULL,
  `referencia` varchar(100) NOT NULL,
  `credito` varchar(100) NOT NULL,
  `diascred` varchar(100) NOT NULL,
  `autorizacion` varchar(100) NOT NULL,
  `idenoficial` varchar(100) NOT NULL,
  `curp` varchar(100) NOT NULL,
  `arespeciales` varchar(100) NOT NULL,
  `constitutiva` varchar(100) NOT NULL,
  `poderlegal` varchar(100) NOT NULL,
  `identificacion` varchar(100) NOT NULL,
  `cerconst` varchar(100) NOT NULL,
  `cervigext` varchar(100) NOT NULL,
  `tin` varchar(100) NOT NULL,
  `nif` varchar(100) NOT NULL,
  `cif` varchar(100) NOT NULL,
  `domicilio` varchar(100) NOT NULL,
  `fotosemp` varchar(100) NOT NULL,
  `refprocli` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `idubicacion` int(11) NOT NULL,
  `fecha` varchar(30) NOT NULL,
  `descrip` varchar(250) NOT NULL,
  `area` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`idubicacion`, `fecha`, `descrip`, `area`) VALUES
(8, '2024-07-12', 'FISHER', 'FFFFF'),
(9, '2024-07-12', 'MONDELEZ', 'MMMM'),
(10, '2024-07-12', 'TENNECO', 'TTTTT'),
(11, '2024-07-12', 'WALKER CHACHAPA', 'WWWWWW');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad`
--

CREATE TABLE `unidad` (
  `idUnidad` int(11) NOT NULL,
  `folioActivo` varchar(100) NOT NULL,
  `Fcreacion` varchar(50) NOT NULL,
  `Falta` varchar(50) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `unidad`
--

INSERT INTO `unidad` (`idUnidad`, `folioActivo`, `Fcreacion`, `Falta`, `nombre`) VALUES
(1, '26062401', '2024-06-26', '2024-06-26', 'Camion1'),
(2, '26062402', '2024-06-26', '2024-06-26', 'Camion2'),
(3, '26062403', '2024-06-26', '2024-06-26', 'Camion3'),
(4, '26062404', '2024-06-26', '2024-06-26', 'Camion4'),
(5, '26062405', '2024-06-26', '2024-06-26', 'Camion5'),
(6, '26062406', '2024-06-26', '2024-06-26', 'Camion6'),
(7, '26062407', '2024-06-26', '2024-06-26', 'Camion7'),
(8, '26062408', '2024-06-26', '2024-06-26', 'Camion8'),
(9, '26062409', '2024-06-26', '2024-06-26', 'Camion9'),
(10, '26062410', '2024-06-26', '2024-06-26', 'Camion10'),
(11, '26062411', '2024-06-26', '2024-06-26', 'Camion11'),
(12, '26062412', '2024-06-26', '2024-06-26', 'Camion12'),
(13, '26062413', '2024-06-26', '2024-06-26', 'Camion13');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`idactividades`);

--
-- Indices de la tabla `activosfijos`
--
ALTER TABLE `activosfijos`
  ADD PRIMARY KEY (`idActfijos`);

--
-- Indices de la tabla `consumibles`
--
ALTER TABLE `consumibles`
  ADD PRIMARY KEY (`idconsumible`);

--
-- Indices de la tabla `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`idForms`);

--
-- Indices de la tabla `insumos`
--
ALTER TABLE `insumos`
  ADD PRIMARY KEY (`IdInsumos`);

--
-- Indices de la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  ADD PRIMARY KEY (`idMantenimiento`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`idRespuesta`);

--
-- Indices de la tabla `socioscom`
--
ALTER TABLE `socioscom`
  ADD PRIMARY KEY (`idsocio`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`idubicacion`);

--
-- Indices de la tabla `unidad`
--
ALTER TABLE `unidad`
  ADD PRIMARY KEY (`idUnidad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `idactividades` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `activosfijos`
--
ALTER TABLE `activosfijos`
  MODIFY `idActfijos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT de la tabla `consumibles`
--
ALTER TABLE `consumibles`
  MODIFY `idconsumible` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `forms`
--
ALTER TABLE `forms`
  MODIFY `idForms` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `insumos`
--
ALTER TABLE `insumos`
  MODIFY `IdInsumos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  MODIFY `idMantenimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `idRespuesta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `socioscom`
--
ALTER TABLE `socioscom`
  MODIFY `idsocio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  MODIFY `idubicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `unidad`
--
ALTER TABLE `unidad`
  MODIFY `idUnidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
