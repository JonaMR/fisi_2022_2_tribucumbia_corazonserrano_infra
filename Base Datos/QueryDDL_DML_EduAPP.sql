-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: bdeduapp.mysql.database.azure.com    Database: eduapp
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrador` (
  `id_administrador` int NOT NULL AUTO_INCREMENT,
  `dni` varchar(45) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `apellido_paterno` varchar(45) NOT NULL,
  `apellido_materno` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `correo` varchar(45) NOT NULL,
  `sexo` varchar(45) NOT NULL,
  `id_usuario` int NOT NULL,
  PRIMARY KEY (`id_administrador`),
  UNIQUE KEY `dni_UNIQUE` (`dni`),
  UNIQUE KEY `correo_UNIQUE` (`correo`),
  KEY `id_user_idx` (`id_usuario`),
  CONSTRAINT `id_user` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (11,'10849834','Colly','Crockley','Murden','749-522-7420','2 Nelson Circle','1994-09-11','cmurden3m@meetup.com','F',131),(12,'86170879','Ardyce','Darbyshire','Casswell','429-252-2943','36386 Monica Crossing','1996-05-22','acasswell3n@google.fr','F',132),(13,'20820265','Sean','Yarmouth','Noke','830-240-5346','88743 Rowland Plaza','1991-10-12','snoke3o@diigo.com','M',133),(14,'68176221','Huntlee','Bedingfield','Harkin','692-837-5886','8140 Old Shore Crossing','1990-11-26','hharkin3p@marriott.com','M',134),(15,'37770168','Ailey','Van Der Weedenburg','Dancy','562-438-1287','30 Maywood Park','1996-03-12','adancy3q@yellowpages.com','F',135);
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `id_alumno` int NOT NULL AUTO_INCREMENT,
  `dni` varchar(45) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `apellido_paterno` varchar(45) NOT NULL,
  `apellido_materno` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` varchar(15) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `id_usuario` int NOT NULL,
  `dni_apoderado` varchar(45) NOT NULL,
  `nombre_apoderado` varchar(45) NOT NULL,
  `correo_apoderado` varchar(45) NOT NULL,
  `customerid` varchar(20) NOT NULL,
  `is_Stripe_Customer` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_alumno`),
  UNIQUE KEY `correo_UNIQUE` (`correo`),
  UNIQUE KEY `dni_UNIQUE` (`dni`),
  KEY `id_usuario_idx` (`id_usuario`),
  CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (15,'30454800','Earle','Lyver','Abrahm','722-183-2728','49535 Kinsman Point','2006-11-10','M','mabrahm1o@businessweek.com',61,'81011201','Mead','mabrahm1o@epa.gov','CUS-Axpdmfenc',1),(16,'15472817','Pippy','Wallworth','Birdfield','116-937-5351','2354 Donald Court','2002-11-02','F','dbirdfield1p@typepad.com',62,'40740547','Dorry','dbirdfield1p@howstuffworks.com','',0),(17,'24550196','Jim','Twohig','Brummitt','477-170-3475','01 Becker Way','2007-04-04','M','lbrummitt1q@who.int',63,'23682649','Lazar','lbrummitt1q@omniture.com','',0),(18,'26938475','Patsy','Capper','Shama','410-296-8757','5289 Clyde Gallagher Hill','2008-09-11','F','kshama1r@wsj.com',64,'51399307','Kelila','kshama1r@msu.edu','',0),(19,'89160653','Antonie','Fallon','Schoular','769-956-6366','58558 Crescent Oaks Junction','2001-01-19','F','eschoular1s@msu.edu',65,'36624349','Elsa','eschoular1s@vkontakte.ru','',0),(20,'13026585','Layton','Carding','Goalby','570-112-3681','48 Melvin Road','2007-06-30','M','egoalby1t@telegraph.co.uk',66,'15251192','Evyn','egoalby1t@bizjournals.com','',0),(21,'26263005','Jedd','Port','Mapples','738-724-5585','83718 American Ash Center','2006-03-24','M','hmapples1u@examiner.com',67,'26253023','Hercules','hmapples1u@techcrunch.com','',0),(22,'17239545','Willy','Tremblot','Killingbeck','687-904-7073','4 Tomscot Terrace','2004-03-14','M','skillingbeck1v@icq.com',68,'59659705','Sasha','skillingbeck1v@flickr.com','',0),(23,'89546640','Chrysa','Cornfield','Benediktsson','659-475-8064','0 David Pass','2006-12-21','F','rbenediktsson1w@businessweek.com',69,'14383746','Rianon','rbenediktsson1w@nps.gov','',0),(24,'75910388','Vonnie','Trathen','Banbrook','143-204-7486','025 Sheridan Hill','2008-01-18','F','obanbrook1x@shareasale.com',70,'12478738','Opal','obanbrook1x@usda.gov','',0),(25,'34571458','Jan','Wales','Breeze','850-245-3648','70299 Mosinee Park','2001-06-27','F','ebreeze1y@last.fm',71,'92610576','Elaina','ebreeze1y@sogou.com','',0),(26,'76691867','Mable','Lowen','Brookbank','635-500-8393','3830 Dennis Junction','2008-09-29','F','abrookbank1z@bbc.co.uk',72,'86025754','Aida','abrookbank1z@photobucket.com','',0),(27,'16715341','Marie','Annice','Ivatt','497-946-8431','84 Lawn Drive','2003-11-27','F','kivatt20@icq.com',73,'32946663','Karna','kivatt20@ucoz.com','',0),(28,'31535432','Elana','Barrim','Coling','620-562-4488','8593 Stang Pass','2006-04-05','F','acoling21@sun.com',74,'69291809','Ardra','acoling21@ovh.net','',0),(29,'40371244','Stafford','Usher','Alexandre','145-772-5945','23708 Sundown Point','2005-02-15','M','balexandre22@auda.org.au',75,'53175583','Barry','balexandre22@kickstarter.com','',0),(30,'67764663','Rosa','Stailey','Robroe','499-325-4837','7891 Buell Avenue','2001-05-19','F','hrobroe23@mozilla.org',76,'28636097','Hollie','hrobroe23@bbb.org','',0),(31,'50825638','Perceval','Sute','Oertzen','894-868-8271','2 Jenifer Hill','2001-02-26','M','roertzen24@un.org',77,'99273875','Roderick','roertzen24@earthlink.net','',0),(32,'78160942','Augie','Crosfield','Kennifick','817-314-0151','1 Algoma Alley','2003-01-19','M','skennifick25@list-manage.com',78,'66587313','Sander','skennifick25@mapy.cz','',0),(33,'54014052','Zerk','Cammoile','Jankowski','926-317-5205','839 Fremont Center','2003-11-18','M','bjankowski26@dailymail.co.uk',79,'57983497','Berk','bjankowski26@1688.com','',0),(34,'19873293','Emiline','Seggie','Buttriss','869-563-9158','62869 Grover Avenue','2008-06-05','F','mbuttriss27@oakley.com',80,'68922536','Melisenda','mbuttriss27@netlog.com','',0),(35,'93133399','Tris','Gary','Vallentin','468-343-0401','53 Anniversary Plaza','2004-03-16','M','evallentin28@state.tx.us',81,'86976342','Edvard','evallentin28@prweb.com','',0),(36,'91917846','Aldis','Davison','Eaves','325-786-0528','667 Mosinee Junction','2007-08-25','M','meaves29@geocities.jp',82,'11163673','Marius','meaves29@forbes.com','',0),(37,'47532780','Karola','Mashro','Puttock','293-693-7060','0 Morningstar Drive','2007-02-28','F','cputtock2a@techcrunch.com',83,'92163426','Cathyleen','cputtock2a@abc.net.au','',0),(38,'14074877','Ivory','Beamson','Freen','533-485-4844','719 Springview Circle','2008-12-06','F','efreen2b@php.net',84,'15538201','Evangelia','efreen2b@hhs.gov','',0),(39,'73894543','Stanton','Hessel','McLae','403-872-2441','36069 Goodland Court','2007-10-05','M','omclae2c@networkadvertising.org',85,'13153348','Otes','omclae2c@tripod.com','',0),(40,'97998464','Nydia','Orton','Surgison','640-267-4494','682 Crownhardt Crossing','2001-09-05','F','gsurgison2d@forbes.com',86,'60953919','Gayle','gsurgison2d@nhs.uk','',0),(41,'30945630','Tomasine','Cutress','Gorden','516-168-0891','6684 1st Lane','2001-09-28','F','jgorden2e@g.co',87,'58273993','Jacquelin','jgorden2e@typepad.com','',0),(42,'64609032','Dietrich','Guyer','Conaghy','778-133-5832','4007 South Point','2003-06-25','M','bconaghy2f@reddit.com',88,'64283701','Bank','bconaghy2f@google.co.uk','',0),(43,'41069751','Lenette','Birdall','Nuccitelli','633-629-7459','866 Oneill Circle','2001-06-10','F','znuccitelli2g@reverbnation.com',89,'13836427','Zea','znuccitelli2g@home.pl','',0),(44,'38708926','Monty','McNickle','Grigoliis','946-592-8146','189 Reindahl Way','2003-07-24','M','kgrigoliis2h@independent.co.uk',90,'92694075','Kalle','kgrigoliis2h@cbsnews.com','',0),(45,'73553829','Ericka','Murcutt','Flintuff','160-368-1274','08484 Pleasure Parkway','2005-08-30','F','eflintuff2i@hao123.com',91,'12243634','Eustacia','eflintuff2i@gnu.org','',0),(46,'49772727','Sharlene','Pavitt','Tschiersch','604-336-8362','54456 Heath Way','2006-11-14','F','mtschiersch2j@blog.com',92,'85123178','Mildrid','mtschiersch2j@tamu.edu','',0),(47,'62897665','Ardys','Adao','Sobey','776-152-1902','06198 Fieldstone Way','2008-01-08','F','msobey2k@intel.com',93,'31487112','Margaretha','msobey2k@surveymonkey.com','',0),(48,'50497723','Brandea','O\'Lenechan','Frisby','365-323-8447','53 Twin Pines Trail','2003-04-02','F','gfrisby2l@who.int',94,'87003512','Gwennie','gfrisby2l@buzzfeed.com','',0),(49,'33810354','Abramo','Stocky','Sims','655-709-4854','6494 Sachtjen Trail','2007-02-14','M','dsims2m@dyndns.org',95,'24660055','Der','dsims2m@jimdo.com','',0),(50,'53090279','Paddy','Pennells','Ferraron','573-461-2543','5425 Ramsey Crossing','2005-06-29','M','aferraron2n@topsy.com',96,'29107943','Alaster','aferraron2n@auda.org.au','',0),(51,'56985602','Cindi','Grieve','Van den Dael','481-336-5972','4602 Sloan Point','2003-08-24','F','dvandendael2o@flickr.com',97,'60077331','Deane','dvandendael2o@china.com.cn','',0),(52,'80680294','Hermine','Pavolillo','Petel','213-412-1235','0132 Derek Point','2006-10-15','F','spetel2p@youtu.be',98,'28941283','Sarine','spetel2p@gmpg.org','',0),(53,'50328268','Holly','Ferreli','Szach','402-167-0165','34 Bobwhite Pass','2005-09-23','M','rszach2q@linkedin.com',99,'64288877','Raimundo','rszach2q@upenn.edu','',0),(54,'99045170','Chanda','Dadds','Queyos','618-734-2061','6799 Golf Circle','2005-08-30','F','equeyos2r@cornell.edu',100,'67578669','Estella','equeyos2r@nba.com','',0),(56,'72481521','Leo','Valdez','Sanchez','9885422','los angeles','2012-02-01','M','leo_valdex@gmail.com',61,'8888888','lucia','lici_34@gmail.com','',1);
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistencia`
--

DROP TABLE IF EXISTS `asistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistencia` (
  `id_asistencia` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `id_curso` int NOT NULL,
  `asistencia` tinyint NOT NULL DEFAULT '1',
  `id_alumno` int NOT NULL,
  PRIMARY KEY (`id_asistencia`),
  KEY `id_course_idx` (`id_curso`),
  KEY `id_alms_idx` (`id_alumno`),
  CONSTRAINT `id_alms` FOREIGN KEY (`id_alumno`) REFERENCES `alumno` (`id_alumno`),
  CONSTRAINT `id_course` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia`
--

LOCK TABLES `asistencia` WRITE;
/*!40000 ALTER TABLE `asistencia` DISABLE KEYS */;
INSERT INTO `asistencia` VALUES (12,'2019-10-18',1,1,15),(13,'2022-12-11',2,1,21),(14,'2020-03-16',3,1,31),(15,'2020-08-04',4,1,40),(17,'2019-10-18',1,1,15),(18,'2022-12-11',2,1,21),(19,'2020-03-16',3,1,31),(20,'2020-08-04',4,1,40),(22,'2019-05-24',5,1,15),(23,'2016-04-01',6,0,15),(24,'2019-02-12',7,0,27),(25,'2020-07-10',8,0,28),(26,'2021-02-18',9,0,19),(27,'2022-05-30',10,0,20),(28,'2021-03-14',1,1,16),(29,'2017-05-02',2,0,17),(30,'2017-07-09',3,1,18),(31,'2019-12-02',4,1,19),(32,'2017-08-02',5,0,20),(33,'2020-07-14',6,0,21),(34,'2022-04-23',7,0,22),(35,'2016-11-18',8,0,23),(36,'2017-08-31',9,0,24),(37,'2020-07-02',10,0,25),(38,'2018-08-31',1,1,26),(39,'2021-04-15',2,0,27),(40,'2021-02-25',3,1,28),(41,'2018-09-18',4,0,29),(42,'2019-02-01',5,1,30),(43,'2017-01-03',6,1,31),(44,'2020-08-15',7,0,44),(45,'2017-10-02',8,1,45),(46,'2018-05-05',9,0,46),(47,'2019-04-19',10,0,47);
/*!40000 ALTER TABLE `asistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aula`
--

DROP TABLE IF EXISTS `aula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aula` (
  `id_aula` int NOT NULL AUTO_INCREMENT,
  `grado` int NOT NULL,
  `seccion` varchar(45) NOT NULL,
  `vacantes` int NOT NULL,
  PRIMARY KEY (`id_aula`),
  KEY `id_grado_idx` (`grado`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aula`
--

LOCK TABLES `aula` WRITE;
/*!40000 ALTER TABLE `aula` DISABLE KEYS */;
INSERT INTO `aula` VALUES (1,4,'A',40),(2,4,'C',40),(3,5,'B',40),(4,2,'C',40),(5,1,'A',40),(6,3,'B',40),(7,2,'A',40),(8,5,'D',40),(9,5,'C',40),(10,5,'A',40),(11,1,'B',40),(12,1,'C',40),(13,2,'B',40),(14,3,'C',40),(15,4,'B',40),(21,3,'A',40);
/*!40000 ALTER TABLE `aula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calificacion`
--

DROP TABLE IF EXISTS `calificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calificacion` (
  `id_calificacion` int NOT NULL AUTO_INCREMENT,
  `nota` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `id_alumno` int NOT NULL,
  `id_curso` int NOT NULL,
  `id_trimestre` int NOT NULL,
  PRIMARY KEY (`id_calificacion`),
  KEY `id_curso_idx` (`id_curso`),
  KEY `id_estudiante_idx` (`id_alumno`),
  KEY `id_trimestre_idx` (`id_trimestre`),
  CONSTRAINT `id_curso` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`),
  CONSTRAINT `id_estudiante` FOREIGN KEY (`id_alumno`) REFERENCES `alumno` (`id_alumno`),
  CONSTRAINT `id_trimestre` FOREIGN KEY (`id_trimestre`) REFERENCES `trimestre` (`id_trimestre`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificacion`
--

LOCK TABLES `calificacion` WRITE;
/*!40000 ALTER TABLE `calificacion` DISABLE KEYS */;
INSERT INTO `calificacion` VALUES (13,'14','Manolo',23,7,3),(14,'18','Alexina',21,8,3),(15,'0','Lewiss',27,3,3),(16,'0','Jodi',34,2,1),(17,'0','Jeanine',23,6,1),(18,'19','Maribel',22,5,2),(19,'18','Ardeen',36,5,1),(20,'12','Cthrine',21,1,2),(21,'2','Daven',42,5,2),(22,'4','Gay',41,10,3),(23,'0','Karim',38,9,1),(24,'16','Cirillo',30,9,1),(25,'10','Jeanelle',47,1,3),(26,'13','Jeanna',29,7,2),(27,'18','Dunc',50,10,2),(28,'8','Eliza',34,10,2),(29,'14','Jillian',54,1,3),(30,'1','Lauren',36,2,3),(31,'12','Dori',25,4,3),(32,'13','Tammie',23,9,2),(33,'5','Tallulah',29,9,3),(34,'6','Dalenna',16,1,1),(35,'4','Nana',44,9,1),(36,'8','Idalina',20,7,2),(37,'17','Henrieta',39,3,2),(38,'6','Sandor',42,4,1),(39,'10','Taber',34,3,3),(40,'1','Carney',52,6,2),(41,'17','Doralynne',41,3,3),(42,'10','Cissiee',24,10,2);
/*!40000 ALTER TABLE `calificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `id_curso` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'COMUNICACION'),(2,'MATEMATICA'),(3,'RELIGION'),(4,'CIENCIAS'),(5,'LENGUAJE'),(6,'GEOMETRIA'),(7,'FISICA'),(8,'HISTORIA'),(9,'QUIMICA'),(10,'BIOLOGIA');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grado`
--

DROP TABLE IF EXISTS `grado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grado` (
  `id_grado` int NOT NULL AUTO_INCREMENT,
  `limite` int NOT NULL,
  `matriculados` int NOT NULL,
  `precio` double NOT NULL,
  PRIMARY KEY (`id_grado`),
  CONSTRAINT `id_grade` FOREIGN KEY (`id_grado`) REFERENCES `aula` (`grado`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grado`
--

LOCK TABLES `grado` WRITE;
/*!40000 ALTER TABLE `grado` DISABLE KEYS */;
INSERT INTO `grado` VALUES (1,120,10,100),(2,120,15,100),(3,120,20,100),(4,120,37,100),(5,160,18,100);
/*!40000 ALTER TABLE `grado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horario`
--

DROP TABLE IF EXISTS `horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horario` (
  `id_horario` int NOT NULL AUTO_INCREMENT,
  `hora_inicio` varchar(45) NOT NULL,
  `hora_fin` varchar(45) NOT NULL,
  `id_aula` int NOT NULL,
  `id_profesor` int NOT NULL,
  `id_curso` int NOT NULL,
  PRIMARY KEY (`id_horario`),
  KEY `id_salon_idx` (`id_aula`),
  KEY `id_profesor_idx` (`id_profesor`),
  KEY `id_materia_idx` (`id_curso`),
  CONSTRAINT `id_materia` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`),
  CONSTRAINT `id_profesor` FOREIGN KEY (`id_profesor`) REFERENCES `profesor` (`id_profesor`),
  CONSTRAINT `id_salon` FOREIGN KEY (`id_aula`) REFERENCES `aula` (`id_aula`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario`
--

LOCK TABLES `horario` WRITE;
/*!40000 ALTER TABLE `horario` DISABLE KEYS */;
INSERT INTO `horario` VALUES (11,'8','10',1,11,1),(12,'10','12',1,12,2),(13,'12','14',1,13,3),(14,'8','10',2,14,4),(15,'10','12',2,15,5),(16,'12','14',2,16,6),(17,'8','10',3,17,7),(18,'10','12',3,18,8),(19,'12','14',3,19,9),(21,'8','10',4,15,10),(22,'10','12',4,11,1),(23,'12','14',4,12,2),(24,'8','10',5,13,3),(25,'10','12',5,14,4),(26,'12','14',5,15,5),(27,'8','10',6,16,6),(28,'10','12',6,17,7),(29,'12','14',6,18,8),(30,'8','10',7,19,9),(31,'10','12',7,11,10),(32,'12','14',7,12,1),(33,'8','10',8,12,2),(34,'10','12',8,14,3),(35,'12','14',8,15,4),(36,'8','10',9,16,5),(37,'10','12',9,17,6),(38,'12','14',9,18,7),(39,'8','10',10,19,8),(40,'10','12',10,11,9),(41,'12','14',10,12,10);
/*!40000 ALTER TABLE `horario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matricula` (
  `id_matricula` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `id_aula` int NOT NULL,
  `id_alumno` int NOT NULL,
  `anio_escolar` int NOT NULL,
  `estado` varchar(45) NOT NULL,
  PRIMARY KEY (`id_matricula`),
  KEY `id_aula_idx` (`id_aula`),
  KEY `id_alumno_idx` (`id_alumno`),
  CONSTRAINT `id_alumno` FOREIGN KEY (`id_alumno`) REFERENCES `alumno` (`id_alumno`),
  CONSTRAINT `id_aula` FOREIGN KEY (`id_aula`) REFERENCES `aula` (`id_aula`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
INSERT INTO `matricula` VALUES (12,'2021-10-20',1,21,2018,'PAGADO'),(13,'2022-07-04',2,22,2021,'PAGADO'),(14,'2022-05-04',3,23,2018,'PAGADO'),(15,'2023-02-01',1,16,2023,'PAGADO'),(16,'2023-02-02',2,18,2023,'NO_PAGADO'),(17,'2023-02-03',3,19,2023,'PENDIENTE'),(18,'2023-02-04',4,20,2023,'PENDIENTE'),(19,'2021-10-20',1,21,2018,'PAGADO'),(20,'2022-03-04',2,22,2021,'PENDIENTE'),(21,'2022-02-04',3,23,2018,'NO_PAGADO'),(22,'2022-01-04',4,24,2018,'PAGADO'),(23,'2022-01-04',5,25,2019,'PENDIENTE'),(24,'2022-01-14',6,26,2018,'NO_PAGADO'),(25,'2022-01-11',7,27,2016,'PAGADO'),(26,'2022-01-12',8,28,2020,'PENDIENTE'),(27,'2022-01-13',9,29,2021,'PAGADO'),(28,'2022-01-11',10,30,2017,'PAGADO'),(29,'2022-01-12',11,41,2016,'PAGADO'),(30,'2022-01-10',12,42,2018,'PENDIENTE'),(31,'2022-01-04',13,43,2019,'PENDIENTE'),(32,'2022-01-02',14,44,2017,'PAGADO'),(33,'2022-02-03',15,45,2019,'PAGADO');
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago` (
  `id_pago` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `monto` double NOT NULL,
  `id_matricula` int NOT NULL,
  PRIMARY KEY (`id_pago`),
  KEY `id_matricula_idx` (`id_matricula`),
  CONSTRAINT `id_matricula` FOREIGN KEY (`id_matricula`) REFERENCES `matricula` (`id_matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
INSERT INTO `pago` VALUES (14,'2022-01-12',418.38,12),(15,'2022-03-21',563.4,13),(16,'2022-03-12',251.66,14),(17,'2022-02-21',692.62,15),(18,'2022-03-22',915.5,16),(19,'2022-03-15',758.41,17),(20,'2022-01-21',224.66,18),(21,'2022-02-11',519.98,19),(22,'2022-01-01',559.47,20),(23,'2022-02-12',943.99,21),(24,'2022-03-09',785.14,22),(25,'2022-03-28',866.7,23),(26,'2022-03-29',812.65,24),(27,'2022-03-27',370.89,25),(28,'2022-02-06',905.56,26),(29,'2022-01-28',546.29,27),(30,'2022-03-10',677.8,28),(31,'2022-02-11',689.91,29),(32,'2022-03-19',843.46,30),(33,'2022-01-13',397.43,31),(34,'2022-02-14',742.21,32),(35,'2022-03-17',223.46,33),(36,'2023-02-02',500,15);
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesor` (
  `id_profesor` int NOT NULL AUTO_INCREMENT,
  `dni` varchar(45) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `apellido_paterno` varchar(45) NOT NULL,
  `apellido_materno` varchar(45) NOT NULL,
  `fecha_nacimiento` varchar(45) NOT NULL,
  `sexo` varchar(45) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `curso` varchar(45) NOT NULL,
  `id_usuario` int NOT NULL,
  PRIMARY KEY (`id_profesor`),
  KEY `id_username_idx` (`id_usuario`),
  CONSTRAINT `id_username` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
INSERT INTO `profesor` VALUES (11,'62908100','Cathleen','Leroux','Lewinton','2001-07-23','F','4 Garrison Park','779-356-5165','flewinton2s@howstuffworks.com','1',101),(12,'71267962','Norton','Cow','Bahde','2002-11-01','M','05020 Ridgeway Junction','393-810-4452','abahde2t@bloglines.com','2',102),(13,'22199012','Gerhardine','Hruska','McCulloch','2008-01-03','F','5 Colorado Park','533-345-9189','rmcculloch2u@macromedia.com','3',103),(14,'80703576','Norene','Benzing','Britcher','2003-08-20','F','734 Dryden Pass','148-974-5406','cbritcher2v@chicagotribune.com','4',104),(15,'13135562','Nalani','Rait','Gillies','2003-11-21','F','70 Buena Vista Lane','631-545-7551','rgillies2w@who.int','5',105),(16,'71748830','Mallissa','Hume','Haslen','2002-10-30','F','05110 Autumn Leaf Pass','728-947-7155','bhaslen2x@sitemeter.com','6',106),(17,'26472955','Leta','Stoile','Cherrison','2003-10-01','F','8 Hanson Drive','582-903-4409','rcherrison2y@xrea.com','7',107),(18,'91571445','Rourke','Huson','Digweed','2003-07-11','M','84 Westridge Junction','666-875-2910','cdigweed2z@360.cn','8',108),(19,'68263041','Kimmy','Brabyn','Redferne','2000-12-29','F','910 Fisk Place','410-402-3528','jredferne30@furl.net','9',109),(20,'98637049','Alikee','Mettericke','Goodspeed','2007-12-17','F','9793 Magdeline Junction','165-192-7128','kgoodspeed31@twitpic.com','10',110),(21,'41554413','Dillie','Kehoe','Cinderey','2007-12-03','M','103 Hagan Way','951-733-2871','hcinderey32@google.com.hk','1',111),(22,'79692360','Artemis','Roughley','Tindall','2003-09-29','M','5 American Ash Trail','925-760-1631','ltindall33@nih.gov','2',112),(23,'82246509','Farleigh','Hush','Ousby','2005-01-30','M','07274 Harbort Junction','263-717-3071','rousby34@list-manage.com','3',113),(24,'86982970','Rhona','Grzes','MacGorrie','2005-07-01','F','6596 Norway Maple Hill','433-303-5967','emacgorrie35@dot.gov','4',114),(25,'82975434','Sibby','Burdas','Keenor','2006-02-17','F','18412 Rowland Park','554-759-7884','nkeenor36@omniture.com','5',115),(26,'11878571','Roxanne','Limeburn','Menauteau','2002-07-06','F','142 Hayes Alley','163-748-8339','nmenauteau37@ibm.com','6',116),(27,'44091326','Reinald','Taleworth','Calveley','2008-03-12','M','43 Nevada Avenue','140-999-5141','dcalveley38@businesswire.com','7',117),(28,'63324083','Lianne','Benge','Besque','2005-11-08','F','06210 3rd Place','154-801-3338','lbesque39@google.pl','8',118),(29,'22758518','Kit','Stern','Gavaran','2001-02-17','M','8 Dryden Place','448-309-9818','hgavaran3a@fastcompany.com','9',119),(30,'79865108','Danell','Sands-Allan','Reaney','2008-07-10','F','08520 Sutteridge Lane','168-891-3379','lreaney3b@mashable.com','10',120),(31,'82026687','Sada','Thursby','Marmyon','2004-09-29','F','57 Sutherland Junction','338-633-5618','emarmyon3c@ehow.com','1',121),(32,'69078722','Nana','Bratley','Seivertsen','2003-09-30','F','7 Petterle Parkway','803-387-4141','iseivertsen3d@bravesites.com','2',122),(33,'13021449','Addy','Lisciandro','Wildgoose','2002-01-02','M','3 Holy Cross Plaza','482-611-2638','owildgoose3e@desdev.cn','3',123),(34,'32828135','Amelie','MacNeachtain','Lamplugh','2001-03-20','F','1 5th Place','352-927-1425','mlamplugh3f@networksolutions.com','4',124),(35,'81902004','Ruttger','Pethybridge','Smaile','2003-06-06','M','518 Oak Valley Junction','781-263-7392','bsmaile3g@adobe.com','5',125),(36,'43182354','Nikos','Kupec','Anthon','2008-01-25','M','3200 Evergreen Terrace','858-243-1808','santhon3h@economist.com','6',126),(37,'52928947','L;urette','Cahan','Gitting','2007-11-12','F','05 Little Fleur Avenue','983-398-0484','cgitting3i@sina.com.cn','7',127),(38,'33868676','Salome','Chaney','Prandy','2003-12-08','F','7 Michigan Center','616-914-8345','aprandy3j@scribd.com','8',128),(39,'17054426','Gretchen','Castleman','Hayford','2003-01-17','F','047 Maywood Trail','849-249-7400','mhayford3k@thetimes.co.uk','9',129),(40,'74524737','Sean','Cressingham','Cuttelar','2005-02-18','F','9214 Quincy Drive','126-295-0991','dcuttelar3l@earthlink.net','10',130),(41,'22757461','Raychel','Husher','Curnok','1988-10-31','F','26 Texas Point','337-288-3138','vcurnok3r@ifeng.com','1',136),(42,'15344274','Gaultiero','De Lisle','Taber','1981-05-28','M','0 Weeping Birch Junction','148-756-6802','ltaber3s@godaddy.com','2',137),(43,'58333191','Northrop','Micallef','Enoksson','1992-01-14','M','07679 Springview Hill','693-517-4535','benoksson3t@is.gd','3',138),(44,'10545783','Web','Cunliffe','Allsupp','1990-02-06','M','8320 Oxford Trail','948-123-7330','aallsupp3u@dropbox.com','4',139),(45,'64783196','Annora','Keeling','Ivanchov','1985-10-06','F','6 Corben Parkway','944-468-8401','wivanchov3v@patch.com','5',140),(46,'53165370','Mordy','Geindre','Cheales','1993-05-31','M','71 Miller Way','141-503-2831','rcheales3w@engadget.com','6',141),(47,'88804799','Dean','Cresser','Hann','1982-12-06','M','488 Blackbird Plaza','617-972-8587','khann3x@livejournal.com','7',142),(48,'10717599','Becki','Gronaver','Lutwyche','1989-11-10','F','07 Green Center','507-220-1483','glutwyche3y@instagram.com','8',143),(49,'35817500','Wilt','Browse','Polendine','1983-01-16','M','29279 Judy Plaza','641-999-2397','fpolendine3z@livejournal.com','9',144),(50,'37265254','Ave','Penney','Knath','1990-11-26','M','893 Maryland Road','459-280-8354','jknath40@google.com','7',145),(51,'29111512','Karylin','Delhanty','Emmins','1992-07-09','F','51274 Farwell Parkway','137-640-1725','jemmins41@answers.com','6',146),(52,'97767683','Christen','Laurence','Laite','1981-11-28','F','684 Fordem Trail','321-461-6103','flaite42@webeden.co.uk','1',147),(53,'72590591','Godfry','Simmank','Babcock','1993-12-03','M','82 Pine View Crossing','199-411-4128','hbabcock43@usatoday.com','2',148),(54,'37368142','Talbot','Hammatt','Trembath','1983-12-05','M','7 Carpenter Road','635-667-0781','ntrembath44@google.com.hk','3',149),(55,'93279179','Hagen','Cawt','Rabbitts','1981-09-03','M','0 Glacier Hill Street','460-672-0543','grabbitts45@wisc.edu','4',150),(56,'67465606','Ingaborg','Astell','Dare','1985-03-20','F','5 Lillian Street','296-644-1093','ddare46@constantcontact.com','5',151),(57,'19946459','Carleen','Ellicott','Rowledge','1990-10-22','F','75 Talmadge Drive','711-923-2123','prowledge47@people.com.cn','6',152),(58,'54429718','Glen','Copson','Golson','1982-05-28','M','926 Center Lane','801-766-2686','hgolson48@examiner.com','7',153),(59,'67157532','Alasteir','Redgrove','Whales','1983-08-01','M','73081 Washington Parkway','727-210-3632','wwhales49@tripod.com','8',154),(60,'30337483','Guthrey','Brooksby','Southan','1991-07-07','M','32492 Sachs Lane','842-164-4517','isouthan4a@newsvine.com','9',155),(61,'77819424','Ephrem','Mackney','Camfield','1995-06-28','M','0 Ilene Circle','498-814-9225','jcamfield4b@abc.net.au','10',156),(62,'59735186','Tove','Sonier','Popplewell','1993-01-12','F','904 Michigan Junction','639-351-7113','npopplewell4c@hhs.gov','1',157),(63,'90812825','Laureen','Rembrandt','Kirkhouse','1997-11-21','F','99 Raven Trail','280-787-4372','akirkhouse4d@free.fr','2',158),(64,'63126638','Titos','Mamwell','Lomax','1989-12-29','M','96337 Mitchell Court','511-645-2873','llomax4e@abc.net.au','3',159),(65,'17390147','Lyn','Jagiello','Gritland','1981-08-20','F','1675 Fair Oaks Park','144-692-2827','jgritland4f@narod.ru','4',160),(66,'60897606','Brooke','Anthoin','Sollime','1997-01-19','F','6 Darwin Junction','107-467-9745','esollime4g@elpais.com','5',161),(67,'12494512','June','Di Carli','Tune','1990-02-23','F','47 Morningstar Circle','116-699-8090','ktune4h@delicious.com','6',162),(68,'30879349','Artair','Crowthe','Cleveley','1987-02-13','M','09 Browning Pass','425-119-9170','rcleveley4i@msu.edu','7',163),(69,'75378975','Gates','Mushart','Fiddy','1988-08-02','F','634 Morning Way','811-262-6175','dfiddy4j@latimes.com','8',164),(70,'94791891','Glen','Spurdens','Strongman','1988-10-06','F','17310 Truax Drive','876-706-1862','sstrongman4k@bing.com','9',165);
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trimestre`
--

DROP TABLE IF EXISTS `trimestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trimestre` (
  `id_trimestre` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`id_trimestre`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trimestre`
--

LOCK TABLES `trimestre` WRITE;
/*!40000 ALTER TABLE `trimestre` DISABLE KEYS */;
INSERT INTO `trimestre` VALUES (1,'Trimestre 1'),(2,'Trimestre 2'),(3,'Trimestre 3');
/*!40000 ALTER TABLE `trimestre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `contrasenia` varchar(45) NOT NULL,
  `tipo_usuario` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL DEFAULT 'Activo',
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `usuario_UNIQUE` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (61,'Tiff','LnBj0WrK','1','1'),(62,'Kellina','LEFStb9t8w','3','3'),(63,'Dareen','2k5Hau','3','2'),(64,'Tasha','ZNn4TgY44','3','2'),(65,'Pascal','gGNhGBFHonf','3','3'),(66,'Astra','BTYP1CqgKTH','2','4'),(67,'Denney','DeDgr6','3','1'),(68,'Reginald','pXLOUXAX','2','1'),(69,'Hamil','zvJcqTC2xyY','3','1'),(70,'Nickolai','Rw5jQUymKEO','3','1'),(71,'Normand','AMvF04l','2','2'),(72,'Yoshiko','4C4N70ahSXlC','3','3'),(73,'Farrell','96XbtM19qD','1','4'),(74,'Shirline','N004YLjra','3','4'),(75,'Thaddeus','miXCyfc','1','3'),(76,'Josselyn','TYNZ0Y6h5','2','4'),(77,'Alaine','3SHIF3tdyOPx','3','3'),(78,'Willow','32KlqR','3','1'),(79,'Darlleen','2YUntWSermc','3','2'),(80,'Arlie','dD4o1nXl','2','1'),(81,'Wright','snmNaV0RC','3','1'),(82,'Willy','beW7gIv1MG','2','1'),(83,'Bailey','JZykptHeW','3','2'),(84,'Kipper','vvi9Fe1yW','1','1'),(85,'Breena','YlziipLKA','2','4'),(86,'Bridie','fNXBe9z7i','3','2'),(87,'Mariejeanne','jdNpoDQf','3','4'),(88,'Creight','rnBzbmiDy','3','4'),(89,'Danny','rLjYBWgoC0','1','3'),(90,'Sela','wEgZCc8Sl0Xl','1','4'),(91,'Karlyn','xL5Bl3S9BasF','1','2'),(92,'Stormi','RABlS3zbIxyo','3','3'),(93,'Katerina','m0Yiier','3','2'),(94,'Brina','llsKchJ9','1','3'),(95,'Sloane','E5dClp5u6q5q','2','3'),(96,'Nell','sYXf4Y','1','4'),(97,'Oberon','XjSFH8rb','2','3'),(98,'Davidson','VzwxeOvn','1','1'),(99,'Kimble','K7pvLWj5wjKS','2','3'),(100,'Denis','IufGsue5y4','3','4'),(101,'Templeton','HmXn010K3C0n','3','4'),(102,'Geri','MBTs9qtU5F','1','3'),(103,'Euphemia','fcLW8imnl8','2','1'),(104,'Amitie','zGuqkhZjkYb','1','1'),(105,'Judy','oUahBSVhfs','1','2'),(106,'Virgilio','sAHNYh3wf','2','3'),(107,'Lemmie','zBuBIVvty','3','1'),(108,'Vassili','i29dFYPbgWl','2','2'),(109,'Denise','wRrokpf28z','3','4'),(110,'Maurits','IFphCEc','2','2'),(111,'Guy','EIzkNR64z9','2','1'),(112,'Ivory','Xl3lKSJk','3','2'),(113,'Ardra','orXoKFInnEEt','3','2'),(114,'Lenora','C9b5ZT1OmKID','2','1'),(115,'Georgeanna','XuOJvRKS9','1','4'),(116,'Orly','G8GmIiDtEI','2','1'),(117,'Leesa','WakV8bzGlZ8','3','3'),(118,'Elmo','fxCipLNEd','1','3'),(119,'Emmanuel','3Q7qryfmjLCa','2','1'),(120,'Betti','LGjgHC8SKw04','2','2'),(121,'Ranna','dhTSkeLpGBRE','3','3'),(122,'Enrica','J94g8xn','1','2'),(123,'Selestina','WtDUI1','1','3'),(124,'Raul','uZXJqmyoasz','2','3'),(125,'Phineas','h0ouQ0knPw','1','3'),(126,'Renata','OX1QQQ','1','3'),(127,'Baron','IS2JJ6NX8OW','3','4'),(128,'Lin','unnPJH','2','4'),(129,'Marianne','JLM8Tbv21Yw','1','4'),(130,'Ursa','vfO0wHBt','1','1'),(131,'Adamo','Pm5irYbtGX0','1','3'),(132,'Harvey','oZADEHcY','1','4'),(133,'Joell','wPyLDKZ1s','3','3'),(134,'Lenee','BFEPDosCI','2','3'),(135,'Loleta','M7VcVO0Mvki','3','3'),(136,'Tedie','BSRcy7Si4','1','1'),(137,'Rodolphe','yJ4dii','3','2'),(138,'Ced','7xgJZXkRDXG','2','1'),(139,'Barty','uN2JfbEw','2','4'),(140,'Cello','Q20I2VNzbdgM','2','1'),(141,'Kitti','HONBZ7','1','3'),(142,'Shellysheldon','TayNUUDAl3','3','1'),(143,'Judah','AC9vzY','3','4'),(144,'Concettina','p5W2kZGIoBlY','1','3'),(145,'Arielle','EhtkHjH','3','1'),(146,'Siobhan','wp4ZrH','2','1'),(147,'Benedetto','r0w5fgX3','1','1'),(148,'Cullie','vXfvC5kp','2','3'),(149,'Falito','9eLOWxEy','1','1'),(150,'Bryant','iJxOnTr','3','2'),(151,'Noemi','tIvIvQhKZbQ','2','4'),(152,'Norma','JVsSgQcH','1','2'),(153,'Torey','V2eLpxJF3Nmi','2','2'),(154,'Major','AWmgprfMAb','1','2'),(155,'Terrance','TMc6G8GZ8hG2','1','2'),(156,'Harriette','7asgONerbizy','2','1'),(157,'Buffy','llmRHjdEbf','2','4'),(158,'Gretal','zaiy2B','2','3'),(159,'Standford','et6xNYVAXHg','1','4'),(160,'Adolphus','ZhqriaV','1','4'),(161,'Mame','lDuVy98','1','2'),(162,'Eziechiele','zD0Z47k','2','3'),(163,'Orelia','sQR567QbKbit','2','4'),(164,'Inger','TPFEdj87','3','1'),(165,'Loria','unLE0Ae8','2','1'),(166,'Ginelle','ELU4Uz7a3Zcc','1','2'),(167,'Etta','Yp22mB','2','4'),(168,'Juanita','Kh0iOi','2','3'),(169,'Lorens','CtBpgYBDuO','2','3'),(170,'Smith','1SmQEkwFc4FN','2','1'),(171,'Ernst','BroWLf','2','1'),(172,'Caddric','NiLnie8K','2','3'),(173,'Kylen','6AIyzH89xS','2','4'),(174,'Dorella','A3h0WKfLk','1','3'),(175,'Alonzo','8Sf5HhS28A','2','1'),(176,'Harrison','q6yzSXo','1','1'),(177,'Olvan','lLd2tfCF','1','2'),(178,'Demetri','CKLEyvGZg2','2','4'),(179,'Conrade','to00nJ9o','1','1'),(180,'Ethan','gva3Dic2sQk','1','1'),(181,'Elden','3rAwMJjA','1','1'),(182,'Leigha','BRR5ERiT9ZM','2','2'),(183,'Brittney','EZ2pQ80','1','1'),(184,'Clerc','ISabewqE','2','1'),(185,'Henryetta','kizzXuFcfnUU','1','2'),(186,'Ignazio','HUtSyn80GxK1','1','4'),(187,'Mattie','h1Ykwcp7','3','2'),(188,'Riordan','LXZ3LHPtFzUH','1','3'),(189,'Lucine','Bq6SPvM1gkNc','1','1'),(190,'Hillel','DzQoz7','3','3'),(191,'Desmond','tnn0OUKmL','1','1'),(192,'Jessie','RfswX6bE7','2','1'),(193,'Bryanty','WcoiEiK','3','1'),(194,'Ina','ah3zaxe5Vs','2','4'),(195,'Gwenneth','j9QgYMBrgVO','2','3'),(196,'Berte','DSIUHhr9w3C','2','2'),(197,'Morgan','qV4Eu1LY4','3','3'),(198,'Anna-maria','G8khVL','1','2'),(199,'Rodd','I9JIYt1U8l','2','2'),(200,'Ulrika','9v5cBsCgu','3','2'),(201,'Karl','meWbwWxNGIN7','1','1'),(202,'Sheilakathryn','P5W5XyqU4','3','2'),(203,'Laurie','VRlCDl','2','3'),(204,'Lewiss','TIjgz7cIbzbq','1','1'),(205,'Karlens','VivciR','1','1'),(206,'Laurianne','VW5AMs8','3','1'),(207,'Jacquenetta','nVzPSq3XAuP','1','2'),(208,'Malissa','rbmE6xAPa2','1','2'),(209,'Artair','Y6eqMkl','1','2'),(210,'Melodee','lnPKYO9MeSG4','3','4'),(211,'Sheilah','NfZbMn6M6H6','3','4'),(212,'Shannah','WJ0JdDL','2','1'),(213,'Eddy','mq5xX4Z1RUdx','2','4'),(214,'Jareb','RftDXB','1','1'),(215,'Pren','ji14xb1KnKHU','1','2'),(216,'Nonna','aO4YKXOPYgt1','1','4'),(217,'Bil','mJa8ycWLY1','1','3'),(218,'Sloan','NHrQ2TIi','3','4'),(219,'Retha','E5EkKYic','1','2'),(220,'Gustave','R0D3ElMsA','3','3'),(221,'Ruth','llKOqCeD1','3','4'),(222,'Louie','pRqHKKFI1','1','4'),(223,'Adan','ie0QEZVoZ4U','2','4'),(224,'Debby','YghMaIN2','2','1'),(225,'Susette','ldG8G01Y','3','4'),(226,'Carolann','OE3jWPvf6uID','2','4'),(227,'Doris','aRRJiKECdGT7','3','4'),(228,'Gottfried','CBvrzRjk','2','1'),(229,'Luke','mUFny1MVA','3','3'),(230,'Marissa','aREtzeZh','2','4'),(231,'Jobi','NK8p4ZpJ','1','1'),(232,'Eydie','hB6Jv5Rh','3','4'),(233,'Nonnah','e7MTHe8DQqZH','2','3'),(234,'Sophie','KsX7jBW','2','2'),(235,'Crin','U4Tq7j','1','3'),(236,'Amil','AvcQm2Jm8','2','1'),(237,'Steffane','PQ1NC5GUBo','3','3'),(238,'Ber','lOOnsfxc1','1','3'),(239,'Oneida','6N8BAiuPwUzU','3','4'),(240,'Caressa','tHjfE3f7hht','2','1'),(241,'Maximilien','ABwBrGJkU','1','1'),(242,'Adelaida','Rg8ho9x','3','2'),(243,'Aura','TLPnUVN9X','2','1'),(244,'Bertine','yM1ON8Sx','2','1'),(245,'Marris','jEVgIS8ar','1','4'),(246,'Kikelia','8Yojb8WPhzkA','1','1'),(247,'Alleyn','yHt4yn0KVq','2','2'),(248,'Celestina','aIZAtFzs','2','3'),(249,'Mischa','pjz9sC0fq1','2','1'),(250,'Hall','xKlKH9','3','1'),(251,'Farly','4VJoTkVJgKlz','3','2'),(252,'Tarah','GkWQ8xLm','1','4'),(253,'Charley','OdyKO8','3','1'),(254,'Walsh','WzeI51','3','2'),(255,'Sidney','QvoDwbHqwXrJ','3','1'),(256,'Ulberto','Lefzz9cD','2','4'),(257,'Maximo','4dNY0W9nLx7e','2','2'),(258,'Birdie','kNRFUI5o','2','2'),(259,'Creighton','ALrBrDv0K','2','3'),(260,'Irene','dOUPvlzm','1','4'),(261,'Breanne','v0a8KCUO','1','3'),(262,'Lancelot','YtxBqErYJ88','3','1'),(263,'Harland','s2fhZmj','3','4'),(264,'Bunnie','ObPYY9wcv','2','1'),(265,'Munmro','w4wFn1Y','3','1'),(266,'Fred','HQ7v8XM5','2','1'),(267,'Vasilis','yvFT6OfG','3','2'),(268,'Addia','6PDaWNyFe2d7','2','1'),(269,'Gabey','o8ISJ8','3','3'),(270,'Gilburt','SJ2tN66W','2','2'),(271,'Cynthie','rA9nqiJk','2','2'),(272,'Gerta','jE3d10','1','3'),(273,'Sonnie','iipaoAd','2','2'),(274,'Archibold','blBc5QwC','3','2'),(275,'Kara','TyLGgJcY6dkm','1','1'),(276,'Dugald','5TBtZJ','1','3'),(277,'Putnam','zyvPBE6o0','2','1'),(278,'Amye','51KdzCMYTG','2','3'),(279,'Elia','tPhMofnn1c','3','4'),(280,'Ira','R3Cg7a85gc','3','2'),(281,'Beatrisa','cyB67H','1','1'),(282,'Goldia','XHC0Oc3YrsJ','2','1'),(283,'Leeanne','Ck2EpOEIyTZJ','2','1'),(284,'Hill','VPBYHkqz8','1','3'),(285,'Jacky','WWHslYOFLrVl','2','1'),(286,'Aidan','LlCyohMa','1','3'),(287,'Lesli','4xBtyj','2','3'),(288,'Gerik','PPNiM0','2','3'),(289,'Sherlock','1qP9OPiU6d','1','2'),(290,'Marika','9TE3wK0MH79m','1','1'),(291,'Shirl','WTCVgYkswFdv','2','3'),(292,'Wendall','5lpcXy','2','2'),(293,'Donn','9JhHjlcVbXS','1','3'),(294,'Melisa','lr7C03qZOEBy','3','2'),(295,'Constantia','JgaBLEquM','1','2'),(296,'Caria','QBlXZNX','2','3'),(297,'Earvin','dTrpUV','2','2'),(298,'Sylvester','PJNB0PQJZo','3','3'),(299,'Leisha','Yx69usz','2','2'),(300,'Suzann','rns9hm1Kz','2','4'),(301,'Merrick','bN2yy7','1','2');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-18  1:16:15
