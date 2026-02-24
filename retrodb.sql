-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-02-2026 a las 16:35:34
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
-- Base de datos: `retrodb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuegos`
--

CREATE TABLE `videojuegos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fecha_lanzamiento` date DEFAULT NULL,
  `precio` decimal(5,2) DEFAULT NULL,
  `disponible` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `videojuegos`
--

INSERT INTO `videojuegos` (`id`, `nombre`, `fecha_lanzamiento`, `precio`, `disponible`) VALUES
(1, 'Super Mario Bros', '1985-09-13', 19.99, 1),
(2, 'Sonic The Hedgehog', '1991-06-23', 14.99, 1),
(3, 'Street Fighter II', '1992-03-26', 24.99, 0),
(4, 'Metal Slug', '1996-04-19', 29.99, 1),
(5, 'Castlevania', '1986-09-26', 17.99, 0),
(6, 'The Legend of Zelda', '1986-02-21', 22.99, 1),
(7, 'Mega Man 2', '1988-12-24', 18.99, 1),
(8, 'Pac-Man', '1980-05-22', 9.99, 1),
(9, 'Tetris', '1984-06-06', 8.99, 1),
(10, 'Doom', '1993-12-10', 19.99, 0),
(11, 'Quake', '1996-06-22', 21.99, 1),
(12, 'Half-Life', '1998-11-19', 24.99, 1),
(13, 'Age of Empires', '1997-10-15', 16.99, 1),
(14, 'StarCraft', '1998-03-31', 18.99, 0),
(15, 'Warcraft III', '2002-07-03', 19.99, 1),
(16, 'Diablo II', '2000-06-29', 17.99, 1),
(17, 'Counter-Strike', '2000-11-09', 14.99, 1),
(18, 'Need for Speed Underground 2', '2004-11-15', 12.99, 1),
(19, 'Gran Turismo', '1997-12-23', 15.99, 0),
(20, 'Gran Turismo 2', '1999-12-11', 16.99, 1),
(21, 'Gran Turismo 3', '2001-04-28', 17.99, 1),
(22, 'Gran Turismo 4', '2004-12-28', 19.99, 1),
(23, 'Burnout 3', '2004-09-07', 18.99, 0),
(24, 'Midnight Club 3', '2005-04-11', 19.99, 1),
(25, 'Wipeout 2097', '1996-08-30', 13.99, 1),
(26, 'Crash Bandicoot', '1996-09-09', 15.99, 1),
(27, 'Spyro The Dragon', '1998-09-09', 15.99, 1),
(28, 'Tekken 3', '1997-03-20', 18.99, 1),
(29, 'Resident Evil', '1996-03-22', 19.99, 0),
(30, 'Resident Evil 2', '1998-01-21', 21.99, 1),
(31, 'Silent Hill', '1999-02-23', 20.99, 1),
(32, 'Final Fantasy VII', '1997-01-31', 24.99, 1),
(33, 'Final Fantasy VIII', '1999-02-11', 22.99, 1),
(34, 'Final Fantasy IX', '2000-07-07', 23.99, 0),
(35, 'Kingdom Hearts', '2002-03-28', 21.99, 1),
(36, 'Shadow of the Colossus', '2005-10-18', 24.99, 1),
(37, 'ICO', '2001-09-24', 18.99, 0),
(38, 'Devil May Cry', '2001-08-23', 19.99, 1),
(39, 'God of War', '2005-03-22', 24.99, 1),
(40, 'Jak and Daxter', '2001-12-03', 18.99, 1),
(41, 'Ratchet and Clank', '2002-11-04', 18.99, 1),
(42, 'Prince of Persia Sands of Time', '2003-11-06', 17.99, 1),
(43, 'Max Payne', '2001-07-23', 16.99, 1),
(44, 'GTA III', '2001-10-22', 19.99, 0),
(45, 'GTA Vice City', '2002-10-29', 19.99, 1),
(46, 'GTA San Andreas', '2004-10-26', 22.99, 1),
(47, 'Morrowind', '2002-05-01', 21.99, 1),
(48, 'Oblivion', '2006-03-20', 24.99, 1),
(49, 'Skyrim', '2011-11-11', 29.99, 1),
(50, 'Fallout 3', '2008-10-28', 24.99, 0),
(51, 'Portal', '2007-10-10', 14.99, 1),
(52, 'Portal 2', '2011-04-19', 19.99, 1),
(53, 'Bioshock', '2007-08-21', 21.99, 1),
(54, 'Mass Effect', '2007-11-20', 19.99, 1),
(55, 'Dragon Age Origins', '2009-11-03', 18.99, 0),
(56, 'Donkey Kong Country', '1994-11-21', 18.99, 1),
(57, 'EarthBound', '1994-08-27', 24.99, 1),
(58, 'Chrono Trigger', '1995-03-11', 26.99, 0),
(59, 'Secret of Mana', '1993-08-06', 22.99, 1),
(60, 'Super Metroid', '1994-03-19', 23.99, 1),
(61, 'F-Zero', '1990-11-21', 15.99, 1),
(62, 'Pilotwings', '1990-12-21', 14.99, 1),
(63, 'Wave Race 64', '1996-09-27', 17.99, 1),
(64, '1080 Snowboarding', '1998-02-28', 16.99, 0),
(65, 'Star Fox 64', '1997-04-27', 19.99, 1),
(66, 'GoldenEye 007', '1997-08-25', 21.99, 1),
(67, 'Perfect Dark', '2000-05-22', 20.99, 1),
(68, 'Banjo-Kazooie', '1998-06-29', 18.99, 1),
(69, 'Banjo-Tooie', '2000-11-20', 19.99, 0),
(70, 'Conker Bad Fur Day', '2001-03-05', 24.99, 1),
(71, 'Paper Mario', '2000-08-11', 21.99, 1),
(72, 'Mario Kart 64', '1996-12-14', 18.99, 1),
(73, 'Diddy Kong Racing', '1997-11-14', 17.99, 1),
(74, 'Pokemon Red', '1996-02-27', 15.99, 1),
(75, 'Pokemon Blue', '1996-02-27', 15.99, 1),
(76, 'Pokemon Gold', '1999-11-21', 17.99, 1),
(77, 'Pokemon Silver', '1999-11-21', 17.99, 1),
(78, 'Advance Wars', '2001-09-10', 16.99, 0),
(79, 'Golden Sun', '2001-08-01', 18.99, 1),
(80, 'Metroid Fusion', '2002-11-17', 17.99, 1),
(81, 'Metroid Zero Mission', '2004-02-09', 18.99, 1),
(82, 'Fire Emblem', '2003-04-25', 19.99, 1),
(83, 'Fire Emblem Sacred Stones', '2004-10-07', 19.99, 0),
(84, 'WarioWare Inc', '2003-03-21', 14.99, 1),
(85, 'Mario and Luigi Superstar Saga', '2003-11-17', 18.99, 1),
(86, 'Luigis Mansion', '2001-09-14', 17.99, 1),
(87, 'Super Smash Bros Melee', '2001-11-21', 22.99, 1),
(88, 'Metroid Prime', '2002-11-17', 21.99, 1),
(89, 'Metroid Prime 2', '2004-11-15', 22.99, 0),
(90, 'Resident Evil 4', '2005-01-11', 24.99, 1),
(91, 'Fable', '2004-09-14', 19.99, 1),
(92, 'Halo Combat Evolved', '2001-11-15', 21.99, 1),
(93, 'Halo 2', '2004-11-09', 22.99, 1),
(94, 'Project Gotham Racing', '2001-11-14', 18.99, 1),
(95, 'Jet Set Radio Future', '2002-02-25', 17.99, 0),
(96, 'Shenmue', '1999-12-29', 23.99, 1),
(97, 'Shenmue II', '2001-09-06', 24.99, 1),
(98, 'Crazy Taxi', '1999-02-23', 16.99, 1),
(99, 'Virtua Fighter 4', '2001-10-12', 18.99, 1),
(100, 'SoulCalibur', '1998-07-30', 19.99, 0),
(101, 'Dead or Alive 2', '1999-10-28', 18.99, 1),
(102, 'Virtua Tennis', '1999-07-01', 15.99, 1),
(103, 'Power Stone', '1999-02-25', 17.99, 1),
(104, 'Skies of Arcadia', '2000-10-05', 24.99, 1),
(105, 'Phantasy Star Online', '2000-12-21', 19.99, 0),
(106, 'Red Faction', '2001-05-22', 18.99, 1),
(107, 'TimeSplitters 2', '2002-10-09', 19.99, 1),
(108, 'Black', '2006-02-28', 17.99, 1),
(109, 'Killzone', '2004-11-02', 18.99, 1),
(110, 'MotorStorm', '2006-12-14', 21.99, 1),
(111, 'Resistance Fall of Man', '2006-11-11', 22.99, 0),
(112, 'LittleBigPlanet', '2008-10-27', 19.99, 1),
(113, 'Uncharted Drake Fortune', '2007-11-19', 24.99, 1),
(114, 'Infamous', '2009-05-26', 22.99, 1),
(115, 'Demon Souls', '2009-02-05', 26.99, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
