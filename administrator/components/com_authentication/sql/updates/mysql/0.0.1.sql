DROP TABLE IF EXISTS `#__auth_user`;
DROP TABLE IF EXISTS `#__auth_role`;
DROP TABLE IF EXISTS `#__auth_rule`;

CREATE TABLE `#__auth_user` (   
	`user_id` int(11) NOT NULL AUTO_INCREMENT
	`role_id` int(11) NOT NULL,
	PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

CREATE TABLE `#__auth_role` (   
	`role_id` int(11) NOT NULL AUTO_INCREMENT
	`name` varchar(128) NOT NULL,
	PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

CREATE TABLE `#__auth_rule` (   
	`rule_id` int(11) NOT NULL AUTO_INCREMENT
	`name` varchar(128) NOT NULL,
	PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

CREATE TABLE `#__auth_role_rule` (   
	`role_id` int(11) NOT NULL,
	`rule_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;



