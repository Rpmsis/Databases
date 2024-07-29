-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-07-2024 a las 16:33:33
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
  `familia` varchar(50) NOT NULL,
  `producto` varchar(50) NOT NULL,
  `ubicacion` varchar(100) NOT NULL,
  `timestandar` int(100) NOT NULL,
  `hora` int(20) NOT NULL,
  `minutos` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`idactividades`, `actividad`, `fecha`, `kg`, `familia`, `producto`, `ubicacion`, `timestandar`, `hora`, `minutos`) VALUES
(37, 'LIMPIAR CONTENEDOR DEL PLÁSTICO', '2024-07-24', 0, 'NA', 'NA', 'FISHER', 30, 0, 30),
(38, 'LIMPIAR ALUMINIO DE MAGNA', '2024-07-24', 400, 'ALUMINIO', 'ALUMINIO20', 'MONDELEZ', 120, 2, 0);

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
(199, '23072401', '2024-07-23'),
(200, '23072402', '2024-07-23'),
(201, '23072403', '2024-07-23'),
(202, '23072404', '2024-07-23'),
(203, '23072405', '2024-07-23'),
(204, '23072406', '2024-07-23'),
(205, '24072401', '2024-07-24'),
(206, '24072402', '2024-07-24'),
(207, '24072403', '2024-07-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asigactivi`
--

CREATE TABLE `asigactivi` (
  `idasigactivi` int(11) NOT NULL,
  `fechacreacion` varchar(50) NOT NULL,
  `responsable` varchar(50) NOT NULL,
  `fechainicio` varchar(50) NOT NULL,
  `empresa` varchar(100) NOT NULL,
  `idactividad` int(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `motivo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asigactivi`
--

INSERT INTO `asigactivi` (`idasigactivi`, `fechacreacion`, `responsable`, `fechainicio`, `empresa`, `idactividad`, `status`, `motivo`) VALUES
(34, '2024-07-24', 'MARIA EUGENIA RAMIREZ VELEZ', '2024-07-24', 'FISHER', 37, 'INACTIVO', 'ESTA LLOVIENDO'),
(35, '2024-07-24', 'MARIA EUGENIA RAMIREZ VELEZ', '2024-07-29', 'FISHER', 37, '', ''),
(36, '2024-07-24', 'MIGUEL DE LA CRUZ PUEBLITA', '2024-07-24', 'MONDELEZ', 38, '', ''),
(37, '2024-07-24', 'MIGUEL DE LA CRUZ PUEBLITA', '2024-08-07', 'MONDELEZ', 38, '', ''),
(38, '2024-07-24', 'MIGUEL DE LA CRUZ PUEBLITA', '2024-07-27', 'MONDELEZ', 38, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `idcompras` int(11) NOT NULL,
  `folioActivo` varchar(100) NOT NULL,
  `fecha` varchar(100) NOT NULL,
  `proveedor` varchar(100) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `costo` float NOT NULL,
  `oc` varchar(100) NOT NULL,
  `codigobarras` varchar(100) NOT NULL,
  `descrip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`idcompras`, `folioActivo`, `fecha`, `proveedor`, `cantidad`, `costo`, `oc`, `codigobarras`, `descrip`) VALUES
(30, 'C27072401', '2024-07-27', 'Ejemplo2', 50, 10, 'compra01', '7501015205778', 'BORRADOR PARA LAPIZ'),
(31, 'C27072401', '2024-07-27', 'Ejemplo2', 20, 4.45, 'COMPRA02', '7501015205778', 'BORRADOR PARA LAPIZ'),
(32, 'C27072402', '2024-07-27', 'Ejemplo1', 10, 10, 'compra01', '7872570980418', 'LIBRETA CUADRICULADA TAMAÑO PROFECIONAL'),
(33, 'C27072403', '2024-07-27', 'Ejemplo2', 10, 5, 'COMPRA1', '7702111299948', 'LIBRETA PROFESIONAL TAMAÑO PROFECIONAL DE RAYAS'),
(34, 'C27072404', '2024-07-27', 'Ejemplo2', 10, 5, 'FFFF', '6953070912077', 'HDGDGD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consumibles`
--

CREATE TABLE `consumibles` (
  `idconsumibles` int(11) NOT NULL,
  `folioActivo` varchar(100) NOT NULL,
  `fecha` varchar(100) NOT NULL,
  `unidadmedida` varchar(100) NOT NULL,
  `cantidad` int(100) NOT NULL,
  `costo` float NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `codigobarras` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `consumibles`
--

INSERT INTO `consumibles` (`idconsumibles`, `folioActivo`, `fecha`, `unidadmedida`, `cantidad`, `costo`, `tipo`, `descripcion`, `codigobarras`) VALUES
(18, 'C27072401', '2024-07-27', 'PIEZAS', 2, 4.45, 'PAPELERIA', 'GOMA', '7501015205778'),
(19, 'C27072402', '2024-07-27', 'PIEZAS', 10, 10, 'PAPELERIA', 'LIBRETA', '7872570980418'),
(20, 'C27072403', '2024-07-27', 'PIEZAS', 10, 5, 'PAPELERIA', 'LIBRETA PROFECIONAL', '7702111299948'),
(21, 'C27072404', '2024-07-27', 'LITROS', 10, 5, 'PAPELERIA', 'GOMA', '6953070912077');

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
(78, '24072401', '2024-07-24', 'MAQUINARIA', '2024-07-24', 'ffffff', 'Ejemplo1', 'ffff', '45', '2024-07-24', '455'),
(79, '24072402', '2024-07-24', 'VEHÍCULOS', '2024-07-24', 'rferfe', 'Ejemplo2', '344', '34', '2024-07-24', '32324'),
(80, '24072403', '2024-07-24', 'MONTACARGAS', '2024-07-24', 'rrrrtttttss', 'Ejemplo2', '444', '45', '2024-07-24', '345');

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
(126, '23072401', '2024-07-23', 'NA', 'INFRAESTRUCTURA', 'NA', 'NA', 'B', 'NA', 'NA', 'NA', 'NA', 'ggggg', 'gggg', 'FISHER'),
(127, '23072402', '2024-07-23', '2024-07-23', 'EQUIPOS DE CONTENCIÓN', 'NA', '34x45', 'B', 'NA', 'CARRO TRANSPORTADOR', 'DRENAJES', 'NA', 'NA', 'fgggfgf', 'MONDELEZ'),
(128, '23072403', '2024-07-23', 'NA', 'MAQUINARIA', 'ervbtr', '4556x45', 'A', 'NA', 'NA', 'NA', 'NA', 'NA', 'efvfgbfg', 'MONDELEZ'),
(129, '23072404', '2024-07-23', 'NA', 'MAQUINARIA', 'fgbfgbf', '45x45', 'A', 'NA', 'NA', 'NA', 'NA', 'NA', 'gbfgbfg', 'MONDELEZ'),
(130, '23072405', '2024-07-23', '2024-07-23', 'EQUIPOS PARA MANEJO DE MATERIALES', 'NA', 'e45cx345', 'B', 'NA', 'CARRO TRANSPORTADOR', 'DRENAJES', 'NA', 'NA', 'ffgbfg', 'MONDELEZ'),
(131, '23072406', '2024-07-23', 'NA', 'INFRAESTRUCTURA', 'NA', 'NA', 'B', 'NA', 'NA', 'NA', 'NA', 'Holi', 'Holi', 'FISHER'),
(132, '24072403', '2024-07-24', 'NA', 'MONTACARGAS', 'ggg', '46x34', 'B', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'MONDELEZ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

CREATE TABLE `material` (
  `idmaterial` int(11) NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `familia` varchar(50) NOT NULL,
  `producto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `material`
--

INSERT INTO `material` (`idmaterial`, `fecha`, `familia`, `producto`) VALUES
(21, '2024-07-22', 'ALUMINIO', 'ALUMINIO1'),
(22, '2024-07-22', 'MADERA', 'M1'),
(23, '2024-07-22', 'MADERA', 'M2'),
(24, '2024-07-22', 'MADERA', 'M3'),
(25, '2024-07-22', 'CARTÓN', 'CAR2'),
(26, '2024-07-22', 'INOX 316', 'AC2'),
(27, '2024-07-22', 'ALUMINIO', 'ALUMINIO5'),
(28, '2024-07-24', 'PLÁSTICO', 'PLASTICO1'),
(29, '2024-07-24', 'CARTÓN', 'CARTON1'),
(30, '2024-07-24', 'CARTÓN', 'CARTON3'),
(31, '2024-07-24', 'CARTÓN', 'CARTON9'),
(32, '2024-07-24', 'ALUMINIO', 'ALUMINIO20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos`
--

CREATE TABLE `movimientos` (
  `idmovimientos` int(11) NOT NULL,
  `folioActivo` varchar(100) NOT NULL,
  `fecha` varchar(100) NOT NULL,
  `costo` float NOT NULL,
  `cantidad` varchar(100) NOT NULL,
  `responsable` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `movimientos`
--

INSERT INTO `movimientos` (`idmovimientos`, `folioActivo`, `fecha`, `costo`, `cantidad`, `responsable`, `area`, `tipo`) VALUES
(6, 'C27072401', '2024-07-27', 4.45, '60', 'BRISA AUZA ROSAS', 'TECNOLOGÍAS DE LA INFORMACIÓN', 'PAPELERIA'),
(7, 'C27072401', '2024-07-27', 4.45, '8', 'BRISA AUZA ROSAS', 'TECNOLOGÍAS DE LA INFORMACIÓN', 'PAPELERIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `idproveedor` int(11) NOT NULL,
  `foliorpm` varchar(100) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `movil` varchar(50) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `rsocial` varchar(100) NOT NULL,
  `rfc` varchar(20) NOT NULL,
  `rfiscal` varchar(50) NOT NULL,
  `cfdi` varchar(100) NOT NULL,
  `fpago` varchar(50) NOT NULL,
  `calle` varchar(100) NOT NULL,
  `next` varchar(50) NOT NULL,
  `colonia` varchar(100) NOT NULL,
  `ninten` varchar(50) NOT NULL,
  `municipio` varchar(100) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `cpostal` int(50) NOT NULL,
  `cnombre` varchar(100) NOT NULL,
  `cemail` varchar(100) NOT NULL,
  `cmovil` varchar(50) NOT NULL,
  `ctel` varchar(50) NOT NULL,
  `beneficiario` varchar(100) NOT NULL,
  `nombanco` varchar(100) NOT NULL,
  `clabe` varchar(50) NOT NULL,
  `cuenta` varchar(100) NOT NULL,
  `refpago` varchar(100) NOT NULL,
  `credito` varchar(10) NOT NULL,
  `cdias` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioprov`
--

CREATE TABLE `usuarioprov` (
  `idusuarioprov` int(11) NOT NULL,
  `foliorpm` varchar(100) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `movil` varchar(50) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `rsocial` varchar(50) NOT NULL,
  `rfc` varchar(20) NOT NULL,
  `rfiscal` varchar(50) NOT NULL,
  `cfdi` varchar(100) NOT NULL,
  `fpago` varchar(50) NOT NULL,
  `calle` varchar(100) NOT NULL,
  `next` varchar(50) NOT NULL,
  `colonia` varchar(100) NOT NULL,
  `ninten` varchar(50) NOT NULL,
  `municipio` varchar(100) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `cpostal` int(50) NOT NULL,
  `cnombre` varchar(100) NOT NULL,
  `cemail` varchar(100) NOT NULL,
  `cmovil` varchar(50) NOT NULL,
  `ctel` varchar(50) NOT NULL,
  `beneficiario` varchar(100) NOT NULL,
  `nombanco` varchar(100) NOT NULL,
  `clabe` varchar(50) NOT NULL,
  `cuenta` varchar(100) NOT NULL,
  `refpago` varchar(100) NOT NULL,
  `credito` varchar(10) NOT NULL,
  `cdias` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indices de la tabla `asigactivi`
--
ALTER TABLE `asigactivi`
  ADD PRIMARY KEY (`idasigactivi`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`idcompras`);

--
-- Indices de la tabla `consumibles`
--
ALTER TABLE `consumibles`
  ADD PRIMARY KEY (`idconsumibles`);

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
-- Indices de la tabla `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`idmaterial`);

--
-- Indices de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD PRIMARY KEY (`idmovimientos`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`idproveedor`);

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
-- Indices de la tabla `usuarioprov`
--
ALTER TABLE `usuarioprov`
  ADD PRIMARY KEY (`idusuarioprov`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `idactividades` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `activosfijos`
--
ALTER TABLE `activosfijos`
  MODIFY `idActfijos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT de la tabla `asigactivi`
--
ALTER TABLE `asigactivi`
  MODIFY `idasigactivi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `idcompras` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `consumibles`
--
ALTER TABLE `consumibles`
  MODIFY `idconsumibles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `forms`
--
ALTER TABLE `forms`
  MODIFY `idForms` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `insumos`
--
ALTER TABLE `insumos`
  MODIFY `IdInsumos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  MODIFY `idMantenimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT de la tabla `material`
--
ALTER TABLE `material`
  MODIFY `idmaterial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  MODIFY `idmovimientos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `idproveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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

--
-- AUTO_INCREMENT de la tabla `usuarioprov`
--
ALTER TABLE `usuarioprov`
  MODIFY `idusuarioprov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
