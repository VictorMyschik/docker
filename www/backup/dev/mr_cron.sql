INSERT INTO `mr_cron` (`id`, `Title`, `Interval`, `LastWork`, `IsActive`, `Description`, `IsRunNow`) VALUES
(1, 'Обновление цен onliner.by', 10800, '2021-05-19 21:56:01', 1, 'Только тех товаров, которые есть на складе', 0),
(2, 'Обновление курсов валют', 36000, '2021-05-19 18:32:01', 1, 'С сайта нацбанка', 0),
(3, 'Обновление таблицы соответствий', 82800, '2020-12-29 16:15:02', 0, NULL, 0),
(4, 'Cron: запуск поиска новых товаров', 43200, '2021-05-19 13:39:01', 1, NULL, 0),
(5, 'Cron: запуск очистки старого лога', 86340, '2021-05-19 10:10:01', 1, 'Удалить старые записи', 0),
(6, 'Cron: Обновления картинок', 1800, '2020-11-07 19:41:01', 0, 'По 10000 товаров каждые ... минут', 0),
(7, 'Cron: обновление банка данных слов', 36000, '2020-12-15 17:21:01', 0, 'Пока не запускать! Тестирую', 0),
(9, 'Инвентаризации картинок', 72000, '2020-12-15 17:22:01', 0, 'Сверяет данные на сервере и в БД, при расхождении - удаляет из БД', 0);