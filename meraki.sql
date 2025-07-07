-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-07-2025 a las 19:46:45
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `web`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `id_tipo_user`
--

CREATE TABLE `id_tipo_user` (
  `id_tipo_user` int(11) NOT NULL,
  `tip_user` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `id_tipo_user`
--

INSERT INTO `id_tipo_user` (`id_tipo_user`, `tip_user`) VALUES
(1, 'Administrador'),
(2, 'Gerente'),
(3, 'Cajero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `documento` int(11) NOT NULL,
  `nombres` text NOT NULL,
  `celular` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `profesion` varchar(500) NOT NULL,
  `contraseña` varchar(40) NOT NULL,
  `id_tipo_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`documento`, `nombres`, `celular`, `email`, `profesion`, `contraseña`, `id_tipo_user`) VALUES
(1107976688, 'jordan caicedo', '3228890909', 'alexander.20.jordi@gmail.com', 'estudiantes', '123456789',1),
(1109689485, 'kris r', '3213637796', 'krisr@gmail.com','cantante', '098765432',2),
(1108687489, 'metricas frias', '3134639876', 'metricasfrias@gmail.com','compositor', '098765',3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `id_tipo_user`
--
ALTER TABLE `id_tipo_user`
  ADD PRIMARY KEY (`id_tipo_user`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`documento`),
  ADD KEY `id_tipo_user` (`id_tipo_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `id_tipo_user`
--
ALTER TABLE `id_tipo_user`
  MODIFY `id_tipo_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_tipo_user`) REFERENCES `id_tipo_user` (`id_tipo_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
