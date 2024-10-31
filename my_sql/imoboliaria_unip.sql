CREATE DATABASE  IF NOT EXISTS `imobiliaria_unip` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `imobiliaria_unip`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: imobiliaria_unip
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `apartamento`
--

DROP TABLE IF EXISTS `apartamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apartamento` (
  `fk_id_imovel` int NOT NULL,
  `andar` int NOT NULL,
  `valor_condominio` decimal(10,2) NOT NULL,
  `portaria_24h` tinyint(1) NOT NULL,
  PRIMARY KEY (`fk_id_imovel`),
  CONSTRAINT `apartamento_ibfk_1` FOREIGN KEY (`fk_id_imovel`) REFERENCES `imovel` (`id_imovel`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartamento`
--

LOCK TABLES `apartamento` WRITE;
/*!40000 ALTER TABLE `apartamento` DISABLE KEYS */;
INSERT INTO `apartamento` VALUES (63,1,300.00,1),(64,2,350.00,1),(65,3,400.00,0),(66,4,450.00,1),(67,5,500.00,0),(68,6,550.00,1),(69,1,600.00,1),(70,2,250.00,0),(71,3,700.00,1),(72,4,750.00,0),(73,5,800.00,1),(74,6,850.00,0),(75,1,900.00,1),(76,2,950.00,0),(77,3,1000.00,1),(78,4,1050.00,1),(79,5,1100.00,0),(80,6,1150.00,1),(81,2,1200.00,0),(82,3,1250.00,1);
/*!40000 ALTER TABLE `apartamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bairro`
--

DROP TABLE IF EXISTS `bairro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bairro` (
  `id_bairro` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cidade` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `estado` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_bairro`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bairro`
--

LOCK TABLES `bairro` WRITE;
/*!40000 ALTER TABLE `bairro` DISABLE KEYS */;
INSERT INTO `bairro` VALUES (1,'Vila Industrial','Campinas','SP'),(2,'Cambui','Campinas','SP'),(3,'Vila Maria','Campinas','SP'),(4,'Cambuí','Campinas','SP'),(5,'Jardim das Palmeiras','Campinas','SP'),(6,'Jardim Nova Europa','Campinas','SP'),(7,'Jardim do Lago','Campinas','SP'),(8,'Parque Prado','Campinas','SP'),(9,'Vila Marieta','Campinas','SP'),(10,'Vila Formosa','Campinas','SP'),(11,'Jardim São Gabriel','Campinas','SP'),(12,'Jardim Santa Genebra','Campinas','SP'),(13,'São José','Paulínia','SP'),(14,'Jardim Planalto','Paulínia','SP'),(15,'Centro','Valinhos','SP'),(16,'Jardim São Marcos','Valinhos','SP'),(17,'Jardim de Cima','Valinhos','SP'),(18,'Vila Nova','Vinhedo','SP'),(19,'Centro','Vinhedo','SP'),(20,'Jardim Paiol','Itatiba','SP'),(21,'Jardim das Américas','Itatiba','SP'),(22,'Centro','Indaiatuba','SP'),(23,'Jardim Pavan','Indaiatuba','SP'),(24,'Vila CIBRATEL','Indaiatuba','SP'),(25,'Vila Rica','Santa Bárbara d?Oeste','SP'),(26,'Centro','Santa Bárbara d?Oeste','SP'),(27,'Vila Brizola','Sumaré','SP'),(28,'Centro','Sumaré','SP'),(29,'Jardim Primavera','Hortolândia','SP'),(30,'Centro','Hortolândia','SP'),(31,'Vila Gallo','Nova Odessa','SP');
/*!40000 ALTER TABLE `bairro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casa`
--

DROP TABLE IF EXISTS `casa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casa` (
  `fk_id_imovel` int NOT NULL,
  PRIMARY KEY (`fk_id_imovel`),
  CONSTRAINT `casa_ibfk_1` FOREIGN KEY (`fk_id_imovel`) REFERENCES `imovel` (`id_imovel`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casa`
--

LOCK TABLES `casa` WRITE;
/*!40000 ALTER TABLE `casa` DISABLE KEYS */;
INSERT INTO `casa` VALUES (43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),(61),(62);
/*!40000 ALTER TABLE `casa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tipo_relacao` enum('inquilino','locatario','comprador','vendedor') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contato` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Carlos Silva','locatario','carlos.silva@email.com'),(2,'Ana Souza','locatario','(19) 98765-4321'),(3,'Pedro Oliveira','locatario','pedro.oliveira@email.com'),(4,'Mariana Costa','locatario','(19) 98888-7777'),(5,'Roberto Almeida','locatario','roberto.almeida@email.com'),(6,'Juliana Pereira','locatario','(19) 99666-5544'),(7,'Fernando Santos','locatario','fernando.santos@email.com'),(8,'Tatiane Lima','locatario','(19) 95555-1111'),(9,'Jorge Martins','locatario','jorge.martins@email.com'),(10,'Renata Ribeiro','locatario','(19) 94444-2222'),(11,'Ricardo Gomes','locatario','ricardo.gomes@email.com'),(12,'Cláudia Rocha','locatario','(19) 93333-3333'),(13,'Felipe Barros','locatario','felipe.barros@email.com'),(14,'Camila Dias','locatario','(19) 92222-4444'),(15,'Eduardo Mendes','locatario','eduardo.mendes@email.com'),(16,'Sofia Ferreira','locatario','(19) 91111-5555'),(17,'Luciana Nascimento','locatario','luciana.nascimento@email.com'),(18,'Samuel Rodrigues','locatario','(19) 90000-6666'),(19,'Isabela Cardoso','locatario','isabela.cardoso@email.com'),(20,'Thiago Assunção','locatario','(19) 88999-7777'),(21,'Luiz Carvalho','vendedor','luiz.carvalho@email.com'),(22,'Patrícia Lima','vendedor','(19) 87878-8787'),(23,'Bruno Teixeira','vendedor','bruno.teixeira@email.com'),(24,'Vanessa Alves','vendedor','(19) 86767-6767'),(25,'Thiago Martins','vendedor','thiago.martins@email.com'),(26,'Cristina Silva','vendedor','(19) 85656-5656'),(27,'Felipe Azevedo','vendedor','felipe.azevedo@email.com'),(28,'Gabriela Campos','vendedor','(19) 84545-4545'),(29,'Robson Almeida','vendedor','robson.almeida@email.com'),(30,'Tânia Santos','vendedor','(19) 83434-3434'),(31,'André Mendes','inquilino','andre.mendes@email.com'),(32,'Silvia Costa','inquilino','(19) 82323-2323'),(33,'César Lima','inquilino','cesar.lima@email.com'),(34,'Alberto Oliveira','inquilino','(19) 81212-1212'),(35,'Eliane Martins','inquilino','eliane.martins@email.com'),(36,'Marcio Ribeiro','inquilino','(19) 80101-0101'),(37,'Fabiana Rocha','inquilino','fabiana.rocha@email.com'),(38,'Julio César','inquilino','(19) 99099-9090'),(39,'Marcela Pereira','inquilino','marcela.pereira@email.com'),(40,'Cristiano Barros','inquilino','(19) 99999-9999'),(41,'Sandra Oliveira','comprador','sandra.oliveira@email.com'),(42,'Natan Santos','comprador','(19) 78878-7878'),(43,'Patrícia Nascimento','comprador','patricia.nascimento@email.com'),(44,'Eduardo Lima','comprador','(19) 77777-7777'),(45,'Mariana Soares','comprador','mariana.soares@email.com'),(46,'Lucas Ribeiro','comprador','(19) 76676-6767'),(47,'Ana Maria','comprador','ana.maria@email.com'),(48,'Renato Martins','comprador','(19) 75555-5555'),(49,'Jessica Souza','comprador','jessica.souza@email.com'),(50,'Rafael Almeida','comprador','(19) 74444-4444');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contrato`
--

DROP TABLE IF EXISTS `contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contrato` (
  `id_contrato` int NOT NULL AUTO_INCREMENT,
  `fk_id_imovel` int NOT NULL,
  `fk_locador_vendedor` int NOT NULL,
  `fk_locatario_comprador` int NOT NULL,
  `tipo_contrato` enum('aluguel','venda') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `valor_contrato` decimal(10,2) NOT NULL,
  `data_contrato` date NOT NULL,
  `data_validade` date DEFAULT NULL,
  `taxa_imobiliaria` decimal(4,2) NOT NULL,
  PRIMARY KEY (`id_contrato`),
  KEY `fk_id_imovel` (`fk_id_imovel`),
  KEY `fk_locador_vendedor` (`fk_locador_vendedor`),
  KEY `fk_locatario_comprador` (`fk_locatario_comprador`),
  CONSTRAINT `contrato_ibfk_1` FOREIGN KEY (`fk_id_imovel`) REFERENCES `imovel` (`id_imovel`),
  CONSTRAINT `contrato_ibfk_2` FOREIGN KEY (`fk_locador_vendedor`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `contrato_ibfk_3` FOREIGN KEY (`fk_locatario_comprador`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrato`
--

LOCK TABLES `contrato` WRITE;
/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
INSERT INTO `contrato` VALUES (1,5,31,1,'aluguel',1500.00,'2024-10-27','2025-10-27',3.00),(2,13,32,2,'aluguel',2000.00,'2024-10-27','2025-10-27',3.00),(3,22,33,3,'aluguel',1800.00,'2024-10-27','2025-10-27',3.00),(4,31,34,4,'aluguel',2200.00,'2024-10-27','2025-10-27',3.00),(5,40,35,5,'aluguel',1700.00,'2024-10-27','2025-10-27',3.00),(6,4,21,41,'venda',194000.00,'2024-10-27',NULL,3.00),(7,10,22,42,'venda',242500.00,'2024-10-27',NULL,3.00),(8,16,23,43,'venda',291000.00,'2024-10-27',NULL,3.00),(9,20,24,44,'venda',145500.00,'2024-10-27',NULL,3.00),(10,25,25,45,'venda',339000.00,'2024-10-27',NULL,3.00),(11,28,26,46,'venda',174600.00,'2024-10-27',NULL,3.00),(12,34,27,47,'venda',388000.00,'2024-10-27',NULL,3.00),(13,37,28,48,'venda',214600.00,'2024-10-27',NULL,3.00),(14,43,29,49,'venda',262500.00,'2024-10-27',NULL,3.00),(15,46,30,50,'venda',224500.00,'2024-10-27',NULL,3.00),(16,49,21,41,'venda',255400.00,'2024-10-27',NULL,3.00),(17,52,22,42,'venda',310000.00,'2024-10-27',NULL,3.00),(18,55,23,43,'venda',185500.00,'2024-10-27',NULL,3.00),(19,58,24,44,'venda',303500.00,'2024-10-27',NULL,3.00),(20,63,25,45,'venda',273000.00,'2024-10-27',NULL,3.00),(21,66,26,46,'venda',331000.00,'2024-10-27',NULL,3.00),(22,69,27,47,'venda',196000.00,'2024-10-27',NULL,3.00),(23,72,28,48,'venda',147000.00,'2024-10-27',NULL,3.00),(24,75,29,49,'venda',158000.00,'2024-10-27',NULL,3.00),(25,78,30,50,'venda',168000.00,'2024-10-27',NULL,3.00),(26,81,21,41,'venda',245000.00,'2024-10-27',NULL,3.00);
/*!40000 ALTER TABLE `contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `id_endereco` int NOT NULL AUTO_INCREMENT,
  `logradouro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `complemento` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cep` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fk_id_bairro` int NOT NULL,
  PRIMARY KEY (`id_endereco`),
  KEY `endereco_ibfk_1` (`fk_id_bairro`),
  CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`fk_id_bairro`) REFERENCES `bairro` (`id_bairro`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'Rua das Flores','Apto 101','13000000',1),(2,'Avenida Paulista','Bloco B','13001001',2),(3,'Travessa dos Lírios','Apto 202','13002002',3),(4,'Rua das Palmeiras','Casa 5','13003003',4),(5,'Rua das Margaridas','Prédio 4','13004004',5),(6,'Avenida das Américas','Apto 303','13005005',6),(7,'Rua dos Girassóis','','13006006',7),(8,'Avenida do Parque','Casa 15','13007007',8),(9,'Rua da Esperança','Casa 10','13008008',9),(10,'Rua da Liberdade','Apto 110','13009009',10),(11,'Rua das Orquídeas','Casa 20','13010010',11),(12,'Rua das Rosas','Apto 102','13011011',12),(13,'Rua dos Coqueiros','Casa 30','13012012',13),(14,'Avenida dos Ipês','Apto 201','13013013',14),(15,'Rua do Comércio','','13014014',15),(16,'Rua das Palmeiras','Apto 2','13015015',16),(17,'Avenida dos Jacarandás','','13016016',17),(18,'Rua do Sol','Apto 303','13017017',18),(19,'Rua da Luz','','13018018',19),(20,'Rua do Paiol','Casa 12','13019019',20),(21,'Rua das Américas','','13020020',21),(22,'Rua da Paz','Casa 10','13021021',22),(23,'Avenida Brasil','Apto 2','13022022',23),(24,'Rua das Flores','Casa 4','13023023',24),(25,'Rua das Acácias','','13024024',25),(26,'Rua do Comércio','Apto 15','13025025',26),(27,'Rua da Primavera','Casa 7','13026026',27),(28,'Rua da Esperança','','13027027',28),(29,'Rua do Gallo','Casa 3','13028028',29),(30,'Rua dos Lírios','Apto 18','13029029',30),(31,'Avenida das Flores','','13030030',31),(32,'Avenida Elvis Presley','Casa 1','13040001',1),(33,'Rua Michael Jackson','Apto 22','13040002',2),(34,'Travessa Harry Potter','Sala 3','13040003',3),(35,'Rua Sherlock Holmes','Apto 45','13040004',4),(36,'Avenida James Bond','Casa 5','13040005',5),(37,'Rua Bruce Wayne','Apto 10','13040006',6),(38,'Avenida Wonder Woman','Sala 8','13040007',7),(39,'Rua Peter Parker','Casa 12','13040008',8),(40,'Rua Tony Stark','Apto 14','13040009',9),(41,'Avenida Frodo Baggins','Casa 20','13040010',10),(42,'Rua Walter White','Apto 30','13040011',1),(43,'Rua Dumbledore','Casa 2','13040012',2),(44,'Avenida Hermione Granger','Apto 7','13040013',3),(45,'Rua Katniss Everdeen','Casa 15','13040014',4),(46,'Rua Gandalf','Sala 9','13040015',5),(47,'Avenida Spock','Casa 4','13040016',6),(48,'Rua Yoda','Apto 13','13040017',7),(49,'Avenida Sherlock','Casa 11','13040018',8),(50,'Rua Neo','Apto 16','13040019',9),(51,'Avenida Chewbacca','Sala 19','13040020',10),(52,'Rua Clark Kent','Casa 17','13040021',1),(53,'Avenida Bruce Lee','Apto 21','13040022',2),(54,'Rua Lara Croft','Casa 3','13040023',3),(55,'Rua Albus Dumbledore','Sala 18','13040024',4),(56,'Avenida Indiana Jones','Apto 29','13040025',5),(57,'Rua Bilbo Baggins','Casa 6','13040026',6),(58,'Avenida Rick Sanchez','Apto 23','13040027',7),(59,'Rua Morty Smith','Casa 28','13040028',8),(60,'Avenida Homer Simpson','Apto 32','13040029',9),(61,'Rua Marge Simpson','Casa 26','13040030',10),(62,'Avenida Lisa Simpson','Apto 11','13040031',1),(63,'Rua Bart Simpson','Casa 9','13040032',2),(64,'Avenida Peter Griffin','Apto 36','13040033',3),(65,'Rua Stewie Griffin','Sala 14','13040034',4),(66,'Avenida Meg Griffin','Casa 8','13040035',5);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foto`
--

DROP TABLE IF EXISTS `foto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `foto` (
  `id_foto` int NOT NULL AUTO_INCREMENT,
  `fk_id_imovel` int NOT NULL,
  `caminho_foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `descricao` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `data_foto` date DEFAULT NULL,
  PRIMARY KEY (`id_foto`),
  KEY `id_imovel` (`fk_id_imovel`),
  CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`fk_id_imovel`) REFERENCES `imovel` (`id_imovel`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foto`
--

LOCK TABLES `foto` WRITE;
/*!40000 ALTER TABLE `foto` DISABLE KEYS */;
/*!40000 ALTER TABLE `foto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imovel`
--

DROP TABLE IF EXISTS `imovel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imovel` (
  `id_imovel` int NOT NULL AUTO_INCREMENT,
  `disponibilidade` enum('venda','locacao','vendido','locado') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `valor_sugerido` decimal(10,2) NOT NULL,
  `area_imovel` decimal(10,2) NOT NULL,
  `fk_id_endereco` int NOT NULL,
  PRIMARY KEY (`id_imovel`),
  KEY `fk_id_endereco` (`fk_id_endereco`),
  CONSTRAINT `imovel_ibfk_1` FOREIGN KEY (`fk_id_endereco`) REFERENCES `endereco` (`id_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imovel`
--

LOCK TABLES `imovel` WRITE;
/*!40000 ALTER TABLE `imovel` DISABLE KEYS */;
INSERT INTO `imovel` VALUES (1,'venda',450000.00,100.00,3),(2,'locacao',1500.00,85.00,12),(3,'venda',600000.00,120.00,54),(4,'vendido',500000.00,90.00,21),(5,'locado',1200.00,70.00,7),(6,'locacao',1000.00,60.00,45),(7,'venda',480000.00,110.00,5),(8,'venda',350000.00,75.00,18),(9,'locacao',1600.00,95.00,23),(10,'vendido',700000.00,130.00,2),(11,'venda',850000.00,140.00,39),(12,'locacao',900.00,50.00,34),(13,'locado',2000.00,130.00,66),(14,'venda',400000.00,80.00,13),(15,'locacao',800.00,55.00,36),(16,'vendido',590000.00,105.00,25),(17,'venda',700000.00,125.00,61),(18,'locacao',1600.00,90.00,10),(19,'venda',320000.00,80.00,50),(20,'vendido',600000.00,120.00,14),(21,'locacao',1500.00,100.00,17),(22,'locado',1900.00,130.00,29),(23,'venda',300000.00,60.00,8),(24,'locacao',2500.00,140.00,16),(25,'vendido',470000.00,85.00,19),(26,'venda',490000.00,110.00,37),(27,'locacao',1100.00,70.00,28),(28,'vendido',450000.00,95.00,55),(29,'venda',600000.00,120.00,42),(30,'locacao',1500.00,90.00,26),(31,'locado',1300.00,80.00,22),(32,'venda',250000.00,50.00,4),(33,'locacao',2000.00,105.00,38),(34,'vendido',700000.00,125.00,33),(35,'venda',320000.00,75.00,15),(36,'locacao',1800.00,110.00,62),(37,'vendido',500000.00,90.00,1),(38,'venda',720000.00,130.00,43),(39,'locacao',900.00,60.00,32),(40,'locado',1600.00,85.00,20),(41,'venda',400000.00,100.00,64),(42,'locacao',2300.00,120.00,24),(43,'vendido',350000.00,75.00,30),(44,'venda',500000.00,90.00,65),(45,'locacao',750.00,55.00,46),(46,'vendido',680000.00,110.00,63),(47,'venda',420000.00,85.00,40),(48,'locacao',2400.00,140.00,66),(49,'vendido',310000.00,70.00,41),(50,'venda',470000.00,95.00,11),(51,'locacao',2000.00,125.00,9),(52,'vendido',530000.00,100.00,3),(53,'venda',400000.00,80.00,12),(54,'locacao',1000.00,60.00,57),(55,'vendido',550000.00,90.00,48),(56,'venda',620000.00,110.00,49),(57,'locacao',2300.00,130.00,58),(58,'vendido',370000.00,75.00,44),(59,'venda',430000.00,85.00,52),(60,'locacao',1900.00,95.00,45),(61,'venda',350000.00,70.00,59),(62,'locacao',800.00,60.00,60),(63,'vendido',700000.00,140.00,35),(64,'venda',460000.00,100.00,31),(65,'locacao',2200.00,110.00,54),(66,'vendido',480000.00,80.00,8),(67,'venda',750000.00,130.00,53),(68,'locacao',1400.00,75.00,17),(69,'vendido',280000.00,60.00,34),(70,'venda',500000.00,95.00,26),(71,'locacao',2100.00,125.00,32),(72,'vendido',460000.00,85.00,4),(73,'venda',620000.00,110.00,5),(74,'locacao',1500.00,75.00,2),(75,'vendido',550000.00,100.00,6),(76,'venda',580000.00,90.00,42),(77,'locacao',950.00,60.00,7),(78,'vendido',730000.00,140.00,19),(79,'venda',470000.00,85.00,10),(80,'locacao',2200.00,120.00,11),(81,'vendido',560000.00,100.00,13),(82,'venda',800000.00,130.00,9);
/*!40000 ALTER TABLE `imovel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residencial`
--

DROP TABLE IF EXISTS `residencial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `residencial` (
  `fk_id_imovel` int NOT NULL,
  `data_construcao` date NOT NULL,
  `quantidade_quartos` int NOT NULL,
  `quantidade_suites` int NOT NULL,
  `quantidade_salas_estar` int NOT NULL,
  `quantidade_salas_jantar` int NOT NULL,
  `numero_vagas_garagem` int NOT NULL,
  `armario_embutido` tinyint(1) NOT NULL,
  `descricao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`fk_id_imovel`),
  CONSTRAINT `residencial_ibfk_1` FOREIGN KEY (`fk_id_imovel`) REFERENCES `imovel` (`id_imovel`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residencial`
--

LOCK TABLES `residencial` WRITE;
/*!40000 ALTER TABLE `residencial` DISABLE KEYS */;
INSERT INTO `residencial` VALUES (43,'2015-04-10',3,1,1,1,2,1,'Residencial com espaço amplo e bem iluminado.'),(44,'2018-07-15',4,2,1,1,3,1,'Casa moderna com design contemporâneo.'),(45,'2012-09-20',2,1,1,1,1,0,'Aconchegante e ideal para casais.'),(46,'2016-02-25',3,2,1,1,2,1,'Residência familiar com quintal.'),(47,'2019-11-05',4,1,1,2,2,1,'Casa com varanda e área de lazer.'),(48,'2020-03-30',3,1,1,1,2,1,'Próxima a escolas e comércio.'),(49,'2021-06-18',5,3,2,1,4,1,'Luxuosa com piscina e churrasqueira.'),(50,'2014-12-22',2,1,1,1,1,0,'Charmosa e em excelente localização.'),(51,'2018-05-28',3,1,1,1,2,1,'Estilo rústico com muito verde.'),(52,'2013-08-15',4,2,2,1,3,1,'Ideal para famílias grandes.'),(53,'2019-01-10',2,1,1,1,1,0,'Compacta e funcional.'),(54,'2016-04-12',3,1,1,1,2,1,'Espaço gourmet e jardim.'),(55,'2015-03-10',4,2,2,1,3,1,'Residencial com espaço e conforto.'),(56,'2020-09-01',3,1,1,1,2,1,'Perfeita para o dia a dia.'),(57,'2012-10-17',5,3,2,1,4,1,'Com vista panorâmica e piscina.'),(58,'2017-06-20',3,1,1,1,2,1,'Casa acolhedora com lareira.'),(59,'2021-11-10',4,2,2,1,3,1,'Espaço ideal para receber amigos.'),(60,'2014-05-30',2,1,1,1,1,0,'Residencial tranquilo e familiar.'),(61,'2019-02-14',3,1,1,1,2,1,'Moderna e bem planejada.'),(62,'2016-07-25',4,2,2,1,3,1,'Com jardim e espaço para pets.'),(63,'2013-08-15',3,1,1,1,2,1,'Casa charmosa em estilo colonial.'),(64,'2018-10-11',4,1,1,2,2,1,'Espaço amplo com área de lazer.'),(65,'2020-03-30',3,1,1,1,2,1,'Ideal para quem busca tranquilidade.'),(66,'2012-12-10',5,2,2,1,4,1,'Luxo e conforto em um só lugar.'),(67,'2017-04-02',4,2,2,1,3,1,'Residência familiar com área verde.'),(68,'2021-05-17',3,1,1,1,2,1,'Perfeita para o dia a dia.'),(69,'2018-01-25',4,2,1,1,3,1,'Com piscina e área de lazer.'),(70,'2013-09-15',2,1,1,1,1,0,'Aconchegante e funcional.'),(71,'2019-06-20',3,1,1,1,2,1,'Casa com quintal e área verde.'),(72,'2016-11-10',4,2,2,1,3,1,'Ideal para receber amigos.'),(73,'2020-04-12',5,3,2,1,4,1,'Luxuosa e confortável.'),(74,'2012-08-18',3,1,1,1,2,1,'Charmosa e acolhedora.'),(75,'2017-10-05',4,2,2,1,3,1,'Residencial em localização privilegiada.'),(76,'2019-03-22',2,1,1,1,1,0,'Compacta e bem localizada.'),(77,'2018-07-15',3,1,1,1,2,1,'Estilo rústico e aconchegante.'),(78,'2015-06-30',4,2,1,1,3,1,'Espaço amplo e bem iluminado.'),(79,'2021-09-10',5,3,2,1,4,1,'Com área de lazer e piscina.'),(80,'2014-02-20',3,1,1,1,2,1,'Ideal para famílias pequenas.'),(81,'2016-05-12',4,2,1,1,3,1,'Com varanda e churrasqueira.'),(82,'2020-11-18',3,1,1,1,2,1,'Próxima a comércio e escolas.');
/*!40000 ALTER TABLE `residencial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sala_comercial`
--

DROP TABLE IF EXISTS `sala_comercial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sala_comercial` (
  `fk_id_imovel` int NOT NULL,
  `data_construcao` date NOT NULL,
  `quantidade_banheiros` int NOT NULL,
  `quantidade_comodos` int NOT NULL,
  PRIMARY KEY (`fk_id_imovel`),
  CONSTRAINT `sala_comercial_ibfk_1` FOREIGN KEY (`fk_id_imovel`) REFERENCES `imovel` (`id_imovel`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sala_comercial`
--

LOCK TABLES `sala_comercial` WRITE;
/*!40000 ALTER TABLE `sala_comercial` DISABLE KEYS */;
INSERT INTO `sala_comercial` VALUES (23,'2020-01-15',1,3),(24,'2021-06-20',2,4),(25,'2019-08-10',1,2),(26,'2022-02-05',1,3),(27,'2018-11-12',1,5),(28,'2020-03-25',2,4),(29,'2021-07-30',1,3),(30,'2019-09-15',2,2),(31,'2020-05-18',1,3),(32,'2017-10-22',1,4),(33,'2021-01-30',2,5),(34,'2022-04-14',1,3),(35,'2018-12-01',1,4),(36,'2020-07-19',2,2),(37,'2021-03-05',1,3),(38,'2019-06-15',2,5),(39,'2022-11-10',1,3),(40,'2020-02-20',1,4),(41,'2021-05-12',2,2),(42,'2018-03-18',1,3);
/*!40000 ALTER TABLE `sala_comercial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terreno`
--

DROP TABLE IF EXISTS `terreno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `terreno` (
  `fk_id_imovel` int NOT NULL,
  `largura` decimal(10,2) NOT NULL,
  `comprimento` decimal(10,2) NOT NULL,
  `aclive_declive` tinyint(1) NOT NULL,
  PRIMARY KEY (`fk_id_imovel`),
  CONSTRAINT `terreno_ibfk_2` FOREIGN KEY (`fk_id_imovel`) REFERENCES `imovel` (`id_imovel`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terreno`
--

LOCK TABLES `terreno` WRITE;
/*!40000 ALTER TABLE `terreno` DISABLE KEYS */;
INSERT INTO `terreno` VALUES (1,10.00,20.00,0),(2,8.00,18.75,1),(3,12.00,25.00,0),(4,15.00,30.00,1),(5,9.50,19.50,0),(6,11.00,22.00,0),(7,13.00,28.00,1),(8,14.50,29.00,1),(9,10.50,21.00,0),(10,9.75,20.50,1),(11,15.50,31.00,0),(12,10.25,25.50,1),(13,12.50,26.00,0),(14,11.25,24.00,1),(15,14.00,30.50,0),(16,8.50,17.00,1),(17,16.00,33.00,0),(18,10.75,22.50,0),(19,11.50,23.00,1),(20,9.00,18.00,0),(21,13.50,27.00,1),(22,12.75,25.50,0);
/*!40000 ALTER TABLE `terreno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_contratos`
--

DROP TABLE IF EXISTS `view_contratos`;
/*!50001 DROP VIEW IF EXISTS `view_contratos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_contratos` AS SELECT 
 1 AS `id_contrato`,
 1 AS `fk_id_imovel`,
 1 AS `fk_locador_vendedor`,
 1 AS `fk_locatario_comprador`,
 1 AS `tipo_contrato`,
 1 AS `data_contrato`,
 1 AS `data_validade`,
 1 AS `taxa_imobiliaria`,
 1 AS `valor_contrato`,
 1 AS `valor_imobiliaria`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_contratos`
--

/*!50001 DROP VIEW IF EXISTS `view_contratos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_contratos` AS select `c`.`id_contrato` AS `id_contrato`,`c`.`fk_id_imovel` AS `fk_id_imovel`,`c`.`fk_locador_vendedor` AS `fk_locador_vendedor`,`c`.`fk_locatario_comprador` AS `fk_locatario_comprador`,`c`.`tipo_contrato` AS `tipo_contrato`,`c`.`data_contrato` AS `data_contrato`,`c`.`data_validade` AS `data_validade`,`c`.`taxa_imobiliaria` AS `taxa_imobiliaria`,`c`.`valor_contrato` AS `valor_contrato`,round((`c`.`valor_contrato` * (`c`.`taxa_imobiliaria` / 100)),2) AS `valor_imobiliaria` from `contrato` `c` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-27 21:07:16
