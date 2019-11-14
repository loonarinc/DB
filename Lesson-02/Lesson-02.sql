SET names utf8;
CREATE DATABASE example;
USE example;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
);

INSERT INTO users VALUES
  (DEFAULT, 'Иван'),
  (DEFAULT, 'Пётр'),
  (DEFAULT, 'Алексей');