-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2023 at 10:51 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `industry_globe`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL COMMENT 'ADMINS ID',
  `admin_name` varchar(64) NOT NULL,
  `admin_email` varchar(64) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_password` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `admin_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `admin_type` enum('Root Admin','Content Manager','Sales Manager','Technical Operator') NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `admin_name`, `admin_email`, `admin_image`, `admin_password`, `admin_status`, `admin_type`, `created_at`, `updated_at`) VALUES
(1, 'Nirjhor Anjum Sir', 'nirjhor@adnsl.net', 'ADMINIMAGE_20200706021804_nirjhoranjumsir.png', '1234567', 'Active', 'Root Admin', '2020-07-06 02:18:04', NULL),
(2, 'Md. Abdullah Al Mamun Roni', 'md.aamroni@hotmail.com', 'ADMINIMAGE_20200706021844_aamroni.png', '04974f51537a701bcdf340064418a10d3895dde1', 'Active', 'Root Admin', '2020-07-06 02:18:44', NULL),
(3, 'Jhon Doe', 'jhondoe@gmail.com', 'ADMINIMAGE_20200706021940_jhon.png', 'abc123', 'Active', 'Content Manager', '2020-07-06 02:19:40', NULL),
(4, 'Al Mamun', 'md.aamroni@yahoo.com', 'ADMINIMAGE_20200706022232_roni.jpg', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', 'Technical Operator', '2020-07-06 02:22:32', NULL),
(6, 'Danny', 'danny123@gmail.com', '', 'danny123456', 'Active', 'Content Manager', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL COMMENT 'CATEGORIES ID',
  `category_name` varchar(64) NOT NULL,
  `category_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'POWER TOOLS', 'Active', NULL, NULL),
(2, 'ELECTRICAL', 'Active', NULL, NULL),
(3, 'LANDSCAPING', 'Active', NULL, NULL),
(4, 'HOME DECOR', 'Active', NULL, NULL),
(5, 'HYDROLICS', 'Inactive', NULL, NULL),
(7, 'OFFICE SUPPLIES', 'Active', NULL, NULL),
(8, 'HYDROLICS', 'Active', NULL, NULL),
(9, 'HAND TOOLS', 'Active', NULL, NULL),
(10, 'ACCESSORIES', 'Inactive', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL COMMENT 'CONTACTS ID',
  `contacts_name` varchar(64) NOT NULL,
  `contacts_email` varchar(64) NOT NULL,
  `contacts_phone` varchar(32) NOT NULL,
  `contacts_overview` varchar(512) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `contacts_name`, `contacts_email`, `contacts_phone`, `contacts_overview`, `created_at`, `updated_at`) VALUES
(1, 'Jhon Doe', 'jhondoe@hotmail.com', '01645770422', 'Hi there,\r\nAll in all it was a really easy approach to creating your online store. I have complete control over how and what I want placed within my site, with the additional benefit of being able to change anything as and when I want.', '2020-07-06 10:20:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL COMMENT 'CUSTOMERS ID',
  `customer_name` varchar(128) NOT NULL,
  `customer_email` varchar(64) NOT NULL,
  `customer_mobile` varchar(16) NOT NULL,
  `customer_address` varchar(256) NOT NULL,
  `customer_password` varchar(128) NOT NULL,
  `customer_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `customer_email`, `customer_mobile`, `customer_address`, `customer_password`, `customer_status`, `created_at`, `updated_at`) VALUES
(1, 'Md. Kabir Khan', 'kabirkhan@gmail.com', '01645770422', 'Rampura-1219, Dhaka, Bangladesh', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', '2020-07-06 08:40:58', NULL),
(2, 'Jhon Doe', 'jhondoe@gmail.com', '01645770422', 'Panthapath-1205, Dhaka, Bangladesh', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', '2020-07-06 08:54:22', NULL),
(3, 'Al Mamun Roni', 'almamunroni@gmail.com', '01645770422', 'Chasara-1405, Narayanganj, Bangladesh', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', '2020-07-06 08:57:10', NULL),
(4, 'Nirjhor Anjum', 'nirjhorsir@gmail.com', '01645770422', 'Dhaka-1206, Bangladesh', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', '2020-07-06 09:37:53', NULL),
(8, 'Jobayer Tuser', 'jobayertuser@gmail.com', '01645770422', 'Mohammadpur-1216, Dhaka, Bangladesh', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', '2020-07-06 09:48:31', NULL),
(9, 'Ahsan Habib', 'ahsanhabib@gmail.com', '01645770422', 'Dhaka, Bangladesh', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', '2020-07-06 09:53:19', NULL),
(13, 'Ahsan Habib', 'ahsanhabib@gmail.com', '01645770422', 'Dhaka, Bangladesh', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', '2020-07-06 09:55:57', NULL),
(14, 'Ahsan Habib', 'ahsanhabib@gmail.com', '01645770422', 'Dhaka, Bangladesh', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', '2020-07-06 09:56:40', NULL),
(15, 'Danny Vas', 'danny@gmail.com', '9918058319', 'Danny ', '91bab48afb795cf907ae6c9664bb210e55323f69', 'Active', '2023-06-27 11:52:10', NULL),
(16, 'Danny DAN', 'danny1@gmail.com', '9918058319', 'DAnny dan', '5361649301d46bdcf803e62735998b240d25948a', 'Active', '2023-06-27 15:50:59', NULL),
(17, 'Danny Dan', 'dannydan@gmail.com', '1234567893', 'Dan villa', '5361649301d46bdcf803e62735998b240d25948a', 'Active', '2023-07-04 18:01:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int(11) NOT NULL COMMENT 'DELIVERIES ID',
  `customer_id` int(11) NOT NULL,
  `shipping_charge` enum('50','120') NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` int(11) NOT NULL COMMENT 'DISCOUNT ID',
  `discount_code` varchar(256) NOT NULL,
  `price_discount_amount` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL COMMENT 'INVOICE ID',
  `invoice_id` varchar(128) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `transaction_amount` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_id`, `customer_id`, `shipping_id`, `order_id`, `transaction_amount`, `created_at`, `updated_at`) VALUES
(1, 'COD#86237', 3, 1, 1, 9470, '2020-07-06 09:04:10', NULL),
(2, '20070695548Tp5hxKeh1HPezyg', 9, 2, 2, 21078, '2020-07-06 10:02:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL COMMENT 'NEWSLETTER ID',
  `newsletter_email` varchar(128) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL COMMENT 'ORDERS ID',
  `customer_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `sub_total` double NOT NULL,
  `tax` double NOT NULL,
  `delivery_charge` int(11) NOT NULL,
  `discount_amount` double NOT NULL,
  `grand_total` double NOT NULL,
  `payment_method` enum('SSL COMMERZ','PayPal','Cash On Delivery') NOT NULL DEFAULT 'Cash On Delivery',
  `transaction_id` varchar(256) NOT NULL,
  `transaction_status` enum('Paid','Unpaid') NOT NULL DEFAULT 'Paid',
  `order_item_status` enum('Pending','Processing','Completed','Cancelled') NOT NULL DEFAULT 'Pending',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_date`, `sub_total`, `tax`, `delivery_charge`, `discount_amount`, `grand_total`, `payment_method`, `transaction_id`, `transaction_status`, `order_item_status`, `created_at`, `updated_at`) VALUES
(1, 3, '2020-07-06 09:02:32', 8698, 652.35, 120, 0, 9470, 'Cash On Delivery', 'COD#3', 'Unpaid', 'Pending', '2020-07-06 09:02:32', NULL),
(2, 9, '2020-07-06 10:00:01', 19496, 1462.2, 120, 0, 21078, 'SSL COMMERZ', '20070695548h40YeCxaiNzdD8D', 'Paid', 'Pending', '2020-07-06 10:00:01', NULL),
(3, 16, '2023-06-27 15:57:47', 1799, 134.925, 120, 0, 2054, 'Cash On Delivery', '', 'Paid', 'Pending', '2023-06-27 15:57:47', NULL),
(4, 17, '2023-07-04 18:18:16', 13797, 1034.775, 50, 0, 14882, 'Cash On Delivery', '', 'Paid', 'Pending', '2023-07-04 18:18:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL COMMENT 'ORDER ITEMS ID',
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_price` double NOT NULL,
  `prod_quantity` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `customer_id`, `order_id`, `product_id`, `product_price`, `prod_quantity`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 38, 5899, 1, '2020-07-06 09:02:32', NULL),
(2, 3, 1, 20, 2799, 1, '2020-07-06 09:02:32', NULL),
(3, 9, 2, 17, 4799, 1, '2020-07-06 10:00:01', NULL),
(4, 9, 2, 39, 7499, 1, '2020-07-06 10:00:01', NULL),
(5, 9, 2, 45, 4899, 1, '2020-07-06 10:00:01', NULL),
(6, 9, 2, 48, 2299, 1, '2020-07-06 10:00:01', NULL),
(7, 16, 3, 9, 1799, 1, '2023-06-27 15:57:47', NULL),
(8, 17, 4, 12, 4599, 3, '2023-07-04 18:18:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL COMMENT 'PAGES ID',
  `page_title` text NOT NULL,
  `page_content` text NOT NULL,
  `page_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL COMMENT 'PRODUCTS ID',
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `product_name` varchar(128) NOT NULL,
  `product_summary` text NOT NULL,
  `product_details` text NOT NULL,
  `product_master_image` text NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_price` double NOT NULL,
  `product_discount_price` double NOT NULL,
  `discount_start` datetime NOT NULL,
  `discount_ends` datetime NOT NULL,
  `product_status` enum('In Stock','Out of Stock') NOT NULL DEFAULT 'In Stock',
  `product_featured` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `product_tags` varchar(512) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `products_image_one` text DEFAULT NULL,
  `products_image_two` text DEFAULT NULL,
  `products_image_three` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `product_name`, `product_summary`, `product_details`, `product_master_image`, `product_quantity`, `product_price`, `product_discount_price`, `discount_start`, `discount_ends`, `product_status`, `product_featured`, `product_tags`, `created_at`, `updated_at`, `products_image_one`, `products_image_two`, `products_image_three`) VALUES
(2, 10, 11, 'MEN\'S BRACELET', '									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>								', '									<div>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</div><div><br></div><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>								', 'PRODUCT_20200706030429_bracelet(2).jpg', 1, 699, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'NO', 'bracelet,mens bracelet,bracelet collection 2020', '2020-07-06 03:04:29', NULL, 'PRODUCTONE_20200706030429_bracelet(2).jpg', 'PRODUCTTWO_20200706030429_bracelet(2).jpg', 'PRODUCTTHREE_20200706030429_bracelet(2).jpg'),
(3, 10, 11, 'BRACELET 2020', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', 'PRODUCT_20200706030627_bracelet(4).jpg', 1, 799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'bracelet,mens bracelet', '2020-07-06 03:06:27', NULL, 'PRODUCTONE_20200706030627_bracelet(4).jpg', 'PRODUCTTWO_20200706030627_bracelet(4).jpg', 'PRODUCTTHREE_20200706030627_bracelet(4).jpg'),
(4, 10, 11, 'EXCLUSIVE BRACELET 2020', '									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>								', '									<div>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</div><div><br></div><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>								', 'PRODUCT_20200706030734_bracelet(3).jpg', 2, 699, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'bracelet,mens bracelet', '2020-07-06 03:07:34', NULL, 'PRODUCTONE_20200706030734_bracelet(3).jpg', 'PRODUCTTWO_20200706030734_bracelet(3).jpg', 'PRODUCTTHREE_20200706030734_bracelet(3).jpg'),
(5, 9, 9, 'WRENCHES', '									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>								', '									<div>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</div><div><br></div><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>								', '7_1_1.jpg', 1, 1599, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'wrenche', '2020-07-06 03:10:47', NULL, '7_1_1.jpg', '7_1_1.jpg', '7_1_1.jpg'),
(6, 9, 9, 'WRENCHES', '									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>								', '									<div>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</div><div><br></div><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>								', '7_1_2.jpg', 1, 1299, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'wrenche', '2020-07-06 03:11:32', NULL, '7_1_2.jpg', '7_1_2.jpg', '7_1_2.jpg'),
(7, 9, 10, 'WRENCHES', '									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>								', '									<div>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</div><div><br></div><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>								', '7_1_3.jpg', 1, 3699, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'wrenche', '2020-07-06 03:13:00', NULL, '7_1_3.jpg', '7_1_3.jpg', '7_1_3.jpg'),
(8, 1, 1, 'CORDLESS POWERTOOL', '									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>								', '									<div>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</div><div><br></div><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>								', '1_1_1.jpg', 2, 1899, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'YES', 'cordless tools, drill', '2020-07-06 03:15:59', NULL, '1_1_1.jpg', '1_1_1.jpg', '1_1_1.jpg'),
(9, 1, 1, 'CORDLESS POWERTOOL', '									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>								', '									<div>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</div><div><br></div><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.<br></li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>								', '1_1_2.jpg', 1, 1799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'YES', 'cordless tools, drill', '2020-07-06 03:16:58', NULL, '1_1_2.jpg', '1_1_2.jpg', '1_1_2.jpg'),
(10, 1, 1, 'CORDLESS POWERTOOL', '									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>								', '									<div>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</div><div><br></div><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>								', '1_1_3.jpg', 2, 1899, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'YES', 'cordless tools, drill', '2020-07-06 03:17:54', NULL, '1_1_3.jpg', '1_1_3.jpg', '1_1_3.jpg'),
(11, 1, 1, 'CORDLESS POWERTOOL', '									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>								', '									<div>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</div><div><br></div><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>								', '1_1_4.jpg', 1, 1499, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'cordless tools, drill', '2020-07-06 03:18:45', NULL, '1_1_4.jpg', '1_1_4.jpg', '1_1_4.jpg'),
(12, 1, 6, 'GRINDERS', '									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>								', '									<div>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</div><div><br></div><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>								', '1_6_1.jpg', 2, 4599, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'YES', 'grinder', '2020-07-06 03:21:08', NULL, '1_6_1.jpg', '1_6_1.jpg', '1_6_1.jpg'),
(13, 1, 6, 'GRINDERS', '									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>								', '									<div>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</div><div><br></div><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>								', '1_6_2.jpg', 1, 4899, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'YES', 'grinder', '2020-07-06 03:22:02', NULL, '1_6_2.jpg', '1_6_2.jpg', '1_6_2.jpg'),
(14, 1, 6, 'GRINDERS', '									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>								', '									<div>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</div><div><br></div><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>								', '1_6_3.jpg', 1, 4799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'NO', 'grinder', '2020-07-06 03:22:58', NULL, '1_6_3.jpg', '1_6_3.jpg', '1_6_3.jpg'),
(15, 1, 6, 'GRINDERS', '									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>								', '									<div>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</div><div><br></div><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>								', '1_6_4.jpg', 1, 4899, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'YES', 'grinder', '2020-07-06 03:23:56', NULL, '1_6_4.jpg', '1_6_4.jpg', '1_6_4.jpg'),
(16, 1, 2, 'DRILLS', '									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>								', '									<div>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</div><div><br></div><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>								', '1_2_1.jpg', 1, 5799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'YES', 'drill', '2020-07-06 03:24:45', NULL, '1_2_1.jpg', '1_2_1.jpg', '1_2_1.jpg'),
(17, 1, 2, 'DRILLS', '									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>								', '									<div>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</div><div><br></div><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>								', '1_2_2.jpg', 1, 4799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'drill', '2020-07-06 03:25:41', NULL, '1_2_2.jpg', '1_2_2.jpg', '1_2_2.jpg'),
(18, 1, 2, 'DRILLS', '									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>								', '									<div>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</div><div><br></div><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>								', '1_2_3.jpg', 1, 4799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'drill', '2020-07-06 03:26:28', NULL, '1_2_3.jpg', '1_2_3.jpg', '1_2_3.jpg'),
(19, 1, 2, 'DRILLS', '									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>								', '									<div>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</div><div><br></div><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>								', '1_2_4.jpg', 1, 4699, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'drill', '2020-07-06 03:27:36', NULL, '1_2_4.jpg', '1_2_4.jpg', '1_2_4.jpg'),
(20, 1, 5, 'ELECTRIC SAW', '									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>								', '									<div>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</div><div><br></div><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>								', '1_5_1.jpg', 2, 2799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'YES', 'saw, electric saw', '2020-07-06 03:28:52', NULL, '1_5_1.jpg', '1_5_1.jpg', '1_5_1.jpg'),
(21, 1, 5, 'ELECTRIC SAW', '									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>								', '									<div>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</div><div><br></div><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>								', '1_5_2.jpg', 1, 2699, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'YES', 'saw, electric saw', '2020-07-06 03:29:39', NULL, '1_5_2.jpg', '1_5_2.jpg', '1_5_2.jpg'),
(22, 1, 5, 'ELECTRIC SAW', '									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>								', '									<div>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</div><div><br></div><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>								', '1_5_3.jpg', 1, 2499, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'YES', 'saw, electric saw', '2020-07-06 03:30:44', NULL, '1_5_3.jpg', '1_5_3.jpg', '1_5_3.jpg'),
(23, 1, 5, 'ELECTRIC SAW', '									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>								', '									<div>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</div><div><br></div><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>								', '1_5_4.jpg', 1, 2699, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'saw, electric saw', '2020-07-06 03:31:34', NULL, '1_5_4.jpg', '1_5_4.jpg', '1_5_4.jpg'),
(24, 1, 4, 'WRENCHES', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '1_4_1.jpg', 1, 799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'NO', 'wrenche', '2020-07-06 04:11:54', NULL, '1_4_1.jpg', '1_4_1.jpg', '1_4_1.jpg'),
(25, 1, 4, 'WRENCHES', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '1_4_2.jpg', 1, 799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'wrenche', '2020-07-06 04:13:01', NULL, '1_4_2.jpg', '1_4_2.jpg', '1_4_2.jpg'),
(26, 1, 4, 'WRENCHES', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '1_4_3.jpg', 2, 799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'wrenche', '2020-07-06 04:14:33', NULL, '1_4_3.jpg', '1_4_3.jpg', '1_4_3.jpg'),
(27, 1, 4, 'WRENCHES', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '1_4_4.jpg', 1, 799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'wrenche', '2020-07-06 04:15:27', NULL, '1_4_4.jpg', '1_4_4.jpg', '1_4_4.jpg'),
(28, 1, 3, 'CUTTERS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '1_3_1.jpg', 1, 1899, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'NO', 'cutter', '2020-07-06 04:17:03', NULL, '1_3_1.jpg', '1_3_1.jpg', '1_3_1.jpg'),
(29, 1, 3, 'CUTTERS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '1_3_2.jpg', 2, 1899, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'cutter', '2020-07-06 04:18:06', NULL, '1_3_2.jpg', '1_3_2.jpg', '1_3_2.jpg'),
(30, 1, 3, 'CUTTERS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '1_3_3.jpg', 1, 1799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'cutter', '2020-07-06 04:19:05', NULL, '1_3_3.jpg', '1_3_3.jpg', '1_3_3.jpg'),
(34, 8, 7, 'HYDROLIC JACKS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '6_1_1.jpg', 1, 5899, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'NO', 'jack, hydrolic jack', '2020-07-06 04:23:24', NULL, '6_1_1.jpg', '6_1_1.jpg', '6_1_1.jpg'),
(35, 8, 7, 'HYDROLIC JACKS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '6_1_2.jpg', 1, 5899, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'NO', 'jack, hydrolic jack', '2020-07-06 04:25:05', NULL, '6_1_2.jpg', '6_1_2.jpg', '6_1_3.jpg'),
(37, 8, 7, 'HYDROLIC JACKS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '6_1_3.jpg', 1, 6799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'NO', 'jack, hydrolic jack', '2020-07-06 04:26:57', NULL, '6_1_3.jpg', '6_1_3.jpg', '6_1_3.jpg'),
(38, 8, 7, 'HYDROLIC JACKS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '6_1_4.jpg', 1, 5899, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'NO', 'jack, hydrolic jack', '2020-07-06 04:27:43', NULL, '6_1_4.jpg', '6_1_4.jpg', '6_1_4.jpg'),
(39, 8, 8, 'HYDROLIC SHOCKS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '6_2_1.jpg', 1, 7499, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'NO', 'shocks, hydrolic shocks', '2020-07-06 04:28:35', NULL, '6_2_1.jpg', '6_2_1.jpg', '6_2_1.jpg'),
(43, 8, 8, 'HYDROLIC SHOCKS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '6_2_2.jpg', 1, 4799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'shocks, hydrolic shocks', '2020-07-06 04:36:18', NULL, '6_2_2.jpg', '6_2_2.jpg', '6_2_2.jpg'),
(45, 8, 8, 'HYDROLIC SHOCKS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '6_2_3.jpg', 1, 4899, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'YES', 'shocks, hydrolic shocks', '2020-07-06 04:37:56', NULL, '6_2_3.jpg', '6_2_3.jpg', '6_2_3.jpg'),
(48, 2, 17, 'CIRCUIT BREAKERS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '2_6_1.jpg', 1, 2299, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'NO', 'long dress', '2020-07-06 04:45:36', NULL, '2_6_1.jpg', '2_6_1.jpg', '2_6_1.jpg'),
(49, 2, 17, 'CIRCUIT BREAKERS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '2_6_2.jpg', 1, 1799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'long dress', '2020-07-06 04:46:22', NULL, '2_6_2.jpg', '2_6_2.jpg', '2_6_2.jpg'),
(50, 2, 16, 'AMF PANEL', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '2_5_1.jpg', 1, 2499, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'fashion,womens fashion', '2020-07-06 04:47:33', NULL, '2_5_1.jpg', '2_5_1.jpg', '2_5_1.jpg'),
(51, 2, 16, 'AMF PANEL', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '2_5_2.jpg', 1, 2499, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'fashion', '2020-07-06 04:48:28', NULL, '2_5_2.jpg', '2_5_2.jpg', '2_5_2.jpg'),
(52, 2, 16, 'AMF PANEL', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '2_5_3.jpg', 1, 2799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'NO', 'fashion collection', '2020-07-06 04:50:32', NULL, '2_5_3.jpg', '2_5_3.jpg', '2_5_3.jpg'),
(53, 2, 16, 'AMF PANEL', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '2_5_4.jpg', 1, 3499, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'fashion', '2020-07-06 04:51:32', NULL, '2_5_4.jpg', '2_5_4.jpg', '2_5_4.jpg'),
(54, 2, 17, 'CIRCUIT BREAKERS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '2_6_3.jpg', 1, 2699, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'long dress', '2020-07-06 04:52:07', NULL, '2_6_3.jpg', '2_6_3.jpg', '2_6_3.jpg'),
(55, 2, 17, 'CIRCUIT BREAKERS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '2_6_4.jpg', 1, 2699, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'long dress', '2020-07-06 04:53:13', NULL, '2_6_4.jpg', '2_6_4.jpg', '2_6_4.jpg'),
(56, 2, 13, 'STABLIZERS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '2_2_1.jpg', 1, 3699, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'NO', 'salwar kamiz,kamiz', '2020-07-06 04:54:55', NULL, '2_2_1.jpg', '2_2_1.jpg', '2_2_1.jpg');
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `product_name`, `product_summary`, `product_details`, `product_master_image`, `product_quantity`, `product_price`, `product_discount_price`, `discount_start`, `discount_ends`, `product_status`, `product_featured`, `product_tags`, `created_at`, `updated_at`, `products_image_one`, `products_image_two`, `products_image_three`) VALUES
(57, 2, 13, 'STABLIZERS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '2_2_2.jpg', 1, 3499, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'kamiz,exclusive', '2020-07-06 04:55:53', NULL, '2_2_2.jpg', '2_2_2.jpg', '2_2_2.jpg'),
(58, 2, 13, 'STABLIZERS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '2_2_3.jpg', 1, 2699, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'kamiz', '2020-07-06 04:56:36', NULL, '2_2_3.jpg', '2_2_3.jpg', '2_2_3.jpg'),
(59, 2, 13, 'STABLIZERS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '2_2_4.jpg', 1, 3299, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'NO', 'kamiz', '2020-07-06 04:57:24', NULL, '2_2_4.jpg', '2_2_4.jpg', '2_2_4.jpg'),
(62, 2, 12, 'GENERATORS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '2_1_1.jpg', 1, 4999, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'sharee', '2020-07-06 05:00:37', NULL, '2_1_1.jpg', '2_1_1.jpg', '2_1_1.jpg'),
(63, 2, 12, 'GENERATORS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '2_1_2.jpg', 1, 3499, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'YES', 'sharee', '2020-07-06 05:01:36', NULL, '2_1_2.jpg', '2_1_2.jpg', '2_1_2.jpg'),
(64, 2, 12, 'GENERATORS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '2_1_3.jpg', 1, 3799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'YES', 'sharee', '2020-07-06 05:02:38', NULL, '2_1_3.jpg', '2_1_3.jpg', '2_1_3.jpg'),
(65, 2, 12, 'GENERATORS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', '2_1_4.jpg', 2, 3199, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'sharee', '2020-07-06 05:04:45', NULL, '2_1_4.jpg', '2_1_4.jpg', '2_1_4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(11) NOT NULL COMMENT 'SHIPPING ID',
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `shipcstmr_name` varchar(128) NOT NULL,
  `shipcstmr_mobile` varchar(32) NOT NULL,
  `shipcstmr_profession` varchar(256) DEFAULT NULL,
  `shipcstmr_streetadd` varchar(256) NOT NULL,
  `shipcstmr_city` varchar(64) NOT NULL,
  `shipcstmr_zip` varchar(6) NOT NULL,
  `shipcstmr_country` varchar(64) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `customer_id`, `order_id`, `shipcstmr_name`, `shipcstmr_mobile`, `shipcstmr_profession`, `shipcstmr_streetadd`, `shipcstmr_city`, `shipcstmr_zip`, `shipcstmr_country`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Firoz Ahmed', '01645770422', 'Graphics Designer', 'Police Line, Panchabati', 'Fatullah', '1405', 'Bangladesh', '2020-07-06 09:03:55', NULL),
(2, 9, 2, 'Shahnaz Khanam', '01645770422', 'Housewife', 'Main Road # 2/B', 'Baridhara', '1406', 'Bangladesh', '2020-07-06 10:02:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shopcarts`
--

CREATE TABLE `shopcarts` (
  `id` int(11) NOT NULL COMMENT 'SHOPCARTS ID',
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shopcarts`
--

INSERT INTO `shopcarts` (`id`, `customer_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(8, 16, 37, 1, '2023-06-27 17:48:06', NULL),
(15, 17, 8, 5, '2023-07-05 12:45:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL COMMENT 'SLIDER ID',
  `slider_title` varchar(128) NOT NULL,
  `slider_file` text NOT NULL,
  `slider_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `slider_sequence` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `slider_title`, `slider_file`, `slider_status`, `slider_sequence`, `created_at`, `updated_at`) VALUES
(1, '', 'SLIDER_20200706022832_slider.png', 'Active', 1, NULL, NULL),
(2, '', 'SLIDER_20200706022906_slid63er.png', 'Active', 2, NULL, NULL),
(3, '', 'SLIDER_20200706022921_slid3er.png', 'Active', 3, NULL, NULL),
(4, '', 'SLIDER_20200706022936_slide1r.png', 'Active', 4, NULL, NULL),
(5, '', 'SLIDER_20200706023006_sli74der.png', 'Active', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL COMMENT 'SUBCATEGORIES ID',
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(128) NOT NULL,
  `subcategory_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `subcategory_banner` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `subcategory_status`, `subcategory_banner`, `created_at`, `updated_at`) VALUES
(1, 1, 'CORDLESS POWER TOOLS', 'Active', 'SUBCATBANNER_20200706024241_banner(5).jpg', '2020-07-06 02:42:41', NULL),
(2, 1, 'DRILLS', 'Active', 'SUBCATBANNER_20200706024241_banner(5).jpg', '2020-07-06 02:44:06', NULL),
(3, 1, 'CUTTERS', 'Active', 'SUBCATBANNER_20200706024241_banner(5).jpg', '2020-07-06 02:44:37', NULL),
(4, 1, 'WRENCHES', 'Active', 'SUBCATBANNER_20200706024241_banner(5).jpg', '2020-07-06 02:45:03', NULL),
(5, 1, 'SAW & CHASERS', 'Active', 'SUBCATBANNER_20200706024241_banner(5).jpg', '2020-07-06 02:45:27', NULL),
(6, 1, 'GRINDERS', 'Active', 'SUBCATBANNER_20200706024241_banner(5).jpg', '2020-07-06 02:45:42', NULL),
(7, 8, 'HYDROLIC JACKS', 'Active', 'SUBCATBANNER_20200706024602_banner(5).jpg', '2020-07-06 02:46:02', NULL),
(8, 8, 'HYDROLIC SHOCKS', 'Active', 'SUBCATBANNER_20200706024618_banner(9).jpg', '2020-07-06 02:46:18', NULL),
(9, 9, 'WRENCHES', 'Active', 'SUBCATBANNER_20200706024821_banner(2).jpg', '2020-07-06 02:48:21', NULL),
(10, 9, 'TOOL KIT SETS', 'Active', 'SUBCATBANNER_20200706024835_banner(2).jpg', '2020-07-06 02:48:35', NULL),
(11, 10, 'BRACELET', 'Active', 'SUBCATBANNER_20200706024914_banner(5).jpg', '2020-07-06 02:49:14', NULL),
(12, 2, 'GENERATORS', 'Active', 'SUBCATBANNER_20200706025014_banner(8).jpg', '2020-07-06 02:50:14', NULL),
(13, 2, 'STABILIZERS', 'Active', 'SUBCATBANNER_20200706025035_banner(7).jpg', '2020-07-06 02:50:35', NULL),
(14, 2, 'CABLES & WIRES', 'Active', 'SUBCATBANNER_20200706025048_banner(8).jpg', '2020-07-06 02:50:48', NULL),
(15, 2, 'SWITCHGEAR', 'Active', 'SUBCATBANNER_20200706025120_banner(7).jpg', '2020-07-06 02:51:20', NULL),
(16, 2, 'AMF PANEL', 'Active', 'SUBCATBANNER_20200706025140_banner(9).jpg', '2020-07-06 02:51:40', NULL),
(17, 2, 'CIRCUIT BREAKERS', 'Active', 'SUBCATBANNER_20200706025312_banner(9).jpg', '2020-07-06 02:53:12', NULL),
(18, 3, 'LAWN MOWER', 'Active', 'SUBCATBANNER_20200706034633_banner(6).jpg', '2020-07-06 03:46:33', NULL),
(19, 3, 'EARTH AUGER', 'Active', 'SUBCATBANNER_20200706034651_banner(8).jpg', '2020-07-06 03:46:51', NULL),
(20, 3, 'SPRAYERS', 'Active', 'SUBCATBANNER_20200706034723_banner(4).jpg', '2020-07-06 03:47:23', NULL),
(21, 4, 'FURNITURES', 'Active', 'SUBCATBANNER_20200706034835_banner(9).jpg', '2020-07-06 03:48:35', NULL),
(22, 5, 'HYDROLIC JACKS', 'Active', 'SUBCATBANNER_20200706034901_banner(1).jpg', '2020-07-06 03:49:01', NULL),
(23, 5, 'SHOCK ABSORBERS', 'Active', 'SUBCATBANNER_20200706034914_banner(9).jpg', '2020-07-06 03:49:14', NULL),
(24, 7, 'OFFICE FURNITURE', 'Active', 'SUBCATBANNER_20200706035003_banner(2).jpg', '2020-07-06 03:50:03', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `shipping_id` (`shipping_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `subcategory_id` (`subcategory_id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `shopcarts`
--
ALTER TABLE `shopcarts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ADMINS ID', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CATEGORIES ID', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CONTACTS ID', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CUSTOMERS ID', AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'DELIVERIES ID', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'DISCOUNT ID';

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'INVOICE ID', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'NEWSLETTER ID';

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ORDERS ID', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ORDER ITEMS ID', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PAGES ID';

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PRODUCTS ID', AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'SHIPPING ID', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shopcarts`
--
ALTER TABLE `shopcarts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'SHOPCARTS ID', AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'SLIDER ID', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'SUBCATEGORIES ID', AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD CONSTRAINT `deliveries_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `deliveries_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoices_ibfk_2` FOREIGN KEY (`shipping_id`) REFERENCES `shippings` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoices_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `shippings_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `shopcarts`
--
ALTER TABLE `shopcarts`
  ADD CONSTRAINT `shopcarts_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `shopcarts_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
