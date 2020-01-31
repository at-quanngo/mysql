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
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `view` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `content` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_blog_1_idx` (`category_id`),
  KEY `fk_blog_2_idx` (`user_id`),
  CONSTRAINT `fk_blog_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_blog_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,1,1,'Delectus veritatis consequuntur ut dolore perferendis.',4,1,'Natus dolorum fugit aut. Ut ad eos iusto omnis qui.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(2,1,5,'Molestiae adipisci ratione ea quis.',29,1,'Dicta fugiat voluptatem adipisci nobis eos accusantium. Odio eos optio culpa non beatae ea eos.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(3,3,3,'Voluptates perspiciatis nemo omnis molestias.',4,1,'Sit eos minima veritatis adipisci. A saepe minus quae autem rerum. Deleniti aut similique ullam ut.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(4,1,8,'Quae vero sunt dolores maxime qui molestias minus rem.',22,1,'Quas in sapiente reiciendis sequi voluptatem vel ducimus. Harum beatae magnam impedit hic.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(5,3,3,'Tempora at aliquid est sint quam doloremque placeat.',14,1,'Sed qui dolorem dolorem nostrum amet. Labore excepturi numquam rem quas rerum.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(6,3,8,'Adipisci libero commodi aperiam aperiam.',21,1,'Mollitia nesciunt possimus est unde et. Vero illum ducimus ut eos voluptates occaecati.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(7,3,2,'Consequuntur quis nemo eligendi molestiae.',3,1,'Repellendus ea aut explicabo ut omnis accusamus laborum. Soluta id magnam ut aspernatur ullam.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(8,1,6,'Et autem dolores sit cumque reiciendis qui.',20,1,'Qui non consequatur sed et occaecati impedit qui. Vel expedita rerum ut.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(9,3,6,'Aut perferendis reiciendis rerum enim ut commodi.',23,1,'Dolores nam iure ea ipsam et mollitia. Veniam rerum quas neque ut minima et.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(10,2,1,'Nihil ut ipsum architecto natus distinctio fuga et deserunt.',27,1,'Reprehenderit dolorum ratione repudiandae voluptatem nisi in qui et. Aut vitae qui asperiores.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(11,2,3,'Est consectetur voluptates laborum amet molestiae mollitia officiis sit.',26,0,'Doloremque porro molestias sed nisi vel. Sit veritatis eveniet est magnam esse laboriosam.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(12,1,7,'Alias in alias hic exercitationem enim et cumque dolorum.',4,0,'Aut enim laudantium et facilis corporis. Facilis officia natus consectetur eligendi.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(13,1,1,'Esse dolor dolorem saepe nobis quis laborum.',24,1,'Fugiat asperiores nam in qui. Sint omnis et illo commodi.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(14,2,6,'Quaerat aspernatur omnis cupiditate eos odio quo quas.',9,1,'Iusto dolor magni quia voluptatem et sed. Sit nostrum quas reiciendis.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(15,2,6,'Molestias repellat dolores et sed aut debitis veritatis nisi.',20,1,'Quam perspiciatis nihil similique excepturi quis non cum natus. Sunt sunt et quidem esse ad.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(16,2,4,'Quas officiis ipsum sit nesciunt est tenetur.',15,1,'Reprehenderit vel amet nesciunt et quam dolores qui. Aperiam quis earum quisquam occaecati.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(17,1,4,'Enim consectetur autem ut.',21,1,'Error libero ab ea similique. At non omnis vel a. Incidunt omnis distinctio quia dolorum.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(18,3,2,'Commodi error et repellendus non.',1,1,'Voluptas et nostrum velit quisquam. Laborum error et perferendis saepe illo vel.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(19,1,6,'Distinctio quia dolor dolor quia consectetur adipisci.',17,1,'Fugit qui sit facilis. Minus provident eaque distinctio sunt eveniet et.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(20,2,9,'Sed eos molestiae ipsa vero ut.',15,1,'Sequi quam nam deleniti et eum. Aliquid voluptas aut eaque corporis consequatur et.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(21,1,4,'Voluptatem nisi voluptatibus at itaque.',27,1,'Doloribus corrupti enim quia dolor sit consequatur neque. Nisi enim magni hic quam.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(22,3,7,'Ut veniam non et natus.',7,1,'Et ea labore voluptates culpa itaque et. Harum ut dolor accusamus. Illo facere eos eos.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(23,1,9,'Ad eveniet quis rem aspernatur eos optio assumenda.',2,1,'Rerum a dolorem consequuntur exercitationem libero unde est. Tempora sit voluptatem cumque.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(24,1,3,'Omnis autem nulla rerum animi.',22,1,'Aut nesciunt earum quibusdam quasi asperiores. Occaecati non dolorum sit.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(25,1,1,'Ipsam soluta consequatur quo corporis accusamus.',13,0,'Aspernatur odio corporis esse. In vel ab eaque. Sed est veniam qui.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(26,3,3,'Quis omnis quaerat nostrum sit numquam recusandae.',25,1,'Laborum facere ratione fugit officia molestiae eos qui. Quod qui reprehenderit nihil aut.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(27,1,7,'Et et consequuntur expedita.',25,1,'Libero totam tempore ut eos quis laborum. Maxime veniam vero doloribus quis et non.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(28,1,8,'Dolorem esse numquam nihil.',23,1,'Ducimus rem delectus autem ut. Quam voluptatem quos veritatis pariatur porro. Et est ad nihil sint.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(29,2,9,'Eum veniam facilis quis placeat.',5,0,'Quos a id et. Aut fuga iste distinctio laudantium nemo minus. Ducimus facilis sunt non non et.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(30,3,1,'Incidunt labore dolorem dolorem in nihil at qui.',17,1,'Quia aliquid corrupti quia velit sed ut. Cum voluptatum nihil earum quis harum praesentium.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(31,2,2,'Deserunt veritatis quis in a nisi qui aut.',0,1,'Quia at quis a expedita dolor voluptatem. Atque quod minus rem. Eius natus eum minima est.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(32,3,2,'Et eaque sunt dolores voluptatem quae laborum.',17,0,'Natus deleniti velit quia eum eligendi sed. Dolore enim minus ut vel.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(33,1,8,'Autem quaerat qui laboriosam et odit voluptatibus.',5,1,'Dolor sint voluptas rerum odit deleniti. Tempore sed reprehenderit maxime.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(34,3,1,'Necessitatibus ipsam accusamus aspernatur architecto.',19,0,'Et dicta quam qui neque illum. Quia sed eos dolorem non. Quo et neque fugiat omnis est quis.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(35,3,2,'In temporibus porro ea facilis mollitia nobis.',18,1,'Nostrum enim error animi asperiores. Asperiores et rem recusandae iusto et.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(36,2,4,'Ad quasi perspiciatis necessitatibus ex dolor minima perspiciatis.',23,1,'Et nulla voluptatem aut sit. Modi nisi fugiat id assumenda.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(37,2,1,'Culpa et enim possimus nihil porro.',8,1,'Voluptatem earum beatae vel illo dolorem eum officiis ad. Optio quo veniam amet vel.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(38,1,9,'Alias itaque in expedita architecto voluptas totam modi.',13,0,'Quos et illo dolorum quae voluptatem architecto. Assumenda deserunt velit illum.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(39,3,1,'Reprehenderit fugit qui velit esse id.',13,0,'Ut qui aut quidem quo at labore. Possimus fugiat nostrum nam.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(40,3,9,'Doloribus beatae illum autem magnam minima a unde qui.',2,1,'Commodi veritatis deleniti laborum corporis numquam. Consequatur nihil sint possimus sunt.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(41,3,11,'A Brief Overview.',22,1,'We communicate with modern computers by clicking, tapping, sliding, hovering, typing, shaking, and speaking. Through simple gestures, we are able to command the computer.','2017-06-22 08:30:30','2017-06-22 08:30:30'),(42,1,12,'What is an interface?',23,1,'According to the online Merriam Webster dictionary, an interface is \"a system that is used for operating a computer: a system that controls the way information is shown to a computer user and the way the user is able to work with the computer.\"','2017-06-22 08:30:30','2017-06-22 08:30:30'),(43,2,13,'CLI Display',23,2,'The command line can be the default interface for a computer, but most personal computers use a program (like Terminal) within the desktop graphical interface to provide the command line interface','2017-06-22 08:30:30','2017-06-22 08:30:30'),(44,3,14,'CLI Input',24,3,'The second component of this textual interface is the input','2017-06-22 08:30:30','2017-06-22 08:30:30');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
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
