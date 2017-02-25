-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-02-2017 a las 03:14:20
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `seriesypeliculas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Accion'),
(2, 'Aventura'),
(3, 'Comedia'),
(4, 'Drama'),
(5, 'Belico'),
(6, 'Fantasia'),
(7, 'Infantil'),
(8, 'Musical'),
(9, 'Romance'),
(10, 'Terror'),
(11, 'Suspenso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero_series`
--

CREATE TABLE `genero_series` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `genero_series`
--

INSERT INTO `genero_series` (`id`, `nombre`) VALUES
(1, 'Accion'),
(2, 'Aventuras'),
(3, 'Ciencia Ficción'),
(4, 'Comedia'),
(5, 'Romantica'),
(6, 'Detectives'),
(7, 'Sobre Natural'),
(8, 'Fantasía'),
(9, 'Terror'),
(10, 'Zombie');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma`
--

CREATE TABLE `idioma` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `idioma`
--

INSERT INTO `idioma` (`id`, `nombre`) VALUES
(1, 'Ingles Sub'),
(2, 'Español'),
(3, 'Español Latino'),
(4, 'Aleman'),
(5, 'Japones Sub');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `url` varchar(100) NOT NULL,
  `img` varchar(200) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_idioma` int(11) NOT NULL,
  `views` int(6) NOT NULL,
  `calidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `nombre`, `descripcion`, `url`, `img`, `id_categoria`, `id_idioma`, `views`, `calidad`) VALUES
(2, 'La luz entre los oceanos', 'Australia, 1926. Un bote encalla en una isla remota y a su encuentro acuden el farero Tom Sherbourne y su joven esposa Isabel. En el interior del bote yacen un hombre muerto y un bebé que llora con desesperación. Tom e Isabel adoptan al niño y deciden criarlo sin informar a las autoridades. Todo se complica cuando descubren que la madre biológica del bebé está viva. Estreno en USA: septiembre 2016. Estreno en España: enero 2017.', 'https://openload.co/embed/sZHcLKRceaY/', '2476.jpg', 4, 3, 0, 'HD720p'),
(4, 'Inframundo 5: Guerras de Sangre / Underworld 5', 'Nueva entrega de la franquicia Underworld, en la que la vampira Selene (Kate Beckinsale) deberá defenderse de ataques brutales de los dos clanes, el de los Lycans y el de los Vampiros que la traicionaron. Con sus únicos aliados, David (Theo James) y Thomas su padre (Charles Dance), ella debe detener la guerra eterna entre Vampiros y Lycans, aunque signifique tener que hacer un último sacrificio. Estreno en USA: enero 2017.', 'https://openload.co/embed/qR2LMKtAgl4/', 'db_posters_38990.jpg', 1, 1, 0, 'HD 720p');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `series`
--

CREATE TABLE `series` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `genero_id` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `id_idioma` int(11) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `series`
--

INSERT INTO `series` (`id`, `nombre`, `descripcion`, `genero_id`, `img`, `id_idioma`, `estado`) VALUES
(1, 'Dragon Ball Super', 'La serie se desarrollara en la tierra, tiempo después de la lucha terrible contra Majin Buu. Por órdenes de Milk, Goku trabaja fuertemente todos los días en la agricultura. Sin embargo también tiene algunos momentos para entrenar. Por otra parte, Mr Satan, luego de haber salvado al planeta por segunda vez recibe el ¡¿Premio Mundial de la Paz?!\r\n', 0, '2j5yz4z.jpg', 5, 'Emision');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `correo`, `password`) VALUES
(1, 'Eric José', 'Martinez Muentes', 'ejmm10.19@gmail.com', '90101954683');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_capitulos_dragonballsuper`
--

CREATE TABLE `z_capitulos_dragonballsuper` (
  `id` int(11) UNSIGNED NOT NULL,
  `serie_id` int(11) NOT NULL,
  `cap_num` int(11) NOT NULL,
  `nombre_cap` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `temporada` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `z_capitulos_dragonballsuper`
--

INSERT INTO `z_capitulos_dragonballsuper` (`id`, `serie_id`, `cap_num`, `nombre_cap`, `url`, `temporada`, `fecha`) VALUES
(1, 1, 1, 'DRAGON BALL SUPER 1 SUB ESPAÑOL', 'https://openload.co/embed/FUUYkbDIsao/', 1, '2017-02-24 05:00:00'),
(2, 1, 2, 'DRAGON BALL SUPER 2 SUB ESPAÑOL', 'https://openload.co/embed/dzrIiEEdS94/', 1, '2017-02-24 05:00:00'),
(3, 1, 3, 'DRAGON BALL SUPER 3 SUB ESPAÑOL', 'https://openload.co/embed/uup2v8JVWLg/', 1, '2017-02-24 05:00:00'),
(4, 1, 4, 'DRAGON BALL SUPER 4 SUB ESPAÑOL', 'https://openload.co/embed/p2a7OaW8xX8/', 1, '2017-02-24 05:00:00'),
(5, 1, 5, 'DRAGON BALL SUPER 5 SUB ESPAÑOL', 'https://openload.co/embed/OyzWZ7WvFPE/', 1, '2017-02-24 05:00:00'),
(6, 1, 6, 'DRAGON BALL SUPER 6 SUB ESPAÑOL', 'https://openload.co/embed/nBr4mJx_Q_k/', 1, '2017-02-24 05:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `genero_series`
--
ALTER TABLE `genero_series`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `idioma`
--
ALTER TABLE `idioma`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_idioma` (`id_idioma`);

--
-- Indices de la tabla `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_idioma` (`id_idioma`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `z_capitulos_dragonballsuper`
--
ALTER TABLE `z_capitulos_dragonballsuper`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serie_id` (`serie_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `genero_series`
--
ALTER TABLE `genero_series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `idioma`
--
ALTER TABLE `idioma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `series`
--
ALTER TABLE `series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `z_capitulos_dragonballsuper`
--
ALTER TABLE `z_capitulos_dragonballsuper`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD CONSTRAINT `peliculas_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `peliculas_ibfk_2` FOREIGN KEY (`id_idioma`) REFERENCES `idioma` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `series`
--
ALTER TABLE `series`
  ADD CONSTRAINT `series_ibfk_1` FOREIGN KEY (`id_idioma`) REFERENCES `idioma` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `z_capitulos_dragonballsuper`
--
ALTER TABLE `z_capitulos_dragonballsuper`
  ADD CONSTRAINT `z_capitulos_dragonballsuper_ibfk_1` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
