/* Задание 1.  */

CREATE TABLE `logs` (
  `log_data` varchar(255) DEFAULT NULL
) ENGINE=ARCHIVE;

/*Для логирования надо создать триггер, который срабатывает при добавления записи в таблицу*/
DELIMITER //
CREATE TRIGGER users_logger AFTER INSERT ON users
FOR EACH ROW
BEGIN
	SET @log_data = CONCAT(NOW(),' users ', NEW.id, ' ', NEW.name);
  	INSERT INTO `logs` (`log_data`) VALUES (@log_data);
END//
CREATE TRIGGER catalogs_logger AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
	SET @log_data = CONCAT(NOW(),' catalogs ', NEW.id, ' ', NEW.name);
  	INSERT INTO `logs` (`log_data`) VALUES (@log_data);
END//
CREATE TRIGGER products_logger AFTER INSERT ON products
FOR EACH ROW
BEGIN
	SET @log_data = CONCAT(,' products ', NEW.id, ' ', NEW.name);
  	INSERT INTO `logs` (`log_data`) VALUES (@log_data);
END//
DELIMITER ;