/*
SQLyog Community v12.5.1 (64 bit)
MySQL - 5.6.17 : Database - accountechdemo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`accountechdemo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `accountechdemo`;

/*Table structure for table `cash` */

DROP TABLE IF EXISTS `cash`;

CREATE TABLE `cash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `cash` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cash` */

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `groups` */

insert  into `groups`(`id`,`name`,`description`) values 
(1,'admin','Administrator'),
(2,'members','General User');

/*Table structure for table `login_attempts` */

DROP TABLE IF EXISTS `login_attempts`;

CREATE TABLE `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `login_attempts` */

/*Table structure for table `purchase` */

DROP TABLE IF EXISTS `purchase`;

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(55) DEFAULT NULL,
  `value` varchar(55) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `company` varchar(55) DEFAULT NULL,
  `purchaseid` varchar(55) DEFAULT NULL,
  `pmethod` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `purchase` */

insert  into `purchase`(`id`,`item`,`value`,`user`,`company`,`purchaseid`,`pmethod`) values 
(20,'mouse','50',1,'hp','1529253970','20'),
(21,'keyboard','50',1,'hp','1529253970','20'),
(22,'mouse','60',1,'dell','1529254023','60'),
(23,'keyboard','70',1,'apple','1529254023','60'),
(24,'mouse','50',1,'hp','1529432374','60'),
(25,'keyboard','50',1,'hp','1529432374','60'),
(27,'lcd','50',1,'hp','1531478342','40'),
(28,'camera','50',1,'hp','1531478366','80'),
(29,'camera','50',1,'hp','1531950291','40'),
(30,'mouse','50',1,'hp','1532514976','40'),
(31,'keyboard','50',1,'hp','1532514976','40'),
(32,'mouse','50',1,'hp','1532514987','40'),
(33,'keyboard','50',1,'hp','1532514987','40'),
(34,'keyboard','50',1,'hp','1532515010','20'),
(35,'mouse','50',1,'hp','1532701121','80'),
(36,'camera','50',1,'hp','1532701121','80'),
(37,'mouse','60',1,'dell','1532701170','40'),
(38,'mouse','50',1,'hp','1532701235','40'),
(39,'keyboard','70',1,'apple','1532701646','60'),
(40,'keyboard','70',1,'apple','1532702041','60');

/*Table structure for table `trail_balance` */

DROP TABLE IF EXISTS `trail_balance`;

CREATE TABLE `trail_balance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(55) DEFAULT NULL,
  `opening_balance` varchar(55) DEFAULT NULL,
  `debit` varchar(55) DEFAULT NULL,
  `credit` varchar(55) DEFAULT NULL,
  `closing_balance` varchar(55) DEFAULT NULL,
  `opening_year` varchar(55) DEFAULT NULL,
  `closing_year` varchar(55) DEFAULT NULL,
  `is_asset` binary(1) DEFAULT '0',
  `is_share_cap` binary(1) DEFAULT '0',
  `is_cash` binary(1) DEFAULT '0',
  `is_closing_bal` binary(1) DEFAULT '0',
  `is_opening_bal` binary(1) DEFAULT '0',
  `is_payable` binary(1) DEFAULT '0',
  `is_share_pre` binary(1) DEFAULT '0',
  `is_non_cur_liab` binary(1) DEFAULT '0',
  `is_ret_earn` binary(1) DEFAULT '0',
  `is_liab` binary(1) DEFAULT '0',
  `is_expense` binary(1) DEFAULT '0',
  `is_income` binary(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

/*Data for the table `trail_balance` */

insert  into `trail_balance`(`id`,`account`,`opening_balance`,`debit`,`credit`,`closing_balance`,`opening_year`,`closing_year`,`is_asset`,`is_share_cap`,`is_cash`,`is_closing_bal`,`is_opening_bal`,`is_payable`,`is_share_pre`,`is_non_cur_liab`,`is_ret_earn`,`is_liab`,`is_expense`,`is_income`) values 
(32,'camera','500','150','-','650','2017','2018','1','0','0','0','0','0','0','0','0','0','0','0'),
(33,'keyboard','500','460','-','960','2017','2018','1','0','0','0','0','0','0','0','0','0','0','0'),
(34,'lcd','500','50','-','550','2017','2018','1','0','0','0','0','0','0','0','0','0','0','0'),
(35,'mouse','500','420','-','920','2017','2018','1','0','0','0','0','0','0','0','0','0','0','0'),
(36,'cash','500','-','536','-36','2017','2018','0','0','1','0','0','0','0','0','0','0','0','0'),
(37,'payable','500','-','544','-44','2017','2018','0','0','0','0','0','1','0','0','0','1','0','0'),
(38,'share capital','500','-','-','500','2017','2018','0','1','0','0','0','0','0','0','0','0','0','0'),
(39,'share premium','500','-','-','500','2017','2018','0','1','0','0','0','0','1','0','0','0','0','0'),
(40,'retained earning','400','100','200','500','2017','2018','0','1','0','0','0','0','0','0','1','0','0','0'),
(41,'non_current_liability','500','-','-','500','2017','2018','0','0','0','0','0','0','0','1','0','1','0','0'),
(43,'income','-','','600','600','2017','2018','0','0','0','0','0','0','0','0','0','0','0','1'),
(44,'admin expense','-','50','-','50','2017','2018','0','0','0','0','0','0','0','0','0','0','1','0'),
(45,'material cost','-','375','-','375','2017','2018','0','0','0','0','0','0','0','0','0','0','1','0');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`ip_address`,`username`,`password`,`salt`,`email`,`activation_code`,`forgotten_password_code`,`forgotten_password_time`,`remember_code`,`created_on`,`last_login`,`active`,`first_name`,`last_name`,`company`,`phone`) values 
(1,'127.0.0.1','administrator','$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36','','admin@admin.com','',NULL,NULL,NULL,1268889823,1532695314,1,'Admin','istrator','ADMIN','0');

/*Table structure for table `users_groups` */

DROP TABLE IF EXISTS `users_groups`;

CREATE TABLE `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`),
  CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `users_groups` */

insert  into `users_groups`(`id`,`user_id`,`group_id`) values 
(1,1,1),
(2,1,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
