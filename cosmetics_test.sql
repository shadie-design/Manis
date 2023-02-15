-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2020 at 02:42 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cosmetics_test`
--

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
  `admin_country` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(5, 'Shadrack', 'githuashadrack89@gmail.com', '0748124189', '5ddb22ae79c6822a10168cda99ec2419.jpg', 'Kenya', ' This is for shadrack', '0748124189', 'programmer');

-- --------------------------------------------------------

--
-- Table structure for table `boxes_section`
--

CREATE TABLE `boxes_section` (
  `box_id` int(10) NOT NULL,
  `box_title` text NOT NULL,
  `box_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_title`, `box_desc`) VALUES
(2, ' New Title Box Best Offers ', 'New Lorem  dolor sit amet consectetur adipisicing elit. Laborum nam voluptate ipsum, quasi, soluta voluptatem eligendi voluptatum officia sed, molestiae tempore corrupti similique? Deserunt odio fugit facere voluptate consequuntur doloremque?'),
(3, 'New Title Box 100% Satisfy ', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum nam voluptate ipsum, quasi, soluta voluptatem eligendi voluptatum officia sed, molestiae tempore corrupti similique? Deserunt odio fugit facere voluptate consequuntur doloremque?'),
(4, 'New Title Box New Box Title 4 ', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum, aliquid veritatis amet ad saepe nesciunt eos? Quas ipsum laboriosam hic sunt fugit cumque maiores! Ducimus officiis commodi consequuntur rerum minima.');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `county` text NOT NULL
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
(1, 'Man', 'yes', 'men.jpg'),
(2, 'Women', 'yes', 'women.jpg'),
(6, 'other', 'yes', 'others.jpg');

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
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(7, 'shadrack', 'githuashadrack89@gmail.com', '0748124189Xy', 'kenya', 'Nairobi', '0748124189', '25 embu', '5ddb22ae79c6822a10168cda99ec2419.jpg', '::1'),
(8, 'michael', 'mungaim20@gmail.com', '1234567890', 'kenya', 'embu', '0700339659', '25', 'images (7).jpg', '::1'),
(9, 'kim', 'kimdavid123@gmail.com', '1234567890', 'kenya', 'embu', '0798654321', '225', 'images (16).jpg', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `product_id` mediumtext NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `county` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `product_id`, `product_title`, `qty`, `county`, `order_date`, `order_status`) VALUES
(36, 7, 1195, 308171008, '', '', 5, 'Kitui', '2020-07-05', 'Complete'),
(37, 7, 1195, 1390979063, '', '', 5, 'Eldoret', '2020-07-05', 'Complete'),
(41, 8, 1890, 1774260906, '', '', 5, 'Embu', '2020-07-06', 'Complete'),
(42, 7, 1000, 80373968, '', '', 2, 'Mombasa', '2020-07-06', 'Complete'),
(43, 8, 6000, 1029128788, '', '', 4, 'Embu', '2020-07-06', 'Complete'),
(44, 8, 2280, 359630454, '', '', 3, 'Embu', '2020-07-06', 'pending'),
(45, 8, 2280, 1224996512, '', '', 3, 'Embu', '2020-07-06', 'Complete'),
(46, 8, 3000, 359630454, '', '', 2, 'Embu', '2020-07-06', 'pending'),
(47, 8, 3000, 1224996512, '', '', 2, 'Embu', '2020-07-06', 'pending'),
(48, 8, 1134, 294491223, '', '', 3, 'Meru', '2020-07-06', 'Complete'),
(49, 7, 1520, 253586003, '', '', 2, 'Kitui', '2020-07-06', 'pending'),
(50, 7, 4500, 564014113, '', '', 3, 'Meru', '2020-07-07', 'pending'),
(51, 8, 780, 902739976, '', '', 1, 'Kitui', '2020-07-08', 'pending'),
(52, 8, 239, 1427574954, '', '', 1, 'Nairobi', '2020-07-08', 'pending'),
(53, 8, 717, 1128309053, '', '', 3, 'Embu', '2020-07-08', 'Complete'),
(54, 8, 239, 1903319464, '', '', 1, 'Nairobi', '2020-07-08', 'pending'),
(55, 8, 1500, 1903319464, '', '', 1, 'Meru', '2020-07-08', 'pending'),
(56, 8, 756, 1903319464, '', '', 2, 'Nairobi', '2020-07-08', 'pending'),
(57, 8, 1500, 168011047, '', '', 1, 'Embu', '2020-07-09', 'Complete'),
(58, 8, 1512, 1167805388, '', 'nail treatment', 4, 'Meru', '2020-07-09', 'pending'),
(59, 8, 478, 1249910198, '26', 'FM 214', 2, 'Meru', '2020-07-09', 'pending'),
(60, 7, 2340, 1425014815, '23', 'home spray FM', 3, 'Embu', '2020-07-10', 'Complete'),
(61, 7, 239, 1628899919, '26', 'FM 214', 1, 'Meru', '2020-07-13', 'Complete'),
(62, 7, 378, 1170313319, '28', 'nail treatment', 1, 'Embu', '2020-07-13', 'Complete'),
(63, 7, 956, 377900854, '26', 'FM 214', 4, 'Thika', '2020-07-14', 'Complete'),
(64, 9, 7500, 1401878135, '25', 'car FM spray', 5, '', '2020-08-06', 'pending'),
(65, 9, 717, 436163553, '26', 'FM 214', 3, 'Embu', '2020-08-06', 'pending'),
(66, 9, 7500, 244272923, '25', 'car FM spray', 5, 'Embu', '2020-08-06', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`log_id`, `customer_email`, `action`, `date`) VALUES
(1, 'githuashadrack89@gmail.com', 'has logged in the system at ', '2020-03-26 17:56:48'),
(2, 'githuashadrack89@gmail.com', '(Admin)logged in the system at ', '2020-03-26 18:08:14'),
(5, 'githuashadrack89@gmail.com', 'has logged in the system at ', '2020-03-26 20:59:30'),
(6, 'githuashadrack89@gmail.com', '(Admin)logged in the system at ', '2020-03-27 17:42:09'),
(7, 'githuashadrack89@gmail.com', 'has logged in the system at ', '2020-03-27 17:43:21'),
(8, 'githuashadrack89@gmail.com', '(Admin)logged in the system at ', '2020-03-29 19:19:33'),
(9, 'githuashadrack89@gmail.com', 'has logged in the system at ', '2020-03-29 19:22:08'),
(10, 'githuashadrack89@gmail.com', 'has logged in the system at ', '2020-04-15 18:40:15'),
(11, 'githuashadrack89@gmail.com', '(Admin)logged in the system at ', '2020-04-15 18:41:00'),
(12, 'githuashadrack89@gmail.com', 'has logged in the system at ', '2020-06-22 08:27:25'),
(13, 'githuashadrack89@gmail.com', 'has logged in the system at ', '2020-07-05 14:02:00'),
(14, 'githuashadrack89@gmail.com', '(Admin)logged in the system at ', '2020-07-05 14:03:53'),
(15, 'githuashadrack89@gmail.com', '(Admin)logged in the system at ', '2020-07-06 09:43:02'),
(16, 'githuashadrack89@gmail.com', '(Admin)logged in the system at ', '2020-07-06 14:12:42'),
(17, 'githuashadrack89@gmail.com', 'has logged in the system at ', '2020-07-06 22:13:41'),
(18, 'mungaim20@gmail.com', 'has logged in the system at ', '2020-07-06 22:14:57'),
(19, 'githuashadrack89@gmail.com', 'has logged in the system at ', '2020-07-07 08:28:15'),
(20, 'githuashadrack89@gmail.com', 'has logged in the system at ', '2020-07-07 08:45:58'),
(21, 'githuashadrack89@gmail.com', 'has logged in the system at ', '2020-07-07 09:47:05'),
(22, 'mungaim20@gmail.com', 'has logged in the system at ', '2020-07-07 09:50:24'),
(23, 'mungaim20@gmail.com', 'has logged in the system at ', '2020-07-07 09:56:35'),
(24, 'mungaim20@gmail.com', 'has logged in the system at ', '2020-07-07 10:54:37'),
(25, 'mungaim20@gmail.com', 'has logged in the system at ', '2020-07-07 13:19:56'),
(26, 'mungaim20@gmail.com', 'has logged in the system at ', '2020-07-07 14:14:35'),
(27, 'mungaim20@gmail.com', 'has logged in the system at ', '2020-07-07 14:19:56'),
(28, 'githuashadrack89@gmail.com', '(Admin)logged in the system at ', '2020-07-08 07:55:05'),
(29, 'mungaim20@gmail.com', 'has logged in the system at ', '2020-07-08 08:21:41'),
(30, 'githuashadrack89@gmail.com', 'has logged in the system at ', '2020-07-08 09:29:42'),
(31, 'mungaim20@gmail.com', 'has logged in the system at ', '2020-07-08 12:15:05'),
(32, 'githuashadrack89@gmail.com', '(Admin)logged in the system at ', '2020-07-08 12:42:22'),
(33, 'githuashadrack89@gmail.com', 'has logged in the system at ', '2020-07-09 11:34:11'),
(34, 'mungaim20@gmail.com', 'has logged in the system at ', '2020-07-09 11:43:47'),
(35, 'githuashadrack89@gmail.com', '(Admin)logged in the system at ', '2020-07-10 18:08:43'),
(36, 'githuashadrack89@gmail.com', 'has logged in the system at ', '2020-07-13 11:08:10'),
(37, 'githuashadrack89@gmail.com', 'has logged in the system at ', '2020-07-14 13:06:20'),
(38, 'githuashadrack89@gmail.com', '(Admin)logged in the system at ', '2020-07-14 13:06:47'),
(39, 'githuashadrack89@gmail.com', 'has logged in the system at ', '2020-07-20 11:00:39'),
(40, 'githuashadrack89@gmail.com', 'has logged in the system at ', '2020-08-06 09:53:47'),
(41, 'githuashadrack89@gmail.com', '(Admin)logged in the system at ', '2020-08-06 09:56:10'),
(42, 'kimdavid123@gmail.com', 'has logged in the system at ', '2020-08-06 10:10:16'),
(43, 'githuashadrack89@gmail.com', '(Admin)logged in the system at ', '2020-08-06 10:19:50'),
(44, 'githuashadrack89@gmail.com', '(Admin)logged in the system at ', '2020-08-07 07:09:46'),
(45, 'githuashadrack89@gmail.com', 'has logged in the system at ', '2020-08-07 07:20:24'),
(46, 'githuashadrack89@gmail.com', 'has logged in the system at ', '2020-08-07 07:27:34'),
(47, 'githuashadrack89@gmail.com', '(Admin)logged in the system at ', '2020-08-07 07:28:13'),
(48, 'githuashadrack89@gmail.com', '(Admin)logged in the system at ', '2020-08-07 07:37:48'),
(49, 'githuashadrack89@gmail.com', '(Admin)logged in the system at ', '2020-08-07 10:06:39');

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
(1, 'Federica Mahora', 'yes', '15541587_1097798520345991_1652058049671513122_n.jpg'),
(2, 'Axe', 'yes', '14570280_1025878060871371_4889171475822835887_n.jpg'),
(3, 'cockpit', 'no', 'cockpit.jpg'),
(4, 'JR More', 'no', 'JE more.jpg'),
(5, 'Pheromone', 'no', 'pheromone.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `customerID` longtext NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `transaction_id` varchar(10) NOT NULL,
  `payment_number` int(10) NOT NULL,
  `payment_date` text NOT NULL,
  `receiver_number` varchar(100) NOT NULL,
  `receiver_firstname` varchar(100) NOT NULL,
  `receiver_secondname` varchar(100) NOT NULL,
  `receiver_thirdname` varchar(100) NOT NULL,
  `receiver_idnumber` varchar(100) NOT NULL,
  `payment_confirmation` varchar(100) NOT NULL,
  `shipping_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `email`, `customerID`, `invoice_no`, `amount`, `payment_mode`, `transaction_id`, `payment_number`, `payment_date`, `receiver_number`, `receiver_firstname`, `receiver_secondname`, `receiver_thirdname`, `receiver_idnumber`, `payment_confirmation`, `shipping_status`) VALUES
(13, '', '', 1382369203, 6000, 'Mpesa kenya', 'SDFGAHJKLJ', 747823417, '2020-01-06', '', '', '', '', '', 'not confirmed', ''),
(14, '', '', 1639659954, 3900000, 'Mpesa kenya', 'SDFGAHJKLJ', 747823417, '2020-01-06', '', '', '', '', '', 'not confirmed', ''),
(15, '', '', 307624858, 10755, 'Mpesa kenya', 'SDFGAHJKLJ', 747823417, '2020-01-06', '', '', '', '', '', 'not confirmed', ''),
(16, '', '', 2082339181, 500, 'Mpesa kenya', 'SDFGAHJKLJ', 747823417, '2020-01-06', '', '', '', '', '', 'not confirmed', ''),
(17, '', '', 2082339181, 500, 'Mpesa kenya', 'SDFGAHJKLJ', 747823417, '2020-01-06', '', '', '', '', '', 'not confirmed', ''),
(18, '', '', 308171008, 1195, 'Mpesa kenya', 'SDFGAHJKLJ', 747823417, '2020-01-06', '', '', '', '', '', 'not confirmed', ''),
(19, '', '', 1774260906, 1890, 'Mpesa kenya', 'QWERTYTREW', 700339689, '6-7-2020', '', '', '', '', '', 'payment confirmed', 'shipped'),
(20, '', '', 80373968, 1000, 'Mpesa kenya', 'SDFGAHJKLJ', 747823417, '2020-01-06', '', '', '', '', '', 'not confirmed', ''),
(21, '', '', 1029128788, 6000, 'Mpesa kenya', 'POIUYTREWQ', 748124189, '2020-7-6', '', '', '', '', '', 'payment confirmed', 'shipped'),
(22, '', '', 294491223, 1134, 'Mpesa kenya', 'POIUYTREWE', 748124189, '2020-7-6', '', '', '', '', '', 'payment confirmed', 'shipped'),
(23, '', '', 1224996512, 10000, 'Mpesa kenya', 'POYOWTRUTY', 748124189, '2020-7-6', '', '', '', '', '', 'not confirmed', ''),
(24, '', '', 1128309053, 717, 'Mpesa kenya', 'PLMKOIJNBH', 748124189, '2020-7-8', '', '', '', '', '', 'not confirmed', ''),
(25, '', '', 168011047, 1500, 'Mpesa kenya', 'OFE2XYWD7S', 748124189, '2020-7-9', '0769285970', 'ian', 'murithi', 'kibara', '123456789', 'payment confirmed', 'shipped'),
(26, '', '', 1628899919, 239, 'Paybill', 'YTURIEOWPQ', 8888880, '2020-13-7', '0748124189', 'shadie', 'Githua', 'mwaura', '36515822', 'payment confirmed', 'shipped'),
(27, '', '', 1425014815, 2340, 'Paybill', 'POIUYTYUIO', 8888880, '2020-13-7', '0748124189', 'shadie', 'Githua', 'mwaura', '36515822', 'not confirmed', ''),
(28, '', '', 377900854, 956, 'Paybill', 'WOEIRUTYQP', 8888880, '2020-14-7', '0748124189', 'Maina', 'mugo', 'gituari', '36515822', 'payment confirmed', 'not shipped'),
(29, '', '', 244272923, 7500, 'Paybill', 'WXTYRUY005', 8888880, '2020-08-06', '0798654321', 'kim', 'mwikali', 'david', '36515822', 'payment confirmed', 'shipped');

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
  `county` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `county`, `order_status`) VALUES
(36, 7, 308171008, '26', 5, 'Kitui', 'pending'),
(37, 7, 1390979063, '26', 5, 'Eldoret', 'pending'),
(38, 8, 1774260906, '28', 5, 'Embu', 'pending'),
(39, 7, 80373968, '21', 2, 'Mombasa', 'pending'),
(40, 8, 1029128788, '25', 4, 'Embu', 'pending'),
(41, 8, 359630454, '24', 3, 'Embu', 'pending'),
(42, 8, 1224996512, '24', 3, 'Embu', 'pending'),
(43, 8, 359630454, '25', 2, 'Embu', 'pending'),
(44, 8, 1224996512, '25', 2, 'Embu', 'pending'),
(45, 8, 294491223, '28', 3, 'Meru', 'Complete'),
(46, 7, 253586003, '24', 2, 'Kitui', 'pending'),
(47, 7, 564014113, '25', 3, 'Meru', 'pending'),
(48, 8, 902739976, '23', 1, 'Kitui', 'pending'),
(49, 8, 1427574954, '22', 1, 'Nairobi', 'pending'),
(50, 8, 1128309053, '26', 3, 'Embu', 'pending'),
(51, 8, 1903319464, '22', 1, 'Nairobi', 'pending'),
(52, 8, 1903319464, '25', 1, 'Meru', 'pending'),
(53, 8, 1903319464, '28', 2, 'Nairobi', 'pending'),
(54, 8, 168011047, '25', 1, 'Embu', 'pending'),
(55, 8, 1167805388, '28', 4, 'Meru', 'pending'),
(56, 8, 1249910198, '26', 2, 'Meru', 'pending'),
(57, 7, 1425014815, '23', 3, 'Embu', 'pending'),
(58, 7, 1628899919, '26', 1, 'Meru', 'pending'),
(59, 7, 1170313319, '28', 1, 'Embu', 'pending'),
(60, 7, 377900854, '26', 4, 'Thika', 'pending'),
(61, 9, 1401878135, '25', 5, '', 'pending'),
(62, 9, 436163553, '26', 3, 'Embu', 'pending'),
(63, 9, 244272923, '25', 5, 'Embu', 'pending');

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
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) DEFAULT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_label` text NOT NULL,
  `product_sale` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_quantity`, `product_keywords`, `product_desc`, `product_label`, `product_sale`) VALUES
(19, 1, 2, 1, '2020-07-10 15:41:27', 'Balicone base', '15267859_1082466211879222_1417351525303879003_n.jpg', '16194993_1136806353111874_2736319234353260719_n.jpg', 'make up balicone base FM.jpg', 800, 120, 'balicone', '<p>very pleasant perfume scent</p>', 'sale', 600),
(20, 1, 2, 1, '2020-07-05 12:05:30', 'FM 213', '16194993_1136806353111874_2736319234353260719_n.jpg', '15267859_1082466211879222_1417351525303879003_n.jpg', 'FM (2).jpg', 378, 500, 'FM 213 ', '<p>cool spray for ladies</p>', 'new', 0),
(21, 1, 2, 1, '2020-07-06 08:50:44', 'FM glass spray 321', '14570280_1025878060871371_4889171475822835887_n.jpg', 'FM3.jpg', 'pure Royal perfume.jpg', 500, 96, 'spray FM', '<p>amazing</p>', 'new', 0),
(22, 1, 2, 1, '2020-07-10 08:19:18', 'FM ladies spray', 'pure Royal perfume.jpg', '21078348_1341856579273516_3866834063422095789_n.jpg', '22780421_1390616821064158_6849947762761123456_n.jpg', 239, 348, 'spray FM', '<p>good one</p>', 'sale', 200),
(23, 7, 6, 1, '2020-07-10 07:16:08', 'home spray FM', 'fm8.jpg', 'utique.jpg', 'for home.jpg', 780, 276, 'home spray', '<p>amazing home spray</p>', 'new', 0),
(24, 4, 2, 1, '2020-07-06 19:13:46', 'FM 213', 'FM4.jpg', 'gold regenesis.jpg', 'pheromone.jpg', 760, 124, 'fm spray', '<p>so magnificent</p>', 'new', 0),
(25, 2, 6, 1, '2020-08-06 07:12:23', 'car FM spray', '15232201_1072814136177763_5083054395723976800_n.jpg', 'fm7.jpg', 'FM6.jpg', 1500, 85, 'car spray', '<p>very pleasant</p>', 'sale', 1000),
(26, 1, 2, 1, '2020-08-06 07:10:49', 'FM 214', 'FM 201.jpg', 'FM6.jpg', 'FM.jpg', 239, 77, 'spray FM', '<p>very pleasant</p>', 'new', 0),
(28, 6, 2, 2, '2020-07-13 12:24:24', 'nail treatment', '15219571_1077697555689421_7279302441282835113_n.jpg', '15219613_1071518129640697_4784500529732948144_n.jpg', '15107452_1072814666177710_4055507316737344370_n.jpg', 378, 202, 'nails', '<p>cool nail treatment perfume</p>', 'sale', 250);

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
(1, 'Perfumes', 'yes', '15232201_1072814136177763_5083054395723976800_n.jpg'),
(2, ' car sprays ', 'no', '16194993_1136806353111874_2736319234353260719_n.jpg'),
(3, 'lotions', 'no', '14462970_1023178434474667_5351644251398251923_n.jpg'),
(4, 'health care', 'yes', 'utique.jpg'),
(5, ' Skin care ', 'no', '14992037_1054317524694091_1327072195148340041_n.jpg'),
(6, 'beauty', 'no', '15541587_1097798520345991_1652058049671513122_n.jpg'),
(7, 'home care', 'no', 'fm8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_url`) VALUES
(15, 'slide-A', 'slide-G.jpg', 'http://localhost/cosmetis_test/cosmetics_store/index.php'),
(16, 'slide-B', 'slide-B.jpg', 'http://localhost/cosmetis_test/cosmetics_store/index.php'),
(17, 'slide-C', 'slide-C.jpg', 'http://localhost/cosmetis_test/cosmetics_store/index.php'),
(18, 'slide-D', 'slide-D.jpg', 'http://localhost/cosmetis_test/cosmetics_store/index.php');

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
(9, 'Rules & Regulations', 'link_1', '<div>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quidem ut itaque quibusdam dolores modi natus. Enim earum laboriosam, quos error voluptatem fugiat eos? In maiores quia eligendi, ea aperiam voluptate.</div>'),
(10, 'Promo & Regulations', 'link_2', '<div>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quidem ut itaque quibusdam dolores modi natus. Enim earum laboriosam, quos error voluptatem fugiat eos? In maiores quia eligendi, ea aperiam voluptate.</div>'),
(11, 'Refund Condition Policy', 'link_3', '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quidem ut itaque quibusdam dolores modi natus. Enim earum laboriosam, quos error voluptatem fugiat eos? In maiores quia eligendi, ea aperiam voluptate.</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

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
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`);

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
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
