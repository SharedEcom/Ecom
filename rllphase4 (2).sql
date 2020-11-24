-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2020 at 08:05 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

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
(7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `order_number` bigint(20) DEFAULT NULL,
  `payment_id` bigint(20) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `ship_date` datetime DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `shipper_id` bigint(20) DEFAULT NULL,
  `freight` double(10,2) DEFAULT NULL,
  `trans_status` varchar(20) DEFAULT NULL,
  `is_fulfilled` bit(1) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `is_paid` bit(1) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` bigint(20) NOT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `is_allowed` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(3, 121371006, 'Samsung', 'Galaxy M21', 'M21,sets a new benchmark for budget,big camera mobile phone!Its long lasting battery life makes it one of the superior mobiles among its competitors.', 1, 5, 13000.00, 13999.00, 999.00, 150, b'1', b'1', 'https://images.samsung.com/is/image/samsung/in-galaxy-m21-m215f-6gb-sm-m215flbgins--Back-Light-Blue-Front-3000x2000-316691196?scl=1&fmt=png-alpha'),
(4, 128500008, 'OnePlus', '7T', 'OnePlus 7T camera features Dual-LED flash, HDR, and panorama. The new OnePlus phone is powered by an octa core Qualcomm Snapdragon 855 Plus SoC. Coupled with 8 GB of storage, the phone can handle most tasks with ease. Connectivity options included in the device are Bluetooth, USB, Wi-Fi, 3G and 4G.', 3, 5, 37999.00, 39999.00, 2000.00, 50, b'1', b'1', 'https://www.gizmochina.com/wp-content/uploads/2019/05/oneplus_7_pro--500x500.jpg'),
(5, 101397144, 'vivo', 'v20', 'The Vivo V20 smartphone comes with 64MP+8MP+2MP rear camera, 44MP front camera, Qualcomm Snapdragon 720G octa core processor, 8GB RAM, 128GB internal memory expandable upto 1TB, 33W flash charging, 16.37 cm (6.44\") FHD+ Display, 4000mAh battery and much more.', 2, 5, 24990.00, 27990.00, 3000.00, 100, b'1', b'1', 'https://www.sargam.in/pub/media/catalog/product/cache/52c3474c27fbdcab744f9fdf13af4c52/4/_/4_2575.jpg'),
(6, 39816100, 'Redmi', 'Note 9 Pro', 'Large display with rounded corner design and dot notch display.  48MP Quad camera with high resolution camera. Capture great photos in different lighting conditions. Gorgeous portraits with automatically enhanced facial features. Support Ultra-wide and super macro mode.', 1, 5, 15999.00, 17999.00, 2000.00, 187, b'1', b'1', 'https://images.financialexpress.com/2020/03/redmi-note-9-pro-max-660.jpg'),
(7, 135807570, 'Oppo', 'A5S', 'Wider your view: The vibrant display features a striking 6.2-inch Corning Gorilla glass screen. It enables you to view more and get immersive experience. Fun never stop: A long-lasting battery keeps you enjoying every moment with your phone, playing game, listening to music or watching movies. Fingerprint Unlock :Unlock in a moment, Wake up the phone with just a touch in any occasion.', 3, 5, 13990.00, 8990.00, 5000.00, 15, b'1', b'1', 'https://i.gadgets360cdn.com/products/large/1530947258_635_oppo_a5.jpg?downsize=*:180&output-quality=80&output-format=webp'),
(8, 179034209, 'Nokia', '5.3', 'Go big and beyond with Nokia 5.3. From its quad camera, ultra-wide lens and the power of AI imaging built in, you won’t miss a moment, plus your shots will look absolutely stunning. Into gaming and videos? Good, because the HD+ display is out of this world at an epic 6.55 inches.', 2, 5, 14299.00, 18299.00, 4000.00, 94, b'1', b'1', 'https://dhlm2eb86cbhs.cloudfront.net/public/thumbs/products/16880/nokia-53-df_0_188.webp'),
(9, 146772605, 'Dell', ' XPS 9570', 'Intel Core i7 - 8750H, 8GB DDR4, 256GB SSD, NVIDIA 4GB. Dell XPS 9570 (i7-8750H, 8GB DDR4, 256GB SSD).', 2, 6, 111190.00, 136416.00, 25226.00, 15, b'1', b'1', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAwJCRERERIVEREOERAYDR8aGREYDRsbHRkfLSgwLywoLCsyOD09MjU4NissMkkzRD5AREVEMDJMUktCUjxDREEBDQ4OEhAQHRUVHUEnJSlBRUFFTU1BQk1NQUFBQUhHQU1BTUFFQUFNQUFBRUFNTUFDRUFBQUZBRURBQUVNS0FBQf/AABEIALUBFwMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAAAgEEAwUGBwj/xAA9EAABBAADBAcHAgUDBQEAAAABAAIDEQQSIQUxQVEGEyJhcYGRMqGxwdHh8EKCFFJicvEHFTMjJEOiwlP/xAAZAQEAAwEBAAAAAAAAAAAAAAAAAQIDBAX/xAAiEQEBAAICAgIDAQEAAAAAAAAAAQIRAyESMQRREyJBMmH/2gAMAwEAAhEDEQA/AOzpTSmkUrIRSmlNKaQLSKTUikC0ik1IpAtIpNSKQLSKT0ikCUik9IpAlIpPlUUgWkUmpFIFpFJqRSBaUUnpRSBaRSakUgSlFJ6RSBKUUslKKQJSE1KKQQhTSikAoU0ikEIUoQZaU0pAU0gikUmpTSBaRSalNIFpFJqU0gWkUmpFIFpFJqQQgWkUsMuNw8f/ACTwR/3TtaqEnSjZjPax2D/bO13wtEtrSKXPP6c7KBps75DyZhZD8lSk/wBRMEDUcONkPdE0fEg+5J36PGutpFLl8D01bNiIYnYOeJkkojEz5W6OO7Tv3b11VJZr2izXstKKT0ikCUik1IpAtKKT0ikCUopZKRSDHSilkpRSDGQik9KKQJSKTkJSEC0opPSikC0hShBYARSalpulkTn7NxYa4tIizEjkCCR5i0GxlxsEesk8EY/qna1UJOlGzGb8dg/2ztd8LXlGysLC5sjnsY6soAcLo8VutlRQmbSKEU0n2G8B9Vtjw24+W+lvHVk+3ZP6dbLBpuIfI7kzDyH5LBL07wzSAzC7T'),
(10, 256534237, 'AVITA', 'Essential NE14A2INC433-CR ', 'AVITA cuts through the noise with its ultra-slim and light-weight Notebook Laptops – The AVITA Essential 14 Series. With a jaw-dropping 6 hrs of battery life support, possibilities are infinite as your immersive experience will no longer be obstructed by low power. ', 3, 6, 17990.00, 23390.00, 5300.00, 25, b'1', b'1', 'https://www.avita.com/images/liber/liber12_feature/sc2_img1.png'),
(11, 215024582, 'Lenovo', 'IdeaPad Slim 3', 'Engineered for long-lasting performance, the Lenovo IdeaPad Slim 3 delivers powerful performance in an entry-level laptop—it’s perfect for your everyday tasks with features that you can depend on.', 3, 6, 28490.00, 29290.00, 800.00, 19, b'1', b'1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwLmUOHGt9PgttLL3j1-2MQm53nosQdREqhg&usqp=CAU'),
(12, 193930464, 'HP', 'Chromebook 14a-na0002TU', 'The best of work and play in one place. The HP Chromebook with a responsive Intel® processor, 35.56 cm (14) display sporting more screen space, stereo speakers tuned by the audio experts at B&O and a long battery life, you can knock out any assignment while binge watching your favorite shows.', 2, 6, 26890.00, 31496.00, 4606.00, 25, b'1', b'1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxZt_U0qI4AvRd0SQ2TCsVUC9eb-38Z0DN4g&usqp=CAU'),
(13, 49212762, 'ASUS', 'Vivobook 14', 'Whether for work or play, ASUS X409 is the entry-level laptop that delivers powerful performance and immersive visuals. Its NanoEdge display boasts a matte anti-glare coating for a truly engaging experience. ', 3, 6, 46990.00, 56990.00, 10000.00, 75, b'1', b'1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSg3DsBBUsb9qIa6cG5SfFfGGy3vE8iR2RDeQ&usqp=CAU'),
(14, 111672001, 'Canon', 'Canon EOS 1500D 24.1 Digital SLR Camera', '(Black) with EF S18-55 is II Lens, 16GB Card and Carry Case', 4, 8, 27000.00, 34000.00, 20.00, 30, b'1', b'1', 'https://www.amazon.in/Canon-1500D-Digital-Camera-S18-55/dp/B07BS4TJ43?ref_=Oct_s9_apbd_orecs_hd_bw_b1W0pst&pf_rd_r=YNQB8BE8DPEQKB533YSR&pf_rd_p=90a3d0b0-6e6e-5438-ac8a-7bb62b844f4f&pf_rd_s=merchandised-search-10&pf_rd_t=BROWSE&pf_rd_i=1389175031'),
(18, 124500211, 'Sony', 'Sony DSC  20.1 MP Shoot Camera ', 'Cyber-Shot Point and Shoot Camera (Black) with 8X Optical Zoom', 4, 8, 7999.00, 8690.00, 8.00, 50, b'1', b'1', 'https://www.amazon.in/Sony-Cyber-shot-Camera-Optical-Memory/dp/B00IHS3RGQ?ref_=Oct_s9_apbd_orecs_hd_bw_b1W0pst&pf_rd_r=YNQB8BE8DPEQKB533YSR&pf_rd_p=90a3d0b0-6e6e-5438-ac8a-7bb62b844f4f&pf_rd_s=merchandised-search-10&pf_rd_t=BROWSE&pf_rd_i=1389175031'),
(19, 213111012, 'Canon', 'Canon IXUS-285 HS Camera', '20.2MP Point and Shoot Camera with 12x Optical Zoom(Silver)', 3, 8, 12000.00, 13490.00, 10.00, 40, b'1', b'1', 'https://www.amazon.in/Canon-IXUS-285-HS-20-2MP-Optical/dp/B01AHSX0Z6?ref_=Oct_s9_apbd_orecs_hd_bw_b1W0pst&pf_rd_r=YNQB8BE8DPEQKB533YSR&pf_rd_p=90a3d0b0-6e6e-5438-ac8a-7bb62b844f4f&pf_rd_s=merchandised-search-10&pf_rd_t=BROWSE&pf_rd_i=1389175031'),
(20, 100012111, 'Nikon ', 'D3500 DX-Format DSLR', 'Two Lens Kit with AF-P DX Nikkor 18-55mm f/3.5-5.6G VR & AF-P DX Nikkor 70-300mm f/4.5-6.3G ED (Black) 16 GB Class 10 SD Card and DSLR Bag', 3, 8, 47000.00, 53499.00, 11.00, 25, b'1', b'1', 'https://www.amazon.in/Nikon-DX-Format-3-5-5-6G-70-300mm-4-5-6-3G/dp/B07GW23M7T/ref=lp_1389175031_1_14?s=electronics&ie=UTF8&qid=1606123032&sr=1-14'),
(21, 100012112, 'Sony', 'Mirrorless Digital SLR Camera ', 'Sony Alpha ILCE 6000L 24.3 MP with 16-50 mm (APS-C Sensor, Fast Auto Focus, Eye AF, Light Weight) - Black', 4, 8, 42000.00, 48000.00, 12.00, 40, b'1', b'1', 'https://www.amazon.in/Sony-A6000L-24-3MP-Digital-16-50mm/dp/B00KT69ZNI/ref=sr_1_12?dchild=1&keywords=sony+camera&pd_rd_r=c97c12c6-68df-42bd-998f-aa69ded119c8&pd_rd_w=5KAl0&pd_rd_wg=s1Mdw&pf_rd_p=e98d1fad-4664-4b4d-a930-8932601ebadf&pf_rd_r=20AR0GCE9KYWDMF6ATS9&qid=1606125868&sr=8-12'),
(22, 120001121, 'Fujifilm', 'Fujifilm-Mirrorless-Electronic-Touchscreen-Simulations', ' X-T200 24.2 MP Mirrorless Camera with XC 15-45 mm Lens (APS-C Sensor, Electronic Viewfinder, 3.5\" Vari-Angle Touchscreen, Face/Eye AF, 4K Video Vlogging, Film Simulations) - Silver', 4, 8, 49999.00, 60000.00, 16.00, 20, b'1', b'1', 'https://www.amazon.in/Fujifilm-Mirrorless-Electronic-Touchscreen-Simulations/dp/B08438K6Z4/ref=lp_1389177031_1_19?s=electronics&ie=UTF8&qid=1606126230&sr=1-19'),
(23, 1789654, 'Samsung', 'Galaxy Watch', 'Stay connected longer. The features of a smartwatch and the natural feeling of an analog watch in a single package. Galaxy Watch links you to the world around you. Match Galaxy Watch to your lifestyle, you can see through a variety of watch faces and with depth and lighting effect.', 1, 9, 14990.00, 29990.00, 10000.00, 50, b'1', b'1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDPVTql40MDm7RhlLJ_i6ZKTRqbCX2DVUEvQ&usqp=CAU'),
(24, 1789655, 'Oppo', 'Watch', 'Equipped with Wear OS by Google system, the OPPO Watch supports customizing watch face provides plentiful applications in Google Play store.', 2, 9, 19990.00, 24990.00, 3000.00, 14, b'1', b'1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaQC29RrSX1Bll1nG7esWx07j06rFZg-L75g&usqp=CAU'),
(25, 1789656, 'Fossil', 'Gen 4', 'Classic design with modern technology, this Fossil touchscreen smartwatch features a brown leather strap, and let\'s you track your heart rate, receive notifications, customize your dial and more. \r\n', 3, 9, 10995.00, 21995.00, 5000.00, 65, b'1', b'1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjlREKwVTMn4CaLFWOLOP5PVPq4VhCZuN1VA&usqp=CAU\r\n'),
(26, 1789657, 'Fitbit', 'Versa 2', 'Meet fitbit versa 2—a water resistant smartwatch that elevates every moment. Use your voice to create alarms, set bedtime reminders or check the weather with built-in voice control.* Take your look from the gym to the office with its modern and versatile design.', 4, 9, 13249.00, 23999.00, 7000.00, 75, b'1', b'1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjlREKwVTMn4CaLFWOLOP5PVPq4VhCZuN1VA&usqp=CAU'),
(27, 1789658, 'Sony', 'SRS-XB33', 'SRS-XB33 support EXTRA BASS sound which is achieved on the XB wireless speaker line up through Sony’s renowned audio technology. Backed by Sony’s newly developed X-Balanced Speaker Unit, these speakers provide sound quality and powerful sound pressure for a richer, deeper and more rewarding listening experience.', 1, 10, 11992.00, 15990.00, 1000.00, 47, b'1', b'1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjlREKwVTMn4CaLFWOLOP5PVPq4VhCZuN1VA&usqp=CAU'),
(28, 1789659, 'JBL', 'Charge 4', 'Introducing the JBL Charge 4 portable Bluetooth speaker with full-spectrum, powerful sound and a built-in power bank to charge your devices. ', 2, 10, 11999.00, 15999.00, 500.00, 54, b'1', b'1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjlREKwVTMn4CaLFWOLOP5PVPq4VhCZuN1VA&usqp=CAU'),
(29, 1789660, 'Philips', 'TAX4105', 'Be the life of the party with this room-shaking speaker. Celebrate with multiple inputs, and channel the singer in you with the wireless mic. You get light effects and a trolley, so the party can follow you where you go.', 3, 10, 11960.00, 18990.00, 250.00, 12, b'1', b'1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjlREKwVTMn4CaLFWOLOP5PVPq4VhCZuN1VA&usqp=CAU'),
(30, 1789661, 'Bose', 'SoundLink Micro', 'The Bose Sound Link Micro Bluetooth speaker delivers sound so good for a speaker its size, you’ll never leave it behind. Proprietary Bose technology produces loud, clear sound—even outdoors—thanks to its custom-mounted transducer and passive radiators.', 4, 10, 8000.00, 8999.00, 900.00, 35, b'1', b'1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjlREKwVTMn4CaLFWOLOP5PVPq4VhCZuN1VA&usqp=CAU'),
(31, 1789662, 'Amazon', 'Echo Dot', 'With a new speaker and design, Echo Dot is a voice-controlled smart speaker with Alexa, designed for any room. Just ask for music, news, information, control compatible smart home devices and more. You can either use the crisp and clear built-in speaker or connect Echo Dot to your own other speakers using Bluetooth or 3.5mm audio cable.', 4, 10, 3500.00, 4499.00, 1500.00, 10, b'1', b'1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjlREKwVTMn4CaLFWOLOP5PVPq4VhCZuN1VA&usqp=CAU');

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
(102, 26, 'Wireless Type', 'Bluetooth');

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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_detail_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

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
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

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
