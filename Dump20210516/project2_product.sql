-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: project2
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(100) NOT NULL,
  `item_price` double NOT NULL,
  `item_type` varchar(100) NOT NULL,
  `item_img` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Iphone 8',800,'tech','https://iphonebinhphuoc.vn/wp-content/uploads/2021/01/dien-thoai-iphone-8-plus-gold-1.jpg'),(2,'Redmi 7',250,'tech','https://didongviet.vn/pub/media/catalog/product//r/e/redmi-note-7-pro-6gb-128-gb-didongviet.jpg'),(3,'Iphone 11',1000,'tech','https://www.techone.vn/wp-content/uploads/2019/10/11-pro-vang-37383.jpg'),(4,'Vivo y91',400,'tech','https://hc.com.vn/i/ecommerce/media/GS.000978_FEATURE_42582.jpg'),(5,'Vsmart joy4',420,'tech','https://salt.tikicdn.com/cache/280x280/ts/product/52/db/ed/250ed1f223e0711ac9f3ea93ade7074d.jpg'),(6,'Ipad 11',1600,'tech','https://cdn.tgdd.vn/Products/Images/522/220163/ipad-pro-11-inch-2020-xam-600x600-200x200.jpg'),(7,'Lenovo Yoga',1200,'tech','https://cdn.alzashop.com/ImgW.ashx?fd=f16&cd=NT211t5'),(8,'Sony A6300',3000,'tech','https://anhducdigital.vn/media/lib/4676_a6300_body.jpg'),(9,'Sony W830',2800,'tech','https://salt.tikicdn.com/cache/w444/ts/product/53/9f/86/8151626cff13a8b9ac388bc5aa050e3e.jpeg'),(10,'Wave RSX',1000,'tran','https://static1.cafeauto.vn/cafeautoData/upload/tintuc/thitruong/2020/10/tuan-02/1-1602665346.jpg'),(11,'Vision',2000,'tran','https://cf.shopee.vn/file/01c2d51920f67dade3595deae4aaf131'),(12,'Winner X',2500,'tran','https://cf.shopee.vn/file/ce64c10dec02e77eec389a865d0593e1'),(13,'Sirius Fi',1200,'tran','https://salt.tikicdn.com/ts/product/bf/d2/8e/d8bb26b740a5dadefb96e04e46cf4e89.jpg'),(14,'Yamaha Janus',2200,'tran','https://salt.tikicdn.com/cache/w444/ts/product/47/8d/bd/3eae2cf1b53d4958d1a30abdd16adb04.jpg'),(15,'Mazda 3',33000,'tran','https://canthoauto.com/wp-content/uploads/2019/04/mazda-3-can-tho.jpg'),(16,'Mercedes GLC',40000,'tran','https://dailyauto.vn/wp-content/uploads/2019/04/mercedes-glc-250-truoc-xe.jpg'),(17,'BMW x5',38000,'tran','https://giaxeoto.vn/admin/webroot/img/upload2/bmw-x5-ra-mat.jpg'),(18,'Custas',1,'food','https://cf.shopee.vn/file/1dfa5e49e05fe7dee670bc18c68b13b6'),(19,'Tipo',2,'food','https://cf.shopee.vn/file/34d6df8a1510b5b0a2ab06d134350e42'),(20,'Chocopie',1,'food','https://salt.tikicdn.com/cache/w1200/ts/product/63/85/5a/a80d9051e988ba66fd53cb9e790e3dc7.jpg'),(21,'Nước 247',9,'food','https://cf.shopee.vn/file/4f0b4f7464c9a8f2bbe8152fb51e193a'),(22,'Coca-cola',3,'food','https://cf.shopee.vn/file/3bd90bbebcb5c2ab09c45b52b4f59574'),(23,'String',3,'food','https://salt.tikicdn.com/ts/product/fb/2a/70/fca7284bba379b01ee5b146febf2dba1.jpg'),(24,'Bánh bao',2,'food','https://www.thatlangon.com/wp-content/uploads/2019/04/banh-bao-ngon-1-500x500.jpg'),(25,'Bánh mỳ',1,'food','https://media.foody.vn/res/g26/257790/prof/s/foody-upload-api-foody-mobile-3-201029103612.jpg'),(26,'Chả mực',3,'food','https://dacsanmienbac.org/wp-content/uploads/2020/04/cha-muc-ha-long-VIP.jpg'),(27,'Ghế Hòa Phát',20,'family','https://noithattoz.com/wp-content/uploads/2019/02/ghe-xoay-zh405-toz-2.jpg'),(28,'Ghế makeup',15,'family','https://cf.shopee.vn/file/b0f307ad1c95c2d2b2867957e1d4638f'),(29,'Ghế văn phòng',18,'family','https://hoaphat.net.vn/wp-content/uploads/Ghe-nhan-vien-SG550.jpg'),(30,'Bàn học sinh',40,'family','https://thanhlynoithat.com.vn/wp-content/uploads/2019/09/ban-lien-gia-truoc.jpg'),(31,'Bàn chữ K',25,'family','https://noithatthienminh.vn/wp-content/uploads/2019/06/k1-2.jpg'),(32,'Bàn Gaming',30,'family','https://mega.com.vn/media/product/11022_ban_gaming_pseat_t_eagle_1400_1.jpg'),(33,'Tủ lạnh',200,'family','https://vcdn-sohoa.vnecdn.net/2020/05/26/a4-8411-1590471771.jpg'),(34,'Điều hòa',210,'family','https://dieuhoa.info/wp-content/uploads/DHX-Noimage.jpg'),(35,'Áo adidas',80,'wear','https://image.yes24.vn/Upload/ProductImage/Gmarket/1956411_L.jpg'),(36,'Áo Nike',70,'wear','https://kwinshop.com/wp-content/uploads/2019/07/Ao-thun-Nike-3-1.jpg'),(37,'Quần Speedo',30,'wear','https://kinhboi.com/wp-content/uploads/2019/03/17145_8-09529A838_ORIGINAL-2.jpg'),(38,'Air Jordan 1',80,'wear','http://hystore.vn/wp-content/uploads/2020/12/x2.jpg'),(39,'Puma',60,'wear','https://image.yes24.vn/Upload/ProductImage/CHUTAMTINPUMA2019/2022783_L.jpg'),(40,'Rich Owen',80,'wear','https://cf.shopee.vn/file/c947c17e942fa8e9b3ae3b9073268408'),(41,'Túi Valoca',120,'wear','https://cdn.sablanca.vn/ImageProducts/sa0028/min/sa0028_min_1000x1000_4050835957.jpg'),(42,'Túi Hermes',130,'wear','https://gence.vn/wp-content/uploads/2020/06/12.jpg'),(43,'Túi Gucci',150,'wear','https://old.joolux.com/media/catalog/product/q/u/queen-margaret-small-gg-top-handle-bag.jpg'),(44,'Tai nghe SODO',120,'pk','https://gomhang.vn/images/stories/virtuemart/product/tai-ngh-bluetoooth-mh1-136.jpg'),(45,'Beats X',80,'pk','https://antien.vn/uploaded/Beats%20X/tai-nghe-beats-x.jpg'),(46,'Tai nghe Prolink',90,'pk','https://salt.tikicdn.com/ts/product/55/87/7b/7423fbfd0f1924f82ef9ab748b35bd94.jpg'),(47,'Airpod 2',140,'pk','https://iphonegiare.com/upload/product/airpod-2-chinh-hang-new-khong-day1588565223.jpg'),(48,'Earpod',20,'pk','https://salt.tikicdn.com/ts/product/70/87/5f/3405bf32178f509e97f45d72a57217cd.jpeg'),(49,'Chuột Zadez',40,'pk','https://salt.tikicdn.com/ts/product/3c/be/5f/15ad2566cafe4982cdee4514089ed317.png'),(50,'Dareu Queen',45,'pk','https://voke.vn/10324-large_default/chut-gaming-dareu-a960s-queen-.jpg'),(51,'Logitech G102',50,'pk','https://giatin.com.vn/wp-content/uploads/2020/04/21255_chu___t_logitech_g102.jpg'),(52,'Corsair Glaive',52,'pk','https://zedligaming.com/wp-content/uploads/2020/09/iil-189924-636273-1.jpg'),(53,'Corsair K63',102,'pk','https://www.playzone.vn/image/catalog/san%20pham/corsair/ban-phim/k63-wireless/1.jpg'),(54,'Geezer GS2',95,'pk','https://www.anphatpc.com.vn/media/lib/21054_geezer-gs2-rgb1.jpg'),(55,'Royal',130,'pk','https://lacdau.com/wp-content/uploads/2019/05/3.jpg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-16 10:29:30
