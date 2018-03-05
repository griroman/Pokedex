SET NAMES 'utf8';

--
-- Описание для таблицы pokemons)_props
--
CREATE TABLE pokemons)_props (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  good_id INT(10) UNSIGNED NOT NULL,
  prop VARCHAR(255) NOT NULL,
  value VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 16
AVG_ROW_LENGTH = 1170
CHARACTER SET utf8
COLLATE utf8_general_ci;

-- 
-- Вывод данных для таблицы pokemons)_props
--
INSERT INTO pokemons)_props VALUES
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
(35, 12, 'Ability', 'Compound-eypokemons'),
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
