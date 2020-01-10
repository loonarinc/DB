/*Выборка товаров по типу Авиация, с ценой меньще 1000 с сортировкой по рейтингу*/
SELECT 
	p.name AS product,	
	p.price AS price,
	s.name AS scale
  FROM products AS p
  JOIN catalogs AS c
    ON c.name = 'Авиация' AND p.catalog_id = c.id AND p.price < 1000
  JOIN scales AS s
 	on p.scale_id = s.id
  ORDER BY p.rating;

/*Выборка товаров по типу Танки и Бронетехника*/
SELECT 
	p.name AS product,	
	p.price AS price
  FROM products AS p
  JOIN catalogs AS c
    ON c.name = 'Танки и Бронетехника' AND p.catalog_id = c.id;
   
/*Выборка товаров по масштабу 1-144*/
SELECT 
	p.name AS product,	
	p.price AS price
  FROM products AS p
  JOIN scales AS s
    ON s.name = '1/144' AND p.scale_id = s.id
  ORDER BY p.price;   
 
/*Выборка заказов с именами, адресами, типом оплаты и товарами*/
SELECT
 	op.order_id AS order_id,
 	CONCAT(p.article,' ',p.name) AS product_name,
 	op.quantity AS quantity,
 	CONCAT(c.surname, ' ',c.name, ' ',c.middlename) AS customer,
 	c.address AS address,
 	pt.name AS payment_type
  FROM orders_products AS op
    JOIN orders AS o
    ON op.order_id = o.id
  JOIN customers AS c
 	ON o.customer_id = c.id
  JOIN products AS p
	ON op.product_id = p.id
  JOIN payment_types AS pt
	ON o.payment_type_id = pt.id;