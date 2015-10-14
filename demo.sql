# SQL-Front 4.1  (Build 2.26)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: localhost    Database: demo
# ------------------------------------------------------
# Server version 5.0.45-community-nt

DROP DATABASE IF EXISTS `demo`;
CREATE DATABASE `demo` /*!40100 DEFAULT CHARACTER SET GB2312 */;
USE `demo`;

#
# Table structure for table address
#

CREATE TABLE `address` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(50) NOT NULL default '',
  `name` varchar(50) NOT NULL default '',
  `sex` varchar(10) default NULL,
  `mobile` varchar(20) default NULL,
  `email` varchar(50) default NULL,
  `qq` varchar(20) default NULL,
  `company` varchar(100) default NULL,
  `address` varchar(100) default NULL,
  `postcode` varchar(10) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `ID` (`id`),
  KEY `ID_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=GB2312;

#
# Dumping data for table address
#

INSERT INTO `address` VALUES (1,'admin','admin','mail','13812345678','abc@163.com','12345678','IBM','北京','100085');
INSERT INTO `address` VALUES (6,'admin','admin','mail','13812345678','abc@163.com','12345678','IBM','北京','100085');
INSERT INTO `address` VALUES (9,'admin','test',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (10,'admin','test',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (11,'admin','test',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (12,'admin','test',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (13,'admin','test',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (14,'admin','test',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (15,'admin','test',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (16,'admin','test',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (17,'admin','test',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (18,'admin','test','','','','','','','');
INSERT INTO `address` VALUES (20,'admin','test',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (21,'admin','test',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (22,'admin','test',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (23,'admin','test',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (24,'admin','test',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (25,'admin','test',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (26,'admin','test',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (27,'admin','test',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (28,'admin','test2',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (29,'admin','test2',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (30,'admin','test2',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (31,'admin','test2',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (32,'admin','test2',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (33,'admin','test2',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (34,'admin','test2',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (35,'admin','test2',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (36,'admin','test2',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (37,'admin','test2',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (38,'admin','test2',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (39,'admin','test2',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (40,'admin','test2',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (41,'admin','test3',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (42,'admin','test3',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (43,'admin','test3',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (44,'admin','test3',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (45,'admin','test3',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (46,'admin','test3',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (47,'admin','test3',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (48,'admin','test3',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (49,'admin','test3',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (50,'admin','test3',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (51,'admin','test3',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (52,'admin','test4',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (53,'admin','test4',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (54,'admin','test4',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (55,'admin','test4',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (56,'admin','test4',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (57,'admin','test4',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (58,'admin','test4',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (59,'admin','test4',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (60,'admin','test4',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (61,'admin','test4',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (62,'admin','test4',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (63,'admin','test5',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (64,'admin','test5',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (65,'admin','test5',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (66,'admin','test5',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (67,'admin','test5',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (68,'admin','test5',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `address` VALUES (70,'admin','刘中兵','男','138','lzb_box@163.com','39717167','nn','北京','');
INSERT INTO `address` VALUES (71,'admin','刘中兵','男','138','lzb_box@163.com','39717167','nn','北京','');
INSERT INTO `address` VALUES (72,'admin','刘中兵','男','138','lzb_box@163.com','39717167','nn','北京','');
INSERT INTO `address` VALUES (76,'admin','刘中兵','男','138','lzb_box@163.com','12345678','XX','北京','100084');

#
# Table structure for table meeting
#

CREATE TABLE `meeting` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `sender` varchar(50) NOT NULL default '',
  `starttime` varchar(20) default NULL,
  `endtime` varchar(20) default NULL,
  `address` varchar(100) default NULL,
  `title` varchar(100) default NULL,
  `content` text,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `ID` (`id`),
  KEY `ID_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=GB2312;

#
# Dumping data for table meeting
#

INSERT INTO `meeting` VALUES (8,'admin','2007-08-30 09:00','2007-08-30 11:00','北京','Java','JavaWeb高手真经讨论会');
INSERT INTO `meeting` VALUES (17,'admin','2008-10-10 10:00:00','2008-10-10 12:00:00','会议室','Java讨论','讨论内容');

#
# Table structure for table notice
#

CREATE TABLE `notice` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `sender` varchar(50) NOT NULL default '',
  `title` varchar(100) default NULL,
  `content` text,
  `sendtime` varchar(20) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `ID` (`id`),
  KEY `ID_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=GB2312;

#
# Dumping data for table notice
#

INSERT INTO `notice` VALUES (8,'admin','JavaWeb','Java高手真经讨论会','2007-08-29 18:12:08');
INSERT INTO `notice` VALUES (13,'admin','开始第2卷讨论','讨论内容','2008-10-14 18:15:18');

#
# Table structure for table schedule
#

CREATE TABLE `schedule` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(50) NOT NULL default '',
  `year` int(4) default NULL,
  `month` int(2) default NULL,
  `day` int(2) default NULL,
  `plan` text,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `ID` (`id`),
  KEY `ID_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=GB2312;

#
# Dumping data for table schedule
#

INSERT INTO `schedule` VALUES (8,'admin',2009,1,30,'Java高手真经讨论会');
INSERT INTO `schedule` VALUES (9,'admin',2008,12,1,'Java高手真经讨论会');
INSERT INTO `schedule` VALUES (13,'admin',2008,12,20,'Java高手真经第2卷研究');

#
# Table structure for table sms
#

CREATE TABLE `sms` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(50) NOT NULL default '',
  `sender` varchar(50) NOT NULL default '',
  `message` text,
  `sendtime` varchar(20) default NULL,
  `isRead` varchar(1) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `ID` (`id`),
  KEY `ID_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=GB2312;

#
# Dumping data for table sms
#

INSERT INTO `sms` VALUES (10,'a','admin','a','2007-08-29 19:22:07','0');
INSERT INTO `sms` VALUES (14,'s','admin','内','2008-10-14 13:33:59','0');
INSERT INTO `sms` VALUES (15,'s','admin','2','2008-10-14 13:34:15','0');
INSERT INTO `sms` VALUES (19,'admin','admin','这是一个测试消息','2008-10-14 17:15:49','1');

#
# Table structure for table user
#

CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `ID` (`id`),
  KEY `ID_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=GB2312;

#
# Dumping data for table user
#

INSERT INTO `user` VALUES (1,'admin','admin','abc@163.com');
INSERT INTO `user` VALUES (2,'123','123','123');
INSERT INTO `user` VALUES (3,'','','');
INSERT INTO `user` VALUES (4,'ddd','111','');
INSERT INTO `user` VALUES (5,'a','','');
INSERT INTO `user` VALUES (6,'d','d','');
INSERT INTO `user` VALUES (7,'1','2','');

#
# Table structure for table worklog
#

CREATE TABLE `worklog` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(50) NOT NULL default '',
  `year` int(4) default NULL,
  `month` int(2) default NULL,
  `day` int(2) default NULL,
  `title` varchar(100) default NULL,
  `description` text,
  `logtime` varchar(20) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `ID` (`id`),
  KEY `ID_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=GB2312;

#
# Dumping data for table worklog
#

INSERT INTO `worklog` VALUES (8,'admin',2008,12,30,'JavaWeb','Java高手真经讨论会','2007-08-29 17:40:00');
INSERT INTO `worklog` VALUES (15,'admin',2008,12,20,'Java讨论结束','产生JSP方案','2008-10-14 17:46:08');

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
