/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 8.0.16 : Database - coursesdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`coursesdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `coursesdb`;

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `courseCode` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商编码',
  `courseName` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商名称',
  `schoolName` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商联系人',
  `courseCredits` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `courseCounts` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '传真',
  `createdBy` bigint(20) DEFAULT NULL COMMENT '创建者（userId）',
  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
  `modifyDate` datetime DEFAULT NULL COMMENT '更新时间',
  `modifyBy` bigint(20) DEFAULT NULL COMMENT '更新者（userId）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `course` */

insert  into `course`(`id`,`courseCode`,`courseName`,`schoolName`,`courseCredits`,`courseCounts`,`createdBy`,`creationDate`,`modifyDate`,`modifyBy`) values 
(1,'1','高等数学','数学学院','3','3',1,'2020-11-06 19:29:21','2020-11-08 00:00:30',21),
(3,'003','数据结构','计算机学院','36','54',1,'2020-11-06 19:29:24','2020-11-07 22:57:19',21),
(4,'004','马克思哲学','政治学院','4.5','35',1,'2020-11-06 19:29:38',NULL,NULL),
(5,'005','大学物理1','物理学院','3','32',1,'2020-11-06 19:29:49',NULL,NULL),
(6,'006','大学物理2','物理学院','3','41',1,'2020-11-06 19:29:31',NULL,NULL),
(7,'007','程序设计基础','计算机学院','3','45',1,'2020-11-06 19:29:43',NULL,NULL),
(8,'008','计算机组成与结构','计算机学院','3','43',1,'2020-11-06 19:29:45',NULL,NULL),
(9,'009','计算机网络','计算机学院','3','36',1,'2020-11-06 19:29:34',NULL,NULL),
(10,'010','算法设计与分析','计算机学院','3','39',1,'2020-11-06 19:29:40',NULL,NULL),
(11,'011','线性代数','数学学院','3','52',1,'2020-11-06 19:29:51',NULL,NULL),
(12,'012','面向对象','计算机学院','3','43',1,'2020-11-06 19:29:47',NULL,NULL),
(21,'2','2','2','2','2',21,'2020-11-06 20:15:48',NULL,NULL),
(22,'3','3','3','3','3',21,'2020-11-06 20:20:11',NULL,NULL),
(23,'5','5','5','5','5',21,'2020-11-06 20:30:07',NULL,NULL),
(24,'9','9','9','9','9',21,'2020-11-06 20:41:22',NULL,NULL),
(25,'453','453','543','4345','3',21,'2020-11-07 13:52:03',NULL,NULL),
(26,'453','1','11','1','1',21,'2020-11-07 14:07:44',NULL,NULL),
(27,'123','123','123c','123','123',21,'2020-11-07 14:10:10',NULL,NULL),
(28,'123','计组','213','1','123',21,'2020-11-07 23:09:00','2020-11-08 00:00:34',21);

/*Table structure for table `grade` */

DROP TABLE IF EXISTS `grade`;

CREATE TABLE `grade` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `gradeCode` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '账单编码',
  `studentName` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品名称',
  `courseGrade` decimal(20,2) DEFAULT NULL COMMENT '商品总额',
  `isPass` int(10) DEFAULT NULL COMMENT '是否支付（1：未支付 2：已支付）',
  `createdBy` bigint(20) DEFAULT NULL COMMENT '创建者（userId）',
  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
  `modifyBy` bigint(20) DEFAULT NULL COMMENT '更新者（userId）',
  `modifyDate` datetime DEFAULT NULL COMMENT '更新时间',
  `courseId` int(20) DEFAULT NULL COMMENT '供应商ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `grade` */

insert  into `grade`(`id`,`gradeCode`,`studentName`,`courseGrade`,`isPass`,`createdBy`,`creationDate`,`modifyBy`,`modifyDate`,`courseId`) values 
(22,'3','1',3333.00,2,21,'2020-10-30 16:40:59',21,'2020-11-07 23:52:29',3),
(23,'123','1',1.00,1,21,'2020-10-30 19:25:24',21,'2020-11-07 22:57:31',4),
(24,'005','李小霞',49.00,1,21,'2020-10-30 19:25:59',21,'2020-11-07 22:57:27',4),
(25,'006','李小明',59.00,1,21,'2020-10-30 19:26:25',NULL,NULL,9),
(27,'42','434234',99.00,2,21,'2020-10-31 11:59:16',NULL,NULL,1),
(32,'1','2',3.00,1,21,'2020-11-07 12:31:25',NULL,NULL,1),
(33,'132','123',132.00,2,21,'2020-11-07 12:32:31',NULL,NULL,7),
(34,'2','2',24342.00,2,21,'2020-11-07 13:50:21',NULL,NULL,3),
(35,'1','1',1.00,1,21,'2020-11-07 14:07:22',NULL,NULL,1),
(36,'123','123',132.00,2,21,'2020-11-07 14:10:02',NULL,NULL,4),
(37,'1','2',3.00,2,21,'2020-11-07 22:38:00',NULL,NULL,7),
(38,'312','132',132.00,2,21,'2020-11-07 23:16:37',NULL,NULL,4),
(39,'1','3',12.00,1,21,'2020-11-07 23:42:08',NULL,NULL,3),
(40,'1','11',1.00,1,21,'2020-11-07 23:52:47',NULL,NULL,3);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `roleCode` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色编码',
  `roleName` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色名称',
  `createdBy` bigint(20) DEFAULT NULL COMMENT '创建者',
  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
  `modifyBy` bigint(20) DEFAULT NULL COMMENT '修改者',
  `modifyDate` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `role` */

insert  into `role`(`id`,`roleCode`,`roleName`,`createdBy`,`creationDate`,`modifyBy`,`modifyDate`) values 
(1,'ADMIN','管理员',1,'2020-11-06 20:06:44',NULL,NULL),
(2,'TEACHER','老师',1,'2020-11-06 20:06:46',NULL,NULL),
(3,'STUDENT','学生',1,'2020-11-06 20:11:10',NULL,NULL);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `userCode` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户编码',
  `userName` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名称',
  `userPassword` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户密码',
  `gender` int(10) DEFAULT NULL COMMENT '性别（1:女、 2:男）',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `userphone` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机',
  `address` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地址',
  `userRole` int(10) DEFAULT NULL COMMENT '用户角色（取自角色表-角色id）',
  `createdBy` bigint(20) DEFAULT NULL COMMENT '创建者（userId）',
  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
  `modifyBy` bigint(20) DEFAULT NULL COMMENT '更新者（userId）',
  `modifyDate` datetime DEFAULT NULL COMMENT '更新时间',
  `idPicPath` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '个人证件照',
  `workPicPath` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '工作证件照',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`userCode`,`userName`,`userPassword`,`gender`,`birthday`,`userphone`,`address`,`userRole`,`createdBy`,`creationDate`,`modifyBy`,`modifyDate`,`idPicPath`,`workPicPath`) values 
(1,'admin','系统管理员','1',2,'1983-10-10','13688889999','501',1,1,'2020-11-06 20:05:18',21,'2020-11-07 23:28:35',NULL,NULL),
(2,'liming','李明','1',2,'1983-12-10','13688884457','502',2,1,'2020-11-06 20:05:20',NULL,NULL,NULL,NULL),
(5,'hanlubiao','韩路彪','1',2,'1984-06-05','18567542321','503',2,1,'2020-11-06 20:05:23',NULL,NULL,NULL,NULL),
(6,'zhanghua','张华','1',1,'1983-06-15','13544561111','504',3,1,'2020-11-06 20:05:25',NULL,NULL,NULL,NULL),
(7,'wangyang','王洋','1',2,'1982-12-31','13444561124','505',3,1,'2020-11-06 20:05:28',NULL,NULL,NULL,NULL),
(8,'zhaoyan','赵燕','1',1,'1986-03-07','18098764545','506',3,1,'2020-11-06 20:05:31',NULL,NULL,NULL,NULL),
(10,'sunlei','孙磊','1',2,'1981-01-04','13387676765','507',3,1,'2020-11-06 20:05:34',NULL,NULL,NULL,NULL),
(11,'sunxing','孙兴','1',2,'1978-03-12','13367890900','508',3,1,'2020-11-06 20:05:36',NULL,NULL,NULL,NULL),
(12,'zhangchen','张晨','1',1,'1986-03-28','18098765434','509',3,1,'2020-11-06 20:05:38',NULL,NULL,NULL,NULL),
(13,'dengchao','邓超','1',2,'1981-11-04','13689674534','510',3,1,'2020-11-06 20:05:41',NULL,NULL,NULL,NULL),
(14,'yangguo','杨过','1',2,'1980-01-01','13388886623','511',3,1,'2020-11-06 20:05:44',NULL,NULL,NULL,NULL),
(17,'ssss','admin','1',2,'2019-06-28','111','sdfdsf',2,1,'2020-11-06 20:05:47',21,'2020-11-07 23:44:27',NULL,NULL),
(18,'dfdf','fdfd','1',2,'2019-06-26','75454','57545',3,1,'2020-11-06 20:05:50',NULL,NULL,NULL,NULL),
(19,'ssssww','kazu','1',2,'2019-06-26','22323','2323',1,1,'2020-11-06 20:05:53',NULL,NULL,NULL,NULL),
(20,'aaaaa','aaaa','aaaaa',1,'2019-07-02','75454','sdfdsf',3,1,'2020-11-06 20:05:56',NULL,NULL,NULL,NULL),
(21,'1','1','1',1,'2019-06-30','1','1',1,1,'2020-11-06 20:05:59',21,'2020-11-07 14:10:37',NULL,NULL),
(22,'2','2','2',1,'2019-07-01','2','2',3,1,'2020-11-06 20:06:01',NULL,NULL,NULL,NULL),
(23,'12','2','2',2,'2019-07-01','2','2',2,1,'2020-11-06 20:06:03',NULL,NULL,NULL,NULL),
(24,'22','22','2',2,'2019-07-01','2','2',2,1,'2020-11-06 20:06:07',NULL,NULL,NULL,NULL),
(25,'333','333','11',1,'2019-07-08','1','111',2,1,'2020-11-06 20:06:09',NULL,NULL,NULL,NULL),
(26,'4','4','4',1,'2019-06-30','4','4',3,1,'2020-11-06 20:06:13',NULL,NULL,NULL,NULL),
(27,'5','5','5',1,'2019-07-08','5','5',3,1,'2020-11-06 20:06:16',NULL,NULL,NULL,NULL),
(28,'5','5','5',1,'2019-07-08','5','5',3,1,'2020-11-06 20:06:20',NULL,NULL,NULL,NULL),
(29,'5','5','5',1,'2019-07-08','5','5',3,1,'2020-11-06 20:06:19',NULL,NULL,NULL,NULL),
(30,'6','6','6',2,'2020-01-01','6','6',1,21,'2020-11-06 19:09:33',NULL,NULL,NULL,NULL),
(31,'421','214','124',2,'2020-01-01','124','124',1,21,'2020-11-07 14:11:11',NULL,NULL,NULL,NULL),
(32,'sda','asd','asd',2,'2020-01-02','1','1',1,21,'2020-11-07 14:11:34',21,'2020-11-07 14:12:02',NULL,NULL),
(33,'11','1','1',2,'1999-07-16','1','1',2,21,'2020-11-07 23:44:14',NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
