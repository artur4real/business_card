-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 02 2024 г., 16:38
-- Версия сервера: 8.0.29
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `business_card`
--

-- --------------------------------------------------------

--
-- Структура таблицы `changes_to_business_cards`
--

CREATE TABLE `changes_to_business_cards` (
  `id_changes_to_business_cards` int NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `changes_to_business_cards` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `changes_to_business_cards`
--

INSERT INTO `changes_to_business_cards` (`id_changes_to_business_cards`, `price`, `changes_to_business_cards`) VALUES
(1, '0.00', 'Не требуется '),
(2, '300.00', 'У меня файл в векторном виде (pdf, ai, eps, cdr) '),
(3, '400.00', 'У меня файл в другом формате (jpg, tif, png, psd и др)');

-- --------------------------------------------------------

--
-- Структура таблицы `express_manufacturing`
--

CREATE TABLE `express_manufacturing` (
  `id_express_manufacturing` int NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `express_manufacturing` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `express_manufacturing`
--

INSERT INTO `express_manufacturing` (`id_express_manufacturing`, `price`, `express_manufacturing`) VALUES
(1, '500.00', 'Несколько дней (3-5 рабочих дней) '),
(2, '1200.00', 'В течении 24 часов'),
(3, '1800.00', 'В течении 3 часов ');

-- --------------------------------------------------------

--
-- Структура таблицы `lamination`
--

CREATE TABLE `lamination` (
  `id_lamination` int NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `lamination` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `lamination`
--

INSERT INTO `lamination` (`id_lamination`, `price`, `lamination`) VALUES
(1, '0.00', 'Без ламинации '),
(2, '500.00', 'Глянцевая 300 мкм '),
(3, '500.00', 'Матовая 30 мкм '),
(4, '500.00', 'Софттач 30 мкм (латексное покрытие) ');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id_orders` int NOT NULL,
  `order_date` date DEFAULT NULL,
  `date_of_readiness` date DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `order_number` int DEFAULT NULL,
  `order_price` decimal(10,2) DEFAULT NULL,
  `payment_state` varchar(255) DEFAULT NULL,
  `number_of_species` int DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `order_method` int DEFAULT NULL,
  `print` int DEFAULT NULL,
  `paper_type_1` int DEFAULT NULL,
  `paper_type_2` int DEFAULT NULL,
  `lamination` int DEFAULT NULL,
  `rounding_corners` int DEFAULT NULL,
  `printing_gold_silver_white_color` int DEFAULT NULL,
  `id_changes_to_business_cards` int DEFAULT NULL,
  `id_express_manufacturing` int DEFAULT NULL,
  `id_sample` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `order_method`
--

CREATE TABLE `order_method` (
  `id_order_method` int NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `order_method` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `order_method`
--

INSERT INTO `order_method` (`id_order_method`, `price`, `order_method`) VALUES
(1, '1000.00', 'Создам дизайн по шаблону онлайн'),
(2, '500.00', 'Есть готовый макет ');

-- --------------------------------------------------------

--
-- Структура таблицы `paper_type_1`
--

CREATE TABLE `paper_type_1` (
  `id_paper_type_1` int NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `paper_type_1` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `paper_type_1`
--

INSERT INTO `paper_type_1` (`id_paper_type_1`, `price`, `paper_type_1`) VALUES
(1, '500.00', 'Стандартная'),
(2, '1200.00', 'Дизайнерские и суперплотные');

-- --------------------------------------------------------

--
-- Структура таблицы `paper_type_2`
--

CREATE TABLE `paper_type_2` (
  `id_paper_type_2` int NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `paper_type_2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `paper_type_2`
--

INSERT INTO `paper_type_2` (`id_paper_type_2`, `price`, `paper_type_2`) VALUES
(1, '1000.00', 'Глянцевая мелованная 300 гр'),
(2, '1000.00', 'Матовая мелованная 300 гр');

-- --------------------------------------------------------

--
-- Структура таблицы `print`
--

CREATE TABLE `print` (
  `id_print` int NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `print` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `print`
--

INSERT INTO `print` (`id_print`, `price`, `print`) VALUES
(1, '800.00', 'Одностороння '),
(2, '1600.00', 'Двухстороння');

-- --------------------------------------------------------

--
-- Структура таблицы `printing_gold_silver_white_color`
--

CREATE TABLE `printing_gold_silver_white_color` (
  `id_printing_gold_silver_white_color` int NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `printing_gold_silver_white_color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `printing_gold_silver_white_color`
--

INSERT INTO `printing_gold_silver_white_color` (`id_printing_gold_silver_white_color`, `price`, `printing_gold_silver_white_color`) VALUES
(1, '0.00', 'Не требуется '),
(2, '1000.00', 'Печать золотом'),
(3, '800.00', 'Печать Серебром'),
(4, '650.00', 'Печать Белым Цветом');

-- --------------------------------------------------------

--
-- Структура таблицы `rounding_corners`
--

CREATE TABLE `rounding_corners` (
  `id_rounding_corners` int NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `rounding_corners` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `rounding_corners`
--

INSERT INTO `rounding_corners` (`id_rounding_corners`, `price`, `rounding_corners`) VALUES
(1, '0.00', 'Не задано'),
(2, '200.00', 'Скругление углов ');

-- --------------------------------------------------------

--
-- Структура таблицы `sample`
--

CREATE TABLE `sample` (
  `id_sample` int NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `sample` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `sample`
--

INSERT INTO `sample` (`id_sample`, `price`, `sample`) VALUES
(1, '0.00', 'Не требуется '),
(2, '1000.00', 'Пробный образец за 1000 рублей');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `changes_to_business_cards`
--
ALTER TABLE `changes_to_business_cards`
  ADD PRIMARY KEY (`id_changes_to_business_cards`);

--
-- Индексы таблицы `express_manufacturing`
--
ALTER TABLE `express_manufacturing`
  ADD PRIMARY KEY (`id_express_manufacturing`);

--
-- Индексы таблицы `lamination`
--
ALTER TABLE `lamination`
  ADD PRIMARY KEY (`id_lamination`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_orders`),
  ADD KEY `order_method` (`order_method`),
  ADD KEY `print` (`print`),
  ADD KEY `paper_type_1` (`paper_type_1`),
  ADD KEY `paper_type_2` (`paper_type_2`),
  ADD KEY `lamination` (`lamination`),
  ADD KEY `rounding_corners` (`rounding_corners`),
  ADD KEY `printing_gold_silver_white_color` (`printing_gold_silver_white_color`),
  ADD KEY `id_changes_to_business_cards` (`id_changes_to_business_cards`),
  ADD KEY `id_express_manufacturing` (`id_express_manufacturing`),
  ADD KEY `id_sample` (`id_sample`);

--
-- Индексы таблицы `order_method`
--
ALTER TABLE `order_method`
  ADD PRIMARY KEY (`id_order_method`);

--
-- Индексы таблицы `paper_type_1`
--
ALTER TABLE `paper_type_1`
  ADD PRIMARY KEY (`id_paper_type_1`);

--
-- Индексы таблицы `paper_type_2`
--
ALTER TABLE `paper_type_2`
  ADD PRIMARY KEY (`id_paper_type_2`);

--
-- Индексы таблицы `print`
--
ALTER TABLE `print`
  ADD PRIMARY KEY (`id_print`);

--
-- Индексы таблицы `printing_gold_silver_white_color`
--
ALTER TABLE `printing_gold_silver_white_color`
  ADD PRIMARY KEY (`id_printing_gold_silver_white_color`);

--
-- Индексы таблицы `rounding_corners`
--
ALTER TABLE `rounding_corners`
  ADD PRIMARY KEY (`id_rounding_corners`);

--
-- Индексы таблицы `sample`
--
ALTER TABLE `sample`
  ADD PRIMARY KEY (`id_sample`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `changes_to_business_cards`
--
ALTER TABLE `changes_to_business_cards`
  MODIFY `id_changes_to_business_cards` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `express_manufacturing`
--
ALTER TABLE `express_manufacturing`
  MODIFY `id_express_manufacturing` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `lamination`
--
ALTER TABLE `lamination`
  MODIFY `id_lamination` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id_orders` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `order_method`
--
ALTER TABLE `order_method`
  MODIFY `id_order_method` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `paper_type_1`
--
ALTER TABLE `paper_type_1`
  MODIFY `id_paper_type_1` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `paper_type_2`
--
ALTER TABLE `paper_type_2`
  MODIFY `id_paper_type_2` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `print`
--
ALTER TABLE `print`
  MODIFY `id_print` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `printing_gold_silver_white_color`
--
ALTER TABLE `printing_gold_silver_white_color`
  MODIFY `id_printing_gold_silver_white_color` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `rounding_corners`
--
ALTER TABLE `rounding_corners`
  MODIFY `id_rounding_corners` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `sample`
--
ALTER TABLE `sample`
  MODIFY `id_sample` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`order_method`) REFERENCES `order_method` (`id_order_method`),
  ADD CONSTRAINT `orders_ibfk_10` FOREIGN KEY (`id_sample`) REFERENCES `sample` (`id_sample`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`print`) REFERENCES `print` (`id_print`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`paper_type_1`) REFERENCES `paper_type_1` (`id_paper_type_1`),
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`paper_type_2`) REFERENCES `paper_type_2` (`id_paper_type_2`),
  ADD CONSTRAINT `orders_ibfk_5` FOREIGN KEY (`lamination`) REFERENCES `lamination` (`id_lamination`),
  ADD CONSTRAINT `orders_ibfk_6` FOREIGN KEY (`rounding_corners`) REFERENCES `rounding_corners` (`id_rounding_corners`),
  ADD CONSTRAINT `orders_ibfk_7` FOREIGN KEY (`printing_gold_silver_white_color`) REFERENCES `printing_gold_silver_white_color` (`id_printing_gold_silver_white_color`),
  ADD CONSTRAINT `orders_ibfk_8` FOREIGN KEY (`id_changes_to_business_cards`) REFERENCES `changes_to_business_cards` (`id_changes_to_business_cards`),
  ADD CONSTRAINT `orders_ibfk_9` FOREIGN KEY (`id_express_manufacturing`) REFERENCES `express_manufacturing` (`id_express_manufacturing`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
