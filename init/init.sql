CREATE DATABASE `test` DEFAULT CHARACTER SET utf8mb4;
USE `test`;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `sex` char(10) NOT NULL DEFAULT '',
  `birth` int NOT NULL,
  `id_deleted` int NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/csv/users.csv'  INTO TABLE users FIELDS TERMINATED BY ',' ESCAPED BY '"';

-- 
DROP TABLE IF EXISTS `order_data`;
CREATE TABLE `order_data` (
  `order_id` char(10) NOT NULL,
  `user_id` char(10) NOT NULL DEFAULT '',
  `order_product_id` char(10) NOT NULL DEFAULT '',
  `order_date` int NOT NULL,
  `is_discounted` int NOT NULL,
  `is_canceled` int NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/csv/order_data.csv'  INTO TABLE users FIELDS TERMINATED BY ',' ESCAPED BY '"';

-- 
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `product_id` char(10) NOT NULL,
  `name` char(10) NOT NULL DEFAULT '',
  `price` int NOT NULL,
  `category1` char(10) NOT NULL,
  `category2` char(10) NOT NULL,
  `category3` char(10) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/csv/products.csv'  INTO TABLE users FIELDS TERMINATED BY ',' ESCAPED BY '"';
