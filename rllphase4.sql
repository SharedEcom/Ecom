-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2020 at 04:51 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rllphase4`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `cart_uid` bigint(20) DEFAULT NULL,
  `cart_qty` bigint(20) DEFAULT NULL,
  `cart_total` double(10,2) DEFAULT NULL,
  `exp_ship_date` datetime DEFAULT NULL,
  `exp_bill_date` datetime DEFAULT NULL,
  `exp_delivery_date` datetime DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `customer_id`, `product_id`, `cart_uid`, `cart_qty`, `cart_total`, `exp_ship_date`, `exp_bill_date`, `exp_delivery_date`, `created_on`) VALUES
(14, 11, 13, 2070, 5, 234950.00, '2020-12-01 17:00:04', '2020-12-04 17:00:04', '2020-12-05 17:00:04', '2020-11-26 17:00:04'),
(129, 7, 3, 2061, 1, 13000.00, '2020-12-02 17:44:49', '2020-12-06 17:44:49', '2020-12-05 17:44:49', '2020-11-27 17:44:49'),
(130, 7, 30, 2088, 1, 8099.00, '2020-12-02 17:44:56', '2020-12-06 17:44:56', '2020-12-05 17:44:56', '2020-11-27 17:44:56'),
(131, 7, 30, 2088, 1, 8099.00, '2020-12-02 17:47:05', '2020-12-06 17:47:05', '2020-12-05 17:47:05', '2020-11-27 17:47:05');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` bigint(20) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `category_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `description`, `is_active`, `category_image`) VALUES
(5, 'Mobiles', 'This category will have latest types of mobile phones available on the market', b'1', '../assets/mobileC.jpg'),
(6, 'Laptops', 'This category will contain the latest available laptops in the market', b'1', '../assets/laptopC.jpg'),
(8, 'Cameras', 'All the DSLR cameras will be available for you to buy', b'1', '../assets/cameraC.jpg'),
(9, 'Smart Watch', 'The recent and most sought after smartwatches available in the market', b'1', '../assets/smartWatchC.jpg'),
(10, 'Bluetooth Speakers', 'You can now enjoy music anywhere and everywhere with these sought after bluetooth speakers', b'1', '../assets/speakerC.jpg'),
(11, 'Gaming Consoles', 'Browse to our console category to make your gaming experience amazing', b'1', '../assets/gamingC.jpg'),
(12, 'Television', 'You can find all the LCD,LED,OLED TV\'s in here', b'1', '../assets/televisionC.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` bigint(20) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `flat_number` varchar(20) DEFAULT NULL,
  `customer_building` varchar(255) DEFAULT NULL,
  `customer_address` varchar(1024) DEFAULT NULL,
  `customer_city` varchar(255) DEFAULT NULL,
  `customer_state` varchar(255) DEFAULT NULL,
  `postal_code` bigint(20) DEFAULT NULL,
  `customer_country` varchar(255) DEFAULT NULL,
  `customer_phone` bigint(20) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `card_type` varchar(255) DEFAULT NULL,
  `card_number` bigint(20) DEFAULT NULL,
  `card_month` bigint(5) DEFAULT NULL,
  `card_year` bigint(5) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `shipping_city` varchar(255) DEFAULT NULL,
  `shipping_state` varchar(255) DEFAULT NULL,
  `shipping_code` bigint(20) DEFAULT NULL,
  `shipping_country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `first_name`, `last_name`, `flat_number`, `customer_building`, `customer_address`, `customer_city`, `customer_state`, `postal_code`, `customer_country`, `customer_phone`, `customer_email`, `username`, `password`, `card_type`, `card_number`, `card_month`, `card_year`, `shipping_address`, `shipping_city`, `shipping_state`, `shipping_code`, `shipping_country`) VALUES
(5, 'Bhuvana', 'Niranjan', 'a106', 'Sea Princess', 'Kundalhalli,Near Bust stop', 'Bengaluru', 'Karnataka', 590865, 'India', 9875645678, 'bhuvi.niranjan@gmail.com', 'bhuvana', 'bhuvana123', 'VISA', 1234123412341234, 3, 2024, 'a106,145,Sea Princess', 'Bengaluru', 'Karnataka', 590865, 'India'),
(7, 'abc', 'abc', 'abc', 'abc', 'abc', 'abc', 'Assam', 123456, 'India', 9876543210, 'abc', 'abc', 'abc', '', NULL, NULL, NULL, 'a106,145,Sea Princess', 'Bengaluru', 'Bengaluru', 590865, 'India'),
(10, 'Archana', 'Pilinje', '4', '169,Owners House', 'Sion East,Opp. Welingkar Hostel', 'Mumbai', 'Maharashtra', 400022, 'India', 9969923832, 'archanapilinje@gmail.com', 'archana', 'archana123', 'Visa', 4386916578945623, 3, 25, '4/169 Owners House,Sion East', 'Mumbai', 'Maharashtra', 400022, 'India'),
(11, 'Omkar', 'Karkare', '123', 'B,Sai Sadan', 'Virar West,Near Virar Post Office', 'Mumbai', 'Maharashtra', 402356, 'India', 7896541256, 'omkarkarkare1@gmail.com', 'omkar', 'omkar123', 'Mastercard', 4561234598567541, 11, 25, '123B Sai Sadan,Virar West', 'Mumbai', 'Maharashtra', 402356, 'India');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(136);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `order_number` bigint(20) DEFAULT NULL,
  `payment_id` bigint(20) DEFAULT NULL,
  `order_date` datetime DEFAULT current_timestamp(),
  `ship_date` datetime DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `shipper_id` bigint(20) DEFAULT NULL,
  `freight` double(10,2) DEFAULT NULL,
  `trans_status` varchar(20) DEFAULT NULL,
  `is_fulfilled` bit(1) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `is_paid` bit(1) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `invoice_amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `order_number`, `payment_id`, `order_date`, `ship_date`, `delivery_date`, `shipper_id`, `freight`, `trans_status`, `is_fulfilled`, `is_deleted`, `is_paid`, `payment_date`, `invoice_amount`) VALUES
(117, 7, 2738233, 1, '2020-11-27 16:46:14', '2020-12-02 16:46:20', '2020-12-05 16:46:20', 2, 600.00, 'SUCCESS', b'1', b'0', b'1', '2020-11-27 16:46:20', 120579),
(124, 7, 7004816, 1, '2020-11-27 17:04:08', '2020-12-02 17:04:13', '2020-12-05 17:04:13', 1, 114.00, 'SUCCESS', b'1', b'0', b'1', '2020-11-27 17:04:13', 22844);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_detail_id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `igst_rate` double(10,2) DEFAULT NULL,
  `igst_amount` double(10,2) DEFAULT NULL,
  `cgst_rate` double(10,2) DEFAULT NULL,
  `cgst_amount` double(10,2) DEFAULT NULL,
  `sgst_rate` double(10,2) DEFAULT NULL,
  `sgst_amount` double(10,2) DEFAULT NULL,
  `cess_rate` double(10,2) DEFAULT NULL,
  `cess_amount` double(10,2) DEFAULT NULL,
  `unit_qty` bigint(20) DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `total` double(10,2) DEFAULT NULL,
  `is_fulfilled` bit(1) DEFAULT NULL,
  `ship_date` datetime DEFAULT NULL,
  `bill_date` datetime DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_detail_id`, `order_id`, `product_id`, `price`, `igst_rate`, `igst_amount`, `cgst_rate`, `cgst_amount`, `sgst_rate`, `sgst_amount`, `cess_rate`, `cess_amount`, `unit_qty`, `discount`, `total`, `is_fulfilled`, `ship_date`, `bill_date`, `delivery_date`) VALUES
(118, 117, 3, 13999.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 999.00, 13000.00, b'1', '2020-12-02 16:46:20', '2020-12-06 16:46:20', '2020-12-05 16:46:20'),
(119, 117, 4, 39999.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 2000.00, 37999.00, b'1', '2020-12-02 16:46:20', '2020-12-06 16:46:20', '2020-12-05 16:46:20'),
(120, 117, 13, 56990.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 10000.00, 46990.00, b'1', '2020-12-02 16:46:20', '2020-12-06 16:46:20', '2020-12-05 16:46:20'),
(121, 117, 24, 24990.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 3000.00, 21990.00, b'1', '2020-12-02 16:46:20', '2020-12-06 16:46:20', '2020-12-05 16:46:20'),
(125, 124, 7, 8990.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 5000.00, 3990.00, b'1', '2020-12-02 17:04:13', '2020-12-06 17:04:13', '2020-12-05 17:04:13'),
(126, 124, 29, 18990.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 250.00, 18740.00, b'1', '2020-12-02 17:04:13', '2020-12-06 17:04:13', '2020-12-05 17:04:13');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` bigint(20) NOT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `is_allowed` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `payment_type`, `is_allowed`) VALUES
(1, 'Card', b'1'),
(2, 'COD', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) NOT NULL,
  `sku_code` bigint(20) DEFAULT NULL,
  `product_brand` varchar(255) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_description` varchar(1024) DEFAULT NULL,
  `supplier_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `unit_price` double(10,2) DEFAULT NULL,
  `mrp` double(10,2) DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `in_stock_qty` bigint(20) DEFAULT NULL,
  `is_available` bit(1) DEFAULT NULL,
  `discount_available` bit(1) DEFAULT NULL,
  `image_url` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `sku_code`, `product_brand`, `product_name`, `product_description`, `supplier_id`, `category_id`, `unit_price`, `mrp`, `discount`, `in_stock_qty`, `is_available`, `discount_available`, `image_url`) VALUES
(3, 121371006, 'Samsung', 'Galaxy M21', 'M21,sets a new benchmark for budget,big camera mobile phone!Its long lasting battery life makes it one of the superior mobiles among its competitors.', 1, 5, 13000.00, 13999.00, 999.00, 149, b'1', b'1', 'https://i.ibb.co/TTBHtLQ/Samsung-M21.jpg'),
(4, 128500008, 'OnePlus', '7T', 'OnePlus 7T camera features Dual-LED flash, HDR, and panorama. The new OnePlus phone is powered by an octa core Qualcomm Snapdragon 855 Plus SoC. Coupled with 8 GB of storage, the phone can handle most tasks with ease. Connectivity options included in the device are Bluetooth, USB, Wi-Fi, 3G and 4G.', 3, 5, 37999.00, 39999.00, 2000.00, 49, b'1', b'1', 'https://i.ibb.co/hCLw3g2/one-Plus7-T.jpg'),
(5, 101397144, 'vivo', 'v20', 'The Vivo V20 smartphone comes with 64MP+8MP+2MP rear camera, 44MP front camera, Qualcomm Snapdragon 720G octa core processor, 8GB RAM, 128GB internal memory expandable upto 1TB, 33W flash charging, 16.37 cm (6.44\") FHD+ Display, 4000mAh battery and much more.', 2, 5, 24990.00, 27990.00, 3000.00, 99, b'1', b'1', 'https://i.ibb.co/N9H24rQ/vivoV20.jpg'),
(6, 39816100, 'Redmi', 'Note 9 Pro', 'Large display with rounded corner design and dot notch display.  48MP Quad camera with high resolution camera. Capture great photos in different lighting conditions. Gorgeous portraits with automatically enhanced facial features. Support Ultra-wide and super macro mode.', 1, 5, 15999.00, 17999.00, 2000.00, 187, b'1', b'1', 'https://i.ibb.co/Kw2Sqpn/redmi-Note9-Pro.jpg'),
(7, 135807570, 'Oppo', 'A5S', 'Wider your view: The vibrant display features a striking 6.2-inch Corning Gorilla glass screen. It enables you to view more and get immersive experience. Fun never stop: A long-lasting battery keeps you enjoying every moment with your phone, playing game, listening to music or watching movies. Fingerprint Unlock :Unlock in a moment, Wake up the phone with just a touch in any occasion.', 3, 5, 13990.00, 8990.00, 5000.00, 14, b'1', b'1', 'https://i.ibb.co/N1W1Gh7/oppoA5S.jpg'),
(8, 179034209, 'Nokia', '5.3', 'Go big and beyond with Nokia 5.3. From its quad camera, ultra-wide lens and the power of AI imaging built in, you won’t miss a moment, plus your shots will look absolutely stunning. Into gaming and videos? Good, because the HD+ display is out of this world at an epic 6.55 inches.', 2, 5, 14299.00, 18299.00, 4000.00, 94, b'1', b'1', 'https://i.ibb.co/wQMMHDM/nokia5-3.jpg'),
(9, 146772605, 'Dell', ' XPS 9570', 'Intel Core i7 - 8750H, 8GB DDR4, 256GB SSD, NVIDIA 4GB. Dell XPS 9570 (i7-8750H, 8GB DDR4, 256GB SSD).', 2, 6, 111190.00, 136416.00, 25226.00, 15, b'1', b'1', 'https://i.ibb.co/K2vzMmh/dell-XPS9570.jpg'),
(10, 256534237, 'AVITA', 'Essential NE14A2INC433-CR ', 'AVITA cuts through the noise with its ultra-slim and light-weight Notebook Laptops – The AVITA Essential 14 Series. With a jaw-dropping 6 hrs of battery life support, possibilities are infinite as your immersive experience will no longer be obstructed by low power. ', 3, 6, 17990.00, 23390.00, 5300.00, 25, b'1', b'1', 'https://i.ibb.co/b5GBhNj/avita-Essential-Laptop.jpg'),
(11, 215024582, 'Lenovo', 'IdeaPad Slim 3', 'Engineered for long-lasting performance, the Lenovo IdeaPad Slim 3 delivers powerful performance in an entry-level laptop—it’s perfect for your everyday tasks with features that you can depend on.', 3, 6, 28490.00, 29290.00, 800.00, 19, b'1', b'1', 'https://i.ibb.co/kMNzMKz/lenovo-Ideapad-Slim3.jpg'),
(12, 193930464, 'HP', 'Chromebook 14a-na0002TU', 'The best of work and play in one place. The HP Chromebook with a responsive Intel® processor, 35.56 cm (14) display sporting more screen space, stereo speakers tuned by the audio experts at B&O and a long battery life, you can knock out any assignment while binge watching your favorite shows.', 2, 6, 26890.00, 31496.00, 4606.00, 25, b'1', b'1', 'https://i.ibb.co/d6P6WRt/Hp-Chromebook.jpg'),
(13, 49212762, 'ASUS', 'Vivobook 14', 'Whether for work or play, ASUS X409 is the entry-level laptop that delivers powerful performance and immersive visuals. Its NanoEdge display boasts a matte anti-glare coating for a truly engaging experience. ', 3, 6, 46990.00, 56990.00, 10000.00, 74, b'1', b'1', 'https://i.ibb.co/9cJcsks/asus-Vivobook.jpg'),
(14, 111672001, 'Canon', 'Canon EOS 1500D 24.1 Digital SLR Camera', '(Black) with EF S18-55 is II Lens, 16GB Card and Carry Case', 4, 8, 27000.00, 34000.00, 20.00, 29, b'1', b'1', 'https://i.ibb.co/VtsvhLF/canon-EOS1500-D.jpg'),
(18, 124500211, 'Sony', 'Sony DSC  20.1 MP Shoot Camera ', 'Cyber-Shot Point and Shoot Camera (Black) with 8X Optical Zoom', 4, 8, 7999.00, 8690.00, 8.00, 50, b'1', b'1', 'https://i.ibb.co/JcsNgpc/SonyDSC.jpg'),
(19, 213111012, 'Canon', 'Canon IXUS-285 HS Camera', '20.2MP Point and Shoot Camera with 12x Optical Zoom(Silver)', 3, 8, 12000.00, 13490.00, 10.00, 40, b'1', b'1', 'https://i.ibb.co/bQNh7CT/Canon-IXUS.jpg'),
(20, 100012111, 'Nikon ', 'D3500 DX-Format DSLR', 'Two Lens Kit with AF-P DX Nikkor 18-55mm f/3.5-5.6G VR & AF-P DX Nikkor 70-300mm f/4.5-6.3G ED (Black) 16 GB Class 10 SD Card and DSLR Bag', 3, 8, 47000.00, 53499.00, 11.00, 25, b'1', b'1', 'https://i.ibb.co/DLK21bM/Nikon-D3500.jpg'),
(21, 100012112, 'Sony', 'Mirrorless Digital SLR Camera ', 'Sony Alpha ILCE 6000L 24.3 MP with 16-50 mm (APS-C Sensor, Fast Auto Focus, Eye AF, Light Weight) - Black', 4, 8, 42000.00, 48000.00, 12.00, 40, b'1', b'1', 'https://i.ibb.co/B61qxPV/Sony-Mirrorless.jpg'),
(22, 120001121, 'Fujifilm', 'Fujifilm-Mirrorless-Electronic-Touchscreen-Simulations', ' X-T200 24.2 MP Mirrorless Camera with XC 15-45 mm Lens (APS-C Sensor, Electronic Viewfinder, 3.5\" Vari-Angle Touchscreen, Face/Eye AF, 4K Video Vlogging, Film Simulations) - Silver', 4, 8, 49999.00, 60000.00, 16.00, 20, b'1', b'1', 'https://i.ibb.co/rtcsR8q/Fujifilm-Mirrorless.jpg'),
(23, 1789654, 'Samsung', 'Galaxy Watch', 'Stay connected longer. The features of a smartwatch and the natural feeling of an analog watch in a single package. Galaxy Watch links you to the world around you. Match Galaxy Watch to your lifestyle, you can see through a variety of watch faces and with depth and lighting effect.', 1, 9, 14990.00, 29990.00, 10000.00, 50, b'1', b'1', 'https://i.ibb.co/56DNc7X/Samsung-Galaxy-Watch.jpg'),
(24, 1789655, 'Oppo', 'Watch', 'Equipped with Wear OS by Google system, the OPPO Watch supports customizing watch face provides plentiful applications in Google Play store.', 2, 9, 19990.00, 24990.00, 3000.00, 13, b'1', b'1', 'https://i.ibb.co/K2VND7P/Oppo-Watch.jpg'),
(25, 1789656, 'Fossil', 'Gen 4', 'Classic design with modern technology, this Fossil touchscreen smartwatch features a brown leather strap, and let\'s you track your heart rate, receive notifications, customize your dial and more. \r\n', 3, 9, 10995.00, 21995.00, 5000.00, 65, b'1', b'1', 'https://i.ibb.co/h26Lm0T/Fossil-Gen4.jpg\r\n'),
(26, 1789657, 'Fitbit', 'Versa 2', 'Meet fitbit versa 2—a water resistant smartwatch that elevates every moment. Use your voice to create alarms, set bedtime reminders or check the weather with built-in voice control.* Take your look from the gym to the office with its modern and versatile design.', 4, 9, 13249.00, 23999.00, 7000.00, 75, b'1', b'1', 'https://i.ibb.co/0Bmy6M4/Fitbit-Versa2.jpg'),
(27, 1789658, 'Sony', 'SRS-XB33', 'SRS-XB33 support EXTRA BASS sound which is achieved on the XB wireless speaker line up through Sony’s renowned audio technology. Backed by Sony’s newly developed X-Balanced Speaker Unit, these speakers provide sound quality and powerful sound pressure for a richer, deeper and more rewarding listening experience.', 1, 10, 11992.00, 15990.00, 1000.00, 47, b'1', b'1', 'https://i.ibb.co/fSMnGsc/Sony-SRS-XB33.jpg'),
(28, 1789659, 'JBL', 'Charge 4', 'Introducing the JBL Charge 4 portable Bluetooth speaker with full-spectrum, powerful sound and a built-in power bank to charge your devices. ', 2, 10, 11999.00, 15999.00, 500.00, 54, b'1', b'1', 'https://i.ibb.co/SrbYky6/JBLCharge4.jpg'),
(29, 1789660, 'Philips', 'TAX4105', 'Be the life of the party with this room-shaking speaker. Celebrate with multiple inputs, and channel the singer in you with the wireless mic. You get light effects and a trolley, so the party can follow you where you go.', 3, 10, 11960.00, 18990.00, 250.00, 11, b'1', b'1', 'https://rukminim1.flixcart.com/image/612/612/kh0vonk0-0/speaker/home-theatre/k/i/n/tax4105-94-philips-original-imafx5yfjfkuat6t.jpeg?q=70'),
(30, 1789661, 'Bose', 'SoundLink Micro', 'The Bose Sound Link Micro Bluetooth speaker delivers sound so good for a speaker its size, you’ll never leave it behind. Proprietary Bose technology produces loud, clear sound—even outdoors—thanks to its custom-mounted transducer and passive radiators.', 4, 10, 8000.00, 8999.00, 900.00, 35, b'1', b'1', 'https://i.ibb.co/7tfg7np/Bose-Soundlink-Micro.jpg'),
(31, 1789662, 'Amazon', 'Echo Dot', 'With a new speaker and design, Echo Dot is a voice-controlled smart speaker with Alexa, designed for any room. Just ask for music, news, information, control compatible smart home devices and more. You can either use the crisp and clear built-in speaker or connect Echo Dot to your own other speakers using Bluetooth or 3.5mm audio cable.', 4, 10, 3500.00, 4499.00, 1500.00, 5, b'1', b'1', 'https://i.ibb.co/M8fGFL8/Amazon-Echo-Dot.jpg'),
(32, 1789663, 'Microsoft', 'Xbox Series S', 'The Xbox One was built with a specific vision in mind, and it was one that included a whole lot more than games. From streaming videos to dollops of motion sensing in the form of Kinect, it aimed to be the centre of your living room - much like Microsoft envisioned the original Xbox to be, when it launched in 2001.', 1, 11, 30990.00, 34990.00, 3000.00, 15, b'1', b'1', 'https://i.ibb.co/DKbcDrn/Microsoft-XBox-Series-S.jpg'),
(33, 1789664, 'Sony', 'PSP Street', 'The PSP® is capable of multiple functions. Primarily, enjoy a fine thrilling experience on the brilliant LCD screen that induces life into 2D games, such as GANGS OF LONDON™, SYPHON FILTER, FIRED UP. LEMMINGS, SUDOKU and more. You can store and carry your favorite photos where ever you go in the PSP® (PlayStation Portable®).', 2, 11, 12999.00, 15000.00, 1500.00, 45, b'1', b'1', 'https://i.ibb.co/kgFnPn3/Sony-PSPStreet.jpg'),
(34, 1789665, 'Nintendo ', 'Switch', ' Show off your personality when playing favorite Switch video games with this neon Nintendo Joy-Con controller. The small size lets you cradle it in your hand for maximum control, and the ergonomically designed buttons and analog stick reduce fatigue. This Nintendo Joy-Con controller contains a 525 mAh rechargeable battery for hours of play.', 3, 11, 25000.00, 29499.00, 2500.00, 74, b'1', b'1', 'https://i.ibb.co/WfS3gvm/Nintendo-Switch.jpg'),
(35, 1789666, 'Sony', 'Playstation 4 Pro', 'Take play to the next level with PS4 Pro: See every detail explode into life with 4K gaming and entertainment, experience faster, smoother frame rates and more powerful gaming performance and enjoy richer, more vibrant colours with HDR technology.', 4, 11, 36000.00, 38498.00, 1200.00, 36, b'1', b'1', 'https://i.ibb.co/c12J7Mk/Sony-Playstation4-Pro.jpg'),
(36, 1789667, 'Microsoft', 'Xbox One X', 'Presenting Xbox One X, the world’s most powerful console where games perform better than everK Gaming,Games run smoothly on 1080p screens,Xbox Live Games', 1, 11, 27990.00, 30990.00, 1400.00, 10, b'1', b'1', 'https://i.ibb.co/2cZ3LzF/Microsoft-BXBox1-X.jpg'),
(37, 1789668, 'Sony', ' BRAVIA KDL-32W700B', 'Discover the total entertainment package with ultra-clear Full HD pictures, enhanced by the magic of X-Reality PRO and powerful bass sound from a built-in subwoofer. Connect instantly to the world of Internet content with features like USB Tethering & Direct YouTube Button', 1, 12, 32000.00, 38614.00, 1300.00, 8, b'1', b'1', 'https://i.ibb.co/t3w576T/Sony-Bravia.jpg'),
(38, 1789669, 'Samsung', 'UA32J5570AU', 'Discover the total entertainment package with ultra-clear Full HD pictures, enhanced by the magic of X-Reality PRO and powerful bass sound from a built-in subwoofer. Connect instantly to the world of Internet content with features like USB Tethering & Direct YouTube Button', 2, 12, 37999.00, 39805.00, 1500.00, 15, b'1', b'1', 'https://i.ibb.co/5KtP5tq/Samsung-TV.jpg'),
(39, 1789670, 'Xiaomi Mi', '4A Pro', 'Elevate your living room entertainment with the Mi TV 4A 40.The Full-HD display of the Mi TV 4A 40 comes with dazzling color quality and crisp detail to make each visual truly stand out. The 20W speakers are equipped with DTS-HD® technology that makes an impact with rich clear sound delivery. ', 3, 12, 10999.00, 13499.00, 2500.00, 32, b'1', b'1', 'https://i.ibb.co/thy25nW/MiTV.jpg'),
(40, 1789671, 'LG', 'OLED77GXPTA ', 'OLED Smart TV brings to you the power of self-lit technology for an immersive viewing experience. When 100 million sub-pixels come together, what you get is a spectacular vision with deeper blacks, intense colours and contrast. What even widens your viewing horizon is the bezel-less design with modern edges, that expands your entertainment area while complementing the aesthetics of your home. Now experience smooth motion, sharp images and swift response in your LG OLED TV.', 4, 12, 86999.00, 93999.00, 5000.00, 5, b'1', b'1', 'https://i.ibb.co/gDX98VQ/LGOLEDTV.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_detail_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `property_name` varchar(255) NOT NULL,
  `property_value` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_detail_id`, `product_id`, `property_name`, `property_value`) VALUES
(1, 3, 'RAM', '4GB'),
(2, 3, 'Storage', '64GB'),
(3, 3, 'Battery', '6000mAh'),
(4, 3, 'Processor Brand', 'Exynos 9611'),
(5, 3, 'Screen Size', '6.4in'),
(6, 3, 'Rear Camera Lens 2', '48MP+8MP+5MP'),
(7, 3, 'Rear Camera Lens 1', '48 MP'),
(8, 4, 'RAM', '8GB'),
(9, 4, 'Storage', '256GB'),
(10, 4, 'Screen Size', '6.55 in'),
(11, 4, 'Processor Brand', 'Qualcomm Snapdragon 855 Plus'),
(12, 4, 'Rear Camera Lens 1', '48MP'),
(13, 4, 'Rear Camera Lens 2', '48MP+12MP+16MP'),
(14, 4, 'Battery', '3800mAH'),
(15, 5, 'RAM', '8GB'),
(16, 5, 'STORAGE', '128GB'),
(17, 5, 'Battery', '4000mAH'),
(18, 5, 'Rear Camera Lens 1', '64MP'),
(19, 5, 'Rear Camera Lens 2', '44MP'),
(20, 5, 'Screen Size', '6.44in'),
(21, 5, 'Processor Brand', 'Qualcomm Snapdragon 720G'),
(22, 6, 'RAM', '4GB'),
(23, 6, 'STORAGE', '128GB'),
(24, 6, 'BATTERY', '5020mAH'),
(25, 6, 'SCREEN SIZE', '6.67in'),
(26, 6, 'REAR CAMERA LENS 1', '48MP'),
(27, 6, 'REAR CAMERA LENS 2', '48MP'),
(28, 6, 'Processor Brand', 'Qualcomm Snapdragon 720G'),
(29, 7, 'RAM', '3GB'),
(30, 7, 'Storage', '32GB'),
(31, 7, 'Processor Brand', '2.4GHz Mediatek MT6765 octa core processor'),
(32, 7, 'Screen Size', '6.2in'),
(33, 7, 'Battery', '4230mAH'),
(34, 7, 'Rear Camera Lens 1', '13MP'),
(35, 7, 'Rear Camera Lens 2', '2MP'),
(36, 8, 'RAM', '6GB'),
(37, 8, 'Storage', '64GB'),
(38, 8, 'Screen Size', '6.55in'),
(39, 8, 'Battery', '4000mAH'),
(40, 8, 'Processor Brand', 'Qualcomm Snapdragon 665 processor '),
(41, 8, 'Rear Camera Lens 1', '13MP'),
(42, 8, 'Rear Camera Lens 2', '8MP'),
(43, 9, 'Screen Size', '15.6'),
(44, 9, 'Processor', '8th Gen i7-8750H'),
(45, 9, 'RAM', '8GB'),
(46, 9, 'Storage', '256GB SSD'),
(47, 10, 'Screen Size', '14inch'),
(48, 10, 'Processor', 'Celeron N4000'),
(49, 10, 'RAM', '4GB'),
(50, 10, 'Storage', '128GB SSD'),
(51, 11, 'RAM', '4GB'),
(52, 11, 'Storage', '1TB SSD'),
(53, 11, 'Processor', ' AMD 3020e '),
(54, 11, 'Screen Size', '15.6in'),
(55, 12, 'RAM', '4GB'),
(56, 12, 'Storage', '64GB SSD'),
(57, 12, 'Screen Size', '14in'),
(58, 12, 'Processor', 'Celeron N4020'),
(59, 13, 'RAM', '8GB'),
(60, 13, 'Storage', '1TB HDD'),
(61, 13, 'Screen Size', '14 inch'),
(62, 13, 'Processor', 'Intel Core i5 10th generation'),
(63, 14, 'Memory Card Size', '16GB'),
(64, 14, 'Dimensions', '7.76 x 12.9 x 10.13 cm; 475 Grams'),
(65, 14, 'Batteries Included', 'No'),
(66, 14, 'Resolution', 'Full hd (1920x1080)'),
(67, 18, 'Memory card size', '4GB'),
(68, 18, 'Dimensions', '5.3 x 2.3 x 9.3 cm; 120 Grams'),
(69, 18, 'Battery Included', 'yes'),
(70, 18, 'Resolution', '1280 * 720'),
(71, 19, 'Memory Card Size', '4GB'),
(72, 19, 'Dimensions', '16 x 14 x 6 cm; 380 Grams'),
(73, 19, 'Battery Included', 'Yes'),
(74, 19, 'Resolution', '20.2 MP'),
(75, 20, 'Memory Card Size', '16GB'),
(76, 20, 'Dimensions', '12.40 x 7.01 x 9.70 cm'),
(77, 20, 'Battery Included', 'Yes'),
(78, 20, 'Resolution', '24.2 megapixels'),
(79, 21, 'Memory Card Size', '16GB'),
(80, 21, 'Dimensions', '4.5 x 12 x 6.7 cm; 344 Grams'),
(81, 21, 'Battery Included', 'Yes'),
(82, 21, 'Resolution ', '23 MegaPixel'),
(83, 22, 'Memory Card Size', '16GB'),
(84, 22, 'Dimensions', '5.5 x 12.1 x 8.4 cm; 371.38 Grams'),
(85, 22, 'Battery Included', 'yes'),
(86, 22, 'Ressolution', '22.2 Megapixel'),
(87, 23, 'Colour', 'Grey'),
(88, 23, 'Operating System', 'Tizen 4.0'),
(89, 23, 'Screen Display Size', '1.2 inches'),
(90, 23, 'Wireless Type', 'Bluettoth'),
(91, 24, 'Colour', 'Black'),
(92, 24, 'Operating System', 'Wear OS'),
(93, 24, 'Screen Display Size', '1.91 inches'),
(94, 24, 'Wireless Type,Bluetooth', 'WiFi'),
(95, 25, 'Colour', 'Brown'),
(96, 25, 'Operating System', 'Wear OS'),
(97, 25, 'Screen Display Size', '1.2 inches'),
(98, 25, 'Wireless Type', 'Bluetooth'),
(99, 26, 'Colour', 'Copper Rose'),
(100, 26, 'Operating System', 'Android'),
(101, 26, 'Screen Display Size', '1.34 inches'),
(102, 26, 'Wireless Type', 'Bluetooth'),
(103, 27, 'Battery Life', '14 hours'),
(104, 27, 'Connector Type', 'Wireless, Bluetooth, USB'),
(105, 27, 'Color', 'Black'),
(106, 27, 'Dimensions', '26.39 x 12.6 x 13.59 cm; 1.11 Kilograms'),
(107, 28, 'Battery Life', '20 hours'),
(108, 28, 'Connector Type', 'Wireless, Bluetooth'),
(109, 28, 'Color', 'Blue'),
(110, 28, 'Dimensions', '22 x 9.5 x 9.3 cm; 965 Grams'),
(111, 29, 'Battery Life', '6 hours'),
(112, 29, 'Connector Type', 'Wireless, Bluetooth, USB'),
(113, 29, 'Color', 'Black'),
(114, 29, 'Dimensions', '31.4 x 29.9 x 60.1 cm; 10.2 Kilograms'),
(115, 30, 'Battery Life', '6 hours'),
(116, 30, 'Connector Type', 'Bluetooth'),
(117, 30, 'Color', 'Orange'),
(118, 30, 'Dimensions', '3.56 x 9.91 x 9.91 cm; 290.3 Grams'),
(119, 31, 'Battery Life', '10 hours'),
(120, 31, 'Connector Type', 'Wi-Fi,Bluetooth'),
(121, 31, 'Color', 'White'),
(122, 31, 'Dimensions', '99x 99 x 43 mm;300 grams'),
(123, 32, 'HDD', '512GB'),
(124, 32, 'Processor', 'Custom 8-core AMD Zen 2 CPU @ 3.8GHz'),
(125, 32, 'Graphics ', 'Custom AMD RDNA 2 GPU 20 CUs @ 1.565GHz'),
(126, 32, 'RAM', '10GB'),
(127, 33, 'HDD', 'None'),
(128, 33, 'Processor', '333MHz MIPS R4000'),
(129, 33, 'Graphics ', '166MHz GPU'),
(130, 33, 'RAM', '64MB'),
(131, 34, 'HDD', '32GB'),
(132, 34, 'Processor', 'ARM Cortex Octa-Core'),
(133, 34, 'Graphics ', 'NVIDIA G20M Maxwell-based GPU'),
(134, 34, 'RAM', '4GB'),
(135, 35, 'HDD', '1TB'),
(136, 35, 'Processor', 'AMD  Jaguar 1.6GHz 8 Core'),
(137, 35, 'Graphics ', 'AMD GCN Radeon'),
(138, 35, 'RAM', '8GB'),
(139, 36, 'HDD', '500GB'),
(140, 36, 'Processor', 'AMD Jaguar 1.75GHz 8-core'),
(141, 36, 'Graphics ', 'AMD Durango 2 GCN 1.0'),
(142, 36, 'RAM', '8GB'),
(143, 37, 'Display', ' \r\n32 Inch (81.28 cm), LED'),
(144, 37, 'Resolution', 'Full HD, 1920 x 1080 Pixels'),
(145, 37, 'Features', 'Smart TV'),
(146, 37, 'Connectivity', '2 USB, 4 HDMI Ports'),
(147, 38, 'Display', ' \r\n32 Inch (81.28 cm), LED'),
(148, 38, 'Resolution', 'Full HD, 1920 x 1080 Pixels'),
(149, 38, 'Features', 'Smart TV'),
(150, 38, 'Connectivity', '2 USB, 3 HDMI Ports'),
(151, 39, 'Display', ' \r\n32 Inch (81.28 cm), LED'),
(152, 39, 'Resolution', 'HD-Ready, 1366 x 768 Pixels'),
(153, 39, 'Features', 'Smart TV'),
(154, 39, 'Connectivity', '2 USB, 3 HDMI Ports'),
(155, 40, 'Display', '77 Inch (195.58 cm), OLED'),
(156, 40, 'Resolution', '4K, x'),
(157, 40, 'Features', 'Smart TV'),
(158, 40, 'Connectivity', '3 USB, 4 HDMI Ports');

-- --------------------------------------------------------

--
-- Table structure for table `shippers`
--

CREATE TABLE `shippers` (
  `shipper_id` bigint(20) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `shipper_contact` bigint(20) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shippers`
--

INSERT INTO `shippers` (`shipper_id`, `company_name`, `shipper_contact`, `contact_person`) VALUES
(1, 'BlueDart', 9969117201, 'Arif Hussain'),
(2, 'India Post', 9321038650, 'Rahul Patil'),
(3, 'Delhivery', 9869563254, 'Salma Khan'),
(4, 'Vichare', 7845632145, 'Pratik Gandhi');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` bigint(20) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `contact_first_name` varchar(255) DEFAULT NULL,
  `contact_last_name` varchar(255) DEFAULT NULL,
  `contact_title` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `postal_code` bigint(20) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `payment_methods` varchar(255) DEFAULT NULL,
  `discount_type` varchar(255) DEFAULT NULL,
  `discount_available` bit(1) DEFAULT NULL,
  `logo_url` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `company_name`, `contact_first_name`, `contact_last_name`, `contact_title`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `payment_methods`, `discount_type`, `discount_available`, `logo_url`) VALUES
(1, 'ABC Supply', 'Sudarshan', 'Gupta', 'Senior Executive', '8  Ekvira Apartment, Old Nagardas Road, Andheri West', 'Mumbai', 'Maharashtra', 400069, 'India', 2228386696, 'sud.gupta@temporary-mail.net', 'Card', 'Promo', b'1', 'https://www.roofingcontractor.com/ext/resources/Products-11/Products-12/Product-Photos-2017/ABC-News.png?1501768526'),
(2, 'Zenex International', 'Bharath', 'Sisodia', 'Manager', 'Part 1, Main Market, Block M, Greater Kailash', 'Delhi', 'Delhi', 110048, 'India', 1126222576, 'bharat.zenex@hotmail.com', 'Card', 'Promo', b'1', 'https://www.justdial.com/photos/zenex-international-basaveshwara-nagar-bangalore-pharmaceutical-product-distributors-s0120wo3pk-pc-164393769-sco-15glqfvv'),
(3, 'Globe Electronics ltd.\r\n', 'Rahul', 'Narayan', 'Executive Manager', '77 , Shirdi Sai Baba Mandir Road', 'Bengaluru', 'Karnataka', 560008, 'India', 8041123949, 'r.narayan@yahoo.com', 'Card', 'Promo', b'1', 'http://www.connectingindustry.com/Data/Images/Image_Bank/47205/logo.jpg'),
(4, 'SSG Groups', 'Abhishek', 'Patil', 'Manager', '2nd cross, SSR circle, RR Nagar', 'Bangalore', 'Karnataka', 560004, 'India', 8861781339, 'ssggroups@gmail.com', 'net-banking', 'promo', b'1', 'https://www.123rf.com/photo_117597628_stock-vector-scooter-delivery-services-logo-design-courier-logo-design-template-icon-vector.html');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_username` (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `shipper_id` (`shipper_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_detail_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `shippers`
--
ALTER TABLE `shippers`
  ADD PRIMARY KEY (`shipper_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_detail_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_detail_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_3` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `cart_ibfk_4` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`payment_id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`shipper_id`) REFERENCES `shippers` (`shipper_id`),
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `order_details_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `product_details`
--
ALTER TABLE `product_details`
  ADD CONSTRAINT `product_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
