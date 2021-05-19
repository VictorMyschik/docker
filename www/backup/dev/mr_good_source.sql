-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 20 2021 г., 00:34
-- Версия сервера: 8.0.25
-- Версия PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mymarket`
--

--
-- Дамп данных таблицы `mr_good_source`
--

INSERT INTO `mr_good_source` (`id`, `GoodID`, `IntId`, `StringId`, `Link`, `Name`, `Description`, `Checked`) VALUES
(1, 1, 1872716, 'za5v0083ua', 'https://catalog.onliner.by/tabletpc/lenovo/za5v0083ua', 'Onliner.by', 'Импорт', 1),
(2, 2, 1643460, 'ipad2019', 'https://catalog.onliner.by/tabletpc/apple/ipad2019', 'Onliner.by', 'Импорт', 1),
(4, 4, 1545497, 'smt515nzkdser', 'https://catalog.onliner.by/tabletpc/samsung/smt515nzkdser', 'Onliner.by', 'Импорт', 1),
(6, 6, 1808452, 'my232', 'https://catalog.onliner.by/tabletpc/apple/my232', 'Onliner.by', 'Импорт', 1),
(8, 8, 1907580, 'bah3l09', 'https://catalog.onliner.by/tabletpc/huawei/bah3l09', 'Onliner.by', 'Импорт', 1),
(9, 9, 1867135, 'x509jabq084', 'https://catalog.onliner.by/notebook/asus/x509jabq084', 'Onliner.by', 'Импорт', 1),
(10, 10, 1370793, 'mipad464gbblk', 'https://catalog.onliner.by/tabletpc/xiaomi/mipad464gbblk', 'Onliner.by', 'Импорт', 1),
(11, 11, 1918057, 'fa506iuhn216', 'https://catalog.onliner.by/notebook/asus/fa506iuhn216', 'Onliner.by', 'Импорт', 1),
(12, 12, 1283855, 'mr7f2fda', 'https://catalog.onliner.by/tabletpc/apple/mr7f2fda', 'Onliner.by', 'Импорт', 1),
(13, 13, 1808431, 'mwtj2', 'https://catalog.onliner.by/notebook/apple/mwtj2', 'Onliner.by', 'Импорт', 1),
(14, 14, 1643788, 'smt865nznaser', 'https://catalog.onliner.by/tabletpc/samsung/smt865nznaser', 'Onliner.by', 'Импорт', 1),
(15, 15, 1883326, 'fa506iial114', 'https://catalog.onliner.by/notebook/asus/fa506iial114', 'Onliner.by', 'Импорт', 1),
(16, 16, 1114782, 'agsl09sg', 'https://catalog.onliner.by/tabletpc/huawei/agsl09sg', 'Onliner.by', 'Импорт', 1),
(17, 17, 1923360, 'fx505dtbq078', 'https://catalog.onliner.by/notebook/asus/fx505dtbq078', 'Onliner.by', 'Импорт', 1),
(18, 18, 1525807, 'muqw2', 'https://catalog.onliner.by/tabletpc/apple/muqw2', 'Onliner.by', 'Импорт', 1),
(19, 19, 1702347, 'macbookpro16', 'https://catalog.onliner.by/notebook/apple/macbookpro16', 'Onliner.by', 'Импорт', 1),
(20, 20, 1899417, 'za5t0029ua', 'https://catalog.onliner.by/tabletpc/lenovo/za5t0029ua', 'Onliner.by', 'Импорт', 1),
(21, 21, 1867134, 'x509jabq010', 'https://catalog.onliner.by/notebook/asus/x509jabq010', 'Onliner.by', 'Импорт', 1),
(22, 22, 1820877, 'my2h2', 'https://catalog.onliner.by/tabletpc/apple/my2h2', 'Onliner.by', 'Импорт', 1),
(23, 23, 1116028, 'mqd32', 'https://catalog.onliner.by/notebook/apple/mqd32', 'Onliner.by', 'Импорт', 1),
(24, 24, 1860776, 'fa506iuhn200', 'https://catalog.onliner.by/notebook/asus/fa506iuhn200', 'Onliner.by', 'Импорт', 1),
(25, 25, 1525725, 'muuj2', 'https://catalog.onliner.by/tabletpc/apple/muuj2', 'Onliner.by', 'Импорт', 1),
(26, 26, 1616404, 'muhn2', 'https://catalog.onliner.by/notebook/apple/muhn2', 'Onliner.by', 'Импорт', 1),
(27, 27, 1665414, 'mw772', 'https://catalog.onliner.by/tabletpc/apple/mw772', 'Onliner.by', 'Импорт', 1),
(28, 28, 1894678, '81wb002tre', 'https://catalog.onliner.by/notebook/lenovo/81wb002tre', 'Onliner.by', 'Импорт', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
