-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-02-2017 a las 04:40:36
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
(1, 'La luz entre los oceanos', 'Australia, 1926. Un bote encalla en una isla remota y a su encuentro acuden el farero Tom Sherbourne y su joven esposa Isabel. En el interior del bote yacen un hombre muerto y un bebé que llora con desesperación. Tom e Isabel adoptan al niño y deciden criarlo sin informar a las autoridades. Todo se complica cuando descubren que la madre biológica del bebé está viva. Estreno en USA: septiembre 2016. Estreno en España: enero 2017.', 'https://openload.co/embed/sZHcLKRceaY/', '2476.jpg', 4, 3, 0, 'HD720p'),
(2, 'Inframundo 5: Guerras de Sangre / Underworld 5', 'Nueva entrega de la franquicia Underworld, en la que la vampira Selene (Kate Beckinsale) deberá defenderse de ataques brutales de los dos clanes, el de los Lycans y el de los Vampiros que la traicionaron. Con sus únicos aliados, David (Theo James) y Thomas su padre (Charles Dance), ella debe detener la guerra eterna entre Vampiros y Lycans, aunque signifique tener que hacer un último sacrificio. Estreno en USA: enero 2017.', 'https://openload.co/embed/qR2LMKtAgl4/', 'db_posters_38990.jpg', 1, 1, 2, 'HD 720p'),
(5, 'Búsqueda Implacable 1', 'Bryan Mills (Liam Neeson), un agente especial retirado, debe volver a la acción para liberar a su hija Kim (Maggie Grace), que ha sido raptada en París por una banda de albanokosovares que se dedica a la trata de blancas. Usando todas sus habilidades como agente especial del gobierno intentará buscar a su hija y vengarse de quienes la tienen.', 'https://openload.co/embed/5JndR4zDzJ4/', 'taken-busqueda-implcable.jpg', 1, 3, 0, 'HD 720p'),
(6, 'Búsqueda Implacable 2', 'Búsqueda Implacable 2 nos trae nuevamente a Liam Neeson como Bryan Mills, el agente de la CIA retirado con un set particular de habilidades que no lo detuvieron en nada para salvar a su hija Kim de secuestradores albaneses. Cuando el padre de uno de los secuestradores jura venganza, y toma como rehenes a Bryan y a su mujer cuando están de vacaciones en Estambul, Bryan le pide a Kim que los ayude en el rescate, y usa las mismas fuerzas especiales para salvar a su familia y acabar con los secuestradores uno por uno.', 'https://openload.co/embed/Kf5JkNY4oXw/', 'Busqueda.Implacable2.Poster.MundoRmvbLatino.jpg', 1, 3, 0, 'HD 720p'),
(7, 'Búsqueda Implacable 3', 'Tercera parte de la trilogía de las películas iniciadas en el año 2008 con Búsqueda Implacable ‘Venganza’ y que cuenta con una secuela en 2012 bajo el título ‘Venganza: Conexión Estambul’, donde Liam Neeson (‘Batman Begins’) vuelve a meterse en la piel de Bryan, un espía retirado que no dudará en hacer lo necesario a favor de la justicia y la supervivencia.', 'https://openload.co/embed/jZqycNeJVk8/', 'Tak3n.jpg', 1, 3, 0, 'HD 720p'),
(8, 'Doctor Strange', 'El doctor Stephen Strange (Benedict Cumberbatch) es un reputado neurocirujano de Nueva York. Todo lo que tiene de brillante y talentoso, lo tiene también de arrogante y vanidoso. Tras sufrir un terrible accidente de coche, sus manos quedan dañadas, cosa que arruina por completo su carrera. Después de varias intervenciones quirúrgicas de su colega, el doctor Nicodemus West (Michael Stuhlbarg), las manos de Stephen Strange consiguen recuperar su movilidad parcial, pero no la suficiente pericia como para volver a operar. Después de estos dramáticos sucesos, y de tener que abandonar definitivamente su profesión, Stephen Strange decide realizar un viaje de sanación al Himalaya que le cambiará la vida. Alejándose de la medicina tradicional, buscará una nueva cura para su lesión. Será entonces cuando conozca a El Anciano (Tilda Swinton), quien le enseñará que el mundo en el que vive es una realidad entre muchas. Descubrirá así un mundo oculto de dimensiones mágicas, y durante su entrenamiento con el maestro místico se revelarán sus poderes psíquicos, como la telepatía, la proyección astral o el teletransporte, que utilizará para combatir al mal.', 'https://openload.co/embed/XQVnFjUUM3c/', '221.jpg', 1, 3, 0, 'HD 720p'),
(9, 'Jackie', 'Biopic sobre la ex primera dama estadounidense Jacqueline Kennedy, centrado en los días inmediatamente posteriores al asesinato de JFK en Dallas el 22 de noviembre del año 1963.', 'https://openload.co/embed/t_6CVdrxQe4', 'Jackie.jpg', 4, 3, 0, 'HD 720p'),
(10, 'Animales fantásticos y dónde encontrarlos ', 'Adaptación del libro homónimo de J.K. Rowling, un spin-off que amplía el mundo de la saga Harry Potter desde el punto de vista de Newt Scamander, un mago a quien le encargan escribir un libro sobre seres fantásticos. Se ambientará setenta años antes de lo narrado en las películas del mago.', 'https://openload.co/embed/hMZmlz4295k', '12772313959870206295.png', 2, 3, 0, 'HD 720p'),
(11, 'Resident Evil 6', 'La humanidad está agonizando tras la traición sufrida por Alice a manos de Wesker. Alice deberá regresar a donde la comenzó la pesadilla -Raccoon City-, ya que allí la Corporación Umbrella está reuniendo fuerzas antes de un último ataque a los últimos supervivientes del apocalipsis. En una carrera contra el tiempo, Alice tendrá que unir fuerzas con viejos y con un inesperado aliado en una batalla contra hordas', 'https://openload.co/embed/pnTeEAW7YIk/videoplayback.mp4', 'res.jpg', 1, 3, 0, 'SD 480p'),
(12, 'Drone Wars', 'Un combate entre drones y naves deja el cielo lleno de humo y repleto de barcos flotando en todas las direcciones. Mientras, pequeños grupos de humanos que sobreviven se mantienen juntos, tratando desesperadamente de resucitar cualquier apariencia de normalidad que una vez tuvieron. En medio del caos, un equipo de científicos escondidos en Los Ángeles es todo lo que queda para derrotar a los aviones no tripulados y acabar con la nave nodriza.', 'https://openload.co/embed/SVEQW3gXCxU/Drone_Wars_%282016%29_-_Latino_720p.avi.mp4', 'MV5BMTUzOTE1ODUyMF5BMl5BanBnXkFtZTgwNDE5OTE1MDI._V1_UY268_CR100182268_AL_.jpg', 1, 3, 0, 'HD 720p');

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
(4, 'SHINGEKI NO KYOJIN ', 'La historia nos traslada a un mundo en el que la humanidad estuvo a punto de ser exterminada cientos de años atrás por los gigantes. Los gigantes son ...', 0, 's_1212_poster.jpg', 3, 'Finalizado'),
(5, 'The Walking Dead Temporada 2', 'La segunda temporada de la serie the walking dead nos brinda la continuacián de la historia (Temporada 1) de los sobrevivientes que buscan además de un sitio seguro donde vivir, alguna posible solucion a el virus que ha causado todo el caos.\r\nA lo largo de los 13 capitulos el grupo dirigido por rick se enfrentara a dilemas morales y sentimentales que terminaran por desencadenar peleas y nuevas perdidas de los integrantes del grupo.La temporada 2 de The walking dead se comenzó a transmitir a finales del 2011 y se centra en la supervivencia en un nuevo refugio (la granja) que encuentra el grupo luego de una serie de desafortunados acontecimientos como la desaparición de Sofía y el accidente sufrido por Carl.', 0, 'the_walking_dead_season_2.png', 3, 'Finalizado'),
(6, 'The Walking Dead Temporada 3 ', ' En la temporada 3 veremos como Rick tiene que sufrir una gran perdida y además tendrá que librar una dura batalla frente a un nuevo personaje (El Gobernador) quien sin muchos motivos y a toda costa desea destruir a todos los que se crucen en su camino.Mira The walking dead temporada 3 en español latino online: la historia de the walking dead en español latino retoma su continuación (Temporada 2) meses después de la horda de zombis que obligo a todos los miembros del grupo a salir huyendo de la granja que sirvió de refugio por tanto tiempo, sin shane como miembro y lori en pleno embarazo han estado vagando durante el invierno de casa en casa y ya están muy desgastados físicamente. Pronto nacerá él bebe y necesitan un lugar donde tener el parto seguros y tranquilos, en ese momento ven una cárcel abandonada y a Rick se le ocurre la gran idea de apoderarse de esta ya que ofrece una seguridad avanzada. Mientras tanto Andrea ha estado sobreviviendo junto a su nueva amiga Michonne y tiene un encuentro con un viejo amigo (Merl) quien las lleva a un lugar protegido por “El Gobernador”. Andrea termina enamorándose de El gobernador mientras rick y todo el grupo alojados en la prisión tratan de sobrevivir a los devastadores acontecimientos que transcurren a lo largo de los 16 capítulos que conforman esta temporada de The walking dead.', 0, 'the-walking-dead-temporada-3.jpg', 3, 'Finalizado'),
(7, 'The Walking Dead Temporada 4', 'Luego de la batalla a muerte que les habia declarado el gobernador y que pudieron ganar los protagonistas de the walking dead, la prisión se ha convertido en un hogar confortable y por el momento seguro para toda la gente que vino de woodbury. Rick ha empezado a cultivar el campo dia a dia para que no les falte el alimento y Michonne sigue una búsqueda solitaria para tratar de encontrar al gobernador. Magie y Gleen cada dia estan mas enamorados y Daryl sigue siendo la pieza clave de la supervivencia.', 0, 'the-walking-dead-temporada-4.jpg', 3, 'Finalizado'),
(8, 'The Walking Dead Temporada 5', 'La anterior Temporada 4, concluyo con rick y varios de los sobrevivientes en la terminal “terminus”, donde encontraron un grupo de personas que al parecer engañaban a la gente con los carteles de ayuda para secuestrarlos y hacerles daño (se presume que son canibales). Encerrados en un bagon Rick, Michonne, Daryl y Carl se reencuentran con Maggie, Gleen, Tara, Shasha, Bob y los demas. Sin embargo, el paradero de Tyreese, Carol y Beth aun es desconocido.', 0, 'the-walking-dead-temporada-5.jpg', 3, 'Finalizado'),
(9, 'The Walking Dead Temporada 6', 'La anterior Temporada 5, concluyo con la aparición de Morgan en la comunidad de Alexandria. Rick por su parte trata de mostrarle a la comunidad que deben prepararse porque el peligro puede llegar en cualquier momento y un nuevo grupo de asesinos llamados “The Wolves” están cerca y solo tienen malas intenciones para las que la comunidad deberá estar preparada. Muchos de los que habitan allí aun no conocen en lo que el mundo se ha convertido fuera de sus muros y no sera fácil la tarea que tiene Rick y todo el grupo en sus manos.\r\n\r\n\r\nPor otro lado, se desarrollaran nuevas historias de amor y desamor que tratan de dar nueva esperanza en la vida de estos sobrevivientes, Glenn y Maggie es una de las parejas que quiere fortalecer cada vez mas su unión y Abraham quiere seguir el mismo camino con la persona que ama de corazón. El peligro se aproxima y la diferencia entre las creencias de Morgan y Rick puede ser un problema que cree desunión y debilite la fuerza que siempre ha caracterizado a todos los que siguen a vivos.', 0, '006_1rk1rx.jpg', 3, 'Finalizado'),
(10, 'The Walking Dead Temporada 7', 'El capitulo final de la Temporada 6 termino con la aparición de Negan en una emboscada que le tendieron los salvadores al grupo de Rick mientras intentaban llevar con urgencia a Maggie a la comunidad de Hilltop para ver a un doctor. Luego de una larga charla Negan le dice al grupo que de ahora en adelante trabajaran para el, le daran la mitad de sus alimentos y que matara a uno de ellos por acabar con muchos de sus hombres.\r\n\r\nPor otro lado Rick parece estar en estado de shock con la situacion y permanece inmóvil. La vida de alguno de estos personajes: Glenn, Daryl, Michonne, Rosita, Abraham, Maggie, Rick, Eugene, Aaron, Sasha o Carl llega a su fin en el comienzo de una batalla contra el villano que viene a hacerle la vida imposible a todos los sobrevivientes de este apocalipsis Zombie.', 0, 'The-Walking-Dead-Temporada-7.jpg', 3, 'Emision'),
(11, 'Game Of Thrones Temporada 1', 'Game of Thrones (juego de tronos) temporada 1 es la nueva serie de HBO del genero de fantasía medieval que narra la historia de un continente llamado poniente (ficticio) donde se libran batallas violentas entre los 7 reinos que luchan por tener el control del trono de hierro. En game of thrones encontraras escenas de guerra, mucha sangre y lujuria desenfrenada. Juego de tronos se estrenó en el 2011', 0, 'Game Of Thrones.jpg', 3, 'Finalizado');

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
(79, 1, 79, 'DRAGON BALL SUPER 79 SUB ESPAÑOL', 'https://openload.co/embed/_SlQ6chCcYw/79.mp4', 1, '2017-02-25 05:00:00'),
(80, 1, 80, 'DRAGON BALL SUPER 80 SUB ESPAÑOL', 'https://openload.co/embed/RkpPpct2hOI/80.mp4', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_capitulos_gameofthronestemporada1`
--

CREATE TABLE `z_capitulos_gameofthronestemporada1` (
  `id` int(11) UNSIGNED NOT NULL,
  `serie_id` int(11) NOT NULL,
  `cap_num` int(11) NOT NULL,
  `nombre_cap` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `temporada` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(3, 2, 3, 'Díselo a las ranas', 'https://openload.co/embed/NxToI-fUMmY', 1, '2017-02-24 05:00:00'),
(4, 2, 4, 'Los Chicos', 'https://openload.co/embed/bBRhTUWgG04/1x04_-_Chicos.mkv.mp4', 1, '0000-00-00 00:00:00'),
(5, 2, 6, 'Fuego Forestal', 'https://openload.co/embed/e26_CRKyYI8/', 1, '2017-02-26 01:49:03'),
(6, 2, 7, 'TS-19', 'https://openload.co/embed/VIXqBVe7m9Y/', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_capitulos_thewalkingdeadtemporada2`
--

CREATE TABLE `z_capitulos_thewalkingdeadtemporada2` (
  `id` int(11) UNSIGNED NOT NULL,
  `serie_id` int(11) NOT NULL,
  `cap_num` int(11) NOT NULL,
  `nombre_cap` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `temporada` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `z_capitulos_thewalkingdeadtemporada2`
--

INSERT INTO `z_capitulos_thewalkingdeadtemporada2` (`id`, `serie_id`, `cap_num`, `nombre_cap`, `url`, `temporada`, `fecha`) VALUES
(1, 5, 1, 'Lo que queda por delante', 'https://openload.co/embed/7OxjW15YkFg/', 2, '0000-00-00 00:00:00'),
(2, 5, 2, 'Sangría', 'https://openload.co/embed/tlkoLC-rOeA/', 2, '0000-00-00 00:00:00'),
(3, 5, 3, 'Guarda la última', 'https://openload.co/embed/D4ts6e21Ypg/', 2, '0000-00-00 00:00:00'),
(4, 5, 4, 'Rosa Cherokee', 'https://openload.co/embed/nBKHKnbrj9o/', 2, '0000-00-00 00:00:00'),
(5, 5, 5, 'Chupacabra', 'https://openload.co/embed/Bml6boZon18/', 2, '0000-00-00 00:00:00'),
(6, 5, 6, 'Secretos', 'http://www.planetatvonlinehd.com/stream/410', 2, '0000-00-00 00:00:00'),
(7, 5, 7, 'Prácticamente Muertos', 'http://www.planetatvonlinehd.com/stream/411', 2, '0000-00-00 00:00:00'),
(8, 5, 8, 'Nebraska', 'http://www.planetatvonlinehd.com/stream/412', 2, '0000-00-00 00:00:00'),
(9, 5, 9, 'El dedo en el gatillo', 'http://www.planetatvonlinehd.com/stream/413', 2, '0000-00-00 00:00:00'),
(10, 5, 10, 'A 18 Millas', 'http://www.planetatvonlinehd.com/stream/414', 2, '0000-00-00 00:00:00'),
(11, 5, 11, 'Juez, Jurado, Verdugo', 'http://www.planetatvonlinehd.com/stream/415', 2, '0000-00-00 00:00:00'),
(12, 5, 12, 'Mejores Angeles', 'http://www.planetatvonlinehd.com/stream/416', 2, '0000-00-00 00:00:00'),
(13, 5, 13, 'Junto al Fuego que se Extingue', 'http://www.planetatvonlinehd.com/stream/417', 2, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_capitulos_thewalkingdeadtemporada3`
--

CREATE TABLE `z_capitulos_thewalkingdeadtemporada3` (
  `id` int(11) UNSIGNED NOT NULL,
  `serie_id` int(11) NOT NULL,
  `cap_num` int(11) NOT NULL,
  `nombre_cap` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `temporada` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `z_capitulos_thewalkingdeadtemporada3`
--

INSERT INTO `z_capitulos_thewalkingdeadtemporada3` (`id`, `serie_id`, `cap_num`, `nombre_cap`, `url`, `temporada`, `fecha`) VALUES
(1, 6, 1, 'Semilla', 'http://www.planetatvonlinehd.com/stream/418', 3, '0000-00-00 00:00:00'),
(2, 6, 2, 'Enfermos', 'http://www.planetatvonlinehd.com/stream/419', 3, '0000-00-00 00:00:00'),
(3, 6, 3, 'Camina Conmigo', 'http://www.planetatvonlinehd.com/stream/420', 3, '0000-00-00 00:00:00'),
(4, 6, 4, 'Asesino Interior', 'http://www.planetatvonlinehd.com/stream/421', 3, '0000-00-00 00:00:00'),
(5, 6, 5, 'Da la Señal', 'http://www.planetatvonlinehd.com/stream/422', 3, '0000-00-00 00:00:00'),
(6, 6, 6, 'Perseguidos', 'http://www.planetatvonlinehd.com/stream/423', 3, '0000-00-00 00:00:00'),
(7, 6, 7, 'Cuando los Muertos llaman a la puerta', 'http://www.planetatvonlinehd.com/stream/424', 3, '0000-00-00 00:00:00'),
(8, 6, 8, 'Hechos para Sufrir', 'http://www.planetatvonlinehd.com/stream/425', 3, '0000-00-00 00:00:00'),
(9, 6, 9, 'El Rey Suicida', 'http://www.planetatvonlinehd.com/stream/426', 3, '0000-00-00 00:00:00'),
(10, 6, 10, 'Hogar', 'http://www.planetatvonlinehd.com/stream/427', 3, '0000-00-00 00:00:00'),
(11, 6, 11, 'No Soy un Judas', 'http://www.planetatvonlinehd.com/stream/428', 3, '0000-00-00 00:00:00'),
(12, 6, 12, 'Aclarar', 'http://www.planetatvonlinehd.com/stream/429', 3, '0000-00-00 00:00:00'),
(13, 6, 13, 'Flecha en el Poste', 'http://www.planetatvonlinehd.com/stream/430', 3, '0000-00-00 00:00:00'),
(14, 6, 14, 'Presa', 'http://www.planetatvonlinehd.com/stream/431', 3, '0000-00-00 00:00:00'),
(15, 6, 15, 'Esta Vida Dolorosa', 'http://www.planetatvonlinehd.com/stream/432', 3, '0000-00-00 00:00:00'),
(16, 6, 16, 'Bienvenidos a las Tumbas', 'http://www.planetatvonlinehd.com/stream/433', 3, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_capitulos_thewalkingdeadtemporada4`
--

CREATE TABLE `z_capitulos_thewalkingdeadtemporada4` (
  `id` int(11) UNSIGNED NOT NULL,
  `serie_id` int(11) NOT NULL,
  `cap_num` int(11) NOT NULL,
  `nombre_cap` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `temporada` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `z_capitulos_thewalkingdeadtemporada4`
--

INSERT INTO `z_capitulos_thewalkingdeadtemporada4` (`id`, `serie_id`, `cap_num`, `nombre_cap`, `url`, `temporada`, `fecha`) VALUES
(1, 7, 1, '30 Días Sin Un accidente', 'http://www.planetatvonlinehd.com/stream/434', 4, '0000-00-00 00:00:00'),
(2, 7, 2, 'Infectado', 'http://www.planetatvonlinehd.com/stream/435', 4, '0000-00-00 00:00:00'),
(3, 7, 3, 'Aislamiento', 'http://www.planetatvonlinehd.com/stream/436', 4, '0000-00-00 00:00:00'),
(4, 7, 4, 'Indiferencia', 'http://www.planetatvonlinehd.com/stream/437', 4, '0000-00-00 00:00:00'),
(5, 7, 5, 'Internamiento', 'http://www.planetatvonlinehd.com/stream/438', 4, '0000-00-00 00:00:00'),
(6, 7, 6, 'Camada Viva', 'http://www.planetatvonlinehd.com/stream/439', 4, '0000-00-00 00:00:00'),
(7, 7, 7, 'Peso Muerto', 'http://www.planetatvonlinehd.com/stream/440', 4, '0000-00-00 00:00:00'),
(8, 7, 8, 'Demasiado Lejos', 'http://www.planetatvonlinehd.com/stream/441', 4, '0000-00-00 00:00:00'),
(9, 7, 9, 'Después', 'http://www.planetatvonlinehd.com/stream/442', 4, '0000-00-00 00:00:00'),
(10, 7, 10, 'Reclusos', 'http://www.planetatvonlinehd.com/stream/443', 4, '0000-00-00 00:00:00'),
(11, 7, 11, 'Reclamado', 'http://www.planetatvonlinehd.com/stream/444', 4, '0000-00-00 00:00:00'),
(12, 7, 12, 'Aún', 'http://www.planetatvonlinehd.com/stream/445', 4, '0000-00-00 00:00:00'),
(13, 7, 13, 'Solo', 'http://www.planetatvonlinehd.com/stream/446', 4, '0000-00-00 00:00:00'),
(14, 7, 14, 'La Arboleda', 'http://www.planetatvonlinehd.com/stream/447', 4, '0000-00-00 00:00:00'),
(15, 7, 15, 'Nosotros', 'http://www.planetatvonlinehd.com/stream/448', 4, '0000-00-00 00:00:00'),
(16, 7, 16, 'A', 'http://www.planetatvonlinehd.com/stream/449', 4, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_capitulos_thewalkingdeadtemporada5`
--

CREATE TABLE `z_capitulos_thewalkingdeadtemporada5` (
  `id` int(11) UNSIGNED NOT NULL,
  `serie_id` int(11) NOT NULL,
  `cap_num` int(11) NOT NULL,
  `nombre_cap` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `temporada` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `z_capitulos_thewalkingdeadtemporada5`
--

INSERT INTO `z_capitulos_thewalkingdeadtemporada5` (`id`, `serie_id`, `cap_num`, `nombre_cap`, `url`, `temporada`, `fecha`) VALUES
(1, 8, 1, 'No es un Santuario', 'http://www.planetatvonlinehd.com/stream/450', 5, '0000-00-00 00:00:00'),
(2, 8, 2, 'Extraños', 'http://www.planetatvonlinehd.com/stream/451', 5, '0000-00-00 00:00:00'),
(3, 8, 3, 'Cuatro Paredes y Un Techo', 'http://www.planetatvonlinehd.com/stream/452', 5, '0000-00-00 00:00:00'),
(4, 8, 4, 'Slabtown', 'http://www.planetatvonlinehd.com/stream/453', 5, '0000-00-00 00:00:00'),
(5, 8, 5, 'Auto Ayuda', 'http://www.planetatvonlinehd.com/stream/454', 5, '0000-00-00 00:00:00'),
(6, 8, 6, 'Consumidos', 'http://www.planetatvonlinehd.com/stream/455', 5, '0000-00-00 00:00:00'),
(7, 8, 7, 'Cruzados', 'http://www.planetatvonlinehd.com/stream/456', 5, '0000-00-00 00:00:00'),
(8, 8, 8, 'Coda', 'http://www.planetatvonlinehd.com/stream/457', 5, '0000-00-00 00:00:00'),
(9, 8, 9, 'Lo que pasó y lo que está pasando', 'http://www.planetatvonlinehd.com/stream/458', 5, '0000-00-00 00:00:00'),
(10, 8, 10, 'Ellos', 'http://www.planetatvonlinehd.com/stream/459', 5, '0000-00-00 00:00:00'),
(11, 8, 11, 'La Distancia', 'http://www.planetatvonlinehd.com/stream/460', 5, '0000-00-00 00:00:00'),
(12, 8, 12, 'Recuerda', 'http://www.planetatvonlinehd.com/stream/461', 5, '0000-00-00 00:00:00'),
(13, 8, 13, 'Olvida', 'http://www.planetatvonlinehd.com/stream/462', 5, '0000-00-00 00:00:00'),
(14, 8, 14, 'Desgaste', 'http://www.planetatvonlinehd.com/stream/463', 5, '0000-00-00 00:00:00'),
(15, 8, 15, 'Inténtalo', 'http://www.planetatvonlinehd.com/stream/464', 5, '0000-00-00 00:00:00'),
(16, 8, 16, 'Vence', 'http://www.planetatvonlinehd.com/stream/465', 5, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_capitulos_thewalkingdeadtemporada6`
--

CREATE TABLE `z_capitulos_thewalkingdeadtemporada6` (
  `id` int(11) UNSIGNED NOT NULL,
  `serie_id` int(11) NOT NULL,
  `cap_num` int(11) NOT NULL,
  `nombre_cap` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `temporada` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `z_capitulos_thewalkingdeadtemporada6`
--

INSERT INTO `z_capitulos_thewalkingdeadtemporada6` (`id`, `serie_id`, `cap_num`, `nombre_cap`, `url`, `temporada`, `fecha`) VALUES
(1, 9, 1, 'Primera vez, Otra vez', 'http://www.planetatvonlinehd.com/stream/466', 6, '0000-00-00 00:00:00'),
(2, 9, 2, 'JSS', 'http://www.planetatvonlinehd.com/stream/467', 6, '0000-00-00 00:00:00'),
(3, 9, 3, 'Gracias', 'http://www.planetatvonlinehd.com/stream/468', 6, '0000-00-00 00:00:00'),
(4, 9, 4, 'Aquí, No es aquí', 'http://www.planetatvonlinehd.com/stream/469', 6, '0000-00-00 00:00:00'),
(5, 9, 5, 'Ahora', 'http://www.planetatvonlinehd.com/stream/470', 6, '0000-00-00 00:00:00'),
(6, 9, 6, 'Siempre Responsable', 'http://www.planetatvonlinehd.com/stream/471', 6, '0000-00-00 00:00:00'),
(7, 9, 7, 'Cuidado', 'http://www.planetatvonlinehd.com/stream/472', 6, '0000-00-00 00:00:00'),
(8, 9, 8, 'De Principio a Fin', 'http://www.planetatvonlinehd.com/stream/473', 6, '0000-00-00 00:00:00'),
(9, 9, 9, 'Sin Salida', 'http://www.planetatvonlinehd.com/stream/474', 6, '0000-00-00 00:00:00'),
(10, 9, 10, 'El Próximo Mundo', 'http://www.planetatvonlinehd.com/stream/475', 6, '0000-00-00 00:00:00'),
(11, 9, 11, 'Desatar los Nudos', 'http://www.planetatvonlinehd.com/stream/476', 6, '0000-00-00 00:00:00'),
(12, 9, 12, 'Aún No es Mañana', 'http://www.planetatvonlinehd.com/stream/477', 6, '0000-00-00 00:00:00'),
(13, 9, 13, 'El Mismo Barco', 'http://www.planetatvonlinehd.com/stream/478', 6, '0000-00-00 00:00:00'),
(14, 9, 14, 'El Doble de lejos', 'http://www.planetatvonlinehd.com/stream/479', 6, '0000-00-00 00:00:00'),
(15, 9, 15, 'Este', 'http://www.planetatvonlinehd.com/stream/480', 6, '0000-00-00 00:00:00'),
(16, 9, 16, 'El Último Día Sobre la Tierra', 'http://www.planetatvonlinehd.com/stream/481', 6, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_capitulos_thewalkingdeadtemporada7`
--

CREATE TABLE `z_capitulos_thewalkingdeadtemporada7` (
  `id` int(11) UNSIGNED NOT NULL,
  `serie_id` int(11) NOT NULL,
  `cap_num` int(11) NOT NULL,
  `nombre_cap` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `temporada` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `z_capitulos_thewalkingdeadtemporada7`
--

INSERT INTO `z_capitulos_thewalkingdeadtemporada7` (`id`, `serie_id`, `cap_num`, `nombre_cap`, `url`, `temporada`, `fecha`) VALUES
(1, 10, 1, 'El Día Llegará cuando tú no estés', 'http://www.planetatvonlinehd.com/stream/483', 7, '0000-00-00 00:00:00'),
(2, 10, 2, 'El Pozo', 'http://www.planetatvonlinehd.com/stream/485', 7, '0000-00-00 00:00:00'),
(3, 10, 3, 'La Celda', 'http://www.planetatvonlinehd.com/stream/487', 7, '0000-00-00 00:00:00'),
(4, 10, 4, 'Servicio', 'http://www.planetatvonlinehd.com/stream/489', 7, '0000-00-00 00:00:00'),
(5, 10, 5, 'Busca Vidas', 'http://www.planetatvonlinehd.com/stream/491', 7, '0000-00-00 00:00:00'),
(6, 10, 6, 'Maldecir', 'http://www.planetatvonlinehd.com/stream/493', 7, '2017-02-26 04:27:45'),
(7, 10, 7, 'Cántame Una Canción', 'http://www.planetatvonlinehd.com/stream/495', 7, '0000-00-00 00:00:00'),
(8, 10, 8, 'Corazones Aún Latiendo', 'http://www.planetatvonlinehd.com/stream/496', 7, '2017-02-26 04:30:53'),
(9, 10, 9, 'Piedra en el camino', 'http://www.planetatvonlinehd.com/stream/501', 7, '0000-00-00 00:00:00'),
(10, 10, 10, 'Nuevos Mejores Amigos', 'http://www.planetatvonlinehd.com/stream/530', 7, '0000-00-00 00:00:00');

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
-- Indices de la tabla `z_capitulos_gameofthronestemporada1`
--
ALTER TABLE `z_capitulos_gameofthronestemporada1`
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
-- Indices de la tabla `z_capitulos_thewalkingdeadtemporada2`
--
ALTER TABLE `z_capitulos_thewalkingdeadtemporada2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serie_id` (`serie_id`);

--
-- Indices de la tabla `z_capitulos_thewalkingdeadtemporada3`
--
ALTER TABLE `z_capitulos_thewalkingdeadtemporada3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serie_id` (`serie_id`);

--
-- Indices de la tabla `z_capitulos_thewalkingdeadtemporada4`
--
ALTER TABLE `z_capitulos_thewalkingdeadtemporada4`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serie_id` (`serie_id`);

--
-- Indices de la tabla `z_capitulos_thewalkingdeadtemporada5`
--
ALTER TABLE `z_capitulos_thewalkingdeadtemporada5`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serie_id` (`serie_id`);

--
-- Indices de la tabla `z_capitulos_thewalkingdeadtemporada6`
--
ALTER TABLE `z_capitulos_thewalkingdeadtemporada6`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serie_id` (`serie_id`);

--
-- Indices de la tabla `z_capitulos_thewalkingdeadtemporada7`
--
ALTER TABLE `z_capitulos_thewalkingdeadtemporada7`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `series`
--
ALTER TABLE `series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `z_capitulos_dragonballsuper`
--
ALTER TABLE `z_capitulos_dragonballsuper`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT de la tabla `z_capitulos_gameofthronestemporada1`
--
ALTER TABLE `z_capitulos_gameofthronestemporada1`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `z_capitulos_shingekinokyojin`
--
ALTER TABLE `z_capitulos_shingekinokyojin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `z_capitulos_thewalkingdeadtemporada1`
--
ALTER TABLE `z_capitulos_thewalkingdeadtemporada1`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `z_capitulos_thewalkingdeadtemporada2`
--
ALTER TABLE `z_capitulos_thewalkingdeadtemporada2`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `z_capitulos_thewalkingdeadtemporada3`
--
ALTER TABLE `z_capitulos_thewalkingdeadtemporada3`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `z_capitulos_thewalkingdeadtemporada4`
--
ALTER TABLE `z_capitulos_thewalkingdeadtemporada4`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `z_capitulos_thewalkingdeadtemporada5`
--
ALTER TABLE `z_capitulos_thewalkingdeadtemporada5`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `z_capitulos_thewalkingdeadtemporada6`
--
ALTER TABLE `z_capitulos_thewalkingdeadtemporada6`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `z_capitulos_thewalkingdeadtemporada7`
--
ALTER TABLE `z_capitulos_thewalkingdeadtemporada7`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
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
-- Filtros para la tabla `z_capitulos_gameofthronestemporada1`
--
ALTER TABLE `z_capitulos_gameofthronestemporada1`
  ADD CONSTRAINT `z_capitulos_gameofthronestemporada1_ibfk_1` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

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

--
-- Filtros para la tabla `z_capitulos_thewalkingdeadtemporada2`
--
ALTER TABLE `z_capitulos_thewalkingdeadtemporada2`
  ADD CONSTRAINT `z_capitulos_thewalkingdeadtemporada2_ibfk_1` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `z_capitulos_thewalkingdeadtemporada3`
--
ALTER TABLE `z_capitulos_thewalkingdeadtemporada3`
  ADD CONSTRAINT `z_capitulos_thewalkingdeadtemporada3_ibfk_1` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `z_capitulos_thewalkingdeadtemporada4`
--
ALTER TABLE `z_capitulos_thewalkingdeadtemporada4`
  ADD CONSTRAINT `z_capitulos_thewalkingdeadtemporada4_ibfk_1` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `z_capitulos_thewalkingdeadtemporada5`
--
ALTER TABLE `z_capitulos_thewalkingdeadtemporada5`
  ADD CONSTRAINT `z_capitulos_thewalkingdeadtemporada5_ibfk_1` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `z_capitulos_thewalkingdeadtemporada6`
--
ALTER TABLE `z_capitulos_thewalkingdeadtemporada6`
  ADD CONSTRAINT `z_capitulos_thewalkingdeadtemporada6_ibfk_1` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `z_capitulos_thewalkingdeadtemporada7`
--
ALTER TABLE `z_capitulos_thewalkingdeadtemporada7`
  ADD CONSTRAINT `z_capitulos_thewalkingdeadtemporada7_ibfk_1` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
