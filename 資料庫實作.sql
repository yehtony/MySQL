CREATE DATABASE  IF NOT EXISTS `db_final_project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_final_project`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: db_final_project
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_no` varchar(5) NOT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `course_type` varchar(10) DEFAULT NULL,
  `course_credit` int DEFAULT NULL,
  PRIMARY KEY (`course_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('A0001','微積分','必修',2),('A0002','計算機概論','必修',3),('A0003','虛擬實境','選修',3),('A0004','經濟學','必修',3),('A0005','統計學','選修',3),('A0006','音樂欣賞','選修',2),('A0007','演算法','選修',3);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_data`
--

DROP TABLE IF EXISTS `course_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_data` (
  `semester` varchar(4) DEFAULT NULL,
  `course_no` varchar(5) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `course_type` varchar(10) DEFAULT NULL,
  `course_room` varchar(20) DEFAULT NULL,
  `course_building` varchar(20) DEFAULT NULL,
  `course_day` varchar(1) DEFAULT NULL,
  `course_time` varchar(20) DEFAULT NULL,
  `course_credit` int DEFAULT NULL,
  `course_limit` int DEFAULT NULL,
  `course_status` varchar(10) DEFAULT NULL,
  `course_is_online` varchar(1) DEFAULT NULL,
  `teacher_no` int DEFAULT NULL,
  `teacher_name` varchar(20) DEFAULT NULL,
  `student_no` int DEFAULT NULL,
  `student_name` varchar(20) DEFAULT NULL,
  `student_dept` varchar(30) DEFAULT NULL,
  `student_grade` int DEFAULT NULL,
  `student_status` varchar(10) DEFAULT NULL,
  `student_class` varchar(1) DEFAULT NULL,
  `select_result` varchar(10) DEFAULT NULL,
  `course_score` decimal(10,0) DEFAULT NULL,
  `feedback_rank` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_data`
--

LOCK TABLES `course_data` WRITE;
/*!40000 ALTER TABLE `course_data` DISABLE KEYS */;
INSERT INTO `course_data` VALUES ('1102','A0001','微積分','必修','K205','工程一館','一','567',2,50,'開課','否',1,'岳飛',1,'張飛','數學系',1,'在學','A','中選',78,1),('1102','A0001','微積分','必修','K205','工程一館','一','567',2,50,'開課','否',1,'岳飛',2,'孫尚香','數學系',1,'休學','A','中選',NULL,NULL),('1102','A0001','微積分','必修','K205','工程一館','一','567',2,50,'開課','否',1,'岳飛',3,'周瑜','數學系',1,'在學','A','中選',56,2),('1102','A0001','微積分','必修','K205','工程一館','一','567',2,50,'開課','否',1,'岳飛',4,'黃蓋','數學系',1,'在學','A','中選',34,3),('1102','A0001','微積分','必修','K205','工程一館','一','567',2,50,'開課','否',1,'岳飛',5,'趙雲','數學系',1,'在學','A','中選',98,4),('1102','A0001','微積分','必修','K205','工程一館','一','567',2,50,'開課','否',1,'岳飛',6,'關興','數學系',1,'在學','A','中選',55,5),('1102','A0001','微積分','必修','K205','工程一館','一','567',2,50,'開課','否',1,'岳飛',7,'夏侯惇','數學系',1,'在學','A','中選',67,2),('1102','A0002','計算機概論','必修','L102','工程五館','二','34',3,50,'開課','否',2,'陸羽',8,'關羽','資訊工程系',1,'在學','A','中選',66,3),('1102','A0002','計算機概論','必修','L102','工程五館','五','4',3,50,'開課','否',2,'陸羽',8,'關羽','資訊工程系',1,'在學','A','中選',66,3),('1102','A0002','計算機概論','必修','L102','工程五館','二','34',3,50,'開課','否',2,'陸羽',9,'龐統','資訊工程系',1,'休學','A','中選',NULL,NULL),('1102','A0002','計算機概論','必修','L102','工程五館','五','4',3,50,'開課','否',2,'陸羽',9,'龐統','資訊工程系',1,'休學','A','中選',NULL,NULL),('1102','A0002','計算機概論','必修','L102','工程五館','二','34',3,50,'開課','否',2,'陸羽',3,'周瑜','數學系',1,'在學','A','中選',93,4),('1102','A0002','計算機概論','必修','L102','工程五館','五','4',3,50,'開課','否',2,'陸羽',3,'周瑜','數學系',1,'在學','A','中選',93,4),('1102','A0002','計算機概論','必修','L102','工程五館','二','34',3,50,'開課','否',2,'陸羽',4,'黃蓋','數學系',1,'在學','A','中選',6,4),('1102','A0002','計算機概論','必修','L102','工程五館','五','4',3,50,'開課','否',2,'陸羽',4,'黃蓋','數學系',1,'在學','A','中選',6,4),('1102','A0002','計算機概論','必修','L102','工程五館','二','34',3,50,'開課','否',2,'陸羽',5,'趙雲','數學系',1,'在學','A','中選',49,5),('1102','A0002','計算機概論','必修','L102','工程五館','五','4',3,50,'開課','否',2,'陸羽',5,'趙雲','數學系',1,'在學','A','中選',49,5),('1102','A0002','計算機概論','必修','L102','工程五館','二','34',3,50,'開課','否',2,'陸羽',7,'夏侯惇','數學系',1,'在學','A','中選',78,3),('1102','A0002','計算機概論','必修','L102','工程五館','五','4',3,50,'開課','否',2,'陸羽',7,'夏侯惇','數學系',1,'在學','A','中選',78,3),('1102','A0002','計算機概論','必修','L102','工程五館','二','34',3,50,'開課','否',2,'陸羽',10,'華雄','資訊工程研究所',1,'退學','A','中選',NULL,NULL),('1102','A0002','計算機概論','必修','L102','工程五館','五','4',3,50,'開課','否',2,'陸羽',10,'華雄','資訊工程研究所',1,'退學','A','中選',NULL,NULL),('1102','A0002','計算機概論','必修','L102','工程五館','二','34',3,50,'開課','否',2,'陸羽',11,'華陀','資訊工程研究所',1,'在學','A','中選',74,5),('1102','A0002','計算機概論','必修','L102','工程五館','五','4',3,50,'開課','否',2,'陸羽',11,'華陀','資訊工程研究所',1,'在學','A','中選',74,5),('1102','A0003','虛擬實境','選修','E6-A209','工程五館','四','567',3,50,'開課','否',3,'劉邦',9,'龐統','資訊工程系',1,'休學','A','中選',NULL,NULL),('1102','A0003','虛擬實境','選修','E6-A209','工程五館','四','567',3,50,'開課','否',3,'劉邦',1,'張飛','數學系',1,'在學','A','中選',46,5),('1102','A0003','虛擬實境','選修','E6-A209','工程五館','四','567',3,50,'開課','否',3,'劉邦',4,'黃蓋','數學系',1,'在學','A','中選',76,4),('1102','A0003','虛擬實境','選修','E6-A209','工程五館','四','567',3,50,'開課','否',3,'劉邦',6,'關興','數學系',1,'在學','A','中選',87,5),('1102','A0003','虛擬實境','選修','E6-A209','工程五館','四','567',3,50,'開課','否',3,'劉邦',12,'劉備','資訊工程研究所',1,'在學','A','落選',NULL,NULL),('1102','A0003','虛擬實境','選修','E6-A209','工程五館','四','567',3,50,'開課','否',3,'劉邦',10,'華雄','資訊工程研究所',1,'退學','A','中選',NULL,NULL),('1102','A0003','虛擬實境','選修','E6-A209','工程五館','四','567',3,50,'開課','否',3,'劉邦',13,'呂布','資訊工程研究所',1,'在學','A','中選',76,4),('1102','A0003','虛擬實境','選修','E6-A209','工程五館','四','567',3,50,'開課','否',3,'劉邦',11,'華陀','資訊工程研究所',1,'在學','A','中選',80,5),('1102','A0003','虛擬實境','選修','E6-A209','工程五館','四','567',3,50,'開課','否',3,'劉邦',14,'諸葛亮','資訊工程研究所',1,'在學','A','中選',78,3),('1102','A0003','虛擬實境','選修','E6-A209','工程五館','四','567',3,50,'開課','否',3,'劉邦',15,'呂蒙','資訊工程研究所',1,'在學','A','中選',65,4),('1102','A0004','經濟學','必修','I1-018','管理二館','四','567',3,50,'開課','否',4,'孔丘',9,'龐統','資訊工程系',1,'休學','A','落選',NULL,NULL),('1102','A0004','經濟學','必修','I1-018','管理二館','四','567',3,50,'開課','否',4,'孔丘',1,'張飛','數學系',1,'在學','A','中選',56,3),('1102','A0004','經濟學','必修','I1-018','管理二館','四','567',3,50,'開課','否',4,'孔丘',2,'孫尚香','數學系',1,'休學','A','中選',NULL,NULL),('1102','A0004','經濟學','必修','I1-018','管理二館','四','567',3,50,'開課','否',4,'孔丘',4,'黃蓋','數學系',1,'在學','A','中選',68,5),('1102','A0004','經濟學','必修','I1-018','管理二館','四','567',3,50,'開課','否',4,'孔丘',5,'趙雲','數學系',1,'在學','A','中選',78,4),('1102','A0004','經濟學','必修','I1-018','管理二館','四','567',3,50,'開課','否',4,'孔丘',7,'夏侯惇','數學系',1,'在學','A','中選',89,2),('1102','A0004','經濟學','必修','I1-018','管理二館','四','567',3,50,'開課','否',4,'孔丘',13,'呂布','資訊工程研究所',1,'在學','A','中選',45,5),('1102','A0005','統計學','選修','I1-304','管理二館','五','234',3,50,'開課','否',5,'莊周',8,'關羽','資訊工程系',1,'在學','A','中選',69,1),('1102','A0005','統計學','選修','I1-304','管理二館','五','234',3,50,'開課','否',5,'莊周',16,'大喬','資訊工程系',1,'在學','A','中選',63,4),('1102','A0005','統計學','選修','I1-304','管理二館','五','234',3,50,'開課','否',5,'莊周',17,'甘寧','資訊工程系',1,'在學','A','中選',46,5),('1102','A0005','統計學','選修','I1-304','管理二館','五','234',3,50,'開課','否',5,'莊周',2,'孫尚香','數學系',1,'休學','A','中選',NULL,NULL),('1102','A0005','統計學','選修','I1-304','管理二館','五','234',3,50,'開課','否',5,'莊周',3,'周瑜','數學系',1,'在學','A','中選',78,2),('1102','A0005','統計學','選修','I1-304','管理二館','五','234',3,50,'開課','否',5,'莊周',4,'黃蓋','數學系',1,'在學','A','中選',87,3),('1102','A0005','統計學','選修','I1-304','管理二館','五','234',3,50,'開課','否',5,'莊周',12,'劉備','資訊工程研究所',1,'在學','A','中選',96,2),('1102','A0006','音樂欣賞','選修','O-214','綜教館','三','56',2,100,'開課','否',6,'巴哈',8,'關羽','資訊工程系',1,'在學','A','中選',76,4),('1102','A0006','音樂欣賞','選修','O-214','綜教館','三','56',2,100,'開課','否',6,'巴哈',9,'龐統','資訊工程系',1,'休學','A','中選',NULL,NULL),('1102','A0006','音樂欣賞','選修','O-214','綜教館','三','56',2,100,'開課','否',6,'巴哈',18,'司馬昭','資訊工程系',1,'在學','A','落選',NULL,NULL),('1102','A0006','音樂欣賞','選修','O-214','綜教館','三','56',2,100,'開課','否',6,'巴哈',19,'馬超','資訊工程系',1,'在學','A','落選',NULL,NULL),('1102','A0006','音樂欣賞','選修','O-214','綜教館','三','56',2,100,'開課','否',6,'巴哈',1,'張飛','數學系',1,'在學','A','中選',34,3),('1102','A0006','音樂欣賞','選修','O-214','綜教館','三','56',2,100,'開課','否',6,'巴哈',2,'孫尚香','數學系',1,'休學','A','落選',NULL,NULL),('1102','A0006','音樂欣賞','選修','O-214','綜教館','三','56',2,100,'開課','否',6,'巴哈',3,'周瑜','數學系',1,'在學','A','落選',NULL,NULL),('1102','A0006','音樂欣賞','選修','O-214','綜教館','三','56',2,100,'開課','否',6,'巴哈',4,'黃蓋','數學系',1,'在學','A','中選',80,4),('1102','A0006','音樂欣賞','選修','O-214','綜教館','三','56',2,100,'開課','否',6,'巴哈',6,'關興','數學系',1,'在學','A','中選',62,5),('1102','A0006','音樂欣賞','選修','O-214','綜教館','三','56',2,100,'開課','否',6,'巴哈',7,'夏侯惇','數學系',1,'在學','A','中選',60,3),('1102','A0006','音樂欣賞','選修','O-214','綜教館','三','56',2,100,'開課','否',6,'巴哈',12,'劉備','資訊工程研究所',1,'在學','A','中選',56,5),('1102','A0006','音樂欣賞','選修','O-214','綜教館','三','56',2,100,'開課','否',6,'巴哈',10,'華雄','資訊工程研究所',1,'退學','A','中選',NULL,NULL),('1102','A0006','音樂欣賞','選修','O-214','綜教館','三','56',2,100,'開課','否',6,'巴哈',11,'華陀','資訊工程研究所',1,'在學','A','中選',98,4),('1102','A0006','音樂欣賞','選修','O-214','綜教館','三','56',2,100,'開課','否',6,'巴哈',14,'諸葛亮','資訊工程研究所',1,'在學','A','中選',55,5),('1102','A0006','音樂欣賞','選修','O-214','綜教館','三','56',2,100,'開課','否',6,'巴哈',15,'呂蒙','資訊工程研究所',1,'在學','A','中選',78,5),('1102','A0007','演算法','選修','L102','工程五館','三','234',3,50,'開課','否',7,'達文西',1,'張飛','數學系',1,'在學','A','落選',NULL,NULL),('1102','A0007','演算法','選修','L102','工程五館','三','234',3,50,'開課','否',7,'達文西',10,'華雄','資訊工程研究所',1,'退學','A','中選',NULL,NULL),('1102','A0007','演算法','選修','L102','工程五館','三','234',3,50,'開課','否',7,'達文西',13,'呂布','資訊工程研究所',1,'在學','A','中選',79,5),('1102','A0007','演算法','選修','L102','工程五館','三','234',3,50,'開課','否',7,'達文西',20,'郭嘉','資訊工程研究所',1,'在學','A','中選',87,4),('1102','A0007','演算法','選修','L102','工程五館','三','234',3,50,'開課','否',7,'達文西',11,'華陀','資訊工程研究所',1,'在學','A','中選',68,3);
/*!40000 ALTER TABLE `course_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_info`
--

DROP TABLE IF EXISTS `course_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_info` (
  `semester` varchar(4) NOT NULL,
  `course_no` varchar(5) NOT NULL,
  `course_room` varchar(20) DEFAULT NULL,
  `course_limit` int DEFAULT NULL,
  `course_status` varchar(10) DEFAULT NULL,
  `course_is_online` varchar(1) DEFAULT NULL,
  `teacher_no` int NOT NULL,
  PRIMARY KEY (`semester`,`course_no`,`teacher_no`),
  KEY `course_room` (`course_room`),
  KEY `course_no` (`course_no`),
  KEY `teacher_no` (`teacher_no`),
  CONSTRAINT `course_info_ibfk_1` FOREIGN KEY (`course_room`) REFERENCES `course_loca` (`course_room`),
  CONSTRAINT `course_info_ibfk_2` FOREIGN KEY (`course_no`) REFERENCES `course` (`course_no`),
  CONSTRAINT `course_info_ibfk_3` FOREIGN KEY (`teacher_no`) REFERENCES `teacher` (`teacher_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_info`
--

LOCK TABLES `course_info` WRITE;
/*!40000 ALTER TABLE `course_info` DISABLE KEYS */;
INSERT INTO `course_info` VALUES ('1102','A0001','K205',50,'開課','否',1),('1102','A0002','L102',50,'開課','否',2),('1102','A0003','E6-A209',50,'開課','否',3),('1102','A0004','I1-018',50,'開課','否',4),('1102','A0005','I1-304',50,'開課','否',5),('1102','A0006','O-214',100,'開課','否',6),('1102','A0007','L102',50,'開課','否',7);
/*!40000 ALTER TABLE `course_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_loca`
--

DROP TABLE IF EXISTS `course_loca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_loca` (
  `course_room` varchar(20) NOT NULL,
  `course_building` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`course_room`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_loca`
--

LOCK TABLES `course_loca` WRITE;
/*!40000 ALTER TABLE `course_loca` DISABLE KEYS */;
INSERT INTO `course_loca` VALUES ('E6-A209','工程五館'),('I1-018','管理二館'),('I1-304','管理二館'),('K205','工程一館'),('L102','工程五館'),('O-214','綜教館');
/*!40000 ALTER TABLE `course_loca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_stat`
--

DROP TABLE IF EXISTS `course_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_stat` (
  `semester` varchar(4) NOT NULL,
  `course_no` varchar(5) NOT NULL,
  `course_room` varchar(20) DEFAULT NULL,
  `course_building` varchar(20) DEFAULT NULL,
  `course_limit` int DEFAULT NULL,
  `course_status` varchar(10) DEFAULT NULL,
  `course_is_online` varchar(1) DEFAULT NULL,
  `teacher_no` int NOT NULL,
  PRIMARY KEY (`semester`,`course_no`,`teacher_no`),
  KEY `course_no` (`course_no`),
  KEY `teacher_no` (`teacher_no`),
  CONSTRAINT `course_stat_ibfk_1` FOREIGN KEY (`course_no`) REFERENCES `course` (`course_no`),
  CONSTRAINT `course_stat_ibfk_2` FOREIGN KEY (`teacher_no`) REFERENCES `teacher` (`teacher_no`),
  CONSTRAINT `course_stat_ibfk_3` FOREIGN KEY (`teacher_no`) REFERENCES `teacher` (`teacher_no`),
  CONSTRAINT `course_stat_ibfk_4` FOREIGN KEY (`teacher_no`) REFERENCES `teacher` (`teacher_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_stat`
--

LOCK TABLES `course_stat` WRITE;
/*!40000 ALTER TABLE `course_stat` DISABLE KEYS */;
INSERT INTO `course_stat` VALUES ('1102','A0001','K205','工程一館',50,'開課','否',1),('1102','A0002','L102','工程五館',50,'開課','否',2),('1102','A0003','E6-A209','工程五館',50,'開課','否',3),('1102','A0004','I1-018','管理二館',50,'開課','否',4),('1102','A0005','I1-304','管理二館',50,'開課','否',5),('1102','A0006','O-214','綜教館',100,'開課','否',6),('1102','A0007','L102','工程五館',50,'開課','否',7);
/*!40000 ALTER TABLE `course_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_time`
--

DROP TABLE IF EXISTS `course_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_time` (
  `semester` varchar(4) NOT NULL,
  `course_no` varchar(5) NOT NULL,
  `course_day` varchar(1) NOT NULL,
  `course_time` varchar(20) DEFAULT NULL,
  `teacher_no` int NOT NULL,
  PRIMARY KEY (`semester`,`course_no`,`course_day`,`teacher_no`),
  KEY `course_no` (`course_no`),
  CONSTRAINT `course_time_ibfk_1` FOREIGN KEY (`course_no`) REFERENCES `course` (`course_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_time`
--

LOCK TABLES `course_time` WRITE;
/*!40000 ALTER TABLE `course_time` DISABLE KEYS */;
INSERT INTO `course_time` VALUES ('1102','A0001','一','567',1),('1102','A0002','二','34',2),('1102','A0002','五','4',2),('1102','A0003','四','567',3),('1102','A0004','四','567',4),('1102','A0005','五','234',5),('1102','A0006','三','56',6),('1102','A0007','三','234',7);
/*!40000 ALTER TABLE `course_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `semester` varchar(4) NOT NULL,
  `course_no` varchar(5) NOT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `course_type` varchar(10) DEFAULT NULL,
  `course_room` varchar(20) DEFAULT NULL,
  `course_building` varchar(20) DEFAULT NULL,
  `course_day` varchar(1) NOT NULL,
  `course_time` varchar(20) DEFAULT NULL,
  `course_credit` int DEFAULT NULL,
  `course_limit` int DEFAULT NULL,
  `course_status` varchar(10) DEFAULT NULL,
  `course_is_online` varchar(1) DEFAULT NULL,
  `teacher_no` int NOT NULL,
  PRIMARY KEY (`semester`,`course_no`,`course_day`,`teacher_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES ('1102','A0001','微積分','必修','K205','工程一館','一','567',2,50,'開課','否',1),('1102','A0002','計算機概論','必修','L102','工程五館','二','34',3,50,'開課','否',2),('1102','A0002','計算機概論','必修','L102','工程五館','五','4',3,50,'開課','否',2),('1102','A0003','虛擬實境','選修','E6-A209','工程五館','四','567',3,50,'開課','否',3),('1102','A0004','經濟學','必修','I1-018','管理二館','四','567',3,50,'開課','否',4),('1102','A0005','統計學','選修','I1-304','管理二館','五','234',3,50,'開課','否',5),('1102','A0006','音樂欣賞','選修','O-214','綜教館','三','56',2,100,'開課','否',6),('1102','A0007','演算法','選修','L102','工程五館','三','234',3,50,'開課','否',7);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_no` int NOT NULL,
  `student_name` varchar(20) DEFAULT NULL,
  `student_dept` varchar(30) DEFAULT NULL,
  `student_class` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`student_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'張飛','數學系','A'),(2,'孫尚香','數學系','A'),(3,'周瑜','數學系','A'),(4,'黃蓋','數學系','A'),(5,'趙雲','數學系','A'),(6,'關興','數學系','A'),(7,'夏侯惇','數學系','A'),(8,'關羽','資訊工程系','A'),(9,'龐統','資訊工程系','A'),(10,'華雄','資訊工程研究所','A'),(11,'華陀','資訊工程研究所','A'),(12,'劉備','資訊工程研究所','A'),(13,'呂布','資訊工程研究所','A'),(14,'諸葛亮','資訊工程研究所','A'),(15,'呂蒙','資訊工程研究所','A'),(16,'大喬','資訊工程系','A'),(17,'甘寧','資訊工程系','A'),(18,'司馬昭','資訊工程系','A'),(19,'馬超','資訊工程系','A'),(20,'郭嘉','資訊工程研究所','A');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_info`
--

DROP TABLE IF EXISTS `student_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_info` (
  `semester` varchar(4) NOT NULL,
  `student_no` int NOT NULL,
  `student_grade` int DEFAULT NULL,
  `student_status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`semester`,`student_no`),
  KEY `student_no` (`student_no`),
  CONSTRAINT `student_info_ibfk_1` FOREIGN KEY (`student_no`) REFERENCES `student` (`student_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_info`
--

LOCK TABLES `student_info` WRITE;
/*!40000 ALTER TABLE `student_info` DISABLE KEYS */;
INSERT INTO `student_info` VALUES ('1102',1,1,'在學'),('1102',2,1,'休學'),('1102',3,1,'在學'),('1102',4,1,'在學'),('1102',5,1,'在學'),('1102',6,1,'在學'),('1102',7,1,'在學'),('1102',8,1,'在學'),('1102',9,1,'休學'),('1102',10,1,'退學'),('1102',11,1,'在學'),('1102',12,1,'在學'),('1102',13,1,'在學'),('1102',14,1,'在學'),('1102',15,1,'在學'),('1102',16,1,'在學'),('1102',17,1,'在學'),('1102',18,1,'在學'),('1102',19,1,'在學'),('1102',20,1,'在學');
/*!40000 ALTER TABLE `student_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_no`
--

DROP TABLE IF EXISTS `student_no`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_no` (
  `student_no` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`student_no`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_no`
--

LOCK TABLES `student_no` WRITE;
/*!40000 ALTER TABLE `student_no` DISABLE KEYS */;
INSERT INTO `student_no` VALUES (1,'張飛'),(2,'孫尚香'),(3,'周瑜'),(4,'黃蓋'),(5,'趙雲'),(6,'關興'),(7,'夏侯惇'),(8,'關羽'),(9,'龐統'),(10,'華雄'),(11,'華陀'),(12,'劉備'),(13,'呂布'),(14,'諸葛亮'),(15,'呂蒙'),(16,'大喬'),(17,'甘寧'),(18,'司馬昭'),(19,'馬超'),(20,'郭嘉');
/*!40000 ALTER TABLE `student_no` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `semester` varchar(4) NOT NULL,
  `student_no` int NOT NULL,
  `student_name` varchar(20) DEFAULT NULL,
  `student_dept` varchar(30) DEFAULT NULL,
  `student_grade` int DEFAULT NULL,
  `student_status` varchar(10) DEFAULT NULL,
  `student_class` varchar(1) DEFAULT NULL,
  `course_no` varchar(5) NOT NULL,
  `select_result` varchar(10) DEFAULT NULL,
  `course_score` decimal(10,0) DEFAULT NULL,
  `feedback_rank` int DEFAULT NULL,
  `teacher_no` int DEFAULT NULL,
  PRIMARY KEY (`semester`,`student_no`,`course_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('1102',1,'張飛','數學系',1,'在學','A','A0001','中選',78,1,1),('1102',1,'張飛','數學系',1,'在學','A','A0003','中選',46,5,3),('1102',1,'張飛','數學系',1,'在學','A','A0004','中選',56,3,4),('1102',1,'張飛','數學系',1,'在學','A','A0006','中選',34,3,6),('1102',1,'張飛','數學系',1,'在學','A','A0007','落選',NULL,NULL,7),('1102',2,'孫尚香','數學系',1,'休學','A','A0001','中選',NULL,NULL,1),('1102',2,'孫尚香','數學系',1,'休學','A','A0004','中選',NULL,NULL,4),('1102',2,'孫尚香','數學系',1,'休學','A','A0005','中選',NULL,NULL,5),('1102',2,'孫尚香','數學系',1,'休學','A','A0006','落選',NULL,NULL,6),('1102',3,'周瑜','數學系',1,'在學','A','A0001','中選',56,2,1),('1102',3,'周瑜','數學系',1,'在學','A','A0002','中選',93,4,2),('1102',3,'周瑜','數學系',1,'在學','A','A0005','中選',78,2,5),('1102',3,'周瑜','數學系',1,'在學','A','A0006','落選',NULL,NULL,6),('1102',4,'黃蓋','數學系',1,'在學','A','A0001','中選',34,3,1),('1102',4,'黃蓋','數學系',1,'在學','A','A0002','中選',6,4,2),('1102',4,'黃蓋','數學系',1,'在學','A','A0003','中選',76,4,3),('1102',4,'黃蓋','數學系',1,'在學','A','A0004','中選',68,5,4),('1102',4,'黃蓋','數學系',1,'在學','A','A0005','中選',87,3,5),('1102',4,'黃蓋','數學系',1,'在學','A','A0006','中選',80,4,6),('1102',5,'趙雲','數學系',1,'在學','A','A0001','中選',98,4,1),('1102',5,'趙雲','數學系',1,'在學','A','A0002','中選',49,5,2),('1102',5,'趙雲','數學系',1,'在學','A','A0004','中選',78,4,4),('1102',6,'關興','數學系',1,'在學','A','A0001','中選',55,5,1),('1102',6,'關興','數學系',1,'在學','A','A0003','中選',87,5,3),('1102',6,'關興','數學系',1,'在學','A','A0006','中選',62,5,6),('1102',7,'夏侯惇','數學系',1,'在學','A','A0001','中選',67,2,1),('1102',7,'夏侯惇','數學系',1,'在學','A','A0002','中選',78,3,2),('1102',7,'夏侯惇','數學系',1,'在學','A','A0004','中選',89,2,4),('1102',7,'夏侯惇','數學系',1,'在學','A','A0006','中選',60,3,6),('1102',8,'關羽','資訊工程系',1,'在學','A','A0002','中選',66,3,2),('1102',8,'關羽','資訊工程系',1,'在學','A','A0005','中選',69,1,5),('1102',8,'關羽','資訊工程系',1,'在學','A','A0006','中選',76,4,6),('1102',9,'龐統','資訊工程系',1,'休學','A','A0002','中選',NULL,NULL,2),('1102',9,'龐統','資訊工程系',1,'休學','A','A0003','中選',NULL,NULL,3),('1102',9,'龐統','資訊工程系',1,'休學','A','A0004','落選',NULL,NULL,4),('1102',9,'龐統','資訊工程系',1,'休學','A','A0006','中選',NULL,NULL,6),('1102',10,'華雄','資訊工程研究所',1,'退學','A','A0002','中選',NULL,NULL,2),('1102',10,'華雄','資訊工程研究所',1,'退學','A','A0003','中選',NULL,NULL,3),('1102',10,'華雄','資訊工程研究所',1,'退學','A','A0006','中選',NULL,NULL,6),('1102',10,'華雄','資訊工程研究所',1,'退學','A','A0007','中選',NULL,NULL,7),('1102',11,'華陀','資訊工程研究所',1,'在學','A','A0002','中選',74,5,2),('1102',11,'華陀','資訊工程研究所',1,'在學','A','A0003','中選',80,5,3),('1102',11,'華陀','資訊工程研究所',1,'在學','A','A0006','中選',98,4,6),('1102',11,'華陀','資訊工程研究所',1,'在學','A','A0007','中選',68,3,7),('1102',12,'劉備','資訊工程研究所',1,'在學','A','A0003','落選',NULL,NULL,3),('1102',12,'劉備','資訊工程研究所',1,'在學','A','A0005','中選',96,2,5),('1102',12,'劉備','資訊工程研究所',1,'在學','A','A0006','中選',56,5,6),('1102',13,'呂布','資訊工程研究所',1,'在學','A','A0003','中選',76,4,3),('1102',13,'呂布','資訊工程研究所',1,'在學','A','A0004','中選',45,5,4),('1102',13,'呂布','資訊工程研究所',1,'在學','A','A0007','中選',79,5,7),('1102',14,'諸葛亮','資訊工程研究所',1,'在學','A','A0003','中選',78,3,3),('1102',14,'諸葛亮','資訊工程研究所',1,'在學','A','A0006','中選',55,5,6),('1102',15,'呂蒙','資訊工程研究所',1,'在學','A','A0003','中選',65,4,3),('1102',15,'呂蒙','資訊工程研究所',1,'在學','A','A0006','中選',78,5,6),('1102',16,'大喬','資訊工程系',1,'在學','A','A0005','中選',63,4,5),('1102',17,'甘寧','資訊工程系',1,'在學','A','A0005','中選',46,5,5),('1102',18,'司馬昭','資訊工程系',1,'在學','A','A0006','落選',NULL,NULL,6),('1102',19,'馬超','資訊工程系',1,'在學','A','A0006','落選',NULL,NULL,6),('1102',20,'郭嘉','資訊工程研究所',1,'在學','A','A0007','中選',87,4,7);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `takes`
--

DROP TABLE IF EXISTS `takes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `takes` (
  `semester` varchar(4) NOT NULL,
  `student_no` int NOT NULL,
  `course_no` varchar(5) NOT NULL,
  `select_result` varchar(10) DEFAULT NULL,
  `course_score` decimal(10,0) DEFAULT NULL,
  `feedback_rank` int DEFAULT NULL,
  `teacher_no` int DEFAULT NULL,
  PRIMARY KEY (`semester`,`student_no`,`course_no`),
  KEY `student_no` (`student_no`),
  KEY `course_no` (`course_no`),
  KEY `teacher_no` (`teacher_no`),
  CONSTRAINT `takes_ibfk_1` FOREIGN KEY (`student_no`) REFERENCES `student` (`student_no`),
  CONSTRAINT `takes_ibfk_2` FOREIGN KEY (`course_no`) REFERENCES `course` (`course_no`),
  CONSTRAINT `takes_ibfk_3` FOREIGN KEY (`teacher_no`) REFERENCES `teacher` (`teacher_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `takes`
--

LOCK TABLES `takes` WRITE;
/*!40000 ALTER TABLE `takes` DISABLE KEYS */;
INSERT INTO `takes` VALUES ('1102',1,'A0001','中選',78,1,1),('1102',1,'A0003','中選',46,5,3),('1102',1,'A0004','中選',56,3,4),('1102',1,'A0006','中選',34,3,6),('1102',1,'A0007','落選',NULL,NULL,7),('1102',2,'A0001','中選',NULL,NULL,1),('1102',2,'A0004','中選',NULL,NULL,4),('1102',2,'A0005','中選',NULL,NULL,5),('1102',2,'A0006','落選',NULL,NULL,6),('1102',3,'A0001','中選',56,2,1),('1102',3,'A0002','中選',93,4,2),('1102',3,'A0005','中選',78,2,5),('1102',3,'A0006','落選',NULL,NULL,6),('1102',4,'A0001','中選',34,3,1),('1102',4,'A0002','中選',6,4,2),('1102',4,'A0003','中選',76,4,3),('1102',4,'A0004','中選',68,5,4),('1102',4,'A0005','中選',87,3,5),('1102',4,'A0006','中選',80,4,6),('1102',5,'A0001','中選',98,4,1),('1102',5,'A0002','中選',49,5,2),('1102',5,'A0004','中選',78,4,4),('1102',6,'A0001','中選',55,5,1),('1102',6,'A0003','中選',87,5,3),('1102',6,'A0006','中選',62,5,6),('1102',7,'A0001','中選',67,2,1),('1102',7,'A0002','中選',78,3,2),('1102',7,'A0004','中選',89,2,4),('1102',7,'A0006','中選',60,3,6),('1102',8,'A0002','中選',66,3,2),('1102',8,'A0005','中選',69,1,5),('1102',8,'A0006','中選',76,4,6),('1102',9,'A0002','中選',NULL,NULL,2),('1102',9,'A0003','中選',NULL,NULL,3),('1102',9,'A0004','落選',NULL,NULL,4),('1102',9,'A0006','中選',NULL,NULL,6),('1102',10,'A0002','中選',NULL,NULL,2),('1102',10,'A0003','中選',NULL,NULL,3),('1102',10,'A0006','中選',NULL,NULL,6),('1102',10,'A0007','中選',NULL,NULL,7),('1102',11,'A0002','中選',74,5,2),('1102',11,'A0003','中選',80,5,3),('1102',11,'A0006','中選',98,4,6),('1102',11,'A0007','中選',68,3,7),('1102',12,'A0003','落選',NULL,NULL,3),('1102',12,'A0005','中選',96,2,5),('1102',12,'A0006','中選',56,5,6),('1102',13,'A0003','中選',76,4,3),('1102',13,'A0004','中選',45,5,4),('1102',13,'A0007','中選',79,5,7),('1102',14,'A0003','中選',78,3,3),('1102',14,'A0006','中選',55,5,6),('1102',15,'A0003','中選',65,4,3),('1102',15,'A0006','中選',78,5,6),('1102',16,'A0005','中選',63,4,5),('1102',17,'A0005','中選',46,5,5),('1102',18,'A0006','落選',NULL,NULL,6),('1102',19,'A0006','落選',NULL,NULL,6),('1102',20,'A0007','中選',87,4,7);
/*!40000 ALTER TABLE `takes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `teacher_no` int NOT NULL,
  `teacher_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`teacher_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'岳飛'),(2,'陸羽'),(3,'劉邦'),(4,'孔丘'),(5,'莊周'),(6,'巴哈'),(7,'達文西');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_no`
--

DROP TABLE IF EXISTS `teacher_no`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher_no` (
  `teacher_no` int NOT NULL AUTO_INCREMENT,
  `teacher_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`teacher_no`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_no`
--

LOCK TABLES `teacher_no` WRITE;
/*!40000 ALTER TABLE `teacher_no` DISABLE KEYS */;
INSERT INTO `teacher_no` VALUES (1,'岳飛'),(2,'陸羽'),(3,'劉邦'),(4,'孔丘'),(5,'莊周'),(6,'巴哈'),(7,'達文西');
/*!40000 ALTER TABLE `teacher_no` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `semester` varchar(4) NOT NULL,
  `teacher_no` int NOT NULL,
  `teacher_name` varchar(20) DEFAULT NULL,
  `course_no` varchar(5) NOT NULL,
  PRIMARY KEY (`semester`,`teacher_no`,`course_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES ('1102',1,'岳飛','A0001'),('1102',2,'陸羽','A0002'),('1102',3,'劉邦','A0003'),('1102',4,'孔丘','A0004'),('1102',5,'莊周','A0005'),('1102',6,'巴哈','A0006'),('1102',7,'達文西','A0007');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teaches`
--

DROP TABLE IF EXISTS `teaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teaches` (
  `semester` varchar(4) NOT NULL,
  `teacher_no` int NOT NULL,
  `course_no` varchar(5) NOT NULL,
  PRIMARY KEY (`semester`,`teacher_no`,`course_no`),
  KEY `teacher_no` (`teacher_no`),
  KEY `course_no` (`course_no`),
  CONSTRAINT `teaches_ibfk_1` FOREIGN KEY (`teacher_no`) REFERENCES `teacher` (`teacher_no`),
  CONSTRAINT `teaches_ibfk_2` FOREIGN KEY (`course_no`) REFERENCES `course` (`course_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teaches`
--

LOCK TABLES `teaches` WRITE;
/*!40000 ALTER TABLE `teaches` DISABLE KEYS */;
INSERT INTO `teaches` VALUES ('1102',1,'A0001'),('1102',2,'A0002'),('1102',3,'A0003'),('1102',4,'A0004'),('1102',5,'A0005'),('1102',6,'A0006'),('1102',7,'A0007');
/*!40000 ALTER TABLE `teaches` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-30  0:17:54
