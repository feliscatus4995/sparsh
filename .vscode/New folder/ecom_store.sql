-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2021 at 09:11 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `about_id` int(10) NOT NULL,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
(1, 'About Us - Our Story', '\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,\r\n', 'Rhone was the collective vision of a small group of weekday warriors. For years, we were frustrated by the lack of activewear designed for men and wanted something better. With that in mind, we set out to design premium apparel that is made for motion and engineered to endure.\r\n\r\nAdvanced materials and state of the art technology are combined with heritage craftsmanship to create a new standard in activewear. Every product tells a story of premium performance, reminding its wearer to push themselves physically without having to sacrifice comfort and style.\r\n\r\nBeyond our product offering, Rhone is founded on principles of progress and integrity. Just as we aim to become better as a company, we invite men everywhere to raise the bar and join us as we move Forever Forward.');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(2, 'admin', 'BeyondTrends@protonmail.com', 'adminBT@08', 'BT.jpg', '8989214995', 'India', 'Beyond Trends', 'At Beyond Trends, the legacy of our culture is preserved along with the modern elegance. Severe attention is given to every minute detail in the fine design of every piece made to ehnace the beauty of your home. We understand the feeling of coming home after a long day. Home is the place which defines peace. It is where your family grow and you make the memories for life. Design reflects the nature of a person. Decorate your home and it will always remind you of your true self, your inner beauty, your inspiration and your goals.\r\n\r\nWE MAKE YOU FEEL LIKE HOME.');

-- --------------------------------------------------------

--
-- Table structure for table `bundle_product_relation`
--

CREATE TABLE `bundle_product_relation` (
  `rel_id` int(10) NOT NULL,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bundle_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(6, 'Study Table Lamp', 'yes', 'black-metal-study-lamp-by-brightdaisy-black-metal-study-lamp-by-brightdaisy-jocy3x.jpg'),
(7, 'Night Lamps', 'no', 'scarlette-white-wooden-table-lamp-by-casacraft-scarlette-white-wooden-table-lamp-by-casacraft-ipnl0l.jpg'),
(8, 'Wall Sconces', 'no', 'yellow-glass-wall-light-eliante-by-jainsons-lights-yellow-glass-wall-light-eliante-by-jainsons-light-yleadb.jpg'),
(9, 'Floor Lamps', 'no', 'remy-beige-fabric-floor-lamp-by-casacraft-remy-beige-fabric-floor-lamp-by-casacraft-vspm8h.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(10) NOT NULL,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'prarthanapande01@gmail.com', 'Contact Us', 'If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
(2, 'user', 'user@gmail.com', '123', 'India', 'Indore', '8093217654', 'Indore, MP', 'BT.jpg', '::1', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(27, 2, 5996, 1991840073, 4, 'Select a Size', '2020-08-19 14:03:16', 'pending'),
(28, 2, 18777, 407588954, 3, 'Select a Size', '2020-08-20 16:58:52', 'pending'),
(29, 2, 18777, 729990441, 3, 'Small', '2020-08-20 18:05:17', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_types`
--

CREATE TABLE `enquiry_types` (
  `enquiry_id` int(10) NOT NULL,
  `enquiry_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_types`
--

INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'Order and Delivery Support'),
(2, 'Technical Support'),
(3, 'Price Concern');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(7, 'Beyond Trends', 'yes', 'BT.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(27, 2, 1991840073, '24', 4, 'Select a Size', 'pending'),
(28, 2, 407588954, '19', 3, 'Select a Size', 'pending'),
(29, 2, 729990441, '19', 3, 'Small', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`) VALUES
(14, 4, 7, 7, '2020-07-10 12:20:45', 'Black Shade Study Lamp with Metal Base', 'new-study-table-lamp-black-study-lamp', 'black-metal-study-lamp-by-brightdaisy-black-metal-study-lamp-by-brightdaisy-jocy3x.jpg', 'black-metal-study-lamp-by-brightdaisy-black-metal-study-lamp-by-brightdaisy-o84rr1.jpg', 'black-metal-study-lamp-by-brightdaisy-black-metal-study-lamp-by-brightdaisy-x47vxf.jpg', 1200, 1000, '<p>Ensuring an optimal distribution of light on the desk, these study lamps offers a well-lit-up study table.</p>\r\n<p>These lamps not only look stylish but also have high efficiency to brighten up the study desk.</p>\r\n<p>A one stop-shop for home decor and furniture,&nbsp;<strong>Beyond Trends</strong>.&nbsp;</p>', '<p><strong>Assembly:</strong> No Assembly Required</p>\r\n<p><strong>Pack Content:</strong> 1 Lamp, Bulb Not Included</p>\r\n<p><strong>Dimensions:&nbsp;</strong>6 * 6 * 17</p>\r\n<p><strong>Holder &amp; Plug type:</strong> B-22 Holder &amp; 2 Pin Round Plug</p>\r\n<p><strong>Bulb Recommended:</strong> 0-60 W Bulb, CFL</p>\r\n<p><strong>Switch Type:</strong> Rocker Switch</p>\r\n<p><strong>Weight:&nbsp;</strong>2 Kgs</p>\r\n<p><strong>Shade Color:</strong> Black</p>\r\n<p><strong>Base Fixture Material:</strong> Metal</p>\r\n<p><strong>Wire Length:&nbsp;</strong>1.5 Meter</p>\r\n<p><strong>Bulb Included:&nbsp;</strong>No</p>\r\n<p><strong>Shelf:&nbsp;</strong>No</p>', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Lamps', 'Sale', 'product'),
(15, 4, 7, 7, '2020-07-08 19:13:47', 'Scarlette White Fabric Shade Table Lamp', 'new-night-lamps-scarlette-white-fabric-shade', 'scarlette-white-wooden-table-lamp-by-casacraft-scarlette-white-wooden-table-lamp-by-casacraft-ipnl0l.jpg', 'scarlette-white-wooden-table-lamp-by-casacraft-scarlette-white-wooden-table-lamp-by-casacraft-go1oqs.jpg', 'scarlette-white-wooden-table-lamp-by-casacraft-scarlette-white-wooden-table-lamp-by-casacraft-ttjkot.jpg', 2448, 2299, '<p>Do you want to enjoy a refreshing and bright decor of your house ?</p>\r\n<p>Then pick any one of these stylishly designed Table Lamp, which will brighten up your home decor in the most artistic way. With breathtakingly beautiful appeal, these lamps will complement your modern interiors.&nbsp;</p>\r\n<p>A one stop-shop for home decor and furniture,&nbsp;<strong>Beyond Trends</strong>.</p>', '<p><strong>Warranty:&nbsp;</strong>12 Months Warranty</p>\r\n<p><strong>Assembly:&nbsp;</strong>Self Assembly</p>\r\n<p><strong>Pack Content:</strong> 1 Table Lamp with Holder, Bulb Not Included</p>\r\n<p><strong>Dimensions:&nbsp;</strong>11 * 11 * 22 inches</p>\r\n<p><strong>Holder &amp; Plug Type:&nbsp;</strong>E27 Holder</p>\r\n<p><strong>Bulb Recommended:&nbsp;</strong>No</p>\r\n<p><strong>Weight:&nbsp;</strong>1.5 Kg</p>\r\n<p><strong>Shade Material:&nbsp;</strong>Fabric</p>\r\n<p><strong>Shade Color:&nbsp;</strong>White</p>\r\n<p><strong>Base Fixture Material:&nbsp;</strong>Wood</p>\r\n<p><strong>Base Fixture Color:&nbsp;</strong>Beige</p>\r\n<p><strong>Wire Length:&nbsp;</strong>2.5 Meter</p>\r\n<p><strong>Shelf:&nbsp;</strong>No</p>', '\r\n\r\n\r\n\r\n', 'Lamps', 'Sale', 'product'),
(16, 4, 8, 7, '2020-07-08 19:15:21', 'Yellow Glass Wall Sconces Lamps ', 'new-wall-sconces-lamps-yellow-glass-wall', 'yellow-glass-wall-light-eliante-by-jainsons-lights-yellow-glass-wall-light-eliante-by-jainsons-light-yleadb.jpg', 'yellow-glass-wall-light-eliante-by-jainsons-lights-yellow-glass-wall-light-eliante-by-jainsons-light-zdn0u2.jpg', 'yellow-glass-wall-light-eliante-by-jainsons-lights-yellow-glass-wall-light-eliante-by-jainsons-light-hteiif.jpg', 2849, 2799, '<p>Be it a contemporary or a modern setting, our range of beautifully crafted product allow you to experience the beauty of a well-lit-room.&nbsp;</p>\r\n<p>Exude a sense of class and elegance with a stylish and well-designed artistic piece from our extensive showcase.</p>\r\n<p>Spectacular and awe-inspiring, we have the right choice for you.</p>\r\n<p>A one stop-shop for home decor and furniture,&nbsp;<strong>Beyond Trends</strong>.</p>', '<p><strong>Warranty:</strong> No Warranty</p>\r\n<p><strong>Assembly:&nbsp;</strong>Book Installation Now</p>\r\n<p><strong>Pack Content:</strong> Bulb Not Included</p>\r\n<p><strong>Dimensions:</strong> 12 * 9 * 15 inches</p>\r\n<p><strong>Holder &amp; Plug Type:&nbsp;</strong>Inbuilt LED</p>\r\n<p><strong>Weight:&nbsp;</strong>2 Kg</p>\r\n<p><strong>Material:&nbsp;</strong>Glass</p>\r\n<p><strong>Color:</strong> Yellow</p>\r\n<p><strong>No. of Lights: </strong>2</p>', '\r\n\r\n\r\n\r\n', 'Lamps', 'Sale', 'product'),
(17, 4, 9, 7, '2020-07-08 19:16:23', 'White Fabric Shade FLoor Lamp', 'new-floor-lamps-white-fabric-shade ', 'cream-jute-floor-lamp-by-lavish-cream-jute-floor-lamp-by-lavish-rxo4ps.jpg', 'cream-jute-round-floor-lamp-by-lavish-cream-jute-round-floor-lamp-by-lavish-avy8mw.jpg', 'cream-jute-round-floor-lamp-by-lavish-cream-jute-round-floor-lamp-by-lavish-yg9ef3.jpg', 1899, 1799, '<p>Add a touch of class and elegance to your home decor by picking from our wide range of contemporary lamps.</p>\r\n<p>With its classy design, these floor lamps will raise the style quotient of your home within no time.</p>\r\n<p>High on utility and efficiency, these floor lamps will render you a lasting use.</p>\r\n<p>A one stop-shop for home decor and furniture,&nbsp;<strong>Beyond Trends</strong>.</p>', '<p><strong>Warranty:&nbsp;</strong>No Warranty</p>\r\n<p><strong>Assembly:&nbsp;</strong>Self Assembly</p>\r\n<p><strong>Pack Content:</strong> 1Pc Floor Lamp With Electric Fitting, Bulb Not Included</p>\r\n<p><strong>Dimensions:&nbsp;</strong>7.5 * 7.5 * 43 inches</p>\r\n<p><strong>Holder &amp; Plug Type:&nbsp;</strong>B-22 Holder &amp; 2 Pin Flat Plug&nbsp;</p>\r\n<p><strong>Bulb Recommended:&nbsp;</strong>10 W LED</p>\r\n<p><strong>Switch Type:&nbsp;</strong>On / Off</p>\r\n<p><strong>Weight:&nbsp;</strong>1 Kg</p>\r\n<p><strong>Shade Material:</strong> Fabric</p>\r\n<p><strong>Shade Color:&nbsp;</strong>White&nbsp;</p>\r\n<p><strong>Base Fixture Material: </strong>Metal</p>\r\n<p><strong>Base Fixture Color:&nbsp;</strong>Beige</p>\r\n<p><strong>Base Height:&nbsp;</strong>43</p>\r\n<p><strong>Wire Length:&nbsp;</strong>1.5 Meters&nbsp;</p>\r\n<p><strong>Shade Dimensions:&nbsp;</strong>7.5 * 7.5 * 43 inches</p>\r\n<p><strong>Bulb Included:&nbsp;</strong>No</p>\r\n<p><strong>Shelf:&nbsp;</strong>No</p>', '\r\n\r\n\r\n\r\n', 'Lamps', 'Sale', 'product'),
(18, 4, 6, 7, '2020-07-08 19:16:50', 'Alwin Shade Study Lamp With Metal Base', 'new-study-table-lamp-alwin-shade-study-lamp', 'alwin-gold-metal-shade-table-lamp-with-metal-base-by-jainsons-emporio-alwin-gold-metal-shade-table-l-dhfbtp.jpg', 'alwin-gold-metal-shade-table-lamp-with-metal-base-by-jainsons-emporio-alwin-gold-metal-shade-table-l-qa5mxf.jpg', 'alwin-gold-metal-shade-table-lamp-with-metal-base-by-jainsons-emporio-alwin-gold-metal-shade-table-l-g7shrb.jpg', 11600, 11499, '<p>Give your interiors a modern touch by including these stunningly designed eclectic lamps to your lightings collection.</p>\r\n<p>With its wide range of designs and shapes, these lamps will blend well with any kind of interiors.</p>\r\n<p>Buying these lamps is the perfect way to give your room a rich and classy appeal.</p>\r\n<p>A one stop-shop for home decor and furniture,&nbsp;<strong>Beyond Trends</strong>.</p>', '<p><strong>Assembly:&nbsp;</strong>Self Assembly</p>\r\n<p><strong>Pack Content:&nbsp;</strong>1 piece Table Lamp with all parts included. Bulbs Not Included.</p>\r\n<p><strong>Dimensions:&nbsp;</strong>8 * 18 * 19 inches</p>\r\n<p><strong>Holder &amp; Plug Type:&nbsp;</strong>G9 Holder</p>\r\n<p><strong>Switch Type:&nbsp;</strong>On / Off</p>\r\n<p><strong>Weight:&nbsp;</strong>5 Kg</p>\r\n<p><strong>Shade Color:&nbsp;</strong>Gold</p>\r\n<p><strong>Wire Length:&nbsp;</strong>0.7 Mtr</p>\r\n<p><strong>Bulb Included:&nbsp;</strong>No</p>\r\n<p><strong>Shelf:&nbsp;</strong>No</p>', '\r\n\r\n\r\n\r\n', 'Lamps', 'Sale', 'product'),
(19, 4, 7, 7, '2020-07-08 19:17:19', 'White Plastic Shade Table Lamp ', 'new-night-lamps-white-plastic-shade-table', 'white-metal-ines-table-lamp-by-jainsons-emporio-white-metal-ines-table-lamp-by-jainsons-emporio-rn0hfy.jpg', 'white-metal-ines-table-lamp-by-jainsons-emporio-white-metal-ines-table-lamp-by-jainsons-emporio-n9ysru.jpg', 'white-metal-ines-table-lamp-by-jainsons-emporio-white-metal-ines-table-lamp-by-jainsons-emporio-yr0jb5.jpg', 6364, 6259, '<p>Fill your room with soft glow oozing out of our stylish range of eclectic lamps.</p>\r\n<p>Known for their modish looks and unsaid beauty, these eclectic table lamps are characterized by the use of trendy designs.</p>\r\n<p>A one stop-shop for home decor and furniture,&nbsp;<strong>Beyond Trends</strong>.</p>', '<p><strong>Warranty:&nbsp;</strong>No Warranty</p>\r\n<p><strong>Assembly:&nbsp;</strong>No Assembly Required</p>\r\n<p><strong>Pack Content:&nbsp;</strong>1 piece table lamp with all parts included. LED Bulb included.</p>\r\n<p><strong>Dimensions:&nbsp;</strong>6 * 6 * 9 inches</p>\r\n<p><strong>Holder &amp; Plug Type:&nbsp;</strong>Inbuilt LED</p>\r\n<p><strong>Bulb Recommended:&nbsp;</strong>LED Bulb included</p>\r\n<p><strong>Switch Type:&nbsp;</strong>Rocker Switch</p>\r\n<p><strong>Weight:&nbsp;</strong>8 Kgs</p>\r\n<p><strong>Shade Material:&nbsp;</strong>Plastic</p>\r\n<p><strong>Shade Color:</strong> White</p>\r\n<p><strong>Base Fixture Material:&nbsp;</strong>Metal</p>\r\n<p><strong>Base Fixture Color:&nbsp;</strong>White</p>\r\n<p><strong>Base Height:&nbsp;</strong>8</p>\r\n<p><strong>Wire Length:&nbsp;</strong>1 Meter</p>\r\n<p><strong>Shelf:&nbsp;</strong>No</p>', '\r\n\r\n\r\n\r\n', 'Lamps', 'Sale', 'product'),
(20, 4, 8, 7, '2020-07-08 19:17:48', 'Janseen Silver Metal Wall Sconces Lamp', 'new-wall-sconces-lamps-janseen-silver-metal-wall', 'janssen-chrome-metal-and-glass-wall-light-by-casacraft-janssen-chrome-metal-and-glass-wall-light-by--floauw.jpg', 'janssen-chrome-metal-and-glass-wall-light-by-casacraft-janssen-chrome-metal-and-glass-wall-light-by--6rx5o4.jpg', 'janssen-chrome-metal-and-glass-wall-light-by-casacraft-janssen-chrome-metal-and-glass-wall-light-by--88urkb.jpg', 1748, 1699, '<p>Want to focus on any particular object, which requires downward lighting? Why to miss out these skillfully crafted walls mounted downwards lamps.</p>\r\n<p>Diffusing light in the downward direction, these lights will add a distinguished charm to your home decor that is difficult to be ignored.</p>\r\n<p>With these lamps you can add Zind of style and illumination to your room.&nbsp;</p>\r\n<p>A stop-shop for home decor and furniture,&nbsp;<strong>Beyond Trends</strong>.</p>', '<p><strong>Warranty:&nbsp;</strong>No Warranty</p>\r\n<p><strong>Assembly:&nbsp;</strong>Book Installation Now</p>\r\n<p><strong>Pack Content:&nbsp;</strong>1 Lamp Shade + 1 lamp Base + 1 Installation Instruction, Bulb Excluded</p>\r\n<p><strong>Dimensions:&nbsp;</strong>5.5 * 5.5 * 8.6 inches</p>\r\n<p><strong>Holder &amp; Plug Type:&nbsp;</strong>E14 Holder</p>\r\n<p><strong>Bulb Recommended:&nbsp;</strong>40 Watt</p>\r\n<p><strong>Switch Type:&nbsp;</strong>No Switch&nbsp;</p>\r\n<p><strong>Weight:&nbsp;</strong>E14 Holder</p>\r\n<p><strong>Material:&nbsp;</strong>Metal</p>\r\n<p><strong>Color:&nbsp;</strong>Silver</p>\r\n<p><strong>No. Of Lights:</strong> 1</p>\r\n<p>&nbsp;</p>', '\r\n\r\n\r\n\r\n', 'Lamps', 'Sale', 'product'),
(21, 4, 9, 7, '2020-07-08 19:18:13', 'Beige Shade Floor Lamp With Wood Base', 'new-floor-lamps-beige-shade-floor-lamp', 'beige-fabric-shade-floor-lamp-with-wood-base-by-sanded-edge-beige-fabric-shade-floor-lamp-with-wood--aodeop.jpg', 'beige-fabric-shade-floor-lamp-with-wood-base-by-sanded-edge-beige-fabric-shade-floor-lamp-with-wood--wh1jvw.jpg', 'beige-fabric-shade-floor-lamp-with-wood-base-by-sanded-edge-beige-fabric-shade-floor-lamp-with-wood--xo5jgi.jpg', 4399, 4299, '<p>Bringing you one of our finest handcrafted pieces, the floor lamp is the perfect blend of artistic flair and modern appeal.</p>\r\n<p>Sanded Edge brand is based in New Delhi and creates products which are Space savers, comes with Multi-Utility having Modern contemporary designs.</p>\r\n<p>Their product design are made up of premium materials and with continuous innovation on designs, they keep track of the living needs of consumers.</p>\r\n<p>The motive is to set the right ambience at homes for various moods and thereby spreading the same passion via their products.</p>\r\n<p>A one stop-shop for home decor and furniture,&nbsp;<strong>Beyond Trends</strong>.</p>', '', '\r\n\r\n\r\n\r\n', 'Lamps', 'Sale', 'product'),
(22, 4, 6, 7, '2020-07-10 07:51:49', 'Black Aluminium Shade Study Lamp(Black Base)', 'new-study-table-lamp-black-aluminium-shade-study-lamp', 'black-aluminium-study-lamp-by-jainsons-emporio-black-aluminium-study-lamp-by-jainsons-emporio-pkonly.jpg', 'black-aluminium-study-lamp-by-jainsons-emporio-black-aluminium-study-lamp-by-jainsons-emporio-oimjxf.jpg', 'black-aluminium-study-lamp-by-jainsons-emporio-black-aluminium-study-lamp-by-jainsons-emporio-y4z9km.jpg', 5049, 4999, '<p>Ensuring an optimal distribution of light on the desk, these study lamps offers a well-lit-up study table.</p>\r\n<p>These lamps not only look stylish but also have high efficiency to brighten up the study desk.&nbsp;</p>\r\n<p>A one stop-shop for home decor and furniture,&nbsp;<strong>Beyond Trends</strong>.</p>', '<p><strong>Warranty:&nbsp;</strong>No Warranty</p>\r\n<p><strong>Assembly:&nbsp;</strong>No Assembly Required&nbsp;</p>\r\n<p><strong>Pack Content:</strong> 1 Pc Lamp Basse, 1 Pc Shade. Bulb Not Included.</p>\r\n<p><strong>Dimensions:&nbsp;</strong>11 * 11 * 7&nbsp;</p>\r\n<p><strong>Holder &amp; Plug Type:&nbsp;</strong>B15 Holder and 2 Pin Round Plug&nbsp;</p>\r\n<p><strong>Bulb Recommended:&nbsp;</strong>LED / CFL or Regular, upto 60 W&nbsp;</p>\r\n<p><strong>Switch Type:&nbsp;</strong>No Switch&nbsp;</p>\r\n<p><strong>Weight:&nbsp;</strong>1.1 Kg</p>\r\n<p><strong>Shade Material: </strong>Aluminium</p>\r\n<p><strong>Shade Color: </strong>Black</p>\r\n<p><strong>Base Fixture Material: </strong>Metal</p>\r\n<p><strong>Base Fixture Color: </strong>Black</p>\r\n<p><strong>Base Height: </strong>16</p>\r\n<p><strong>Wire Length: </strong>1.5 Meter</p>\r\n<p><strong>Bulb Included: </strong>No</p>\r\n<p><strong>Shelf: </strong>No</p>', '\r\n\r\n\r\n\r\n\r\n\r\n', 'Lamps', 'New', 'product'),
(23, 4, 7, 7, '2020-07-08 19:19:18', 'Katie Black Metal Shade Table Lamp', 'new-night-lamps-katie-black-metal-shade-table-lamp', 'katie-black-metal-shade-table-lamp-with-metal-base-by-bohemiana-katie-black-metal-shade-table-lamp-w-lh0yi8.jpg', 'katie-black-metal-shade-table-lamp-with-metal-base-by-bohemiana-katie-black-metal-shade-table-lamp-w-hjr8er.jpg', 'katie-black-metal-shade-table-lamp-with-metal-base-by-bohemiana-katie-black-metal-shade-table-lamp-w-rxuhmk.jpg', 2148, 2100, '<p>Brining you one of our finest handcrafted pieces, Table Lamp is the perfect blend of artistic flair and modern appeal.&nbsp;</p>\r\n<p>A stop-shop for home decor and furniture,&nbsp;<strong>Beyond Trends</strong>.</p>', '<p><strong>Assembly:&nbsp;</strong>Self Assembly</p>\r\n<p><strong>Pack Content:</strong> Shade, Base, Holder, Bulb Not Included</p>\r\n<p><strong>Dimensions: </strong>10 * 10 * 20 inches</p>\r\n<p><strong>Holder &amp; Plug Type:&nbsp;</strong>E27 Holder</p>\r\n<p><strong>Bulb Recommended:&nbsp;</strong>No</p>\r\n<p><strong>Weight:&nbsp;</strong>2.5 Kg</p>\r\n<p><strong>Shade Material:&nbsp;</strong>Metal</p>\r\n<p><strong>Shade Color:&nbsp;</strong>Black</p>\r\n<p><strong>Base Fixture Material:&nbsp;</strong>Metal</p>\r\n<p><strong>Base Fixture Color:&nbsp;</strong>Black</p>\r\n<p><strong>Wire Length:&nbsp;</strong>2 Meter</p>\r\n<p><strong>Shelf:&nbsp;</strong>No</p>', '\r\n\r\n\r\n\r\n', 'Lamps', 'New', 'product'),
(24, 4, 8, 7, '2020-07-08 19:19:42', 'Pasig Wall Light In Black Color', 'new-wall-sconces-lamps-pasig-wall-light-in-black-color', 'lantern-wall-light-in-dark-brown-colour-by-bohemiana-lantern-wall-light-in-dark-brown-colour-by-bohe-czojhb.jpg', 'lantern-wall-light-in-dark-brown-colour-by-bohemiana-lantern-wall-light-in-dark-brown-colour-by-bohe-i7lyrc.jpg', 'lantern-wall-light-in-dark-brown-colour-by-bohemiana-lantern-wall-light-in-dark-brown-colour-by-bohe-nrrvq8.jpg', 1499, 1299, '<p>Reduce the centric focus and draw attention to the rest of the room by installing these Upward wall-mounted light.&nbsp;<u></u></p>\r\n<p>Space saving and eye captivating, these lights provides an alluring and soothing brightness giving away an elegant and charming appeal to your home decor.</p>\r\n<p>Not only are these lights classy to look at, but also high on efficiency.</p>\r\n<p>A one stop-shop for home decor and furniture, <strong>BEYOND TRENDS</strong>.</p>', '<p><strong>Warranty:&nbsp;</strong>No Warranty</p>\r\n<p><strong>Assembly:&nbsp;</strong>Self Assembly</p>\r\n<p><strong>Pack Content:&nbsp;</strong>1 Pc Wall Light&nbsp;</p>\r\n<p><strong>Dimensions:&nbsp;</strong>6.5 * 4.5 * 14 inches</p>\r\n<p><strong>Holder &amp; Plug Type:</strong> E14 Holder</p>\r\n<p><strong>Bulb Recommended:</strong> 40 / 60 W</p>\r\n<p><strong>Weight:&nbsp;</strong>2.1 Kgs</p>\r\n<p><strong>Material:&nbsp;</strong>Metal</p>\r\n<p><strong>Color: </strong>Gold</p>\r\n<p><strong>No. of Lights:&nbsp;</strong>1</p>', '\r\n\r\n\r\n\r\n\r\n\r\n', 'Lamps', 'New', 'product'),
(25, 4, 9, 7, '2020-07-08 19:32:29', 'Remy Beige Fabric Shade Floor Lamp', 'new-floor-lamps-remy-beige-fabric-shade-floor-lamp', 'remy-beige-fabric-floor-lamp-by-casacraft-remy-beige-fabric-floor-lamp-by-casacraft-hjj2rq.jpg', 'remy-beige-fabric-floor-lamp-by-casacraft-remy-beige-fabric-floor-lamp-by-casacraft-vspm8h.jpg', 'remy-beige-fabric-floor-lamp-by-casacraft-remy-beige-fabric-floor-lamp-by-casacraft-csg6sx.jpg', 4999, 3999, '<p style=\"text-align: justify;\">Do you want to enjoy a refreshing and bright decor of your house? Then pick any one of these stylishly designed Floor Lamp, which will brighten up your home decor in the most artistic way. With the breathtakingly beautiful appeal, these lamps will complement your modern interiors. A one-stop-shop for home decor and furniture, <strong>BEYOND TRENDS</strong>.</p>', '<p><strong>Warranty:</strong> 12 Months Warranty</p>\r\n<p><strong>Assembly:</strong> Self Assembly</p>\r\n<p><strong>Pack Content:</strong> 1 Floor Lamp, Bulb Not Included</p>\r\n<p><strong>Dimensions:</strong> 15 * 15 * 51 inches</p>\r\n<p><strong>Holder &amp; Plug type:</strong> B22 Holder Bulb</p>\r\n<p><strong>Recommended:</strong> NO</p>\r\n<p><strong>Weight:</strong> 2 kg</p>\r\n<p><strong>Shade Material:</strong> Fabric</p>\r\n<p><strong>Shade Colour:</strong> Beige</p>\r\n<p><strong>Base Fixture Material:</strong> Wood</p>\r\n<p><strong>Base Fixture Color:</strong> Brown</p>\r\n<p><strong>Wire Length:</strong> 3.5 meter</p>\r\n<p><strong>Shelf:</strong> No</p>', '\r\n\r\n', 'Lamps', 'New', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(4, 'Lamps', 'yes', 'black-metal-study-lamp-by-brightdaisy-black-metal-study-lamp-by-brightdaisy-jocy3x.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` int(10) NOT NULL,
  `store_title` varchar(255) NOT NULL,
  `store_image` varchar(255) NOT NULL,
  `store_desc` text NOT NULL,
  `store_button` varchar(255) NOT NULL,
  `store_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `store_title`, `store_image`, `store_desc`, `store_button`, `store_url`) VALUES
(4, 'London Store', 'store (3).jpg', '<p style=\"text-align: center;\"><strong>180-182 RECENTS STREET, LONDON, W1B 5BT</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce'),
(5, 'New York Store', 'store (1).png', '<p style=\"text-align: center;\"><strong>109 COLUMBUS CIRCLE, NEW YORK, NY10023</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce'),
(6, 'Paris Store', 'store (2).jpg', '<p style=\"text-align: center;\"><strong>2133 RUE SAINT-HONORE, 75001 PARIS&nbsp;</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Rules And Regulations', 'rules', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.&nbsp;</p>'),
(2, 'Refund Policy', 'link2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on'),
(3, 'Pricing and Promotions Policy', 'link3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(3, 2, 25),
(4, 2, 22);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  ADD PRIMARY KEY (`rel_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  MODIFY `rel_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  MODIFY `enquiry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
