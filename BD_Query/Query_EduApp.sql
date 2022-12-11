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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (1,'3353026770','Vernen','Gradly','McDuffy','5327972714','8100 Park Meadow Terrace','2000-10-10','vmcduffy0@com.com','Male',1),(2,'6283121098','Nealon','Ohrtmann','Brome','8179873431','4094 Oakridge Street','2000-10-30','nbrome1@plala.or.jp','Male',2),(3,'4365099965','Freeman','Staniforth','Spencock','4203023028','10626 Graceland Plaza','2002-04-17','fspencock2@github.io','Male',3),(4,'3649064618','Broderick','Thistleton','Lelliott','5798216178','06 Waubesa Junction','2000-04-03','blelliott3@acquirethisname.com','Male',4),(5,'3704860123','Elbertine','Sibille','Poulter','1717646481','8 Susan Pass','2001-12-31','epoulter4@etsy.com','Female',5),(6,'1868746402','Earlie','Dairton','Faulkes','5318892430','58 Golf Course Park','1999-12-08','efaulkes5@prnewswire.com','Male',6),(7,'6332729864','Upton','Owens','Rohlfing','6313847094','88952 Upham Place','2001-01-30','urohlfing6@discovery.com','Male',7),(8,'8626107293','Mano','Kirsch','Domek','1077661701','68293 Bluestem Court','2000-03-28','mdomek7@dedecms.com','Male',8),(9,'9547592653','Kylila','Sall','Yeowell','5099320155','295 Hazelcrest Park','2000-10-23','kyeowell8@youtu.be','Female',9),(10,'0650827740','Killie','Thiem','Zorzoni','3419647619','67 Mcbride Park','2000-06-07','kzorzoni9@tinypic.com','Male',10);
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
  PRIMARY KEY (`id_alumno`),
  UNIQUE KEY `correo_UNIQUE` (`correo`),
  UNIQUE KEY `dni_UNIQUE` (`dni`),
  KEY `id_usuario_idx` (`id_usuario`),
  CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (2,'6855845290','Annotée','Walshe','Washington','345-960-2615','423 Dovetail Way','2001-12-09','Male','dwashington0@so-net.ne.jp',1),(3,'5495320727','Méthode','Biagioni','Biesinger','462-763-6371','76 Thompson Drive','2007-12-05','Male','abiesinger1@goo.gl',2),(4,'2131873638','Michèle','Adamowitz','Block','367-536-8721','31780 Barnett Crossing','2006-01-16','Female','jblock2@army.mil',3),(5,'6933036502','Fèi','Haslum','Tripony','661-785-4544','3438 Rockefeller Avenue','2005-11-13','Female','jtripony3@constantcontact.com',4),(6,'5676863811','Camélia','Sygroves','Potebury','500-733-8558','03 Bellgrove Pass','2002-05-29','Female','kpotebury4@wordpress.org',5),(7,'7523121446','Bénédicte','Shama','Borman','658-829-6481','87239 Algoma Lane','2009-02-24','Male','eborman5@mozilla.com',6),(8,'8562421685','Angèle','Jansie','Bodimeade','533-923-6694','64488 Jenna Alley','2008-01-30','Female','lbodimeade6@naver.com',7),(9,'1988936594','Cinéma','Chesshire','Oret','463-615-9193','3470 Fisk Drive','2003-07-05','Female','aoret7@independent.co.uk',8),(10,'3304091106','Adélaïde','Lanmeid','Alldre','847-443-7626','44823 Debra Terrace','2004-04-09','Female','calldre8@blogger.com',9),(11,'0467355398','Agnès','Fransemai','Elfes','463-971-3483','0 Artisan Circle','2009-12-19','Female','helfes9@arizona.edu',10);
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apoderado`
--

DROP TABLE IF EXISTS `apoderado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apoderado` (
  `id_apoderado` int NOT NULL AUTO_INCREMENT,
  `dni` varchar(45) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `apellido_paterno` varchar(45) NOT NULL,
  `apellido_materno` varchar(45) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` varchar(45) NOT NULL,
  `ocupacion` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `id_alumno` int NOT NULL,
  PRIMARY KEY (`id_apoderado`),
  KEY `id_alm_idx` (`id_alumno`),
  CONSTRAINT `id_alm` FOREIGN KEY (`id_alumno`) REFERENCES `alumno` (`id_alumno`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apoderado`
--

LOCK TABLES `apoderado` WRITE;
/*!40000 ALTER TABLE `apoderado` DISABLE KEYS */;
INSERT INTO `apoderado` VALUES (2,'8901393689','Nalani','Soffe','Dillinton','1999-06-30','Female','Construction Foreman','042 Atwood Lane','ndillinton0@businessweek.com',11),(3,'0665667477','Albertine','Farress','Heakins','2002-07-21','Female','Subcontractor','3 Grim Hill','aheakins1@latimes.com',2),(4,'5407569973','Linda','Statter','Murdie','1999-01-29','Female','Architect','459 Dayton Road','lmurdie2@yahoo.com',3),(5,'7309632575','Deonne','Delicate','Bagg','2001-10-05','Female','Surveyor','41285 Linden Parkway','dbagg3@unblog.fr',4),(6,'2646890982','Devy','Bassett','Jay','2001-10-30','Male','Electrician','0 Moland Court','djay4@ask.com',5),(7,'9682480698','Ema','Leftbridge','Stanier','2001-11-13','Female','Construction Expeditor','10 Glacier Hill Lane','estanier5@people.com.cn',6),(8,'5691875663','Luciano','McEwen','Rosterne','1999-06-16','Male','Construction Manager','2238 Texas Terrace','lrosterne6@oaic.gov.au',7),(9,'5248731216','Piggy','Flinn','Eastham','2000-06-09','Male','Engineer','2922 Sauthoff Drive','peastham7@feedburner.com',8),(10,'5124384271','Windy','Noore','Kubas','2000-06-04','Female','Construction Manager','179 Kensington Plaza','wkubas8@marketwatch.com',9),(11,'7596625665','Nehemiah','Syer','Rickasse','2000-08-04','Male','Construction Foreman','1313 Lien Parkway','nrickasse9@wordpress.com',10);
/*!40000 ALTER TABLE `apoderado` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia`
--

LOCK TABLES `asistencia` WRITE;
/*!40000 ALTER TABLE `asistencia` DISABLE KEYS */;
INSERT INTO `asistencia` VALUES (2,'2022-08-18',1,0,11),(3,'2021-12-13',2,0,2),(4,'2022-04-03',3,1,3),(5,'2022-03-10',4,0,4),(6,'2022-05-09',5,0,5),(7,'2022-09-10',6,0,6),(8,'2021-12-17',7,1,7),(9,'2022-10-16',8,0,8),(10,'2022-07-21',9,1,9),(11,'2022-10-07',10,1,10);
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
  `grado` varchar(45) NOT NULL,
  `seccion` varchar(45) NOT NULL,
  `vacantes` int NOT NULL,
  PRIMARY KEY (`id_aula`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aula`
--

LOCK TABLES `aula` WRITE;
/*!40000 ALTER TABLE `aula` DISABLE KEYS */;
INSERT INTO `aula` VALUES (1,'4','A',38),(2,'4','C',39),(3,'5','B',35),(4,'2','C',40),(5,'1','A',39),(6,'3','B',37),(7,'2','A',38),(8,'5','B',35),(9,'5','C',35),(10,'5','A',40);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificacion`
--

LOCK TABLES `calificacion` WRITE;
/*!40000 ALTER TABLE `calificacion` DISABLE KEYS */;
INSERT INTO `calificacion` VALUES (3,'0','Fougamou Airport',11,1,2),(4,'9','Katowice International Airport',2,2,3),(5,'8','Taldykorgan Airport',3,3,2),(6,'6','Enfidha - Hammamet International Airport',4,4,2),(7,'7','Bitam Airport',5,5,2),(8,'1','Roberts Field',6,6,3),(9,'10','Capitán Av. Juan Cochamanidis S. Airport',7,7,3),(10,'15','RAF Wyton',8,8,2),(11,'7','Grumman Bethpage Airport',9,9,1),(12,'2','Lanzarote Airport',10,10,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario`
--

LOCK TABLES `horario` WRITE;
/*!40000 ALTER TABLE `horario` DISABLE KEYS */;
INSERT INTO `horario` VALUES (1,'10','12',1,1,1),(2,'9','11',2,2,2),(3,'9','11',3,3,3),(4,'8','10',4,4,4),(5,'8','10',5,5,5),(6,'10','12',6,6,6),(7,'12','14',7,7,7),(8,'12','14',8,8,8),(9,'10','12',9,9,9),(10,'9','11',10,10,10);
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
  PRIMARY KEY (`id_matricula`),
  KEY `id_aula_idx` (`id_aula`),
  KEY `id_alumno_idx` (`id_alumno`),
  CONSTRAINT `id_alumno` FOREIGN KEY (`id_alumno`) REFERENCES `alumno` (`id_alumno`),
  CONSTRAINT `id_aula` FOREIGN KEY (`id_aula`) REFERENCES `aula` (`id_aula`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
INSERT INTO `matricula` VALUES (2,'2022-12-09',1,11,2021),(3,'2022-08-06',2,2,2020),(4,'2022-03-20',3,3,2016),(5,'2022-02-16',4,4,2020),(6,'2022-09-15',5,5,2020),(7,'2022-04-04',6,6,2022),(8,'2022-05-01',7,7,2015),(9,'2022-04-13',8,8,2019),(10,'2022-01-02',9,9,2015),(11,'2022-05-15',10,10,2016);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
INSERT INTO `pago` VALUES (4,'2022-10-09',214.96,11),(5,'2022-04-11',191.27,2),(6,'2022-03-04',218.61,3),(7,'2022-04-12',195,4),(8,'2022-03-17',170.48,5),(9,'2022-07-27',217.23,6),(10,'2022-10-17',199.38,7),(11,'2022-06-24',152.83,8),(12,'2022-02-23',127.22,9),(13,'2022-08-09',154.65,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
INSERT INTO `profesor` VALUES (1,'6762090524','Ewart','McSharry','Bouldon','1999/11/27','Male','78 Towne Parkway','4071700221','ebouldon0@nasa.gov','MATEMATICA',1),(2,'3773966571','Abe','Gorman','Haughton','2000/01/28','Male','8 Shasta Crossing','3448300003','ahaughton1@elpais.com','COMUNICACION',2),(3,'8507823564','Kiersten','Mullord','Eggleson','2001/01/23','Female','6 Elgar Circle','4096347451','keggleson2@amazon.co.uk','RELIGION',3),(4,'5197676558','Kandace','Rolfini','Blune','2000/08/25','Female','09051 Veith Center','3805887777','kblune3@mediafire.com','CIENCIA',4),(5,'3642213855','Lionel','Olivetta','Paddick','1999/11/30','Male','22 Clove Trail','9173564156','lpaddick4@blinklist.com','FISICA',5),(6,'6068561682','Cori','Halsworth','Hacquard','1999/01/01','Male','116 Brown Trail','4825873420','chacquard5@imdb.com','GEOMETRIA',6),(7,'5767585806','Piper','Tewkesberry','Dyzart','2002/10/10','Female','15361 Shelley Road','7952410154','pdyzart6@weebly.com','QUIMICA',7),(8,'2479531406','Hogan','Kingzett','Mealiffe','2001/06/13','Male','07403 Forest Dale Trail','6791864330','hmealiffe7@youku.com','LENGUAJE',8),(9,'9636261598','Stanford','Buzza','Mattheus','2000/09/22','Male','826 Lake View Terrace','4258294804','smattheus8@issuu.com','ARITMETICA',9),(10,'8194719399','Caryl','Laddle','Sandes','2001/04/14','Male','97 5th Center','8784367840','csandes9@1und1.de','MATEMATICA',10);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Kane','Tiffanie','2','1'),(2,'Marsh','Garald','2','1'),(3,'Seline','Emelyne','1','1'),(4,'Kent','Bradley','1','1'),(5,'Agnella','Quintus','3','1'),(6,'Alexis','Sigismundo','1','0'),(7,'Reube','Gilli','2','0'),(8,'Kailey','Rheba','2','1'),(9,'Mil','Kara-lynn','2','1'),(10,'Lyndsey','Randa','3','0');
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

-- Dump completed on 2022-12-10 23:34:06
