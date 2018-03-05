SET NAMES 'utf8';

--
-- Описание для таблицы pokemons
--
DROP TABLE IF EXISTS pokemons;
CREATE TABLE pokemons (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  category_id INT(10) UNSIGNED NOT NULL,
  brand_id INT(10) UNSIGNED NOT NULL,
  height INT(11) UNSIGNED NOT NULL,
  weight INT(11) UNSIGNED NOT NULL DEFAULT 0,
  photo VARCHAR(255) NOT NULL
)
ENGINE = INNODB
AUTO_INCREMENT = 15
AVG_ROW_LENGTH = 1170
CHARACTER SET utf8
COLLATE utf8_general_ci;

-- 
-- Вывод данных для таблицы pokemons
--
INSERT INTO pokemons VALUES
(1, 'Bulbasaur', 1, 1, 7, 69, 'bulb.png'),
(2, 'Ivysaur', 1, 1, 10, 130, 'ivysaur.png'),
(3, 'Venusaur', 1, 1, 20, 1000, 'venusaur.png'),
(4, 'Charmander', 1, 2, 6, 85, 'charmander.png'),
(5, 'Charmeleon', 1, 2, 11, 190, 'charmeleon.png'),
(6, 'Charizard', 1, 2, 17, 905, 'charizard.png'),
(7, 'Squirtle', 1, 3, 5, 90, 'squirtle.png'),
(8, 'Wartortle', 1, 3, 10, 225, 'wartortle.png'),
(9, 'Blastoise', 1, 3, 16, 855, 'blastoise.png'),
(10, 'Caterpie', 1, 4, 3, 29, 'caterpie.png'),
(11, 'Metapod', 1, 4, 7, 99, 'metapod.png'),
(12, 'Butterfree', 4, 4, 11, 320, 'butterfree.png'),
(13, 'Weedle', 1, 5, 3, 32, 'weedle.png'),
(14, 'Kakuna', 1, 5, 6, 100, 'kakuna.png'),
(15, 'Beedrill', 1, 5, 10, 295, 'beedrill.png'),
(16, 'Pidgey', 1, 6, 3, 18, 'pidgey.png'),
(17, 'Pidgeotto', 1, 6, 11, 300, 'pidgeotto.png'),
(18, 'Pidgeot', 1, 6, 15, 395, 'pidgeot.png');

