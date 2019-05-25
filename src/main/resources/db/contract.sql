CREATE TABLE `contract` (
  `contract_id` int(11) NOT NULL,
  `work_name` varchar(100) NOT NULL,
  `work_address` varchar(100) NOT NULL,
  `work_start_date` date NOT NULL,
  `work_end_date` date NOT NULL,
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `idcontract_UNIQUE` (`contract_id`),
  CONSTRAINT `contact_id` FOREIGN KEY (`contract_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8