-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-06-2024 a las 16:50:40
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
-- Estructura de tabla para la tabla `activosfijos`
--

CREATE TABLE `activosfijos` (
  `idActfijos` int(11) NOT NULL,
  `folioActivo` varchar(100) NOT NULL,
  `Fcreacion` varchar(10) NOT NULL,
  `Falta` varchar(10) NOT NULL,
  `descripcion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `activosfijos`
--

INSERT INTO `activosfijos` (`idActfijos`, `folioActivo`, `Fcreacion`, `Falta`, `descripcion`) VALUES
(1, '', '10/06/2024', '12/06/2024', 'Todo bien'),
(2, '', '11/06/2024', '13/06/2024', 'Todo bien2'),
(3, '', '11/06/2024', '13/06/2024', 'Todo bien2'),
(4, '', '11/06/2024', '13/06/2024', 'Todo bien2'),
(5, '', '10/06/2024', '12/06/2024', 'Todo bien'),
(6, '', '10/06/2024', '12/06/2024', 'Todo bien'),
(7, '', '10/06/2024', '12/06/2024', 'Todo bien'),
(8, '', '10/06/2024', '12/06/2024', 'prueba mantenimiento'),
(9, '', '10/06/2024', '12/06/2024', 'prueba mantenimiento'),
(10, '', '10/06/2024', '12/06/2024', 'prueba mantenimiento2'),
(11, '09062402', '10/06/2024', '12/06/2024', 'prueba mantenimiento2'),
(12, '11062401', '11/06/2024', '2024-06-11', 'bvcxxcxv'),
(13, '11062401', '11/06/2024', '2024-06-11', 'bvcxxcxv'),
(14, '11062402', '11/06/2024', '2024-06-11', 'jhgfdcfvgbhn'),
(15, '11062403', '11/06/2024', '2024-06-11', 'sdcvbnm,k'),
(16, '11062404', '11/06/2024', '2024-06-11', 'ghfdcxz'),
(17, '11062405', '11/06/2024', '2024-06-11', 'jkhgfd'),
(18, '11062406', '11/06/2024', '2024-06-11', ',mn bvcx'),
(19, '11062407', '11/06/2024', '2024-06-14', 'hgbfd'),
(20, '11062408', '11/06/2024', '2024-06-11', ',mjhngbfvcf'),
(21, '11062409', '11/06/2024', '2024-06-20', 'jhgfvd'),
(22, '11062410', '11/06/2024', '2024-06-11', 'dfghjgf'),
(27, '12062401', '2024-06-12', '2024-06-20', 'jhgfdsdfghjkmjnbvc'),
(28, '12062402', '2024-06-12', '2024-06-12', 'dfghjnhbgvfcds'),
(29, '12062402', '2024-06-12', '2024-06-21', 'dfghfdsdfgh'),
(30, '12062403', '2024-06-12', '2024-06-12', 'xcvbjhgfds'),
(31, '12062404', '2024-06-12', '2024-06-12', 'CVBNMKJHG'),
(32, '12062404', '2024-06-12', '2024-06-12', 'hjgfcdx'),
(33, '12062410', '12-06-24', '12-06-24', 'edrftghjhg'),
(34, '11062408', '12-06-24', '12-06-24', 'sdfghj'),
(35, '13062401', '10/06/2024', '12/06/2024', 'prueba mantenimiento2'),
(36, '13062402', '10/06/2024', '12/06/2024', 'prueba mantenimiento2'),
(37, '13062402', '10/06/2024', '12/06/2024', 'prueba mantenimiento2'),
(38, '13062403', '13-06-24', 'undefined', '12/06/2024'),
(39, '13062404', '13-06-24', '12/06/2024', 'prueba mantenimiento2'),
(40, '14062401', '14-06-24', '12/06/2024', 'prueba activos'),
(41, '14062402', '14-06-24', '12/06/2024', 'prueba activos'),
(42, '14062403', '14-06-24', '12/06/2024', 'prueba activos'),
(43, '14062404', '14-06-24', '12/06/2024', 'prueba activos'),
(44, '14062405', '14-06-24', '12/06/2024', 'prueba activos'),
(45, '14062406', '14-06-24', '12/06/2024', 'prueba mantenimiento2'),
(46, '14062407', '14-06-24', '13/06/2024', 'Todo bien2'),
(47, '14062408', '14-06-24', '2024-06-14', 'sdfghjk'),
(54, '14062409', '14-06-24', '2024-06-14', 'hgfdsdfghj'),
(55, '14062410', '14-06-24', '2024-06-14', 'jhgfdfvgbn'),
(56, '14062411', '14-06-24', '2024-06-20', 'cv bnmnbv'),
(57, '14062412', '14-06-24', '2024-06-15', 'jhgfgbhnm'),
(58, '14062413', '14-06-24', '2024-06-15', 'jhgfgbn '),
(59, '14062414', '14-06-24', '2024-06-21', 'jhgfghjk'),
(60, '17062401', '17-06-24', '2024-06-20', 'zxdcfg'),
(61, '17062402', '17-06-24', '2024-06-21', 'erggrrfvv');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forms`
--

CREATE TABLE `forms` (
  `idForms` int(11) NOT NULL,
  `responsable` varchar(100) NOT NULL,
  `preguntas` varchar(100) NOT NULL,
  `areas` varchar(100) NOT NULL,
  `periodo` varchar(50) NOT NULL,
  `activo` varchar(100) NOT NULL,
  `fechaInicio` varchar(50) NOT NULL,
  `inconformidad` varchar(100) NOT NULL,
  `estatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `forms`
--

INSERT INTO `forms` (`idForms`, `responsable`, `preguntas`, `areas`, `periodo`, `activo`, `fechaInicio`, `inconformidad`, `estatus`) VALUES
(2, 'Logistica', '¿Cuentas con combustible de un camión?', 'logistica,seguridad', 'Diario', '', 'undefined', '', 'Inactivo'),
(3, 'Logistica', '¿Cuentas con permiso para conducir?', 'mantenimiento,logistica,tecnologias', '(Fuera de Servicio) MONTACARGAS VERDE TAYLOR 26 TO', '', '12/06/24', '', 'Activo'),
(4, 'Mantenimiento', '¿Tienes seguro de vida?', 'logistica,tecnologias,seguridad', '(Fuera de Servicio) MONTACARGAS VERDE TAYLOR 26 TO', '', '12/06/24', '', 'Activo'),
(5, 'Mantenimiento', '¿Tienes chaleco?', 'logistica,mantenimiento,tecnologias', 'Diario', '', '12/06/24', '', 'Activo'),
(6, 'ALMA LUCERO ZEPEDA  ALONSO', '¿Tienes ?', 'logistica,mantenimiento,tecnologias', 'Semanal', '12/06/24', 'Inactivo', 'function(error,respuesta){\n        \n        if(error){\n            console.log(error)\n            re', 'Inactivo'),
(7, 'ALMA LUCERO ZEPEDA  ALONSO', '¿Tienes botas?', 'logistica,mantenimiento,tecnologias', 'Semanal', '(Fuera de Servicio) MONTACARGAS VERDE TAYLOR 26 TON PUE (MC-04) @ RPM PATIO PUE.', '12/06/24', 'Mantenimiento industrial', 'Activo'),
(8, 'ALMA LUCERO ZEPEDA  ALONSO', 'sdfghj', 'logistica,mantenimiento', 'Semanal', '(Fuera de Servicio) MONTACARGAS VERDE TAYLOR 26 TON PUE (MC-04) @ RPM PATIO PUE.', '12/06/24', 'Mantenimiento industrial', 'Inactivo'),
(9, 'ALMA LUCERO ZEPEDA  ALONSO', 'sdfgh', 'logistica,mantenimiento', 'Semanal', '(Fuera de Servicio) MONTACARGAS VERDE TAYLOR 26 TON PUE (MC-04) @ RPM PATIO PUE.', '12/06/24', 'Sistemas de gestión de calidad', 'Activo'),
(10, 'ALMA LUCERO ZEPEDA  ALONSO', 'sdfgh', 'mantenimiento,tecnologias', 'Semanal', '(Fuera de Servicio) MONTACARGAS VERDE TAYLOR 26 TON PUE (MC-04) @ RPM PATIO PUE.', '15/06/24', 'Mantenimiento industrial', 'Activo'),
(11, 'LUIS REY HERNANDEZ ROMERO', 'Holi :D', 'mantenimiento', 'Diario', '( Fuera de servicio) MONTACARGAS HELI PUE (MC-03) UBICADO @ RPM PATIO PUE.', '17/06/24', 'Tecnologías de la información', 'Activo'),
(12, '', 'Holi x2', 'mantenimiento', 'Semanal', '(Fuera de Servicio) MONTACARGAS VERDE TAYLOR 26 TON PUE (MC-04) @ RPM PATIO PUE.', '17/06/27', 'Tecnologías de la información', 'Activo'),
(13, '', 'HOli x3', 'tecnologias', 'Semanal', '(Fuera de Servicio) MONTACARGAS VERDE TAYLOR 26 TON PUE (MC-04) @ RPM PATIO PUE.', '6/12/2024', 'Mantenimiento industrial', 'Activo'),
(14, ' ', '¿Cuentas con combustible?', 'logistica,seguridad', 'Diario', 'undefined', '12-06-24', 'undefined', ' :D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos`
--

CREATE TABLE `insumos` (
  `IdInsumos` int(11) NOT NULL,
  `folioInsumos` varchar(100) NOT NULL,
  `F_creacion` varchar(10) NOT NULL,
  `F_alta` varchar(10) NOT NULL,
  `descrip` varchar(250) NOT NULL,
  `proveedor` varchar(50) NOT NULL,
  `folioDOS` varchar(50) NOT NULL,
  `monto` decimal(65,0) NOT NULL,
  `F_adqui` varchar(10) NOT NULL,
  `Numserie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `insumos`
--

INSERT INTO `insumos` (`IdInsumos`, `folioInsumos`, `F_creacion`, `F_alta`, `descrip`, `proveedor`, `folioDOS`, `monto`, `F_adqui`, `Numserie`) VALUES
(1, '0', '11/06/2024', '13/06/2024', 'Todo bien2', 'Marco Perez Vazquez', '222ff', '3', '11/06/2024', '87654345678'),
(2, '0', '11/06/2024', '13/06/2024', 'Todo bien2', 'Marco Perez Vazquez', '222ff', '3', '11/06/2024', '87654345678'),
(3, '0', '11/06/2024', '13/06/2024', 'Todo bien2', 'Marco Perez Vazquez', '222ff', '3', '11/06/2024', '87654345678'),
(4, '0', '11/06/2024', '13/06/2024', 'Todo bien2', 'Marco Perez Vazquez', '222ff', '3', '11/06/2024', '87654345678'),
(5, '0', '11/06/2024', '13/06/2024', 'Todo bien2', 'Marco Perez Vazquez', '222ff', '3', '11/06/2024', '87654345678'),
(6, '0', '11/06/2024', '13/06/2024', 'Todo bien2', 'Marco Perez Vazquez', '222ff', '3', '11/06/2024', '87654345678'),
(7, '0', '11/06/2024', '13/06/2024', 'Todo bien2', 'Marco Perez Vazquez', '222ff', '3', '11/06/2024', '87654345678'),
(8, '0', '11/06/2024', '13/06/2024', 'Todo bien2', 'Marco Perez Vazquez', '222ff', '3', '11/06/2024', '87654345678'),
(9, '0', '11/06/2024', '13/06/2024', 'Todo bien2', 'Marco Perez Vazquez', '222ff', '3', '11/06/2024', '87654345678'),
(12, '12062401', '2024-06-12', '2024-06-20', 'jhgfdsdfghjkmjnbvc', 'hgxcvbnm,mnbv', 'ertygf', '56765', '2024-06-13', '56787654'),
(13, '12062402', '2024-06-12', '2024-06-12', 'dfghjnhbgvfcds', 'asdfghjlkjhg', 'ghjgfdsdfg', '0', '2024-06-12', '2345678'),
(14, '12062403', '2024-06-12', '2024-06-12', 'xcvbjhgfds', 'asdfghjhg', 'sxdcfg345', '34567', '2024-06-19', '3456ygf'),
(15, '12062404', '2024-06-12', '2024-06-12', 'hjgfcdx', 'DFGHJK', 'bvc', '4567', '2024-06-13', 'dcfvgbhg'),
(16, '14062407', '14-06-24', '13/06/2024', 'Todo bien2', 'Marco Perez Vazquez', '222ff', '3', '11/06/2024', '87654345678'),
(17, '14062409', '14-06-24', '2024-06-15', 'sdfghj', 'sdfgh', 'sedrftg', '3456', '2024-06-15', '34567'),
(18, '14062411', '14-06-24', '2024-06-20', 'cv bnmnbv', 'cvbnbgfcc', 'cvbvc', '456', '2024-06-20', 'cvbnvc'),
(19, '17062402', '17-06-24', '2024-06-21', 'erggrrfvv', 'hgfghnbgf', '4543frfr', '43444', '2024-06-19', '33333343344');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimiento`
--

CREATE TABLE `mantenimiento` (
  `idMantenimiento` int(11) NOT NULL,
  `folioMant` varchar(100) NOT NULL,
  `F_creacion` varchar(35) NOT NULL,
  `F_alta` varchar(35) NOT NULL,
  `descrip` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mantenimiento`
--

INSERT INTO `mantenimiento` (`idMantenimiento`, `folioMant`, `F_creacion`, `F_alta`, `descrip`) VALUES
(1, '', '10/06/2024', '12/06/2024', 'Todo bien'),
(2, '', '10/06/2024', '12/06/2024', 'Todo bien'),
(3, '', '10/06/2024', '12/06/2024', 'Todo bien'),
(4, '', '10/06/2024', '12/06/2024', 'prueba mantenimiento'),
(5, '', '10/06/2024', '12/06/2024', 'prueba mantenimiento'),
(6, '', '10/06/2024', '12/06/2024', 'prueba mantenimiento2'),
(7, '09062401', '10/06/2024', '12/06/2024', 'prueba mantenimiento2'),
(8, '09062402', '10/06/2024', '12/06/2024', 'prueba mantenimiento2'),
(9, '11062410', '11/06/2024', '2024-06-11', 'dfghjgf'),
(10, '11062411', '11/06/2024', '2024-06-11', 'prueba mantenimientobbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb'),
(11, '12062402', '2024-06-12', '2024-06-21', 'dfghfdsdfgh'),
(12, '12062404', '2024-06-12', '2024-06-12', 'CVBNMKJHG'),
(13, '14062406', '14-06-24', '12/06/2024', 'prueba mantenimiento2'),
(14, '14062408', '14-06-24', '2024-06-14', 'sdfghjk'),
(15, '140624010', '14-06-24', '2024-06-15', 'asdfghjk'),
(16, '14062411', '14-06-24', '2024-06-15', 'jhgfdsdfvbn'),
(17, '14062409', '14-06-24', '2024-06-22', 'jhgfdsdfgh'),
(18, '140624010', '14-06-24', '2024-06-14', 'hgfdsxdcvbnm'),
(19, '14062411', '14-06-24', '2024-06-14', 'jhgfdfghj'),
(20, '14062409', '14-06-24', '2024-06-14', 'hgfdsdfghj'),
(21, '14062410', '14-06-24', '2024-06-14', 'jhgfdfvgbn'),
(22, '14062412', '14-06-24', '2024-06-15', 'jhgfgbhnm'),
(23, '14062413', '14-06-24', '2024-06-15', 'jhgfgbn '),
(24, '14062414', '14-06-24', '2024-06-21', 'jhgfghjk');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activosfijos`
--
ALTER TABLE `activosfijos`
  ADD PRIMARY KEY (`idActfijos`);

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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `activosfijos`
--
ALTER TABLE `activosfijos`
  MODIFY `idActfijos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `forms`
--
ALTER TABLE `forms`
  MODIFY `idForms` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `insumos`
--
ALTER TABLE `insumos`
  MODIFY `IdInsumos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  MODIFY `idMantenimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
