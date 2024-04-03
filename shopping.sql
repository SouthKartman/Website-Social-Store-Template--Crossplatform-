-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 08 2023 г., 09:26
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shopping`
--

DELIMITER $$
--
-- Процедуры
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getcat` (IN `cid` INT)   SELECT * FROM categories WHERE cat_id=cid$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Печать', 'Test anuj', '2023-05-10 19:17:37', ''),
(4, 'Услуги\r\n', 'Electronic Products', '2023-05-10 19:17:37', ''),
(5, 'Фототехника', 'test', '2023-05-10 19:20:17', ''),
(6, 'Оцифровка ', 'Fashion', '2023-05-10 19:20:23', ''),
(7, 'Ноутбуки', 'Данная категория созадна для ноутбуков', '2023-04-27 09:14:23', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `meneger`
--

CREATE TABLE `meneger` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `meneger`
--

INSERT INTO `meneger` (`id`, `username`, `password`, `creationDate`) VALUES
(1, 'Meneger', '4541E0D4F73BEF180C0853E372F75466', '2023-05-05 20:01:27'),
(2, 'Urvancev', '0EE9DCBECC7BEC0EE9D6732FBB126DC0', '2023-05-10 07:52:39'),
(3, 'NonPhixed', '4541E0D4F73BEF180C0853E372F75466', '2023-06-08 07:22:23');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(7, 4, '2', 2, '2023-04-08 05:40:53', 'COD', NULL),
(8, 5, '1', 2, '2023-04-09 08:44:59', 'Debit / Credit card', NULL),
(10, 13, '22', 1, '2023-05-03 07:47:37', 'Internet Banking', NULL),
(11, 13, '22', 2, '2023-05-05 09:49:13', 'Debit / Credit card', NULL),
(12, 13, '24', 1, '2023-05-09 23:49:20', 'Internet Banking', NULL),
(13, 13, '22', 6, '2023-05-10 08:00:43', 'COD', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` longtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(9, 22, 4, 3, 5, 'SocialBeach', '22', 'Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд Звёзд', '2023-04-27 11:20:51'),
(11, 22, 1, 2, 1, 'Артем', 'Балушкин лох', 'Так и есть', '2023-05-05 09:47:10'),
(12, 22, 5, 3, 4, 'F', '22', 'Люблю своего кота', '2023-05-10 07:59:04');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(22, 5, 13, 'Canon EOS R6 Kit RF 24-105mm IS STM черная', 'Canon', 215000, 218000, '<span style=\"color: rgb(51, 51, 51); font-family: &quot;PT Sans&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Беззеркальная камера Canon EOS R6 Kit RF 24-105mm IS STM с матрицей CMOS (разрешение 20.1 Мп) обеспечивает высокую реалистичность при создании фотографий и видеороликов в различных условиях. Камера изготовлена в прочном корпусе из магниевого сплава и поликарбоната с влагозащищенной конструкцией. Для просмотра и настройки различных параметров в процессе съемке установлен сенсорный дисплей диагональю 3 дюйма.</span><br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: &quot;PT Sans&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;PT Sans&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">В наборе с Canon EOS R6 поставляется объектив с регулировкой фокусного расстояния в пределах 24-105 мм для решения различных творческих задач. В камере имеются востребованные интерфейсы, включая модули беспроводной связи Wi-Fi и Bluetooth, а также навигацию GPS. Энергоемкий аккумулятор гарантирует создание до 510 фотографий на одном заряде.</span><br>', '7.png', '5.png', '4.png', 2000, 'In Stock', '2023-04-27 10:44:41', NULL),
(23, 7, 15, 'Acer Aspire 7 Intel i5 10300h + GeForce GTX 1650 ', 'Acer', 75000, 75000, '<span style=\"color: rgb(51, 51, 51); font-family: &quot;PT Sans&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Ноутбук Acer Aspire 7 A715-42G-R048 призван изменить представление о скорости работы в требовательных программах. Спрятанные в корпусе 6-ядерный процессор AMD Ryzen 5 5500U и графическое ядро GeForce GTX 1650 помогут забыть о промедлениях, которыми сопровождался запуск приложений и обработка материалов. Гарантом стабильной скорости при подключении к загруженным сетям является модуль WI-FI 6 (802.11ax).</span><br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: &quot;PT Sans&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;PT Sans&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Ноутбук Acer Aspire 7 A715-42G-R048 оснащен 15.6-дюймовым экраном с узкой рамкой, которая расширяет полезную площадь. Вы сможете погрузиться в увлекательный мир игр и переместиться на место героев фильма. Слабое внешнее освещение не будет сказываться на личной работоспособности. Удобной эксплуатации устройства способствует встроенная подсветка каждой клавиши.</span><br>', '11.png', '12.png', '11.png', 0, 'Нет в наличии', '2023-04-27 12:05:09', NULL),
(24, 5, 11, 'Tamron 18-70 f 2.8 Nikon bayonet', 'Tamron', 60000, 60000, '<span style=\"color: rgb(51, 51, 51); font-family: &quot;PT Root UI&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 18px;\">Объектив Tamron 11-20mm f/2.8 Di III-A2 RXD подходит для беззеркальных камер Sony E. Серхширокоугольный зум позволяет делать фотографии высокой четкости даже в темноте, при этом снижен эффект дрожания рук. Специальные элементы подавляют оптические аберрации, поэтому получаются качественные изображения в высоком разрешении при любых условиях съемки.</span><br style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: &quot;PT Root UI&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 18px;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;PT Root UI&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 18px;\">Объектив Tamron 11-20mm f/2.8 Di III-A2 RXD имеет небольшой вес и размер, что облегчает эксплуатацию и хранение. Модель имеет высокую светосилу и подходит для ежедневной съемки в помещениях или на улице. Делать кадры можно практически вплотную к объекту, минимальное фокусное расстояние составляет 11-20 мм. При широкоугольной съемке с оптимальным приближением можно получить четкие микроснимки с небольшим размытием по краям. Фторсодержащее покрытие и влагостойкий корпус надежно защищают элементы от внешнего воздействия.</span>', 'DSC_0523.JPG', 'DSC_0518.JPG', 'DSC_0520.JPG', 0, 'In Stock', '2023-05-02 08:37:47', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(9, 5, 'Пленка', '2017-02-04 04:36:45', '27-04-2023 02:49:05 PM'),
(10, 5, 'Батареи', '2017-02-04 04:37:02', '27-04-2023 02:49:32 PM'),
(11, 5, 'Обьективы', '2017-02-04 04:37:51', '27-04-2023 02:49:48 PM'),
(13, 5, 'Фотоаппараты', '2023-04-27 09:20:47', '27-04-2023 02:51:15 PM'),
(15, 7, 'Acer', '2023-04-27 12:03:30', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(25, 'hfhdvdffvv@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-08 05:39:56', NULL, 1),
(26, 'hfhdvdfvv@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-09 08:43:32', NULL, 0),
(27, 'hfhdvdfvv@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-09 08:43:54', NULL, 0),
(28, 'hfhdvdffvv@yandex.ru', 0x3a3a3100000000000000000000000000, '2023-04-09 08:44:46', NULL, 1),
(29, 'test@123', 0x3a3a3100000000000000000000000000, '2023-04-11 07:41:00', NULL, 0),
(30, 'test@123.com', 0x3a3a3100000000000000000000000000, '2023-04-11 07:41:13', NULL, 0),
(31, 'Pavel@Pavel', 0x3a3a3100000000000000000000000000, '2023-04-25 08:47:41', '25-04-2023 02:27:14 PM', 1),
(32, 'Admin@Admin', 0x3a3a3100000000000000000000000000, '2023-04-27 08:33:01', NULL, 1),
(33, 'Admin@Admin', 0x3a3a3100000000000000000000000000, '2023-04-27 11:46:40', NULL, 0),
(34, 'Pavel@Pavel', 0x3a3a3100000000000000000000000000, '2023-04-27 11:46:54', '27-04-2023 06:01:02 PM', 1),
(35, 'Pavel@Pavel', 0x3a3a3100000000000000000000000000, '2023-04-27 12:42:25', '27-04-2023 06:12:29 PM', 1),
(36, 'Pavel@Pavel', 0x3a3a3100000000000000000000000000, '2023-04-27 12:55:29', '27-04-2023 06:36:30 PM', 1),
(37, 'Pavel@Pavel', 0x3a3a3100000000000000000000000000, '2023-04-27 13:08:20', '27-04-2023 06:41:18 PM', 1),
(38, 'Pavel@Pavel', 0x3a3a3100000000000000000000000000, '2023-04-27 13:11:21', NULL, 1),
(39, 'Pavel@Pavel', 0x3a3a3100000000000000000000000000, '2023-05-03 07:47:13', NULL, 1),
(40, 'hfhdvdffvv@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-05 09:47:39', NULL, 0),
(41, 'hfhdvdffvv@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-05 09:47:45', NULL, 0),
(42, 'Pavel@Pavel', 0x3a3a3100000000000000000000000000, '2023-05-05 09:48:10', NULL, 1),
(43, 'Pavel@Pavel', 0x3a3a3100000000000000000000000000, '2023-05-05 11:29:17', NULL, 1),
(44, 'Pavel@Pavel', 0x3a3a3100000000000000000000000000, '2023-05-07 08:50:35', NULL, 1),
(45, 'Pavel@Pavel', 0x3a3a3100000000000000000000000000, '2023-05-09 23:48:04', NULL, 1),
(46, 'Pavel@Pavel', 0x3a3a3100000000000000000000000000, '2023-05-10 08:00:03', NULL, 1),
(47, 'Pavel@Pavel', 0x3a3a3100000000000000000000000000, '2023-05-11 09:22:54', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(13, 'Pavel', 'Pavel@Pavel', 82192877829, '4541E0D4F73BEF180C0853E372F75466', 'Mira str.,4/2,ap.47', 'Nizhegorodskaya', 'Arzamas', 607233, 'Mira str.,4/2,ap.47', 'Nizhegorodskaya', 'Arzamas', 607233, '2023-04-25 08:30:27', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `meneger`
--
ALTER TABLE `meneger`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `meneger`
--
ALTER TABLE `meneger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
