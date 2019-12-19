/*Задание 09-01-01*/
START TRANSACTION;
    INSERT INTO sample.users SELECT * FROM shop.users WHERE id = 1;
    DELETE FROM shop.users WHERE id =1;
COMMIT;


/*Задание 09-01-02*/
CREATE VIEW view1 AS SELECT products.name AS `name`, catalogs.name AS `catalog`	
	FROM products, catalogs
	WHERE products.catalog_id = catalogs.id;

/*Задание 09-03-01*/
DROP FUNCTION IF EXISTS hello;
delimiter //
CREATE FUNCTION hello ()
RETURNS VARCHAR(255) NOT DETERMINISTIC
BEGIN
    IF (TIME(NOW())>'18:00') THEN RETURN 'Добрый вечер';
    ELSEIF (TIME(NOW()))>'12:00' THEN RETURN 'Добрый день';
    ELSEIF (TIME(NOW()))>'06:00' THEN RETURN 'Доброе утро';
    ELSE RETURN 'Доброй ночи';
	END IF;
END//
DELIMITER ;
SELECT hello();

/*Задание 09-03-02*/
CREATE TRIGGER null_exeption BEFORE INSERT ON products
FOR EACH ROW
BEGIN
	IF (NEW.name IS NULL) AND (NEW.description IS NULL) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'оба null';
	END IF;
END//