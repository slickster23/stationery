-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2021 at 09:33 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(1, 'About Us - Our Story', 'ADAMBAKKAM STATIONERY , is your next door neighbour store. With over 8,000 everyday and specialist office products to choose from, we also promote home made products with recycling as a core ideology we think that you will enjoy shopping on our website.', 'We are small scale startup in its nascent stage, we are just your regular stationery store. Leveraging on our industry experience, we are engaged in trading a wide range of School, Office & Business Stationery Products. Products we offer and supply are well known for quality & authenticity. we drive to promote home made products with recycling as a core ideology. We are in process of reaching out to small scale businesses that are into paper and plastic recycling and delivering recycled products. We aim to offer the best value stationery online, so you can be sure of getting top quality items also which are at prices that can’t be beaten. Combined with our free next day delivery on orders over Rs.300/-, why go anywhere else for your stationery and office supplies!');
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
(2, 'Administrator', 'admin@mail.com', 'Password@123', 'user-profile-min.png', '7777775500', 'India', 'Front-End Developer', ' loremThe lorem ipsum gets its name from the Latin phrase Neque porro quisquam est qui');
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
(2, 'Feminine', 'no', 'feminelg.png'),
(3, 'Kids', 'no', 'kidslg.jpg'),
(4, 'Others', 'yes', 'othericon.png'),
(5, 'Men', 'yes', 'malelg.png');

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
(1, 'ecomstore@mail.com', 'Contact  To Us', 'If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.');

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

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(5, 8, 'Sale', '10', 'CASTRO', 2, 1),
(6, 14, 'Sale', '65', 'CODEASTRO', 3, 1);

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
(2, 'user', 'user@ave.com', '123', 'United State', 'New York', '0092334566931', 'new york', 'user.jpg', '::1', ''),
(3, 'Demo Customer', 'demo@customer.com', 'Password123', 'DemoCountry', 'DemoCity', '700000000', 'DemoAddress', 'sample_image.jpg', '::1', ''),
(4, 'Thomas', 'thomas@demo.com', 'Password123', 'One Country', 'One City', '777777777', '111 Address', 'sample_img360.png', '::1', '1427053935'),
(5, 'Fracis', 'test@customer.com', 'Password123', 'US', 'Demo City', '780000000', '112 Bleck Street', 'userav-min.png', '::1', '1634138674'),
(6, 'Sample Customer', 'customer@mail.com', 'Password123', 'Sample Country', 'Sample City', '7800000000', 'Sample Address', 'user-icn-min.png', '::1', '174829126');

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

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `order_date`, `order_status`) VALUES
(17, 2, 100, 1715523401,  '2017-02-20 08:21:42', 'pending'),
(23, 3, 20, 1762810884, , '2021-09-14 08:35:57', 'Complete'),
(24, 4, 100, 1972602052, '2021-09-14 16:37:52', 'Complete'),
(25, 4, 90, 2008540778,  '2021-09-14 16:43:15', 'pending'),
(27, 5, 120, 2138906686, '2021-09-15 03:18:41', 'Complete'),
(28, 5, 180, 361540113,  '2021-09-15 03:25:42', 'Complete'),
(29, 3, 100, 858195683,  '2021-09-15 03:14:01', 'Complete'),
(31, 6, 245, 901707655, '2021-09-15 03:52:18', 'Complete'),
(32, 6, 75, 2125554712, '2021-09-15 03:52:58', 'pending');

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
(2, 'Natraj pencil', 'no', 'data:image/jpeg;base64,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'),
(3, 'Apsara pencil', 'no', 'niketransl.png'),
(4, 'Scissors', 'no', 'pplg.png'),
(5, 'Fevicol', 'no', 'lacostelg.png'),
(7, 'Pilot pens', 'no', 'polobn.jpg'),
(8, 'Fountain pens', 'no', 'sample_img360.png');

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

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(2, 1607603019, 447, 'UBL/Omni', 5678, 33, '11/1/2016'),
(3, 314788500, 345, 'UBL/Omni', 443, 865, '11/1/2016'),
(4, 6906, 400, 'Western Union', 101025780, 696950, 'January 1'),
(5, 10023, 20, 'Bank Code', 1000010101, 6969, '09/14/2021'),
(6, 69088, 100, 'Bank Code', 1010101022, 88669, '09/14/2021'),
(7, 1835758347, 480, 'Western Union', 1785002101, 66990, '09-04-2021'),
(8, 1835758347, 480, 'Bank Code', 1012125550, 66500, '09-14-2021'),
(9, 1144520, 480, 'Bank Code', 1025000020, 66990, '09-14-2021'),
(10, 2145000000, 480, 'Bank Code', 2147483647, 66580, '09-14-2021'),
(20, 858195683, 100, 'Bank Code', 1400256000, 47850, '09-13-2021'),
(21, 2138906686, 120, 'Bank Code', 1455000020, 202020, '09-13-2021'),
(22, 2138906686, 120, 'Bank Code', 1450000020, 202020, '09-15-2021'),
(23, 361540113, 180, 'Western Union', 1470000020, 12001, '09-15-2021'),
(24, 361540113, 180, 'UBL/Omni', 1258886650, 200, '09-15-2021'),
(25, 901707655, 245, 'Western Union', 1200002588, 88850, '09-15-2021');

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
(17, 2, 1715523401, '9', 2, 'Large', 'pending'),
(23, 3, 1762810884, '12', 1, 'Medium', 'Complete'),
(24, 4, 1972602052, '5', 1, 'Large', 'Complete'),
(25, 4, 2008540778, '13', 1, 'Medium', 'pending'),
(27, 5, 2138906686, '14', 1, 'Small', 'Complete'),
(28, 5, 361540113, '13', 2, 'Medium', 'Complete'),
(29, 3, 858195683, '5', 1, 'Large', 'Complete'),
(31, 6, 901707655, '8', 1, 'Medium', 'Complete'),
(32, 6, 2125554712, '15', 1, 'Large', 'pending');

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
(5, 7, 5, 5, '2021-09-14 09:13:25', 'Denim Borg Lined Western Jacket', 'product-url-5', 'Next-Denim-Borg-Lined-Western-Jacket-0463-0064553-1-pdp_slider_l.jpg', 'Next-Denim-Borg-Lined-Western-Jacket-0463-0064553-2-pdp_slider_l.jpg', 'Next-Denim-Borg-Lined-Western-Jacket-0465-0064553-3-pdp_slider_l.jpg', 259, 100, '\r\n<p>This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description.</p>\r\n', '\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,\r\n', '\r\n<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>\r\n', 'Jackets', 'Gift', 'product'),
(8, 4, 2, 4, '2021-09-14 10:13:02', 'Sleeveless Flaux Fur Hybrid Coat', 'product-url-8', 'Black Blouse Versace Coat1.jpg', 'Black Blouse Versace Coat2.jpg', 'Black Blouse Versace Coat3.jpg', 245, 100, '\r\n\r\n\r\n<p>This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description.</p>\r\n\r\n\r\n', '\r\n\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,\r\n\r\n\r\n', '\r\n\r\n\r\n<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>\r\n\r\n\r\n', 'Coats', 'New', 'product'),
(9, 5, 4, 7, '2021-09-14 17:06:30', 'Long Sleeves Polo Shirt for Men', 'product-url-9', 'product-1.jpg', 'product-2.jpg', 'product-3.jpg', 50, 35, '\r\n\r\n\r\n\r\n<p>This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description.</p>\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>\r\n\r\n\r\n\r\n', 'T-Shirt', 'Sale', 'product'),
(12, 8, 5, 2, '2021-05-25 09:15:09', 'Ultraboost 21 PrimeBlue Shoes', 'ultraboost-21-adidas', 'Ultraboost_21.jpg', 'Ultraboost_21_2.jpg', 'Ultraboost_21_3.jpg', 150, 180, '\r\n\r\nThis product is made with Primeblue, a high-performance recycled material made in part with Parley Ocean Plastic. 50% of the upper is textile, 92% of the textile is Primeblue yarn. No virgin polyester.', '\r\n\r\nComfortable and responsive, Ultraboost became our first shoe to be as popular in streetwear style as it is in performance running.', '\r\nhttps://assets.adidas.com/videos/q_auto,f_auto,g_auto/599fff35a3cf432aa9bbac7c0091316f_d98c/Ultraboost_21_Primeblue_Shoes_Blue_FX7729_video.mp4\r\n', 'sneakers adidas ultraboost shoes', 'New', 'product'),
(13, 9, 2, 3, '2021-09-14 16:26:51', 'Nike Sportswear Essential Collection', 'nike-sportswear-essen-col', 'nike-s.jpg', 'nike-s2.jpg', 'nike-s02.jpg', 90, 85, '\r\n\r\nThis is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text.\r\n\r\n\r\n\r\n', '\r\n\r\n\r\nThis is a sample text. This is a sample text. This is a sample text.This is a sample text. This is a sample text. This is a sample text.This is a sample text. This is a sample text. This is a sample text.This is a sample text. This is a sample text. This is a sample text.\r\n\r\n', '\r\n\r\n\r\nThis is a sample text. This is a sample text. This is a sample text.\r\n\r\n\r\n', 'nike sportswear', 'Featured', 'product'),
(14, 5, 5, 7, '2021-09-14 17:03:38', 'Demo Product Title Name - Test', 'demo-product-showcase', 'Prod-placeholder.jpg', 'Prod-placeholder.jpg', 'Prod-placeholder.jpg', 120, 111, '\r\nThis is a demo. This is a demo. This is a demo. This is a demo.\r\n\r\n\r\n', '\r\n\r\n\r\nThis is a demo.\r\n', '\r\n\r\n\r\nThis is a demo.\r\n', 'demo test product', 'Test', 'product'),
(15, 5, 5, 8, '2021-09-15 03:46:42', 'Gildan 1800 Ultra Cotton Polo Shirt', 'cotton-polo-shirt', 'g18bulk.jpg', 'g18bulk2.jpg', 'g18bulk3.jpg', 88, 75, '\r\nTHIS IS A DEMO DESCRIPTION\r\n', '\r\n\r\nDEMO FEATURES\r\n\r\n', '\r\n\r\n\r\n\r\n', 'polo shirt', 'Sale', 'bundle');

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
(4, 'Apsara Pencils', 'yes', 'coaticn.png'),
(5, 'Pilot pens', 'yes', 'tshirticn.png'),
(6, 'fountain Pens', 'no', 'sweatericn.png'),
(7, 'Doms colors', 'yes', 'jacketicn.png'),
(8, 'Scissors', 'no', 'sneakericn.png'),
(9, 'Natraj Pencils', 'no', 'trousericn.png');

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
(2, 2, 8),
(3, 5, 13),
(4, 3, 13),
(5, 6, 15);

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
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--


--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
