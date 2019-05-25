CREATE TABLE `state_certificate` (
  `certificate_id` int(11) NOT NULL,
  `unic_state_number` varchar(12) NOT NULL,
  `organization_address` varchar(100) NOT NULL,
  `organization_name` varchar(100) NOT NULL,
  PRIMARY KEY (`certificate_id`),
  UNIQUE KEY `certificate_id_UNIQUE` (`certificate_id`),
  CONSTRAINT `certificate_id` FOREIGN KEY (`certificate_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8