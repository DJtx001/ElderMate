
####################
##  xhzb
####################
DROP DATABASE IF EXISTS `xhzb`;

####################
##  database xhzb ddl
####################
CREATE DATABASE `xhzb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_eo_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

use `xhzb`;

####################
##  bed
####################
DROP TABLE IF EXISTS `bed`;

####################
##  table bed ddl
####################
CREATE TABLE `bed` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '床位ID',
  `bed_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '床位编号',
  `bed_status` int DEFAULT NULL COMMENT '床位状态: 未入住0, 已入住1 ',
  `sort` int DEFAULT NULL COMMENT '床位号',
  `room_id` bigint DEFAULT NULL COMMENT '房间ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint DEFAULT NULL COMMENT '创建人id',
  `update_by` bigint DEFAULT NULL COMMENT '更新人id',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `bed_number` (`bed_number`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='床位表';

####################
##  bed data
####################

####################
##  bed data
####################
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,1,1671403256519078138,'2025-04-20T17:00:53','2023-09-26T17:39:53',1,1,'101-1',1);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,2,1671403256519078138,'2023-10-05T16:00:05','2023-09-26T17:40:01',2,1,'102-1',1671403256519078164);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,2,1671403256519078138,'2023-10-05T15:59:45','2023-09-26T17:40:09',3,2,'102-2',1671403256519078164);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,3,1671403256519078138,'2023-10-05T16:00:21','2023-09-26T17:40:42',4,1,'103-1',1671403256519078164);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,4,1671403256519078138,'2023-09-26T17:45:39','2023-09-26T17:40:49',5,1,'104-1',1671403256519078138);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,4,1671403256519078138,'2023-10-20T23:22:12','2023-09-26T17:40:54',6,2,'104-2',1671403256519078164);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,5,1671403256519078138,'2023-09-26T17:45:52','2023-09-26T17:41:09',7,1,'105-1',1671403256519078138);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,6,1671403256519078138,'2023-09-26T17:45:58','2023-09-26T17:41:16',8,1,'106-1',1671403256519078138);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,6,1671403256519078138,'2023-09-26T17:46:04','2023-09-26T17:41:24',9,2,'106-2',1671403256519078138);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,7,1671403256519078138,'2023-12-21T09:37:49','2023-09-26T17:41:32',10,1,'107-1',1671403256519078138);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,8,1671403256519078138,'2025-04-20T17:07:59','2023-09-26T17:44:53',11,1,'201-1',1);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,9,1671403256519078138,'2023-09-26T17:46:33','2023-09-26T17:46:33',12,1,'202-1',1);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,9,1671403256519078138,'2023-09-26T17:46:47','2023-09-26T17:46:47',13,2,'202-2',1);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,10,1671403256519078138,'2023-09-26T18:43:58','2023-09-26T18:43:58',14,1,'203-1',1);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,11,1671403256519078138,'2023-09-26T18:44:03','2023-09-26T18:44:03',15,1,'204-1',1);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,11,1671403256519078138,'2023-09-26T18:44:12','2023-09-26T18:44:12',16,2,'204-2',1);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,12,1671403256519078138,'2023-12-20T18:40:07','2023-09-26T18:44:23',18,1,'205-1',1671403256519078138);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,13,1671403256519078138,'2023-12-20T21:43:10','2023-09-26T18:44:36',19,1,'206-1',1671403256519078138);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,13,1671403256519078138,'2023-09-26T18:44:48','2023-09-26T18:44:42',20,2,'206-2',1671403256519078138);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,14,1671403256519078138,'2023-09-26T18:45:01','2023-09-26T18:45:01',21,1,'207-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,15,1671403256519078138,'2023-12-26T19:35:06','2023-09-26T18:45:26',22,1,'301-2',1671403256519078138);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,16,1671403256519078138,'2023-09-26T18:45:31','2023-09-26T18:45:31',23,1,'302-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,16,1671403256519078138,'2023-12-26T19:35:15','2023-09-26T18:45:39',24,2,'302-3',1671403256519078138);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,17,1671403256519078138,'2023-09-26T18:45:44','2023-09-26T18:45:44',25,1,'303-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,18,1671403256519078138,'2023-09-26T18:45:55','2023-09-26T18:45:55',27,1,'304-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,18,1671403256519078138,'2023-09-26T18:46:04','2023-09-26T18:46:04',28,2,'304-2',1);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,19,1671403256519078138,'2023-12-21T10:04:47','2023-09-26T18:46:11',29,1,'305-1',1671403256519078138);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,20,1671403256519078138,'2023-09-26T18:46:16','2023-09-26T18:46:16',30,1,'306-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,20,1671403256519078138,'2023-09-26T19:08:50','2023-09-26T18:46:22',31,2,'306-2',1671403256519078138);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,21,1671403256519078138,'2023-09-26T18:46:29','2023-09-26T18:46:29',32,1,'307-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,22,1671403256519078138,'2023-09-26T18:52:14','2023-09-26T18:52:14',33,1,'401-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,23,1671403256519078138,'2023-09-26T18:52:22','2023-09-26T18:52:22',34,1,'402-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,23,1671403256519078138,'2023-09-26T18:52:38','2023-09-26T18:52:35',35,2,'402-2',1671403256519078138);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,24,1671403256519078138,'2023-09-26T18:52:47','2023-09-26T18:52:47',36,1,'403-1',1);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,25,1671403256519078138,'2023-09-26T18:52:54','2023-09-26T18:52:54',37,1,'404-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,25,1671403256519078138,'2023-09-26T18:53:10','2023-09-26T18:53:02',38,2,'404-2',1671403256519078138);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,26,1671403256519078138,'2023-09-26T18:53:18','2023-09-26T18:53:18',39,1,'405-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,27,1671403256519078138,'2023-09-26T18:53:27','2023-09-26T18:53:27',40,1,'406-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,27,1671403256519078138,'2023-09-26T18:53:36','2023-09-26T18:53:36',41,2,'406-2');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,28,1671403256519078138,'2023-09-26T18:53:44','2023-09-26T18:53:44',42,1,'407-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,29,1671403256519078138,'2023-09-26T18:55:47','2023-09-26T18:55:47',43,1,'501-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,31,1671403256519078138,'2023-09-26T18:55:52','2023-09-26T18:55:52',44,1,'502-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,31,1671403256519078138,'2023-09-26T18:56:02','2023-09-26T18:56:02',45,2,'502-2');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,32,1671403256519078138,'2023-09-26T18:56:10','2023-09-26T18:56:10',46,1,'503-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,33,1671403256519078138,'2023-09-26T18:56:26','2023-09-26T18:56:26',48,1,'504-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,33,1671403256519078138,'2023-09-26T18:56:32','2023-09-26T18:56:32',49,2,'504-2');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,34,1671403256519078138,'2023-09-26T18:56:37','2023-09-26T18:56:37',50,1,'505-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,35,1671403256519078138,'2023-09-26T18:56:49','2023-09-26T18:56:49',52,1,'506-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,35,1671403256519078138,'2023-09-26T18:56:54','2023-09-26T18:56:54',53,2,'506-2');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,36,1671403256519078138,'2023-09-26T18:57','2023-09-26T18:57',54,1,'507-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,37,1671403256519078138,'2023-09-28T22:53:28','2023-09-26T19:05:11',55,1,'601-1',1671403256519078164);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,38,1671403256519078138,'2023-09-26T19:05:16','2023-09-26T19:05:16',56,1,'602-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,38,1671403256519078138,'2023-09-26T19:05:24','2023-09-26T19:05:24',57,2,'602-2');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,39,1671403256519078138,'2023-09-26T19:05:29','2023-09-26T19:05:29',58,1,'603-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,40,1671403256519078138,'2023-09-26T19:05:33','2023-09-26T19:05:33',59,1,'604-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,40,1671403256519078138,'2023-09-26T19:05:38','2023-09-26T19:05:38',60,2,'604-2');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,41,1671403256519078138,'2023-09-26T19:05:43','2023-09-26T19:05:43',61,1,'605-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,42,1671403256519078138,'2023-09-26T19:05:48','2023-09-26T19:05:48',62,1,'606-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,42,1671403256519078138,'2023-09-26T19:05:54','2023-09-26T19:05:54',63,2,'606-2');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,43,1671403256519078138,'2023-09-26T19:05:59','2023-09-26T19:05:59',64,1,'607-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,44,1671403256519078138,'2023-09-26T19:06:10','2023-09-26T19:06:10',65,1,'701-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,45,1671403256519078138,'2023-09-26T19:06:26','2023-09-26T19:06:14',66,1,'702-1',1671403256519078138);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,45,1671403256519078138,'2023-09-26T19:06:35','2023-09-26T19:06:35',68,2,'702-2');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,46,1671403256519078138,'2023-09-26T19:06:41','2023-09-26T19:06:41',69,1,'703-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,47,1671403256519078138,'2023-12-20T14:28:22','2023-09-26T19:06:46',70,1,'704-1',1671403256519078138);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,47,1671403256519078138,'2023-09-26T19:06:57','2023-09-26T19:06:52',71,2,'704-2',1671403256519078138);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,48,1671403256519078138,'2023-09-26T19:07:04','2023-09-26T19:07:04',72,1,'705-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,49,1671403256519078138,'2023-09-26T19:07:10','2023-09-26T19:07:10',73,1,'706-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,49,1671403256519078138,'2023-09-26T19:07:19','2023-09-26T19:07:14',74,2,'706-2',1671403256519078138);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,50,1671403256519078138,'2023-09-26T19:07:25','2023-09-26T19:07:25',75,1,'707-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,51,1671403256519078138,'2023-09-26T19:07:41','2023-09-26T19:07:41',76,1,'801-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,53,1671403256519078138,'2023-09-26T19:07:46','2023-09-26T19:07:46',77,1,'803-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,55,1671403256519078138,'2023-09-26T19:07:51','2023-09-26T19:07:51',78,1,'805-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,57,1671403256519078138,'2023-09-26T19:07:56','2023-09-26T19:07:56',79,1,'807-1',1);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,52,1671403256519078138,'2023-09-26T19:08:04','2023-09-26T19:08:04',80,1,'802-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,52,1671403256519078138,'2023-09-26T19:08:09','2023-09-26T19:08:09',81,2,'801-2');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,54,1671403256519078138,'2023-09-26T19:08:15','2023-09-26T19:08:15',82,1,'804-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,54,1671403256519078138,'2023-09-26T19:08:22','2023-09-26T19:08:22',83,2,'804-2');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,56,1671403256519078138,'2023-09-26T19:08:28','2023-09-26T19:08:28',84,1,'806-1');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,56,1671403256519078138,'2023-09-26T19:08:35','2023-09-26T19:08:35',85,2,'806-2',1);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,1,1671403256519078138,'2025-04-20T17:13:18','2023-12-21T11:45:09',170,2,'101-2',1);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,3,1671403256519078138,'2023-12-23T16:22:03','2023-12-23T16:12:34',171,1,'103-2',1671403256519078138);
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,74,1671403256519078138,'2023-12-26T19:32:07','2023-12-26T19:32:07',177,1,'1011');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`) VALUES (0,74,1671403256519078138,'2023-12-26T19:32:15','2023-12-26T19:32:15',178,1,'101');
INSERT INTO `bed`(`bed_status`,`room_id`,`create_by`,`update_time`,`create_time`,`id`,`sort`,`bed_number`,`update_by`) VALUES (0,7,1,'2026-03-17T10:30:44','2026-03-09T15:34:44',200,1,'107-2',1);

####################
##  elder
####################
DROP TABLE IF EXISTS `elder`;

####################
##  table elder ddl
####################
CREATE TABLE `elder` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '名称',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '头像',
  `id_card_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '身份证号',
  `sex` int DEFAULT NULL COMMENT '性别（0:女  1:男）',
  `status` int NOT NULL DEFAULT '1' COMMENT '状态（0:禁用，1:已入住 2:请假 3:已退住）',
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '手机号',
  `birthday` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '出生日期',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '家庭住址',
  `id_card_national_emblem_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '身份证国徽面',
  `id_card_portrait_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '身份证人像面',
  `bed_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '床位编号',
  `bed_id` bigint DEFAULT NULL COMMENT '床位id',
  `nation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '民族',
  `education_level` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '文化程度',
  `social_security_card` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '社保卡号',
  `living_situation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '居住情况',
  `religious_belief` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '宗教信仰',
  `economic_source` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '经济来源',
  `marital_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '婚姻状况',
  `medical_payment_method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '医疗费用支付方式',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint DEFAULT NULL COMMENT '创建人id',
  `update_by` bigint DEFAULT NULL COMMENT '更新人id',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  `core_suggestion` varchar(50) DEFAULT NULL COMMENT '核心建议',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name_id_card_no` (`name`,`id_card_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='老人表';

####################
##  elder data
####################

####################
##  elder data
####################

####################
##  floor
####################
DROP TABLE IF EXISTS `floor`;

####################
##  table floor ddl
####################
CREATE TABLE `floor` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `code` bigint DEFAULT NULL COMMENT '编号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint DEFAULT NULL COMMENT '创建人id',
  `update_by` bigint DEFAULT NULL COMMENT '更新人id',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=426 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='楼层表';

####################
##  floor data
####################

####################
##  floor data
####################
INSERT INTO `floor`(`create_by`,`update_time`,`code`,`create_time`,`name`,`id`,`update_by`) VALUES (1671403256519078153,'2026-03-21T13:11:36',1,'2023-09-26T16:10:27','1楼',1,1);
INSERT INTO `floor`(`create_by`,`update_time`,`code`,`create_time`,`name`,`id`) VALUES (1671403256519078138,'2023-09-26T17:37:20',2,'2023-09-26T17:37:20','2楼',2);
INSERT INTO `floor`(`create_by`,`update_time`,`code`,`create_time`,`name`,`id`) VALUES (1671403256519078138,'2023-09-26T17:37:26',3,'2023-09-26T17:37:26','3楼',3);
INSERT INTO `floor`(`create_by`,`update_time`,`code`,`create_time`,`name`,`id`) VALUES (1671403256519078138,'2023-09-26T17:37:32',4,'2023-09-26T17:37:32','4楼',4);
INSERT INTO `floor`(`create_by`,`update_time`,`code`,`create_time`,`name`,`id`) VALUES (1671403256519078138,'2023-09-26T17:37:38',5,'2023-09-26T17:37:38','5楼',5);
INSERT INTO `floor`(`create_by`,`update_time`,`code`,`create_time`,`name`,`id`,`update_by`) VALUES (1671403256519078138,'2023-09-26T17:37:59',6,'2023-09-26T17:37:42','6楼',6,1671403256519078138);
INSERT INTO `floor`(`create_by`,`update_time`,`code`,`create_time`,`name`,`id`,`update_by`) VALUES (1671403256519078138,'2023-09-26T17:37:52',7,'2023-09-26T17:37:47','7楼',7,1671403256519078138);
INSERT INTO `floor`(`create_by`,`update_time`,`code`,`create_time`,`name`,`id`) VALUES (1671403256519078138,'2023-09-26T17:38:09',8,'2023-09-26T17:38:09','8楼',8);
INSERT INTO `floor`(`create_by`,`update_time`,`code`,`create_time`,`name`,`id`) VALUES (1671403256519078138,'2023-12-18T14:53:50',8,'2023-12-18T14:53:50','9楼',391);
INSERT INTO `floor`(`create_by`,`update_time`,`code`,`create_time`,`name`,`id`,`update_by`) VALUES (1671403256519078138,'2023-12-27T10:15:34',9,'2023-12-26T19:29:54','10楼',401,1671403256519078138);

####################
##  gen_table
####################
DROP TABLE IF EXISTS `gen_table`;

####################
##  table gen_table ddl
####################
CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表';

####################
##  gen_table data
####################

####################
##  gen_table data
####################

####################
##  gen_table_column
####################
DROP TABLE IF EXISTS `gen_table_column`;

####################
##  table gen_table_column ddl
####################
CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=672 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表字段';

####################
##  gen_table_column data
####################

####################
##  gen_table_column data
####################

####################
##  nursing_level
####################
DROP TABLE IF EXISTS `nursing_level`;

####################
##  table nursing_level ddl
####################
CREATE TABLE `nursing_level` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '等级名称',
  `lplan_id` int NOT NULL COMMENT '护理计划ID',
  `fee` decimal(10,2) NOT NULL COMMENT '护理费用',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态（0：禁用，1：启用）',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '等级说明',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint DEFAULT NULL COMMENT '创建人id',
  `update_by` bigint DEFAULT NULL COMMENT '更新人id',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='护理等级表';

####################
##  nursing_level data
####################

####################
##  nursing_level data
####################
INSERT INTO `nursing_level`(`update_time`,`create_time`,`fee`,`name`,`id`,`lplan_id`,`status`) VALUES ('2026-03-03T16:30:04','2026-03-03T16:30:04','1500.00','二级护理等级',80,138,true);
INSERT INTO `nursing_level`(`update_time`,`create_time`,`fee`,`name`,`id`,`lplan_id`,`status`) VALUES ('2026-03-03T16:30:17','2026-03-03T16:30:17','1200.00','三级护理等级',81,139,true);
INSERT INTO `nursing_level`(`update_time`,`create_time`,`fee`,`name`,`description`,`id`,`lplan_id`,`status`) VALUES ('2026-03-13T17:54:25','2026-03-03T16:30:30','1000.00','四级护理等级','无',82,140,true);
INSERT INTO `nursing_level`(`update_time`,`create_time`,`fee`,`name`,`description`,`id`,`lplan_id`,`status`) VALUES ('2026-03-09T16:37:08','2026-03-09T16:37:08','3010.00','顶级护理','最顶级的护理等级',83,141,true);

####################
##  nursing_plan
####################
DROP TABLE IF EXISTS `nursing_plan`;

####################
##  table nursing_plan ddl
####################
CREATE TABLE `nursing_plan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `sort_no` int DEFAULT NULL COMMENT '排序号',
  `plan_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '名称',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '状态 0禁用 1启用',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint DEFAULT NULL COMMENT '创建人id',
  `update_by` bigint DEFAULT NULL COMMENT '更新人id',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `plan_name` (`plan_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='护理计划表';

####################
##  nursing_plan data
####################

####################
##  nursing_plan data
####################
INSERT INTO `nursing_plan`(`sort_no`,`create_time`,`id`,`plan_name`,`status`) VALUES (1,'2026-03-03T16:27:23',138,'二级护理计划',1);
INSERT INTO `nursing_plan`(`sort_no`,`create_time`,`id`,`plan_name`,`status`) VALUES (1,'2026-03-03T16:27:57',139,'三级护理计划',1);
INSERT INTO `nursing_plan`(`sort_no`,`create_time`,`id`,`plan_name`,`status`) VALUES (1,'2026-03-03T16:29:13',140,'四级护理计划',1);
INSERT INTO `nursing_plan`(`sort_no`,`create_time`,`id`,`plan_name`,`status`) VALUES (1,'2026-03-09T16:23:53',141,'特级护理计划',1);
INSERT INTO `nursing_plan`(`sort_no`,`create_time`,`id`,`plan_name`,`status`) VALUES (2,'2026-03-09T16:43:41',150,'紧急护理计划',1);

####################
##  nursing_project
####################
DROP TABLE IF EXISTS `nursing_project`;

####################
##  table nursing_project ddl
####################
CREATE TABLE `nursing_project` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '名称',
  `order_no` int DEFAULT NULL COMMENT '排序号',
  `unit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '单位',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '图片',
  `nursing_requirement` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '护理要求',
  `status` int NOT NULL DEFAULT '1' COMMENT '状态（0：禁用，1：启用）',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '更新人',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='护理项目表';

####################
##  nursing_project data
####################

####################
##  nursing_project data
####################
INSERT INTO `nursing_project`(`order_no`,`image`,`create_time`,`create_by`,`unit`,`update_time`,`price`,`name`,`id`,`nursing_requirement`,`update_by`,`status`) VALUES (1,'https://itheim.oss-cn-beijing.aliyuncs.com/b6631465-1684-41fe-8ccd-0b027cb91e90.png','2024-08-29T16:51:50','1','次','2026-03-21T13:04:21','10.00','修剪指甲',1,'根据老人身体状况，定期修剪手指甲、脚趾甲，避免过长、开裂或划伤皮肤。修剪时动作轻柔，仔细打磨边缘，兼顾舒适度与安全性，预防倒刺、嵌甲及感染。去','1',1);
INSERT INTO `nursing_project`(`order_no`,`image`,`create_time`,`create_by`,`unit`,`update_time`,`price`,`name`,`id`,`nursing_requirement`,`update_by`,`status`) VALUES (1,'https://itheim.oss-cn-beijing.aliyuncs.com/41fc58d3-0627-4fa9-8459-906599aa1efa.png','2024-08-29T16:52:27','1','件','2025-04-27T15:09','5.00','衣物清洁',2,'定时收集、分类清洗老人衣物、床单等织物，按材质选择合适洗涤方式。洗净后烘干、熨烫、整理归位，保持衣物干净、整洁、无异味，提升老人穿着舒适度。','1',1);
INSERT INTO `nursing_project`(`order_no`,`image`,`create_time`,`create_by`,`unit`,`update_time`,`price`,`name`,`id`,`nursing_requirement`,`update_by`,`status`) VALUES (1,'https://itheim.oss-cn-beijing.aliyuncs.com/e611fcc9-dc45-49ac-abeb-f2ea99c2cffc.png','2024-08-29T16:52:52','1','次','2024-08-29T08:51:46','15.00','整理床铺',3,'每日定时整理床铺，更换枕套、床单、被罩，保持床单位平整、干燥、无褶皱。及时清理床上杂物，为老人营造整洁、舒适、卫生的睡眠与休息环境。','1',1);
INSERT INTO `nursing_project`(`order_no`,`image`,`create_time`,`create_by`,`unit`,`update_time`,`price`,`name`,`id`,`nursing_requirement`,`update_by`,`status`) VALUES (1,'https://itheim.oss-cn-beijing.aliyuncs.com/d91ba642-88e5-4c3d-8e50-a681ae3300e5.png','2024-08-29T16:53:29','1','餐','2024-08-29T08:52:24','15.00','助餐',4,'根据老人饮食需求与身体状况，协助进食、饮水。对行动不便、吞咽困难者，提供喂食、喂水服务，注意温度、速度与营养搭配，确保老人安全、顺利进餐。','1',1);
INSERT INTO `nursing_project`(`order_no`,`image`,`create_time`,`create_by`,`unit`,`update_time`,`price`,`name`,`id`,`nursing_requirement`,`update_by`,`status`) VALUES (1,'https://itheim.oss-cn-beijing.aliyuncs.com/125df948-7646-4fce-b322-1db0a84856e7.png','2024-08-29T16:53:51','1','次','2024-08-29T08:52:46','40.00','助浴',5,'协助老人完成全身清洁洗浴，做好防滑、保暖与安全防护。根据老人自理能力，全程陪护，控制水温与时间，避免滑倒、受凉，清洁后及时擦干穿衣。','1',1);
INSERT INTO `nursing_project`(`order_no`,`image`,`create_time`,`create_by`,`unit`,`update_time`,`price`,`name`,`id`,`nursing_requirement`,`update_by`,`status`) VALUES (1,'https://itheim.oss-cn-beijing.aliyuncs.com/a38883fc-870b-40ff-a256-54ce2fc17af9.png','2024-08-29T16:54:22','1','次','2024-08-29T08:53:17','20.00','洗头',6,'定期为老人清洗头发，调节合适水温，做好头部与颈部保暖。冲洗干净后及时擦干、吹干，预防感冒，保持头发清洁清爽，提升老人舒适感。','1',1);
INSERT INTO `nursing_project`(`order_no`,`image`,`create_time`,`create_by`,`unit`,`update_time`,`price`,`name`,`id`,`nursing_requirement`,`update_by`,`status`) VALUES (1,'https://itheim.oss-cn-beijing.aliyuncs.com/95b0ad37-5d61-4ec2-a961-d6fb691a18f0.png','2024-08-29T16:54:45','1','次','2024-08-29T08:53:40','15.00','洗脸',7,'每日早晚协助老人清洁面部，使用温和用品，轻柔擦拭眼、耳、鼻、面部及颈部。保持面部干净清爽，促进血液循环，提升日常舒适度。','1',1);
INSERT INTO `nursing_project`(`order_no`,`image`,`create_time`,`create_by`,`unit`,`update_time`,`price`,`name`,`id`,`nursing_requirement`,`update_by`,`status`) VALUES (1,'https://itheim.oss-cn-beijing.aliyuncs.com/8437eb2d-3ea5-4eee-9d78-017bc8b3a66e.png','2024-08-29T16:55:08','1','次','2024-08-29T08:54:03','20.00','洗脚',8,'每日为老人清洁双脚，调节适宜水温，浸泡、清洗、擦干双脚及趾缝。促进足部血液循环，缓解疲劳，预防脚气、干裂，提升睡眠与生活质量。','1',1);
INSERT INTO `nursing_project`(`order_no`,`image`,`create_time`,`create_by`,`unit`,`update_time`,`price`,`name`,`id`,`nursing_requirement`,`update_by`,`status`) VALUES (2,'https://hm-xhzb.oss-cn-beijing.aliyuncs.com/476920d1-1dbd-4205-a1b6-95568881477e.png','2026-03-09T15:59:52','1','元','2026-03-28T16:52:37','90.00','全身洗浴',20,'北京市海淀区西三旗街北京市海淀区西三旗街北京市海淀区西三旗街北京市海淀区西三旗街北京市','1',1);
INSERT INTO `nursing_project`(`order_no`,`image`,`create_time`,`create_by`,`unit`,`update_time`,`price`,`name`,`id`,`nursing_requirement`,`status`) VALUES (1,'https://hm-xhzb.oss-cn-beijing.aliyuncs.com/12b06336-24df-416b-a0ea-eff8f53e6fc1.png','2026-03-28T17:07:01','1','次','2026-03-28T09:07:01','25.00','心理咨询',31,'心理咨询心理咨询',1);

####################
##  nursing_project_plan
####################
DROP TABLE IF EXISTS `nursing_project_plan`;

####################
##  table nursing_project_plan ddl
####################
CREATE TABLE `nursing_project_plan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `plan_id` int NOT NULL COMMENT '计划id',
  `project_id` int NOT NULL COMMENT '项目id',
  `execute_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '计划执行时间',
  `execute_cycle` int NOT NULL COMMENT '执行周期 0 天 1 周 2月',
  `execute_frequency` int NOT NULL COMMENT '执行频次',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint DEFAULT NULL COMMENT '创建人id',
  `update_by` bigint DEFAULT NULL COMMENT '更新人id',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1859 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='护理计划和项目关联表';

####################
##  nursing_project_plan data
####################

####################
##  nursing_project_plan data
####################
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2024-08-19T11:28:43',87,'19:16:49',1,7,1736,133);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2024-08-19T11:28:43',85,'19:28:34',1,1,1737,133);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2024-08-19T11:36:10',85,'19:28:45',0,1,1738,134);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2024-08-29T08:55:34',1,'16:55:58',2,1,1739,135);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2024-08-29T08:55:34',5,'16:56:09',0,1,1740,135);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2024-08-29T08:55:34',4,'08:00:00',0,1,1741,135);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2025-04-18T10:28:47',5,'18:28:23',1,1,1742,136);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2025-04-18T10:28:47',6,'18:28:35',1,2,1743,136);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2025-04-18T10:28:47',7,'18:28:43',0,1,1744,136);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-03T16:28:33',31,'16:26:36',2,2,1755,138);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-03T16:28:33',8,'16:27:05',1,3,1756,138);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-03T16:28:33',2,'16:27:14',1,2,1757,138);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-03T16:28:33',6,'16:28:20',1,1,1758,138);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-03T16:28:57',1,'16:27:23',2,2,1759,139);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-03T16:28:57',3,'16:27:46',1,2,1760,139);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-03T16:28:57',5,'16:28:49',1,1,1761,139);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-03T16:29:27',1,'16:28:57',2,2,1763,140);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-03T16:29:27',2,'16:29:23',1,1,1764,140);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-09T16:43:40',1,'16:30:19',1,1,1767,150);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-09T16:43:40',6,'16:39:59',1,2,1768,150);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-09T16:44:47',3,'09:43:40',0,7,1769,152);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-11T18:09:03',1,'16:24:45',2,2,1782,137);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-11T18:09:03',2,'08:25:07',1,1,1783,137);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-11T18:09:03',4,'08:00:00',0,3,1784,137);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-11T18:09:03',5,'20:00:00',1,1,1785,137);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-11T18:09:03',8,'20:26:05',1,3,1786,137);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-12T11:38:18',2,'08:00',1,1,1788,161);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-12T11:39:42',2,'08:00:00',1,2,1789,162);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-12T17:10:33',3,'09:00',1,2,1817,166);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-12T17:10:33',31,'11:02',2,7,1818,166);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-12T17:10:33',20,'10:00',0,7,1819,166);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-12T17:10:33',4,'08:00',1,7,1820,166);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-12T19:21:17',2,'08:00',1,1,1834,168);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-13T09:16:58',2,'08:00',1,1,1835,169);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-13T09:16:58',3,'10:00',0,2,1836,169);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-13T09:16:58',6,'08:00',1,3,1837,169);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-13T09:22:39',2,'08:00',1,1,1838,170);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-13T09:22:39',3,'08:00',0,1,1839,170);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-13T10:52:18',20,'08:00',1,1,1840,172);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-13T10:52:18',3,'08:00',1,1,1841,172);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-13T10:52:18',4,'08:00',1,1,1842,172);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-13T10:52:18',5,'08:00',1,1,1843,172);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-13T10:52:18',6,'08:00',1,1,1844,172);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-13T10:52:18',31,'08:00',1,1,1845,172);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-13T10:52:18',7,'08:00',1,1,1846,172);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-13T10:52:18',8,'08:00',1,1,1847,172);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-13T10:52:18',2,'08:00',1,1,1848,172);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-13T17:48:01',3,'18:06:25',2,1,1853,158);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-13T17:48:01',2,'08:00:00',1,1,1854,158);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-13T21:21:36',2,'08:00',1,6,1855,174);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-13T21:21:36',3,'08:00',1,7,1856,174);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-21T13:04:54',4,'16:22:54',1,3,1857,141);
INSERT INTO `nursing_project_plan`(`create_time`,`project_id`,`execute_time`,`execute_cycle`,`execute_frequency`,`id`,`plan_id`) VALUES ('2026-03-21T13:04:54',5,'17:23:31',1,3,1858,141);

####################
##  room
####################
DROP TABLE IF EXISTS `room`;

####################
##  table room ddl
####################
CREATE TABLE `room` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '房间编号',
  `sort` int DEFAULT NULL COMMENT '排序号',
  `type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '房间类型名称',
  `floor_id` bigint DEFAULT NULL COMMENT '楼层id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '是否删除',
  `create_by` bigint DEFAULT NULL COMMENT '创建人id',
  `update_by` bigint DEFAULT NULL COMMENT '更新人id',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `code` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='房间表';

####################
##  room data
####################

####################
##  room data
####################
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`,`update_by`) VALUES (1671403256519078138,'豪华双人间','2025-04-18T18:32:41','101',false,'2023-09-26T17:38:25',1,1,1,1);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`,`update_by`) VALUES (1671403256519078138,'豪华双人间','2025-04-18T18:33:09','102',false,'2023-09-26T17:38:32',1,2,2,1);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`,`update_by`) VALUES (1671403256519078138,'豪华双人间','2025-04-18T18:33:21','103',false,'2023-09-26T17:38:41',1,3,3,1);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`,`update_by`) VALUES (1671403256519078138,'双人套房','2025-04-18T18:33:25','104',false,'2023-09-26T17:38:48',1,4,4,1);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`,`update_by`) VALUES (1671403256519078138,'单人套房','2025-04-18T18:33:31','105',false,'2023-09-26T17:38:55',1,5,5,1);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`,`update_by`) VALUES (1671403256519078138,'双人套房','2025-04-18T18:33:38','106',false,'2023-09-26T17:39:05',1,6,6,1);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`,`update_by`) VALUES (1671403256519078138,'单人套房','2025-04-18T18:33:47','107',false,'2023-09-26T17:39:13',1,7,7,1);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`,`update_by`) VALUES (1671403256519078138,'单人套房','2025-04-18T18:33:56','201',false,'2023-09-26T17:42:02',2,8,1,1);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`,`update_by`) VALUES (1671403256519078138,'豪华单人间','2025-04-18T18:34:06','202',false,'2023-09-26T17:42:08',2,9,2,1);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`,`update_by`) VALUES (1671403256519078138,'普通单人间','2025-04-18T18:34:11','203',false,'2023-09-26T17:42:15',2,10,3,1);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`,`update_by`) VALUES (1671403256519078138,'豪华双人间','2025-04-18T18:34:16','204',false,'2023-09-26T17:42:22',2,11,4,1);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'豪华单人间','2023-09-26T17:42:30','205',false,'2023-09-26T17:42:30',2,12,5);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'双人套房','2023-09-26T17:42:41','206',false,'2023-09-26T17:42:41',2,13,6);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`,`update_by`) VALUES (1671403256519078138,'单人套房','2025-04-18T18:34:30','207',false,'2023-09-26T17:42:48',2,14,7,1);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`,`update_by`) VALUES (1671403256519078138,'单人套房','2025-04-18T18:34:38','301',false,'2023-09-26T17:43:54',3,15,1,1);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`,`update_by`) VALUES (1671403256519078138,'豪华双人间','2025-04-18T18:34:43','302',false,'2023-09-26T17:44:01',3,16,2,1);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`,`update_by`) VALUES (1671403256519078138,'普通单人间','2025-04-18T18:34:48','303',false,'2023-09-26T17:44:09',3,17,3,1);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'豪华双人间','2023-09-26T17:44:17','304',false,'2023-09-26T17:44:17',3,18,4);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`,`update_by`) VALUES (1671403256519078138,'豪华单人间','2025-04-18T18:34:56','305',false,'2023-09-26T17:44:24',3,19,5,1);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`,`update_by`) VALUES (1671403256519078138,'双人套房','2025-04-18T18:34:59','306',false,'2023-09-26T17:44:33',3,20,6,1);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`,`update_by`) VALUES (1671403256519078138,'单人套房','2025-04-18T18:35:03','307',false,'2023-09-26T17:44:42',3,21,7,1);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`,`update_by`) VALUES (1671403256519078138,'单人套房','2025-04-18T18:35:11','401',false,'2023-09-26T18:51:10',4,22,1,1);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`,`update_by`) VALUES (1671403256519078138,'豪华双人间','2025-04-18T18:35:36','402',false,'2023-09-26T18:51:17',4,23,2,1);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'普通单人间','2023-09-26T18:51:23','403',false,'2023-09-26T18:51:23',4,24,3);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'豪华双人间','2023-09-26T18:51:32','404',false,'2023-09-26T18:51:32',4,25,4);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'豪华单人间','2023-09-26T18:51:42','405',false,'2023-09-26T18:51:42',4,26,5);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'双人套房','2023-09-26T18:51:54','406',false,'2023-09-26T18:51:54',4,27,6);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'单人套房','2023-09-26T18:52:03','407',false,'2023-09-26T18:52:03',4,28,7);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'特护房','2023-09-26T18:53:54','501',false,'2023-09-26T18:53:54',5,29,1);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'普通双人间','2023-09-26T18:54:05','502',false,'2023-09-26T18:54:05',5,31,2);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'普通单人间','2023-09-26T18:54:12','503',false,'2023-09-26T18:54:12',5,32,3);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'豪华双人间','2023-09-26T18:54:20','504',false,'2023-09-26T18:54:20',5,33,4);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'豪华单人间','2023-09-26T18:54:28','505',false,'2023-09-26T18:54:28',5,34,5);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'双人套房','2023-09-26T18:54:37','506',false,'2023-09-26T18:54:37',5,35,6);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'单人套房','2023-09-26T18:54:47','507',false,'2023-09-26T18:54:47',5,36,7);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'特护房','2023-09-26T18:57:14','601',false,'2023-09-26T18:57:14',6,37,1);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'普通双人间','2023-09-26T18:57:20','602',false,'2023-09-26T18:57:20',6,38,2);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'普通单人间','2023-09-26T18:57:28','603',false,'2023-09-26T18:57:28',6,39,3);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'豪华双人间','2023-09-26T18:57:36','604',false,'2023-09-26T18:57:36',6,40,4);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'豪华单人间','2023-09-26T19:01:36','605',false,'2023-09-26T19:01:36',6,41,5);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'双人套房','2023-09-26T19:01:45','606',false,'2023-09-26T19:01:45',6,42,6);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'单人套房','2023-09-26T19:01:54','607',false,'2023-09-26T19:01:54',6,43,7);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'特护房','2023-09-26T19:02:13','701',false,'2023-09-26T19:02:13',7,44,1);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'普通双人间','2023-09-26T19:02:20','702',false,'2023-09-26T19:02:20',7,45,2);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'普通单人间','2023-09-26T19:02:28','703',false,'2023-09-26T19:02:28',7,46,3);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'豪华双人间','2023-09-26T19:02:49','704',false,'2023-09-26T19:02:49',7,47,4);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'豪华单人间','2023-09-26T19:03','705',false,'2023-09-26T19:03',7,48,5);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'双人套房','2023-09-26T19:03:07','706',false,'2023-09-26T19:03:07',7,49,6);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'单人套房','2023-09-26T19:03:15','707',false,'2023-09-26T19:03:15',7,50,7);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'特护房','2023-09-26T19:03:49','801',false,'2023-09-26T19:03:49',8,51,1);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'普通双人间','2023-09-26T19:03:57','802',false,'2023-09-26T19:03:57',8,52,2);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'普通单人间','2023-09-26T19:04:04','803',false,'2023-09-26T19:04:04',8,53,3);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'豪华双人间','2023-09-26T19:04:13','804',false,'2023-09-26T19:04:13',8,54,4);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'豪华单人间','2023-09-26T19:04:45','805',false,'2023-09-26T19:04:45',8,55,5);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'双人套房','2023-09-26T19:04:52','806',false,'2023-09-26T19:04:52',8,56,6);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`) VALUES (1671403256519078138,'单人套房','2023-09-26T19:05','807',false,'2023-09-26T19:05',8,57,7);
INSERT INTO `room`(`create_by`,`type_name`,`update_time`,`code`,`is_deleted`,`create_time`,`floor_id`,`id`,`sort`,`update_by`) VALUES (1671403256519078138,'普通单人间','2026-03-21T13:10:36','1001',false,'2023-12-26T19:31:43',401,74,1,1);

####################
##  room_type
####################
DROP TABLE IF EXISTS `room_type`;

####################
##  table room_type ddl
####################
CREATE TABLE `room_type` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '房型名称',
  `bed_count` int NOT NULL DEFAULT '0' COMMENT '床位数量',
  `price` decimal(10,2) NOT NULL COMMENT '床位费用',
  `introduction` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '介绍',
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '照片',
  `status` tinyint NOT NULL COMMENT '状态，0：禁用，1：启用',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` bigint DEFAULT NULL COMMENT '创建人id',
  `update_by` bigint DEFAULT NULL COMMENT '更新人id',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='房型表';

####################
##  room_type data
####################

####################
##  room_type data
####################
INSERT INTO `room_type`(`create_by`,`update_time`,`create_time`,`price`,`name`,`photo`,`id`,`update_by`,`bed_count`,`introduction`,`status`) VALUES (1671403256519078153,'2024-05-20T11:00:19','2023-09-26T15:57:50','4000.00','单人套房','https://yjy-slwl-oss.oss-cn-hangzhou.aliyuncs.com/e2f1031b-e23e-4379-95d4-ce8fe382f58f.png',1,1,0,'宽敞舒适的套房，配备独立卫生间和基本生活设施，满足独自居住的需求，提供私密性和舒适度',1);
INSERT INTO `room_type`(`create_by`,`update_time`,`create_time`,`price`,`name`,`photo`,`id`,`bed_count`,`introduction`,`status`) VALUES (1671403256519078153,'2023-09-26T15:58:51','2023-09-26T15:58:51','6000.00','双人套房','https://yjy-slwl-oss.oss-cn-hangzhou.aliyuncs.com/ff84c185-2e28-431c-951d-d004cc2d5bdc.png',2,0,'适合夫妻或朋友两人居住的套房，设有独立卫生间和基本生活设施，提供共享空间和私密性',1);
INSERT INTO `room_type`(`create_by`,`update_time`,`create_time`,`price`,`name`,`photo`,`id`,`update_by`,`bed_count`,`introduction`,`status`) VALUES (1671403256519078153,'2026-03-10T10:56:03','2023-09-26T15:59:33','3000.00','豪华单人间','https://yjy-slwl-oss.oss-cn-hangzhou.aliyuncs.com/d803832c-5b93-4cae-ba95-aeb52ab0c5e0.png',3,1,0,'豪华装修的单人房间，提供舒适的居住环境和高品质的服务，设计精美，配备独立卫生间和必需设施',1);
INSERT INTO `room_type`(`create_by`,`update_time`,`create_time`,`price`,`name`,`photo`,`id`,`update_by`,`bed_count`,`introduction`,`status`) VALUES (1671403256519078153,'2026-03-10T10:56:05','2023-09-26T16:00:03','4500.00','豪华双人间','https://yjy-slwl-oss.oss-cn-hangzhou.aliyuncs.com/c3522da7-4c5c-48d2-94f9-9f0b95a048d2.png',4,1,0,'精心装修的双人房间，提供舒适和豪华的居住环境，配备独立卫生间和高品质的家具',1);
INSERT INTO `room_type`(`create_by`,`update_time`,`create_time`,`price`,`name`,`photo`,`id`,`update_by`,`bed_count`,`introduction`,`status`) VALUES (1671403256519078153,'2026-03-12T14:23:50','2023-09-26T16:00:27','2000.00','普通单人间','https://yjy-slwl-oss.oss-cn-hangzhou.aliyuncs.com/1a330b1c-b0a1-463d-8d9a-221ef17c314f.png',5,1,0,'简洁实用的单人房间，提供基本的居住设施和舒适度，适合独自居住的老年人，提供相对经济实惠的居住选择',1);
INSERT INTO `room_type`(`create_by`,`update_time`,`create_time`,`price`,`name`,`photo`,`remark`,`id`,`update_by`,`bed_count`,`introduction`,`status`) VALUES (1,'2024-08-22T19:06:41','2024-08-22T19:06:33','3500.00','测试新增','https://itheim.oss-cn-beijing.aliyuncs.com/8fe7b29d-fce0-4201-becb-0586e8284a9d.png','是否',115,1,10,'水电费方式',1);
INSERT INTO `room_type`(`create_by`,`update_time`,`create_time`,`price`,`name`,`photo`,`remark`,`id`,`update_by`,`bed_count`,`introduction`,`status`) VALUES (1,'2024-09-12T22:55:10','2024-09-12T22:52:36','1500.00','标准双人间','https://itheim.oss-cn-beijing.aliyuncs.com/91c4a814-efd5-4093-a5ac-963b41047019.png,https://hm-xhzb.oss-cn-beijing.aliyuncs.com/5535f726-5ae2-413a-8548-0825459963eb.png','1231234565432',116,1,10,'123',1);
INSERT INTO `room_type`(`create_by`,`update_time`,`create_time`,`price`,`name`,`photo`,`remark`,`id`,`update_by`,`bed_count`,`introduction`,`status`) VALUES (1,'2026-03-21T13:11:57','2026-03-09T15:20:42','100000.00','豪华总统房','https://hm-xhzb.oss-cn-beijing.aliyuncs.com/0054a549-63d2-4624-9e40-f530bb631d1f.png','给你一个优雅舒适的家',117,1,3,'给你一个优雅舒适的家',1);
INSERT INTO `room_type`(`create_by`,`update_time`,`create_time`,`price`,`name`,`photo`,`id`,`update_by`,`bed_count`,`introduction`,`status`) VALUES (1,'2026-03-09T15:57:55','2026-03-09T15:57:43','10.00','大车店','https://hm-xhzb.oss-cn-beijing.aliyuncs.com/554fdf86-803a-42b6-b29d-3678eb85004a.jpeg',118,1,100,'群居房',1);
INSERT INTO `room_type`(`create_by`,`update_time`,`create_time`,`price`,`name`,`remark`,`id`,`update_by`,`bed_count`,`introduction`,`status`) VALUES (1,'2026-03-28T16:50:17','2026-03-11T17:14:52','1.00','单人套房3','阿斯钢',120,1,100,'桑',1);

####################
##  sys_config
####################
DROP TABLE IF EXISTS `sys_config`;

####################
##  table sys_config ddl
####################
CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='参数配置表';

####################
##  sys_config data
####################

####################
##  sys_config data
####################
INSERT INTO `sys_config`(`config_name`,`create_by`,`config_value`,`create_time`,`config_id`,`config_key`,`remark`,`config_type`,`update_by`) VALUES ('主框架页-默认皮肤样式名称','admin','skin-blue','2024-08-14T02:48:24',1,'sys.index.skinName','蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow','Y','');
INSERT INTO `sys_config`(`config_name`,`create_by`,`config_value`,`create_time`,`config_id`,`config_key`,`remark`,`config_type`,`update_by`) VALUES ('用户管理-账号初始密码','admin','123456','2024-08-14T02:48:24',2,'sys.user.initPassword','初始化密码 123456','Y','');
INSERT INTO `sys_config`(`config_name`,`create_by`,`config_value`,`create_time`,`config_id`,`config_key`,`remark`,`config_type`,`update_by`) VALUES ('主框架页-侧边栏主题','admin','theme-dark','2024-08-14T02:48:24',3,'sys.index.sideTheme','深色主题theme-dark，浅色主题theme-light','Y','');
INSERT INTO `sys_config`(`config_name`,`create_by`,`config_value`,`create_time`,`config_id`,`config_key`,`remark`,`config_type`,`update_by`) VALUES ('账号自助-验证码开关','admin','true','2024-08-14T02:48:24',4,'sys.account.captchaEnabled','是否开启验证码功能（true开启，false关闭）','Y','');
INSERT INTO `sys_config`(`config_name`,`create_by`,`config_value`,`create_time`,`config_id`,`config_key`,`remark`,`config_type`,`update_by`) VALUES ('账号自助-是否开启用户注册功能','admin','false','2024-08-14T02:48:24',5,'sys.account.registerUser','是否开启注册用户功能（true开启，false关闭）','Y','');
INSERT INTO `sys_config`(`config_name`,`create_by`,`config_value`,`create_time`,`config_id`,`config_key`,`remark`,`config_type`,`update_by`) VALUES ('用户登录-黑名单列表','admin','','2024-08-14T02:48:24',6,'sys.login.blackIPList','设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）','Y','');

####################
##  sys_dept
####################
DROP TABLE IF EXISTS `sys_dept`;

####################
##  table sys_dept ddl
####################
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='部门表';

####################
##  sys_dept data
####################

####################
##  sys_dept data
####################
INSERT INTO `sys_dept`(`leader`,`del_flag`,`create_time`,`dept_name`,`create_by`,`phone`,`parent_id`,`order_num`,`dept_id`,`ancestors`,`update_by`,`email`,`status`) VALUES ('若依','0','2024-08-14T02:48:23','智慧养老院','admin','15888888888',0,0,100,'0','','ry@qq.com','0');
INSERT INTO `sys_dept`(`leader`,`del_flag`,`create_time`,`dept_name`,`create_by`,`update_time`,`phone`,`parent_id`,`order_num`,`dept_id`,`ancestors`,`update_by`,`email`,`status`) VALUES ('若依','0','2024-08-14T02:48:23','高层办公室','admin','2025-05-04T04:10:38','15888888888',100,1,101,'0,100','admin','ry@qq.com','0');
INSERT INTO `sys_dept`(`leader`,`del_flag`,`create_time`,`dept_name`,`create_by`,`update_time`,`phone`,`parent_id`,`order_num`,`dept_id`,`ancestors`,`update_by`,`email`,`status`) VALUES ('若依','0','2024-08-14T02:48:23','财务部','admin','2025-05-04T04:11:21','15888888888',100,2,102,'0,100','admin','ry@qq.com','0');
INSERT INTO `sys_dept`(`leader`,`del_flag`,`create_time`,`dept_name`,`create_by`,`update_time`,`phone`,`parent_id`,`order_num`,`dept_id`,`ancestors`,`update_by`,`email`,`status`) VALUES ('若依','0','2024-08-14T02:48:23','院长办公室','admin','2025-05-04T04:11:06','15888888888',101,1,103,'0,100,101','admin','ry@qq.com','0');
INSERT INTO `sys_dept`(`leader`,`del_flag`,`create_time`,`dept_name`,`create_by`,`phone`,`parent_id`,`order_num`,`dept_id`,`ancestors`,`update_by`,`email`,`status`) VALUES ('若依','2','2024-08-14T02:48:23','市场部门','admin','15888888888',101,2,104,'0,100,101','','ry@qq.com','0');
INSERT INTO `sys_dept`(`leader`,`del_flag`,`create_time`,`dept_name`,`create_by`,`phone`,`parent_id`,`order_num`,`dept_id`,`ancestors`,`update_by`,`email`,`status`) VALUES ('若依','2','2024-08-14T02:48:23','测试部门','admin','15888888888',101,3,105,'0,100,101','','ry@qq.com','0');
INSERT INTO `sys_dept`(`leader`,`del_flag`,`create_time`,`dept_name`,`create_by`,`phone`,`parent_id`,`order_num`,`dept_id`,`ancestors`,`update_by`,`email`,`status`) VALUES ('若依','2','2024-08-14T02:48:23','财务部门','admin','15888888888',101,4,106,'0,100,101','','ry@qq.com','0');
INSERT INTO `sys_dept`(`leader`,`del_flag`,`create_time`,`dept_name`,`create_by`,`phone`,`parent_id`,`order_num`,`dept_id`,`ancestors`,`update_by`,`email`,`status`) VALUES ('若依','2','2024-08-14T02:48:23','运维部门','admin','15888888888',101,5,107,'0,100,101','','ry@qq.com','0');
INSERT INTO `sys_dept`(`leader`,`del_flag`,`create_time`,`dept_name`,`create_by`,`phone`,`parent_id`,`order_num`,`dept_id`,`ancestors`,`update_by`,`email`,`status`) VALUES ('若依','2','2024-08-14T02:48:23','市场部门','admin','15888888888',102,1,108,'0,100,102','','ry@qq.com','0');
INSERT INTO `sys_dept`(`leader`,`del_flag`,`create_time`,`dept_name`,`create_by`,`phone`,`parent_id`,`order_num`,`dept_id`,`ancestors`,`update_by`,`email`,`status`) VALUES ('若依','2','2024-08-14T02:48:23','财务部门','admin','15888888888',102,2,109,'0,100,102','','ry@qq.com','0');
INSERT INTO `sys_dept`(`del_flag`,`create_time`,`dept_name`,`create_by`,`parent_id`,`order_num`,`dept_id`,`ancestors`,`update_by`,`status`) VALUES ('0','2025-05-04T04:11:40','行政部','admin',100,3,200,'0,100','','0');
INSERT INTO `sys_dept`(`del_flag`,`create_time`,`dept_name`,`create_by`,`parent_id`,`order_num`,`dept_id`,`ancestors`,`update_by`,`status`) VALUES ('0','2025-05-04T04:11:59','护理部','admin',100,4,201,'0,100','','0');
INSERT INTO `sys_dept`(`del_flag`,`create_time`,`dept_name`,`create_by`,`parent_id`,`order_num`,`dept_id`,`ancestors`,`update_by`,`status`) VALUES ('0','2025-05-04T04:12:07','后勤部','admin',100,5,202,'0,100','','0');
INSERT INTO `sys_dept`(`del_flag`,`create_time`,`dept_name`,`create_by`,`parent_id`,`order_num`,`dept_id`,`ancestors`,`update_by`,`status`) VALUES ('0','2025-05-04T04:12:16','销售部','admin',100,6,203,'0,100','','0');

####################
##  sys_dict_data
####################
DROP TABLE IF EXISTS `sys_dict_data`;

####################
##  table sys_dict_data ddl
####################
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='字典数据表';

####################
##  sys_dict_data data
####################

####################
##  sys_dict_data data
####################
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_user_sex','2024-08-14T02:48:24',1,'性别男','Y',1,'男','','admin','0','','','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_user_sex','2024-08-14T02:48:24',2,'性别女','N',2,'女','','admin','1','','','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_user_sex','2024-08-14T02:48:24',3,'性别未知','N',3,'未知','','admin','2','','','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_show_hide','2024-08-14T02:48:24',1,'显示菜单','Y',4,'显示','','admin','0','','primary','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_show_hide','2024-08-14T02:48:24',2,'隐藏菜单','N',5,'隐藏','','admin','1','','danger','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_normal_disable','2024-08-14T02:48:24',1,'正常状态','Y',6,'正常','','admin','0','','primary','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_normal_disable','2024-08-14T02:48:24',2,'停用状态','N',7,'停用','','admin','1','','danger','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_job_status','2024-08-14T02:48:24',1,'正常状态','Y',8,'正常','','admin','0','','primary','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_job_status','2024-08-14T02:48:24',2,'停用状态','N',9,'暂停','','admin','1','','danger','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_job_group','2024-08-14T02:48:24',1,'默认分组','Y',10,'默认','','admin','DEFAULT','','','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_job_group','2024-08-14T02:48:24',2,'系统分组','N',11,'系统','','admin','SYSTEM','','','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_yes_no','2024-08-14T02:48:24',1,'系统默认是','Y',12,'是','','admin','Y','','primary','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_yes_no','2024-08-14T02:48:24',2,'系统默认否','N',13,'否','','admin','N','','danger','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_notice_type','2024-08-14T02:48:24',1,'通知','Y',14,'通知','','admin','1','','warning','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_notice_type','2024-08-14T02:48:24',2,'公告','N',15,'公告','','admin','2','','success','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_notice_status','2024-08-14T02:48:24',1,'正常状态','Y',16,'正常','','admin','0','','primary','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_notice_status','2024-08-14T02:48:24',2,'关闭状态','N',17,'关闭','','admin','1','','danger','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_oper_type','2024-08-14T02:48:24',99,'其他操作','N',18,'其他','','admin','0','','info','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_oper_type','2024-08-14T02:48:24',1,'新增操作','N',19,'新增','','admin','1','','info','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_oper_type','2024-08-14T02:48:24',2,'修改操作','N',20,'修改','','admin','2','','info','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_oper_type','2024-08-14T02:48:24',3,'删除操作','N',21,'删除','','admin','3','','danger','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_oper_type','2024-08-14T02:48:24',4,'授权操作','N',22,'授权','','admin','4','','primary','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_oper_type','2024-08-14T02:48:24',5,'导出操作','N',23,'导出','','admin','5','','warning','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_oper_type','2024-08-14T02:48:24',6,'导入操作','N',24,'导入','','admin','6','','warning','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_oper_type','2024-08-14T02:48:24',7,'强退操作','N',25,'强退','','admin','7','','danger','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_oper_type','2024-08-14T02:48:24',8,'生成操作','N',26,'生成代码','','admin','8','','warning','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_oper_type','2024-08-14T02:48:24',9,'清空操作','N',27,'清空数据','','admin','9','','danger','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_common_status','2024-08-14T02:48:24',1,'正常状态','N',28,'成功','','admin','0','','primary','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`remark`,`is_default`,`dict_code`,`dict_label`,`css_class`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('sys_common_status','2024-08-14T02:48:24',2,'停用状态','N',29,'失败','','admin','1','','danger','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`is_default`,`dict_code`,`dict_label`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('nursing_project_status','2024-08-18T02:41:15',0,'N',100,'启用','admin','1','','default','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`is_default`,`dict_code`,`dict_label`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('nursing_project_status','2024-08-18T02:41:30',0,'N',101,'禁用','admin','0','','default','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`is_default`,`dict_code`,`dict_label`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('nursing_plan_status','2024-08-19T11:00:04',0,'N',103,'启用','admin','1','','default','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`is_default`,`dict_code`,`dict_label`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('nursing_plan_status','2024-08-19T11:00:10',0,'N',104,'禁用','admin','2','','default','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`is_default`,`dict_code`,`dict_label`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('nursing_level_status','2024-08-20T03:04:14',0,'N',105,'启用','admin','1','','default','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`is_default`,`dict_code`,`dict_label`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('nursing_level_status','2024-08-20T03:04:21',0,'N',106,'禁用','admin','0','','default','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`is_default`,`dict_code`,`dict_label`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('admission_status','2026-03-21T12:58:22',0,'N',114,'已入住','admin','0','','default','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`is_default`,`dict_code`,`dict_label`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('admission_status','2026-03-21T12:58:28',0,'N',115,'未入住','admin','1','','default','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`is_default`,`dict_code`,`dict_label`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('device_location_type','2026-03-21T12:58:44',0,'N',116,'随身设备','admin','0','','default','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`is_default`,`dict_code`,`dict_label`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('device_location_type','2026-03-21T12:58:51',0,'N',117,'固定设备','admin','1','','default','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`is_default`,`dict_code`,`dict_label`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('evaluation_progress','2026-03-21T12:59:03',0,'N',118,'评估中','admin','0','','default','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`is_default`,`dict_code`,`dict_label`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('evaluation_progress','2026-03-21T12:59:09',0,'N',119,'已完成','admin','1','','default','0');
INSERT INTO `sys_dict_data`(`dict_type`,`create_time`,`dict_sort`,`is_default`,`dict_code`,`dict_label`,`create_by`,`dict_value`,`update_by`,`list_class`,`status`) VALUES ('evaluation_progress','2026-03-21T12:59:15',0,'N',120,'已取消','admin','2','','default','0');

####################
##  sys_dict_type
####################
DROP TABLE IF EXISTS `sys_dict_type`;

####################
##  table sys_dict_type ddl
####################
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE KEY `dict_type` (`dict_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='字典类型表';

####################
##  sys_dict_type data
####################

####################
##  sys_dict_type data
####################
INSERT INTO `sys_dict_type`(`dict_type`,`create_by`,`dict_id`,`dict_name`,`create_time`,`remark`,`update_by`,`status`) VALUES ('sys_user_sex','admin',1,'用户性别','2024-08-14T02:48:24','用户性别列表','','0');
INSERT INTO `sys_dict_type`(`dict_type`,`create_by`,`dict_id`,`dict_name`,`create_time`,`remark`,`update_by`,`status`) VALUES ('sys_show_hide','admin',2,'菜单状态','2024-08-14T02:48:24','菜单状态列表','','0');
INSERT INTO `sys_dict_type`(`dict_type`,`create_by`,`dict_id`,`dict_name`,`create_time`,`remark`,`update_by`,`status`) VALUES ('sys_normal_disable','admin',3,'系统开关','2024-08-14T02:48:24','系统开关列表','','0');
INSERT INTO `sys_dict_type`(`dict_type`,`create_by`,`dict_id`,`dict_name`,`create_time`,`remark`,`update_by`,`status`) VALUES ('sys_job_status','admin',4,'任务状态','2024-08-14T02:48:24','任务状态列表','','0');
INSERT INTO `sys_dict_type`(`dict_type`,`create_by`,`dict_id`,`dict_name`,`create_time`,`remark`,`update_by`,`status`) VALUES ('sys_job_group','admin',5,'任务分组','2024-08-14T02:48:24','任务分组列表','','0');
INSERT INTO `sys_dict_type`(`dict_type`,`create_by`,`dict_id`,`dict_name`,`create_time`,`remark`,`update_by`,`status`) VALUES ('sys_yes_no','admin',6,'系统是否','2024-08-14T02:48:24','系统是否列表','','0');
INSERT INTO `sys_dict_type`(`dict_type`,`create_by`,`dict_id`,`dict_name`,`create_time`,`remark`,`update_by`,`status`) VALUES ('sys_notice_type','admin',7,'通知类型','2024-08-14T02:48:24','通知类型列表','','0');
INSERT INTO `sys_dict_type`(`dict_type`,`create_by`,`dict_id`,`dict_name`,`create_time`,`remark`,`update_by`,`status`) VALUES ('sys_notice_status','admin',8,'通知状态','2024-08-14T02:48:24','通知状态列表','','0');
INSERT INTO `sys_dict_type`(`dict_type`,`create_by`,`dict_id`,`dict_name`,`create_time`,`remark`,`update_by`,`status`) VALUES ('sys_oper_type','admin',9,'操作类型','2024-08-14T02:48:24','操作类型列表','','0');
INSERT INTO `sys_dict_type`(`dict_type`,`create_by`,`dict_id`,`dict_name`,`create_time`,`remark`,`update_by`,`status`) VALUES ('sys_common_status','admin',10,'系统状态','2024-08-14T02:48:24','登录状态列表','','0');
INSERT INTO `sys_dict_type`(`dict_type`,`create_by`,`dict_id`,`dict_name`,`create_time`,`update_by`,`status`) VALUES ('nursing_project_status','admin',100,'护理项目状态','2024-08-18T02:40:48','','0');
INSERT INTO `sys_dict_type`(`dict_type`,`create_by`,`dict_id`,`dict_name`,`create_time`,`update_by`,`status`) VALUES ('nursing_plan_status','admin',101,'护理计划状态','2024-08-19T10:59:40','','0');
INSERT INTO `sys_dict_type`(`dict_type`,`create_by`,`dict_id`,`dict_name`,`create_time`,`update_by`,`status`) VALUES ('nursing_level_status','admin',102,'护理等级状态','2024-08-20T03:04:03','','0');
INSERT INTO `sys_dict_type`(`dict_type`,`create_by`,`dict_id`,`dict_name`,`create_time`,`update_by`,`status`) VALUES ('admission_status','admin',106,'健康评估-入住状态','2026-03-21T12:57:21','','0');
INSERT INTO `sys_dict_type`(`dict_type`,`create_by`,`dict_id`,`dict_name`,`create_time`,`update_by`,`status`) VALUES ('device_location_type','admin',107,'设备位置','2026-03-21T12:57:33','','0');
INSERT INTO `sys_dict_type`(`dict_type`,`create_by`,`dict_id`,`dict_name`,`create_time`,`update_by`,`status`) VALUES ('evaluation_progress','admin',108,'评估进度','2026-03-21T12:57:41','','0');

####################
##  sys_job
####################
DROP TABLE IF EXISTS `sys_job`;

####################
##  table sys_job ddl
####################
CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='定时任务调度表';

####################
##  sys_job data
####################

####################
##  sys_job data
####################
INSERT INTO `sys_job`(`misfire_policy`,`create_time`,`job_group`,`concurrent`,`remark`,`invoke_target`,`create_by`,`job_name`,`cron_expression`,`job_id`,`update_by`,`status`) VALUES ('3','2024-08-14T02:48:24','DEFAULT','1','','ryTask.ryNoParams','admin','系统默认（无参）','0/10 * * * * ?',1,'','1');
INSERT INTO `sys_job`(`misfire_policy`,`create_time`,`job_group`,`concurrent`,`remark`,`invoke_target`,`create_by`,`job_name`,`cron_expression`,`job_id`,`update_by`,`status`) VALUES ('3','2024-08-14T02:48:24','DEFAULT','1','','ryTask.ryParams(\'ry\')','admin','系统默认（有参）','0/15 * * * * ?',2,'','1');
INSERT INTO `sys_job`(`misfire_policy`,`create_time`,`job_group`,`concurrent`,`remark`,`invoke_target`,`create_by`,`job_name`,`cron_expression`,`job_id`,`update_by`,`status`) VALUES ('3','2024-08-14T02:48:24','DEFAULT','1','','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','admin','系统默认（多参）','0/20 * * * * ?',3,'','1');

####################
##  sys_job_log
####################
DROP TABLE IF EXISTS `sys_job_log`;

####################
##  table sys_job_log ddl
####################
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='定时任务调度日志表';

####################
##  sys_job_log data
####################

####################
##  sys_job_log data
####################
INSERT INTO `sys_job_log`(`job_message`,`exception_info`,`job_name`,`create_time`,`job_group`,`job_log_id`,`invoke_target`,`status`) VALUES ('护理任务生成定时任务 总共耗时：867毫秒','','护理任务生成定时任务','2026-03-01T22:42:27','DEFAULT',124,'createNursingTaskJob.createNursingTaskJob','0');

####################
##  sys_logininfor
####################
DROP TABLE IF EXISTS `sys_logininfor`;

####################
##  table sys_logininfor ddl
####################
CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  KEY `idx_sys_logininfor_s` (`status`) USING BTREE,
  KEY `idx_sys_logininfor_lt` (`login_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='系统访问记录';

####################
##  sys_logininfor data
####################

####################
##  sys_logininfor data
####################

####################
##  sys_menu
####################
DROP TABLE IF EXISTS `sys_menu`;

####################
##  table sys_menu ddl
####################
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '路由名称',
  `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2065 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';

####################
##  sys_menu data
####################

####################
##  sys_menu data
####################
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','M','',0,'icon_xtgl','系统管理目录',1,'admin','system','2026-03-10T11:02:46',0,'系统管理','',6,'admin',1,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','M','',0,'icon_xtjk','系统监控目录',1,'admin','monitor','2026-03-10T11:03:03',0,'系统监控','',7,'admin',2,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','M','',0,'icon_xtgj','系统工具目录',1,'admin','tool','2026-03-10T11:03:21',0,'系统工具','',8,'admin',3,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('1','2024-08-14T02:48:23','','M','',0,'guide','若依官网地址',0,'admin','http://ruoyi.vip','2024-08-20T01:57:10',0,'若依官网','',4,'admin',4,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','C','',0,'user','用户管理菜单',1,'admin','user','system/user/index',1,'用户管理','system:user:list',1,'',100,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','C','',0,'peoples','角色管理菜单',1,'admin','role','system/role/index',1,'角色管理','system:role:list',2,'',101,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','C','',0,'tree-table','菜单管理菜单',1,'admin','menu','system/menu/index',1,'菜单管理','system:menu:list',3,'',102,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','C','',0,'tree','部门管理菜单',1,'admin','dept','system/dept/index',1,'部门管理','system:dept:list',4,'',103,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','C','',0,'post','岗位管理菜单',1,'admin','post','system/post/index',1,'岗位管理','system:post:list',5,'',104,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','C','',0,'dict','字典管理菜单',1,'admin','dict','system/dict/index',1,'字典管理','system:dict:list',6,'',105,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','C','',0,'edit','参数设置菜单',1,'admin','config','system/config/index',1,'参数设置','system:config:list',7,'',106,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','C','',0,'message','通知公告菜单',1,'admin','notice','system/notice/index',1,'通知公告','system:notice:list',8,'',107,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','M','',0,'log','日志管理菜单',1,'admin','log','',1,'日志管理','',9,'',108,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','C','',0,'online','在线用户菜单',1,'admin','online','monitor/online/index',2,'在线用户','monitor:online:list',1,'',109,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','C','',0,'job','定时任务菜单',1,'admin','job','monitor/job/index',2,'定时任务','monitor:job:list',2,'',110,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','C','',0,'druid','数据监控菜单',1,'admin','druid','monitor/druid/index',2,'数据监控','monitor:druid:list',3,'',111,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','C','',0,'server','服务监控菜单',1,'admin','server','monitor/server/index',2,'服务监控','monitor:server:list',4,'',112,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','C','',0,'redis','缓存监控菜单',1,'admin','cache','monitor/cache/index',2,'缓存监控','monitor:cache:list',5,'',113,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','C','',0,'redis-list','缓存列表菜单',1,'admin','cacheList','monitor/cache/list',2,'缓存列表','monitor:cache:list',6,'',114,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','C','',0,'build','表单构建菜单',1,'admin','build','tool/build/index',3,'表单构建','tool:build:list',1,'',115,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','C','',0,'code','代码生成菜单',1,'admin','gen','tool/gen/index',3,'代码生成','tool:gen:list',2,'',116,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','C','',0,'swagger','系统接口菜单',1,'admin','swagger','tool/swagger/index',3,'系统接口','tool:swagger:list',3,'',117,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','C','',0,'form','操作日志菜单',1,'admin','operlog','monitor/operlog/index',108,'操作日志','monitor:operlog:list',1,'',500,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','C','',0,'logininfor','登录日志菜单',1,'admin','logininfor','monitor/logininfor/index',108,'登录日志','monitor:logininfor:list',2,'',501,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','','',100,'用户查询','system:user:query',1,'',1000,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','','',100,'用户新增','system:user:add',2,'',1001,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','','',100,'用户修改','system:user:edit',3,'',1002,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','','',100,'用户删除','system:user:remove',4,'',1003,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','','',100,'用户导出','system:user:export',5,'',1004,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','','',100,'用户导入','system:user:import',6,'',1005,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','','',100,'重置密码','system:user:resetPwd',7,'',1006,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','','',101,'角色查询','system:role:query',1,'',1007,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','','',101,'角色新增','system:role:add',2,'',1008,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','','',101,'角色修改','system:role:edit',3,'',1009,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','','',101,'角色删除','system:role:remove',4,'',1010,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','','',101,'角色导出','system:role:export',5,'',1011,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','','',102,'菜单查询','system:menu:query',1,'',1012,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','','',102,'菜单新增','system:menu:add',2,'',1013,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','','',102,'菜单修改','system:menu:edit',3,'',1014,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','','',102,'菜单删除','system:menu:remove',4,'',1015,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','','',103,'部门查询','system:dept:query',1,'',1016,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','','',103,'部门新增','system:dept:add',2,'',1017,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','','',103,'部门修改','system:dept:edit',3,'',1018,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','','',103,'部门删除','system:dept:remove',4,'',1019,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','','',104,'岗位查询','system:post:query',1,'',1020,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','','',104,'岗位新增','system:post:add',2,'',1021,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','','',104,'岗位修改','system:post:edit',3,'',1022,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','','',104,'岗位删除','system:post:remove',4,'',1023,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','','',104,'岗位导出','system:post:export',5,'',1024,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',105,'字典查询','system:dict:query',1,'',1025,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',105,'字典新增','system:dict:add',2,'',1026,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',105,'字典修改','system:dict:edit',3,'',1027,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',105,'字典删除','system:dict:remove',4,'',1028,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',105,'字典导出','system:dict:export',5,'',1029,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',106,'参数查询','system:config:query',1,'',1030,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',106,'参数新增','system:config:add',2,'',1031,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',106,'参数修改','system:config:edit',3,'',1032,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',106,'参数删除','system:config:remove',4,'',1033,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',106,'参数导出','system:config:export',5,'',1034,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',107,'公告查询','system:notice:query',1,'',1035,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',107,'公告新增','system:notice:add',2,'',1036,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',107,'公告修改','system:notice:edit',3,'',1037,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',107,'公告删除','system:notice:remove',4,'',1038,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',500,'操作查询','monitor:operlog:query',1,'',1039,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',500,'操作删除','monitor:operlog:remove',2,'',1040,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',500,'日志导出','monitor:operlog:export',3,'',1041,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',501,'登录查询','monitor:logininfor:query',1,'',1042,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',501,'登录删除','monitor:logininfor:remove',2,'',1043,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',501,'日志导出','monitor:logininfor:export',3,'',1044,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',501,'账户解锁','monitor:logininfor:unlock',4,'',1045,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',109,'在线查询','monitor:online:query',1,'',1046,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',109,'批量强退','monitor:online:batchLogout',2,'',1047,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',109,'单条强退','monitor:online:forceLogout',3,'',1048,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',110,'任务查询','monitor:job:query',1,'',1049,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',110,'任务新增','monitor:job:add',2,'',1050,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',110,'任务修改','monitor:job:edit',3,'',1051,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',110,'任务删除','monitor:job:remove',4,'',1052,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',110,'状态修改','monitor:job:changeStatus',5,'',1053,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',110,'任务导出','monitor:job:export',6,'',1054,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',116,'生成查询','tool:gen:query',1,'',1055,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',116,'生成修改','tool:gen:edit',2,'',1056,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',116,'生成删除','tool:gen:remove',3,'',1057,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',116,'导入代码','tool:gen:import',4,'',1058,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',116,'预览代码','tool:gen:preview',5,'',1059,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`query`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:48:23','','F','',0,'#','',1,'admin','#','',116,'生成代码','tool:gen:code',6,'',1060,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T02:59:12','','M',0,'icon_fwgl','',1,'admin','serve','2026-03-09T11:33:57',0,'服务管理','',4,'admin',2000,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T03:00:15','','C',0,'color','护理项目菜单',1,'admin','project','nursing/project/index','2025-04-18T10:24',2000,'护理项目','nursing:project:list',1,'admin',2001,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T03:00:15','','F',0,'#','',1,'admin','#','','2025-04-18T10:24:09',2001,'护理项目查询','nursing:project:query',1,'admin',2002,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T03:00:15','','F',0,'#','',1,'admin','#','','2025-04-18T10:24:13',2001,'护理项目新增','nursing:project:add',2,'admin',2003,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T03:00:15','','F',0,'#','',1,'admin','#','','2025-04-18T10:24:18',2001,'护理项目修改','nursing:project:edit',3,'admin',2004,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T03:00:15','','F',0,'#','',1,'admin','#','','2025-04-18T10:24:21',2001,'护理项目删除','nursing:project:remove',4,'admin',2005,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T03:00:15','','F',0,'#','',1,'admin','#','','2025-04-18T10:24:25',2001,'护理项目导出','nursing:project:export',5,'admin',2006,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T08:29:05','','C',0,'guide','护理等级菜单',1,'admin','nursingLevel','nursing/nursingLevel/index','2024-08-22T12:16:22',2000,'护理等级','nursing:nursingLevel:list',1,'admin',2007,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T08:29:05','','F',0,'#','',1,'admin','#','',2007,'护理等级查询','nursing:nursingLevel:query',1,'',2008,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T08:29:05','','F',0,'#','',1,'admin','#','',2007,'护理等级新增','nursing:nursingLevel:add',2,'',2009,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T08:29:05','','F',0,'#','',1,'admin','#','',2007,'护理等级修改','nursing:nursingLevel:edit',3,'',2010,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T08:29:05','','F',0,'#','',1,'admin','#','',2007,'护理等级删除','nursing:nursingLevel:remove',4,'',2011,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T08:29:05','','F',0,'#','',1,'admin','#','',2007,'护理等级导出','nursing:nursingLevel:export',5,'',2012,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T08:29:10','','C',0,'druid','护理计划菜单',1,'admin','nursingPlan','nursing/nursingPlan/index','2024-08-22T12:16:43',2000,'护理计划','nursing:nursingPlan:list',1,'admin',2013,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T08:29:10','','F',0,'#','',1,'admin','#','',2013,'护理计划查询','nursing:nursingPlan:query',1,'',2014,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T08:29:10','','F',0,'#','',1,'admin','#','',2013,'护理计划新增','nursing:nursingPlan:add',2,'',2015,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T08:29:10','','F',0,'#','',1,'admin','#','',2013,'护理计划修改','nursing:nursingPlan:edit',3,'',2016,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T08:29:10','','F',0,'#','',1,'admin','#','',2013,'护理计划删除','nursing:nursingPlan:remove',4,'',2017,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-14T08:29:10','','F',0,'#','',1,'admin','#','',2013,'护理计划导出','nursing:nursingPlan:export',5,'',2018,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-22T06:49:19','','M',0,'icon_zzgl','',1,'admin','liveIn','2026-03-09T11:32:42',0,'在住管理','',3,'admin',2019,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-22T06:50:50','','C',0,'size','',1,'admin','houseSet','nursing/roomType/index',2019,'房型设置',0,'',2020,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-22T08:15:05','','C',0,'tree-table','',1,'admin','floor','nursing/floor/index',2019,'床位预览',2,'',2021,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-23T12:52:34','','M',0,'component','',1,'admin','enterQuit','2024-08-29T06:42:15',0,'入退管理','',2,'admin',2022,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-23T13:13:48','','C',0,'edit','入住菜单',1,'admin','checkIn','nursing/checkIn/index','2024-08-24T02:58:12',2022,'入住办理','nursing:checkIn:list',1,'admin',2023,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-23T13:13:48','','F',0,'#','',1,'admin','#','',2023,'入住查询','nursing:checkIn:query',1,'',2024,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-23T13:13:48','','F',0,'#','',1,'admin','#','','2026-03-18T16:57:30',2023,'入住申请','nursing:checkIn:add',2,'admin',2025,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-23T13:13:48','','F',0,'#','',1,'admin','#','','2026-03-18T16:57:51',2023,'入住详情','nursing:checkIn:edit',3,'admin',2026,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-23T13:13:48','','F',0,'#','',1,'admin','#','',2023,'入住删除','nursing:checkIn:remove',4,'',2027,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-23T13:13:48','','F',0,'#','',1,'admin','#','',2023,'入住导出','nursing:checkIn:export',5,'',2028,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('1','2024-08-24T03:44:48','','C',0,'checkbox','',1,'admin','checkInInfo','nursing/checkIn/details',2022,'入住详情',0,'',2035,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-29T06:43:14','','M',0,'icon_znjc','',1,'admin','intelligence','2026-03-09T11:35:17',0,'智能监测','',5,'admin',2037,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-29T06:48:51','','C',0,'eye','',1,'admin','healthAssessment','nursing/healthAssessment/index','2026-03-06T16:51:20',2022,'健康评估','',0,'admin',2039,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('1','2024-08-29T06:49:53','','F',0,'#','',1,'admin','healthDetails','nursing/healthAssessment/details','2026-03-18T16:37:46',2022,'评估详情','enterQuit:healthAssessment:details',2,'admin',2040,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-29T06:52:12','','C',0,'peoples','',1,'admin','oldPeople','nursing/oldPeople/index','2024-08-29T06:52:23',2000,'负责老人','',4,'admin',2041,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-29T06:53:06','','C',0,'redis-list','',1,'admin','arrange','nursing/arrange/index',2000,'任务安排',5,'',2042,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('1','2024-08-29T06:53:37','','C',0,'#','',1,'admin','arrangeDetails','nursing/arrange/details',2000,'任务安排详情',1,'',2043,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-29T06:54:54','','C',0,'tool','',1,'admin','device','nursing/device/index','2024-08-29T07:13:42',2037,'设备管理','',0,'admin',2044,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('1','2024-08-29T06:55:25','','C',0,'#','',1,'admin','details','nursing/device/details',2037,'设备详情',0,'',2045,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('1','2024-08-29T06:56:01','','C',0,'#','',1,'admin','ruleDetails','nursing/alertRule/details',2037,'新增报警规则',0,'',2046,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-29T06:56:48','','C',0,'nested','',1,'admin','alertRule','nursing/alertRule/index',2037,'报警规则',1,'',2047,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2024-08-29T06:57:25','','C',0,'skill','',1,'admin','alertData','nursing/alertData/index',2037,'报警数据',2,'',2048,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2025-05-04T01:06:31','','C',0,'example','',1,'admin','smartBed','nursing/smartBed/index',2019,'智能床位',3,'',2050,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2025-07-16T22:26:29','','M',0,'icon_xhzx','',1,'admin','zhixun','2026-03-10T11:02:23',0,'星海智询','',0,'admin',2052,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2025-07-16T22:27:41','','C',0,'drag','',1,'admin','xiaozhi','nursing/zhixun/index','2025-07-16T23:33:43',2052,'小智','',1,'admin',2053,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2025-07-21T23:06:50','','C',0,'education','知识库菜单',1,'admin','knowledgeBase','nursing/knowledgeBase/index','2025-07-21T23:12:37',2052,'知识库','nursing:knowledgeBase:list',1,'admin',2055,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2025-07-21T23:06:50','','F',0,'#','',1,'admin','#','',2055,'知识库查询','nursing:knowledgeBase:query',1,'',2056,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2025-07-21T23:06:50','','F',0,'#','',1,'admin','#','',2055,'知识库新增','nursing:knowledgeBase:add',2,'',2057,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2025-07-21T23:06:50','','F',0,'#','',1,'admin','#','',2055,'知识库修改','nursing:knowledgeBase:edit',3,'',2058,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2025-07-21T23:06:50','','F',0,'#','',1,'admin','#','',2055,'知识库删除','nursing:knowledgeBase:remove',4,'',2059,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2025-07-21T23:06:50','','F',0,'#','',1,'admin','#','',2055,'知识库导出','nursing:knowledgeBase:export',5,'',2060,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('1','2026-02-05T11:51:18','','F',0,'drag','',1,'admin','detailsSteps','nursing/healthAssessment/detailsSteps','2026-03-18T16:36:39',2022,'新增修改评估','enterQuit:healthAssessment:detailsSteps',3,'admin',2061,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2026-03-10T17:00:58','','M',0,'icon_laifang','',1,'admin','appointment','2026-03-11T09:42:29',0,'来访管理','',1,'admin',2062,'0');
INSERT INTO `sys_menu`(`visible`,`create_time`,`route_name`,`menu_type`,`is_cache`,`icon`,`remark`,`is_frame`,`create_by`,`path`,`component`,`update_time`,`parent_id`,`menu_name`,`perms`,`order_num`,`update_by`,`menu_id`,`status`) VALUES ('0','2026-03-10T17:03:30','','C',0,'#','',1,'admin','reservation','nursing/reservation/index','2026-03-10T17:07:15',2062,'预约登记','',0,'admin',2063,'0');

####################
##  sys_notice
####################
DROP TABLE IF EXISTS `sys_notice`;

####################
##  table sys_notice ddl
####################
CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='通知公告表';

####################
##  sys_notice data
####################

####################
##  sys_notice data
####################
INSERT INTO `sys_notice`(`notice_title`,`create_by`,`notice_content`,`create_time`,`remark`,`update_by`,`notice_id`,`notice_type`,`status`) VALUES ('温馨提醒：2018-07-01 若依新版本发布啦','admin',0xE696B0E78988E69CACE58685E5AEB9,'2024-08-14T02:48:24','管理员','',1,'2','0');
INSERT INTO `sys_notice`(`notice_title`,`create_by`,`notice_content`,`create_time`,`remark`,`update_by`,`notice_id`,`notice_type`,`status`) VALUES ('维护通知：2018-07-01 若依系统凌晨维护','admin',0xE7BBB4E68AA4E58685E5AEB9,'2024-08-14T02:48:24','管理员','',2,'1','0');

####################
##  sys_oper_log
####################
DROP TABLE IF EXISTS `sys_oper_log`;

####################
##  table sys_oper_log ddl
####################
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  KEY `idx_sys_oper_log_bt` (`business_type`) USING BTREE,
  KEY `idx_sys_oper_log_s` (`status`) USING BTREE,
  KEY `idx_sys_oper_log_ot` (`oper_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='操作日志记录';

####################
##  sys_oper_log data
####################

####################
##  sys_oper_log data
####################
INSERT INTO `sys_oper_log`(`oper_time`,`method`,`oper_param`,`oper_name`,`dept_name`,`request_method`,`title`,`oper_location`,`operator_type`,`oper_ip`,`json_result`,`cost_time`,`business_type`,`oper_url`,`oper_id`,`status`) VALUES ('2026-03-28T09:44:48','com.xhzb.web.controller.monitor.SysOperlogController.clean()','','admin','院长办公室','DELETE','操作日志','内网IP',1,'127.0.0.1','{"msg":"操作成功","code":200}',54,9,'/monitor/operlog/clean',1,0);
INSERT INTO `sys_oper_log`(`oper_time`,`method`,`oper_param`,`oper_name`,`dept_name`,`request_method`,`title`,`oper_location`,`operator_type`,`oper_ip`,`json_result`,`cost_time`,`business_type`,`oper_url`,`oper_id`,`status`) VALUES ('2026-03-28T09:44:51','com.xhzb.web.controller.monitor.SysLogininforController.clean()','','admin','院长办公室','DELETE','登录日志','内网IP',1,'127.0.0.1','{"msg":"操作成功","code":200}',43,9,'/monitor/logininfor/clean',2,0);

####################
##  sys_post
####################
DROP TABLE IF EXISTS `sys_post`;

####################
##  table sys_post ddl
####################
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='岗位信息表';

####################
##  sys_post data
####################

####################
##  sys_post data
####################
INSERT INTO `sys_post`(`create_by`,`post_id`,`create_time`,`post_name`,`post_code`,`remark`,`update_by`,`post_sort`,`status`) VALUES ('admin',1,'2024-08-14T02:48:23','董事长','ceo','','',1,'0');
INSERT INTO `sys_post`(`create_by`,`post_id`,`create_time`,`post_name`,`post_code`,`remark`,`update_by`,`post_sort`,`status`) VALUES ('admin',2,'2024-08-14T02:48:23','项目经理','se','','',2,'0');
INSERT INTO `sys_post`(`create_by`,`post_id`,`create_time`,`post_name`,`post_code`,`remark`,`update_by`,`post_sort`,`status`) VALUES ('admin',3,'2024-08-14T02:48:23','人力资源','hr','','',3,'0');
INSERT INTO `sys_post`(`create_by`,`post_id`,`create_time`,`post_name`,`post_code`,`remark`,`update_by`,`post_sort`,`status`) VALUES ('admin',4,'2024-08-14T02:48:23','普通员工','user','','',4,'0');

####################
##  sys_role
####################
DROP TABLE IF EXISTS `sys_role`;

####################
##  table sys_role ddl
####################
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='角色信息表';

####################
##  sys_role data
####################

####################
##  sys_role data
####################
INSERT INTO `sys_role`(`role_sort`,`del_flag`,`create_time`,`menu_check_strictly`,`remark`,`dept_check_strictly`,`role_name`,`create_by`,`role_id`,`role_key`,`update_by`,`data_scope`,`status`) VALUES (1,'0','2024-08-14T02:48:23',true,'超级管理员',true,'超级管理员','admin',1,'admin','','1','0');
INSERT INTO `sys_role`(`role_sort`,`del_flag`,`create_time`,`menu_check_strictly`,`remark`,`dept_check_strictly`,`role_name`,`create_by`,`role_id`,`role_key`,`update_by`,`data_scope`,`status`) VALUES (2,'0','2024-08-14T02:48:23',true,'普通角色',true,'普通角色','admin',2,'common','','2','0');
INSERT INTO `sys_role`(`role_sort`,`del_flag`,`create_time`,`menu_check_strictly`,`dept_check_strictly`,`role_name`,`create_by`,`update_time`,`role_id`,`role_key`,`update_by`,`data_scope`,`status`) VALUES (0,'0','2025-04-25T15:21:26',true,true,'行政主管','admin','2025-07-16T19:25:31',100,'sys_role','admin','1','0');
INSERT INTO `sys_role`(`role_sort`,`del_flag`,`create_time`,`menu_check_strictly`,`dept_check_strictly`,`role_name`,`create_by`,`update_time`,`role_id`,`role_key`,`update_by`,`data_scope`,`status`) VALUES (0,'0','2025-04-26T01:33:42',true,true,'院长','admin','2025-07-16T19:25:28',101,'yuanzhang','admin','1','0');
INSERT INTO `sys_role`(`role_sort`,`del_flag`,`create_time`,`menu_check_strictly`,`dept_check_strictly`,`role_name`,`create_by`,`update_time`,`role_id`,`role_key`,`update_by`,`data_scope`,`status`) VALUES (5,'0','2025-05-04T04:14:26',true,true,'护理员','admin','2025-05-06T16:42:59',102,'nursing_elder','admin','1','0');
INSERT INTO `sys_role`(`role_sort`,`del_flag`,`create_time`,`menu_check_strictly`,`dept_check_strictly`,`role_name`,`create_by`,`update_time`,`role_id`,`role_key`,`update_by`,`data_scope`,`status`) VALUES (77,'0','2025-05-04T04:15:38',true,true,'行政','admin','2025-07-16T19:25:15',103,'administrator','admin','1','0');
INSERT INTO `sys_role`(`role_sort`,`del_flag`,`create_time`,`menu_check_strictly`,`dept_check_strictly`,`role_name`,`create_by`,`update_time`,`role_id`,`role_key`,`update_by`,`data_scope`,`status`) VALUES (0,'0','2026-03-10T15:14:27',true,true,'测试','admin','2026-03-16T17:56:55',104,'123','admin','1','0');

####################
##  sys_role_dept
####################
DROP TABLE IF EXISTS `sys_role_dept`;

####################
##  table sys_role_dept ddl
####################
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='角色和部门关联表';

####################
##  sys_role_dept data
####################

####################
##  sys_role_dept data
####################
INSERT INTO `sys_role_dept`(`role_id`,`dept_id`) VALUES (2,100);
INSERT INTO `sys_role_dept`(`role_id`,`dept_id`) VALUES (2,101);
INSERT INTO `sys_role_dept`(`role_id`,`dept_id`) VALUES (2,105);

####################
##  sys_role_menu
####################
DROP TABLE IF EXISTS `sys_role_menu`;

####################
##  table sys_role_menu ddl
####################
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='角色和菜单关联表';

####################
##  sys_role_menu data
####################

####################
##  sys_role_menu data
####################
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,2);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,3);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,4);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,100);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,101);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,102);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,103);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,104);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,105);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,106);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,107);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,108);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,109);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,110);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,111);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,112);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,113);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,114);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,115);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,116);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,117);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,500);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,501);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1000);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1001);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1002);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1003);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1004);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1005);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1006);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1007);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1008);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1009);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1010);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1011);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1012);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1013);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1014);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1015);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1016);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1017);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1018);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1019);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1020);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1021);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1022);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1023);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1024);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1025);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1026);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1027);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1028);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1029);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1030);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1031);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1032);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1033);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1034);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1035);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1036);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1037);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1038);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1039);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1040);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1041);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1042);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1043);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1044);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1045);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1046);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1047);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1048);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1049);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1050);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1051);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1052);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1053);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1054);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1055);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1056);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1057);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1058);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1059);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (2,1060);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,3);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,100);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,101);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,102);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,103);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,104);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,105);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,106);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,107);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,108);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,109);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,110);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,111);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,112);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,113);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,114);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,115);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,116);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,117);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,500);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,501);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1000);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1001);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1002);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1003);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1004);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1005);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1006);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1007);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1008);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1009);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1010);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1011);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1012);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1013);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1014);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1015);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1016);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1017);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1018);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1019);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1020);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1021);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1022);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1023);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1024);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1025);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1026);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1027);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1028);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1029);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1030);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1031);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1032);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1033);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1034);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1035);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1036);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1037);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1038);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1039);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1040);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1041);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1042);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1043);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1044);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1045);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1046);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1047);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1048);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1049);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1050);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1051);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1052);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1053);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1054);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1055);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1056);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1057);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1058);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1059);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,1060);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2000);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2001);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2002);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2003);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2004);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2005);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2006);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2007);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2008);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2009);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2010);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2011);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2012);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2013);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2014);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2015);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2016);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2017);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2018);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2037);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2041);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2042);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2043);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2044);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2045);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2046);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2047);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (100,2048);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,2);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,3);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,100);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,101);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,102);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,103);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,104);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,105);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,106);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,107);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,108);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,109);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,110);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,111);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,112);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,113);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,114);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,115);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,116);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,117);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,500);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,501);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1000);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1001);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1002);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1003);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1004);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1005);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1006);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1007);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1008);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1009);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1010);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1011);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1012);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1013);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1014);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1015);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1016);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1017);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1018);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1019);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1020);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1021);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1022);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1023);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1024);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1025);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1026);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1027);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1028);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1029);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1030);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1031);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1032);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1033);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1034);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1035);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1036);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1037);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1038);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1039);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1040);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1041);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1042);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1043);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1044);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1045);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1046);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1047);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1048);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1049);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1050);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1051);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1052);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1053);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1054);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1055);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1056);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1057);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1058);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1059);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,1060);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,2019);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,2020);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,2021);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,2022);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,2023);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,2024);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,2025);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,2026);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,2027);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,2028);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,2035);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,2037);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,2039);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,2040);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,2044);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,2045);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,2046);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,2047);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (101,2048);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2000);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2001);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2002);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2003);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2004);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2005);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2006);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2007);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2008);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2009);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2010);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2011);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2012);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2013);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2014);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2015);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2016);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2017);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2018);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2019);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2020);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2021);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2037);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2041);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2042);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2043);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2048);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (102,2050);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,2);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,3);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,100);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,101);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,102);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,103);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,104);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,105);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,106);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,107);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,108);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,109);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,110);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,111);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,112);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,113);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,114);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,115);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,116);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,117);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,500);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,501);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1000);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1001);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1002);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1003);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1004);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1005);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1006);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1007);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1008);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1009);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1010);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1011);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1012);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1013);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1014);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1015);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1016);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1017);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1018);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1019);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1020);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1021);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1022);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1023);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1024);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1025);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1026);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1027);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1028);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1029);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1030);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1031);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1032);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1033);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1034);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1035);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1036);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1037);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1038);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1039);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1040);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1041);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1042);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1043);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1044);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1045);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1046);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1047);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1048);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1049);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1050);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1051);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1052);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1053);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1054);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1055);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1056);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1057);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1058);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1059);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,1060);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,2037);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,2044);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,2045);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,2046);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,2047);
INSERT INTO `sys_role_menu`(`role_id`,`menu_id`) VALUES (103,2048);

####################
##  sys_user
####################
DROP TABLE IF EXISTS `sys_user`;

####################
##  table sys_user ddl
####################
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_eo_0900_ai_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_eo_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_eo_0900_ai_ci DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_eo_0900_ai_ci DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_eo_0900_ai_ci DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_eo_0900_ai_ci DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_eo_0900_ai_ci DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_eo_0900_ai_ci DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_eo_0900_ai_ci DEFAULT '0' COMMENT '账号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_eo_0900_ai_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_eo_0900_ai_ci DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_eo_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_eo_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_eo_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_eo_0900_ai_ci COMMENT='用户信息表';

####################
##  sys_user data
####################

####################
##  sys_user data
####################
INSERT INTO `sys_user`(`del_flag`,`create_time`,`user_name`,`sex`,`phonenumber`,`login_date`,`remark`,`avatar`,`login_ip`,`create_by`,`password`,`update_time`,`user_type`,`user_id`,`nick_name`,`dept_id`,`update_by`,`email`,`pwd_update_date`,`status`) VALUES ('0','2025-06-13T17:13:43','admin','0','15888888888','2026-03-28T16:49:51','管理员','','127.0.0.1','admin','$2a$10$kGJszFoFLpSBFMkd1xlzfezrmtd8GYeFbPQkV9/neah005hVs70g6','2026-03-28T08:49:50','00',1,'admin',103,'','ry@163.com','2025-06-13T17:13:43','0');
INSERT INTO `sys_user`(`del_flag`,`create_time`,`user_name`,`sex`,`phonenumber`,`login_date`,`remark`,`avatar`,`login_ip`,`create_by`,`password`,`user_type`,`user_id`,`nick_name`,`dept_id`,`update_by`,`email`,`pwd_update_date`,`status`) VALUES ('0','2025-06-13T17:13:43','ry','1','15666666666','2025-06-13T17:13:43','测试员','','127.0.0.1','admin','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','00',2,'若依',105,'','ry@qq.com','2025-06-13T17:13:43','0');
INSERT INTO `sys_user`(`del_flag`,`create_time`,`user_name`,`sex`,`phonenumber`,`avatar`,`login_ip`,`create_by`,`password`,`update_time`,`user_type`,`user_id`,`nick_name`,`dept_id`,`update_by`,`email`,`status`) VALUES ('0','2026-03-01T21:44:50','xiaobai','0','','','','admin','$2a$10$2bkX7Yl06FUbYiKtqpzH7enQTBmgSXufSZSTqm4AFNeN96n6zfWNG','2026-03-01T21:45:40','00',100,'小白',201,'admin','','0');
INSERT INTO `sys_user`(`del_flag`,`create_time`,`user_name`,`sex`,`phonenumber`,`avatar`,`login_ip`,`create_by`,`password`,`update_time`,`user_type`,`user_id`,`nick_name`,`dept_id`,`update_by`,`email`,`status`) VALUES ('0','2026-03-01T21:45:07','xiaoqing','0','','','','admin','$2a$10$AZhhxUbX.IWNdlKeCH.CjeLHR3uktv/kFPM8ycZDIT.wnfeKOgxyG','2026-03-01T21:45:47','00',101,'小青',201,'admin','','0');
INSERT INTO `sys_user`(`del_flag`,`create_time`,`user_name`,`sex`,`phonenumber`,`login_date`,`avatar`,`login_ip`,`create_by`,`password`,`update_time`,`user_type`,`user_id`,`nick_name`,`dept_id`,`update_by`,`email`,`status`) VALUES ('2','2026-03-09T11:14:06','anthony','0','17710608230','2026-03-09T14:19:50','','114.242.26.45','admin','$2a$10$15AAXafS7bzQoTvyHA67sOizqZ7TPHYL1ULsJDvqGrQAtoZjfxoGm','2026-03-10T10:45:11','00',102,'安东尼',201,'admin','704951264@qq.com','0');
INSERT INTO `sys_user`(`del_flag`,`create_time`,`user_name`,`sex`,`phonenumber`,`login_date`,`avatar`,`login_ip`,`create_by`,`password`,`update_time`,`user_type`,`user_id`,`nick_name`,`dept_id`,`update_by`,`email`,`status`) VALUES ('2','2026-03-10T15:15:09','hahaha','0','13567890987','2026-03-10T15:44:08','','114.242.26.45','admin','$2a$10$0dzGLNMOaUwbSyl7C3KTbunCEmlTs3lrqefLQOu57FzoFTzpHAzR2','2026-03-10T15:44:07','00',103,'hahaha',100,'admin','123321233@123.com','0');
INSERT INTO `sys_user`(`del_flag`,`create_time`,`user_name`,`sex`,`phonenumber`,`avatar`,`login_ip`,`create_by`,`password`,`update_time`,`user_type`,`user_id`,`nick_name`,`dept_id`,`update_by`,`email`,`status`) VALUES ('2','2026-03-10T15:45:24','测试用户菜单','0','','','','admin','$2a$10$kEATR4aRgW9bSvD0RuNTEOiw6JC9zNITGUuvubu9EPGz27qNIfR3S','2026-03-11T10:54:15','00',104,'ceshiyonghu',100,'admin','','0');
INSERT INTO `sys_user`(`del_flag`,`create_time`,`user_name`,`sex`,`phonenumber`,`login_date`,`avatar`,`login_ip`,`create_by`,`password`,`update_time`,`user_type`,`user_id`,`nick_name`,`dept_id`,`update_by`,`email`,`pwd_update_date`,`status`) VALUES ('2','2026-03-11T10:55:56','ceshiziliao','0','15110252555','2026-03-17T10:39:50','','172.16.43.100','admin','$2a$10$0nVimENHs3Wqufzd5nifUe8zhMJfwLHVbI6H139eyAyHGreFGoN..','2026-03-17T17:22:51','00',105,'测试基本资料未显示',201,'admin','jjjjjjj@163.com','2026-03-16T17:13:56','0');
INSERT INTO `sys_user`(`del_flag`,`create_time`,`user_name`,`sex`,`phonenumber`,`login_date`,`remark`,`avatar`,`login_ip`,`create_by`,`password`,`update_time`,`user_type`,`user_id`,`nick_name`,`dept_id`,`update_by`,`email`,`status`) VALUES ('2','2026-03-16T17:57:51','muht','0','','2026-03-16T17:58:24','测试用户，牟昊天创建，勿删','','172.16.43.100','admin','$2a$10$jalWLuhGTBTZOnpt/gHP6.xo0pQRLtlkE8Fo7738rH8bejZsFzkPO','2026-03-16T17:58:23','00',106,'muht',100,'','','0');
INSERT INTO `sys_user`(`del_flag`,`create_time`,`user_name`,`sex`,`phonenumber`,`avatar`,`login_ip`,`create_by`,`password`,`user_type`,`user_id`,`nick_name`,`dept_id`,`update_by`,`email`,`status`) VALUES ('2','2026-03-17T17:24','按个','1','15100000000','','','admin','$2a$10$/fx341OxxaHC1A0Ab52r0.937TO37.wu.euWv1q/phIVubmNzpjLS','00',107,'负责老人专人护理 人员',201,'','','0');

####################
##  sys_user_post
####################
DROP TABLE IF EXISTS `sys_user_post`;

####################
##  table sys_user_post ddl
####################
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='用户与岗位关联表';

####################
##  sys_user_post data
####################

####################
##  sys_user_post data
####################
INSERT INTO `sys_user_post`(`post_id`,`user_id`) VALUES (1,1);

####################
##  sys_user_role
####################
DROP TABLE IF EXISTS `sys_user_role`;

####################
##  table sys_user_role ddl
####################
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='用户和角色关联表';

####################
##  sys_user_role data
####################

####################
##  sys_user_role data
####################
INSERT INTO `sys_user_role`(`user_id`,`role_id`) VALUES (1,1);
INSERT INTO `sys_user_role`(`user_id`,`role_id`) VALUES (100,102);
INSERT INTO `sys_user_role`(`user_id`,`role_id`) VALUES (101,102);
