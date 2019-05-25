CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` char(100) NOT NULL,
  `last_name` char(100) NOT NULL,
  `patronymic` char(100) NOT NULL,
  `series` char(2) NOT NULL,
  `series_number` varchar(7) NOT NULL,
  `ident_number` varchar(14) NOT NULL,
  `birth_date` date NOT NULL,
  `state_agency` varchar(100) NOT NULL,
  `date_state_agency` date NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8