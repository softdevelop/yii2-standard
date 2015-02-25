# ************************************************************
# Sequel Pro SQL dump
# Version 4135
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.34)
# Database: yii2base
# Generation Time: 2015-02-25 08:09:31 +0000
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
	('author','2',1420343129);

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
	('author',1,'This is author who can create and update post',NULL,NULL,1420342422,1420342422),
	('createPost',2,'user with this permission can create a own post',NULL,NULL,1420342280,1420342280),
	('updatePost',2,'user who create post can update post a',NULL,NULL,1420342341,1420450659);

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
	('author','/debug/*'),
	('admin','/debug/default/*'),
	('author','/debug/default/*'),
	('admin','/debug/default/download-mail'),
	('author','/debug/default/download-mail'),
	('admin','/debug/default/index'),
	('author','/debug/default/index'),
	('admin','/debug/default/toolbar'),
	('author','/debug/default/toolbar'),
	('admin','/debug/default/view'),
	('author','/debug/default/view'),
	('admin','/gii/*'),
	('author','/gii/*'),
	('admin','/gii/default/*'),
	('author','/gii/default/*'),
	('admin','/gii/default/action'),
	('author','/gii/default/action'),
	('admin','/gii/default/diff'),
	('author','/gii/default/diff'),
	('admin','/gii/default/index'),
	('author','/gii/default/index'),
	('admin','/gii/default/preview'),
	('author','/gii/default/preview'),
	('admin','/gii/default/view'),
	('author','/gii/default/view'),
	('admin','/site/*'),
	('author','/site/*'),
	('admin','/site/about'),
	('author','/site/about'),
	('admin','/site/captcha'),
	('author','/site/captcha'),
	('admin','/site/contact'),
	('author','/site/contact'),
	('admin','/site/error'),
	('author','/site/error'),
	('admin','/site/index'),
	('author','/site/index'),
	('admin','/site/login'),
	('author','/site/login'),
	('admin','/site/logout'),
	('author','/site/logout'),
	('admin','createPost'),
	('author','createPost'),
	('admin','updatePost');

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



# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` smallint(6) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `authKey` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `username`, `email`, `password`, `token`, `create_time`, `update_time`, `active`, `access_token`, `authKey`, `role`)
VALUES
	(1,'admin','admin@gmail.com','$2y$13$djseGQlCMk1rHXoRs3gnPubMQ6N9Tl0iZMf3uMXyGyoRKlLtDg2gy','3213131','2015-01-02 15:16:57','2014-12-23 16:53:26',1,NULL,NULL,'admin'),
	(2,'author1','author1@gmail.com','$2y$13$djseGQlCMk1rHXoRs3gnPubMQ6N9Tl0iZMf3uMXyGyoRKlLtDg2gy','3213131','2015-01-04 10:44:13','0000-00-00 00:00:00',1,NULL,NULL,NULL);

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
