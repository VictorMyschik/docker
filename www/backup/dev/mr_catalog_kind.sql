-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 19 2021 г., 23:30
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
-- Дамп данных таблицы `mr_catalog_kind`
--

INSERT INTO `mr_catalog_kind` (`id`, `CategoryID`, `Name`, `IsActive`, `JsonLink`) VALUES
(1, 1, 'Ноутбуки', 1, 'https://catalog.onliner.by/sdapi/catalog.api/search/notebook?page=1'),
(2, 1, 'Планшеты', 1, 'https://catalog.onliner.by/sdapi/catalog.api/search/tabletpc?page=1'),
(3, 1, 'Моноблоки', 1, 'https://catalog.onliner.by/sdapi/catalog.api/search/monoblock?page=1'),
(4, 1, 'Компьютеры', 1, 'https://catalog.onliner.by/sdapi/catalog.api/search/desktoppc?page=1'),
(5, 1, 'Мониторы', 1, 'https://catalog.onliner.by/sdapi/catalog.api/search/display?page=1'),
(6, 1, 'Видеокарты', 1, 'https://catalog.onliner.by/sdapi/catalog.api/search/videocard?page=1'),
(7, 1, 'Процессоры', 1, 'https://catalog.onliner.by/sdapi/catalog.api/search/cpu?page=1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
