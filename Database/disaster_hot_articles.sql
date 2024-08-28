-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: disaster
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `hot_articles`
--

DROP TABLE IF EXISTS `hot_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hot_articles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `votes` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hot_articles`
--

LOCK TABLES `hot_articles` WRITE;
/*!40000 ALTER TABLE `hot_articles` DISABLE KEYS */;
INSERT INTO `hot_articles` VALUES (1,0,'클라이밍','동아리는 없나요?','https://everytime.kr/377388/v/352179427'),(2,0,'건축학과가 제일 저평가된 학과같음','건축학과 나와야지만 건축사 딸 수 있는 조건주어지고은행에서 전문직 대출되는 직업인거 보면 사회적 위상도 높은편일테고연봉 1억도 자기가 열심히 하면 충분히 가져가는데솔직히 건도토에 묶여서 제일 저평가된 학과인거같음','https://everytime.kr/377388/v/352179069'),(3,0,'우리학교는 가다실 9가 비용지원같은거 없나','ㅈㄱㄴ 최저가가 50인데 너무비쌈...','https://everytime.kr/377388/v/352178897'),(4,0,'나 죽나..?','어제 뭔가 따끔하길래요즘 늦모기가 강인하구나 했는데오늘 빨갛게 부어오르고 살이 땡땡함...간지러운 것보다 욱신거리고 물집? 수포 같은것도 있어얼마나 대단한 아가리로 물었는지아니 모기가 맞긴한가','https://everytime.kr/377388/v/352178844'),(5,0,'동아리 안 하는 1학년','어케 생각함? 꼭 해야하나','https://everytime.kr/377388/v/352178602'),(6,0,'헌팅걸 과기대 안옴?','오면 재밌겠다','https://everytime.kr/377388/v/352177875'),(7,0,'국가근로 관련 질문입니다.','국장 + 생활비 대출 + 국가근로 가능한 지 알고 싶습니다.한국장학재단에서 확인했을 땐 국장 + 국가근로는 가능하다고 하는데 대출도 가능한 지 궁금합니다.국가근로가 6개월로 방학 중에도 하는 것으로 알고있는데방학 중에 국가근로를 이유로 기숙사에 머무를 수','https://everytime.kr/377388/v/352177643'),(8,0,'누리학사 카트','내일 방 이사하는 날인데 로비에 카트가 왜 한 개밖에 안 나와있죠? 여러개 있어야 하지 않나 원래...혹시 미리 가져가도 되는건가요...?','https://everytime.kr/377388/v/352177074'),(9,0,'자동세차장과 고양이','.','https://everytime.kr/377388/v/352176428'),(10,0,'방학숙제 다한 사람','EBS방학생활 보기 귀찮은데','https://everytime.kr/377388/v/352176290'),(11,0,'그림동아리vs영화동아리','뭐가더좋음?','https://everytime.kr/377388/v/352176188'),(12,0,'부모님 전공이라','부모님 말을 들었는데 문제가 생겼다면 어찌 해야할까요엄마 미워...','https://everytime.kr/377388/v/352175771'),(13,0,'우리 예쪽이','아니 칸황 아니 예황미친거아냐?한국와서 라이브를 하네','https://everytime.kr/377388/v/352172524'),(14,0,'여자친구 아프다는데 선물 추천좀 해주십쇼','토익준비 + 아마 생리통 겹쳐서 두통있어하는 것 같은데 선물해줄만한거 추천좀요','https://everytime.kr/377388/v/352171647'),(15,0,'강아지 투척','ㄱㅇㅇ','https://everytime.kr/377388/v/352169261'),(16,0,'epic 점수 보려는데','이거 왜 이러냐','https://everytime.kr/377388/v/352169217'),(17,0,'편돌인데 전타임 엿맥이는법 있냐','전타임 항상 물건도 대충 채우고 가고 물류 온것도 분명히 많지 않아서 혼자서도 될 양임근데 항상 남친이랑 노닥거리다가 꼭 한 박스씩 안채우고 가서 개빡침그렇다고 사장님한테 말하기에는 내가 짬도 너 낮아서 그럼전타임 이러는데 엿맥이는법 없냐?','https://everytime.kr/377388/v/352168887'),(18,0,'기시디 입결 낮은편이에요?','ㄹㅇ?','https://everytime.kr/377388/v/352168523'),(19,0,'국가근로장학생','국가근로/ 교내근로장학생은 현금장학금으로 인정되서 국장 전액 받아도 할 수 있는거죠?','https://everytime.kr/377388/v/352166646'),(20,0,'오 yeezy','나 집 갈때까지 공연 기다려 주는 거냐구30분만 더 지각하자','https://everytime.kr/377388/v/352162698');
/*!40000 ALTER TABLE `hot_articles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-26 21:37:28
