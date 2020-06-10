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
) ENGINE=InnoDB AUTO_INCREMENT=418 DEFAULT CHARSET=utf8;

/*Data for the table `trail_balance` */

insert  into `trail_balance`(`id`,`account`,`opening_balance`,`debit`,`credit`,`closing_balance`,`opening_year`,`closing_year`,`is_asset`,`is_share_cap`,`is_cash`,`is_closing_bal`,`is_opening_bal`,`is_payable`,`is_share_pre`,`is_non_cur_liab`,`is_ret_earn`,`is_liab`,`is_expense`,`is_income`) values 
(36,'cash','500','0','0','500','2017','2018','1','0','1','0','0','0','0','0','0','0','0','0'),
(37,'payable','500','0','0','500','2017','2018','0','0','0','0','0','1','0','0','0','1','0','0'),
(38,'share capital','726','0','0','726','2017','2018','0','1','0','0','0','0','0','0','0','0','0','0'),
(39,'share premium','500','0','0','500','2017','2018','0','1','0','0','0','0','1','0','0','0','0','0'),
(40,'retained earnings','0','0','0','0','2017','2018','0','1','0','0','0','0','0','0','1','0','0','0'),
(41,'non_current_liability','774','0','0','774','2017','2018','0','0','0','0','0','0','0','1','0','1','0','0'),
(43,'income','0','0','600','600','2017','2018','0','0','0','0','0','0','0','0','0','0','0','1'),
(44,'admin expense','0','225','0','225','2017','2018','0','0','0','0','0','0','0','0','0','0','1','0'),
(45,'material cost','0','375','0','375','2017','2018','0','0','0','0','0','0','0','0','0','0','1','0'),
(414,'mouse','500','0','0','500','2017','2018','1','0','0','0','0','0','0','0','0','0','0','0'),
(415,'keyboard','500','0','0','500','2017','2018','1','0','0','0','0','0','0','0','0','0','0','0'),
(416,'LCD','500','0','0','500','2017','2018','1','0','0','0','0','0','0','0','0','0','0','0'),
(417,'camera','500','0','0','500','2017','2018','1','0','0','0','0','0','0','0','0','0','0','0');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
