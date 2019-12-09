/*1*/
SELECT name FROM users JOIN orders on users.id = orders.user_id;

/*2*/
SELECT products.id, products.name, catalogs.name FROM products
	JOIN catalogs ON products.catalog_id = catalogs.id;
/*3*/
DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  `from` VARCHAR(255),
  `to` VARCHAR(255),
  flight_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  id SERIAL PRIMARY KEY,
  `name` VARCHAR(255),
  `label` VARCHAR(255)
);

INSERT INTO flights
(`from`, `to`)
VALUES
  ('moscow','omsk'),
  ('novgorod','kazan'),
  ('irkutsk','moscow'),
  ('omsk','irkutsk'),
  ('moscow','kazan');
 
  SELECT * from cities;
  
 INSERT INTO cities
(`label`, `name`)
VALUES
  ('moscow','Москва'),
  ('novgorod','Новгород'),
  ('irkutsk','Иркутск'),
  ('omsk','Омск'),
  ('kazan','Казань');
 
 
SELECT 
	(SELECT name FROM cities WHERE label = `from`) AS `from`,
	(SELECT name FROM cities WHERE label = `to`) AS `to` 
FROM flights;