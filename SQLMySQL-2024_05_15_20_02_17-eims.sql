-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: eims
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `clientName` varchar(10) NOT NULL,
  `clientTelephone` varchar(6) DEFAULT NULL,
  `clientAddress` varchar(30) DEFAULT NULL,
  `clientEmail` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`clientName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES ('刘七','567890','成都市武侯区','liuqi@example.com'),('吴十一','901234','杭州市西湖区','wushiyi@example.com'),('周十','890123','南京市鼓楼区','zhoushi@example.com'),('孙九','789012','武汉市江岸区','sunjiu@example.com'),('张三','123456','北京市朝阳区','zhangsan@example.com'),('张京臣','123456','123456','123456'),('李四','234567','上海市浦东新区','lisi@example.com'),('王五','345678','广州市天河区','wangwu@example.com'),('赵六','456789','深圳市福田区','zhaoliu@example.com'),('郑十二','012345','苏州市姑苏区','zhengshier@example.com'),('钱八','678901','重庆市渝中区','qianba@example.com');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `clientName` varchar(10) NOT NULL,
  `contactName` varchar(30) NOT NULL,
  `contactContents` varchar(255) DEFAULT NULL,
  `contactStart` char(10) DEFAULT NULL,
  `contactEnd` char(10) DEFAULT NULL,
  `staffName` varchar(30) NOT NULL,
  PRIMARY KEY (`clientName`,`contactName`,`staffName`),
  KEY `staffName` (`staffName`),
  CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`clientName`) REFERENCES `client` (`clientName`),
  CONSTRAINT `contact_ibfk_2` FOREIGN KEY (`staffName`) REFERENCES `staff` (`staffName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES ('刘七','合同5','定制化产品服务协议','2024-03-25','2024-03-31','周十'),('吴十一','合同9','数据保密协议','2024-03-10','2024-03-31','张三'),('周十','合同8','产品交付及验收协议','2024-04-15','2024-04-30','郑十二'),('孙九','合同7','广告宣传合作协议','2024-05-05','2024-05-31','吴十一'),('张三','合同1','销售产品A的合作协议','2024-04-01','2024-04-30','李四'),('张京臣','张京臣合同1','张京臣合同1','2024-04-09','2024-09-11','张三'),('李四','合同2','服务费用支付协议','2024-03-15','2024-03-31','王五'),('王五','合同3','技术支持合作协议','2024-05-01','2024-05-31','刘七'),('赵六','合同4','产品采购合同','2024-04-10','2024-04-30','钱八'),('郑十二','合同10','市场推广服务协议','2024-05-01','2024-05-31','李四'),('钱八','合同6','售后服务协议','2024-04-20','2024-04-30','孙九');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cs`
--

DROP TABLE IF EXISTS `cs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cs` (
  `clientName` varchar(10) NOT NULL,
  `staffName` varchar(30) NOT NULL,
  `clientOpinion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`clientName`,`staffName`),
  KEY `staffName` (`staffName`),
  CONSTRAINT `cs_ibfk_1` FOREIGN KEY (`clientName`) REFERENCES `client` (`clientName`),
  CONSTRAINT `cs_ibfk_2` FOREIGN KEY (`staffName`) REFERENCES `staff` (`staffName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs`
--

LOCK TABLES `cs` WRITE;
/*!40000 ALTER TABLE `cs` DISABLE KEYS */;
INSERT INTO `cs` VALUES ('刘七','周十','需要调整产品配置'),('吴十一','张三','希望产品能够增加新功能'),('周十','郑十二','对推广策略提出建议'),('孙九','吴十一','希望加快问题处理速度'),('张三','李四','对产品性能有疑问，请解答'),('张京臣','张三','123456'),('李四','王五','希望能够提供更多定制化方案'),('王五','刘七','对技术支持及时性有意见'),('赵六','钱八','对账单有疑问，请核实'),('郑十二','李四','需要了解最新的产品更新'),('钱八','孙九','感谢客服的耐心解答');
/*!40000 ALTER TABLE `cs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productName` varchar(30) NOT NULL,
  `productModel` varchar(30) DEFAULT NULL,
  `productNumber` int DEFAULT NULL,
  `productPrice` int DEFAULT NULL,
  PRIMARY KEY (`productName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('产品A','型号A1',100,500),('产品B','型号B1',80,700),('产品C','型号C1',120,600),('产品D','型号D1',90,800),('产品E','型号E1',110,900),('产品F','型号F1',95,1000),('产品G','型号G1',70,1200),('产品H','型号H1',85,950),('产品I','型号I1',105,850),('产品J','型号J1',75,1100);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staffName` varchar(30) NOT NULL,
  `staffSex` varchar(2) DEFAULT NULL,
  `staffAge` varchar(2) DEFAULT NULL,
  `staffEducation` varchar(20) DEFAULT NULL,
  `staffDepartment` varchar(10) DEFAULT NULL,
  `staffDate` char(10) DEFAULT NULL,
  `staffDuty` varchar(10) DEFAULT NULL,
  `staffWage` int DEFAULT NULL,
  PRIMARY KEY (`staffName`),
  CONSTRAINT `staff_chk_1` CHECK ((`staffSex` in (_utf8mb4'女',_utf8mb4'男'))),
  CONSTRAINT `staff_chk_2` CHECK ((`staffEducation` in (_utf8mb4'初中',_utf8mb4'高中',_utf8mb4'本科',_utf8mb4'研究生')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('刘七','男','27','高中','采购部','1997-07-01','采购主管',7000),('吴十一','男','23','高中','客服部','2002-02-14','客服专员',4800),('周十','女','31','研究生','研发部','1989-08-28','研发工程师',10000),('孙九','女','26','高中','行政部','1996-05-20','行政助理',5000),('张三','男','28','本科','销售部','1995-06-15','销售经理',8000),('李四','男','25','本科','市场部','1998-03-21','市场专员',6000),('王五','女','30','研究生','技术部','1990-12-10','技术总监',12000),('赵六','女','24','本科','财务部','2000-09-05','财务会计',5500),('郑十二','男','33','本科','运营部','1987-04-30','运营总监',11000),('钱八','男','29','本科','人力资源部','1993-11-11','人事经理',8500);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userName` varchar(20) DEFAULT NULL,
  `encryptedPassword` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('123456','e10adc3949ba59abbe56e057f20f883e');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-15 20:02:17
