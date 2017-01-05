/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.20 : Database - rbps
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`rbps` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `rbps`;

/*Table structure for table `attachment` */

DROP TABLE IF EXISTS `attachment`;

CREATE TABLE `attachment` (
  `attachmentId` int(11) NOT NULL AUTO_INCREMENT COMMENT '附件ID',
  `attachmentName` varchar(50) DEFAULT NULL COMMENT '名称',
  `attachmentPath` varchar(50) DEFAULT NULL COMMENT '路径',
  `attachmentTime` varchar(30) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`attachmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `attachment` */

insert  into `attachment`(`attachmentId`,`attachmentName`,`attachmentPath`,`attachmentTime`) values (1,'手动备份20150901142219.xls','logs/backup','2015-09-01 14:22:19');

/*Table structure for table `log` */

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `logId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志',
  `userName` varchar(30) DEFAULT NULL COMMENT '操作人',
  `createTime` varchar(30) DEFAULT NULL COMMENT '时间',
  `content` text COMMENT '详细',
  `operation` varchar(300) DEFAULT NULL COMMENT '操作类型（增删改）',
  `ip` varchar(60) DEFAULT NULL COMMENT 'IP地址',
  `module` varchar(40) DEFAULT NULL COMMENT '所属模块',
  PRIMARY KEY (`logId`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

/*Data for the table `log` */

insert  into `log`(`logId`,`userName`,`createTime`,`content`,`operation`,`ip`,`module`) values (1,'java','2015-09-01 14:26:40',NULL,'登录','127.0.0.1',NULL),(2,'java','2015-09-01 14:35:34',NULL,'登录','127.0.0.1',NULL),(3,'java','2015-09-01 15:15:40',NULL,'登录','127.0.0.1',NULL),(4,'java','2015-09-01 15:27:18',NULL,'登录','127.0.0.1',NULL),(5,'java','2015-09-01 15:33:39',NULL,'登录','127.0.0.1',NULL),(6,'java','2015-09-01 15:33:51','修改Menu 属性名和值： Seq-->2   MenuDescription-->   MenuId-->17   MenuName-->学生成绩管理   IconCls-->icon-349   MenuUrl-->  ','修改','127.0.0.1','menu'),(7,'java','2015-09-01 15:38:52',NULL,'登录','127.0.0.1',NULL),(8,'java','2015-09-01 15:39:06',NULL,'登录','127.0.0.1',NULL),(9,'java','2015-09-01 15:39:07',NULL,'登录','127.0.0.1',NULL),(10,'java','2015-09-01 15:39:17',NULL,'登录','127.0.0.1',NULL),(11,'java','2015-09-01 15:39:49',NULL,'登录','127.0.0.1',NULL),(12,'java','2015-09-01 15:39:49',NULL,'登录','127.0.0.1',NULL),(13,'java','2015-09-01 15:43:00',NULL,'登录','127.0.0.1',NULL),(14,'java','2015-09-01 15:43:22',NULL,'登录','127.0.0.1',NULL),(15,'java','2015-09-01 15:43:22',NULL,'登录','127.0.0.1',NULL),(16,'java','2015-09-01 15:45:53',NULL,'登录','127.0.0.1',NULL),(17,'java','2015-09-01 15:46:32',NULL,'登录','127.0.0.1',NULL),(18,'java','2015-09-01 15:46:45',NULL,'登录','127.0.0.1',NULL),(19,'java','2015-09-01 15:46:45',NULL,'登录','127.0.0.1',NULL),(20,'java','2015-09-01 15:49:24',NULL,'登录','127.0.0.1',NULL),(21,'java','2015-09-01 15:49:58',NULL,'登录','127.0.0.1',NULL),(22,'java','2015-09-01 15:50:14',NULL,'登录','127.0.0.1',NULL),(23,'java','2015-09-01 15:50:14',NULL,'登录','127.0.0.1',NULL),(24,'java','2015-09-01 15:51:20',NULL,'登录','127.0.0.1',NULL),(25,'java','2015-09-01 15:51:20',NULL,'登录','127.0.0.1',NULL),(26,'java','2015-09-01 15:52:35',NULL,'登录','127.0.0.1',NULL),(27,'java','2015-09-01 15:52:52',NULL,'登录','127.0.0.1',NULL),(28,'java','2015-09-01 15:52:52',NULL,'登录','127.0.0.1',NULL),(29,'java','2015-09-01 15:53:11',NULL,'登录','127.0.0.1',NULL),(30,'java','2015-09-01 15:54:30',NULL,'登录','127.0.0.1',NULL),(31,'java','2015-09-01 15:54:42',NULL,'登录','127.0.0.1',NULL),(32,'java','2015-09-01 15:56:25',NULL,'登录','127.0.0.1',NULL),(33,'java','2015-09-01 15:56:57',NULL,'登录','127.0.0.1',NULL),(34,'java','2015-09-01 15:57:07',NULL,'登录','127.0.0.1',NULL),(35,'java','2015-09-01 15:57:07',NULL,'登录','127.0.0.1',NULL),(36,'java','2015-09-01 15:57:29',NULL,'登录','127.0.0.1',NULL),(37,'java','2015-09-01 15:58:35',NULL,'登录','127.0.0.1',NULL),(38,'java','2015-09-01 15:58:35',NULL,'登录','127.0.0.1',NULL),(39,'java','2015-09-01 15:59:20',NULL,'登录','127.0.0.1',NULL),(40,'java','2015-09-01 15:59:31',NULL,'登录','127.0.0.1',NULL),(41,'java','2015-09-01 15:59:31',NULL,'登录','127.0.0.1',NULL),(42,'java','2015-09-01 16:01:00',NULL,'登录','127.0.0.1',NULL),(43,'java','2015-09-01 16:01:31',NULL,'登录','127.0.0.1',NULL),(44,'java','2015-09-01 16:01:42',NULL,'登录','127.0.0.1',NULL),(45,'java','2015-09-01 16:01:42',NULL,'登录','127.0.0.1',NULL),(46,'java','2015-09-01 16:04:12',NULL,'登录','127.0.0.1',NULL),(47,'java','2015-09-01 16:04:27',NULL,'登录','127.0.0.1',NULL),(48,'java','2015-09-01 16:04:27',NULL,'登录','127.0.0.1',NULL),(49,'java','2015-09-01 16:05:51',NULL,'登录','127.0.0.1',NULL),(50,'java','2015-09-01 16:06:11',NULL,'登录','127.0.0.1',NULL),(51,'java','2015-09-01 16:06:11',NULL,'登录','127.0.0.1',NULL),(52,'java','2015-09-01 16:09:45',NULL,'登录','127.0.0.1',NULL),(53,'java','2015-09-01 16:09:45',NULL,'登录','127.0.0.1',NULL),(54,'java','2015-09-01 16:09:56',NULL,'登录','127.0.0.1',NULL),(55,'java','2015-09-01 16:10:16',NULL,'登录','127.0.0.1',NULL),(56,'java','2015-09-01 16:10:16',NULL,'登录','127.0.0.1',NULL),(57,'java','2015-09-01 16:22:19',NULL,'登录','127.0.0.1',NULL),(58,'java','2015-09-01 16:22:38',NULL,'登录','127.0.0.1',NULL),(59,'java','2015-09-01 16:22:38',NULL,'登录','127.0.0.1',NULL),(60,'java','2015-09-01 16:22:47',NULL,'登录','127.0.0.1',NULL),(61,'java','2015-09-01 16:26:31',NULL,'登录','127.0.0.1',NULL),(62,'java','2015-09-01 16:28:11',NULL,'登录','127.0.0.1',NULL),(63,'java','2015-09-01 16:28:24',NULL,'登录','127.0.0.1',NULL),(64,'java','2015-09-01 16:28:24',NULL,'登录','127.0.0.1',NULL),(65,'java','2015-09-01 16:28:45',NULL,'登录','127.0.0.1',NULL),(66,'java','2015-09-01 16:29:06',NULL,'登录','127.0.0.1',NULL),(67,'java','2015-09-01 16:29:06',NULL,'登录','127.0.0.1',NULL),(68,'java','2015-09-01 16:29:15',NULL,'登录','127.0.0.1',NULL),(69,'java','2015-09-01 16:29:26',NULL,'登录','127.0.0.1',NULL),(70,'java','2015-09-01 16:29:26',NULL,'登录','127.0.0.1',NULL),(71,'java','2015-09-01 16:29:31',NULL,'登录','127.0.0.1',NULL),(72,'java','2015-09-01 16:34:04',NULL,'登录','127.0.0.1',NULL),(73,'java','2015-09-01 16:34:04',NULL,'登录','127.0.0.1',NULL),(74,'java','2015-09-01 16:34:18',NULL,'登录','127.0.0.1',NULL),(75,'java','2015-09-01 16:34:30',NULL,'登录','127.0.0.1',NULL),(76,'java','2015-09-01 16:34:30',NULL,'登录','127.0.0.1',NULL),(77,'java','2015-09-01 16:34:34',NULL,'登录','127.0.0.1',NULL),(78,'java','2015-09-01 16:34:35',NULL,'登录','127.0.0.1',NULL),(79,'java','2015-09-01 16:34:36',NULL,'登录','127.0.0.1',NULL),(80,'java','2015-09-01 16:34:37',NULL,'登录','127.0.0.1',NULL),(81,'java','2015-09-01 16:34:39',NULL,'登录','127.0.0.1',NULL),(82,'java','2015-09-01 16:34:44',NULL,'登录','127.0.0.1',NULL),(83,'java','2015-09-01 16:42:09',NULL,'登录','127.0.0.1',NULL),(84,'java','2015-09-01 16:42:24',NULL,'登录','127.0.0.1',NULL),(85,'java','2015-09-01 16:42:24',NULL,'登录','127.0.0.1',NULL),(86,'java','2015-09-01 16:42:25',NULL,'登录','127.0.0.1',NULL),(87,'java','2015-09-01 16:42:57',NULL,'登录','127.0.0.1',NULL),(88,'java','2015-09-01 16:42:57',NULL,'登录','127.0.0.1',NULL),(89,'java','2015-09-01 16:43:08',NULL,'登录','127.0.0.1',NULL),(90,'java','2015-09-01 16:43:24',NULL,'登录','127.0.0.1',NULL),(91,'java','2015-09-01 16:43:24',NULL,'登录','127.0.0.1',NULL),(92,'java','2015-09-01 16:43:39',NULL,'登录','127.0.0.1',NULL),(93,'java','2015-09-01 16:43:41',NULL,'登录','127.0.0.1',NULL),(94,'java','2015-09-01 16:43:55',NULL,'登录','127.0.0.1',NULL),(95,'java','2015-09-01 16:45:20',NULL,'登录','127.0.0.1',NULL),(96,'java','2015-09-01 16:45:23',NULL,'登录','127.0.0.1',NULL),(97,'java','2015-09-01 16:45:33',NULL,'登录','127.0.0.1',NULL),(98,'java','2015-09-01 16:45:44',NULL,'登录','127.0.0.1',NULL),(99,'java','2015-09-01 16:45:44',NULL,'登录','127.0.0.1',NULL),(100,'java','2015-09-01 16:45:48',NULL,'登录','127.0.0.1',NULL),(101,'java','2015-09-01 16:45:51',NULL,'登录','127.0.0.1',NULL),(102,'java','2015-09-01 16:46:09',NULL,'登录','127.0.0.1',NULL),(103,'java','2015-09-01 16:47:29',NULL,'登录','127.0.0.1',NULL),(104,'java','2015-09-01 16:47:42',NULL,'登录','127.0.0.1',NULL),(105,'java','2015-09-01 16:47:42',NULL,'登录','127.0.0.1',NULL),(106,'java','2015-09-01 16:47:46',NULL,'登录','127.0.0.1',NULL),(107,'java','2015-09-01 16:48:54',NULL,'登录','127.0.0.1',NULL),(108,'java','2015-09-01 16:49:05',NULL,'退出','127.0.0.1',NULL),(109,'java','2015-09-01 16:49:11',NULL,'登录','127.0.0.1',NULL),(110,'java','2015-09-01 16:49:27',NULL,'登录','127.0.0.1',NULL),(111,'java','2015-09-01 16:49:27',NULL,'登录','127.0.0.1',NULL),(112,'java','2015-09-01 16:49:29',NULL,'登录','127.0.0.1',NULL),(113,'java','2015-09-01 16:49:40',NULL,'登录','127.0.0.1',NULL),(114,'java','2015-09-01 16:52:15',NULL,'登录','127.0.0.1',NULL),(115,'java','2015-09-01 16:52:15',NULL,'登录','127.0.0.1',NULL),(116,'java','2015-09-01 16:52:20',NULL,'登录','127.0.0.1',NULL),(117,'java','2015-09-01 16:52:27',NULL,'登录','127.0.0.1',NULL),(118,'java','2015-09-01 16:52:40',NULL,'登录','127.0.0.1',NULL),(119,'java','2015-09-01 16:52:40',NULL,'登录','127.0.0.1',NULL),(120,'java','2015-09-01 16:53:14',NULL,'登录','127.0.0.1',NULL),(121,'java','2015-09-01 16:53:31',NULL,'登录','127.0.0.1',NULL),(122,'java','2015-09-01 16:53:31',NULL,'登录','127.0.0.1',NULL),(123,'java','2015-09-01 16:55:28',NULL,'登录','127.0.0.1',NULL),(124,'java','2015-09-01 16:55:40',NULL,'登录','127.0.0.1',NULL),(125,'java','2015-09-01 16:55:40',NULL,'登录','127.0.0.1',NULL),(126,'java','2015-09-01 16:55:46',NULL,'登录','127.0.0.1',NULL),(127,'java','2015-09-01 16:57:52',NULL,'登录','127.0.0.1',NULL),(128,'java','2015-09-01 16:57:52',NULL,'登录','127.0.0.1',NULL),(129,'java','2015-09-01 16:58:00',NULL,'登录','127.0.0.1',NULL),(130,'java','2015-09-01 16:58:09',NULL,'登录','127.0.0.1',NULL),(131,'java','2015-09-01 16:58:09',NULL,'登录','127.0.0.1',NULL),(132,'java','2015-09-01 16:58:30',NULL,'登录','127.0.0.1',NULL),(133,'java','2015-09-01 16:58:32',NULL,'登录','127.0.0.1',NULL),(134,'java','2015-09-01 16:58:47',NULL,'登录','127.0.0.1',NULL),(135,'java','2015-09-01 16:59:13',NULL,'登录','127.0.0.1',NULL),(136,'java','2015-09-01 16:59:13',NULL,'登录','127.0.0.1',NULL),(137,'java','2015-09-01 17:15:35',NULL,'登录','127.0.0.1',NULL),(138,'java','2015-09-01 17:15:35',NULL,'登录','127.0.0.1',NULL),(139,'java','2015-09-01 17:15:42',NULL,'登录','127.0.0.1',NULL),(140,'java','2015-09-01 17:15:50',NULL,'退出','127.0.0.1',NULL),(141,'java','2015-09-01 17:15:57',NULL,'登录','127.0.0.1',NULL),(142,'java','2015-09-01 17:16:10',NULL,'登录','127.0.0.1',NULL),(143,'java','2015-09-01 17:16:10',NULL,'登录','127.0.0.1',NULL),(144,'java','2015-09-01 17:19:23',NULL,'登录','127.0.0.1',NULL),(145,'java','2015-09-01 17:19:23',NULL,'登录','127.0.0.1',NULL),(146,'java','2015-09-01 17:19:31',NULL,'登录','127.0.0.1',NULL),(147,'java','2015-09-01 17:19:42',NULL,'登录','127.0.0.1',NULL),(148,'java','2015-09-01 17:19:42',NULL,'登录','127.0.0.1',NULL),(149,'java','2015-09-01 17:19:46',NULL,'登录','127.0.0.1',NULL),(150,'java','2015-09-01 17:19:50',NULL,'登录','127.0.0.1',NULL),(151,'java','2015-09-01 17:21:33',NULL,'登录','127.0.0.1',NULL),(152,'java','2015-09-01 17:21:33',NULL,'登录','127.0.0.1',NULL),(153,'java','2015-09-01 17:21:41',NULL,'登录','127.0.0.1',NULL),(154,'java','2015-09-01 17:21:53',NULL,'登录','127.0.0.1',NULL),(155,'java','2015-09-01 17:21:53',NULL,'登录','127.0.0.1',NULL),(156,'java','2015-09-01 17:24:01',NULL,'登录','127.0.0.1',NULL),(157,'java','2015-09-01 17:24:18',NULL,'登录','127.0.0.1',NULL),(158,'java','2015-09-01 17:24:18',NULL,'登录','127.0.0.1',NULL),(159,'java','2015-09-01 17:24:27',NULL,'登录','127.0.0.1',NULL),(160,'java','2015-09-01 17:24:40',NULL,'登录','127.0.0.1',NULL),(161,'java','2015-09-01 17:24:40',NULL,'登录','127.0.0.1',NULL),(162,'java','2015-09-02 08:47:33',NULL,'登录','127.0.0.1',NULL),(163,'java','2015-09-02 08:48:01',NULL,'登录','127.0.0.1',NULL),(164,'java','2015-09-02 08:48:01',NULL,'登录','127.0.0.1',NULL),(165,'java','2015-09-02 08:48:12',NULL,'登录','127.0.0.1',NULL),(166,'java','2015-09-02 08:48:25',NULL,'登录','127.0.0.1',NULL),(167,'java','2015-09-02 08:48:25',NULL,'登录','127.0.0.1',NULL),(168,'java','2015-09-02 08:48:59',NULL,'登录','127.0.0.1',NULL),(169,'java','2015-09-02 08:49:08',NULL,'登录','127.0.0.1',NULL),(170,'java','2015-09-02 08:49:48',NULL,'登录','127.0.0.1',NULL),(171,'java','2015-09-02 08:50:46',NULL,'登录','127.0.0.1',NULL),(172,'java','2015-09-02 08:50:46',NULL,'登录','127.0.0.1',NULL),(173,'java','2015-09-02 08:51:12',NULL,'登录','127.0.0.1',NULL),(174,'java','2015-09-02 08:51:22',NULL,'登录','127.0.0.1',NULL),(175,'java','2015-09-02 09:15:20',NULL,'登录','127.0.0.1',NULL),(176,'java','2015-09-02 09:15:33',NULL,'登录','127.0.0.1',NULL),(177,'java','2015-09-02 09:17:41',NULL,'登录','127.0.0.1',NULL),(178,'java','2015-09-02 09:18:02',NULL,'登录','127.0.0.1',NULL),(179,'java','2015-09-02 09:20:25',NULL,'登录','127.0.0.1',NULL),(180,'java','2015-09-02 09:20:41',NULL,'登录','127.0.0.1',NULL),(181,'java','2015-09-02 09:21:47',NULL,'登录','127.0.0.1',NULL),(182,'java','2015-09-02 09:21:56',NULL,'登录','127.0.0.1',NULL),(183,'java','2015-09-02 10:01:40',NULL,'登录','127.0.0.1',NULL),(184,'java','2015-09-02 10:18:52',NULL,'登录','127.0.0.1',NULL);

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `menuId` int(10) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menuName` varchar(50) DEFAULT NULL COMMENT '名称',
  `menuUrl` varchar(100) DEFAULT NULL COMMENT '方法',
  `parentId` int(11) DEFAULT NULL COMMENT '父ID',
  `menuDescription` varchar(200) DEFAULT NULL COMMENT '描述',
  `state` varchar(20) DEFAULT NULL COMMENT '状态/OPEN/CLOSED',
  `iconCls` varchar(50) DEFAULT NULL COMMENT '图标',
  `seq` int(11) DEFAULT NULL COMMENT '顺序排序',
  PRIMARY KEY (`menuId`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

/*Data for the table `menu` */

insert  into `menu`(`menuId`,`menuName`,`menuUrl`,`parentId`,`menuDescription`,`state`,`iconCls`,`seq`) values (1,'某系统','',-1,'主菜单','closed','icon-home',1),(2,'系统管理','',1,'','closed','icon-permission',1),(3,'学生管理','',1,'','closed','icon-student',2),(4,'教师管理','',1,'','open','icon-course',3),(5,'菜单管理','menu/menuIndex.htm',2,'','open','icon-menuManage',4),(6,'用户管理','user/userIndex.htm',2,'','open','icon-489',2),(7,'角色管理','role/roleIndex.htm',2,'','open','icon-486',3),(15,'修改密码','',1,'','open','icon-modifyPassword',4),(16,'安全退出','',1,'','open','icon-exit',5),(17,'学生成绩管理','',3,'','open','icon-349',2),(26,'日志管理','log/logIndex.htm',2,'','open','icon-513',4);

/*Table structure for table `operation` */

DROP TABLE IF EXISTS `operation`;

CREATE TABLE `operation` (
  `operationId` int(11) NOT NULL AUTO_INCREMENT COMMENT '具体的方法',
  `operationName` varchar(100) DEFAULT NULL COMMENT '方法名',
  `menuId` int(11) DEFAULT NULL COMMENT '所属菜单',
  `menuName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`operationId`),
  KEY `menuId` (`menuId`),
  CONSTRAINT `operation_ibfk_1` FOREIGN KEY (`menuId`) REFERENCES `menu` (`menuId`)
) ENGINE=InnoDB AUTO_INCREMENT=10016 DEFAULT CHARSET=utf8 COMMENT='具体的页面按钮上的方法\r\n（此自增ID至少从10000开始）';

/*Data for the table `operation` */

insert  into `operation`(`operationId`,`operationName`,`menuId`,`menuName`) values (10000,'添加',5,'菜单管理'),(10001,'修改',5,'菜单管理'),(10002,'删除',5,'菜单管理'),(10003,'添加',6,'用户管理'),(10004,'修改',6,'用户管理'),(10005,'删除',6,'用户管理'),(10006,'添加',7,'角色管理'),(10007,'修改',7,'角色管理'),(10008,'删除',7,'角色管理'),(10009,'授权',7,'角色管理'),(10011,'下载后台日志（log4j）',26,'日志管理'),(10012,'手动备份（业务操作）',26,'日志管理'),(10013,'删除',26,'日志管理'),(10014,'按钮管理',5,'菜单管理'),(10015,'下载操作日志',26,'日志管理');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `roleName` varchar(20) DEFAULT NULL COMMENT '角色名称',
  `menuIds` varchar(200) DEFAULT NULL COMMENT '菜单IDs',
  `operationIds` varchar(200) DEFAULT NULL COMMENT '按钮IDS',
  `roleDescription` varchar(200) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`roleId`,`roleName`,`menuIds`,`operationIds`,`roleDescription`) values (1,'超级管理员','1,2,6,7,5,26,3,8,17,4,27,28,15,16','10003,10004,10005,10006,10007,10008,10009,10000,10001,10002,10014,10011,10012,10013,10015','拥有全部权限的超级管理员角色'),(4,'普通管理员','1,2,6,26,3,8,17,4,27,28,15,16','10003,10004,10011','使用方中拥有最高权限的角色'),(5,'学生','1,3,8,17,15,16',NULL,'学生'),(6,'教师','1,4,27,28,15,16',NULL,'教师');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `tokenId` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL COMMENT '用户ID',
  `userAgent` varchar(50) DEFAULT NULL COMMENT '用户（md5）',
  `token` varchar(100) DEFAULT NULL COMMENT 'md5(username+md5(useragent))',
  `createTime` varchar(30) DEFAULT NULL COMMENT '创建时间',
  `expireTime` varchar(30) DEFAULT NULL COMMENT '到期时间',
  PRIMARY KEY (`tokenId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户登录信息（用于自动登录）';

/*Data for the table `token` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `userName` varchar(20) DEFAULT NULL COMMENT '用户名',
  `password` varchar(20) DEFAULT NULL COMMENT '密码',
  `userType` tinyint(4) DEFAULT NULL COMMENT '用户类型',
  `roleId` int(11) DEFAULT NULL COMMENT '角色ID',
  `userDescription` varchar(200) DEFAULT NULL COMMENT '描述信息',
  PRIMARY KEY (`userId`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`userId`,`userName`,`password`,`userType`,`roleId`,`userDescription`) values (1,'java','1',1,1,'超级管理员，供开发方使用'),(47,'admin','admin',2,4,'普通管理员'),(48,'dfs','df',2,4,'范德萨');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
