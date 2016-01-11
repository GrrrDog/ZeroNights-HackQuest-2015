-- --------------------------------------------------------
-- Хост:                         192.168.182.151
-- Версия сервера:               5.5.46-0ubuntu0.14.04.2 - (Ubuntu)
-- ОС Сервера:                   debian-linux-gnu
-- HeidiSQL Версия:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица webapp.developers
CREATE TABLE IF NOT EXISTS `developers` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы webapp.developers: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `developers` DISABLE KEYS */;
INSERT INTO `developers` (`id`, `username`, `password`) VALUES
	(0, 'developer_Vasia', 'fpBA7BPlS8wJ'),
	(1, 'developer_Jorik', '5FftW6Aua2ef');
/*!40000 ALTER TABLE `developers` ENABLE KEYS */;


-- Дамп структуры для таблица webapp.goods
CREATE TABLE IF NOT EXISTS `goods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы webapp.goods: ~8 rows (приблизительно)
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` (`id`, `name`, `price`) VALUES
	(0, 'potato', 40),
	(1, 'apple', 100),
	(2, 'carrot', 25),
	(3, 'tomato', 120),
	(4, 'pear', 70),
	(5, 'tomato', 110),
	(12, 'pear', 80),
	(13, 'cucumber', 80);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;


-- Дамп структуры для таблица webapp.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` text NOT NULL,
  `password` text NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы webapp.users: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`) VALUES
	(2, 'user', 'Ku34NMwqCoPE'),
	(10, 'user2', 'Ig3EcbS6A9DO');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
