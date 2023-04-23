CREATE DATABASE  IF NOT EXISTS `marcela_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `marcela_db`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: marcela_db
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `100 - personal`
--

DROP TABLE IF EXISTS `100 - personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `100 - personal` (
  `Legajo` varchar(45) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Segundo nombre` varchar(45) DEFAULT NULL,
  `Apellido paterno` varchar(45) NOT NULL,
  `Apellido materno` varchar(45) DEFAULT NULL,
  `Sexo` varchar(45) NOT NULL,
  `Estado Civil` varchar(45) DEFAULT NULL,
  `RUT` varchar(45) NOT NULL,
  `Fecha de nacimiento` datetime DEFAULT NULL,
  `Domicilio particular` varchar(45) DEFAULT NULL,
  `Tel fijo particular` varchar(45) DEFAULT NULL,
  `Tel cel particular` varchar(45) DEFAULT NULL,
  `Tel cel asignado` varchar(45) DEFAULT NULL,
  `Cargo` int NOT NULL,
  `Correo electrónico asignado` varchar(45) DEFAULT NULL,
  `Correo electrónico part` varchar(45) DEFAULT NULL,
  `Previsión social` varchar(45) DEFAULT NULL,
  `AFP` varchar(45) DEFAULT NULL,
  `Fecha de Ingreso` datetime NOT NULL,
  `Fecha finiquito` datetime DEFAULT NULL,
  `Tipo contrato` varchar(45) NOT NULL,
  `Foto carnet` varchar(45) DEFAULT NULL,
  `Carnet de identidad` varchar(45) DEFAULT NULL,
  `Talla polera` varchar(45) DEFAULT NULL,
  `Talla pantalón` varchar(45) DEFAULT NULL,
  `Talla calzado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Legajo`),
  KEY `FK_personal_cargo_idx` (`Cargo`),
  CONSTRAINT `FK_personal_cargo` FOREIGN KEY (`Cargo`) REFERENCES `101 - cargos` (`ID Cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `100 - personal`
--

LOCK TABLES `100 - personal` WRITE;
/*!40000 ALTER TABLE `100 - personal` DISABLE KEYS */;
INSERT INTO `100 - personal` VALUES ('EC00086','Estanislao','José','Yelich','Fuentes','M','C','10.806.942-2','1966-12-04 00:00:00','Alejandro Gidi,Psje Aurora Chile Nº20,Linares','','98046138','75001717',5,'','','Fon','','2010-03-15 00:00:00','2011-12-30 00:00:00','Indefinido','','','','',''),('EC00116','Rafael','Patricio','Parraguéz','Madrid','M','','09.587.029-5','1963-07-22 00:00:00','Catedral 5030, Quinta Normal','7759381','','',16,'','','Fon','Smar','2009-03-01 00:00:00','2012-08-31 00:00:00','Indefinido','','','XXL','46','56'),('EC00140','Willer','','Surco','Flores','M','C','12.686.891-k','1974-07-21 00:00:00','Ferrocarril 359, Ovalle','','91402654','',5,'','','','','2002-12-04 00:00:00','2013-11-30 00:00:00','','','','','',''),('EC00221','Rene','Abraham','Rocha','Muñoz','M','C','10.199.787-1','1966-03-06 00:00:00','San Ignacio de Loyola 1876, Santiago Centro','','73687288','',5,'','','','','2011-12-20 00:00:00','2013-06-30 00:00:00','','','','','',''),('EC00523','Ernesto','Segundo','Plaza','Mejías','M','C','10.393.683-7','1967-01-27 00:00:00','Padre Diego de Rosales 1568,Santiago','','93143750','82594385',4,'eplaza@ectel.cl','','CONS','CUP','2005-12-05 00:00:00','2014-01-31 00:00:00','Indefinido','','','M','41','46'),('EC00582','Rafael ','Humberto','Ortiz','Bustamante','M','C','63044490','1951-11-03 00:00:00','Los Jazmines 10471, La Granja','','76683804','',5,'','','','','2013-03-01 00:00:00','2013-07-31 00:00:00','','','','','',''),('EC00655','Pamela','Andrea','Vadell','Rivera','F','D','09.676.795-1','1974-10-12 00:00:00','Mar Adentro 5441,Cond. Plaza Quilín,Peñ.','7617519','77','',21,'pvadell@ectel.cl','','CruzB','Hab','2009-04-08 00:00:00','2011-12-30 00:00:00','Indefinido','','','M','',''),('EC00809','Jaime ','Luis','Mella','Vidal','M','C','13.003.015-7','1975-12-02 00:00:00','Los Chercanes 2143, Huechuraba','','93411305','',5,'','','Fon','Prov','2008-12-17 00:00:00','2011-08-29 00:00:00','Indefinido','','','M','40','L'),('EC01139','Orlando','Humberto','Olave','Córdova','M','C','10.206.026-1','1964-10-04 00:00:00','Av. Ferrocarril 7973 Lo Espejo','5644202','95488337','79771654',22,'','','Fon','Ing','2008-06-01 00:00:00','2011-12-30 00:00:00','Indefinido','','','S','39','44'),('EC01414','Victor','Guillermo','Miranda','Contreras','M','C','80277232','1961-01-11 00:00:00','Psje.Valdivia 1186, Pob.Fco. Infante, Renca','6412385','99642580','',5,'','','','','2011-10-03 00:00:00','2013-07-31 00:00:00','','','','','',''),('EC01511','Magdalena','del Carmen','Aros','Matus','F','S','13.896.233-4','1980-02-11 00:00:00','Santa Cecilia 998, Pobl. San Pablo, Pudahuel','81318512','','',12,'maros@ectel.cl','','Fon','Hab','2009-09-01 00:00:00','2012-07-03 00:00:00','A plazo','','','L blusa','M polera',''),('EC01651','Jonathan','Carlos','Martínez','Gordillo','M','C','13.444.052-k','1978-03-22 00:00:00','Concordia 4417, La Florida','9825990','','75001722',5,'jmartinez@ectel.cl','','Fon','Hab','2009-12-22 00:00:00','2014-04-08 00:00:00','Indefinido','','','XL','44','48'),('EC01856','Francisco','Javier','Parra','Uribe','M','S','15.334.312-8','1983-09-18 00:00:00','Andes 4778, Quinta Normal','7755944','76642923','',5,'','','Fon','Hab','2010-06-14 00:00:00','2011-10-17 00:00:00','A plazo','','','L','40','46'),('EC01880','Rody','Rafael','Barrios','Carrere','M','C','09.929.458-2','1969-08-11 00:00:00','Ramaditas 205 Cerro Ramaditas,Valparaíso','','62499429','76094548',7,'rbarrios@ectel.cl','','Fon','Prov','2010-04-19 00:00:00','2012-05-31 00:00:00','A plazo','','','M','41',''),('EC01910','Lorenzo','Mauricio','Ojeda','Soto','M','S','15.650.157-3','1983-06-27 00:00:00','Portugal 564, Depto. 1212, Santiago Centro','','83804737','62085782',10,'lojeda@ectel.cl','','Fon','','2010-06-07 00:00:00','2011-11-17 00:00:00','A plazo','','','L','42','48'),('EC01929','Paolo','Giovanni','Viacava','Barrios','M','S','18.060.163-5','1992-02-15 00:00:00','San Pablo 1825, Torre E, Depto.703, Santiago','6964572','62503245','',8,'','splth2@hotmail.com','Fon','Hab','2010-06-30 00:00:00','2011-12-30 00:00:00','A plazo','','','XL','46','48'),('EC01937','Miguel','Alejandro','Vargas','Celis','M','S','14.013.773-1','1981-12-18 00:00:00','Barón Pierre de Couvertin 77,D102,stgo.','','87607750','',19,'mvargas@ectel.cl','','','','2010-06-26 00:00:00','2012-04-16 00:00:00','Indefinido','','','L','44','48'),('EC01945','Ernesto','','Montesino','Velázquez','M','S','23.350.096-8','1974-06-04 00:00:00','Av. Ricardo Cumming 1355, Depto 71, Stgo.','','74389688','',10,'emontesino@ectel.cl','','','Hab','2010-07-19 00:00:00','2013-05-26 00:00:00','Indefinido','','','M','41',''),('EC01996','Alfredo','Raúl','Bravo','','M','C','23.500.480-1','1963-11-25 00:00:00','Coquimbo 56, Depto.704, Torre B, Santiago','9856796','','76686267',10,'abravo@ectel.cl','','','','2010-06-13 00:00:00','2011-08-31 00:00:00','Indefinido','','','','',''),('EC02070','Patricio','Pascual','Burgos ','Burgos','M','C','06.624.274-9','1954-12-25 00:00:00','Vicuña Mackenna 8692, Santiago','4921086','','',5,'','','','','2010-06-01 00:00:00','2013-06-30 00:00:00','Indefinido','','','','',''),('EC02151','Nelson','Gustavo','González','Rojas','M','S','18.093.612-2','1992-02-16 00:00:00','Centenario 2 Abatte Molina 2100, Colina','8445606','99228014','',5,'','','Fon','Hab','2011-03-01 00:00:00','2013-06-15 00:00:00','A plazo','','','M','40','44'),('EC02178','Ramón','Andrés','Olivares','Pereira','M','S','15.894.016-7','1985-01-16 00:00:00','Tercera Av. 1875, San Miguel','','95458512','',5,'','','Banm','pro','2011-03-01 00:00:00','2011-10-17 00:00:00','A plazo','','','L','43','48'),('EC02186','Ana','Karime','Buhadla','López','F','S','17.537.536-8','1989-02-20 00:00:00','Manuel Rodriguez 867, Depto.1702, Stgo.Centro','','78130290','98700168',23,'abuhadla@ectel.cl','','Chuq','','2011-05-09 00:00:00','2012-03-08 00:00:00','A plazo','','','M','38','42'),('EC02216','Matias','Nicolas','Campos','Trujillo','M','S','18.347.388-3','1993-04-20 00:00:00','Juan Rulfo 896 - Padre Hurtado','','8112636','',5,'','','','','2011-09-01 00:00:00','2013-04-15 00:00:00','','','','','',''),('EC02224','Sebastián','Segundo ','Campos','Espinoza','M','S','17.411.180-4','1989-07-18 00:00:00','Av. San Guillermo 0472 - Puente Alto','','95737947','',6,'','','','','2011-09-01 00:00:00','2013-06-30 00:00:00','','','','','',''),('EC02348','Roberto','Alexis','Hanley','Rengifo','M','S','23.531.364-2','1981-08-07 00:00:00','Coquimbo 56, Depto.604, Torre B, Santiago','','84088291','79772539',9,'rhanley@ectel.cl','','','','2010-11-15 00:00:00','2011-06-08 00:00:00','A plazo','','','L','42','32-34'),('EC02364','Carlos','Antonio','Morales','Díaz','M','S','14.365.331-5','1982-06-12 00:00:00','Salvador Gutiérrez 6194, Qta. Normal','','90916793','',5,'cmorales@ectel.cl','','Banm','Hab','2011-02-15 00:00:00','2013-08-05 00:00:00','A plazo','','','S','41','44'),('EC02372','Jorge','Cristián','Maturana','Schnaidt','M','C','07.996.066-7','1957-05-22 00:00:00','Berlin 843, Depto.302-C, San Miguel','','86824621','96997026',15,'jmaturana@ectel.cl','jorcrimat@gmail.com','fon','prov','2011-12-13 00:00:00','2012-04-30 00:00:00','A plazo','','','L','41','52'),('EC02380','Juan','Andrés','Necolhueque','Oyarce','M','S','16.345.370-3','1986-05-15 00:00:00','Calle 3 Nº 5015, Qta. Normal','','931443305','',5,'','','','','2011-08-22 00:00:00','2012-06-29 00:00:00','','','','','',''),('EC02542','Marcelo','Alejandro','Zenteno','Contreras','M','','13.282.085-6','1977-04-19 00:00:00','Av. Argentina 917, Maipú','8911736','96422393','82307690',8,'mzenteno@ectel.cl','','Banm','Prov','2009-06-01 00:00:00','2011-07-20 00:00:00','Indefinido','','','XL','44','48'),('EC02569','Felipe','Ignacio','Tapia ','Torres','M','S','17.325.753-8','1989-12-11 00:00:00','Calle del Rodeo 338, Quilicura','','84549323','',5,'','','','','2011-10-01 00:00:00','2012-07-30 00:00:00','','','','','',''),('EC02577','Victoria','Gorety','Salvo','Benavides','F','S','17.332.701-3','1990-01-20 00:00:00','Queilen 01083 Depto. 23 Puente Alto','','82662359','',5,'','','','','2011-10-01 00:00:00','2012-10-26 00:00:00','','','','','',''),('EC02593','José','Miguel','Catalán','Garrido','M','S','18.072.855-4','1990-07-12 00:00:00','Av. La Paz 477','','89877822','',5,'jcatalan@ectel.cl','','','','2011-10-01 00:00:00','2012-07-04 00:00:00','','','','','',''),('EC02623','Sebastián','Alejandro','Fuenzalida','Sabando','M','S','16.797.096-6','1987-09-18 00:00:00','Pje. Leopoldo Castedo 1078 Quilicura','','76905463','',5,'','','','','2011-10-24 00:00:00','2012-04-30 00:00:00','','','','','',''),('EC02666','Héctor','Rubén','Tobar','Pinochet','M','C','90374745','1960-11-08 00:00:00','Zambia 1510, Cerro Navia','','74720772','',5,'','','','','2011-11-15 00:00:00','2013-05-13 00:00:00','','','','','',''),('EC02712','César','','Salinas ','Cortes','M','S','22.546.695-5','1977-02-28 00:00:00','Villaseca750, Depto.101, Ñuñoa','','75210935','',5,'','','','','2011-11-07 00:00:00','2013-05-13 00:00:00','','','','','',''),('EC02720','Edgar','Alejandro','Miranda','Castro','M','S','17.770.257-9','1991-05-13 00:00:00','Atagualpa 3631 - Renca','6410549','79337696','',5,'','','','','2011-11-01 00:00:00','2013-07-31 00:00:00','','','','','',''),('EC02739','Leonardo','Rodrigo','Riquelme','Gutierrez','M','C','10.874.064-7','1970-12-20 00:00:00','Las Golondrinas 0285, Puente Alto','','79048776','',5,'','','','','2011-12-01 00:00:00','2012-02-28 00:00:00','','','','','',''),('EC02828','Giselle','','Sanzana','Rojas','F','C','07.935.780-4','1965-12-27 00:00:00','Psje. Siena 8998 Casa F, Peñalolén','7913103','9/3253786','',21,'gsanzana@ectel.cl','','Vida 3','ING','2012-01-05 00:00:00','2013-11-18 00:00:00','A plazo','','','XL','46','39'),('EC02909','Gustavo','','Contreras','Vallejos','M','C','15.327.105-4','1982-03-18 00:00:00','Casas de Lo Espejo 2796, Maipu','8955059','8/1573034','8/2594386',9,'gcontreras@ectel.cl','','Banm','Provida','2012-04-02 00:00:00','2013-09-16 00:00:00','A plazo','','','M','44','42'),('EC02917','Roxana','','Espíndola','Hun','F','S','13.974.778-K','1981-01-17 00:00:00','Alonso de Ercilla 7545 dpto 306, La Florida','5130256','6/7080377','8/2934489',11,'respindola@ectel.cl','','fon','Provida','2012-05-02 00:00:00','2013-09-30 00:00:00','A plazo','','','S','38','38'),('EC06548','Cristóbal','Diego A.','Alday','Alvarado','M','S','15.517.506-0','1983-04-22 00:00:00','Manuel Antonio Tocornal 383,Depto.404,Stgo.','','82787546','',10,'calday@ectel.cl','','','Cup','2009-03-16 00:00:00','2011-06-15 00:00:00','Indefinido','','','XL','42','54/56'),('EC07854','Gino','Leonardo','Nobili','Lucero','M','','09.152.214-4','1962-01-09 00:00:00','Camino Los Maitenes s/n, Sta.Rita,Pirque','','74535677','',17,'gnobili@ectel.cl','','Fon','Hab','2009-04-06 00:00:00','2012-06-30 00:00:00','Indefinido','','','XL','41',''),('EC12548','Jorge','Esteban','Soto','Pacheco','M','','08.471.818-1','1957-11-18 00:00:00','Las Américas 578, Chillán','','88993725','',5,'','','Fon','Sant','2009-03-01 00:00:00','2013-07-19 00:00:00','Indefinido','','','','',''),('EC85472','Yinet','','Rodríguez','Suárez','F','C','23.988.179-3','1987-11-18 00:00:00','Vicente Valdés 87, dpto 85, La Florida','7235860','8/6012233','NO',10,'yrodriguez@ectel.cl','','Vida 3','Modelo ','2012-07-17 00:00:00','2013-05-02 00:00:00','A plazo','','','S/M','40/42','37'),('EC9000K','María','','Pardilla','Garrido','F','S','24.068.421-7','1983-09-24 00:00:00','Lira 499 Depto. 303, Santiago','','7/3800207','',10,'mpardilla@ectel.cl','','Fon','Modelo','2012-07-24 00:00:00','2013-11-18 00:00:00','A plazo','','','S','38','38'),('SR00019','Jocelyn','Andrea','Gómez','Sandoval','F','S','16.909.939-1','1988-07-29 00:00:00','Psje.Flamenco 0750,Puente Alto','','97698923','',13,'jgomez@ectel.cl','','','','2009-08-03 00:00:00','2011-11-28 00:00:00','Indefinido','','','XL','',''),('SR00175','Giovanna','','Cancino','Rivas','F','','12.410.076-3','1973-10-10 00:00:00','Las Quinchas 10886, La Florida','2810525','62361916','',18,'','','Fon','Hab','2008-06-16 00:00:00','2011-06-15 00:00:00','Indefinido','','','M','',''),('SR00302','María','Soledad','Cruz','Astorga','F','','08.430.427-1','1957-07-28 00:00:00','Fabián Oyanedel 5440 Huechuraba','','90877823','',11,'scruz@ectel.cl','','Fon','Cup','2009-12-14 00:00:00','2012-09-30 00:00:00','Indefinido','','','XL','','');
/*!40000 ALTER TABLE `100 - personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `101 - cargos`
--

DROP TABLE IF EXISTS `101 - cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `101 - cargos` (
  `ID Cargo` int NOT NULL AUTO_INCREMENT,
  `Nombre cargo` varchar(45) NOT NULL,
  `Perfil de responsabilidad` varchar(45) DEFAULT NULL,
  `Area` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID Cargo`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `101 - cargos`
--

LOCK TABLES `101 - cargos` WRITE;
/*!40000 ALTER TABLE `101 - cargos` DISABLE KEYS */;
INSERT INTO `101 - cargos` VALUES (1,'Gerente Técnico','','Gerencia'),(2,'Gerente de Administración y Finanzas','','Administracion'),(3,'Gerente General','','Gerencia'),(4,'Jefe de Instalaciones','','Técnica'),(5,'Técnico Instalador','','Técnica'),(6,'Técnico Integrador','','Técnica'),(7,'Jefe área eléctrica','','Técnica'),(8,'Técnico eléctrico','','Técnica'),(9,'Ingeniero eléctrico','','Técnica'),(10,'Ingeniero de proyectos','','Técnica'),(11,'Administrativo','','Administracion'),(12,'Contador','','Administracion'),(13,'Asistente administrativa','','Administracion'),(14,'Gerente Comercial','','Gerencia'),(15,'Jefe de proyectos','','Técnica'),(16,'Chofer','','Técnica'),(17,'Encargado de Bodega','','Técnica'),(18,'Administrativo aseo','','Administracion'),(19,'Dibujante','','Técnica'),(20,'Diseñador','','Técnica'),(21,'Ingeniero calculista','','Técnica'),(22,'Seguridad','','Administracion'),(23,'Experto en prevención de riesgos','','SSO'),(24,'Gerente de Operaciones','','Gerencia'),(25,'Supervisor de obra','','Técnica');
/*!40000 ALTER TABLE `101 - cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `102 - contratos`
--

DROP TABLE IF EXISTS `102 - contratos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `102 - contratos` (
  `IDContrato` int NOT NULL AUTO_INCREMENT,
  `Legajo` varchar(45) NOT NULL,
  `Tipo contrato` varchar(45) NOT NULL,
  `Contrato` varchar(45) NOT NULL,
  `Fecha inicio` datetime DEFAULT NULL,
  `Fecha fin` datetime DEFAULT NULL,
  `Observaciones` longtext,
  PRIMARY KEY (`IDContrato`),
  KEY `FK_legajo_idx` (`Legajo`),
  CONSTRAINT `FK_legajo` FOREIGN KEY (`Legajo`) REFERENCES `100 - personal` (`Legajo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `102 - contratos`
--

LOCK TABLES `102 - contratos` WRITE;
/*!40000 ALTER TABLE `102 - contratos` DISABLE KEYS */;
INSERT INTO `102 - contratos` VALUES (1,'EC00086','A plazo','','2005-03-07 00:00:00','2005-04-07 00:00:00','Primer contrato'),(2,'EC00086','Modificación','','2005-04-07 00:00:00','2005-04-08 00:00:00','Convierte el contrato de trabajo en indefinido'),(4,'EC00086','Anexo','','2006-03-06 00:00:00','2005-04-09 00:00:00','Modificación de jornada y trabajo en Mina Los Pelambres'),(5,'EC00086','Modificación','','2008-06-01 00:00:00','2005-04-10 00:00:00','Modificación de domicilio y remuneraciones'),(7,'EC00086','Anexo','','2009-07-23 00:00:00','2005-04-11 00:00:00','Anexo trabajos en Minera Meridian'),(8,'EC00086','Modificación','','2011-02-01 00:00:00','2005-04-12 00:00:00','Exclusión de limitación de jornada según art.22');
/*!40000 ALTER TABLE `102 - contratos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `103 - recursos asignados`
--

DROP TABLE IF EXISTS `103 - recursos asignados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `103 - recursos asignados` (
  `ID Asignacion` int NOT NULL AUTO_INCREMENT,
  `Legajo` varchar(45) NOT NULL,
  `Recurso asignado` varchar(45) NOT NULL,
  `Fecha asignación` datetime NOT NULL,
  `Fecha devolución` datetime DEFAULT NULL,
  `Comentarios` longtext,
  PRIMARY KEY (`ID Asignacion`),
  KEY `FK_legajo_idx` (`Legajo`),
  KEY `FK_recursos_legajo_idx` (`Legajo`),
  CONSTRAINT `FK_recursos_legajo` FOREIGN KEY (`Legajo`) REFERENCES `100 - personal` (`Legajo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `103 - recursos asignados`
--

LOCK TABLES `103 - recursos asignados` WRITE;
/*!40000 ALTER TABLE `103 - recursos asignados` DISABLE KEYS */;
/*!40000 ALTER TABLE `103 - recursos asignados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `104 - amonestaciones`
--

DROP TABLE IF EXISTS `104 - amonestaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `104 - amonestaciones` (
  `ID Amonestación` int NOT NULL AUTO_INCREMENT,
  `Legajo` varchar(45) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Causa` longtext NOT NULL,
  PRIMARY KEY (`ID Amonestación`),
  KEY `FK_amonestaciones_legajo_idx` (`Legajo`),
  CONSTRAINT `FK_amonestaciones_legajo` FOREIGN KEY (`Legajo`) REFERENCES `100 - personal` (`Legajo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `104 - amonestaciones`
--

LOCK TABLES `104 - amonestaciones` WRITE;
/*!40000 ALTER TABLE `104 - amonestaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `104 - amonestaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `105 - registro entrega das`
--

DROP TABLE IF EXISTS `105 - registro entrega das`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `105 - registro entrega das` (
  `ID entrega` int NOT NULL AUTO_INCREMENT,
  `Legajo` varchar(45) NOT NULL,
  `Registro de entrega DAS` longtext NOT NULL,
  `Fecha entrega DAS` datetime DEFAULT NULL,
  PRIMARY KEY (`ID entrega`),
  KEY `FK_RegEntDAS_legajo_idx` (`Legajo`),
  CONSTRAINT `FK_RegEntDAS_legajo` FOREIGN KEY (`Legajo`) REFERENCES `100 - personal` (`Legajo`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `105 - registro entrega das`
--

LOCK TABLES `105 - registro entrega das` WRITE;
/*!40000 ALTER TABLE `105 - registro entrega das` DISABLE KEYS */;
INSERT INTO `105 - registro entrega das` VALUES (1,'EC01945','#\\\\192.168.0.10\\Administracion\\03- RRHH\\04- DAS\\DAS - ERNESTO MONTESINO.pdf#','2010-07-19 00:00:00'),(2,'EC00523','#\\\\192.168.0.10\\Administracion\\03- RRHH\\04- DAS\\DAS - ERNESTO PLAZA actual.pdf#','2010-06-15 00:00:00'),(4,'EC01651','#\\\\192.168.0.10\\Administracion\\03- RRHH\\04- DAS\\DAS - JONATHAN MARTINEZ.pdf#','2009-12-22 00:00:00'),(5,'EC01910','#\\\\192.168.0.10\\Administracion\\03- RRHH\\04- DAS\\DAS - LORENZO OJEDA.pdf#','2010-07-01 00:00:00'),(13,'EC01996','#\\\\192.168.0.10\\Administracion\\03- RRHH\\04- DAS\\DAS - ALFREDO BRAVO.pdf#','2010-07-09 00:00:00'),(15,'EC02070','#\\\\192.168.0.10\\Administracion\\03- RRHH\\04- DAS\\DAS - PATRICIO BURGOS.pdf#','2010-06-04 00:00:00'),(16,'SR00302','#\\\\192.168.0.10\\Administracion\\03- RRHH\\04- DAS\\Cruz Astorga Maria DAS.pdf#','2008-07-04 00:00:00'),(17,'EC02364','#\\\\192.168.0.10\\Administracion\\03- RRHH\\04- DAS\\DAS - CARLOS MORALES.pdf#','2011-03-01 00:00:00'),(19,'EC02151','#\\\\192.168.0.10\\Administracion\\03- RRHH\\04- DAS\\DAS - NELSON GONZALEZ.pdf#','2011-03-01 00:00:00'),(21,'EC02372','#\\\\192.168.0.10\\Administracion\\03- RRHH\\04- DAS\\DAS - JORGE MATURANA.pdf#','2011-03-01 00:00:00'),(22,'EC00809','#\\\\192.168.0.10\\Administracion\\03- RRHH\\04- DAS\\#','2010-06-15 00:00:00'),(24,'EC01856','#\\\\192.168.0.10\\Administracion\\03- RRHH\\04- DAS\\DAS - FRANCISCO PARRA.pdf#','2010-06-15 00:00:00'),(25,'EC00116','#\\\\192.168.0.10\\Administracion\\03- RRHH\\04- DAS\\DAS - RAFAEL PARRAGUEZ.pdf#','2009-03-10 00:00:00'),(28,'EC00655','#\\\\192.168.0.10\\Administracion\\03- RRHH\\04- DAS\\DAS - PAMELA VADELL.pdf#','2009-04-08 00:00:00'),(29,'EC01937','#\\\\192.168.0.10\\Administracion\\03- RRHH\\04- DAS\\DAS - MIGUEL VARGAS.pdf#','2010-06-11 00:00:00'),(30,'EC01929','#\\\\192.168.0.10\\Administracion\\03- RRHH\\04- DAS\\DAS - PAOLO VIACAVA.pdf#','2010-06-30 00:00:00'),(31,'EC00086','#\\\\192.168.0.10\\Administracion\\03- RRHH\\04- DAS\\DAS - ESTANISLAO YELICH.pdf#','2010-03-15 00:00:00'),(32,'EC02542','#\\\\192.168.0.10\\Administracion\\03- RRHH\\04- DAS\\DAS - MARCELO ZENTENO.pdf#','2009-06-01 00:00:00');
/*!40000 ALTER TABLE `105 - registro entrega das` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `106 - registro entrega ri`
--

DROP TABLE IF EXISTS `106 - registro entrega ri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `106 - registro entrega ri` (
  `ID entrega RI` int NOT NULL AUTO_INCREMENT,
  `Legajo` varchar(45) NOT NULL,
  `Registro de entrega RI` longtext,
  `Fecha entrega RI` datetime DEFAULT NULL,
  `Reglamento entregado` int DEFAULT NULL,
  PRIMARY KEY (`ID entrega RI`),
  KEY `FK_RegEntRI_legajo_idx` (`Legajo`),
  CONSTRAINT `FK_RegEntRI_legajo` FOREIGN KEY (`Legajo`) REFERENCES `100 - personal` (`Legajo`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `106 - registro entrega ri`
--

LOCK TABLES `106 - registro entrega ri` WRITE;
/*!40000 ALTER TABLE `106 - registro entrega ri` DISABLE KEYS */;
INSERT INTO `106 - registro entrega ri` VALUES (1,'EC01945','#\\\\192.168.0.10\\Administracion\\03- RRHH\\06- Entrega Reglamento seguridad e higiene\\R I - ERNESTO MONTESINO.pdf#','2010-08-26 00:00:00',1),(2,'EC00523','#\\\\192.168.0.10\\Administracion\\03- RRHH\\06- Entrega Reglamento seguridad e higiene\\R I - ERNESTO PLAZA.pdf#','2010-06-15 00:00:00',1),(4,'EC01651','#\\\\192.168.0.10\\Administracion\\03- RRHH\\06- Entrega Reglamento seguridad e higiene\\R I - JONATHAN MARTINEZ.pdf#','2010-07-01 00:00:00',1),(5,'EC01910','#\\\\192.168.0.10\\Administracion\\03- RRHH\\06- Entrega Reglamento seguridad e higiene\\R I - LORENZO OJEDA.pdf#','2010-07-01 00:00:00',1),(11,'EC01996','#\\\\192.168.0.10\\Administracion\\03- RRHH\\06- Entrega Reglamento seguridad e higiene\\R I - ALFREDO BRAVO.pdf#','2010-07-09 00:00:00',1),(13,'EC02070','#\\\\192.168.0.10\\Administracion\\03- RRHH\\06- Entrega Reglamento seguridad e higiene\\R I  - PATRICIO BURGOS.pdf#','2010-06-04 00:00:00',1),(14,'SR00302','#\\\\192.168.0.10\\Administracion\\03- RRHH\\06- Entrega Reglamento seguridad e higiene\\Cruz Astorga Maria RI.pdf#','2008-06-26 00:00:00',1),(16,'EC02151','#\\\\192.168.0.10\\Administracion\\03- RRHH\\06- Entrega Reglamento seguridad e higiene\\R I - NELSON GONZALEZ.pdf#','2011-03-01 00:00:00',1),(18,'EC02372','#\\\\192.168.0.10\\Administracion\\03- RRHH\\06- Entrega Reglamento seguridad e higiene\\R I - JORGE MATURANA.pdf#','2011-03-01 00:00:00',1),(19,'EC00809','#\\\\192.168.0.10\\Administracion\\03- RRHH\\06- Entrega Reglamento seguridad e higiene\\R I - JAIME MELLA.pdf#','2010-06-15 00:00:00',1),(20,'EC02364','#\\\\192.168.0.10\\Administracion\\03- RRHH\\06- Entrega Reglamento seguridad e higiene\\R I - CARLOS MORALES.pdf#','2011-03-01 00:00:00',1),(22,'EC01856','#\\\\192.168.0.10\\Administracion\\03- RRHH\\06- Entrega Reglamento seguridad e higiene\\R I - FRANCISCO PARRA.pdf#','2010-06-11 00:00:00',1),(27,'EC00655','#\\\\192.168.0.10\\Administracion\\03- RRHH\\06- Entrega Reglamento seguridad e higiene\\R I - PAMELA VADELL.pdf#','2009-06-03 00:00:00',1),(28,'EC01937','#\\\\192.168.0.10\\Administracion\\03- RRHH\\06- Entrega Reglamento seguridad e higiene\\R I - MIGUEL VARGAS.pdf#','2010-07-01 00:00:00',1),(29,'EC01929','#\\\\192.168.0.10\\Administracion\\03- RRHH\\06- Entrega Reglamento seguridad e higiene\\R I - PAOLO VIACAVA.pdf#','2010-05-01 00:00:00',1),(30,'EC00086','#\\\\192.168.0.10\\Administracion\\03- RRHH\\06- Entrega Reglamento seguridad e higiene\\R I- ESTANISLAO YELICH.pdf#','2010-03-15 00:00:00',1),(31,'EC02542','#\\\\192.168.0.10\\Administracion\\03- RRHH\\06- Entrega Reglamento seguridad e higiene\\R I - MARCELO ZENTENO.pdf#','2009-06-01 00:00:00',1),(35,'EC00523','O:\\03- RRHH\\Antecedentes consolidados de personal\\Plaza Ernesto\\Entrega de R.I Ernesto Plaza Mejias.pdf','2013-11-26 00:00:00',3),(40,'EC01651','O:\\03- RRHH\\Antecedentes consolidados de personal\\Jonathan Martinez\\Entrega de R.I Jonathan Martinez.pdf','2013-11-26 00:00:00',3);
/*!40000 ALTER TABLE `106 - registro entrega ri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `107 - certificados antecedentes`
--

DROP TABLE IF EXISTS `107 - certificados antecedentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `107 - certificados antecedentes` (
  `ID CertAnt` int NOT NULL AUTO_INCREMENT,
  `Legajo` varchar(45) DEFAULT NULL,
  `Certificado de antecedentes` varchar(45) NOT NULL,
  `Fecha emisión` datetime NOT NULL,
  `Fecha vencimiento` datetime DEFAULT NULL,
  PRIMARY KEY (`ID CertAnt`),
  KEY `FK_CertAnt_legajo_idx` (`Legajo`),
  CONSTRAINT `FK_CertAnt_legajo` FOREIGN KEY (`Legajo`) REFERENCES `100 - personal` (`Legajo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `107 - certificados antecedentes`
--

LOCK TABLES `107 - certificados antecedentes` WRITE;
/*!40000 ALTER TABLE `107 - certificados antecedentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `107 - certificados antecedentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `108 - reglamentos internos`
--

DROP TABLE IF EXISTS `108 - reglamentos internos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `108 - reglamentos internos` (
  `IdReglamentoInterno` int NOT NULL AUTO_INCREMENT,
  `Versión` varchar(45) DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL,
  `Documento` longtext,
  PRIMARY KEY (`IdReglamentoInterno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `108 - reglamentos internos`
--

LOCK TABLES `108 - reglamentos internos` WRITE;
/*!40000 ALTER TABLE `108 - reglamentos internos` DISABLE KEYS */;
INSERT INTO `108 - reglamentos internos` VALUES (1,'1','2012-06-20 00:00:00','Reglamento interno ECTEL - Rev 01.pdf#T:\\8-Prevencion de Riesgos\\04- ECTEL\\03- Reglamento Interno\\Rev01\\Reglamento interno ECTEL - Rev 01.pdf#'),(3,'2','2013-07-19 00:00:00','Reglamento interno ECTEL - Rev 02.pdf#T:\\8-Prevencion de Riesgos\\04- ECTEL\\03- Reglamento Interno\\Rev02\\Reglamento interno ECTEL - Rev 02.pdf#');
/*!40000 ALTER TABLE `108 - reglamentos internos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `121 - cursos`
--

DROP TABLE IF EXISTS `121 - cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `121 - cursos` (
  `ID Curso` int NOT NULL AUTO_INCREMENT,
  `Nombre curso` varchar(45) NOT NULL,
  `Duración` int DEFAULT '0',
  `Organización que lo dicta` varchar(45) DEFAULT NULL,
  `Código SENCE` varchar(45) DEFAULT NULL,
  `Precio estimado` int DEFAULT '0',
  PRIMARY KEY (`ID Curso`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `121 - cursos`
--

LOCK TABLES `121 - cursos` WRITE;
/*!40000 ALTER TABLE `121 - cursos` DISABLE KEYS */;
INSERT INTO `121 - cursos` VALUES (2,'Uso y manejo de extintores',8,'Mutual','',0),(7,'Trabajo en altura y protección de caídas',8,'TOK','',55000),(8,'Charla SAI Entel',4,'ENTEL','N/A',0),(11,'Conducción a la defensiva',4,'Mutual','',0),(12,'Primeros auxilios',4,'Mutual','',0),(13,'Orientación en prevención de riesgos',4,'Mutual','',0),(16,'Office avanzado',30,'Procasse Ltda.','',114000),(17,'Uso y manejo de extintores',8,'Precorp','',50000),(19,'Trabajo en altura y rescate',16,'','',110000),(20,'Manejo manual de cargas',4,'Mutual','',0);
/*!40000 ALTER TABLE `121 - cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `131 - epp`
--

DROP TABLE IF EXISTS `131 - epp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `131 - epp` (
  `ID EPP` int NOT NULL AUTO_INCREMENT,
  `EPP nombre` varchar(45) NOT NULL,
  `EPP descripción` longtext,
  `Certificado` varchar(45) DEFAULT NULL,
  `Tipo de proteccion` longtext,
  PRIMARY KEY (`ID EPP`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `131 - epp`
--

LOCK TABLES `131 - epp` WRITE;
/*!40000 ALTER TABLE `131 - epp` DISABLE KEYS */;
INSERT INTO `131 - epp` VALUES (20,'Estrobo','Sirven para que el trabajador mantenga su arnés y a l avez su cuerpo sujeto a la línea de vida del lugar de trabajo','','Trabajo en Altura, Izaje de Herramientas'),(21,'Casco de seguridad tipo montañista','Este casco entrega mayor confort al momento de realizar trabajos en altura, ya que no abstruye la vista y cuenta con barbiquejo. Además de ser muy adaptable a la cabeza','','Trabajo en Altura, Izaje de Herramientas'),(22,'Casco de trabajo con barbiquejo','Este tipo de casco se entrega a los trabajadores que se encuentran en la superficie, por lo que entrega protección a la cabeza al momento que hayan peligro de golpes.','','Carga y Descarga de materiales, , Izaje de Herramientas, Montaje de cableado en piso'),(23,'Gafas de seguridad oscuras y transparentes','Los lentes de seguridad ciudan los ojos del trabajador al momento de realizar trabajos, para evitar los accidentes cando haya proyección de partículas.','','Carga y Descarga de materiales, Trabajo en Altura, Izaje de Herramientas, Montaje de cableado en piso'),(24,'Guantes de cabritilla ','Los guantes de Cabritilla se usan al momento de soldar, o ralizar trabajos que requieran de mayor presición.','','Trabajo en Altura, Izaje de Herramientas, Montaje de cableado en piso'),(25,'Guantes multi grip','los guantes Multi Grip, se usan para el traslado de materiales ya que con los guantes puestos se evita el deslizamiento del material','','Carga y Descarga de materiales, Izaje de Herramientas'),(26,'Guantes dieléctricos','Estos guantes se usan cuando se requiera trabajar con equipos energizados','','Montaje de cableado en piso'),(27,'Zapatos de seguridad con punta de acero','Los zapatos de seguridad con punta de acero se usan cada vez que el trabajor este realizando cualquier tipo de actividad, ya que protegen a los pies de golpes.','','Carga y Descarga de materiales, Trabajo en Altura, Izaje de Herramientas, Montaje de cableado en piso'),(28,'Zapatos de seguridad dieléctricos','Los zapatos dieléctricos se usan al momento de realizar trabajos con equipos energizados','','Trabajo en Altura, Montaje de cableado en piso'),(29,'Bloqueador solar','El bloqueador solar el trabajador debe usarlo cada vez que realiza trabajo en la interperie ya que lo protege del sol y sus conseccuencias sobre la piel.','','Carga y Descarga de materiales, Trabajo en Altura, Izaje de Herramientas, Montaje de cableado en piso'),(32,'Buzo tipo piloto','','',''),(33,'Arnés de 5 puntos de anclaje','','',''),(34,'Cabo de sujeción','','',''),(35,'Amortiguador doble cabo','','',''),(37,'Legionario para casco','','','');
/*!40000 ALTER TABLE `131 - epp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `141 - examenes`
--

DROP TABLE IF EXISTS `141 - examenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `141 - examenes` (
  `ID Examen` int NOT NULL AUTO_INCREMENT,
  `Nombre examen` varchar(45) NOT NULL,
  `Observaciones` longtext,
  PRIMARY KEY (`ID Examen`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `141 - examenes`
--

LOCK TABLES `141 - examenes` WRITE;
/*!40000 ALTER TABLE `141 - examenes` DISABLE KEYS */;
INSERT INTO `141 - examenes` VALUES (2,'Ocupacional','Exámen clínico gral, Rx Tórax, Audiometría, Creatina, perfil lipídico, electrocardiograma, glicemia, optometría, hemoglobina, indice framingham.'),(3,'Trabajo en altura física',''),(4,'Psicosensotécnico',''),(5,'Trabajo en altura geográfica',''),(6,'Alcohol y drogas','marihuana, cocaína, anfetaminas y benzodiacepina'),(7,'Examen psicológico de aversión al riesgo',''),(8,'Preocupacional mineras','Exámen clínico gral, Rx Tórax, Audiometría, Espirometría, Perfil lipídico, orina completa/sedimento, glicemia, optometría.'),(9,'Preocupacional','');
/*!40000 ALTER TABLE `141 - examenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `150 - registro entrega epp`
--

DROP TABLE IF EXISTS `150 - registro entrega epp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `150 - registro entrega epp` (
  `ID EntEPP` int NOT NULL AUTO_INCREMENT,
  `Legajo` varchar(45) NOT NULL,
  `EPP` int DEFAULT NULL,
  `Fecha entrega` datetime DEFAULT NULL,
  `Comentario` longtext,
  `Registro de entrega` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID EntEPP`),
  KEY `FK_RegEnt_legajo_idx` (`Legajo`),
  KEY `FK_REgEnt_epp_idx` (`EPP`),
  CONSTRAINT `FK_REgEnt_epp` FOREIGN KEY (`EPP`) REFERENCES `131 - epp` (`ID EPP`),
  CONSTRAINT `FK_RegEnt_legajo` FOREIGN KEY (`Legajo`) REFERENCES `100 - personal` (`Legajo`)
) ENGINE=InnoDB AUTO_INCREMENT=392 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `150 - registro entrega epp`
--

LOCK TABLES `150 - registro entrega epp` WRITE;
/*!40000 ALTER TABLE `150 - registro entrega epp` DISABLE KEYS */;
INSERT INTO `150 - registro entrega epp` VALUES (38,'EC01945',22,'2010-08-26 00:00:00','',''),(39,'EC01945',23,'2010-08-26 00:00:00','',''),(40,'EC01945',25,'2010-08-26 00:00:00','',''),(41,'EC01945',29,'2010-08-26 00:00:00','',''),(42,'EC01945',27,'2010-08-26 00:00:00','',''),(43,'EC00523',21,'2010-06-15 00:00:00','',''),(44,'EC00523',22,'2010-06-15 00:00:00','',''),(45,'EC00523',23,'2010-06-15 00:00:00','',''),(46,'EC00523',25,'2010-06-15 00:00:00','',''),(47,'EC00523',27,'2010-06-15 00:00:00','',''),(48,'EC00523',32,'2010-06-15 00:00:00','',''),(49,'EC00523',33,'2010-06-15 00:00:00','',''),(50,'EC00523',34,'2010-06-15 00:00:00','',''),(51,'EC00523',35,'2010-06-15 00:00:00','',''),(52,'EC00523',29,'2010-06-15 00:00:00','',''),(53,'EC00523',37,'2010-06-15 00:00:00','',''),(65,'EC01651',22,'2010-07-01 00:00:00','',''),(66,'EC01651',23,'2010-07-01 00:00:00','',''),(67,'EC01651',25,'2010-07-01 00:00:00','',''),(68,'EC01651',27,'2010-07-01 00:00:00','',''),(69,'EC01651',32,'2010-07-01 00:00:00','',''),(70,'EC01651',29,'2010-07-01 00:00:00','',''),(71,'EC01910',22,'2010-07-01 00:00:00','',''),(72,'EC01910',23,'2010-07-01 00:00:00','',''),(73,'EC01910',25,'2010-07-01 00:00:00','',''),(74,'EC01910',27,'2010-07-01 00:00:00','',''),(75,'EC01910',29,'2010-07-01 00:00:00','',''),(101,'EC01996',22,'2010-07-09 00:00:00','',''),(102,'EC01996',25,'2010-07-09 00:00:00','',''),(103,'EC01996',23,'2010-07-09 00:00:00','',''),(104,'EC01996',27,'2010-07-09 00:00:00','',''),(105,'EC01996',29,'2010-07-09 00:00:00','',''),(106,'EC00086',23,'2010-03-15 00:00:00','',''),(107,'EC00086',25,'2010-03-15 00:00:00','',''),(108,'EC00086',32,'2010-03-15 00:00:00','',''),(109,'EC00086',27,'2010-03-15 00:00:00','',''),(110,'EC01856',21,'2010-06-11 00:00:00','',''),(111,'EC01856',23,'2010-06-11 00:00:00','',''),(112,'EC01856',32,'2010-06-11 00:00:00','',''),(113,'EC01856',27,'2010-06-11 00:00:00','',''),(114,'EC01856',25,'2010-06-11 00:00:00','',''),(115,'EC01856',22,'2010-06-11 00:00:00','',''),(116,'EC01856',33,'2010-06-11 00:00:00','',''),(117,'EC01856',34,'2010-06-11 00:00:00','',''),(118,'EC01856',35,'2010-06-11 00:00:00','',''),(119,'EC01856',29,'2010-06-11 00:00:00','',''),(120,'EC01856',37,'2010-06-11 00:00:00','',''),(122,'EC00809',21,'2010-06-11 00:00:00','',''),(123,'EC00809',22,'2010-06-11 00:00:00','',''),(124,'EC00809',23,'2010-06-11 00:00:00','',''),(125,'EC00809',25,'2010-06-11 00:00:00','',''),(126,'EC00809',27,'2010-06-11 00:00:00','',''),(127,'EC00809',32,'2010-06-11 00:00:00','',''),(128,'EC00809',33,'2010-06-11 00:00:00','',''),(129,'EC00809',34,'2010-06-11 00:00:00','',''),(130,'EC00809',35,'2010-06-11 00:00:00','',''),(131,'EC00809',29,'2010-06-11 00:00:00','',''),(132,'EC00809',37,'2010-06-11 00:00:00','',''),(133,'EC02364',22,'2011-03-01 00:00:00','',''),(134,'EC02364',25,'2011-03-01 00:00:00','',''),(135,'EC02364',23,'2011-03-01 00:00:00','',''),(136,'EC02364',27,'2011-03-01 00:00:00','',''),(137,'EC02364',29,'2011-03-01 00:00:00','',''),(138,'EC00116',25,'2010-01-02 00:00:00','',''),(139,'EC00116',23,'2010-01-02 00:00:00','',''),(140,'EC00116',27,'2010-01-02 00:00:00','',''),(141,'EC02151',22,'2011-03-01 00:00:00','',''),(142,'EC02151',25,'2011-03-01 00:00:00','',''),(143,'EC02151',23,'2011-03-01 00:00:00','',''),(144,'EC02151',27,'2011-03-01 00:00:00','',''),(145,'EC02151',29,'2011-03-01 00:00:00','',''),(174,'EC01929',22,'2010-06-03 00:00:00','',''),(175,'EC01929',23,'2010-06-03 00:00:00','',''),(176,'EC01929',25,'2010-06-03 00:00:00','',''),(177,'EC01929',27,'2010-06-03 00:00:00','',''),(178,'EC01929',32,'2010-06-03 00:00:00','',''),(179,'EC01929',29,'2010-06-03 00:00:00','',''),(180,'EC01929',22,'2010-07-01 00:00:00','',''),(181,'EC01929',23,'2010-07-01 00:00:00','',''),(182,'EC01929',25,'2010-07-01 00:00:00','',''),(183,'EC01929',27,'2010-07-01 00:00:00','',''),(184,'EC01929',29,'2010-07-01 00:00:00','',''),(196,'EC01937',22,'2010-07-01 00:00:00','',''),(197,'EC01937',23,'2010-07-01 00:00:00','',''),(198,'EC01937',25,'2010-07-01 00:00:00','',''),(199,'EC01937',27,'2010-07-01 00:00:00','',''),(200,'EC01937',29,'2010-07-01 00:00:00','',''),(201,'EC01937',27,'2011-08-05 00:00:00','Informa Ana Buhadla que están en condiciones. No se reemplazan.',''),(202,'EC01651',22,'2011-07-14 00:00:00','',''),(203,'EC01651',25,'2011-07-14 00:00:00','',''),(204,'EC01651',23,'2011-07-14 00:00:00','',''),(205,'EC01651',27,'2011-07-14 00:00:00','',''),(206,'EC01945',27,'2011-08-05 00:00:00','Informa Ana Buhadla que están en condiciones. No se reemplazan.',''),(207,'EC01996',27,'2011-08-05 00:00:00','Informa Ana Buhadla que están en condiciones. No se reemplazan.',''),(208,'EC02372',27,'2011-03-01 00:00:00','',''),(209,'EC02372',32,'2011-03-01 00:00:00','',''),(210,'EC00655',27,'2011-08-05 00:00:00','Informa Ana Buhadla que están en condiciones. No se reemplazan.',''),(211,'EC02364',27,'2011-08-05 00:00:00','Informa Ana Buhadla que están en condiciones. No se reemplazan.',''),(212,'EC02151',27,'2011-08-05 00:00:00','Informa Ana Buhadla que están en condiciones. No se reemplazan.',''),(213,'EC01856',27,'2011-04-12 00:00:00','',''),(217,'EC00116',27,'2011-09-01 00:00:00','Revisados por Ana Buhadla. No requiere cambio.',''),(240,'EC00140',21,'2010-05-27 00:00:00','',''),(241,'EC00140',23,'2010-05-27 00:00:00','',''),(242,'EC00140',25,'2010-05-27 00:00:00','',''),(243,'EC00140',27,'2010-05-27 00:00:00','',''),(244,'EC00140',32,'2010-05-27 00:00:00','',''),(245,'EC00140',33,'2010-05-27 00:00:00','',''),(246,'EC00140',22,'2010-05-27 00:00:00','',''),(247,'EC00140',34,'2010-05-27 00:00:00','',''),(248,'EC00140',35,'2010-05-27 00:00:00','',''),(249,'EC00140',29,'2010-05-27 00:00:00','',''),(250,'EC00140',37,'2010-05-27 00:00:00','',''),(251,'EC00582',33,'2010-10-17 00:00:00','',''),(252,'EC00582',21,'2010-10-17 00:00:00','',''),(253,'EC00582',25,'2010-10-17 00:00:00','',''),(254,'EC00582',23,'2010-10-17 00:00:00','',''),(255,'EC00582',27,'2010-10-17 00:00:00','',''),(267,'EC01414',33,'2011-10-17 00:00:00','',''),(268,'EC01414',21,'2011-10-17 00:00:00','',''),(269,'EC01414',25,'2011-10-17 00:00:00','',''),(270,'EC01414',23,'2011-10-17 00:00:00','',''),(271,'EC01414',27,'2011-10-17 00:00:00','',''),(272,'EC01414',32,'2012-03-10 00:00:00','',''),(273,'EC01414',29,'2012-03-12 00:00:00','',''),(276,'EC02151',22,'2011-03-01 00:00:00','',''),(277,'EC02151',23,'2011-03-01 00:00:00','',''),(278,'EC02151',27,'2011-03-01 00:00:00','',''),(279,'EC02151',29,'2011-03-01 00:00:00','',''),(280,'EC02216',33,'2012-03-12 00:00:00','',''),(281,'EC02216',20,'2012-03-12 00:00:00','',''),(282,'EC02216',35,'2012-03-12 00:00:00','',''),(283,'EC02216',21,'2012-03-12 00:00:00','',''),(284,'EC02216',25,'2012-03-12 00:00:00','',''),(285,'EC02216',32,'2012-03-12 00:00:00','',''),(286,'EC02364',21,'2011-03-01 00:00:00','',''),(287,'EC02364',23,'2011-03-01 00:00:00','',''),(288,'EC02364',27,'2012-07-31 00:00:00','',''),(289,'EC02364',29,'2011-03-01 00:00:00','',''),(297,'EC02666',21,'2011-11-29 00:00:00','',''),(298,'EC02666',25,'2012-04-13 00:00:00','',''),(299,'EC02666',23,'2011-11-29 00:00:00','',''),(300,'EC02666',32,'2011-11-29 00:00:00','',''),(301,'EC02666',27,'2011-11-29 00:00:00','',''),(302,'EC02666',29,'2012-04-13 00:00:00','',''),(303,'EC02712',22,'2011-09-29 00:00:00','',''),(304,'EC02712',24,'2011-09-29 00:00:00','',''),(305,'EC02712',25,'2011-09-29 00:00:00','',''),(306,'EC02712',23,'2011-09-29 00:00:00','',''),(307,'EC02712',32,'2011-09-29 00:00:00','',''),(308,'EC02712',28,'2011-09-29 00:00:00','',''),(309,'EC02720',20,'2012-12-12 00:00:00','',''),(310,'EC02720',21,'2012-12-12 00:00:00','',''),(311,'EC02720',22,'2012-12-12 00:00:00','',''),(312,'EC02720',23,'2012-12-12 00:00:00','',''),(313,'EC02720',27,'2012-12-12 00:00:00','',''),(314,'EC02720',33,'2012-12-12 00:00:00','',''),(315,'EC02720',34,'2012-12-12 00:00:00','',''),(316,'EC02720',35,'2012-12-12 00:00:00','',''),(350,'EC00523',22,'2010-06-15 00:00:00','',''),(351,'EC00523',23,'2010-06-15 00:00:00','',''),(352,'EC00523',25,'2010-06-15 00:00:00','',''),(353,'EC00523',27,'2010-06-15 00:00:00','',''),(354,'EC00523',32,'2010-06-15 00:00:00','',''),(355,'EC00523',33,'2010-06-15 00:00:00','',''),(356,'EC00523',21,'2010-06-15 00:00:00','',''),(357,'EC00523',34,'2010-06-15 00:00:00','',''),(358,'EC00523',29,'2010-06-15 00:00:00','',''),(359,'EC00523',37,'2010-06-15 00:00:00','',''),(368,'EC01945',23,'2010-08-26 00:00:00','',''),(369,'EC01945',25,'2010-08-26 00:00:00','',''),(370,'EC01945',27,'2012-04-03 00:00:00','',''),(371,'EC01945',29,'2010-08-26 00:00:00','',''),(372,'EC01945',21,'2010-08-26 00:00:00','',''),(373,'EC02224',22,'2011-09-01 00:00:00','',''),(374,'EC02224',23,'2011-09-01 00:00:00','',''),(375,'EC02224',25,'2011-09-01 00:00:00','',''),(376,'EC02224',27,'2011-09-01 00:00:00','',''),(377,'EC02224',29,'2011-09-01 00:00:00','',''),(383,'EC02909',22,'2012-12-13 00:00:00','',''),(384,'EC02909',23,'2012-12-13 00:00:00','revisado',''),(385,'EC02909',25,'2012-12-13 00:00:00','revisado',''),(386,'EC02909',27,'2012-12-13 00:00:00','revisado',''),(387,'EC02909',27,'2012-12-13 00:00:00','cambiar a zapato dielectrico',''),(389,'EC85472',27,'2012-12-13 00:00:00','Cambiar casco con barbiquejo',''),(390,'EC85472',27,'2012-12-13 00:00:00','revisado',''),(391,'EC9000K',27,'2012-08-01 00:00:00','revisado','');
/*!40000 ALTER TABLE `150 - registro entrega epp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `160 - registro capacitaciones`
--

DROP TABLE IF EXISTS `160 - registro capacitaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `160 - registro capacitaciones` (
  `ID RegCapacitacion` int NOT NULL AUTO_INCREMENT,
  `Legajo` varchar(45) DEFAULT NULL,
  `Curso` int NOT NULL,
  `Duración` int DEFAULT '0',
  `Código SENCE` varchar(45) DEFAULT NULL,
  `Fecha capacitacion` datetime NOT NULL,
  `Tiene vencimiento?` enum('Si','No') DEFAULT 'No',
  `Fecha vencimiento` datetime DEFAULT NULL,
  `Copia certificado` longtext,
  PRIMARY KEY (`ID RegCapacitacion`),
  KEY `FK_RegCap_legajo_idx` (`Legajo`),
  KEY `FK_RegCap_curso_idx` (`Curso`),
  CONSTRAINT `FK_RegCap_curso` FOREIGN KEY (`Curso`) REFERENCES `121 - cursos` (`ID Curso`),
  CONSTRAINT `FK_RegCap_legajo` FOREIGN KEY (`Legajo`) REFERENCES `100 - personal` (`Legajo`)
) ENGINE=InnoDB AUTO_INCREMENT=351 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `160 - registro capacitaciones`
--

LOCK TABLES `160 - registro capacitaciones` WRITE;
/*!40000 ALTER TABLE `160 - registro capacitaciones` DISABLE KEYS */;
INSERT INTO `160 - registro capacitaciones` VALUES (13,'EC01651',7,8,'','2011-06-23 00:00:00','Si','2013-06-22 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\03- Certificados de cursos\\Trabajo en altura - Jonathan Martínez - 1.pdf#'),(133,'EC00809',2,4,'','2008-10-03 00:00:00','Si','2010-10-03 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\03- Certificados de cursos\\CERTIFICADO EXTINTOR - JAIME MELLA.pdf#'),(136,'EC02178',2,4,'','2010-05-01 00:00:00','Si','2012-05-01 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\03- Certificados de cursos\\CURSI USO Y MANEJO DE EXTINTORES - RAMON OLIVARES.JPG#'),(137,'EC02186',2,8,'','2011-07-04 00:00:00','Si','2013-07-04 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\03- Certificados de cursos\\curso uso y manejo de extintores -  Ana Buhadla.JPG#'),(138,'EC02364',2,8,'','2011-07-04 00:00:00','Si','2013-07-04 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\03- Certificados de cursos\\curso uso y manejo de extintores - carlos morales.JPG#'),(141,'EC02372',2,8,'','2011-07-04 00:00:00','Si','2013-07-04 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\03- Certificados de cursos\\curso uso y manejo de extintores - jorge maturana.JPG#'),(142,'EC02151',2,8,'','2011-07-04 00:00:00','Si','2013-07-04 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\03- Certificados de cursos\\curso uso y manejo de extintores - nelson gonzalez.JPG#'),(143,'EC00116',2,4,'','2009-04-06 00:00:00','Si','2011-04-06 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\03- Certificados de cursos\\EXTINTORES - RAFAEL PARRAGUEZ.pdf#'),(347,'EC01651',13,1,'','2011-12-11 00:00:00','Si','2013-12-08 00:00:00','\\\\192.168.0.10\\administracion\\03- RRHH\\Antecedentes consolidados de personal\\Jonathan Martinez\\Orientacion en Prevenciòn de Riesgos.pdf');
/*!40000 ALTER TABLE `160 - registro capacitaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `170 - registro examenes`
--

DROP TABLE IF EXISTS `170 - registro examenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `170 - registro examenes` (
  `ID RegExamen` int NOT NULL AUTO_INCREMENT,
  `Legajo` varchar(45) NOT NULL,
  `Examen` int DEFAULT NULL,
  `Fecha examen` datetime DEFAULT NULL,
  `Vencimiento examen` datetime DEFAULT NULL,
  `Copia examen` longtext NOT NULL,
  `Observaciones` longtext,
  PRIMARY KEY (`ID RegExamen`),
  KEY `FK_RegExa_legajo_idx` (`Legajo`),
  KEY `FK_RegExa_examen_idx` (`Examen`),
  CONSTRAINT `FK_RegExa_examen` FOREIGN KEY (`Examen`) REFERENCES `141 - examenes` (`ID Examen`),
  CONSTRAINT `FK_RegExa_legajo` FOREIGN KEY (`Legajo`) REFERENCES `100 - personal` (`Legajo`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `170 - registro examenes`
--

LOCK TABLES `170 - registro examenes` WRITE;
/*!40000 ALTER TABLE `170 - registro examenes` DISABLE KEYS */;
INSERT INTO `170 - registro examenes` VALUES (7,'EC00523',2,'2011-02-15 00:00:00','2013-02-15 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen Ocupacional - Ernesto Plaza.pdf#',''),(9,'EC00523',4,'2009-09-30 00:00:00','2013-09-29 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen Psicosensotecnico - Ernesto Plaza.pdf#',''),(12,'EC00523',3,'2011-02-15 00:00:00','2013-02-15 00:00:00','\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen Ocupacional - Ernesto Plaza.pdf#\\\\192.168.0.2\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen Ocupacional - Ernesto Plaza.pdf#',''),(13,'EC00523',5,'2011-02-15 00:00:00','2013-02-15 00:00:00','\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen Ocupacional - Ernesto Plaza.pdf#\\\\192.168.0.2\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen Ocupacional - Ernesto Plaza.pdf#',''),(21,'EC01945',2,'2010-08-17 00:00:00','2011-08-17 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen Preocupacional - Ernesto Montesino.pdf#',''),(22,'EC01945',3,'2010-08-17 00:00:00','2011-08-17 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen Preocupacional - Ernesto Montesino.pdf#',''),(23,'EC01945',5,'2010-08-17 00:00:00','2011-08-17 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen Preocupacional - Ernesto Montesino.pdf#',''),(24,'EC01945',4,'2010-08-17 00:00:00','2014-08-17 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen Psicosensotecnico - Ernesto Montesino.pdf#',''),(25,'EC01651',2,'2011-06-22 00:00:00','2014-06-22 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen ocupacional - Jonathan Martínez -1.pdf#',''),(26,'EC01651',3,'2011-06-22 00:00:00','2014-06-22 00:00:00','\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen ocupacional - Jonathan Martínez -1.pdf#\\\\192.168.0.2\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen ocupacional - Jonathan Martínez -1.pdf#',''),(27,'EC01651',5,'2011-06-22 00:00:00','2014-06-22 00:00:00','\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen ocupacional - Jonathan Martínez -1.pdf#\\\\192.168.0.2\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen ocupacional - Jonathan Martínez -1.pdf#',''),(28,'EC01945',3,'2011-06-22 00:00:00','2014-06-22 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen ocupacional - Ernesto Montesino - 1.pdf#',''),(29,'EC02364',3,'2010-06-11 00:00:00','2013-06-10 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen Altura Fisica - Carlos Morales.jpeg#',''),(30,'EC02364',5,'2010-06-01 00:00:00','2013-06-11 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen Altura Geografica - Carlos Morales.jpeg#',''),(33,'EC02151',3,'2011-03-04 00:00:00','2012-03-04 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - NELSON GONZALEZ.pdf#',''),(34,'EC02151',5,'2011-03-04 00:00:00','2012-03-04 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - NELSON GONZALEZ.pdf#',''),(38,'EC00655',3,'2009-06-02 00:00:00','2012-06-02 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - PAMELA VADELL - 1.pdf#',''),(39,'EC00655',5,'2009-06-02 00:00:00','2012-06-02 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - PAMELA VADELL - 1.pdf#',''),(40,'EC02542',3,'2010-06-03 00:00:00','2013-06-03 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - MARCELO ZENTENO - 1.pdf#',''),(41,'EC02542',5,'2010-06-03 00:00:00','2013-06-03 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - MARCELO ZENTENO - 1.pdf#',''),(42,'EC00086',3,'2010-04-09 00:00:00','2011-04-09 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - ESTANISLAO YELICH - 1.pdf#','Obeso'),(43,'EC00086',5,'2010-04-09 00:00:00','2011-04-09 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - ESTANISLAO YELICH - 1.pdf#','Obeso'),(44,'EC01856',3,'2010-09-28 00:00:00','2013-09-28 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - FRANCISCO PARRA - 1.pdf#',''),(45,'EC01856',5,'2010-09-28 00:00:00','2013-09-28 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - FRANCISCO PARRA - 1.pdf#',''),(46,'EC01996',2,'2010-07-21 00:00:00','2011-07-21 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - ALFREDO BRAVO - 1.pdf#',''),(47,'EC01996',3,'2010-07-21 00:00:00','2011-07-21 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - ALFREDO BRAVO - 1.pdf#',''),(48,'EC01996',5,'2010-07-21 00:00:00','2011-07-21 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - ALFREDO BRAVO - 1.pdf#',''),(49,'EC02151',2,'2011-03-04 00:00:00','2012-03-04 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - NELSON GONZALEZ.pdf#',''),(53,'EC00809',2,'2010-07-05 00:00:00','2013-07-05 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - JAIME MELLA - 1.pdf#',''),(54,'EC00809',3,'2010-07-05 00:00:00','2013-07-05 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - JAIME MELLA - 1.pdf#',''),(55,'EC00809',5,'2010-07-05 00:00:00','2013-07-05 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - JAIME MELLA - 1.pdf#',''),(57,'EC02364',2,'2010-06-01 00:00:00','2013-06-11 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicosExamen preocupacional - CARLOS MORALES - 1.pdf#',''),(59,'EC01856',2,'2010-09-28 00:00:00','2013-09-28 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - FRANCISCO PARRA - 1.pdf#',''),(60,'EC00116',2,'2009-04-24 00:00:00','2009-04-08 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - RAFAEL PARRAGUEZ - 1.pdf#','Obeso. Debe bajar 32kg. Hipertenso.'),(61,'EC00116',4,'2010-07-08 00:00:00','2014-07-08 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen Psicosensotecnico - RAFAEL PARRAGUEZ - 1.pdf#',''),(63,'EC00655',2,'2009-06-02 00:00:00','2012-06-02 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - PAMELA VADELL - 1.pdf#',''),(64,'EC01929',2,'2010-07-01 00:00:00','2011-07-01 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - PAOLO VIACAVA - 1.pdf#',''),(65,'EC00086',2,'2010-04-09 00:00:00','2011-04-09 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - ESTANISLAO YELICH - 1.pdf#','Obeso'),(66,'EC02542',2,'2010-06-03 00:00:00','2013-06-03 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - MARCELO ZENTENO - 1.pdf#',''),(67,'EC01996',4,'2010-07-21 00:00:00','2014-07-21 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen psicosensotecnico - ALFREDO BRAVO - 1.pdf#',''),(68,'EC00809',4,'2010-07-27 00:00:00','2014-07-27 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen psicosensotecnico - JAIME MELLA - 1.pdf#',''),(69,'EC01651',4,'2010-07-27 00:00:00','2014-07-27 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen psicosensotecnico - JONATHAN MARTINEZ - 1.pdf#',''),(70,'EC01937',2,'2010-07-05 00:00:00','2011-07-05 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - MIGUEL VARGAS - 1.pdf#',''),(71,'EC00655',4,'2010-07-12 00:00:00','2011-07-12 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen psicosensotecnico - PAMELA VADELL - 1.pdf#',''),(72,'EC00086',2,'2011-06-08 00:00:00','2012-06-08 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - Estanislao Yelich - 2.pdf#',''),(74,'EC00086',3,'2011-06-08 00:00:00','2012-06-08 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - Estanislao Yelich - 2.pdf#',''),(75,'EC00086',5,'2011-06-08 00:00:00','2012-06-08 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen preocupacional - Estanislao Yelich - 2.pdf#',''),(78,'EC01937',2,'2011-07-01 00:00:00','2014-07-01 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen Ocupacional M. Vargas - 1.pdf#',''),(79,'EC01929',2,'2011-07-01 00:00:00','2014-07-01 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen Ocupacional P. Viacava - 1.pdf#',''),(80,'EC01929',5,'2011-07-01 00:00:00','2014-07-01 00:00:00','\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen Ocupacional P. Viacava - 1.pdf#\\\\192.168.0.2\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen Ocupacional P. Viacava - 1.pdf#',''),(81,'EC01937',5,'2011-07-01 00:00:00','2014-07-01 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen Ocupacional M. Vargas - 1.pdf#',''),(82,'EC02186',5,'2011-05-23 00:00:00','2013-05-22 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen ocupacional - ana buhadla - 1.pdf#',''),(84,'EC02178',2,'2011-03-04 00:00:00','2012-03-04 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen ocupacional - RAMON OLIVARES - 1.pdf#',''),(85,'EC02178',3,'2011-03-04 00:00:00','2012-03-04 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen ocupacional - RAMON OLIVARES - 1.pdf#',''),(86,'EC02178',5,'2011-03-04 00:00:00','2012-03-04 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen ocupacional - RAMON OLIVARES - 1.pdf#',''),(87,'EC01910',2,'2011-07-20 00:00:00','2014-07-20 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen Ocupacional - L  Ojeda - 1.pdf#',''),(88,'EC01910',3,'2011-07-20 00:00:00','2014-07-20 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen Ocupacional - L  Ojeda - 1.pdf#',''),(89,'EC01910',5,'2011-07-20 00:00:00','2014-07-20 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen Ocupacional - L  Ojeda - 1.pdf#',''),(91,'EC01945',5,'2011-06-22 00:00:00','2014-06-22 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen ocupacional - Ernesto Montesino - 1.pdf#',''),(95,'EC02372',2,'2011-03-31 00:00:00','2013-03-31 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen Ocupacional - J Maturana - 1.pdf#',''),(96,'EC02372',3,'2011-03-31 00:00:00','2013-03-31 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen Ocupacional - J Maturana - 1.pdf#',''),(97,'EC02372',5,'2011-03-31 00:00:00','2013-03-31 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen Ocupacional - J Maturana - 1.pdf#',''),(98,'EC01945',2,'2011-06-22 00:00:00','2014-06-22 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\02- Exámenes médicos\\Examen ocupacional - Ernesto Montesino - 1.pdf#',''),(100,'EC02712',2,'2012-12-19 00:00:00','2015-12-18 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\Antecedentes consolidados de personal\\Salinas Cesar\\Examen ocupacional Cesar Salinas - Dic2012.pdf#',''),(103,'EC02712',3,'2012-12-19 00:00:00','2015-12-18 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\Antecedentes consolidados de personal\\Salinas Cesar\\Examen ocupacional Cesar Salinas - Dic2012.pdf#',''),(106,'EC02712',5,'2012-12-19 00:00:00','2015-12-18 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\Antecedentes consolidados de personal\\Salinas Cesar\\Examen ocupacional Cesar Salinas - Dic2012.pdf#',''),(122,'EC02216',2,'2012-09-10 00:00:00','2015-08-06 00:00:00','Examen Ocupacional 2012','trigleceridos elevados'),(123,'EC02224',2,'2012-10-23 00:00:00','2015-10-23 00:00:00','Examen Ocupacional 2012','colesterol alto'),(124,'EC02909',2,'2012-04-16 00:00:00','2013-04-16 00:00:00','Examen Ocupacional 2012','vision alterada'),(126,'EC02151',2,'2012-04-23 00:00:00','2015-04-23 00:00:00','Examen Ocupacional 2012','normal'),(130,'EC02720',2,'2012-01-12 00:00:00','2015-01-12 00:00:00','Examen Ocupacional 2012','normal'),(131,'EC01414',2,'2011-10-21 00:00:00','2013-10-18 00:00:00','Examen Ocupacional 2012','reevaluar problemas de vision alterada'),(134,'EC00582',2,'2012-10-23 00:00:00','2012-10-23 00:00:00','Examen Ocupacional 2012','Presión alta. Reevaluacion.'),(138,'EC00140',2,'2010-06-02 00:00:00','2013-06-02 00:00:00','Examen Ocupacional 2010','vision alterada'),(139,'EC02666',2,'2012-03-05 00:00:00','2014-03-05 00:00:00','Examen Ocupacional 2012','colesterol y vision alterada'),(141,'EC02216',3,'2012-09-10 00:00:00','2015-08-06 00:00:00','Examen Ocupacional 2012','trigleceridos elevados'),(142,'EC02224',3,'2012-10-23 00:00:00','2015-10-23 00:00:00','Examen Ocupacional 2012','colesterol alto'),(143,'EC02909',3,'2012-04-16 00:00:00','2013-04-16 00:00:00','Examen Ocupacional 2012','vision alterada'),(145,'EC02151',3,'2012-04-23 00:00:00','2015-04-23 00:00:00','Examen Ocupacional 2012','normal'),(149,'EC02720',3,'2012-01-12 00:00:00','2015-01-12 00:00:00','Examen Ocupacional 2012','normal'),(150,'EC01414',3,'2011-10-21 00:00:00','2013-10-18 00:00:00','Examen Ocupacional 2012','reevaluar problemas de vision alterada'),(153,'EC00582',3,'2012-10-23 00:00:00','2012-10-23 00:00:00','Examen Ocupacional 2012','Presión alta. Reevaluacion.'),(157,'EC00140',3,'2010-06-02 00:00:00','2013-06-02 00:00:00','Examen Ocupacional 2010','vision alterada'),(158,'EC02666',3,'2012-03-05 00:00:00','2014-03-05 00:00:00','Examen Ocupacional 2012','colesterol y vision alterada'),(160,'EC02216',5,'2012-09-10 00:00:00','2015-08-06 00:00:00','Examen Ocupacional 2012','trigleceridos elevados'),(161,'EC02224',5,'2012-10-23 00:00:00','2015-10-23 00:00:00','Examen Ocupacional 2012','colesterol alto'),(162,'EC02909',5,'2012-04-16 00:00:00','2013-04-16 00:00:00','Examen Ocupacional 2012','vision alterada'),(164,'EC02151',5,'2012-04-23 00:00:00','2015-04-23 00:00:00','Examen Ocupacional 2012','normal'),(168,'EC02720',5,'2012-01-12 00:00:00','2015-01-12 00:00:00','Examen Ocupacional 2012','normal'),(169,'EC01414',5,'2011-10-21 00:00:00','2013-10-18 00:00:00','Examen Ocupacional 2012','reevaluar problemas de vision alterada'),(172,'EC00582',5,'2012-10-23 00:00:00','2012-10-23 00:00:00','Examen Ocupacional 2012','Presión alta. Reevaluacion.'),(176,'EC00140',5,'2010-06-02 00:00:00','2013-06-02 00:00:00','Examen Ocupacional 2010','vision alterada'),(177,'EC02666',5,'2012-03-05 00:00:00','2014-03-05 00:00:00','Examen Ocupacional 2012','colesterol y vision alterada'),(203,'EC02909',2,'2012-04-16 00:00:00','2013-04-16 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\Antecedentes consolidados de personal\\Contreras Gustavo\\Examen ocupacional 2012#','Debe bajar de peso'),(204,'EC02909',5,'2012-04-16 00:00:00','2013-04-16 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\Antecedentes consolidados de personal\\Contreras Gustavo\\Examen ocupacional 2012#','Debe bajar de peso'),(205,'EC02909',3,'2012-04-16 00:00:00','2013-04-16 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\Antecedentes consolidados de personal\\Contreras Gustavo\\Examen ocupacional 2012#','Debe bajar de peso'),(206,'EC9000K',2,'2012-08-03 00:00:00','2013-08-03 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\Antecedentes consolidados de personal\\Pardilla María\\Examen Ocupacional 2012#','Bloqueo rama derecha'),(207,'EC9000K',5,'2012-08-03 00:00:00','2013-08-03 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\Antecedentes consolidados de personal\\Pardilla María\\Examen Ocupacional 2012#','Bloqueo rama derecha'),(208,'EC9000K',3,'2012-08-03 00:00:00','2013-08-03 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\Antecedentes consolidados de personal\\Pardilla María\\Examen Ocupacional 2012#','Bloqueo rama derecha'),(218,'EC00523',2,'2013-06-10 00:00:00','2015-03-19 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\Antecedentes consolidados de personal\\Plaza Ernesto\\EXAMEN ERNESTO PLAZA.pdf#',''),(219,'EC00523',3,'2013-06-10 00:00:00','2015-03-19 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\Antecedentes consolidados de personal\\Plaza Ernesto\\EXAMEN ERNESTO PLAZA.pdf#',''),(220,'EC00523',5,'2013-06-10 00:00:00','2015-03-19 00:00:00','#\\\\192.168.0.10\\Administracion\\03- RRHH\\Antecedentes consolidados de personal\\Plaza Ernesto\\EXAMEN ERNESTO PLAZA.pdf#','');
/*!40000 ALTER TABLE `170 - registro examenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `180 - asignacion perfiles`
--

DROP TABLE IF EXISTS `180 - asignacion perfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `180 - asignacion perfiles` (
  `ID PAC` int NOT NULL AUTO_INCREMENT,
  `Legajo` varchar(45) DEFAULT NULL,
  `Perfil asignado` int DEFAULT '0',
  PRIMARY KEY (`ID PAC`),
  KEY `FK_asigPerf_legajo_idx` (`Legajo`),
  KEY `FK_asigPerf_PerfAsig_idx` (`Perfil asignado`),
  CONSTRAINT `FK_asigPerf_legajo` FOREIGN KEY (`Legajo`) REFERENCES `100 - personal` (`Legajo`),
  CONSTRAINT `FK_asigPerf_PerfAsig` FOREIGN KEY (`Perfil asignado`) REFERENCES `200 - perfiles requisitos` (`ID Perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `180 - asignacion perfiles`
--

LOCK TABLES `180 - asignacion perfiles` WRITE;
/*!40000 ALTER TABLE `180 - asignacion perfiles` DISABLE KEYS */;
INSERT INTO `180 - asignacion perfiles` VALUES (2,'EC00523',5),(5,'EC01910',3),(7,'EC01945',3),(11,'EC00086',4),(16,'EC02186',1),(18,'EC02151',4),(19,'EC01651',1),(20,'EC02372',1),(21,'EC01945',1),(23,'EC01910',1),(24,'EC02178',4),(25,'EC01856',4),(26,'EC00523',4),(27,'EC00655',1),(28,'EC02542',1),(34,'EC00523',2),(35,'EC02542',2),(38,'EC02178',3),(39,'EC01856',3),(40,'EC00086',3),(42,'EC02151',3),(46,'EC00809',3),(54,'EC00809',4),(58,'EC02666',2),(60,'EC01880',1),(62,'EC02593',1),(63,'EC02623',1),(64,'EC02151',1),(67,'EC00523',1),(69,'EC02712',1),(70,'EC02577',1),(71,'EC02569',1),(72,'EC02666',1),(73,'EC00140',1),(77,'EC02666',5),(78,'EC01880',3),(80,'EC02593',3),(81,'EC02623',3),(82,'EC00523',3),(84,'EC02712',3),(85,'EC02577',3),(86,'EC02569',3),(87,'EC02666',3),(136,'EC01945',9),(138,'EC02828',9),(140,'EC02909',9),(142,'EC85472',9),(144,'EC02917',9),(145,'EC9000K',9),(149,'EC00523',13),(150,'EC00582',13),(155,'EC02712',12),(157,'EC02909',12),(161,'EC00140',11),(164,'EC00523',11),(165,'EC00582',11),(169,'EC01414',11),(172,'EC01945',11),(173,'EC02151',11),(174,'EC02216',11),(175,'EC02224',11),(176,'EC02364',11),(178,'EC02666',11),(179,'EC02712',11),(180,'EC02720',11),(186,'EC02909',11),(187,'EC85472',11),(189,'EC9000K',11),(192,'EC00140',10),(194,'EC00523',10),(195,'EC00582',10),(198,'EC01414',10),(200,'EC01945',10),(201,'EC02151',10),(202,'EC02216',10),(203,'EC02364',10),(204,'EC02712',10),(205,'EC02720',10),(212,'EC01945',18),(213,'EC02364',18),(215,'EC02666',18),(219,'EC02364',14),(225,'EC01414',14),(226,'EC02224',15),(227,'EC02720',14),(228,'EC02216',15),(229,'EC01945',15),(232,'EC01414',16),(250,'EC01651',18),(264,'EC00140',4),(265,'EC01651',15),(271,'EC00523',24),(272,'EC00523',25);
/*!40000 ALTER TABLE `180 - asignacion perfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `200 - perfiles requisitos`
--

DROP TABLE IF EXISTS `200 - perfiles requisitos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `200 - perfiles requisitos` (
  `ID Perfil` int NOT NULL AUTO_INCREMENT,
  `Tipo perfil` varchar(45) DEFAULT NULL,
  `Empresa asociada` varchar(45) DEFAULT NULL,
  `Observaciones` longtext,
  PRIMARY KEY (`ID Perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `200 - perfiles requisitos`
--

LOCK TABLES `200 - perfiles requisitos` WRITE;
/*!40000 ALTER TABLE `200 - perfiles requisitos` DISABLE KEYS */;
INSERT INTO `200 - perfiles requisitos` VALUES (1,'Trabajo en piso','ENTEL',''),(2,'Conducción','ENTEL',''),(3,'Trabajo en piso','Ericsson',''),(4,'Trabajo en altura','ENTEL',''),(5,'Conducción','Ericsson',''),(6,'Ingreso a mina','Minera Mantos Blancos',''),(7,'Conducción en mina','Minera Mantos Blancos','1. Antecedentes de los trabajadores a revisar de Empresas de Servicios Externos\n• Certificado de Antecedentes emitido por el Registro Civil.\n?? Contrato de Trabajo (Vigente, si el contrato es indefinido debe presentarse con el respectivo\nanexo de indefinido, renta con el sueldo base mínimo o superior, especificar jornada laboral,\nvinculo con faena, en caso que el contrato no lo señale, debe presentar un anexo)\n?? Examen Preocupacional\n?? Radiografía de tórax\n?? Audiometría\n?? Espirometría\n?? Creatina, perfil lipídico, orina completa/sedimento.\n?? Glicemia.\n?? Optometría\n?? Examen Alcohol y Drogas (marihuana, cocaína, anfetamina, benzodiacepina)\n?? Charla DAS (O.D.I Obligación de Informar). ( Ley 16.774, Derecho a Saber del trabajador de\nlos riesgos laborales Art. 21 y 22 D.S Nº 40 que entrega la empresa, debe señalar un breve\nresumen de lo expuesto en la Charla, con los respectivos datos del Trabajador y Relator de la\nCharla, esto es, Nombres, Rut, Firma y Fecha)\n?? Recepción por parte del Trabajador del Reglamento Interno Orden, Higiene y Seguridad de la\nempresa de servicios (toda empresa Art 14 Decreto Supremo 40) esta debe tener el Nombre\nCompleto, Fecha, Rut y Firma.\n?? Cedula de Identidad\n?? Curso Inducción Mantos Blancos\n?? Toma de conocimiento ingreso seguro (Anexo G)\n?? Certificado adherencia a la mutual\n?? Examen Psicológico de aversión al riesgo\n2. Antecedentes a revisar para conductores de vehículos\n?? Licencia de Conducir:\n?? Examen psicosensotécnico\n?? Hoja de vida del conductor\n?? Certificado de curso de conducción en Faena\n3. Contactos Mantos Blancos\nCarlos Pizarro: Recurso Humanos de Mantos Blancos (en caso de que algún trabajador no\npresente la documentación correspondiente o en casos específicos, se debe pedir su\nautorización para proceder a la Acreditación y procesar la información)\nFono: 56 55 693020\nE-mail: chpizarro@anglochile.cl\n4. Dirección Achilles\nAv. Manuel Antonio matta 2019 of. 303, Antofagasta\nEjecutivo Acreditación: Fabio Xavier do Nascimento\nE-mail: fabioxavier@achilles.com\nHorario continuado 09:00 hrs. A 18:00 hrs.\nFono: 56 55 228946\nNota: Se les recuerda además que la Documentación cuyo Contrato tenga fecha de celebración\ndesde Enero de 2008 en adelante, debe presentarse todo en original, en caso de presentar\nfotocopias, éstas deben ser legalizadas ante notario.'),(8,'Ingreso a mina','BHP Billiton',''),(9,'Administración','ECTEL',''),(10,'Trabajo en altura','ECTEL',''),(11,'Trabajo en piso','ECTEL',''),(12,'Trabajo eléctrico','ECTEL',''),(13,'Conducción 4x4','ECTEL','Perfil para conducción de vehículos 4x4 en montaña'),(14,'Trabajo en altura','NSN',''),(15,'Trabajo en piso','NSN',''),(16,'Conducción 4x4','NSN',''),(17,'Prueba','ECTEL','Perfil de prueba'),(18,'Conducción','ECTEL','Perfil para conductores de carretera no off road'),(19,'Manejo de cargas','ECTEL','Perfil para los bodegueros'),(21,'Office','ECTEL','Cursos de office para ciertas personas de diferentes áreas'),(22,'Gerencias','ECTEL',''),(23,'Administración básic','ECTEL','Para las personas que no requieren ninguna capacitación'),(24,'NSN 3G Instalación','NSN','Perfil de instaladores de 3G NSN'),(25,'NSN 3G Commissioning','NSN','Perfil de comisionadores de 3G NSN'),(26,'NSN 4G Instalación','NSN','Perfil de instaladores de 4G NSN'),(27,'NSN 4G Commissioning','NSN','Perfil de comisionadores de 4G NSN'),(28,'Instalación','Antucoya','Perfil para ingresar y ejecutar trabajos dentro de la mina Antucoya'),(29,'Conducción','Antucoya','Perfil para conductores dentro de la mina Antucoya'),(30,'Nulo','ECTEL',''),(31,'Trabajo en piso s/AG','ECTEL','Trabajo en piso sin posibilidad de altura geográfica');
/*!40000 ALTER TABLE `200 - perfiles requisitos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `210 - cursos por perfil`
--

DROP TABLE IF EXISTS `210 - cursos por perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `210 - cursos por perfil` (
  `ID Cursos por perfil` int NOT NULL AUTO_INCREMENT,
  `Perfil` int DEFAULT '0',
  `Curso` int DEFAULT '0',
  PRIMARY KEY (`ID Cursos por perfil`),
  KEY `FK_CurPerf_perfil_idx` (`Perfil`),
  KEY `FK_CurPerf_curso_idx` (`Curso`),
  CONSTRAINT `FK_CurPerf_curso` FOREIGN KEY (`Curso`) REFERENCES `121 - cursos` (`ID Curso`),
  CONSTRAINT `FK_CurPerf_perfil` FOREIGN KEY (`Perfil`) REFERENCES `200 - perfiles requisitos` (`ID Perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `210 - cursos por perfil`
--

LOCK TABLES `210 - cursos por perfil` WRITE;
/*!40000 ALTER TABLE `210 - cursos por perfil` DISABLE KEYS */;
INSERT INTO `210 - cursos por perfil` VALUES (11,1,2),(12,2,2),(13,4,2),(14,4,7),(15,4,8),(16,1,8),(17,2,8),(26,10,2),(27,10,7),(29,11,2),(30,11,12),(33,10,12),(34,12,2),(35,12,12),(36,13,2),(37,13,12),(38,13,11),(41,9,2),(42,10,13),(43,11,13),(44,12,13),(45,13,13),(46,18,2),(47,18,12),(48,18,13),(49,19,2),(50,19,12),(51,19,13),(52,18,11),(53,14,7),(54,14,12),(55,14,2),(56,14,13),(57,15,2),(58,15,12),(59,15,13),(61,16,11),(62,3,8),(63,3,2),(64,19,20),(87,31,2),(88,31,12),(89,31,13);
/*!40000 ALTER TABLE `210 - cursos por perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `220 - epp por perfil`
--

DROP TABLE IF EXISTS `220 - epp por perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `220 - epp por perfil` (
  `ID EPP por perfil` int NOT NULL AUTO_INCREMENT,
  `EPP` int DEFAULT '0',
  `Perfil` int DEFAULT '0',
  `Recambio periódico` enum('Si','No') DEFAULT 'No',
  `Periodicidad` int DEFAULT NULL,
  PRIMARY KEY (`ID EPP por perfil`),
  KEY `FK_EPPPerf_epp_idx` (`EPP`),
  CONSTRAINT `FK_EPPPerf_epp` FOREIGN KEY (`EPP`) REFERENCES `131 - epp` (`ID EPP`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `220 - epp por perfil`
--

LOCK TABLES `220 - epp por perfil` WRITE;
/*!40000 ALTER TABLE `220 - epp por perfil` DISABLE KEYS */;
INSERT INTO `220 - epp por perfil` VALUES (10,27,3,'Si',180),(11,27,5,'Si',180),(17,27,1,'Si',180),(25,27,4,'Si',180),(32,27,2,'Si',180),(39,27,10,'Si',180),(48,27,11,'Si',180),(52,28,12,'Si',365),(55,27,13,'Si',180),(62,27,18,'Si',180),(66,27,19,'Si',180),(73,27,14,'Si',180),(82,27,15,'Si',180),(84,27,16,'Si',180),(89,27,31,'Si',180);
/*!40000 ALTER TABLE `220 - epp por perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `230 - examenes por perfil`
--

DROP TABLE IF EXISTS `230 - examenes por perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `230 - examenes por perfil` (
  `ID Examenes por perfil` int NOT NULL AUTO_INCREMENT,
  `Examen` int DEFAULT '0',
  `Perfil` int DEFAULT '0',
  PRIMARY KEY (`ID Examenes por perfil`),
  KEY `FK_ExamPerf_perfil_idx` (`Perfil`),
  KEY `FK_ExamPerf_examen_idx` (`Examen`),
  CONSTRAINT `FK_ExamPerf_examen` FOREIGN KEY (`Examen`) REFERENCES `141 - examenes` (`ID Examen`),
  CONSTRAINT `FK_ExamPerf_perfil` FOREIGN KEY (`Perfil`) REFERENCES `200 - perfiles requisitos` (`ID Perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `230 - examenes por perfil`
--

LOCK TABLES `230 - examenes por perfil` WRITE;
/*!40000 ALTER TABLE `230 - examenes por perfil` DISABLE KEYS */;
INSERT INTO `230 - examenes por perfil` VALUES (2,5,3),(3,3,5),(4,5,5),(5,4,5),(9,5,1),(11,3,2),(12,5,2),(13,3,4),(14,5,4),(15,8,6),(16,6,6),(17,7,6),(18,6,7),(19,7,7),(20,8,7),(21,4,7),(22,8,8),(23,2,9),(24,2,10),(25,3,10),(26,5,10),(27,2,11),(28,2,12),(29,2,13),(30,4,13),(32,5,11),(33,2,18),(34,3,18),(35,5,18),(36,4,18),(37,2,19),(38,3,19),(39,5,19),(40,3,14),(41,5,14),(43,5,15),(44,2,16),(45,4,16),(46,2,23),(47,2,28),(48,5,28),(49,3,28),(50,2,29),(51,5,29),(52,3,29),(53,4,29),(54,2,31);
/*!40000 ALTER TABLE `230 - examenes por perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `240 - otros requisitos por perfil`
--

DROP TABLE IF EXISTS `240 - otros requisitos por perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `240 - otros requisitos por perfil` (
  `ID Requisito` int NOT NULL AUTO_INCREMENT,
  `Requisito` varchar(45) DEFAULT NULL,
  `Perfil` int DEFAULT '0',
  PRIMARY KEY (`ID Requisito`),
  KEY `FK_OtroReqPerf_perfil_idx` (`Perfil`),
  CONSTRAINT `FK_OtroReqPerf_perfil` FOREIGN KEY (`Perfil`) REFERENCES `200 - perfiles requisitos` (`ID Perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `240 - otros requisitos por perfil`
--

LOCK TABLES `240 - otros requisitos por perfil` WRITE;
/*!40000 ALTER TABLE `240 - otros requisitos por perfil` DISABLE KEYS */;
INSERT INTO `240 - otros requisitos por perfil` VALUES (3,'Charla DAS',6),(4,'Recepción del RI',6),(5,'Cédula de identidad',6),(6,'Certificado de adherencia a la mutual',6),(9,'Charla DAS',7),(10,'Recepción del RI',7),(11,'Cédula de identidad',7),(12,'Certificado de adherencia a la mutual',7),(16,'Charla DAS',8),(17,'Recepción EPP',8),(18,'Recepción RI',8),(19,'Cédula de identidad',8),(20,'Certificado de adherencia a la Mutual',8),(21,'Contrato de trabajo',28),(22,'Anexos de contrato de trabajo',28),(23,'Fotografía tamaño carnet digitalizada',28),(24,'Consentimiento para test de alcohol y drogas',28),(25,'Fotocopia de cédula de identidad',28),(26,'Registro DAS',28),(27,'Entrega de RI',28),(28,'Contrato de trabajo',29),(29,'Anexos de contrato de trabajo',29),(30,'Fotografía tamaño carnet digitalizada',29),(31,'Consentimiento para test de alcohol y drogas',29),(32,'Fotocopia de cédula de identidad',29),(33,'Registro DAS',29),(34,'Entrega de RI',29),(35,'Fotocopia de licencia Municipal vigente',29),(36,'Hoja de vida de conductor (máximo 30 días)',29);
/*!40000 ALTER TABLE `240 - otros requisitos por perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dotacion 2013-01`
--

DROP TABLE IF EXISTS `dotacion 2013-01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dotacion 2013-01` (
  `Legajo` varchar(50) NOT NULL,
  `Apellido 1` varchar(45) DEFAULT NULL,
  `Apellido 2` varchar(45) DEFAULT NULL,
  `Nombre 1` varchar(45) DEFAULT NULL,
  `Nombre 2` varchar(45) DEFAULT NULL,
  `RUT` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Legajo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dotacion 2013-01`
--

LOCK TABLES `dotacion 2013-01` WRITE;
/*!40000 ALTER TABLE `dotacion 2013-01` DISABLE KEYS */;
INSERT INTO `dotacion 2013-01` VALUES ('EC00019','OLIVARES','CERDA','OLGA','','12598063-5'),('EC00027','BEIZA','MUÑOZ','JOAQUIN','','09095268-4'),('EC00035','CARCAMO','CONTRERAS','ELADIO','','08954607-9'),('EC00043','HUERTA','ALFARO','LEONARDO','','09012379-3'),('EC00078','PINTO','PINTO','LEONORA','','13086972-6'),('EC00108','GONZALEZ','PAEZ','JOSE','','11327522-7'),('EC00132','ALARCON','BRAVO','OSVALDO','','14249599-6'),('EC00140','SURCO','FLORES','WILLER','','12686891-K'),('EC00183','REYES','SILVA','PATRICIO','','11885371-7'),('EC00280','CARRASCO','SANTANA','BEATRIZ','','13590905-K'),('EC00523','PLAZA','MEJIAS','ERNESTO','','10393683-7'),('EC00671','BREULL','AMADOR','MARIO','','07845379-6'),('EC00825','MOLINA','ORTEGA','FELIPE','','15939991-5'),('EC00876','MOYANO','MARTINEZ','ALEJANDRO','','22618115-6'),('EC00949','PARRAGUEZ','MADRID','MARIA','','07361406-6'),('EC01163','BURGOS','BAHAMONDES','MIGUEL','','11650473-1'),('EC01279','SOTO','PACHECO','BERNARDO','','09715371-K'),('EC01333','SOTO','YANTEN','CRISTIAN','','13773783-3'),('EC01414','MIRANDA','CONTRERAS','VICTOR','','08027703-2'),('EC01430','AGUILERA','SEPULVEDA','FRANCISCO','','16745715-0'),('EC01503','SANCHEZ','ARIAS','CRISTINA','','15584778-6'),('EC01538','PEREZ','AVILA','YERANDIS','','23135432-8'),('EC01694','ALCARAS','MORALES','RENZO','','12600056-1'),('EC01716','PAYERO','DIAZ','JUAN','PABLO',''),('EC01902','CORRAL','YAGNAM','FELIX','','09295758-6'),('EC01945','MONTESINO','VELAZQUEZ','ERNESTO','','23350096-8'),('EC02070','BURGOS','BURGOS','PATRICIO','','06624274-9'),('EC02151','GONZALEZ','ROSAS','NELSON','','18093612-2'),('EC02216','CAMPOS','TRUJILLO','MATIAS','','18347388-3'),('EC02224','CAMPOS','ESPINOZA','SEBASTIAN','','17411180-4'),('EC02364','MORALES','DIAZ','CARLOS','','14365331-5'),('EC02658','ARCOS','CONTRERAS','MAURICIO','','13988988-6'),('EC02666','TOBAR','PINOCHET','HECTOR','','09037474-5'),('EC02690','BUCHNER','RODRIGUEZ','PEDRO','','07980384-7'),('EC02712','SALINAS','CORTES','CESAR','','22546695-5'),('EC02720','MIRANDA','CASTRO','EDGAR','','17770257-9'),('EC02747','OÑATE','SOTO','CRISTIAN','','16147463-0'),('EC02755','PEREZ','VALENZUELA','CARLOS','','09354401-3'),('EC02763','LEIVA','GUTIERREZ','ALEJANDRO','','17047958-0'),('EC02771','LEIVA','GUTIERREZ','SERGIO','','17380922-0'),('EC02828','SANZANA','ROJAS','GISELLE','','07935780-4'),('EC02887','CHAMBI','SANCHEZ','OSCAR','','12609351-9'),('EC02909','CONTRERAS','VALLEJOS','GUSTAVO','','15327105-4'),('EC02917','ESPINDOLA','HUN','ROXANA','','13974778-K'),('EC12548','SOTO','PACHECO','JORGE','ESTEBAN',''),('EC85448','MATAMALA','RIQUELME','RENE','','07419797-3'),('EC85456','VASCONCELLOS','CABRERA','JESSICA','','11882777-5'),('EC85472','RODRIGUEZ','SUAREZ','YINET','','23988179-3'),('EC85499','MATURANA','CORTES','NIDIA','','15046345-9'),('EC9000K','PARDILLA','GARRIDO','MARIA','','24068421-7'),('EC94021','MUÑOZ','KELLER','CRISTOBAL','','17578397-0'),('EC95001','MARTINEZ','GORDILLO','WILLIAM','','18097738-4'),('EC95044','GAMONAL','MALDONADO','EVARISTO','','13488083-K'),('EC95702','MUÑOZ','SEITZ','LUIS','ALBERTO',''),('EC95788','CALDERON','FIGUEROA','VICTOR','HUG',''),('EC95877','SOTO','ROMERO','MANUEL','ANTONIO','');
/*!40000 ALTER TABLE `dotacion 2013-01` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-22 19:58:39
