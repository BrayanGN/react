-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-06-2023 a las 12:08:57
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `curso1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `cur_Id` int(11) NOT NULL,
  `cur_Nom` varchar(52) NOT NULL,
  `maestro` varchar(30) NOT NULL,
  `cur_Des` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`cur_Id`, `cur_Nom`, `maestro`, `cur_Des`) VALUES
(191, 'PHP8', '1054478334', 'Tutoriales programador novato'),
(199, 'laravel', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(200, 'laravel10', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(201, 'php', '1054478334', 'nnn'),
(202, 'laravel10', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(203, '', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(204, 'p', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(205, 'pr', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(206, 'pru', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(207, 'prue', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(208, 'prueba', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(209, 'prueba2', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(210, 'prueba23', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(211, 'prueba233', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(212, 'prueba23', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(213, 'prueba', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(214, 'prueb', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(215, 'p', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(216, '', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(217, 'r', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(218, 'r ', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(219, 'r', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(220, 'r ', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(221, 'r c', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(222, 'r ct', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(223, 'r ct c', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(224, 'r ct ct c', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(225, 'r ct ct ct ', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(226, 'r ct ct ct', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(227, 'r ct ct c', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(228, 'r ct ct ', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(229, 'r ct ct', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(230, 'r c', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(231, 'r ', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(232, 'r', '1054478334', 'Aprende a manejar el framework mas importante de php'),
(233, '', '1054478334', 'Aprende a manejar el framework mas importante de php');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `est_usuari` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`est_usuari`) VALUES
('23421'),
('234513'),
('302564'),
('453435'),
('453613');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcciones`
--

CREATE TABLE `inscripcciones` (
  `Ins_Id` int(11) NOT NULL,
  `estudiante` varchar(30) NOT NULL,
  `curso` int(11) NOT NULL,
  `ins_FchInscripccion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `Usuario` varchar(30) NOT NULL,
  `maes_Des` varchar(50) NOT NULL,
  `maes_Escalafon` enum('1','2','3') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`Usuario`, `maes_Des`, `maes_Escalafon`) VALUES
('1054478334', 'tecnico en sitemas', '3'),
('1054736482', 'Ingenier@ en software', '2'),
('10548540', 'ssssñwlwe', '1'),
('23421', 'descripccion', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `star_cursos`
--

CREATE TABLE `star_cursos` (
  `Curso` int(11) NOT NULL,
  `Estudiante` varchar(30) NOT NULL,
  `starCur_Califica` double(2,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `star_maestro`
--

CREATE TABLE `star_maestro` (
  `maestro` varchar(30) NOT NULL,
  `star_Calificacion` double(2,1) NOT NULL,
  `Estudiantes` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `star_maestro`
--

INSERT INTO `star_maestro` (`maestro`, `star_Calificacion`, `Estudiantes`) VALUES
('1054478334', 4.0, '302564');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usu_Identificacion` varchar(30) NOT NULL,
  `usu_Nombre` varchar(30) NOT NULL,
  `usu_Apellido` varchar(30) NOT NULL,
  `usu_FechaNacimiento` date NOT NULL,
  `usu_Contraseña` varchar(10) NOT NULL,
  `usu_Genero` enum('M','F') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usu_Identificacion`, `usu_Nombre`, `usu_Apellido`, `usu_FechaNacimiento`, `usu_Contraseña`, `usu_Genero`) VALUES
('1054478334', 'Instructor', 'Gomez Noguera', '2004-06-12', '1234567890', 'M'),
('1054736482', 'Fernanda', 'Ramirez Ocampo', '2023-06-01', '12345678', 'F'),
('1054736483', 'Sara', 'Gomez', '2013-06-12', '1234', 'F'),
('10548540', 'Brayan', 'Gomez', '2000-06-06', '3456754', 'M'),
('23421', 'Prueba 2', 'Prueba', '2004-08-03', '12345623', 'F'),
('234513', 'estudiante prueba #1', 'Prueba', '2023-06-01', '123456785', 'M'),
('302564', 'Alejandro', 'Perez', '2000-06-14', '1234567890', 'M'),
('453435', 'Prueba 3', 'Prueba 3', '2004-08-03', '13433433', 'F'),
('453613', 'Estiven Andres', 'Forero Ramirez', '2023-06-05', '12345678', 'M');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`cur_Id`),
  ADD KEY `id` (`maestro`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`est_usuari`),
  ADD UNIQUE KEY `est_usuari` (`est_usuari`);

--
-- Indices de la tabla `inscripcciones`
--
ALTER TABLE `inscripcciones`
  ADD PRIMARY KEY (`Ins_Id`),
  ADD UNIQUE KEY `estudiante` (`estudiante`),
  ADD KEY `curso` (`curso`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`Usuario`),
  ADD KEY `Usuario` (`Usuario`);

--
-- Indices de la tabla `star_cursos`
--
ALTER TABLE `star_cursos`
  ADD PRIMARY KEY (`Curso`),
  ADD UNIQUE KEY `Estudiante_fk` (`Estudiante`);

--
-- Indices de la tabla `star_maestro`
--
ALTER TABLE `star_maestro`
  ADD PRIMARY KEY (`maestro`),
  ADD UNIQUE KEY `Estudiantes` (`Estudiantes`),
  ADD KEY `Instructor` (`maestro`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usu_Identificacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `cur_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT de la tabla `inscripcciones`
--
ALTER TABLE `inscripcciones`
  MODIFY `Ins_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `star_cursos`
--
ALTER TABLE `star_cursos`
  MODIFY `Curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`maestro`) REFERENCES `maestros` (`Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`est_usuari`) REFERENCES `usuarios` (`usu_Identificacion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `inscripcciones`
--
ALTER TABLE `inscripcciones`
  ADD CONSTRAINT `inscripcciones_ibfk_4` FOREIGN KEY (`curso`) REFERENCES `cursos` (`cur_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inscripcciones_ibfk_5` FOREIGN KEY (`estudiante`) REFERENCES `estudiantes` (`est_usuari`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD CONSTRAINT `maestros_ibfk_1` FOREIGN KEY (`Usuario`) REFERENCES `usuarios` (`usu_Identificacion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `star_cursos`
--
ALTER TABLE `star_cursos`
  ADD CONSTRAINT `estudiante_un` FOREIGN KEY (`Estudiante`) REFERENCES `estudiantes` (`est_usuari`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `star_cursos_ibfk_1` FOREIGN KEY (`Curso`) REFERENCES `cursos` (`cur_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `star_maestro`
--
ALTER TABLE `star_maestro`
  ADD CONSTRAINT `star_maestro_ibfk_1` FOREIGN KEY (`maestro`) REFERENCES `maestros` (`Usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `star_maestro_ibfk_2` FOREIGN KEY (`Estudiantes`) REFERENCES `estudiantes` (`est_usuari`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
