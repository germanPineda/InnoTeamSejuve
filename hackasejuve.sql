-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2019 a las 17:17:53
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hackasejuve`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actor`
--

CREATE TABLE `actor` (
  `idActor` int(11) NOT NULL,
  `tipoActor` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actor`
--

INSERT INTO `actor` (`idActor`, `tipoActor`) VALUES
(2, 'Privado'),
(1, 'Publico'),
(3, 'Social');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `idArea` int(11) NOT NULL,
  `nombreArea` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`idArea`, `nombreArea`) VALUES
(1, 'Educacion'),
(2, 'Ciencias de la Salud'),
(3, 'Economia'),
(4, 'Seguridad'),
(5, 'Identidad'),
(6, 'Familia'),
(7, 'Vivienda'),
(8, 'Derechos'),
(9, 'Esparcimiento'),
(10, 'Arte y Cultura'),
(11, 'Religion'),
(12, 'Deporte'),
(13, 'Politica'),
(14, 'Civismo'),
(15, 'Etnicidad'),
(16, 'Asociacion'),
(17, 'Migracion'),
(18, 'Medio Ambiente'),
(19, 'Ciencia y Tecnologia'),
(20, 'Innovación y emprendimiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `csv`
--

CREATE TABLE `csv` (
  `idCSV` int(11) NOT NULL,
  `nombreCSV` varchar(255) NOT NULL,
  `mime` varchar(255) NOT NULL,
  `data` blob NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `csv`
--

INSERT INTO `csv` (`idCSV`, `nombreCSV`, `mime`, `data`, `idUsuario`) VALUES
(1, '19-9-2016_4-23-27.csv', 'application/vnd.ms-excel', 0x69642c6e6f6d6272652c6170656c6c69646f5f7065726e6f2c6170656c6c69646f5f6d617465726e6f2c656461640d0a312c6c656e6e696e2c7661726761732c6d6f6e746f79612c31370d0a322c656c697a61626574682c706164696c6c612c61706f6e2c32300d0a332c61726e6f6c642c7175697370652c63616d706f732c35370d0a342c73696c7665722c7a616d6174612c666f72642c35300d0a352c61647269616e2c72656e74657269612c746f72706f636f2c33380d0a362c6d617869656c2c636172696c6c6f2c7a61706174612c32340d0a, 22),
(2, '19-9-2016_4-22-12.csv', 'application/vnd.ms-excel', 0x69642c6e6f6d6272652c6170656c6c69646f5f7065726e6f2c6170656c6c69646f5f6d617465726e6f2c656461640d0a312c6c656e6e696e2c7661726761732c6d6f6e746f79612c31370d0a322c656c697a61626574682c706164696c6c612c61706f6e2c32300d0a332c61726e6f6c642c7175697370652c63616d706f732c35370d0a342c73696c7665722c7a616d6174612c666f72642c35300d0a352c61647269616e2c72656e74657269612c746f72706f636f2c33380d0a362c6d617869656c2c636172696c6c6f2c7a61706174612c32340d0a, 33),
(3, '19-9-2016_4-19-56.csv', 'application/vnd.ms-excel', 0x69642c6e6f6d6272652c6170656c6c69646f5f7065726e6f2c6170656c6c69646f5f6d617465726e6f2c656461640d0a312c6c656e6e696e2c7661726761732c6d6f6e746f79612c31370d0a322c656c697a61626574682c706164696c6c612c61706f6e2c32300d0a332c61726e6f6c642c7175697370652c63616d706f732c35370d0a342c73696c7665722c7a616d6174612c666f72642c35300d0a352c61647269616e2c72656e74657269612c746f72706f636f2c33380d0a362c6d617869656c2c636172696c6c6f2c7a61706174612c32340d0a, 44),
(4, '19-9-2016_3-48-3.csv', 'application/vnd.ms-excel', 0x69642c6e6f6d6272652c6170656c6c69646f5f7065726e6f2c6170656c6c69646f5f6d617465726e6f2c656461640d0a312c6c656e6e696e2c7661726761732c6d6f6e746f79612c31370d0a322c656c697a61626574682c706164696c6c612c61706f6e2c32300d0a332c61726e6f6c642c7175697370652c63616d706f732c35370d0a342c73696c7665722c7a616d6174612c666f72642c35300d0a352c61647269616e2c72656e74657269612c746f72706f636f2c33380d0a362c6d617869656c2c636172696c6c6f2c7a61706174612c32340d0a, 55);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especifico`
--

CREATE TABLE `especifico` (
  `idEspecifico` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `especifico`
--

INSERT INTO `especifico` (`idEspecifico`, `nombre`) VALUES
(1, 'Dependencias'),
(2, 'Organismos'),
(3, 'Autonomos'),
(4, 'Ayuntamientos'),
(5, 'Escuelas Publicas'),
(6, 'Camaras empresariales'),
(7, 'Empresas y Comercios'),
(8, 'Escuelas privadas'),
(9, 'OSC\'S'),
(10, 'Sociedades Cooperativas'),
(11, 'Fundaciones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `graficajson`
--

CREATE TABLE `graficajson` (
  `idGrafica` int(11) NOT NULL,
  `nombreGraficaJSON` varchar(255) NOT NULL,
  `mime` varchar(255) NOT NULL,
  `data` blob NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `graficajson`
--

INSERT INTO `graficajson` (`idGrafica`, `nombreGraficaJSON`, `mime`, `data`, `idUsuario`) VALUES
(0, '19-9-2016_4-25-7.csv', 'application/vnd.ms-excel', 0x69642c6e6f6d6272652c6170656c6c69646f5f7065726e6f2c6170656c6c69646f5f6d617465726e6f2c656461640d0a312c6c656e6e696e2c7661726761732c6d6f6e746f79612c31370d0a322c656c697a61626574682c706164696c6c612c61706f6e2c32300d0a332c61726e6f6c642c7175697370652c63616d706f732c35370d0a342c73696c7665722c7a616d6174612c666f72642c35300d0a352c61647269616e2c72656e74657269612c746f72706f636f2c33380d0a362c6d617869656c2c636172696c6c6f2c7a61706174612c32340d0a, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infoespecifico`
--

CREATE TABLE `infoespecifico` (
  `idInfoEspecifico` int(11) NOT NULL,
  `idEspecifico` int(11) DEFAULT NULL,
  `idArea` int(11) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `municipio` varchar(30) DEFAULT NULL,
  `localidad` varchar(30) DEFAULT NULL,
  `regimen` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `infoespecifico`
--

INSERT INTO `infoespecifico` (`idInfoEspecifico`, `idEspecifico`, `idArea`, `nombre`, `municipio`, `localidad`, `regimen`) VALUES
(1, 2, 12, 'COJUDEQ', 'Othon P. Blanco', 'Chetumal', 'Estatal'),
(2, 1, 1, 'Secretaría de Educación de Qui', 'Othon P. Blanco', 'Chetumal', 'Estatal'),
(3, 5, 2, 'División de Ciencias de la Sal', 'Othon P. Blanco', 'Chetumal', 'Estatal'),
(4, 9, 18, 'ECOSUR', 'Othon P. Blanco', 'Chetumal', 'Estatal'),
(5, 4, 13, 'Poder Legislativo del Estado d', 'Othon P. Blanco', 'Chetumal', 'Estatal'),
(6, 1, 3, 'Delegación Federal de la Secre', 'Othon P. Blanco', 'Chetumal', 'Estatal'),
(7, 1, 4, 'Secretaría de Seguridad Públic', 'Othon P. Blanco', 'Chetumal', 'Estatal'),
(8, 11, 16, 'Albergue Carrillo Puerto', 'Othon P. Blanco', 'Chetumal', 'Municipal'),
(9, 5, 20, 'Centro de Innovación Tecnologi', 'Othon P. Blanco', 'Chetumal', 'Estatal'),
(10, 3, 5, 'Museo de la Cultura Maya', 'Othon P. Blanco', 'Chetumal', 'Estatal'),
(11, 1, 6, 'DIF', 'Othon P. Blanco', 'Chetumal', 'Estatal'),
(12, 2, 17, 'Instituto Nacional de Migració', 'Othon P. Blanco', 'Santa Elena', 'Nacional'),
(13, 1, 7, 'Secretaría de Obras Públicas', 'Othon P. Blanco', 'Chetumal', 'Estatal'),
(14, 2, 8, 'Congreso del Estado de Quintan', 'Othon P. Blanco', 'Chetumal', 'Estatal'),
(15, 2, 19, 'COQSYT', 'Othon P. Blanco', 'Chetumal', 'Estatal'),
(16, 5, 14, 'Instituto Tecnologico de Chetu', 'Othon P. Blanco', 'Chetumal', 'Nacional'),
(17, 2, 9, 'Parque Emilio Portes Gil ', 'Othon P. Blanco', 'Chetumal', 'Estatal'),
(18, 1, 10, 'Instituto de la Cultura y las ', 'Othon P. Blanco', 'Chetumal', 'Estatal'),
(19, 1, 15, 'INAH', 'Othon P. Blanco', 'Chetumal', 'Estatal'),
(20, 8, 11, 'Escuela Hidalgo', 'Othon P. Blanco', 'Chetumal', 'Local');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idRol` int(11) NOT NULL,
  `tipoRol` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idRol`, `tipoRol`) VALUES
(1, 'Servidor Publico'),
(2, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablascsv`
--

CREATE TABLE `tablascsv` (
  `idTablasCsv` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `archivoScv` blob NOT NULL,
  `mime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoactor`
--

CREATE TABLE `tipoactor` (
  `idTipoActor` int(30) NOT NULL,
  `idInfoEspecifico` int(11) NOT NULL,
  `idActor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipoactor`
--

INSERT INTO `tipoactor` (`idTipoActor`, `idInfoEspecifico`, `idActor`) VALUES
(1, 1, 1),
(2, 20, 2),
(4, 5, 1),
(6, 16, 1),
(7, 19, 1),
(8, 8, 1),
(9, 12, 1),
(10, 3, 1),
(11, 6, 1),
(12, 7, 1),
(13, 10, 2),
(14, 11, 1),
(15, 13, 1),
(16, 14, 1),
(17, 17, 1),
(18, 18, 1),
(19, 4, 1),
(20, 15, 1),
(21, 9, 1),
(23, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_Usuario` int(11) NOT NULL,
  `nombreReal` varchar(30) NOT NULL,
  `apellidoPaterno` varchar(30) NOT NULL,
  `apellidoMaterno` varchar(30) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `idTipoActor` int(11) DEFAULT NULL,
  `idRol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_Usuario`, `nombreReal`, `apellidoPaterno`, `apellidoMaterno`, `correo`, `Password`, `idTipoActor`, `idRol`) VALUES
(1, 'Manuel Antonio', 'Cortés', 'Arellano', 'manucortes@gmail.com', 'manuelexmiguel', 1, 1),
(2, 'Roberto', 'Paredes', 'Zuñiga', 'raparedes@gmail.com', 'guitarr01', 2, 1),
(3, 'German', 'Pineda', 'Uc', 'germin@gmail.com', '3dvisual', 4, 1),
(4, 'América', 'Sanchez', 'Villareal', 'amerreal@gmail.com', 'catsandkitties', 7, 1),
(5, 'Jose Maria', 'Cadiz', 'Ramirez', 'jarmirez@gmail.com', 'linceresumen', 10, 1),
(6, 'Alexis', 'Blanco', 'Barradas', 'alexis@gmail.com', 'alexis', 23, 2),
(7, 'Itandehui', 'Valdivieso', 'Ortiz', 'Itandehui@gmail.com', 'itandehui', 21, 2),
(8, 'Manuel', 'Villareal', 'Argon', 'manuel@gmail.com', 'manuel', 20, 2),
(9, 'Valeria', 'Arellano', 'Salazar', 'val@gmail.com', 'valeria', 17, 2),
(10, 'Anahí', 'Aragon', 'Salazar', 'anahi@gmail.com', 'anahi', 12, 2),
(14, 'adfa', 'dfa', 'adfa', 'dafa', 'adad', NULL, NULL),
(16, 'asf', 'afadd', 'afadf', 'adaf', 'adfa', 2, 2),
(17, 'Miguel', 'Cortes', 'Arellano', 'wea@gmail.con', '$2y$10$JgVF6MP4Sklpbj4KjhC5U.s', 2, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`idActor`),
  ADD KEY `tipoActor` (`tipoActor`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`idArea`);

--
-- Indices de la tabla `csv`
--
ALTER TABLE `csv`
  ADD PRIMARY KEY (`idCSV`);

--
-- Indices de la tabla `especifico`
--
ALTER TABLE `especifico`
  ADD PRIMARY KEY (`idEspecifico`);

--
-- Indices de la tabla `infoespecifico`
--
ALTER TABLE `infoespecifico`
  ADD PRIMARY KEY (`idInfoEspecifico`),
  ADD KEY `idEspecifico` (`idEspecifico`),
  ADD KEY `idArea` (`idArea`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idRol`);

--
-- Indices de la tabla `tablascsv`
--
ALTER TABLE `tablascsv`
  ADD PRIMARY KEY (`idTablasCsv`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `tipoactor`
--
ALTER TABLE `tipoactor`
  ADD PRIMARY KEY (`idTipoActor`),
  ADD KEY `idEspecifico` (`idInfoEspecifico`),
  ADD KEY `idActor` (`idActor`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_Usuario`),
  ADD KEY `idTipoActor` (`idTipoActor`),
  ADD KEY `idRol` (`idRol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actor`
--
ALTER TABLE `actor`
  MODIFY `idActor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `idArea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `csv`
--
ALTER TABLE `csv`
  MODIFY `idCSV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `especifico`
--
ALTER TABLE `especifico`
  MODIFY `idEspecifico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `infoespecifico`
--
ALTER TABLE `infoespecifico`
  MODIFY `idInfoEspecifico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idRol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tablascsv`
--
ALTER TABLE `tablascsv`
  MODIFY `idTablasCsv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipoactor`
--
ALTER TABLE `tipoactor`
  MODIFY `idTipoActor` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `infoespecifico`
--
ALTER TABLE `infoespecifico`
  ADD CONSTRAINT `infoespecifico_ibfk_1` FOREIGN KEY (`idEspecifico`) REFERENCES `especifico` (`idEspecifico`) ON UPDATE CASCADE,
  ADD CONSTRAINT `infoespecifico_ibfk_2` FOREIGN KEY (`idArea`) REFERENCES `area` (`idArea`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tablascsv`
--
ALTER TABLE `tablascsv`
  ADD CONSTRAINT `tablascsv_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id_Usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tipoactor`
--
ALTER TABLE `tipoactor`
  ADD CONSTRAINT `tipoactor_ibfk_2` FOREIGN KEY (`idActor`) REFERENCES `actor` (`idActor`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tipoactor_ibfk_3` FOREIGN KEY (`idInfoEspecifico`) REFERENCES `infoespecifico` (`idInfoEspecifico`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idRol`) REFERENCES `rol` (`idRol`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`idTipoActor`) REFERENCES `tipoactor` (`idTipoActor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
