-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 17, 2019 at 01:47 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sportchek`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accessories`
--

DROP TABLE IF EXISTS `tbl_accessories`;
CREATE TABLE IF NOT EXISTS `tbl_accessories` (
  `tbl_id` int(11) NOT NULL,
  `access_name` varchar(100) NOT NULL,
  `acces_price` varchar(10) NOT NULL,
  `access_image` varchar(30) NOT NULL,
  `access_category` varchar(50) NOT NULL,
  `access_description` varchar(600) NOT NULL,
  PRIMARY KEY (`tbl_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_accessories`
--

INSERT INTO `tbl_accessories` (`tbl_id`, `access_name`, `acces_price`, `access_image`, `access_category`, `access_description`) VALUES
(1, 'Nike Swoosh Sport Headband 2.0 6-Pack', '13', 'Headband6.png', 'Mens', 'The Nike Headbands are made with a spandex fabric blend and assorted graphics for a comfortable fit and versatile look during competition.'),
(2, 'Nike Run Slim Waist Pack', '25.00', 'WaistPack.png', 'Mens', 'The Nike Running Slim Waistpack is expandable to fit your essentials on your run. The adjustable elastic belt makes for a secure and comfortable fit during your workout.'),
(3, 'adidas Original Thrasher Chain Men\'s Snapback Cap', '16.88', 'ThrasherHat.png', 'Mens', 'An Originals classic. Acrylic/wool with an embroidered Trefoil logo and snap closure.'),
(4, 'Nike Golf Legacy 91 Tech Hat', '25.00', 'NikeGolf.png', 'Unisex', 'Unisex Nike Legacy91 Golf Hat helps you stay focused on your game with sweat-wicking, breathable fabric and a quick-adjust closure that lets you easily customize your fit.'),
(5, 'Oakley Tinfoil Men\'s Cap', '14.88', 'GrayTinfoil.png', 'Mens', 'Designed with a curved brim and stretch sweatband, the Tinfoil Cap contours to your head for all-day comfort. New Era® lends its 39THIRTY™ design to this Oakley hat for lasting durability, while a metal ellipse logo on the crown conveys the strength of an icon.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coats`
--

DROP TABLE IF EXISTS `tbl_coats`;
CREATE TABLE IF NOT EXISTS `tbl_coats` (
  `coat_id` int(11) NOT NULL,
  `coat_name` varchar(50) NOT NULL,
  `coat_price` varchar(10) NOT NULL,
  `coat_image` varchar(30) NOT NULL,
  `coat_category` varchar(60) NOT NULL,
  `coat_description` varchar(600) NOT NULL,
  PRIMARY KEY (`coat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_coats`
--

INSERT INTO `tbl_coats` (`coat_id`, `coat_name`, `coat_price`, `coat_image`, `coat_category`, `coat_description`) VALUES
(1, 'Ripzone Men\'s Crow Bomber Jacket', '89.99', 'CrowBomber.png', 'Mens', 'The Ripzone Crow Bomber Jacket is a light weight versatile jacket with a  Durable Water Repellent coating to keep you protected from the elements this Spring. '),
(2, 'The North Face Men\'s Gotham III Winter Jacket', '239.97', 'Gotham3.png', 'Mens', 'Block out winter\'s chill with this weatherproof jacket that\'s insulated with warm 550-fill down insulation and features an adjustable hood, stormflap, and ribbed trim for complete coverage'),
(3, 'Helly Hansen Men\'s Seven J Shell Jacket ', '119.99', 'ShellJacket.png', 'Mens', 'The Helly Hansen Seven J Men\'s Shell Jacket lets you brave the rain in style. Its anti-chafe chin guard, bottom hem cinch cord, front storm flap and adjustable cuffs keep you fully protected from wet weather.'),
(4, 'Helly Hansen Women\'s Moss Helox Rain Jacket', '129.99', 'MossHelox.png', 'Womens', 'Inspired by Helly Hansen’s heritage from the city of Moss, comes a line up PU rainwear products that marries traditional design with modern construction and fabrics.'),
(5, 'Helly Hansen Women\'s Long Belfast Shell Jacket ', '184.99', 'BelfastShell.png', 'Womens', 'This design gives you a long rain coat with sporty detailing. A nice cut and full HELLY TECH® Protection gives you a coat you’ll get to love and trust to keep you dry from the rain.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pants`
--

DROP TABLE IF EXISTS `tbl_pants`;
CREATE TABLE IF NOT EXISTS `tbl_pants` (
  `pants_id` int(11) NOT NULL,
  `pants_name` varchar(40) NOT NULL,
  `pants_price` varchar(10) NOT NULL,
  `pants_image` varchar(30) NOT NULL,
  `pants_category` varchar(30) NOT NULL,
  `pants_description` varchar(600) NOT NULL,
  PRIMARY KEY (`pants_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pants`
--

INSERT INTO `tbl_pants` (`pants_id`, `pants_name`, `pants_price`, `pants_image`, `pants_category`, `pants_description`) VALUES
(1, 'O\'Neill Men\'s Townes Pants - Black', '47.97', 'TownesPants.png', 'Mens', 'O’Neill’s all new, modern denim pant constructed of cotton twill, made to be worn in and worn comfortably.'),
(2, 'Ripzone Women\'s Parksville Leggings ', '26.99', 'ParksvilleLeggings.png', 'Womens', '- Black Floral Your streetwear style will really blossom when you pull on the Ripzone Women’s parksville Printed Legging. While you show off the fun print, these leggings pamper you with the softness and stretchy fit of spandex-infused cotton'),
(3, 'Fox Women\'s Team Fox Fleece Pants', '59.99', 'TeamFox.png', 'Womens', 'Stay free and easy in the Team Fox Fleece Pant. They feature a comfortable polyester fleece construction for an exceptionally soft feel. Additional features include an adjustable waist drawcord and Fox Head screen print.'),
(4, 'Fox Men\'s Lateral Fleece Pants ', '69.99', 'FoxBlack.png', 'Mens', 'Stay in motion in the Lateral Pant. This warm up pant features exceptional moisture-wicking to keep you dry, and MX-inspired back yoke and articulated knees for freedom of movement. '),
(5, 'Surf Check One And Only Trackpants', '61.99', 'HurleySurf.png', 'Mens', 'The Hurley Surf Check One and Only Trackpants are a soft fleece pant designed to keep you warm and comfortable whether you’re out at first light or relaxing as the sun goes down. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shoes`
--

DROP TABLE IF EXISTS `tbl_shoes`;
CREATE TABLE IF NOT EXISTS `tbl_shoes` (
  `shoe_id` int(11) NOT NULL,
  `shoe_name` varchar(100) NOT NULL,
  `shoe_price` varchar(15) NOT NULL,
  `shoe_image` varchar(30) NOT NULL,
  `shoe_category` varchar(50) NOT NULL,
  `shoe_description` varchar(600) NOT NULL,
  PRIMARY KEY (`shoe_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shoes`
--

INSERT INTO `tbl_shoes` (`shoe_id`, `shoe_name`, `shoe_price`, `shoe_image`, `shoe_category`, `shoe_description`) VALUES
(1, 'ASICS Women\'s GEL-Nimbus 20 Running Shoes - Bright Rose', '129.99', 'BrightRose.png', 'Womens', 'A smooth, comfortable ride that\'s 20 years in the making. Packed with revolutionary lightweight FlyteFoam® cushioning, FluidRide® Midsole and discreet eyelet construction, the Nimbus caters to neutral runners of all levels. Its gradient jacquard-mesh FluidFit® upper strategically adapts to your foot\'s natural motion while 3-D printed overlays offer extra support to give you a customized fit that keeps you going mile after mile. Weight: 8.8. Heel Height: 25mm. Forefoot Height: 12mm.'),
(2, 'Under Armour Men\'s Lightning 2 Running Shoes - Blue/Grey', '69.98', 'BlueGrey.png', 'Mens', 'Lightweight cushioning and a snug fit. That\'s what you\'ll get every time you lace up the Under Armour Men\'s Lightning 2 Running Shoes. Featuring a snug knit upper, the Charged Lightning 2 delivers targeted areas of durability, breathability, and support where you need them most. A one-piece Charged Cushioning midsole places your foot close to the ground, delivering responsive cushioning and fast, unstoppable feel.'),
(3, 'Saucony Women\'s Excursion TR 12 Trail Running Shoes - Grey/Teal', '69.98', 'GreyTeal.png', 'Womens', 'Rugged, durable, and good looking - adjectives to describe the new Saucony Women\'s Excursion TR 12 Trail Running Shoes. The mesh upper with supportive overlays locks your foot into place, while the trail-tested outsole with triangular lug pattern will keep you from slipping. From the path to the park, this women\'s trail running shoe is ready for all the places you play. It\'s great for hiking too!'),
(4, 'ASICS Women\'s Gel Excite 6 Running Shoes - Black/White', '109.99', 'BlackWhite.png', 'Womens', 'The ASICS Women\'s Gel Excite 6 Running Shoes feature durable midsole material that provides cushion for all day comfort. The breathable mesh upper with less overlays provides a more comfortable and better fitting environment Styling and design cues used to create more modern and younger silhouette to excite.'),
(5, 'ASICS Women\'s Gel Kayano 25 Running Shoes - Teal', '219.99', 'Teal.png', 'Womens', 'The 25th anniversary of the ASICS Women\'s Gel Kayano 25 Running Shoes include the next evolution of our ultra-lightweight FlyteFoam® cushioning: FlyteFoam® Propel and FlyteFoam® Lyte. These two cutting-edge technologies work together to deliver energized cushioning and exceptional ride\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_socks`
--

DROP TABLE IF EXISTS `tbl_socks`;
CREATE TABLE IF NOT EXISTS `tbl_socks` (
  `socks_id` int(11) NOT NULL,
  `socks_name` varchar(60) NOT NULL,
  `socks_price` varchar(10) NOT NULL,
  `socks_image` varchar(30) NOT NULL,
  `socks_category` varchar(11) NOT NULL,
  `socks_description` varchar(600) NOT NULL,
  PRIMARY KEY (`socks_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='for socks, underware, bras';

--
-- Dumping data for table `tbl_socks`
--

INSERT INTO `tbl_socks` (`socks_id`, `socks_name`, `socks_price`, `socks_image`, `socks_category`, `socks_description`) VALUES
(1, '2XU Compression Performance Women\'s Running Socks', '54.99', 'RunningSock.jpg', 'Womens', 'Experience a more comfortable run when you try the 2XU Performance Women’s Running Socks. These high-performance compression socks provide superior support of the ankle, calf, shin, Achilles and arch. Finishing features such as a lined toe cage and seamless construction are a testament to the top-quality design.'),
(2, 'Nike Elite Women\'s No Show Running Socks - 6 Pair Pack', '24.00', 'NikeElite.jpg', 'Womens', 'These Nike Elite Women’s No Show Running Socks are made with top-quality, high-performance details so you can be at the top of your game. Packaged in a convenient 6-pack, they’re durable enough for any track or road surface and provide lightweight, breathable comfort so you can wear them all day.'),
(3, 'Diadora Women\'s Alba No Show Socks 3 - Pack', '5.88', 'AlbaNoShow.png', 'Womens', 'Diadora Women’s Alba No Show Socks 3 - Pack'),
(4, 'Nike Men\'s Dri-FIT Camo Cushion Low Cut Sock - 6 Pack', '28.00', 'DriFitCamo.png', 'Mens', 'Carry on throughout the day with the full comfort of the Nike Men\'s Dri-FIT Camo Cushion Low Cut Socks (6-Pair)!'),
(5, 'Nike Everyday Plus Cushion Crew Training Socks (6 Pair)', '26.00', 'NikeCrew.png', 'Mens', 'SWEAT-WICKING COMFORT.\r\nThe Nike Everyday Plus Cushion Crew Training Socks (6 Pair) feature sweat-wicking Dri-FIT technology in a crew silhouette for comfortable coverage around the ankle and calf. An arch band contours around the foot for a locked in fit');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_swimwear`
--

DROP TABLE IF EXISTS `tbl_swimwear`;
CREATE TABLE IF NOT EXISTS `tbl_swimwear` (
  `swim_id` int(11) NOT NULL,
  `swim_name` varchar(40) NOT NULL,
  `swim_price` varchar(10) NOT NULL,
  `swim_image` varchar(20) NOT NULL,
  `swim_category` varchar(30) NOT NULL,
  `swim_description` varchar(600) NOT NULL,
  PRIMARY KEY (`swim_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_swimwear`
--

INSERT INTO `tbl_swimwear` (`swim_id`, `swim_name`, `swim_price`, `swim_image`, `swim_category`, `swim_description`) VALUES
(1, 'O\'Neill Men\'s Onshore Volley Shorts', '69.99', 'OnshoreVolley.png', 'Mens', 'On the shore and in the water, the O’Neill Men’s Onshore Volley Shorts provide a comfortable secure fit. The waist is elasticated and equipped with a drawstring, and the fabric dries fast post swim.'),
(2, 'Speedo Endurance Plus Shirred Tank', '83.99', 'ShirredTank.jpg', 'Womens', 'The Speedo Endurance Plus Shirred Tank Women’s Swimsuit is engineered from Speedo’s exclusive, longest lasting and best-selling Endurance+ fabric.'),
(3, 'O\'Neill Breaker Cruzer Volley Shorts', '59.99', 'CruzerVolley.png', 'Mens', 'Even on the hottest of days, the O’Neill Men’s Breaker Crozer Volley Shorts - Black will keep you cool on the beach and during volleyball games. These volley shorts for men are lined with mesh for maximum breathability.'),
(4, 'Breaker Cruzer Volley Shorts - Ocean', '59.99', 'OceanVolley.png', 'Mens', 'Sweltering weather won’t get in the way of your volleyball games and vacations when you’re wearing the O’Neill Men’s Breaker Crozer Volley Shorts - Ocean. Mesh lining promotes maximum airflow for cool comfort'),
(5, 'TYR Women\'s Poly Printed Splice', '59.99', 'PrintedSplice.jpg', 'Womens', 'Train in comfort with the TYR Women’s Poly Printed Splice Maxfit One Piece Swimsuit with cups offers the support and coverage for daily pool sessions.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tops`
--

DROP TABLE IF EXISTS `tbl_tops`;
CREATE TABLE IF NOT EXISTS `tbl_tops` (
  `tops_id` int(11) NOT NULL,
  `tops_name` varchar(40) NOT NULL,
  `tops_price` varchar(10) NOT NULL,
  `tops_image` varchar(30) NOT NULL,
  `tops_category` varchar(30) NOT NULL,
  `tops_description` varchar(600) NOT NULL,
  PRIMARY KEY (`tops_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tops`
--

INSERT INTO `tbl_tops` (`tops_id`, `tops_name`, `tops_price`, `tops_image`, `tops_category`, `tops_description`) VALUES
(1, 'Stick Em Up Short Sleeve Hoodie', '21.88', 'GongshowHoodie.png', 'Mens', 'You live in hoodies, let’s face it you have piles of them at home. Get the feeling of your favourite warm up hoodie with the flexibility of tee - Stick Em Up anytime with the boys.'),
(2, ' Project Rock Terry Short Sleeve Hoodie', '69.99', 'RockTerry.png', 'Mens', '“Project Rock is not a brand, it’s a movement. It’s a core belief, that I 100% don’t care what color you are, how old you are, where you come from or what you do for a living. The only thing I care about is you and me, building the belief that regardless of whatever the odds, we can overcome and achieve—but it all starts with the work we’re willing to put in with our two hands.\"—Dwayne Johnson Slip on the UA x Project Rock Sleeveless Hoodie for that extra burn or as an extra layer over your favourite shirt for warming up.'),
(3, 'Hooded Coverup Women\'s Short Sleeve Top', '24.99', 'AdidasPink.png', 'Womens', 'The Mesh Mix Short-Sleeve Hooded Cover-Up is the perfect post-workout cover-up. The main body and hood are made from soft climalite® fabric and there is a large mesh back panel to help cool and dry the body after a workout. It is loose fitting through the body.'),
(4, 'adidas Originals Women\'s Trefoil T Shirt', '39.99', 'AdidasRed.png', 'Womens', 'The Trefoil debuted in 1972, and it’s been making headlines ever since. This t shirt celebrates the iconic symbol with a contrast Trefoil logo printed on the chest. Cotton jersey gives it a soft and stretchy feel.'),
(5, 'PUMA Women\'s Classic Logo T Shirt - Blue', '29.99', 'PumaBlue.png', 'Womens', 'Perfect to pair with your favourite leggings, the PUMA Classics Logo T Shirt is a staple for your sport-inspired closet.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
