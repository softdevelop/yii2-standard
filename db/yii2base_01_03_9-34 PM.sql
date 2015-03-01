# ************************************************************
# Sequel Pro SQL dump
# Version 4135
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.34)
# Database: yii2base
# Generation Time: 2015-03-01 14:34:51 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table auth_assignment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_assignment`;

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `auth_assignment` WRITE;
/*!40000 ALTER TABLE `auth_assignment` DISABLE KEYS */;

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`)
VALUES
	('admin','1',1420343080),
	('user','2',1420343129);

/*!40000 ALTER TABLE `auth_assignment` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table auth_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_item`;

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `auth_item` WRITE;
/*!40000 ALTER TABLE `auth_item` DISABLE KEYS */;

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`)
VALUES
	('/*',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/*',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/assignment/*',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/assignment/assign',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/assignment/index',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/assignment/role-search',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/assignment/view',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/default/*',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/default/index',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/menu/*',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/menu/create',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/menu/delete',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/menu/index',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/menu/update',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/menu/view',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/permission/*',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/permission/assign',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/permission/create',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/permission/delete',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/permission/index',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/permission/role-search',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/permission/update',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/permission/view',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/role/*',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/role/assign',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/role/create',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/role/delete',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/role/index',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/role/role-search',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/role/update',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/role/view',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/route/*',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/route/assign',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/route/create',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/route/index',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/route/route-search',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/rule/*',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/rule/create',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/rule/delete',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/rule/index',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/rule/update',2,NULL,NULL,NULL,1420368460,1420368460),
	('/admin/rule/view',2,NULL,NULL,NULL,1420368460,1420368460),
	('/debug/*',2,NULL,NULL,NULL,1420368460,1420368460),
	('/debug/default/*',2,NULL,NULL,NULL,1420368460,1420368460),
	('/debug/default/download-mail',2,NULL,NULL,NULL,1420368460,1420368460),
	('/debug/default/index',2,NULL,NULL,NULL,1420368460,1420368460),
	('/debug/default/toolbar',2,NULL,NULL,NULL,1420368460,1420368460),
	('/debug/default/view',2,NULL,NULL,NULL,1420368460,1420368460),
	('/gii/*',2,NULL,NULL,NULL,1420368460,1420368460),
	('/gii/default/*',2,NULL,NULL,NULL,1420368460,1420368460),
	('/gii/default/action',2,NULL,NULL,NULL,1420368460,1420368460),
	('/gii/default/diff',2,NULL,NULL,NULL,1420368460,1420368460),
	('/gii/default/index',2,NULL,NULL,NULL,1420368460,1420368460),
	('/gii/default/preview',2,NULL,NULL,NULL,1420368460,1420368460),
	('/gii/default/view',2,NULL,NULL,NULL,1420368460,1420368460),
	('/site/*',2,NULL,NULL,NULL,1420368460,1420368460),
	('/site/about',2,NULL,NULL,NULL,1420368460,1420368460),
	('/site/captcha',2,NULL,NULL,NULL,1420368460,1420368460),
	('/site/contact',2,NULL,NULL,NULL,1420368460,1420368460),
	('/site/error',2,NULL,NULL,NULL,1420368460,1420368460),
	('/site/index',2,NULL,NULL,NULL,1420368177,1420368177),
	('/site/login',2,NULL,NULL,NULL,1420368460,1420368460),
	('/site/logout',2,NULL,NULL,NULL,1420368460,1420368460),
	('admin',1,'user will have all permissions',NULL,NULL,1420342460,1420343097),
	('user',1,'This is normal user ',NULL,NULL,1420342422,1424853692);

/*!40000 ALTER TABLE `auth_item` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table auth_item_child
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_item_child`;

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `auth_item_child` WRITE;
/*!40000 ALTER TABLE `auth_item_child` DISABLE KEYS */;

INSERT INTO `auth_item_child` (`parent`, `child`)
VALUES
	('admin','/admin/*'),
	('admin','/admin/assignment/*'),
	('admin','/admin/assignment/assign'),
	('admin','/admin/assignment/index'),
	('admin','/admin/assignment/role-search'),
	('admin','/admin/assignment/view'),
	('admin','/admin/default/*'),
	('admin','/admin/default/index'),
	('admin','/admin/menu/*'),
	('admin','/admin/menu/create'),
	('admin','/admin/menu/delete'),
	('admin','/admin/menu/index'),
	('admin','/admin/menu/update'),
	('admin','/admin/menu/view'),
	('admin','/admin/permission/*'),
	('admin','/admin/permission/assign'),
	('admin','/admin/permission/create'),
	('admin','/admin/permission/delete'),
	('admin','/admin/permission/index'),
	('admin','/admin/permission/role-search'),
	('admin','/admin/permission/update'),
	('admin','/admin/permission/view'),
	('admin','/admin/role/*'),
	('admin','/admin/role/assign'),
	('admin','/admin/role/create'),
	('admin','/admin/role/delete'),
	('admin','/admin/role/index'),
	('admin','/admin/role/role-search'),
	('admin','/admin/role/update'),
	('admin','/admin/role/view'),
	('admin','/admin/route/*'),
	('admin','/admin/route/assign'),
	('admin','/admin/route/create'),
	('admin','/admin/route/index'),
	('admin','/admin/route/route-search'),
	('admin','/admin/rule/*'),
	('admin','/admin/rule/create'),
	('admin','/admin/rule/delete'),
	('admin','/admin/rule/index'),
	('admin','/admin/rule/update'),
	('admin','/admin/rule/view'),
	('admin','/debug/*'),
	('user','/debug/*'),
	('admin','/debug/default/*'),
	('user','/debug/default/*'),
	('admin','/debug/default/download-mail'),
	('user','/debug/default/download-mail'),
	('admin','/debug/default/index'),
	('user','/debug/default/index'),
	('admin','/debug/default/toolbar'),
	('user','/debug/default/toolbar'),
	('admin','/debug/default/view'),
	('user','/debug/default/view'),
	('admin','/gii/*'),
	('user','/gii/*'),
	('admin','/gii/default/*'),
	('user','/gii/default/*'),
	('admin','/gii/default/action'),
	('user','/gii/default/action'),
	('admin','/gii/default/diff'),
	('user','/gii/default/diff'),
	('admin','/gii/default/index'),
	('user','/gii/default/index'),
	('admin','/gii/default/preview'),
	('user','/gii/default/preview'),
	('admin','/gii/default/view'),
	('user','/gii/default/view'),
	('admin','/site/*'),
	('user','/site/*'),
	('admin','/site/about'),
	('user','/site/about'),
	('admin','/site/captcha'),
	('user','/site/captcha'),
	('admin','/site/contact'),
	('user','/site/contact'),
	('admin','/site/error'),
	('user','/site/error'),
	('admin','/site/index'),
	('user','/site/index'),
	('admin','/site/login'),
	('user','/site/login'),
	('admin','/site/logout'),
	('user','/site/logout');

/*!40000 ALTER TABLE `auth_item_child` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table auth_rule
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_rule`;

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(256) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table migration
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migration`;

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `auth_key` varchar(255) DEFAULT NULL,
  `email_notification` smallint(6) DEFAULT '0',
  `avatar` varchar(255) DEFAULT NULL,
  `active` smallint(6) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `username`, `lastname`, `firstname`, `email`, `password`, `token`, `auth_key`, `email_notification`, `avatar`, `active`, `created_at`, `updated_at`)
VALUES
	(1,'admin','Prohaska','Twila','mcclure.whitney@larson.bizz1','$2y$13$djseGQlCMk1rHXoRs3gnPubMQ6N9Tl0iZMf3uMXyGyoRKlLtDg2gy','ohyR11oHIq95kAlVvVS_c5bFUQ06RxQh','ZOnwgc11lkD25YYYfU1ta06ruNyPF9U_',0,'ED1TiJ3HKi2m4l9duARLEGH0DmfsOrnr.jpg',0,NULL,'2015-02-11 15:53:21'),
	(2,'rex91','Cartwright','Kim','radams@yahoo.com','$2y$13$djseGQlCMk1rHXoRs3gnPubMQ6N9Tl0iZMf3uMXyGyoRKlLtDg2gy','lHqiAMOEhPqX5tx0u-m11f6gJtPOpfi5','wg-jbe41IMJa0rOS8NL0cePSHeqt4l4y',0,NULL,0,NULL,NULL),
	(3,'kris.sallie','Fadel','Oswaldo','joanne28@gmail.com','$2y$13$djseGQlCMk1rHXoRs3gnPubMQ6N9Tl0iZMf3uMXyGyoRKlLtDg2gy','mExNf77mhYiIV2js9VaA5u0cTeVw8u1H','P0EK9_f32_a3pHVZYRDlSRXACOZHvaSr',0,NULL,0,NULL,NULL),
	(4,'mercedes82','Anderson','Brendan','powlowski.enid@hotmail.com','$2y$13$djseGQlCMk1rHXoRs3gnPubMQ6N9Tl0iZMf3uMXyGyoRKlLtDg2gy','CXOQOoQxiC13oSSMIdtmNv-pgViJxpkR','cuJ7-yvSIgii9dzf6JSeWMNlJ0a_SZSh',0,NULL,0,NULL,NULL),
	(5,'satterfield.kristopher','Hessel','Dina','erick.zemlak@gmail.com','$2y$13$djseGQlCMk1rHXoRs3gnPubMQ6N9Tl0iZMf3uMXyGyoRKlLtDg2gy','nt9FQY1h9_AcAXRHZkyHJ4URtL75rYps','TY0sLvM8Ymt_fOAI-gVMjP9JzOEWvOXC',0,NULL,0,NULL,NULL),
	(6,'ramona75','Parisian','Austin','ykoelpin@yahoo.com','$2y$13$djseGQlCMk1rHXoRs3gnPubMQ6N9Tl0iZMf3uMXyGyoRKlLtDg2gy','0pIbBHPenU8VX6vJlYuQO6Sl3RZw_fnk','JXO50n12OxnwBpbl2Mj538V2OC-36FJD',0,NULL,1,NULL,NULL),
	(7,'stamm.kariane','Connelly','Tad','lwolff@fritsch.com','$2y$13$djseGQlCMk1rHXoRs3gnPubMQ6N9Tl0iZMf3uMXyGyoRKlLtDg2gy','E-HXnFSCfRxncgefiyBz90oDiXxMVt6X','7GZHSHm8Gao6Ynm-rqOrQIAGvXjT0YE2',0,NULL,1,NULL,NULL),
	(8,'ethel93','Keebler','Fabian','murl94@gmail.com','$2y$13$djseGQlCMk1rHXoRs3gnPubMQ6N9Tl0iZMf3uMXyGyoRKlLtDg2gy','UZ4Ba7aEe57mI2oA86Ie2BNyVD_yvoGJ','glkoF8UFkmtkzBoccnDyETM1FvG4c3Yt',0,NULL,1,NULL,NULL),
	(9,'joaquin28','Kassulke','Merle','scormier@hotmail.com','$2y$13$djseGQlCMk1rHXoRs3gnPubMQ6N9Tl0iZMf3uMXyGyoRKlLtDg2gy','M9e3FfjAcqRsj--zkLTRanFJJIiibp6m','FkAfLvS_4w7BkJx-RIRtm2C8Uh8p1oly',0,NULL,0,NULL,NULL),
	(10,'adfs','11111','adfa','jaqueline.kuhn111@gmail.com','$2y$13$oJLOO4ze4spewWhC85v/oOhpyCuKs1QdtjGrskvIX/YTEVWVyY75a','CPSNzGBzYsh8fDjlsQth8lF1dO9vI-SU','EODtzY0z6pA9RpNb141cyOwDERBFor-U',0,'ED1TiJ3HKi2m4l9duARLEGH0DmfsOrnr.jpg',1,'2015-02-05 09:30:02','2015-02-05 09:30:02');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
