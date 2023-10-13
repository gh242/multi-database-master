/*
SQLyog Ultimate v12.2.6 (64 bit)
MySQL - 5.7.26-log : Database - netcoreserver_dev
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`netcoreserver_dev` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `netcoreserver_dev`;

/*Table structure for table `servicedbtest` */

DROP TABLE IF EXISTS `servicedbtest`;

CREATE TABLE `servicedbtest` (
  `Order_Id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ServiceTranNo` text COLLATE utf8_bin,
  `ServiceSellNo` text COLLATE utf8_bin,
  `ServiceQty` int(11) DEFAULT NULL,
  `Remark` text COLLATE utf8_bin,
  `CreateID` int(11) DEFAULT NULL,
  `Creator` text COLLATE utf8_bin,
  `CreateDate` timestamp(6) NULL DEFAULT NULL,
  `ModifyID` int(11) DEFAULT NULL,
  `Modifier` text COLLATE utf8_bin,
  `ModifyDate` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `servicedbtest` */

insert  into `servicedbtest`(`Order_Id`,`Se業務iceTran業務`,`ServiceSel業務o`,`ServiceQty`,`Remark`,`CreateID`,`Creator`,`CreateDate`,`ModifyID`,`Modifier`,`ModifyDate`) values 

('{1DFCEB82-0403-4451-B0F1-F8648621C276}','業務庫测试1','業務庫测试1',12300,'業務庫测试1',1,'超级管理员','2021-11-04 16:11:16.000000',NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
