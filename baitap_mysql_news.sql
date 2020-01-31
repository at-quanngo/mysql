-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: baitap_mysql
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `view` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `content` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_news_t_idx` (`category_id`),
  CONSTRAINT `fk_news_t` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,3,'Et sed pariatur qui quia officiis.',12,1,'Omnis veritatis accusantium totam ut amet eos unde omnis. Deleniti ea sequi in.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(2,2,'Iure in doloremque odio nemo.',9,1,'Repudiandae sed qui earum corrupti. Quasi aut repudiandae vel excepturi.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(3,1,'Doloribus tenetur dolore tempora sit veniam voluptas quaerat.',13,1,'Alias velit quo nihil vero quia. Ratione voluptatem veritatis sunt optio cumque ab.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(4,2,'Magnam sequi quae ea illo voluptatibus blanditiis.',23,1,'Eaque magni qui et non. Sit magni nostrum et aut et. Omnis doloribus odio consectetur est.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(5,1,'Officiis repellendus beatae necessitatibus.',29,1,'Doloremque omnis in autem ea et soluta. Omnis aut omnis et possimus nihil eligendi.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(6,1,'Quia nesciunt tempore odit.',19,0,'Dicta quidem et ullam nisi sit qui et. Est laborum et sint quibusdam.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(7,1,'Saepe fugit id cumque ad.',15,1,'Quaerat aliquid officiis eveniet dolore molestias qui est et. Ducimus qui modi ut odio esse.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(8,1,'Deserunt quae molestiae expedita.',15,0,'Est deleniti itaque quia voluptates distinctio ut. Mollitia est commodi consequuntur.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(9,3,'Optio eos sed qui vitae distinctio quidem eius.',17,1,'Iure ex sequi labore aspernatur. Nihil natus earum ut ipsam ut eaque.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(10,1,'Repellendus est sunt doloribus placeat deleniti consequuntur repellat.',14,1,'Qui est tempora quis praesentium mollitia. Culpa culpa ut et nam maiores. Earum et in et quis.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(11,2,'Enim odit quaerat non corporis beatae alias.',22,1,'Inventore id saepe minima. Ut in tenetur dolor ab. Facilis molestias sequi sequi deserunt aut.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(12,3,'Ipsam vel ut accusantium et porro autem voluptas illo.',21,1,'Aliquid quia ut quam tempore. Iusto voluptatem nihil corrupti harum non nobis sed.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(13,2,'Perferendis ut quam sint alias odio quia temporibus neque.',25,0,'Beatae reiciendis voluptas est laudantium molestiae. Minima qui perferendis suscipit.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(14,2,'Et expedita cupiditate corrupti.',1,1,'At tempore repellat eum sit in fuga error. Sint ipsam ducimus voluptatem hic voluptatem.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(15,1,'Laboriosam et quia suscipit velit recusandae.',5,1,'Occaecati sint id iure porro incidunt corporis unde. Minima explicabo eius adipisci.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(16,3,'Perferendis non quidem sunt alias.',22,0,'Necessitatibus laboriosam rem nemo quia alias ipsum. Non reiciendis deleniti consequatur et harum.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(17,1,'Et reiciendis natus eum qui.',28,0,'Eligendi commodi aperiam nesciunt. Minus beatae omnis asperiores asperiores.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(18,2,'Maxime non provident odit perferendis autem.',13,0,'Odit eum laboriosam cupiditate. Ducimus animi aliquid laborum aut. Eius modi quasi aperiam.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(19,3,'Nostrum deleniti suscipit dolores architecto quasi quae aut.',16,1,'Minima voluptatem autem ullam natus. Et ex eius sequi ullam. Est tempore qui sunt.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(20,1,'Officiis modi omnis modi enim.',18,0,'Voluptatum minima id deserunt. Et qui et est adipisci.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(21,1,'Sed cumque beatae beatae distinctio nisi cum.',9,0,'Labore aliquam quae qui expedita qui. Et doloremque sint perspiciatis quibusdam omnis neque sit.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(22,1,'Sit blanditiis molestiae excepturi est minima incidunt.',7,0,'Doloremque voluptatem itaque ea at inventore commodi ipsa. Nisi qui quos aut nesciunt ab.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(23,2,'Deserunt est sed autem.',30,1,'Suscipit qui omnis voluptatum. Et praesentium minima nemo at. Voluptatibus et dicta dolores.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(24,2,'Odio fuga neque neque qui blanditiis.',8,1,'Distinctio eum consectetur qui amet sunt possimus. Hic nam quo ratione dolor neque.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(25,1,'Tempora voluptatem ab libero eligendi.',21,0,'Sit omnis et similique et dolor. Sunt excepturi rem quis quis omnis.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(26,2,'Ducimus quia dolores cum omnis sunt tenetur architecto beatae.',29,1,'Placeat voluptates eveniet delectus illo. Autem voluptatibus assumenda magni aliquid.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(27,3,'Expedita et minus dolor.',15,1,'Iste asperiores minus eos. Hic est et eaque veniam. Nobis eos quia reiciendis est.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(28,1,'Ut nulla aut aut omnis quia corporis omnis perspiciatis.',9,0,'Quam et blanditiis reiciendis vitae. Ea et et id alias. Molestiae velit sed id vel.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(29,2,'Commodi est dolor animi quod aut molestiae molestiae ut.',5,1,'Quae ab ut cum aperiam incidunt aut in fuga. Libero accusamus architecto commodi omnis dolore.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(30,1,'Quis culpa vitae atque voluptas suscipit.',6,1,'Dolorum eos voluptatibus esse est. Omnis odit voluptas ipsum repudiandae qui placeat.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(31,2,'Incidunt similique sed eum vel.',8,1,'Error et culpa architecto reiciendis non aut incidunt. Voluptas id molestias aut dolores.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(32,3,'Soluta rerum veritatis tempore et alias quo autem.',20,0,'Aliquid excepturi cumque molestias consequatur nulla ea consequatur odit. Et quis ut quasi dolorem.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(33,1,'Animi quisquam nihil animi unde nisi aut aspernatur necessitatibus.',25,0,'Id iste id est eaque dolorem magnam. Perspiciatis minus enim non. Et excepturi deleniti tempora.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(34,2,'Officiis alias dolor illum atque beatae.',29,1,'Non nam soluta perspiciatis non. Veritatis eligendi non adipisci.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(36,3,'Consequatur hic dolorum consectetur maxime delectus temporibus.',17,1,'Id et sunt commodi reprehenderit voluptas. Et similique cumque placeat dolores numquam.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(37,3,'Ducimus voluptatibus qui voluptas dolores nemo.',27,1,'Qui excepturi debitis est quod. Consequatur tempora nostrum esse. Molestiae sed qui dicta nesciunt.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(38,2,'Pariatur hic commodi et beatae deleniti ut consectetur molestiae.',5,1,'Et adipisci odio laboriosam dolor. Quis sapiente error praesentium.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(39,1,'Recusandae repellat possimus architecto nobis ad.',4,0,'Incidunt accusamus natus neque laborum eos. Ea voluptate suscipit enim asperiores.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(40,1,'Voluptas minima voluptatem a vitae beatae.',9,1,'Sit est voluptates adipisci non cum amet. Dolorum rem illum sed dicta aut.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(41,1,'LastAuthur',12,1,'Emduamuathudi','2017-06-22 08:30:30','2017-06-22 08:30:30');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-13 17:09:40
