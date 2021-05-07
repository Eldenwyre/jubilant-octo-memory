begin;
mysqldump: [Warning] Using a password on the command line interface can be insecure.
-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: 
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES UTF8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!50606 SET @OLD_INNODB_STATS_AUTO_RECALC=@@INNODB_STATS_AUTO_RECALC */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=OFF */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `mysql`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mysql` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mysql`;

--
-- Table structure for table `columns_priv`
--

DROP TABLE IF EXISTS `columns_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `columns_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Column_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Column privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columns_priv`
--

LOCK TABLES `columns_priv` WRITE;
/*!40000 ALTER TABLE `columns_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `columns_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component` (
  `component_id` int NOT NULL AUTO_INCREMENT,
  `component_group_id` int NOT NULL,
  `component_urn` text NOT NULL
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Components';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component`
--

LOCK TABLES `component` WRITE;
/*!40000 ALTER TABLE `component` DISABLE KEYS */;
/*!40000 ALTER TABLE `component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db`
--

DROP TABLE IF EXISTS `db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Insert_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Update_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Delete_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Drop_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Grant_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `References_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Index_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Alter_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Lock_tables_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_view_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Show_view_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_routine_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Alter_routine_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Execute_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Event_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Trigger_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  KEY `User` (`User`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Database privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db`
--

LOCK TABLES `db` WRITE;
/*!40000 ALTER TABLE `db` DISABLE KEYS */;
INSERT INTO `db` VALUES ('localhost','performance_schema','mysql.session','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N');
INSERT INTO `db` VALUES ('localhost','sys','mysql.sys','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y');
INSERT INTO `db` VALUES ('localhost','tech_forum','mysql.infoschema','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y');
/*!40000 ALTER TABLE `db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_roles`
--

DROP TABLE IF EXISTS `default_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_roles` (
  `HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DEFAULT_ROLE_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '%',
  `DEFAULT_ROLE_USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT ''
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Default roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_roles`
--

LOCK TABLES `default_roles` WRITE;
/*!40000 ALTER TABLE `default_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engine_cost`
--

DROP TABLE IF EXISTS `engine_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engine_cost` (
  `engine_name` varchar(64) NOT NULL,
  `device_type` int NOT NULL,
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  `default_value` float GENERATED ALWAYS AS ((case `cost_name` when _utf8mb3'io_block_read_cost' then 1.0 when _utf8mb3'memory_block_read_cost' then 0.25 else NULL end)) VIRTUAL
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine_cost`
--

LOCK TABLES `engine_cost` WRITE;
/*!40000 ALTER TABLE `engine_cost` DISABLE KEYS */;
INSERT INTO `engine_cost` (`engine_name`, `device_type`, `cost_name`, `cost_value`, `last_update`, `comment`) VALUES ('default',0,'io_block_read_cost',NULL,'2021-05-01 05:23:20',NULL);
INSERT INTO `engine_cost` ('default',0,'memory_block_read_cost',NULL,'2021-05-01 05:23:20',NULL);
/*!40000 ALTER TABLE `engine_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `func`
--

DROP TABLE IF EXISTS `func`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `func` (
  `name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ret` tinyint NOT NULL DEFAULT '0',
  `dl` char(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='User defined functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `func`
--

LOCK TABLES `func` WRITE;
/*!40000 ALTER TABLE `func` DISABLE KEYS */;
/*!40000 ALTER TABLE `func` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_grants`
--

DROP TABLE IF EXISTS `global_grants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_grants` (
  `USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `PRIV` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `WITH_GRANT_OPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N'
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Extended global grants';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_grants`
--

LOCK TABLES `global_grants` WRITE;
/*!40000 ALTER TABLE `global_grants` DISABLE KEYS */;
INSERT INTO `global_grants` VALUES ('mysql.session','localhost','BACKUP_ADMIN','N');
INSERT INTO `global_grants` VALUES ('mysql.session','localhost','CLONE_ADMIN','N');
INSERT INTO `global_grants` VALUES ('mysql.session','localhost','CONNECTION_ADMIN','N');
INSERT INTO `global_grants` VALUES ('mysql.session','localhost','PERSIST_RO_VARIABLES_ADMIN','N');
INSERT INTO `global_grants` VALUES ('mysql.session','localhost','SESSION_VARIABLES_ADMIN','N');
INSERT INTO `global_grants` VALUES ('mysql.session','localhost','SYSTEM_USER','N');
INSERT INTO `global_grants` VALUES ('mysql.session','localhost','SYSTEM_VARIABLES_ADMIN','N');
INSERT INTO `global_grants` VALUES ('mysql.sys','localhost','SYSTEM_USER','N');
INSERT INTO `global_grants` VALUES ('root','%','APPLICATION_PASSWORD_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','%','AUDIT_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','%','BACKUP_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','%','BINLOG_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','%','BINLOG_ENCRYPTION_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','%','CLONE_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','%','CONNECTION_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','%','ENCRYPTION_KEY_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','%','FLUSH_OPTIMIZER_COSTS','Y');
INSERT INTO `global_grants` VALUES ('root','%','FLUSH_STATUS','Y');
INSERT INTO `global_grants` VALUES ('root','%','FLUSH_TABLES','Y');
INSERT INTO `global_grants` VALUES ('root','%','FLUSH_USER_RESOURCES','Y');
INSERT INTO `global_grants` VALUES ('root','%','GROUP_REPLICATION_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','%','INNODB_REDO_LOG_ARCHIVE','Y');
INSERT INTO `global_grants` VALUES ('root','%','INNODB_REDO_LOG_ENABLE','Y');
INSERT INTO `global_grants` VALUES ('root','%','PERSIST_RO_VARIABLES_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','%','REPLICATION_APPLIER','Y');
INSERT INTO `global_grants` VALUES ('root','%','REPLICATION_SLAVE_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','%','RESOURCE_GROUP_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','%','RESOURCE_GROUP_USER','Y');
INSERT INTO `global_grants` VALUES ('root','%','ROLE_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','%','SERVICE_CONNECTION_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','%','SESSION_VARIABLES_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','%','SET_USER_ID','Y');
INSERT INTO `global_grants` VALUES ('root','%','SHOW_ROUTINE','Y');
INSERT INTO `global_grants` VALUES ('root','%','SYSTEM_USER','Y');
INSERT INTO `global_grants` VALUES ('root','%','SYSTEM_VARIABLES_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','%','TABLE_ENCRYPTION_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','%','XA_RECOVER_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','APPLICATION_PASSWORD_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','AUDIT_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','BACKUP_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','BINLOG_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','BINLOG_ENCRYPTION_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','CLONE_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','CONNECTION_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','ENCRYPTION_KEY_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','FLUSH_OPTIMIZER_COSTS','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','FLUSH_STATUS','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','FLUSH_TABLES','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','FLUSH_USER_RESOURCES','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','GROUP_REPLICATION_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','INNODB_REDO_LOG_ARCHIVE','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','INNODB_REDO_LOG_ENABLE','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','PERSIST_RO_VARIABLES_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','REPLICATION_APPLIER','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','REPLICATION_SLAVE_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','RESOURCE_GROUP_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','RESOURCE_GROUP_USER','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','ROLE_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','SERVICE_CONNECTION_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','SESSION_VARIABLES_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','SET_USER_ID','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','SHOW_ROUTINE','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','SYSTEM_USER','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','SYSTEM_VARIABLES_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','TABLE_ENCRYPTION_ADMIN','Y');
INSERT INTO `global_grants` VALUES ('root','localhost','XA_RECOVER_ADMIN','Y');
/*!40000 ALTER TABLE `global_grants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gtid_executed`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `gtid_executed` (
  `source_uuid` char(36) NOT NULL COMMENT 'uuid of the source where the transaction was originally executed.',
  `interval_start` bigint NOT NULL COMMENT 'First number of interval.',
  `interval_end` bigint NOT NULL COMMENT 'Last number of interval.'
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `help_category`
--

DROP TABLE IF EXISTS `help_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_category` (
  `help_category_id` smallint NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint DEFAULT NULL,
  `url` text NOT NULL,
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_category`
--

LOCK TABLES `help_category` WRITE;
/*!40000 ALTER TABLE `help_category` DISABLE KEYS */;
INSERT INTO `help_category` VALUES (0,'Contents',0,'');
INSERT INTO `help_category` VALUES (1,'Help Metadata',0,'');
INSERT INTO `help_category` VALUES (2,'Data Types',0,'');
INSERT INTO `help_category` VALUES (3,'Administration',0,'');
INSERT INTO `help_category` VALUES (4,'Functions',0,'');
INSERT INTO `help_category` VALUES (5,'Enterprise Encryption Functions',4,'');
INSERT INTO `help_category` VALUES (6,'Language Structure',0,'');
INSERT INTO `help_category` VALUES (7,'Geographic Features',0,'');
INSERT INTO `help_category` VALUES (8,'MBR',7,'');
INSERT INTO `help_category` VALUES (9,'WKT',7,'');
INSERT INTO `help_category` VALUES (10,'Comparison Operators',4,'');
INSERT INTO `help_category` VALUES (11,'Logical Operators',4,'');
INSERT INTO `help_category` VALUES (12,'Flow Control Functions',4,'');
INSERT INTO `help_category` VALUES (13,'Numeric Functions',4,'');
INSERT INTO `help_category` VALUES (14,'Date and Time Functions',4,'');
INSERT INTO `help_category` VALUES (15,'String Functions',4,'');
INSERT INTO `help_category` VALUES (16,'Cast Functions and Operators',4,'');
INSERT INTO `help_category` VALUES (17,'XML',4,'');
INSERT INTO `help_category` VALUES (18,'Bit Functions',4,'');
INSERT INTO `help_category` VALUES (19,'Encryption Functions',4,'');
INSERT INTO `help_category` VALUES (20,'Locking Functions',4,'');
INSERT INTO `help_category` VALUES (21,'Information Functions',4,'');
INSERT INTO `help_category` VALUES (22,'Spatial Functions',4,'');
INSERT INTO `help_category` VALUES (23,'WKT Functions',22,'');
INSERT INTO `help_category` VALUES (24,'WKB Functions',22,'');
INSERT INTO `help_category` VALUES (25,'Geometry Constructors',22,'');
INSERT INTO `help_category` VALUES (26,'Geometry Property Functions',22,'');
INSERT INTO `help_category` VALUES (27,'Point Property Functions',22,'');
INSERT INTO `help_category` VALUES (28,'LineString Property Functions',22,'');
INSERT INTO `help_category` VALUES (29,'Polygon Property Functions',22,'');
INSERT INTO `help_category` VALUES (30,'GeometryCollection Property Functions',22,'');
INSERT INTO `help_category` VALUES (31,'Geometry Relation Functions',22,'');
INSERT INTO `help_category` VALUES (32,'MBR Functions',22,'');
INSERT INTO `help_category` VALUES (33,'GTID',4,'');
INSERT INTO `help_category` VALUES (34,'Aggregate Functions and Modifiers',4,'');
INSERT INTO `help_category` VALUES (35,'GROUP BY Functions and Modifiers',4,'');
INSERT INTO `help_category` VALUES (36,'Window Functions',4,'');
INSERT INTO `help_category` VALUES (37,'Performance Schema Functions',4,'');
INSERT INTO `help_category` VALUES (38,'Internal Functions',4,'');
INSERT INTO `help_category` VALUES (39,'Miscellaneous Functions',4,'');
INSERT INTO `help_category` VALUES (40,'Data Definition',0,'');
INSERT INTO `help_category` VALUES (41,'Data Manipulation',0,'');
INSERT INTO `help_category` VALUES (42,'Transactions',0,'');
INSERT INTO `help_category` VALUES (43,'Compound Statements',0,'');
INSERT INTO `help_category` VALUES (44,'Account Management',0,'');
INSERT INTO `help_category` VALUES (45,'Table Maintenance',0,'');
INSERT INTO `help_category` VALUES (46,'User-Defined Functions',0,'');
INSERT INTO `help_category` VALUES (47,'Components',0,'');
INSERT INTO `help_category` VALUES (48,'Plugins',0,'');
INSERT INTO `help_category` VALUES (49,'Utility',0,'');
INSERT INTO `help_category` VALUES (50,'Storage Engines',0,'');
/*!40000 ALTER TABLE `help_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int NOT NULL,
  `name` char(64) NOT NULL,
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help keywords';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_keyword`
--

LOCK TABLES `help_keyword` WRITE;
/*!40000 ALTER TABLE `help_keyword` DISABLE KEYS */;
INSERT INTO `help_keyword` VALUES (108,'%');
INSERT INTO `help_keyword` VALUES (264,'&');
INSERT INTO `help_keyword` VALUES (421,'(JSON');
INSERT INTO `help_keyword` VALUES (86,'*');
INSERT INTO `help_keyword` VALUES (84,'+');
INSERT INTO `help_keyword` VALUES (85,'-');
INSERT INTO `help_keyword` VALUES (422,'->');
INSERT INTO `help_keyword` VALUES (424,'->>');
INSERT INTO `help_keyword` VALUES (87,'/');
INSERT INTO `help_keyword` VALUES (75,':=');
INSERT INTO `help_keyword` VALUES (59,'<');
INSERT INTO `help_keyword` VALUES (266,'<<');
INSERT INTO `help_keyword` VALUES (58,'<=');
INSERT INTO `help_keyword` VALUES (56,'<=>');
INSERT INTO `help_keyword` VALUES (57,'<>');
INSERT INTO `help_keyword` VALUES (55,'=');
INSERT INTO `help_keyword` VALUES (61,'>');
INSERT INTO `help_keyword` VALUES (60,'>=');
INSERT INTO `help_keyword` VALUES (267,'>>');
INSERT INTO `help_keyword` VALUES (90,'ABS');
INSERT INTO `help_keyword` VALUES (851,'ACCOUNT');
INSERT INTO `help_keyword` VALUES (91,'ACOS');
INSERT INTO `help_keyword` VALUES (655,'ACTION');
INSERT INTO `help_keyword` VALUES (49,'ADD');
INSERT INTO `help_keyword` VALUES (120,'ADDDATE');
INSERT INTO `help_keyword` VALUES (121,'ADDTIME');
INSERT INTO `help_keyword` VALUES (877,'ADMIN');
INSERT INTO `help_keyword` VALUES (270,'AES_DECRYPT');
INSERT INTO `help_keyword` VALUES (271,'AES_ENCRYPT');
INSERT INTO `help_keyword` VALUES (578,'AFTER');
INSERT INTO `help_keyword` VALUES (247,'AGAINST');
INSERT INTO `help_keyword` VALUES (898,'AGGREGATE');
INSERT INTO `help_keyword` VALUES (579,'ALGORITHM');
INSERT INTO `help_keyword` VALUES (718,'ALL');
INSERT INTO `help_keyword` VALUES (50,'ALTER');
INSERT INTO `help_keyword` VALUES (580,'ANALYZE');
INSERT INTO `help_keyword` VALUES (62,'AND');
INSERT INTO `help_keyword` VALUES (525,'ANY_VALUE');
INSERT INTO `help_keyword` VALUES (656,'ARCHIVE');
INSERT INTO `help_keyword` VALUES (254,'ARRAY');
INSERT INTO `help_keyword` VALUES (719,'AS');
INSERT INTO `help_keyword` VALUES (463,'ASC');
INSERT INTO `help_keyword` VALUES (185,'ASCII');
INSERT INTO `help_keyword` VALUES (92,'ASIN');
INSERT INTO `help_keyword` VALUES (6,'ASYMMETRIC_DECRYPT');
INSERT INTO `help_keyword` VALUES (7,'ASYMMETRIC_DERIVE');
INSERT INTO `help_keyword` VALUES (8,'ASYMMETRIC_ENCRYPT');
INSERT INTO `help_keyword` VALUES (9,'ASYMMETRIC_SIGN');
INSERT INTO `help_keyword` VALUES (10,'ASYMMETRIC_VERIFY');
INSERT INTO `help_keyword` VALUES (639,'AT');
INSERT INTO `help_keyword` VALUES (93,'ATAN');
INSERT INTO `help_keyword` VALUES (94,'ATAN2');
INSERT INTO `help_keyword` VALUES (852,'ATTRIBUTE');
INSERT INTO `help_keyword` VALUES (740,'AUTOCOMMIT');
INSERT INTO `help_keyword` VALUES (678,'AUTOEXTEND_SIZE');
INSERT INTO `help_keyword` VALUES (581,'AUTO_INCREMENT');
INSERT INTO `help_keyword` VALUES (457,'AVG');
INSERT INTO `help_keyword` VALUES (582,'AVG_ROW_LENGTH');
INSERT INTO `help_keyword` VALUES (752,'BACKUP');
INSERT INTO `help_keyword` VALUES (766,'BEFORE');
INSERT INTO `help_keyword` VALUES (741,'BEGIN');
INSERT INTO `help_keyword` VALUES (288,'BENCHMARK');
INSERT INTO `help_keyword` VALUES (63,'BETWEEN');
INSERT INTO `help_keyword` VALUES (186,'BIN');
INSERT INTO `help_keyword` VALUES (253,'BINARY');
INSERT INTO `help_keyword` VALUES (561,'BINLOG');
INSERT INTO `help_keyword` VALUES (526,'BIN_TO_UUID');
INSERT INTO `help_keyword` VALUES (459,'BIT_AND');
INSERT INTO `help_keyword` VALUES (269,'BIT_COUNT');
INSERT INTO `help_keyword` VALUES (187,'BIT_LENGTH');
INSERT INTO `help_keyword` VALUES (460,'BIT_OR');
INSERT INTO `help_keyword` VALUES (461,'BIT_XOR');
INSERT INTO `help_keyword` VALUES (17,'BOOL');
INSERT INTO `help_keyword` VALUES (18,'BOOLEAN');
INSERT INTO `help_keyword` VALUES (230,'BOTH');
INSERT INTO `help_keyword` VALUES (643,'BTREE');
INSERT INTO `help_keyword` VALUES (464,'BY');
INSERT INTO `help_keyword` VALUES (42,'BYTE');
INSERT INTO `help_keyword` VALUES (933,'CACHE');
INSERT INTO `help_keyword` VALUES (686,'CALL');
INSERT INTO `help_keyword` VALUES (496,'CAN_ACCESS_COLUMN');
INSERT INTO `help_keyword` VALUES (497,'CAN_ACCESS_DATABASE');
INSERT INTO `help_keyword` VALUES (498,'CAN_ACCESS_TABLE');
INSERT INTO `help_keyword` VALUES (499,'CAN_ACCESS_USER');
INSERT INTO `help_keyword` VALUES (500,'CAN_ACCESS_VIEW');
INSERT INTO `help_keyword` VALUES (657,'CASCADE');
INSERT INTO `help_keyword` VALUES (76,'CASE');
INSERT INTO `help_keyword` VALUES (255,'CAST');
INSERT INTO `help_keyword` VALUES (832,'CATALOG_NAME');
INSERT INTO `help_keyword` VALUES (95,'CEIL');
INSERT INTO `help_keyword` VALUES (96,'CEILING');
INSERT INTO `help_keyword` VALUES (742,'CHAIN');
INSERT INTO `help_keyword` VALUES (583,'CHANGE');
INSERT INTO `help_keyword` VALUES (562,'CHANNEL');
INSERT INTO `help_keyword` VALUES (43,'CHAR');
INSERT INTO `help_keyword` VALUES (39,'CHARACTER');
INSERT INTO `help_keyword` VALUES (189,'CHARACTER_LENGTH');
INSERT INTO `help_keyword` VALUES (289,'CHARSET');
INSERT INTO `help_keyword` VALUES (188,'CHAR_LENGTH');
INSERT INTO `help_keyword` VALUES (584,'CHECK');
INSERT INTO `help_keyword` VALUES (585,'CHECKSUM');
INSERT INTO `help_keyword` VALUES (853,'CIPHER');
INSERT INTO `help_keyword` VALUES (833,'CLASS_ORIGIN');
INSERT INTO `help_keyword` VALUES (878,'CLIENT');
INSERT INTO `help_keyword` VALUES (906,'CLONE');
INSERT INTO `help_keyword` VALUES (692,'CLOSE');
INSERT INTO `help_keyword` VALUES (65,'COALESCE');
INSERT INTO `help_keyword` VALUES (927,'CODE');
INSERT INTO `help_keyword` VALUES (290,'COERCIBILITY');
INSERT INTO `help_keyword` VALUES (544,'COLLATE');
INSERT INTO `help_keyword` VALUES (291,'COLLATION');
INSERT INTO `help_keyword` VALUES (586,'COLUMN');
INSERT INTO `help_keyword` VALUES (587,'COLUMNS');
INSERT INTO `help_keyword` VALUES (834,'COLUMN_NAME');
INSERT INTO `help_keyword` VALUES (549,'COMMENT');
INSERT INTO `help_keyword` VALUES (743,'COMMIT');
INSERT INTO `help_keyword` VALUES (755,'COMMITTED');
INSERT INTO `help_keyword` VALUES (658,'COMPACT');
INSERT INTO `help_keyword` VALUES (550,'COMPLETION');
INSERT INTO `help_keyword` VALUES (902,'COMPONENT');
INSERT INTO `help_keyword` VALUES (272,'COMPRESS');
INSERT INTO `help_keyword` VALUES (659,'COMPRESSED');
INSERT INTO `help_keyword` VALUES (588,'COMPRESSION');
INSERT INTO `help_keyword` VALUES (190,'CONCAT');
INSERT INTO `help_keyword` VALUES (191,'CONCAT_WS');
INSERT INTO `help_keyword` VALUES (705,'CONCURRENT');
INSERT INTO `help_keyword` VALUES (829,'CONDITION');
INSERT INTO `help_keyword` VALUES (589,'CONNECTION');
INSERT INTO `help_keyword` VALUES (292,'CONNECTION_ID');
INSERT INTO `help_keyword` VALUES (744,'CONSISTENT');
INSERT INTO `help_keyword` VALUES (590,'CONSTRAINT');
INSERT INTO `help_keyword` VALUES (835,'CONSTRAINT_CATALOG');
INSERT INTO `help_keyword` VALUES (836,'CONSTRAINT_NAME');
INSERT INTO `help_keyword` VALUES (837,'CONSTRAINT_SCHEMA');
INSERT INTO `help_keyword` VALUES (830,'CONTINUE');
INSERT INTO `help_keyword` VALUES (97,'CONV');
INSERT INTO `help_keyword` VALUES (256,'CONVERT');
INSERT INTO `help_keyword` VALUES (122,'CONVERT_TZ');
INSERT INTO `help_keyword` VALUES (98,'COS');
INSERT INTO `help_keyword` VALUES (99,'COT');
INSERT INTO `help_keyword` VALUES (462,'COUNT');
INSERT INTO `help_keyword` VALUES (100,'CRC32');
INSERT INTO `help_keyword` VALUES (51,'CREATE');
INSERT INTO `help_keyword` VALUES (11,'CREATE_ASYMMETRIC_PRIV_KEY');
INSERT INTO `help_keyword` VALUES (12,'CREATE_ASYMMETRIC_PUB_KEY');
INSERT INTO `help_keyword` VALUES (13,'CREATE_DH_PARAMETERS');
INSERT INTO `help_keyword` VALUES (14,'CREATE_DIGEST');
INSERT INTO `help_keyword` VALUES (735,'CROSS');
INSERT INTO `help_keyword` VALUES (660,'CSV');
INSERT INTO `help_keyword` VALUES (481,'CUME_DIST');
INSERT INTO `help_keyword` VALUES (123,'CURDATE');
INSERT INTO `help_keyword` VALUES (854,'CURRENT');
INSERT INTO `help_keyword` VALUES (124,'CURRENT_DATE');
INSERT INTO `help_keyword` VALUES (293,'CURRENT_ROLE');
INSERT INTO `help_keyword` VALUES (125,'CURRENT_TIME');
INSERT INTO `help_keyword` VALUES (126,'CURRENT_TIMESTAMP');
INSERT INTO `help_keyword` VALUES (294,'CURRENT_USER');
INSERT INTO `help_keyword` VALUES (827,'CURSOR');
INSERT INTO `help_keyword` VALUES (838,'CURSOR_NAME');
INSERT INTO `help_keyword` VALUES (127,'CURTIME');
INSERT INTO `help_keyword` VALUES (591,'DATA');
INSERT INTO `help_keyword` VALUES (295,'DATABASE');
INSERT INTO `help_keyword` VALUES (911,'DATABASES');
INSERT INTO `help_keyword` VALUES (632,'DATAFILE');
INSERT INTO `help_keyword` VALUES (36,'DATE');
INSERT INTO `help_keyword` VALUES (128,'DATEDIFF');
INSERT INTO `help_keyword` VALUES (257,'DATETIME');
INSERT INTO `help_keyword` VALUES (129,'DATE_ADD');
INSERT INTO `help_keyword` VALUES (144,'DATE_FORMAT');
INSERT INTO `help_keyword` VALUES (130,'DATE_SUB');
INSERT INTO `help_keyword` VALUES (131,'DAY');
INSERT INTO `help_keyword` VALUES (145,'DAYNAME');
INSERT INTO `help_keyword` VALUES (146,'DAYOFMONTH');
INSERT INTO `help_keyword` VALUES (147,'DAYOFWEEK');
INSERT INTO `help_keyword` VALUES (148,'DAYOFYEAR');
INSERT INTO `help_keyword` VALUES (132,'DAY_HOUR');
INSERT INTO `help_keyword` VALUES (133,'DAY_MINUTE');
INSERT INTO `help_keyword` VALUES (134,'DAY_SECOND');
INSERT INTO `help_keyword` VALUES (818,'DEALLOCATE');
INSERT INTO `help_keyword` VALUES (28,'DEC');
INSERT INTO `help_keyword` VALUES (31,'DECIMAL');
INSERT INTO `help_keyword` VALUES (819,'DECLARE');
INSERT INTO `help_keyword` VALUES (2,'DEFAULT');
INSERT INTO `help_keyword` VALUES (809,'DEFAULT_AUTH');
INSERT INTO `help_keyword` VALUES (551,'DEFINER');
INSERT INTO `help_keyword` VALUES (649,'DEFINITION');
INSERT INTO `help_keyword` VALUES (101,'DEGREES');
INSERT INTO `help_keyword` VALUES (698,'DELAYED');
INSERT INTO `help_keyword` VALUES (592,'DELAY_KEY_WRITE');
INSERT INTO `help_keyword` VALUES (661,'DELETE');
INSERT INTO `help_keyword` VALUES (482,'DENSE_RANK');
INSERT INTO `help_keyword` VALUES (465,'DESC');
INSERT INTO `help_keyword` VALUES (944,'DESCRIBE');
INSERT INTO `help_keyword` VALUES (650,'DESCRIPTION');
INSERT INTO `help_keyword` VALUES (839,'DIAGNOSTICS');
INSERT INTO `help_keyword` VALUES (593,'DIRECTORY');
INSERT INTO `help_keyword` VALUES (552,'DISABLE');
INSERT INTO `help_keyword` VALUES (594,'DISCARD');
INSERT INTO `help_keyword` VALUES (458,'DISTINCT');
INSERT INTO `help_keyword` VALUES (720,'DISTINCTROW');
INSERT INTO `help_keyword` VALUES (88,'DIV');
INSERT INTO `help_keyword` VALUES (553,'DO');
INSERT INTO `help_keyword` VALUES (595,'DROP');
INSERT INTO `help_keyword` VALUES (734,'DUAL');
INSERT INTO `help_keyword` VALUES (721,'DUMPFILE');
INSERT INTO `help_keyword` VALUES (699,'DUPLICATE');
INSERT INTO `help_keyword` VALUES (662,'DYNAMIC');
INSERT INTO `help_keyword` VALUES (77,'ELSE');
INSERT INTO `help_keyword` VALUES (820,'ELSEIF');
INSERT INTO `help_keyword` VALUES (192,'ELT');
INSERT INTO `help_keyword` VALUES (554,'ENABLE');
INSERT INTO `help_keyword` VALUES (706,'ENCLOSED');
INSERT INTO `help_keyword` VALUES (545,'ENCRYPTION');
INSERT INTO `help_keyword` VALUES (78,'END');
INSERT INTO `help_keyword` VALUES (640,'ENDS');
INSERT INTO `help_keyword` VALUES (596,'ENGINE');
INSERT INTO `help_keyword` VALUES (912,'ENGINES');
INSERT INTO `help_keyword` VALUES (563,'ERROR');
INSERT INTO `help_keyword` VALUES (913,'ERRORS');
INSERT INTO `help_keyword` VALUES (239,'ESCAPE');
INSERT INTO `help_keyword` VALUES (707,'ESCAPED');
INSERT INTO `help_keyword` VALUES (555,'EVENT');
INSERT INTO `help_keyword` VALUES (925,'EVENTS');
INSERT INTO `help_keyword` VALUES (641,'EVERY');
INSERT INTO `help_keyword` VALUES (889,'EXCEPT');
INSERT INTO `help_keyword` VALUES (597,'EXCHANGE');
INSERT INTO `help_keyword` VALUES (817,'EXECUTE');
INSERT INTO `help_keyword` VALUES (638,'EXISTS');
INSERT INTO `help_keyword` VALUES (831,'EXIT');
INSERT INTO `help_keyword` VALUES (102,'EXP');
INSERT INTO `help_keyword` VALUES (248,'EXPANSION');
INSERT INTO `help_keyword` VALUES (855,'EXPIRE');
INSERT INTO `help_keyword` VALUES (945,'EXPLAIN');
INSERT INTO `help_keyword` VALUES (934,'EXPORT');
INSERT INTO `help_keyword` VALUES (193,'EXPORT_SET');
INSERT INTO `help_keyword` VALUES (896,'EXTENDED');
INSERT INTO `help_keyword` VALUES (679,'EXTENT_SIZE');
INSERT INTO `help_keyword` VALUES (149,'EXTRACT');
INSERT INTO `help_keyword` VALUES (423,'EXTRACTION)');
INSERT INTO `help_keyword` VALUES (261,'EXTRACTVALUE');
INSERT INTO `help_keyword` VALUES (856,'FAILED_LOGIN_ATTEMPTS');
INSERT INTO `help_keyword` VALUES (15,'FALSE');
INSERT INTO `help_keyword` VALUES (894,'FAST');
INSERT INTO `help_keyword` VALUES (663,'FEDERATED');
INSERT INTO `help_keyword` VALUES (828,'FETCH');
INSERT INTO `help_keyword` VALUES (194,'FIELD');
INSERT INTO `help_keyword` VALUES (708,'FIELDS');
INSERT INTO `help_keyword` VALUES (879,'FILE');
INSERT INTO `help_keyword` VALUES (680,'FILE_BLOCK_SIZE');
INSERT INTO `help_keyword` VALUES (799,'FILTER');
INSERT INTO `help_keyword` VALUES (195,'FIND_IN_SET');
INSERT INTO `help_keyword` VALUES (598,'FIRST');
INSERT INTO `help_keyword` VALUES (483,'FIRST_VALUE');
INSERT INTO `help_keyword` VALUES (29,'FIXED');
INSERT INTO `help_keyword` VALUES (32,'FLOAT4');
INSERT INTO `help_keyword` VALUES (33,'FLOAT8');
INSERT INTO `help_keyword` VALUES (103,'FLOOR');
INSERT INTO `help_keyword` VALUES (935,'FLUSH');
INSERT INTO `help_keyword` VALUES (564,'FOR');
INSERT INTO `help_keyword` VALUES (736,'FORCE');
INSERT INTO `help_keyword` VALUES (599,'FOREIGN');
INSERT INTO `help_keyword` VALUES (196,'FORMAT');
INSERT INTO `help_keyword` VALUES (492,'FORMAT_BYTES');
INSERT INTO `help_keyword` VALUES (493,'FORMAT_PICO_TIME');
INSERT INTO `help_keyword` VALUES (296,'FOUND_ROWS');
INSERT INTO `help_keyword` VALUES (231,'FROM');
INSERT INTO `help_keyword` VALUES (197,'FROM_BASE64');
INSERT INTO `help_keyword` VALUES (150,'FROM_DAYS');
INSERT INTO `help_keyword` VALUES (151,'FROM_UNIXTIME');
INSERT INTO `help_keyword` VALUES (664,'FULL');
INSERT INTO `help_keyword` VALUES (600,'FULLTEXT');
INSERT INTO `help_keyword` VALUES (169,'FUNCTION');
INSERT INTO `help_keyword` VALUES (936,'GENERAL');
INSERT INTO `help_keyword` VALUES (336,'GEOMCOLLECTION');
INSERT INTO `help_keyword` VALUES (337,'GEOMETRYCOLLECTION');
INSERT INTO `help_keyword` VALUES (840,'GET');
INSERT INTO `help_keyword` VALUES (501,'GET_DD_COLUMN_PRIVILEGES');
INSERT INTO `help_keyword` VALUES (502,'GET_DD_CREATE_OPTIONS');
INSERT INTO `help_keyword` VALUES (503,'GET_DD_INDEX_SUB_PART_LENGTH');
INSERT INTO `help_keyword` VALUES (152,'GET_FORMAT');
INSERT INTO `help_keyword` VALUES (283,'GET_LOCK');
INSERT INTO `help_keyword` VALUES (756,'GLOBAL');
INSERT INTO `help_keyword` VALUES (880,'GRANT');
INSERT INTO `help_keyword` VALUES (914,'GRANTS');
INSERT INTO `help_keyword` VALUES (66,'GREATEST');
INSERT INTO `help_keyword` VALUES (573,'GROUP');
INSERT INTO `help_keyword` VALUES (527,'GROUPING');
INSERT INTO `help_keyword` VALUES (466,'GROUP_CONCAT');
INSERT INTO `help_keyword` VALUES (453,'GTID_SUBSET');
INSERT INTO `help_keyword` VALUES (454,'GTID_SUBTRACT');
INSERT INTO `help_keyword` VALUES (693,'HANDLER');
INSERT INTO `help_keyword` VALUES (722,'HAVING');
INSERT INTO `help_keyword` VALUES (665,'HEAP');
INSERT INTO `help_keyword` VALUES (5,'HELP');
INSERT INTO `help_keyword` VALUES (0,'HELP_DATE');
INSERT INTO `help_keyword` VALUES (1,'HELP_VERSION');
INSERT INTO `help_keyword` VALUES (198,'HEX');
INSERT INTO `help_keyword` VALUES (700,'HIGH_PRIORITY');
INSERT INTO `help_keyword` VALUES (857,'HISTORY');
INSERT INTO `help_keyword` VALUES (644,'HOST');
INSERT INTO `help_keyword` VALUES (915,'HOSTS');
INSERT INTO `help_keyword` VALUES (135,'HOUR');
INSERT INTO `help_keyword` VALUES (136,'HOUR_MINUTE');
INSERT INTO `help_keyword` VALUES (137,'HOUR_SECOND');
INSERT INTO `help_keyword` VALUES (297,'ICU_VERSION');
INSERT INTO `help_keyword` VALUES (716,'IDENTIFIED');
INSERT INTO `help_keyword` VALUES (81,'IF');
INSERT INTO `help_keyword` VALUES (82,'IFNULL');
INSERT INTO `help_keyword` VALUES (701,'IGNORE');
INSERT INTO `help_keyword` VALUES (771,'IGNORE_SERVER_IDS');
INSERT INTO `help_keyword` VALUES (601,'IMPORT');
INSERT INTO `help_keyword` VALUES (67,'IN');
INSERT INTO `help_keyword` VALUES (52,'INDEX');
INSERT INTO `help_keyword` VALUES (916,'INDEXES');
INSERT INTO `help_keyword` VALUES (530,'INET6_ATON');
INSERT INTO `help_keyword` VALUES (531,'INET6_NTOA');
INSERT INTO `help_keyword` VALUES (528,'INET_ATON');
INSERT INTO `help_keyword` VALUES (529,'INET_NTOA');
INSERT INTO `help_keyword` VALUES (709,'INFILE');
INSERT INTO `help_keyword` VALUES (633,'INITIAL_SIZE');
INSERT INTO `help_keyword` VALUES (425,'INLINE');
INSERT INTO `help_keyword` VALUES (737,'INNER');
INSERT INTO `help_keyword` VALUES (565,'INNODB');
INSERT INTO `help_keyword` VALUES (199,'INSERT');
INSERT INTO `help_keyword` VALUES (602,'INSERT_METHOD');
INSERT INTO `help_keyword` VALUES (903,'INSTALL');
INSERT INTO `help_keyword` VALUES (566,'INSTANCE');
INSERT INTO `help_keyword` VALUES (200,'INSTR');
INSERT INTO `help_keyword` VALUES (19,'INT1');
INSERT INTO `help_keyword` VALUES (22,'INT2');
INSERT INTO `help_keyword` VALUES (23,'INT3');
INSERT INTO `help_keyword` VALUES (25,'INT4');
INSERT INTO `help_keyword` VALUES (27,'INT8');
INSERT INTO `help_keyword` VALUES (26,'INTEGER');
INSERT INTO `help_keyword` VALUES (504,'INTERNAL_AUTO_INCREMENT');
INSERT INTO `help_keyword` VALUES (505,'INTERNAL_AVG_ROW_LENGTH');
INSERT INTO `help_keyword` VALUES (507,'INTERNAL_CHECKSUM');
INSERT INTO `help_keyword` VALUES (506,'INTERNAL_CHECK_TIME');
INSERT INTO `help_keyword` VALUES (508,'INTERNAL_DATA_FREE');
INSERT INTO `help_keyword` VALUES (509,'INTERNAL_DATA_LENGTH');
INSERT INTO `help_keyword` VALUES (510,'INTERNAL_DD_CHAR_LENGTH');
INSERT INTO `help_keyword` VALUES (511,'INTERNAL_GET_COMMENT_OR_ERROR');
INSERT INTO `help_keyword` VALUES (512,'INTERNAL_GET_ENABLED_ROLE_JSON');
INSERT INTO `help_keyword` VALUES (513,'INTERNAL_GET_HOSTNAME');
INSERT INTO `help_keyword` VALUES (514,'INTERNAL_GET_USERNAME');
INSERT INTO `help_keyword` VALUES (515,'INTERNAL_GET_VIEW_WARNING_OR_ERROR');
INSERT INTO `help_keyword` VALUES (516,'INTERNAL_INDEX_COLUMN_CARDINALITY');
INSERT INTO `help_keyword` VALUES (517,'INTERNAL_INDEX_LENGTH');
INSERT INTO `help_keyword` VALUES (518,'INTERNAL_IS_ENABLED_ROLE');
INSERT INTO `help_keyword` VALUES (519,'INTERNAL_IS_MANDATORY_ROLE');
INSERT INTO `help_keyword` VALUES (520,'INTERNAL_KEYS_DISABLED');
INSERT INTO `help_keyword` VALUES (521,'INTERNAL_MAX_DATA_LENGTH');
INSERT INTO `help_keyword` VALUES (522,'INTERNAL_TABLE_ROWS');
INSERT INTO `help_keyword` VALUES (523,'INTERNAL_UPDATE_TIME');
INSERT INTO `help_keyword` VALUES (68,'INTERVAL');
INSERT INTO `help_keyword` VALUES (702,'INTO');
INSERT INTO `help_keyword` VALUES (603,'INVISIBLE');
INSERT INTO `help_keyword` VALUES (810,'IO_THREAD');
INSERT INTO `help_keyword` VALUES (69,'IS');
INSERT INTO `help_keyword` VALUES (71,'ISNULL');
INSERT INTO `help_keyword` VALUES (757,'ISOLATION');
INSERT INTO `help_keyword` VALUES (858,'ISSUER');
INSERT INTO `help_keyword` VALUES (284,'IS_FREE_LOCK');
INSERT INTO `help_keyword` VALUES (532,'IS_IPV4');
INSERT INTO `help_keyword` VALUES (533,'IS_IPV4_COMPAT');
INSERT INTO `help_keyword` VALUES (534,'IS_IPV4_MAPPED');
INSERT INTO `help_keyword` VALUES (535,'IS_IPV6');
INSERT INTO `help_keyword` VALUES (285,'IS_USED_LOCK');
INSERT INTO `help_keyword` VALUES (536,'IS_UUID');
INSERT INTO `help_keyword` VALUES (524,'IS_VISIBLE_DD_OBJECT');
INSERT INTO `help_keyword` VALUES (821,'ITERATE');
INSERT INTO `help_keyword` VALUES (723,'JOIN');
INSERT INTO `help_keyword` VALUES (259,'JSON');
INSERT INTO `help_keyword` VALUES (415,'JSON_ARRAY');
INSERT INTO `help_keyword` VALUES (469,'JSON_ARRAYAGG');
INSERT INTO `help_keyword` VALUES (433,'JSON_ARRAY_APPEND');
INSERT INTO `help_keyword` VALUES (434,'JSON_ARRAY_INSERT');
INSERT INTO `help_keyword` VALUES (418,'JSON_CONTAINS');
INSERT INTO `help_keyword` VALUES (419,'JSON_CONTAINS_PATH');
INSERT INTO `help_keyword` VALUES (443,'JSON_DEPTH');
INSERT INTO `help_keyword` VALUES (420,'JSON_EXTRACT');
INSERT INTO `help_keyword` VALUES (435,'JSON_INSERT');
INSERT INTO `help_keyword` VALUES (427,'JSON_KEYS');
INSERT INTO `help_keyword` VALUES (444,'JSON_LENGTH');
INSERT INTO `help_keyword` VALUES (436,'JSON_MERGE');
INSERT INTO `help_keyword` VALUES (437,'JSON_MERGE_PATCH');
INSERT INTO `help_keyword` VALUES (438,'JSON_MERGE_PRESERVE');
INSERT INTO `help_keyword` VALUES (416,'JSON_OBJECT');
INSERT INTO `help_keyword` VALUES (470,'JSON_OBJECTAGG');
INSERT INTO `help_keyword` VALUES (428,'JSON_OVERLAPS');
INSERT INTO `help_keyword` VALUES (450,'JSON_PRETTY');
INSERT INTO `help_keyword` VALUES (417,'JSON_QUOTE');
INSERT INTO `help_keyword` VALUES (439,'JSON_REMOVE');
INSERT INTO `help_keyword` VALUES (440,'JSON_REPLACE');
INSERT INTO `help_keyword` VALUES (448,'JSON_SCHEMA_VALID');
INSERT INTO `help_keyword` VALUES (449,'JSON_SCHEMA_VALIDATION_REPORT');
INSERT INTO `help_keyword` VALUES (429,'JSON_SEARCH');
INSERT INTO `help_keyword` VALUES (441,'JSON_SET');
INSERT INTO `help_keyword` VALUES (451,'JSON_STORAGE_FREE');
INSERT INTO `help_keyword` VALUES (452,'JSON_STORAGE_SIZE');
INSERT INTO `help_keyword` VALUES (447,'JSON_TABLE');
INSERT INTO `help_keyword` VALUES (445,'JSON_TYPE');
INSERT INTO `help_keyword` VALUES (442,'JSON_UNQUOTE');
INSERT INTO `help_keyword` VALUES (446,'JSON_VALID');
INSERT INTO `help_keyword` VALUES (430,'JSON_VALUE');
INSERT INTO `help_keyword` VALUES (53,'KEY');
INSERT INTO `help_keyword` VALUES (604,'KEYS');
INSERT INTO `help_keyword` VALUES (605,'KEY_BLOCK_SIZE');
INSERT INTO `help_keyword` VALUES (941,'KILL');
INSERT INTO `help_keyword` VALUES (484,'LAG');
INSERT INTO `help_keyword` VALUES (694,'LAST');
INSERT INTO `help_keyword` VALUES (153,'LAST_DAY');
INSERT INTO `help_keyword` VALUES (298,'LAST_INSERT_ID');
INSERT INTO `help_keyword` VALUES (485,'LAST_VALUE');
INSERT INTO `help_keyword` VALUES (201,'LCASE');
INSERT INTO `help_keyword` VALUES (486,'LEAD');
INSERT INTO `help_keyword` VALUES (232,'LEADING');
INSERT INTO `help_keyword` VALUES (72,'LEAST');
INSERT INTO `help_keyword` VALUES (822,'LEAVE');
INSERT INTO `help_keyword` VALUES (942,'LEAVES');
INSERT INTO `help_keyword` VALUES (202,'LEFT');
INSERT INTO `help_keyword` VALUES (203,'LENGTH');
INSERT INTO `help_keyword` VALUES (758,'LEVEL');
INSERT INTO `help_keyword` VALUES (223,'LIKE');
INSERT INTO `help_keyword` VALUES (687,'LIMIT');
INSERT INTO `help_keyword` VALUES (710,'LINES');
INSERT INTO `help_keyword` VALUES (338,'LINESTRING');
INSERT INTO `help_keyword` VALUES (104,'LN');
INSERT INTO `help_keyword` VALUES (711,'LOAD');
INSERT INTO `help_keyword` VALUES (204,'LOAD_FILE');
INSERT INTO `help_keyword` VALUES (712,'LOCAL');
INSERT INTO `help_keyword` VALUES (154,'LOCALTIME');
INSERT INTO `help_keyword` VALUES (155,'LOCALTIMESTAMP');
INSERT INTO `help_keyword` VALUES (205,'LOCATE');
INSERT INTO `help_keyword` VALUES (606,'LOCK');
INSERT INTO `help_keyword` VALUES (105,'LOG');
INSERT INTO `help_keyword` VALUES (107,'LOG10');
INSERT INTO `help_keyword` VALUES (106,'LOG2');
INSERT INTO `help_keyword` VALUES (574,'LOGFILE');
INSERT INTO `help_keyword` VALUES (767,'LOGS');
INSERT INTO `help_keyword` VALUES (47,'LONG');
INSERT INTO `help_keyword` VALUES (48,'LONGBINARY');
INSERT INTO `help_keyword` VALUES (823,'LOOP');
INSERT INTO `help_keyword` VALUES (206,'LOWER');
INSERT INTO `help_keyword` VALUES (688,'LOW_PRIORITY');
INSERT INTO `help_keyword` VALUES (207,'LPAD');
INSERT INTO `help_keyword` VALUES (208,'LTRIM');
INSERT INTO `help_keyword` VALUES (156,'MAKEDATE');
INSERT INTO `help_keyword` VALUES (157,'MAKETIME');
INSERT INTO `help_keyword` VALUES (209,'MAKE_SET');
INSERT INTO `help_keyword` VALUES (567,'MASTER');
INSERT INTO `help_keyword` VALUES (772,'MASTER_AUTO_POSITION');
INSERT INTO `help_keyword` VALUES (773,'MASTER_BIND');
INSERT INTO `help_keyword` VALUES (774,'MASTER_COMPRESSION_ALGORITHMS');
INSERT INTO `help_keyword` VALUES (775,'MASTER_CONNECT_RETRY');
INSERT INTO `help_keyword` VALUES (776,'MASTER_HEARTBEAT_PERIOD');
INSERT INTO `help_keyword` VALUES (777,'MASTER_HOST');
INSERT INTO `help_keyword` VALUES (778,'MASTER_LOG_FILE');
INSERT INTO `help_keyword` VALUES (779,'MASTER_LOG_POS');
INSERT INTO `help_keyword` VALUES (780,'MASTER_PASSWORD');
INSERT INTO `help_keyword` VALUES (781,'MASTER_PORT');
INSERT INTO `help_keyword` VALUES (537,'MASTER_POS_WAIT');
INSERT INTO `help_keyword` VALUES (782,'MASTER_RETRY_COUNT');
INSERT INTO `help_keyword` VALUES (783,'MASTER_SSL');
INSERT INTO `help_keyword` VALUES (784,'MASTER_SSL_CA');
INSERT INTO `help_keyword` VALUES (785,'MASTER_SSL_CERT');
INSERT INTO `help_keyword` VALUES (786,'MASTER_SSL_CIPHER');
INSERT INTO `help_keyword` VALUES (787,'MASTER_SSL_CRL');
INSERT INTO `help_keyword` VALUES (788,'MASTER_SSL_CRLPATH');
INSERT INTO `help_keyword` VALUES (789,'MASTER_SSL_KEY');
INSERT INTO `help_keyword` VALUES (790,'MASTER_SSL_VERIFY_SERVER_CERT');
INSERT INTO `help_keyword` VALUES (791,'MASTER_TLS_CIPHERSUITES');
INSERT INTO `help_keyword` VALUES (792,'MASTER_TLS_VERSION');
INSERT INTO `help_keyword` VALUES (793,'MASTER_USER');
INSERT INTO `help_keyword` VALUES (794,'MASTER_ZSTD_COMPRESSION_LEVEL');
INSERT INTO `help_keyword` VALUES (249,'MATCH');
INSERT INTO `help_keyword` VALUES (471,'MAX');
INSERT INTO `help_keyword` VALUES (859,'MAX_CONNECTIONS_PER_HOUR');
INSERT INTO `help_keyword` VALUES (860,'MAX_QUERIES_PER_HOUR');
INSERT INTO `help_keyword` VALUES (607,'MAX_ROWS');
INSERT INTO `help_keyword` VALUES (681,'MAX_SIZE');
INSERT INTO `help_keyword` VALUES (861,'MAX_UPDATES_PER_HOUR');
INSERT INTO `help_keyword` VALUES (862,'MAX_USER_CONNECTIONS');
INSERT INTO `help_keyword` VALUES (395,'MBRCONTAINS');
INSERT INTO `help_keyword` VALUES (396,'MBRCOVEREDBY');
INSERT INTO `help_keyword` VALUES (397,'MBRCOVERS');
INSERT INTO `help_keyword` VALUES (398,'MBRDISJOINT');
INSERT INTO `help_keyword` VALUES (399,'MBREQUALS');
INSERT INTO `help_keyword` VALUES (400,'MBRINTERSECTS');
INSERT INTO `help_keyword` VALUES (401,'MBROVERLAPS');
INSERT INTO `help_keyword` VALUES (402,'MBRTOUCHES');
INSERT INTO `help_keyword` VALUES (403,'MBRWITHIN');
INSERT INTO `help_keyword` VALUES (273,'MD5');
INSERT INTO `help_keyword` VALUES (895,'MEDIUM');
INSERT INTO `help_keyword` VALUES (431,'MEMBER');
INSERT INTO `help_keyword` VALUES (724,'MEMORY');
INSERT INTO `help_keyword` VALUES (666,'MERGE');
INSERT INTO `help_keyword` VALUES (841,'MESSAGE_TEXT');
INSERT INTO `help_keyword` VALUES (158,'MICROSECOND');
INSERT INTO `help_keyword` VALUES (210,'MID');
INSERT INTO `help_keyword` VALUES (24,'MIDDLEINT');
INSERT INTO `help_keyword` VALUES (472,'MIN');
INSERT INTO `help_keyword` VALUES (138,'MINUTE');
INSERT INTO `help_keyword` VALUES (139,'MINUTE_SECOND');
INSERT INTO `help_keyword` VALUES (608,'MIN_ROWS');
INSERT INTO `help_keyword` VALUES (89,'MOD');
INSERT INTO `help_keyword` VALUES (250,'MODE');
INSERT INTO `help_keyword` VALUES (609,'MODIFY');
INSERT INTO `help_keyword` VALUES (140,'MONTH');
INSERT INTO `help_keyword` VALUES (159,'MONTHNAME');
INSERT INTO `help_keyword` VALUES (667,'MRG_MYISAM');
INSERT INTO `help_keyword` VALUES (339,'MULTILINESTRING');
INSERT INTO `help_keyword` VALUES (340,'MULTIPOINT');
INSERT INTO `help_keyword` VALUES (341,'MULTIPOLYGON');
INSERT INTO `help_keyword` VALUES (917,'MUTEX');
INSERT INTO `help_keyword` VALUES (668,'MYISAM');
INSERT INTO `help_keyword` VALUES (842,'MYSQL_ERRNO');
INSERT INTO `help_keyword` VALUES (651,'NAME');
INSERT INTO `help_keyword` VALUES (910,'NAMES');
INSERT INTO `help_keyword` VALUES (538,'NAME_CONST');
INSERT INTO `help_keyword` VALUES (40,'NATIONAL');
INSERT INTO `help_keyword` VALUES (738,'NATURAL');
INSERT INTO `help_keyword` VALUES (41,'NCHAR');
INSERT INTO `help_keyword` VALUES (669,'NDB');
INSERT INTO `help_keyword` VALUES (670,'NDBCLUSTER');
INSERT INTO `help_keyword` VALUES (795,'NETWORK_NAMESPACE');
INSERT INTO `help_keyword` VALUES (863,'NEVER');
INSERT INTO `help_keyword` VALUES (695,'NEXT');
INSERT INTO `help_keyword` VALUES (568,'NO');
INSERT INTO `help_keyword` VALUES (682,'NODEGROUP');
INSERT INTO `help_keyword` VALUES (864,'NONE');
INSERT INTO `help_keyword` VALUES (64,'NOT');
INSERT INTO `help_keyword` VALUES (160,'NOW');
INSERT INTO `help_keyword` VALUES (893,'NO_WRITE_TO_BINLOG');
INSERT INTO `help_keyword` VALUES (487,'NTH_VALUE');
INSERT INTO `help_keyword` VALUES (488,'NTILE');
INSERT INTO `help_keyword` VALUES (70,'NULL');
INSERT INTO `help_keyword` VALUES (83,'NULLIF');
INSERT INTO `help_keyword` VALUES (843,'NUMBER');
INSERT INTO `help_keyword` VALUES (30,'NUMERIC');
INSERT INTO `help_keyword` VALUES (44,'NVARCHAR');
INSERT INTO `help_keyword` VALUES (211,'OCT');
INSERT INTO `help_keyword` VALUES (212,'OCTET_LENGTH');
INSERT INTO `help_keyword` VALUES (432,'OF');
INSERT INTO `help_keyword` VALUES (725,'OFFSET');
INSERT INTO `help_keyword` VALUES (865,'OLD');
INSERT INTO `help_keyword` VALUES (556,'ON');
INSERT INTO `help_keyword` VALUES (546,'ONLY');
INSERT INTO `help_keyword` VALUES (696,'OPEN');
INSERT INTO `help_keyword` VALUES (610,'OPTIMIZE');
INSERT INTO `help_keyword` VALUES (937,'OPTIMIZER_COSTS');
INSERT INTO `help_keyword` VALUES (881,'OPTION');
INSERT INTO `help_keyword` VALUES (866,'OPTIONAL');
INSERT INTO `help_keyword` VALUES (713,'OPTIONALLY');
INSERT INTO `help_keyword` VALUES (576,'OPTIONS');
INSERT INTO `help_keyword` VALUES (73,'OR');
INSERT INTO `help_keyword` VALUES (213,'ORD');
INSERT INTO `help_keyword` VALUES (467,'ORDER');
INSERT INTO `help_keyword` VALUES (652,'ORGANIZATION');
INSERT INTO `help_keyword` VALUES (739,'OUTER');
INSERT INTO `help_keyword` VALUES (726,'OUTFILE');
INSERT INTO `help_keyword` VALUES (645,'OWNER');
INSERT INTO `help_keyword` VALUES (611,'PACK_KEYS');
INSERT INTO `help_keyword` VALUES (612,'PARSER');
INSERT INTO `help_keyword` VALUES (671,'PARTIAL');
INSERT INTO `help_keyword` VALUES (613,'PARTITION');
INSERT INTO `help_keyword` VALUES (614,'PARTITIONING');
INSERT INTO `help_keyword` VALUES (615,'PASSWORD');
INSERT INTO `help_keyword` VALUES (867,'PASSWORD_LOCK_TIME');
INSERT INTO `help_keyword` VALUES (426,'PATH)');
INSERT INTO `help_keyword` VALUES (489,'PERCENT_RANK');
INSERT INTO `help_keyword` VALUES (161,'PERIOD_ADD');
INSERT INTO `help_keyword` VALUES (162,'PERIOD_DIFF');
INSERT INTO `help_keyword` VALUES (907,'PERSIST');
INSERT INTO `help_keyword` VALUES (908,'PERSIST_ONLY');
INSERT INTO `help_keyword` VALUES (109,'PI');
INSERT INTO `help_keyword` VALUES (904,'PLUGIN');
INSERT INTO `help_keyword` VALUES (928,'PLUGINS');
INSERT INTO `help_keyword` VALUES (811,'PLUGIN_DIR');
INSERT INTO `help_keyword` VALUES (342,'POINT');
INSERT INTO `help_keyword` VALUES (343,'POLYGON');
INSERT INTO `help_keyword` VALUES (646,'PORT');
INSERT INTO `help_keyword` VALUES (214,'POSITION');
INSERT INTO `help_keyword` VALUES (110,'POW');
INSERT INTO `help_keyword` VALUES (111,'POWER');
INSERT INTO `help_keyword` VALUES (34,'PRECISION');
INSERT INTO `help_keyword` VALUES (763,'PREPARE');
INSERT INTO `help_keyword` VALUES (557,'PRESERVE');
INSERT INTO `help_keyword` VALUES (697,'PREV');
INSERT INTO `help_keyword` VALUES (616,'PRIMARY');
INSERT INTO `help_keyword` VALUES (882,'PRIVILEGES');
INSERT INTO `help_keyword` VALUES (796,'PRIVILEGE_CHECKS_USER');
INSERT INTO `help_keyword` VALUES (575,'PROCEDURE');
INSERT INTO `help_keyword` VALUES (883,'PROCESS');
INSERT INTO `help_keyword` VALUES (918,'PROCESSLIST');
INSERT INTO `help_keyword` VALUES (929,'PROFILE');
INSERT INTO `help_keyword` VALUES (930,'PROFILES');
INSERT INTO `help_keyword` VALUES (887,'PROXY');
INSERT INTO `help_keyword` VALUES (494,'PS_CURRENT_THREAD_ID');
INSERT INTO `help_keyword` VALUES (495,'PS_THREAD_ID');
INSERT INTO `help_keyword` VALUES (768,'PURGE');
INSERT INTO `help_keyword` VALUES (163,'QUARTER');
INSERT INTO `help_keyword` VALUES (251,'QUERY');
INSERT INTO `help_keyword` VALUES (689,'QUICK');
INSERT INTO `help_keyword` VALUES (215,'QUOTE');
INSERT INTO `help_keyword` VALUES (112,'RADIANS');
INSERT INTO `help_keyword` VALUES (113,'RAND');
INSERT INTO `help_keyword` VALUES (868,'RANDOM');
INSERT INTO `help_keyword` VALUES (274,'RANDOM_BYTES');
INSERT INTO `help_keyword` VALUES (490,'RANK');
INSERT INTO `help_keyword` VALUES (547,'READ');
INSERT INTO `help_keyword` VALUES (35,'REAL');
INSERT INTO `help_keyword` VALUES (617,'REBUILD');
INSERT INTO `help_keyword` VALUES (764,'RECOVER');
INSERT INTO `help_keyword` VALUES (569,'REDO_LOG');
INSERT INTO `help_keyword` VALUES (672,'REDUNDANT');
INSERT INTO `help_keyword` VALUES (653,'REFERENCE');
INSERT INTO `help_keyword` VALUES (673,'REFERENCES');
INSERT INTO `help_keyword` VALUES (241,'REGEXP');
INSERT INTO `help_keyword` VALUES (243,'REGEXP_INSTR');
INSERT INTO `help_keyword` VALUES (244,'REGEXP_LIKE');
INSERT INTO `help_keyword` VALUES (245,'REGEXP_REPLACE');
INSERT INTO `help_keyword` VALUES (246,'REGEXP_SUBSTR');
INSERT INTO `help_keyword` VALUES (938,'RELAY');
INSERT INTO `help_keyword` VALUES (931,'RELAYLOG');
INSERT INTO `help_keyword` VALUES (797,'RELAY_LOG_FILE');
INSERT INTO `help_keyword` VALUES (798,'RELAY_LOG_POS');
INSERT INTO `help_keyword` VALUES (745,'RELEASE');
INSERT INTO `help_keyword` VALUES (286,'RELEASE_ALL_LOCKS');
INSERT INTO `help_keyword` VALUES (287,'RELEASE_LOCK');
INSERT INTO `help_keyword` VALUES (570,'RELOAD');
INSERT INTO `help_keyword` VALUES (618,'REMOVE');
INSERT INTO `help_keyword` VALUES (558,'RENAME');
INSERT INTO `help_keyword` VALUES (619,'REORGANIZE');
INSERT INTO `help_keyword` VALUES (620,'REPAIR');
INSERT INTO `help_keyword` VALUES (216,'REPEAT');
INSERT INTO `help_keyword` VALUES (759,'REPEATABLE');
INSERT INTO `help_keyword` VALUES (217,'REPLACE');
INSERT INTO `help_keyword` VALUES (808,'REPLICA');
INSERT INTO `help_keyword` VALUES (932,'REPLICAS');
INSERT INTO `help_keyword` VALUES (800,'REPLICATE_DO_DB');
INSERT INTO `help_keyword` VALUES (801,'REPLICATE_DO_TABLE');
INSERT INTO `help_keyword` VALUES (802,'REPLICATE_IGNORE_DB');
INSERT INTO `help_keyword` VALUES (803,'REPLICATE_IGNORE_TABLE');
INSERT INTO `help_keyword` VALUES (804,'REPLICATE_REWRITE_DB');
INSERT INTO `help_keyword` VALUES (805,'REPLICATE_WILD_DO_TABLE');
INSERT INTO `help_keyword` VALUES (806,'REPLICATE_WILD_IGNORE_TABLE');
INSERT INTO `help_keyword` VALUES (807,'REPLICATION');
INSERT INTO `help_keyword` VALUES (869,'REQUIRE');
INSERT INTO `help_keyword` VALUES (769,'RESET');
INSERT INTO `help_keyword` VALUES (848,'RESIGNAL');
INSERT INTO `help_keyword` VALUES (890,'RESOURCE');
INSERT INTO `help_keyword` VALUES (943,'RESTART');
INSERT INTO `help_keyword` VALUES (676,'RESTRICT');
INSERT INTO `help_keyword` VALUES (870,'RETAIN');
INSERT INTO `help_keyword` VALUES (825,'RETURN');
INSERT INTO `help_keyword` VALUES (844,'RETURNED_SQLSTATE');
INSERT INTO `help_keyword` VALUES (899,'RETURNS');
INSERT INTO `help_keyword` VALUES (871,'REUSE');
INSERT INTO `help_keyword` VALUES (218,'REVERSE');
INSERT INTO `help_keyword` VALUES (888,'REVOKE');
INSERT INTO `help_keyword` VALUES (219,'RIGHT');
INSERT INTO `help_keyword` VALUES (242,'RLIKE');
INSERT INTO `help_keyword` VALUES (872,'ROLE');
INSERT INTO `help_keyword` VALUES (299,'ROLES_GRAPHML');
INSERT INTO `help_keyword` VALUES (571,'ROLLBACK');
INSERT INTO `help_keyword` VALUES (114,'ROUND');
INSERT INTO `help_keyword` VALUES (703,'ROW');
INSERT INTO `help_keyword` VALUES (717,'ROWS');
INSERT INTO `help_keyword` VALUES (300,'ROW_COUNT');
INSERT INTO `help_keyword` VALUES (621,'ROW_FORMAT');
INSERT INTO `help_keyword` VALUES (491,'ROW_NUMBER');
INSERT INTO `help_keyword` VALUES (220,'RPAD');
INSERT INTO `help_keyword` VALUES (221,'RTRIM');
INSERT INTO `help_keyword` VALUES (751,'SAVEPOINT');
INSERT INTO `help_keyword` VALUES (559,'SCHEDULE');
INSERT INTO `help_keyword` VALUES (301,'SCHEMA');
INSERT INTO `help_keyword` VALUES (919,'SCHEMAS');
INSERT INTO `help_keyword` VALUES (845,'SCHEMA_NAME');
INSERT INTO `help_keyword` VALUES (141,'SECOND');
INSERT INTO `help_keyword` VALUES (164,'SEC_TO_TIME');
INSERT INTO `help_keyword` VALUES (704,'SELECT');
INSERT INTO `help_keyword` VALUES (468,'SEPARATOR');
INSERT INTO `help_keyword` VALUES (3,'SERIAL');
INSERT INTO `help_keyword` VALUES (760,'SERIALIZABLE');
INSERT INTO `help_keyword` VALUES (577,'SERVER');
INSERT INTO `help_keyword` VALUES (761,'SESSION');
INSERT INTO `help_keyword` VALUES (302,'SESSION_USER');
INSERT INTO `help_keyword` VALUES (548,'SET');
INSERT INTO `help_keyword` VALUES (275,'SHA');
INSERT INTO `help_keyword` VALUES (276,'SHA1');
INSERT INTO `help_keyword` VALUES (277,'SHA2');
INSERT INTO `help_keyword` VALUES (727,'SHARE');
INSERT INTO `help_keyword` VALUES (920,'SHOW');
INSERT INTO `help_keyword` VALUES (884,'SHUTDOWN');
INSERT INTO `help_keyword` VALUES (115,'SIGN');
INSERT INTO `help_keyword` VALUES (850,'SIGNAL');
INSERT INTO `help_keyword` VALUES (260,'SIGNED');
INSERT INTO `help_keyword` VALUES (116,'SIN');
INSERT INTO `help_keyword` VALUES (560,'SLAVE');
INSERT INTO `help_keyword` VALUES (539,'SLEEP');
INSERT INTO `help_keyword` VALUES (939,'SLOW');
INSERT INTO `help_keyword` VALUES (746,'SNAPSHOT');
INSERT INTO `help_keyword` VALUES (647,'SOCKET');
INSERT INTO `help_keyword` VALUES (900,'SONAME');
INSERT INTO `help_keyword` VALUES (222,'SOUNDEX');
INSERT INTO `help_keyword` VALUES (224,'SOUNDS');
INSERT INTO `help_keyword` VALUES (225,'SPACE');
INSERT INTO `help_keyword` VALUES (622,'SPATIAL');
INSERT INTO `help_keyword` VALUES (849,'SQLSTATE');
INSERT INTO `help_keyword` VALUES (812,'SQL_AFTER_GTIDS');
INSERT INTO `help_keyword` VALUES (813,'SQL_AFTER_MTS_GAPS');
INSERT INTO `help_keyword` VALUES (814,'SQL_BEFORE_GTIDS');
INSERT INTO `help_keyword` VALUES (728,'SQL_BIG_RESULT');
INSERT INTO `help_keyword` VALUES (729,'SQL_BUFFER_RESULT');
INSERT INTO `help_keyword` VALUES (730,'SQL_CALC_FOUND_ROWS');
INSERT INTO `help_keyword` VALUES (770,'SQL_LOG_BIN');
INSERT INTO `help_keyword` VALUES (731,'SQL_NO_CACHE');
INSERT INTO `help_keyword` VALUES (732,'SQL_SMALL_RESULT');
INSERT INTO `help_keyword` VALUES (815,'SQL_THREAD');
INSERT INTO `help_keyword` VALUES (117,'SQRT');
INSERT INTO `help_keyword` VALUES (873,'SSL');
INSERT INTO `help_keyword` VALUES (747,'START');
INSERT INTO `help_keyword` VALUES (714,'STARTING');
INSERT INTO `help_keyword` VALUES (642,'STARTS');
INSERT INTO `help_keyword` VALUES (278,'STATEMENT_DIGEST');
INSERT INTO `help_keyword` VALUES (279,'STATEMENT_DIGEST_TEXT');
INSERT INTO `help_keyword` VALUES (623,'STATS_AUTO_RECALC');
INSERT INTO `help_keyword` VALUES (624,'STATS_PERSISTENT');
INSERT INTO `help_keyword` VALUES (625,'STATS_SAMPLE_PAGES');
INSERT INTO `help_keyword` VALUES (921,'STATUS');
INSERT INTO `help_keyword` VALUES (473,'STD');
INSERT INTO `help_keyword` VALUES (474,'STDDEV');
INSERT INTO `help_keyword` VALUES (475,'STDDEV_POP');
INSERT INTO `help_keyword` VALUES (476,'STDDEV_SAMP');
INSERT INTO `help_keyword` VALUES (816,'STOP');
INSERT INTO `help_keyword` VALUES (926,'STORAGE');
INSERT INTO `help_keyword` VALUES (674,'STORED');
INSERT INTO `help_keyword` VALUES (733,'STRAIGHT_JOIN');
INSERT INTO `help_keyword` VALUES (240,'STRCMP');
INSERT INTO `help_keyword` VALUES (901,'STRING');
INSERT INTO `help_keyword` VALUES (165,'STR_TO_DATE');
INSERT INTO `help_keyword` VALUES (365,'ST_AREA');
INSERT INTO `help_keyword` VALUES (344,'ST_ASBINARY');
INSERT INTO `help_keyword` VALUES (408,'ST_ASGEOJSON');
INSERT INTO `help_keyword` VALUES (346,'ST_ASTEXT');
INSERT INTO `help_keyword` VALUES (345,'ST_ASWKB');
INSERT INTO `help_keyword` VALUES (347,'ST_ASWKT');
INSERT INTO `help_keyword` VALUES (373,'ST_BUFFER');
INSERT INTO `help_keyword` VALUES (374,'ST_BUFFER_STRATEGY');
INSERT INTO `help_keyword` VALUES (366,'ST_CENTROID');
INSERT INTO `help_keyword` VALUES (384,'ST_CONTAINS');
INSERT INTO `help_keyword` VALUES (375,'ST_CONVEXHULL');
INSERT INTO `help_keyword` VALUES (385,'ST_CROSSES');
INSERT INTO `help_keyword` VALUES (376,'ST_DIFFERENCE');
INSERT INTO `help_keyword` VALUES (349,'ST_DIMENSION');
INSERT INTO `help_keyword` VALUES (386,'ST_DISJOINT');
INSERT INTO `help_keyword` VALUES (387,'ST_DISTANCE');
INSERT INTO `help_keyword` VALUES (410,'ST_DISTANCE_SPHERE');
INSERT INTO `help_keyword` VALUES (359,'ST_ENDPOINT');
INSERT INTO `help_keyword` VALUES (350,'ST_ENVELOPE');
INSERT INTO `help_keyword` VALUES (388,'ST_EQUALS');
INSERT INTO `help_keyword` VALUES (367,'ST_EXTERIORRING');
INSERT INTO `help_keyword` VALUES (389,'ST_FRECHETDISTANCE');
INSERT INTO `help_keyword` VALUES (404,'ST_GEOHASH');
INSERT INTO `help_keyword` VALUES (306,'ST_GEOMCOLLFROMTEXT');
INSERT INTO `help_keyword` VALUES (321,'ST_GEOMCOLLFROMWKB');
INSERT INTO `help_keyword` VALUES (307,'ST_GEOMETRYCOLLECTIONFROMTEXT');
INSERT INTO `help_keyword` VALUES (322,'ST_GEOMETRYCOLLECTIONFROMWKB');
INSERT INTO `help_keyword` VALUES (308,'ST_GEOMETRYFROMTEXT');
INSERT INTO `help_keyword` VALUES (323,'ST_GEOMETRYFROMWKB');
INSERT INTO `help_keyword` VALUES (371,'ST_GEOMETRYN');
INSERT INTO `help_keyword` VALUES (351,'ST_GEOMETRYTYPE');
INSERT INTO `help_keyword` VALUES (409,'ST_GEOMFROMGEOJSON');
INSERT INTO `help_keyword` VALUES (309,'ST_GEOMFROMTEXT');
INSERT INTO `help_keyword` VALUES (324,'ST_GEOMFROMWKB');
INSERT INTO `help_keyword` VALUES (390,'ST_HAUSDORFFDISTANCE');
INSERT INTO `help_keyword` VALUES (368,'ST_INTERIORRINGN');
INSERT INTO `help_keyword` VALUES (377,'ST_INTERSECTION');
INSERT INTO `help_keyword` VALUES (391,'ST_INTERSECTS');
INSERT INTO `help_keyword` VALUES (360,'ST_ISCLOSED');
INSERT INTO `help_keyword` VALUES (352,'ST_ISEMPTY');
INSERT INTO `help_keyword` VALUES (353,'ST_ISSIMPLE');
INSERT INTO `help_keyword` VALUES (411,'ST_ISVALID');
INSERT INTO `help_keyword` VALUES (405,'ST_LATFROMGEOHASH');
INSERT INTO `help_keyword` VALUES (355,'ST_LATITUDE');
INSERT INTO `help_keyword` VALUES (361,'ST_LENGTH');
INSERT INTO `help_keyword` VALUES (310,'ST_LINEFROMTEXT');
INSERT INTO `help_keyword` VALUES (325,'ST_LINEFROMWKB');
INSERT INTO `help_keyword` VALUES (378,'ST_LINEINTERPOLATEPOINT');
INSERT INTO `help_keyword` VALUES (379,'ST_LINEINTERPOLATEPOINTS');
INSERT INTO `help_keyword` VALUES (311,'ST_LINESTRINGFROMTEXT');
INSERT INTO `help_keyword` VALUES (326,'ST_LINESTRINGFROMWKB');
INSERT INTO `help_keyword` VALUES (406,'ST_LONGFROMGEOHASH');
INSERT INTO `help_keyword` VALUES (356,'ST_LONGITUDE');
INSERT INTO `help_keyword` VALUES (412,'ST_MAKEENVELOPE');
INSERT INTO `help_keyword` VALUES (312,'ST_MLINEFROMTEXT');
INSERT INTO `help_keyword` VALUES (327,'ST_MLINEFROMWKB');
INSERT INTO `help_keyword` VALUES (314,'ST_MPOINTFROMTEXT');
INSERT INTO `help_keyword` VALUES (329,'ST_MPOINTFROMWKB');
INSERT INTO `help_keyword` VALUES (316,'ST_MPOLYFROMTEXT');
INSERT INTO `help_keyword` VALUES (331,'ST_MPOLYFROMWKB');
INSERT INTO `help_keyword` VALUES (313,'ST_MULTILINESTRINGFROMTEXT');
INSERT INTO `help_keyword` VALUES (328,'ST_MULTILINESTRINGFROMWKB');
INSERT INTO `help_keyword` VALUES (315,'ST_MULTIPOINTFROMTEXT');
INSERT INTO `help_keyword` VALUES (330,'ST_MULTIPOINTFROMWKB');
INSERT INTO `help_keyword` VALUES (317,'ST_MULTIPOLYGONFROMTEXT');
INSERT INTO `help_keyword` VALUES (332,'ST_MULTIPOLYGONFROMWKB');
INSERT INTO `help_keyword` VALUES (372,'ST_NUMGEOMETRIES');
INSERT INTO `help_keyword` VALUES (369,'ST_NUMINTERIORRING');
INSERT INTO `help_keyword` VALUES (370,'ST_NUMINTERIORRINGS');
INSERT INTO `help_keyword` VALUES (362,'ST_NUMPOINTS');
INSERT INTO `help_keyword` VALUES (392,'ST_OVERLAPS');
INSERT INTO `help_keyword` VALUES (380,'ST_POINTATDISTANCE');
INSERT INTO `help_keyword` VALUES (407,'ST_POINTFROMGEOHASH');
INSERT INTO `help_keyword` VALUES (318,'ST_POINTFROMTEXT');
INSERT INTO `help_keyword` VALUES (333,'ST_POINTFROMWKB');
INSERT INTO `help_keyword` VALUES (363,'ST_POINTN');
INSERT INTO `help_keyword` VALUES (319,'ST_POLYFROMTEXT');
INSERT INTO `help_keyword` VALUES (334,'ST_POLYFROMWKB');
INSERT INTO `help_keyword` VALUES (320,'ST_POLYGONFROMTEXT');
INSERT INTO `help_keyword` VALUES (335,'ST_POLYGONFROMWKB');
INSERT INTO `help_keyword` VALUES (413,'ST_SIMPLIFY');
INSERT INTO `help_keyword` VALUES (354,'ST_SRID');
INSERT INTO `help_keyword` VALUES (364,'ST_STARTPOINT');
INSERT INTO `help_keyword` VALUES (348,'ST_SWAPXY');
INSERT INTO `help_keyword` VALUES (381,'ST_SYMDIFFERENCE');
INSERT INTO `help_keyword` VALUES (393,'ST_TOUCHES');
INSERT INTO `help_keyword` VALUES (382,'ST_TRANSFORM');
INSERT INTO `help_keyword` VALUES (383,'ST_UNION');
INSERT INTO `help_keyword` VALUES (414,'ST_VALIDATE');
INSERT INTO `help_keyword` VALUES (394,'ST_WITHIN');
INSERT INTO `help_keyword` VALUES (357,'ST_X');
INSERT INTO `help_keyword` VALUES (358,'ST_Y');
INSERT INTO `help_keyword` VALUES (846,'SUBCLASS_ORIGIN');
INSERT INTO `help_keyword` VALUES (166,'SUBDATE');
INSERT INTO `help_keyword` VALUES (874,'SUBJECT');
INSERT INTO `help_keyword` VALUES (226,'SUBSTR');
INSERT INTO `help_keyword` VALUES (227,'SUBSTRING');
INSERT INTO `help_keyword` VALUES (228,'SUBSTRING_INDEX');
INSERT INTO `help_keyword` VALUES (167,'SUBTIME');
INSERT INTO `help_keyword` VALUES (477,'SUM');
INSERT INTO `help_keyword` VALUES (885,'SUPER');
INSERT INTO `help_keyword` VALUES (168,'SYSDATE');
INSERT INTO `help_keyword` VALUES (654,'SYSTEM');
INSERT INTO `help_keyword` VALUES (303,'SYSTEM_USER');
INSERT INTO `help_keyword` VALUES (54,'TABLE');
INSERT INTO `help_keyword` VALUES (754,'TABLES');
INSERT INTO `help_keyword` VALUES (626,'TABLESPACE');
INSERT INTO `help_keyword` VALUES (847,'TABLE_NAME');
INSERT INTO `help_keyword` VALUES (118,'TAN');
INSERT INTO `help_keyword` VALUES (685,'TEMPORARY');
INSERT INTO `help_keyword` VALUES (715,'TERMINATED');
INSERT INTO `help_keyword` VALUES (79,'THEN');
INSERT INTO `help_keyword` VALUES (891,'THREAD_PRIORITY');
INSERT INTO `help_keyword` VALUES (38,'TIME');
INSERT INTO `help_keyword` VALUES (170,'TIMEDIFF');
INSERT INTO `help_keyword` VALUES (37,'TIMESTAMP');
INSERT INTO `help_keyword` VALUES (171,'TIMESTAMPADD');
INSERT INTO `help_keyword` VALUES (172,'TIMESTAMPDIFF');
INSERT INTO `help_keyword` VALUES (258,'TIMEZONE');
INSERT INTO `help_keyword` VALUES (173,'TIME_FORMAT');
INSERT INTO `help_keyword` VALUES (174,'TIME_TO_SEC');
INSERT INTO `help_keyword` VALUES (572,'TLS');
INSERT INTO `help_keyword` VALUES (634,'TO');
INSERT INTO `help_keyword` VALUES (229,'TO_BASE64');
INSERT INTO `help_keyword` VALUES (175,'TO_DAYS');
INSERT INTO `help_keyword` VALUES (176,'TO_SECONDS');
INSERT INTO `help_keyword` VALUES (946,'TRADITIONAL');
INSERT INTO `help_keyword` VALUES (233,'TRAILING');
INSERT INTO `help_keyword` VALUES (748,'TRANSACTION');
INSERT INTO `help_keyword` VALUES (947,'TREE');
INSERT INTO `help_keyword` VALUES (684,'TRIGGER');
INSERT INTO `help_keyword` VALUES (922,'TRIGGERS');
INSERT INTO `help_keyword` VALUES (234,'TRIM');
INSERT INTO `help_keyword` VALUES (16,'TRUE');
INSERT INTO `help_keyword` VALUES (119,'TRUNCATE');
INSERT INTO `help_keyword` VALUES (627,'TYPE');
INSERT INTO `help_keyword` VALUES (235,'UCASE');
INSERT INTO `help_keyword` VALUES (875,'UNBOUNDED');
INSERT INTO `help_keyword` VALUES (762,'UNCOMMITTED');
INSERT INTO `help_keyword` VALUES (280,'UNCOMPRESS');
INSERT INTO `help_keyword` VALUES (281,'UNCOMPRESSED_LENGTH');
INSERT INTO `help_keyword` VALUES (635,'UNDO');
INSERT INTO `help_keyword` VALUES (236,'UNHEX');
INSERT INTO `help_keyword` VALUES (905,'UNINSTALL');
INSERT INTO `help_keyword` VALUES (628,'UNION');
INSERT INTO `help_keyword` VALUES (629,'UNIQUE');
INSERT INTO `help_keyword` VALUES (177,'UNIX_TIMESTAMP');
INSERT INTO `help_keyword` VALUES (753,'UNLOCK');
INSERT INTO `help_keyword` VALUES (20,'UNSIGNED');
INSERT INTO `help_keyword` VALUES (824,'UNTIL');
INSERT INTO `help_keyword` VALUES (677,'UPDATE');
INSERT INTO `help_keyword` VALUES (262,'UPDATEXML');
INSERT INTO `help_keyword` VALUES (630,'UPGRADE');
INSERT INTO `help_keyword` VALUES (237,'UPPER');
INSERT INTO `help_keyword` VALUES (886,'USAGE');
INSERT INTO `help_keyword` VALUES (683,'USE');
INSERT INTO `help_keyword` VALUES (304,'USER');
INSERT INTO `help_keyword` VALUES (940,'USER_RESOURCES');
INSERT INTO `help_keyword` VALUES (897,'USE_FRM');
INSERT INTO `help_keyword` VALUES (690,'USING');
INSERT INTO `help_keyword` VALUES (178,'UTC_DATE');
INSERT INTO `help_keyword` VALUES (179,'UTC_TIME');
INSERT INTO `help_keyword` VALUES (180,'UTC_TIMESTAMP');
INSERT INTO `help_keyword` VALUES (540,'UUID');
INSERT INTO `help_keyword` VALUES (541,'UUID_SHORT');
INSERT INTO `help_keyword` VALUES (542,'UUID_TO_BIN');
INSERT INTO `help_keyword` VALUES (282,'VALIDATE_PASSWORD_STRENGTH');
INSERT INTO `help_keyword` VALUES (4,'VALUE');
INSERT INTO `help_keyword` VALUES (543,'VALUES');
INSERT INTO `help_keyword` VALUES (45,'VARCHARACTER');
INSERT INTO `help_keyword` VALUES (909,'VARIABLE');
INSERT INTO `help_keyword` VALUES (923,'VARIABLES');
INSERT INTO `help_keyword` VALUES (480,'VARIANCE');
INSERT INTO `help_keyword` VALUES (46,'VARYING');
INSERT INTO `help_keyword` VALUES (478,'VAR_POP');
INSERT INTO `help_keyword` VALUES (479,'VAR_SAMP');
INSERT INTO `help_keyword` VALUES (892,'VCPU');
INSERT INTO `help_keyword` VALUES (305,'VERSION');
INSERT INTO `help_keyword` VALUES (637,'VIEW');
INSERT INTO `help_keyword` VALUES (675,'VIRTUAL');
INSERT INTO `help_keyword` VALUES (631,'VISIBLE');
INSERT INTO `help_keyword` VALUES (636,'WAIT');
INSERT INTO `help_keyword` VALUES (455,'WAIT_FOR_EXECUTED_GTID_SET');
INSERT INTO `help_keyword` VALUES (456,'WAIT_UNTIL_SQL_THREAD_AFTER_GTIDS');
INSERT INTO `help_keyword` VALUES (924,'WARNINGS');
INSERT INTO `help_keyword` VALUES (181,'WEEK');
INSERT INTO `help_keyword` VALUES (182,'WEEKDAY');
INSERT INTO `help_keyword` VALUES (183,'WEEKOFYEAR');
INSERT INTO `help_keyword` VALUES (238,'WEIGHT_STRING');
INSERT INTO `help_keyword` VALUES (80,'WHEN');
INSERT INTO `help_keyword` VALUES (691,'WHERE');
INSERT INTO `help_keyword` VALUES (826,'WHILE');
INSERT INTO `help_keyword` VALUES (252,'WITH');
INSERT INTO `help_keyword` VALUES (749,'WORK');
INSERT INTO `help_keyword` VALUES (648,'WRAPPER');
INSERT INTO `help_keyword` VALUES (750,'WRITE');
INSERT INTO `help_keyword` VALUES (876,'X509');
INSERT INTO `help_keyword` VALUES (765,'XA');
INSERT INTO `help_keyword` VALUES (74,'XOR');
INSERT INTO `help_keyword` VALUES (142,'YEAR');
INSERT INTO `help_keyword` VALUES (184,'YEARWEEK');
INSERT INTO `help_keyword` VALUES (143,'YEAR_MONTH');
INSERT INTO `help_keyword` VALUES (21,'ZEROFILL');
INSERT INTO `help_keyword` VALUES (265,'^');
INSERT INTO `help_keyword` VALUES (263,'|');
INSERT INTO `help_keyword` VALUES (268,'~');
/*!40000 ALTER TABLE `help_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_relation`
--

DROP TABLE IF EXISTS `help_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_relation` (
  `help_topic_id` int NOT NULL,
  `help_keyword_id` int NOT NULL
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='keyword-topic relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_relation`
--

LOCK TABLES `help_relation` WRITE;
/*!40000 ALTER TABLE `help_relation` DISABLE KEYS */;
INSERT INTO `help_relation` VALUES (0,0);
INSERT INTO `help_relation` VALUES (1,1);
INSERT INTO `help_relation` VALUES (2,2);
INSERT INTO `help_relation` VALUES (482,2);
INSERT INTO `help_relation` VALUES (500,2);
INSERT INTO `help_relation` VALUES (501,2);
INSERT INTO `help_relation` VALUES (508,2);
INSERT INTO `help_relation` VALUES (511,2);
INSERT INTO `help_relation` VALUES (512,2);
INSERT INTO `help_relation` VALUES (520,2);
INSERT INTO `help_relation` VALUES (521,2);
INSERT INTO `help_relation` VALUES (544,2);
INSERT INTO `help_relation` VALUES (549,2);
INSERT INTO `help_relation` VALUES (587,2);
INSERT INTO `help_relation` VALUES (605,2);
INSERT INTO `help_relation` VALUES (607,2);
INSERT INTO `help_relation` VALUES (613,2);
INSERT INTO `help_relation` VALUES (615,2);
INSERT INTO `help_relation` VALUES (2,3);
INSERT INTO `help_relation` VALUES (520,3);
INSERT INTO `help_relation` VALUES (2,4);
INSERT INTO `help_relation` VALUES (544,4);
INSERT INTO `help_relation` VALUES (549,4);
INSERT INTO `help_relation` VALUES (603,4);
INSERT INTO `help_relation` VALUES (604,4);
INSERT INTO `help_relation` VALUES (3,5);
INSERT INTO `help_relation` VALUES (695,5);
INSERT INTO `help_relation` VALUES (4,6);
INSERT INTO `help_relation` VALUES (5,7);
INSERT INTO `help_relation` VALUES (6,8);
INSERT INTO `help_relation` VALUES (7,9);
INSERT INTO `help_relation` VALUES (8,10);
INSERT INTO `help_relation` VALUES (9,11);
INSERT INTO `help_relation` VALUES (10,12);
INSERT INTO `help_relation` VALUES (11,13);
INSERT INTO `help_relation` VALUES (12,14);
INSERT INTO `help_relation` VALUES (13,15);
INSERT INTO `help_relation` VALUES (14,15);
INSERT INTO `help_relation` VALUES (13,16);
INSERT INTO `help_relation` VALUES (14,16);
INSERT INTO `help_relation` VALUES (16,17);
INSERT INTO `help_relation` VALUES (17,17);
INSERT INTO `help_relation` VALUES (16,18);
INSERT INTO `help_relation` VALUES (240,18);
INSERT INTO `help_relation` VALUES (16,19);
INSERT INTO `help_relation` VALUES (16,20);
INSERT INTO `help_relation` VALUES (20,20);
INSERT INTO `help_relation` VALUES (22,20);
INSERT INTO `help_relation` VALUES (23,20);
INSERT INTO `help_relation` VALUES (25,20);
INSERT INTO `help_relation` VALUES (26,20);
INSERT INTO `help_relation` VALUES (243,20);
INSERT INTO `help_relation` VALUES (16,21);
INSERT INTO `help_relation` VALUES (20,21);
INSERT INTO `help_relation` VALUES (22,21);
INSERT INTO `help_relation` VALUES (23,21);
INSERT INTO `help_relation` VALUES (25,21);
INSERT INTO `help_relation` VALUES (26,21);
INSERT INTO `help_relation` VALUES (18,22);
INSERT INTO `help_relation` VALUES (19,23);
INSERT INTO `help_relation` VALUES (19,24);
INSERT INTO `help_relation` VALUES (20,25);
INSERT INTO `help_relation` VALUES (20,26);
INSERT INTO `help_relation` VALUES (243,26);
INSERT INTO `help_relation` VALUES (625,26);
INSERT INTO `help_relation` VALUES (22,27);
INSERT INTO `help_relation` VALUES (23,28);
INSERT INTO `help_relation` VALUES (23,29);
INSERT INTO `help_relation` VALUES (520,29);
INSERT INTO `help_relation` VALUES (23,30);
INSERT INTO `help_relation` VALUES (24,31);
INSERT INTO `help_relation` VALUES (243,31);
INSERT INTO `help_relation` VALUES (625,31);
INSERT INTO `help_relation` VALUES (25,32);
INSERT INTO `help_relation` VALUES (26,33);
INSERT INTO `help_relation` VALUES (26,34);
INSERT INTO `help_relation` VALUES (26,35);
INSERT INTO `help_relation` VALUES (625,35);
INSERT INTO `help_relation` VALUES (28,36);
INSERT INTO `help_relation` VALUES (129,36);
INSERT INTO `help_relation` VALUES (131,36);
INSERT INTO `help_relation` VALUES (243,36);
INSERT INTO `help_relation` VALUES (30,37);
INSERT INTO `help_relation` VALUES (165,37);
INSERT INTO `help_relation` VALUES (31,38);
INSERT INTO `help_relation` VALUES (163,38);
INSERT INTO `help_relation` VALUES (243,38);
INSERT INTO `help_relation` VALUES (33,39);
INSERT INTO `help_relation` VALUES (35,39);
INSERT INTO `help_relation` VALUES (500,39);
INSERT INTO `help_relation` VALUES (501,39);
INSERT INTO `help_relation` VALUES (508,39);
INSERT INTO `help_relation` VALUES (511,39);
INSERT INTO `help_relation` VALUES (512,39);
INSERT INTO `help_relation` VALUES (520,39);
INSERT INTO `help_relation` VALUES (547,39);
INSERT INTO `help_relation` VALUES (548,39);
INSERT INTO `help_relation` VALUES (550,39);
INSERT INTO `help_relation` VALUES (633,39);
INSERT INTO `help_relation` VALUES (634,39);
INSERT INTO `help_relation` VALUES (636,39);
INSERT INTO `help_relation` VALUES (640,39);
INSERT INTO `help_relation` VALUES (33,40);
INSERT INTO `help_relation` VALUES (35,40);
INSERT INTO `help_relation` VALUES (33,41);
INSERT INTO `help_relation` VALUES (34,42);
INSERT INTO `help_relation` VALUES (34,43);
INSERT INTO `help_relation` VALUES (184,43);
INSERT INTO `help_relation` VALUES (243,43);
INSERT INTO `help_relation` VALUES (35,44);
INSERT INTO `help_relation` VALUES (35,45);
INSERT INTO `help_relation` VALUES (35,46);
INSERT INTO `help_relation` VALUES (44,47);
INSERT INTO `help_relation` VALUES (44,48);
INSERT INTO `help_relation` VALUES (53,49);
INSERT INTO `help_relation` VALUES (508,49);
INSERT INTO `help_relation` VALUES (509,49);
INSERT INTO `help_relation` VALUES (522,49);
INSERT INTO `help_relation` VALUES (53,50);
INSERT INTO `help_relation` VALUES (500,50);
INSERT INTO `help_relation` VALUES (501,50);
INSERT INTO `help_relation` VALUES (502,50);
INSERT INTO `help_relation` VALUES (503,50);
INSERT INTO `help_relation` VALUES (504,50);
INSERT INTO `help_relation` VALUES (505,50);
INSERT INTO `help_relation` VALUES (506,50);
INSERT INTO `help_relation` VALUES (507,50);
INSERT INTO `help_relation` VALUES (508,50);
INSERT INTO `help_relation` VALUES (509,50);
INSERT INTO `help_relation` VALUES (510,50);
INSERT INTO `help_relation` VALUES (605,50);
INSERT INTO `help_relation` VALUES (610,50);
INSERT INTO `help_relation` VALUES (616,50);
INSERT INTO `help_relation` VALUES (53,51);
INSERT INTO `help_relation` VALUES (511,51);
INSERT INTO `help_relation` VALUES (512,51);
INSERT INTO `help_relation` VALUES (513,51);
INSERT INTO `help_relation` VALUES (514,51);
INSERT INTO `help_relation` VALUES (515,51);
INSERT INTO `help_relation` VALUES (516,51);
INSERT INTO `help_relation` VALUES (517,51);
INSERT INTO `help_relation` VALUES (518,51);
INSERT INTO `help_relation` VALUES (519,51);
INSERT INTO `help_relation` VALUES (520,51);
INSERT INTO `help_relation` VALUES (522,51);
INSERT INTO `help_relation` VALUES (523,51);
INSERT INTO `help_relation` VALUES (524,51);
INSERT INTO `help_relation` VALUES (606,51);
INSERT INTO `help_relation` VALUES (607,51);
INSERT INTO `help_relation` VALUES (617,51);
INSERT INTO `help_relation` VALUES (625,51);
INSERT INTO `help_relation` VALUES (636,51);
INSERT INTO `help_relation` VALUES (644,51);
INSERT INTO `help_relation` VALUES (645,51);
INSERT INTO `help_relation` VALUES (646,51);
INSERT INTO `help_relation` VALUES (647,51);
INSERT INTO `help_relation` VALUES (648,51);
INSERT INTO `help_relation` VALUES (649,51);
INSERT INTO `help_relation` VALUES (651,51);
INSERT INTO `help_relation` VALUES (53,52);
INSERT INTO `help_relation` VALUES (508,52);
INSERT INTO `help_relation` VALUES (514,52);
INSERT INTO `help_relation` VALUES (520,52);
INSERT INTO `help_relation` VALUES (528,52);
INSERT INTO `help_relation` VALUES (552,52);
INSERT INTO `help_relation` VALUES (636,52);
INSERT INTO `help_relation` VALUES (662,52);
INSERT INTO `help_relation` VALUES (684,52);
INSERT INTO `help_relation` VALUES (687,52);
INSERT INTO `help_relation` VALUES (53,53);
INSERT INTO `help_relation` VALUES (508,53);
INSERT INTO `help_relation` VALUES (520,53);
INSERT INTO `help_relation` VALUES (521,53);
INSERT INTO `help_relation` VALUES (544,53);
INSERT INTO `help_relation` VALUES (53,54);
INSERT INTO `help_relation` VALUES (508,54);
INSERT INTO `help_relation` VALUES (520,54);
INSERT INTO `help_relation` VALUES (533,54);
INSERT INTO `help_relation` VALUES (537,54);
INSERT INTO `help_relation` VALUES (538,54);
INSERT INTO `help_relation` VALUES (543,54);
INSERT INTO `help_relation` VALUES (545,54);
INSERT INTO `help_relation` VALUES (555,54);
INSERT INTO `help_relation` VALUES (620,54);
INSERT INTO `help_relation` VALUES (621,54);
INSERT INTO `help_relation` VALUES (622,54);
INSERT INTO `help_relation` VALUES (623,54);
INSERT INTO `help_relation` VALUES (624,54);
INSERT INTO `help_relation` VALUES (636,54);
INSERT INTO `help_relation` VALUES (649,54);
INSERT INTO `help_relation` VALUES (678,54);
INSERT INTO `help_relation` VALUES (54,55);
INSERT INTO `help_relation` VALUES (79,55);
INSERT INTO `help_relation` VALUES (55,56);
INSERT INTO `help_relation` VALUES (56,57);
INSERT INTO `help_relation` VALUES (57,58);
INSERT INTO `help_relation` VALUES (58,59);
INSERT INTO `help_relation` VALUES (59,60);
INSERT INTO `help_relation` VALUES (60,61);
INSERT INTO `help_relation` VALUES (61,62);
INSERT INTO `help_relation` VALUES (75,62);
INSERT INTO `help_relation` VALUES (61,63);
INSERT INTO `help_relation` VALUES (62,63);
INSERT INTO `help_relation` VALUES (62,64);
INSERT INTO `help_relation` VALUES (66,64);
INSERT INTO `help_relation` VALUES (69,64);
INSERT INTO `help_relation` VALUES (71,64);
INSERT INTO `help_relation` VALUES (74,64);
INSERT INTO `help_relation` VALUES (232,64);
INSERT INTO `help_relation` VALUES (234,64);
INSERT INTO `help_relation` VALUES (511,64);
INSERT INTO `help_relation` VALUES (512,64);
INSERT INTO `help_relation` VALUES (513,64);
INSERT INTO `help_relation` VALUES (519,64);
INSERT INTO `help_relation` VALUES (606,64);
INSERT INTO `help_relation` VALUES (607,64);
INSERT INTO `help_relation` VALUES (63,65);
INSERT INTO `help_relation` VALUES (508,65);
INSERT INTO `help_relation` VALUES (64,66);
INSERT INTO `help_relation` VALUES (65,67);
INSERT INTO `help_relation` VALUES (66,67);
INSERT INTO `help_relation` VALUES (240,67);
INSERT INTO `help_relation` VALUES (550,67);
INSERT INTO `help_relation` VALUES (639,67);
INSERT INTO `help_relation` VALUES (642,67);
INSERT INTO `help_relation` VALUES (643,67);
INSERT INTO `help_relation` VALUES (662,67);
INSERT INTO `help_relation` VALUES (672,67);
INSERT INTO `help_relation` VALUES (67,68);
INSERT INTO `help_relation` VALUES (131,68);
INSERT INTO `help_relation` VALUES (513,68);
INSERT INTO `help_relation` VALUES (605,68);
INSERT INTO `help_relation` VALUES (607,68);
INSERT INTO `help_relation` VALUES (68,69);
INSERT INTO `help_relation` VALUES (69,69);
INSERT INTO `help_relation` VALUES (70,69);
INSERT INTO `help_relation` VALUES (71,69);
INSERT INTO `help_relation` VALUES (70,70);
INSERT INTO `help_relation` VALUES (71,70);
INSERT INTO `help_relation` VALUES (521,70);
INSERT INTO `help_relation` VALUES (72,71);
INSERT INTO `help_relation` VALUES (73,72);
INSERT INTO `help_relation` VALUES (76,73);
INSERT INTO `help_relation` VALUES (519,73);
INSERT INTO `help_relation` VALUES (77,74);
INSERT INTO `help_relation` VALUES (78,75);
INSERT INTO `help_relation` VALUES (80,76);
INSERT INTO `help_relation` VALUES (588,76);
INSERT INTO `help_relation` VALUES (80,77);
INSERT INTO `help_relation` VALUES (588,77);
INSERT INTO `help_relation` VALUES (80,78);
INSERT INTO `help_relation` VALUES (568,78);
INSERT INTO `help_relation` VALUES (585,78);
INSERT INTO `help_relation` VALUES (588,78);
INSERT INTO `help_relation` VALUES (589,78);
INSERT INTO `help_relation` VALUES (592,78);
INSERT INTO `help_relation` VALUES (593,78);
INSERT INTO `help_relation` VALUES (595,78);
INSERT INTO `help_relation` VALUES (80,79);
INSERT INTO `help_relation` VALUES (588,79);
INSERT INTO `help_relation` VALUES (589,79);
INSERT INTO `help_relation` VALUES (80,80);
INSERT INTO `help_relation` VALUES (588,80);
INSERT INTO `help_relation` VALUES (81,81);
INSERT INTO `help_relation` VALUES (511,81);
INSERT INTO `help_relation` VALUES (512,81);
INSERT INTO `help_relation` VALUES (513,81);
INSERT INTO `help_relation` VALUES (519,81);
INSERT INTO `help_relation` VALUES (525,81);
INSERT INTO `help_relation` VALUES (526,81);
INSERT INTO `help_relation` VALUES (527,81);
INSERT INTO `help_relation` VALUES (531,81);
INSERT INTO `help_relation` VALUES (532,81);
INSERT INTO `help_relation` VALUES (533,81);
INSERT INTO `help_relation` VALUES (536,81);
INSERT INTO `help_relation` VALUES (589,81);
INSERT INTO `help_relation` VALUES (605,81);
INSERT INTO `help_relation` VALUES (606,81);
INSERT INTO `help_relation` VALUES (607,81);
INSERT INTO `help_relation` VALUES (608,81);
INSERT INTO `help_relation` VALUES (609,81);
INSERT INTO `help_relation` VALUES (626,81);
INSERT INTO `help_relation` VALUES (689,81);
INSERT INTO `help_relation` VALUES (82,82);
INSERT INTO `help_relation` VALUES (83,83);
INSERT INTO `help_relation` VALUES (84,84);
INSERT INTO `help_relation` VALUES (85,85);
INSERT INTO `help_relation` VALUES (86,85);
INSERT INTO `help_relation` VALUES (87,86);
INSERT INTO `help_relation` VALUES (88,87);
INSERT INTO `help_relation` VALUES (89,88);
INSERT INTO `help_relation` VALUES (90,89);
INSERT INTO `help_relation` VALUES (109,89);
INSERT INTO `help_relation` VALUES (91,90);
INSERT INTO `help_relation` VALUES (92,91);
INSERT INTO `help_relation` VALUES (93,92);
INSERT INTO `help_relation` VALUES (94,93);
INSERT INTO `help_relation` VALUES (95,94);
INSERT INTO `help_relation` VALUES (96,95);
INSERT INTO `help_relation` VALUES (97,96);
INSERT INTO `help_relation` VALUES (98,97);
INSERT INTO `help_relation` VALUES (99,98);
INSERT INTO `help_relation` VALUES (100,99);
INSERT INTO `help_relation` VALUES (101,100);
INSERT INTO `help_relation` VALUES (102,101);
INSERT INTO `help_relation` VALUES (103,102);
INSERT INTO `help_relation` VALUES (104,103);
INSERT INTO `help_relation` VALUES (105,104);
INSERT INTO `help_relation` VALUES (106,105);
INSERT INTO `help_relation` VALUES (107,106);
INSERT INTO `help_relation` VALUES (108,107);
INSERT INTO `help_relation` VALUES (109,108);
INSERT INTO `help_relation` VALUES (110,109);
INSERT INTO `help_relation` VALUES (111,110);
INSERT INTO `help_relation` VALUES (112,111);
INSERT INTO `help_relation` VALUES (113,112);
INSERT INTO `help_relation` VALUES (114,113);
INSERT INTO `help_relation` VALUES (115,114);
INSERT INTO `help_relation` VALUES (116,115);
INSERT INTO `help_relation` VALUES (117,116);
INSERT INTO `help_relation` VALUES (118,117);
INSERT INTO `help_relation` VALUES (119,118);
INSERT INTO `help_relation` VALUES (120,119);
INSERT INTO `help_relation` VALUES (508,119);
INSERT INTO `help_relation` VALUES (538,119);
INSERT INTO `help_relation` VALUES (121,120);
INSERT INTO `help_relation` VALUES (122,121);
INSERT INTO `help_relation` VALUES (123,122);
INSERT INTO `help_relation` VALUES (124,123);
INSERT INTO `help_relation` VALUES (125,124);
INSERT INTO `help_relation` VALUES (126,125);
INSERT INTO `help_relation` VALUES (127,126);
INSERT INTO `help_relation` VALUES (128,127);
INSERT INTO `help_relation` VALUES (130,128);
INSERT INTO `help_relation` VALUES (131,129);
INSERT INTO `help_relation` VALUES (131,130);
INSERT INTO `help_relation` VALUES (133,130);
INSERT INTO `help_relation` VALUES (131,131);
INSERT INTO `help_relation` VALUES (134,131);
INSERT INTO `help_relation` VALUES (605,131);
INSERT INTO `help_relation` VALUES (607,131);
INSERT INTO `help_relation` VALUES (131,132);
INSERT INTO `help_relation` VALUES (131,133);
INSERT INTO `help_relation` VALUES (131,134);
INSERT INTO `help_relation` VALUES (131,135);
INSERT INTO `help_relation` VALUES (143,135);
INSERT INTO `help_relation` VALUES (131,136);
INSERT INTO `help_relation` VALUES (131,137);
INSERT INTO `help_relation` VALUES (131,138);
INSERT INTO `help_relation` VALUES (150,138);
INSERT INTO `help_relation` VALUES (131,139);
INSERT INTO `help_relation` VALUES (131,140);
INSERT INTO `help_relation` VALUES (151,140);
INSERT INTO `help_relation` VALUES (131,141);
INSERT INTO `help_relation` VALUES (157,141);
INSERT INTO `help_relation` VALUES (131,142);
INSERT INTO `help_relation` VALUES (179,142);
INSERT INTO `help_relation` VALUES (243,142);
INSERT INTO `help_relation` VALUES (131,143);
INSERT INTO `help_relation` VALUES (132,144);
INSERT INTO `help_relation` VALUES (135,145);
INSERT INTO `help_relation` VALUES (136,146);
INSERT INTO `help_relation` VALUES (137,147);
INSERT INTO `help_relation` VALUES (138,148);
INSERT INTO `help_relation` VALUES (139,149);
INSERT INTO `help_relation` VALUES (140,150);
INSERT INTO `help_relation` VALUES (141,151);
INSERT INTO `help_relation` VALUES (142,152);
INSERT INTO `help_relation` VALUES (144,153);
INSERT INTO `help_relation` VALUES (145,154);
INSERT INTO `help_relation` VALUES (146,155);
INSERT INTO `help_relation` VALUES (147,156);
INSERT INTO `help_relation` VALUES (148,157);
INSERT INTO `help_relation` VALUES (149,158);
INSERT INTO `help_relation` VALUES (152,159);
INSERT INTO `help_relation` VALUES (153,160);
INSERT INTO `help_relation` VALUES (154,161);
INSERT INTO `help_relation` VALUES (155,162);
INSERT INTO `help_relation` VALUES (156,163);
INSERT INTO `help_relation` VALUES (158,164);
INSERT INTO `help_relation` VALUES (159,165);
INSERT INTO `help_relation` VALUES (160,166);
INSERT INTO `help_relation` VALUES (161,167);
INSERT INTO `help_relation` VALUES (162,168);
INSERT INTO `help_relation` VALUES (163,169);
INSERT INTO `help_relation` VALUES (165,169);
INSERT INTO `help_relation` VALUES (214,169);
INSERT INTO `help_relation` VALUES (503,169);
INSERT INTO `help_relation` VALUES (516,169);
INSERT INTO `help_relation` VALUES (517,169);
INSERT INTO `help_relation` VALUES (529,169);
INSERT INTO `help_relation` VALUES (530,169);
INSERT INTO `help_relation` VALUES (625,169);
INSERT INTO `help_relation` VALUES (626,169);
INSERT INTO `help_relation` VALUES (636,169);
INSERT INTO `help_relation` VALUES (647,169);
INSERT INTO `help_relation` VALUES (659,169);
INSERT INTO `help_relation` VALUES (660,169);
INSERT INTO `help_relation` VALUES (164,170);
INSERT INTO `help_relation` VALUES (166,171);
INSERT INTO `help_relation` VALUES (167,172);
INSERT INTO `help_relation` VALUES (168,173);
INSERT INTO `help_relation` VALUES (169,174);
INSERT INTO `help_relation` VALUES (170,175);
INSERT INTO `help_relation` VALUES (171,176);
INSERT INTO `help_relation` VALUES (172,177);
INSERT INTO `help_relation` VALUES (173,178);
INSERT INTO `help_relation` VALUES (174,179);
INSERT INTO `help_relation` VALUES (175,180);
INSERT INTO `help_relation` VALUES (176,181);
INSERT INTO `help_relation` VALUES (177,182);
INSERT INTO `help_relation` VALUES (178,183);
INSERT INTO `help_relation` VALUES (180,184);
INSERT INTO `help_relation` VALUES (181,185);
INSERT INTO `help_relation` VALUES (182,186);
INSERT INTO `help_relation` VALUES (183,187);
INSERT INTO `help_relation` VALUES (185,188);
INSERT INTO `help_relation` VALUES (186,189);
INSERT INTO `help_relation` VALUES (187,190);
INSERT INTO `help_relation` VALUES (188,191);
INSERT INTO `help_relation` VALUES (189,192);
INSERT INTO `help_relation` VALUES (190,193);
INSERT INTO `help_relation` VALUES (191,194);
INSERT INTO `help_relation` VALUES (192,195);
INSERT INTO `help_relation` VALUES (193,196);
INSERT INTO `help_relation` VALUES (692,196);
INSERT INTO `help_relation` VALUES (693,196);
INSERT INTO `help_relation` VALUES (694,196);
INSERT INTO `help_relation` VALUES (194,197);
INSERT INTO `help_relation` VALUES (195,198);
INSERT INTO `help_relation` VALUES (196,199);
INSERT INTO `help_relation` VALUES (544,199);
INSERT INTO `help_relation` VALUES (545,199);
INSERT INTO `help_relation` VALUES (546,199);
INSERT INTO `help_relation` VALUES (197,200);
INSERT INTO `help_relation` VALUES (198,201);
INSERT INTO `help_relation` VALUES (199,202);
INSERT INTO `help_relation` VALUES (552,202);
INSERT INTO `help_relation` VALUES (200,203);
INSERT INTO `help_relation` VALUES (201,204);
INSERT INTO `help_relation` VALUES (202,205);
INSERT INTO `help_relation` VALUES (203,206);
INSERT INTO `help_relation` VALUES (204,207);
INSERT INTO `help_relation` VALUES (205,208);
INSERT INTO `help_relation` VALUES (206,209);
INSERT INTO `help_relation` VALUES (207,210);
INSERT INTO `help_relation` VALUES (208,211);
INSERT INTO `help_relation` VALUES (209,212);
INSERT INTO `help_relation` VALUES (210,213);
INSERT INTO `help_relation` VALUES (211,214);
INSERT INTO `help_relation` VALUES (212,215);
INSERT INTO `help_relation` VALUES (213,216);
INSERT INTO `help_relation` VALUES (593,216);
INSERT INTO `help_relation` VALUES (214,217);
INSERT INTO `help_relation` VALUES (519,217);
INSERT INTO `help_relation` VALUES (547,217);
INSERT INTO `help_relation` VALUES (548,217);
INSERT INTO `help_relation` VALUES (549,217);
INSERT INTO `help_relation` VALUES (605,217);
INSERT INTO `help_relation` VALUES (614,217);
INSERT INTO `help_relation` VALUES (215,218);
INSERT INTO `help_relation` VALUES (216,219);
INSERT INTO `help_relation` VALUES (552,219);
INSERT INTO `help_relation` VALUES (217,220);
INSERT INTO `help_relation` VALUES (218,221);
INSERT INTO `help_relation` VALUES (219,222);
INSERT INTO `help_relation` VALUES (220,223);
INSERT INTO `help_relation` VALUES (232,223);
INSERT INTO `help_relation` VALUES (636,223);
INSERT INTO `help_relation` VALUES (642,223);
INSERT INTO `help_relation` VALUES (643,223);
INSERT INTO `help_relation` VALUES (220,224);
INSERT INTO `help_relation` VALUES (221,225);
INSERT INTO `help_relation` VALUES (222,226);
INSERT INTO `help_relation` VALUES (223,227);
INSERT INTO `help_relation` VALUES (224,228);
INSERT INTO `help_relation` VALUES (225,229);
INSERT INTO `help_relation` VALUES (226,230);
INSERT INTO `help_relation` VALUES (226,231);
INSERT INTO `help_relation` VALUES (540,231);
INSERT INTO `help_relation` VALUES (543,231);
INSERT INTO `help_relation` VALUES (550,231);
INSERT INTO `help_relation` VALUES (636,231);
INSERT INTO `help_relation` VALUES (639,231);
INSERT INTO `help_relation` VALUES (642,231);
INSERT INTO `help_relation` VALUES (643,231);
INSERT INTO `help_relation` VALUES (662,231);
INSERT INTO `help_relation` VALUES (672,231);
INSERT INTO `help_relation` VALUES (226,232);
INSERT INTO `help_relation` VALUES (226,233);
INSERT INTO `help_relation` VALUES (226,234);
INSERT INTO `help_relation` VALUES (227,235);
INSERT INTO `help_relation` VALUES (228,236);
INSERT INTO `help_relation` VALUES (229,237);
INSERT INTO `help_relation` VALUES (230,238);
INSERT INTO `help_relation` VALUES (231,239);
INSERT INTO `help_relation` VALUES (233,240);
INSERT INTO `help_relation` VALUES (234,241);
INSERT INTO `help_relation` VALUES (235,242);
INSERT INTO `help_relation` VALUES (236,243);
INSERT INTO `help_relation` VALUES (237,244);
INSERT INTO `help_relation` VALUES (238,245);
INSERT INTO `help_relation` VALUES (239,246);
INSERT INTO `help_relation` VALUES (240,247);
INSERT INTO `help_relation` VALUES (240,248);
INSERT INTO `help_relation` VALUES (240,249);
INSERT INTO `help_relation` VALUES (240,250);
INSERT INTO `help_relation` VALUES (550,250);
INSERT INTO `help_relation` VALUES (240,251);
INSERT INTO `help_relation` VALUES (686,251);
INSERT INTO `help_relation` VALUES (240,252);
INSERT INTO `help_relation` VALUES (508,252);
INSERT INTO `help_relation` VALUES (514,252);
INSERT INTO `help_relation` VALUES (520,252);
INSERT INTO `help_relation` VALUES (605,252);
INSERT INTO `help_relation` VALUES (607,252);
INSERT INTO `help_relation` VALUES (610,252);
INSERT INTO `help_relation` VALUES (685,252);
INSERT INTO `help_relation` VALUES (241,253);
INSERT INTO `help_relation` VALUES (243,253);
INSERT INTO `help_relation` VALUES (569,253);
INSERT INTO `help_relation` VALUES (570,253);
INSERT INTO `help_relation` VALUES (637,253);
INSERT INTO `help_relation` VALUES (638,253);
INSERT INTO `help_relation` VALUES (685,253);
INSERT INTO `help_relation` VALUES (242,254);
INSERT INTO `help_relation` VALUES (242,255);
INSERT INTO `help_relation` VALUES (242,256);
INSERT INTO `help_relation` VALUES (243,256);
INSERT INTO `help_relation` VALUES (242,257);
INSERT INTO `help_relation` VALUES (243,257);
INSERT INTO `help_relation` VALUES (242,258);
INSERT INTO `help_relation` VALUES (243,259);
INSERT INTO `help_relation` VALUES (692,259);
INSERT INTO `help_relation` VALUES (693,259);
INSERT INTO `help_relation` VALUES (694,259);
INSERT INTO `help_relation` VALUES (243,260);
INSERT INTO `help_relation` VALUES (244,261);
INSERT INTO `help_relation` VALUES (245,262);
INSERT INTO `help_relation` VALUES (246,263);
INSERT INTO `help_relation` VALUES (247,264);
INSERT INTO `help_relation` VALUES (248,265);
INSERT INTO `help_relation` VALUES (249,266);
INSERT INTO `help_relation` VALUES (250,267);
INSERT INTO `help_relation` VALUES (251,268);
INSERT INTO `help_relation` VALUES (252,269);
INSERT INTO `help_relation` VALUES (253,270);
INSERT INTO `help_relation` VALUES (254,271);
INSERT INTO `help_relation` VALUES (255,272);
INSERT INTO `help_relation` VALUES (256,273);
INSERT INTO `help_relation` VALUES (257,274);
INSERT INTO `help_relation` VALUES (258,275);
INSERT INTO `help_relation` VALUES (258,276);
INSERT INTO `help_relation` VALUES (259,277);
INSERT INTO `help_relation` VALUES (260,278);
INSERT INTO `help_relation` VALUES (261,279);
INSERT INTO `help_relation` VALUES (262,280);
INSERT INTO `help_relation` VALUES (263,281);
INSERT INTO `help_relation` VALUES (264,282);
INSERT INTO `help_relation` VALUES (265,283);
INSERT INTO `help_relation` VALUES (266,284);
INSERT INTO `help_relation` VALUES (267,285);
INSERT INTO `help_relation` VALUES (268,286);
INSERT INTO `help_relation` VALUES (269,287);
INSERT INTO `help_relation` VALUES (270,288);
INSERT INTO `help_relation` VALUES (271,289);
INSERT INTO `help_relation` VALUES (633,289);
INSERT INTO `help_relation` VALUES (634,289);
INSERT INTO `help_relation` VALUES (272,290);
INSERT INTO `help_relation` VALUES (273,291);
INSERT INTO `help_relation` VALUES (636,291);
INSERT INTO `help_relation` VALUES (641,291);
INSERT INTO `help_relation` VALUES (274,292);
INSERT INTO `help_relation` VALUES (275,293);
INSERT INTO `help_relation` VALUES (276,294);
INSERT INTO `help_relation` VALUES (502,294);
INSERT INTO `help_relation` VALUES (513,294);
INSERT INTO `help_relation` VALUES (277,295);
INSERT INTO `help_relation` VALUES (500,295);
INSERT INTO `help_relation` VALUES (501,295);
INSERT INTO `help_relation` VALUES (511,295);
INSERT INTO `help_relation` VALUES (512,295);
INSERT INTO `help_relation` VALUES (518,295);
INSERT INTO `help_relation` VALUES (525,295);
INSERT INTO `help_relation` VALUES (526,295);
INSERT INTO `help_relation` VALUES (636,295);
INSERT INTO `help_relation` VALUES (644,295);
INSERT INTO `help_relation` VALUES (645,295);
INSERT INTO `help_relation` VALUES (278,296);
INSERT INTO `help_relation` VALUES (279,297);
INSERT INTO `help_relation` VALUES (280,298);
INSERT INTO `help_relation` VALUES (281,299);
INSERT INTO `help_relation` VALUES (282,300);
INSERT INTO `help_relation` VALUES (602,300);
INSERT INTO `help_relation` VALUES (283,301);
INSERT INTO `help_relation` VALUES (500,301);
INSERT INTO `help_relation` VALUES (501,301);
INSERT INTO `help_relation` VALUES (511,301);
INSERT INTO `help_relation` VALUES (512,301);
INSERT INTO `help_relation` VALUES (525,301);
INSERT INTO `help_relation` VALUES (526,301);
INSERT INTO `help_relation` VALUES (636,301);
INSERT INTO `help_relation` VALUES (644,301);
INSERT INTO `help_relation` VALUES (645,301);
INSERT INTO `help_relation` VALUES (284,302);
INSERT INTO `help_relation` VALUES (285,303);
INSERT INTO `help_relation` VALUES (286,304);
INSERT INTO `help_relation` VALUES (518,304);
INSERT INTO `help_relation` VALUES (577,304);
INSERT INTO `help_relation` VALUES (578,304);
INSERT INTO `help_relation` VALUES (605,304);
INSERT INTO `help_relation` VALUES (607,304);
INSERT INTO `help_relation` VALUES (609,304);
INSERT INTO `help_relation` VALUES (611,304);
INSERT INTO `help_relation` VALUES (617,304);
INSERT INTO `help_relation` VALUES (651,304);
INSERT INTO `help_relation` VALUES (287,305);
INSERT INTO `help_relation` VALUES (288,306);
INSERT INTO `help_relation` VALUES (288,307);
INSERT INTO `help_relation` VALUES (289,308);
INSERT INTO `help_relation` VALUES (289,309);
INSERT INTO `help_relation` VALUES (290,310);
INSERT INTO `help_relation` VALUES (290,311);
INSERT INTO `help_relation` VALUES (291,312);
INSERT INTO `help_relation` VALUES (291,313);
INSERT INTO `help_relation` VALUES (292,314);
INSERT INTO `help_relation` VALUES (292,315);
INSERT INTO `help_relation` VALUES (293,316);
INSERT INTO `help_relation` VALUES (293,317);
INSERT INTO `help_relation` VALUES (294,318);
INSERT INTO `help_relation` VALUES (295,319);
INSERT INTO `help_relation` VALUES (295,320);
INSERT INTO `help_relation` VALUES (296,321);
INSERT INTO `help_relation` VALUES (296,322);
INSERT INTO `help_relation` VALUES (297,323);
INSERT INTO `help_relation` VALUES (297,324);
INSERT INTO `help_relation` VALUES (298,325);
INSERT INTO `help_relation` VALUES (298,326);
INSERT INTO `help_relation` VALUES (299,327);
INSERT INTO `help_relation` VALUES (299,328);
INSERT INTO `help_relation` VALUES (300,329);
INSERT INTO `help_relation` VALUES (300,330);
INSERT INTO `help_relation` VALUES (301,331);
INSERT INTO `help_relation` VALUES (301,332);
INSERT INTO `help_relation` VALUES (302,333);
INSERT INTO `help_relation` VALUES (303,334);
INSERT INTO `help_relation` VALUES (303,335);
INSERT INTO `help_relation` VALUES (304,336);
INSERT INTO `help_relation` VALUES (305,337);
INSERT INTO `help_relation` VALUES (306,338);
INSERT INTO `help_relation` VALUES (307,339);
INSERT INTO `help_relation` VALUES (308,340);
INSERT INTO `help_relation` VALUES (309,341);
INSERT INTO `help_relation` VALUES (310,342);
INSERT INTO `help_relation` VALUES (311,343);
INSERT INTO `help_relation` VALUES (312,344);
INSERT INTO `help_relation` VALUES (312,345);
INSERT INTO `help_relation` VALUES (313,346);
INSERT INTO `help_relation` VALUES (313,347);
INSERT INTO `help_relation` VALUES (314,348);
INSERT INTO `help_relation` VALUES (315,349);
INSERT INTO `help_relation` VALUES (316,350);
INSERT INTO `help_relation` VALUES (317,351);
INSERT INTO `help_relation` VALUES (318,352);
INSERT INTO `help_relation` VALUES (319,353);
INSERT INTO `help_relation` VALUES (320,354);
INSERT INTO `help_relation` VALUES (321,355);
INSERT INTO `help_relation` VALUES (322,356);
INSERT INTO `help_relation` VALUES (323,357);
INSERT INTO `help_relation` VALUES (324,358);
INSERT INTO `help_relation` VALUES (325,359);
INSERT INTO `help_relation` VALUES (326,360);
INSERT INTO `help_relation` VALUES (327,361);
INSERT INTO `help_relation` VALUES (328,362);
INSERT INTO `help_relation` VALUES (329,363);
INSERT INTO `help_relation` VALUES (330,364);
INSERT INTO `help_relation` VALUES (331,365);
INSERT INTO `help_relation` VALUES (332,366);
INSERT INTO `help_relation` VALUES (333,367);
INSERT INTO `help_relation` VALUES (334,368);
INSERT INTO `help_relation` VALUES (335,369);
INSERT INTO `help_relation` VALUES (335,370);
INSERT INTO `help_relation` VALUES (336,371);
INSERT INTO `help_relation` VALUES (337,372);
INSERT INTO `help_relation` VALUES (338,373);
INSERT INTO `help_relation` VALUES (339,374);
INSERT INTO `help_relation` VALUES (340,375);
INSERT INTO `help_relation` VALUES (341,376);
INSERT INTO `help_relation` VALUES (342,377);
INSERT INTO `help_relation` VALUES (343,378);
INSERT INTO `help_relation` VALUES (344,379);
INSERT INTO `help_relation` VALUES (345,380);
INSERT INTO `help_relation` VALUES (346,381);
INSERT INTO `help_relation` VALUES (347,382);
INSERT INTO `help_relation` VALUES (348,383);
INSERT INTO `help_relation` VALUES (349,384);
INSERT INTO `help_relation` VALUES (350,385);
INSERT INTO `help_relation` VALUES (351,386);
INSERT INTO `help_relation` VALUES (352,387);
INSERT INTO `help_relation` VALUES (353,388);
INSERT INTO `help_relation` VALUES (354,389);
INSERT INTO `help_relation` VALUES (355,390);
INSERT INTO `help_relation` VALUES (356,391);
INSERT INTO `help_relation` VALUES (357,392);
INSERT INTO `help_relation` VALUES (358,393);
INSERT INTO `help_relation` VALUES (359,394);
INSERT INTO `help_relation` VALUES (360,395);
INSERT INTO `help_relation` VALUES (361,396);
INSERT INTO `help_relation` VALUES (362,397);
INSERT INTO `help_relation` VALUES (363,398);
INSERT INTO `help_relation` VALUES (364,399);
INSERT INTO `help_relation` VALUES (365,400);
INSERT INTO `help_relation` VALUES (366,401);
INSERT INTO `help_relation` VALUES (367,402);
INSERT INTO `help_relation` VALUES (368,403);
INSERT INTO `help_relation` VALUES (369,404);
INSERT INTO `help_relation` VALUES (370,405);
INSERT INTO `help_relation` VALUES (371,406);
INSERT INTO `help_relation` VALUES (372,407);
INSERT INTO `help_relation` VALUES (373,408);
INSERT INTO `help_relation` VALUES (374,409);
INSERT INTO `help_relation` VALUES (375,410);
INSERT INTO `help_relation` VALUES (376,411);
INSERT INTO `help_relation` VALUES (377,412);
INSERT INTO `help_relation` VALUES (378,413);
INSERT INTO `help_relation` VALUES (379,414);
INSERT INTO `help_relation` VALUES (380,415);
INSERT INTO `help_relation` VALUES (381,416);
INSERT INTO `help_relation` VALUES (382,417);
INSERT INTO `help_relation` VALUES (383,418);
INSERT INTO `help_relation` VALUES (384,419);
INSERT INTO `help_relation` VALUES (385,420);
INSERT INTO `help_relation` VALUES (386,421);
INSERT INTO `help_relation` VALUES (387,421);
INSERT INTO `help_relation` VALUES (386,422);
INSERT INTO `help_relation` VALUES (386,423);
INSERT INTO `help_relation` VALUES (387,424);
INSERT INTO `help_relation` VALUES (387,425);
INSERT INTO `help_relation` VALUES (387,426);
INSERT INTO `help_relation` VALUES (388,427);
INSERT INTO `help_relation` VALUES (389,428);
INSERT INTO `help_relation` VALUES (390,429);
INSERT INTO `help_relation` VALUES (391,430);
INSERT INTO `help_relation` VALUES (392,431);
INSERT INTO `help_relation` VALUES (392,432);
INSERT INTO `help_relation` VALUES (393,433);
INSERT INTO `help_relation` VALUES (394,434);
INSERT INTO `help_relation` VALUES (395,435);
INSERT INTO `help_relation` VALUES (396,436);
INSERT INTO `help_relation` VALUES (397,437);
INSERT INTO `help_relation` VALUES (398,438);
INSERT INTO `help_relation` VALUES (399,439);
INSERT INTO `help_relation` VALUES (400,440);
INSERT INTO `help_relation` VALUES (401,441);
INSERT INTO `help_relation` VALUES (402,442);
INSERT INTO `help_relation` VALUES (403,443);
INSERT INTO `help_relation` VALUES (404,444);
INSERT INTO `help_relation` VALUES (405,445);
INSERT INTO `help_relation` VALUES (406,446);
INSERT INTO `help_relation` VALUES (407,447);
INSERT INTO `help_relation` VALUES (408,448);
INSERT INTO `help_relation` VALUES (409,449);
INSERT INTO `help_relation` VALUES (410,450);
INSERT INTO `help_relation` VALUES (411,451);
INSERT INTO `help_relation` VALUES (412,452);
INSERT INTO `help_relation` VALUES (413,453);
INSERT INTO `help_relation` VALUES (414,454);
INSERT INTO `help_relation` VALUES (415,455);
INSERT INTO `help_relation` VALUES (416,456);
INSERT INTO `help_relation` VALUES (417,457);
INSERT INTO `help_relation` VALUES (417,458);
INSERT INTO `help_relation` VALUES (422,458);
INSERT INTO `help_relation` VALUES (423,458);
INSERT INTO `help_relation` VALUES (426,458);
INSERT INTO `help_relation` VALUES (427,458);
INSERT INTO `help_relation` VALUES (432,458);
INSERT INTO `help_relation` VALUES (550,458);
INSERT INTO `help_relation` VALUES (553,458);
INSERT INTO `help_relation` VALUES (418,459);
INSERT INTO `help_relation` VALUES (419,460);
INSERT INTO `help_relation` VALUES (420,461);
INSERT INTO `help_relation` VALUES (421,462);
INSERT INTO `help_relation` VALUES (422,462);
INSERT INTO `help_relation` VALUES (657,462);
INSERT INTO `help_relation` VALUES (682,462);
INSERT INTO `help_relation` VALUES (423,463);
INSERT INTO `help_relation` VALUES (550,463);
INSERT INTO `help_relation` VALUES (423,464);
INSERT INTO `help_relation` VALUES (508,464);
INSERT INTO `help_relation` VALUES (520,464);
INSERT INTO `help_relation` VALUES (540,464);
INSERT INTO `help_relation` VALUES (547,464);
INSERT INTO `help_relation` VALUES (548,464);
INSERT INTO `help_relation` VALUES (550,464);
INSERT INTO `help_relation` VALUES (554,464);
INSERT INTO `help_relation` VALUES (556,464);
INSERT INTO `help_relation` VALUES (605,464);
INSERT INTO `help_relation` VALUES (607,464);
INSERT INTO `help_relation` VALUES (423,465);
INSERT INTO `help_relation` VALUES (550,465);
INSERT INTO `help_relation` VALUES (692,465);
INSERT INTO `help_relation` VALUES (693,465);
INSERT INTO `help_relation` VALUES (694,465);
INSERT INTO `help_relation` VALUES (423,466);
INSERT INTO `help_relation` VALUES (423,467);
INSERT INTO `help_relation` VALUES (508,467);
INSERT INTO `help_relation` VALUES (540,467);
INSERT INTO `help_relation` VALUES (550,467);
INSERT INTO `help_relation` VALUES (554,467);
INSERT INTO `help_relation` VALUES (555,467);
INSERT INTO `help_relation` VALUES (556,467);
INSERT INTO `help_relation` VALUES (557,467);
INSERT INTO `help_relation` VALUES (423,468);
INSERT INTO `help_relation` VALUES (424,469);
INSERT INTO `help_relation` VALUES (425,470);
INSERT INTO `help_relation` VALUES (426,471);
INSERT INTO `help_relation` VALUES (427,472);
INSERT INTO `help_relation` VALUES (428,473);
INSERT INTO `help_relation` VALUES (429,474);
INSERT INTO `help_relation` VALUES (430,475);
INSERT INTO `help_relation` VALUES (431,476);
INSERT INTO `help_relation` VALUES (432,477);
INSERT INTO `help_relation` VALUES (433,478);
INSERT INTO `help_relation` VALUES (434,479);
INSERT INTO `help_relation` VALUES (435,480);
INSERT INTO `help_relation` VALUES (436,481);
INSERT INTO `help_relation` VALUES (437,482);
INSERT INTO `help_relation` VALUES (438,483);
INSERT INTO `help_relation` VALUES (439,484);
INSERT INTO `help_relation` VALUES (440,485);
INSERT INTO `help_relation` VALUES (441,486);
INSERT INTO `help_relation` VALUES (442,487);
INSERT INTO `help_relation` VALUES (443,488);
INSERT INTO `help_relation` VALUES (444,489);
INSERT INTO `help_relation` VALUES (445,490);
INSERT INTO `help_relation` VALUES (446,491);
INSERT INTO `help_relation` VALUES (447,492);
INSERT INTO `help_relation` VALUES (448,493);
INSERT INTO `help_relation` VALUES (449,494);
INSERT INTO `help_relation` VALUES (450,495);
INSERT INTO `help_relation` VALUES (451,496);
INSERT INTO `help_relation` VALUES (452,497);
INSERT INTO `help_relation` VALUES (453,498);
INSERT INTO `help_relation` VALUES (454,499);
INSERT INTO `help_relation` VALUES (455,500);
INSERT INTO `help_relation` VALUES (456,501);
INSERT INTO `help_relation` VALUES (457,502);
INSERT INTO `help_relation` VALUES (458,503);
INSERT INTO `help_relation` VALUES (459,504);
INSERT INTO `help_relation` VALUES (460,505);
INSERT INTO `help_relation` VALUES (461,506);
INSERT INTO `help_relation` VALUES (462,507);
INSERT INTO `help_relation` VALUES (463,508);
INSERT INTO `help_relation` VALUES (464,509);
INSERT INTO `help_relation` VALUES (465,510);
INSERT INTO `help_relation` VALUES (466,511);
INSERT INTO `help_relation` VALUES (467,512);
INSERT INTO `help_relation` VALUES (468,513);
INSERT INTO `help_relation` VALUES (469,514);
INSERT INTO `help_relation` VALUES (470,515);
INSERT INTO `help_relation` VALUES (471,516);
INSERT INTO `help_relation` VALUES (472,517);
INSERT INTO `help_relation` VALUES (473,518);
INSERT INTO `help_relation` VALUES (474,519);
INSERT INTO `help_relation` VALUES (475,520);
INSERT INTO `help_relation` VALUES (476,521);
INSERT INTO `help_relation` VALUES (477,522);
INSERT INTO `help_relation` VALUES (478,523);
INSERT INTO `help_relation` VALUES (479,524);
INSERT INTO `help_relation` VALUES (480,525);
INSERT INTO `help_relation` VALUES (481,526);
INSERT INTO `help_relation` VALUES (483,527);
INSERT INTO `help_relation` VALUES (484,528);
INSERT INTO `help_relation` VALUES (485,529);
INSERT INTO `help_relation` VALUES (486,530);
INSERT INTO `help_relation` VALUES (487,531);
INSERT INTO `help_relation` VALUES (488,532);
INSERT INTO `help_relation` VALUES (489,533);
INSERT INTO `help_relation` VALUES (490,534);
INSERT INTO `help_relation` VALUES (491,535);
INSERT INTO `help_relation` VALUES (492,536);
INSERT INTO `help_relation` VALUES (493,537);
INSERT INTO `help_relation` VALUES (494,538);
INSERT INTO `help_relation` VALUES (495,539);
INSERT INTO `help_relation` VALUES (496,540);
INSERT INTO `help_relation` VALUES (497,541);
INSERT INTO `help_relation` VALUES (498,542);
INSERT INTO `help_relation` VALUES (499,543);
INSERT INTO `help_relation` VALUES (544,543);
INSERT INTO `help_relation` VALUES (549,543);
INSERT INTO `help_relation` VALUES (557,543);
INSERT INTO `help_relation` VALUES (500,544);
INSERT INTO `help_relation` VALUES (501,544);
INSERT INTO `help_relation` VALUES (508,544);
INSERT INTO `help_relation` VALUES (511,544);
INSERT INTO `help_relation` VALUES (512,544);
INSERT INTO `help_relation` VALUES (520,544);
INSERT INTO `help_relation` VALUES (500,545);
INSERT INTO `help_relation` VALUES (501,545);
INSERT INTO `help_relation` VALUES (508,545);
INSERT INTO `help_relation` VALUES (511,545);
INSERT INTO `help_relation` VALUES (512,545);
INSERT INTO `help_relation` VALUES (520,545);
INSERT INTO `help_relation` VALUES (500,546);
INSERT INTO `help_relation` VALUES (501,546);
INSERT INTO `help_relation` VALUES (558,546);
INSERT INTO `help_relation` VALUES (559,546);
INSERT INTO `help_relation` VALUES (560,546);
INSERT INTO `help_relation` VALUES (561,546);
INSERT INTO `help_relation` VALUES (567,546);
INSERT INTO `help_relation` VALUES (568,546);
INSERT INTO `help_relation` VALUES (500,547);
INSERT INTO `help_relation` VALUES (501,547);
INSERT INTO `help_relation` VALUES (542,547);
INSERT INTO `help_relation` VALUES (558,547);
INSERT INTO `help_relation` VALUES (559,547);
INSERT INTO `help_relation` VALUES (560,547);
INSERT INTO `help_relation` VALUES (561,547);
INSERT INTO `help_relation` VALUES (566,547);
INSERT INTO `help_relation` VALUES (567,547);
INSERT INTO `help_relation` VALUES (568,547);
INSERT INTO `help_relation` VALUES (685,547);
INSERT INTO `help_relation` VALUES (500,548);
INSERT INTO `help_relation` VALUES (501,548);
INSERT INTO `help_relation` VALUES (508,548);
INSERT INTO `help_relation` VALUES (511,548);
INSERT INTO `help_relation` VALUES (512,548);
INSERT INTO `help_relation` VALUES (520,548);
INSERT INTO `help_relation` VALUES (521,548);
INSERT INTO `help_relation` VALUES (544,548);
INSERT INTO `help_relation` VALUES (547,548);
INSERT INTO `help_relation` VALUES (548,548);
INSERT INTO `help_relation` VALUES (549,548);
INSERT INTO `help_relation` VALUES (550,548);
INSERT INTO `help_relation` VALUES (556,548);
INSERT INTO `help_relation` VALUES (558,548);
INSERT INTO `help_relation` VALUES (559,548);
INSERT INTO `help_relation` VALUES (560,548);
INSERT INTO `help_relation` VALUES (561,548);
INSERT INTO `help_relation` VALUES (572,548);
INSERT INTO `help_relation` VALUES (603,548);
INSERT INTO `help_relation` VALUES (604,548);
INSERT INTO `help_relation` VALUES (613,548);
INSERT INTO `help_relation` VALUES (614,548);
INSERT INTO `help_relation` VALUES (615,548);
INSERT INTO `help_relation` VALUES (619,548);
INSERT INTO `help_relation` VALUES (632,548);
INSERT INTO `help_relation` VALUES (633,548);
INSERT INTO `help_relation` VALUES (634,548);
INSERT INTO `help_relation` VALUES (635,548);
INSERT INTO `help_relation` VALUES (636,548);
INSERT INTO `help_relation` VALUES (640,548);
INSERT INTO `help_relation` VALUES (502,549);
INSERT INTO `help_relation` VALUES (508,549);
INSERT INTO `help_relation` VALUES (513,549);
INSERT INTO `help_relation` VALUES (514,549);
INSERT INTO `help_relation` VALUES (520,549);
INSERT INTO `help_relation` VALUES (522,549);
INSERT INTO `help_relation` VALUES (605,549);
INSERT INTO `help_relation` VALUES (607,549);
INSERT INTO `help_relation` VALUES (502,550);
INSERT INTO `help_relation` VALUES (513,550);
INSERT INTO `help_relation` VALUES (502,551);
INSERT INTO `help_relation` VALUES (513,551);
INSERT INTO `help_relation` VALUES (502,552);
INSERT INTO `help_relation` VALUES (508,552);
INSERT INTO `help_relation` VALUES (513,552);
INSERT INTO `help_relation` VALUES (616,552);
INSERT INTO `help_relation` VALUES (617,552);
INSERT INTO `help_relation` VALUES (502,553);
INSERT INTO `help_relation` VALUES (513,553);
INSERT INTO `help_relation` VALUES (541,553);
INSERT INTO `help_relation` VALUES (595,553);
INSERT INTO `help_relation` VALUES (502,554);
INSERT INTO `help_relation` VALUES (508,554);
INSERT INTO `help_relation` VALUES (513,554);
INSERT INTO `help_relation` VALUES (616,554);
INSERT INTO `help_relation` VALUES (617,554);
INSERT INTO `help_relation` VALUES (502,555);
INSERT INTO `help_relation` VALUES (513,555);
INSERT INTO `help_relation` VALUES (527,555);
INSERT INTO `help_relation` VALUES (646,555);
INSERT INTO `help_relation` VALUES (502,556);
INSERT INTO `help_relation` VALUES (504,556);
INSERT INTO `help_relation` VALUES (513,556);
INSERT INTO `help_relation` VALUES (521,556);
INSERT INTO `help_relation` VALUES (552,556);
INSERT INTO `help_relation` VALUES (502,557);
INSERT INTO `help_relation` VALUES (513,557);
INSERT INTO `help_relation` VALUES (502,558);
INSERT INTO `help_relation` VALUES (508,558);
INSERT INTO `help_relation` VALUES (509,558);
INSERT INTO `help_relation` VALUES (537,558);
INSERT INTO `help_relation` VALUES (611,558);
INSERT INTO `help_relation` VALUES (502,559);
INSERT INTO `help_relation` VALUES (513,559);
INSERT INTO `help_relation` VALUES (502,560);
INSERT INTO `help_relation` VALUES (513,560);
INSERT INTO `help_relation` VALUES (576,560);
INSERT INTO `help_relation` VALUES (578,560);
INSERT INTO `help_relation` VALUES (580,560);
INSERT INTO `help_relation` VALUES (674,560);
INSERT INTO `help_relation` VALUES (676,560);
INSERT INTO `help_relation` VALUES (688,560);
INSERT INTO `help_relation` VALUES (504,561);
INSERT INTO `help_relation` VALUES (639,561);
INSERT INTO `help_relation` VALUES (683,561);
INSERT INTO `help_relation` VALUES (504,562);
INSERT INTO `help_relation` VALUES (573,562);
INSERT INTO `help_relation` VALUES (575,562);
INSERT INTO `help_relation` VALUES (576,562);
INSERT INTO `help_relation` VALUES (577,562);
INSERT INTO `help_relation` VALUES (578,562);
INSERT INTO `help_relation` VALUES (579,562);
INSERT INTO `help_relation` VALUES (580,562);
INSERT INTO `help_relation` VALUES (672,562);
INSERT INTO `help_relation` VALUES (675,562);
INSERT INTO `help_relation` VALUES (676,562);
INSERT INTO `help_relation` VALUES (685,562);
INSERT INTO `help_relation` VALUES (504,563);
INSERT INTO `help_relation` VALUES (685,563);
INSERT INTO `help_relation` VALUES (504,564);
INSERT INTO `help_relation` VALUES (550,564);
INSERT INTO `help_relation` VALUES (573,564);
INSERT INTO `help_relation` VALUES (575,564);
INSERT INTO `help_relation` VALUES (576,564);
INSERT INTO `help_relation` VALUES (577,564);
INSERT INTO `help_relation` VALUES (578,564);
INSERT INTO `help_relation` VALUES (579,564);
INSERT INTO `help_relation` VALUES (580,564);
INSERT INTO `help_relation` VALUES (597,564);
INSERT INTO `help_relation` VALUES (600,564);
INSERT INTO `help_relation` VALUES (601,564);
INSERT INTO `help_relation` VALUES (614,564);
INSERT INTO `help_relation` VALUES (619,564);
INSERT INTO `help_relation` VALUES (636,564);
INSERT INTO `help_relation` VALUES (672,564);
INSERT INTO `help_relation` VALUES (675,564);
INSERT INTO `help_relation` VALUES (676,564);
INSERT INTO `help_relation` VALUES (685,564);
INSERT INTO `help_relation` VALUES (692,564);
INSERT INTO `help_relation` VALUES (693,564);
INSERT INTO `help_relation` VALUES (694,564);
INSERT INTO `help_relation` VALUES (504,565);
INSERT INTO `help_relation` VALUES (520,565);
INSERT INTO `help_relation` VALUES (636,565);
INSERT INTO `help_relation` VALUES (504,566);
INSERT INTO `help_relation` VALUES (565,566);
INSERT INTO `help_relation` VALUES (504,567);
INSERT INTO `help_relation` VALUES (569,567);
INSERT INTO `help_relation` VALUES (570,567);
INSERT INTO `help_relation` VALUES (571,567);
INSERT INTO `help_relation` VALUES (573,567);
INSERT INTO `help_relation` VALUES (637,567);
INSERT INTO `help_relation` VALUES (638,567);
INSERT INTO `help_relation` VALUES (663,567);
INSERT INTO `help_relation` VALUES (688,567);
INSERT INTO `help_relation` VALUES (504,568);
INSERT INTO `help_relation` VALUES (520,568);
INSERT INTO `help_relation` VALUES (521,568);
INSERT INTO `help_relation` VALUES (504,569);
INSERT INTO `help_relation` VALUES (504,570);
INSERT INTO `help_relation` VALUES (610,570);
INSERT INTO `help_relation` VALUES (504,571);
INSERT INTO `help_relation` VALUES (558,571);
INSERT INTO `help_relation` VALUES (559,571);
INSERT INTO `help_relation` VALUES (560,571);
INSERT INTO `help_relation` VALUES (561,571);
INSERT INTO `help_relation` VALUES (562,571);
INSERT INTO `help_relation` VALUES (563,571);
INSERT INTO `help_relation` VALUES (564,571);
INSERT INTO `help_relation` VALUES (568,571);
INSERT INTO `help_relation` VALUES (504,572);
INSERT INTO `help_relation` VALUES (505,573);
INSERT INTO `help_relation` VALUES (515,573);
INSERT INTO `help_relation` VALUES (522,573);
INSERT INTO `help_relation` VALUES (550,573);
INSERT INTO `help_relation` VALUES (616,573);
INSERT INTO `help_relation` VALUES (617,573);
INSERT INTO `help_relation` VALUES (618,573);
INSERT INTO `help_relation` VALUES (619,573);
INSERT INTO `help_relation` VALUES (505,574);
INSERT INTO `help_relation` VALUES (515,574);
INSERT INTO `help_relation` VALUES (522,574);
INSERT INTO `help_relation` VALUES (506,575);
INSERT INTO `help_relation` VALUES (516,575);
INSERT INTO `help_relation` VALUES (517,575);
INSERT INTO `help_relation` VALUES (529,575);
INSERT INTO `help_relation` VALUES (530,575);
INSERT INTO `help_relation` VALUES (636,575);
INSERT INTO `help_relation` VALUES (648,575);
INSERT INTO `help_relation` VALUES (667,575);
INSERT INTO `help_relation` VALUES (668,575);
INSERT INTO `help_relation` VALUES (507,576);
INSERT INTO `help_relation` VALUES (518,576);
INSERT INTO `help_relation` VALUES (507,577);
INSERT INTO `help_relation` VALUES (518,577);
INSERT INTO `help_relation` VALUES (531,577);
INSERT INTO `help_relation` VALUES (508,578);
INSERT INTO `help_relation` VALUES (508,579);
INSERT INTO `help_relation` VALUES (508,580);
INSERT INTO `help_relation` VALUES (620,580);
INSERT INTO `help_relation` VALUES (692,580);
INSERT INTO `help_relation` VALUES (693,580);
INSERT INTO `help_relation` VALUES (694,580);
INSERT INTO `help_relation` VALUES (508,581);
INSERT INTO `help_relation` VALUES (508,582);
INSERT INTO `help_relation` VALUES (520,582);
INSERT INTO `help_relation` VALUES (508,583);
INSERT INTO `help_relation` VALUES (573,583);
INSERT INTO `help_relation` VALUES (574,583);
INSERT INTO `help_relation` VALUES (508,584);
INSERT INTO `help_relation` VALUES (520,584);
INSERT INTO `help_relation` VALUES (621,584);
INSERT INTO `help_relation` VALUES (508,585);
INSERT INTO `help_relation` VALUES (520,585);
INSERT INTO `help_relation` VALUES (622,585);
INSERT INTO `help_relation` VALUES (508,586);
INSERT INTO `help_relation` VALUES (508,587);
INSERT INTO `help_relation` VALUES (520,587);
INSERT INTO `help_relation` VALUES (547,587);
INSERT INTO `help_relation` VALUES (636,587);
INSERT INTO `help_relation` VALUES (642,587);
INSERT INTO `help_relation` VALUES (643,587);
INSERT INTO `help_relation` VALUES (508,588);
INSERT INTO `help_relation` VALUES (520,588);
INSERT INTO `help_relation` VALUES (508,589);
INSERT INTO `help_relation` VALUES (520,589);
INSERT INTO `help_relation` VALUES (686,589);
INSERT INTO `help_relation` VALUES (692,589);
INSERT INTO `help_relation` VALUES (693,589);
INSERT INTO `help_relation` VALUES (694,589);
INSERT INTO `help_relation` VALUES (508,590);
INSERT INTO `help_relation` VALUES (520,590);
INSERT INTO `help_relation` VALUES (508,591);
INSERT INTO `help_relation` VALUES (518,591);
INSERT INTO `help_relation` VALUES (520,591);
INSERT INTO `help_relation` VALUES (547,591);
INSERT INTO `help_relation` VALUES (508,592);
INSERT INTO `help_relation` VALUES (520,592);
INSERT INTO `help_relation` VALUES (508,593);
INSERT INTO `help_relation` VALUES (520,593);
INSERT INTO `help_relation` VALUES (508,594);
INSERT INTO `help_relation` VALUES (605,594);
INSERT INTO `help_relation` VALUES (508,595);
INSERT INTO `help_relation` VALUES (509,595);
INSERT INTO `help_relation` VALUES (525,595);
INSERT INTO `help_relation` VALUES (526,595);
INSERT INTO `help_relation` VALUES (527,595);
INSERT INTO `help_relation` VALUES (528,595);
INSERT INTO `help_relation` VALUES (529,595);
INSERT INTO `help_relation` VALUES (530,595);
INSERT INTO `help_relation` VALUES (531,595);
INSERT INTO `help_relation` VALUES (532,595);
INSERT INTO `help_relation` VALUES (533,595);
INSERT INTO `help_relation` VALUES (534,595);
INSERT INTO `help_relation` VALUES (535,595);
INSERT INTO `help_relation` VALUES (536,595);
INSERT INTO `help_relation` VALUES (583,595);
INSERT INTO `help_relation` VALUES (584,595);
INSERT INTO `help_relation` VALUES (608,595);
INSERT INTO `help_relation` VALUES (609,595);
INSERT INTO `help_relation` VALUES (618,595);
INSERT INTO `help_relation` VALUES (626,595);
INSERT INTO `help_relation` VALUES (508,596);
INSERT INTO `help_relation` VALUES (509,596);
INSERT INTO `help_relation` VALUES (520,596);
INSERT INTO `help_relation` VALUES (522,596);
INSERT INTO `help_relation` VALUES (534,596);
INSERT INTO `help_relation` VALUES (636,596);
INSERT INTO `help_relation` VALUES (655,596);
INSERT INTO `help_relation` VALUES (685,596);
INSERT INTO `help_relation` VALUES (508,597);
INSERT INTO `help_relation` VALUES (508,598);
INSERT INTO `help_relation` VALUES (520,598);
INSERT INTO `help_relation` VALUES (542,598);
INSERT INTO `help_relation` VALUES (508,599);
INSERT INTO `help_relation` VALUES (518,599);
INSERT INTO `help_relation` VALUES (520,599);
INSERT INTO `help_relation` VALUES (521,599);
INSERT INTO `help_relation` VALUES (508,600);
INSERT INTO `help_relation` VALUES (514,600);
INSERT INTO `help_relation` VALUES (520,600);
INSERT INTO `help_relation` VALUES (508,601);
INSERT INTO `help_relation` VALUES (543,601);
INSERT INTO `help_relation` VALUES (547,601);
INSERT INTO `help_relation` VALUES (508,602);
INSERT INTO `help_relation` VALUES (520,602);
INSERT INTO `help_relation` VALUES (508,603);
INSERT INTO `help_relation` VALUES (514,603);
INSERT INTO `help_relation` VALUES (520,603);
INSERT INTO `help_relation` VALUES (508,604);
INSERT INTO `help_relation` VALUES (636,604);
INSERT INTO `help_relation` VALUES (662,604);
INSERT INTO `help_relation` VALUES (508,605);
INSERT INTO `help_relation` VALUES (520,605);
INSERT INTO `help_relation` VALUES (508,606);
INSERT INTO `help_relation` VALUES (550,606);
INSERT INTO `help_relation` VALUES (565,606);
INSERT INTO `help_relation` VALUES (566,606);
INSERT INTO `help_relation` VALUES (605,606);
INSERT INTO `help_relation` VALUES (607,606);
INSERT INTO `help_relation` VALUES (685,606);
INSERT INTO `help_relation` VALUES (508,607);
INSERT INTO `help_relation` VALUES (520,607);
INSERT INTO `help_relation` VALUES (508,608);
INSERT INTO `help_relation` VALUES (520,608);
INSERT INTO `help_relation` VALUES (508,609);
INSERT INTO `help_relation` VALUES (508,610);
INSERT INTO `help_relation` VALUES (623,610);
INSERT INTO `help_relation` VALUES (508,611);
INSERT INTO `help_relation` VALUES (520,611);
INSERT INTO `help_relation` VALUES (508,612);
INSERT INTO `help_relation` VALUES (514,612);
INSERT INTO `help_relation` VALUES (520,612);
INSERT INTO `help_relation` VALUES (508,613);
INSERT INTO `help_relation` VALUES (520,613);
INSERT INTO `help_relation` VALUES (540,613);
INSERT INTO `help_relation` VALUES (544,613);
INSERT INTO `help_relation` VALUES (547,613);
INSERT INTO `help_relation` VALUES (549,613);
INSERT INTO `help_relation` VALUES (550,613);
INSERT INTO `help_relation` VALUES (552,613);
INSERT INTO `help_relation` VALUES (684,613);
INSERT INTO `help_relation` VALUES (687,613);
INSERT INTO `help_relation` VALUES (508,614);
INSERT INTO `help_relation` VALUES (508,615);
INSERT INTO `help_relation` VALUES (518,615);
INSERT INTO `help_relation` VALUES (577,615);
INSERT INTO `help_relation` VALUES (578,615);
INSERT INTO `help_relation` VALUES (605,615);
INSERT INTO `help_relation` VALUES (607,615);
INSERT INTO `help_relation` VALUES (614,615);
INSERT INTO `help_relation` VALUES (508,616);
INSERT INTO `help_relation` VALUES (508,617);
INSERT INTO `help_relation` VALUES (508,618);
INSERT INTO `help_relation` VALUES (508,619);
INSERT INTO `help_relation` VALUES (508,620);
INSERT INTO `help_relation` VALUES (624,620);
INSERT INTO `help_relation` VALUES (508,621);
INSERT INTO `help_relation` VALUES (520,621);
INSERT INTO `help_relation` VALUES (508,622);
INSERT INTO `help_relation` VALUES (514,622);
INSERT INTO `help_relation` VALUES (519,622);
INSERT INTO `help_relation` VALUES (532,622);
INSERT INTO `help_relation` VALUES (508,623);
INSERT INTO `help_relation` VALUES (520,623);
INSERT INTO `help_relation` VALUES (508,624);
INSERT INTO `help_relation` VALUES (520,624);
INSERT INTO `help_relation` VALUES (508,625);
INSERT INTO `help_relation` VALUES (520,625);
INSERT INTO `help_relation` VALUES (508,626);
INSERT INTO `help_relation` VALUES (509,626);
INSERT INTO `help_relation` VALUES (522,626);
INSERT INTO `help_relation` VALUES (534,626);
INSERT INTO `help_relation` VALUES (508,627);
INSERT INTO `help_relation` VALUES (617,627);
INSERT INTO `help_relation` VALUES (508,628);
INSERT INTO `help_relation` VALUES (553,628);
INSERT INTO `help_relation` VALUES (554,628);
INSERT INTO `help_relation` VALUES (508,629);
INSERT INTO `help_relation` VALUES (508,630);
INSERT INTO `help_relation` VALUES (621,630);
INSERT INTO `help_relation` VALUES (508,631);
INSERT INTO `help_relation` VALUES (514,631);
INSERT INTO `help_relation` VALUES (520,631);
INSERT INTO `help_relation` VALUES (509,632);
INSERT INTO `help_relation` VALUES (522,632);
INSERT INTO `help_relation` VALUES (509,633);
INSERT INTO `help_relation` VALUES (522,633);
INSERT INTO `help_relation` VALUES (509,634);
INSERT INTO `help_relation` VALUES (562,634);
INSERT INTO `help_relation` VALUES (563,634);
INSERT INTO `help_relation` VALUES (564,634);
INSERT INTO `help_relation` VALUES (569,634);
INSERT INTO `help_relation` VALUES (570,634);
INSERT INTO `help_relation` VALUES (573,634);
INSERT INTO `help_relation` VALUES (614,634);
INSERT INTO `help_relation` VALUES (509,635);
INSERT INTO `help_relation` VALUES (522,635);
INSERT INTO `help_relation` VALUES (534,635);
INSERT INTO `help_relation` VALUES (601,635);
INSERT INTO `help_relation` VALUES (509,636);
INSERT INTO `help_relation` VALUES (522,636);
INSERT INTO `help_relation` VALUES (510,637);
INSERT INTO `help_relation` VALUES (524,637);
INSERT INTO `help_relation` VALUES (536,637);
INSERT INTO `help_relation` VALUES (511,638);
INSERT INTO `help_relation` VALUES (512,638);
INSERT INTO `help_relation` VALUES (513,638);
INSERT INTO `help_relation` VALUES (519,638);
INSERT INTO `help_relation` VALUES (525,638);
INSERT INTO `help_relation` VALUES (526,638);
INSERT INTO `help_relation` VALUES (527,638);
INSERT INTO `help_relation` VALUES (531,638);
INSERT INTO `help_relation` VALUES (532,638);
INSERT INTO `help_relation` VALUES (533,638);
INSERT INTO `help_relation` VALUES (536,638);
INSERT INTO `help_relation` VALUES (605,638);
INSERT INTO `help_relation` VALUES (606,638);
INSERT INTO `help_relation` VALUES (607,638);
INSERT INTO `help_relation` VALUES (608,638);
INSERT INTO `help_relation` VALUES (609,638);
INSERT INTO `help_relation` VALUES (626,638);
INSERT INTO `help_relation` VALUES (689,638);
INSERT INTO `help_relation` VALUES (513,639);
INSERT INTO `help_relation` VALUES (513,640);
INSERT INTO `help_relation` VALUES (513,641);
INSERT INTO `help_relation` VALUES (513,642);
INSERT INTO `help_relation` VALUES (514,643);
INSERT INTO `help_relation` VALUES (518,644);
INSERT INTO `help_relation` VALUES (518,645);
INSERT INTO `help_relation` VALUES (518,646);
INSERT INTO `help_relation` VALUES (518,647);
INSERT INTO `help_relation` VALUES (518,648);
INSERT INTO `help_relation` VALUES (519,649);
INSERT INTO `help_relation` VALUES (519,650);
INSERT INTO `help_relation` VALUES (519,651);
INSERT INTO `help_relation` VALUES (519,652);
INSERT INTO `help_relation` VALUES (519,653);
INSERT INTO `help_relation` VALUES (532,653);
INSERT INTO `help_relation` VALUES (519,654);
INSERT INTO `help_relation` VALUES (532,654);
INSERT INTO `help_relation` VALUES (617,654);
INSERT INTO `help_relation` VALUES (520,655);
INSERT INTO `help_relation` VALUES (521,655);
INSERT INTO `help_relation` VALUES (520,656);
INSERT INTO `help_relation` VALUES (520,657);
INSERT INTO `help_relation` VALUES (521,657);
INSERT INTO `help_relation` VALUES (533,657);
INSERT INTO `help_relation` VALUES (536,657);
INSERT INTO `help_relation` VALUES (520,658);
INSERT INTO `help_relation` VALUES (520,659);
INSERT INTO `help_relation` VALUES (520,660);
INSERT INTO `help_relation` VALUES (547,660);
INSERT INTO `help_relation` VALUES (520,661);
INSERT INTO `help_relation` VALUES (521,661);
INSERT INTO `help_relation` VALUES (540,661);
INSERT INTO `help_relation` VALUES (520,662);
INSERT INTO `help_relation` VALUES (520,663);
INSERT INTO `help_relation` VALUES (520,664);
INSERT INTO `help_relation` VALUES (636,664);
INSERT INTO `help_relation` VALUES (642,664);
INSERT INTO `help_relation` VALUES (643,664);
INSERT INTO `help_relation` VALUES (669,664);
INSERT INTO `help_relation` VALUES (679,664);
INSERT INTO `help_relation` VALUES (520,665);
INSERT INTO `help_relation` VALUES (520,666);
INSERT INTO `help_relation` VALUES (520,667);
INSERT INTO `help_relation` VALUES (520,668);
INSERT INTO `help_relation` VALUES (520,669);
INSERT INTO `help_relation` VALUES (520,670);
INSERT INTO `help_relation` VALUES (520,671);
INSERT INTO `help_relation` VALUES (520,672);
INSERT INTO `help_relation` VALUES (520,673);
INSERT INTO `help_relation` VALUES (521,673);
INSERT INTO `help_relation` VALUES (610,673);
INSERT INTO `help_relation` VALUES (520,674);
INSERT INTO `help_relation` VALUES (520,675);
INSERT INTO `help_relation` VALUES (521,676);
INSERT INTO `help_relation` VALUES (533,676);
INSERT INTO `help_relation` VALUES (536,676);
INSERT INTO `help_relation` VALUES (521,677);
INSERT INTO `help_relation` VALUES (544,677);
INSERT INTO `help_relation` VALUES (550,677);
INSERT INTO `help_relation` VALUES (556,677);
INSERT INTO `help_relation` VALUES (522,678);
INSERT INTO `help_relation` VALUES (522,679);
INSERT INTO `help_relation` VALUES (522,680);
INSERT INTO `help_relation` VALUES (522,681);
INSERT INTO `help_relation` VALUES (522,682);
INSERT INTO `help_relation` VALUES (522,683);
INSERT INTO `help_relation` VALUES (552,683);
INSERT INTO `help_relation` VALUES (696,683);
INSERT INTO `help_relation` VALUES (523,684);
INSERT INTO `help_relation` VALUES (535,684);
INSERT INTO `help_relation` VALUES (636,684);
INSERT INTO `help_relation` VALUES (533,685);
INSERT INTO `help_relation` VALUES (539,686);
INSERT INTO `help_relation` VALUES (540,687);
INSERT INTO `help_relation` VALUES (542,687);
INSERT INTO `help_relation` VALUES (550,687);
INSERT INTO `help_relation` VALUES (554,687);
INSERT INTO `help_relation` VALUES (555,687);
INSERT INTO `help_relation` VALUES (556,687);
INSERT INTO `help_relation` VALUES (557,687);
INSERT INTO `help_relation` VALUES (639,687);
INSERT INTO `help_relation` VALUES (672,687);
INSERT INTO `help_relation` VALUES (540,688);
INSERT INTO `help_relation` VALUES (544,688);
INSERT INTO `help_relation` VALUES (547,688);
INSERT INTO `help_relation` VALUES (548,688);
INSERT INTO `help_relation` VALUES (549,688);
INSERT INTO `help_relation` VALUES (556,688);
INSERT INTO `help_relation` VALUES (566,688);
INSERT INTO `help_relation` VALUES (540,689);
INSERT INTO `help_relation` VALUES (621,689);
INSERT INTO `help_relation` VALUES (624,689);
INSERT INTO `help_relation` VALUES (540,690);
INSERT INTO `help_relation` VALUES (552,690);
INSERT INTO `help_relation` VALUES (582,690);
INSERT INTO `help_relation` VALUES (661,690);
INSERT INTO `help_relation` VALUES (540,691);
INSERT INTO `help_relation` VALUES (542,691);
INSERT INTO `help_relation` VALUES (556,691);
INSERT INTO `help_relation` VALUES (642,691);
INSERT INTO `help_relation` VALUES (643,691);
INSERT INTO `help_relation` VALUES (662,691);
INSERT INTO `help_relation` VALUES (542,692);
INSERT INTO `help_relation` VALUES (596,692);
INSERT INTO `help_relation` VALUES (542,693);
INSERT INTO `help_relation` VALUES (601,693);
INSERT INTO `help_relation` VALUES (542,694);
INSERT INTO `help_relation` VALUES (542,695);
INSERT INTO `help_relation` VALUES (542,696);
INSERT INTO `help_relation` VALUES (599,696);
INSERT INTO `help_relation` VALUES (636,696);
INSERT INTO `help_relation` VALUES (664,696);
INSERT INTO `help_relation` VALUES (542,697);
INSERT INTO `help_relation` VALUES (544,698);
INSERT INTO `help_relation` VALUES (546,698);
INSERT INTO `help_relation` VALUES (549,698);
INSERT INTO `help_relation` VALUES (544,699);
INSERT INTO `help_relation` VALUES (544,700);
INSERT INTO `help_relation` VALUES (550,700);
INSERT INTO `help_relation` VALUES (544,701);
INSERT INTO `help_relation` VALUES (547,701);
INSERT INTO `help_relation` VALUES (548,701);
INSERT INTO `help_relation` VALUES (550,701);
INSERT INTO `help_relation` VALUES (552,701);
INSERT INTO `help_relation` VALUES (556,701);
INSERT INTO `help_relation` VALUES (687,701);
INSERT INTO `help_relation` VALUES (544,702);
INSERT INTO `help_relation` VALUES (549,702);
INSERT INTO `help_relation` VALUES (550,702);
INSERT INTO `help_relation` VALUES (554,702);
INSERT INTO `help_relation` VALUES (687,702);
INSERT INTO `help_relation` VALUES (544,703);
INSERT INTO `help_relation` VALUES (557,703);
INSERT INTO `help_relation` VALUES (544,704);
INSERT INTO `help_relation` VALUES (545,704);
INSERT INTO `help_relation` VALUES (549,704);
INSERT INTO `help_relation` VALUES (550,704);
INSERT INTO `help_relation` VALUES (554,704);
INSERT INTO `help_relation` VALUES (692,704);
INSERT INTO `help_relation` VALUES (693,704);
INSERT INTO `help_relation` VALUES (694,704);
INSERT INTO `help_relation` VALUES (547,705);
INSERT INTO `help_relation` VALUES (548,705);
INSERT INTO `help_relation` VALUES (547,706);
INSERT INTO `help_relation` VALUES (547,707);
INSERT INTO `help_relation` VALUES (547,708);
INSERT INTO `help_relation` VALUES (636,708);
INSERT INTO `help_relation` VALUES (642,708);
INSERT INTO `help_relation` VALUES (643,708);
INSERT INTO `help_relation` VALUES (547,709);
INSERT INTO `help_relation` VALUES (548,709);
INSERT INTO `help_relation` VALUES (547,710);
INSERT INTO `help_relation` VALUES (548,710);
INSERT INTO `help_relation` VALUES (547,711);
INSERT INTO `help_relation` VALUES (687,711);
INSERT INTO `help_relation` VALUES (547,712);
INSERT INTO `help_relation` VALUES (548,712);
INSERT INTO `help_relation` VALUES (566,712);
INSERT INTO `help_relation` VALUES (620,712);
INSERT INTO `help_relation` VALUES (623,712);
INSERT INTO `help_relation` VALUES (624,712);
INSERT INTO `help_relation` VALUES (685,712);
INSERT INTO `help_relation` VALUES (547,713);
INSERT INTO `help_relation` VALUES (547,714);
INSERT INTO `help_relation` VALUES (547,715);
INSERT INTO `help_relation` VALUES (548,716);
INSERT INTO `help_relation` VALUES (605,716);
INSERT INTO `help_relation` VALUES (607,716);
INSERT INTO `help_relation` VALUES (548,717);
INSERT INTO `help_relation` VALUES (550,718);
INSERT INTO `help_relation` VALUES (553,718);
INSERT INTO `help_relation` VALUES (575,718);
INSERT INTO `help_relation` VALUES (576,718);
INSERT INTO `help_relation` VALUES (605,718);
INSERT INTO `help_relation` VALUES (610,718);
INSERT INTO `help_relation` VALUES (612,718);
INSERT INTO `help_relation` VALUES (613,718);
INSERT INTO `help_relation` VALUES (615,718);
INSERT INTO `help_relation` VALUES (684,718);
INSERT INTO `help_relation` VALUES (687,718);
INSERT INTO `help_relation` VALUES (550,719);
INSERT INTO `help_relation` VALUES (552,719);
INSERT INTO `help_relation` VALUES (566,719);
INSERT INTO `help_relation` VALUES (605,719);
INSERT INTO `help_relation` VALUES (607,719);
INSERT INTO `help_relation` VALUES (610,719);
INSERT INTO `help_relation` VALUES (550,720);
INSERT INTO `help_relation` VALUES (550,721);
INSERT INTO `help_relation` VALUES (550,722);
INSERT INTO `help_relation` VALUES (550,723);
INSERT INTO `help_relation` VALUES (552,723);
INSERT INTO `help_relation` VALUES (550,724);
INSERT INTO `help_relation` VALUES (550,725);
INSERT INTO `help_relation` VALUES (550,726);
INSERT INTO `help_relation` VALUES (550,727);
INSERT INTO `help_relation` VALUES (550,728);
INSERT INTO `help_relation` VALUES (550,729);
INSERT INTO `help_relation` VALUES (550,730);
INSERT INTO `help_relation` VALUES (550,731);
INSERT INTO `help_relation` VALUES (550,732);
INSERT INTO `help_relation` VALUES (550,733);
INSERT INTO `help_relation` VALUES (552,733);
INSERT INTO `help_relation` VALUES (551,734);
INSERT INTO `help_relation` VALUES (552,735);
INSERT INTO `help_relation` VALUES (552,736);
INSERT INTO `help_relation` VALUES (616,736);
INSERT INTO `help_relation` VALUES (618,736);
INSERT INTO `help_relation` VALUES (552,737);
INSERT INTO `help_relation` VALUES (552,738);
INSERT INTO `help_relation` VALUES (552,739);
INSERT INTO `help_relation` VALUES (558,740);
INSERT INTO `help_relation` VALUES (559,740);
INSERT INTO `help_relation` VALUES (560,740);
INSERT INTO `help_relation` VALUES (561,740);
INSERT INTO `help_relation` VALUES (558,741);
INSERT INTO `help_relation` VALUES (559,741);
INSERT INTO `help_relation` VALUES (560,741);
INSERT INTO `help_relation` VALUES (561,741);
INSERT INTO `help_relation` VALUES (568,741);
INSERT INTO `help_relation` VALUES (585,741);
INSERT INTO `help_relation` VALUES (558,742);
INSERT INTO `help_relation` VALUES (559,742);
INSERT INTO `help_relation` VALUES (560,742);
INSERT INTO `help_relation` VALUES (561,742);
INSERT INTO `help_relation` VALUES (558,743);
INSERT INTO `help_relation` VALUES (559,743);
INSERT INTO `help_relation` VALUES (560,743);
INSERT INTO `help_relation` VALUES (561,743);
INSERT INTO `help_relation` VALUES (568,743);
INSERT INTO `help_relation` VALUES (558,744);
INSERT INTO `help_relation` VALUES (559,744);
INSERT INTO `help_relation` VALUES (560,744);
INSERT INTO `help_relation` VALUES (561,744);
INSERT INTO `help_relation` VALUES (568,744);
INSERT INTO `help_relation` VALUES (558,745);
INSERT INTO `help_relation` VALUES (559,745);
INSERT INTO `help_relation` VALUES (560,745);
INSERT INTO `help_relation` VALUES (561,745);
INSERT INTO `help_relation` VALUES (562,745);
INSERT INTO `help_relation` VALUES (563,745);
INSERT INTO `help_relation` VALUES (564,745);
INSERT INTO `help_relation` VALUES (568,745);
INSERT INTO `help_relation` VALUES (558,746);
INSERT INTO `help_relation` VALUES (559,746);
INSERT INTO `help_relation` VALUES (560,746);
INSERT INTO `help_relation` VALUES (561,746);
INSERT INTO `help_relation` VALUES (568,746);
INSERT INTO `help_relation` VALUES (558,747);
INSERT INTO `help_relation` VALUES (559,747);
INSERT INTO `help_relation` VALUES (560,747);
INSERT INTO `help_relation` VALUES (561,747);
INSERT INTO `help_relation` VALUES (568,747);
INSERT INTO `help_relation` VALUES (577,747);
INSERT INTO `help_relation` VALUES (578,747);
INSERT INTO `help_relation` VALUES (558,748);
INSERT INTO `help_relation` VALUES (559,748);
INSERT INTO `help_relation` VALUES (560,748);
INSERT INTO `help_relation` VALUES (561,748);
INSERT INTO `help_relation` VALUES (567,748);
INSERT INTO `help_relation` VALUES (558,749);
INSERT INTO `help_relation` VALUES (559,749);
INSERT INTO `help_relation` VALUES (560,749);
INSERT INTO `help_relation` VALUES (561,749);
INSERT INTO `help_relation` VALUES (558,750);
INSERT INTO `help_relation` VALUES (559,750);
INSERT INTO `help_relation` VALUES (560,750);
INSERT INTO `help_relation` VALUES (561,750);
INSERT INTO `help_relation` VALUES (566,750);
INSERT INTO `help_relation` VALUES (567,750);
INSERT INTO `help_relation` VALUES (568,750);
INSERT INTO `help_relation` VALUES (562,751);
INSERT INTO `help_relation` VALUES (563,751);
INSERT INTO `help_relation` VALUES (564,751);
INSERT INTO `help_relation` VALUES (565,752);
INSERT INTO `help_relation` VALUES (565,753);
INSERT INTO `help_relation` VALUES (566,753);
INSERT INTO `help_relation` VALUES (605,753);
INSERT INTO `help_relation` VALUES (607,753);
INSERT INTO `help_relation` VALUES (566,754);
INSERT INTO `help_relation` VALUES (636,754);
INSERT INTO `help_relation` VALUES (664,754);
INSERT INTO `help_relation` VALUES (679,754);
INSERT INTO `help_relation` VALUES (685,754);
INSERT INTO `help_relation` VALUES (567,755);
INSERT INTO `help_relation` VALUES (567,756);
INSERT INTO `help_relation` VALUES (632,756);
INSERT INTO `help_relation` VALUES (677,756);
INSERT INTO `help_relation` VALUES (681,756);
INSERT INTO `help_relation` VALUES (567,757);
INSERT INTO `help_relation` VALUES (567,758);
INSERT INTO `help_relation` VALUES (567,759);
INSERT INTO `help_relation` VALUES (567,760);
INSERT INTO `help_relation` VALUES (567,761);
INSERT INTO `help_relation` VALUES (632,761);
INSERT INTO `help_relation` VALUES (677,761);
INSERT INTO `help_relation` VALUES (681,761);
INSERT INTO `help_relation` VALUES (567,762);
INSERT INTO `help_relation` VALUES (568,763);
INSERT INTO `help_relation` VALUES (581,763);
INSERT INTO `help_relation` VALUES (583,763);
INSERT INTO `help_relation` VALUES (584,763);
INSERT INTO `help_relation` VALUES (568,764);
INSERT INTO `help_relation` VALUES (568,765);
INSERT INTO `help_relation` VALUES (569,766);
INSERT INTO `help_relation` VALUES (570,766);
INSERT INTO `help_relation` VALUES (569,767);
INSERT INTO `help_relation` VALUES (570,767);
INSERT INTO `help_relation` VALUES (636,767);
INSERT INTO `help_relation` VALUES (637,767);
INSERT INTO `help_relation` VALUES (638,767);
INSERT INTO `help_relation` VALUES (685,767);
INSERT INTO `help_relation` VALUES (569,768);
INSERT INTO `help_relation` VALUES (570,768);
INSERT INTO `help_relation` VALUES (571,769);
INSERT INTO `help_relation` VALUES (575,769);
INSERT INTO `help_relation` VALUES (576,769);
INSERT INTO `help_relation` VALUES (688,769);
INSERT INTO `help_relation` VALUES (689,769);
INSERT INTO `help_relation` VALUES (572,770);
INSERT INTO `help_relation` VALUES (573,771);
INSERT INTO `help_relation` VALUES (573,772);
INSERT INTO `help_relation` VALUES (573,773);
INSERT INTO `help_relation` VALUES (573,774);
INSERT INTO `help_relation` VALUES (573,775);
INSERT INTO `help_relation` VALUES (573,776);
INSERT INTO `help_relation` VALUES (573,777);
INSERT INTO `help_relation` VALUES (573,778);
INSERT INTO `help_relation` VALUES (573,779);
INSERT INTO `help_relation` VALUES (573,780);
INSERT INTO `help_relation` VALUES (573,781);
INSERT INTO `help_relation` VALUES (573,782);
INSERT INTO `help_relation` VALUES (573,783);
INSERT INTO `help_relation` VALUES (573,784);
INSERT INTO `help_relation` VALUES (573,785);
INSERT INTO `help_relation` VALUES (573,786);
INSERT INTO `help_relation` VALUES (573,787);
INSERT INTO `help_relation` VALUES (573,788);
INSERT INTO `help_relation` VALUES (573,789);
INSERT INTO `help_relation` VALUES (573,790);
INSERT INTO `help_relation` VALUES (573,791);
INSERT INTO `help_relation` VALUES (573,792);
INSERT INTO `help_relation` VALUES (573,793);
INSERT INTO `help_relation` VALUES (573,794);
INSERT INTO `help_relation` VALUES (573,795);
INSERT INTO `help_relation` VALUES (573,796);
INSERT INTO `help_relation` VALUES (573,797);
INSERT INTO `help_relation` VALUES (573,798);
INSERT INTO `help_relation` VALUES (574,799);
INSERT INTO `help_relation` VALUES (574,800);
INSERT INTO `help_relation` VALUES (574,801);
INSERT INTO `help_relation` VALUES (574,802);
INSERT INTO `help_relation` VALUES (574,803);
INSERT INTO `help_relation` VALUES (574,804);
INSERT INTO `help_relation` VALUES (574,805);
INSERT INTO `help_relation` VALUES (574,806);
INSERT INTO `help_relation` VALUES (574,807);
INSERT INTO `help_relation` VALUES (610,807);
INSERT INTO `help_relation` VALUES (575,808);
INSERT INTO `help_relation` VALUES (577,808);
INSERT INTO `help_relation` VALUES (579,808);
INSERT INTO `help_relation` VALUES (675,808);
INSERT INTO `help_relation` VALUES (688,808);
INSERT INTO `help_relation` VALUES (577,809);
INSERT INTO `help_relation` VALUES (578,809);
INSERT INTO `help_relation` VALUES (577,810);
INSERT INTO `help_relation` VALUES (578,810);
INSERT INTO `help_relation` VALUES (579,810);
INSERT INTO `help_relation` VALUES (580,810);
INSERT INTO `help_relation` VALUES (577,811);
INSERT INTO `help_relation` VALUES (578,811);
INSERT INTO `help_relation` VALUES (577,812);
INSERT INTO `help_relation` VALUES (578,812);
INSERT INTO `help_relation` VALUES (577,813);
INSERT INTO `help_relation` VALUES (578,813);
INSERT INTO `help_relation` VALUES (577,814);
INSERT INTO `help_relation` VALUES (578,814);
INSERT INTO `help_relation` VALUES (577,815);
INSERT INTO `help_relation` VALUES (578,815);
INSERT INTO `help_relation` VALUES (579,815);
INSERT INTO `help_relation` VALUES (580,815);
INSERT INTO `help_relation` VALUES (579,816);
INSERT INTO `help_relation` VALUES (580,816);
INSERT INTO `help_relation` VALUES (582,817);
INSERT INTO `help_relation` VALUES (610,817);
INSERT INTO `help_relation` VALUES (583,818);
INSERT INTO `help_relation` VALUES (584,818);
INSERT INTO `help_relation` VALUES (587,819);
INSERT INTO `help_relation` VALUES (597,819);
INSERT INTO `help_relation` VALUES (600,819);
INSERT INTO `help_relation` VALUES (601,819);
INSERT INTO `help_relation` VALUES (589,820);
INSERT INTO `help_relation` VALUES (590,821);
INSERT INTO `help_relation` VALUES (591,822);
INSERT INTO `help_relation` VALUES (592,823);
INSERT INTO `help_relation` VALUES (593,824);
INSERT INTO `help_relation` VALUES (594,825);
INSERT INTO `help_relation` VALUES (595,826);
INSERT INTO `help_relation` VALUES (597,827);
INSERT INTO `help_relation` VALUES (598,828);
INSERT INTO `help_relation` VALUES (600,829);
INSERT INTO `help_relation` VALUES (601,830);
INSERT INTO `help_relation` VALUES (601,831);
INSERT INTO `help_relation` VALUES (602,832);
INSERT INTO `help_relation` VALUES (603,832);
INSERT INTO `help_relation` VALUES (604,832);
INSERT INTO `help_relation` VALUES (602,833);
INSERT INTO `help_relation` VALUES (603,833);
INSERT INTO `help_relation` VALUES (604,833);
INSERT INTO `help_relation` VALUES (602,834);
INSERT INTO `help_relation` VALUES (603,834);
INSERT INTO `help_relation` VALUES (604,834);
INSERT INTO `help_relation` VALUES (602,835);
INSERT INTO `help_relation` VALUES (603,835);
INSERT INTO `help_relation` VALUES (604,835);
INSERT INTO `help_relation` VALUES (602,836);
INSERT INTO `help_relation` VALUES (603,836);
INSERT INTO `help_relation` VALUES (604,836);
INSERT INTO `help_relation` VALUES (602,837);
INSERT INTO `help_relation` VALUES (603,837);
INSERT INTO `help_relation` VALUES (604,837);
INSERT INTO `help_relation` VALUES (602,838);
INSERT INTO `help_relation` VALUES (603,838);
INSERT INTO `help_relation` VALUES (604,838);
INSERT INTO `help_relation` VALUES (602,839);
INSERT INTO `help_relation` VALUES (602,840);
INSERT INTO `help_relation` VALUES (602,841);
INSERT INTO `help_relation` VALUES (603,841);
INSERT INTO `help_relation` VALUES (604,841);
INSERT INTO `help_relation` VALUES (602,842);
INSERT INTO `help_relation` VALUES (603,842);
INSERT INTO `help_relation` VALUES (604,842);
INSERT INTO `help_relation` VALUES (602,843);
INSERT INTO `help_relation` VALUES (602,844);
INSERT INTO `help_relation` VALUES (602,845);
INSERT INTO `help_relation` VALUES (603,845);
INSERT INTO `help_relation` VALUES (604,845);
INSERT INTO `help_relation` VALUES (602,846);
INSERT INTO `help_relation` VALUES (603,846);
INSERT INTO `help_relation` VALUES (604,846);
INSERT INTO `help_relation` VALUES (602,847);
INSERT INTO `help_relation` VALUES (603,847);
INSERT INTO `help_relation` VALUES (604,847);
INSERT INTO `help_relation` VALUES (603,848);
INSERT INTO `help_relation` VALUES (603,849);
INSERT INTO `help_relation` VALUES (604,849);
INSERT INTO `help_relation` VALUES (604,850);
INSERT INTO `help_relation` VALUES (605,851);
INSERT INTO `help_relation` VALUES (607,851);
INSERT INTO `help_relation` VALUES (605,852);
INSERT INTO `help_relation` VALUES (607,852);
INSERT INTO `help_relation` VALUES (605,853);
INSERT INTO `help_relation` VALUES (607,853);
INSERT INTO `help_relation` VALUES (605,854);
INSERT INTO `help_relation` VALUES (607,854);
INSERT INTO `help_relation` VALUES (614,854);
INSERT INTO `help_relation` VALUES (605,855);
INSERT INTO `help_relation` VALUES (607,855);
INSERT INTO `help_relation` VALUES (605,856);
INSERT INTO `help_relation` VALUES (607,856);
INSERT INTO `help_relation` VALUES (605,857);
INSERT INTO `help_relation` VALUES (607,857);
INSERT INTO `help_relation` VALUES (605,858);
INSERT INTO `help_relation` VALUES (607,858);
INSERT INTO `help_relation` VALUES (605,859);
INSERT INTO `help_relation` VALUES (607,859);
INSERT INTO `help_relation` VALUES (605,860);
INSERT INTO `help_relation` VALUES (607,860);
INSERT INTO `help_relation` VALUES (605,861);
INSERT INTO `help_relation` VALUES (607,861);
INSERT INTO `help_relation` VALUES (605,862);
INSERT INTO `help_relation` VALUES (607,862);
INSERT INTO `help_relation` VALUES (605,863);
INSERT INTO `help_relation` VALUES (607,863);
INSERT INTO `help_relation` VALUES (605,864);
INSERT INTO `help_relation` VALUES (610,864);
INSERT INTO `help_relation` VALUES (613,864);
INSERT INTO `help_relation` VALUES (615,864);
INSERT INTO `help_relation` VALUES (605,865);
INSERT INTO `help_relation` VALUES (605,866);
INSERT INTO `help_relation` VALUES (607,866);
INSERT INTO `help_relation` VALUES (605,867);
INSERT INTO `help_relation` VALUES (607,867);
INSERT INTO `help_relation` VALUES (605,868);
INSERT INTO `help_relation` VALUES (607,868);
INSERT INTO `help_relation` VALUES (614,868);
INSERT INTO `help_relation` VALUES (605,869);
INSERT INTO `help_relation` VALUES (607,869);
INSERT INTO `help_relation` VALUES (605,870);
INSERT INTO `help_relation` VALUES (614,870);
INSERT INTO `help_relation` VALUES (605,871);
INSERT INTO `help_relation` VALUES (607,871);
INSERT INTO `help_relation` VALUES (605,872);
INSERT INTO `help_relation` VALUES (606,872);
INSERT INTO `help_relation` VALUES (607,872);
INSERT INTO `help_relation` VALUES (608,872);
INSERT INTO `help_relation` VALUES (610,872);
INSERT INTO `help_relation` VALUES (613,872);
INSERT INTO `help_relation` VALUES (615,872);
INSERT INTO `help_relation` VALUES (605,873);
INSERT INTO `help_relation` VALUES (607,873);
INSERT INTO `help_relation` VALUES (605,874);
INSERT INTO `help_relation` VALUES (607,874);
INSERT INTO `help_relation` VALUES (605,875);
INSERT INTO `help_relation` VALUES (607,875);
INSERT INTO `help_relation` VALUES (605,876);
INSERT INTO `help_relation` VALUES (607,876);
INSERT INTO `help_relation` VALUES (610,877);
INSERT INTO `help_relation` VALUES (610,878);
INSERT INTO `help_relation` VALUES (610,879);
INSERT INTO `help_relation` VALUES (610,880);
INSERT INTO `help_relation` VALUES (612,880);
INSERT INTO `help_relation` VALUES (610,881);
INSERT INTO `help_relation` VALUES (612,881);
INSERT INTO `help_relation` VALUES (610,882);
INSERT INTO `help_relation` VALUES (612,882);
INSERT INTO `help_relation` VALUES (666,882);
INSERT INTO `help_relation` VALUES (685,882);
INSERT INTO `help_relation` VALUES (610,883);
INSERT INTO `help_relation` VALUES (610,884);
INSERT INTO `help_relation` VALUES (691,884);
INSERT INTO `help_relation` VALUES (610,885);
INSERT INTO `help_relation` VALUES (610,886);
INSERT INTO `help_relation` VALUES (612,887);
INSERT INTO `help_relation` VALUES (612,888);
INSERT INTO `help_relation` VALUES (615,889);
INSERT INTO `help_relation` VALUES (616,890);
INSERT INTO `help_relation` VALUES (617,890);
INSERT INTO `help_relation` VALUES (618,890);
INSERT INTO `help_relation` VALUES (619,890);
INSERT INTO `help_relation` VALUES (616,891);
INSERT INTO `help_relation` VALUES (617,891);
INSERT INTO `help_relation` VALUES (616,892);
INSERT INTO `help_relation` VALUES (617,892);
INSERT INTO `help_relation` VALUES (620,893);
INSERT INTO `help_relation` VALUES (623,893);
INSERT INTO `help_relation` VALUES (624,893);
INSERT INTO `help_relation` VALUES (685,893);
INSERT INTO `help_relation` VALUES (621,894);
INSERT INTO `help_relation` VALUES (621,895);
INSERT INTO `help_relation` VALUES (624,896);
INSERT INTO `help_relation` VALUES (642,896);
INSERT INTO `help_relation` VALUES (643,896);
INSERT INTO `help_relation` VALUES (662,896);
INSERT INTO `help_relation` VALUES (679,896);
INSERT INTO `help_relation` VALUES (624,897);
INSERT INTO `help_relation` VALUES (625,898);
INSERT INTO `help_relation` VALUES (625,899);
INSERT INTO `help_relation` VALUES (625,900);
INSERT INTO `help_relation` VALUES (625,901);
INSERT INTO `help_relation` VALUES (627,902);
INSERT INTO `help_relation` VALUES (629,902);
INSERT INTO `help_relation` VALUES (627,903);
INSERT INTO `help_relation` VALUES (628,903);
INSERT INTO `help_relation` VALUES (628,904);
INSERT INTO `help_relation` VALUES (630,904);
INSERT INTO `help_relation` VALUES (636,904);
INSERT INTO `help_relation` VALUES (629,905);
INSERT INTO `help_relation` VALUES (630,905);
INSERT INTO `help_relation` VALUES (631,906);
INSERT INTO `help_relation` VALUES (632,907);
INSERT INTO `help_relation` VALUES (689,907);
INSERT INTO `help_relation` VALUES (632,908);
INSERT INTO `help_relation` VALUES (632,909);
INSERT INTO `help_relation` VALUES (635,910);
INSERT INTO `help_relation` VALUES (636,911);
INSERT INTO `help_relation` VALUES (653,911);
INSERT INTO `help_relation` VALUES (654,911);
INSERT INTO `help_relation` VALUES (636,912);
INSERT INTO `help_relation` VALUES (656,912);
INSERT INTO `help_relation` VALUES (636,913);
INSERT INTO `help_relation` VALUES (657,913);
INSERT INTO `help_relation` VALUES (636,914);
INSERT INTO `help_relation` VALUES (661,914);
INSERT INTO `help_relation` VALUES (636,915);
INSERT INTO `help_relation` VALUES (674,915);
INSERT INTO `help_relation` VALUES (685,915);
INSERT INTO `help_relation` VALUES (636,916);
INSERT INTO `help_relation` VALUES (636,917);
INSERT INTO `help_relation` VALUES (655,917);
INSERT INTO `help_relation` VALUES (636,918);
INSERT INTO `help_relation` VALUES (669,918);
INSERT INTO `help_relation` VALUES (636,919);
INSERT INTO `help_relation` VALUES (653,919);
INSERT INTO `help_relation` VALUES (654,919);
INSERT INTO `help_relation` VALUES (636,920);
INSERT INTO `help_relation` VALUES (637,920);
INSERT INTO `help_relation` VALUES (638,920);
INSERT INTO `help_relation` VALUES (639,920);
INSERT INTO `help_relation` VALUES (640,920);
INSERT INTO `help_relation` VALUES (641,920);
INSERT INTO `help_relation` VALUES (642,920);
INSERT INTO `help_relation` VALUES (643,920);
INSERT INTO `help_relation` VALUES (644,920);
INSERT INTO `help_relation` VALUES (645,920);
INSERT INTO `help_relation` VALUES (646,920);
INSERT INTO `help_relation` VALUES (647,920);
INSERT INTO `help_relation` VALUES (648,920);
INSERT INTO `help_relation` VALUES (649,920);
INSERT INTO `help_relation` VALUES (651,920);
INSERT INTO `help_relation` VALUES (653,920);
INSERT INTO `help_relation` VALUES (654,920);
INSERT INTO `help_relation` VALUES (655,920);
INSERT INTO `help_relation` VALUES (656,920);
INSERT INTO `help_relation` VALUES (657,920);
INSERT INTO `help_relation` VALUES (658,920);
INSERT INTO `help_relation` VALUES (659,920);
INSERT INTO `help_relation` VALUES (660,920);
INSERT INTO `help_relation` VALUES (661,920);
INSERT INTO `help_relation` VALUES (662,920);
INSERT INTO `help_relation` VALUES (663,920);
INSERT INTO `help_relation` VALUES (664,920);
INSERT INTO `help_relation` VALUES (665,920);
INSERT INTO `help_relation` VALUES (666,920);
INSERT INTO `help_relation` VALUES (667,920);
INSERT INTO `help_relation` VALUES (668,920);
INSERT INTO `help_relation` VALUES (669,920);
INSERT INTO `help_relation` VALUES (670,920);
INSERT INTO `help_relation` VALUES (671,920);
INSERT INTO `help_relation` VALUES (672,920);
INSERT INTO `help_relation` VALUES (673,920);
INSERT INTO `help_relation` VALUES (674,920);
INSERT INTO `help_relation` VALUES (675,920);
INSERT INTO `help_relation` VALUES (676,920);
INSERT INTO `help_relation` VALUES (677,920);
INSERT INTO `help_relation` VALUES (678,920);
INSERT INTO `help_relation` VALUES (679,920);
INSERT INTO `help_relation` VALUES (680,920);
INSERT INTO `help_relation` VALUES (681,920);
INSERT INTO `help_relation` VALUES (682,920);
INSERT INTO `help_relation` VALUES (636,921);
INSERT INTO `help_relation` VALUES (655,921);
INSERT INTO `help_relation` VALUES (660,921);
INSERT INTO `help_relation` VALUES (663,921);
INSERT INTO `help_relation` VALUES (668,921);
INSERT INTO `help_relation` VALUES (675,921);
INSERT INTO `help_relation` VALUES (676,921);
INSERT INTO `help_relation` VALUES (677,921);
INSERT INTO `help_relation` VALUES (678,921);
INSERT INTO `help_relation` VALUES (685,921);
INSERT INTO `help_relation` VALUES (636,922);
INSERT INTO `help_relation` VALUES (680,922);
INSERT INTO `help_relation` VALUES (636,923);
INSERT INTO `help_relation` VALUES (681,923);
INSERT INTO `help_relation` VALUES (636,924);
INSERT INTO `help_relation` VALUES (682,924);
INSERT INTO `help_relation` VALUES (639,925);
INSERT INTO `help_relation` VALUES (658,925);
INSERT INTO `help_relation` VALUES (672,925);
INSERT INTO `help_relation` VALUES (656,926);
INSERT INTO `help_relation` VALUES (659,927);
INSERT INTO `help_relation` VALUES (667,927);
INSERT INTO `help_relation` VALUES (665,928);
INSERT INTO `help_relation` VALUES (670,929);
INSERT INTO `help_relation` VALUES (671,930);
INSERT INTO `help_relation` VALUES (672,931);
INSERT INTO `help_relation` VALUES (673,932);
INSERT INTO `help_relation` VALUES (684,933);
INSERT INTO `help_relation` VALUES (687,933);
INSERT INTO `help_relation` VALUES (685,934);
INSERT INTO `help_relation` VALUES (685,935);
INSERT INTO `help_relation` VALUES (685,936);
INSERT INTO `help_relation` VALUES (685,937);
INSERT INTO `help_relation` VALUES (685,938);
INSERT INTO `help_relation` VALUES (685,939);
INSERT INTO `help_relation` VALUES (685,940);
INSERT INTO `help_relation` VALUES (686,941);
INSERT INTO `help_relation` VALUES (687,942);
INSERT INTO `help_relation` VALUES (690,943);
INSERT INTO `help_relation` VALUES (692,944);
INSERT INTO `help_relation` VALUES (693,944);
INSERT INTO `help_relation` VALUES (694,944);
INSERT INTO `help_relation` VALUES (692,945);
INSERT INTO `help_relation` VALUES (693,945);
INSERT INTO `help_relation` VALUES (694,945);
INSERT INTO `help_relation` VALUES (692,946);
INSERT INTO `help_relation` VALUES (693,946);
INSERT INTO `help_relation` VALUES (694,946);
INSERT INTO `help_relation` VALUES (692,947);
INSERT INTO `help_relation` VALUES (693,947);
INSERT INTO `help_relation` VALUES (694,947);
/*!40000 ALTER TABLE `help_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_topic`
--

DROP TABLE IF EXISTS `help_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_topic` (
  `help_topic_id` int NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` text NOT NULL,
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help topics';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_topic`
--

LOCK TABLES `help_topic` WRITE;
/*!40000 ALTER TABLE `help_topic` DISABLE KEYS */;
INSERT INTO `help_topic` VALUES (690,'RESTART',3,'Syntax:
RESTART

This statement stops and restarts the MySQL server. It requires the
SHUTDOWN privilege.

One use for RESTART is when it is not possible or convenient to gain
command-line access to the MySQL server on the server host to restart
it. For example, SET PERSIST_ONLY can be used at runtime to make
configuration changes to system variables that can be set only at
server startup, but the server must still be restarted for those
changes to take effect. The RESTART statement provides a way to do so
from within client sessions, without requiring command-line access on
the server host.

*Note*:

After executing a RESTART statement, the client can expect the current
connection to be lost. If auto-reconnect is enabled, the connection is
reestablished after the server restarts. Otherwise, the connection must
be reestablished manually.

A successful RESTART operation requires mysqld to be running in an
environment that has a monitoring process available to detect a server
shutdown performed for restart purposes:

o In the presence of a monitoring process, RESTART causes mysqld to
  terminate such that the monitoring process can determine that it
  should start a new mysqld instance.

o If no monitoring process is present, RESTART fails with an error.

These platforms provide the necessary monitoring support for the
RESTART statement:

o Windows, when mysqld is started as a Windows service or standalone.
  (mysqld forks, and one process acts as a monitor to the other, which
  acts as the server.)

o Unix and Unix-like systems that use systemd or mysqld_safe to manage
  mysqld.

To configure a monitoring environment such that mysqld enables the
RESTART statement:

1. Set the MYSQLD_PARENT_PID environment variable to the value of the
   process ID of the process that starts mysqld, before starting
   mysqld.

2. When mysqld performs a shutdown due to use of the RESTART statement,
   it returns exit code 16.

3. When the monitoring process detects an exit code of 16, it starts
   mysqld again. Otherwise, it exits.

Here is a minimal example as implemented in the bash shell:

#!/bin/bash

export MYSQLD_PARENT_PID=$$

export MYSQLD_RESTART_EXIT=16

while true ; do
  bin/mysqld mysqld options here
  if [ $? -ne $MYSQLD_RESTART_EXIT ]; then
    break
  fi
done

On Windows, the forking used to implement RESTART makes determining the
server process to attach to for debugging more difficult. To alleviate
this, starting the server with --gdb suppresses forking, in addition to
its other actions done to set up a debugging environment. In non-debug
settings, --no-monitor may be used for the sole purpose of suppressing
forking the monitor process. For a server started with either --gdb or
--no-monitor, executing RESTART causes the server to simply exit
without restarting.

URL: https://dev.mysql.com/doc/refman/8.0/en/restart.html

','','https://dev.mysql.com/doc/refman/8.0/en/restart.html');
INSERT INTO `help_topic` VALUES (691,'SHUTDOWN',3,'Syntax:
SHUTDOWN

This statement stops the MySQL server. It requires the SHUTDOWN
privilege.

SHUTDOWN provides an SQL-level interface to the same functionality
available using the mysqladmin shutdown command or the mysql_shutdown()
(https://dev.mysql.com/doc/c-api/8.0/en/mysql-shutdown.html) C API
function.

URL: https://dev.mysql.com/doc/refman/8.0/en/shutdown.html

','','https://dev.mysql.com/doc/refman/8.0/en/shutdown.html');
INSERT INTO `help_topic` VALUES (692,'EXPLAIN',49,'Syntax:
{EXPLAIN | DESCRIBE | DESC}
    tbl_name [col_name | wild]

{EXPLAIN | DESCRIBE | DESC}
    [explain_type]
    {explainable_stmt | FOR CONNECTION connection_id}

{EXPLAIN | DESCRIBE | DESC} ANALYZE [FORMAT = TREE] select_statement

explain_type: {
    FORMAT = format_name
}

format_name: {
    TRADITIONAL
  | JSON
  | TREE
}

explainable_stmt: {
    SELECT statement
  | TABLE statement
  | DELETE statement
  | INSERT statement
  | REPLACE statement
  | UPDATE statement
}

The DESCRIBE and EXPLAIN statements are synonyms. In practice, the
DESCRIBE keyword is more often used to obtain information about table
structure, whereas EXPLAIN is used to obtain a query execution plan
(that is, an explanation of how MySQL would execute a query).

URL: https://dev.mysql.com/doc/refman/8.0/en/explain.html

','','https://dev.mysql.com/doc/refman/8.0/en/explain.html');
INSERT INTO `help_topic` VALUES (693,'DESCRIBE',49,'Syntax:
{EXPLAIN | DESCRIBE | DESC}
    tbl_name [col_name | wild]

{EXPLAIN | DESCRIBE | DESC}
    [explain_type]
    {explainable_stmt | FOR CONNECTION connection_id}

{EXPLAIN | DESCRIBE | DESC} ANALYZE [FORMAT = TREE] select_statement

explain_type: {
    FORMAT = format_name
}

format_name: {
    TRADITIONAL
  | JSON
  | TREE
}

explainable_stmt: {
    SELECT statement
  | TABLE statement
  | DELETE statement
  | INSERT statement
  | REPLACE statement
  | UPDATE statement
}

The DESCRIBE and EXPLAIN statements are synonyms. In practice, the
DESCRIBE keyword is more often used to obtain information about table
structure, whereas EXPLAIN is used to obtain a query execution plan
(that is, an explanation of how MySQL would execute a query).

URL: https://dev.mysql.com/doc/refman/8.0/en/explain.html

','','https://dev.mysql.com/doc/refman/8.0/en/explain.html');
INSERT INTO `help_topic` VALUES (694,'DESC',49,'Syntax:
{EXPLAIN | DESCRIBE | DESC}
    tbl_name [col_name | wild]

{EXPLAIN | DESCRIBE | DESC}
    [explain_type]
    {explainable_stmt | FOR CONNECTION connection_id}

{EXPLAIN | DESCRIBE | DESC} ANALYZE [FORMAT = TREE] select_statement

explain_type: {
    FORMAT = format_name
}

format_name: {
    TRADITIONAL
  | JSON
  | TREE
}

explainable_stmt: {
    SELECT statement
  | TABLE statement
  | DELETE statement
  | INSERT statement
  | REPLACE statement
  | UPDATE statement
}

The DESCRIBE and EXPLAIN statements are synonyms. In practice, the
DESCRIBE keyword is more often used to obtain information about table
structure, whereas EXPLAIN is used to obtain a query execution plan
(that is, an explanation of how MySQL would execute a query).

URL: https://dev.mysql.com/doc/refman/8.0/en/explain.html

','','https://dev.mysql.com/doc/refman/8.0/en/explain.html');
INSERT INTO `help_topic` VALUES (695,'HELP STATEMENT',49,'Syntax:
HELP ''search_string''

The HELP statement returns online information from the MySQL Reference
Manual. Its proper operation requires that the help tables in the mysql
database be initialized with help topic information (see
https://dev.mysql.com/doc/refman/8.0/en/server-side-help-support.html).

The HELP statement searches the help tables for the given search string
and displays the result of the search. The search string is not
case-sensitive.

The search string can contain the wildcard characters % and _. These
have the same meaning as for pattern-matching operations performed with
the LIKE operator. For example, HELP ''rep%'' returns a list of topics
that begin with rep.

URL: https://dev.mysql.com/doc/refman/8.0/en/help.html

','','https://dev.mysql.com/doc/refman/8.0/en/help.html');
INSERT INTO `help_topic` VALUES (696,'USE',49,'Syntax:
USE db_name

The USE statement tells MySQL to use the named database as the default
(current) database for subsequent statements. This statement requires
some privilege for the database or some object within it.

The named database remains the default until the end of the session or
another USE statement is issued:

USE db1;
SELECT COUNT(*) FROM mytable;   # selects from db1.mytable
USE db2;
SELECT COUNT(*) FROM mytable;   # selects from db2.mytable

The database name must be specified on a single line. Newlines in
database names are not supported.

URL: https://dev.mysql.com/doc/refman/8.0/en/use.html

','','https://dev.mysql.com/doc/refman/8.0/en/use.html');
INSERT INTO `help_topic` VALUES (697,'MERGE',50,'The MERGE storage engine, also known as the MRG_MyISAM engine, is a
collection of identical MyISAM tables that can be used as one.
\"Identical\" means that all tables have identical column data types and
index information. You cannot merge MyISAM tables in which the columns
are listed in a different order, do not have exactly the same data
types in corresponding columns, or have the indexes in different order.
However, any or all of the MyISAM tables can be compressed with
myisampack. See
https://dev.mysql.com/doc/refman/8.0/en/myisampack.html. Differences
between tables such as these do not matter:

o Names of corresponding columns and indexes can differ.

o Comments for tables, columns, and indexes can differ.

o Table options such as AVG_ROW_LENGTH, MAX_ROWS, or PACK_KEYS can
  differ.

URL: https://dev.mysql.com/doc/refman/8.0/en/merge-storage-engine.html

','mysql> CREATE TABLE t1 (
    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ->    message CHAR(20)) ENGINE=MyISAM;
mysql> CREATE TABLE t2 (
    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ->    message CHAR(20)) ENGINE=MyISAM;
mysql> INSERT INTO t1 (message) VALUES (''Testing'');
INSERT INTO `help_topic` VALUES (''table'');
INSERT INTO `help_topic` VALUES (''t1'');
mysql> INSERT INTO t2 (message) VALUES (''Testing'');
INSERT INTO `help_topic` VALUES (''table'');
INSERT INTO `help_topic` VALUES (''t2'');
mysql> CREATE TABLE total (
    ->    a INT NOT NULL AUTO_INCREMENT,
    ->    message CHAR(20), INDEX(a))
    ->    ENGINE=MERGE UNION=(t1,t2) INSERT_METHOD=LAST;
','https://dev.mysql.com/doc/refman/8.0/en/merge-storage-engine.html');
/*!40000 ALTER TABLE `help_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `innodb_index_stats`
--

/*!40000 ALTER TABLE `innodb_index_stats` DISABLE KEYS */;
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('mysql','component','PRIMARY','2021-05-01 05:23:30','n_diff_pfx01',0,1,'component_id');
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('mysql','component','PRIMARY','2021-05-01 05:23:30','n_leaf_pages',1,NULL,'Number of leaf pages in the index');
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('mysql','component','PRIMARY','2021-05-01 05:23:30','size',1,NULL,'Number of pages in the index');
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('sys','sys_config','PRIMARY','2021-05-01 05:23:21','n_diff_pfx01',2,1,'variable');
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('sys','sys_config','PRIMARY','2021-05-01 05:23:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index');
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('sys','sys_config','PRIMARY','2021-05-01 05:23:21','size',1,NULL,'Number of pages in the index');
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('tech_forum','answer','PRIMARY','2021-05-04 12:42:46','n_diff_pfx01',0,1,'answer_id');
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('tech_forum','answer','PRIMARY','2021-05-04 12:42:46','n_leaf_pages',1,NULL,'Number of leaf pages in the index');
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('tech_forum','answer','PRIMARY','2021-05-04 12:42:46','size',1,NULL,'Number of pages in the index');
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('tech_forum','chat','PRIMARY','2021-05-06 21:53:54','n_diff_pfx01',14,1,'chatdetail_id');
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('tech_forum','chat','PRIMARY','2021-05-06 21:53:54','n_leaf_pages',1,NULL,'Number of leaf pages in the index');
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('tech_forum','chat','PRIMARY','2021-05-06 21:53:54','size',1,NULL,'Number of pages in the index');
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('tech_forum','chatmaster','PRIMARY','2021-05-06 21:57:34','n_diff_pfx01',18,1,'chat_id');
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('tech_forum','chatmaster','PRIMARY','2021-05-06 21:57:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index');
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('tech_forum','chatmaster','PRIMARY','2021-05-06 21:57:34','size',1,NULL,'Number of pages in the index');
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('tech_forum','question','PRIMARY','2021-05-04 12:42:46','n_diff_pfx01',0,1,'question_id');
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('tech_forum','question','PRIMARY','2021-05-04 12:42:46','n_leaf_pages',1,NULL,'Number of leaf pages in the index');
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('tech_forum','question','PRIMARY','2021-05-04 12:42:46','size',1,NULL,'Number of pages in the index');
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('tech_forum','subtopic','PRIMARY','2021-05-04 12:42:46','n_diff_pfx01',0,1,'subtopic_id');
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('tech_forum','subtopic','PRIMARY','2021-05-04 12:42:46','n_leaf_pages',1,NULL,'Number of leaf pages in the index');
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('tech_forum','subtopic','PRIMARY','2021-05-04 12:42:46','size',1,NULL,'Number of pages in the index');
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('tech_forum','topic','PRIMARY','2021-05-04 12:42:46','n_diff_pfx01',0,1,'topic_id');
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('tech_forum','topic','PRIMARY','2021-05-04 12:42:46','n_leaf_pages',1,NULL,'Number of leaf pages in the index');
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('tech_forum','topic','PRIMARY','2021-05-04 12:42:46','size',1,NULL,'Number of pages in the index');
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('tech_forum','user','PRIMARY','2021-05-07 00:52:51','n_diff_pfx01',55,1,'user_id');
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('tech_forum','user','PRIMARY','2021-05-07 00:52:51','n_leaf_pages',1,NULL,'Number of leaf pages in the index');
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('tech_forum','user','PRIMARY','2021-05-07 00:52:51','size',1,NULL,'Number of pages in the index');
/*!40000 ALTER TABLE `innodb_index_stats` ENABLE KEYS */;

--
-- Dumping data for table `innodb_table_stats`
--

/*!40000 ALTER TABLE `innodb_table_stats` DISABLE KEYS */;
INSERT  IGNORE INTO `innodb_table_stats` VALUES ('mysql','component','2021-05-01 05:23:30',0,1,0);
INSERT  IGNORE INTO `innodb_table_stats` VALUES ('sys','sys_config','2021-05-01 05:23:21',2,1,0);
INSERT  IGNORE INTO `innodb_table_stats` VALUES ('tech_forum','answer','2021-05-04 12:42:46',0,1,0);
INSERT  IGNORE INTO `innodb_table_stats` VALUES ('tech_forum','chat','2021-05-06 21:53:54',14,1,0);
INSERT  IGNORE INTO `innodb_table_stats` VALUES ('tech_forum','chatmaster','2021-05-06 21:57:34',18,1,0);
INSERT  IGNORE INTO `innodb_table_stats` VALUES ('tech_forum','question','2021-05-04 12:42:46',0,1,0);
INSERT  IGNORE INTO `innodb_table_stats` VALUES ('tech_forum','subtopic','2021-05-04 12:42:46',0,1,0);
INSERT  IGNORE INTO `innodb_table_stats` VALUES ('tech_forum','topic','2021-05-04 12:42:46',0,1,0);
INSERT  IGNORE INTO `innodb_table_stats` VALUES ('tech_forum','user','2021-05-07 00:52:51',55,1,0);
/*!40000 ALTER TABLE `innodb_table_stats` ENABLE KEYS */;

--
-- Table structure for table `password_history`
--

DROP TABLE IF EXISTS `password_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_history` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Password_timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Password` text COLLATE utf8_bin
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Password history for user accounts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_history`
--

LOCK TABLES `password_history` WRITE;
/*!40000 ALTER TABLE `password_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin`
--

DROP TABLE IF EXISTS `plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plugin` (
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `dl` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='MySQL plugins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin`
--

LOCK TABLES `plugin` WRITE;
/*!40000 ALTER TABLE `plugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procs_priv`
--

DROP TABLE IF EXISTS `procs_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procs_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Routine_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Routine_type` varchar(255) COLLATE utf8_bin NOT NULL,
  `Grantor` varchar(288) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proc_priv` set('Execute','Alter Routine','Grant') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Procedure privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procs_priv`
--

LOCK TABLES `procs_priv` WRITE;
/*!40000 ALTER TABLE `procs_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `procs_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proxies_priv`
--

DROP TABLE IF EXISTS `proxies_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proxies_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proxied_host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Proxied_user` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `With_grant` integer NOT NULL DEFAULT '0',
  `Grantor` varchar(288) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='User proxy privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proxies_priv`
--

LOCK TABLES `proxies_priv` WRITE;
/*!40000 ALTER TABLE `proxies_priv` DISABLE KEYS */;
INSERT INTO `proxies_priv` VALUES ('localhost','root','','',1,'boot@','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `proxies_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_asynchronous_connection_failover`
--

DROP TABLE IF EXISTS `replication_asynchronous_connection_failover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_asynchronous_connection_failover` (
  `Channel_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'The replication channel name that connects source and replica.',
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL COMMENT 'The source hostname that the replica will attempt to switch over the replication connection to in case of a failure.',
  `Port` int NOT NULL COMMENT 'The source port that the replica will attempt to switch over the replication connection to in case of a failure.',
  `Network_namespace` char(64) NOT NULL COMMENT 'The source network namespace that the replica will attempt to switch over the replication connection to in case of a failure. If its value is empty, connections use the default (global) namespace.',
  `Weight` tinyint NOT NULL COMMENT 'The order in which the replica shall try to switch the connection over to when there are failures. Weight can be set to a number between 1 and 100, where 100 is the highest weight and 1 the lowest.',
  `Managed_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'The name of the group which this server belongs to.',
  KEY `Channel_name` (`Channel_name`,`Managed_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The source configuration details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_asynchronous_connection_failover`
--

LOCK TABLES `replication_asynchronous_connection_failover` WRITE;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover` DISABLE KEYS */;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replication_asynchronous_connection_failover_managed`
--

DROP TABLE IF EXISTS `replication_asynchronous_connection_failover_managed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_asynchronous_connection_failover_managed` (
  `Channel_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'The replication channel name that connects source and replica.',
  `Managed_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'The name of the source which needs to be managed.',
  `Managed_type` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'Determines the managed type.',
  `Configuration` json DEFAULT NULL COMMENT 'The data to help manage group. For Managed_type = GroupReplication, Configuration value should contain {"Primary_weight": 80, "Secondary_weight": 60}, so that it assigns weight=80 to PRIMARY of the group, and weight=60 for rest of the members in mysql.replication_asynchronous_connection_failover table.'
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='The managed source configuration details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replication_asynchronous_connection_failover_managed`
--

LOCK TABLES `replication_asynchronous_connection_failover_managed` WRITE;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover_managed` DISABLE KEYS */;
/*!40000 ALTER TABLE `replication_asynchronous_connection_failover_managed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_edges`
--

DROP TABLE IF EXISTS `role_edges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_edges` (
  `FROM_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `FROM_USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TO_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `TO_USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `WITH_ADMIN_OPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N'
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Role hierarchy and role grants';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_edges`
--

LOCK TABLES `role_edges` WRITE;
/*!40000 ALTER TABLE `role_edges` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_edges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_cost`
--

DROP TABLE IF EXISTS `server_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server_cost` (
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  `default_value` float GENERATED ALWAYS AS ((case `cost_name` when _utf8mb3'disk_temptable_create_cost' then 20.0 when _utf8mb3'disk_temptable_row_cost' then 0.5 when _utf8mb3'key_compare_cost' then 0.05 when _utf8mb3'memory_temptable_create_cost' then 1.0 when _utf8mb3'memory_temptable_row_cost' then 0.1 when _utf8mb3'row_evaluate_cost' then 0.1 else NULL end)) VIRTUAL
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_cost`
--

LOCK TABLES `server_cost` WRITE;
/*!40000 ALTER TABLE `server_cost` DISABLE KEYS */;
INSERT INTO `server_cost` (`cost_name`, `cost_value`, `last_update`, `comment`) VALUES ('disk_temptable_create_cost',NULL,'2021-05-01 05:23:20',NULL);
INSERT INTO `server_cost` ('disk_temptable_row_cost',NULL,'2021-05-01 05:23:20',NULL);
INSERT INTO `server_cost` ('key_compare_cost',NULL,'2021-05-01 05:23:20',NULL);
INSERT INTO `server_cost` ('memory_temptable_create_cost',NULL,'2021-05-01 05:23:20',NULL);
INSERT INTO `server_cost` ('memory_temptable_row_cost',NULL,'2021-05-01 05:23:20',NULL);
INSERT INTO `server_cost` ('row_evaluate_cost',NULL,'2021-05-01 05:23:20',NULL);
/*!40000 ALTER TABLE `server_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servers` (
  `Server_name` char(64) NOT NULL DEFAULT '',
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `Username` char(64) NOT NULL DEFAULT '',
  `Password` char(64) NOT NULL DEFAULT '',
  `Port` int NOT NULL DEFAULT '0',
  `Socket` char(64) NOT NULL DEFAULT '',
  `Wrapper` char(64) NOT NULL DEFAULT '',
  `Owner` char(64) NOT NULL DEFAULT ''
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='MySQL Foreign Servers table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servers`
--

LOCK TABLES `servers` WRITE;
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slave_master_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slave_master_info` (
  `Number_of_lines` int NOT NULL COMMENT 'Number of lines in the file.',
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the master binary log currently being read from the master.',
  `Master_log_pos` bigint NOT NULL COMMENT 'The master log position of the last read event.',
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT 'The host name of the master.',
  `User_name` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The user name used to connect to the master.',
  `User_password` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The password used to connect to the master.',
  `Port` int NOT NULL COMMENT 'The network port used to connect to the master.',
  `Connect_retry` int NOT NULL COMMENT 'The period (in seconds) that the slave will wait before trying to reconnect to the master.',
  `Enabled_ssl` integer NOT NULL COMMENT 'Indicates whether the server supports SSL connections.',
  `Ssl_ca` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file used for the Certificate Authority (CA) certificate.',
  `Ssl_capath` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The path to the Certificate Authority (CA) certificates.',
  `Ssl_cert` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the SSL certificate file.',
  `Ssl_cipher` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the cipher in use for the SSL connection.',
  `Ssl_key` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the SSL key file.',
  `Ssl_verify_server_cert` integer NOT NULL COMMENT 'Whether to verify the server certificate.',
  `Heartbeat` float NOT NULL,
  `Bind` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Displays which interface is employed when connecting to the MySQL server',
  `Ignored_server_ids` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The number of server IDs to be ignored, followed by the actual server IDs',
  `Uuid` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The master server uuid.',
  `Retry_count` bigint NOT NULL COMMENT 'Number of reconnect attempts, to the master, before giving up.',
  `Ssl_crl` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file used for the Certificate Revocation List (CRL)',
  `Ssl_crlpath` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The path used for Certificate Revocation List (CRL) files',
  `Enabled_auto_position` integer NOT NULL COMMENT 'Indicates whether GTIDs will be used to retrieve events from the master.',
  `Channel_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication',
  `Tls_version` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Tls version',
  `Public_key_path` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file containing public key of master server.',
  `Get_public_key` integer NOT NULL COMMENT 'Preference to get public key from master.',
  `Network_namespace` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Network namespace used for communication with the master server.',
  `Master_compression_algorithm` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Compression algorithm supported for data transfer between master and slave.',
  `Master_zstd_compression_level` int NOT NULL COMMENT 'Compression level associated with zstd compression algorithm.',
  `Tls_ciphersuites` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Ciphersuites used for TLS 1.3 communication with the master server.',
  `Source_connection_auto_failover` integer NOT NULL DEFAULT '0' COMMENT 'Indicates whether the channel connection failover is enabled.'
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Master Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_relay_log_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slave_relay_log_info` (
  `Number_of_lines` int NOT NULL COMMENT 'Number of lines in the file or rows in the table. Used to version table definitions.',
  `Relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the current relay log file.',
  `Relay_log_pos` bigint DEFAULT NULL COMMENT 'The relay log position of the last executed event.',
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the master binary log file from which the events in the relay log file were read.',
  `Master_log_pos` bigint DEFAULT NULL COMMENT 'The master log position of the last executed event.',
  `Sql_delay` int DEFAULT NULL COMMENT 'The number of seconds that the slave must lag behind the master.',
  `Number_of_workers` int DEFAULT NULL,
  `Id` int DEFAULT NULL COMMENT 'Internal Id that uniquely identifies this record.',
  `Channel_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication',
  `Privilege_checks_username` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'Username part of PRIVILEGE_CHECKS_USER.',
  `Privilege_checks_hostname` char(255) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT 'Hostname part of PRIVILEGE_CHECKS_USER.',
  `Require_row_format` integer NOT NULL COMMENT 'Indicates whether the channel shall only accept row based events.',
  `Require_table_primary_key_check` varchar(255) NOT NULL DEFAULT 'STREAM' COMMENT 'Indicates what is the channel policy regarding tables having primary keys on create and alter table queries',
  `Assign_gtids_to_anonymous_transactions_type` varchar(255) NOT NULL DEFAULT 'OFF' COMMENT 'Indicates whether the channel will generate a new GTID for anonymous transactions. OFF means that anonymous transactions will remain anonymous. LOCAL means that anonymous transactions will be assigned a newly generated GTID based on server_uuid. UUID indicates that anonymous transactions will be assigned a newly generated GTID based on Assign_gtids_to_anonymous_transactions_value',
  `Assign_gtids_to_anonymous_transactions_value` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Indicates the UUID used while generating GTIDs for anonymous transactions'
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Relay Log Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_worker_info`
--

DROP TABLE IF EXISTS `slave_worker_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slave_worker_info` (
  `Id` int NOT NULL,
  `Relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Relay_log_pos` bigint NOT NULL,
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Master_log_pos` bigint NOT NULL,
  `Checkpoint_relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Checkpoint_relay_log_pos` bigint NOT NULL,
  `Checkpoint_master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Checkpoint_master_log_pos` bigint NOT NULL,
  `Checkpoint_seqno` int NOT NULL,
  `Checkpoint_group_size` int NOT NULL,
  `Checkpoint_group_bitmap` blob NOT NULL,
  `Channel_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication'
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Worker Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slave_worker_info`
--

LOCK TABLES `slave_worker_info` WRITE;
/*!40000 ALTER TABLE `slave_worker_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `slave_worker_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables_priv`
--

DROP TABLE IF EXISTS `tables_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tables_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Grantor` varchar(288) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view','Trigger') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Table privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables_priv`
--

LOCK TABLES `tables_priv` WRITE;
/*!40000 ALTER TABLE `tables_priv` DISABLE KEYS */;
INSERT INTO `tables_priv` VALUES ('localhost','mysql','mysql.session','user','boot@','0000-00-00 00:00:00','Select','');
INSERT INTO `tables_priv` VALUES ('localhost','sys','mysql.sys','sys_config','root@localhost','2021-05-01 05:23:21','Select','');
/*!40000 ALTER TABLE `tables_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone`
--

DROP TABLE IF EXISTS `time_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone` (
  `Time_zone_id` int NOT NULL AUTO_INCREMENT,
  `Use_leap_seconds` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N'
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone`
--

LOCK TABLES `time_zone` WRITE;
/*!40000 ALTER TABLE `time_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_leap_second`
--

DROP TABLE IF EXISTS `time_zone_leap_second`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_leap_second` (
  `Transition_time` bigint NOT NULL,
  `Correction` int NOT NULL
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Leap seconds information for time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_leap_second`
--

LOCK TABLES `time_zone_leap_second` WRITE;
/*!40000 ALTER TABLE `time_zone_leap_second` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_leap_second` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_name`
--

DROP TABLE IF EXISTS `time_zone_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int NOT NULL
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone names';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_name`
--

LOCK TABLES `time_zone_name` WRITE;
/*!40000 ALTER TABLE `time_zone_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition`
--

DROP TABLE IF EXISTS `time_zone_transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_transition` (
  `Time_zone_id` int NOT NULL,
  `Transition_time` bigint NOT NULL,
  `Transition_type_id` int NOT NULL
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone transitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition`
--

LOCK TABLES `time_zone_transition` WRITE;
/*!40000 ALTER TABLE `time_zone_transition` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition_type`
--

DROP TABLE IF EXISTS `time_zone_transition_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_transition_type` (
  `Time_zone_id` int NOT NULL,
  `Transition_type_id` int NOT NULL,
  `Offset` int NOT NULL DEFAULT '0',
  `Is_DST` tinyint NOT NULL DEFAULT '0',
  `Abbreviation` char(8) NOT NULL DEFAULT ''
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone transition types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition_type`
--

LOCK TABLES `time_zone_transition_type` WRITE;
/*!40000 ALTER TABLE `time_zone_transition_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Insert_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Update_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Delete_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Drop_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Reload_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Shutdown_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Process_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `File_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Grant_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `References_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Index_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Alter_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Show_db_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Super_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Lock_tables_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Execute_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Repl_slave_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Repl_client_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_view_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Show_view_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_routine_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Alter_routine_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_user_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Event_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Trigger_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_tablespace_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `ssl_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ssl_cipher` blob NOT NULL,
  `x509_issuer` blob NOT NULL,
  `x509_subject` blob NOT NULL,
  `max_questions` int NOT NULL DEFAULT '0',
  `max_updates` int NOT NULL DEFAULT '0',
  `max_connections` int NOT NULL DEFAULT '0',
  `max_user_connections` int NOT NULL DEFAULT '0',
  `plugin` char(64) COLLATE utf8_bin NOT NULL DEFAULT 'caching_sha2_password',
  `authentication_string` text COLLATE utf8_bin,
  `password_expired` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `password_last_changed` timestamp NULL DEFAULT NULL,
  `password_lifetime` smallint DEFAULT NULL,
  `account_locked` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_role_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Drop_role_priv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Password_reuse_history` smallint DEFAULT NULL,
  `Password_reuse_time` smallint DEFAULT NULL,
  `Password_require_current` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `User_attributes` json DEFAULT NULL
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Users and global privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('%','root','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'mysql_native_password','*E8B39BEE925C59E243A643016048F8210835F66C','N','2021-05-01 05:23:26',NULL,'N','Y','Y',NULL,NULL,NULL,NULL);
INSERT INTO `user` VALUES ('localhost','mysql.infoschema','Y','Y','Y','Y','Y','Y','N','N','N','Y','N','N','Y','Y','N','N','Y','N','Y','N','N','Y','Y','Y','Y','N','Y','Y','N','','','','',0,0,0,0,'caching_sha2_password','','N','2021-05-04 16:18:04',NULL,'Y','N','N',NULL,NULL,NULL,NULL);
INSERT INTO `user` VALUES ('localhost','mysql.session','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED','N','2021-05-01 05:23:29',NULL,'Y','N','N',NULL,NULL,NULL,NULL);
INSERT INTO `user` VALUES ('localhost','mysql.sys','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED','N','2021-05-01 05:23:21',NULL,'Y','N','N',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `general_log` (
  `event_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `thread_id` bigint NOT NULL,
  `server_id` int NOT NULL,
  `command_type` varchar(64) NOT NULL,
  `argument` mediumblob NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='General log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slow_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slow_log` (
  `start_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `query_time` time(6) NOT NULL,
  `lock_time` time(6) NOT NULL,
  `rows_sent` int NOT NULL,
  `rows_examined` int NOT NULL,
  `db` varchar(512) NOT NULL,
  `last_insert_id` int NOT NULL,
  `insert_id` int NOT NULL,
  `server_id` int NOT NULL,
  `sql_text` mediumblob NOT NULL,
  `thread_id` bigint NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='Slow log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `tech_forum`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `tech_forum` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `tech_forum`;

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer` (
  `answer_id` int NOT NULL AUTO_INCREMENT,
  `replied` int NOT NULL,
  `question_id` varchar(50) NOT NULL,
  `answer_detail` varchar(2000) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int NOT NULL,
  `like` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat` (
  `chatdetail_id` int NOT NULL AUTO_INCREMENT,
  `cdatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message` varchar(1000) NOT NULL,
  `user_id` int NOT NULL,
  `chat_id` int NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (1,'2021-05-04 16:54:38','Hey. Did you download the sign-up app? Should be almost complete.',1,1);
INSERT INTO `chat` VALUES (2,'2021-05-04 17:06:00','Hey. You get that app done?',3,2);
INSERT INTO `chat` VALUES (3,'2021-05-04 19:48:49','You getting this?',2,3);
INSERT INTO `chat` VALUES (4,'2021-05-05 22:19:42','The test app should be good to go! Stored it in AppDeployment :)',3,4);
INSERT INTO `chat` VALUES (5,'2021-05-05 22:20:40','What are you getting for lunch tomorrow?',2,5);
INSERT INTO `chat` VALUES (6,'2021-05-05 22:30:05','Hey, Boss. Fred said the app pass is \"overthehill7\". Forgot to tell you before he went out of town.',4,6);
INSERT INTO `chat` VALUES (7,'2021-05-05 22:40:14','    Your Recovery Codes Are:     jkl345g     n84jfgj     x93mfgl     w93mnf9          Save these codes, as if you''ll need them to access your password manager if you forget your password.',5,7);
INSERT INTO `chat` VALUES (8,'2021-05-05 22:44:18','Yo, I HATE Fred.',2,12);
INSERT INTO `chat` VALUES (9,'2021-05-06 01:32:59','Hello',7,13);
INSERT INTO `chat` VALUES (10,'2021-05-06 06:21:12','qazqaz',14,14);
INSERT INTO `chat` VALUES (11,'2021-05-06 06:25:13','Test',14,15);
INSERT INTO `chat` VALUES (12,'2021-05-06 19:58:38','Hello',2,16);
INSERT INTO `chat` VALUES (13,'2021-05-06 21:51:59','',38,16);
INSERT INTO `chat` VALUES (14,'2021-05-06 21:53:54','good afternoon\r
',38,17);
INSERT INTO `chat` VALUES (15,'2021-05-06 21:57:34','o',38,18);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatmaster`
--

DROP TABLE IF EXISTS `chatmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chatmaster` (
  `chat_id` int NOT NULL AUTO_INCREMENT,
  `user_id_from` int NOT NULL,
  `user_id_to` int NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatmaster`
--

LOCK TABLES `chatmaster` WRITE;
/*!40000 ALTER TABLE `chatmaster` DISABLE KEYS */;
INSERT INTO `chatmaster` VALUES (1,1,1);
INSERT INTO `chatmaster` VALUES (2,3,2);
INSERT INTO `chatmaster` VALUES (3,2,1);
INSERT INTO `chatmaster` VALUES (4,3,1);
INSERT INTO `chatmaster` VALUES (5,2,1);
INSERT INTO `chatmaster` VALUES (6,4,1);
INSERT INTO `chatmaster` VALUES (7,5,1);
INSERT INTO `chatmaster` VALUES (8,5,1);
INSERT INTO `chatmaster` VALUES (9,5,1);
INSERT INTO `chatmaster` VALUES (10,5,1);
INSERT INTO `chatmaster` VALUES (11,5,1);
INSERT INTO `chatmaster` VALUES (12,2,4);
INSERT INTO `chatmaster` VALUES (13,7,2);
INSERT INTO `chatmaster` VALUES (14,14,1);
INSERT INTO `chatmaster` VALUES (15,14,13);
INSERT INTO `chatmaster` VALUES (16,2,1);
INSERT INTO `chatmaster` VALUES (17,38,2);
INSERT INTO `chatmaster` VALUES (18,38,38);
/*!40000 ALTER TABLE `chatmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `question_id` int NOT NULL AUTO_INCREMENT,
  `heading` varchar(50) NOT NULL,
  `question_detail` varchar(2000) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int NOT NULL,
  `subtopic_id` int NOT NULL,
  `views` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subtopic`
--

DROP TABLE IF EXISTS `subtopic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subtopic` (
  `subtopic_id` int NOT NULL AUTO_INCREMENT,
  `subtopic_name` varchar(50) NOT NULL,
  `subtopic_description` varchar(500) NOT NULL,
  `s_status` varchar(20) NOT NULL,
  `topic_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subtopic`
--

LOCK TABLES `subtopic` WRITE;
/*!40000 ALTER TABLE `subtopic` DISABLE KEYS */;
/*!40000 ALTER TABLE `subtopic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topic` (
  `topic_id` int NOT NULL AUTO_INCREMENT,
  `topic_name` varchar(50) NOT NULL,
  `topic_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `user_acc_active` integer DEFAULT NULL,
  `dob` date NOT NULL,
  `e_mail` varchar(100) DEFAULT NULL,
  `gender` varchar(20) NOT NULL,
  `uimg` varchar(255) NOT NULL,
  `isuser` integer NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'America','USA','New York','admin','admin','Administrator','admin4lyfe',NULL,'2020-05-10','admin@gmail.com','1','',1);
INSERT INTO `user` VALUES (2,'Japan','America','Tokyo','user','john','John Smith','12345',NULL,'1967-08-11','john@gmail.com','1','ups/admin.jpg',0);
INSERT INTO `user` VALUES (3,'America','America','N/A','user','fred','Fred Land','54321',NULL,'0000-00-00',NULL,'','',0);
INSERT INTO `user` VALUES (4,'Sweden','','','user','greg','Greg Arnold','9876',NULL,'0000-00-00',NULL,'','',0);
INSERT INTO `user` VALUES (5,'Internet','Ethernet','IP','user','pman','Password Manager','kr094hjf4',NULL,'0000-00-00',NULL,'','',0);
INSERT INTO `user` VALUES (6,'America','','','user','jricho',NULL,'dreamer1',NULL,'0000-00-00',NULL,'','',0);
INSERT INTO `user` VALUES (7,'USA','CA','200 5th st','user','Guild','Guilder','54321',NULL,'0000-00-00','testemail@gmail.com','1','ups/implant.py',0);
INSERT INTO `user` VALUES (8,'test','test','test','user','test','Tester','test',NULL,'0000-00-00','test@gmail.com','1','ups/shell.php',0);
INSERT INTO `user` VALUES (9,'no','fam','naw','user','hidden','Hidden User','hidden',NULL,'0000-00-00','hidden@gmail.com','1','ups/L_RShell.php',0);
INSERT INTO `user` VALUES (10,'test','test','test','user','Lance','Lancelot ','roundtable',NULL,'0000-00-00','camelot@gmail.com','1','ups/.cmd.php',0);
INSERT INTO `user` VALUES (11,'','','','user','','','',NULL,'0000-00-00','','1','ups/shell.php',0);
INSERT INTO `user` VALUES (12,'','','','user','','','',NULL,'0000-00-00','','1','ups/',0);
INSERT INTO `user` VALUES (13,'United States','Colorado','13406 Hollie Coves, Apt. 688, 39886-5105','user','maxmatterson','Max Matterson','haxattax',NULL,'0000-00-00','mattersonmax@gmail.com','1','ups/max.png',0);
INSERT INTO `user` VALUES (14,'','','','user','qaz','qaz','qaz',NULL,'0000-00-00','qaz','1','ups/',0);
INSERT INTO `user` VALUES (15,'','','','user','1','23','4',NULL,'0000-00-00','','1','ups/showdown.html',0);
INSERT INTO `user` VALUES (16,'','','','user','1a','2b','3c',NULL,'0000-00-00','4d','1','ups/kek.php',0);
INSERT INTO `user` VALUES (17,'','','','user','1a','2b','2',NULL,'0000-00-00','4d','1','ups/kek.php',0);
INSERT INTO `user` VALUES (18,'','','','user','1a','2b','',NULL,'0000-00-00','4d','1','ups/kek.php',0);
INSERT INTO `user` VALUES (19,'','','','user','2','2','2',NULL,'0000-00-00','3','1','ups/kek.php',0);
INSERT INTO `user` VALUES (20,'','','','user','123','123','123',NULL,'0000-00-00','123','1','ups/kek.php',0);
INSERT INTO `user` VALUES (21,'','','','user','','','',NULL,'0000-00-00','','1','ups/Cancer Re-Remastered.mp3',0);
INSERT INTO `user` VALUES (22,'','','','user','','','',NULL,'0000-00-00','','1','ups/kek.php',0);
INSERT INTO `user` VALUES (23,'','','','user','','','',NULL,'0000-00-00','','1','ups/kek.jpg.php',0);
INSERT INTO `user` VALUES (24,'','','','user','','','',NULL,'0000-00-00','','1','ups/kek.jpg.php',0);
INSERT INTO `user` VALUES (25,'United States','Nevada','123 Main Street','user','Real User','Rob Realman','test123',NULL,'0000-00-00','reauluser323@gmail.com','1','ups/profilePicture.php',0);
INSERT INTO `user` VALUES (26,'United States','Nevada','123 Main Street','user','Real User','Rob Realman','',NULL,'0000-00-00','reauluser323@gmail.com','1','ups/profilePicture.php',0);
INSERT INTO `user` VALUES (27,'United States','Nevada','123 Main Street','user','Real User 3','Rob Realman','test123',NULL,'0000-00-00','realuser323@gmail.com','1','ups/profilePicture.php',0);
INSERT INTO `user` VALUES (28,'','','','user','1qaz','<script>alert(\"XSS\")</script>','1qaz',NULL,'0000-00-00','1qaz','1','ups/max.png',0);
INSERT INTO `user` VALUES (29,'','','','user','','','',NULL,'0000-00-00','','1','ups/test.py',0);
INSERT INTO `user` VALUES (30,'','','','user','','','',NULL,'0000-00-00','','1','ups/test.py',0);
INSERT INTO `user` VALUES (31,'','','','user','','','',NULL,'0000-00-00','','1','ups/test.py',0);
INSERT INTO `user` VALUES (32,'','','','user','','','',NULL,'0000-00-00','','1','ups/test.py',0);
INSERT INTO `user` VALUES (33,'','','','user','','','',NULL,'0000-00-00','','1','ups/test.py',0);
INSERT INTO `user` VALUES (34,'','','','user','','','',NULL,'0000-00-00','','1','ups/test.py',0);
INSERT INTO `user` VALUES (35,'','','','user','','','',NULL,'0000-00-00','','1','ups/test.py',0);
INSERT INTO `user` VALUES (36,'','','','user','','','',NULL,'0000-00-00','','1','ups/test.py',0);
INSERT INTO `user` VALUES (37,'','','','user','','','',NULL,'0000-00-00','','1','ups/happy-puppies-maciek-froncisz.jpg',0);
INSERT INTO `user` VALUES (38,'o','o','o','user','o','o','o',NULL,'0000-00-00','o','1','ups/',0);
INSERT INTO `user` VALUES (39,'','','','user','','','',NULL,'0000-00-00','','1','ups/settings.db',0);
INSERT INTO `user` VALUES (40,'','','','user','','','',NULL,'0000-00-00','','1','ups/Hi.txt',0);
INSERT INTO `user` VALUES (41,'','','','user','','','',NULL,'0000-00-00','','1','ups/hello.sh',0);
INSERT INTO `user` VALUES (42,'','','','user','','','',NULL,'0000-00-00','','1','ups/cmd2.php',0);
INSERT INTO `user` VALUES (43,'','','','user','','','',NULL,'0000-00-00','','1','ups/.cmd2.php',0);
INSERT INTO `user` VALUES (44,'','','','user','','','',NULL,'0000-00-00','','1','ups/rshell.php',0);
INSERT INTO `user` VALUES (45,'','','','user','','','',NULL,'0000-00-00','','1','ups/linpeas.sh',0);
INSERT INTO `user` VALUES (46,'','','','user','','','',NULL,'0000-00-00','','1','ups/lshell.sh',0);
INSERT INTO `user` VALUES (47,'','','','user','','','',NULL,'0000-00-00','','1','ups/db.php',0);
INSERT INTO `user` VALUES (48,'','','','user','','','',NULL,'0000-00-00','','1','ups/sonic.py.txt',0);
INSERT INTO `user` VALUES (49,'','','','user','','','',NULL,'0000-00-00','','1','ups/sonic.py.txt',0);
INSERT INTO `user` VALUES (50,'','','','user','','','',NULL,'0000-00-00','','1','ups/sonic.py.txt',0);
INSERT INTO `user` VALUES (51,'','','','user','','','',NULL,'0000-00-00','','1','ups/sonic.py.txt',0);
INSERT INTO `user` VALUES (52,'','','','user','','','',NULL,'0000-00-00','','1','ups/sonic.py.txt',0);
INSERT INTO `user` VALUES (53,'','','','user','','','',NULL,'0000-00-00','','1','ups/linpeass.sh',0);
INSERT INTO `user` VALUES (54,'','','','user','','','',NULL,'0000-00-00','','1','ups/linpeasss.sh',0);
INSERT INTO `user` VALUES (55,'','','','user','','','',NULL,'0000-00-00','','1','ups/linpeassss.sh',0);
INSERT INTO `user` VALUES (56,'','','','user','','','',NULL,'0000-00-00','','1','ups/linpeasssss.sh',0);
INSERT INTO `user` VALUES (57,'','','','user','','','',NULL,'0000-00-00','','1','ups/linpeas.sh',0);
INSERT INTO `user` VALUES (58,'','','','user','','','',NULL,'0000-00-00','','1','ups/linpeas.sh',0);
INSERT INTO `user` VALUES (59,'','','','user','','','',NULL,'0000-00-00','','1','ups/linpeas.sh',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=@OLD_INNODB_STATS_AUTO_RECALC */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-07  1:09:58
commit;
