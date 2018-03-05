SET NAMES 'utf8';

--
-- Описание для таблицы type
--
DROP TABLE IF EXISTS type;
CREATE TABLE type (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  brand VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 7
AVG_ROW_LENGTH = 2730
CHARACTER SET utf8
COLLATE utf8_general_ci;

-- 
-- Вывод данных для таблицы type
--
INSERT INTO type VALUES
(1, 'Poison'),
(2, 'Fire'),
(3, 'Acer'),
(4, 'Lenovo'),
(5, 'Asus'),
(6, 'Gigabyte');
