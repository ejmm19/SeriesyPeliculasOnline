-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-02-2017 a las 20:59:27
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
(1, 'Dragon Ball Super', 'La serie se desarrollara en la tierra, tiempo después de la lucha terrible contra Majin Buu. Por órdenes de Milk, Goku trabaja fuertemente todos los días en la agricultura. Sin embargo también tiene algunos momentos para entrenar. Por otra parte, Mr Satan, luego de haber salvado al planeta por segunda vez recibe el ¡¿Premio Mundial de la Paz?!\r\n', 0, '2j5yz4z.jpg', 5, 'Emision'),
(2, 'The Walking Dead Temporada 1', 'Basada en el cómic homónimo de Robert Kirkman. La serie está ambientada en un futuro apocalíptico con la Tierra devastada por el efecto de un cataclismo que ha provocado la mutación en zombies de la mayor parte de los habitantes del planeta. La trama gira en torno a un grupo de supervivientes encabezado por Rick Grimes, un policía que estuvo en estado de coma durante la irrupción de la plaga, tras despertar descubre que el mundo ha cambiado: Los muertos se levantan y devoran a los vivos. Sin comunicación, sin leyes y sin esperanza, buscarán un lugar seguro para poder vivir. La serie tiene como temas principales la supervivencia y los límites humanos, mezclando drama y gore, actualmente es la serie de cable más vista en EEUU.', 0, 'The_Walking_Dead.jpg', 3, 'Finalizado'),
(4, 'SHINGEKI NO KYOJIN ', 'La historia nos traslada a un mundo en el que la humanidad estuvo a punto de ser exterminada cientos de años atrás por los gigantes. Los gigantes son ...', 0, 's_1212_poster.jpg', 3, 'Finalizado');

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
(6, 1, 6, 'DRAGON BALL SUPER 6 SUB ESPAÑOL', 'https://openload.co/embed/nBr4mJx_Q_k/', 1, '2017-02-24 05:00:00'),
(7, 1, 7, 'DRAGON BALL SUPER 7 SUB ESPAÑOL', 'https://openload.co/embed/wTeT74BSB54/', 1, '2017-02-24 05:00:00'),
(8, 1, 8, 'DRAGON BALL SUPER 8 SUB ESPAÑOL', 'https://openload.co/embed/e45kuECAA2s/', 1, '2017-02-24 05:00:00'),
(9, 1, 9, 'DRAGON BALL SUPER 9 SUB ESPAÑOL', 'https://openload.co/embed/0kxp24Cc9Fk/', 1, '2017-02-24 05:00:00'),
(10, 1, 10, 'DRAGON BALL SUPER 10 SUB ESPAÑOL', 'https://openload.co/embed/r2EaNuTic1A/', 1, '2017-02-24 05:00:00'),
(11, 1, 11, 'DRAGON BALL SUPER 11 SUB ESPAÑOL', 'https://openload.co/embed/972vMXFnygY/', 1, '2017-02-24 05:00:00'),
(12, 1, 12, 'DRAGON BALL SUPER 12 SUB ESPAÑOL', 'https://openload.co/embed/P1Jf9r629IM/', 1, '2017-02-25 04:16:57'),
(13, 1, 13, 'DRAGON BALL SUPER 13 SUB ESPAÑOL', 'https://openload.co/embed/VWE01y2mudc/', 1, '2017-02-24 05:00:00'),
(14, 1, 14, 'DRAGON BALL SUPER 14 SUB ESPAÑOL', 'https://openload.co/embed/ZhADYWYWnqY/', 1, '2017-02-25 05:00:00'),
(15, 1, 15, 'DRAGON BALL SUPER 15 SUB ESPAÑOL', 'https://openload.co/embed/xBI5DdN2Gq4/', 1, '2017-02-25 05:00:00'),
(16, 1, 16, 'DRAGON BALL SUPER 16 SUB ESPAÑOL', 'https://openload.co/embed/HQZda2wc_dk/', 1, '2017-02-25 05:00:00'),
(17, 1, 17, 'DRAGON BALL SUPER 17 SUB ESPAÑOL', 'https://openload.co/embed/PQDvtoYcD9c/', 1, '2017-02-25 05:00:00'),
(18, 1, 18, 'DRAGON BALL SUPER 18 SUB ESPAÑOL', 'https://openload.co/embed/Ej8bR_rtOXg/', 1, '2017-02-25 05:00:00'),
(19, 1, 19, 'DRAGON BALL SUPER 19 SUB ESPAÑOL', 'https://openload.co/embed/ySPesSEI1eU/', 1, '2017-02-25 05:00:00'),
(20, 1, 20, 'DRAGON BALL SUPER 20 SUB ESPAÑOL', 'https://openload.co/embed/mGvaxkcc1CI', 1, '2017-02-25 05:00:00'),
(21, 1, 21, 'DRAGON BALL SUPER 21 SUB ESPAÑOL', 'https://openload.co/embed/vV6JDYVpABA/', 1, '2017-02-25 05:00:00'),
(22, 1, 22, 'DRAGON BALL SUPER 22 SUB ESPAÑOL', 'https://openload.co/embed/nzgemjgCFDk/', 1, '2017-02-25 05:00:00'),
(23, 1, 23, 'DRAGON BALL SUPER 23 SUB ESPAÑOL', 'https://openload.co/embed/c2RxqJmS0p8/', 1, '2017-02-25 05:00:00'),
(24, 1, 24, 'DRAGON BALL SUPER 24 SUB ESPAÑOL', 'https://openload.co/embed/yeeBi-tLskI/', 1, '2017-02-25 05:00:00'),
(25, 1, 25, 'DRAGON BALL SUPER 25 SUB ESPAÑOL', 'https://openload.co/embed/OtrVetHPbGE/', 1, '2017-02-25 05:00:00'),
(26, 1, 26, 'DRAGON BALL SUPER 26 SUB ESPAÑOL', 'https://openload.co/embed/QY0A8Dy40X4/', 1, '2017-02-25 05:00:00'),
(27, 1, 27, 'DRAGON BALL SUPER 27 SUB ESPAÑOL', 'https://openload.co/embed/uU_SjXwHqqQ/', 1, '2017-02-25 05:00:00'),
(28, 1, 28, 'DRAGON BALL SUPER 28 SUB ESPAÑOL', 'https://openload.co/embed/f9XrKqKWI4M/', 1, '2017-02-25 05:00:00'),
(29, 1, 29, 'DRAGON BALL SUPER 29 SUB ESPAÑOL', 'https://openload.co/embed/GxeG4akzHyY/', 1, '2017-02-25 05:00:00'),
(30, 1, 30, 'DRAGON BALL SUPER 30 SUB ESPAÑOL', 'https://openload.co/embed/4HHMpShk4nM/', 1, '2017-02-25 05:00:00'),
(31, 1, 31, 'DRAGON BALL SUPER 31 SUB ESPAÑOL', 'https://openload.co/embed/jX6hoRGF1Fw', 1, '2017-02-25 06:20:59'),
(32, 1, 32, 'DRAGON BALL SUPER 32 SUB ESPAÑOL', 'https://openload.co/embed/qmUhJ1V5mEw', 1, '2017-02-25 06:21:10'),
(33, 1, 33, 'DRAGON BALL SUPER 33 SUB ESPAÑOL', 'https://openload.co/embed/hlMl6-FpmdM', 1, '2017-02-25 05:00:00'),
(34, 1, 34, 'DRAGON BALL SUPER 34 SUB ESPAÑOL', 'https://openload.co/embed/yHYG-QBYoc4', 1, '2017-02-25 05:00:00'),
(35, 1, 35, 'DRAGON BALL SUPER 35 SUB ESPAÑOL', 'https://openload.co/embed/Cv7IUdhrfLs', 1, '2017-02-25 06:20:25'),
(36, 1, 36, 'DRAGON BALL SUPER 36 SUB ESPAÑOL', 'https://openload.co/embed/_iTuJ4e_pLs', 1, '2017-02-25 06:33:23'),
(37, 1, 37, 'DRAGON BALL SUPER 37 SUB ESPAÑOL', 'https://openload.co/embed/NKko1T44Yoc', 1, '2017-02-25 05:00:00'),
(38, 1, 38, 'DRAGON BALL SUPER 38 SUB ESPAÑOL', 'https://openload.co/embed/q_Pk2yP38gA', 1, '2017-02-25 06:33:55'),
(39, 1, 39, 'DRAGON BALL SUPER 39 SUB ESPAÑOL', 'https://openload.co/embed/WavGVFsK-pA', 1, '2017-02-25 05:00:00'),
(40, 1, 40, 'DRAGON BALL SUPER 40 SUB ESPAÑOL', 'https://openload.co/embed/QJJNMiH1wFE', 1, '2017-02-25 05:00:00'),
(41, 1, 41, 'DRAGON BALL SUPER 41 SUB ESPAÑOL', 'https://openload.co/embed/newA7PVAxcw', 1, '2017-02-25 05:00:00'),
(42, 1, 42, 'DRAGON BALL SUPER 42 SUB ESPAÑOL', 'https://openload.co/embed/OVCvxPs5d48', 1, '2017-02-25 05:00:00'),
(43, 1, 43, 'DRAGON BALL SUPER 43 SUB ESPAÑOL', 'https://openload.co/embed/sv6uTYwY7nE', 1, '2017-02-25 05:00:00'),
(44, 1, 44, 'DRAGON BALL SUPER 44 SUB ESPAÑOL', 'https://openload.co/embed/gXMl0ktCWiE', 1, '2017-02-25 06:29:52'),
(45, 1, 45, 'DRAGON BALL SUPER 45 SUB ESPAÑOL', 'https://openload.co/embed/PxkcadEIqLc', 1, '2017-02-25 05:00:00'),
(46, 1, 46, 'DRAGON BALL SUPER 46 SUB ESPAÑOL', 'https://openload.co/embed/b2atEJi1uEs', 1, '2017-02-25 06:30:18'),
(47, 1, 47, 'DRAGON BALL SUPER 47 SUB ESPAÑOL', 'https://openload.co/embed/xLcskkxweBM', 1, '2017-02-25 05:00:00'),
(48, 1, 48, 'DRAGON BALL SUPER 48 SUB ESPAÑOL', 'https://openload.co/embed/eJIt26eGfR4/', 1, '2017-02-25 05:00:00'),
(49, 1, 49, 'DRAGON BALL SUPER 49 SUB ESPAÑOL', 'https://openload.co/embed/xfFGBqdb12M/', 1, '2017-02-25 05:00:00'),
(50, 1, 50, 'DRAGON BALL SUPER 50 SUB ESPAÑOL', 'https://openload.co/embed/KSr-6yFyeuw/', 1, '2017-02-25 05:00:00'),
(51, 1, 51, 'DRAGON BALL SUPER 51 SUB ESPAÑOL', 'https://openload.co/embed/v2gm1QNZs8k/', 1, '2017-02-25 05:00:00'),
(52, 1, 52, 'DRAGON BALL SUPER 52 SUB ESPAÑOL', 'https://openload.co/embed/hBIytmdoefw/', 1, '2017-02-25 05:00:00'),
(53, 1, 53, 'DRAGON BALL SUPER 53 SUB ESPAÑOL', 'https://openload.co/embed/u9I9__wnH88/', 1, '2017-02-25 05:00:00'),
(54, 1, 54, 'DRAGON BALL SUPER 54 SUB ESPAÑOL', 'https://openload.co/embed/t7DTwIuexNM/', 1, '2017-02-25 05:00:00'),
(55, 1, 55, 'DRAGON BALL SUPER 55 SUB ESPAÑOL', 'https://openload.co/embed/tXoTIcxj9Gs/', 1, '2017-02-25 05:00:00'),
(56, 1, 56, 'DRAGON BALL SUPER 56 SUB ESPAÑOL', 'https://openload.co/embed/0tc9lgeCD3w/', 1, '2017-02-25 05:00:00'),
(57, 1, 57, 'DRAGON BALL SUPER 57 SUB ESPAÑOL', 'https://openload.co/embed/9LL0WiuM1jQ/HD%5D_No_olvides_compartir_el_v.mp4', 1, '2017-02-25 05:00:00'),
(58, 1, 58, 'DRAGON BALL SUPER 58 SUB ESPAÑOL', 'https://openload.co/embed/1euwP2x-Eh4/HD%5D_No_olvides_compartir_el_v.mp4', 1, '2017-02-25 05:00:00'),
(59, 1, 59, 'DRAGON BALL SUPER 59 SUB ESPAÑOL', 'https://openload.co/embed/1s_IBHQjUNY/%23DragonBallSuper_Cap.mp4', 1, '2017-02-25 05:00:00'),
(60, 1, 60, 'DRAGON BALL SUPER 60 SUB ESPAÑOL', 'https://openload.co/embed/lr0xIOerEC4/%23DragonBallSuper_Cap.mp4', 1, '2017-02-25 05:00:00'),
(61, 1, 61, 'DRAGON BALL SUPER 61 SUB ESPAÑOL', 'https://openload.co/embed/ypA_B9MRwPY/%23DragonBallSuper_Cap.mp4', 1, '2017-02-25 05:00:00'),
(62, 1, 62, 'DRAGON BALL SUPER 62 SUB ESPAÑOL', 'https://openload.co/embed/oH9mUjCXdcE/%23DragonBallSuper_Cap.mp4', 1, '2017-02-25 05:00:00'),
(63, 1, 63, 'DRAGON BALL SUPER 63 SUB ESPAÑOL', 'https://openload.co/embed/ACQZEyGJ4Bo/%23DragonBallSuper_Cap.mp4', 1, '2017-02-25 05:00:00'),
(64, 1, 64, 'DRAGON BALL SUPER 64 SUB ESPAÑOL', 'https://openload.co/embed/ss5418ph9nA/%23DragonBallSuper_Cap.mp4', 1, '2017-02-25 05:00:00'),
(65, 1, 65, 'DRAGON BALL SUPER 65 SUB ESPAÑOL', 'https://openload.co/embed/1zHPBLkQL5k/%23DragonBallSuper_Cap.mp4', 1, '2017-02-25 05:00:00'),
(66, 1, 66, 'DRAGON BALL SUPER 66 SUB ESPAÑOL', 'https://openload.co/embed/2yvxSxOgFV4/66.mp4', 1, '2017-02-25 05:00:00'),
(67, 1, 67, 'DRAGON BALL SUPER 67 SUB ESPAÑOL', 'https://openload.co/embed/1pFMJzcawn0/67.mp4', 1, '2017-02-25 05:00:00'),
(68, 1, 68, 'DRAGON BALL SUPER 68 SUB ESPAÑOL', 'https://openload.co/embed/2c_7UVI4rFY/68.mp4', 1, '2017-02-25 05:00:00'),
(69, 1, 69, 'DRAGON BALL SUPER 69 SUB ESPAÑOL', 'https://openload.co/embed/OS9NlZgy7b8/69HD.mp4', 1, '2017-02-25 07:27:45'),
(70, 1, 70, 'DRAGON BALL SUPER 70 SUB ESPAÑOL', 'https://openload.co/embed/ZT2hggPVocY/70hd.mp4', 1, '2017-02-25 05:00:00'),
(71, 1, 71, 'DRAGON BALL SUPER 71 SUB ESPAÑOL', 'https://openload.co/embed/bMzcawUJ-U4/71HD.mp4', 1, '2017-02-25 05:00:00'),
(72, 1, 72, 'DRAGON BALL SUPER 72 SUB ESPAÑOL', 'https://openload.co/embed/O-mV_WKsO2w/', 1, '2017-02-25 07:36:39'),
(73, 1, 73, 'DRAGON BALL SUPER 73 SUB ESPAÑOL', 'https://openload.co/embed/Cm0Sq9eIN24/', 1, '2017-02-25 05:00:00'),
(74, 1, 74, 'DRAGON BALL SUPER 74 SUB ESPAÑOL', 'https://openload.co/embed/smal1XtCRWU/74.mp4', 1, '2017-02-25 05:00:00'),
(75, 1, 75, 'DRAGON BALL SUPER 75 SUB ESPAÑOL', 'https://openload.co/embed/CpCNrszCdKU/75.mp4', 1, '2017-02-25 05:00:00'),
(76, 1, 76, 'DRAGON BALL SUPER 76 SUB ESPAÑOL', 'https://openload.co/embed/xAuKpbFJIHE/76.mp4', 1, '2017-02-25 05:00:00'),
(77, 1, 77, 'DRAGON BALL SUPER 77 SUB ESPAÑOL', 'https://openload.co/embed/hC5t7gp1x6g/77.mp4', 1, '2017-02-25 05:00:00'),
(78, 1, 78, 'DRAGON BALL SUPER 78 SUB ESPAÑOL', 'https://openload.co/embed/pgN2E6pU5jU/78.mp4', 1, '2017-02-25 05:00:00'),
(79, 1, 79, 'DRAGON BALL SUPER 79 SUB ESPAÑOL', 'https://openload.co/embed/_SlQ6chCcYw/79.mp4', 1, '2017-02-25 05:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_capitulos_shingekinokyojin`
--

CREATE TABLE `z_capitulos_shingekinokyojin` (
  `id` int(11) UNSIGNED NOT NULL,
  `serie_id` int(11) NOT NULL,
  `cap_num` int(11) NOT NULL,
  `nombre_cap` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `temporada` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `z_capitulos_shingekinokyojin`
--

INSERT INTO `z_capitulos_shingekinokyojin` (`id`, `serie_id`, `cap_num`, `nombre_cap`, `url`, `temporada`, `fecha`) VALUES
(1, 4, 1, 'SHINGEKI NO KYOJIN CAP 1', 'https://openload.co/embed/IDqWtk-0QzM/1.mp4', 1, '2017-02-25 19:17:45'),
(2, 4, 2, 'SHINGEKI NO KYOJIN CAP 2', 'https://openload.co/embed/dnA5kPuNFo4/2.mp4', 1, '2017-02-25 05:00:00'),
(3, 4, 3, 'SHINGEKI NO KYOJIN CAP 3', 'https://openload.co/embed/9XZCltBfcBU/3.mp4', 1, '2017-02-25 05:00:00'),
(4, 4, 4, 'SHINGEKI NO KYOJIN CAP 4', 'https://openload.co/embed/9vH7-IOdMf0/4.mp4', 1, '2017-02-25 05:00:00'),
(5, 4, 5, 'SHINGEKI NO KYOJIN CAP 5', 'https://openload.co/embed/rOD_IMmjqfQ/5.mp4', 1, '2017-02-25 05:00:00'),
(6, 4, 6, 'SHINGEKI NO KYOJIN CAP 6', 'https://openload.co/embed/kz31FNCCSwA/6.mp4', 1, '2017-02-25 05:00:00'),
(7, 4, 7, 'SHINGEKI NO KYOJIN CAP 7', 'https://openload.co/embed/6-f9sNnFZ10/7.mp4', 1, '2017-02-25 05:00:00'),
(8, 4, 8, 'SHINGEKI NO KYOJIN CAP 8', 'https://openload.co/embed/Tk_sA2K5nRE/8.mp4', 1, '2017-02-25 19:01:53'),
(9, 4, 9, 'SHINGEKI NO KYOJIN CAP 9', 'https://openload.co/embed/Fr4CSSbXrzQ/9.mp4', 1, '2017-02-25 19:04:02'),
(10, 4, 10, 'SHINGEKI NO KYOJIN CAP 10', 'https://openload.co/embed/1eL5wCjFrio/10.mp4', 1, '2017-02-25 19:19:48'),
(11, 4, 11, 'SHINGEKI NO KYOJIN CAP 11', 'https://openload.co/embed/4otzKirIot8/11.mp4', 1, '2017-02-25 19:38:55'),
(12, 4, 12, 'SHINGEKI NO KYOJIN CAP 12', 'https://openload.co/embed/gJlZAomIzX8/12.mp4', 1, '2017-02-25 05:00:00'),
(13, 4, 13, 'SHINGEKI NO KYOJIN CAP 13', 'https://openload.co/embed/ylDUtn7qW2A/13.mp4', 1, '2017-02-25 05:00:00'),
(14, 4, 14, 'SHINGEKI NO KYOJIN CAP 14', 'https://openload.co/embed/Qg4u8FqxBJw/14.mp4', 1, '2017-02-25 05:00:00'),
(15, 4, 15, 'SHINGEKI NO KYOJIN CAP 15', 'https://openload.co/embed/vqxO5L0o9oU/15.mp4', 1, '2017-02-25 19:47:48'),
(16, 4, 16, 'SHINGEKI NO KYOJIN CAP 16', 'https://openload.co/embed/QRh9pJoNtFY/16.mp4', 1, '2017-02-25 05:00:00'),
(17, 4, 17, 'SHINGEKI NO KYOJIN CAP 17', 'https://openload.co/embed/8QSeAudcQLI/17.mp4', 1, '2017-02-25 05:00:00'),
(18, 4, 18, 'SHINGEKI NO KYOJIN CAP 18', 'https://openload.co/embed/EtH7WlrvSvs/18.mp4', 1, '2017-02-25 05:00:00'),
(19, 4, 19, 'SHINGEKI NO KYOJIN CAP 19', 'https://openload.co/embed/E8TMq14uYlc/19.mp4', 1, '2017-02-25 05:00:00'),
(20, 4, 20, 'SHINGEKI NO KYOJIN CAP 20', 'https://openload.co/embed/wL9QmA5akDE/20.mp4', 1, '2017-02-25 05:00:00'),
(21, 4, 21, 'SHINGEKI NO KYOJIN CAP 21', 'https://openload.co/embed/RfQK1qUrxFI/21.mp4', 1, '2017-02-25 05:00:00'),
(22, 4, 22, 'SHINGEKI NO KYOJIN CAP 22', 'https://openload.co/embed/lWqcSsX7QMY/22.mp4', 1, '2017-02-25 05:00:00'),
(23, 4, 23, 'SHINGEKI NO KYOJIN CAP 23', 'https://openload.co/embed/qpaODQOoeDw/23.mp4', 1, '2017-02-25 05:00:00'),
(24, 4, 24, 'SHINGEKI NO KYOJIN CAP 24', 'https://openload.co/embed/4lQvIJ7Xtlw/24.mp4', 1, '2017-02-25 05:00:00'),
(25, 4, 25, 'SHINGEKI NO KYOJIN CAP 25', 'https://openload.co/embed/ogq5IsqC7r0/25.mp4', 1, '2017-02-25 05:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_capitulos_thewalkingdeadtemporada1`
--

CREATE TABLE `z_capitulos_thewalkingdeadtemporada1` (
  `id` int(11) UNSIGNED NOT NULL,
  `serie_id` int(11) NOT NULL,
  `cap_num` int(11) NOT NULL,
  `nombre_cap` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `temporada` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `z_capitulos_thewalkingdeadtemporada1`
--

INSERT INTO `z_capitulos_thewalkingdeadtemporada1` (`id`, `serie_id`, `cap_num`, `nombre_cap`, `url`, `temporada`, `fecha`) VALUES
(1, 2, 1, 'Los Viejos Tiempos', 'https://openload.co/embed/GJ75tmkgYww', 1, '2017-02-24 05:00:00'),
(2, 2, 2, 'Agallas', 'https://openload.co/embed/j8cM4-K5roE', 1, '2017-02-24 05:00:00'),
(3, 2, 3, 'Díselo a las ranas', 'https://openload.co/embed/NxToI-fUMmY', 1, '2017-02-24 05:00:00');

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
-- Indices de la tabla `z_capitulos_shingekinokyojin`
--
ALTER TABLE `z_capitulos_shingekinokyojin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serie_id` (`serie_id`);

--
-- Indices de la tabla `z_capitulos_thewalkingdeadtemporada1`
--
ALTER TABLE `z_capitulos_thewalkingdeadtemporada1`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `z_capitulos_dragonballsuper`
--
ALTER TABLE `z_capitulos_dragonballsuper`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT de la tabla `z_capitulos_shingekinokyojin`
--
ALTER TABLE `z_capitulos_shingekinokyojin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `z_capitulos_thewalkingdeadtemporada1`
--
ALTER TABLE `z_capitulos_thewalkingdeadtemporada1`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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

--
-- Filtros para la tabla `z_capitulos_shingekinokyojin`
--
ALTER TABLE `z_capitulos_shingekinokyojin`
  ADD CONSTRAINT `z_capitulos_shingekinokyojin_ibfk_1` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `z_capitulos_thewalkingdeadtemporada1`
--
ALTER TABLE `z_capitulos_thewalkingdeadtemporada1`
  ADD CONSTRAINT `z_capitulos_thewalkingdeadtemporada1_ibfk_1` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
