# ************************************************************
# Sequel Pro SQL dump
# Version 4135
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.34)
# Database: adminpanel
# Generation Time: 2015-02-25 08:32:13 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


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
	(1,'jaqueline.kuhn','Prohaska','Twila','mcclure.whitney@larson.bizz1','$2y$13$djseGQlCMk1rHXoRs3gnPubMQ6N9Tl0iZMf3uMXyGyoRKlLtDg2gy','ohyR11oHIq95kAlVvVS_c5bFUQ06RxQh','ZOnwgc11lkD25YYYfU1ta06ruNyPF9U_',0,'ED1TiJ3HKi2m4l9duARLEGH0DmfsOrnr.jpg',0,NULL,'2015-02-11 15:53:21'),
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
