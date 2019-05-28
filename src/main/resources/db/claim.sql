CREATE TABLE `claim` (
  `claim_id` int(11) NOT NULL,
  `claim_first_name` char(100) NOT NULL,
  `claim_last_name` char(100) NOT NULL,
  `claim_patronymic` char(100) NOT NULL,
  `sign_start_date` date NOT NULL,
  `sign_end_date` date NOT NULL,
  `sign_ident_number` int(10) NOT NULL,
  PRIMARY KEY (`claim_id`),
  UNIQUE KEY `claim_id_UNIQUE` (`claim_id`),
  CONSTRAINT `claim_id` FOREIGN KEY (`claim_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8