-- MySQL dump 10.13  Distrib 5.1.41, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: INAT2011
-- ------------------------------------------------------
-- Server version	5.1.41-3ubuntu12.7

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
-- Table structure for table `City`
--

DROP TABLE IF EXISTS `City`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `City` (
  `CityID` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `CityName` varchar(225) NOT NULL,
  PRIMARY KEY (`CityID`)
) ENGINE=MyISAM AUTO_INCREMENT=1233 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `City`
--

LOCK TABLES `City` WRITE;
/*!40000 ALTER TABLE `City` DISABLE KEYS */;
INSERT INTO `City` VALUES (1,'Abohar'),(2,'Achalpur'),(3,'Addanki'),(4,'Adipur'),(5,'Adoor'),(6,'Adra'),(7,'Agartala'),(8,'Agra'),(9,'Ahmedabad'),(10,'Ahmednagar'),(11,'Aizawl'),(12,'Ajmer'),(13,'Akaltara'),(14,'Akola'),(15,'Alappuzha'),(16,'Aligarh'),(17,'Alipurduar'),(18,'Allahabad'),(19,'Almora'),(20,'Alwar'),(21,'Amarpur'),(22,'Ambikapur'),(23,'Ambala'),(24,'Ambala'),(25,'Amli'),(26,'Amravati'),(27,'Amreli'),(28,'Amritsar'),(29,'Amroha'),(30,'Anakapalle'),(31,'Anand'),(32,'Anandapur'),(33,'Anantapur'),(34,'Anantnag'),(35,'Ancharakandy'),(36,'Angul'),(37,'Ankleswar'),(38,'Anugu'),(39,'Arakkonam'),(40,'Araria'),(41,'Arambagh'),(42,'Arasikere'),(43,'Arcot'),(44,'Areraj'),(45,'Arrah'),(46,'Aroor'),(47,'Aruppukkottai'),(48,'Asansol'),(49,'Ashok Nagar'),(50,'Ashtamichira'),(51,'Asika'),(52,'Assandh'),(53,'Attingal'),(54,'Aurangabad'),(55,'Aurangabad'),(56,'Azamgarh'),(57,'Babiyal'),(58,'Baddi'),(59,'Bade Bacheli'),(60,'Badharghat'),(61,'Bagaha'),(62,'Bahadurgarh'),(63,'Bahadurganj'),(64,'Baharampur'),(65,'Bahraich'),(66,'Bairgania'),(67,'Bakhtiarpur'),(68,'Balaghat'),(69,'Balangir'),(70,'Balasore'),(71,'Baleshwar'),(72,'Bali'),(73,'Bally'),(74,'Ballabhgarh'),(75,'Ballia'),(76,'Balod'),(77,'Baloda Bazar'),(78,'Balrampur'),(79,'Balurghat'),(80,'Bamra'),(81,'Banda'),(82,'Bandipore'),(83,'Banganapalle'),(84,'Banka'),(85,'Banmankhi Bazar'),(86,'Banswara'),(87,'Bankura'),(88,'Banur'),(89,'Bapatla'),(90,'Barahiya'),(91,'Baramati'),(92,'Baramula'),(93,'Baran'),(94,'Barasat'),(95,'Bardhaman(Burdwan)'),(96,'Barakar'),(97,'Barauli'),(98,'Barbigha'),(99,'Bareilly'),(100,'Bargarh'),(101,'Barh'),(102,'Barughutu'),(103,'Bandikui'),(104,'Basna'),(105,'Bathinda'),(106,'Barbil'),(107,'Bargarh'),(108,'Barh'),(109,'Baripada'),(110,'Barmer'),(111,'Barnala'),(112,'Barpeta'),(113,'Barpeta Road'),(114,'Barrackpur'),(115,'Barwani'),(116,'Barwala'),(117,'Basudebpur'),(118,'Bawal'),(119,'Bazpur'),(120,'Beawar'),(121,'Begusarai'),(122,'Behea'),(123,'Belgaum'),(124,'Bellary'),(125,'Belpahar'),(126,'Bemetra'),(127,'Bengaluru'),(128,'Berhampur'),(129,'Bettiah'),(130,'Betul (Goa)'),(131,'Betul (MP)'),(132,'Bhabua'),(133,'Bhadrachalam'),(134,'Bhadrak'),(135,'Bhagalpur'),(136,'Bhajanpura'),(137,'Bhandara'),(138,'Bharatpur'),(139,'Bharthana'),(140,'Bharuch'),(141,'Bhatapara'),(142,'Bhavani'),(143,'Bhavnagar'),(144,'Bhawanipatna'),(145,'Bhilai'),(146,'Bhilwara'),(147,'Bhimavaram'),(148,'Bhinmal'),(149,'Bhiwandi'),(150,'Bhiwani'),(151,'Bhopal'),(152,'Bhuban'),(153,'Bhubaneswar'),(154,'Bhuj'),(155,'Bhusawal'),(156,'Bidar'),(157,'Bidhan Nagar'),(158,'Bihar Sharif'),(159,'Bijnaur'),(160,'Bikaner'),(161,'Bikramganj'),(162,'Bilara'),(163,'Bilasipara'),(164,'Bilaspur'),(165,'Bilaspur'),(166,'Biramitrapur'),(167,'Birgaon'),(168,'Bodh Gaya'),(169,'Bokaro Steel City'),(170,'Bongaigaon'),(171,'Bomdila'),(172,'Brahmapur'),(173,'Brajrajnagar'),(174,'Budaun'),(175,'Bulandshahr'),(176,'Burhanpur'),(177,'Burla'),(178,'Buxar'),(179,'Byasanagar'),(180,'Cambay(Khambat)'),(181,'Chaibasa'),(182,'Chakeri'),(183,'Chakradharpur'),(184,'Chalisgaon'),(185,'Chamba'),(186,'Chamba'),(187,'Champa'),(188,'Champawat'),(189,'Champhai'),(190,'Chamrajnagar'),(191,'Chandannagar'),(192,'Chandigarh*'),(193,'Chandil'),(194,'Chandausi'),(195,'Chandrapura'),(196,'Chanpatia'),(197,'Charkhi Dadri'),(198,'Chapirevula'),(199,'Chapra'),(200,'Chatra'),(201,'Charkhari'),(202,'Charkhi Dadri'),(203,'Chalakudy'),(204,'Chandrapur'),(205,'Changanassery'),(206,'Cheeka'),(207,'Chendamangalam'),(208,'Chengalpattu'),(209,'Chengannur'),(210,'Chennai'),(211,'Cherthala'),(212,'Cheruthazham'),(213,'Chhapra'),(214,'Chhatarpur'),(215,'Chhindwara'),(216,'Chikmagalur'),(217,'Chimiri'),(218,'Chintamani'),(219,'Chiplun'),(220,'Chirala'),(221,'Chirkunda'),(222,'Chinsura'),(223,'Chitradurga'),(224,'Chittur-Thathamangalam'),(225,'Chitrakoot'),(226,'Chittoor'),(227,'Chockli'),(228,'Churi'),(229,'Churu'),(230,'Coimbatore'),(231,'Colgong'),(232,'Contai'),(233,'Cooch Behar(Kochbihar)'),(234,'Coonoor'),(235,'Cuddalore'),(236,'Cuddapah'),(237,'Curchorem Cacora'),(238,'Cuttack'),(239,'Dabra'),(240,'Dadri'),(241,'Dahod'),(242,'Dalhousie'),(243,'Dalkhola'),(244,'Dalli-Rajhara'),(245,'Dalsinghsarai'),(246,'Daltonganj'),(247,'Daltonganj'),(248,'Daman & Diu'),(249,'Damoh'),(250,'Darbhanga'),(251,'Darjeeling'),(252,'Datia'),(253,'Daudnagar'),(254,'Daund'),(255,'Davanagere'),(256,'Debagarh'),(257,'Deesa'),(258,'Dehgam'),(259,'Dehradun'),(260,'Dehri(Dehri-on-Sone)'),(261,'Deoghar'),(262,'Deoria'),(263,'Devgarh'),(264,'Devgarh'),(265,'Dewas'),(266,'Dhaka'),(267,'Dhamtari'),(268,'Dhanbad'),(269,'Dhar'),(270,'Dharampur'),(271,'Dharamsala'),(272,'Dharmanagar'),(273,'Dharwad'),(274,'Dhekiajuli'),(275,'Dhenkanal'),(276,'Dhenkanal'),(277,'Dholka'),(278,'Dhubri'),(279,'Dhule'),(280,'Dhulian'),(281,'Dhuri'),(282,'Dibrugarh'),(283,'Digboi'),(284,'Dighwara'),(285,'Dimapur'),(286,'Dindigul'),(287,'Diphu'),(288,'Dipka'),(289,'Dispur'),(290,'Diu'),(291,'Dombivli'),(292,'Dongargarh'),(293,'Duliajan Oil Town'),(294,'Dumdum'),(295,'Dumka'),(296,'Dumraon'),(297,'Durg-Bhilai Nagar'),(298,'Durgapur (MH)'),(299,'Durgapur (WB)'),(300,'Dwarka'),(301,'Ellenabad'),(302,'Eluru'),(303,'Erattupetta'),(304,'Erode'),(305,'Etah'),(306,'Etawah'),(307,'Faizabad'),(308,'Falna'),(309,'Faridabad'),(310,'Faridkot'),(311,'Farrukhabad'),(312,'Fatehabad (Haryana)'),(313,'Fatehabad (MP)'),(314,'Fatehabad (UP)'),(315,'Fatehgarh'),(316,'Fatehpur Chaurasi'),(317,'Fatehpur Sikri'),(318,'Fatehpur (Rajasthan)'),(319,'Fatehpur (UP)'),(320,'Fatwah'),(321,'Fazilka'),(322,'Forbesganj'),(323,'Firozabad'),(324,'Firozpur'),(325,'Gadag'),(326,'Gadchiroli'),(327,'Ganaur'),(328,'Gandhidham'),(329,'Gandhinagar'),(330,'Gangtok'),(331,'Ganjam'),(332,'Garhwa'),(333,'Gauripur'),(334,'Gaya'),(335,'Gharaunda'),(336,'Ghatampur'),(337,'Ghatanji'),(338,'Ghatshila'),(339,'Ghaziabad'),(340,'Ghazipur'),(341,'Giridih'),(342,'Goa Velha'),(343,'Goalpara'),(344,'Gobranawapara'),(345,'Godda'),(346,'Godhra'),(347,'Gogri Jamalpur'),(348,'Gohana'),(349,'Gokak'),(350,'Golaghat'),(351,'Gomoh'),(352,'Gondiya'),(353,'Gopalganj'),(354,'Gorakhpur'),(355,'Greater Noida'),(356,'Gudalur'),(357,'Gudivada'),(358,'Gulbarga'),(359,'Gumia'),(360,'Gumla'),(361,'Guna'),(362,'Gundlupet'),(363,'Guntur'),(364,'Gunupur'),(365,'Gurgaon'),(366,'Guruvayoor'),(367,'Guwahati'),(368,'Gwalior'),(369,'Haflong'),(370,'Hailakandi'),(371,'Hajipur'),(372,'Haldia'),(373,'Haldwani'),(374,'Halisahar'),(375,'Hamirpur'),(376,'Hamirpur'),(377,'Hansi'),(378,'Hanuman Junction'),(379,'Hanumangarh'),(380,'Harda'),(381,'Hardoi'),(382,'Hardwar'),(383,'Harsawa'),(384,'Hassan'),(385,'Hastinapur'),(386,'Hathras'),(387,'Hazaribag'),(388,'Hilsa'),(389,'Himatnagar'),(390,'Hinjilicut'),(391,'Hisar'),(392,'Hisua'),(393,'Hodal'),(394,'Hojai'),(395,'Hoshiarpur'),(396,'Hospet'),(397,'Howrah'),(398,'Hubli'),(399,'Hugli-Chuchura'),(400,'Hussainabad'),(401,'Hyderabad'),(402,'Ichalkaranji'),(403,'Idar'),(404,'Imphal'),(405,'Indore'),(406,'Indranagar'),(407,'Irinjalakuda'),(408,'Islampur'),(409,'Islampur'),(410,'Itanagar'),(411,'Itarsi'),(412,'Jabalpur'),(413,'Jagadhri'),(414,'Jagatsinghapur'),(415,'Jagdalpur'),(416,'Jagdishpur'),(417,'Jagraon'),(418,'Jagtial'),(419,'Jaipur*'),(420,'Jais'),(421,'Jaisalmer'),(422,'Jaitaran'),(423,'Jajapur'),(424,'Jalalabad'),(425,'Jalna'),(426,'Jalandhar'),(427,'Jaleswar'),(428,'Jalgaon'),(429,'Jalore'),(430,'Jamalpur'),(431,'Jammu'),(432,'Jamnagar'),(433,'Jamshedpur'),(434,'Jamtara'),(435,'Jamui'),(436,'Jashpurnagar'),(437,'Jaspur'),(438,'Jatani'),(439,'Jaunpur'),(440,'Jehanabad'),(441,'Jeypur'),(442,'Jhabua'),(443,'Jhajha'),(444,'Jhajjar'),(445,'Jhalawar'),(446,'Jhanjharpur'),(447,'Jhansi'),(448,'Jharsuguda'),(449,'Jhumri Tilaiya'),(450,'Jhunjhunu'),(451,'Jind'),(452,'Joda'),(453,'Jodhpur'),(454,'Jogbani'),(455,'Jogendranagar'),(456,'Jorhat'),(457,'Jowai'),(458,'Junagadh'),(459,'Junnar'),(460,'Kadapa'),(461,'Kadirur'),(462,'Kailaras'),(463,'Kailasahar'),(464,'Kaithal'),(465,'Kakching'),(466,'Kakinada'),(467,'Kalan Wali'),(468,'Kalburgi(Gulbarga)'),(469,'Kalimpong'),(470,'Kalka'),(471,'Kalliasseri'),(472,'Kalpetta'),(473,'Kalyan'),(474,'Kalyanpur'),(475,'Kamthi'),(476,'Kanchipuram'),(477,'Kanhangad'),(478,'Kanjikkuzhi'),(479,'Kanker'),(480,'Kannur'),(481,'Kanpur'),(482,'Kantabanji'),(483,'Kanti'),(484,'Kapurthala'),(485,'Karad'),(486,'Karaikal'),(487,'Karaikudi'),(488,'Karanjia'),(489,'Karimganj'),(490,'Karimnagar'),(491,'Karkala'),(492,'Karnal'),(493,'Karur'),(494,'Karungal'),(495,'Karwar'),(496,'Kasaragod'),(497,'Kashipur'),(498,'Kathua'),(499,'Katihar'),(500,'Katni'),(501,'Kavaratti'),(502,'Kawardha'),(503,'Kayamkulam'),(504,'Kendrapara'),(505,'Kendujhar'),(506,'Keylong'),(507,'Khagaria'),(508,'Khammam'),(509,'Khanna'),(510,'Kharagpur (Munger)'),(511,'Kharagpur'),(512,'Lakhimpur Kheri'),(513,'Khordha'),(514,'Khowai'),(515,'Khunti'),(516,'Khurai'),(517,'kichha'),(518,'Kishanganj'),(519,'Kochi (Ernakulam)'),(520,'Kodad'),(521,'Kodungallur'),(522,'Kohima'),(523,'Kokrajhar'),(524,'Kolar'),(525,'Kolhapur'),(526,'Kolkata'),(527,'Kollam'),(528,'Kondagaon'),(529,'Konnagar'),(530,'Koothuparamba'),(531,'Koraput'),(532,'Korba'),(533,'Kota (Chhattisgarh)'),(534,'Kota (Karnataka)'),(535,'Kota (Rajasthan)'),(536,'Kota (UP)'),(537,'Kotdwara'),(538,'Kothagudem'),(539,'Kothamangalam'),(540,'Kothapeta'),(541,'Kotma'),(542,'Kottayam'),(543,'Kozhikode'),(544,'Krishnanagar'),(545,'Kuchinda'),(546,'Kunnamkulam'),(547,'Kurnool'),(548,'Kurukshetra'),(549,'Lachhmangarh'),(550,'Ladnu'),(551,'Ladwa'),(552,'Lahar'),(553,'Laharpur'),(554,'Lakheri'),(555,'Lakhimpur'),(556,'Lakhisarai'),(557,'Lakshmeshwar'),(558,'Lal Gopalganj Nindaura'),(559,'Lalganj'),(560,'Lalgudi'),(561,'Lalitpur'),(562,'Lalganj'),(563,'Lalsot'),(564,'Lanka'),(565,'Lar'),(566,'Lathi'),(567,'Latur'),(568,'Leh'),(569,'Lilong'),(570,'Limbdi'),(571,'Lingsugur'),(572,'Loha'),(573,'Lohardaga'),(574,'Lonar'),(575,'Lonavla'),(576,'Longowal'),(577,'Loni'),(578,'Losal'),(579,'Lucknow'),(580,'Ludhiana'),(581,'Lumding'),(582,'Lunawada'),(583,'Lundi'),(584,'Lunglei'),(585,'Machilipatnam'),(586,'Madan
apalle'),(587,'Madhepura'),(588,'Madgaon'),(589,'Madhubani'),(590,'Madhupur'),(591,'Madhyamgram'),(592,'Madikeri'),(593,'Madurai'),(594,'Mahabaleswar'),(595,'Mahabubnagar'),(596,'Mahad'),(597,'Maharajganj'),(598,'Mahasamund'),(599,'Mahe'),(600,'Mahendragarh'),(601,'Mahendragarh'),(602,'Mahnar Bazar'),(603,'Mahoba'),(604,'Mahuva (Bhavnagar)'),(605,'Mahuva (Surat)'),(606,'Mahwa'),(607,'Makhdumpur'),(608,'Malappuram'),(609,'Malegaon'),(610,'Malkangiri'),(611,'Malout'),(612,'Manavadar'),(613,'Manchar'),(614,'Mancherial'),(615,'Mandi'),(616,'Mandi Dabwali'),(617,'Mandla'),(618,'Mandsaur'),(619,'Mandya'),(620,'Maner'),(621,'Manesar'),(622,'Mangalagiri'),(623,'Mangaldoi'),(624,'Mangalore'),(625,'Manglaur'),(626,'Manihari'),(627,'Mankachar'),(628,'Mapusa'),(629,'Margherita'),(630,'Margao'),(631,'Marhaura'),(632,'Mariani'),(633,'Marigaon'),(634,'Markapur'),(635,'Marmagao'),(636,'Masaurhi'),(637,'Mathura'),(638,'Mattannur'),(639,'Mavelikkara'),(640,'Mavoor'),(641,'Mayang Imphal'),(642,'Meerut'),(643,'Mehsana'),(644,'Mihijam'),(645,'Mira-Bhayandar'),(646,'Miraj'),(647,'Mirganj'),(648,'Mirzapur'),(649,'Mithapur'),(650,'Modasa'),(651,'Moga'),(652,'Mogalthur'),(653,'Mohali'),(654,'Mohania'),(655,'Mokama'),(656,'Mokameh'),(657,'Mokokchung'),(658,'Moradabad'),(659,'Morshi'),(660,'Motihari'),(661,'Motipur'),(662,'Mount Abu'),(663,'Mukatsar'),(664,'Mullanpur'),(665,'Mullanpur'),(666,'Mungeli'),(667,'Munger'),(668,'Mumbai'),(669,'Muradnagar'),(670,'Murliganj'),(671,'Murshidabad'),(672,'Murwara'),(673,'Musabani'),(674,'Mussoorie'),(675,'Muvattupuzha'),(676,'Muzaffarnagar'),(677,'Muzaffarpur'),(678,'Mysore'),(679,'Mhow'),(680,'Nabarangapur'),(681,'Nabha'),(682,'Nadiad'),(683,'Nagaon'),(684,'Nagapattinam'),(685,'Nagarkurnool'),(686,'Nagaur'),(687,'Nagercoil'),(688,'Nagla'),(689,'Nagpur'),(690,'Nahan'),(691,'Naharlagun'),(692,'Naihati'),(693,'Naila Janjgir'),(694,'Nainital'),(695,'Nakodar'),(696,'Nalagarh (Nawalgarh)'),(697,'Nalbari'),(698,'Nalgonda'),(699,'Namakkal'),(700,'Nanded'),(701,'Nandyal'),(702,'Nandurbar'),(703,'Nangal'),(704,'Nanjangud'),(705,'Narasapuram'),(706,'Narasaraopet'),(707,'Narkatiaganj'),(708,'Narnaul'),(709,'Narsimhapur'),(710,'Narsinghgarh (Damoh)'),(711,'Narsinghgarh (Rajgarh)'),(712,'Narsingarh'),(713,'Narwana'),(714,'Nashik'),(715,'Naugachhia'),(716,'Navi Mumbai'),(717,'Navsari'),(718,'Nawada'),(719,'Nawalgarh'),(720,'Nawanshahr'),(721,'Nedumangad'),(722,'Neemuch'),(723,'Nellore'),(724,'New Delhi'),(725,'New Guntur'),(726,'NOIDA (Gautam Budh Nagar)'),(727,'Neyyattinkara'),(728,'Nilambur'),(729,'Nizamabad (AP)'),(730,'Nizamabad (UP)'),(731,'Nokha'),(732,'Nongstoin'),(733,'Noorpur'),(734,'North Lakhimpur'),(735,'Nuzvid'),(736,'O Valley'),(737,'Oddanchatram'),(738,'Obra'),(739,'Ongole'),(740,'Orai'),(741,'Osmanabad'),(742,'Ottappalam'),(743,'Ozar'),(744,'Pakaur'),(745,'Palai'),(746,'Palakkad'),(747,'Palanpur'),(748,'Pali'),(749,'Palwal'),(750,'Panaji(Panjim)'),(751,'Panchkula'),(752,'Pandharpur'),(753,'Panipat'),(754,'Panki'),(755,'Panna'),(756,'Panniyannur'),(757,'Panvel'),(758,'Pappinisseri'),(759,'Paradip'),(760,'Paratwada'),(761,'Paravoor'),(762,'Parlakhemundi'),(763,'Pasighat'),(764,'Patan'),(765,'Pathanamthitta'),(766,'Pathankot'),(767,'Patiala'),(768,'Patna'),(769,'Patran'),(770,'Patratu'),(771,'Pattamundai'),(772,'Patti'),(773,'Pauri'),(774,'Payyannur'),(775,'Pehowa'),(776,'Peringathur'),(777,'Perinthalmanna'),(778,'Perumbavoor'),(779,'Phaltan'),(780,'Phagwara'),(781,'Phillaur'),(782,'Phulabani'),(783,'Phurro'),(784,'Piduguralla'),(785,'Pilani'),(786,'Pilibhit'),(787,'Pimpri Chinchwad'),(788,'Pinjore'),(789,'Piro'),(790,'Pithoragarh'),(791,'Pokaran'),(792,'Pollachi'),(793,'Ponda'),(794,'Pondicherry'),(795,'Ponnani'),(796,'Porbandar'),(797,'Port Blair'),(798,'Pratapgarh (Rajasthan)'),(799,'Pratapgarh (Tripura)'),(800,'Pratapgarh (UP)'),(801,'Pudukkottai'),(802,'Punalur'),(803,'Punch'),(804,'Pune'),(805,'Puri'),(806,'Purnia'),(807,'Purulia'),(808,'Pushkar'),(809,'Qadian'),(810,'Quilandy'),(811,'Rae Bareli'),(812,'Rafiganj'),(813,'Raichur'),(814,'Raigarh'),(815,'Raikot'),(816,'Raipur'),(817,'Rairangpur'),(818,'Raisen'),(819,'Rajagangapur'),(820,'Rajahmundry'),(821,'Rajampet'),(822,'Rajapalayam'),(823,'Rajauri'),(824,'Rajgangpur'),(825,'Rajgarh (Alwar)'),(826,'Rajgarh (Churu)'),(827,'Rajgarh (Dhar)'),(828,'Rajgarh (HP)'),(829,'Rajgarh (MP)'),(830,'Rajgir'),(831,'Rajgurunagar (Khed)'),(832,'Rajkot'),(833,'Rajnandgaon'),(834,'Rajpura'),(835,'Ram Garh'),(836,'Ramanagara'),(837,'Ramanathapuram'),(838,'Ramapuram (Kottayam)'),(839,'Ramapuram (Malappuram)'),(840,'Rameshwaram'),(841,'Ramgarh Cantonment'),(842,'Ramgarh'),(843,'Ramnagar'),(844,'Rampur'),(845,'Ranaghat'),(846,'Ranchi'),(847,'Rangia'),(848,'Rangpo'),(849,'Rani'),(850,'Rania'),(851,'Ranikhet'),(852,'Ratangarh'),(853,'Ratangarh'),(854,'Rath'),(855,'Ratia'),(856,'Ratlam'),(857,'Ratnagiri'),(858,'Raurkela'),(859,'Ravulapalem'),(860,'Raxaul Bazar'),(861,'Rayagada'),(862,'Renukoot'),(863,'Revelganj'),(864,'Rewari'),(865,'Rishikesh'),(866,'Rishra'),(867,'Rohtak'),(868,'Roorkee'),(869,'Rosera'),(870,'Rourkela'),(871,'Rudrapur'),(872,'Rupnagar'),(873,'S.A.S.Nagar'),(874,'Sadalgi'),(875,'Sadasivpet'),(876,'Sadri'),(877,'Sadulshahar'),(878,'Safidon'),(879,'Sagar'),(880,'Sagara'),(881,'Sagwara'),(882,'Saharanpur'),(883,'Saharsa'),(884,'Sahibganj'),(885,'Sailana'),(886,'Sailu'),(887,'Sainthia'),(888,'Sakleshpur'),(889,'Sakti'),(890,'Salaya'),(891,'Salem'),(892,'Salur'),(893,'Samastipur'),(894,'Samalkha'),(895,'Samalkot'),(896,'Samana'),(897,'Sambalpur'),(898,'Sambhar'),(899,'Sanand'),(900,'Sanawad'),(901,'Sanchore'),(902,'Sandur'),(903,'Sankeshwar'),(904,'Sangamner'),(905,'Sangareddy'),(906,'Sangaria'),(907,'Sangli'),(908,'Sangole'),(909,'Sangrur'),(910,'Santipur'),(911,'Sardarshahar'),(912,'Sasaram'),(913,'Sasvad'),(914,'Sathyamangalam'),(915,'Satana'),(916,'Satara'),(917,'Sathupally'),(918,'Satna'),(919,'Sattenapalle'),(920,'Saunda'),(921,'Saundatti-Yellamma'),(922,'Savarkundla'),(923,'Savner'),(924,'Savanur'),(925,'Sawai Madhopur'),(926,'Sawantwadi'),(927,'Secundrabad'),(928,'Sedam'),(929,'Sehore'),(930,'Seohara'),(931,'Seoni'),(932,'Shahade'),(933,'Shahabad'),(934,'Shahbad'),(935,'Shahpur'),(936,'Shajapur'),(937,'Shegaon'),(938,'Shendurjana'),(939,'Sheopur'),(940,'Shevgaon'),(941,'Shiggaon'),(942,'Shikarpur'),(943,'Shillong*'),(944,'Shimla*'),(945,'Shimoga'),(946,'Shirala'),(947,'Shirdi'),(948,'Shirpur-Warwade'),(949,'Shirur'),(950,'Shivani'),(951,'Sibsagar'),(952,'Silapathar'),(953,'Silchar'),(954,'Sirsa'),(955,'Solan'),(956,'Shahpura'),(957,'Shahpura'),(958,'Sheikhpura'),(959,'Sheoganj'),(960,'Sheohar'),(961,'Sherghati'),(962,'Shimoga'),(963,'Sholapur'),(964,'Shoranur'),(965,'Shorapur'),(966,'Shrigonda'),(967,'Shrirampur'),(968,'Shrirangapattana'),(969,'Shrivardhan'),(970,'Shuklaganj'),(971,'Sibsagar'),(972,'Siddipet'),(973,'Sidhpur'),(974,'Sidlaghatta'),(975,'Sihor'),(976,'Sikar'),(977,'Silao'),(978,'Silchar'),(979,'Siliguri'),(980,'Sillod'),(981,'Silvassa*'),(982,'Simdega'),(983,'Sindgi'),(984,'Sindhanur'),(985,'Sindhnur'),(986,'Singtam'),(987,'Sinnar'),(988,'Singapur'),(989,'Singrauli'),(990,'Sinnar'),(991,'Sira'),(992,'Sircilla'),(993,'Sirhind Fatehgarh Sahib'),(994,'Sirohi'),(995,'Sironj'),(996,'Sirsa (Haryana)'),(997,'Sirsa (UP)'),(998,'Sirsi'),(999,'Siruguppa'),(1000,'Sitamarhi'),(1001,'Sitapur'),(1002,'Sitarganj'),(1003,'Sivakasi'),(1004,'Siwan'),(1005,'Sohna'),(1006,'Sojat'),(1007,'Solan'),(1008,'Solapur'),(1009,'Sonamukhi'),(1010,'Sonepur'),(1011,'Songadh'),(1012,'Sonipat'),(1013,'Sopore'),(1014,'Soro'),(1015,'Soyagaon'),(1016,'Sriganganagar'),(1017,'Srikakulam'),(1018,'Srikalahasti'),(1019,'Sri Madhopur'),(1020,'Srinagar*'),(1021,'Srinivaspur'),(1022,'Srisailam Project'),(1023,'Sugauli'),(1024,'Sujanpur'),(1025,'Sujangarh'),(1026,'Sultanganj'),(1027,'Sumerpur'),(1028,'Sunabeda'),(1029,'Sunam'),(1030,'Sundargarh'),(1031,'Sundarnagar'),(1032,'Supaul'),(1033,'Surat'),(1034,'Suratgarh'),(1035,'Surendranagar'),(1036,'Suri'),(1037,'Suryapet'),(1038,'Tadepalligudem'),(1039,'Tadpatri'),(1040,'Taki'),(1041,'Talaja'),(1042,'Talcher'),(1043,'Talegaon Dabhade'),(1044,'Talikota'),(1045,'Taliparamba'),(1046,'Talode'),(1047,'Talwara'),(1048,'Tamluk'),(1049,'Tanda'),(1050,'Tandur'),(1051,'Tanuku'),(1052,'Tarakeswar'),(1053,'Taraori'),(1054,'Tarana'),(1055,'Taranagar'),(1056,'Tarikere'),(1057,'Tarn Taran'),(1058,'Tasgaon'),(1059,'Tehri'),(1060,'Tekkalakota'),(1061,'Tenali'),(1062,'Tenkasi'),(1063,'Tenu Dam-cum- Kathhara'),(1064,'Terdal'),(1065,'Tetri Bazar'),(1066,'Tezpur'),(1067,'Thakurdwara'),(1068,'Thammampatti'),(1069,'Thana Bhawan'),(1070,'Thanesar'),(1071,'Thangadh'),(1072,'Thanjavur'),(1073,'Tharad'),(1074,'Tharamangalam'),(1075,'Tharangambadi'),(1076,'Theni Allinagaram'),(1077,'Thirumangalam'),(1078,'Thirunindravur'),(1079,'Thiruparappu'),(1080,'Thirupuvanam'),(1081,'Thiruthuraipoondi'),(1082,'Thiruvalla'),(1083,'Thiruvallur'),(1084,'Thiruvarur'),(1085,'Thiruvananthapuram'),(1086,'Thrissur'),(1087,'Thodupuzha'),(1088,'Thoothukudi'),(1089,'Thoubal'),(1090,'Thuraiyur'),(1091,'Tikamgarh'),(1092,'Tilda Newra'),(1093,'Tilhar'),(1094,'Tindivanam'),(1095,'Tinsukia'),(1096,'Tiptur'),(1097,'Tirora'),(1098,'Tiruchendur'),(1099,'Tiruchengode'),(1100,'Tiruchirappalli'),(1101,'Tirukalukundram'),(1102,'Tirukkoyilur'),(1103,'Tirunelveli'),(1104,'Tirupati'),(1105,'Tirupathur'),(1106,'Tirupathur'),(1107,'Tiruppur'),(1108,'Tirur'),(1109,'Tiruttani'),(1110,'Tiruvannamalai'),(1111,'Tiruvethipuram'),(1112,'Tirwaganj'),(1113,'Titlagarh'),(1114,'Tittakudi'),(1115,'Todabhim'),(1116,'Todaraisingh'),(1117,'Tohana'),(1118,'Tonk'),(1119,'Tuensang'),(1120,'Tuljapur'),(1121,'Tulsipur'),(1122,'Tumkur'),(1123,'Tumsar'),(1124,'Tundla'),(1125,'Tuni'),(1126,'Tura'),(1127,'Uchgaon'),(1128,'Udaipur'),(1129,'Udaipur'),(1130,'Udaipurwati'),(1131,'Udgir'),(1132,'Udhagamandalam (Ooty)'),(1133,'Udhampur'),(1134,'Udumalaipettai'),(1135,'Udupi'),(1136,'Ujhani'),(1137,'Ujjain'),(1138,'Umarga'),(1139,'Umaria'),(1140,'Umarkhed'),(1141,'Umarkote'),(1142,'Umbergaon'),(1143,'Umred'),(1144,'Umreth'),(1145,'Una'),(1146,'Unjha'),(1147,'Unnamalaikadai'),(1148,'Unnao'),(1149,'Upleta'),(1150,'Uran'),(1151,'Uran Islampur'),(1152,'Uravakonda'),(1153,'Urmar Tanda'),(1154,'Usilampatti'),(1155,'Uthamapalayam'),(1156,'Uthiramerur'),(1157,'Utraula'),(1158,'Vadakkuvalliyur'),(1159,'Vadalur'),(1160,'Vadgaon Kasba'),(1161,'Vadipatti'),(1162,'Vadnagar'),(1163,'Vadodara'),(1164,'Vaijapur'),(1165,'Vaikom'),(1166,'Valparai'),(1167,'Valsad'),(1168,'Vandavasi'),(1169,'Vaniyambadi'),(1170,'Vapi'),(1171,'Vapi'),(1172,'Varanasi'),(1173,'Varkala'),(1174,'Vasai'),(1175,'Vadakara'),(1176,'Vedaranyam'),(1177,'Vellakoil'),(1178,'Vellore'),(1179,'Venkatagiri'),(1180,'Veraval'),(1181,'Vicarabad'),(1182,'Vidisha'),(1183,'Vijainagar'),(1184,'Vijapur'),(1185,'Vijayapura'),(1186,'Vijayawada'),(1187,'Vikramasingapuram'),(1188,'Viluppuram'),(1189,'Vinukonda'),(1190,'Viramgam'),(1191,'Virar'),(1192,'Virudhachalam'),(1193,'Virudhunagar'),(1194,'Visakhapatnam'),(1195,'Visnagar'),(1196,'Viswanatham'),(1197,'Vita'),(1198,'Vizianagaram'),(1199,'Vrindavan'),(1200,'Vyara'),(1201,'Wadgaon Road'),(1202,'Wadhwan'),(1203,'Wadi'),(1204,'Wai'),(1205,'Wanaparthy'),(1206,'Wani'),(1207,'Wankaner'),(1208,'Warangal'),(1209,'Wara Seoni'),(1210,'Wardha'),(1211,'Warhapur'),(1212,'Warora'),(1213,'Warud'),(1214,'Washim'),(1215,'Warisaliganj'),(1216,'Wokha'),(1217,'Yadgir'),(1218,'Yamunanagar'),(1219,'Yanam'),(1220,'Yavatmal'),(1221,'Yawal'),(1222,'Yellandu'),(1223,'Yemmiganur'),(1224,'Yerraguntla'),(1225,'Yevla'),(1226,'Zahirabad'),(1227,'Zaidpur'),(1228,'Zamania'),(1229,'Zira'),(1230,'Zirakpur'),(1231,'Zunheboto'),(1232,'Others');
/*!40000 ALTER TABLE `City` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Referee`
--

DROP TABLE IF EXISTS `Referee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Referee` (
  `RefID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `App_OnlineID` bigint(20) unsigned NOT NULL,
  `CandName` varchar(445) DEFAULT NULL,
  `Knowing` varchar(445) DEFAULT NULL,
  `GI` varchar(45) DEFAULT NULL,
  `GSK` varchar(45) DEFAULT NULL,
  `OAP` varchar(45) DEFAULT NULL,
  `MFR` varchar(45) DEFAULT NULL,
  `MA` varchar(45) DEFAULT NULL,
  `EOS` varchar(45) DEFAULT NULL,
  `PSA` varchar(45) DEFAULT NULL,
  `CS` varchar(45) DEFAULT NULL,
  `SC` varchar(45) DEFAULT NULL,
  `CIT` varchar(45) DEFAULT NULL,
  `Strength` varchar(1225) DEFAULT NULL,
  `Weaknesses` varchar(1225) DEFAULT NULL,
  `Order` varchar(225) DEFAULT NULL,
  `Recommending` varchar(225) DEFAULT NULL,
  `Grades` varchar(225) DEFAULT NULL,
  `Gradesifno` varchar(1225) DEFAULT NULL,
  `Interest` varchar(1225) DEFAULT NULL,
  `Excc` varchar(2225) DEFAULT NULL,
  `Summary` varchar(225) DEFAULT NULL,
  `Name` varchar(225) NOT NULL,
  `Designation` varchar(225) NOT NULL,
  `Institute` varchar(225) DEFAULT NULL,
  `City` varchar(225) DEFAULT NULL,
  `Pin` varchar(225) DEFAULT NULL,
  `Mobile` varchar(225) DEFAULT NULL,
  `Landline` varchar(225) NOT NULL,
  `Email` varchar(225) DEFAULT NULL,
  `RefTiming` datetime DEFAULT NULL,
  PRIMARY KEY (`RefID`),
  KEY `App_OnlineID` (`App_OnlineID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Referee`
--

LOCK TABLES `Referee` WRITE;
/*!40000 ALTER TABLE `Referee` DISABLE KEYS */;
INSERT INTO `Referee` VALUES (1,4,'Diwakar Maurya','ncra',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ncra','to work hard, the ability to visualize concepts, the ability to work well in a group, etc).','Between 10-20%','to work hard, the ability to visualize concepts, the ability to work well in a group, etc).','Yes','Not applicable!','to work hard, the ability to visualize concepts, the ability to work well in a group, etc).','to work hard, the ability to visualize concepts, the ability to work well in a group, etc).','to work hard, the ability to visualize concepts, the ability to work well in a group, etc).','Dr. Yogesh Wadadekar','Fellow-E','NCRA-TIFR, Pune','Pune','411007','56455456','8806963718','akshat-pg8@iiitmk.ac.in','2011-07-28 22:51:24'),(2,4,'Diwakar Maurya','ncra',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ncra','to work hard, the ability to visualize concepts, the ability to work well in a group, etc).','Between 10-20%','to work hard, the ability to visualize concepts, the ability to work well in a group, etc).','Yes','Not applicable!','to work hard, the ability to visualize concepts, the ability to work well in a group, etc).','to work hard, the ability to visualize concepts, the ability to work well in a group, etc).','to work hard, the ability to visualize concepts, the ability to work well in a group, etc).','Dr. Yogesh Wadadekar','Fellow-E','NCRA-TIFR, Pune','Pune','411007','56455456','8806963718','akshat-pg8@iiitmk.ac.in','2011-07-28 23:04:08'),(3,4,'Diwakar Maurya','ncra',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ncra','to work hard, the ability to visualize concepts, the ability to work well in a group, etc).','Between 10-20%','to work hard, the ability to visualize concepts, the ability to work well in a group, etc).','Yes','Not applicable!','to work hard, the ability to visualize concepts, the ability to work well in a group, etc).','to work hard, the ability to visualize concepts, the ability to work well in a group, etc).','to work hard, the ability to visualize concepts, the ability to work well in a group, etc).','Dr. Yogesh Wadadekar','Fellow-E','NCRA-TIFR, Pune','Pune','411007','56455456','8806963718','akshat-pg8@iiitmk.ac.in','2011-07-28 23:04:36'),(4,4,'Diwakar Maurya','ncra',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ncra','to work hard, the ability to visualize concepts, the ability to work well in a group, etc).','Between 10-20%','to work hard, the ability to visualize concepts, the ability to work well in a group, etc).','Yes','Not applicable!','to work hard, the ability to visualize concepts, the ability to work well in a group, etc).','to work hard, the ability to visualize concepts, the ability to work well in a group, etc).','to work hard, the ability to visualize concepts, the ability to work well in a group, etc).','Dr. Yogesh Wadadekar','Fellow-E','NCRA-TIFR, Pune','Pune','411007','56455456','8806963718','akshat-pg8@iiitmk.ac.in','2011-07-28 23:04:58'),(5,4,'Diwakar Maurya','ncra',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ncra','to work hard, the ability to visualize concepts, the ability to work well in a group, etc).','Between 10-20%','to work hard, the ability to visualize concepts, the ability to work well in a group, etc).','Yes','Not applicable!','to work hard, the ability to visualize concepts, the ability to work well in a group, etc).','to work hard, the ability to visualize concepts, the ability to work well in a group, etc).','to work hard, the ability to visualize concepts, the ability to work well in a group, etc).','Dr. Yogesh Wadadekar','Fellow-E','NCRA-TIFR, Pune','Pune','411007','56455456','8806963718','akshat-pg8@iiitmk.ac.in','2011-07-28 23:07:59'),(6,1,'Akshat Singh','Please describe the duration and the nature of your interaction with the candidate, on which this reference is based (e.g. interactions during a lecture course, laboratory, research project, science club, etc).','Outstanding','High','Medium','Low','Medium','High','Outstanding','High','Medium','Low','Please describe the duration and the nature of your interaction with the candidate, on which this reference is based (e.g. interactions during a lecture course, laboratory, research project, science club, etc).','Please describe the duration and the nature of your interaction with the candidate, on which this reference is based (e.g. interactions during a lecture course, laboratory, research project, science club, etc).','Between 10-20%','Please describe the duration and the nature of your interaction with the candidate, on which this re','Yes','Not applicable!','Please describe the duration and the nature of your interaction with the candidate, on which this reference is based (e.g. interactions during a lecture course, laboratory, research project, science club, etc).','Please describe the duration and the nature of your interaction with the candidate, on which this reference is based (e.g. interactions during a lecture course, laboratory, research project, science club, etc).','Please describe the duration and the nature of your interaction with the candidate, on which this re','Akshat Singh C P Singh','Visiting Enginner','NCRA-TIFR, Pune','PUNE','411007','56455456','02025719258','akshat@ncra.tifr.res.in','2011-07-28 23:21:40'),(7,1,'Akshat Singh','Please describe the duration and the nature of your interaction with the candidate, on which this reference is based (e.g. interactions during a lecture course, laboratory, research project, science club, etc).','Outstanding','High','Medium','Low','Medium','High','Outstanding','High','Medium','Low','Please describe the duration and the nature of your interaction with the candidate, on which this reference is based (e.g. interactions during a lecture course, laboratory, research project, science club, etc).','Please describe the duration and the nature of your interaction with the candidate, on which this reference is based (e.g. interactions during a lecture course, laboratory, research project, science club, etc).','Between 10-20%','Please describe the duration and the nature of your interaction with the candidate, on which this re','Yes','Not applicable!','Please describe the duration and the nature of your interaction with the candidate, on which this reference is based (e.g. interactions during a lecture course, laboratory, research project, science club, etc).','Please describe the duration and the nature of your interaction with the candidate, on which this reference is based (e.g. interactions during a lecture course, laboratory, research project, science club, etc).','Please describe the duration and the nature of your interaction with the candidate, on which this re','Akshat Singh C P Singh','Visiting Enginner','NCRA-TIFR, Pune','PUNE','411007','56455456','02025719258','akshat@ncra.tifr.res.in','2011-07-28 23:22:18'),(8,1,'Akshat Singh','Please describe the duration and the nature of your interaction with the candidate, on which this reference is based (e.g. interactions during a lecture course, laboratory, research project, science club, etc).','Outstanding','High','Medium','Low','Medium','High','Outstanding','High','Medium','Low','Please describe the duration and the nature of your interaction with the candidate, on which this reference is based (e.g. interactions during a lecture course, laboratory, research project, science club, etc).','Please describe the duration and the nature of your interaction with the candidate, on which this reference is based (e.g. interactions during a lecture course, laboratory, research project, science club, etc).','Between 10-20%','Please describe the duration and the nature of your interaction with the candidate, on which this re','Yes','Not applicable!','Please describe the duration and the nature of your interaction with the candidate, on which this reference is based (e.g. interactions during a lecture course, laboratory, research project, science club, etc).','Please describe the duration and the nature of your interaction with the candidate, on which this reference is based (e.g. interactions during a lecture course, laboratory, research project, science club, etc).','Please describe the duration and the nature of your interaction with the candidate, on which this re','Akshat Singh C P Singh','Visiting Enginner','NCRA-TIFR, Pune','PUNE','411007','56455456','02025719258','akshat@ncra.tifr.res.in','2011-07-28 23:22:39'),(9,1,'Diwakar Maurya',' appropriate column for each query. You need not mark all columns, but only those wher','Outstanding',NULL,'High',NULL,NULL,NULL,'High',NULL,NULL,'Outstanding',' appropriate column for each query. You need not mark all columns, but only those wher ',' appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but only those wher','Between 5-10%',' appropriate column for each query. You need not mark all columns, but only those wher appropriate c','No',' appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but only those wher',' appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but',' appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You
 need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but only those wher',' appropriate column for each query. You need not mark all columns, but only those wher appropriate c','Akshat Singh C P Singh','Fellow-E','NCRA-TIFR, Pune','-','411007','56455456','8806963718','akshat2@gmail.com','2011-07-28 23:45:45'),(10,0,'Diwakar Maurya',' appropriate column for each query. You need not mark all columns, but only those wher','Outstanding',NULL,'High',NULL,NULL,NULL,'High',NULL,NULL,'Outstanding',' appropriate column for each query. You need not mark all columns, but only those wher ',' appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but only those wher','Between 5-10%',' appropriate column for each query. You need not mark all columns, but only those wher appropriate c','No',' appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but only those wher',' appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but',' appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but only those wher appropriate column for each query. You need not mark all columns, but only those wher',' appropriate column for each query. You need not mark all columns, but only those wher appropriate c','Akshat Singh C P Singh','Fellow-E','NCRA-TIFR, Pune','-','411007','56455456','8806963718','','2011-07-28 23:46:52'),(11,3,'Akshat Singh','lk.l/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','Yes','Not applicable!','','','lk;l','Akshat Singh C P Singh','Visiting Enginner','NCRA-TIFR, Pune','PUNE','411007','','02025719258','90@ex.com','2011-07-29 00:44:29'),(12,3,'Akshat Singh','hfjhvm m',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Medium','hgjhv','','Between 5-10%','','Yes','Not applicable!','','','yhgjhhv','Akshat Singh C P Singh','Fellow-E','NCRA-TIFR, Pune','PUNE','411007','','02025719258','91@ex.com','2011-07-29 00:47:04'),(13,7,'Akshat Singh','hbgnvb',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'bvnb  ','','','','Yes','Not applicable!','','','nbn ','Akshat Singh C P Singh','Fellow-E','NCRA-TIFR, Pune','PUNE','411007','','02025719258','28@example.com','2011-07-29 19:29:00'),(14,6,'Akshat Singh','sfdsvcv dsvv','Outstanding','High',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Between 10-20%','','Yes','Not applicable!','','','vbbvbv','Akshat','Vising Engineer','NCRA-TIFR Pune','Pune','411007','','8806963718','4@example.com','2011-07-29 22:32:22');
/*!40000 ALTER TABLE `Referee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Register`
--

DROP TABLE IF EXISTS `Register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `AppName` varchar(30) DEFAULT NULL,
  `AppEmail` varchar(30) DEFAULT NULL,
  `RegPasswd` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `AppEmail` (`AppEmail`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Register`
--

LOCK TABLES `Register` WRITE;
/*!40000 ALTER TABLE `Register` DISABLE KEYS */;
INSERT INTO `Register` VALUES (95,'Aditi Bhatt','aditi@ncra.tifr.res.in','f2854f90'),(2,'Mani Ratnam Rai','mani@gmrt.ncra.tifr.res.in','f1011013'),(3,'Animesh Kumar Singh','anim.srms@gmil.com','b4e70ece'),(4,'Animesh Kumar Singh','anim.srms@gmail.com','b68f40b1'),(5,'lappy','lappy@gmail.com','a64f42f0'),(6,'Vishnu Pandey','vishnu@gmail.com','33311a31'),(7,'Akshat Singh','akshat@ncra.tifr.res.iin','03d5e5e1'),(8,'akshat','aks@bhhh.com','03e1e930'),(9,'ipod','ipod@sds.con','2da2a025'),(10,'akshatsh','singh@sdg.com','0039f539'),(11,'akshat koma','koma@hdhs.com','b2884b4f'),(12,'Akshat Singh','mani@gmail.com.in','aaa66b24'),(13,'Akshat Singh','mafni@gmail.com.in','30b47fe9'),(85,'Akshat','akshat@ncra.tifr.res.ins','e3a788ac'),(15,'Akshat Singham','singham@gmail.com.in','d7546099'),(16,'Akshat Singham','singham@gmaila.com.in','f1d2bb3e'),(17,'Akshant Singham','singham@gm.com.in','f8d98568'),(18,'Akshat Singh','mani@gmail.com','1e78162b'),(19,'Akshat Singh','akshkat@ncra.tifr.res.in','09e20962'),(20,'Akshat Singh','maninanai@gmail.com','e1ac03f8'),(21,'Akshat Singh','mafnig@gmail.com.in','6131938b'),(22,'Akshat Singh','singham@gmv.com.in','a715655a'),(23,'Akshat Singh','singham@gmv.com.inb','4d1c57c4'),(24,'Akshat Singh','mafni@gmail.com.ink','f3b8fbe0'),(25,'Singhania','sDF@sghs.com','6a3fcd62'),(26,'Akshat Singh','mafni@gmail.com.in.lp','c7fc1001'),(96,'akshat','akshat@ncra.tifr.res.in','a9b328cc'),(28,'Akshat Singh','mafni@gmail.copm.in','53c3809b'),(29,'Akshat Singh','mafni@gmoail.com.in','2809b65a'),(30,'Akshat Singh','myafni@gmail.com.in','08b15250'),(31,'Akshat Singh','singhamk@gmaila.com.in','01dafbc5'),(32,'Akshat Singh','mafhi@gmail.com.in','ba4e3903'),(33,'Akshant Singham','mafni@gmkail.com.in','0fb5dcdb'),(34,'Akshat Singh','mafnjj@gmail.com.in','1648384b'),(36,'Akshat Singh','mafni@gmlail.com.in','b645c56e'),(37,'Akshat Singh','akshant@ncra.tifr.res.in','0888f4e2'),(38,'Akshat Singh','masfni@gmail.com.in','17e13fc5'),(59,'Akshat Singh','akshat@ncra.tifr.res.in.im.ko','206b8168'),(60,'Hemant Lokhande','hemant@ncra.tifr.res.in','cfe86e38'),(61,'Akshat Singh','madfd@djfdj.com','9755758d'),(62,'Akshat Singh','akt@ncra.tifr.res.in','2e0666fd'),(63,'Akshat Singh','akshat1@ncra.tifr.res.in','76fa9e7c'),(65,'Beverly','3105557361@example.com','ef0c74d7'),(66,'S Roy','roy@ncra.tifr.res.in','d6745134'),(67,'Akshat Singh','mafvcxbvci@gmail.com.in','a98858c3'),(68,'Akshat Singh','mafvcxbgci@gmail.com.in','cf1e9b03'),(69,'Akshat Singh','fggci@gmail.com.in','f319cec3'),(70,'S Roy','singhbm@gm.com.in','a3ebfed5'),(71,'Beverly','akshat2@gmail.com','643def90'),(72,'Beverly','zxcvxz@dffzdx.com','33717f4f'),(73,'sadsdas','daasddsa@dsbsfb.com','42dcafcb'),(74,'sadsdas','daasddsag@dsbsfb.com','d9488c38'),(75,'Beverly','zxcvxzk@dffzdx.com','6cc4783c'),(76,'Beverly','akshat1@gmail.com','8a090d5e'),(77,'Beverly','akshat4@gmail.com','d9dc3567'),(78,'Beverly','akshat5@gmail.com','cf41e9eb'),(79,'Akshat','akshat.space@gmail.com','f2bd987b'),(80,'Collins Assisi','nkanekar@ncra.tifr.res.in','15143712'),(81,'Yogesh Wadadekar','yogesh@ncra.tifr.res.in','4d3073f4'),(82,'Beverly','akshat2@gmail.comes','f80de1fe'),(83,'Beverly','akshat1@gmail.comes','b3feb6c8'),(86,'Akshat Singham','akshat2hgt@gmail.comd','36133df5'),(87,'Akshat Singham','akshat2gt@gmail.comd','b3e15c42'),(88,'Akshat Singhania','singhania123@yahoo.co.in','2f3ab532'),(89,'Akshat Singham','akshat2gt@gmail.cmd','e3d2f532'),(90,'Akshat Singham','akshatgt@gmail.cmd','670bfb57'),(91,'Akshat Singham','akshat24@gmail.com','9ec0c593'),(92,'akshat','a1@n.com','c56a739d'),(93,'akshat','aks@n.com','53740ca1'),(94,'varun','varungupta@bsnl.co.in','463f7398');
/*!40000 ALTER TABLE `Register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `adminID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `adminEmail` varchar(65) NOT NULL,
  `adminPasswd` varchar(50) NOT NULL,
  `adminAccountStatus` varchar(50) NOT NULL,
  PRIMARY KEY (`adminID`),
  UNIQUE KEY `Email` (`adminEmail`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'akshat@ncra.tifr.res.in','ncratifr','Active');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant`
--

DROP TABLE IF EXISTS `applicant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant` (
  `OnlineID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(225) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(25) DEFAULT NULL,
  `Nationality` varchar(50) NOT NULL,
  `Email` varchar(65) NOT NULL,
  `CAddress` varchar(445) NOT NULL,
  `CPin` varchar(35) NOT NULL,
  `CCity` varchar(35) DEFAULT NULL,
  `CState` varchar(35) DEFAULT NULL,
  `Telephone` bigint(65) unsigned NOT NULL,
  `PAddress` varchar(445) NOT NULL,
  `PPin` varchar(35) NOT NULL,
  `PCity` varchar(35) DEFAULT NULL,
  `PState` varchar(35) DEFAULT NULL,
  `Category` varchar(25) NOT NULL,
  `XthStd` varchar(25) NOT NULL,
  `Xth_School` varchar(225) NOT NULL,
  `Xth_Board` varchar(225) NOT NULL,
  `Xth_Year` int(5) NOT NULL,
  `Xth_Grade` varchar(50) DEFAULT NULL,
  `Xth_Pc` int(2) NOT NULL,
  `XIIthStd` varchar(25) NOT NULL,
  `XIIth_School` varchar(225) NOT NULL,
  `XIIth_Board` varchar(125) NOT NULL,
  `XIIth_Year` int(5) NOT NULL,
  `XIIth_Grade` varchar(50) DEFAULT NULL,
  `XIIth_Pc` int(2) NOT NULL,
  `UG` varchar(50) NOT NULL,
  `UG_Inst` varchar(445) NOT NULL,
  `UG_Univ` varchar(225) NOT NULL,
  `UG_Year` int(5) NOT NULL,
  `UG_Grade` varchar(50) DEFAULT NULL,
  `UG_Pc` int(2) NOT NULL,
  `PG` varchar(50) DEFAULT NULL,
  `PG_Inst` varchar(445) DEFAULT NULL,
  `PG_Univ` varchar(225) DEFAULT NULL,
  `PG_Year` int(5) DEFAULT NULL,
  `PG_Grade` varchar(50) DEFAULT NULL,
  `PG_Pc` int(2) DEFAULT NULL,
  `Present_Course_Branch` varchar(255) DEFAULT NULL,
  `CourseCompYr` int(5) DEFAULT NULL,
  `Referee1` varchar(445) NOT NULL,
  `Referee2` varchar(445) NOT NULL,
  `Reason` varchar(4445) DEFAULT NULL,
  `Appliedbefore1` varchar(25) NOT NULL,
  `Appliedbefore2` varchar(1600) DEFAULT NULL,
  `Research_Interest` varchar(25) DEFAULT NULL,
  `GQ_Subject` varchar(15535) NOT NULL,
  `GQ_Project` varchar(15535) DEFAULT NULL,
  `GQ_Awards` varchar(4445) DEFAULT NULL,
  `GQ_Result` varchar(1600) DEFAULT NULL,
  `WrittenTestCall` varchar(45) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `PrintPDF` varchar(45) DEFAULT NULL,
  `EmailSent` varchar(45) DEFAULT NULL,
  `Timing` datetime DEFAULT NULL,
  PRIMARY KEY (`OnlineID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant`
--

LOCK TABLES `applicant` WRITE;
/*!40000 ALTER TABLE `applicant` DISABLE KEYS */;
INSERT INTO `applicant` VALUES (1,'C P Singh','2011-08-02','Male','Indian','akshat1@gmail.com','11/377, (Sector-11)\r\nIndira Nagar\r\nLucknow','411007','Pune','Maharashtra',8806963718,'Laxmi Nagar','411007','Pune','Maharashtra','General','Xth Std','SHIC Sitapur','UPB',4,'4',4,'XIIth Std','SHIC Sitapur','UPB',4,'4',44,'B.E.','SHIC SItapur','UPTU Lucknow',44,'4',4,'N/A','Sukrt','IIITMK Trivandrum Kera',0,'44',0,'Feoge',2011,'Akshat Singh','Bhavesh Shai',' If you have completed your M.Sc, B.E, B.Tech, M.E. or M.Tech. degrees in 2011 or earlier, give details of your activities since then:','Yes',NULL,'Theory',' If you have completed your M.Sc, B.E, B.Tech, M.E. or M.Tech. degrees in 2011 or earlier, give details of your activities since then:',' If you have completed your M.Sc, B.E, B.Tech, M.E. or M.Tech. degrees in 2011 or earlier, give details of your activities since then: If you have completed your M.Sc, B.E, B.Tech, M.E. or M.Tech. degrees in 2011 or earlier, give details of your activities since then: If you have completed your M.Sc, B.E, B.Tech, M.E. or M.Tech. degrees in 2011 or earlier, give details of your activities since then:',' If you have completed your M.Sc, B.E, B.Tech, M.E. or M.Tech. degrees in 2011 or earlier, give details of your activities since then: If you have completed your M.Sc, B.E, B.Tech, M.E. or M.Tech. degrees in 2011 or earlier, give details of your activities since then: If you have completed your M.Sc, B.E, B.Tech, M.E. or M.Tech. degrees in 2011 or earlier, give details of your activities since then:',' If you have completed your M.Sc, B.E, B.Tech, M.E. or M.Tech. degrees in 2011 or earlier, give details of your activities since then: If you have completed your M.Sc, B.E, B.Tech, M.E. or M.Tech. degrees in 2011 or earlier, give details of your activities since then: If you have completed your M.Sc, B.E, B.Tech, M.E. or M.Tech. degrees in 2011 or earlier, give details of your activities since then: If you have completed your M.Sc, B.E, B.Tech, M.E. or M.Tech. degrees in 2011 or earlier, give details of your activities since then:','No','No Action','No','No','2011-08-03 03:52:34'),(2,'Akshat Singh C P Singh','2011-08-02','Male','Indian','akshat4@gmail.com','hgjhgj','411007','Pune','Maharashtra',2025719258,'hjgghgjjh','','Adoor','Assam','OBC','Xth Std','6','6',6,'6',6,'XIIth Std','6','66',6666,'66',6,'B.Tech.','6','6',6,'6',66,'M.E.','6','6',0,'6',0,'6',2011,'adsd','sdadsa','','No',NULL,'','sdsad','sdsda','dsadsa','sdsd','No','No Action','No','No','2011-08-03 03:57:24'),(3,'Akshat Singh C P Singh','2011-08-02','Male','Indian','akshat5@gmail.com','vcbvcb','411007','Adoor','Maharashtra',2025719258,'bvccvb','411007','Alipurduar','Meghalaya','OBC','Xth Std','5','5',5,'5',22,'XIIth Std','55','5',5,'5',5,'B.Tech.','5','5',5,'5',55,'M.E.','5','5',0,'5',0,'5',2011,'sdsd','dsfdsf','dsffdsfdfdf','No',NULL,'Observations','dfdsfdsfds','fdsfds','fdsffdsdfs','dfsfds','No','No Action','No','No','2011-08-03 04:09:08'),(4,'Akshat Singh C P Singh','2011-08-02','Male','Indian','akshat.space@gmail.com','zxczc','411007','Pune','Maharashtra',2025719258,'dfsfd','','Achalpur','Assam','SC/ST','Xth Std','5','5',2222,'5',5,'XIIth Std','5','5',5,'55',5,'B.E.','5','5',55,'5',5,'NULL','55','5',0,'5',0,'5',2011,'yyyy','Akshat Singh\r\nNCRA-TIFR Pune','sdsdxzc','No',NULL,'Observations','xz','gf','fhgfh','hghgf','No','No Action','No','No','2011-08-03 04:17:48'),(13,'Akshat Singh','2011-08-01','Male','Indian','akshat@ncra.tifr.res.in','dbsadb','226016','Akola','Madhya Pradesh',54354534,'dbsadb','226016','Akola','Madhya Pradesh','General','Xth Std','tyt','ut',7897,'979',79,'XIIth Std','97','9',97,'97',97,'B.Tech.','9','89',79,'9',7,'NULL','97','97',0,'97',0,'PGDIT & Information Technology',2013,'sadf','dfdsf','','No',NULL,'Theory','dsvfb','fbfd','','','No','No Action','No','No','2011-08-07 03:31:42'),(6,'h','2011-08-03','Male','h','singhania123@yahoo.co.in','h','999','Haflong','Andhra Pradesh',8888,'tttt','9999','Abohar','Andhra Pradesh','General','Xth Std','jjj','7',7,'7',6,'XIIth Std','999','9999',6,'5',4,'B.E.','r','e',4,'kkkk',88,'NULL','iii','k',0,'',0,'',0,'','','','No',NULL,'','','','','','No','No Action','No','No','2011-08-03 22:38:42'),(7,'u','2011-08-02','Male','i','akshat2gt@gmail.cmd','k','i','Abohar','Andhra Pradesh',88,'i','i','Amarpur','Uttaranchal','General','Xth Std','5','5',5,'5',5,'XIIth Std','5','l',5,'5',5,'B.E.','5','5',5,'5',5,'NULL','5','5',0,'5',0,'5',0,'','','','No',NULL,'','','','','','No','No Action','No','No','2011-08-03 23:59:32'),(8,'6','2011-08-02','Male','y','akshat2gt@gmail.comd','sds','y','Yamunanagar','Andaman and Nicobar Islands',7,'7','7','Amravati','Uttaranchal','General','Xth Std','6','6',6,'6',6,'XIIth Std','6','6',6,'6',6,'B.S.','6','6',66,'6',6,'NULL','6','6',0,'66',0,'',0,'','','','No',NULL,'','','','','','No','No Action','No','No','2011-08-04 00:07:12'),(9,'Aditya Gupta','2011-08-04','Male','uu','akshat1@gmail.comes','11/377\r\nIndira Nagar','432343543','Uchgaon','Uttaranchal',76654444556,'yy','y','Yamunanagar','West Bengal','OBC','Xth Std','y','y',7,'7',7,'XIIth Std','7','7',7,'7',7,'B.E.','7','7',77,'7',7,'NULL','7','7',0,'77',0,'',0,'Dr. Aksah Chandra','Dr. Alka Misra','','No',NULL,'Observations','akshat','','','','No','No Action','No','No','2011-08-04 00:10:40'),(10,'Akshat Singh','1984-08-02','Male','Indian','a1@n.com','11/377, (Sector-11)\r\nIndira Nagar\r\nLucknow','411007','Pune','Maharashtra',8806963718,'H-20,\r\nNCRA-TIFR\r\nPune University Campus\r\nPune\r\nMaharashtra','226016','Pune','Maharashtra','General','Xth Std','Sacred Heart Inter College Sitapur','UP Board',1999,'A',68,'XIIth Std','Sacred Heart Inter College Sitapur','UP Board',2001,'A',78,'B.Tech.','Bundelkhand Institute of Engineering & Technology, Jhansi','UPTU Lucknow',2007,'A',87,'M.S.','Indian Institute of Information Technology & Management Kerala','IIITMK- Thiruvanantham',2010,'A+',93,'PGDIT & Information Technology',2011,'Dr. Yogesh Wadaekar','Dr. Nissim Kanekar','17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:','Yes',NULL,'Observations','17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*: ','17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:','17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of
 your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:','17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:17. What makes you interested in astronomy or astrophysics ? Note that this statement will be treated as an important part of your application*:','No','No Action','No','No','2011-08-04 05:48:00'),(12,'ADITI BHATT','1988-04-18','Female','Indian ','aditi@ncra.tifr.res.in','h-31','461122','Pune','Madhya Pradesh',20,'h-1-31','345121','Pune','Madhya Pradesh','General','Xth Std','K V No 1,OFI','KV',2003,'I',90,'XIIth Std','K V No 1 ,OFI','KV',2005,'i',90,'B.E.','76 ','75 ',2010,'I ',89,'M.Tech.','ag ','ifoiw`',8900,'I',78,'Geology',2012,'Aditi Bhatt','hfsdyfufenbyagdub','jhgduobxcvuygbdygfv','Yes','dfhg hctc hytcg c 187y756468@#','Theory','gvdynbuo f yv c jxbkigw[94232:<<>>>\"\":;><}{{][]-_+=!1@#4$^%^90wqr50 bxgdu``!~svbjh','jxhdfigygcnuv cjhvjdhgmnzxcjkzxcnbasdywefdskldvnb','hgsdh ','JKHSDKV  FWF','No','No Action','No','No','2011-08-07 03:10:49'),(11,'Diwakar Maurya','2011-08-02','Male','Xsrkj','3105550424@example.com','Cssfnl lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','Cdrcj','Mandi Dabwali','Mizoram',3105550424,'Xaszjm lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','Umceq','Mandi Dabwali','Maharashtra','OBC','Xth Std','Pmghb','Ozfby',2222,'Jeqfs',22,'XIIth Std','Hotus','Wjwqu',2222,'Pgehw',22,'B.Tech.','Rhebd','Mtxbm',2222,'Zqqgh',22,'NULL','Obxwf','Eobng',0,'Unhnk',0,'Vpylf',2012,'Mfzmrl lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','Vishnu Pandey','e','Yes',NULL,'Observations','ee','','','','No','No Action','No','No','2011-08-04 05:50:49');
/*!40000 ALTER TABLE `applicant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security`
--

DROP TABLE IF EXISTS `security`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security` (
  `OnlineID` bigint(20) unsigned NOT NULL,
  `Email` varchar(65) NOT NULL,
  `Ref1Email` varchar(65) NOT NULL,
  `Ref1Passwd` varchar(50) NOT NULL,
  `Ref2Email` varchar(65) NOT NULL,
  `Ref2Passwd` varchar(50) NOT NULL,
  `AppPasswd` varchar(50) NOT NULL,
  KEY `OnlineID` (`OnlineID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security`
--

LOCK TABLES `security` WRITE;
/*!40000 ALTER TABLE `security` DISABLE KEYS */;
INSERT INTO `security` VALUES (1,'akshat1@gmail.com','akshat1@ncra.tifr.res.in','7253e4127a','akshat2@ncra.tifr.res.in','4b94d84002','643def90'),(2,'akshat4@gmail.com','aks@ncra.tifr.res.in','800afab1fb','akshat@ncra.tifr.res.in','19427abd3f','d9dc3567'),(3,'akshat5@gmail.com','akshat-pg8@iiitmk.ac.in','7fe74ec656','akshat-pg8@iiitmk.ac.in','261c67f18e','cf41e9eb'),(4,'akshat.space@gmail.com','aks@ncra.tifr.res.in','dd2ba93087','akshat@ncra.tifr.res.in','1c26de85bc','f2bd987b'),(13,'akshat@ncra.tifr.res.in','aks@ncra.tifr.res.in','6852aa64e5','gh76@example.com','a3cb5b76c0','a9b328cc'),(6,'singhania123@yahoo.co.in','','68a1f4747b','','1e40071bad','2f3ab532'),(7,'akshat2gt@gmail.cmd','','02597bac3a','','ce6f9d5962','e3d2f532'),(8,'akshat2gt@gmail.comd','','5bd4518f46','','9765d751cb','b3e15c42'),(9,'akshat1@gmail.comes','aks@ncra.tifr.res.in','39833f97ab','akshat@ncra.tifr.res.in','71ea281484','aditya'),(10,'a1@n.com','aks@ncra.tifr.res.in','4fc6041c94','akshat@ncra.tifr.res.in','89fe65feaf','akshat'),(11,'3105550424@example.com','akshat-pg8@iiitmk.ac.in','6454a01e32','akshat@ncra.tifr.res.in','31e8cf95aa','qwerty'),(12,'aditi@ncra.tifr.res.in','akshat.space@gmail.com','563ec4c566','aditi@gmail.com','f7ff178b42','f2854f90 ');
/*!40000 ALTER TABLE `security` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `StateID` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `StateName` varchar(225) NOT NULL,
  PRIMARY KEY (`StateID`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'Andhra Pradesh'),(2,'Arunachal Pradesh'),(3,'Assam'),(4,'Bihar'),(5,'Chhattisgarh'),(6,'Goa'),(7,'Gujrat'),(8,'Haryana'),(9,'Himachal Pradesh'),(10,'Jammu and Kashmir'),(11,'Jharkhand'),(12,'Karnataka'),(13,'Kerala'),(14,'Madhya Pradesh'),(15,'Maharashtra'),(16,'Manipur'),(17,'Meghalaya'),(18,'Mizoram'),(19,'Nagaland'),(20,'Orissa'),(21,'Punjab'),(22,'Rajasthan'),(23,'Sikkim'),(24,'Tamil Nadu'),(25,'Tripura'),(26,'Uttaranchal'),(27,'Uttar Pradesh'),(28,'West Bengal'),(29,'Andaman and Nicobar Islands'),(30,'Chandigarh'),(31,'Dadar and Nagar Haveli'),(32,'Daman and Diu'),(33,'Delhi'),(34,'Lakshadeep'),(35,'Pondicherry'),(36,'Others');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `UserID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `UserEmail` varchar(65) NOT NULL,
  `UserPasswd` varchar(50) NOT NULL,
  `AccountStatus` varchar(50) NOT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `Email` (`UserEmail`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'akshat@ncra.tifr.res.in','ncratifr','Active');
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

-- Dump completed on 2011-08-07  3:35:23
