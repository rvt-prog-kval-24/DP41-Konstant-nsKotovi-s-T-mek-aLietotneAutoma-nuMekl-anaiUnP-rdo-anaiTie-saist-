-- --------------------------------------------------------
-- Хост:                         localhost
-- Версия сервера:               8.0.30 - MySQL Community Server - GPL
-- Операционная система:         Win64
-- HeidiSQL Версия:              12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Дамп структуры базы данных mariadb
CREATE DATABASE IF NOT EXISTS `mariadb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mariadb`;

-- Дамп структуры для таблица mariadb.car_colors
CREATE TABLE IF NOT EXISTS `car_colors` (
  `colorID` int NOT NULL AUTO_INCREMENT,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `image` blob,
  `color_price` float DEFAULT NULL,
  PRIMARY KEY (`colorID`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_latvian_ci;

-- Дамп данных таблицы mariadb.car_colors: ~29 rows (приблизительно)
DELETE FROM `car_colors`;
INSERT INTO `car_colors` (`colorID`, `color`, `image`, `color_price`) VALUES
	(28, 'White', _binary 0x696d672f63353337333266372d616331382d343330632d396430322d6537363033356135396366622e77656270, 0),
	(29, 'White', _binary 0x2e2e2f6175746f73616c6f6e732f696d672f616d672e706e67, 0),
	(30, 'Red', _binary 0x2e2e2f6175746f73616c6f6e732f696d672f666572726172692e706e67, 200),
	(34, 'White', _binary 0x2e2e2f6175746f73616c6f6e732f696d672f626d7778352e706e67, 250),
	(35, 'White', _binary 0x2e2e2f6175746f73616c6f6e732f696d672f323031382d617564692d61362d7072656d69756d2d32302d746673692d33322d77686974652e706e67, 0),
	(36, 'Black', _binary 0x2e2e2f6175746f73616c6f6e732f696d672f506f72746164612d417564692d41362e706e67, 150),
	(40, 'dfg', _binary 0x2e2e2f6175746f73616c6f6e732f696d672f4f4947322e366435302e6a7067, 0),
	(47, 'White', _binary 0x2e2e2f6175746f73616c6f6e732f696d672f626d7778352e706e67, 250),
	(48, 'White', _binary 0x2e2e2f6175746f73616c6f6e732f696d672f626d7778352e706e67, 250),
	(49, 'White', _binary 0x2e2e2f6175746f73616c6f6e732f696d672f626d7778352e706e67, 250),
	(50, 'Black', _binary 0x2e2e2f6175746f73616c6f6e732f696d672f424d572d58352d504e472d5472616e73706172656e742d496d6167652e706e67, 100),
	(54, 'black xd', _binary 0x2e2e2f696d672f627265617468652e61766966, 100),
	(55, 'black xd', _binary 0x2e2e2f696d672f627265617468652e61766966, 100),
	(56, 'black xd', _binary 0x2e2e2f696d672f627265617468652e61766966, 100),
	(57, 'black xd', _binary 0x2e2e2f696d672f627265617468652e61766966, 100),
	(58, 'black xd', _binary 0x2e2e2f696d672f627265617468652e61766966, 100),
	(59, 'black xd', _binary 0x2e2e2f696d672f627265617468652e61766966, 100),
	(60, 'black xd', _binary 0x2e2e2f696d672f627265617468652e61766966, 100),
	(61, 'black xd', _binary 0x2e2e2f696d672f627265617468652e61766966, 100),
	(62, 'black xd', _binary 0x2e2e2f696d672f627265617468652e61766966, 100),
	(63, 'black xd', _binary 0x2e2e2f696d672f627265617468652e61766966, 100),
	(64, 'black xd', _binary 0x2e2e2f696d672f627265617468652e61766966, 100),
	(65, 'black xd', _binary 0x2e2e2f696d672f627265617468652e61766966, 100),
	(66, 'black xd', _binary 0x2e2e2f696d672f627265617468652e61766966, 100),
	(67, 'black xd', _binary 0x2e2e2f696d672f627265617468652e61766966, 100),
	(68, 'black xd', _binary 0x2e2e2f696d672f627265617468652e61766966, 100),
	(69, 'black xd', _binary 0x2e2e2f696d672f627265617468652e61766966, 100);

-- Дамп структуры для таблица mariadb.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `commentID` int NOT NULL AUTO_INCREMENT,
  `comment` varchar(700) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `userID` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `parent_comment_id` int DEFAULT NULL,
  PRIMARY KEY (`commentID`),
  KEY `userID` (`userID`),
  CONSTRAINT `userID` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=400 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_latvian_ci;

-- Дамп данных таблицы mariadb.comments: ~54 rows (приблизительно)
DELETE FROM `comments`;
INSERT INTO `comments` (`commentID`, `comment`, `userID`, `date`, `parent_comment_id`) VALUES
	(252, 'Thanks!', 46, '2023-04-30 00:00:00', NULL),
	(253, 'Very good!', 46, '2023-04-30 00:00:00', NULL),
	(284, '', 48, '2023-05-03 00:00:00', NULL),
	(285, '', 48, '2023-05-03 00:00:00', NULL),
	(286, '', 48, '2023-05-03 00:00:00', NULL),
	(287, '', 48, '2023-05-03 00:00:00', NULL),
	(288, '', 48, '2023-05-03 00:00:00', NULL),
	(296, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur velit est sapiente neque voluptatibus officia nostrum aut molestias modi deleniti, itaque, architecto autem tenetur cupiditate eveniet. Velit atque fugit quas.', 55, '2023-12-13 00:00:00', NULL),
	(301, 'ok', 1, '2024-03-05 00:00:00', 300),
	(306, 'qa', 1, '2024-03-05 00:00:00', NULL),
	(308, 'test', 1, '2024-03-05 00:00:00', NULL),
	(314, 'hi', 1, '2024-03-05 00:00:00', NULL),
	(332, 'test', 1, '2024-03-05 00:00:00', 314),
	(333, 'sdf', 1, '2024-03-05 00:00:00', 314),
	(334, 'dsf', 1, '2024-03-05 00:00:00', 314),
	(335, 'sfd', 1, '2024-03-05 00:00:00', 314),
	(336, 'ok', 1, '2024-03-06 00:00:00', 314),
	(337, 'hi', 55, '2024-03-06 00:00:00', 314),
	(338, 'hi again', 50, '2024-03-06 00:00:00', 314),
	(339, 'ok ty', 1, '2024-03-06 00:00:00', 314),
	(340, '?', 1, '2024-03-06 00:00:00', 314),
	(341, 'test', 1, '2024-03-06 00:00:00', NULL),
	(342, '1 test', 55, '2024-03-06 00:00:00', 341),
	(343, '2 test', 50, '2024-03-06 00:00:00', 341),
	(344, 'io', 50, '2024-03-06 00:00:00', 341),
	(345, 'ok', 50, '2024-03-06 00:00:00', 343),
	(346, 'new', 50, '2024-03-06 00:00:00', NULL),
	(347, 'ko', 50, '2024-03-06 00:00:00', 346),
	(348, 'rabotaet?', 50, '2024-03-06 00:00:00', 342),
	(349, 'DAAAA!!!!', 55, '2024-03-06 00:00:00', 348),
	(350, 'datetime', 50, '2024-03-06 03:08:27', NULL),
	(357, 'dfg', 55, '2024-03-06 14:52:27', 296),
	(358, 'vrode da', 55, '2024-03-06 14:54:35', 348),
	(362, 'novoe', 55, '2024-03-07 21:35:35', 350),
	(363, 'ku', 55, '2024-03-07 21:35:46', 350),
	(364, 'mb', 1, '2024-03-07 21:36:48', 363),
	(365, 'net', 1, '2024-03-07 21:37:01', 362),
	(366, 'tak da', 1, '2024-03-07 21:37:18', 350),
	(367, 'a teper\'?', 1, '2024-03-07 22:01:29', 362),
	(368, 'vse eshe?\r\n', 1, '2024-03-07 22:24:53', 367),
	(369, 'mdaaaa', 1, '2024-03-07 22:25:01', 365),
	(370, 'nu kak?', 1, '2024-03-08 15:13:06', 367),
	(371, 'da est\' zhe', 1, '2024-03-08 15:13:16', 350),
	(372, 'teper\' daaaaaaa', 1, '2024-03-08 15:13:31', 367),
	(373, 'kruto', 1, '2024-03-09 01:31:42', 370),
	(374, 'shakira shakira', 1, '2024-03-09 01:32:39', 362),
	(375, 'vc', 1, '2024-03-12 16:00:16', NULL),
	(377, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias cumque magnam ab maiores modi eligendi dolorum quae atque voluptatem hic cum laudantium asperiores possimus magni tenetur, iure autem rem consequuntur.Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias cumque magnam ab maiores modi eligendi dolorum quae atque voluptatem hic cum laudantium asperiores possimus magni tenetur, iure autem rem consequuntur.Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias cumque magnam ab maiores modi eligendi dolorum quae atque voluptatem hic cum laudantium asperiores possimus magni tenetur, iure autem rem consequuntur.Lorem ipsum dolor sit amet consectetur adipisicing elit. A', 1, '2024-03-12 16:57:55', NULL),
	(379, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias cumque magnam ab maiores modi eligendi dolorum quae atque voluptatem hic cum laudantium asperiores possimus magni tenetur, iure autem rem consequuntur.Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias cumque magnam ab maiores modi eligendi dolorum quae atque voluptatem hic cum laudantium asperiores possimus magni tenetur, iure autem rem consequuntur.Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias cumque magnam ab maiores modi eligendi dolorum quae atque voluptatem hic cum laudantium asperiores possimus magni tenetur, iure autem rem consequuntur.Lorem ipsum dolor sit amet consectetur adipisicing elit. A', 1, '2024-03-12 16:59:48', 377),
	(381, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias cumque magnam ab maiores modi eligendi dolorum quae atque voluptatem hic cum laudantium asperiores possimus magni tenetur, iure autem rem consequuntur.Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias cumque magnam ab maiores modi eligendi dolorum quae atque voluptatem hic cum laudantium asperiores possimus magni tenetur, iure autem rem consequuntur.Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias cumque magnam ab maiores modi eligendi dolorum quae atque voluptatem hic cum laudantium asperiores possimus magni tenetur, iure autem rem consequuntur.Lorem ipsum dolor sit amet consectetur adipisicing elit. A', 1, '2024-03-12 17:00:04', 379),
	(384, 'hmmmmmmmmmmmm?', 1, '2024-03-12 17:09:37', 377),
	(385, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias cumque magnam ab maiores modi eligendi dolorum quae atque voluptatem hic cum laudantium asperiores possimus magni tenetur, iure autem rem consequuntur.Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias cumque magnam ab maiores modi eligendi dolorum quae atque voluptatem hic cum laudantium asperiores possimus magni tenetur, iure autem rem consequuntur.Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias cumque magnam ab maiores modi eligendi dolorum quae atque voluptatem hic cum laudantium asperiores possimus magni tenetur, iure autem rem consequuntur.Lorem ipsum dolor sit amet consectetur adipisicing elit. A', 1, '2024-03-12 17:12:26', 379),
	(386, 'new notification', 69, '2024-03-17 02:18:55', NULL),
	(393, 'Yes New', 69, '2024-03-17 02:22:43', 386),
	(394, 'okok', 1, '2024-03-17 02:35:32', 377),
	(395, 'not', 1, '2024-03-17 17:02:16', 377),
	(396, 'stuff new', 1, '2024-03-17 17:02:58', 377),
	(397, 'kirils pivanovs', 1, '2024-04-16 16:58:53', 377),
	(398, '12', 1, '2024-04-18 01:38:06', 377),
	(399, 'ku eto moja ava', 1, '2024-04-22 01:47:03', NULL);

-- Дамп структуры для таблица mariadb.engine
CREATE TABLE IF NOT EXISTS `engine` (
  `engineID` int NOT NULL AUTO_INCREMENT,
  `engine_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `engine_price` float DEFAULT NULL,
  PRIMARY KEY (`engineID`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы mariadb.engine: ~23 rows (приблизительно)
DELETE FROM `engine`;
INSERT INTO `engine` (`engineID`, `engine_type`, `engine_price`) VALUES
	(8, 'Diesel', 5000),
	(9, 'Petrol', 6000),
	(10, 'Electric', 7000),
	(11, 'Petrol', 8000),
	(12, 'Petrol', 9000),
	(18, 'Petrol', 4000),
	(19, 'Petrol', 4000),
	(20, 'Petrol', 4000),
	(21, 'Petrol', 4000),
	(22, 'Petrol', 4000),
	(23, 'Petrol', 4000),
	(24, 'Petrol', 4000),
	(25, 'Petrol', 4000),
	(26, 'Petrol', 4000),
	(27, 'Petrol', 4000),
	(28, 'Petrol', 4000),
	(29, 'Petrol', 4000),
	(30, 'Petrol', 4000),
	(31, 'Petrol', 4000),
	(32, 'Petrol', 4000),
	(33, 'Petrol', 4000);

-- Дамп структуры для таблица mariadb.notifications
CREATE TABLE IF NOT EXISTS `notifications` (
  `notification_id` int NOT NULL AUTO_INCREMENT,
  `message` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_read` tinyint(1) DEFAULT '0',
  `topic_id` int DEFAULT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `topic_id` (`topic_id`),
  CONSTRAINT `topic_id` FOREIGN KEY (`topic_id`) REFERENCES `notification_topics` (`topic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Дамп данных таблицы mariadb.notifications: ~17 rows (приблизительно)
DELETE FROM `notifications`;
INSERT INTO `notifications` (`notification_id`, `message`, `created_at`, `is_read`, `topic_id`) VALUES
	(128, 'You have successfully registered! If you need <a href=\'infoPage.php\'>Help</a>, please visit the Help section.', '2024-03-17 00:11:41', 1, 9),
	(135, 'You have received a reply from \'kostjaKO\' to your comment: \'Yes New\'. Visit the <a href=\'forum.php\'>forum</a> to view the response.', '2024-03-17 00:22:43', 1, 7),
	(153, 'You have received a reply from \'stuff\' to your comment: \'kirils pivanovs\'. Visit the <a href=\'forum.php\'>forum</a> to view the response.', '2024-04-16 13:58:53', 1, 1),
	(154, 'Your order has been successfully completed! Please wait while our staff contacts You. You can check your order <a href=\'profile.php\'>here</a> in the \'My Orders\' tab.', '2024-04-17 17:07:34', 1, 2),
	(155, 'You have received a reply from \'stuff\' to your comment: \'12\'. Visit the <a href=\'forum.php\'>forum</a> to view the response.', '2024-04-17 22:38:06', 1, 1),
	(156, 'Your order has been successfully completed! Please wait while our staff contacts You. You can check your order <a href=\'profile.php\'>here</a> in the \'My Orders\' tab.', '2024-04-23 13:26:49', 1, 2),
	(157, 'Your order has been successfully completed! Please wait while our staff contacts You. You can check your order <a href=\'profile.php\'>here</a> in the \'My Orders\' tab.', '2024-04-23 14:02:41', 1, 2),
	(158, 'Your order has been successfully completed! Please wait while our staff contacts You. You can check your order <a href=\'profile.php\'>here</a> in the \'My Orders\' tab.', '2024-04-24 20:43:33', 1, 2),
	(159, 'Your order has been successfully completed! Please wait while our staff contacts You. You can check your order <a href=\'profile.php\'>here</a> in the \'My Orders\' tab.', '2024-05-12 23:04:55', 1, 2),
	(160, 'Your order has been successfully completed! Please wait while our staff contacts You. You can check your order <a href=\'profile.php\'>here</a> in the \'My Orders\' tab.', '2024-05-12 23:05:25', 1, 2),
	(161, 'Your order has been successfully completed! Please wait while our staff contacts You. You can check your order <a href=\'profile.php\'>here</a> in the \'My Orders\' tab.', '2024-05-12 23:11:24', 1, 2),
	(162, 'Your order has been successfully completed! Please wait while our staff contacts You. You can check your order <a href=\'profile.php\'>here</a> in the \'My Orders\' tab.', '2024-05-12 23:13:55', 1, 2),
	(163, 'Your order has been successfully completed! Please wait while our staff contacts You. You can check your order <a href=\'profile.php\'>here</a> in the \'My Orders\' tab.', '2024-05-12 23:29:47', 1, 2),
	(164, 'Your order has been successfully completed! Please wait while our staff contacts You. You can check your order <a href=\'profile.php\'>here</a> in the \'My Orders\' tab.', '2024-05-12 23:47:57', 1, 2),
	(165, 'Your order has been successfully completed! Please wait while our staff contacts You. You can check your order <a href=\'profile.php\'>here</a> in the \'My Orders\' tab.', '2024-05-16 22:26:58', 1, 2),
	(166, 'Your order has been successfully completed! Please wait while our staff contacts You. You can check your order <a href=\'profile.php\'>here</a> in the \'My Orders\' tab.', '2024-05-16 22:28:15', 1, 2),
	(167, 'Your order has been successfully completed! Please wait while our staff contacts You. You can check your order <a href=\'profile.php\'>here</a> in the \'My Orders\' tab.', '2024-05-16 22:29:08', 1, 2);

-- Дамп структуры для таблица mariadb.notification_topics
CREATE TABLE IF NOT EXISTS `notification_topics` (
  `topic_id` int NOT NULL AUTO_INCREMENT,
  `topic_name` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `userID` int DEFAULT NULL,
  PRIMARY KEY (`topic_id`),
  KEY `user_id` (`userID`),
  CONSTRAINT `user_id` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Дамп данных таблицы mariadb.notification_topics: ~6 rows (приблизительно)
DELETE FROM `notification_topics`;
INSERT INTO `notification_topics` (`topic_id`, `topic_name`, `status`, `userID`) VALUES
	(1, 'Forum', 'enable', 1),
	(2, 'Orders', 'enable', 1),
	(3, 'Profile', 'enable', 1),
	(7, 'Forum', 'disable', 69),
	(8, 'Orders', 'enable', 69),
	(9, 'Profile', 'enable', 69);

-- Дамп структуры для таблица mariadb.offers
CREATE TABLE IF NOT EXISTS `offers` (
  `offerID` int NOT NULL AUTO_INCREMENT,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_latvian_ci DEFAULT NULL,
  `manufacturer` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_latvian_ci DEFAULT NULL,
  PRIMARY KEY (`offerID`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_latvian_ci;

-- Дамп данных таблицы mariadb.offers: ~12 rows (приблизительно)
DELETE FROM `offers`;
INSERT INTO `offers` (`offerID`, `type`, `manufacturer`) VALUES
	(66, 'X5', 'BMW'),
	(67, 'Model Y', 'Tesla'),
	(68, 'AMG', 'Mercedes-Benz'),
	(70, 'F430', 'Ferrari'),
	(71, 'Model X', 'Tesla'),
	(72, 'Aventador', 'Lamborghini'),
	(73, 'A6', 'Audi'),
	(77, 'j,nmn', 'nm,nm'),
	(88, 'X5', 'BMW'),
	(89, 'X5', 'BMW'),
	(90, 'X5', 'BMW'),
	(93, 'Model X', 'Tesla');

-- Дамп структуры для таблица mariadb.offersinfo
CREATE TABLE IF NOT EXISTS `offersinfo` (
  `offersInfoID` int NOT NULL AUTO_INCREMENT,
  `price` float DEFAULT NULL,
  `yearOfManufacture` int DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `offersID` int DEFAULT NULL,
  `body_type` varchar(20) COLLATE utf8mb4_latvian_ci DEFAULT NULL,
  PRIMARY KEY (`offersInfoID`),
  KEY `offersID` (`offersID`),
  CONSTRAINT `offersID` FOREIGN KEY (`offersID`) REFERENCES `offers` (`offerID`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_latvian_ci;

-- Дамп данных таблицы mariadb.offersinfo: ~12 rows (приблизительно)
DELETE FROM `offersinfo`;
INSERT INTO `offersinfo` (`offersInfoID`, `price`, `yearOfManufacture`, `weight`, `offersID`, `body_type`) VALUES
	(69, 20000, 2019, 2000, 90, 'SUV'),
	(70, 50000, 2022, 2000, 66, 'SUV'),
	(71, 60000, 2021, 2100, 67, 'SUV'),
	(72, 70000, 2023, 2200, 68, 'Sedan'),
	(73, 80000, 2024, 2300, 70, 'Coupe'),
	(74, 90000, 2023, 2400, 71, 'SUV'),
	(75, 100000, 2022, 25000, 72, 'Coupe'),
	(76, 110000, 2021, 2600, 73, 'Sedan'),
	(77, 120000, 2020, 2700, 77, 'SUV'),
	(78, 130000, 2024, 2800, 88, 'SUV'),
	(79, 140000, 2023, 2900, 89, 'SUV'),
	(83, 19000, 2019, 2000, 93, 'Sedan');

-- Дамп структуры для таблица mariadb.order
CREATE TABLE IF NOT EXISTS `order` (
  `orderID` int NOT NULL AUTO_INCREMENT,
  `orderDate` date DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `surname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `telephone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `orderUserID` int DEFAULT NULL,
  `orderOfferID` int DEFAULT NULL,
  `orderDetailsID` int DEFAULT NULL,
  PRIMARY KEY (`orderID`),
  KEY `orderUserID` (`orderUserID`) USING BTREE,
  KEY `orderOfferID` (`orderOfferID`),
  KEY `orderDetailsID` (`orderDetailsID`),
  CONSTRAINT `orderDetailsID` FOREIGN KEY (`orderDetailsID`) REFERENCES `specific_details` (`detailsID`),
  CONSTRAINT `orderOfferID` FOREIGN KEY (`orderOfferID`) REFERENCES `offers` (`offerID`),
  CONSTRAINT `orderUserID` FOREIGN KEY (`orderUserID`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_latvian_ci;

-- Дамп данных таблицы mariadb.order: ~2 rows (приблизительно)
DELETE FROM `order`;
INSERT INTO `order` (`orderID`, `orderDate`, `name`, `surname`, `telephone`, `status`, `orderUserID`, `orderOfferID`, `orderDetailsID`) VALUES
	(252, '2024-05-13', 'xcvxcv', '34343', '+371 34322', 'New', 1, 67, 14),
	(260, '2024-05-17', 'Kostja', 'Kotovich', '23423443344534', 'Done', 1, 70, 16);

-- Дамп структуры для таблица mariadb.specific_details
CREATE TABLE IF NOT EXISTS `specific_details` (
  `detailsID` int NOT NULL AUTO_INCREMENT,
  `colorID` int DEFAULT NULL,
  `offersInfoID` int DEFAULT NULL,
  `transmissionID` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `engineID` int DEFAULT NULL,
  `active_status` int DEFAULT NULL,
  PRIMARY KEY (`detailsID`),
  KEY `colorID` (`colorID`),
  KEY `transmissionID` (`transmissionID`),
  KEY `offerID` (`offersInfoID`) USING BTREE,
  KEY `engineID` (`engineID`),
  CONSTRAINT `colorID` FOREIGN KEY (`colorID`) REFERENCES `car_colors` (`colorID`),
  CONSTRAINT `engineID` FOREIGN KEY (`engineID`) REFERENCES `engine` (`engineID`),
  CONSTRAINT `offersInfoID` FOREIGN KEY (`offersInfoID`) REFERENCES `offersinfo` (`offersInfoID`),
  CONSTRAINT `transmissionID` FOREIGN KEY (`transmissionID`) REFERENCES `transmission` (`transmissionID`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Дамп данных таблицы mariadb.specific_details: ~6 rows (приблизительно)
DELETE FROM `specific_details`;
INSERT INTO `specific_details` (`detailsID`, `colorID`, `offersInfoID`, `transmissionID`, `created_at`, `engineID`, `active_status`) VALUES
	(12, 49, 69, 2, '2024-04-18 12:09:13', 8, 0),
	(13, 50, 69, 3, '2024-04-24 21:23:38', 9, 0),
	(14, 28, 71, 4, '2024-04-24 22:00:06', 10, 0),
	(15, 29, 72, 5, '2024-04-24 22:04:59', 11, 0),
	(16, 30, 73, 6, '2024-04-24 22:05:00', 12, 1),
	(19, 35, 76, NULL, NULL, NULL, NULL);

-- Дамп структуры для таблица mariadb.transmission
CREATE TABLE IF NOT EXISTS `transmission` (
  `transmissionID` int NOT NULL AUTO_INCREMENT,
  `transmission_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `transmission_price` float DEFAULT NULL,
  PRIMARY KEY (`transmissionID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Дамп данных таблицы mariadb.transmission: ~24 rows (приблизительно)
DELETE FROM `transmission`;
INSERT INTO `transmission` (`transmissionID`, `transmission_type`, `transmission_price`) VALUES
	(2, 'Sport Automatic', 2000),
	(3, 'Manual', 1000),
	(4, 'Automatic', 2100),
	(5, 'Automatic', 1000),
	(6, 'Manual', 5000),
	(9, 'Manual', 1000),
	(13, 'Sport Automatic', 2000),
	(14, 'Sport Automatic', 2000),
	(15, 'Sport Automatic', 2000),
	(16, 'Sport Automatic', 2000),
	(17, 'Sport Automatic', 2000),
	(18, 'Sport Automatic', 2000),
	(19, 'Sport Automatic', 2000),
	(20, 'Sport Automatic', 2000),
	(21, 'Sport Automatic', 2000),
	(22, 'Sport Automatic', 2000),
	(23, 'Sport Automatic', 2000),
	(24, 'Sport Automatic', 2000),
	(25, 'Sport Automatic', 2000),
	(26, 'Sport Automatic', 2000),
	(27, 'Sport Automatic', 2000),
	(28, 'Sport Automatic', 2000);

-- Дамп структуры для таблица mariadb.user
CREATE TABLE IF NOT EXISTS `user` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `picture` blob,
  `roleID` int NOT NULL,
  `rules_accepted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_latvian_ci;

-- Дамп данных таблицы mariadb.user: ~14 rows (приблизительно)
DELETE FROM `user`;
INSERT INTO `user` (`userID`, `username`, `email`, `password`, `picture`, `roleID`, `rules_accepted`) VALUES
	(1, 'stuff', 'stuff@example.com', 'stuff', _binary 0x696d672f6176617461722f68756d61737072696b6f6c2e706e67, 1, 1),
	(44, '1', '1@1.com', '$2y$10$zlYMd1if0vP.Pl76EmQKuujalvXg2FT.lxmRnF52IuGqjZeDwoISK', NULL, 0, NULL),
	(46, 'konstantins', 'konstantins@gmail.com', '$2y$10$56e9Nl1IXJWYOcKYrgKncOAT4p99/PYH1UtvPgHjPKSUgJmZbQ58O', NULL, 0, NULL),
	(48, 'Konstantins Kotovich', 'kostja@gmail.com', '$2y$10$t80eqpaNFAky2CFIe8B5MO/AVwBujCBKrX90U6ysi5xh4GgzJVXfa', NULL, 0, NULL),
	(50, '1234', '1234@1234.com', '$2y$10$wMepL4xJFeGY2BU4RbGx2e6jC5mCKkp7KEqHA.GZab9RQcC2JrLzS', _binary 0x696d672f6176617461722f64656661756c742e706e67, 0, NULL),
	(55, '123', '123@123.com', '$2y$10$BTJNbFdTqAD5QD22PGRnO.htfW6imQ6Y9IzkNKQ7bbyDPAMuj9N1e', _binary 0x696d672f6176617461722f68756d61737072696b6f6c2e706e67, 0, 1),
	(56, '12345', '12345@a.com', '$2y$10$WvxQcssDA7WqShLuc.i6WuFKe8iBnAXGabtziroIlPzHOaPldvDIm', _binary 0x696d672f6176617461722f64656661756c742e706e67, 0, NULL),
	(57, 'Kostja', 'kostja.kotovich@inbox.lv', '$2y$10$VCnCqu/X3vJskhZU8po9cuzCDEm4H.cOx6luPXbhzWIU8wd.IrEJ6', _binary 0x696d672f6176617461722f64656661756c742e706e67, 0, NULL),
	(59, '123456', 'kostja.kohghtovich@gmail.com', '$2y$10$PBRYzRNI4eDNI4ozoEVH5.E2/kOrO080adz7pzeRapR2emhyymMrS', _binary 0x696d672f6176617461722f64656661756c742e706e67, 0, NULL),
	(63, 'o7d', 'kostja.kfotovich@gmail.com', '$2y$10$lhIZJMISPim7aD5z3JrmtebQWXXtgvcxq.BW6iBfwrJenIs9GZSfy', _binary 0x696d672f6176617461722f64656661756c742e706e67, 0, NULL),
	(64, 'o7d1', 'kostja.kotovidsfch@gmail.com', '$2y$10$rPoNbDa2LafKdgFIqZPvg.88Z.Dz2FbUV1KPUCbu8GANG4dm8.E.e', _binary 0x696d672f6176617461722f64656661756c742e706e67, 0, NULL),
	(65, 'o7d3', 'kostja.kotovfsdich@gmail.com', '$2y$10$PFULBb6sAsCNngx0hKUYS..hUmoi3Zfa.9aSJl2LoJMB5e.L3g7o6', _binary 0x696d672f6176617461722f64656661756c742e706e67, 0, NULL),
	(66, 'o7d6', 'kostja.kotofhgfgvich@gmail.com', '$2y$10$td33qZ.ttr9qTs9hYiwfU.Np.kUCqICbnbeCH3.5OVz6ghRUZtelS', _binary 0x696d672f6176617461722f64656661756c742e706e67, 0, NULL),
	(69, 'kostjaKO', 'kostjaKO@gmaiil.com', '$2y$10$NJEy4rvytnpi91A9u5/pw.uCG1KM3ynZE65zDjPFsZFvPbR080WiS', _binary 0x696d672f6176617461722f64656661756c742e706e67, 0, 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
