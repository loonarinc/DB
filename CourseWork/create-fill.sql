DROP DATABASE IF EXISTS shop;
CREATE DATABASE shop;

use shop;

DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs( 
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL
	) COMMENT 'Каталоги товаров';
	
DROP TABLE IF EXISTS manufacturers;
CREATE TABLE manufacturers( 
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL
	) COMMENT 'Производители';
	

DROP TABLE IF EXISTS scales;
CREATE TABLE scales( 
	id SERIAL PRIMARY KEY,
	name VARCHAR(10) NOT NULL
	) COMMENT 'Масштабы';
	
DROP TABLE IF EXISTS difficulties;
CREATE TABLE difficulties( 
	id SERIAL PRIMARY KEY,
	name VARCHAR(10) NOT NULL
	) COMMENT 'Сложность';

DROP TABLE IF EXISTS payment_types;
CREATE TABLE payment_types( 
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL
	) COMMENT 'Типы оплаты';
	
DROP TABLE IF EXISTS ages;
CREATE TABLE ages( 
	id SERIAL PRIMARY KEY,
	name VARCHAR(2) NOT NULL
	) COMMENT 'Рекомендуемый возраст';

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
	id SERIAL PRIMARY KEY,
	login VARCHAR(15) not null UNIQUE,
	passwd varchar(255) not null,
	name VARCHAR(255) NOT NULL COMMENT 'Имя',
	surname VARCHAR(255) NOT NULL COMMENT 'Фамилия',
	middlename VARCHAR(255) NOT NULL COMMENT 'Отчество',
	sex CHAR(1) NOT NULL COMMENT 'Пол',
	birthday DATE COMMENT 'Дата рождения',
	email VARCHAR(100) NOT NULL UNIQUE COMMENT 'Email',
	phone VARCHAR(15) NOT NULL UNIQUE COMMENT 'Телефон',
	address VARCHAR(1000),
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT 'Покупатели';

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
	id SERIAL PRIMARY KEY,
	customer_id BIGINT(20) UNSIGNED NOT NULL,
	payment_type_id BIGINT(20) unsigned not null,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT payment_types_payment_type_id_fk 
    FOREIGN KEY (payment_type_id) REFERENCES payment_types(id) ON DELETE restrict,
    CONSTRAINT customers_customer_id_fk 
    FOREIGN KEY (customer_id) REFERENCES customers(id) ON DELETE restrict
) COMMENT 'Заказы';
DROP TABLE IF EXISTS products;
CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	catalog_id BIGINT(20) UNSIGNED NOT NULL,
	article VARCHAR(10) not null COMMENT 'Артикул производителя',
	name VARCHAR(255) NOT NULL COMMENT 'Название',
	manufacturer_id BIGINT(20) UNSIGNED NOT null COMMENT 'Производитель',
	scale_id BIGINT(20) UNSIGNED NOT null COMMENT 'Масштаб',
	description VARCHAR(10000) COMMENT 'Описание',
	difficulty_id BIGINT(20) UNSIGNED NOT null COMMENT 'Сложность',
	price DECIMAL (10,2) COMMENT 'Цена',
	photo_id INT(10) UNSIGNED,
	age_id BIGINT(20) unsigned COMMENT 'Минимальный возраст',
	rating FLOAT,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	index (name),
	CONSTRAINT manufacturers_manufacturer_id_fk 
    FOREIGN KEY (manufacturer_id) REFERENCES manufacturers(id) ON DELETE restrict,
    CONSTRAINT catalogs_catalog_id_fk 
    FOREIGN KEY (catalog_id) REFERENCES catalogs(id) ON DELETE restrict,
    CONSTRAINT ages_age_id_fk 
    FOREIGN KEY (age_id) REFERENCES ages(id) ON DELETE restrict,
    CONSTRAINT difficulties_difficulty_id_fk 
    FOREIGN KEY (difficulty_id) REFERENCES difficulties(id) ON DELETE restrict,
    CONSTRAINT scales_scale_id_fk 
    FOREIGN KEY (scale_id) REFERENCES scales(id) ON DELETE restrict
) COMMENT 'Товары';

DROP TABLE IF EXISTS orders_products;
CREATE TABLE orders_products (
	id SERIAL PRIMARY KEY,
	order_id BIGINT(20) UNSIGNED NOT NULL,
	product_id BIGINT(20) UNSIGNED NOT NULL,
	quantity INT UNSIGNED DEFAULT 1,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT orders_order_id_fk 
    FOREIGN KEY (order_id) references orders(id) ON DELETE restrict,
    CONSTRAINT products_product_id_fk 
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE restrict
) COMMENT 'Заказ';

INSERT INTO `catalogs` VALUES (1,'Авиация'),
							  (2,'Корабли'),
							  (3,'Автомобили и мотоциклы'),
							  (4,'Танки и Бронетехника'),
							  (5,'Артиллерия'),
							  (6,'Здания'),
							  (7,'Железная дорога'),
							  (8,'Миниатюры');

INSERT INTO `ages` VALUES (1,'0'),
							  (2,'3'),
							  (3,'6'),
							  (4,'10'),
							  (5,'14');

INSERT INTO `difficulties` VALUES (1,'Легко'),
							  (2,'Средне'),
							  (3,'Сложно');					 

INSERT INTO `manufacturers` VALUES (1,'Revell'),
							  (2,'Восточный экспресс'),
							  (3,'Звезда');	
							 
INSERT INTO `scales` VALUES (1,'1/100'),
							  (2,'1/144'),
							  (3,'1/16'),
							  (4,'1/32'),
							  (5,'1/72'),
							  (6,'1/35');	
							 
INSERT INTO `payment_types` VALUES (1,'Наличные'),
							  (2,'Банковская карта'),
							  (3,'Банковский перевод'),
							  (4,'WebMoney'),
							  (5,'Яндекс.Деньги');
							  
					 
							 
INSERT INTO `products` (`id`, `catalog_id`, `article`, `name`, `manufacturer_id`, `scale_id`, `description`, `difficulty_id`, `price`, `photo_id`, `age_id`, `rating`) 
VALUES
('1', '4', '03256', 'Самоходная артиллерийская установка Flakpanzer III \"Ostwind\"', '1', '5', 'Описание', '2', '1419', '1', '4', '4'),
('2', '3', '67686', 'Набор Автомобиль \'55 Chevy Indy Pace Car"', '1', '6', 'Описание', '2', '3555', '2', '4', '4'),
('3', '1', '03877', 'Транспортный вертолёт Eurocopter EC 145"Builder\'s Choi', '1', '5', 'Описание', '2', '938', '3', '4', '4'),
('4', '4', '03287', 'Танк M48 A2CG', '1', '5', 'Описание', '2', '1419', '4', '4', '4'),
('5', '1', '03882', 'Самолет Airbus A380-800 Emirates  \"Wild Life\"', '1', '2', 'Описание', '2', '2840', '5', '4', '5'),
('6', '1', '03881', 'Самолет Airbus A350-900 Lufthansa New Livery', '1', '2', 'Описание', '2', '2316', '6', '4', '5'),
('7', '3', '67664', 'Набор Автомобиль 1970 AAR Cuda', '1', '6', 'Описание', '2', '3555', '7', '4', '6'),
('8', '4', '3540', 'Советский легкий танк ОТ-26 Звезда', '3', '6', 'Описание', '2', '1419', '8', '4', '4'),
('9', '1', '7202', 'Советский истребитель МиГ-21ПФМ', '3', '5', 'Описание', '2', '600', '9', '4', '3'),
('10', '1', '7319', 'Российский многофункциональный истребитель пятого поколения Су-57', '3', '5', 'Описание', '2', '1600', '10', '4', '5'),
('11', '1', '7035', 'Самолёт АН-225 \"МРИЯ\"', '3', '2', 'Описание', '2', '5500', '11', '4', '5'),
('12', '1', '7314', 'Российский многоцелевой истребитель завоевания превосходства в воздухе Су-30СМ', '3', '5', 'Описание', '2', '1600', '12', '4', '4'),
('13', '1', '7298', 'Многофункциональный истребитель-бомбардировщик воздушно-космических сил России Су-34"', '3', '5', 'Описание', '2', '1200', '13', '4', '4'),
('14', '1', '4821', 'Российский легкий штурмовик Як-130', '3', '5', 'Описание', '2', '1990', '14', '4', '5'),
('15', '1', '144149_3', 'Авиалайнер А310-200 Condor', '2', '5', 'Описание', '3', '2580', '15', '5', '5'),
('16', '1', '72146', 'Вертолет Ка-18 ( серия LD )', '2', '5', 'Описание', '3', '614', '16', '5', '4'),
('17', '4', '35087', 'КВ-8 Тяжелый огнеметный танк 1942 г.', '2', '5', 'Описание', '3', '614', '17', '5', '4'),
('18', '1', '14437', 'Пассажирский самолет Ан-14 Аэрофлот', '2', '2', 'Описание', '3', '582', '18', '5', '4'),
('19', '1', '72228', 'Ме 163 Реактивный истребитель', '2', '2', 'Описание', '3', '268', '19', '5', '3'),
('20', '1', '14469', 'Aвиалайнер В-737-200 British Airways', '2', '2', 'Описание', '3', '794', '20', '5', '4');

INSERT INTO `customers` VALUES ('1','sint','5','Brody','Era','Julien','m','1992-01-21','littel.wyatt@example.org','238.617.0359','89690 Monahan Ways Suite 383\nSouth Dorothy, MI 53143-7415','1992-01-25 02:05:03','1971-08-19 13:49:35'),
('2','ea','6','Anabel','Arturo','Rachael','f','1999-11-02','xglover@example.org','1-233-361-3943x','98260 Noelia Union\nNew Douglas, TN 28414','2013-08-11 18:45:53','1984-12-04 22:35:45'),
('3','provident','4','Luz','Kiera','Itzel','f','2011-05-14','velda39@example.net','235.648.5723','5222 Braden Villages Apt. 612\nLaurianefurt, SD 04050-0418','2006-01-04 04:46:22','1998-06-18 06:05:17'),
('4','minima','8','Ferne','Rozella','Garry','f','1997-09-01','ayden65@example.org','1-767-067-2376x','014 Yoshiko Roads Suite 724\nWest Ariannatown, LA 78514-1281','1980-10-03 15:14:05','1976-07-07 01:03:06'),
('5','ab','6','Darrell','Liana','Kendall','m','1999-12-16','dschiller@example.org','197.391.5906x69','93023 Theodora Walks Apt. 572\nLake Milochester, CO 53344-8915','1981-11-01 16:01:10','1993-07-07 13:17:37'),
('6','corrupti','8','Loraine','Elisabeth','Destany','f','1970-06-17','elwin.legros@example.com','01603285465','2785 Joan Summit\nPort Sherwood, NE 96368','2004-02-29 05:58:47','1996-10-23 15:47:05'),
('7','doloribus','8','Eldred','Shane','Sedrick','m','1981-08-16','antonina.dooley@example.com','033-376-2713x81','361 Wilber Cape\nArmandberg, PA 13003','1991-09-25 22:18:24','1987-09-12 11:16:17'),
('8','placeat','6','Francis','Jennings','Osbaldo','m','2001-08-19','rrice@example.org','1-274-241-5555','6318 Rhiannon Mountains Suite 917\nNew Malika, IA 54940-9176','1971-10-21 19:29:13','1988-02-15 02:32:02'),
('9','nisi','1','Angela','Kory','Maye','m','1983-04-25','bogan.roel@example.com','1-812-919-9827x','96136 Koepp Rue Apt. 790\nPort Carole, RI 01977','1977-12-14 11:45:00','2014-02-23 21:48:47'),
('10','dolor','7','Emilia','Cornell','Teagan','m','2012-05-02','krystel.bernhard@example.com','(620)207-7211x7','05319 Jocelyn Road Apt. 495\nLake Brendenhaven, UT 14655','2018-10-26 08:49:33','1991-06-15 15:56:59'); 

select * from products;

INSERT INTO `orders` (`id`, `customer_id`, `payment_type_id`) VALUES
('1','2','1'),
('2','6','2'),
('3','8','3'),
('4','9','4'),
('5','10','5');

INSERT INTO `orders_products` (`id`, `order_id`, `product_id`, `quantity`) VALUES
('1','1','1','1'),
('2','1','2','1'),
('3','1','3','1'),
('4','2','4','2'),
('5','2','5','1'),
('6','3','6','1'),
('7','3','7','1'),
('8','4','11','1'),
('9','4','13','1'),
('10','4','16','1'),
('11','5','17','1');