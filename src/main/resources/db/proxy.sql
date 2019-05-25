CREATE TABLE `proxy` (
  `proxy_id` int(11) NOT NULL,
  `first_name` char(100) NOT NULL,
  `last_name` char(100) NOT NULL,
  `patronymic` char(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`proxy_id`),
  UNIQUE KEY `proxy_id_UNIQUE` (`proxy_id`),
  CONSTRAINT `proxy_id` FOREIGN KEY (`proxy_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8