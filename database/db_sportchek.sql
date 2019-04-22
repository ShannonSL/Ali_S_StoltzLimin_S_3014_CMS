-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 22, 2019 at 03:00 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `cat_id` int(10) UNSIGNED NOT NULL,
  `cat_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cat_id`, `cat_name`) VALUES
(1, 'Accessories'),
(2, 'Coats'),
(3, 'Pants'),
(4, 'Shoes'),
(5, 'Socks'),
(6, 'Swimwear'),
(7, 'Tops');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `prod_id` int(10) UNSIGNED NOT NULL,
  `prod_img` varchar(100) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_desc` text NOT NULL,
  `prod_price` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`prod_id`, `prod_img`, `prod_name`, `prod_desc`, `prod_price`) VALUES
(1, 'Headband6.png', 'Nike Swoosh Sport Headband 2.0 6-Pack', 'The Nike Headbands are made with a spandex fabric blend and assorted graphics for a comfortable fit and versatile look during competition.', '13.00'),
(2, 'WaistPack.png', 'Nike Run Slim Waist Pack', 'The Nike Running Slim Waistpack is expandable to fit your essentials on your run. The adjustable elastic belt makes for a secure and comfortable fit during your workout.', '24.00'),
(3, 'ThrasherHat.png', 'adidas Original Thrasher Chain Men\'s Snapback Cap', 'An Originals classic. Acrylic/wool with an embroidered Trefoil logo and snap closure.', '16.88'),
(4, 'NikeGolf.png', 'Nike Golf Legacy 91 Tech Hat', 'Unisex Nike Legacy91 Golf Hat helps you stay focused on your game with sweat-wicking, breathable fabric and a quick-adjust closure that lets you easily customize your fit.', '25.00'),
(5, 'GrayTinfoil.png', 'Oakley Tinfoil Men\'s Cap', 'Designed with a curved brim and stretch sweatband, the Tinfoil Cap contours to your head for all-day comfort. New Era® lends its 39THIRTY™ design to this Oakley hat for lasting durability, while a metal ellipse logo on the crown conveys the strength of an icon.', '14.88'),
(6, 'CrowBomber.png', 'Ripzone Men\'s Crow Bomber Jacket', 'The Ripzone Crow Bomber Jacket is a light weight versatile jacket with a  Durable Water Repellent coating to keep you protected from the elements this Spring. ', '89.99'),
(7, 'Gotham3.png', 'The North Face Men\'s Gotham III Winter Jacket', 'Block out winter\'s chill with this weatherproof jacket that\'s insulated with warm 550-fill down insulation and features an adjustable hood, stormflap, and ribbed trim for complete coverage', '239.97'),
(8, 'ShellJacket.png', 'Helly Hansen Men\'s Seven J Shell Jacket ', 'The Helly Hansen Seven J Men\'s Shell Jacket lets you brave the rain in style. Its anti-chafe chin guard, bottom hem cinch cord, front storm flap and adjustable cuffs keep you fully protected from wet weather.', '119.99'),
(9, 'MossHelox.png', 'Helly Hansen Women\'s Moss Helox Rain Jacket', 'Inspired by Helly Hansen’s heritage from the city of Moss, comes a line up PU rainwear products that marries traditional design with modern construction and fabrics.', '129.99'),
(10, 'BelfastShell.png', 'Helly Hansen Women\'s Long Belfast Shell Jacket ', 'This design gives you a long rain coat with sporty detailing. A nice cut and full HELLY TECH® Protection gives you a coat you’ll get to love and trust to keep you dry from the rain.', '184.99'),
(11, 'TownesPants.png', 'O\'Neill Men\'s Townes Pants - Black', 'O’Neill’s all new, modern denim pant constructed of cotton twill, made to be worn in and worn comfortably.', '47.97'),
(12, 'ParksvilleLeggings.png', 'Ripzone Women\'s Parksville Leggings ', '- Black Floral Your streetwear style will really blossom when you pull on the Ripzone Women’s parksville Printed Legging. While you show off the fun print, these leggings pamper you with the softness and stretchy fit of spandex-infused cotton', '26.99'),
(13, 'TeamFox.png', 'Fox Women\'s Team Fox Fleece Pants', 'Stay free and easy in the Team Fox Fleece Pant. They feature a comfortable polyester fleece construction for an exceptionally soft feel. Additional features include an adjustable waist drawcord and Fox Head screen print.', '59.99'),
(14, 'FoxBlack.png', 'Fox Men\'s Lateral Fleece Pants ', 'Stay in motion in the Lateral Pant. This warm up pant features exceptional moisture-wicking to keep you dry, and MX-inspired back yoke and articulated knees for freedom of movement. ', '69.99'),
(15, 'HurleySurf.png', 'Surf Check One And Only Trackpants', 'The Hurley Surf Check One and Only Trackpants are a soft fleece pant designed to keep you warm and comfortable whether you’re out at first light or relaxing as the sun goes down. ', '61.99'),
(16, 'BlackWhite.png', 'ASICS Women\'s Gel Excite 6 Running Shoes - Black/White', 'The ASICS Women\'s Gel Excite 6 Running Shoes feature durable midsole material that provides cushion for all day comfort. The breathable mesh upper with less overlays provides a more comfortable and better fitting environment Styling and design cues used to create more modern and younger silhouette to excite.', '109.99'),
(17, 'BrightRose.png', 'ASICS Women\'s GEL-Nimbus 20 Running Shoes - Bright Rose', 'A smooth, comfortable ride that\'s 20 years in the making. Packed with revolutionary lightweight FlyteFoam® cushioning, FluidRide® Midsole and discreet eyelet construction, the Nimbus caters to neutral runners of all levels. Its gradient jacquard-mesh FluidFit® upper strategically adapts to your foot\'s natural motion while 3-D printed overlays offer extra support to give you a customized fit that keeps you going mile after mile. Weight: 8.8. Heel Height: 25mm. Forefoot Height: 12mm.', '129.99'),
(18, 'Teal.png', 'ASICS Women\'s Gel Kayano 25 Running Shoes - Teal', 'The 25th anniversary of the ASICS Women\'s Gel Kayano 25 Running Shoes include the next evolution of our ultra-lightweight FlyteFoam® cushioning: FlyteFoam® Propel and FlyteFoam® Lyte. These two cutting-edge technologies work together to deliver energized cushioning and exceptional ride\r\n', '219.99'),
(19, 'BlueGrey.png', 'Under Armour Men\'s Lightning 2 Running Shoes - Blue/Grey', 'Lightweight cushioning and a snug fit. That\'s what you\'ll get every time you lace up the Under Armour Men\'s Lightning 2 Running Shoes. Featuring a snug knit upper, the Charged Lightning 2 delivers targeted areas of durability, breathability, and support where you need them most. A one-piece Charged Cushioning midsole places your foot close to the ground, delivering responsive cushioning and fast, unstoppable feel.', '69.98'),
(20, 'GreyTeal.png', 'Saucony Women\'s Excursion TR 12 Trail Running Shoes - Grey/Teal', 'Rugged, durable, and good looking - adjectives to describe the new Saucony Women\'s Excursion TR 12 Trail Running Shoes. The mesh upper with supportive overlays locks your foot into place, while the trail-tested outsole with triangular lug pattern will keep you from slipping. From the path to the park, this women\'s trail running shoe is ready for all the places you play. It\'s great for hiking too!', '69.98'),
(21, 'RunningSock.jpg', '2XU Compression Performance Women\'s Running Socks', 'Experience a more comfortable run when you try the 2XU Performance Women’s Running Socks. These high-performance compression socks provide superior support of the ankle, calf, shin, Achilles and arch. Finishing features such as a lined toe cage and seamless construction are a testament to the top-quality design.', '54.99'),
(22, 'NikeElite.jpg', 'Nike Elite Women\'s No Show Running Socks - 6 Pair Pack', 'These Nike Elite Women’s No Show Running Socks are made with top-quality, high-performance details so you can be at the top of your game. Packaged in a convenient 6-pack, they’re durable enough for any track or road surface and provide lightweight, breathable comfort so you can wear them all day.', '24.00'),
(23, 'AlbaNoShow.png', 'Diadora Women\'s Alba No Show Socks 3 - Pack', 'Diadora Women’s Alba No Show Socks 3 - Pack', '5.88'),
(24, 'DriFitCamo.png', 'Nike Men\'s Dri-FIT Camo Cushion Low Cut Sock - 6 Pack', 'Carry on throughout the day with the full comfort of the Nike Men\'s Dri-FIT Camo Cushion Low Cut Socks (6-Pair)!', '28.00'),
(25, 'NikeCrew.png', 'Nike Everyday Plus Cushion Crew Training Socks (6 Pair)', 'SWEAT-WICKING COMFORT.\r\nThe Nike Everyday Plus Cushion Crew Training Socks (6 Pair) feature sweat-wicking Dri-FIT technology in a crew silhouette for comfortable coverage around the ankle and calf. An arch band contours around the foot for a locked in fit', '26.00'),
(26, 'OnshoreVolley.png', 'O\'Neill Men\'s Onshore Volley Shorts', 'On the shore and in the water, the O’Neill Men’s Onshore Volley Shorts provide a comfortable secure fit. The waist is elasticated and equipped with a drawstring, and the fabric dries fast post swim.', '69.99'),
(27, 'ShirredTank.jpg', 'Speedo Endurance Plus Shirred Tank', 'The Speedo Endurance Plus Shirred Tank Women’s Swimsuit is engineered from Speedo’s exclusive, longest lasting and best-selling Endurance+ fabric.', '83.99'),
(28, 'CruzerVolley.png', 'O\'Neill Breaker Cruzer Volley Shorts', 'Even on the hottest of days, the O’Neill Men’s Breaker Crozer Volley Shorts - Black will keep you cool on the beach and during volleyball games. These volley shorts for men are lined with mesh for maximum breathability.', '59.99'),
(29, 'OceanVolley.png', 'Breaker Cruzer Volley Shorts - Ocean', 'Sweltering weather won’t get in the way of your volleyball games and vacations when you’re wearing the O’Neill Men’s Breaker Crozer Volley Shorts - Ocean. Mesh lining promotes maximum airflow for cool comfort', '59.99'),
(30, 'PrintedSplice.jpg', 'TYR Women\'s Poly Printed Splice', 'Train in comfort with the TYR Women’s Poly Printed Splice Maxfit One Piece Swimsuit with cups offers the support and coverage for daily pool sessions.', '59.99'),
(31, 'GongshowHoodie.png', 'Stick Em Up Short Sleeve Hoodie', 'You live in hoodies, let’s face it you have piles of them at home. Get the feeling of your favourite warm up hoodie with the flexibility of tee - Stick Em Up anytime with the boys.', '21.88'),
(32, 'RockTerry.png', 'Project Rock Terry Short Sleeve Hoodie', '“Project Rock is not a brand, it’s a movement. It’s a core belief, that I 100% don’t care what color you are, how old you are, where you come from or what you do for a living. The only thing I care about is you and me, building the belief that regardless of whatever the odds, we can overcome and achieve—but it all starts with the work we’re willing to put in with our two hands.\"—Dwayne Johnson Slip on the UA x Project Rock Sleeveless Hoodie for that extra burn or as an extra layer over your favourite shirt for warming up.', '69.99'),
(33, 'AdidasPink.png', 'Hooded Coverup Women\'s Short Sleeve Top', 'The Mesh Mix Short-Sleeve Hooded Cover-Up is the perfect post-workout cover-up. The main body and hood are made from soft climalite® fabric and there is a large mesh back panel to help cool and dry the body after a workout. It is loose fitting through the body.', '24.99'),
(34, 'AdidasRed.png', 'adidas Originals Women\'s Trefoil T Shirt', 'The Trefoil debuted in 1972, and it’s been making headlines ever since. This t shirt celebrates the iconic symbol with a contrast Trefoil logo printed on the chest. Cotton jersey gives it a soft and stretchy feel.', '39.99'),
(35, 'PumaBlue.png', 'PUMA Women\'s Classic Logo T Shirt - Blue', 'Perfect to pair with your favourite leggings, the PUMA Classics Logo T Shirt is a staple for your sport-inspired closet.', '29.99');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_category`
--

CREATE TABLE `tbl_product_category` (
  `pc_id` int(10) UNSIGNED NOT NULL,
  `prod_id` mediumint(9) NOT NULL,
  `cat_id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product_category`
--

INSERT INTO `tbl_product_category` (`pc_id`, `prod_id`, `cat_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 3),
(12, 12, 3),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3),
(16, 16, 4),
(17, 17, 4),
(18, 18, 4),
(19, 19, 4),
(20, 20, 4),
(21, 21, 5),
(22, 22, 5),
(23, 23, 5),
(24, 24, 5),
(25, 25, 5),
(26, 26, 6),
(27, 27, 6),
(28, 28, 6),
(29, 29, 6),
(30, 30, 6),
(31, 31, 7),
(32, 32, 7),
(33, 33, 7),
(34, 34, 7),
(35, 35, 7),
(36, 31, 0),
(37, 36, 3),
(38, 37, 4),
(39, 38, 3),
(40, 39, 5),
(41, 40, 2),
(42, 41, 4),
(43, 42, 4),
(44, 43, 6),
(45, 44, 5),
(46, 45, 6),
(47, 46, 2),
(48, 47, 4),
(49, 48, 3),
(50, 49, 4),
(51, 50, 4),
(52, 51, 4),
(53, 52, 2),
(54, 50, 6),
(55, 51, 2),
(56, 52, 3),
(57, 53, 2),
(58, 54, 2),
(59, 55, 3),
(60, 56, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_fname` varchar(15) NOT NULL,
  `user_name` varchar(15) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_pass` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_email`, `user_pass`) VALUES
(1, 'Admin', 'Admin', 'admin@sportchek.ca', 'password');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD UNIQUE KEY `cat_id` (`cat_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD UNIQUE KEY `prod_id` (`prod_id`);

--
-- Indexes for table `tbl_product_category`
--
ALTER TABLE `tbl_product_category`
  ADD UNIQUE KEY `pc_id` (`pc_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `prod_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbl_product_category`
--
ALTER TABLE `tbl_product_category`
  MODIFY `pc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
