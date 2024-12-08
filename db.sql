/*
SQLyog Community Edition- MySQL GUI v7.01 
MySQL - 5.0.27-community-nt : Database - landmanagement
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`landmanagement` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `landmanagement`;

/*Table structure for table `addland` */

DROP TABLE IF EXISTS `addland`;

CREATE TABLE `addland` (
  `ID` int(11) NOT NULL auto_increment,
  `sellername` varchar(255) default NULL,
  `Email` varchar(255) default NULL,
  `Phone` varchar(255) default NULL,
  `adharcard` varchar(255) default NULL,
  `serveyno` varchar(255) default NULL,
  `WARDno` varchar(255) default NULL,
  `Plotno` varchar(255) default NULL,
  `maplocation` varchar(255) default NULL,
  `filenamepath` varchar(255) default NULL,
  `filenamepathfordoc` varchar(255) default NULL,
  `state` varchar(255) default NULL,
  `city` varchar(255) default NULL,
  `area` varchar(255) default NULL,
  `Landprice` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `admin` varchar(244) default 'not_verify',
  `buyer` varchar(244) default 'AVAILABLE',
  `user` varchar(255) default NULL,
  `likecount` varchar(255) default '0',
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `addland` */

insert  into `addland`(`ID`,`sellername`,`Email`,`Phone`,`adharcard`,`serveyno`,`WARDno`,`Plotno`,`maplocation`,`filenamepath`,`filenamepathfordoc`,`state`,`city`,`area`,`Landprice`,`status`,`admin`,`buyer`,`user`,`likecount`) values (1,'rosa','ros@gmail.com','2324356787','559566598223','7578','78','789899','mumbaui','static/landdetails/about.jpg','static/landdocumentfromseller/payment.jpg','Haryana','Kanpur','45area','8798632233','Land available','verify','NOT AVAILABLE','a','0');

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`emailid`,`password`) values ('Admin','admin@gmail.com','Admin');

/*Table structure for table `bankdetails` */

DROP TABLE IF EXISTS `bankdetails`;

CREATE TABLE `bankdetails` (
  `id` int(255) NOT NULL auto_increment,
  `nameofcard` varchar(255) default NULL,
  `cardnumber` varchar(255) default NULL,
  `expmonth` varchar(255) default NULL,
  `expyear` varchar(255) default NULL,
  `CVV` varchar(255) default NULL,
  `first_owner` varchar(255) default NULL,
  `second_owner` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `city` varchar(255) default NULL,
  `state` varchar(255) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bankdetails` */

insert  into `bankdetails`(`id`,`nameofcard`,`cardnumber`,`expmonth`,`expyear`,`CVV`,`first_owner`,`second_owner`,`address`,`city`,`state`) values (2,'zdfsdf','92941246','09','2028','8940','a','b','mumbaui','Kanpur','Haryana'),(3,'sFad','784642','08','2026','9862','a','b','mumbaui','Kanpur','Haryana'),(4,'rfut6jty','5257','04','2025','56','a','b','mumbaui','Kanpur','Haryana'),(5,'asdas','asda','08','2029','sada','a','b','mumbaui','Kanpur','Haryana'),(6,'zdxfsfv','32142342','09','2028','2343','a','b','mumbaui','Kanpur','Haryana'),(7,'zdxfsfv','32142342','09','2028','2343','a','b','mumbaui','Kanpur','Haryana'),(8,'zdxfsfv','32142342','09','2028','2343','a','b','mumbaui','Kanpur','Haryana'),(9,'zdxfsfv','32142342','09','2028','2343','a','b','mumbaui','Kanpur','Haryana'),(10,'sdas','234a','09','2027','3242','a','b','mumbaui','Kanpur','Haryana'),(11,'adsfaf','123412341','11','2028','1234','a','b','mumbaui','Kanpur','Haryana'),(12,'asdasd','123213123','08','2027','1231','a','b','mumbaui','Kanpur','Haryana'),(13,'asdasd','213213321','10','2028','3214','a','b','mumbaui','Kanpur','Haryana');

/*Table structure for table `contact1` */

DROP TABLE IF EXISTS `contact1`;

CREATE TABLE `contact1` (
  `username` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `subject` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contact1` */

insert  into `contact1`(`username`,`email`,`phone`,`subject`) values ('admin','a@gmail.com','45678912535','jolaofsjd;lkspoj;gtg');

/*Table structure for table `request1` */

DROP TABLE IF EXISTS `request1`;

CREATE TABLE `request1` (
  `id` int(255) NOT NULL auto_increment,
  `user` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `filepath` varchar(255) default NULL,
  `maplocation` varchar(255) default NULL,
  `landprice` varchar(255) default NULL,
  `request` varchar(255) default NULL,
  `status` varchar(255) default 'REQUEST ACCEPT',
  `buyer_price` varchar(255) default NULL,
  `booking` varchar(255) default 'NOTBOOK',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `request1` */

insert  into `request1`(`id`,`user`,`email`,`filepath`,`maplocation`,`landprice`,`request`,`status`,`buyer_price`,`booking`) values (2,'b','ros@gmail.com','static/landdetails/about.jpg','mumbaui','8798632233','a',' ACCEPT ','48463498','BOOK');

/*Table structure for table `sellerregistration` */

DROP TABLE IF EXISTS `sellerregistration`;

CREATE TABLE `sellerregistration` (
  `username` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sellerregistration` */

insert  into `sellerregistration`(`username`,`emailid`,`password`) values ('a','rosh@gmail.com','a'),('b','b@gmail.com','b');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
