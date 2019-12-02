/* Пусть в таблице users поля created_at и updated_at оказались незаполненными. 
Заполните их текущими датой и временем. */
/* Операторы, фильтрация, сортировка и ограничение 1-3*/

CREATE DATABASE IF NOT EXISTS lesson_05;

USE lesson_05;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  birthday_at DATE,
  created_at VARCHAR(255),
  updated_at VARCHAR(255));

INSERT INTO `users` (`id`, `name`, `birthday_at`, `created_at`, `updated_at`) VALUES ('1', 'Sierra', '2013-06-12', '04.01.1931 15:26', '30.04.1954 06:50');
INSERT INTO `users` (`id`, `name`, `birthday_at`, `created_at`, `updated_at`) VALUES ('2', 'Trisha', '1979-02-22', '19.09.1944 12:38', '23.06.2004 05:01');
INSERT INTO `users` (`id`, `name`, `birthday_at`, `created_at`, `updated_at`) VALUES ('3', 'Fletcher', '2019-05-21', '06.01.1945 12:34', '11.02.1986 21:32');
INSERT INTO `users` (`id`, `name`, `birthday_at`, `created_at`, `updated_at`) VALUES ('4', 'Eldred', '1985-06-15', '18.07.1961 11:56', '20.07.1946 10:08');
INSERT INTO `users` (`id`, `name`, `birthday_at`, `created_at`, `updated_at`) VALUES ('5', 'Yasmin', '1986-10-11', '02.02.1954 13:30', '12.11.1938 13:14');

SELECT * FROM users;
UPDATE 
  users 
SET 
  created_at = str_to_date(created_at, '%d.%m.%Y %H:%i'),
  updated_at = str_to_date(updated_at, '%d.%m.%Y %H:%i');

UPDATE users SET created_at = 
	CONVERT(concat_ws(' ', concat_ws('-', substring(created_at, 7, 4),
		substring(created_at, 4, 2), substring(created_at, 1, 2)),
		concat(substring(created_at, 12), ':00')), datetime),
	updated_at = 
	CONVERT(concat_ws(' ', concat_ws('-', substring(updated_at, 7, 4),
		substring(updated_at, 4, 2), substring(updated_at, 1, 2)),
		concat(substring(updated_at, 12), ':00')), datetime);

ALTER TABLE users MODIFY COLUMN updated_at datetime;
ALTER TABLE users MODIFY COLUMN created_at datetime;

SELECT * FROM users;


DROP TABLE IF EXISTS storehouse_products;
CREATE TABLE storehouse_products (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	value INT
);

INSERT INTO storehouse_products (name, value)
VALUES ('Шоколад', 10),
	('Варенье', 0),
	('Хлеб', 7),
	('Напиток', 0),
	('Конфеты', 55);

SELECT * FROM storehouse_products ORDER BY value = 0, value;

/* Задания на агрегацию 1 и 2. */

SELECT ROUND(AVG(timestampdiff(YEAR, birthday_at, now()))) as 'Average age' FROM users;

SELECT group_concat(name), 
 DATE_FORMAT(MAKEDATE(YEAR(NOW()),DAYOFYEAR(birthday_at)), '%W') as 'Weekday',
 count(*) as 'Number of birthdays' FROM users GROUP BY Weekday;
