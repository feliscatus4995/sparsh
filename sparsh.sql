-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2021 at 02:42 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparsh`
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
(2, 'admin', 'Sparsh@gmail.com', 'Sparsh@02', 'BT.jpg', '8989214995', 'India', 'Sparsh', 'Welcome to Sparsh - a real touch of virtual togetherness...');

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
(10, 'Saree', 'yes', 'Apple Red Saree In Organza With Bud Embroidered Floral Buttis And Pallu Along With Unstitched Blouse Online-1.jpg'),
(11, 'Lehenga', 'yes', 'Pineapple Yellow Skirt And Crop Top With Short Embellished Jacket Online-2.jpg');

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
(2, 'user', 'user@gmail.com', '123', 'India', 'Indore', '8093217654', 'Indore, MP', 'BT.jpg', '::1', ''),
(3, 'Prarthana Pande', 'prarthanapande01@gmail.com', 'pepFC@01', 'India', 'Indore', '8989214995', 'Indore', 'Fit&Female.png', '127.0.0.1', '1149816184'),
(4, 'Palak Gandhi', 'palak.pkvp@gmail.com', 'Palak459!', 'India', 'Indore', '8319564382', 'Indore', 'Fit&Female.png', '127.0.0.1', '462415310');

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
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(27, 2, 5996, 1991840073, 4, 'Select a Size', '2020-08-19 14:03:16', 'pending'),
(28, 2, 18777, 407588954, 3, 'Select a Size', '2020-08-20 16:58:52', 'pending'),
(29, 2, 18777, 729990441, 3, 'Small', '2020-08-20 18:05:17', 'pending'),
(30, 3, 8530, 796826394, 2, 'Medium', '2021-04-10 20:33:06', 'pending'),
(32, 3, 8940, 482863717, 1, 'Medium', '2021-04-10 22:32:34', 'pending');

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
(7, 'Sparsh', 'yes', 'BT.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pairing`
--

CREATE TABLE `pairing` (
  `pair_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_1_id` int(10) NOT NULL,
  `product_2_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pairing`
--

INSERT INTO `pairing` (`pair_id`, `customer_id`, `product_1_id`, `product_2_id`) VALUES
(19, 3, 38, 33);

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
(30, 3, 796826394, '37', 2, 'Medium', 'pending'),
(32, 3, 482863717, '27', 1, 'Medium', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
(27, 5, 10, 7, '2021-04-08 11:18:48', 'Apple Red Saree In Organza ', 'apple-red-saree', 'Apple Red Saree In Organza With Bud Embroidered Floral Buttis And Pallu Along With Unstitched Blouse Online-1.jpg', 'Apple Red Saree In Organza With Bud Embroidered Floral Buttis And Pallu Along With Unstitched Blouse Online-2.jpg', 'Apple Red Saree In Organza With Bud Embroidered Floral Buttis And Pallu Along With Unstitched Blouse Online-3.jpg', 8940, 8940, '<ul class=\"description_list\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding-left: 15px; list-style: none; color: #333333; font-family: Roboto, sans-serif; font-size: 12px; background-color: rgba(255, 255, 255, 0.8);\">\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Apple red saree in organza with hand embroidered floral buttis using thread work and matching unstitched blouse.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">The pallu is enhanced with an elaborate bud embroidered floral design along with sequins highlights.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Paired with a matching unstitched blouse in silk with bud embroidered buttis.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">The length of the blouse is 1.04 meters.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Slight variation in color is possible due to digital photography.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Being rewarded as the most trusted brand our customers too believe we deliver same styles as promised on the website.</li>\r\n</ul>', '<p><strong>Color: </strong>Apple Red</p>\r\n<p><strong>Fabric:</strong> Organza</p>\r\n<p><strong> Work:</strong> Embroidery, Floral, Handwork, Thread&nbsp;</p>', '\r\n\r\n', 'Saree', 'New', 'product'),
(28, 5, 11, 7, '2021-04-08 11:23:22', 'Pearl White Skirt And Peplum Top', 'peral-white-skirt', 'Pearl White Skirt And Peplum Top With Colorful Resham And Abla Embroidery Online-1.jpg', 'Pearl White Skirt And Peplum Top With Colorful Resham And Abla Embroidery Online-2.jpg', 'Pearl White Skirt And Peplum Top With Colorful Resham And Abla Embroidery Online-3.jpg', 23700, 18960, '<ul class=\"description_list\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding-left: 15px; list-style: none; color: #333333; font-family: Roboto, sans-serif; font-size: 12px; background-color: rgba(255, 255, 255, 0.8);\">\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Pearl white skirt in georgette with tiered hem adorned with badla work in striped pattern.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Teamed with a peplum kurti in georgette with colorful resham, abla, sequins and zari work in checks pattern.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Crafted with round neckline, full sleeves and tassel dori in the back.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Topped with a shaded peach and grey net dupatta with salli fringes on the border.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">This piece comes with cancan.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">WASH CARE INSTRUCTION: Dry clean only.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Slight variation in color is possible due to digital photography.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Being rewarded as the most trusted brand our customers too believe we deliver same styles as promised on the website.</li>\r\n</ul>', '<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding-left: 15px; list-style: none; color: #333333; font-family: Roboto, sans-serif; font-size: 12px; background-color: rgba(255, 255, 255, 0.8);\">\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Color: White</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Fabric: Georgette</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Work: Embroidery, Mirror, Thread/Resham</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Clouser: Side Zip</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Neck Line: Round</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Sleeves: Full Sleeves</li>\r\n</ul>', '\r\n\r\n', 'Lehenga', 'Sale', 'product'),
(29, 5, 10, 7, '2021-04-08 11:27:17', 'Dark Blue, Green And Silver Saree', 'blue-green-sliver-saree', 'Dark Blue, Green And Silver Saree In Cotton With Striped Print All Over Online-1.jpg', 'Dark Blue, Green And Silver Saree In Cotton With Striped Print All Over Online-2.jpg', 'Dark Blue, Green And Silver Saree In Cotton With Striped Print All Over Online-3.jpg', 3312, 3312, '<ul class=\"description_list\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding-left: 15px; list-style: none; color: #333333; font-family: Roboto, sans-serif; font-size: 12px; background-color: rgba(255, 255, 255, 0.8);\">\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Dark blue, green and silver saree in cotton with striped print all over.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Paired with a matching unstitched blouse piece having length 0,90 meters.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Slight variation in color is possible due to digital photography.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Being rewarded as the most trusted brand our customers too believe we deliver same styles as promised on the website.</li>\r\n</ul>', '<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding-left: 15px; list-style: none; color: #333333; font-family: Roboto, sans-serif; font-size: 12px; background-color: rgba(255, 255, 255, 0.8);\">\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Color: Blue</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Fabric: Cotton</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Work: Print</li>\r\n</ul>', '\r\n\r\n', 'Saree', 'New', 'product'),
(30, 5, 11, 7, '2021-04-08 11:30:19', 'Dandelion Yellow Lehenga Choli', 'dandeliom-yellow-lehenga-choli', 'Dandelion Yellow Lehenga Choli And Off White Ruffle Jacket Online-1.jpg', 'Dandelion Yellow Lehenga Choli And Off White Ruffle Jacket Online-2.jpg', 'Dandelion Yellow Lehenga Choli And Off White Ruffle Jacket Online-3.jpg', 14940, 12699, '<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding-left: 0px; list-style: none; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.8);\">\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; border-bottom: 1px solid #eeeeee; padding: 6px 0px;\">\r\n<div class=\"content\" style=\"box-sizing: border-box; font-size: 12px; line-height: 1.3; padding: 10px 0px;\">\r\n<ul class=\"description_list\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding-left: 15px; list-style: none;\">\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Dandelion yellow lehenga choli in georgette with gotta lace embroidered waist in geometric pattern.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Matched with a sleeveless choli with sequins and zari work in geometric pattern.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Crafted with sweetheart neckline and length 15 inches.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Topped with off white ruffle jacket in georgette adorned with sequins buttis and zardozi embroidery.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">This piece comes with cancan.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Slight variation in color is possible.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Being rewarded as the most trusted brand our customers too believe we deliver same styles as promised on the website.</li>\r\n<li>&nbsp;</li>\r\n</ul>\r\n</div>\r\n</li>\r\n</ul>', '<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; padding-left: 0px; list-style: none; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.8);\">\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; border-bottom: 1px solid #eeeeee; padding: 6px 0px;\">\r\n<div class=\"content\" style=\"box-sizing: border-box; font-size: 12px; line-height: 1.3; padding: 10px 0px;\">\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding-left: 15px; list-style: none;\">\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Color: Yellow</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Fabric: Georgette</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Work: Embroidery, gotta lace, Sequins, Zari</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Sleeves: Flare Sleeves</li>\r\n<li>&nbsp;</li>\r\n</ul>\r\n</div>\r\n</li>\r\n</ul>', '\r\n\r\n', 'Lehenga', 'Sale', 'product'),
(31, 5, 10, 7, '2021-04-08 11:34:59', 'Ash Black Saree In Silk With Printed Patola', 'ash-black-saree-silk', 'Ash Black Saree In Silk With Printed Patola Motifs In Repeat Pattern Online-1.jpg', 'Ash Black Saree In Silk With Printed Patola Motifs In Repeat Pattern Online-2.jpg', 'Ash Black Saree In Silk With Printed Patola Motifs In Repeat Pattern Online-3.jpg', 3540, 2832, '<ul class=\"description_list\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding-left: 15px; list-style: none; color: #333333; font-family: Roboto, sans-serif; font-size: 12px; background-color: rgba(255, 255, 255, 0.8);\">\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Ash black saree in tussar silk with multicolor printed patola motifs in repeat pattern.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Trimmed with maroon thread tassels on the pallu.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Paired with a multicolor unstitched blouse piece in silk with printed patola buttis.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">The length of the blouse is 1.03 meters.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Slight variation in color is possible due to digital photography.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Being rewarded as the most trusted brand our customers too believe we deliver same styles as promised on the website.</li>\r\n</ul>', '<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding-left: 15px; list-style: none; color: #333333; font-family: Roboto, sans-serif; font-size: 12px; background-color: rgba(255, 255, 255, 0.8);\">\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Color: Black</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Fabric: Art Silk, Silk</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Work: Print</li>\r\n</ul>', '\r\n\r\n', 'Saree', 'Sale', 'product'),
(32, 5, 11, 7, '2021-04-08 11:38:42', 'Pineapple Yellow Skirt And Crop Top ', 'pineapple-yellow-skirt', 'Pineapple Yellow Skirt And Crop Top With Short Embellished Jacket Online-1.jpg', 'Pineapple Yellow Skirt And Crop Top With Short Embellished Jacket Online-2.jpg', 'Pineapple Yellow Skirt And Crop Top With Short Embellished Jacket Online-3.jpg', 32940, 26352, '<ul class=\"description_list\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding-left: 15px; list-style: none; color: #333333; font-family: Roboto, sans-serif; font-size: 12px; background-color: rgba(255, 255, 255, 0.8);\">\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Pineapple yellow skirt in georgette with sequins embellished buttis.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Paired with a matching crop top in raw silk adorned with beads and sequins embellished checks pattern.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Crafted sleeveless with round neckline and key hole cut back.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Topped with an organza short jacket embellished in scallop motifs.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">The length of the top is 13 inches.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">This piece comes with cancan.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">WASH CARE INSTRUCTION: Dry clean only.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Slight variation in color is possible.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Being rewarded as the most trusted brand our customers too believe we deliver same styles as promised on the website.</li>\r\n</ul>', '<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding-left: 15px; list-style: none; color: #333333; font-family: Roboto, sans-serif; font-size: 12px; background-color: rgba(255, 255, 255, 0.8);\">\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Color: Yellow</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Fabric: Georgette</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Work: Embellished, Sequins</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Clouser: Side Zip</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Neck Line: Round</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Sleeves: Sleeveless</li>\r\n</ul>', '\r\n\r\n', 'Lehenga', 'Sale', 'product'),
(33, 5, 10, 7, '2021-04-08 11:42:51', 'Gold Beige Saree In Organza', 'gold-beige-saree', 'Gold Beige Saree In Organza With Foil Printed Floral Buttis And Mirror Work On The Border Along With Unstitched Blouse Online-1.jpg', 'Gold Beige Saree In Organza With Foil Printed Floral Buttis And Mirror Work On The Border Along With Unstitched Blouse Online-2.jpg', 'Gold Beige Saree In Organza With Foil Printed Floral Buttis And Mirror Work On The Border Along With Unstitched Blouse Online-3.jpg', 7140, 5712, '<ul class=\"description_list\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding-left: 15px; list-style: none; color: #333333; font-family: Roboto, sans-serif; font-size: 12px; background-color: rgba(255, 255, 255, 0.8);\">\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Gold beige saree in organza with foil printed floral buttis and matching unstitched blouse.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">The saree is accentuated with a scalloped border adorned in mirror work.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">It comes with a plain unstitched blouse in organza fabric.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">The length of the blouse is 1.05 meters.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Slight variation in color is possible due to digital photography.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Being rewarded as the most trusted brand our customers too believe we deliver same styles as promised on the website.</li>\r\n</ul>', '<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding-left: 15px; list-style: none; color: #333333; font-family: Roboto, sans-serif; font-size: 12px; background-color: rgba(255, 255, 255, 0.8);\">\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Color: Beige, Gold</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Fabric: Organza</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Work: Embroidery, Border, Mirror, Print</li>\r\n</ul>', '\r\n\r\n\r\n\r\n', 'Saree', 'Sale', 'product'),
(34, 5, 11, 7, '2021-04-08 11:44:28', 'Moss Green Skirt And Peplum Top With Mirror', 'moss-green-skirt', 'Moss Green Skirt And Peplum Top With Mirror Abla Embroidery And Zigzag Cut Hem Online-1.jpg', 'Moss Green Skirt And Peplum Top With Mirror Abla Embroidery And Zigzag Cut Hem Online-2.jpg', 'Moss Green Skirt And Peplum Top With Mirror Abla Embroidery And Zigzag Cut Hem Online-3.jpg', 15540, 12432, '<ul class=\"description_list\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding-left: 15px; list-style: none; color: #333333; font-family: Roboto, sans-serif; font-size: 12px; background-color: rgba(255, 255, 255, 0.8);\">\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Moss green skirt and peplum top in crepe with mirror abla embroidery.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Designed with 3/4th sleeves with pleated frill on the cuffs, round neckline and cut out back.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Paired with a matching skirt in crepe in tiered silhouette.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Zigzag cut hemline adorned with abla work in chevron pattern.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Topped with a matching dupatta in georgette with weaved buttis and ruffle border.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">This piece comes with cancan.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Slight variation in color is possible.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Being rewarded as the most trusted brand our customers too believe we deliver same styles as promised on the website.</li>\r\n</ul>', '<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding-left: 15px; list-style: none; color: #333333; font-family: Roboto, sans-serif; font-size: 12px; background-color: rgba(255, 255, 255, 0.8);\">\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Color: Green</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Fabric: Crepe</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Work: Geometric, Mirror, Abla</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Clouser: Side Zip</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Neck Line: Round</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Sleeves: 3/4th Sleeve</li>\r\n</ul>', '\r\n\r\n', 'Lehenga', 'Sale', 'product'),
(35, 5, 10, 7, '2021-04-08 11:47:31', 'Midnight Teal Blue Saree In Organza', 'midnight-teal-blue-saree', 'Midnight Teal Blue Saree In Organza With Floral Print And Black Scalloped Lace Along With Unstitched Blouse Online-1.jpg', 'Midnight Teal Blue Saree In Organza With Floral Print And Black Scalloped Lace Along With Unstitched Blouse Online-2.jpg', 'Midnight Teal Blue Saree In Organza With Floral Print And Black Scalloped Lace Along With Unstitched Blouse Online-3.jpg', 7740, 7740, '<ul class=\"description_list\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding-left: 15px; list-style: none; color: #333333; font-family: Roboto, sans-serif; font-size: 12px; background-color: rgba(255, 255, 255, 0.8);\">\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Midnight teal blue saree in organza with floral print and matching unstitched blouse.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">The border of the saree is adorned with delicate black scalloped lace with resham and kundan work in floral motifs.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">It is paired with a matching unstitched blouse in crepe with similar lace and kundan work.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">The length of the blouse is 1.03 meters.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Slight variation in color is possible due to digital photography.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Being rewarded as the most trusted brand our customers too believe we deliver same styles as promised on the website.</li>\r\n</ul>', '<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding-left: 15px; list-style: none; color: #333333; font-family: Roboto, sans-serif; font-size: 12px; background-color: rgba(255, 255, 255, 0.8);\">\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Color: Blue, Teal</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Fabric: Organza</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Work: Border, Lace, Print</li>\r\n</ul>', '\r\n\r\n', 'Saree', 'New', 'product'),
(36, 5, 11, 7, '2021-04-08 11:49:41', 'Burgundy Tiered Skirt With Floral Print', 'burgundy-tiered-skirt', 'Burgundy Tiered Skirt With Floral Print And A Resham Embroidered Crop Top With Criss Cross Straps Online-1.jpg', 'Burgundy Tiered Skirt With Floral Print And A Resham Embroidered Crop Top With Criss Cross Straps Online-2.jpg', 'Burgundy Tiered Skirt With Floral Print And A Resham Embroidered Crop Top With Criss Cross Straps Online-3.jpg', 29940, 29940, '<ul class=\"description_list\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding-left: 15px; list-style: none; color: #333333; font-family: Roboto, sans-serif; font-size: 12px; background-color: rgba(255, 255, 255, 0.8);\">\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Burgundy tiered skirt and crop top in milano satin with resham flowers on waist and a contrasting gold frill on the hem.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">The crop top is enhanced with resham embroidered floral jaal along with sequins, cut dana and moti highlights.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Crafted sleeveless with a fancy plunging neckline with criss cross strap and back hook closure.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">It comes with a blush pink organza dupatta with resham embroidered floral motifs and accented with moti and cut dana.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">WASH CARE INSTRUCTION: Dry clean only.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Slight variation in color is possible due to digital photography.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Being rewarded as the most trusted brand our customers too believe we deliver same styles as promised on the website.</li>\r\n</ul>', '<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding-left: 15px; list-style: none; color: #333333; font-family: Roboto, sans-serif; font-size: 12px; background-color: rgba(255, 255, 255, 0.8);\">\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Color: Burgundy</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Fabric: Satin</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Work: Embroidery, Floral, Moti, Print, Resham</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Clouser: Back Hook-Eye</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Neck Line: Fancy Neckline</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Sleeves: Sleeveless</li>\r\n</ul>', '\r\n\r\n', 'Lehenga', 'New', 'product'),
(37, 5, 10, 7, '2021-04-08 11:53:14', 'Burgundy Red Saree In Pure Handloom Silk', 'burgundy-red-saree', 'Burgundy Red Saree In Pure Handloom Silk With Woven Checks And Golden Border Along With Unstitched Blouse Online-1.jpg', 'Burgundy Red Saree In Pure Handloom Silk With Woven Checks And Golden Border Along With Unstitched Blouse Online-2.jpg', 'Burgundy Red Saree In Pure Handloom Silk With Woven Checks And Golden Border Along With Unstitched Blouse Online-3.jpg', 4265, 4265, '<ul class=\"description_list\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding-left: 15px; list-style: none; color: #333333; font-family: Roboto, sans-serif; font-size: 12px; background-color: rgba(255, 255, 255, 0.8);\">\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Burgundy red saree in pure handloom silk with woven checks design and contrasting unstitched blouse.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">The border and pallu of the saree are enhanced with golden woven stripes and geometric design.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Trimmed with thread tassels on the pallu border.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">It is paired with a contrasting beige unstitched blouse with woven stripes.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">The length of the blouse is 1.04 meters.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Slight variation in color is possible due to digital photography.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Being rewarded as the most trusted brand our customers too believe we deliver same styles as promised on the website.</li>\r\n</ul>', '<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding-left: 15px; list-style: none; color: #333333; font-family: Roboto, sans-serif; font-size: 12px; background-color: rgba(255, 255, 255, 0.8);\">\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Color: Red, Burgundy</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Fabric: Handloom</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Work: Weave</li>\r\n</ul>', '\r\n\r\n', 'Saree', 'New', 'product'),
(38, 5, 11, 7, '2021-04-08 11:55:23', 'Beige And Taupe Shaded Skirt', 'beige-taupe-shaded-skirt', 'Beige And Taupe Shaded Skirt In Net With Sequins Work And Embellished Sleeveless Crop Top Online-1.jpg', 'Beige And Taupe Shaded Skirt In Net With Sequins Work And Embellished Sleeveless Crop Top Online-2.jpg', 'Beige And Taupe Shaded Skirt In Net With Sequins Work And Embellished Sleeveless Crop Top Online-3.jpg', 19152, 19152, '<ul class=\"description_list\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding-left: 15px; list-style: none; color: #333333; font-family: Roboto, sans-serif; font-size: 12px; background-color: rgba(255, 255, 255, 0.8);\">\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Beige and taupe shaded skirt in net with sequins work.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Teamed with a taupe crop top in net adorned with beads, zardozi and pearls in geometric pattern.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Trimmed with bead fringes on the hemline and pleated frill on the neck and sleeves.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Crafted sleeveless with round neckline and sheer cut out in the front and back.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Matched with a taupe net dupatta with pearl work and gotta patch border.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">The length of the crop top is 15 inches.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">This piece comes with cancan.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">WASH CARE INSTRUCTION: Dry clean only.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Slight variation in color is possible due to digital photography.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Being rewarded as the most trusted brand our customers too believe we deliver same styles as promised on the website.</li>\r\n</ul>', '<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding-left: 15px; list-style: none; color: #333333; font-family: Roboto, sans-serif; font-size: 12px; background-color: rgba(255, 255, 255, 0.8);\">\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Color: Beige, Taupe</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Fabric: Net</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Work: Embroidery, Sequins, Zardosi</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Clouser: Side Zip</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Neck Line: Round</li>\r\n<li style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 5px; list-style-type: disc; list-style-position: outside; border: 0px; line-height: normal; padding: 0px;\">Sleeves: Sleeveless</li>\r\n</ul>', '\r\n\r\n', 'Lehenga', 'New', 'product');

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
(5, 'Women', 'yes', 'Apple Red Saree In Organza With Bud Embroidered Floral Buttis And Pallu Along With Unstitched Blouse Online-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `recentlyviewed`
--

CREATE TABLE `recentlyviewed` (
  `viewed_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `view_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recentlyviewed`
--

INSERT INTO `recentlyviewed` (`viewed_id`, `customer_id`, `product_id`, `view_date`) VALUES
(116, 2, 28, '2021-04-08 13:18:23'),
(146, 2, 38, '2021-04-10 15:34:25'),
(147, 2, 34, '2021-04-10 15:40:29'),
(165, 2, 35, '2021-04-10 16:25:43'),
(168, 2, 30, '2021-04-10 16:25:57'),
(169, 2, 37, '2021-04-10 16:27:58'),
(172, 2, 33, '2021-04-10 16:28:10'),
(184, 3, 36, '2021-04-10 21:38:02'),
(196, 3, 37, '2021-04-10 21:46:39'),
(199, 3, 35, '2021-04-10 21:47:13'),
(206, 3, 32, '2021-04-10 21:48:12'),
(210, 3, 33, '2021-04-10 21:48:46'),
(213, 3, 38, '2021-04-10 21:49:26'),
(214, 3, 34, '2021-04-10 22:30:40'),
(217, 3, 30, '2021-04-10 22:31:33'),
(220, 3, 27, '2021-04-10 22:32:12');

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
(6, 0, 25),
(15, 3, 36),
(16, 3, 30);

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
-- Indexes for table `pairing`
--
ALTER TABLE `pairing`
  ADD PRIMARY KEY (`pair_id`);

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
-- Indexes for table `recentlyviewed`
--
ALTER TABLE `recentlyviewed`
  ADD PRIMARY KEY (`viewed_id`);

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
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  MODIFY `enquiry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pairing`
--
ALTER TABLE `pairing`
  MODIFY `pair_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `recentlyviewed`
--
ALTER TABLE `recentlyviewed`
  MODIFY `viewed_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

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
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
