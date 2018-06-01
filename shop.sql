-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 01 2018 г., 17:18
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
(1, 'phone'),
(2, 'tablet'),
(3, 'laptop');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `picture` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `size` varchar(32) DEFAULT NULL,
  `colour` varchar(32) DEFAULT NULL,
  `description` text,
  `category_id` tinyint(2) UNSIGNED DEFAULT NULL,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`product_id`, `picture`, `name`, `model`, `price`, `size`, `colour`, `description`, `category_id`, `comment`) VALUES
(2, 'image/29f28ee97994cc2fa1b697c4146ef765.jpg', '   Apple iPhone X 256Gb Silver   ', NULL, '35 999 грн  ', NULL, NULL, NULL, 1, NULL),
(3, 'image/c2c852b97e18a20d551b1a43f82280ba.jpg', '   Apple iPhone X 256Gb Space Gray   ', NULL, '35 999 грн  ', NULL, NULL, NULL, 1, NULL),
(4, 'image/e07b03cd837b3fd8b454e00461f9ce9a.jpg', '   Apple iPhone X 64Gb Silver   ', NULL, '33 999 грн  ', NULL, NULL, NULL, 1, NULL),
(5, 'image/a3a4f554fdfb30ce9426f08054fcad35.jpg', '   Apple iPhone X 64Gb Space Gray   ', NULL, '33 999 грн  ', NULL, NULL, NULL, 1, NULL),
(6, 'image/f5d1c1fa74b9124b789fb651eea04050.jpg', '   Google Pixel 2 XL 64Gb (Just Black)   ', '6.0\" Quad HD | 8 ядер | 2.35 GHz | 12.2 Мп', '27 499 грн  ', NULL, NULL, NULL, 1, NULL),
(7, 'image/f8c1b88c463c85d84dbc60a479c480fe.jpg', '   Google Pixel 2 XL 64Gb (Black&White)   ', '6.0\" Quad HD | 8 ядер | 2.35 GHz | 12.2 Мп', '32 999 грн  ', NULL, NULL, NULL, 1, NULL),
(8, 'image/344316b5d20132c2e351aed6eba73596.jpg', '   Samsung Galaxy S9+ (Black)   ', '6.2\" Quad HD | 8 ядер | 2.9 GHz | 12 Мп + 12 Мп', '31 999 грн  ', NULL, NULL, NULL, 1, NULL),
(9, 'image/0ef86301a1dba695b2c23255b39c09f7.jpg', '   Samsung Galaxy S9+ (Grey)   ', '6.2\" Quad HD | 8 ядер | 2.9 GHz | 12 Мп + 12 Мп', '31 999 грн  ', NULL, NULL, NULL, 1, NULL),
(10, 'image/e8b25bc218ee05ad39f7bf2d4aafce60.jpg', '   Samsung Galaxy S9+ (Purple)   ', '6.2\" Quad HD | 8 ядер | 2.9 GHz | 12 Мп + 12 Мп', '31 999 грн  ', NULL, NULL, NULL, 1, NULL),
(11, 'image/b8461d2715da5351b9c275a20a6b9ad1.jpg', '   Apple iPhone 8 Plus   ', NULL, '29 999 грн  ', NULL, NULL, NULL, 1, NULL),
(12, 'image/63a3e268e1a06563a8527d82d73dac64.jpg', '   Apple iPhone 8 Plus   ', NULL, '29 999 грн  ', NULL, NULL, NULL, 1, NULL),
(13, 'image/0b8469cc04f977790ea252c83688659a.jpg', '   Apple iPhone 8 Plus   ', NULL, '29 999 грн  ', NULL, NULL, NULL, 1, NULL),
(14, 'image/f11c90c82598793ac587f6ca90ca5a46.jpg', '   Apple iPhone 8 Plus   ', NULL, '29 999 грн  ', NULL, NULL, NULL, 1, NULL),
(15, 'image/522aa8a0149196fca37cf95e15207fdd.jpg', '   Samsung Galaxy Note 8 6/64GB Black (SM-N950FZKDSEK)   ', '6.3\" Quad HD+ | 8 ядер | 2.3 + 1.7 GHz | 12 Мп + 12 Мп', '26 999 грн  ', NULL, NULL, NULL, 1, NULL),
(16, 'image/7a3d3596ed8b0a197b503dfed72ab326.jpg', '   Samsung Galaxy Note 8 6/64GB Orchid Gray (SM-N950FZVDSEK)   ', '6.3\" Quad HD+ | 8 ядер | 2.3 + 1.7 GHz | 12 Мп + 12 Мп', '26 999 грн  ', NULL, NULL, NULL, 1, NULL),
(17, 'image/c3ef8d1e9dc45494524a655321d4fe8e.jpg', '   Huawei P20 Pro 6/128GB Black (CLT-L29)   ', '6.1\" FULL HD | 8 ядер | 1.8 GHz | 40 Мп + 20 Мп + 8 Мп', '29 999 грн  ', NULL, NULL, NULL, 1, NULL),
(18, 'image/f17b37e2c49a36204cb95f6b5bbca2b9.jpg', '   Huawei P20 Pro 6/128GB Twilight (CLT-L29)   ', '6.1\" FULL HD | 8 ядер | 1.8 GHz | 40 Мп + 20 Мп + 8 Мп', '29 999 грн  ', NULL, NULL, NULL, 1, NULL),
(19, 'image/82e040c1b22dd1b8896d1b7c633de054.jpg', '   Google Pixel 2 128Gb (Kinda Blue)   ', NULL, '27 999 грн  ', NULL, NULL, NULL, 1, NULL),
(20, 'image/cbaa3f1b1c82aba572b795a3fce124ec.jpg', '   Samsung Galaxy S9 (Black)   ', '5.8\" Quad HD | 8 ядер | 2.9 GHz | 12 Мп', '27 999 грн  ', NULL, NULL, NULL, 1, NULL),
(21, 'image/d16862fc5efa2e04fff3c35a70e731a8.jpg', '   Samsung Galaxy S9 (Black)   ', '5.8\" Quad HD | 8 ядер | 2.9 GHz | 12 Мп', '27 999 грн  ', NULL, NULL, NULL, 1, NULL),
(22, 'image/e133d65fe7953bed4a6ba767e729e412.jpg', '   Samsung Galaxy S9 (Purple)   ', '5.8\" Quad HD | 8 ядер | 2.9 GHz | 12 Мп', '27 999 грн  ', NULL, NULL, NULL, 1, NULL),
(23, 'image/c32c3a41b5384c5c2309e1561ab32213.jpg', '   Apple iPhone 8 Plus   ', NULL, '25 999 грн  ', NULL, NULL, NULL, 1, NULL),
(24, 'image/f6c915c58e69bea7fefd8a1b984303b4.jpg', '   Apple iPhone 8 Plus   ', NULL, '25 999 грн  ', NULL, NULL, NULL, 1, NULL),
(25, 'image/03e91d624d868f2a28226ff9c4155216.jpg', '   Apple iPhone 8 Plus   ', NULL, '25 999 грн  ', NULL, NULL, NULL, 1, NULL),
(26, 'image/985fabbbfaa7e8f8b85c43bb23025b96.jpg', '   Apple iPhone 8 Plus   ', NULL, '25 999 грн  ', NULL, NULL, NULL, 1, NULL),
(27, 'image/4cecd26d816acec638c2adef6f73e7f8.jpg', '   Samsung Galaxy S8+ (Midnight Black)   ', '6.2\" Quad HD | 8 ядер | 2.3 GHz | 12 Мп', '23 499 грн  ', NULL, NULL, NULL, 1, NULL),
(28, 'image/d54fa89910805cf60b07ddf2da23c986.jpg', '   Samsung Galaxy S8+ (Maple Gold)   ', '6.2\" Quad HD | 8 ядер | 2.3 GHz | 12 Мп', '23 499 грн  ', NULL, NULL, NULL, 1, NULL),
(29, 'image/3acda969c0dacfb55f2674a9f78b243f.jpg', '   Samsung Galaxy S8+ (Orchid Gray)   ', '6.2\" Quad HD | 8 ядер | 2.3 GHz | 12 Мп', '23 499 грн  ', NULL, NULL, NULL, 1, NULL),
(30, 'image/244f36dc67304c705537dff7a1302f67.jpg', '   Apple iPhone 8   ', NULL, '25 999 грн  ', NULL, NULL, NULL, 1, NULL),
(31, 'image/018f449aa461eb3036ced30fc75067f3.jpg', '   Apple iPhone 8   ', NULL, '25 999 грн  ', NULL, NULL, NULL, 1, NULL),
(32, 'image/78b416ee57860c653800efba4bc8be83.jpg', '   Apple iPhone 8   ', NULL, '25 999 грн  ', NULL, NULL, NULL, 1, NULL),
(33, 'image/e7fddf671fd6d4ff17dd2915c4b1e38d.jpg', '   Google Pixel 2 64Gb (Clearly White)   ', NULL, '25 999 грн  ', NULL, NULL, NULL, 1, NULL),
(34, 'image/30026db0310eaba1b26b0510c0def35e.jpg', '   Google Pixel 2 64Gb (Kinda Blue)   ', NULL, '25 999 грн  ', NULL, NULL, NULL, 1, NULL),
(35, 'image/c57d8e3ed2b1d4ab3045a0d28aeb728a.jpg', '   HTC U11+ (Ceramic Black)   ', '6.0\" Quad HD+ | 8 ядер | 2.45GHz | 12 Мп', '25 999 грн  ', NULL, NULL, NULL, 1, NULL),
(36, 'image/c91a5705ec516d76dfe634b5fdd9d047.jpg', '   Apple iPhone 8   ', NULL, '25 999 грн  ', NULL, NULL, NULL, 1, NULL),
(37, 'image/599d3c2804000dbe2428301b370d9d05.jpg', '   iPhone 7 Plus (Jet Black)   ', NULL, '23 499 грн  ', NULL, NULL, NULL, 1, NULL),
(38, 'image/3f5b4e3c22b705f340c47e1a249ae52a.jpg', '   Huawei Mate 10 Pro 6/128Gb Mokka (BLA-L29)   ', '6.0\" FHD+ | 8 ядер | 2.4 + 1.8 GHz | 20 Мп + 12 Мп', '24 999 грн  ', NULL, NULL, NULL, 1, NULL),
(39, 'image/e582ce462d02bd86a10d0f1711d930f1.jpg', '   LG V30+ 4/128Gb Aurora Black (LGH930DS)   ', '6.0\" Quad HD+ | 8 ядер | 2.45GHz | 16 Мп + 13 Мп', '24 999 грн  ', NULL, NULL, NULL, 1, NULL),
(40, 'image/ebeb93865c0e1bcbbb97c1e7c1a97dac.jpg', '   LG V30+ 4/128Gb Morocсan Blue (H930DS.ACISBL)   ', '6.0\" Quad HD+ | 8 ядер | 2.45GHz | 16 Мп + 13 Мп', '24 999 грн  ', NULL, NULL, NULL, 1, NULL),
(41, 'image/4258e66fa06a664a8408fc5554bb65be.jpg', '   LG V30+ 4/128Gb Violet (LGH930DS)   ', '6.0\" Quad HD+ | 8 ядер | 2.45GHz | 16 Мп + 13 Мп', '24 999 грн  ', NULL, NULL, NULL, 1, NULL),
(42, 'image/e16b130647759872d86b79fd6e132701.jpg', '   LG V30+ 4/128Gb Raspberry Rose (H930DS.ACISVI)   ', '6.0\" Quad HD+ | 8 ядер | 2.45GHz | 16 Мп + 13 Мп', '24 999 грн  ', NULL, NULL, NULL, 1, NULL),
(43, 'image/cbdce77c036b35bb505caf5bf0129638.jpg', '   Sony Xperia XZ2 DS 4/64GB Black (H8266)   ', '5.7\" FHD+ | 8 ядер | 2.8 GHz | 19 Мп', '24 999 грн  ', NULL, NULL, NULL, 1, NULL),
(44, 'image/28549b4b8468a9dfc80b7c4cc49e933e.jpg', '   Sony Xperia XZ2 DS 4/64GB Deep Green (H8266)   ', '5.7\" FHD+ | 8 ядер | 2.8 GHz | 19 Мп', '24 999 грн  ', NULL, NULL, NULL, 1, NULL),
(45, 'image/cec3f4193bc8c9fef0bc7d626bd1f2bf.jpg', '   Sony Xperia XZ2 DS 4/64GB Pink (H8266)   ', '5.7\" FHD+ | 8 ядер | 2.8 GHz | 19 Мп', '24 999 грн  ', NULL, NULL, NULL, 1, NULL),
(46, 'image/a15c502a229ebdaff2dfc8f4f4426fbc.jpg', '   Sony Xperia XZ2 DS 4/64GB Silver (H8266)   ', '5.7\" FHD+ | 8 ядер | 2.8 GHz | 19 Мп', '24 999 грн  ', NULL, NULL, NULL, 1, NULL),
(47, 'image/d959c849fbb57374ece5911be55a0692.jpg', '   Google Pixel 2 128Gb (Just Black)   ', NULL, '22 999 грн  ', NULL, NULL, NULL, 1, NULL),
(48, 'image/49ffbf40ec479518c24e393fac8d5efe.jpg', '   Google Pixel 2 128Gb (Clearly White)   ', NULL, '22 999 грн  ', NULL, NULL, NULL, 1, NULL),
(49, 'image/cfd6581f44ba683b9044d3f5a43cba72.jpg', '   OnePlus 6 8/256Gb Midnight Black   ', NULL, '23 999 грн  ', NULL, NULL, NULL, 1, NULL),
(50, 'image/305611f1e0f0b139608789a00b660e08.jpg', '   Apple iPhone 8   ', NULL, '21 999 грн  ', NULL, NULL, NULL, 1, NULL),
(51, 'image/8085767d9dd259124e25641f6990acdf.jpg', '   Apple iPhone 8   ', NULL, '21 999 грн  ', NULL, NULL, NULL, 1, NULL),
(52, 'image/48f4440d953489d36283c04b17d3325c.jpg', '   Apple iPhone 8   ', NULL, '21 999 грн  ', NULL, NULL, NULL, 1, NULL),
(53, 'image/6dde45d1d7fb5e449ed7f2168471ea77.jpg', '   Apple iPhone 8   ', NULL, '21 999 грн  ', NULL, NULL, NULL, 1, NULL),
(54, 'image/e68d1a41da61b56d4f7e3708facfa034.jpg', '   iPhone 7 Plus (Black)   ', NULL, '20 999 грн  ', NULL, NULL, NULL, 1, NULL),
(55, 'image/82453a20471b60fbc797802c789415c5.jpg', '   iPhone 7 Plus (Silver)   ', NULL, '20 999 грн  ', NULL, NULL, NULL, 1, NULL),
(56, 'image/1290fbf8284d360077e0a2a55d6e0e0b.jpg', '   iPhone 7 Plus (Gold)   ', NULL, '20 999 грн  ', NULL, NULL, NULL, 1, NULL),
(57, 'image/1d26a8e2cc518e0a000a5dffb806524b.jpg', '   iPhone 7 Plus (Rose Gold)   ', NULL, '20 999 грн  ', NULL, NULL, NULL, 1, NULL),
(58, 'image/1cb6461feb8449fd6aeeb8defe696785.jpg', '   Samsung Galaxy S8 (Midnight Black)   ', '5.8\" Quad HD | 8 ядер | 2.3 GHz | 12 Мп', '20 499 грн  ', NULL, NULL, NULL, 1, NULL),
(59, 'image/5949546c596f6bed8d9d2b08c8310e76.jpg', '   Samsung Galaxy S8 (Maple Gold)   ', '5.8\" Quad HD | 8 ядер | 2.3 GHz | 12 Мп', '20 499 грн  ', NULL, NULL, NULL, 1, NULL),
(60, 'image/53ee5b244763fa9fb600e2ffc105e407.jpg', '   Samsung Galaxy S8 (Orchid Gray)   ', '5.8\" Quad HD | 8 ядер | 2.3 GHz | 12 Мп', '20 499 грн  ', NULL, NULL, NULL, 1, NULL),
(61, 'image/c80f899c44fc5546e313a58dbdb2de46.jpg', '   iPhone 7 Plus (Jet Black)   ', NULL, '20 999 грн  ', NULL, NULL, NULL, 1, NULL),
(62, 'image/84ae84e8f623d6f685b6faa575a57b57.jpg', '   HTC U11+ (Ceramic Black)   ', '6.0\" Quad HD+ | 8 ядер | 2.45GHz | 12 Мп', '21 999 грн  ', NULL, NULL, NULL, 1, NULL),
(63, 'image/48f64bba3244adb37c950a4a0c0591e8.jpg', '   Samsung Galaxy S8 (Red)   ', '5.8\" Quad HD | 8 ядер | 2.3 GHz | 12 Мп', '20 499 грн  ', NULL, NULL, NULL, 1, NULL),
(64, 'image/e35c50b246de37161b8991b7ce2c2fc6.jpg', '   Huawei P20 4/128GB Black (EML-L29)   ', '5.8\" FULL HD | 8 ядер | 1.8 GHz | 20 Мп + 12 Мп', '21 999 грн  ', NULL, NULL, NULL, 1, NULL),
(65, 'image/2959e2d4c27eea038805f7d9d65d1bfe.jpg', '   Huawei P20 4/128GB Pink (EML-L29)   ', '5.8\" FULL HD | 8 ядер | 1.8 GHz | 20 Мп + 12 Мп', '21 999 грн  ', NULL, NULL, NULL, 1, NULL),
(66, 'image/49cda00dc2828457994dd218efb3ddc8.jpg', '   Google Pixel 2 64Gb (Just Black)   ', NULL, '19 999 грн  ', NULL, NULL, NULL, 1, NULL),
(67, 'image/fab73f7a249a8bf43871a51cb8cec6d0.jpg', '   OnePlus 6 8/128Gb Midnight Black   ', NULL, '20 999 грн  ', NULL, NULL, NULL, 1, NULL),
(68, 'image/a17769332f9d339504e98937c900f7fb.jpg', '   OnePlus 6 8/128Gb Mirror Black   ', '6.28\" FHD+ | 8 ядер | 2.8 GHz | 16 Мп + 20 Мп', '20 999 грн  ', NULL, NULL, NULL, 1, NULL),
(69, 'image/0f279acec7c02a28f21b203a870f9d43.jpg', '   OnePlus 6 8/128Gb Silk White   ', '6.28\" FHD+ | 8 ядер | 2.8 GHz | 16 Мп + 20 Мп', '20 999 грн  ', NULL, NULL, NULL, 1, NULL),
(70, 'image/306b6309b0ede93b720fb0b32ca7d105.jpg', '   Caterpillar CAT S60 (Black)   ', '4.7\" HD | 8 ядер | 1.5 GHz | 13 Мп', '19 999 грн  ', NULL, NULL, NULL, 1, NULL),
(71, 'image/c3db9d025f89ce5ef1ca321edf47611e.jpg', '   Sony Xperia XZ2 Compact DS 4/64GB Black (H8324)   ', '5.0\" FHD+ | 8 ядер | 2.7 GHz | 19 Мп', '19 999 грн  ', NULL, NULL, NULL, 1, NULL),
(72, 'image/67ace0e1c046285251360b9f049d5447.jpg', '   Sony Xperia XZ2 Compact DS 4/64GB Silver (H8324)   ', '5.0\" FHD+ | 8 ядер | 2.7 GHz | 19 Мп', '19 999 грн  ', NULL, NULL, NULL, 1, NULL),
(73, 'image/2bbcd2c5d9f17270a5bb9ab444230daa.jpg', '   Sony Xperia XZ2 Compact DS 4/64GB Pink (H8324)   ', '5.0\" FHD+ | 8 ядер | 2.7 GHz | 19 Мп', '19 999 грн  ', NULL, NULL, NULL, 1, NULL),
(74, 'image/95c193466e14c38a32ccc91c0a9cacc1.jpg', '   Sony Xperia XZ2 Compact DS 4/64GB Moss Green (H8324)   ', '5.0\" FHD+ | 8 ядер | 2.7 GHz | 19 Мп', '19 999 грн  ', NULL, NULL, NULL, 1, NULL),
(75, 'image/f827d53aa342c22500d8b985745f43fe.jpg', '    Nokia 8 Sirocco SS 6/128GB Black (TA-1005)   ', '5.5\" Quad HD | 8 ядер | 2.36 GHz | 12 Мп + 13 Мп', '19 999 грн  ', NULL, NULL, NULL, 1, NULL),
(76, 'image/5d944b54a8e3027fe66fabdc537c2669.jpg', '   iPhone 7 (Jet Black)   ', NULL, '19 499 грн  ', NULL, NULL, NULL, 1, NULL),
(77, 'image/9b11e443f848be5c4fdd30129e2802e2.jpg', '   iPhone 7 (Gold)   ', NULL, '19 499 грн  ', NULL, NULL, NULL, 1, NULL),
(78, 'image/38848645667ea7154c77f92d57a1117c.jpg', '   HTC U11 (Brilliant Black)   ', '5.5\" Quad HD | 8 ядер | 2.45GHz | 12 Мп', '18 999 грн  ', NULL, NULL, NULL, 1, NULL),
(79, 'image/0748ffe2d3c66726abc043183c65f726.jpg', '   iPhone 6s Plus (Gold)   ', NULL, '15 499 грн  ', NULL, NULL, NULL, 1, NULL),
(80, 'image/90c888347dfcbf5c59c904cbfa1fcf46.jpg', '   iPhone 6s Plus (Space Gray)   ', NULL, '15 499 грн  ', NULL, NULL, NULL, 1, NULL),
(81, 'image/ce7a8dbae5de7d884ad072158801f904.jpg', '   iPhone 6s Plus (Rose Gold)   ', NULL, '15 499 грн  ', NULL, NULL, NULL, 1, NULL),
(82, 'image/9ef260555903db9ab32af3fdb627dd3a.jpg', '   iPhone 6s Plus (Silver)   ', NULL, '15 499 грн  ', NULL, NULL, NULL, 1, NULL),
(83, 'image/f7de538d3a363f491b06f3ab692729c7.jpg', '   OnePlus 6 6/64Gb Mirror Black   ', NULL, '17 999 грн  ', NULL, NULL, NULL, 1, NULL),
(84, 'image/17afab76f2472e80da5483f696eb8190.jpg', '   Motorola Moto Z2 Force 6/64 Gb Black (PA900007UA)   ', '5.5\" 4K UHD | 8 ядер | 2.35 GHz | 12 Мп', '17 995 грн  ', NULL, NULL, NULL, 1, NULL),
(85, 'image/63e88c2e00ad4da1916b54ad620b473c.jpg', '   iPhone 7 (Gold)   ', NULL, '16 999 грн  ', NULL, NULL, NULL, 1, NULL),
(86, 'image/f9c8a0abe3e61d86f539bc6fa1a7f7fc.jpg', '   iPhone 7 (Silver)   ', NULL, '16 999 грн  ', NULL, NULL, NULL, 1, NULL),
(87, 'image/553e61cb92a4d2c7f7e4fcfd8b98ef3d.jpg', '   iPhone 7 (Black)   ', NULL, '16 999 грн  ', NULL, NULL, NULL, 1, NULL),
(88, 'image/bf63c29ba9891b27a683c8ea6d4165db.jpg', '   iPhone 7 (Rose Gold)   ', NULL, '16 999 грн  ', NULL, NULL, NULL, 1, NULL),
(89, 'image/2cc49b9ee8b88569d272060712ebc01c.jpg', '   Nokia 8 Dual SIM (Copper)   ', '5.3\" Quad HD | 8 ядер | 2.5 + 1.8 GHz | 13 Мп', '16 999 грн  ', NULL, NULL, NULL, 1, NULL),
(90, 'image/2a61916b208199a3334e006008434ad7.jpg', '   Nokia 8 Dual SIM (Matte Blue)   ', '5.3\" Quad HD | 4 ядра | 2.5 + 1.8 GHz | 13 Мп', '12 999 грн  ', NULL, NULL, NULL, 1, NULL),
(91, 'image/33b9cc196f28673590007bafc439a114.jpg', '   Nokia 8 Dual SIM (Blue)   ', '5.3\" Quad HD | 8 ядер | 2.5 + 1.8 GHz | 13 Мп', '12 999 грн  ', NULL, NULL, NULL, 1, NULL),
(92, 'image/68fb8dd5de8a7b891374e81e2683114a.jpg', '   iPad Pro 12.9 Wi-Fi+4G (Space Gray) 2017    ', NULL, '29 999 грн  ', NULL, NULL, NULL, 2, NULL),
(93, 'image/099a2b5dcb46bffea1862136955f0511.jpg', '   iPad Pro 12.9 Wi-Fi+4G (Silver) 2017   ', NULL, '29 999 грн  ', NULL, NULL, NULL, 2, NULL),
(94, 'image/223f58520fcbc41855dbf88a191a7420.jpg', '   iPad Pro 12.9 Wi-Fi+4G (Gold) 2017   ', NULL, '29 999 грн  ', NULL, NULL, NULL, 2, NULL),
(95, 'image/d42286ac01312290f9665bbf3c516c38.jpg', '   iPad Pro 10.5 Wi-Fi+4G (Space Gray) 2017   ', NULL, '26 499 грн  ', NULL, NULL, NULL, 2, NULL),
(96, 'image/56f854722e0faa1660a57d79c104846e.jpg', '   iPad Pro 10.5 Wi-Fi+4G (Silver) 2017   ', NULL, '26 499 грн  ', NULL, NULL, NULL, 2, NULL),
(97, 'image/198376b771e1f29f7d506c8456693301.jpg', '   iPad Pro 10.5 Wi-Fi+4G (Gold) 2017   ', NULL, '26 499 грн  ', NULL, NULL, NULL, 2, NULL),
(98, 'image/065913b7bf0b162fc36dae9b03ca1195.jpg', '   iPad Pro 10.5 Wi-Fi+4G (Rose Gold) 2017   ', NULL, '26 499 грн  ', NULL, NULL, NULL, 2, NULL),
(99, 'image/3359e7d797cd8bc46899e58ac110e2dd.jpg', '   iPad Pro 12.9 Wi-Fi (Space Gray) 2017   ', NULL, '25 999 грн  ', NULL, NULL, NULL, 2, NULL),
(100, 'image/5251a5b8468aba8af7368d5c4b873906.jpg', '   iPad Pro 12.9 Wi-Fi (Silver) 2017   ', NULL, '25 999 грн  ', NULL, NULL, NULL, 2, NULL),
(101, 'image/fc839017e0127c85758c573fb662d4d0.jpg', '   iPad Pro 12.9 Wi-Fi (Gold) 2017   ', NULL, '25 999 грн  ', NULL, NULL, NULL, 2, NULL),
(102, 'image/72f2ea2f66c1feecadd9ecc049239b2c.jpg', '   Samsung Galaxy Tab S3 9.7&quot; LTE (SM-T825) Black    ', '9.7\" QXGA | 4 ядра | 3G | 6000mAH', '24 999 грн  ', NULL, NULL, NULL, 2, NULL),
(103, 'image/7ae2304d4e697512871f89a421a02aac.jpg', '   Samsung Galaxy Tab S3 9.7&quot; LTE (SM-T825) Silver   ', '9.7\" QXGA | 4 ядра | 3G | 6000mAH', '24 999 грн  ', NULL, NULL, NULL, 2, NULL),
(104, 'image/b3b1f70087608357a6d2b965d6afbbf7.jpg', '   Yoga Book 4/128GB LTE Windows Pro (ZA160126UA) Ruby Red   ', '10.1\" FULL HD | 4 ядра | 3G | 8500mAH', '21 499 грн  ', NULL, NULL, NULL, 2, NULL),
(105, 'image/463b5e8d29e7d19c02aeb6467d7da371.jpg', '   Yoga Book 4/128GB LTE Windows Pro (ZA160126UA) Carbon Black   ', '10.1\" FULL HD | 4 ядра | 3G | 8500mAH', '23 999 грн  ', NULL, NULL, NULL, 2, NULL),
(106, 'image/9532ecb082bb722db23f9954d4522b20.jpg', '   iPad Pro 10.5 Wi-Fi (Space Gray) 2017   ', NULL, '21 299 грн  ', NULL, NULL, NULL, 2, NULL),
(107, 'image/f07777bbb2650bb06d08e00caacba557.jpg', '   iPad Pro 10.5 Wi-Fi (Silver) 2017   ', NULL, '21 299 грн  ', NULL, NULL, NULL, 2, NULL),
(108, 'image/e6511bd5fc41f7e4d0aeee44d25d9a2b.jpg', '   iPad Pro 10.5 Wi-Fi (Gold) 2017   ', NULL, '21 299 грн  ', NULL, NULL, NULL, 2, NULL),
(109, 'image/95ac438dabc00f10ae8e7d96f6101310.jpg', '   iPad Pro 10.5 Wi-Fi (Rose Gold) 2017   ', NULL, '21 299 грн  ', NULL, NULL, NULL, 2, NULL),
(110, 'image/072856d75566ddba7b0069cdc30c6d84.jpg', '   Samsung Galaxy Tab S3 9.7&quot; Wi-Fi (SM-T820) Black   ', '9.7\" QXGA | 4 ядра | 6000mAH', '18 999 грн  ', NULL, NULL, NULL, 2, NULL),
(111, 'image/b00dbb67102373731ef548188eb18082.jpg', '   Samsung Galaxy Tab S3 9.7&quot; Wi-Fi (SM-T820) Silver   ', '9.7\" QXGA | 4 ядра | 6000mAH', '18 999 грн  ', NULL, NULL, NULL, 2, NULL),
(112, 'image/b05a5312164f8d26a6cc5c1b372594b5.jpg', '    Lenovo Yoga Book YB1-X91F Wi-Fi Windows Pro (ZA150018UA) Carbon Black   ', '10.1\" FULL HD | 4 ядра | 8500mAH', '16 299 грн  ', NULL, NULL, NULL, 2, NULL),
(113, 'image/fbfd99c1cd570b9a00f3437c4168d8b0.jpg', '   Apple iPad 9.7&quot; Wi-Fi+4G 32GB (2018) Gold   ', NULL, '15 099 грн  ', NULL, NULL, NULL, 2, NULL),
(114, 'image/27bbfbc73d88dfbbedc8f62a5fd7ca8f.jpg', '   Apple iPad 9.7&quot; Wi-Fi+4G 32GB (2018) Silver   ', NULL, '15 099 грн  ', NULL, NULL, NULL, 2, NULL),
(115, 'image/8277777fcf4be01478b5b9caa0c661ec.jpg', '   Apple iPad 9.7&quot; Wi-Fi+4G 32GB (2018) Space Gray   ', NULL, '15 099 грн  ', NULL, NULL, NULL, 2, NULL),
(116, 'image/5673af0cc79b8f4c8f751473e8667f92.jpg', '   iPad Pro 9.7 Wi-Fi+4G (Space Gray)   ', NULL, '15 999 грн  ', NULL, NULL, NULL, 2, NULL),
(117, 'image/fb980fb19714d1d2c043af4e09766e55.jpg', '   Apple iPad 32Gb Wi-Fi+4G Space Gray (MP1J2RK/A) 2017   ', NULL, '13 999 грн  ', NULL, NULL, NULL, 2, NULL),
(118, 'image/cd2fe73f22fc89c5cf36c59f22644f25.jpg', '   Apple iPad 32Gb Wi-Fi+4G Silver (MP1L2RK/A) 2017   ', NULL, '13 999 грн  ', NULL, NULL, NULL, 2, NULL),
(119, 'image/048a77a116fde0c200e759353c213f22.jpg', '   Apple iPad 32Gb Wi-Fi+4G Gold (MPG42RK/A) 2017   ', NULL, '13 999 грн  ', NULL, NULL, NULL, 2, NULL),
(120, 'image/aece2b42e1b5263d7107657d263c4224.jpg', '   Samsung Galaxy Tab S2 9.7 LTE (SM-T819) Black   ', '9.7\" QXGA | 8 ядер | 3G | 5870mAH', '13 999 грн  ', NULL, NULL, NULL, 2, NULL),
(121, 'image/9478cca187b34315b2ed9262a26cf972.jpg', '   Samsung Galaxy Tab S2 9.7 LTE (SM-T819) Bronze Gold   ', '9.7\" QXGA | 8 ядер | 3G | 5870mAH', '13 999 грн  ', NULL, NULL, NULL, 2, NULL),
(122, 'image/b9a77dfe8384d5c1b3064b86aa3b4bdd.jpg', '   Asus ZenPad 3S 10 9.7&quot; 4/128Gb LTE (Slate Gray)   ', NULL, '12 599 грн  ', NULL, NULL, NULL, 2, NULL),
(123, 'image/733688f71bef7dc12059f53c0a097651.jpg', '   Asus ZenPad 3S 10 9.7&quot; 4/32Gb LTE (Slate Gray)   ', NULL, '12 099 грн  ', NULL, NULL, NULL, 2, NULL),
(124, 'image/29691512c7a6c79c070f0f8e6ae2a2fd.jpg', '   Lenovo Tab4 10 Plus LTE 4/64Gb (Black)   ', '10.1\" FULL HD | 8 ядер | 3G | 7000mAH', '10 799 грн  ', NULL, NULL, NULL, 2, NULL),
(125, 'image/f883e390c36a11774f03cbd39b9f39bd.jpg', '   Samsung Galaxy Tab S2 9.7 Wi-Fi (SM-T813) Black   ', '9.7\" QXGA | 8 ядер | 5870mAH', '11 499 грн  ', NULL, NULL, NULL, 2, NULL),
(126, 'image/2cec2a8247d1d9c3bac4ff900d12887b.jpg', '   Apple iPad 9.7&quot; Wi-Fi 32GB (2018) Gold   ', NULL, '10 499 грн  ', NULL, NULL, NULL, 2, NULL),
(127, 'image/dbcc6962fec97e735dc69427c9fdc62d.jpg', '   Apple iPad 9.7&quot; Wi-Fi 32GB (2018) Silver   ', NULL, '10 499 грн  ', NULL, NULL, NULL, 2, NULL),
(128, 'image/fd435afb8bc186538b0363ea9babac73.jpg', '   Apple iPad 9.7&quot; Wi-Fi 32GB (2018) Space Gray   ', NULL, '10 499 грн  ', NULL, NULL, NULL, 2, NULL),
(129, 'image/a798f184c6322aa7532c3961570aa7df.jpg', '   Chuwi Hi13   ', '13.5\" 3K retina | 4 ядра | 10000mAH', '9 999 грн  ', NULL, NULL, NULL, 2, NULL),
(130, 'image/5d1a03cc25f05a1b36a99b537f0a5d9f.jpg', '   Lenovo Tab4 8 Plus LTE 4/64Gb (Slate Black)   ', '8.0\" FULL HD | 8 ядер | 3G | 4850mAH', '8 549 грн  ', NULL, NULL, NULL, 2, NULL),
(131, 'image/b3ad8e40e2e728599112ee98b6ebc730.jpg', '   LapBook Chuwi 12.3&quot;   ', '&nbsp;', '9 499 грн  ', NULL, NULL, NULL, 2, NULL),
(132, 'image/8ecdc615524cb38b665f533e88457684.jpg', '   Samsung Galaxy Tab A 10.1&quot; LTE (SM-T585) black   ', '10.1\" WUXGA | 8 ядер | 3G | 7300mAH', '8 999 грн  ', NULL, NULL, NULL, 2, NULL),
(133, 'image/c72e7e4050a38a67e7e5226f3f61f7ee.jpg', '   Samsung Galaxy Tab A 10.1&quot; 16Gb LTE (SM-T585NZKA) blue   ', '10.1\" WUXGA | 8 ядер | 3G | 7300mAH', '8 999 грн  ', NULL, NULL, NULL, 2, NULL),
(134, 'image/ad751999856524e4dede61b821f5dcd1.jpg', '   Apple iPad 32Gb Wi-Fi Space Gray (MP2F2RK/A) 2017   ', NULL, '8 499 грн  ', NULL, NULL, NULL, 2, NULL),
(135, 'image/9205ac66e8318053728c5b46e0f7f0e3.jpg', '   Apple iPad 32Gb Wi-Fi Silver (MP2G2RK/A) 2017   ', NULL, '8 499 грн  ', NULL, NULL, NULL, 2, NULL),
(136, 'image/15be06ff9c1fa24e31ae3bc1773d65c4.jpg', '   Apple iPad 32Gb Wi-Fi Gold (MPGT2RK/A) 2017   ', NULL, '8 499 грн  ', NULL, NULL, NULL, 2, NULL),
(137, 'image/f97d4018c31f5eb3e7f972febd239c77.jpg', '   Asus ZenPad 3S 10 9.7&quot; 4/64Gb Wi-Fi (Gray)   ', '9.7\" QXGA | 6 ядер | 5900mAH', '8 999 грн  ', NULL, NULL, NULL, 2, NULL),
(138, 'image/d914a88c815e71e220bbc13b89242842.jpg', '   Asus ZenPad 3S 10 9.7&quot; 4/64Gb Wi-Fi (Silver)   ', '9.7\" QXGA | 6 ядер | 5900mAH', '8 999 грн  ', NULL, NULL, NULL, 2, NULL),
(139, 'image/1e86b9248eb5e2a74d05195935d16d69.jpg', '   Samsung Galaxy Tab A 9.7 16Gb LTE (White)   ', '9.7\" XGA | 4 ядра | 3G | 6000mAH', '7 599 грн  ', NULL, NULL, NULL, 2, NULL),
(140, 'image/891315582060558068ca65248cf50110.jpg', '   Samsung Galaxy Tab A 10.1&quot; Wi-Fi (SM-T580) black   ', '10.1\" WUXGA | 8 ядер | 7300mAH', '7 499 грн  ', NULL, NULL, NULL, 2, NULL),
(141, 'image/a9b5286029ebc7f411a7446a72bab2b5.jpg', '   Samsung Galaxy Tab A 8.0&quot; 16GB LTE (T385NZKASEK) Black   ', '8.0\" WXGA | 4 ядра | 3G | 5000mAH', '6 999 грн  ', NULL, NULL, NULL, 2, NULL),
(142, 'image/7f5eca8108912677eed62ad1f23fa67f.jpg', '   Samsung Galaxy Tab A 8.0 16Gb LTE (Smoky Titanium)   ', '8.0\" XGA | 4 ядра | 3G | 4200mAH', '6 499 грн  ', NULL, NULL, NULL, 2, NULL),
(143, 'image/d0cf3e8bb1ebea26f337911abbf945f8.jpg', '   Pixus Blaze 10.1 3G   ', '10.1\" FULL HD | 8 ядер | 3G | 8000mAH', '6 399 грн  ', NULL, NULL, NULL, 2, NULL),
(144, 'image/6466f4e5efde31f177eefddd970ab210.jpg', '   Lenovo Tab 3 Plus X70L 3G 2/16Gb (ZA0Y0036UA) Black   ', '10\" FULL HD | 4 ядра | 7000mAH', '5 999 грн  ', NULL, NULL, NULL, 2, NULL),
(145, 'image/119db323f379f371b058c10ded959420.jpg', '   Chuwi Hi10 Plus   ', '10.8\" WUXGA | 4 ядра | 8400mAH', '5 699 грн  ', NULL, NULL, NULL, 2, NULL),
(146, 'image/8e4233002234b23084458b5583366d26.jpg', '   Huawei MediaPad T3 10&quot; 16Gb 3G (Grey)   ', '9.6\" HD | 4 ядра | 3G | 4800mAH', '5 499 грн  ', NULL, NULL, NULL, 2, NULL),
(147, 'image/7836dfd821fd2fdaf60c3b18f25decde.jpg', '   Huawei MediaPad T3 10&quot; 16Gb 3G (Gold)   ', '9.6\" HD | 4 ядра | 3G | 4800mAH', '5 499 грн  ', NULL, NULL, NULL, 2, NULL),
(148, 'image/339f3a966694e7a0f8c67a943abf67dc.jpg', '   Chuwi Hi10 Pro   ', '10.1\" WUXGA | 4 ядра | 6500mAH', '5 399 грн  ', NULL, NULL, NULL, 2, NULL),
(149, 'image/b57167aa2941b9023c56d20b596dcdb6.jpg', '   Asus ZenPad 10 2/32Gb Wi-Fi (Dark Grey)   ', '10.1\" WXGA | 4 ядра | 4680mAH', '5 399 грн  ', NULL, NULL, NULL, 2, NULL),
(150, 'image/a0fc5eda8faffe7d843d65cb74ce6ad5.jpg', '   Asus ZenPad 8.0 2/16Gb LTE (Dark Gray)   ', '8.0\" WXGA | 8 ядер | 4000mAH', '5 099 грн  ', NULL, NULL, NULL, 2, NULL),
(151, 'image/b18345e63850a494ec0e20671fac952d.jpg', '   Samsung Galaxy Tab E 9.6&quot; 3G (Black)   ', '9.6\" WXGA | 4 ядра | 3G | 5000mAH', '4 999 грн  ', NULL, NULL, NULL, 2, NULL),
(152, 'image/ba5ff7dbb299ca5c305d19f97915c6b8.jpg', '   Asus ZenPad 8.0 1/16Gb LTE (Dark Gray)   ', '8.0\" WXGA | 4 ядра | 4000mAH', '4 999 грн  ', NULL, NULL, NULL, 2, NULL),
(153, 'image/3cae202fb1e1712e2b6e9a32a9aa7018.jpg', '   Samsung Galaxy Tab A 7.0 8Gb LTE (Silver)   ', '7.0\" WXGA | 4 ядра | 3G | 4000mAH', '4 499 грн  ', NULL, NULL, NULL, 2, NULL),
(154, 'image/f925f1e05bbab75d01a2a2d407e7d99f.jpg', '   Samsung Galaxy Tab A 7.0 8Gb LTE (Black)   ', '7.0\" WXGA | 4 ядра | 3G | 4000mAH', '4 499 грн  ', NULL, NULL, NULL, 2, NULL),
(155, 'image/83316cbde9055f795362bdcb7fd18586.jpg', '   Apple MacBook Pro Touch Bar 15&quot; 512Gb Silver (MPTV2) 2017   ', '&nbsp;', '88 499 грн  ', NULL, NULL, NULL, 3, NULL),
(156, 'image/ecbbd44e0293cd48689f8d2f919b8357.jpg', '   Apple MacBook Pro Touch Bar 15&quot; 512Gb Space Gray (MPTT2) 2017   ', '&nbsp;', '88 499 грн  ', NULL, NULL, NULL, 3, NULL),
(157, 'image/a2d15124d1fd2462920b6aa9012f2d78.jpg', '   Apple MacBook Pro Touch Bar 15&quot; Silver (MPTU2) 2017   ', '&nbsp;', '76 299 грн  ', NULL, NULL, NULL, 3, NULL),
(158, 'image/6ffeae27e0b752c48a9b0ce740df8a1a.jpg', '   Apple MacBook Pro Touch Bar 15&quot; 256Gb Touch Bar Space Gray (MPTR2) 2017   ', '&nbsp;', '76 299 грн  ', NULL, NULL, NULL, 3, NULL),
(159, 'image/34f4725d492607b934bfaa06fea54533.jpg', '   Apple MacBook Pro Retina Touch Bar (MLH42UA/A) Space Grey   ', '&nbsp;', '76 999 грн  ', NULL, NULL, NULL, 3, NULL),
(160, 'image/9b9b9a08d43b25ce916f4f102565d201.jpg', '   Apple MacBook Pro Retina Touch Bar 15&quot; (MLW82UA/A) Silver   ', '&nbsp;', '76 999 грн  ', NULL, NULL, NULL, 3, NULL),
(161, 'image/fa7de9f4166704b67f5adca31e58901f.jpg', '   Apple MacBook Pro Retina Touch Bar 13&quot; 512Gb Space Gray (MPXW2) 2017   ', '&nbsp;', '65 399 грн  ', NULL, NULL, NULL, 3, NULL),
(162, 'image/5750d6bd0e6ad4fe9f395131fc050a51.jpg', '   Apple MacBook Pro Retina Touch Bar 13&quot; 512Gb Silver (MPXY2) 2017   ', '&nbsp;', '65 399 грн  ', NULL, NULL, NULL, 3, NULL),
(163, 'image/b2a12df6d37c720d62eef9e08b1340af.jpg', '   Apple MacBook Pro Retina 15.4 (MJLQ2UA/A)   ', '&nbsp;', '63 499 грн  ', NULL, NULL, NULL, 3, NULL),
(164, 'image/c298e597e0bcc536b1107954171b36d4.jpg', '   Apple MacBook Pro Retina Touch Bar 13&quot; 256Gb Silver (MPXX2) 2017   ', '&nbsp;', '58 599 грн  ', NULL, NULL, NULL, 3, NULL),
(165, 'image/85a8fa477e09e392747fd0943d276e30.jpg', '    Apple MacBook Pro Retina Touch Bar 13&quot; 256Gb Space Gray (MPXV2) 2017   ', '&nbsp;', '58 599 грн  ', NULL, NULL, NULL, 3, NULL),
(166, 'image/ff649f7ba6cb7a608f528b6997adaa55.jpg', '    Apple MacBook Pro Retina Touch Bar 15&quot; (MLH32UA/A) Space Grey   ', '&nbsp;', '62 999 грн  ', NULL, NULL, NULL, 3, NULL),
(167, 'image/0a5ea63f0a4b79ed44e428e595157ef7.jpg', '   Apple MacBook Pro Retina Touch Bar 15&quot; (MLW72UA/A) Silver   ', '&nbsp;', '62 999 грн  ', NULL, NULL, NULL, 3, NULL),
(168, 'image/52d38b1295ab43ad2968f2e09bba61c4.jpg', '   Apple MacBook Pro Retina Touch Bar 13&quot; (MNQF2UA/A) Space Grey   ', '&nbsp;', '58 999 грн  ', NULL, NULL, NULL, 3, NULL),
(169, 'image/fe113ceb56d947257293532ef3927aaa.jpg', '   Apple MacBook 12\'\' 512Gb Silver (MNYJ2) 2017   ', '&nbsp;', '52 499 грн  ', NULL, NULL, NULL, 3, NULL),
(170, 'image/62cec3286f05359276b3f4b650be53b9.jpg', '   Apple MacBook 12\'\' 512Gb Gold (MNYL2) 2017   ', '&nbsp;', '52 499 грн  ', NULL, NULL, NULL, 3, NULL),
(171, 'image/adce965499488620105e7c352324627b.jpg', '   Apple MacBook 12\'\' 512Gb Rose Gold (MNYN2) 2017   ', '&nbsp;', '52 499 грн  ', NULL, NULL, NULL, 3, NULL),
(172, 'image/791144526ae43a1cba75ac8f21f08393.jpg', '   Apple MacBook 12\'\' 512Gb Space Gray (MNYG2) 2017   ', '&nbsp;', '52 499 грн  ', NULL, NULL, NULL, 3, NULL),
(173, 'image/e68b0b5fb71ab2632f0ee273f54bdd57.jpg', '   Apple MacBook Pro Retina 13&quot; 256GB Space Gray (MPXT2) 2017   ', '&nbsp;', '48 999 грн  ', NULL, NULL, NULL, 3, NULL),
(174, 'image/30bc4d538d0dfbf32a00c1219c88410a.jpg', '   Apple MacBook Pro Retina 13&quot; 256GB Silver (MPXU2) 2017   ', '&nbsp;', '48 999 грн  ', NULL, NULL, NULL, 3, NULL),
(175, 'image/a277a9010f4d0cc21640ac59a8ad2652.jpg', '   Apple MacBook Pro Retina Touch Bar 13&quot; (MNQG2UA/A) Silver   ', '&nbsp;', '52 999 грн  ', NULL, NULL, NULL, 3, NULL),
(176, 'image/74813a9b69ae8a0c3c26e6f35f08fb05.jpg', '   Apple MacBook Pro Retina Touch Bar 13&quot; (MLVP2UA/A) Silver   ', '&nbsp;', '48 999 грн  ', NULL, NULL, NULL, 3, NULL),
(177, 'image/5498877e125142942ab3313ba369dea3.jpg', '   Apple MacBook 12\'\' 256Gb Space Gray (MNYF2) 2017   ', '&nbsp;', '42 399 грн  ', NULL, NULL, NULL, 3, NULL),
(178, 'image/eb4c23c6836ead66ca2ca1516d78274e.jpg', '   Apple MacBook 12\'\' 256Gb Silver (MNYH2) 2017   ', '&nbsp;', '42 399 грн  ', NULL, NULL, NULL, 3, NULL),
(179, 'image/73b7ce5f54a2887480b55b7976663b30.jpg', '   Apple MacBook 12\'\' 256Gb Gold (MNYK2) 2017   ', '&nbsp;', '42 399 грн  ', NULL, NULL, NULL, 3, NULL),
(180, 'image/1300d1f7bcdabe16e877c2bc8790d349.jpg', '   Apple MacBook 12\'\' 256Gb Rose Gold (MNYM2) 2017   ', '&nbsp;', '42 399 грн  ', NULL, NULL, NULL, 3, NULL),
(181, 'image/5f614e73c6d7e39be342b3a0416006e7.jpg', '   Apple MacBook Pro Retina Touch Bar 13&quot; (MLH12UA/A) Space Grey   ', '&nbsp;', '43 999 грн  ', NULL, NULL, NULL, 3, NULL),
(182, 'image/92def6da29d095b91125ad62cb545efb.jpg', '   Apple MacBook Air 13&quot; 256Gb (MQD42) 2017   ', '&nbsp;', '39 099 грн  ', NULL, NULL, NULL, 3, NULL),
(183, 'image/873c782c37f8148ffefeb2dd76534e78.jpg', '   Apple MacBook Pro Retina 13&quot; 128GB Silver (MPXR2) 2017   ', '&nbsp;', '40 999 грн  ', NULL, NULL, NULL, 3, NULL),
(184, 'image/21fa4b3f0272c07a2ece25f75e387dd9.jpg', '   Apple MacBook Pro Retina 13&quot; 128GB Space Gray (MPXQ2) 2017   ', '&nbsp;', '40 999 грн  ', NULL, NULL, NULL, 3, NULL),
(185, 'image/af39895deea2c0ccf0dc5767c5215bf7.jpg', '   Apple MacBook Pro Retina 13&quot; (MLL42UA/A) Space Grey   ', '&nbsp;', '39 999 грн  ', NULL, NULL, NULL, 3, NULL),
(186, 'image/0cd56294112c9efa4e1abfd15029796c.jpg', '   Apple MacBook Pro Retina 13&quot; (MLUQ2UA/A) Silver   ', '&nbsp;', '39 999 грн  ', NULL, NULL, NULL, 3, NULL),
(187, 'image/971c0f61a7b199a84ae1229c5ba47e4a.jpg', '   Apple MacBook 12&quot; (MLHE2UA/A) Gold   ', '&nbsp;', '37 999 грн  ', NULL, NULL, NULL, 3, NULL),
(188, 'image/b3ce0214741b9359dca32c7fa27d6d70.jpg', '   Apple MacBook 12&quot; (MLH82UA/A) Space Gray   ', '&nbsp;', '33 999 грн  ', NULL, NULL, NULL, 3, NULL),
(189, 'image/264402c2763ef9d4603539817e80a1c8.jpg', '   Apple MacBook 12&quot; (MLHC2UA/A) Silver   ', '&nbsp;', '33 999 грн  ', NULL, NULL, NULL, 3, NULL),
(190, 'image/8eafdf04ca6e980212db35b50773480e.jpg', '   Apple MacBook 12&quot; (MLHF2UA/A) Gold   ', '&nbsp;', '33 999 грн  ', NULL, NULL, NULL, 3, NULL),
(191, 'image/9a2ab303f43971eea924ac53a0436df5.jpg', '   Apple MacBook 12&quot; (MMGM2UA/A) Rose Gold   ', '&nbsp;', '33 999 грн  ', NULL, NULL, NULL, 3, NULL),
(192, 'image/487f6dd421be87925995319da24711c4.jpg', '   Ноутбук Huawei Matebook X WT-W09 13&quot; 8/256GB Space Gray   ', '&nbsp;', '32 999 грн  ', NULL, NULL, NULL, 3, NULL),
(193, 'image/3df67ad1cd4bc37851e6332e507f621e.jpg', '   Apple MacBook 12&quot; (MLH72UA/A) Space Gray   ', '&nbsp;', '32 499 грн  ', NULL, NULL, NULL, 3, NULL),
(194, 'image/db669dfd580d3af00a37c1ff743b4718.jpg', '   Apple MacBook 12&quot; (MLHA2UA/A) Silver   ', '&nbsp;', '32 499 грн  ', NULL, NULL, NULL, 3, NULL),
(195, 'image/57181bbade40075a63c7f3f69bdcaf68.jpg', '   Apple MacBook 12&quot; (MMGL2UA/A) Rose Gold   ', '&nbsp;', '32 499 грн  ', NULL, NULL, NULL, 3, NULL),
(196, 'image/0368c1b0c262b6dbf0928a54d3b96811.jpg', '   Apple MacBook Air 13&quot; (MMGG2UA/A)   ', '&nbsp;', '32 299 грн  ', NULL, NULL, NULL, 3, NULL),
(197, 'image/57b2be44dd46a3e15717bdc4aaba490c.jpg', '   Ноутбук Huawei Matebook X WT-W09 13&quot; 4/256GB Space Gray   ', '&nbsp;', '27 999 грн  ', NULL, NULL, NULL, 3, NULL),
(198, 'image/550725c7565a187c40e6bbb236a9d6f0.jpg', '   Apple MacBook Air 13&quot; 128Gb (MQD32) 2017   ', '&nbsp;', '26 999 грн  ', NULL, NULL, NULL, 3, NULL),
(199, 'image/67358888a5b264fa48ec0ad4c36524be.jpg', '   Ультрабук Xiaomi Mi Notebook Air 13.3&quot; Silver   ', '&nbsp;', '26 499 грн  ', NULL, NULL, NULL, 3, NULL),
(200, 'image/bf8c715ee41fe43e96a736848cdd613f.jpg', '   Ноутбук Huawei Matebook D PL-W09 15.6&quot; 8GB/1T   ', '&nbsp;', '24 999 грн  ', NULL, NULL, NULL, 3, NULL),
(201, 'image/0476ddb80e093a2b5aecc2c9cc65520c.jpg', '   Ультрабук Xiaomi Mi Notebook Air 12.5&quot; 4/256 GB Silver    ', '&nbsp;', '19 999 грн  ', NULL, NULL, NULL, 3, NULL),
(202, 'image/30afcff3314fbe731dc97a9393f6ebdf.jpg', '   Ноутбук Huawei Matebook D PL-W09 15.6&quot; 4/500GB   ', '&nbsp;', '17 999 грн  ', NULL, NULL, NULL, 3, NULL),
(203, 'image/88e6f92c0a05e299d1d8d828b6bfd643.jpg', '   Ультрабук Xiaomi Mi Notebook Air 12.5&quot; 4/128 GB Silver   ', '&nbsp;', '15 999 грн  ', NULL, NULL, NULL, 3, NULL),
(204, 'image/83316cbde9055f795362bdcb7fd18586.jpg', '   Apple MacBook Pro Touch Bar 15&quot; 512Gb Silver (MPTV2) 2017   ', '&nbsp;', '88 499 грн  ', NULL, NULL, NULL, 3, NULL),
(205, 'image/ecbbd44e0293cd48689f8d2f919b8357.jpg', '   Apple MacBook Pro Touch Bar 15&quot; 512Gb Space Gray (MPTT2) 2017   ', '&nbsp;', '88 499 грн  ', NULL, NULL, NULL, 3, NULL),
(206, 'image/a2d15124d1fd2462920b6aa9012f2d78.jpg', '   Apple MacBook Pro Touch Bar 15&quot; Silver (MPTU2) 2017   ', '&nbsp;', '76 299 грн  ', NULL, NULL, NULL, 3, NULL),
(207, 'image/6ffeae27e0b752c48a9b0ce740df8a1a.jpg', '   Apple MacBook Pro Touch Bar 15&quot; 256Gb Touch Bar Space Gray (MPTR2) 2017   ', '&nbsp;', '76 299 грн  ', NULL, NULL, NULL, 3, NULL),
(208, 'image/34f4725d492607b934bfaa06fea54533.jpg', '   Apple MacBook Pro Retina Touch Bar (MLH42UA/A) Space Grey   ', '&nbsp;', '76 999 грн  ', NULL, NULL, NULL, 3, NULL),
(209, 'image/9b9b9a08d43b25ce916f4f102565d201.jpg', '    Apple MacBook Pro Retina Touch Bar 15&quot; (MLW82UA/A) Silver   ', '&nbsp;', '76 999 грн  ', NULL, NULL, NULL, 3, NULL),
(210, 'image/fa7de9f4166704b67f5adca31e58901f.jpg', '   Apple MacBook Pro Retina Touch Bar 13&quot; 512Gb Space Gray (MPXW2) 2017   ', '&nbsp;', '65 399 грн  ', NULL, NULL, NULL, 3, NULL),
(211, 'image/5750d6bd0e6ad4fe9f395131fc050a51.jpg', '   Apple MacBook Pro Retina Touch Bar 13&quot; 512Gb Silver (MPXY2) 2017   ', '&nbsp;', '65 399 грн  ', NULL, NULL, NULL, 3, NULL),
(212, 'image/b2a12df6d37c720d62eef9e08b1340af.jpg', '   Apple MacBook Pro Retina 15.4 (MJLQ2UA/A)   ', '&nbsp;', '63 499 грн  ', NULL, NULL, NULL, 3, NULL),
(213, 'image/c298e597e0bcc536b1107954171b36d4.jpg', '   Apple MacBook Pro Retina Touch Bar 13&quot; 256Gb Silver (MPXX2) 2017   ', '&nbsp;', '58 599 грн  ', NULL, NULL, NULL, 3, NULL),
(214, 'image/85a8fa477e09e392747fd0943d276e30.jpg', '   Apple MacBook Pro Retina Touch Bar 13&quot; 256Gb Space Gray (MPXV2) 2017    ', '&nbsp;', '58 599 грн  ', NULL, NULL, NULL, 3, NULL),
(215, 'image/ff649f7ba6cb7a608f528b6997adaa55.jpg', '   Apple MacBook Pro Retina Touch Bar 15&quot; (MLH32UA/A) Space Grey    ', '&nbsp;', '62 999 грн  ', NULL, NULL, NULL, 3, NULL),
(216, 'image/0a5ea63f0a4b79ed44e428e595157ef7.jpg', '   Apple MacBook Pro Retina Touch Bar 15&quot; (MLW72UA/A) Silver   ', '&nbsp;', '62 999 грн  ', NULL, NULL, NULL, 3, NULL),
(217, 'image/52d38b1295ab43ad2968f2e09bba61c4.jpg', '   Apple MacBook Pro Retina Touch Bar 13&quot; (MNQF2UA/A) Space Grey   ', '&nbsp;', '58 999 грн  ', NULL, NULL, NULL, 3, NULL),
(218, 'image/fe113ceb56d947257293532ef3927aaa.jpg', '   Apple MacBook 12\'\' 512Gb Silver (MNYJ2) 2017   ', '&nbsp;', '52 499 грн  ', NULL, NULL, NULL, 3, NULL),
(219, 'image/62cec3286f05359276b3f4b650be53b9.jpg', '   Apple MacBook 12\'\' 512Gb Gold (MNYL2) 2017   ', '&nbsp;', '52 499 грн  ', NULL, NULL, NULL, 3, NULL),
(220, 'image/adce965499488620105e7c352324627b.jpg', '    Apple MacBook 12\'\' 512Gb Rose Gold (MNYN2) 2017   ', '&nbsp;', '52 499 грн  ', NULL, NULL, NULL, 3, NULL),
(221, 'image/791144526ae43a1cba75ac8f21f08393.jpg', '   Apple MacBook 12\'\' 512Gb Space Gray (MNYG2) 2017   ', '&nbsp;', '52 499 грн  ', NULL, NULL, NULL, 3, NULL),
(222, 'image/e68b0b5fb71ab2632f0ee273f54bdd57.jpg', '   Apple MacBook Pro Retina 13&quot; 256GB Space Gray (MPXT2) 2017   ', '&nbsp;', '48 999 грн  ', NULL, NULL, NULL, 3, NULL),
(223, 'image/30bc4d538d0dfbf32a00c1219c88410a.jpg', '   Apple MacBook Pro Retina 13&quot; 256GB Silver (MPXU2) 2017   ', '&nbsp;', '48 999 грн  ', NULL, NULL, NULL, 3, NULL),
(224, 'image/a277a9010f4d0cc21640ac59a8ad2652.jpg', '   Apple MacBook Pro Retina Touch Bar 13&quot; (MNQG2UA/A) Silver   ', '&nbsp;', '52 999 грн  ', NULL, NULL, NULL, 3, NULL),
(225, 'image/74813a9b69ae8a0c3c26e6f35f08fb05.jpg', '   Apple MacBook Pro Retina Touch Bar 13&quot; (MLVP2UA/A) Silver   ', '&nbsp;', '48 999 грн  ', NULL, NULL, NULL, 3, NULL),
(226, 'image/5498877e125142942ab3313ba369dea3.jpg', '   Apple MacBook 12\'\' 256Gb Space Gray (MNYF2) 2017   ', '&nbsp;', '42 399 грн  ', NULL, NULL, NULL, 3, NULL),
(227, 'image/eb4c23c6836ead66ca2ca1516d78274e.jpg', '   Apple MacBook 12\'\' 256Gb Silver (MNYH2) 2017   ', '&nbsp;', '42 399 грн  ', NULL, NULL, NULL, 3, NULL),
(228, 'image/73b7ce5f54a2887480b55b7976663b30.jpg', '   Apple MacBook 12\'\' 256Gb Gold (MNYK2) 2017   ', '&nbsp;', '42 399 грн  ', NULL, NULL, NULL, 3, NULL),
(229, 'image/1300d1f7bcdabe16e877c2bc8790d349.jpg', '   Apple MacBook 12\'\' 256Gb Rose Gold (MNYM2) 2017   ', '&nbsp;', '42 399 грн  ', NULL, NULL, NULL, 3, NULL),
(230, 'image/5f614e73c6d7e39be342b3a0416006e7.jpg', '   Apple MacBook Pro Retina Touch Bar 13&quot; (MLH12UA/A) Space Grey   ', '&nbsp;', '43 999 грн  ', NULL, NULL, NULL, 3, NULL),
(231, 'image/92def6da29d095b91125ad62cb545efb.jpg', '   Apple MacBook Air 13&quot; 256Gb (MQD42) 2017   ', '&nbsp;', '39 099 грн  ', NULL, NULL, NULL, 3, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `product2`
--

CREATE TABLE `product2` (
  `product_id` int(10) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `price` varchar(64) DEFAULT NULL,
  `size` varchar(64) DEFAULT NULL,
  `colour` varchar(64) DEFAULT NULL,
  `description` text,
  `category_id` tinyint(2) DEFAULT NULL,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product2`
--

INSERT INTO `product2` (`product_id`, `picture`, `name`, `model`, `price`, `size`, `colour`, `description`, `category_id`, `comment`) VALUES
(1, '', '', '', '', NULL, NULL, NULL, 0, NULL),
(2, 'image/522aa8a0149196fca37cf95e15207fdd.jpg', '   Samsung Galaxy Note 8 6/64GB Black (SM-N950FZKDSEK)   ', '6.3\" Quad HD+ | 8 ядер | 2.3 + 1.7 GHz | 12 Мп + 12 Мп', '26 999 грн  ', NULL, NULL, NULL, 1, NULL),
(3, 'image/7a3d3596ed8b0a197b503dfed72ab326.jpg', '   Samsung Galaxy Note 8 6/64GB Orchid Gray (SM-N950FZVDSEK)   ', '6.3\" Quad HD+ | 8 ядер | 2.3 + 1.7 GHz | 12 Мп + 12 Мп', '26 999 грн  ', NULL, NULL, NULL, 1, NULL),
(4, 'image/38848645667ea7154c77f92d57a1117c.jpg', '   HTC U11 (Brilliant Black)   ', '5.5\" Quad HD | 8 ядер | 2.45GHz | 12 Мп', '18 999 грн  ', NULL, NULL, NULL, 1, NULL),
(5, 'image/039e7b68f1cd1684e73ff8ff7bc9dea2.jpg', '   Samsung Galaxy S7 Edge Duos (Black Onix)   ', '5.5\" Quad HD | 8 ядер | 2.3 + 1.6 GHz | 12 Мп', '14 999 грн  ', NULL, NULL, NULL, 1, NULL),
(6, 'image/d8330f17c5afb35f7112fdadcfbd6839.jpg', '   Doogee X9 Mini (Black)   ', '5.0\" HD | 4 ядра | 1.5 GHz | 5 Мп', '1 859 грн  ', NULL, NULL, NULL, 1, NULL),
(7, 'image/35e46a32259f14a951c0571931b108c4.jpg', '   Honor 6A 2/16Gb Grey (DLI-TL20)   ', '5.0\" HD | 8 ядер | 1.5 GHz | 13 Мп', '3 599 грн  ', NULL, NULL, NULL, 1, NULL),
(8, 'image/ea29a000bcac0699a3fac3e1290f1233.jpg', '   Honor 6C Pro 3/32Gb Blue   ', '5.2\" HD | 8 ядер | 1.5 GHz | 13 Мп', '4 499 грн  ', NULL, NULL, NULL, 1, NULL),
(9, 'image/8222b8ecd02e64061ffe415f1832a594.jpg', '   Honor 9 Lite 3/32Gb Sapphire Blue (LLD-L31)   ', '5.65\" FHD+ | 8 ядер | 2.36 GHz | 13 Мп + 2 Мп', '6 499 грн  ', NULL, NULL, NULL, 1, NULL),
(10, 'image/df9276e55ae3ce146a57311e38925950.jpg', '   Meizu M6 Gold   ', NULL, '3 299 грн  ', NULL, NULL, NULL, 1, NULL),
(11, 'image/a78fa7553cc9c970dd5d97d26298f7dc.jpg', '   Meizu M6 Black   ', NULL, '3 299 грн  ', NULL, NULL, NULL, 1, NULL),
(12, 'image/b4dc2e48eca632fbb6c9a8d912692cfe.jpg', '   Meizu M6 Note Silver   ', NULL, '4 999 грн  ', NULL, NULL, NULL, 1, NULL),
(13, 'image/d0bc479a216fbbc8602d55893973c583.jpg', '   Meizu M6 Note Blue   ', NULL, '4 999 грн  ', NULL, NULL, NULL, 1, NULL),
(14, 'image/549677b79d3603777a2879702265547b.jpg', '   Meizu M6 Note Black   ', NULL, '4 999 грн  ', NULL, NULL, NULL, 1, NULL),
(15, 'image/c8c4c3e95c614c7c28ede8c712017f53.jpg', '   Meizu M6 Note Gold   ', NULL, '4 999 грн  ', NULL, NULL, NULL, 1, NULL),
(16, 'image/e593925a53f29b340b5ec0aa4d0bf8ef.jpg', '   Meizu Pro 6 Plus 64Gb Gray (Украинская версия)   ', '5.7\" WQHD | 8 ядер | 2 GHz | 12 Мп', '5 999 грн  ', NULL, NULL, NULL, 1, NULL),
(17, 'image/cbececd55c013b183557ad5e2da1527b.jpg', '   Blackview A8 (Pearl White)   ', '5.0\" HD | 4 ядра | 1.3 GHz | 8 Мп', '1 599 грн  ', NULL, NULL, NULL, 1, NULL),
(18, 'image/4b16cd13ac11868f7fbea666da0bf7a3.jpg', '   Meizu M5c 32GB Black   ', NULL, '2 999 грн  ', NULL, NULL, NULL, 1, NULL),
(19, 'image/0f77e9b837c20ab212266ca040310e2c.jpg', '   Meizu Pro 6 Plus Gold 64Gb (Украинская версия)   ', '5.7\" WQHD | 8 ядер | 2 GHz | 12 Мп', '5 999 грн  ', NULL, NULL, NULL, 1, NULL),
(20, 'image/db01b9e6ced468117e9c0961fd95f697.jpg', '   Meizu M5c 32Gb Rose Gold   ', NULL, '2 999 грн  ', NULL, NULL, NULL, 1, NULL),
(21, 'image/7a974c33061662a5aa5cabd306f47915.jpg', '   Assistant AS-5436 Grid 1/16GB (Black)   ', '5.0\" HD | 4 ядра | 1.3 GHz | 8 Мп', '2 099 грн  ', NULL, NULL, NULL, 1, NULL),
(22, 'image/b3c04353aa3d4eb806c7ce96db16a61f.jpg', '   Meizu M5s Silver (Украинская версия)   ', NULL, '3 099 грн  ', NULL, NULL, NULL, 1, NULL),
(23, 'image/4974ca7b56f6c109e02ed7e9295f2a51.jpg', '   Meizu M5c 32GB Gold   ', NULL, '2 999 грн  ', NULL, NULL, NULL, 1, NULL),
(24, 'image/416cbd671b6d0a865bbd6be883260794.jpg', '   Meizu M6s 3/32Gb (Black)   ', NULL, '4 999 грн  ', NULL, NULL, NULL, 1, NULL),
(25, 'image/b7e788f226d46dca1d569200914565ff.jpg', '   Samsung Galaxy A7 (2017) Black Sky   ', '5.7\" FULL HD | 8 ядер | 1.9 GHz | 16 Мп', '11 499 грн  ', NULL, NULL, NULL, 1, NULL),
(26, 'image/61fd8b46c89364f388e378ffb930935c.jpg', '   Meizu M5s Silver (Украинская версия)   ', NULL, '3 599 грн  ', NULL, NULL, NULL, 1, NULL),
(27, 'image/d17a1cb3daacf667619674597f581949.jpg', '   Meizu M5s 16Gb Gray (Украинская версия)   ', NULL, '3 099 грн  ', NULL, NULL, NULL, 1, NULL),
(28, 'image/9861c49ad35914dafcfd31ef975e013a.jpg', '   Meizu M6s 3/32Gb (Gold)   ', NULL, '4 999 грн  ', NULL, NULL, NULL, 1, NULL),
(29, 'image/f1240e2b53bb626583f0c7b017319be4.jpg', '   Assistant AS-5435 1/16GB (Black)   ', '5.0\" HD | 4 ядра | 1.3 GHz | 8 Мп', '2 099 грн  ', NULL, NULL, NULL, 1, NULL),
(30, 'image/f73c9b7b21b9cd456de20a2ad32ba5c6.jpg', '   Meizu M5s 32Gb Gray (Украинская версия)   ', NULL, '3 599 грн  ', NULL, NULL, NULL, 1, NULL),
(31, 'image/2fb3f3c329646ac7f05763aa34e4acca.jpg', '    Meizu M5c 32Gb Red   ', NULL, '2 999 грн  ', NULL, NULL, NULL, 1, NULL),
(32, 'image/3599d60d59aa2363aa21d251ffd39a32.jpg', '   Meizu Pro 7 Plus 6/64GB (Black)   ', '5.7\" Quad HD | 10 ядер | 2.6 GHz | 12 Мп + 12 Мп', '10 999 грн  ', NULL, NULL, NULL, 1, NULL),
(33, 'image/51b5a4377f5b2bb8bd3050e1c74e5c7c.jpg', '   Meizu M5s 32Gb Gold (Украинская версия)   ', NULL, '3 599 грн  ', NULL, NULL, NULL, 1, NULL),
(34, 'image/5ad1c3ad1081faf5032e9f2443c2ac46.jpg', '   Meizu M5c 32Gb Blue   ', NULL, '2 999 грн  ', NULL, NULL, NULL, 1, NULL),
(35, 'image/926fd78c2cbf4622da78251c03897a62.jpg', '   Meizu Pro 7 4/64GB (Black)   ', '5.2\" FULL HD | 8 ядер | 2.6 GHz | 12 Мп + 12 Мп', '7 999 грн  ', NULL, NULL, NULL, 1, NULL),
(36, 'image/00c5dad5e44b8d027beab92bdce20b76.jpg', '   Meizu M5s 16Gb Gold (Украинская версия)   ', NULL, '3 099 грн  ', NULL, NULL, NULL, 1, NULL),
(37, 'image/76d6c5825ed695d00559c8a1aa612cdc.jpg', '   Meizu M6s 3/32Gb (Blue)   ', NULL, '4 999 грн  ', NULL, NULL, NULL, 1, NULL),
(38, 'image/9a77da97f9f76fed13be651a62f7f835.jpg', '   Meizu M5 Note 32Gb Gray (Украинская версия)   ', NULL, '3 999 грн  ', NULL, NULL, NULL, 1, NULL),
(39, 'image/d5e4dea852597ef1b4a80a3793b71675.jpg', '   Meizu M5 Note 32Gb Gold (Украинская версия)   ', NULL, '3 999 грн  ', NULL, NULL, NULL, 1, NULL),
(40, 'image/266af47d4edeccb0f99846027f9aa525.jpg', '   Meizu M5 Note 32Gb Silver (Украинская версия)   ', NULL, '3 999 грн  ', NULL, NULL, NULL, 1, NULL),
(41, 'image/be0f56eb82e8e13783096a0f50d9b773.jpg', '   Honor 9 4/64Gb Sapphire Blue (STF-L09)   ', '5.15\"  FULL HD | 8 ядер | 2.4GHz | 20 Мп + 12 Мп', '9 999 грн  ', NULL, NULL, NULL, 1, NULL),
(42, 'image/e81b805ef1f90f8a8de6ff4a67578720.jpg', '   Honor 9 4/64Gb Midnight Black (STF-L09)   ', '5.15\" FULL HD | 8 ядер | 2.4GHz | 20 Мп + 12 Мп', '9 999 грн  ', NULL, NULL, NULL, 1, NULL),
(43, 'image/eaee06f986bc0e320d14e3feda36b9f8.jpg', '   Honor 7X 4/64Gb Blue (BND-L21)   ', '5.9\" FHD+ | 8 ядер | 2.36 GHz | 16 Мп + 2 Мп', '6 999 грн  ', NULL, NULL, NULL, 1, NULL),
(44, 'image/2ab96ad3bdcf98b47bfee9f8e6a6b975.jpg', '   Apple iPhone SE (Silver)   ', NULL, '8 499 грн  ', NULL, NULL, NULL, 1, NULL),
(45, 'image/dad7f6ec3f18f45e7cb17b45fe5578e3.jpg', '   iPhone 6 32 Gb (Space Gray)   ', '4.7\" Retina HD | 2 ядра | 1.4 GHz | 8 Мп', '10 999 грн  ', NULL, NULL, NULL, 1, NULL),
(46, 'image/2cc49b9ee8b88569d272060712ebc01c.jpg', '   Nokia 8 Dual SIM (Copper)   ', '5.3\" Quad HD | 8 ядер | 2.5 + 1.8 GHz | 13 Мп', '16 999 грн  ', NULL, NULL, NULL, 1, NULL),
(47, 'image/33b9cc196f28673590007bafc439a114.jpg', '   Nokia 8 Dual SIM (Blue)   ', '5.3\" Quad HD | 8 ядер | 2.5 + 1.8 GHz | 13 Мп', '12 999 грн  ', NULL, NULL, NULL, 1, NULL),
(48, 'image/344316b5d20132c2e351aed6eba73596.jpg', '   Samsung Galaxy S9+ (Black)   ', '6.2\" Quad HD | 8 ядер | 2.9 GHz | 12 Мп + 12 Мп', '31 999 грн  ', NULL, NULL, NULL, 1, NULL),
(49, 'image/e8b25bc218ee05ad39f7bf2d4aafce60.jpg', '   Samsung Galaxy S9+ (Purple)   ', '6.2\" Quad HD | 8 ядер | 2.9 GHz | 12 Мп + 12 Мп', '31 999 грн  ', NULL, NULL, NULL, 1, NULL),
(50, 'image/2a61916b208199a3334e006008434ad7.jpg', '   Nokia 8 Dual SIM (Matte Blue)   ', '5.3\" Quad HD | 4 ядра | 2.5 + 1.8 GHz | 13 Мп', '12 999 грн  ', NULL, NULL, NULL, 1, NULL),
(51, 'image/cbaa3f1b1c82aba572b795a3fce124ec.jpg', '   Samsung Galaxy S9 (Black)   ', '5.8\" Quad HD | 8 ядер | 2.9 GHz | 12 Мп', '27 999 грн  ', NULL, NULL, NULL, 1, NULL),
(52, 'image/78f3cc7e1e3975af56f2d90290637707.jpg', '   Samsung Galaxy A8 (2018) Black   ', '5.6\" FHD+ | 8 ядер | 2.2 GHz | 16 Мп', '13 999  грн  ', NULL, NULL, NULL, 1, NULL),
(53, 'image/0ef86301a1dba695b2c23255b39c09f7.jpg', '   Samsung Galaxy S9+ (Grey)   ', '6.2\" Quad HD | 8 ядер | 2.9 GHz | 12 Мп + 12 Мп', '31 999 грн  ', NULL, NULL, NULL, 1, NULL),
(54, 'image/9623d870a17e083f24a7b4521e5b6dfb.jpg', '   Apple iPhone 6s (Space Gray) как новый Apple Certified Pre-owned   ', NULL, '10 999 грн  ', NULL, NULL, NULL, 1, NULL),
(55, 'image/e133d65fe7953bed4a6ba767e729e412.jpg', '   Samsung Galaxy S9 (Purple)   ', '5.8\" Quad HD | 8 ядер | 2.9 GHz | 12 Мп', '27 999 грн  ', NULL, NULL, NULL, 1, NULL),
(56, 'image/947a4759f8deabd6252b07ec9d56efba.jpg', '   Nokia 8 Dual SIM (Silver)   ', '5.3\" Quad HD | 8 ядер | 2.5 + 1.8 GHz | 13 Мп', '12 999 грн  ', NULL, NULL, NULL, 1, NULL),
(57, 'image/d16862fc5efa2e04fff3c35a70e731a8.jpg', '   Samsung Galaxy S9 (Black)   ', '5.8\" Quad HD | 8 ядер | 2.9 GHz | 12 Мп', '27 999 грн  ', NULL, NULL, NULL, 1, NULL),
(58, 'image/1cb6461feb8449fd6aeeb8defe696785.jpg', '   Samsung Galaxy S8 (Midnight Black)   ', '5.8\" Quad HD | 8 ядер | 2.3 GHz | 12 Мп', '20 499 грн  ', NULL, NULL, NULL, 1, NULL),
(59, 'image/4e4f94708372217af2edc9321f20a16c.jpg', '   Huawei P10 Lite 32GB Black   ', '5.2\" FULL HD | 8 ядер | 2.1 GHz | 12 Мп', '5 799 грн  ', NULL, NULL, NULL, 1, NULL),
(60, 'image/2396aec8d136eb36565c639bee0ca2bf.jpg', '   Huawei P10 Lite 32GB Gold   ', '5.2\" FULL HD | 8 ядер | 2.1 GHz | 12 Мп', '5 799 грн  ', NULL, NULL, NULL, 1, NULL),
(61, 'image/8085767d9dd259124e25641f6990acdf.jpg', '   Apple iPhone 8   ', NULL, '21 999 грн  ', NULL, NULL, NULL, 1, NULL),
(62, 'image/03e91d624d868f2a28226ff9c4155216.jpg', '   Apple iPhone 8 Plus   ', NULL, '25 999 грн  ', NULL, NULL, NULL, 1, NULL),
(63, 'image/a3a4f554fdfb30ce9426f08054fcad35.jpg', '   Apple iPhone X 64Gb Space Gray   ', NULL, '33 999 грн  ', NULL, NULL, NULL, 1, NULL),
(64, 'image/340e34cc622cc071350a809a8cca8b84.jpg', '   Huawei P Smart 3/32Gb Blue (51092DPL)   ', '5.65\" FHD+ | 8 ядер | 2.36 GHz | 13 Мп + 2 Мп', '6 999 грн  ', NULL, NULL, NULL, 1, NULL),
(65, 'image/3acda969c0dacfb55f2674a9f78b243f.jpg', '   Samsung Galaxy S8+ (Orchid Gray)   ', '6.2\" Quad HD | 8 ядер | 2.3 GHz | 12 Мп', '23 499 грн  ', NULL, NULL, NULL, 1, NULL),
(66, 'image/553e61cb92a4d2c7f7e4fcfd8b98ef3d.jpg', '   iPhone 7 (Black)   ', NULL, '16 999 грн  ', NULL, NULL, NULL, 1, NULL),
(67, 'image/c80f899c44fc5546e313a58dbdb2de46.jpg', '   iPhone 7 Plus (Jet Black)   ', NULL, '20 999 грн  ', NULL, NULL, NULL, 1, NULL),
(68, 'image/9b11e443f848be5c4fdd30129e2802e2.jpg', '   iPhone 7 (Gold)   ', NULL, '19 499 грн  ', NULL, NULL, NULL, 1, NULL),
(69, 'image/e3abc2e2d03fb2c509bb4b69de4a80f3.jpg', '   Apple iPhone SE (Gold)   ', NULL, '8 499 грн  ', NULL, NULL, NULL, 1, NULL),
(70, 'image/018f449aa461eb3036ced30fc75067f3.jpg', '   Apple iPhone 8   ', NULL, '25 999 грн  ', NULL, NULL, NULL, 1, NULL),
(71, 'image/29f28ee97994cc2fa1b697c4146ef765.jpg', '   Apple iPhone X 256Gb Silver   ', NULL, '35 999 грн  ', NULL, NULL, NULL, 1, NULL),
(72, 'image/01ba432626cfa55dc1614d4ff2012fc2.jpg', '   Apple iPhone 6s (Space Gray) как новый Apple Certified Pre-owned   ', NULL, '9 999 грн  ', NULL, NULL, NULL, 1, NULL),
(73, 'image/f44a0f6a4bcba74193e02c57a33e7751.jpg', '   Huawei Nova Lite 2/16Gb Black (51091VQB)   ', '5.0\" HD | 4 ядра | 1.4 GHz | 13 Мп', '3 999 грн  ', NULL, NULL, NULL, 1, NULL),
(74, 'image/115a329caf5a90e1cf04f12877344dba.jpg', '   Huawei Nova Lite 2/16Gb Gold (51091VQC)   ', '5.0\" HD | 4 ядра | 1.4 GHz | 13 Мп', '3 999 грн  ', NULL, NULL, NULL, 1, NULL),
(75, 'image/994427c148c5b75dd89f62f2552a40ec.jpg', '   Huawei Nova Lite 2/16Gb Blue (SLA-L22)   ', '5.0\" HD | 4 ядра | 1.4 GHz | 13 Мп', '3 999 грн  ', NULL, NULL, NULL, 1, NULL),
(76, 'image/f17ea4a706c4f81944f5c6e8dd20b464.jpg', '   Apple iPhone SE (Space Gray)   ', NULL, '9 499 грн  ', NULL, NULL, NULL, 1, NULL),
(77, 'image/6ea7ff9cdd17fcc94cb58dd0699abef4.jpg', '   Huawei Mate 10 Lite 4/64Gb Black (51091YGF)   ', '5.9\" FHD+ | 8 ядер | 2.4 + 1.7 GHz | 16 Мп + 2 Мп', '8 999 грн  ', NULL, NULL, NULL, 1, NULL),
(78, 'image/eee6e9d20d2d5a5412a5adcffabf74bd.jpg', '   Huawei P10 Lite 32GB Blue   ', '5.2\" FULL HD | 8 ядер | 2.1 GHz | 12 Мп', '5 799 грн  ', NULL, NULL, NULL, 1, NULL),
(79, 'image/3f5b4e3c22b705f340c47e1a249ae52a.jpg', '   Huawei Mate 10 Pro 6/128Gb Mokka (BLA-L29)   ', '6.0\" FHD+ | 8 ядер | 2.4 + 1.8 GHz | 20 Мп + 12 Мп', '24 999 грн  ', NULL, NULL, NULL, 1, NULL),
(80, 'image/38f1d081df4468e802510d34b3755f5f.jpg', '   Huawei Mate 10 Lite 4/64Gb Blue (51091YGH)   ', '5.9\" FHD+ | 8 ядер | 2.4 + 1.7 GHz | 16 Мп + 2 Мп', '8 999 грн  ', NULL, NULL, NULL, 1, NULL),
(81, 'image/d9c0c36f61274f3fa645f5ef8b47bc7f.jpg', '   Huawei P8 lite 2017 White   ', '5.2\" FULL HD | 8 ядер | 2.1 GHz | 12 Мп', '4 999 грн  ', NULL, NULL, NULL, 1, NULL),
(82, 'image/cbdce77c036b35bb505caf5bf0129638.jpg', '   Sony Xperia XZ2 DS 4/64GB Black (H8266)   ', '5.7\" FHD+ | 8 ядер  | 2.8 GHz | 19 Мп', '24 999 грн  ', NULL, NULL, NULL, 1, NULL),
(83, 'image/80b7a62f3a46a1a56c8c21cedabf29d5.jpg', '   Blackview BV7000 (Greу)   ', '5.0\" FULL HD | 4 ядра | 1.5 GHz | 8 Мп', '4 199 грн  ', NULL, NULL, NULL, 1, NULL),
(84, 'image/01292134913bbd262e0d365fb93d7bb8.jpg', '   Samsung Galaxy J6 2018 Gold (SM-J600FZDDSEK)   ', '5.6\" HD+ | 8 ядер | 1.6 GHz | 13 Мп', '5 999 грн  ', NULL, NULL, NULL, 1, NULL),
(85, 'image/2394f2a89acc9038a3a2e1f04005a4a3.jpg', '   Meizu M8c 2/16GB (Black)   ', '5.45\" HD+ | 4 ядра | 1.4 GHz | 13 Мп', '3 199 грн  ', NULL, NULL, NULL, 1, NULL),
(86, 'image/98f9f2984dfdfc45e6cf4f9b5de3c442.jpg', '   Ulefone S7 1/8Gb (Blue)   ', '5.0\" HD | 4 ядра | 1.3 GHz | 8 Мп + 5 Мп', '1 799 грн  ', NULL, NULL, NULL, 1, NULL),
(87, 'image/1001a0f9f07fa1b3455a618383496025.jpg', '   Huawei Y6 Pro Grey   ', '5.0\" HD | 4 ядра | 1.3 GHz | 13 Мп', '3 199 грн  ', NULL, NULL, NULL, 1, NULL),
(88, 'image/876cd129630f0df5a8736c2d6870f444.jpg', '   LG K9 2/16GB Black (LMX210NMW.ACISBK)   ', '5.0\" HD | 4 ядра | 1.3 GHz | 8 Мп', '3 999 грн  ', NULL, NULL, NULL, 1, NULL),
(89, 'image/f7de538d3a363f491b06f3ab692729c7.jpg', '   OnePlus 6 6/64Gb Mirror Black   ', NULL, '17 999 грн  ', NULL, NULL, NULL, 1, NULL),
(90, 'image/e7fddf671fd6d4ff17dd2915c4b1e38d.jpg', '   Google Pixel 2 64Gb (Clearly White)   ', NULL, '25 999 грн  ', NULL, NULL, NULL, 1, NULL),
(91, 'image/946b2497cc55b071dfbe883367c7698a.jpg', '   Blackview S8 4/64GB Gold   ', '5.7\" HD+ | 8 ядер | 1.5 GHz | 13 Мп + 0.3 Мп', '4 999 грн  ', NULL, NULL, NULL, 1, NULL),
(92, 'image/8ecdc615524cb38b665f533e88457684.jpg', '   Samsung Galaxy Tab A 10.1&quot; LTE (SM-T585) black   ', '10.1\" WUXGA | 8 ядер | 3G | 7300mAH', '8 999 грн  ', NULL, NULL, NULL, 2, NULL),
(93, 'image/072856d75566ddba7b0069cdc30c6d84.jpg', '   Samsung Galaxy Tab S3 9.7&quot; Wi-Fi (SM-T820) Black   ', '9.7\" QXGA | 4 ядра | 6000mAH', '18 999 грн  ', NULL, NULL, NULL, 2, NULL),
(94, 'image/9205ac66e8318053728c5b46e0f7f0e3.jpg', '   Apple iPad 32Gb Wi-Fi Silver (MP2G2RK/A) 2017   ', NULL, '8 999 грн  ', NULL, NULL, NULL, 2, NULL),
(95, 'image/2a99b12561167d32b2c09030eb56e243.jpg', '   Teclast 98 4G 2/32Gb   ', '10.1\" FULL HD | 8 ядер | 3G | 4900mAH', '3 999 грн  ', NULL, NULL, NULL, 2, NULL),
(96, 'image/119db323f379f371b058c10ded959420.jpg', '   Chuwi Hi10 Plus   ', '10.8\" WUXGA | 4 ядра | 8400mAH', '5 699 грн  ', NULL, NULL, NULL, 2, NULL),
(97, 'image/7ae2304d4e697512871f89a421a02aac.jpg', '   Samsung Galaxy Tab S3 9.7&quot; LTE (SM-T825) Silver   ', '9.7\" QXGA | 4 ядра | 3G | 6000mAH', '24 999 грн  ', NULL, NULL, NULL, 2, NULL),
(98, 'image/b18345e63850a494ec0e20671fac952d.jpg', '   Samsung Galaxy Tab E 9.6&quot; 3G (Black)   ', '9.6\" WXGA | 4 ядра | 3G | 5000mAH', '4 999 грн  ', NULL, NULL, NULL, 2, NULL),
(99, 'image/339f3a966694e7a0f8c67a943abf67dc.jpg', '   Chuwi Hi10 Pro   ', '10.1\" WUXGA | 4 ядра | 6500mAH', '5 399 грн  ', NULL, NULL, NULL, 2, NULL),
(100, 'image/6466f4e5efde31f177eefddd970ab210.jpg', '   Lenovo Tab 3 Plus X70L 3G 2/16Gb (ZA0Y0036UA) Black   ', '10\" FULL HD | 4 ядра | 7000mAH', '5 999 грн  ', NULL, NULL, NULL, 2, NULL),
(101, 'image/fb980fb19714d1d2c043af4e09766e55.jpg', '   Apple iPad 32Gb Wi-Fi+4G Space Gray (MP1J2RK/A) 2017   ', NULL, '13 999 грн  ', NULL, NULL, NULL, 2, NULL),
(102, 'image/065913b7bf0b162fc36dae9b03ca1195.jpg', '   iPad Pro 10.5 Wi-Fi+4G (Rose Gold) 2017   ', NULL, '26 499 грн  ', NULL, NULL, NULL, 2, NULL),
(103, 'image/2cec2a8247d1d9c3bac4ff900d12887b.jpg', '   Apple iPad 9.7&quot; Wi-Fi 32GB (2018) Gold   ', NULL, '10 499 грн  ', NULL, NULL, NULL, 2, NULL),
(104, 'image/223f58520fcbc41855dbf88a191a7420.jpg', '   iPad Pro 12.9 Wi-Fi+4G (Gold) 2017   ', NULL, '29 999 грн  ', NULL, NULL, NULL, 2, NULL),
(105, 'image/7836dfd821fd2fdaf60c3b18f25decde.jpg', '   Huawei MediaPad T3 10&quot; 16Gb 3G (Gold)   ', '9.6\" HD | 4 ядра | 3G | 4800mAH', '5 499 грн  ', NULL, NULL, NULL, 2, NULL),
(106, 'image/b3b1f70087608357a6d2b965d6afbbf7.jpg', '   Yoga Book 4/128GB LTE Windows Pro (ZA160126UA) Ruby Red   ', '10.1\" FULL HD | 4 ядра | 3G | 8500mAH', '21 499 грн  ', NULL, NULL, NULL, 2, NULL),
(107, 'image/ad751999856524e4dede61b821f5dcd1.jpg', '    Apple iPad 32Gb Wi-Fi Space Gray (MP2F2RK/A) 2017   ', NULL, '8 999 грн  ', NULL, NULL, NULL, 2, NULL),
(108, 'image/d42286ac01312290f9665bbf3c516c38.jpg', '   iPad Pro 10.5 Wi-Fi+4G (Space Gray) 2017   ', NULL, '26 499 грн  ', NULL, NULL, NULL, 2, NULL),
(109, 'image/4a4241f2d4afd49bb30ccbcc718707ca.jpg', '   Assistant AP-757G (Black)   ', '7.0\" HD | 4 ядра | 2500mAH', '1 949  грн  ', NULL, NULL, NULL, 2, NULL),
(110, 'image/fc839017e0127c85758c573fb662d4d0.jpg', '   iPad Pro 12.9 Wi-Fi (Gold) 2017   ', NULL, '25 999 грн  ', NULL, NULL, NULL, 2, NULL),
(111, 'image/8277777fcf4be01478b5b9caa0c661ec.jpg', '   Apple iPad 9.7&quot; Wi-Fi+4G 32GB (2018) Space Gray   ', NULL, '15 099 грн  ', NULL, NULL, NULL, 2, NULL),
(112, 'image/7f5eca8108912677eed62ad1f23fa67f.jpg', '   Samsung Galaxy Tab A 8.0 16Gb LTE (Smoky Titanium)   ', '8.0\" XGA | 4 ядра | 3G | 4200mAH', '6 499 грн  ', NULL, NULL, NULL, 2, NULL),
(113, 'image/048a77a116fde0c200e759353c213f22.jpg', '   Apple iPad 32Gb Wi-Fi+4G Gold (MPG42RK/A) 2017   ', NULL, '13 999 грн  ', NULL, NULL, NULL, 2, NULL),
(114, 'image/fd435afb8bc186538b0363ea9babac73.jpg', '   Apple iPad 9.7&quot; Wi-Fi 32GB (2018) Space Gray   ', NULL, '10 499 грн  ', NULL, NULL, NULL, 2, NULL),
(115, 'image/a9d9c8d220254cc7e066e712bb95347c.jpg', '   Lenovo TAB4 7 TB-7304F Essential 1/8Gb (Black)   ', '&nbsp;', '2 399 грн  ', NULL, NULL, NULL, 2, NULL),
(116, 'image/56f854722e0faa1660a57d79c104846e.jpg', '   iPad Pro 10.5 Wi-Fi+4G (Silver) 2017   ', NULL, '26 499 грн  ', NULL, NULL, NULL, 2, NULL),
(117, 'image/3359e7d797cd8bc46899e58ac110e2dd.jpg', '   iPad Pro 12.9 Wi-Fi (Space Gray) 2017   ', NULL, '25 999 грн  ', NULL, NULL, NULL, 2, NULL),
(118, 'image/8e4233002234b23084458b5583366d26.jpg', '   Huawei MediaPad T3 10&quot; 16Gb 3G (Grey)   ', '9.6\" HD | 4 ядра | 3G | 4800mAH', '5 499 грн  ', NULL, NULL, NULL, 2, NULL),
(119, 'image/fbfd99c1cd570b9a00f3437c4168d8b0.jpg', '   Apple iPad 9.7&quot; Wi-Fi+4G 32GB (2018) Gold   ', NULL, '15 099 грн  ', NULL, NULL, NULL, 2, NULL),
(120, 'image/a9b5286029ebc7f411a7446a72bab2b5.jpg', '   Samsung Galaxy Tab A 8.0&quot; 16GB LTE (T385NZKASEK) Black   ', '8.0\" WXGA | 4 ядра | 3G | 5000mAH', '6 999 грн  ', NULL, NULL, NULL, 2, NULL),
(121, 'image/2cec2a8247d1d9c3bac4ff900d12887b.jpg', '   Apple iPad 9.7&quot; Wi-Fi 32GB (2018) Gold   ', NULL, '10 499 грн  ', NULL, NULL, NULL, 2, NULL),
(122, 'image/223f58520fcbc41855dbf88a191a7420.jpg', '   iPad Pro 12.9 Wi-Fi+4G (Gold) 2017   ', NULL, '29 999 грн  ', NULL, NULL, NULL, 2, NULL),
(123, 'image/7836dfd821fd2fdaf60c3b18f25decde.jpg', '   Huawei MediaPad T3 10&quot; 16Gb 3G (Gold)   ', '9.6\" HD | 4 ядра | 3G | 4800mAH', '5 499 грн  ', NULL, NULL, NULL, 2, NULL),
(124, 'image/b3b1f70087608357a6d2b965d6afbbf7.jpg', '   Yoga Book 4/128GB LTE Windows Pro (ZA160126UA) Ruby Red   ', '10.1\" FULL HD | 4 ядра | 3G | 8500mAH', '21 499 грн  ', NULL, NULL, NULL, 2, NULL),
(125, 'image/fb980fb19714d1d2c043af4e09766e55.jpg', '   Apple iPad 32Gb Wi-Fi+4G Space Gray (MP1J2RK/A) 2017   ', NULL, '13 999 грн  ', NULL, NULL, NULL, 2, NULL),
(126, 'image/065913b7bf0b162fc36dae9b03ca1195.jpg', '   iPad Pro 10.5 Wi-Fi+4G (Rose Gold) 2017   ', NULL, '26 499 грн  ', NULL, NULL, NULL, 2, NULL),
(127, 'image/fc839017e0127c85758c573fb662d4d0.jpg', '   iPad Pro 12.9 Wi-Fi (Gold) 2017   ', NULL, '25 999 грн  ', NULL, NULL, NULL, 2, NULL),
(128, 'image/8277777fcf4be01478b5b9caa0c661ec.jpg', '   Apple iPad 9.7&quot; Wi-Fi+4G 32GB (2018) Space Gray   ', NULL, '15 099 грн  ', NULL, NULL, NULL, 2, NULL),
(129, 'image/ad751999856524e4dede61b821f5dcd1.jpg', '   Apple iPad 32Gb Wi-Fi Space Gray (MP2F2RK/A) 2017   ', NULL, '8 999 грн  ', NULL, NULL, NULL, 2, NULL),
(130, 'image/d42286ac01312290f9665bbf3c516c38.jpg', '   iPad Pro 10.5 Wi-Fi+4G (Space Gray) 2017   ', NULL, '26 499 грн  ', NULL, NULL, NULL, 2, NULL),
(131, 'image/4a4241f2d4afd49bb30ccbcc718707ca.jpg', '   Assistant AP-757G (Black)   ', '7.0\" HD | 4 ядра | 2500mAH', '1 949 грн  ', NULL, NULL, NULL, 2, NULL),
(132, 'image/048a77a116fde0c200e759353c213f22.jpg', '   Apple iPad 32Gb Wi-Fi+4G Gold (MPG42RK/A) 2017   ', NULL, '13 999 грн  ', NULL, NULL, NULL, 2, NULL),
(133, 'image/fd435afb8bc186538b0363ea9babac73.jpg', '   Apple iPad 9.7&quot; Wi-Fi 32GB (2018) Space Gray   ', NULL, '10 499 грн  ', NULL, NULL, NULL, 2, NULL),
(134, 'image/a9d9c8d220254cc7e066e712bb95347c.jpg', '   Lenovo TAB4 7 TB-7304F Essential 1/8Gb (Black)   ', '&nbsp;', '2 399 грн  ', NULL, NULL, NULL, 2, NULL),
(135, 'image/7f5eca8108912677eed62ad1f23fa67f.jpg', '   Samsung Galaxy Tab A 8.0 16Gb LTE (Smoky Titanium)   ', '8.0\" XGA | 4 ядра | 3G | 4200mAH', '6 499 грн  ', NULL, NULL, NULL, 2, NULL),
(136, 'image/f925f1e05bbab75d01a2a2d407e7d99f.jpg', '   Samsung Galaxy Tab A 7.0 8Gb LTE (Black)   ', '7.0\" WXGA | 4 ядра | 3G | 4000mAH', '4 499 грн  ', NULL, NULL, NULL, 2, NULL),
(137, 'image/72f2ea2f66c1feecadd9ecc049239b2c.jpg', '   Samsung Galaxy Tab S3 9.7&quot; LTE (SM-T825) Black   ', '9.7\" QXGA | 4 ядра | 3G | 6000mAH', '24 999 грн  ', NULL, NULL, NULL, 2, NULL),
(138, 'image/099a2b5dcb46bffea1862136955f0511.jpg', '   iPad Pro 12.9 Wi-Fi+4G (Silver) 2017   ', NULL, '29 999 грн  ', NULL, NULL, NULL, 2, NULL),
(139, 'image/b3ad8e40e2e728599112ee98b6ebc730.jpg', '   LapBook Chuwi 12.3&quot;   ', '&nbsp;', '9 499 грн  ', NULL, NULL, NULL, 2, NULL),
(140, 'image/63f37284226bcef67d6ffbff757dc2fc.jpg', '   Lenovo Tab4 7 Essential TB-7304I 3G 2/16GB (Black) ZA310144UA   ', '7.0\" WSVGA | 4 ядра | 3G | 3450mAH', '3 499 грн  ', NULL, NULL, NULL, 2, NULL),
(141, 'image/fb980fb19714d1d2c043af4e09766e55.jpg', '   Apple iPad 32Gb Wi-Fi+4G Space Gray (MP1J2RK/A) 2017   ', NULL, '13 999 грн  ', NULL, NULL, NULL, 2, NULL),
(142, 'image/065913b7bf0b162fc36dae9b03ca1195.jpg', '   iPad Pro 10.5 Wi-Fi+4G (Rose Gold) 2017   ', NULL, '26 499 грн  ', NULL, NULL, NULL, 2, NULL),
(143, 'image/2cec2a8247d1d9c3bac4ff900d12887b.jpg', '   Apple iPad 9.7&quot; Wi-Fi 32GB (2018) Gold   ', NULL, '10 499 грн  ', NULL, NULL, NULL, 2, NULL),
(144, 'image/b05a5312164f8d26a6cc5c1b372594b5.jpg', '   Lenovo Yoga Book YB1-X91F Wi-Fi Windows Pro (ZA150018UA) Carbon Black   ', '10.1\" FULL HD | 4 ядра | 8500mAH', '16 299 грн  ', NULL, NULL, NULL, 2, NULL),
(145, 'image/5d1a03cc25f05a1b36a99b537f0a5d9f.jpg', '   Lenovo Tab4 8 Plus LTE 4/64Gb (Slate Black)   ', '8.0\" FULL HD | 8 ядер | 3G | 4850mAH', '8 549 грн  ', NULL, NULL, NULL, 2, NULL),
(146, 'image/e157e581e043a61aa63d98b9fa58e11e.jpg', '   Asus ZenPad 8.0 2/16Gb Wi-Fi (Dark Gray)   ', '8.0\" WXGA | 4 ядра | 4000mAH', '3 999 грн  ', NULL, NULL, NULL, 2, NULL),
(147, 'image/5673af0cc79b8f4c8f751473e8667f92.jpg', '   iPad Pro 9.7 Wi-Fi+4G (Space Gray)   ', NULL, '15 999 грн  ', NULL, NULL, NULL, 2, NULL),
(148, 'image/d914a88c815e71e220bbc13b89242842.jpg', '   Asus ZenPad 3S 10 9.7&quot; 4/64Gb Wi-Fi (Silver)   ', '9.7\" QXGA | 6 ядер | 5900mAH', '8 999 грн  ', NULL, NULL, NULL, 2, NULL),
(149, 'image/b00dbb67102373731ef548188eb18082.jpg', '   Samsung Galaxy Tab S3 9.7&quot; Wi-Fi (SM-T820) Silver   ', '9.7\" QXGA | 4 ядра | 6000mAH', '18 999 грн  ', NULL, NULL, NULL, 2, NULL),
(150, 'image/f07777bbb2650bb06d08e00caacba557.jpg', '   iPad Pro 10.5 Wi-Fi (Silver) 2017   ', NULL, '21 299 грн  ', NULL, NULL, NULL, 2, NULL),
(151, 'image/733688f71bef7dc12059f53c0a097651.jpg', '   Asus ZenPad 3S 10 9.7&quot; 4/32Gb LTE (Slate Gray)   ', NULL, '12 099 грн  ', NULL, NULL, NULL, 2, NULL),
(152, 'image/9478cca187b34315b2ed9262a26cf972.jpg', '   Samsung Galaxy Tab S2 9.7 LTE (SM-T819) Bronze Gold   ', '9.7\" QXGA | 8 ядер | 3G | 5870mAH', '13 999 грн  ', NULL, NULL, NULL, 2, NULL),
(153, 'image/680e57d8e69952d2c5a8fd8169be0646.jpg', '   Asus ZenPad 8.0 2/16Gb Wi-Fi (Rose Gold)   ', '8.0\" WXGA | 4 ядра | 4000mAH', '3 999 грн  ', NULL, NULL, NULL, 2, NULL),
(154, 'image/25fdef9c8e97e8dd445af3937c43201f.jpg', '   Huawei MediaPad T3 7&quot; 8Gb (Grey)   ', '&nbsp;', '2 999 грн  ', NULL, NULL, NULL, 2, NULL),
(155, 'image/36098786d643f6e50f1ab2ec742a2e39.jpg', '   Assistant AP-755G (Gold)   ', '7.0\" WXGA | 4 ядра | 3G | 2800mAH', '1 999 грн  ', NULL, NULL, NULL, 2, NULL),
(156, 'image/88e6f92c0a05e299d1d8d828b6bfd643.jpg', '   Ультрабук Xiaomi Mi Notebook Air 12.5&quot; 4/128 GB Silver   ', '&nbsp;', '15 999 грн  ', NULL, NULL, NULL, 3, NULL),
(157, 'image/0476ddb80e093a2b5aecc2c9cc65520c.jpg', '   Ультрабук Xiaomi Mi Notebook Air 12.5&quot; 4/256 GB Silver   ', '&nbsp;', '19 999 грн  ', NULL, NULL, NULL, 3, NULL),
(158, 'image/550725c7565a187c40e6bbb236a9d6f0.jpg', '   Apple MacBook Air 13&quot; 128Gb (MQD32) 2017   ', '&nbsp;', '26 999 грн  ', NULL, NULL, NULL, 3, NULL),
(159, 'image/57b2be44dd46a3e15717bdc4aaba490c.jpg', '   Ноутбук Huawei Matebook X WT-W09 13&quot; 4/256GB Space Gray   ', '&nbsp;', '27 999 грн  ', NULL, NULL, NULL, 3, NULL),
(160, 'image/0368c1b0c262b6dbf0928a54d3b96811.jpg', '   Apple MacBook Air 13&quot; (MMGG2UA/A)   ', '&nbsp;', '32 299 грн  ', NULL, NULL, NULL, 3, NULL),
(161, 'image/db669dfd580d3af00a37c1ff743b4718.jpg', '   Apple MacBook 12&quot; (MLHA2UA/A) Silver   ', '&nbsp;', '32 499 грн  ', NULL, NULL, NULL, 3, NULL),
(162, 'image/57181bbade40075a63c7f3f69bdcaf68.jpg', '   Apple MacBook 12&quot; (MMGL2UA/A) Rose Gold   ', '&nbsp;', '32 499 грн  ', NULL, NULL, NULL, 3, NULL),
(163, 'image/3df67ad1cd4bc37851e6332e507f621e.jpg', '   Apple MacBook 12&quot; (MLH72UA/A) Space Gray   ', '&nbsp;', '32 499 грн  ', NULL, NULL, NULL, 3, NULL),
(164, 'image/487f6dd421be87925995319da24711c4.jpg', '   Ноутбук Huawei Matebook X WT-W09 13&quot; 8/256GB Space Gray   ', '&nbsp;', '32 999 грн  ', NULL, NULL, NULL, 3, NULL),
(165, 'image/9a2ab303f43971eea924ac53a0436df5.jpg', '   Apple MacBook 12&quot; (MMGM2UA/A) Rose Gold   ', '&nbsp;', '33 999 грн  ', NULL, NULL, NULL, 3, NULL),
(166, 'image/b3ce0214741b9359dca32c7fa27d6d70.jpg', '   Apple MacBook 12&quot; (MLH82UA/A) Space Gray   ', '&nbsp;', '33 999 грн  ', NULL, NULL, NULL, 3, NULL),
(167, 'image/8eafdf04ca6e980212db35b50773480e.jpg', '   Apple MacBook 12&quot; (MLHF2UA/A) Gold   ', '&nbsp;', '33 999 грн  ', NULL, NULL, NULL, 3, NULL),
(168, 'image/264402c2763ef9d4603539817e80a1c8.jpg', '   Apple MacBook 12&quot; (MLHC2UA/A) Silver   ', '&nbsp;', '33 999 грн  ', NULL, NULL, NULL, 3, NULL),
(169, 'image/971c0f61a7b199a84ae1229c5ba47e4a.jpg', '   Apple MacBook 12&quot; (MLHE2UA/A) Gold   ', '&nbsp;', '37 999 грн  ', NULL, NULL, NULL, 3, NULL),
(170, 'image/0cd56294112c9efa4e1abfd15029796c.jpg', '   Apple MacBook Pro Retina 13&quot; (MLUQ2UA/A) Silver   ', '&nbsp;', '39 999 грн  ', NULL, NULL, NULL, 3, NULL),
(171, 'image/af39895deea2c0ccf0dc5767c5215bf7.jpg', '   Apple MacBook Pro Retina 13&quot; (MLL42UA/A) Space Grey   ', '&nbsp;', '39 999 грн  ', NULL, NULL, NULL, 3, NULL),
(172, 'image/5f614e73c6d7e39be342b3a0416006e7.jpg', '   Apple MacBook Pro Retina Touch Bar 13&quot; (MLH12UA/A) Space Grey   ', '&nbsp;', '43 999 грн  ', NULL, NULL, NULL, 3, NULL),
(173, 'image/ff649f7ba6cb7a608f528b6997adaa55.jpg', '   Apple MacBook Pro Retina Touch Bar 15&quot; (MLH32UA/A) Space Grey   ', '&nbsp;', '62 999 грн  ', NULL, NULL, NULL, 3, NULL),
(174, 'image/b2a12df6d37c720d62eef9e08b1340af.jpg', '   Apple MacBook Pro Retina 15.4 (MJLQ2UA/A)   ', '&nbsp;', '63 499 грн  ', NULL, NULL, NULL, 3, NULL),
(175, 'image/34f4725d492607b934bfaa06fea54533.jpg', '   Apple MacBook Pro Retina Touch Bar (MLH42UA/A) Space Grey   ', '&nbsp;', '76 999 грн  ', NULL, NULL, NULL, 3, NULL),
(176, 'image/30afcff3314fbe731dc97a9393f6ebdf.jpg', '   Ноутбук Huawei Matebook D PL-W09 15.6&quot; 4/500GB   ', '&nbsp;', '17 999 грн  ', NULL, NULL, NULL, 3, NULL),
(177, 'image/bf8c715ee41fe43e96a736848cdd613f.jpg', '   Ноутбук Huawei Matebook D PL-W09 15.6&quot; 8GB/1T   ', '&nbsp;', '24 999 грн  ', NULL, NULL, NULL, 3, NULL),
(178, 'image/67358888a5b264fa48ec0ad4c36524be.jpg', '   Ультрабук Xiaomi Mi Notebook Air 13.3&quot; Silver   ', '&nbsp;', '26 499 грн  ', NULL, NULL, NULL, 3, NULL),
(179, 'image/21fa4b3f0272c07a2ece25f75e387dd9.jpg', '   Apple MacBook Pro Retina 13&quot; 128GB Space Gray (MPXQ2) 2017   ', '&nbsp;', '40 999 грн  ', NULL, NULL, NULL, 3, NULL),
(180, 'image/873c782c37f8148ffefeb2dd76534e78.jpg', '   Apple MacBook Pro Retina 13&quot; 128GB Silver (MPXR2) 2017   ', '&nbsp;', '40 999 грн  ', NULL, NULL, NULL, 3, NULL),
(181, 'image/92def6da29d095b91125ad62cb545efb.jpg', '   Apple MacBook Air 13&quot; 256Gb (MQD42) 2017   ', '&nbsp;', '39 099 грн  ', NULL, NULL, NULL, 3, NULL),
(182, 'image/5498877e125142942ab3313ba369dea3.jpg', '   Apple MacBook 12\'\' 256Gb Space Gray (MNYF2) 2017   ', '&nbsp;', '42 399 грн  ', NULL, NULL, NULL, 3, NULL),
(183, 'image/1300d1f7bcdabe16e877c2bc8790d349.jpg', '   Apple MacBook 12\'\' 256Gb Rose Gold (MNYM2) 2017   ', '&nbsp;', '42 399 грн  ', NULL, NULL, NULL, 3, NULL),
(184, 'image/73b7ce5f54a2887480b55b7976663b30.jpg', '    Apple MacBook 12\'\' 256Gb Gold (MNYK2) 2017   ', '&nbsp;', '42 399 грн  ', NULL, NULL, NULL, 3, NULL),
(185, 'image/eb4c23c6836ead66ca2ca1516d78274e.jpg', '   Apple MacBook 12\'\' 256Gb Silver (MNYH2) 2017   ', '&nbsp;', '42 399 грн  ', NULL, NULL, NULL, 3, NULL),
(186, 'image/74813a9b69ae8a0c3c26e6f35f08fb05.jpg', '   Apple MacBook Pro Retina Touch Bar 13&quot; (MLVP2UA/A) Silver   ', '&nbsp;', '48 999 грн  ', NULL, NULL, NULL, 3, NULL),
(187, 'image/a277a9010f4d0cc21640ac59a8ad2652.jpg', '   Apple MacBook Pro Retina Touch Bar 13&quot; (MNQG2UA/A) Silver   ', '&nbsp;', '52 999 грн  ', NULL, NULL, NULL, 3, NULL),
(188, 'image/30bc4d538d0dfbf32a00c1219c88410a.jpg', '   Apple MacBook Pro Retina 13&quot; 256GB Silver (MPXU2) 2017   ', '&nbsp;', '48 999 грн  ', NULL, NULL, NULL, 3, NULL),
(189, 'image/e68b0b5fb71ab2632f0ee273f54bdd57.jpg', '   Apple MacBook Pro Retina 13&quot; 256GB Space Gray (MPXT2) 2017   ', '&nbsp;', '48 999 грн  ', NULL, NULL, NULL, 3, NULL),
(190, 'image/adce965499488620105e7c352324627b.jpg', '   Apple MacBook 12\'\' 512Gb Rose Gold (MNYN2) 2017   ', '&nbsp;', '52 499 грн  ', NULL, NULL, NULL, 3, NULL),
(191, 'image/62cec3286f05359276b3f4b650be53b9.jpg', '   Apple MacBook 12\'\' 512Gb Gold (MNYL2) 2017    ', '&nbsp;', '52 499 грн  ', NULL, NULL, NULL, 3, NULL),
(192, 'image/791144526ae43a1cba75ac8f21f08393.jpg', '   Apple MacBook 12\'\' 512Gb Space Gray (MNYG2) 2017   ', '&nbsp;', '52 499 грн  ', NULL, NULL, NULL, 3, NULL),
(193, 'image/fe113ceb56d947257293532ef3927aaa.jpg', '   Apple MacBook 12\'\' 512Gb Silver (MNYJ2) 2017   ', '&nbsp;', '52 499 грн  ', NULL, NULL, NULL, 3, NULL),
(194, 'image/52d38b1295ab43ad2968f2e09bba61c4.jpg', '   Apple MacBook Pro Retina Touch Bar 13&quot; (MNQF2UA/A) Space Grey   ', '&nbsp;', '58 999 грн  ', NULL, NULL, NULL, 3, NULL),
(195, 'image/0a5ea63f0a4b79ed44e428e595157ef7.jpg', '   Apple MacBook Pro Retina Touch Bar 15&quot; (MLW72UA/A) Silver   ', '&nbsp;', '62 999 грн  ', NULL, NULL, NULL, 3, NULL),
(196, 'image/c298e597e0bcc536b1107954171b36d4.jpg', '   Apple MacBook Pro Retina Touch Bar 13&quot; 256Gb Silver (MPXX2) 2017   ', '&nbsp;', '58 599 грн  ', NULL, NULL, NULL, 3, NULL),
(197, 'image/85a8fa477e09e392747fd0943d276e30.jpg', '   Apple MacBook Pro Retina Touch Bar 13&quot; 256Gb Space Gray (MPXV2) 2017   ', '&nbsp;', '58 599 грн  ', NULL, NULL, NULL, 3, NULL),
(198, 'image/5750d6bd0e6ad4fe9f395131fc050a51.jpg', '   Apple MacBook Pro Retina Touch Bar 13&quot; 512Gb Silver (MPXY2) 2017   ', '&nbsp;', '65 399 грн  ', NULL, NULL, NULL, 3, NULL),
(199, 'image/fa7de9f4166704b67f5adca31e58901f.jpg', '   Apple MacBook Pro Retina Touch Bar 13&quot; 512Gb Space Gray (MPXW2) 2017   ', '&nbsp;', '65 399 грн  ', NULL, NULL, NULL, 3, NULL),
(200, 'image/9b9b9a08d43b25ce916f4f102565d201.jpg', '   Apple MacBook Pro Retina Touch Bar 15&quot; (MLW82UA/A) Silver   ', '&nbsp;', '76 999 грн  ', NULL, NULL, NULL, 3, NULL),
(201, 'image/6ffeae27e0b752c48a9b0ce740df8a1a.jpg', '   Apple MacBook Pro Touch Bar 15&quot; 256Gb Touch Bar Space Gray (MPTR2) 2017   ', '&nbsp;', '76 299 грн  ', NULL, NULL, NULL, 3, NULL),
(202, 'image/a2d15124d1fd2462920b6aa9012f2d78.jpg', '   Apple MacBook Pro Touch Bar 15&quot; Silver (MPTU2) 2017   ', '&nbsp;', '76 299 грн  ', NULL, NULL, NULL, 3, NULL),
(203, 'image/ecbbd44e0293cd48689f8d2f919b8357.jpg', '   Apple MacBook Pro Touch Bar 15&quot; 512Gb Space Gray (MPTT2) 2017   ', '&nbsp;', '88 499 грн  ', NULL, NULL, NULL, 3, NULL),
(204, 'image/83316cbde9055f795362bdcb7fd18586.jpg', '   Apple MacBook Pro Touch Bar 15&quot; 512Gb Silver (MPTV2) 2017   ', '&nbsp;', '88 499 грн  ', NULL, NULL, NULL, 3, NULL),
(205, 'image/88e6f92c0a05e299d1d8d828b6bfd643.jpg', '   Ультрабук Xiaomi Mi Notebook Air 12.5&quot; 4/128 GB Silver   ', '&nbsp;', '15 999 грн  ', NULL, NULL, NULL, 3, NULL),
(206, 'image/0476ddb80e093a2b5aecc2c9cc65520c.jpg', '   Ультрабук Xiaomi Mi Notebook Air 12.5&quot; 4/256 GB Silver   ', '&nbsp;', '19 999 грн  ', NULL, NULL, NULL, 3, NULL),
(207, 'image/550725c7565a187c40e6bbb236a9d6f0.jpg', '   Apple MacBook Air 13&quot; 128Gb (MQD32) 2017   ', '&nbsp;', '26 999 грн  ', NULL, NULL, NULL, 3, NULL),
(208, 'image/57b2be44dd46a3e15717bdc4aaba490c.jpg', '   Ноутбук Huawei Matebook X WT-W09 13&quot; 4/256GB Space Gray   ', '&nbsp;', '27 999 грн  ', NULL, NULL, NULL, 3, NULL),
(209, 'image/0368c1b0c262b6dbf0928a54d3b96811.jpg', '   Apple MacBook Air 13&quot; (MMGG2UA/A)   ', '&nbsp;', '32 299 грн  ', NULL, NULL, NULL, 3, NULL),
(210, 'image/57181bbade40075a63c7f3f69bdcaf68.jpg', '    Apple MacBook 12&quot; (MMGL2UA/A) Rose Gold   ', '&nbsp;', '32 499 грн  ', NULL, NULL, NULL, 3, NULL),
(211, 'image/3df67ad1cd4bc37851e6332e507f621e.jpg', '   Apple MacBook 12&quot; (MLH72UA/A) Space Gray   ', '&nbsp;', '32 499 грн  ', NULL, NULL, NULL, 3, NULL),
(212, 'image/db669dfd580d3af00a37c1ff743b4718.jpg', '   Apple MacBook 12&quot; (MLHA2UA/A) Silver   ', '&nbsp;', '32 499 грн  ', NULL, NULL, NULL, 3, NULL),
(213, 'image/487f6dd421be87925995319da24711c4.jpg', '   Ноутбук Huawei Matebook X WT-W09 13&quot; 8/256GB Space Gray   ', '&nbsp;', '32 999 грн  ', NULL, NULL, NULL, 3, NULL),
(214, 'image/b3ce0214741b9359dca32c7fa27d6d70.jpg', '   Apple MacBook 12&quot; (MLH82UA/A) Space Gray   ', '&nbsp;', '33 999 грн  ', NULL, NULL, NULL, 3, NULL),
(215, 'image/8eafdf04ca6e980212db35b50773480e.jpg', '   Apple MacBook 12&quot; (MLHF2UA/A) Gold   ', '&nbsp;', '33 999 грн  ', NULL, NULL, NULL, 3, NULL),
(216, 'image/264402c2763ef9d4603539817e80a1c8.jpg', '   Apple MacBook 12&quot; (MLHC2UA/A) Silver   ', '&nbsp;', '33 999 грн  ', NULL, NULL, NULL, 3, NULL),
(217, 'image/9a2ab303f43971eea924ac53a0436df5.jpg', '   Apple MacBook 12&quot; (MMGM2UA/A) Rose Gold   ', '&nbsp;', '33 999 грн  ', NULL, NULL, NULL, 3, NULL),
(218, 'image/971c0f61a7b199a84ae1229c5ba47e4a.jpg', '   Apple MacBook 12&quot; (MLHE2UA/A) Gold   ', '&nbsp;', '37 999 грн  ', NULL, NULL, NULL, 3, NULL),
(219, 'image/0cd56294112c9efa4e1abfd15029796c.jpg', '   Apple MacBook Pro Retina 13&quot; (MLUQ2UA/A) Silver   ', '&nbsp;', '39 999 грн  ', NULL, NULL, NULL, 3, NULL),
(220, 'image/af39895deea2c0ccf0dc5767c5215bf7.jpg', '   Apple MacBook Pro Retina 13&quot; (MLL42UA/A) Space Grey   ', '&nbsp;', '39 999 грн  ', NULL, NULL, NULL, 3, NULL),
(221, 'image/5f614e73c6d7e39be342b3a0416006e7.jpg', '   Apple MacBook Pro Retina Touch Bar 13&quot; (MLH12UA/A) Space Grey   ', '&nbsp;', '43 999 грн  ', NULL, NULL, NULL, 3, NULL),
(222, 'image/ff649f7ba6cb7a608f528b6997adaa55.jpg', '    Apple MacBook Pro Retina Touch Bar 15&quot; (MLH32UA/A) Space Grey   ', '&nbsp;', '62 999 грн  ', NULL, NULL, NULL, 3, NULL),
(223, 'image/b2a12df6d37c720d62eef9e08b1340af.jpg', '   Apple MacBook Pro Retina 15.4 (MJLQ2UA/A)   ', '&nbsp;', '63 499 грн  ', NULL, NULL, NULL, 3, NULL),
(224, 'image/34f4725d492607b934bfaa06fea54533.jpg', '   Apple MacBook Pro Retina Touch Bar (MLH42UA/A) Space Grey   ', '&nbsp;', '76 999 грн  ', NULL, NULL, NULL, 3, NULL),
(225, 'image/30afcff3314fbe731dc97a9393f6ebdf.jpg', '   Ноутбук Huawei Matebook D PL-W09 15.6&quot; 4/500GB   ', '&nbsp;', '17 999 грн  ', NULL, NULL, NULL, 3, NULL),
(226, 'image/bf8c715ee41fe43e96a736848cdd613f.jpg', '   Ноутбук Huawei Matebook D PL-W09 15.6&quot; 8GB/1T   ', '&nbsp;', '24 999 грн  ', NULL, NULL, NULL, 3, NULL),
(227, 'image/67358888a5b264fa48ec0ad4c36524be.jpg', '   Ультрабук Xiaomi Mi Notebook Air 13.3&quot; Silver   ', '&nbsp;', '26 499 грн  ', NULL, NULL, NULL, 3, NULL),
(228, 'image/21fa4b3f0272c07a2ece25f75e387dd9.jpg', '   Apple MacBook Pro Retina 13&quot; 128GB Space Gray (MPXQ2) 2017   ', '&nbsp;', '40 999 грн  ', NULL, NULL, NULL, 3, NULL),
(229, 'image/873c782c37f8148ffefeb2dd76534e78.jpg', '   Apple MacBook Pro Retina 13&quot; 128GB Silver (MPXR2) 2017   ', '&nbsp;', '40 999 грн  ', NULL, NULL, NULL, 3, NULL);

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
-- Индексы таблицы `product2`
--
ALTER TABLE `product2`
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
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT для таблицы `product2`
--
ALTER TABLE `product2`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
