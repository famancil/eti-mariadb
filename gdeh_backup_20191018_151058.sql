-- MySQL dump 10.16  Distrib 10.2.19-MariaDB, for Linux (x86_64)
--
-- Host: 172.31.7.3    Database: gdeh
-- ------------------------------------------------------
-- Server version	10.4.7-MariaDB-1:10.4.7+maria~bionic

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `guia`
--

DROP TABLE IF EXISTS `guia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tick_order_date` varchar(45) NOT NULL,
  `folio_sii` varchar(45) DEFAULT NULL,
  `tick_order_code` varchar(15) NOT NULL,
  `tick_tkt_code` varchar(35) NOT NULL,
  `tick_tkt_date` varchar(45) NOT NULL,
  `cliente` varchar(150) DEFAULT NULL,
  `obra` varchar(150) DEFAULT NULL,
  `tick_driv_empl_code` varchar(15) DEFAULT NULL,
  `driver` varchar(100) DEFAULT NULL,
  `tick_ship_plant_code` varchar(15) DEFAULT NULL,
  `tick_ship_plant_loc_code` varchar(15) DEFAULT NULL,
  `tick_truck_code` varchar(15) DEFAULT NULL,
  `lic_num` varchar(45) DEFAULT NULL,
  `tick_typed_time` varchar(45) DEFAULT NULL,
  `tick_proj_code` varchar(45) DEFAULT NULL,
  `tick_delv_addr` varchar(150) DEFAULT NULL,
  `numero_sello` varchar(100) DEFAULT NULL,
  `tick_estado_id` int(11) NOT NULL,
  `guia_estado_id` int(11) NOT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  `lock_flag` int(11) DEFAULT NULL,
  `cust_code` varchar(15) DEFAULT NULL,
  `cust_rut` varchar(10) DEFAULT NULL,
  `cust_addr` varchar(200) DEFAULT NULL,
  `cust_comuna` varchar(45) DEFAULT NULL,
  `cust_ciudad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_guia_tick_estado1_idx` (`tick_estado_id`),
  KEY `fk_guia_guia_estado1_idx` (`guia_estado_id`),
  CONSTRAINT `fk_guia_guia_estado1` FOREIGN KEY (`guia_estado_id`) REFERENCES `guia_estado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_guia_tick_estado1` FOREIGN KEY (`tick_estado_id`) REFERENCES `tick_estado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guia`
--

LOCK TABLES `guia` WRITE;
/*!40000 ALTER TABLE `guia` DISABLE KEYS */;
INSERT INTO `guia` VALUES (3,'2019-08-08','1877015','700396','2007655','2019-08-08','ECHEVERRIA IZQUIERDO INGENIERIA         ','EDIFICIO WALKER MARTINEZ III            ','10462766-8','CARLOS SOLÍS VILVCHES                   ','601','13LR','502','FLPX89','','','LIRA 2015',NULL,1,5,'2019-08-08 03:00:00','2019-10-18 08:57:58',NULL,NULL,NULL,NULL,NULL,NULL),(4,'2019-08-08','1877016','700397','2007655','2019-08-08','ECHEVERRIA IZQUIERDO INGENIERIA         ','EDIFICIO WALKER MARTINEZ III            ','10462766-8','DAVID PIMIENTA LOBOS                    ','601','13LR','504','FPCD99','','','LIRA 2015',NULL,1,5,'2019-08-08 03:00:00','2019-10-18 08:57:58',NULL,NULL,NULL,NULL,NULL,NULL),(55,'2019-10-15',NULL,'103','6756666','2019-10-15','ECHEVERRIA IZQUIERDO INGENIERIA         ','EDIFICIO WALKER MARTINEZ III            ',NULL,'DAVID PIMIENTA LOBOS                    ','601','13LR','506','XML065',NULL,'','LIRA 2015','',1,1,'2019-10-15 08:55:25','2019-10-18 18:01:07',0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `guia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guia_detalle`
--

DROP TABLE IF EXISTS `guia_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guia_detalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intrnl_line_num` varchar(15) DEFAULT NULL,
  `cstmry_delv_qty` varchar(10) DEFAULT NULL,
  `metric_delv_qty` varchar(10) DEFAULT NULL,
  `delv_qty` varchar(10) DEFAULT NULL,
  `qty_um` varchar(45) DEFAULT NULL,
  `rm_slump` varchar(45) DEFAULT NULL,
  `prod_code` varchar(45) DEFAULT NULL,
  `prod_descrip` varchar(150) DEFAULT NULL,
  `guia_id` int(11) NOT NULL,
  `lock_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_guia_detalle_guia_idx` (`guia_id`),
  CONSTRAINT `fk_guia_detalle_guia` FOREIGN KEY (`guia_id`) REFERENCES `guia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guia_detalle`
--

LOCK TABLES `guia_detalle` WRITE;
/*!40000 ALTER TABLE `guia_detalle` DISABLE KEYS */;
INSERT INTO `guia_detalle` VALUES (1,'10','9.81','7.50','7.50',NULL,'UF 4.00','301426',NULL,55,0);
/*!40000 ALTER TABLE `guia_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guia_estado`
--

DROP TABLE IF EXISTS `guia_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guia_estado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(45) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `lock_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guia_estado`
--

LOCK TABLES `guia_estado` WRITE;
/*!40000 ALTER TABLE `guia_estado` DISABLE KEYS */;
INSERT INTO `guia_estado` VALUES (1,'EN_ESPERA','Estado inicial de una guia',NULL),(2,'CANCELADA',NULL,NULL),(3,'SOL_EMISION','Estado alcanzado al terminar el timeout',NULL),(4,'ERROR_EMISION','Informado por iConstruye cuando se produce algun error al momento de emitir la guia',NULL),(5,'EMITIDA_SII',NULL,NULL),(6,'ESCANEADA',NULL,NULL),(7,'REPASADA',NULL,NULL),(8,'ESCANEADA-REPASADA',NULL,NULL),(9,'ERROR_ANULACION',NULL,NULL),(10,'ANULADA',NULL,NULL),(11,'EN_ESPERA_DE_SELLO',NULL,NULL),(13,'EN_ESPERA','Estado inicial de una guia',0),(14,'EN_ESPERA','Estado inicial de una guia',0),(15,'EN_ESPERA','Estado inicial de una guia',0),(16,'EN_ESPERA','Estado inicial de una guia',0),(17,'EN_ESPERA','Estado inicial de una guia',0),(18,'EN_ESPERA','Estado inicial de una guia',0),(19,'EN_ESPERA','Estado inicial de una guia',0);
/*!40000 ALTER TABLE `guia_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guia_estado_opcion`
--

DROP TABLE IF EXISTS `guia_estado_opcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guia_estado_opcion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opcion` varchar(25) DEFAULT NULL,
  `guia_estado_id` int(11) DEFAULT NULL,
  `lock_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `guia_estado_opcion_FK` (`guia_estado_id`),
  CONSTRAINT `guia_estado_opcion_FK` FOREIGN KEY (`guia_estado_id`) REFERENCES `guia_estado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guia_estado_opcion`
--

LOCK TABLES `guia_estado_opcion` WRITE;
/*!40000 ALTER TABLE `guia_estado_opcion` DISABLE KEYS */;
INSERT INTO `guia_estado_opcion` VALUES (1,'Emitir',1,NULL),(2,'Ver Historial',1,NULL),(3,'Ver Historial',2,NULL),(4,'Ver Historial',3,NULL),(5,'Cancelar',3,NULL),(6,'Ver Historial',4,NULL),(7,'Emitir',4,NULL),(8,'Ver Historial',5,NULL),(9,'Ver Guia Electrónica',5,NULL),(10,'Anular',5,NULL),(11,'Ver Historial',6,NULL),(12,'Ver Historial',7,NULL),(13,'Ver Historial',8,NULL),(14,'Ver Historial',9,NULL),(15,'Ver Historial',10,NULL);
/*!40000 ALTER TABLE `guia_estado_opcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guia_historial`
--

DROP TABLE IF EXISTS `guia_historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guia_historial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `observacion` text DEFAULT NULL,
  `guia_id` int(11) NOT NULL,
  `tick_estado_id` int(11) NOT NULL,
  `guia_estado_id` int(11) NOT NULL,
  `lock_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_guia_historial_guia1_idx` (`guia_id`),
  KEY `fk_guia_historial_tick_estado1_idx` (`tick_estado_id`),
  KEY `fk_guia_historial_guia_estado1_idx` (`guia_estado_id`),
  CONSTRAINT `fk_guia_historial_guia1` FOREIGN KEY (`guia_id`) REFERENCES `guia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_guia_historial_guia_estado1` FOREIGN KEY (`guia_estado_id`) REFERENCES `guia_estado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_guia_historial_tick_estado1` FOREIGN KEY (`tick_estado_id`) REFERENCES `tick_estado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guia_historial`
--

LOCK TABLES `guia_historial` WRITE;
/*!40000 ALTER TABLE `guia_historial` DISABLE KEYS */;
INSERT INTO `guia_historial` VALUES (1,'2019-10-06 13:38:30','Maximiliano Rojas(Estrategia TI)',NULL,3,1,1,NULL),(2,'2019-10-06 13:48:30','Maximiliano Rojas(Estrategia TI)',NULL,3,1,3,NULL),(3,'2019-10-06 13:50:30','Maximiliano Rojas(Estrategia TI)',NULL,3,1,5,NULL),(4,'2019-10-06 13:39:30','Maximiliano Rojas(Estrategia TI)',NULL,4,1,1,NULL),(5,'2019-10-06 13:49:30','Maximiliano Rojas(Estrategia TI)',NULL,4,1,3,NULL),(6,'2019-10-06 13:51:30','Maximiliano Rojas(Estrategia TI)',NULL,4,1,5,NULL);
/*!40000 ALTER TABLE `guia_historial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guia_repaso`
--

DROP TABLE IF EXISTS `guia_repaso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guia_repaso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obs` varchar(255) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `hora_carga` varchar(5) DEFAULT NULL,
  `salida_planta` varchar(5) DEFAULT NULL,
  `llegada_obra` varchar(5) DEFAULT NULL,
  `inicio_descarga` varchar(5) DEFAULT NULL,
  `salida_obra` varchar(5) DEFAULT NULL,
  `ingreso_planta` varchar(5) DEFAULT NULL,
  `solicitud_nc` tinyint(4) DEFAULT NULL,
  `rc_nombre` varchar(150) DEFAULT NULL,
  `rc_rut` varchar(10) DEFAULT NULL,
  `rc_recinto` varchar(45) DEFAULT NULL,
  `rc_firmado` tinyint(4) DEFAULT NULL,
  `folios_ok` tinyint(4) DEFAULT NULL,
  `ac_agua` varchar(45) DEFAULT NULL,
  `ac_aditivo` varchar(45) DEFAULT NULL,
  `ac_adit_cant` varchar(45) DEFAULT NULL,
  `ac_solicitante` varchar(150) DEFAULT NULL,
  `ac_firmado` tinyint(4) DEFAULT NULL,
  `dh_m3` varchar(45) DEFAULT NULL,
  `dh_destino_final` varchar(150) DEFAULT NULL,
  `dh_nombre` varchar(150) DEFAULT NULL,
  `dh_firmado` tinyint(4) DEFAULT NULL,
  `bom_cantidad` varchar(15) DEFAULT NULL,
  `bom_cod_bomba` varchar(45) DEFAULT NULL,
  `bom_proveedor` varchar(45) DEFAULT NULL,
  `bom_report` varchar(45) DEFAULT NULL,
  `mue_laboratorio` varchar(45) DEFAULT NULL,
  `mue_numero` varchar(45) DEFAULT NULL,
  `mue_asentamiento` varchar(45) DEFAULT NULL,
  `adi_litros` varchar(45) DEFAULT NULL,
  `adi_tipo` varchar(45) DEFAULT NULL,
  `mail_envio_guia` varchar(150) DEFAULT NULL,
  `camion_devuelto` tinyint(4) DEFAULT NULL,
  `guia_id` int(11) NOT NULL,
  `email_enviado` tinyint(4) DEFAULT 0,
  `lock_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_guia_repaso_guia1_idx` (`guia_id`),
  CONSTRAINT `fk_guia_repaso_guia1` FOREIGN KEY (`guia_id`) REFERENCES `guia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guia_repaso`
--

LOCK TABLES `guia_repaso` WRITE;
/*!40000 ALTER TABLE `guia_repaso` DISABLE KEYS */;
/*!40000 ALTER TABLE `guia_repaso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parametro`
--

DROP TABLE IF EXISTS `parametro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parametro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_centro` varchar(45) DEFAULT NULL,
  `cod_planta` varchar(45) DEFAULT NULL,
  `categoria` varchar(45) DEFAULT NULL,
  `parametro` varchar(45) DEFAULT NULL,
  `valor` varchar(100) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 0,
  `excepcionable` tinyint(1) DEFAULT 1,
  `idParametroRef` varchar(255) DEFAULT '*',
  `lock_flag` int(11) DEFAULT NULL,
  `id_parametro_ref` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=465 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parametro`
--

LOCK TABLES `parametro` WRITE;
/*!40000 ALTER TABLE `parametro` DISABLE KEYS */;
INSERT INTO `parametro` VALUES (2,'*','*','Datos Emisor','rutemisor','9999999-9',1,1,NULL,NULL,NULL),(3,'*','*','Datos Emisor','rznsoc','CEMENTOS BIO BIO S.A.',1,1,NULL,NULL,NULL),(4,'*','*','Datos Emisor','dirorigen','Alfredo Barros Errazuriz #1689',1,1,NULL,NULL,NULL),(5,'*','*','Datos Emisor','cmnaorigen','Providencia',1,1,NULL,NULL,NULL),(6,'*','*','Datos Emisor','Plantaorigen','Lira-601',1,1,NULL,NULL,NULL),(7,'*','*','Aditivos Obra','Aditivo','aditivo 1',1,1,NULL,NULL,NULL),(8,'*','*','Aditivos Obra','Aditivo','aditivo 2',1,1,NULL,NULL,NULL),(9,'*','*','Global','Venta por cuenta','Bio Bio Cementos S.A.',1,1,'*',NULL,NULL),(10,'*','*','Global','Minutos de espera','1',1,1,'*',NULL,NULL),(11,'*','*','Global','Impresora predeterminada','//LaserJet 4MI',1,1,'*',NULL,NULL),(12,'*','*','Global','URL IConstruye','http://10.249.87.202:8090/Iconstruye.DTE.LocalApp.wcfDTE.DTE.svc',1,1,'*',NULL,NULL),(13,'*','*','Global','User IConstruye','CBB-DTE',1,1,'*',NULL,NULL),(14,'*','*','Global','Pass IConstruye','Password',1,1,'*',NULL,NULL),(15,'*','*','Global','Ruta DTE','//DTE/compartido/Generados',1,1,'*',NULL,NULL),(16,'*','*','Global','Ruta escaneados','http://10.249.85.87:8090/wcfDTE/Iconstruye.DTE.LocalApp.wcfDTE.DTE.svc',1,1,'*',NULL,NULL),(17,'*','*','Global','Confirmar antes de solicitar','false',1,1,'*',NULL,NULL),(18,'*','*','Global','Ruta Autenticacion','http://10.249.88.3:8182/cxf/apa',1,1,'*',NULL,NULL),(19,'*','*','System','Ruta WebService','http://172.31.7.3:8082',1,1,'*',NULL,NULL),(20,'*','*','System','Ruta Cliente','http://localhost:4200',1,1,'*',NULL,NULL),(21,'*','*','Filtro','Tiempo Ingreso Guia','12',1,0,'*',NULL,NULL),(22,'*','*','Global','Sello Requerido','false',1,1,'*',NULL,NULL),(23,'*','*','Global','Ruta Guia Electronica','http://10.249.85.101:8091/pdfs/91755000/GuiaDespachoElectronica/',1,1,'*',NULL,NULL),(24,'*','*','System','Ruta Guia Escaneada','/static',1,1,'*',NULL,NULL),(50,'1','1','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(51,'1','2','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(53,'2','4','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(54,'2','5','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(55,'2','6','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(56,'3','7','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(57,'3','8','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(58,'3','9','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(59,'4','10','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(60,'4','11','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(61,'4','12','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(62,'5','13','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(63,'5','14','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(64,'5','15','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(65,'6','16','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(66,'6','17','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(67,'6','18','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(68,'7','19','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(69,'7','20','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(70,'7','21','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(71,'8','22','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(72,'8','23','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(73,'8','24','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(74,'9','25','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(75,'9','26','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(76,'9','27','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(77,'10','28','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(78,'10','29','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(79,'10','30','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(80,'11','31','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(81,'11','32','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(82,'11','33','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(83,'12','34','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(84,'12','35','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(85,'12','36','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(86,'13','37','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(87,'13','38','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(88,'13','39','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(89,'14','40','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(90,'14','41','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(91,'14','42','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(92,'15','43','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(93,'15','44','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(94,'15','45','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(95,'16','46','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(96,'16','47','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(97,'16','48','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(98,'17','49','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(99,'17','50','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(100,'17','51','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(101,'18','52','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(102,'18','53','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(103,'18','54','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(104,'19','55','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(105,'19','56','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(106,'19','57','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(107,'20','58','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(108,'20','59','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(109,'20','60','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(110,'21','61','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(111,'21','62','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(112,'21','63','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(113,'22','64','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(114,'22','65','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(115,'22','66','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(116,'23','67','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(117,'23','68','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(118,'23','69','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(119,'24','70','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(120,'24','71','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(121,'24','72','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(122,'25','73','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(123,'25','74','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(124,'25','75','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(125,'26','76','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(126,'26','77','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(127,'26','78','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(128,'27','79','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(129,'27','80','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(130,'27','81','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(131,'28','82','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(132,'28','83','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(133,'28','84','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(134,'29','85','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(135,'29','86','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(136,'29','87','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(137,'30','88','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(138,'30','89','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(139,'30','90','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(140,'31','91','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(141,'31','92','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(142,'31','93','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(143,'32','94','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(144,'32','95','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(145,'32','96','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(242,'1','1','Excepción','Impresora predeterminada','//LaserJet 4MI14',1,1,'11',NULL,NULL),(243,'1','2','Excepción','Impresora predeterminada','//LaserJet 4MI6',1,1,'11',NULL,NULL),(244,'1','3','Excepción','Impresora predeterminada','//LaserJet 4MI9',1,1,'11',NULL,NULL),(245,'2','4','Excepción','Impresora predeterminada','//LaserJet 4MI7',1,1,'11',NULL,NULL),(246,'2','5','Excepción','Impresora predeterminada','//LaserJet 4MI6',1,1,'11',NULL,NULL),(247,'2','6','Excepción','Impresora predeterminada','//LaserJet 4MI7',1,1,'11',NULL,NULL),(248,'3','7','Excepción','Impresora predeterminada','//LaserJet 4MI6',1,1,'11',NULL,NULL),(249,'3','8','Excepción','Impresora predeterminada','//LaserJet 4MI21',1,1,'11',NULL,NULL),(250,'3','9','Excepción','Impresora predeterminada','//LaserJet 4MI23',1,1,'11',NULL,NULL),(251,'4','10','Excepción','Impresora predeterminada','//LaserJet 4MI10',1,1,'11',NULL,NULL),(252,'4','11','Excepción','Impresora predeterminada','//LaserJet 4MI17',1,1,'11',NULL,NULL),(253,'4','12','Excepción','Impresora predeterminada','//LaserJet 4MI19',1,1,'11',NULL,NULL),(254,'5','13','Excepción','Impresora predeterminada','//LaserJet 4MI13',1,1,'11',NULL,NULL),(255,'5','14','Excepción','Impresora predeterminada','//LaserJet 4MI22',1,1,'11',NULL,NULL),(256,'5','15','Excepción','Impresora predeterminada','//LaserJet 4MI7',1,1,'11',NULL,NULL),(257,'6','16','Excepción','Impresora predeterminada','//LaserJet 4MI12',1,1,'11',NULL,NULL),(258,'6','17','Excepción','Impresora predeterminada','//LaserJet 4MI20',1,1,'11',NULL,NULL),(259,'6','18','Excepción','Impresora predeterminada','//LaserJet 4MI19',1,1,'11',NULL,NULL),(260,'7','19','Excepción','Impresora predeterminada','//LaserJet 4MI11',1,1,'11',NULL,NULL),(261,'7','20','Excepción','Impresora predeterminada','//LaserJet 4MI18',1,1,'11',NULL,NULL),(262,'7','21','Excepción','Impresora predeterminada','//LaserJet 4MI19',1,1,'11',NULL,NULL),(263,'8','22','Excepción','Impresora predeterminada','//LaserJet 4MI14',1,1,'11',NULL,NULL),(264,'8','23','Excepción','Impresora predeterminada','//LaserJet 4MI6',1,1,'11',NULL,NULL),(265,'8','24','Excepción','Impresora predeterminada','//LaserJet 4MI22',1,1,'11',NULL,NULL),(266,'9','25','Excepción','Impresora predeterminada','//LaserJet 4MI24',1,1,'11',NULL,NULL),(267,'9','26','Excepción','Impresora predeterminada','//LaserJet 4MI23',1,1,'11',NULL,NULL),(268,'9','27','Excepción','Impresora predeterminada','//LaserJet 4MI16',1,1,'11',NULL,NULL),(269,'10','28','Excepción','Impresora predeterminada','//LaserJet 4MI7',1,1,'11',NULL,NULL),(270,'10','29','Excepción','Impresora predeterminada','//LaserJet 4MI17',1,1,'11',NULL,NULL),(271,'10','30','Excepción','Impresora predeterminada','//LaserJet 4MI24',1,1,'11',NULL,NULL),(272,'11','31','Excepción','Impresora predeterminada','//LaserJet 4MI17',1,1,'11',NULL,NULL),(273,'11','32','Excepción','Impresora predeterminada','//LaserJet 4MI21',1,1,'11',NULL,NULL),(274,'11','33','Excepción','Impresora predeterminada','//LaserJet 4MI12',1,1,'11',NULL,NULL),(275,'12','34','Excepción','Impresora predeterminada','//LaserJet 4MI11',1,1,'11',NULL,NULL),(276,'12','35','Excepción','Impresora predeterminada','//LaserJet 4MI18',1,1,'11',NULL,NULL),(277,'12','36','Excepción','Impresora predeterminada','//LaserJet 4MI16',1,1,'11',NULL,NULL),(278,'13','37','Excepción','Impresora predeterminada','//LaserJet 4MI19',1,1,'11',NULL,NULL),(279,'13','38','Excepción','Impresora predeterminada','//LaserJet 4MI18',1,1,'11',NULL,NULL),(280,'13','39','Excepción','Impresora predeterminada','//LaserJet 4MI17',1,1,'11',NULL,NULL),(281,'14','40','Excepción','Impresora predeterminada','//LaserJet 4MI10',1,1,'11',NULL,NULL),(282,'14','41','Excepción','Impresora predeterminada','//LaserJet 4MI10',1,1,'11',NULL,NULL),(283,'14','42','Excepción','Impresora predeterminada','//LaserJet 4MI12',1,1,'11',NULL,NULL),(284,'15','43','Excepción','Impresora predeterminada','//LaserJet 4MI18',1,1,'11',NULL,NULL),(285,'15','44','Excepción','Impresora predeterminada','//LaserJet 4MI13',1,1,'11',NULL,NULL),(286,'15','45','Excepción','Impresora predeterminada','//LaserJet 4MI19',1,1,'11',NULL,NULL),(287,'16','46','Excepción','Impresora predeterminada','//LaserJet 4MI13',1,1,'11',NULL,NULL),(288,'16','47','Excepción','Impresora predeterminada','//LaserJet 4MI8',1,1,'11',NULL,NULL),(289,'16','48','Excepción','Impresora predeterminada','//LaserJet 4MI7',1,1,'11',NULL,NULL),(290,'17','49','Excepción','Impresora predeterminada','//LaserJet 4MI11',1,1,'11',NULL,NULL),(291,'17','50','Excepción','Impresora predeterminada','//LaserJet 4MI7',1,1,'11',NULL,NULL),(292,'17','51','Excepción','Impresora predeterminada','//LaserJet 4MI8',1,1,'11',NULL,NULL),(293,'18','52','Excepción','Impresora predeterminada','//LaserJet 4MI19',1,1,'11',NULL,NULL),(294,'18','53','Excepción','Impresora predeterminada','//LaserJet 4MI24',1,1,'11',NULL,NULL),(295,'18','54','Excepción','Impresora predeterminada','//LaserJet 4MI10',1,1,'11',NULL,NULL),(296,'19','55','Excepción','Impresora predeterminada','//LaserJet 4MI17',1,1,'11',NULL,NULL),(297,'19','56','Excepción','Impresora predeterminada','//LaserJet 4MI12',1,1,'11',NULL,NULL),(298,'19','57','Excepción','Impresora predeterminada','//LaserJet 4MI12',1,1,'11',NULL,NULL),(299,'20','58','Excepción','Impresora predeterminada','//LaserJet 4MI19',1,1,'11',NULL,NULL),(300,'20','59','Excepción','Impresora predeterminada','//LaserJet 4MI7',1,1,'11',NULL,NULL),(301,'20','60','Excepción','Impresora predeterminada','//LaserJet 4MI6',1,1,'11',NULL,NULL),(302,'21','61','Excepción','Impresora predeterminada','//LaserJet 4MI24',1,1,'11',NULL,NULL),(303,'21','62','Excepción','Impresora predeterminada','//LaserJet 4MI21',1,1,'11',NULL,NULL),(304,'21','63','Excepción','Impresora predeterminada','//LaserJet 4MI5',1,1,'11',NULL,NULL),(305,'22','64','Excepción','Impresora predeterminada','//LaserJet 4MI21',1,1,'11',NULL,NULL),(306,'22','65','Excepción','Impresora predeterminada','//LaserJet 4MI18',1,1,'11',NULL,NULL),(307,'22','66','Excepción','Impresora predeterminada','//LaserJet 4MI10',1,1,'11',NULL,NULL),(308,'23','67','Excepción','Impresora predeterminada','//LaserJet 4MI11',1,1,'11',NULL,NULL),(309,'23','68','Excepción','Impresora predeterminada','//LaserJet 4MI20',1,1,'11',NULL,NULL),(310,'23','69','Excepción','Impresora predeterminada','//LaserJet 4MI6',1,1,'11',NULL,NULL),(311,'24','70','Excepción','Impresora predeterminada','//LaserJet 4MI5',1,1,'11',NULL,NULL),(312,'24','71','Excepción','Impresora predeterminada','//LaserJet 4MI10',1,1,'11',NULL,NULL),(313,'24','72','Excepción','Impresora predeterminada','//LaserJet 4MI15',1,1,'11',NULL,NULL),(314,'25','73','Excepción','Impresora predeterminada','//LaserJet 4MI17',1,1,'11',NULL,NULL),(315,'25','74','Excepción','Impresora predeterminada','//LaserJet 4MI9',1,1,'11',NULL,NULL),(316,'25','75','Excepción','Impresora predeterminada','//LaserJet 4MI16',1,1,'11',NULL,NULL),(317,'26','76','Excepción','Impresora predeterminada','//LaserJet 4MI15',1,1,'11',NULL,NULL),(318,'26','77','Excepción','Impresora predeterminada','//LaserJet 4MI24',1,1,'11',NULL,NULL),(319,'26','78','Excepción','Impresora predeterminada','//LaserJet 4MI9',1,1,'11',NULL,NULL),(320,'27','79','Excepción','Impresora predeterminada','//LaserJet 4MI13',1,1,'11',NULL,NULL),(321,'27','80','Excepción','Impresora predeterminada','//LaserJet 4MI19',1,1,'11',NULL,NULL),(322,'27','81','Excepción','Impresora predeterminada','//LaserJet 4MI13',1,1,'11',NULL,NULL),(323,'28','82','Excepción','Impresora predeterminada','//LaserJet 4MI15',1,1,'11',NULL,NULL),(324,'28','83','Excepción','Impresora predeterminada','//LaserJet 4MI21',1,1,'11',NULL,NULL),(325,'28','84','Excepción','Impresora predeterminada','//LaserJet 4MI13',1,1,'11',NULL,NULL),(326,'29','85','Excepción','Impresora predeterminada','//LaserJet 4MI13',1,1,'11',NULL,NULL),(327,'29','86','Excepción','Impresora predeterminada','//LaserJet 4MI19',1,1,'11',NULL,NULL),(328,'29','87','Excepción','Impresora predeterminada','//LaserJet 4MI24',1,1,'11',NULL,NULL),(329,'30','88','Excepción','Impresora predeterminada','//LaserJet 4MI18',1,1,'11',NULL,NULL),(330,'30','89','Excepción','Impresora predeterminada','//LaserJet 4MI12',1,1,'11',NULL,NULL),(331,'30','90','Excepción','Impresora predeterminada','//LaserJet 4MI7',1,1,'11',NULL,NULL),(332,'31','91','Excepción','Impresora predeterminada','//LaserJet 4MI16',1,1,'11',NULL,NULL),(333,'31','92','Excepción','Impresora predeterminada','//LaserJet 4MI10',1,1,'11',NULL,NULL),(334,'31','93','Excepción','Impresora predeterminada','//LaserJet 4MI10',1,1,'11',NULL,NULL),(335,'32','94','Excepción','Impresora predeterminada','//LaserJet 4MI14',1,1,'11',NULL,NULL),(336,'32','95','Excepción','Impresora predeterminada','//LaserJet 4MI22',1,1,'11',NULL,NULL),(337,'32','96','Excepción','Impresora predeterminada','//LaserJet 4MI20',1,1,'11',NULL,NULL),(338,'1','1','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(339,'1','2','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(340,'1','3','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(341,'2','4','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(342,'2','5','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(343,'2','6','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(344,'3','7','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(345,'3','8','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(346,'3','9','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(347,'4','10','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(348,'4','11','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(349,'4','12','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(350,'5','13','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(351,'5','14','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(352,'5','15','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(353,'6','16','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(354,'6','17','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(355,'6','18','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(356,'7','19','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(357,'7','20','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(358,'7','21','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(359,'8','22','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(360,'8','23','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(361,'8','24','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(362,'9','25','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(363,'9','26','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(364,'9','27','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(365,'10','28','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(366,'10','29','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(367,'10','30','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(368,'11','31','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(369,'11','32','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(370,'11','33','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(371,'12','34','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(372,'12','35','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(373,'12','36','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(374,'13','37','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(375,'13','38','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(376,'13','39','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(377,'14','40','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(378,'14','41','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(379,'14','42','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(380,'15','43','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(381,'15','44','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(382,'15','45','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(383,'16','46','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(384,'16','47','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(385,'16','48','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(386,'17','49','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(387,'17','50','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(388,'17','51','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(389,'18','52','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(390,'18','53','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(391,'18','54','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(392,'19','55','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(393,'19','56','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(394,'19','57','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(395,'20','58','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(396,'20','59','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(397,'20','60','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(398,'21','61','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(399,'21','62','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(400,'21','63','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(401,'22','64','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(402,'22','65','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(403,'22','66','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(404,'23','67','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(405,'23','68','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(406,'23','69','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(407,'24','70','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(408,'24','71','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(409,'24','72','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(410,'25','73','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(411,'25','74','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(412,'25','75','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(413,'26','76','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(414,'26','77','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(415,'26','78','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(416,'27','79','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(417,'27','80','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(418,'27','81','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(419,'28','82','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(420,'28','83','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(421,'28','84','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(422,'29','85','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(423,'29','86','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(424,'29','87','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(425,'30','88','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(426,'30','89','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(427,'30','90','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(428,'31','91','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(429,'31','92','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(430,'31','93','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(431,'32','94','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(432,'32','95','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(433,'32','96','Excepción','Confirmar antes de solicitar','false',1,1,'17',NULL,NULL),(434,'1','3','Excepción','Minutos de espera','1',1,1,'10',NULL,NULL),(435,'1','1','Excepción','Aditivo','100',1,1,'7',NULL,NULL),(436,'13LR','*','Excepción','Sello Requerido','true',1,1,'22',NULL,NULL),(437,'*','*','System','cmdSqlServer','172.31.8.37',1,1,'*',NULL,NULL),(438,'*','*','System','cmdSqlDb','cmdseries_local',1,1,'*',NULL,NULL),(439,'*','*','System','cmdSqlUser','sa',1,1,'*',NULL,NULL),(440,'*','*','System','cmdSqlPass','ce4chv.,',1,1,'*',NULL,NULL),(443,'*','*','Datos Emisor','giroemis','Comercialización de Cemento, Hormigon y Otros Productos para la construcción',1,1,'*',NULL,NULL),(444,'*','*','Datos Emisor','acteco','036921',1,1,'*',NULL,NULL),(445,NULL,NULL,'Datos Emisor','sucursal','Cementos Bio Bio Santiago',1,1,'*',NULL,NULL),(446,NULL,NULL,'Datos Emisor','cdgsiisucursal','00000000',1,1,'*',NULL,NULL),(447,NULL,NULL,'Datos Emisor','cdgvendedor','10558267',1,1,'*',NULL,NULL),(448,NULL,NULL,'Datos Emisor','ciudadorigen','Santiago',1,1,'*',NULL,NULL),(449,NULL,NULL,'IDDOC','tipodte','52',1,1,'*',NULL,NULL),(450,NULL,NULL,'IDDOC','folio','0000000',0,1,'*',NULL,NULL),(451,NULL,NULL,'IDDOC','fmapago','0',0,1,'*',NULL,NULL),(452,NULL,NULL,'IDDOC','termpagocdg','0208',0,1,'*',NULL,NULL),(453,NULL,NULL,'IDDOC','termpagodias','000',0,1,'*',NULL,NULL),(454,NULL,NULL,'IDDOC','fchvenc','00000000',0,1,'*',NULL,NULL),(455,NULL,NULL,'IDDOC','TRASLADO_BIENES','1',0,1,'*',NULL,NULL),(456,'*','*','Global','ValorUF','28200',1,0,'*',NULL,NULL),(457,'*','*','System','URL Listen','http://172.16.1.2:8080/api',1,1,'*',NULL,NULL),(458,'*','*','System','proWebSqlServer','10.249.41.6',1,1,'*',NULL,NULL),(459,'*','*','System','proWebSqlDb','SolicitudesHormigonQA',1,1,'*',NULL,NULL),(460,'*','*','System','proWebSqlUser','e-cotizacionesope',1,1,'*',NULL,NULL),(461,'*','*','System','proWebSqlPass','cotizacionesope',1,1,'*',NULL,NULL),(462,'*','*','System','URL Correos','http://10.249.88.3:8182/cxf/ZESALES_DELIVERY_OBRA_V3?wsdl',1,1,'*',NULL,NULL),(463,'*','*','PDTE','Timeout','5',1,1,'*',NULL,NULL),(464,'*','*','Global','FirmarJson Action','http://Iconstruye.DTE.Local.App/IDTE/FirmarJson',1,0,'*',NULL,NULL);
/*!40000 ALTER TABLE `parametro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plantas`
--

DROP TABLE IF EXISTS `plantas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plantas` (
  `cod_planta` int(11) NOT NULL,
  `cod_centro` text DEFAULT NULL,
  `nom_planta` text DEFAULT NULL,
  `vigencia` int(11) DEFAULT NULL,
  `lock_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_planta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plantas`
--

LOCK TABLES `plantas` WRITE;
/*!40000 ALTER TABLE `plantas` DISABLE KEYS */;
INSERT INTO `plantas` VALUES (0,'RN00','ZONA NORTE',0,NULL),(1,'RC00','COMMANDSERIES',1,NULL),(2,'RS00','ZONA SUR',0,NULL),(3,'RC01','LIRA',0,NULL),(4,'RN02','ARICA OLD',0,NULL),(5,'RN03','IQUIQUE OLD',0,NULL),(6,'RN01','ANTOFAGASTA OLD',0,NULL),(7,'RN06','COPIAPO OLD',0,NULL),(8,'RN07','LA SERENA OLD',0,NULL),(9,'RO04','CURICO OLD',0,NULL),(10,'RO05','TALCA OLD',0,NULL),(11,'RS03','CHILLAN',1,NULL),(12,'RS06','TEMUCO OLD',0,NULL),(13,'RS05','LOS ANGELES',1,NULL),(14,'RS01','CARRIEL',1,NULL),(16,'RO09','PTO. MONTT OLD',0,NULL),(17,'RS08','VALDIVIA OLD',0,NULL),(22,'RN09','PROY. MINERA LA ESCONDIDA(MEL)',1,NULL),(30,'RN05','CALAMA OLD',0,NULL),(35,'RN14','PROYECTO GABY',0,NULL),(56,'RN08','MEJILLONES OLD',0,NULL),(61,'RX06','SAN BERNARDO',1,NULL),(63,'RS07','VILLARRICA PLANILLON',0,NULL),(67,'RO03','RANCAGUA OLD',0,NULL),(68,'RO12','OSORNO OLD',0,NULL),(70,'RS14','CASTRO',1,NULL),(72,'RC05','LA FARFANA',0,NULL),(78,'RX02','QUILICURA',1,NULL),(79,'RX07','VINA DEL MAR',0,NULL),(80,'RN12','VALLENAR OLD',0,NULL),(81,'RX08','METRO',0,NULL),(90,'RX10','NVO. LONQUEN',1,NULL),(95,'RX11','LA REINA',0,NULL),(101,'RX09','LA POLVORA',0,NULL),(103,'RM00','ZONA CENTRO',0,NULL),(104,'AR02','DRY MIX',0,NULL),(115,'RX14','TABOLANGO',1,NULL),(116,'RS04','ANGOL',1,NULL),(117,'RX13','MELIPILLA',1,NULL),(118,'RX15','COSTANERA',0,NULL),(119,'RX16','PEÑALOLÉN',1,NULL),(120,'RO17','LINARES OLD',0,NULL),(124,'RS02','CORONEL',1,NULL),(125,'TX02','TECNOMIX HUECHURABA',0,NULL),(126,'TX03','TECNOMIX LONQUEN',1,NULL),(127,'TX04','TECNOMIX LA DIVISA',1,NULL),(128,'TX06','TECNOMIX CONCON',1,NULL),(129,'TX05','TECNOMIX ANTOFAGASTA',1,NULL),(130,'TX07','TECNOMIX CONCEPCION',1,NULL),(131,'RO14','TABOLANGO PLAN',0,NULL),(132,'RO19','CONCON PLAN',0,NULL),(133,'RX03','RANCAGUA',1,NULL),(134,'RX04','CURICO',1,NULL),(135,'RX05','TALCA',1,NULL),(136,'RO18','QUINTERO OLD',0,NULL),(138,'RX19','CONCON READYMIX',1,NULL),(139,'RX18','NUEVA LA SERENA',1,NULL),(140,'RO13','MELIPILLA OLD',0,NULL),(141,'RT00','CENTRO TRASPASO',0,NULL),(142,'RX99','CENTRO, VENTA EXTERNA',1,NULL),(143,'RS09','PTO MONTT',1,NULL),(144,'RN01','ANTOFAGASTA',1,NULL),(145,'RN05','CALAMA',1,NULL),(146,'TX89','CENTRO, VENTA INTERNA',1,NULL),(147,'TX97','SUR, VENTA EXTERNA',1,NULL),(148,'RS89','SUR, VENTA INTERNA',1,NULL),(149,'RS06','TEMUCO',1,NULL),(150,'RS12','OSORNO',1,NULL),(151,'RX20','ANDINA',1,NULL),(152,'TX99','CENTRO, VENTA EXTERNA',1,NULL),(153,'RX17','LINARES',1,NULL),(154,'RN02','ARICA',1,NULL),(155,'RN03','IQUIQUE',1,NULL),(156,'RX89','CENTRO, VENTA INTERNA',1,NULL),(157,'RX01','LIRA',1,NULL),(158,'RS04','ANGOL OLD',0,NULL),(159,'RN06','COPIAPO',1,NULL),(160,'RS08','VALDIVIA',1,NULL),(161,'TX11','TECNOMIX LLAY LLAY',1,NULL),(162,'RN07','LA SERENA',1,NULL),(163,'RN12','VALLENAR',1,NULL),(164,'RS14','CASTRO OLD',0,NULL),(166,'TX87','SUR, VENTA INTERNA',1,NULL),(170,'TX88','NORTE, VENTA INTERNA',1,NULL),(171,'TX98','NORTE, VENTA EXTERNA',1,NULL),(173,'RS99','SUR, VENTA EXTERNA',1,NULL),(176,'RN89','NORTE, VENTA INTERNA',1,NULL),(177,'RN99','NORTE, VENTA EXTERNA',1,NULL),(178,'RS17','BOCA SUR',1,NULL),(179,'RS07','VILLARRICA',1,NULL),(180,'RS15','CARAMPAGUE',1,NULL),(181,'RS13','LAJA',1,NULL),(182,'RN15','CASERONES',1,NULL),(183,'RX21','SANTA CRUZ',1,NULL),(184,'TX15','LOS ALAMOS',1,NULL),(185,'RS16','TALCAHUANO',1,NULL),(186,'RN14','ANTUCOYA',1,NULL),(187,'RN17','MEJILLONES SIERRA GORDA',1,NULL),(188,'RX09','SAN ANTONIO',1,NULL),(189,'RS10','CABRERO',1,NULL),(190,'RN16','PROYECTO X',1,NULL);
/*!40000 ALTER TABLE `plantas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rol` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mod_codigo` varchar(255) DEFAULT NULL,
  `mod_nombre` varchar(255) DEFAULT NULL,
  `opc_codigo` varchar(255) DEFAULT NULL,
  `opc_nombre` varchar(255) DEFAULT NULL,
  `rol_codigo` varchar(255) DEFAULT NULL,
  `rol_name` varchar(255) DEFAULT NULL,
  `valor_dom` varchar(255) DEFAULT NULL,
  `usuario_id` bigint(20) DEFAULT NULL,
  `lock_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd2sr59c3mhscbo3xnhx6qfmha` (`usuario_id`),
  CONSTRAINT `FKd2sr59c3mhscbo3xnhx6qfmha` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'164','Formulario de Ingreso de Muestras','561','Visualizar','118','Usuario','08CG',1,NULL),(2,'164','Formulario de Ingreso de Muestras','561','Visualizar','118','Usuario','08CH',1,NULL),(3,'164','Formulario de Ingreso de Muestras','561','Visualizar','118','Usuario','13LR',1,NULL),(4,'164','Formulario de Ingreso de Muestras','561','Visualizar','118','Usuario','13LO',1,NULL),(5,'164','Formulario de Ingreso de Muestras','561','Visualizar','118','Usuario','02RR',1,NULL),(6,'164','Formulario de Ingreso de Muestras','562','Insertar','118','Usuario','08CG',1,NULL),(7,'164','Formulario de Ingreso de Muestras','562','Insertar','118','Usuario','08CH',1,NULL),(8,'164','Formulario de Ingreso de Muestras','562','Insertar','118','Usuario','13LR',1,NULL),(9,'164','Formulario de Ingreso de Muestras','562','Insertar','118','Usuario','13LO',1,NULL),(10,'164','Formulario de Ingreso de Muestras','562','Insertar','118','Usuario','02RR',1,NULL),(11,'164','Formulario de Ingreso de Muestras','563','Modificar','118','Usuario','08CG',1,NULL),(12,'164','Formulario de Ingreso de Muestras','563','Modificar','118','Usuario','08CH',1,NULL),(13,'164','Formulario de Ingreso de Muestras','563','Modificar','118','Usuario','13LR',1,NULL),(14,'164','Formulario de Ingreso de Muestras','563','Modificar','118','Usuario','13LO',1,NULL),(15,'164','Formulario de Ingreso de Muestras','563','Modificar','118','Usuario','02RR',1,NULL),(16,'165','Alertas','565','Visualizar','118','Usuario','08CG',1,NULL),(17,'165','Alertas','565','Visualizar','118','Usuario','08CH',1,NULL),(18,'165','Alertas','565','Visualizar','118','Usuario','13LR',1,NULL),(19,'165','Alertas','565','Visualizar','118','Usuario','13LO',1,NULL),(20,'165','Alertas','565','Visualizar','118','Usuario','02RR',1,NULL),(21,'162','Acceso a Mantenedores','559','Visualizar','119','Consulta','08CG',1,NULL),(22,'162','Acceso a Mantenedores','559','Visualizar','119','Consulta','08CH',1,NULL),(23,'162','Acceso a Mantenedores','559','Visualizar','119','Consulta','13LR',1,NULL),(24,'162','Acceso a Mantenedores','559','Visualizar','119','Consulta','13LO',1,NULL),(25,'162','Acceso a Mantenedores','559','Visualizar','119','Consulta','02RR',1,NULL),(26,'163','Visualización de Reportes','560','Visualizar','119','Consulta','08CG',1,NULL),(27,'163','Visualización de Reportes','560','Visualizar','119','Consulta','08CH',1,NULL),(28,'163','Visualización de Reportes','560','Visualizar','119','Consulta','13LR',1,NULL),(29,'163','Visualización de Reportes','560','Visualizar','119','Consulta','13LO',1,NULL),(30,'163','Visualización de Reportes','560','Visualizar','119','Consulta','02RR',1,NULL),(31,'165','Alertas','565','Visualizar','119','Consulta','08CG',1,NULL),(32,'165','Alertas','565','Visualizar','119','Consulta','08CH',1,NULL),(33,'165','Alertas','565','Visualizar','119','Consulta','13LR',1,NULL),(34,'165','Alertas','565','Visualizar','119','Consulta','13LO',1,NULL),(35,'165','Alertas','565','Visualizar','119','Consulta','02RR',1,NULL);
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tick_estado`
--

DROP TABLE IF EXISTS `tick_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tick_estado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(45) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `lock_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tick_estado`
--

LOCK TABLES `tick_estado` WRITE;
/*!40000 ALTER TABLE `tick_estado` DISABLE KEYS */;
INSERT INTO `tick_estado` VALUES (1,'online','Prueba de Ticket en linea.',NULL),(2,'online','Prueba de Ticket en linea.',0),(3,'online','Prueba de Ticket en linea.',0),(4,'online','Prueba de Ticket en linea.',0),(5,'online','Prueba de Ticket en linea.',0),(6,'online','Prueba de Ticket en linea.',0),(7,'online','Prueba de Ticket en linea.',0),(8,'online','Prueba de Ticket en linea.',0),(9,'online','Prueba de Ticket en linea.',0),(10,'online','Prueba de Ticket en linea.',0);
/*!40000 ALTER TABLE `tick_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `key_id` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `lock_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Maximiliano Rojas(Estrategia TI)',NULL,NULL,'maximiliano.rojas@grupocbb.cl',NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_centro`
--

DROP TABLE IF EXISTS `usuario_centro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_centro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_centro` varchar(255) DEFAULT NULL,
  `usuario_id` bigint(20) DEFAULT NULL,
  `lock_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKesmk4uo5rb8f3kv3401fx7yqv` (`usuario_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_centro`
--

LOCK TABLES `usuario_centro` WRITE;
/*!40000 ALTER TABLE `usuario_centro` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_centro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'gdeh'
--

--
-- Dumping routines for database 'gdeh'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-18 15:11:09
