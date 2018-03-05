-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 26 2018 г., 02:13
-- Версия сервера: 5.5.57
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `pokedex`
--

-- --------------------------------------------------------

--
-- Структура таблицы `pokemons`
--

CREATE TABLE `pokemons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `height` int(11) UNSIGNED NOT NULL,
  `weight` int(10) UNSIGNED NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=1170 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pokemons`
--

INSERT INTO `pokemons` (`id`, `name`, `category_id`, `brand_id`, `height`, `weight`, `photo`) VALUES
(1, 'Bulbasaur', 1, 1, 7, 69, 'bulb.png'),
(2, 'Ivysaur', 1, 1, 10, 130, 'ivysaur.png'),
(3, 'Venusaur', 1, 1, 20, 1000, 'venusaur.png'),
(4, 'Charmander', 1, 2, 6, 85, 'charmander.png'),
(5, 'Charmeleon', 1, 2, 11, 190, 'charmeleon.png'),
(6, 'Charizard', 1, 2, 17, 905, 'сharizard.png'),
(7, 'Squirtle', 1, 3, 5, 90, 'squirtle.png'),
(8, 'Wartortle', 1, 3, 10, 225, 'wartortle.png'),
(9, 'Blastoise', 1, 3, 16, 855, 'blastoise.png'),
(10, 'Caterpie', 1, 4, 3, 29, 'caterpie.png'),
(11, 'Metapod', 1, 4, 7, 99, 'metapod.png'),
(12, 'Butterfree', 1, 4, 11, 320, 'butterfree.png'),
(13, 'Weedle', 1, 5, 3, 32, 'weedle.png'),
(14, 'Kakuna', 1, 5, 6, 100, 'kakuna.png'),
(15, 'Beedrill', 1, 5, 10, 295, 'beedrill.png'),
(16, 'Pidgey', 1, 6, 3, 18, 'pidgey.png'),
(17, 'Pidgeotto', 1, 6, 11, 300, 'pidgeotto.png'),
(18, 'Pidgeot', 1, 6, 15, 395, 'pidgeot.png');

-- --------------------------------------------------------

--
-- Структура таблицы `pokemons_props`
--

CREATE TABLE `pokemons_props` (
  `id` int(10) UNSIGNED NOT NULL,
  `good_id` int(10) UNSIGNED NOT NULL,
  `prop` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=1170 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pokemons_props`
--

INSERT INTO `pokemons_props` (`id`, `good_id`, `prop`, `value`) VALUES
(1, 1, 'Base-experience', '64'),
(2, 1, 'Ability', 'Chlorophyll'),
(3, 1, 'Moves', 'Razor-wind'),
(4, 2, 'Base-experience', '120'),
(5, 2, 'Ability', 'Overgrow'),
(6, 2, 'Moves', 'Sun-moon'),
(7, 3, 'Base-experience', '236'),
(8, 3, 'Ability', 'Chlorophyll'),
(9, 3, 'Moves', 'Black-2-White-2'),
(10, 4, 'Base-experience', '62'),
(11, 4, 'Ability', 'Blaze'),
(12, 4, 'Moves', 'Mega-punch'),
(13, 5, 'Base-experience', '142'),
(14, 5, 'Ability', 'Special-defense'),
(15, 5, 'Moves', 'Firered-leafgreen'),
(16, 6, 'Base-experience', '240'),
(17, 6, 'Ability', 'Solar-power'),
(18, 6, 'Moves', 'Red-blue'),
(19, 7, 'Base-experience', '63'),
(20, 7, 'Ability', 'Rain-dish'),
(21, 7, 'Moves', 'Firered-leafgreen'),
(22, 8, 'Base-experience', '142'),
(23, 8, 'Ability', 'Torrent'),
(24, 8, 'Moves', 'Emerald'),
(25, 9, 'Base-experience', '239'),
(26, 9, 'Ability', 'Speed'),
(27, 9, 'Moves', 'Firered-leafgreen'),
(28, 10, 'Base-experience', '115'),
(29, 10, 'Ability', 'Solar-power'),
(30, 10, 'Moves', 'Red-blue'),
(31, 11, 'Base-experience', '72'),
(32, 11, 'Ability', 'Shed-skin'),
(33, 11, 'Moves', 'Heartgold-soulsilver'),
(34, 12, 'Base-experience', '64'),
(35, 12, 'Ability', 'Compound-eyes'),
(36, 12, 'Moves', 'Yellow'),
(37, 13, 'Base-experience', '39'),
(38, 13, 'Ability', 'Run-away'),
(39, 13, 'Moves', 'Omega-ruby-alpha-sapphire'),
(40, 14, 'Base-experience', '72'),
(41, 14, 'Ability', 'Shed-skin'),
(42, 14, 'Moves', 'String-shot'),
(43, 15, 'Base-experience', '178'),
(44, 15, 'Ability', 'Sniper'),
(45, 15, 'Moves', 'Swords-dance'),
(46, 16, 'Base-experience', '50'),
(47, 16, 'Ability', 'Big-pecks'),
(48, 16, 'Moves', 'Machine'),
(49, 17, 'Base-experience', '122'),
(50, 17, 'Ability', 'Tangled-feet'),
(51, 17, 'Moves', 'Razor-wind'),
(52, 18, 'Base-experience', '216'),
(53, 18, 'Ability', 'Tangled-feet'),
(54, 18, 'Moves', 'Razor-wind');

-- --------------------------------------------------------

--
-- Структура таблицы `type`
--

CREATE TABLE `type` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=2730 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `type`
--

INSERT INTO `type` (`id`, `type`) VALUES
(1, 'Poison'),
(2, 'Fire'),
(3, 'Water'),
(4, 'Bug'),
(5, 'Poison'),
(6, 'Flying');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `pokemons`
--
ALTER TABLE `pokemons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pokemons_props`
--
ALTER TABLE `pokemons_props`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `pokemons`
--
ALTER TABLE `pokemons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблицы `pokemons_props`
--
ALTER TABLE `pokemons_props`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT для таблицы `type`
--
ALTER TABLE `type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
