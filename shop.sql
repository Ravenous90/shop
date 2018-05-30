-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 30 2018 г., 16:45
-- Версия сервера: 5.6.38
-- Версия PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `category_id` tinyint(2) UNSIGNED NOT NULL,
  `category_name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'mobile'),
(2, 'tablet'),
(3, 'laptop');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `picture` varchar(32) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `size` varchar(32) NOT NULL,
  `colour` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `category_id` tinyint(2) NOT NULL,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`product_id`, `picture`, `name`, `model`, `price`, `size`, `colour`, `description`, `category_id`, `comment`) VALUES
(1, 'image/1.jpg', 'Iphone', 'X', 100, '10*10*10', 'red', 'red phone', 1, NULL),
(2, 'image/2.jpg', 'Ipad', 'Pro', 120, '20*20*20', 'Yellow', 'Yellow tablet', 2, NULL),
(3, 'image/3.jpg', 'Xiomi', 'Redmi 5', 130, '10*10*10', 'Grey', 'Grey phone', 1, NULL),
(4, 'image/4.jpg', 'HP', '255', 180, '30*30*30', 'Black', 'Black notebook', 3, NULL),
(5, 'image/5.jpg', 'Samsung', 'Galaxy Tab', 125, '25*25*25', 'White', 'White tablet', 2, NULL),
(6, 'image/6.jpg', 'Lenovo', 'Idea', 160, '23*23*23', 'Pink', 'Pink laptop', 3, NULL),
(7, 'image/7.jpg', 'Iphone', '5S', 50, '12*12*12', 'Black', 'Black Iphone', 1, NULL),
(8, 'image/8.jpg', 'Nokia', '3310', 20, '6*6*6', 'Blue', 'Blue phone', 1, NULL),
(9, 'image/9.jpg', 'Samsung', 'RS', 180, '28*28*28', 'Black', 'Black laptop', 3, NULL),
(10, 'image/10.jpg', 'Dell', '18000', 170, '29*29*29', 'Grey', 'Grey laptop', 3, NULL),
(11, 'image/11.jpg', 'Jio', 'Launch', 135, '25*25*25', 'Red', 'Red lap', 3, NULL),
(12, 'image/12.jpg', 'Apple', 'Mac', 250, '15*15*15', 'Pink', 'Pink mac', 3, NULL),
(13, 'image/13.jpg', 'Acer', 'Swift', 190, '27*27*27', 'Green', 'Green laptop', 3, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `category_id` tinyint(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
