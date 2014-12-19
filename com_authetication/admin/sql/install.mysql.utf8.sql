DROP TABLE IF EXISTS `#__auth_user`;
DROP TABLE IF EXISTS `#__auth_role`;
DROP TABLE IF EXISTS `#__auth_rule`;

CREATE TABLE `#__auth_user` (
	`user_id` int(11) NOT NULL AUTO_INCREMENT
	`role_id` int(11) NOT NULL,
	PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

