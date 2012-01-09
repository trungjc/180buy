-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 09, 2012 at 07:45 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `180buy`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lastname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `company` varchar(32) COLLATE utf8_bin NOT NULL,
  `address_1` varchar(128) COLLATE utf8_bin NOT NULL,
  `address_2` varchar(128) COLLATE utf8_bin NOT NULL,
  `city` varchar(128) COLLATE utf8_bin NOT NULL,
  `postcode` varchar(10) COLLATE utf8_bin NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`) VALUES
(1, 1, 'nguyen thanh', 'trung', '', 'tu ky', '', 'ha noi', '1000', 230, 3776);

-- --------------------------------------------------------

--
-- Table structure for table `affiliate`
--

CREATE TABLE IF NOT EXISTS `affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lastname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `email` varchar(96) COLLATE utf8_bin NOT NULL DEFAULT '',
  `telephone` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `fax` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `password` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `company` varchar(32) COLLATE utf8_bin NOT NULL,
  `website` varchar(255) COLLATE utf8_bin NOT NULL,
  `address_1` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `address_2` varchar(128) COLLATE utf8_bin NOT NULL,
  `city` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `postcode` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) COLLATE utf8_bin NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) COLLATE utf8_bin NOT NULL,
  `payment` varchar(6) COLLATE utf8_bin NOT NULL,
  `cheque` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `paypal` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bank_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bank_branch_number` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bank_swift_code` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bank_account_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bank_account_number` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip` varchar(15) COLLATE utf8_bin NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `affiliate`
--


-- --------------------------------------------------------

--
-- Table structure for table `affiliate_transaction`
--

CREATE TABLE IF NOT EXISTS `affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `affiliate_transaction`
--


-- --------------------------------------------------------

--
-- Table structure for table `attribute`
--

CREATE TABLE IF NOT EXISTS `attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=12 ;

--
-- Dumping data for table `attribute`
--

INSERT INTO `attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_description`
--

CREATE TABLE IF NOT EXISTS `attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `attribute_description`
--

INSERT INTO `attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_group`
--

CREATE TABLE IF NOT EXISTS `attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Dumping data for table `attribute_group`
--

INSERT INTO `attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_group_description`
--

CREATE TABLE IF NOT EXISTS `attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `attribute_group_description`
--

INSERT INTO `attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Clockspeed'),
(4, 2, 'Clockspeed'),
(5, 2, 'Clockspeed'),
(6, 2, 'Clockspeed');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=14 ;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `name`, `status`) VALUES
(6, 'quang cao ben trai', 1),
(7, 'quang cao phan noi dung chinh', 1),
(8, 'Manufacturers', 1),
(9, 'parner', 1),
(10, 'slice banner', 1),
(11, 'quang cao chay 2 ben (ben trai)', 1),
(12, 'quang cao header', 1),
(13, 'quang cao chay 2 ben (ben ben phai)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `banner_image`
--

CREATE TABLE IF NOT EXISTS `banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=98 ;

--
-- Dumping data for table `banner_image`
--

INSERT INTO `banner_image` (`banner_image_id`, `banner_id`, `link`, `image`) VALUES
(83, 7, 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'data/quang-cao/banner1.jpg'),
(82, 6, '/index.php?route=product/manufacturer/product&amp;manufacturer_id=7', 'data/quang-cao/home2_03.png'),
(75, 8, '/index.php?route=product/manufacturer/product&amp;manufacturer_id=5', 'data/htc_logo.jpg'),
(73, 8, '/index.php?route=product/manufacturer/product&amp;manufacturer_id=8', 'data/apple_logo.jpg'),
(74, 8, '/index.php?route=product/manufacturer/product&amp;manufacturer_id=9', 'data/canon_logo.jpg'),
(71, 8, '/index.php?route=product/manufacturer/product&amp;manufacturer_id=10', 'data/sony_logo.jpg'),
(72, 8, '/index.php?route=product/manufacturer/product&amp;manufacturer_id=6', 'data/palm_logo.jpg'),
(76, 8, '/index.php?route=product/manufacturer/product&amp;manufacturer_id=7', 'data/hp_logo.jpg'),
(78, 9, 'http://hoakho.net/', 'data/parner-img/home2_13.jpg'),
(79, 9, 'http://hoakho.com', 'data/parner-img/home2_11.jpg'),
(80, 9, '24h.com.vn', 'data/parner-img/home2_17.jpg'),
(81, 9, 'vnexpress.com', 'data/parner-img/home2_19.jpg'),
(97, 10, 'http://localhost/180buy/index.php?route=product/category&amp;path=24', 'data/noel.jpg'),
(92, 11, 'link quang cao', 'data/p.jpg'),
(86, 12, 'nhap link', 'data/h1.jpg'),
(96, 10, 'http://localhost/180buy/index.php?route=product/category&amp;path=18', 'data/noel.png'),
(93, 13, 'http://localhost/180buy/index.php?route=product/product&amp;path=57&amp;product_id=49', 'data/p-95x472.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `banner_image_description`
--

CREATE TABLE IF NOT EXISTS `banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `banner_image_description`
--

INSERT INTO `banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(83, 1, 7, 'Samsung Tab 10.1'),
(82, 1, 6, 'HP Banner'),
(75, 1, 8, 'HTC'),
(74, 1, 8, 'Canon'),
(73, 1, 8, 'Apple'),
(72, 1, 8, 'Palm'),
(71, 1, 8, 'Sony'),
(76, 1, 8, 'Hewlett-Packard'),
(78, 1, 9, 'doi tac 1'),
(79, 1, 9, 'doi tac 2'),
(80, 1, 9, 'doi tac 3'),
(81, 1, 9, 'doi tac 4'),
(97, 1, 10, 'noel'),
(92, 1, 11, 'ten quan cao'),
(86, 1, 12, 'nhap tieu de'),
(96, 1, 10, 'samsung'),
(93, 1, 13, 'ten quang cao'),
(83, 2, 7, 'Samsung Tab 10.1'),
(82, 2, 6, 'HP Banner'),
(75, 2, 8, 'HTC'),
(74, 2, 8, 'Canon'),
(73, 2, 8, 'Apple'),
(72, 2, 8, 'Palm'),
(71, 2, 8, 'Sony'),
(76, 2, 8, 'Hewlett-Packard'),
(78, 2, 9, 'doi tac 1'),
(79, 2, 9, 'doi tac 2'),
(80, 2, 9, 'doi tac 3'),
(81, 2, 9, 'doi tac 4'),
(97, 2, 10, 'noel'),
(92, 2, 11, 'ten quan cao'),
(86, 2, 12, 'nhap tieu de'),
(96, 2, 10, 'samsung'),
(93, 2, 13, 'ten quang cao');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=59 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, '', 0, 1, 1, 3, 1, '2009-01-31 01:04:25', '2011-05-30 12:14:55'),
(27, '', 20, 0, 0, 2, 1, '2009-01-31 01:55:34', '2010-08-22 06:32:15'),
(20, 'data/compaq_presario.jpg', 0, 1, 1, 1, 1, '2009-01-05 21:49:43', '2011-07-16 02:14:42'),
(24, '', 0, 1, 1, 5, 1, '2009-01-20 02:36:26', '2011-05-30 12:15:18'),
(18, 'data/hp_2.jpg', 0, 1, 0, 2, 1, '2009-01-05 21:49:15', '2011-05-30 12:13:55'),
(17, '', 0, 1, 1, 4, 1, '2009-01-03 21:08:57', '2011-05-30 12:15:11'),
(28, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:12', '2010-08-22 06:32:46'),
(26, '', 20, 0, 0, 1, 1, '2009-01-31 01:55:14', '2010-08-22 06:31:45'),
(29, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:37', '2010-08-22 06:32:39'),
(30, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:59', '2010-08-22 06:33:00'),
(31, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:24', '2010-08-22 06:33:06'),
(32, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:34', '2010-08-22 06:33:12'),
(33, '', 0, 1, 1, 6, 1, '2009-02-03 14:17:55', '2011-05-30 12:15:25'),
(34, 'data/ipod_touch_4.jpg', 0, 1, 4, 7, 1, '2009-02-03 14:18:11', '2011-05-30 12:15:31'),
(35, '', 28, 0, 0, 0, 1, '2010-09-17 10:06:48', '2010-09-18 14:02:42'),
(36, '', 28, 0, 0, 0, 1, '2010-09-17 10:07:13', '2010-09-18 14:02:55'),
(37, '', 34, 0, 0, 0, 1, '2010-09-18 14:03:39', '2011-04-22 01:55:08'),
(38, '', 34, 0, 0, 0, 1, '2010-09-18 14:03:51', '2010-09-18 14:03:51'),
(39, '', 34, 0, 0, 0, 1, '2010-09-18 14:04:17', '2011-04-22 01:55:20'),
(40, '', 34, 0, 0, 0, 1, '2010-09-18 14:05:36', '2010-09-18 14:05:36'),
(41, '', 34, 0, 0, 0, 1, '2010-09-18 14:05:49', '2011-04-22 01:55:30'),
(42, '', 34, 0, 0, 0, 1, '2010-09-18 14:06:34', '2010-11-07 20:31:04'),
(43, '', 34, 0, 0, 0, 1, '2010-09-18 14:06:49', '2011-04-22 01:55:40'),
(44, '', 34, 0, 0, 0, 1, '2010-09-21 15:39:21', '2010-11-07 20:30:55'),
(45, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:16', '2011-04-26 08:52:11'),
(46, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:31', '2011-04-26 08:52:23'),
(47, '', 34, 0, 0, 0, 1, '2010-11-07 11:13:16', '2010-11-07 11:13:16'),
(48, '', 34, 0, 0, 0, 1, '2010-11-07 11:13:33', '2010-11-07 11:13:33'),
(49, '', 34, 0, 0, 0, 1, '2010-11-07 11:14:04', '2010-11-07 11:14:04'),
(50, '', 34, 0, 0, 0, 1, '2010-11-07 11:14:23', '2011-04-22 01:16:01'),
(51, '', 34, 0, 0, 0, 1, '2010-11-07 11:14:38', '2011-04-22 01:16:13'),
(52, '', 34, 0, 0, 0, 1, '2010-11-07 11:16:09', '2011-04-22 01:54:57'),
(53, '', 34, 0, 0, 0, 1, '2010-11-07 11:28:53', '2011-04-22 01:14:36'),
(54, '', 34, 0, 0, 0, 1, '2010-11-07 11:29:16', '2011-04-22 01:16:50'),
(55, '', 34, 0, 0, 0, 1, '2010-11-08 10:31:32', '2010-11-08 10:31:32'),
(56, '', 34, 0, 0, 0, 1, '2010-11-08 10:31:50', '2011-04-22 01:16:37'),
(57, '', 0, 1, 1, 3, 1, '2011-04-26 08:53:16', '2011-05-30 12:15:05'),
(58, '', 52, 0, 0, 0, 1, '2011-05-08 13:44:16', '2011-05-08 13:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `category_description`
--

CREATE TABLE IF NOT EXISTS `category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `description` text COLLATE utf8_bin NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_keyword` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `category_description`
--

INSERT INTO `category_description` (`category_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`) VALUES
(28, 1, 'Monitors', '', '', ''),
(33, 1, 'Cameras', '', '', ''),
(32, 1, 'Web Cameras', '', '', ''),
(31, 1, 'Scanners', '', '', ''),
(30, 1, 'Printers', '', '', ''),
(29, 1, 'Mice and Trackballs', '', '', ''),
(27, 1, 'Mac', '', '', ''),
(26, 1, 'PC', '', '', ''),
(17, 1, 'Software', '', '', ''),
(25, 1, 'Components', '', '', ''),
(24, 1, 'Phones &amp; PDAs', '', '', ''),
(20, 1, 'Desktops', 0x266c743b702667743b0d0a094578616d706c65206f662063617465676f7279206465736372697074696f6e2074657874266c743b2f702667743b0d0a, 'Example of category description', ''),
(35, 1, 'test 1', '', '', ''),
(36, 1, 'test 2', '', '', ''),
(37, 1, 'test 5', '', '', ''),
(38, 1, 'test 4', '', '', ''),
(39, 1, 'test 6', '', '', ''),
(40, 1, 'test 7', '', '', ''),
(41, 1, 'test 8', '', '', ''),
(42, 1, 'test 9', '', '', ''),
(43, 1, 'test 11', '', '', ''),
(34, 1, 'MP3 Players', 0x266c743b702667743b0d0a0953686f70204c6170746f702066656174757265206f6e6c79207468652062657374206c6170746f70206465616c73206f6e20746865206d61726b65742e20427920636f6d706172696e67206c6170746f70206465616c732066726f6d20746865206c696b6573206f6620504320576f726c642c20436f6d65742c204469786f6e732c20546865204c696e6b20616e642043617270686f6e652057617265686f7573652c2053686f70204c6170746f702068617320746865206d6f737420636f6d70726568656e736976652073656c656374696f6e206f66206c6170746f7073206f6e2074686520696e7465726e65742e2041742053686f70204c6170746f702c207765207072696465206f757273656c766573206f6e206f66666572696e6720637573746f6d6572732074686520766572792062657374206c6170746f70206465616c732e2046726f6d207265667572626973686564206c6170746f707320746f206e6574626f6f6b732c2053686f70204c6170746f7020656e73757265732074686174206576657279206c6170746f70202d20696e20657665727920636f6c6f75722c207374796c652c2073697a6520616e6420746563686e6963616c2073706563202d206973206665617475726564206f6e20746865207369746520617420746865206c6f7765737420706f737369626c652070726963652e266c743b2f702667743b0d0a, '', ''),
(18, 1, 'Laptops &amp; Notebooks', 0x266c743b702667743b0d0a0953686f70204c6170746f702066656174757265206f6e6c79207468652062657374206c6170746f70206465616c73206f6e20746865206d61726b65742e20427920636f6d706172696e67206c6170746f70206465616c732066726f6d20746865206c696b6573206f6620504320576f726c642c20436f6d65742c204469786f6e732c20546865204c696e6b20616e642043617270686f6e652057617265686f7573652c2053686f70204c6170746f702068617320746865206d6f737420636f6d70726568656e736976652073656c656374696f6e206f66206c6170746f7073206f6e2074686520696e7465726e65742e2041742053686f70204c6170746f702c207765207072696465206f757273656c766573206f6e206f66666572696e6720637573746f6d6572732074686520766572792062657374206c6170746f70206465616c732e2046726f6d207265667572626973686564206c6170746f707320746f206e6574626f6f6b732c2053686f70204c6170746f7020656e73757265732074686174206576657279206c6170746f70202d20696e20657665727920636f6c6f75722c207374796c652c2073697a6520616e6420746563686e6963616c2073706563202d206973206665617475726564206f6e20746865207369746520617420746865206c6f7765737420706f737369626c652070726963652e266c743b2f702667743b0d0a, '', ''),
(44, 1, 'test 12', '', '', ''),
(45, 1, 'Windows', '', '', ''),
(46, 1, 'Macs', '', '', ''),
(47, 1, 'test 15', '', '', ''),
(48, 1, 'test 16', '', '', ''),
(49, 1, 'test 17', '', '', ''),
(50, 1, 'test 18', '', '', ''),
(51, 1, 'test 19', '', '', ''),
(52, 1, 'test 20', '', '', ''),
(53, 1, 'test 21', '', '', ''),
(54, 1, 'test 22', '', '', ''),
(55, 1, 'test 23', '', '', ''),
(56, 1, 'test 24', '', '', ''),
(57, 1, 'Tablets', '', '', ''),
(58, 1, 'test 25', '', '', ''),
(28, 2, 'Monitors', '', '', ''),
(33, 2, 'Cameras', '', '', ''),
(32, 2, 'Web Cameras', '', '', ''),
(31, 2, 'Scanners', '', '', ''),
(30, 2, 'Printers', '', '', ''),
(29, 2, 'Mice and Trackballs', '', '', ''),
(27, 2, 'Mac', '', '', ''),
(26, 2, 'PC', '', '', ''),
(17, 2, 'Software', '', '', ''),
(25, 2, 'Components', '', '', ''),
(24, 2, 'Phones &amp; PDAs', '', '', ''),
(20, 2, 'Desktops', 0x266c743b702667743b0d0a094578616d706c65206f662063617465676f7279206465736372697074696f6e2074657874266c743b2f702667743b0d0a, 'Example of category description', ''),
(35, 2, 'test 1', '', '', ''),
(36, 2, 'test 2', '', '', ''),
(37, 2, 'test 5', '', '', ''),
(38, 2, 'test 4', '', '', ''),
(39, 2, 'test 6', '', '', ''),
(40, 2, 'test 7', '', '', ''),
(41, 2, 'test 8', '', '', ''),
(42, 2, 'test 9', '', '', ''),
(43, 2, 'test 11', '', '', ''),
(34, 2, 'MP3 Players', 0x266c743b702667743b0d0a0953686f70204c6170746f702066656174757265206f6e6c79207468652062657374206c6170746f70206465616c73206f6e20746865206d61726b65742e20427920636f6d706172696e67206c6170746f70206465616c732066726f6d20746865206c696b6573206f6620504320576f726c642c20436f6d65742c204469786f6e732c20546865204c696e6b20616e642043617270686f6e652057617265686f7573652c2053686f70204c6170746f702068617320746865206d6f737420636f6d70726568656e736976652073656c656374696f6e206f66206c6170746f7073206f6e2074686520696e7465726e65742e2041742053686f70204c6170746f702c207765207072696465206f757273656c766573206f6e206f66666572696e6720637573746f6d6572732074686520766572792062657374206c6170746f70206465616c732e2046726f6d207265667572626973686564206c6170746f707320746f206e6574626f6f6b732c2053686f70204c6170746f7020656e73757265732074686174206576657279206c6170746f70202d20696e20657665727920636f6c6f75722c207374796c652c2073697a6520616e6420746563686e6963616c2073706563202d206973206665617475726564206f6e20746865207369746520617420746865206c6f7765737420706f737369626c652070726963652e266c743b2f702667743b0d0a, '', ''),
(18, 2, 'Laptops &amp; Notebooks', 0x266c743b702667743b0d0a0953686f70204c6170746f702066656174757265206f6e6c79207468652062657374206c6170746f70206465616c73206f6e20746865206d61726b65742e20427920636f6d706172696e67206c6170746f70206465616c732066726f6d20746865206c696b6573206f6620504320576f726c642c20436f6d65742c204469786f6e732c20546865204c696e6b20616e642043617270686f6e652057617265686f7573652c2053686f70204c6170746f702068617320746865206d6f737420636f6d70726568656e736976652073656c656374696f6e206f66206c6170746f7073206f6e2074686520696e7465726e65742e2041742053686f70204c6170746f702c207765207072696465206f757273656c766573206f6e206f66666572696e6720637573746f6d6572732074686520766572792062657374206c6170746f70206465616c732e2046726f6d207265667572626973686564206c6170746f707320746f206e6574626f6f6b732c2053686f70204c6170746f7020656e73757265732074686174206576657279206c6170746f70202d20696e20657665727920636f6c6f75722c207374796c652c2073697a6520616e6420746563686e6963616c2073706563202d206973206665617475726564206f6e20746865207369746520617420746865206c6f7765737420706f737369626c652070726963652e266c743b2f702667743b0d0a, '', ''),
(44, 2, 'test 12', '', '', ''),
(45, 2, 'Windows', '', '', ''),
(46, 2, 'Macs', '', '', ''),
(47, 2, 'test 15', '', '', ''),
(48, 2, 'test 16', '', '', ''),
(49, 2, 'test 17', '', '', ''),
(50, 2, 'test 18', '', '', ''),
(51, 2, 'test 19', '', '', ''),
(52, 2, 'test 20', '', '', ''),
(53, 2, 'test 21', '', '', ''),
(54, 2, 'test 22', '', '', ''),
(55, 2, 'test 23', '', '', ''),
(56, 2, 'test 24', '', '', ''),
(57, 2, 'Tablets', '', '', ''),
(58, 2, 'test 25', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `category_to_layout`
--

CREATE TABLE IF NOT EXISTS `category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `category_to_layout`
--


-- --------------------------------------------------------

--
-- Table structure for table `category_to_store`
--

CREATE TABLE IF NOT EXISTS `category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `category_to_store`
--

INSERT INTO `category_to_store` (`category_id`, `store_id`) VALUES
(17, 0),
(18, 0),
(20, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(37, 0),
(38, 0),
(39, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_bin NOT NULL,
  `iso_code_2` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT '',
  `iso_code_3` varchar(3) COLLATE utf8_bin NOT NULL DEFAULT '',
  `address_format` text COLLATE utf8_bin NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=240 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegowina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TP', 'TMP', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(73, 'France', 'FR', 'FRA', '', 0, 1),
(74, 'France, Metropolitan', 'FX', 'FXX', '', 0, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', 0x7b636f6d70616e797d0d0a7b66697273746e616d657d207b6c6173746e616d657d0d0a7b616464726573735f317d0d0a7b616464726573735f327d0d0a7b706f7374636f64657d207b636974797d0d0a7b636f756e7472797d, 0, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'Korea, Republic of', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'Macedonia', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', 0x7b66697273746e616d657d207b6c6173746e616d657d0d0a7b636f6d70616e797d0d0a7b616464726573735f317d0d0a7b616464726573735f327d0d0a7b636974797d207b706f7374636f64657d0d0a7b7a6f6e657d0d0a7b636f756e7472797d, 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '', 0, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', 0x7b66697273746e616d657d207b6c6173746e616d657d0d0a7b636f6d70616e797d0d0a7b616464726573735f317d0d0a7b616464726573735f327d0d0a7b636974797d2c207b7a6f6e657d207b706f7374636f64657d0d0a7b636f756e7472797d, 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(236, 'Yugoslavia', 'YU', 'YUG', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE IF NOT EXISTS `coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_bin NOT NULL,
  `code` varchar(10) COLLATE utf8_bin NOT NULL,
  `type` char(1) COLLATE utf8_bin NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) COLLATE utf8_bin NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', 10.0000, 0, 0, 0.0000, '2011-01-01', '2012-01-01', 10, '10', 1, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', 0.0000, 0, 1, 100.0000, '2009-03-01', '2009-08-31', 10, '10', 1, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', 10.0000, 0, 0, 10.0000, '1970-11-01', '2020-11-01', 100000, '10000', 1, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_history`
--

CREATE TABLE IF NOT EXISTS `coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `coupon_history`
--


-- --------------------------------------------------------

--
-- Table structure for table `coupon_product`
--

CREATE TABLE IF NOT EXISTS `coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `coupon_product`
--


-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `code` varchar(3) COLLATE utf8_bin NOT NULL DEFAULT '',
  `symbol_left` varchar(12) COLLATE utf8_bin NOT NULL,
  `symbol_right` varchar(12) COLLATE utf8_bin NOT NULL,
  `decimal_place` char(1) COLLATE utf8_bin NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.61979997, 0, '2012-01-09 21:33:39'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 0, '2012-01-09 22:00:40'),
(3, 'Euro', 'EUR', '', '€', '2', 0.70660001, 0, '2012-01-09 21:33:01'),
(4, 'Việt Nam Đồng', 'vnd', '', ' vnđ', '', 21000.00000000, 1, '2012-01-09 22:01:09');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lastname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `email` varchar(96) COLLATE utf8_bin NOT NULL DEFAULT '',
  `telephone` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `fax` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `password` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cart` text COLLATE utf8_bin,
  `wishlist` text COLLATE utf8_bin,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL,
  `ip` varchar(15) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `token` varchar(255) COLLATE utf8_bin NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `cart`, `wishlist`, `newsletter`, `address_id`, `customer_group_id`, `ip`, `status`, `approved`, `token`, `date_added`) VALUES
(1, 0, 'nguyen thanh', 'trung', 'trungnguyenthanh70@gmail.com', '0987089098', '', '21232f297a57a5a743894a0e4a801fc3', 0x613a313a7b693a34393b693a313b7d, 0x613a313a7b693a303b733a323a223433223b7d, 0, 1, 8, '::1', 1, 1, '', '2012-01-08 17:26:13');

-- --------------------------------------------------------

--
-- Table structure for table `customer_group`
--

CREATE TABLE IF NOT EXISTS `customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=9 ;

--
-- Dumping data for table `customer_group`
--

INSERT INTO `customer_group` (`customer_group_id`, `name`) VALUES
(8, 'Default'),
(6, 'Wholesale');

-- --------------------------------------------------------

--
-- Table structure for table `customer_ip`
--

CREATE TABLE IF NOT EXISTS `customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(15) COLLATE utf8_bin NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `customer_ip`
--

INSERT INTO `customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '::1', '2012-01-08 17:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `customer_reward`
--

CREATE TABLE IF NOT EXISTS `customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_bin NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_reward`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer_transaction`
--

CREATE TABLE IF NOT EXISTS `customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customer_transaction`
--


-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE IF NOT EXISTS `download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mask` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `remaining` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `download`
--


-- --------------------------------------------------------

--
-- Table structure for table `download_description`
--

CREATE TABLE IF NOT EXISTS `download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `download_description`
--


-- --------------------------------------------------------

--
-- Table structure for table `extension`
--

CREATE TABLE IF NOT EXISTS `extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) COLLATE utf8_bin NOT NULL,
  `code` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=433 ;

--
-- Dumping data for table `extension`
--

INSERT INTO `extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(410, 'module', 'banner'),
(426, 'module', 'carousel'),
(390, 'total', 'credit'),
(387, 'shipping', 'flat'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(413, 'module', 'category'),
(411, 'module', 'affiliate'),
(408, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(427, 'module', 'featured'),
(419, 'module', 'slideshow'),
(428, 'module', 'special'),
(429, 'module', 'latest'),
(430, 'module', 'bestseller'),
(431, 'module', 'cr2htmlmodule'),
(432, 'module', 'store');

-- --------------------------------------------------------

--
-- Table structure for table `geo_zone`
--

CREATE TABLE IF NOT EXISTS `geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `geo_zone`
--

INSERT INTO `geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE IF NOT EXISTS `information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`information_id`, `sort_order`, `status`) VALUES
(3, 3, 1),
(4, 1, 1),
(5, 4, 1),
(6, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `information_description`
--

CREATE TABLE IF NOT EXISTS `information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `description` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `information_description`
--

INSERT INTO `information_description` (`information_id`, `language_id`, `title`, `description`) VALUES
(4, 1, 'Giới Thiệu', 0x266c743b6832207374796c653d2671756f743b746578742d616c69676e3a206a7573746966793b2671756f743b2667743b0d0a09536c6f67616e202671756f743b4d7561206cc3a0207468c3ad63682671756f743b266c743b2f68322667743b0d0a266c743b70207374796c653d2671756f743b746578742d616c69676e3a206a7573746966793b2671756f743b2667743b0d0a094e68616e68206cc3a0206de1bb99742063c3b46e672074792c206de1bb99742077656273697465206d75612073e1baaf6d207472e1bbb16320747579e1babf6e206c75c3b46e206d75e1bb916e206d616e67206ce1baa1692073e1bbb12068c3a069206cc3b26e672063686f206b68c3a163682068c3a06e672e266c743b2f702667743b0d0a266c743b70207374796c653d2671756f743b746578742d616c69676e3a206a7573746966793b2671756f743b2667743b0d0a0926616d703b6e6273703b266c743b2f702667743b0d0a266c743b6832207374796c653d2671756f743b746578742d616c69676e3a206a7573746966793b2671756f743b2667743b0d0a0954e1baa76d206e68c3ac6e266c743b2f68322667743b0d0a266c743b70207374796c653d2671756f743b746578742d616c69676e3a206a7573746966793b2671756f743b2667743b0d0a09266c743b6272202f2667743b0d0a09496e7465726e6574206b68c3b46e672062e1bb8b206769e1bb9b692068e1baa16e2076e1bb81206b68c3b46e67206769616e2076c3a0207468e1bb9d69206769616e2c2063c3b3207468e1bb8320c491c3a17020e1bba96e67206e68752063e1baa7752063e1bba761206e6869e1bb8175206e67c6b0e1bb9d692064c3b96e672063c3b96e67206de1bb9974206cc3ba632076e1bb9b6920636869207068c3ad2072e1baa574207468e1baa5702e266c743b6272202f2667743b0d0a094ce1bb8b63682073e1bbad20696e7465726e6574206de1bb9b69206368e1bb892062e1baaf7420c491e1baa7752c2063c3a1632073e1baa36e207068e1baa96d2076c3a02064e1bb8b63682076e1bba5207472c3aa6e20696e7465726e65742076e1baab6e2063c3b26e2073c6a1206b6861692076c3a020c491e1bab763206269e1bb8774206cc3a020e1bb9f205669e1bb8774204e616d2c20646f2076e1baad792063e1baa76e2074e1baad70207472756e67207068c3a17420747269e1bb836e206e68e1bbaf6e672063c6a12068e1bb99692076c3a0206ce1bba36920c3ad63682076c3b42068e1baa16e2063e1bba76120696e7465726e65742e26616d703b6e6273703b4368c3ba6e6720746120c491616e672073e1bb916e672074726f6e67207468e1bb9d6920c491e1baa169206dc3a020696e7465726e65742063c3b3206de1bab77420e1bb9f206de1bb8d69206e67c3b5206e67c3a163682063e1bba761206375e1bb99632073e1bb916e672e205669e1bb876326616d703b6e6273703b207472616f20c491e1bb9569207468c6b0c6a16e67206de1baa169207472c3aa6e20696e7465726e65742076e1baab6e2063c3b26e206368c6b061207068c3a17420747269e1bb836e2076c3a02063687579c3aa6e206e676869e1bb87702e2056c3ac2076e1baad792c206368c3ba6e672074c3b46920c491616e67206ee1bb97206ce1bbb1632068e1babf74206dc3ac6e682078c3a2792064e1bbb16e6720312068e1bb87207468e1bb916e67207068c3a26e207068e1bb91692073e1baa36e207068e1baa96d207472e1bbb16320747579e1babf6e20c491e1bb832074e1baa16f207261206769c3a1207472e1bb8b207068e1bba5632076e1bba520636f6e206e67c6b0e1bb9d692c207472e1bb9f207468c3a06e68206de1bb997420c49169e1bb81752074e1baa5742079e1babf752074726f6e67206375e1bb99632073e1bb916e6720e1bb9f205669e1bb8774204e616d2e26616d703b6e6273703b266c743b2f702667743b0d0a266c743b68322667743b0d0a09266c743b6272202f2667743b0d0a0953e1bba9206de1bb876e68266c743b2f68322667743b0d0a266c743b70207374796c653d2671756f743b746578742d616c69676e3a206a7573746966793b2671756f743b2667743b0d0a09266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20313270783b20666f6e742d7765696768743a206e6f726d616c3b2671756f743b2667743b58c3a2792064e1bbb16e672031206bc3aa6e68207068c3a26e207068e1bb91692068c3a06e672068c3b361207068e1bba5632076e1bba5206e68752063e1baa775207469c3aa752064c3b96e672063e1bba76120636f6e206e67c6b0e1bb9d69207468c3b46e672071756120696e7465726e65742e2054e1baa16f206ec3aa6e20312064e1bb8b63682076e1bba520746875e1baad6e207469e1bb876e206e68e1baa5742063686f206e67c6b0e1bb9d69207469c3aa752064c3b96e672c207068e1bba5632076e1bba5206e68752063e1baa77520312063c3a1636820686fc3a06e2068e1baa36f206e68e1baa5742e20c490e1bb83207472e1bb9f207468c3a06e68206dc3b42068c3ac6e682062c3a16e206ce1babb207468c3a06e682063c3b46e67206e68e1baa574205669e1bb8774204e616d2e266c743b2f7370616e2667743b266c743b2f702667743b0d0a266c743b702667743b0d0a0926616d703b6e6273703b266c743b2f702667743b0d0a266c743b68322667743b0d0a09c39d206e6768c4a9612063c3b46e67207669e1bb8763266c743b2f68322667743b0d0a266c743b70207374796c653d2671756f743b746578742d616c69676e3a206a7573746966793b2671756f743b2667743b0d0a094368c3ba6e672074c3b4692063756e672063e1baa5702063686f206b68c3a163682068c3a06e67206e6869e1bb8175206c6fe1baa1692073e1baa36e207068e1baa96d2c207469e1bb876e206ce1bba3692068c6a16e2c20e1bb9f206de1bba96320636869207068c3ad207468e1baa5702068c6a16e2e266c743b6272202f2667743b0d0a094769c3a1207472e1bb8b206368c3ba6e672074c3b469206d616e67206ce1baa1692063686f206b68c3a163682068c3a06e67206b68c3b46e67206368e1bb89206cc3a020636869207068c3ad207469e1bb816e2062e1baa1632c206dc3a02063c3b26e206cc3a0207468e1bb9d69206769616e2026616d703b616d703b2073e1bba963206b68e1bb8f652e204d75612073e1baaf6d207472e1bbb16320747579e1babf6e206cc3a0207468c3a26e20746869e1bb876e2076e1bb9b69206dc3b469207472c6b0e1bb9d6e672e204d616e67206ce1baa169206e69e1bb816d207675692c2068e1baa16e68207068c3ba632c2067c3b370207068e1baa76e206769c3ba70206b68c3a163682068c3a06e672074e1baad6e2068c6b0e1bb9f6e67206375e1bb99632073e1bb916e67206de1bb99742063c3a163682074e1bb917420c491e1bab970206e68e1baa5742e204e69e1bb816d20c491616d206dc3aa2063e1bba761206368c3ba6e672074c3b46920c491616e6720c491c3b36e672067c3b370206e68e1bbaf6e67206769c3a1207472e1bb8b2074e1bb917420c491e1bab9702063686f2078c3a32068e1bb99692062e1bab16e672063c3a16320686fe1baa17420c491e1bb996e67206b696e6820646f616e682063e1bba761206368c3ba6e672074c3b4692e266c743b2f702667743b0d0a266c743b70207374796c653d2671756f743b746578742d616c69676e3a206a7573746966793b2671756f743b2667743b0d0a0926616d703b6e6273703b266c743b2f702667743b0d0a266c743b6832207374796c653d2671756f743b746578742d616c69676e3a206a7573746966793b2671756f743b2667743b0d0a094b68c3a163682068c3a06e67266c743b2f68322667743b0d0a266c743b70207374796c653d2671756f743b746578742d616c69676e3a206a7573746966793b2671756f743b2667743b0d0a094de1bb8d692068c3a06e6820c491e1bb996e672c2073e1baa36e207068e1baa96d2c2064e1bb8b63682076e1bba52063e1bba7612063c3b46e6720747920c491e1bb8175206ce1baa579206b68c3a163682068c3a06e67206cc3a06d207472e1bb8d6e672074c3a26d2e2056c3a02074e1baa5742063e1baa320c491e1bb8175207068e1baa36920c491656d206ce1baa169206ce1bba36920c3ad63682063686f206b68c3a163682068c3a06e672e266c743b6272202f2667743b0d0a094b68c3b46e67207469e1babf63207468e1bb9d69206769616e2c2063c3b46e672073e1bba963207468e1bb8f61206dc3a36e206b68c3a163682068c3a06e67266c743b2f702667743b0d0a),
(3, 1, 'Thanh Toán', 0x266c743b702667743b0d0a09266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a323070783b2671756f743b2667743b3138306275792e766e2063c3b46e672063e1baa5702033207068c6b0c6a16e67207468e1bba963207468616e6820746fc3a16e266c743b2f7370616e2667743b266c743b2f702667743b0d0a266c743b702667743b0d0a09266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a323270783b2671756f743b2667743b266c743b7374726f6e672667743b266c743b7370616e207374796c653d2671756f743b666f6e742d7765696768743a20626f6c643b2671756f743b2667743b312e266c743b7370616e207374796c653d2671756f743b636f6c6f723a233030303066663b2671756f743b2667743b5468616e6820746f266c743b2f7370616e2667743b266c743b2f7370616e2667743b266c743b7370616e207374796c653d2671756f743b636f6c6f723a233030303066663b2671756f743b2667743bc3a16e2074e1baa169206e68c3a0266c743b2f7370616e2667743b266c743b2f7374726f6e672667743b266c743b2f7370616e2667743b266c743b2f702667743b0d0a266c743b6832207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203570783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b206c696e652d6865696768743a20312e32353b20636f6c6f723a20726762283135302c20302c2031293b20666f6e742d73697a653a20313870783b20666f6e742d7765696768743a206e6f726d616c3b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20746578742d616c69676e3a206c6566743b202671756f743b2667743b0d0a0926616d703b6e6273703b266c743b2f68322667743b0d0a266c743b6832207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203570783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b206c696e652d6865696768743a20312e32353b20636f6c6f723a20726762283135302c20302c2031293b20666f6e742d73697a653a20313870783b20666f6e742d7765696768743a206e6f726d616c3b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20746578742d616c69676e3a206c6566743b202671756f743b2667743b0d0a09266c743b6272207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b202f2667743b0d0a0926616d703b6e6273703b266c743b2f68322667743b0d0a266c743b7461626c6520626f726465723d2671756f743b302671756f743b206865696768743d2671756f743b3138342671756f743b207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b20626f726465722d746f702d77696474683a203070783b20626f726465722d72696768742d77696474683a203070783b20626f726465722d626f74746f6d2d77696474683a203070783b20626f726465722d6c6566742d77696474683a203070783b20626f726465722d7374796c653a20696e697469616c3b20626f726465722d636f6c6f723a20696e697469616c3b20626f726465722d636f6c6c617073653a20636f6c6c617073653b202d7765626b69742d626f726465722d686f72697a6f6e74616c2d73706163696e673a203070783b202d7765626b69742d626f726465722d766572746963616c2d73706163696e673a203070783b20656d7074792d63656c6c733a2073686f773b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20746578742d616c69676e3a206c6566743b202671756f743b2077696474683d2671756f743b3633302671756f743b2667743b0d0a09266c743b74626f6479207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b2667743b0d0a0909266c743b7472207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b2667743b0d0a090909266c743b746420726f777370616e3d2671756f743b332671756f743b207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b20766572746963616c2d616c69676e3a20746f703b202671756f743b2667743b0d0a09090909266c743b70207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a20313070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b2667743b0d0a0909090909266c743b696d6720616c743d2671756f743b2671756f743b206865696768743d2671756f743b3135332671756f743b207372633d2671756f743b687474703a2f2f6e68616e682e766e2f6d656469612f74696e2f7461696e68612e6a70672671756f743b207374796c653d2671756f743b6d617267696e2d746f703a203570783b206d617267696e2d72696768743a20313070783b206d617267696e2d626f74746f6d3a203570783b206d617267696e2d6c6566743a20313070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b20626f726465722d746f702d77696474683a203070783b20626f726465722d72696768742d77696474683a203070783b20626f726465722d626f74746f6d2d77696474683a203070783b20626f726465722d6c6566742d77696474683a203070783b20626f726465722d7374796c653a20696e697469616c3b20626f726465722d636f6c6f723a20696e697469616c3b20626f726465722d696d6167653a20696e697469616c3b20766572746963616c2d616c69676e3a20746f703b20666c6f61743a206c6566743b202671756f743b2077696474683d2671756f743b3135302671756f743b202f2667743b266c743b2f702667743b0d0a090909266c743b2f74642667743b0d0a090909266c743b746420636f6c7370616e3d2671756f743b322671756f743b207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b20766572746963616c2d616c69676e3a20746f703b202671756f743b2667743b0d0a09090909266c743b6272207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b202f2667743b0d0a090909093138306275792e766e2073e1babd2078c3a163206e68e1baad6e20c491c6a16e2068c3a06e672076c3a02074e1bb956e67206769c3a1207472e1bb8b20c491c6a16e2068c3a06e672076e1bb9b69206b68c3a163682068c3a06e672e20536175206b68692078c3a163206e68e1baad6e2c206e68c3a26e207669c3aa6e206769616f206e68e1baad6e2063e1bba761206368c3ba6e672074c3b4692073e1babd2063687579e1bb836e2073e1baa36e207068e1baa96d2074e1bb9b6920c491e1bb8b61206368e1bb892063e1bba761206b68c3a163682068c3a06e672076c3a020746875207469e1bb816e207472e1bbb163207469e1babf702074e1baa16920c491e1bb8b61206368e1bb892063e1bba761206b68c3a163682068c3a06e672e26616d703b6e6273703b0d0a09090909266c743b70207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a20313070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b2667743b0d0a090909090928c381702064e1bba56e672063686f2063c3a16320c491e1bb8b61206368e1bb892074e1baa169206ee1bb9969207468c3a06e682048c3a0204ee1bb996929266c743b2f702667743b0d0a090909266c743b2f74642667743b0d0a0909266c743b2f74722667743b0d0a09266c743b2f74626f64792667743b0d0a266c743b2f7461626c652667743b0d0a266c743b702667743b0d0a09266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20313670783b2671756f743b2667743b266c743b7374726f6e672667743b32266c743b7370616e207374796c653d2671756f743b636f6c6f723a233030303066663b2671756f743b2667743b2e266c743b2f7370616e2667743b266c743b2f7374726f6e672667743b266c743b2f7370616e2667743b266c743b7370616e207374796c653d2671756f743b636f6c6f723a233030303066663b2671756f743b2667743b266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20323270783b2671756f743b2667743b43687579e1bb836e206b686fe1baa36e2062e1bab16e672041544d266c743b2f7370616e2667743b266c743b2f7370616e2667743b266c743b2f702667743b0d0a266c743b6832207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203570783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b206c696e652d6865696768743a20312e32353b20636f6c6f723a20726762283135302c20302c2031293b20666f6e742d73697a653a20313870783b20666f6e742d7765696768743a206e6f726d616c3b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20746578742d616c69676e3a206c6566743b202671756f743b2667743b0d0a09266c743b6272207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b202f2667743b0d0a0926616d703b6e6273703b266c743b2f68322667743b0d0a266c743b7461626c6520626f726465723d2671756f743b302671756f743b206865696768743d2671756f743b3236392671756f743b207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b20626f726465722d746f702d77696474683a203070783b20626f726465722d72696768742d77696474683a203070783b20626f726465722d626f74746f6d2d77696474683a203070783b20626f726465722d6c6566742d77696474683a203070783b20626f726465722d7374796c653a20696e697469616c3b20626f726465722d636f6c6f723a20696e697469616c3b20626f726465722d636f6c6c617073653a20636f6c6c617073653b202d7765626b69742d626f726465722d686f72697a6f6e74616c2d73706163696e673a203070783b202d7765626b69742d626f726465722d766572746963616c2d73706163696e673a203070783b20656d7074792d63656c6c733a2073686f773b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20746578742d616c69676e3a206c6566743b202671756f743b2077696474683d2671756f743b3633302671756f743b2667743b0d0a09266c743b74626f6479207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b2667743b0d0a0909266c743b7472207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b2667743b0d0a090909266c743b746420726f777370616e3d2671756f743b332671756f743b207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b20766572746963616c2d616c69676e3a20746f703b202671756f743b2667743b0d0a09090909266c743b70207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a20313070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b2667743b0d0a0909090909266c743b696d6720616c743d2671756f743b2671756f743b206865696768743d2671756f743b3135332671756f743b207372633d2671756f743b687474703a2f2f6e68616e682e766e2f6d656469612f74696e2f63687579656e6b686f616e41544d2e6a70672671756f743b207374796c653d2671756f743b6d617267696e2d746f703a203570783b206d617267696e2d72696768743a20313070783b206d617267696e2d626f74746f6d3a203570783b206d617267696e2d6c6566743a20313070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b20626f726465722d746f702d77696474683a203070783b20626f726465722d72696768742d77696474683a203070783b20626f726465722d626f74746f6d2d77696474683a203070783b20626f726465722d6c6566742d77696474683a203070783b20626f726465722d7374796c653a20696e697469616c3b20626f726465722d636f6c6f723a20696e697469616c3b20626f726465722d696d6167653a20696e697469616c3b20766572746963616c2d616c69676e3a20746f703b20666c6f61743a206c6566743b202671756f743b2077696474683d2671756f743b3135302671756f743b202f2667743b266c743b2f702667743b0d0a090909266c743b2f74642667743b0d0a090909266c743b746420636f6c7370616e3d2671756f743b322671756f743b207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b20766572746963616c2d616c69676e3a20746f703b202671756f743b2667743b0d0a09090909266c743b70207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a20313070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b2667743b0d0a09090909094b68c3a163682068c3a06e672063687579e1bb836e206b686fe1baa36e2076c3a06f2074c3a069206b686fe1baa36e206e67c3a26e2068c3a06e672063e1bba761204e68616e682e766e2074e1baa169206dc3a1792041544d2e20536175206b68692063687579e1bb836e206b686fe1baa36e2062e1baa16e20767569206cc3b26e67206c69c3aa6e2068e1bb8720c491e1bb83207468c3b46e672062c3a16f206ce1baa1692076e1bb9b69206368c3ba6e672074c3b4692c206368c3ba6e672074c3b4692073e1babd2078c3a163206e68e1baad6e2076c3a02063687579e1bb836e2073e1baa36e207068e1baa96d2074e1bb9b6920c491e1bb8b61206368e1bb892063e1bba761206b68c3a163682068c3a06e672e266c743b2f702667743b0d0a0909090944616e682073c3a163682073e1bb912074c3a069206b686fe1baa36e206e67c3a26e2068c3a06e672063e1bba761203138306275792e766e204368e1bba72074c3a069206b686fe1baa36e3a204e677579e1bb856e204d696e6820517579e1bb816e266c743b2f74642667743b0d0a0909266c743b2f74722667743b0d0a0909266c743b7472207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b2667743b0d0a090909266c743b7464207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b20766572746963616c2d616c69676e3a20746f703b202671756f743b2667743b0d0a09090909266c743b70207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a20313070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b2667743b0d0a090909090926616d703b6e6273703b4e67c3a26e2068c3a06e6720c490c3b46e6720c3a12062616e6b266c743b6272207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b202f2667743b0d0a090909090926616d703b6e6273703b266c743b2f702667743b0d0a090909266c743b2f74642667743b0d0a090909266c743b7464207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b20766572746963616c2d616c69676e3a20746f703b202671756f743b2667743b0d0a09090909266c743b70207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a20313070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b2667743b0d0a090909090930313034373631303936266c743b2f702667743b0d0a090909266c743b2f74642667743b0d0a0909266c743b2f74722667743b0d0a09266c743b2f74626f64792667743b0d0a266c743b2f7461626c652667743b0d0a266c743b702667743b0d0a09266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a323270783b2671756f743b2667743b332e266c743b7370616e207374796c653d2671756f743b636f6c6f723a233030303066663b2671756f743b2667743b5468616e6820746fc3a16e207472e1bbb16320747579e1babf6e207175612063e1bb956e67204e67c3a26e204c75e1bba36e67266c743b2f7370616e2667743b266c743b2f7370616e2667743b266c743b2f702667743b0d0a266c743b6832207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203570783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b206c696e652d6865696768743a20312e32353b20636f6c6f723a20726762283135302c20302c2031293b20666f6e742d73697a653a20313870783b20666f6e742d7765696768743a206e6f726d616c3b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20746578742d616c69676e3a206c6566743b202671756f743b2667743b0d0a09266c743b6272207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b202f2667743b0d0a0926616d703b6e6273703b266c743b2f68322667743b0d0a266c743b702667743b0d0a09266c743b7374726f6e672667743b266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a206d656469756d3b2671756f743b2667743b43c3b46e6720747920544e48482042c3a16e204ce1babb203138306275792063616d206be1babf7420c491e1baa36d2062e1baa36f2076e1bb81206b686fe1baa36e207469e1bb816e207468616e6820746fc3a16e2063e1bba761206b68c3a163682068c3a06e672e204ee1babf752063c3b32076e1baa56e20c491e1bb812067c3ac2078696e2062e1baa16e20767569206cc3b26e67206c69c3aa6e2068e1bb87207468656f2073e1bb912063e1bba7612063c3b46e67207479206368c3ba6e672074c3b4692021266c743b6272202f2667743b0d0a09266c743b6272202f2667743b0d0a09266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a206c617267653b20636f6c6f723a20236666303030303b2671756f743b2667743b486f746c696e65203a26616d703b6e6273703b2030393737333239333138266c743b2f7370616e2667743b266c743b2f7370616e2667743b266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a),
(6, 1, 'Chính Sách', 0x266c743b64697620636c6173733d2671756f743b7374642671756f743b2667743b0d0a09266c743b7020636c6173733d2671756f743b6e6577735f64657461696c5f7465617365722671756f743b2667743b0d0a0909266c743b7374726f6e672667743b312e266c743b2f7374726f6e672667743b26616d703b6e6273703b266c743b7374726f6e672667743bc490e1bb91692076e1bb9b6920c491e1bb8b61206368e1bb89206e68e1baad6e2073e1baa36e207068e1baa96d2074726f6e67206ee1bb9969207468c3a06e682048c3a0204ee1bb99693a266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a09266c743b70207374796c653d2671756f743b746578742d616c69676e3a206a7573746966793b2070616464696e672d6c6566743a20333070783b2671756f743b2667743b0d0a09093138306275792e766e206d69e1bb856e207068c3ad2076e1baad6e2063687579e1bb836e26616d703b6e6273703b2074726f6e67206ee1bb9969207468c3a06e682048c3a0204ee1bb99692076c3a02063616d206be1babf742073e1baa36e207068e1baa96d20c491c6b0e1bba363206769616f2074e1bb9b6920746179206b68c3a163682068c3a06e6720c491e1bab7742068c3a06e672e266c743b2f702667743b0d0a09266c743b70207374796c653d2671756f743b746578742d616c69676e3a206a7573746966793b2671756f743b2667743b0d0a0909266c743b7374726f6e672667743b322e266c743b2f7374726f6e672667743b26616d703b6e6273703b266c743b7374726f6e672667743bc490e1bb91692076e1bb9b6920c491e1bb8b61206368e1bb89206e68e1baad6e2073e1baa36e207068e1baa96d20e1bb9f206e676fe1baa169207468c3a06e682048c3a0204ee1bb99692076c3a02063c3a1632074e1bb896e68206b68c3a1633a266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a09266c743b70207374796c653d2671756f743b746578742d616c69676e3a206a7573746966793b2070616464696e672d6c6566743a20333070783b2671756f743b2667743b0d0a09093138306275792e766e2073e1babd207468e1bbb163206869e1bb876e207669e1bb87632063687579e1bb836e2073e1baa36e207068e1baa96d2063686f206b68c3a163682068c3a06e672062e1bab16e672068c3ac6e68207468e1bba9632063687579e1bb836e207068c3a174206e68616e682e205068c3ad2076e1baad6e2063687579e1bb836e2063686f2074e1bbab6e672073e1baa36e207068e1baa96d2073e1babd20c491c6b0e1bba3632074c3ad6e68207468656f2062e1baa36e67207068c3ad2063e1bba7612063c3b46e672074792063687579e1bb836e207068c3a174206e68616e682e205068c3ad2076e1baad6e2063687579e1bb836e2073e1babd20c491c6b0e1bba363206e68c3a26e207669c3aa6e2063e1bba761204e68616e682e766e2078c3a163206e68e1baad6e2076e1bb9b69206b68c3a163682068c3a06e67207472c6b0e1bb9b63206b6869207468616e6820746fc3a16e2076c3a02067e1bbad692073e1baa36e207068e1baa96d2e266c743b6272202f2667743b0d0a09095468e1bb9d69206769616e206e68e1baad6e2073e1baa36e207068e1baa96d207361752074e1bbab2031202d2035206e67c3a079207475e1bbb3207468656f20c491e1bb8b61206368e1bb89206e68e1baad6e2073e1baa36e207068e1baa96d2063e1bba761206b68c3a163682068c3a06e672e266c743b2f702667743b0d0a09266c743b702667743b0d0a0909266c743b7374726f6e672667743b4cc6b07520c3bd3a266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a09266c743b70207374796c653d2671756f743b70616464696e672d6c6566743a20333070783b20746578742d616c69676e3a206a7573746966793b2671756f743b2667743b0d0a09095765627369746526616d703b6e6273703b266c743b7374726f6e672667743b266c743b7370616e207374796c653d2671756f743b746578742d6465636f726174696f6e3a20756e6465726c696e653b2671756f743b2667743b687474703a2f2f3138306275792e766e266c743b2f7370616e2667743b266c743b2f7374726f6e672667743b206368e1bb89207469e1babf6e2068c3a06e682067e1bbad692068c3a06e6720c4916920736175206b6869206e68e1baad6e20c491c6b0e1bba363207468616e6820746fc3a16e2074e1bbab207068c3ad61207175c3bd206b68c3a163682e2056c3ac2076e1baad7920c491e1bb832073e1bb9b6d206e68e1baad6e20c491c6b0e1bba3632068c3a06e672c207175c3bd206b68c3a1636820767569206cc3b26e67207469e1babf6e2068c3a06e68207468e1bba72074e1bba5632063687579e1bb836e207469e1bb816e2073e1bb9b6d2e266c743b2f702667743b0d0a266c743b2f6469762667743b0d0a266c743b702667743b0d0a0926616d703b6e6273703b266c743b2f702667743b0d0a),
(5, 1, 'Xem Hàng Demo', 0x266c743b68312667743b0d0a0958656d2068c3a06e672064656d6f266c743b2f68312667743b0d0a266c743b702667743b0d0a09c490e1bb8320746875e1baad6e207469e1bb876e2063686f207175c3bd206b68c3a163682068c3a06e6720636f206e68752063e1baa7752078656d2073e1baa36e207068e1baa96d203138306275792e766e20c491c6b061207261206368c3ad6e682073c3a163682063686f207175c3bd206b68c3a163682068c3a06e672078656d2068c3a06e67207468e1bbad20717561206861692068c3ac6e68207468e1bba963206b68c3a163206e686175266c743b2f702667743b0d0a266c743b702667743b0d0a09312e4d75612073e1baa36e207068e1baa96d2076c3a0206d75e1bb916e2078656d207468e1bbad2068c3a06e67206b68c3a163266c743b2f702667743b0d0a266c743b702667743b0d0a096b6869207175c3bd206b68c3a163682068c3a06e67206d75612062e1baa574206be1bbb32073e1baa36e207068e1baa96d206ec3a06f207472c3aa6e203138306275792e766e207468c3ac207175c3bd206b68c3a1636826616d703b6e6273703b2063c3b3207468e1bb832079c3aa752063e1baa77526616d703b6e6273703b2078656d207468e1bbad2062e1baa574206be1bbb320312073e1baa36e207068e1baa96d207472c3aa6e203138306275792e766e2076c3a020686fc3a06e20746fc3a06e20c49175e1bba363206d69e1bb856e207068c3ad207469e1bb816e2076e1baad6e2063687579e1bb836e266c743b2f702667743b0d0a266c743b702667743b0d0a09322e4b68c3b46e67206d75612073e1baa36e207068e1baa96d206e68c6b06e67207468c3ad63682078656d2068c3a06e672064656d6f266c743b2f702667743b0d0a266c743b702667743b0d0a095175c3bd206b68c3a163682063c3b3207468e1bb832078656d2062e1baa5742063e1bba92068c3a06e672064656d6f2063e1bba761203138306275792e766e2c6ee1babf75207175c3bd206b68c3a16368206ce1baa5792073e1baa36e207068e1baa96d207468c3ac2063c3b46e67207479206d69e1bb856e207068c3ad2076e1baad6e2063687579e1bb836e2c63c3b26e206ee1babf75207175c3bd206b68c3a163682068c3a06e67206b68c3b46e67206ce1baa5792073e1baa36e207068e1baa96d207468c3ac2063c3b46e67207479206368e1bb89206ce1baa579207068c3ad2076e1baad6e2063687579e1bb836e2e266c743b2f702667743b0d0a),
(4, 2, 'Giới Thiệu', 0x266c743b6832207374796c653d2671756f743b746578742d616c69676e3a206a7573746966793b2671756f743b2667743b0d0a09536c6f67616e202671756f743b4d7561206cc3a0207468c3ad63682671756f743b266c743b2f68322667743b0d0a266c743b70207374796c653d2671756f743b746578742d616c69676e3a206a7573746966793b2671756f743b2667743b0d0a094e68616e68206cc3a0206de1bb99742063c3b46e672074792c206de1bb99742077656273697465206d75612073e1baaf6d207472e1bbb16320747579e1babf6e206c75c3b46e206d75e1bb916e206d616e67206ce1baa1692073e1bbb12068c3a069206cc3b26e672063686f206b68c3a163682068c3a06e672e266c743b2f702667743b0d0a266c743b70207374796c653d2671756f743b746578742d616c69676e3a206a7573746966793b2671756f743b2667743b0d0a0926616d703b6e6273703b266c743b2f702667743b0d0a266c743b6832207374796c653d2671756f743b746578742d616c69676e3a206a7573746966793b2671756f743b2667743b0d0a0954e1baa76d206e68c3ac6e266c743b2f68322667743b0d0a266c743b70207374796c653d2671756f743b746578742d616c69676e3a206a7573746966793b2671756f743b2667743b0d0a09266c743b6272202f2667743b0d0a09496e7465726e6574206b68c3b46e672062e1bb8b206769e1bb9b692068e1baa16e2076e1bb81206b68c3b46e67206769616e2076c3a0207468e1bb9d69206769616e2c2063c3b3207468e1bb8320c491c3a17020e1bba96e67206e68752063e1baa7752063e1bba761206e6869e1bb8175206e67c6b0e1bb9d692064c3b96e672063c3b96e67206de1bb9974206cc3ba632076e1bb9b6920636869207068c3ad2072e1baa574207468e1baa5702e266c743b6272202f2667743b0d0a094ce1bb8b63682073e1bbad20696e7465726e6574206de1bb9b69206368e1bb892062e1baaf7420c491e1baa7752c2063c3a1632073e1baa36e207068e1baa96d2076c3a02064e1bb8b63682076e1bba5207472c3aa6e20696e7465726e65742076e1baab6e2063c3b26e2073c6a1206b6861692076c3a020c491e1bab763206269e1bb8774206cc3a020e1bb9f205669e1bb8774204e616d2c20646f2076e1baad792063e1baa76e2074e1baad70207472756e67207068c3a17420747269e1bb836e206e68e1bbaf6e672063c6a12068e1bb99692076c3a0206ce1bba36920c3ad63682076c3b42068e1baa16e2063e1bba76120696e7465726e65742e26616d703b6e6273703b4368c3ba6e6720746120c491616e672073e1bb916e672074726f6e67207468e1bb9d6920c491e1baa169206dc3a020696e7465726e65742063c3b3206de1bab77420e1bb9f206de1bb8d69206e67c3b5206e67c3a163682063e1bba761206375e1bb99632073e1bb916e672e205669e1bb876326616d703b6e6273703b207472616f20c491e1bb9569207468c6b0c6a16e67206de1baa169207472c3aa6e20696e7465726e65742076e1baab6e2063c3b26e206368c6b061207068c3a17420747269e1bb836e2076c3a02063687579c3aa6e206e676869e1bb87702e2056c3ac2076e1baad792c206368c3ba6e672074c3b46920c491616e67206ee1bb97206ce1bbb1632068e1babf74206dc3ac6e682078c3a2792064e1bbb16e6720312068e1bb87207468e1bb916e67207068c3a26e207068e1bb91692073e1baa36e207068e1baa96d207472e1bbb16320747579e1babf6e20c491e1bb832074e1baa16f207261206769c3a1207472e1bb8b207068e1bba5632076e1bba520636f6e206e67c6b0e1bb9d692c207472e1bb9f207468c3a06e68206de1bb997420c49169e1bb81752074e1baa5742079e1babf752074726f6e67206375e1bb99632073e1bb916e6720e1bb9f205669e1bb8774204e616d2e26616d703b6e6273703b266c743b2f702667743b0d0a266c743b68322667743b0d0a09266c743b6272202f2667743b0d0a0953e1bba9206de1bb876e68266c743b2f68322667743b0d0a266c743b70207374796c653d2671756f743b746578742d616c69676e3a206a7573746966793b2671756f743b2667743b0d0a09266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20313270783b20666f6e742d7765696768743a206e6f726d616c3b2671756f743b2667743b58c3a2792064e1bbb16e672031206bc3aa6e68207068c3a26e207068e1bb91692068c3a06e672068c3b361207068e1bba5632076e1bba5206e68752063e1baa775207469c3aa752064c3b96e672063e1bba76120636f6e206e67c6b0e1bb9d69207468c3b46e672071756120696e7465726e65742e2054e1baa16f206ec3aa6e20312064e1bb8b63682076e1bba520746875e1baad6e207469e1bb876e206e68e1baa5742063686f206e67c6b0e1bb9d69207469c3aa752064c3b96e672c207068e1bba5632076e1bba5206e68752063e1baa77520312063c3a1636820686fc3a06e2068e1baa36f206e68e1baa5742e20c490e1bb83207472e1bb9f207468c3a06e68206dc3b42068c3ac6e682062c3a16e206ce1babb207468c3a06e682063c3b46e67206e68e1baa574205669e1bb8774204e616d2e266c743b2f7370616e2667743b266c743b2f702667743b0d0a266c743b702667743b0d0a0926616d703b6e6273703b266c743b2f702667743b0d0a266c743b68322667743b0d0a09c39d206e6768c4a9612063c3b46e67207669e1bb8763266c743b2f68322667743b0d0a266c743b70207374796c653d2671756f743b746578742d616c69676e3a206a7573746966793b2671756f743b2667743b0d0a094368c3ba6e672074c3b4692063756e672063e1baa5702063686f206b68c3a163682068c3a06e67206e6869e1bb8175206c6fe1baa1692073e1baa36e207068e1baa96d2c207469e1bb876e206ce1bba3692068c6a16e2c20e1bb9f206de1bba96320636869207068c3ad207468e1baa5702068c6a16e2e266c743b6272202f2667743b0d0a094769c3a1207472e1bb8b206368c3ba6e672074c3b469206d616e67206ce1baa1692063686f206b68c3a163682068c3a06e67206b68c3b46e67206368e1bb89206cc3a020636869207068c3ad207469e1bb816e2062e1baa1632c206dc3a02063c3b26e206cc3a0207468e1bb9d69206769616e2026616d703b616d703b2073e1bba963206b68e1bb8f652e204d75612073e1baaf6d207472e1bbb16320747579e1babf6e206cc3a0207468c3a26e20746869e1bb876e2076e1bb9b69206dc3b469207472c6b0e1bb9d6e672e204d616e67206ce1baa169206e69e1bb816d207675692c2068e1baa16e68207068c3ba632c2067c3b370207068e1baa76e206769c3ba70206b68c3a163682068c3a06e672074e1baad6e2068c6b0e1bb9f6e67206375e1bb99632073e1bb916e67206de1bb99742063c3a163682074e1bb917420c491e1bab970206e68e1baa5742e204e69e1bb816d20c491616d206dc3aa2063e1bba761206368c3ba6e672074c3b46920c491616e6720c491c3b36e672067c3b370206e68e1bbaf6e67206769c3a1207472e1bb8b2074e1bb917420c491e1bab9702063686f2078c3a32068e1bb99692062e1bab16e672063c3a16320686fe1baa17420c491e1bb996e67206b696e6820646f616e682063e1bba761206368c3ba6e672074c3b4692e266c743b2f702667743b0d0a266c743b70207374796c653d2671756f743b746578742d616c69676e3a206a7573746966793b2671756f743b2667743b0d0a0926616d703b6e6273703b266c743b2f702667743b0d0a266c743b6832207374796c653d2671756f743b746578742d616c69676e3a206a7573746966793b2671756f743b2667743b0d0a094b68c3a163682068c3a06e67266c743b2f68322667743b0d0a266c743b70207374796c653d2671756f743b746578742d616c69676e3a206a7573746966793b2671756f743b2667743b0d0a094de1bb8d692068c3a06e6820c491e1bb996e672c2073e1baa36e207068e1baa96d2c2064e1bb8b63682076e1bba52063e1bba7612063c3b46e6720747920c491e1bb8175206ce1baa579206b68c3a163682068c3a06e67206cc3a06d207472e1bb8d6e672074c3a26d2e2056c3a02074e1baa5742063e1baa320c491e1bb8175207068e1baa36920c491656d206ce1baa169206ce1bba36920c3ad63682063686f206b68c3a163682068c3a06e672e266c743b6272202f2667743b0d0a094b68c3b46e67207469e1babf63207468e1bb9d69206769616e2c2063c3b46e672073e1bba963207468e1bb8f61206dc3a36e206b68c3a163682068c3a06e67266c743b2f702667743b0d0a);
INSERT INTO `information_description` (`information_id`, `language_id`, `title`, `description`) VALUES
(3, 2, 'Thanh Toán', 0x266c743b702667743b0d0a09266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a323070783b2671756f743b2667743b3138306275792e766e2063c3b46e672063e1baa5702033207068c6b0c6a16e67207468e1bba963207468616e6820746fc3a16e266c743b2f7370616e2667743b266c743b2f702667743b0d0a266c743b702667743b0d0a09266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a323270783b2671756f743b2667743b266c743b7374726f6e672667743b266c743b7370616e207374796c653d2671756f743b666f6e742d7765696768743a20626f6c643b2671756f743b2667743b312e266c743b7370616e207374796c653d2671756f743b636f6c6f723a233030303066663b2671756f743b2667743b5468616e6820746f266c743b2f7370616e2667743b266c743b2f7370616e2667743b266c743b7370616e207374796c653d2671756f743b636f6c6f723a233030303066663b2671756f743b2667743bc3a16e2074e1baa169206e68c3a0266c743b2f7370616e2667743b266c743b2f7374726f6e672667743b266c743b2f7370616e2667743b266c743b2f702667743b0d0a266c743b6832207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203570783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b206c696e652d6865696768743a20312e32353b20636f6c6f723a20726762283135302c20302c2031293b20666f6e742d73697a653a20313870783b20666f6e742d7765696768743a206e6f726d616c3b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20746578742d616c69676e3a206c6566743b202671756f743b2667743b0d0a0926616d703b6e6273703b266c743b2f68322667743b0d0a266c743b6832207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203570783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b206c696e652d6865696768743a20312e32353b20636f6c6f723a20726762283135302c20302c2031293b20666f6e742d73697a653a20313870783b20666f6e742d7765696768743a206e6f726d616c3b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20746578742d616c69676e3a206c6566743b202671756f743b2667743b0d0a09266c743b6272207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b202f2667743b0d0a0926616d703b6e6273703b266c743b2f68322667743b0d0a266c743b7461626c6520626f726465723d2671756f743b302671756f743b206865696768743d2671756f743b3138342671756f743b207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b20626f726465722d746f702d77696474683a203070783b20626f726465722d72696768742d77696474683a203070783b20626f726465722d626f74746f6d2d77696474683a203070783b20626f726465722d6c6566742d77696474683a203070783b20626f726465722d7374796c653a20696e697469616c3b20626f726465722d636f6c6f723a20696e697469616c3b20626f726465722d636f6c6c617073653a20636f6c6c617073653b202d7765626b69742d626f726465722d686f72697a6f6e74616c2d73706163696e673a203070783b202d7765626b69742d626f726465722d766572746963616c2d73706163696e673a203070783b20656d7074792d63656c6c733a2073686f773b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20746578742d616c69676e3a206c6566743b202671756f743b2077696474683d2671756f743b3633302671756f743b2667743b0d0a09266c743b74626f6479207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b2667743b0d0a0909266c743b7472207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b2667743b0d0a090909266c743b746420726f777370616e3d2671756f743b332671756f743b207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b20766572746963616c2d616c69676e3a20746f703b202671756f743b2667743b0d0a09090909266c743b70207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a20313070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b2667743b0d0a0909090909266c743b696d6720616c743d2671756f743b2671756f743b206865696768743d2671756f743b3135332671756f743b207372633d2671756f743b687474703a2f2f6e68616e682e766e2f6d656469612f74696e2f7461696e68612e6a70672671756f743b207374796c653d2671756f743b6d617267696e2d746f703a203570783b206d617267696e2d72696768743a20313070783b206d617267696e2d626f74746f6d3a203570783b206d617267696e2d6c6566743a20313070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b20626f726465722d746f702d77696474683a203070783b20626f726465722d72696768742d77696474683a203070783b20626f726465722d626f74746f6d2d77696474683a203070783b20626f726465722d6c6566742d77696474683a203070783b20626f726465722d7374796c653a20696e697469616c3b20626f726465722d636f6c6f723a20696e697469616c3b20626f726465722d696d6167653a20696e697469616c3b20766572746963616c2d616c69676e3a20746f703b20666c6f61743a206c6566743b202671756f743b2077696474683d2671756f743b3135302671756f743b202f2667743b266c743b2f702667743b0d0a090909266c743b2f74642667743b0d0a090909266c743b746420636f6c7370616e3d2671756f743b322671756f743b207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b20766572746963616c2d616c69676e3a20746f703b202671756f743b2667743b0d0a09090909266c743b6272207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b202f2667743b0d0a090909093138306275792e766e2073e1babd2078c3a163206e68e1baad6e20c491c6a16e2068c3a06e672076c3a02074e1bb956e67206769c3a1207472e1bb8b20c491c6a16e2068c3a06e672076e1bb9b69206b68c3a163682068c3a06e672e20536175206b68692078c3a163206e68e1baad6e2c206e68c3a26e207669c3aa6e206769616f206e68e1baad6e2063e1bba761206368c3ba6e672074c3b4692073e1babd2063687579e1bb836e2073e1baa36e207068e1baa96d2074e1bb9b6920c491e1bb8b61206368e1bb892063e1bba761206b68c3a163682068c3a06e672076c3a020746875207469e1bb816e207472e1bbb163207469e1babf702074e1baa16920c491e1bb8b61206368e1bb892063e1bba761206b68c3a163682068c3a06e672e26616d703b6e6273703b0d0a09090909266c743b70207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a20313070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b2667743b0d0a090909090928c381702064e1bba56e672063686f2063c3a16320c491e1bb8b61206368e1bb892074e1baa169206ee1bb9969207468c3a06e682048c3a0204ee1bb996929266c743b2f702667743b0d0a090909266c743b2f74642667743b0d0a0909266c743b2f74722667743b0d0a09266c743b2f74626f64792667743b0d0a266c743b2f7461626c652667743b0d0a266c743b702667743b0d0a09266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20313670783b2671756f743b2667743b266c743b7374726f6e672667743b32266c743b7370616e207374796c653d2671756f743b636f6c6f723a233030303066663b2671756f743b2667743b2e266c743b2f7370616e2667743b266c743b2f7374726f6e672667743b266c743b2f7370616e2667743b266c743b7370616e207374796c653d2671756f743b636f6c6f723a233030303066663b2671756f743b2667743b266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a20323270783b2671756f743b2667743b43687579e1bb836e206b686fe1baa36e2062e1bab16e672041544d266c743b2f7370616e2667743b266c743b2f7370616e2667743b266c743b2f702667743b0d0a266c743b6832207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203570783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b206c696e652d6865696768743a20312e32353b20636f6c6f723a20726762283135302c20302c2031293b20666f6e742d73697a653a20313870783b20666f6e742d7765696768743a206e6f726d616c3b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20746578742d616c69676e3a206c6566743b202671756f743b2667743b0d0a09266c743b6272207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b202f2667743b0d0a0926616d703b6e6273703b266c743b2f68322667743b0d0a266c743b7461626c6520626f726465723d2671756f743b302671756f743b206865696768743d2671756f743b3236392671756f743b207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b20626f726465722d746f702d77696474683a203070783b20626f726465722d72696768742d77696474683a203070783b20626f726465722d626f74746f6d2d77696474683a203070783b20626f726465722d6c6566742d77696474683a203070783b20626f726465722d7374796c653a20696e697469616c3b20626f726465722d636f6c6f723a20696e697469616c3b20626f726465722d636f6c6c617073653a20636f6c6c617073653b202d7765626b69742d626f726465722d686f72697a6f6e74616c2d73706163696e673a203070783b202d7765626b69742d626f726465722d766572746963616c2d73706163696e673a203070783b20656d7074792d63656c6c733a2073686f773b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20746578742d616c69676e3a206c6566743b202671756f743b2077696474683d2671756f743b3633302671756f743b2667743b0d0a09266c743b74626f6479207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b2667743b0d0a0909266c743b7472207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b2667743b0d0a090909266c743b746420726f777370616e3d2671756f743b332671756f743b207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b20766572746963616c2d616c69676e3a20746f703b202671756f743b2667743b0d0a09090909266c743b70207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a20313070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b2667743b0d0a0909090909266c743b696d6720616c743d2671756f743b2671756f743b206865696768743d2671756f743b3135332671756f743b207372633d2671756f743b687474703a2f2f6e68616e682e766e2f6d656469612f74696e2f63687579656e6b686f616e41544d2e6a70672671756f743b207374796c653d2671756f743b6d617267696e2d746f703a203570783b206d617267696e2d72696768743a20313070783b206d617267696e2d626f74746f6d3a203570783b206d617267696e2d6c6566743a20313070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b20626f726465722d746f702d77696474683a203070783b20626f726465722d72696768742d77696474683a203070783b20626f726465722d626f74746f6d2d77696474683a203070783b20626f726465722d6c6566742d77696474683a203070783b20626f726465722d7374796c653a20696e697469616c3b20626f726465722d636f6c6f723a20696e697469616c3b20626f726465722d696d6167653a20696e697469616c3b20766572746963616c2d616c69676e3a20746f703b20666c6f61743a206c6566743b202671756f743b2077696474683d2671756f743b3135302671756f743b202f2667743b266c743b2f702667743b0d0a090909266c743b2f74642667743b0d0a090909266c743b746420636f6c7370616e3d2671756f743b322671756f743b207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b20766572746963616c2d616c69676e3a20746f703b202671756f743b2667743b0d0a09090909266c743b70207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a20313070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b2667743b0d0a09090909094b68c3a163682068c3a06e672063687579e1bb836e206b686fe1baa36e2076c3a06f2074c3a069206b686fe1baa36e206e67c3a26e2068c3a06e672063e1bba761204e68616e682e766e2074e1baa169206dc3a1792041544d2e20536175206b68692063687579e1bb836e206b686fe1baa36e2062e1baa16e20767569206cc3b26e67206c69c3aa6e2068e1bb8720c491e1bb83207468c3b46e672062c3a16f206ce1baa1692076e1bb9b69206368c3ba6e672074c3b4692c206368c3ba6e672074c3b4692073e1babd2078c3a163206e68e1baad6e2076c3a02063687579e1bb836e2073e1baa36e207068e1baa96d2074e1bb9b6920c491e1bb8b61206368e1bb892063e1bba761206b68c3a163682068c3a06e672e266c743b2f702667743b0d0a0909090944616e682073c3a163682073e1bb912074c3a069206b686fe1baa36e206e67c3a26e2068c3a06e672063e1bba761203138306275792e766e204368e1bba72074c3a069206b686fe1baa36e3a204e677579e1bb856e204d696e6820517579e1bb816e266c743b2f74642667743b0d0a0909266c743b2f74722667743b0d0a0909266c743b7472207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b2667743b0d0a090909266c743b7464207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b20766572746963616c2d616c69676e3a20746f703b202671756f743b2667743b0d0a09090909266c743b70207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a20313070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b2667743b0d0a090909090926616d703b6e6273703b4e67c3a26e2068c3a06e6720c490c3b46e6720c3a12062616e6b266c743b6272207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b202f2667743b0d0a090909090926616d703b6e6273703b266c743b2f702667743b0d0a090909266c743b2f74642667743b0d0a090909266c743b7464207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b20766572746963616c2d616c69676e3a20746f703b202671756f743b2667743b0d0a09090909266c743b70207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a20313070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b2667743b0d0a090909090930313034373631303936266c743b2f702667743b0d0a090909266c743b2f74642667743b0d0a0909266c743b2f74722667743b0d0a09266c743b2f74626f64792667743b0d0a266c743b2f7461626c652667743b0d0a266c743b702667743b0d0a09266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a323270783b2671756f743b2667743b332e266c743b7370616e207374796c653d2671756f743b636f6c6f723a233030303066663b2671756f743b2667743b5468616e6820746fc3a16e207472e1bbb16320747579e1babf6e207175612063e1bb956e67204e67c3a26e204c75e1bba36e67266c743b2f7370616e2667743b266c743b2f7370616e2667743b266c743b2f702667743b0d0a266c743b6832207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203570783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b206c696e652d6865696768743a20312e32353b20636f6c6f723a20726762283135302c20302c2031293b20666f6e742d73697a653a20313870783b20666f6e742d7765696768743a206e6f726d616c3b20666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b20746578742d616c69676e3a206c6566743b202671756f743b2667743b0d0a09266c743b6272207374796c653d2671756f743b6d617267696e2d746f703a203070783b206d617267696e2d72696768743a203070783b206d617267696e2d626f74746f6d3a203070783b206d617267696e2d6c6566743a203070783b2070616464696e672d746f703a203070783b2070616464696e672d72696768743a203070783b2070616464696e672d626f74746f6d3a203070783b2070616464696e672d6c6566743a203070783b202671756f743b202f2667743b0d0a0926616d703b6e6273703b266c743b2f68322667743b0d0a266c743b702667743b0d0a09266c743b7374726f6e672667743b266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a206d656469756d3b2671756f743b2667743b43c3b46e6720747920544e48482042c3a16e204ce1babb203138306275792063616d206be1babf7420c491e1baa36d2062e1baa36f2076e1bb81206b686fe1baa36e207469e1bb816e207468616e6820746fc3a16e2063e1bba761206b68c3a163682068c3a06e672e204ee1babf752063c3b32076e1baa56e20c491e1bb812067c3ac2078696e2062e1baa16e20767569206cc3b26e67206c69c3aa6e2068e1bb87207468656f2073e1bb912063e1bba7612063c3b46e67207479206368c3ba6e672074c3b4692021266c743b6272202f2667743b0d0a09266c743b6272202f2667743b0d0a09266c743b7370616e207374796c653d2671756f743b666f6e742d73697a653a206c617267653b20636f6c6f723a20236666303030303b2671756f743b2667743b486f746c696e65203a26616d703b6e6273703b2030393737333239333138266c743b2f7370616e2667743b266c743b2f7370616e2667743b266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a),
(6, 2, 'Chính Sách', 0x266c743b64697620636c6173733d2671756f743b7374642671756f743b2667743b0d0a09266c743b7020636c6173733d2671756f743b6e6577735f64657461696c5f7465617365722671756f743b2667743b0d0a0909266c743b7374726f6e672667743b312e266c743b2f7374726f6e672667743b26616d703b6e6273703b266c743b7374726f6e672667743bc490e1bb91692076e1bb9b6920c491e1bb8b61206368e1bb89206e68e1baad6e2073e1baa36e207068e1baa96d2074726f6e67206ee1bb9969207468c3a06e682048c3a0204ee1bb99693a266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a09266c743b70207374796c653d2671756f743b746578742d616c69676e3a206a7573746966793b2070616464696e672d6c6566743a20333070783b2671756f743b2667743b0d0a09093138306275792e766e206d69e1bb856e207068c3ad2076e1baad6e2063687579e1bb836e26616d703b6e6273703b2074726f6e67206ee1bb9969207468c3a06e682048c3a0204ee1bb99692076c3a02063616d206be1babf742073e1baa36e207068e1baa96d20c491c6b0e1bba363206769616f2074e1bb9b6920746179206b68c3a163682068c3a06e6720c491e1bab7742068c3a06e672e266c743b2f702667743b0d0a09266c743b70207374796c653d2671756f743b746578742d616c69676e3a206a7573746966793b2671756f743b2667743b0d0a0909266c743b7374726f6e672667743b322e266c743b2f7374726f6e672667743b26616d703b6e6273703b266c743b7374726f6e672667743bc490e1bb91692076e1bb9b6920c491e1bb8b61206368e1bb89206e68e1baad6e2073e1baa36e207068e1baa96d20e1bb9f206e676fe1baa169207468c3a06e682048c3a0204ee1bb99692076c3a02063c3a1632074e1bb896e68206b68c3a1633a266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a09266c743b70207374796c653d2671756f743b746578742d616c69676e3a206a7573746966793b2070616464696e672d6c6566743a20333070783b2671756f743b2667743b0d0a09093138306275792e766e2073e1babd207468e1bbb163206869e1bb876e207669e1bb87632063687579e1bb836e2073e1baa36e207068e1baa96d2063686f206b68c3a163682068c3a06e672062e1bab16e672068c3ac6e68207468e1bba9632063687579e1bb836e207068c3a174206e68616e682e205068c3ad2076e1baad6e2063687579e1bb836e2063686f2074e1bbab6e672073e1baa36e207068e1baa96d2073e1babd20c491c6b0e1bba3632074c3ad6e68207468656f2062e1baa36e67207068c3ad2063e1bba7612063c3b46e672074792063687579e1bb836e207068c3a174206e68616e682e205068c3ad2076e1baad6e2063687579e1bb836e2073e1babd20c491c6b0e1bba363206e68c3a26e207669c3aa6e2063e1bba761204e68616e682e766e2078c3a163206e68e1baad6e2076e1bb9b69206b68c3a163682068c3a06e67207472c6b0e1bb9b63206b6869207468616e6820746fc3a16e2076c3a02067e1bbad692073e1baa36e207068e1baa96d2e266c743b6272202f2667743b0d0a09095468e1bb9d69206769616e206e68e1baad6e2073e1baa36e207068e1baa96d207361752074e1bbab2031202d2035206e67c3a079207475e1bbb3207468656f20c491e1bb8b61206368e1bb89206e68e1baad6e2073e1baa36e207068e1baa96d2063e1bba761206b68c3a163682068c3a06e672e266c743b2f702667743b0d0a09266c743b702667743b0d0a0909266c743b7374726f6e672667743b4cc6b07520c3bd3a266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a09266c743b70207374796c653d2671756f743b70616464696e672d6c6566743a20333070783b20746578742d616c69676e3a206a7573746966793b2671756f743b2667743b0d0a09095765627369746526616d703b6e6273703b266c743b7374726f6e672667743b266c743b7370616e207374796c653d2671756f743b746578742d6465636f726174696f6e3a20756e6465726c696e653b2671756f743b2667743b687474703a2f2f3138306275792e766e266c743b2f7370616e2667743b266c743b2f7374726f6e672667743b206368e1bb89207469e1babf6e2068c3a06e682067e1bbad692068c3a06e6720c4916920736175206b6869206e68e1baad6e20c491c6b0e1bba363207468616e6820746fc3a16e2074e1bbab207068c3ad61207175c3bd206b68c3a163682e2056c3ac2076e1baad7920c491e1bb832073e1bb9b6d206e68e1baad6e20c491c6b0e1bba3632068c3a06e672c207175c3bd206b68c3a1636820767569206cc3b26e67207469e1babf6e2068c3a06e68207468e1bba72074e1bba5632063687579e1bb836e207469e1bb816e2073e1bb9b6d2e266c743b2f702667743b0d0a266c743b2f6469762667743b0d0a266c743b702667743b0d0a0926616d703b6e6273703b266c743b2f702667743b0d0a),
(5, 2, 'Xem Hàng Demo', 0x266c743b68312667743b0d0a0958656d2068c3a06e672064656d6f266c743b2f68312667743b0d0a266c743b702667743b0d0a09c490e1bb8320746875e1baad6e207469e1bb876e2063686f207175c3bd206b68c3a163682068c3a06e6720636f206e68752063e1baa7752078656d2073e1baa36e207068e1baa96d203138306275792e766e20c491c6b061207261206368c3ad6e682073c3a163682063686f207175c3bd206b68c3a163682068c3a06e672078656d2068c3a06e67207468e1bbad20717561206861692068c3ac6e68207468e1bba963206b68c3a163206e686175266c743b2f702667743b0d0a266c743b702667743b0d0a09312e4d75612073e1baa36e207068e1baa96d2076c3a0206d75e1bb916e2078656d207468e1bbad2068c3a06e67206b68c3a163266c743b2f702667743b0d0a266c743b702667743b0d0a096b6869207175c3bd206b68c3a163682068c3a06e67206d75612062e1baa574206be1bbb32073e1baa36e207068e1baa96d206ec3a06f207472c3aa6e203138306275792e766e207468c3ac207175c3bd206b68c3a1636826616d703b6e6273703b2063c3b3207468e1bb832079c3aa752063e1baa77526616d703b6e6273703b2078656d207468e1bbad2062e1baa574206be1bbb320312073e1baa36e207068e1baa96d207472c3aa6e203138306275792e766e2076c3a020686fc3a06e20746fc3a06e20c49175e1bba363206d69e1bb856e207068c3ad207469e1bb816e2076e1baad6e2063687579e1bb836e266c743b2f702667743b0d0a266c743b702667743b0d0a09322e4b68c3b46e67206d75612073e1baa36e207068e1baa96d206e68c6b06e67207468c3ad63682078656d2068c3a06e672064656d6f266c743b2f702667743b0d0a266c743b702667743b0d0a095175c3bd206b68c3a163682063c3b3207468e1bb832078656d2062e1baa5742063e1bba92068c3a06e672064656d6f2063e1bba761203138306275792e766e2c6ee1babf75207175c3bd206b68c3a16368206ce1baa5792073e1baa36e207068e1baa96d207468c3ac2063c3b46e67207479206d69e1bb856e207068c3ad2076e1baad6e2063687579e1bb836e2c63c3b26e206ee1babf75207175c3bd206b68c3a163682068c3a06e67206b68c3b46e67206ce1baa5792073e1baa36e207068e1baa96d207468c3ac2063c3b46e67207479206368e1bb89206ce1baa579207068c3ad2076e1baad6e2063687579e1bb836e2e266c743b2f702667743b0d0a);

-- --------------------------------------------------------

--
-- Table structure for table `information_to_layout`
--

CREATE TABLE IF NOT EXISTS `information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `information_to_layout`
--


-- --------------------------------------------------------

--
-- Table structure for table `information_to_store`
--

CREATE TABLE IF NOT EXISTS `information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `information_to_store`
--

INSERT INTO `information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `code` varchar(5) COLLATE utf8_bin NOT NULL,
  `locale` varchar(255) COLLATE utf8_bin NOT NULL,
  `image` varchar(64) COLLATE utf8_bin NOT NULL,
  `directory` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `filename` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `filename`, `sort_order`, `status`) VALUES
(1, 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 'english', 2, 0),
(2, 'vietnamese', 'vi', 'vi_VN.UTF-8,vi_VN,vi-vn,vietnamese', 'vn.png', 'vietnamese', 'vietnamese', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `layout`
--

CREATE TABLE IF NOT EXISTS `layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=12 ;

--
-- Dumping data for table `layout`
--

INSERT INTO `layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information');

-- --------------------------------------------------------

--
-- Table structure for table `layout_route`
--

CREATE TABLE IF NOT EXISTS `layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=32 ;

--
-- Dumping data for table `layout_route`
--

INSERT INTO `layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(30, 6, 0, 'account'),
(17, 10, 0, 'affiliate/'),
(29, 3, 0, 'product/category'),
(27, 1, 3, 'common/home'),
(26, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(22, 5, 0, 'product/manufacturer'),
(23, 7, 0, 'checkout/'),
(31, 8, 0, 'information/contact');

-- --------------------------------------------------------

--
-- Table structure for table `length_class`
--

CREATE TABLE IF NOT EXISTS `length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `length_class`
--

INSERT INTO `length_class` (`length_class_id`, `value`) VALUES
(1, 1.00000000),
(2, 10.00000000),
(3, 0.39370000);

-- --------------------------------------------------------

--
-- Table structure for table `length_class_description`
--

CREATE TABLE IF NOT EXISTS `length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) COLLATE utf8_bin NOT NULL,
  `unit` varchar(4) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `length_class_description`
--

INSERT INTO `length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE IF NOT EXISTS `manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'data/htc_logo.jpg', 0),
(6, 'Palm', 'data/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'data/hp_logo.jpg', 0),
(8, 'Apple', 'data/apple_logo.jpg', 0),
(9, 'Canon', 'data/canon_logo.jpg', 0),
(10, 'Sony', 'data/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer_to_store`
--

CREATE TABLE IF NOT EXISTS `manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `manufacturer_to_store`
--

INSERT INTO `manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `option`
--

CREATE TABLE IF NOT EXISTS `option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) COLLATE utf8_bin NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=13 ;

--
-- Dumping data for table `option`
--

INSERT INTO `option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 2),
(2, 'checkbox', 3),
(4, 'text', 4),
(5, 'select', 1),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 1),
(12, 'date', 1);

-- --------------------------------------------------------

--
-- Table structure for table `option_description`
--

CREATE TABLE IF NOT EXISTS `option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `option_description`
--

INSERT INTO `option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `option_value`
--

CREATE TABLE IF NOT EXISTS `option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=49 ;

--
-- Dumping data for table `option_value`
--

INSERT INTO `option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `option_value_description`
--

CREATE TABLE IF NOT EXISTS `option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `option_value_description`
--

INSERT INTO `option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) COLLATE utf8_bin NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `store_url` varchar(255) COLLATE utf8_bin NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lastname` varchar(32) COLLATE utf8_bin NOT NULL,
  `email` varchar(96) COLLATE utf8_bin NOT NULL,
  `telephone` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `fax` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `shipping_firstname` varchar(32) COLLATE utf8_bin NOT NULL,
  `shipping_lastname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `shipping_company` varchar(32) COLLATE utf8_bin NOT NULL,
  `shipping_address_1` varchar(128) COLLATE utf8_bin NOT NULL,
  `shipping_address_2` varchar(128) COLLATE utf8_bin NOT NULL,
  `shipping_city` varchar(128) COLLATE utf8_bin NOT NULL,
  `shipping_postcode` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `shipping_country` varchar(128) COLLATE utf8_bin NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) COLLATE utf8_bin NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text COLLATE utf8_bin NOT NULL,
  `shipping_method` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `payment_firstname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `payment_lastname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `payment_company` varchar(32) COLLATE utf8_bin NOT NULL,
  `payment_address_1` varchar(128) COLLATE utf8_bin NOT NULL,
  `payment_address_2` varchar(128) COLLATE utf8_bin NOT NULL,
  `payment_city` varchar(128) COLLATE utf8_bin NOT NULL,
  `payment_postcode` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `payment_country` varchar(128) COLLATE utf8_bin NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) COLLATE utf8_bin NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text COLLATE utf8_bin NOT NULL,
  `payment_method` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_bin NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) COLLATE utf8_bin NOT NULL,
  `currency_value` decimal(15,8) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `ip` varchar(15) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_method`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_method`, `comment`, `total`, `reward`, `order_status_id`, `affiliate_id`, `commission`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `date_added`, `date_modified`, `ip`) VALUES
(1, 0, 'INV-2011-00', 0, 'Your Store', 'http://localhost/180buy/', 1, 8, 'nguyen thanh', 'trung', 'trungnguyenthanh70@gmail.com', '0987089098', '', 'nguyen thanh', 'trung', '', 'tu ky', '', 'ha noi', '1000', 'Viet Nam', 230, 'Ha Noi', 3776, '', 'Flat Shipping Rate', 'nguyen thanh', 'trung', '', 'tu ky', '', 'ha noi', '1000', 'Viet Nam', 230, 'Ha Noi', 3776, '', 'Cash On Delivery', '', 2005.0000, 800, 1, 0, 0.0000, 1, 2, 'USD', 1.00000000, '2012-01-08 17:26:39', '2012-01-08 17:26:41', '::1'),
(2, 0, 'INV-2011-00', 0, 'Your Store', 'http://localhost/180buy/', 1, 8, 'nguyen thanh', 'trung', 'trungnguyenthanh70@gmail.com', '0987089098', '', 'nguyen thanh', 'trung', '', 'tu ky', '', 'ha noi', '1000', 'Viet Nam', 230, 'Ha Noi', 3776, '', 'Flat Shipping Rate', 'nguyen thanh', 'trung', '', 'tu ky', '', 'ha noi', '1000', 'Viet Nam', 230, 'Ha Noi', 3776, '', 'Cash On Delivery', '', 1505.0000, 400, 1, 0, 0.0000, 1, 2, 'USD', 1.00000000, '2012-01-08 17:27:55', '2012-01-08 17:27:56', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `order_download`
--

CREATE TABLE IF NOT EXISTS `order_download` (
  `order_download_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `filename` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mask` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `remaining` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `order_download`
--


-- --------------------------------------------------------

--
-- Table structure for table `order_history`
--

CREATE TABLE IF NOT EXISTS `order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_bin NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `order_history`
--

INSERT INTO `order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 1, 1, '', '2012-01-08 17:26:41'),
(2, 2, 1, 1, '', '2012-01-08 17:27:56');

-- --------------------------------------------------------

--
-- Table structure for table `order_option`
--

CREATE TABLE IF NOT EXISTS `order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `value` text COLLATE utf8_bin NOT NULL,
  `type` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `order_option`
--


-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE IF NOT EXISTS `order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `model` varchar(24) COLLATE utf8_bin NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`) VALUES
(1, 1, 45, 'MacBook Pro', 'Product 18', 1, 2000.0000, 2000.0000, 0.0000),
(2, 2, 28, 'HTC Touch HD', 'Product 1', 1, 100.0000, 100.0000, 0.0000),
(3, 2, 33, 'Samsung SyncMaster 941BW', 'Product 6', 2, 200.0000, 400.0000, 0.0000),
(4, 2, 46, 'Sony VAIO', 'Product 19', 1, 1000.0000, 1000.0000, 0.0000);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE IF NOT EXISTS `order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=17 ;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `order_total`
--

CREATE TABLE IF NOT EXISTS `order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_bin NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `text` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `idx_orders_total_orders_id` (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Dumping data for table `order_total`
--

INSERT INTO `order_total` (`order_total_id`, `order_id`, `code`, `title`, `text`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Sub-Total', '$2,000.00', 2000.0000, 1),
(2, 1, 'shipping', 'Flat Shipping Rate', '$5.00', 5.0000, 3),
(3, 1, 'total', 'Total', '$2,005.00', 2005.0000, 9),
(4, 2, 'sub_total', 'Sub-Total', '$1,500.00', 1500.0000, 1),
(5, 2, 'shipping', 'Flat Shipping Rate', '$5.00', 5.0000, 3),
(6, 2, 'total', 'Total', '$1,505.00', 1505.0000, 9);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) COLLATE utf8_bin NOT NULL,
  `sku` varchar(64) COLLATE utf8_bin NOT NULL,
  `upc` varchar(12) COLLATE utf8_bin NOT NULL,
  `location` varchar(128) COLLATE utf8_bin NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL,
  `weight` decimal(5,2) NOT NULL DEFAULT '0.00',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(5,2) NOT NULL DEFAULT '0.00',
  `width` decimal(5,2) NOT NULL DEFAULT '0.00',
  `height` decimal(5,2) NOT NULL DEFAULT '0.00',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=50 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `model`, `sku`, `upc`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `date_added`, `date_modified`, `viewed`) VALUES
(28, 'Product 1', '', '', '', 938, 7, 'data/htc_touch_hd_1.jpg', 5, 1, 100.0000, 200, 9, '2009-02-03', 146.40, 2, 0.00, 0.00, 0.00, 1, 1, 1, 0, 1, '2009-02-03 16:06:50', '2011-09-30 01:05:39', 1),
(29, 'Product 2', '', '', '', 999, 6, 'data/palm_treo_pro_1.jpg', 6, 1, 279.9900, 0, 9, '2009-02-03', 133.00, 2, 0.00, 0.00, 0.00, 3, 1, 1, 0, 1, '2009-02-03 16:42:17', '2011-09-30 01:06:08', 0),
(30, 'Product 3', '', '', '', 7, 6, 'data/canon_eos_5d_1.jpg', 9, 1, 100.0000, 0, 9, '2009-02-03', 0.00, 1, 0.00, 0.00, 0.00, 1, 1, 1, 0, 1, '2009-02-03 16:59:00', '2011-09-30 01:05:23', 16),
(31, 'Product 4', '', '', '', 1000, 6, 'data/nikon_d300_1.jpg', 0, 1, 80.0000, 0, 9, '2009-02-03', 0.00, 1, 0.00, 0.00, 0.00, 3, 1, 1, 0, 1, '2009-02-03 17:00:10', '2011-09-30 01:06:00', 2),
(32, 'Product 5', '', '', '', 999, 6, 'data/ipod_touch_1.jpg', 8, 1, 100.0000, 0, 9, '2009-02-03', 5.00, 1, 0.00, 0.00, 0.00, 1, 1, 1, 0, 1, '2009-02-03 17:07:26', '2011-09-30 01:07:22', 1),
(33, 'Product 6', '', '', '', 998, 6, 'data/samsung_syncmaster_941bw.jpg', 0, 1, 200.0000, 0, 9, '2009-02-03', 5.00, 1, 0.00, 0.00, 0.00, 2, 1, 1, 0, 1, '2009-02-03 17:08:31', '2011-09-30 01:06:29', 0),
(34, 'Product 7', '', '', '', 1000, 6, 'data/ipod_shuffle_1.jpg', 8, 1, 100.0000, 0, 9, '2009-02-03', 5.00, 1, 0.00, 0.00, 0.00, 2, 1, 1, 0, 1, '2009-02-03 18:07:54', '2011-09-30 01:07:17', 0),
(35, 'Product 8', '', '', '', 1000, 5, '', 0, 0, 100.0000, 0, 9, '2009-02-03', 5.00, 1, 0.00, 0.00, 0.00, 1, 1, 1, 0, 1, '2009-02-03 18:08:31', '2011-09-30 01:06:17', 0),
(36, 'Product 9', '', '', '', 994, 6, 'data/ipod_nano_1.jpg', 8, 0, 100.0000, 100, 9, '2009-02-03', 5.00, 1, 0.00, 0.00, 0.00, 2, 1, 1, 0, 1, '2009-02-03 18:09:19', '2011-09-30 01:07:12', 0),
(40, 'product 11', '', '', '', 970, 5, 'data/iphone_1.jpg', 8, 1, 101.0000, 0, 9, '2009-02-03', 10.00, 1, 0.00, 0.00, 0.00, 1, 1, 1, 0, 1, '2009-02-03 21:07:12', '2011-09-30 01:06:53', 26),
(41, 'Product 14', '', '', '', 977, 5, 'data/imac_1.jpg', 8, 1, 100.0000, 0, 9, '2009-02-03', 5.00, 1, 0.00, 0.00, 0.00, 1, 1, 1, 0, 1, '2009-02-03 21:07:26', '2011-09-30 01:06:44', 3),
(42, 'Product 15', '', '', '', 990, 5, 'data/apple_cinema_30.jpg', 8, 1, 100.0000, 400, 9, '2009-02-04', 12.50, 1, 1.00, 2.00, 3.00, 1, 1, 2, 0, 1, '2009-02-03 21:07:37', '2012-01-09 21:36:24', 7),
(43, 'Product 16', '', '', '', 929, 5, 'data/macbook_1.jpg', 8, 0, 500.0000, 0, 9, '2009-02-03', 0.00, 1, 0.00, 0.00, 0.00, 2, 1, 1, 0, 1, '2009-02-03 21:07:49', '2011-09-30 01:05:46', 2),
(44, 'Product 17', '', '', '', 1000, 5, 'data/macbook_air_1.jpg', 8, 1, 1000.0000, 0, 9, '2009-02-03', 0.00, 1, 0.00, 0.00, 0.00, 2, 1, 1, 0, 1, '2009-02-03 21:08:00', '2011-09-30 01:05:53', 3),
(45, 'Product 18', '', '', '', 997, 5, 'data/macbook_pro_1.jpg', 8, 1, 2000.0000, 0, 100, '2009-02-03', 0.00, 1, 0.00, 0.00, 0.00, 2, 1, 1, 0, 1, '2009-02-03 21:08:17', '2011-09-15 22:22:01', 1),
(46, 'Product 19', '', '', '', 999, 5, 'data/sony_vaio_1.jpg', 10, 1, 1000.0000, 0, 9, '2009-02-03', 0.00, 1, 0.00, 0.00, 0.00, 2, 1, 1, 0, 1, '2009-02-03 21:08:29', '2011-09-30 01:06:39', 1),
(47, 'Product 21', '', '', '', 1000, 5, 'data/hp_1.jpg', 7, 1, 100.0000, 400, 9, '2009-02-03', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, '2009-02-03 21:08:40', '2012-01-08 22:54:58', 1),
(48, 'product 20', 'test 1', '', 'test 2', 995, 5, 'data/ipod_classic_1.jpg', 8, 1, 100.0000, 0, 9, '2009-02-08', 1.00, 1, 0.00, 0.00, 0.00, 2, 1, 1, 0, 1, '2009-02-08 17:21:51', '2011-09-30 01:07:06', 5),
(49, 'SAM1', '', '', '', 0, 8, 'data/samsung_tab_1.jpg', 0, 1, 199.9900, 0, 9, '2011-04-25', 0.00, 1, 0.00, 0.00, 0.00, 1, 1, 1, 1, 1, '2011-04-26 08:57:34', '2011-09-30 01:06:23', 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute`
--

CREATE TABLE IF NOT EXISTS `product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `product_attribute`
--

INSERT INTO `product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(43, 2, 1, 0x31),
(47, 2, 1, 0x34),
(43, 4, 1, 0x386762),
(42, 3, 1, 0x3130306d687a),
(47, 4, 1, 0x31364742),
(43, 2, 2, 0x31),
(47, 2, 2, 0x34),
(43, 4, 2, 0x386762),
(42, 3, 2, 0x3130306d687a),
(47, 4, 2, 0x31364742);

-- --------------------------------------------------------

--
-- Table structure for table `product_description`
--

CREATE TABLE IF NOT EXISTS `product_description` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_keyword` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=50 ;

--
-- Dumping data for table `product_description`
--

INSERT INTO `product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`) VALUES
(35, 1, 'Product 8', 0x266c743b702667743b0d0a0950726f647563742038266c743b2f702667743b0d0a, '', ''),
(48, 1, 'iPod Classic', 0x266c743b64697620636c6173733d2671756f743b6370745f70726f647563745f6465736372697074696f6e202671756f743b2667743b0d0a09266c743b6469762667743b0d0a0909266c743b702667743b0d0a090909266c743b7374726f6e672667743b4d6f726520726f6f6d20746f206d6f76652e266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909576974682038304742206f72203136304742206f662073746f7261676520616e6420757020746f20343020686f757273206f662062617474657279206c6966652c20746865206e65772069506f6420636c6173736963206c65747320796f7520656e6a6f7920757020746f2034302c30303020736f6e6773206f7220757020746f2032303020686f757273206f6620766964656f206f7220616e7920636f6d62696e6174696f6e20776865726576657220796f7520676f2e266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909266c743b7374726f6e672667743b436f76657220466c6f772e266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a0909266c743b702667743b0d0a09090942726f777365207468726f75676820796f7572206d7573696320636f6c6c656374696f6e20627920666c697070696e67207468726f75676820616c62756d206172742e2053656c65637420616e20616c62756d20746f207475726e206974206f76657220616e64207365652074686520747261636b206c6973742e266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909266c743b7374726f6e672667743b456e68616e63656420696e746572666163652e266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909457870657269656e636520612077686f6c65206e65772077617920746f2062726f77736520616e64207669657720796f7572206d7573696320616e6420766964656f2e266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909266c743b7374726f6e672667743b536c65656b65722064657369676e2e266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a0909266c743b702667743b0d0a09090942656175746966756c2c2064757261626c652c20616e6420736c65656b6572207468616e20657665722c2069506f6420636c6173736963206e6f7720666561747572657320616e20616e6f64697a656420616c756d696e756d20616e6420706f6c697368656420737461696e6c65737320737465656c20656e636c6f73757265207769746820726f756e6465642065646765732e266c743b2f702667743b0d0a09266c743b2f6469762667743b0d0a266c743b2f6469762667743b0d0a266c743b212d2d206370745f636f6e7461696e65725f656e64202d2d2667743b, '', ''),
(40, 1, 'iPhone', 0x266c743b7020636c6173733d2671756f743b696e74726f2671756f743b2667743b0d0a096950686f6e652069732061207265766f6c7574696f6e617279206e6577206d6f62696c652070686f6e65207468617420616c6c6f777320796f7520746f206d616b6520612063616c6c2062792073696d706c792074617070696e672061206e616d65206f72206e756d62657220696e20796f7572206164647265737320626f6f6b2c2061206661766f7269746573206c6973742c206f7220612063616c6c206c6f672e20497420616c736f206175746f6d61746963616c6c792073796e637320616c6c20796f757220636f6e74616374732066726f6d20612050432c204d61632c206f7220496e7465726e657420736572766963652e20416e64206974206c65747320796f752073656c65637420616e64206c697374656e20746f20766f6963656d61696c206d6573736167657320696e207768617465766572206f7264657220796f752077616e74206a757374206c696b6520656d61696c2e266c743b2f702667743b0d0a, '', ''),
(28, 1, 'HTC Touch HD', 0x266c743b702667743b0d0a0948544320546f756368202d20696e204869676820446566696e6974696f6e2e205761746368206d7573696320766964656f7320616e642073747265616d696e6720636f6e74656e7420696e206177652d696e73706972696e67206869676820646566696e6974696f6e20636c617269747920666f722061206d6f62696c6520657870657269656e636520796f75206e657665722074686f7567687420706f737369626c652e205365647563746976656c7920736c65656b2c207468652048544320546f7563682048442070726f766964657320746865206e6578742067656e65726174696f6e206f66206d6f62696c652066756e6374696f6e616c6974792c20616c6c20617420612073696d706c6520746f7563682e2046756c6c7920696e746567726174656420776974682057696e646f7773204d6f62696c652050726f66657373696f6e616c20362e312c20756c7472616661737420332e35472c204750532c20354d502063616d6572612c20706c7573206c6f7473206d6f7265202d20616c6c2064656c697665726564206f6e20612062726561746874616b696e676c7920637269737020332e3826616d703b71756f743b205756474120746f75636873637265656e202d20796f752063616e2074616b6520636f6e74726f6c206f6620796f7572206d6f62696c6520776f726c642077697468207468652048544320546f7563682048442e266c743b2f702667743b0d0a266c743b702667743b0d0a09266c743b7374726f6e672667743b4665617475726573266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a090950726f636573736f72205175616c636f6d6d26616d703b7265673b204d534d20373230314126616d703b74726164653b20353238204d487a266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090957696e646f7773204d6f62696c6526616d703b7265673b20362e312050726f66657373696f6e616c204f7065726174696e672053797374656d266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094d656d6f72793a20353132204d4220524f4d2c20323838204d422052414d266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090944696d656e73696f6e733a20313135206d6d20782036322e38206d6d2078203132206d6d202f203134362e34206772616d73266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909332e382d696e6368205446542d4c434420666c617420746f7563682d73656e7369746976652073637265656e2077697468203438302078203830302057564741207265736f6c7574696f6e266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090948534450412f5743444d413a204575726f70652f417369613a203930302f32313030204d487a3b20557020746f2032204d6270732075702d6c696e6b20616e6420372e32204d62707320646f776e2d6c696e6b20737065656473266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909517561642d62616e642047534d2f475052532f454447453a204575726f70652f417369613a203835302f3930302f313830302f31393030204d487a202842616e64206672657175656e63792c20485355504120617661696c6162696c6974792c20616e64206461746120737065656420617265206f70657261746f7220646570656e64656e742e29266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090944657669636520436f6e74726f6c207669612048544320546f756368464c4f26616d703b74726164653b2033442026616d703b616d703b20546f7563682d73656e7369746976652066726f6e742070616e656c20627574746f6e73266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090947505320616e6420412d475053207265616479266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909426c7565746f6f746826616d703b7265673b20322e30207769746820456e68616e6365642044617461205261746520616e64204132445020666f7220776972656c6573732073746572656f206865616473657473266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090957692d466926616d703b7265673b3a2049454545203830322e313120622f67266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094854432045787455534226616d703b74726164653b202831312d70696e206d696e692d55534220322e3029266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090935206d656761706978656c20636f6c6f722063616d6572612077697468206175746f20666f637573266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090956474120434d4f5320636f6c6f722063616d657261266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094275696c742d696e20332e35206d6d20617564696f206a61636b2c206d6963726f70686f6e652c20737065616b65722c20616e6420464d20726164696f266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090952696e6720746f6e6520666f726d6174733a204141432c204141432b2c20654141432b2c20414d522d4e422c20414d522d57422c205143502c204d50332c20574d412c20574156266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909343020706f6c7970686f6e696320616e64207374616e64617264204d49444920666f726d6174203020616e6420312028534d46292f5350204d494449266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909526563686172676561626c65204c69746869756d2d696f6e206f72204c69746869756d2d696f6e20706f6c796d65722031333530206d41682062617474657279266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909457870616e73696f6e20536c6f743a206d6963726f534426616d703b74726164653b206d656d6f727920636172642028534420322e3020636f6d70617469626c6529266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094143204164617074657220566f6c746167652072616e67652f6672657175656e63793a20313030207e20323430562041432c2035302f363020487a204443206f75747075743a20355620616e64203141266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09095370656369616c2046656174757265733a20464d20526164696f2c20472d53656e736f72266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a, '', ''),
(44, 1, 'MacBook Air', 0x266c743b6469762667743b0d0a094d6163426f6f6b2041697220697320756c7472617468696e2c20756c747261706f727461626c652c20616e6420756c74726120756e6c696b6520616e797468696e6720656c73652e2042757420796f7520646f6e26616d703b727371756f3b74206c6f736520696e6368657320616e6420706f756e6473206f7665726e696768742e20497426616d703b727371756f3b732074686520726573756c74206f662072657468696e6b696e6720636f6e76656e74696f6e732e204f66206d756c7469706c6520776972656c65737320696e6e6f766174696f6e732e20416e64206f6620627265616b7468726f7567682064657369676e2e2057697468204d6163426f6f6b204169722c206d6f62696c6520636f6d707574696e672073756464656e6c79206861732061206e6577207374616e646172642e266c743b2f6469762667743b0d0a, '', ''),
(45, 1, 'MacBook Pro', 0x266c743b64697620636c6173733d2671756f743b6370745f70726f647563745f6465736372697074696f6e202671756f743b2667743b0d0a09266c743b6469762667743b0d0a0909266c743b702667743b0d0a090909266c743b622667743b4c617465737420496e74656c206d6f62696c6520617263686974656374757265266c743b2f622667743b266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909506f776572656420627920746865206d6f737420616476616e636564206d6f62696c652070726f636573736f72732066726f6d20496e74656c2c20746865206e657720436f726520322044756f204d6163426f6f6b2050726f206973206f7665722035302520666173746572207468616e20746865206f726967696e616c20436f72652044756f204d6163426f6f6b2050726f20616e64206e6f7720737570706f72747320757020746f20344742206f662052414d2e266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909266c743b622667743b4c656164696e672d65646765206772617068696373266c743b2f622667743b266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909546865204e5649444941204765466f72636520383630304d2047542064656c697665727320657863657074696f6e616c2067726170686963732070726f63657373696e6720706f7765722e20466f722074686520756c74696d6174652063726561746976652063616e7661732c20796f752063616e206576656e20636f6e666967757265207468652031372d696e6368206d6f64656c2077697468206120313932302d62792d31323030207265736f6c7574696f6e20646973706c61792e266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909266c743b622667743b44657369676e656420666f72206c696665206f6e2074686520726f6164266c743b2f622667743b266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909496e6e6f766174696f6e7320737563682061732061206d61676e6574696320706f77657220636f6e6e656374696f6e20616e6420616e20696c6c756d696e61746564206b6579626f617264207769746820616d6269656e74206c696768742073656e736f722070757420746865204d6163426f6f6b2050726f20696e206120636c61737320627920697473656c662e266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909266c743b622667743b436f6e6e6563742e204372656174652e20436f6d6d756e69636174652e266c743b2f622667743b266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909517569636b6c7920736574207570206120766964656f20636f6e666572656e6365207769746820746865206275696c742d696e206953696768742063616d6572612e20436f6e74726f6c2070726573656e746174696f6e7320616e64206d656469612066726f6d20757020746f2033302066656574206177617920776974682074686520696e636c75646564204170706c652052656d6f74652e20436f6e6e65637420746f20686967682d62616e647769647468207065726970686572616c7320776974682046697265576972652038303020616e64204456492e266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909266c743b622667743b4e6578742d67656e65726174696f6e20776972656c657373266c743b2f622667743b266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909466561747572696e67203830322e31316e20776972656c65737320746563686e6f6c6f67792c20746865204d6163426f6f6b2050726f2064656c697665727320757020746f20666976652074696d65732074686520706572666f726d616e636520616e6420757020746f207477696365207468652072616e6765206f662070726576696f75732d67656e65726174696f6e20746563686e6f6c6f676965732e266c743b2f702667743b0d0a09266c743b2f6469762667743b0d0a266c743b2f6469762667743b0d0a266c743b212d2d206370745f636f6e7461696e65725f656e64202d2d2667743b, '', ''),
(29, 1, 'Palm Treo Pro', 0x266c743b702667743b0d0a095265646566696e6520796f757220776f726b6461792077697468207468652050616c6d205472656f2050726f20736d61727470686f6e652e20506572666563746c792062616c616e6365642c20796f752063616e20726573706f6e6420746f20627573696e65737320616e6420706572736f6e616c20656d61696c2c2073746179206f6e20746f70206f66206170706f696e746d656e747320616e6420636f6e74616374732c20616e64207573652057692d4669206f7220475053207768656e20796f7526616d703b727371756f3b7265206f757420616e642061626f75742e205468656e207761746368206120766964656f206f6e20596f75547562652c2063617463682075702077697468206e65777320616e642073706f727473206f6e20746865207765622c206f72206c697374656e20746f20612066657720736f6e67732e2042616c616e636520796f757220776f726b20616e6420706c6179207468652077617920796f75206c696b652069742c2077697468207468652050616c6d205472656f2050726f2e266c743b2f702667743b0d0a266c743b702667743b0d0a09266c743b7374726f6e672667743b4665617475726573266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a090957696e646f7773204d6f62696c6526616d703b7265673b20362e312050726f66657373696f6e616c2045646974696f6e266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09095175616c636f6d6d26616d703b7265673b204d534d37323031203430304d487a2050726f636573736f72266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090933323078333230207472616e73666c65637469766520636f6c6f75722054465420746f75636873637265656e266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090948534450412f554d54532f454447452f475052532f47534d20726164696f266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09095472692d62616e6420554d54532026616d703b6d646173683b203835304d487a2c20313930304d487a2c20323130304d487a266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909517561642d62616e642047534d2026616d703b6d646173683b203835302f3930302f313830302f31393030266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09093830322e3131622f672077697468205750412c20575041322c20616e64203830312e31782061757468656e7469636174696f6e266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094275696c742d696e20475053266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909426c7565746f6f74682056657273696f6e3a20322e30202b20456e68616e63656420446174612052617465266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09093235364d422073746f7261676520283130304d42207573657220617661696c61626c65292c203132384d422052414d266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909322e30206d656761706978656c2063616d6572612c20757020746f203878206469676974616c207a6f6f6d20616e6420766964656f2063617074757265266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090952656d6f7661626c652c20726563686172676561626c6520313530306d4168206c69746869756d2d696f6e2062617474657279266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909557020746f20352e3020686f7572732074616c6b2074696d6520616e6420757020746f2032353020686f757273207374616e646279266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094d6963726f53444843206361726420657870616e73696f6e2028757020746f203332474220737570706f7274656429266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094d6963726f55534220322e3020666f722073796e6368726f6e697a6174696f6e20616e64206368617267696e67266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909332e356d6d2073746572656f2068656164736574206a61636b266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090936306d6d202857292078203131346d6d20284c2920782031332e356d6d20284429202f2031333367266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a, '', ''),
(36, 1, 'iPod Nano', 0x266c743b6469762667743b0d0a09266c743b702667743b0d0a0909266c743b7374726f6e672667743b566964656f20696e20796f757220706f636b65742e266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a09266c743b702667743b0d0a09094974732074686520736d616c6c2069506f642077697468206f6e6520766572792062696720696465613a20766964656f2e2054686520776f726c6473206d6f737420706f70756c6172206d7573696320706c61796572206e6f77206c65747320796f7520656e6a6f79206d6f766965732c2054562073686f77732c20616e64206d6f7265206f6e20612074776f2d696e636820646973706c617920746861747320363525206272696768746572207468616e206265666f72652e266c743b2f702667743b0d0a09266c743b702667743b0d0a0909266c743b7374726f6e672667743b436f76657220466c6f772e266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a09266c743b702667743b0d0a090942726f777365207468726f75676820796f7572206d7573696320636f6c6c656374696f6e20627920666c697070696e67207468726f75676820616c62756d206172742e2053656c65637420616e20616c62756d20746f207475726e206974206f76657220616e64207365652074686520747261636b206c6973742e266c743b7374726f6e672667743b26616d703b6e6273703b266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a09266c743b702667743b0d0a0909266c743b7374726f6e672667743b456e68616e63656420696e746572666163652e266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a09266c743b702667743b0d0a0909457870657269656e636520612077686f6c65206e65772077617920746f2062726f77736520616e64207669657720796f7572206d7573696320616e6420766964656f2e266c743b2f702667743b0d0a09266c743b702667743b0d0a0909266c743b7374726f6e672667743b536c65656b20616e6420636f6c6f7266756c2e266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a09266c743b702667743b0d0a09095769746820616e20616e6f64697a656420616c756d696e756d20616e6420706f6c697368656420737461696e6c65737320737465656c20656e636c6f7375726520616e6420612063686f696365206f66206669766520636f6c6f72732c2069506f64206e616e6f206973206472657373656420746f20696d70726573732e266c743b2f702667743b0d0a09266c743b702667743b0d0a0909266c743b7374726f6e672667743b6954756e65732e266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a09266c743b702667743b0d0a0909417661696c61626c652061732061206672656520646f776e6c6f61642c206954756e6573206d616b6573206974206561737920746f2062726f77736520616e6420627579206d696c6c696f6e73206f6620736f6e67732c206d6f766965732c2054562073686f77732c20617564696f626f6f6b732c20616e642067616d657320616e6420646f776e6c6f6164206672656520706f64636173747320616c6c20617420746865206954756e65732053746f72652e20416e6420796f752063616e20696d706f727420796f7572206f776e206d757369632c206d616e61676520796f75722077686f6c65206d65646961206c6962726172792c20616e642073796e6320796f75722069506f64206f72206950686f6e65207769746820656173652e266c743b2f702667743b0d0a266c743b2f6469762667743b0d0a, '', ''),
(46, 1, 'Sony VAIO', 0x266c743b6469762667743b0d0a09556e707265636564656e74656420706f7765722e20546865206e6578742067656e65726174696f6e206f662070726f63657373696e6720746563686e6f6c6f67792068617320617272697665642e204275696c7420696e746f20746865206e6577657374205641494f206e6f7465626f6f6b73206c69657320496e74656c26616d703b2333393b73206c61746573742c206d6f737420706f77657266756c20696e6e6f766174696f6e207965743a20496e74656c26616d703b7265673b2043656e7472696e6f26616d703b7265673b20322070726f636573736f7220746563686e6f6c6f67792e20426f617374696e6720696e6372656469626c652073706565642c20657870616e64656420776972656c65737320636f6e6e65637469766974792c20656e68616e636564206d756c74696d6564696120737570706f727420616e64206772656174657220656e6572677920656666696369656e63792c20616c6c2074686520686967682d706572666f726d616e636520657373656e7469616c7320617265207365616d6c6573736c7920636f6d62696e656420696e746f20612073696e676c6520636869702e266c743b2f6469762667743b0d0a, '', ''),
(47, 1, 'HP LP3065', 0x266c743b702667743b0d0a0953746f7020796f757220636f2d776f726b65727320696e20746865697220747261636b73207769746820746865207374756e6e696e67206e65772033302d696e636820646961676f6e616c204850204c503330363520466c61742050616e656c204d6f6e69746f722e205468697320666c616773686970206d6f6e69746f7220666561747572657320626573742d696e2d636c61737320706572666f726d616e636520616e642070726573656e746174696f6e206665617475726573206f6e2061206875676520776964652d6173706563742073637265656e207768696c65206c657474696e6720796f7520776f726b20617320636f6d666f727461626c7920617320706f737369626c65202d20796f75206d69676874206576656e20666f7267657420796f7527726520617420746865206f6666696365266c743b2f702667743b0d0a, '', ''),
(32, 1, 'iPod Touch', 0x266c743b702667743b0d0a09266c743b7374726f6e672667743b5265766f6c7574696f6e617279206d756c74692d746f75636820696e746572666163652e266c743b2f7374726f6e672667743b266c743b6272202f2667743b0d0a0969506f6420746f756368206665617475726573207468652073616d65206d756c74692d746f7563682073637265656e20746563686e6f6c6f6779206173206950686f6e652e2050696e636820746f207a6f6f6d20696e206f6e20612070686f746f2e205363726f6c6c207468726f75676820796f757220736f6e677320616e6420766964656f732077697468206120666c69636b2e20466c6970207468726f75676820796f7572206c69627261727920627920616c62756d20617274776f726b207769746820436f76657220466c6f772e266c743b2f702667743b0d0a266c743b702667743b0d0a09266c743b7374726f6e672667743b476f7267656f757320332e352d696e6368207769646573637265656e20646973706c61792e266c743b2f7374726f6e672667743b266c743b6272202f2667743b0d0a09576174636820796f7572206d6f766965732c2054562073686f77732c20616e642070686f746f7320636f6d6520616c6976652077697468206272696768742c20766976696420636f6c6f72206f6e20746865203332302d62792d3438302d706978656c20646973706c61792e266c743b2f702667743b0d0a266c743b702667743b0d0a09266c743b7374726f6e672667743b4d7573696320646f776e6c6f6164732073747261696768742066726f6d206954756e65732e266c743b2f7374726f6e672667743b266c743b6272202f2667743b0d0a0953686f7020746865206954756e65732057692d4669204d757369632053746f72652066726f6d20616e79776865726520776974682057692d46692e312042726f777365206f722073656172636820746f2066696e6420746865206d7573696320796f757265206c6f6f6b696e6720666f722c20707265766965772069742c20616e64206275792069742077697468206a7573742061207461702e266c743b2f702667743b0d0a266c743b702667743b0d0a09266c743b7374726f6e672667743b53757266207468652077656220776974682057692d46692e266c743b2f7374726f6e672667743b266c743b6272202f2667743b0d0a0942726f7773652074686520776562207573696e672053616661726920616e6420776174636820596f755475626520766964656f73206f6e207468652066697273742069506f6420776974682057692d4669206275696c7420696e266c743b6272202f2667743b0d0a0926616d703b6e6273703b266c743b2f702667743b0d0a, '', ''),
(41, 1, 'iMac', 0x266c743b6469762667743b0d0a094a757374207768656e20796f752074686f7567687420694d6163206861642065766572797468696e672c206e6f77207468657265e2809973206576656e206d6f72652e204d6f726520706f77657266756c20496e74656c20436f726520322044756f2070726f636573736f72732e20416e64206d6f7265206d656d6f7279207374616e646172642e20436f6d62696e6520746869732077697468204d6163204f532058204c656f7061726420616e6420694c69666520e2809930382c20616e64206974e2809973206d6f726520616c6c2d696e2d6f6e65207468616e20657665722e20694d6163207061636b7320616d617a696e6720706572666f726d616e636520696e746f2061207374756e6e696e676c7920736c696d2073706163652e266c743b2f6469762667743b0d0a, '', ''),
(33, 1, 'Samsung SyncMaster 941BW', 0x266c743b6469762667743b0d0a09496d6167696e652074686520616476616e7461676573206f6620676f696e672062696720776974686f757420736c6f77696e6720646f776e2e205468652062696720313926616d703b71756f743b203934314257206d6f6e69746f7220636f6d62696e657320776964652061737065637420726174696f2077697468206661737420706978656c20726573706f6e73652074696d652c20666f722062696767657220696d616765732c206d6f726520726f6f6d20746f20776f726b20616e64206372697370206d6f74696f6e2e20496e206164646974696f6e2c20746865206578636c7573697665204d6167696342726967687420322c204d61676963436f6c6f7220616e64204d6167696354756e6520746563686e6f6c6f676965732068656c702064656c697665722074686520696465616c20696d61676520696e20657665727920736974756174696f6e2c207768696c6520736c65656b2c206e6172726f772062657a656c7320616e642061646a75737461626c65207374616e64732064656c69766572207374796c65206a757374207468652077617920796f752077616e742069742e2057697468207468652053616d73756e67203934314257207769646573637265656e20616e616c6f672f6469676974616c204c4344206d6f6e69746f722c20697426616d703b2333393b73206e6f74206861726420746f20696d6167696e652e266c743b2f6469762667743b0d0a, '', ''),
(34, 1, 'iPod Shuffle', 0x266c743b6469762667743b0d0a09266c743b7374726f6e672667743b426f726e20746f20626520776f726e2e266c743b2f7374726f6e672667743b0d0a09266c743b702667743b0d0a0909436c6970206f6e2074686520776f726c6473206d6f7374207765617261626c65206d7573696320706c6179657220616e642074616b6520757020746f2032343020736f6e6773207769746820796f7520616e7977686572652e2043686f6f73652066726f6d206669766520636f6c6f727320696e636c7564696e6720666f7572206e6577206875657320746f206d616b6520796f7572206d75736963616c2066617368696f6e2073746174656d656e742e266c743b2f702667743b0d0a09266c743b702667743b0d0a0909266c743b7374726f6e672667743b52616e646f6d206d656574732072687974686d2e266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a09266c743b702667743b0d0a090957697468206954756e6573206175746f66696c6c2c2069506f642073687566666c652063616e2064656c697665722061206e6577206d75736963616c20657870657269656e63652065766572792074696d6520796f752073796e632e20466f72206d6f72652072616e646f6d6e6573732c20796f752063616e2073687566666c6520736f6e677320647572696e6720706c61796261636b20776974682074686520736c696465206f662061207377697463682e266c743b2f702667743b0d0a09266c743b7374726f6e672667743b45766572797468696e6720697320656173792e266c743b2f7374726f6e672667743b0d0a09266c743b702667743b0d0a090943686172676520616e642073796e6320776974682074686520696e636c756465642055534220646f636b2e204f706572617465207468652069506f642073687566666c6520636f6e74726f6c732077697468206f6e652068616e642e20456e6a6f7920757020746f20313220686f757273207374726169676874206f6620736b69702d66726565206d7573696320706c61796261636b2e266c743b2f702667743b0d0a266c743b2f6469762667743b0d0a, '', ''),
(43, 1, 'MacBook', 0x266c743b6469762667743b0d0a09266c743b702667743b0d0a0909266c743b622667743b496e74656c20436f726520322044756f2070726f636573736f72266c743b2f622667743b266c743b2f702667743b0d0a09266c743b702667743b0d0a0909506f776572656420627920616e20496e74656c20436f726520322044756f2070726f636573736f722061742073706565647320757020746f20322e313647487a2c20746865206e6577204d6163426f6f6b20697320746865206661737465737420657665722e266c743b2f702667743b0d0a09266c743b702667743b0d0a0909266c743b622667743b314742206d656d6f72792c206c6172676572206861726420647269766573266c743b2f622667743b266c743b2f702667743b0d0a09266c743b702667743b0d0a0909546865206e6577204d6163426f6f6b206e6f7720636f6d6573207769746820314742206f66206d656d6f7279207374616e6461726420616e64206c617267657220686172642064726976657320666f722074686520656e74697265206c696e65207065726665637420666f722072756e6e696e67206d6f7265206f6620796f7572206661766f72697465206170706c69636174696f6e7320616e642073746f72696e672067726f77696e67206d6564696120636f6c6c656374696f6e732e266c743b2f702667743b0d0a09266c743b702667743b0d0a0909266c743b622667743b536c65656b2c20312e30382d696e63682d7468696e2064657369676e266c743b2f622667743b266c743b2f702667743b0d0a09266c743b702667743b0d0a09094d6163426f6f6b206d616b6573206974206561737920746f206869742074686520726f6164207468616e6b7320746f2069747320746f75676820706f6c79636172626f6e61746520636173652c206275696c742d696e20776972656c65737320746563686e6f6c6f676965732c20616e6420696e6e6f766174697665204d61675361666520506f776572204164617074657220746861742072656c6561736573206175746f6d61746963616c6c7920696620736f6d656f6e65206163636964656e74616c6c79207472697073206f6e2074686520636f72642e266c743b2f702667743b0d0a09266c743b702667743b0d0a0909266c743b622667743b4275696c742d696e206953696768742063616d657261266c743b2f622667743b266c743b2f702667743b0d0a09266c743b702667743b0d0a09095269676874206f7574206f662074686520626f782c20796f752063616e2068617665206120766964656f2063686174207769746820667269656e6473206f722066616d696c792c32207265636f7264206120766964656f20617420796f7572206465736b2c206f722074616b652066756e20706963747572657320776974682050686f746f20426f6f7468266c743b2f702667743b0d0a266c743b2f6469762667743b0d0a, '', ''),
(31, 1, 'Nikon D300', 0x266c743b64697620636c6173733d2671756f743b6370745f70726f647563745f6465736372697074696f6e202671756f743b2667743b0d0a09266c743b6469762667743b0d0a0909456e67696e656572656420776974682070726f2d6c6576656c20666561747572657320616e6420706572666f726d616e63652c207468652031322e332d6566666563746976652d6d656761706978656c204433303020636f6d62696e6573206272616e64206e657720746563686e6f6c6f67696573207769746820616476616e63656420666561747572657320696e686572697465642066726f6d204e696b6f6e26616d703b2333393b73206e65776c7920616e6e6f756e6365642044332070726f66657373696f6e616c206469676974616c20534c522063616d65726120746f206f6666657220736572696f75732070686f746f67726170686572732072656d61726b61626c6520706572666f726d616e636520636f6d62696e65642077697468206167696c6974792e266c743b6272202f2667743b0d0a0909266c743b6272202f2667743b0d0a090953696d696c617220746f207468652044332c207468652044333030206665617475726573204e696b6f6e26616d703b2333393b73206578636c75736976652045585045454420496d6167652050726f63657373696e672053797374656d20746861742069732063656e7472616c20746f2064726976696e672074686520737065656420616e642070726f63657373696e6720706f776572206e656564656420666f72206d616e79206f66207468652063616d65726126616d703b2333393b73206e65772066656174757265732e2054686520443330302066656174757265732061206e65772035312d706f696e74206175746f666f6375732073797374656d2077697468204e696b6f6e26616d703b2333393b7320334420466f63757320547261636b696e67206665617475726520616e642074776f206e6577204c697665566965772073686f6f74696e67206d6f646573207468617420616c6c6f7720757365727320746f206672616d6520612070686f746f6772617068207573696e67207468652063616d65726126616d703b2333393b7320686967682d7265736f6c7574696f6e204c4344206d6f6e69746f722e2054686520443330302073686172657320612073696d696c6172205363656e65205265636f676e6974696f6e2053797374656d20617320697320666f756e6420696e207468652044333b2069742070726f6d6973657320746f2067726561746c7920656e68616e636520746865206163637572616379206f66206175746f666f6375732c206175746f6578706f737572652c20616e64206175746f2077686974652062616c616e6365206279207265636f676e697a696e6720746865207375626a656374206f72207363656e65206265696e672070686f746f6772617068656420616e64206170706c79696e67207468697320696e666f726d6174696f6e20746f207468652063616c63756c6174696f6e7320666f72207468652074687265652066756e6374696f6e732e266c743b6272202f2667743b0d0a0909266c743b6272202f2667743b0d0a09095468652044333030207265616374732077697468206c696768746e696e672073706565642c20706f776572696e6720757020696e2061206d65726520302e3133207365636f6e647320616e642073686f6f74696e67207769746820616e20696d7065726365707469626c652034352d6d696c6c697365636f6e6420736875747465722072656c65617365206c61672074696d652e2054686520443330302069732063617061626c65206f662073686f6f74696e67206174206120726170696420736978206672616d657320706572207365636f6e6420616e642063616e20676f2061732066617374206173206569676874206672616d657320706572207365636f6e64207768656e207573696e6720746865206f7074696f6e616c204d422d443130206d756c74692d706f7765722062617474657279207061636b2e20496e20636f6e74696e756f7573206275727374732c2074686520443330302063616e2073686f6f7420757020746f203130302073686f74732061742066756c6c2031322e332d6d656761706978656c207265736f6c7574696f6e2e20284e4f524d414c2d4c4152474520696d6167652073657474696e672c207573696e6720612053616e4469736b2045787472656d652049562031474220436f6d70616374466c61736820636172642e29266c743b6272202f2667743b0d0a0909266c743b6272202f2667743b0d0a0909546865204433303020696e636f72706f726174657320612072616e6765206f6620696e6e6f76617469766520746563686e6f6c6f6769657320616e6420666561747572657320746861742077696c6c207369676e69666963616e746c7920696d70726f7665207468652061636375726163792c20636f6e74726f6c2c20616e6420706572666f726d616e63652070686f746f67726170686572732063616e206765742066726f6d2074686569722065717569706d656e742e20497473206e6577205363656e65205265636f676e6974696f6e2053797374656d20616476616e6365732074686520757365206f66204e696b6f6e26616d703b2333393b73206163636c61696d656420312c3030352d7365676d656e742073656e736f7220746f207265636f676e697a6520636f6c6f727320616e64206c69676874207061747465726e7320746861742068656c70207468652063616d6572612064657465726d696e6520746865207375626a65637420616e64207468652074797065206f66207363656e65206265696e672070686f746f67726170686564206265666f7265206120706963747572652069732074616b656e2e205468697320696e666f726d6174696f6e206973207573656420746f20696d70726f766520746865206163637572616379206f66206175746f666f6375732c206175746f6578706f737572652c20616e64206175746f2077686974652062616c616e63652066756e6374696f6e7320696e2074686520443330302e20466f72206578616d706c652c207468652063616d6572612063616e20747261636b206d6f76696e67207375626a656374732062657474657220616e64206279206964656e74696679696e67207468656d2c2069742063616e20616c736f206175746f6d61746963616c6c792073656c65637420666f63757320706f696e74732066617374657220616e64207769746820677265617465722061636375726163792e2049742063616e20616c736f20616e616c797a6520686967686c696768747320616e64206d6f72652061636375726174656c792064657465726d696e65206578706f737572652c2061732077656c6c20617320696e666572206c6967687420736f757263657320746f2064656c69766572206d6f72652061636375726174652077686974652062616c616e636520646574656374696f6e2e266c743b2f6469762667743b0d0a266c743b2f6469762667743b0d0a266c743b212d2d206370745f636f6e7461696e65725f656e64202d2d2667743b, '', ''),
(49, 1, 'Samsung Galaxy Tab 10.1', 0x266c743b702667743b0d0a0953616d73756e672047616c617879205461622031302e312c2069732074686520776f726c6426616d703b727371756f3b73207468696e6e657374207461626c65742c206d6561737572696e6720382e36206d6d20746869636b6e6573732c2072756e6e696e67207769746820416e64726f696420332e3020486f6e6579636f6d62204f53206f6e2061203147487a206475616c2d636f726520546567726120322070726f636573736f722c2073696d696c617220746f2069747320796f756e6765722062726f746865722053616d73756e672047616c6178792054616220382e392e266c743b2f702667743b0d0a266c743b702667743b0d0a0953616d73756e672047616c617879205461622031302e31206769766573207075726520416e64726f696420332e3020657870657269656e63652c20616464696e6720697473206e657720546f75636857697a205558206f7220546f75636857697a20342e302026616d703b6e646173683b20696e636c756465732061206c6976652070616e656c2c207768696368206c65747320796f7520746f20637573746f6d697a65207769746820646966666572656e7420636f6e74656e742c207375636820617320796f75722070696374757265732c20626f6f6b6d61726b732c20616e6420736f6369616c2066656564732c2073706f7274696e6720612031302e3120696e636865732057584741206361706163697469766520746f7563682073637265656e2077697468203132383020782038303020706978656c73206f66207265736f6c7574696f6e2c20657175697070656420776974682033206d656761706978656c20726561722063616d6572612077697468204c454420666c61736820616e6420612032206d656761706978656c2066726f6e742063616d6572612c20485350412b20636f6e6e656374697669747920757020746f2032314d6270732c203732307020484420766964656f207265636f7264696e67206361706162696c6974792c20313038307020484420706c61796261636b2c20444c4e4120737570706f72742c20426c7565746f6f746820322e312c2055534220322e302c206779726f73636f70652c2057692d4669203830322e313120612f622f672f6e2c206d6963726f2d534420736c6f742c20332e356d6d206865616470686f6e65206a61636b2c20616e642053494d20736c6f742c20696e636c7564696e67207468652053616d73756e6720537469636b2026616d703b6e646173683b206120426c7565746f6f7468206d6963726f70686f6e6520746861742063616e206265206361727269656420696e206120706f636b6574206c696b6520612070656e20616e6420736f756e6420646f636b207769746820706f776572656420737562776f6f6665722e266c743b2f702667743b0d0a266c743b702667743b0d0a0953616d73756e672047616c617879205461622031302e312077696c6c20636f6d6520696e2031364742202f2033324742202f203634474220766572697469657320616e64207072652d6c6f61646564207769746820536f6369616c204875622c2052656164657226616d703b727371756f3b73204875622c204d757369632048756220616e642053616d73756e67204d696e69204170707320547261792026616d703b6e646173683b20776869636820676976657320796f752061636365737320746f206d6f726520636f6d6d6f6e6c792075736564206170707320746f2068656c702065617365206d756c74697461736b696e6720616e642069742069732063617061626c65206f662041646f626520466c61736820506c617965722031302e322c20706f776572656420627920363836306d41682062617474657279207468617420676976657320796f75203130686f757273206f6620766964656f2d706c61796261636b2074696d652e26616d703b6e6273703b26616d703b61756d6c3b26616d703b6f756d6c3b266c743b2f702667743b0d0a, '', ''),
(30, 1, 'Canon EOS 5D', 0x266c743b702667743b0d0a0943616e6f6e2773207072657373206d6174657269616c20666f722074686520454f532035442073746174657320746861742069742027646566696e657320286129206e657720442d534c522063617465676f7279272c207768696c65207765277265206e6f74207479706963616c6c7920746f6f20636f6e6365726e65642077697468206d61726b6574696e672074616c6b207468697320706172746963756c61722073746174656d656e7420697320636c6561726c79207072657474792061636375726174652e2054686520454f5320354420697320756e6c696b6520616e792070726576696f7573206469676974616c20534c5220696e207468617420697420636f6d62696e657320612066756c6c2d6672616d6520283335206d6d2073697a6564292068696768207265736f6c7574696f6e2073656e736f72202831322e38206d656761706978656c7329207769746820612072656c61746976656c7920636f6d7061637420626f64792028736c696768746c79206c6172676572207468616e2074686520454f53203230442c20616c74686f75676820696e20796f75722068616e64206974206665656c73206e6f7469636561626c7920276368756e6b69657227292e2054686520454f532035442069732061696d656420746f20736c6f7420696e206265747765656e2074686520454f532032304420616e642074686520454f532d31442070726f66657373696f6e616c206469676974616c20534c5227732c20616e20696d706f7274616e7420646966666572656e6365207768656e20636f6d706172656420746f20746865206c617474657220697320746861742074686520454f5320354420646f65736e2774206861766520616e7920656e7669726f6e6d656e74616c207365616c732e205768696c652043616e6f6e20646f6e2774207370656369666963616c6c7920726566657220746f2074686520454f532035442061732061202770726f66657373696f6e616c27206469676974616c20534c522069742077696c6c2068617665206f6276696f75732061707065616c20746f2070726f66657373696f6e616c732077686f2077616e7420612068696768207175616c697479206469676974616c20534c5220696e206120626f6479206c696768746572207468616e2074686520454f532d31442e2049742077696c6c20616c736f206e6f20646f7562742061707065616c20746f2063757272656e7420454f5320323044206f776e6572732028616c74686f756768206c65747320686f70652074686579277665206e6f7420626f7567687420746f6f206d616e792045462d53206c656e7365732e2e2e2920c3a4c3ab266c743b2f702667743b0d0a, '', ''),
(35, 2, 'Product 8', 0x266c743b702667743b0d0a0950726f647563742038266c743b2f702667743b0d0a, '', ''),
(48, 2, 'iPod Classic', 0x266c743b64697620636c6173733d2671756f743b6370745f70726f647563745f6465736372697074696f6e202671756f743b2667743b0d0a09266c743b6469762667743b0d0a0909266c743b702667743b0d0a090909266c743b7374726f6e672667743b4d6f726520726f6f6d20746f206d6f76652e266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909576974682038304742206f72203136304742206f662073746f7261676520616e6420757020746f20343020686f757273206f662062617474657279206c6966652c20746865206e65772069506f6420636c6173736963206c65747320796f7520656e6a6f7920757020746f2034302c30303020736f6e6773206f7220757020746f2032303020686f757273206f6620766964656f206f7220616e7920636f6d62696e6174696f6e20776865726576657220796f7520676f2e266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909266c743b7374726f6e672667743b436f76657220466c6f772e266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a0909266c743b702667743b0d0a09090942726f777365207468726f75676820796f7572206d7573696320636f6c6c656374696f6e20627920666c697070696e67207468726f75676820616c62756d206172742e2053656c65637420616e20616c62756d20746f207475726e206974206f76657220616e64207365652074686520747261636b206c6973742e266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909266c743b7374726f6e672667743b456e68616e63656420696e746572666163652e266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909457870657269656e636520612077686f6c65206e65772077617920746f2062726f77736520616e64207669657720796f7572206d7573696320616e6420766964656f2e266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909266c743b7374726f6e672667743b536c65656b65722064657369676e2e266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a0909266c743b702667743b0d0a09090942656175746966756c2c2064757261626c652c20616e6420736c65656b6572207468616e20657665722c2069506f6420636c6173736963206e6f7720666561747572657320616e20616e6f64697a656420616c756d696e756d20616e6420706f6c697368656420737461696e6c65737320737465656c20656e636c6f73757265207769746820726f756e6465642065646765732e266c743b2f702667743b0d0a09266c743b2f6469762667743b0d0a266c743b2f6469762667743b0d0a266c743b212d2d206370745f636f6e7461696e65725f656e64202d2d2667743b, '', ''),
(40, 2, 'iPhone', 0x266c743b7020636c6173733d2671756f743b696e74726f2671756f743b2667743b0d0a096950686f6e652069732061207265766f6c7574696f6e617279206e6577206d6f62696c652070686f6e65207468617420616c6c6f777320796f7520746f206d616b6520612063616c6c2062792073696d706c792074617070696e672061206e616d65206f72206e756d62657220696e20796f7572206164647265737320626f6f6b2c2061206661766f7269746573206c6973742c206f7220612063616c6c206c6f672e20497420616c736f206175746f6d61746963616c6c792073796e637320616c6c20796f757220636f6e74616374732066726f6d20612050432c204d61632c206f7220496e7465726e657420736572766963652e20416e64206974206c65747320796f752073656c65637420616e64206c697374656e20746f20766f6963656d61696c206d6573736167657320696e207768617465766572206f7264657220796f752077616e74206a757374206c696b6520656d61696c2e266c743b2f702667743b0d0a, '', ''),
(28, 2, 'HTC Touch HD', 0x266c743b702667743b0d0a0948544320546f756368202d20696e204869676820446566696e6974696f6e2e205761746368206d7573696320766964656f7320616e642073747265616d696e6720636f6e74656e7420696e206177652d696e73706972696e67206869676820646566696e6974696f6e20636c617269747920666f722061206d6f62696c6520657870657269656e636520796f75206e657665722074686f7567687420706f737369626c652e205365647563746976656c7920736c65656b2c207468652048544320546f7563682048442070726f766964657320746865206e6578742067656e65726174696f6e206f66206d6f62696c652066756e6374696f6e616c6974792c20616c6c20617420612073696d706c6520746f7563682e2046756c6c7920696e746567726174656420776974682057696e646f7773204d6f62696c652050726f66657373696f6e616c20362e312c20756c7472616661737420332e35472c204750532c20354d502063616d6572612c20706c7573206c6f7473206d6f7265202d20616c6c2064656c697665726564206f6e20612062726561746874616b696e676c7920637269737020332e3826616d703b71756f743b205756474120746f75636873637265656e202d20796f752063616e2074616b6520636f6e74726f6c206f6620796f7572206d6f62696c6520776f726c642077697468207468652048544320546f7563682048442e266c743b2f702667743b0d0a266c743b702667743b0d0a09266c743b7374726f6e672667743b4665617475726573266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a090950726f636573736f72205175616c636f6d6d26616d703b7265673b204d534d20373230314126616d703b74726164653b20353238204d487a266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090957696e646f7773204d6f62696c6526616d703b7265673b20362e312050726f66657373696f6e616c204f7065726174696e672053797374656d266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094d656d6f72793a20353132204d4220524f4d2c20323838204d422052414d266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090944696d656e73696f6e733a20313135206d6d20782036322e38206d6d2078203132206d6d202f203134362e34206772616d73266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909332e382d696e6368205446542d4c434420666c617420746f7563682d73656e7369746976652073637265656e2077697468203438302078203830302057564741207265736f6c7574696f6e266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090948534450412f5743444d413a204575726f70652f417369613a203930302f32313030204d487a3b20557020746f2032204d6270732075702d6c696e6b20616e6420372e32204d62707320646f776e2d6c696e6b20737065656473266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909517561642d62616e642047534d2f475052532f454447453a204575726f70652f417369613a203835302f3930302f313830302f31393030204d487a202842616e64206672657175656e63792c20485355504120617661696c6162696c6974792c20616e64206461746120737065656420617265206f70657261746f7220646570656e64656e742e29266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090944657669636520436f6e74726f6c207669612048544320546f756368464c4f26616d703b74726164653b2033442026616d703b616d703b20546f7563682d73656e7369746976652066726f6e742070616e656c20627574746f6e73266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090947505320616e6420412d475053207265616479266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909426c7565746f6f746826616d703b7265673b20322e30207769746820456e68616e6365642044617461205261746520616e64204132445020666f7220776972656c6573732073746572656f206865616473657473266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090957692d466926616d703b7265673b3a2049454545203830322e313120622f67266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094854432045787455534226616d703b74726164653b202831312d70696e206d696e692d55534220322e3029266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090935206d656761706978656c20636f6c6f722063616d6572612077697468206175746f20666f637573266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090956474120434d4f5320636f6c6f722063616d657261266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094275696c742d696e20332e35206d6d20617564696f206a61636b2c206d6963726f70686f6e652c20737065616b65722c20616e6420464d20726164696f266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090952696e6720746f6e6520666f726d6174733a204141432c204141432b2c20654141432b2c20414d522d4e422c20414d522d57422c205143502c204d50332c20574d412c20574156266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909343020706f6c7970686f6e696320616e64207374616e64617264204d49444920666f726d6174203020616e6420312028534d46292f5350204d494449266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909526563686172676561626c65204c69746869756d2d696f6e206f72204c69746869756d2d696f6e20706f6c796d65722031333530206d41682062617474657279266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909457870616e73696f6e20536c6f743a206d6963726f534426616d703b74726164653b206d656d6f727920636172642028534420322e3020636f6d70617469626c6529266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094143204164617074657220566f6c746167652072616e67652f6672657175656e63793a20313030207e20323430562041432c2035302f363020487a204443206f75747075743a20355620616e64203141266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09095370656369616c2046656174757265733a20464d20526164696f2c20472d53656e736f72266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a, '', ''),
(44, 2, 'MacBook Air', 0x266c743b6469762667743b0d0a094d6163426f6f6b2041697220697320756c7472617468696e2c20756c747261706f727461626c652c20616e6420756c74726120756e6c696b6520616e797468696e6720656c73652e2042757420796f7520646f6e26616d703b727371756f3b74206c6f736520696e6368657320616e6420706f756e6473206f7665726e696768742e20497426616d703b727371756f3b732074686520726573756c74206f662072657468696e6b696e6720636f6e76656e74696f6e732e204f66206d756c7469706c6520776972656c65737320696e6e6f766174696f6e732e20416e64206f6620627265616b7468726f7567682064657369676e2e2057697468204d6163426f6f6b204169722c206d6f62696c6520636f6d707574696e672073756464656e6c79206861732061206e6577207374616e646172642e266c743b2f6469762667743b0d0a, '', ''),
(45, 2, 'MacBook Pro', 0x266c743b64697620636c6173733d2671756f743b6370745f70726f647563745f6465736372697074696f6e202671756f743b2667743b0d0a09266c743b6469762667743b0d0a0909266c743b702667743b0d0a090909266c743b622667743b4c617465737420496e74656c206d6f62696c6520617263686974656374757265266c743b2f622667743b266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909506f776572656420627920746865206d6f737420616476616e636564206d6f62696c652070726f636573736f72732066726f6d20496e74656c2c20746865206e657720436f726520322044756f204d6163426f6f6b2050726f206973206f7665722035302520666173746572207468616e20746865206f726967696e616c20436f72652044756f204d6163426f6f6b2050726f20616e64206e6f7720737570706f72747320757020746f20344742206f662052414d2e266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909266c743b622667743b4c656164696e672d65646765206772617068696373266c743b2f622667743b266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909546865204e5649444941204765466f72636520383630304d2047542064656c697665727320657863657074696f6e616c2067726170686963732070726f63657373696e6720706f7765722e20466f722074686520756c74696d6174652063726561746976652063616e7661732c20796f752063616e206576656e20636f6e666967757265207468652031372d696e6368206d6f64656c2077697468206120313932302d62792d31323030207265736f6c7574696f6e20646973706c61792e266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909266c743b622667743b44657369676e656420666f72206c696665206f6e2074686520726f6164266c743b2f622667743b266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909496e6e6f766174696f6e7320737563682061732061206d61676e6574696320706f77657220636f6e6e656374696f6e20616e6420616e20696c6c756d696e61746564206b6579626f617264207769746820616d6269656e74206c696768742073656e736f722070757420746865204d6163426f6f6b2050726f20696e206120636c61737320627920697473656c662e266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909266c743b622667743b436f6e6e6563742e204372656174652e20436f6d6d756e69636174652e266c743b2f622667743b266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909517569636b6c7920736574207570206120766964656f20636f6e666572656e6365207769746820746865206275696c742d696e206953696768742063616d6572612e20436f6e74726f6c2070726573656e746174696f6e7320616e64206d656469612066726f6d20757020746f2033302066656574206177617920776974682074686520696e636c75646564204170706c652052656d6f74652e20436f6e6e65637420746f20686967682d62616e647769647468207065726970686572616c7320776974682046697265576972652038303020616e64204456492e266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909266c743b622667743b4e6578742d67656e65726174696f6e20776972656c657373266c743b2f622667743b266c743b2f702667743b0d0a0909266c743b702667743b0d0a090909466561747572696e67203830322e31316e20776972656c65737320746563686e6f6c6f67792c20746865204d6163426f6f6b2050726f2064656c697665727320757020746f20666976652074696d65732074686520706572666f726d616e636520616e6420757020746f207477696365207468652072616e6765206f662070726576696f75732d67656e65726174696f6e20746563686e6f6c6f676965732e266c743b2f702667743b0d0a09266c743b2f6469762667743b0d0a266c743b2f6469762667743b0d0a266c743b212d2d206370745f636f6e7461696e65725f656e64202d2d2667743b, '', '');
INSERT INTO `product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`) VALUES
(29, 2, 'Palm Treo Pro', 0x266c743b702667743b0d0a095265646566696e6520796f757220776f726b6461792077697468207468652050616c6d205472656f2050726f20736d61727470686f6e652e20506572666563746c792062616c616e6365642c20796f752063616e20726573706f6e6420746f20627573696e65737320616e6420706572736f6e616c20656d61696c2c2073746179206f6e20746f70206f66206170706f696e746d656e747320616e6420636f6e74616374732c20616e64207573652057692d4669206f7220475053207768656e20796f7526616d703b727371756f3b7265206f757420616e642061626f75742e205468656e207761746368206120766964656f206f6e20596f75547562652c2063617463682075702077697468206e65777320616e642073706f727473206f6e20746865207765622c206f72206c697374656e20746f20612066657720736f6e67732e2042616c616e636520796f757220776f726b20616e6420706c6179207468652077617920796f75206c696b652069742c2077697468207468652050616c6d205472656f2050726f2e266c743b2f702667743b0d0a266c743b702667743b0d0a09266c743b7374726f6e672667743b4665617475726573266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a090957696e646f7773204d6f62696c6526616d703b7265673b20362e312050726f66657373696f6e616c2045646974696f6e266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09095175616c636f6d6d26616d703b7265673b204d534d37323031203430304d487a2050726f636573736f72266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090933323078333230207472616e73666c65637469766520636f6c6f75722054465420746f75636873637265656e266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090948534450412f554d54532f454447452f475052532f47534d20726164696f266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09095472692d62616e6420554d54532026616d703b6d646173683b203835304d487a2c20313930304d487a2c20323130304d487a266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909517561642d62616e642047534d2026616d703b6d646173683b203835302f3930302f313830302f31393030266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09093830322e3131622f672077697468205750412c20575041322c20616e64203830312e31782061757468656e7469636174696f6e266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094275696c742d696e20475053266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909426c7565746f6f74682056657273696f6e3a20322e30202b20456e68616e63656420446174612052617465266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09093235364d422073746f7261676520283130304d42207573657220617661696c61626c65292c203132384d422052414d266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909322e30206d656761706978656c2063616d6572612c20757020746f203878206469676974616c207a6f6f6d20616e6420766964656f2063617074757265266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090952656d6f7661626c652c20726563686172676561626c6520313530306d4168206c69746869756d2d696f6e2062617474657279266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909557020746f20352e3020686f7572732074616c6b2074696d6520616e6420757020746f2032353020686f757273207374616e646279266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094d6963726f53444843206361726420657870616e73696f6e2028757020746f203332474220737570706f7274656429266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094d6963726f55534220322e3020666f722073796e6368726f6e697a6174696f6e20616e64206368617267696e67266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909332e356d6d2073746572656f2068656164736574206a61636b266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090936306d6d202857292078203131346d6d20284c2920782031332e356d6d20284429202f2031333367266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a, '', ''),
(36, 2, 'iPod Nano', 0x266c743b6469762667743b0d0a09266c743b702667743b0d0a0909266c743b7374726f6e672667743b566964656f20696e20796f757220706f636b65742e266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a09266c743b702667743b0d0a09094974732074686520736d616c6c2069506f642077697468206f6e6520766572792062696720696465613a20766964656f2e2054686520776f726c6473206d6f737420706f70756c6172206d7573696320706c61796572206e6f77206c65747320796f7520656e6a6f79206d6f766965732c2054562073686f77732c20616e64206d6f7265206f6e20612074776f2d696e636820646973706c617920746861747320363525206272696768746572207468616e206265666f72652e266c743b2f702667743b0d0a09266c743b702667743b0d0a0909266c743b7374726f6e672667743b436f76657220466c6f772e266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a09266c743b702667743b0d0a090942726f777365207468726f75676820796f7572206d7573696320636f6c6c656374696f6e20627920666c697070696e67207468726f75676820616c62756d206172742e2053656c65637420616e20616c62756d20746f207475726e206974206f76657220616e64207365652074686520747261636b206c6973742e266c743b7374726f6e672667743b26616d703b6e6273703b266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a09266c743b702667743b0d0a0909266c743b7374726f6e672667743b456e68616e63656420696e746572666163652e266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a09266c743b702667743b0d0a0909457870657269656e636520612077686f6c65206e65772077617920746f2062726f77736520616e64207669657720796f7572206d7573696320616e6420766964656f2e266c743b2f702667743b0d0a09266c743b702667743b0d0a0909266c743b7374726f6e672667743b536c65656b20616e6420636f6c6f7266756c2e266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a09266c743b702667743b0d0a09095769746820616e20616e6f64697a656420616c756d696e756d20616e6420706f6c697368656420737461696e6c65737320737465656c20656e636c6f7375726520616e6420612063686f696365206f66206669766520636f6c6f72732c2069506f64206e616e6f206973206472657373656420746f20696d70726573732e266c743b2f702667743b0d0a09266c743b702667743b0d0a0909266c743b7374726f6e672667743b6954756e65732e266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a09266c743b702667743b0d0a0909417661696c61626c652061732061206672656520646f776e6c6f61642c206954756e6573206d616b6573206974206561737920746f2062726f77736520616e6420627579206d696c6c696f6e73206f6620736f6e67732c206d6f766965732c2054562073686f77732c20617564696f626f6f6b732c20616e642067616d657320616e6420646f776e6c6f6164206672656520706f64636173747320616c6c20617420746865206954756e65732053746f72652e20416e6420796f752063616e20696d706f727420796f7572206f776e206d757369632c206d616e61676520796f75722077686f6c65206d65646961206c6962726172792c20616e642073796e6320796f75722069506f64206f72206950686f6e65207769746820656173652e266c743b2f702667743b0d0a266c743b2f6469762667743b0d0a, '', ''),
(46, 2, 'Sony VAIO', 0x266c743b6469762667743b0d0a09556e707265636564656e74656420706f7765722e20546865206e6578742067656e65726174696f6e206f662070726f63657373696e6720746563686e6f6c6f67792068617320617272697665642e204275696c7420696e746f20746865206e6577657374205641494f206e6f7465626f6f6b73206c69657320496e74656c26616d703b2333393b73206c61746573742c206d6f737420706f77657266756c20696e6e6f766174696f6e207965743a20496e74656c26616d703b7265673b2043656e7472696e6f26616d703b7265673b20322070726f636573736f7220746563686e6f6c6f67792e20426f617374696e6720696e6372656469626c652073706565642c20657870616e64656420776972656c65737320636f6e6e65637469766974792c20656e68616e636564206d756c74696d6564696120737570706f727420616e64206772656174657220656e6572677920656666696369656e63792c20616c6c2074686520686967682d706572666f726d616e636520657373656e7469616c7320617265207365616d6c6573736c7920636f6d62696e656420696e746f20612073696e676c6520636869702e266c743b2f6469762667743b0d0a, '', ''),
(47, 2, 'HP LP3065', 0x266c743b702667743b0d0a0953746f7020796f757220636f2d776f726b65727320696e20746865697220747261636b73207769746820746865207374756e6e696e67206e65772033302d696e636820646961676f6e616c204850204c503330363520466c61742050616e656c204d6f6e69746f722e205468697320666c616773686970206d6f6e69746f7220666561747572657320626573742d696e2d636c61737320706572666f726d616e636520616e642070726573656e746174696f6e206665617475726573206f6e2061206875676520776964652d6173706563742073637265656e207768696c65206c657474696e6720796f7520776f726b20617320636f6d666f727461626c7920617320706f737369626c65202d20796f75206d69676874206576656e20666f7267657420796f7527726520617420746865206f6666696365266c743b2f702667743b0d0a, '', ''),
(32, 2, 'iPod Touch', 0x266c743b702667743b0d0a09266c743b7374726f6e672667743b5265766f6c7574696f6e617279206d756c74692d746f75636820696e746572666163652e266c743b2f7374726f6e672667743b266c743b6272202f2667743b0d0a0969506f6420746f756368206665617475726573207468652073616d65206d756c74692d746f7563682073637265656e20746563686e6f6c6f6779206173206950686f6e652e2050696e636820746f207a6f6f6d20696e206f6e20612070686f746f2e205363726f6c6c207468726f75676820796f757220736f6e677320616e6420766964656f732077697468206120666c69636b2e20466c6970207468726f75676820796f7572206c69627261727920627920616c62756d20617274776f726b207769746820436f76657220466c6f772e266c743b2f702667743b0d0a266c743b702667743b0d0a09266c743b7374726f6e672667743b476f7267656f757320332e352d696e6368207769646573637265656e20646973706c61792e266c743b2f7374726f6e672667743b266c743b6272202f2667743b0d0a09576174636820796f7572206d6f766965732c2054562073686f77732c20616e642070686f746f7320636f6d6520616c6976652077697468206272696768742c20766976696420636f6c6f72206f6e20746865203332302d62792d3438302d706978656c20646973706c61792e266c743b2f702667743b0d0a266c743b702667743b0d0a09266c743b7374726f6e672667743b4d7573696320646f776e6c6f6164732073747261696768742066726f6d206954756e65732e266c743b2f7374726f6e672667743b266c743b6272202f2667743b0d0a0953686f7020746865206954756e65732057692d4669204d757369632053746f72652066726f6d20616e79776865726520776974682057692d46692e312042726f777365206f722073656172636820746f2066696e6420746865206d7573696320796f757265206c6f6f6b696e6720666f722c20707265766965772069742c20616e64206275792069742077697468206a7573742061207461702e266c743b2f702667743b0d0a266c743b702667743b0d0a09266c743b7374726f6e672667743b53757266207468652077656220776974682057692d46692e266c743b2f7374726f6e672667743b266c743b6272202f2667743b0d0a0942726f7773652074686520776562207573696e672053616661726920616e6420776174636820596f755475626520766964656f73206f6e207468652066697273742069506f6420776974682057692d4669206275696c7420696e266c743b6272202f2667743b0d0a0926616d703b6e6273703b266c743b2f702667743b0d0a, '', ''),
(41, 2, 'iMac', 0x266c743b6469762667743b0d0a094a757374207768656e20796f752074686f7567687420694d6163206861642065766572797468696e672c206e6f77207468657265e2809973206576656e206d6f72652e204d6f726520706f77657266756c20496e74656c20436f726520322044756f2070726f636573736f72732e20416e64206d6f7265206d656d6f7279207374616e646172642e20436f6d62696e6520746869732077697468204d6163204f532058204c656f7061726420616e6420694c69666520e2809930382c20616e64206974e2809973206d6f726520616c6c2d696e2d6f6e65207468616e20657665722e20694d6163207061636b7320616d617a696e6720706572666f726d616e636520696e746f2061207374756e6e696e676c7920736c696d2073706163652e266c743b2f6469762667743b0d0a, '', ''),
(33, 2, 'Samsung SyncMaster 941BW', 0x266c743b6469762667743b0d0a09496d6167696e652074686520616476616e7461676573206f6620676f696e672062696720776974686f757420736c6f77696e6720646f776e2e205468652062696720313926616d703b71756f743b203934314257206d6f6e69746f7220636f6d62696e657320776964652061737065637420726174696f2077697468206661737420706978656c20726573706f6e73652074696d652c20666f722062696767657220696d616765732c206d6f726520726f6f6d20746f20776f726b20616e64206372697370206d6f74696f6e2e20496e206164646974696f6e2c20746865206578636c7573697665204d6167696342726967687420322c204d61676963436f6c6f7220616e64204d6167696354756e6520746563686e6f6c6f676965732068656c702064656c697665722074686520696465616c20696d61676520696e20657665727920736974756174696f6e2c207768696c6520736c65656b2c206e6172726f772062657a656c7320616e642061646a75737461626c65207374616e64732064656c69766572207374796c65206a757374207468652077617920796f752077616e742069742e2057697468207468652053616d73756e67203934314257207769646573637265656e20616e616c6f672f6469676974616c204c4344206d6f6e69746f722c20697426616d703b2333393b73206e6f74206861726420746f20696d6167696e652e266c743b2f6469762667743b0d0a, '', ''),
(34, 2, 'iPod Shuffle', 0x266c743b6469762667743b0d0a09266c743b7374726f6e672667743b426f726e20746f20626520776f726e2e266c743b2f7374726f6e672667743b0d0a09266c743b702667743b0d0a0909436c6970206f6e2074686520776f726c6473206d6f7374207765617261626c65206d7573696320706c6179657220616e642074616b6520757020746f2032343020736f6e6773207769746820796f7520616e7977686572652e2043686f6f73652066726f6d206669766520636f6c6f727320696e636c7564696e6720666f7572206e6577206875657320746f206d616b6520796f7572206d75736963616c2066617368696f6e2073746174656d656e742e266c743b2f702667743b0d0a09266c743b702667743b0d0a0909266c743b7374726f6e672667743b52616e646f6d206d656574732072687974686d2e266c743b2f7374726f6e672667743b266c743b2f702667743b0d0a09266c743b702667743b0d0a090957697468206954756e6573206175746f66696c6c2c2069506f642073687566666c652063616e2064656c697665722061206e6577206d75736963616c20657870657269656e63652065766572792074696d6520796f752073796e632e20466f72206d6f72652072616e646f6d6e6573732c20796f752063616e2073687566666c6520736f6e677320647572696e6720706c61796261636b20776974682074686520736c696465206f662061207377697463682e266c743b2f702667743b0d0a09266c743b7374726f6e672667743b45766572797468696e6720697320656173792e266c743b2f7374726f6e672667743b0d0a09266c743b702667743b0d0a090943686172676520616e642073796e6320776974682074686520696e636c756465642055534220646f636b2e204f706572617465207468652069506f642073687566666c6520636f6e74726f6c732077697468206f6e652068616e642e20456e6a6f7920757020746f20313220686f757273207374726169676874206f6620736b69702d66726565206d7573696320706c61796261636b2e266c743b2f702667743b0d0a266c743b2f6469762667743b0d0a, '', ''),
(43, 2, 'MacBook', 0x266c743b6469762667743b0d0a09266c743b702667743b0d0a0909266c743b622667743b496e74656c20436f726520322044756f2070726f636573736f72266c743b2f622667743b266c743b2f702667743b0d0a09266c743b702667743b0d0a0909506f776572656420627920616e20496e74656c20436f726520322044756f2070726f636573736f722061742073706565647320757020746f20322e313647487a2c20746865206e6577204d6163426f6f6b20697320746865206661737465737420657665722e266c743b2f702667743b0d0a09266c743b702667743b0d0a0909266c743b622667743b314742206d656d6f72792c206c6172676572206861726420647269766573266c743b2f622667743b266c743b2f702667743b0d0a09266c743b702667743b0d0a0909546865206e6577204d6163426f6f6b206e6f7720636f6d6573207769746820314742206f66206d656d6f7279207374616e6461726420616e64206c617267657220686172642064726976657320666f722074686520656e74697265206c696e65207065726665637420666f722072756e6e696e67206d6f7265206f6620796f7572206661766f72697465206170706c69636174696f6e7320616e642073746f72696e672067726f77696e67206d6564696120636f6c6c656374696f6e732e266c743b2f702667743b0d0a09266c743b702667743b0d0a0909266c743b622667743b536c65656b2c20312e30382d696e63682d7468696e2064657369676e266c743b2f622667743b266c743b2f702667743b0d0a09266c743b702667743b0d0a09094d6163426f6f6b206d616b6573206974206561737920746f206869742074686520726f6164207468616e6b7320746f2069747320746f75676820706f6c79636172626f6e61746520636173652c206275696c742d696e20776972656c65737320746563686e6f6c6f676965732c20616e6420696e6e6f766174697665204d61675361666520506f776572204164617074657220746861742072656c6561736573206175746f6d61746963616c6c7920696620736f6d656f6e65206163636964656e74616c6c79207472697073206f6e2074686520636f72642e266c743b2f702667743b0d0a09266c743b702667743b0d0a0909266c743b622667743b4275696c742d696e206953696768742063616d657261266c743b2f622667743b266c743b2f702667743b0d0a09266c743b702667743b0d0a09095269676874206f7574206f662074686520626f782c20796f752063616e2068617665206120766964656f2063686174207769746820667269656e6473206f722066616d696c792c32207265636f7264206120766964656f20617420796f7572206465736b2c206f722074616b652066756e20706963747572657320776974682050686f746f20426f6f7468266c743b2f702667743b0d0a266c743b2f6469762667743b0d0a, '', ''),
(31, 2, 'Nikon D300', 0x266c743b64697620636c6173733d2671756f743b6370745f70726f647563745f6465736372697074696f6e202671756f743b2667743b0d0a09266c743b6469762667743b0d0a0909456e67696e656572656420776974682070726f2d6c6576656c20666561747572657320616e6420706572666f726d616e63652c207468652031322e332d6566666563746976652d6d656761706978656c204433303020636f6d62696e6573206272616e64206e657720746563686e6f6c6f67696573207769746820616476616e63656420666561747572657320696e686572697465642066726f6d204e696b6f6e26616d703b2333393b73206e65776c7920616e6e6f756e6365642044332070726f66657373696f6e616c206469676974616c20534c522063616d65726120746f206f6666657220736572696f75732070686f746f67726170686572732072656d61726b61626c6520706572666f726d616e636520636f6d62696e65642077697468206167696c6974792e266c743b6272202f2667743b0d0a0909266c743b6272202f2667743b0d0a090953696d696c617220746f207468652044332c207468652044333030206665617475726573204e696b6f6e26616d703b2333393b73206578636c75736976652045585045454420496d6167652050726f63657373696e672053797374656d20746861742069732063656e7472616c20746f2064726976696e672074686520737065656420616e642070726f63657373696e6720706f776572206e656564656420666f72206d616e79206f66207468652063616d65726126616d703b2333393b73206e65772066656174757265732e2054686520443330302066656174757265732061206e65772035312d706f696e74206175746f666f6375732073797374656d2077697468204e696b6f6e26616d703b2333393b7320334420466f63757320547261636b696e67206665617475726520616e642074776f206e6577204c697665566965772073686f6f74696e67206d6f646573207468617420616c6c6f7720757365727320746f206672616d6520612070686f746f6772617068207573696e67207468652063616d65726126616d703b2333393b7320686967682d7265736f6c7574696f6e204c4344206d6f6e69746f722e2054686520443330302073686172657320612073696d696c6172205363656e65205265636f676e6974696f6e2053797374656d20617320697320666f756e6420696e207468652044333b2069742070726f6d6973657320746f2067726561746c7920656e68616e636520746865206163637572616379206f66206175746f666f6375732c206175746f6578706f737572652c20616e64206175746f2077686974652062616c616e6365206279207265636f676e697a696e6720746865207375626a656374206f72207363656e65206265696e672070686f746f6772617068656420616e64206170706c79696e67207468697320696e666f726d6174696f6e20746f207468652063616c63756c6174696f6e7320666f72207468652074687265652066756e6374696f6e732e266c743b6272202f2667743b0d0a0909266c743b6272202f2667743b0d0a09095468652044333030207265616374732077697468206c696768746e696e672073706565642c20706f776572696e6720757020696e2061206d65726520302e3133207365636f6e647320616e642073686f6f74696e67207769746820616e20696d7065726365707469626c652034352d6d696c6c697365636f6e6420736875747465722072656c65617365206c61672074696d652e2054686520443330302069732063617061626c65206f662073686f6f74696e67206174206120726170696420736978206672616d657320706572207365636f6e6420616e642063616e20676f2061732066617374206173206569676874206672616d657320706572207365636f6e64207768656e207573696e6720746865206f7074696f6e616c204d422d443130206d756c74692d706f7765722062617474657279207061636b2e20496e20636f6e74696e756f7573206275727374732c2074686520443330302063616e2073686f6f7420757020746f203130302073686f74732061742066756c6c2031322e332d6d656761706978656c207265736f6c7574696f6e2e20284e4f524d414c2d4c4152474520696d6167652073657474696e672c207573696e6720612053616e4469736b2045787472656d652049562031474220436f6d70616374466c61736820636172642e29266c743b6272202f2667743b0d0a0909266c743b6272202f2667743b0d0a0909546865204433303020696e636f72706f726174657320612072616e6765206f6620696e6e6f76617469766520746563686e6f6c6f6769657320616e6420666561747572657320746861742077696c6c207369676e69666963616e746c7920696d70726f7665207468652061636375726163792c20636f6e74726f6c2c20616e6420706572666f726d616e63652070686f746f67726170686572732063616e206765742066726f6d2074686569722065717569706d656e742e20497473206e6577205363656e65205265636f676e6974696f6e2053797374656d20616476616e6365732074686520757365206f66204e696b6f6e26616d703b2333393b73206163636c61696d656420312c3030352d7365676d656e742073656e736f7220746f207265636f676e697a6520636f6c6f727320616e64206c69676874207061747465726e7320746861742068656c70207468652063616d6572612064657465726d696e6520746865207375626a65637420616e64207468652074797065206f66207363656e65206265696e672070686f746f67726170686564206265666f7265206120706963747572652069732074616b656e2e205468697320696e666f726d6174696f6e206973207573656420746f20696d70726f766520746865206163637572616379206f66206175746f666f6375732c206175746f6578706f737572652c20616e64206175746f2077686974652062616c616e63652066756e6374696f6e7320696e2074686520443330302e20466f72206578616d706c652c207468652063616d6572612063616e20747261636b206d6f76696e67207375626a656374732062657474657220616e64206279206964656e74696679696e67207468656d2c2069742063616e20616c736f206175746f6d61746963616c6c792073656c65637420666f63757320706f696e74732066617374657220616e64207769746820677265617465722061636375726163792e2049742063616e20616c736f20616e616c797a6520686967686c696768747320616e64206d6f72652061636375726174656c792064657465726d696e65206578706f737572652c2061732077656c6c20617320696e666572206c6967687420736f757263657320746f2064656c69766572206d6f72652061636375726174652077686974652062616c616e636520646574656374696f6e2e266c743b2f6469762667743b0d0a266c743b2f6469762667743b0d0a266c743b212d2d206370745f636f6e7461696e65725f656e64202d2d2667743b, '', ''),
(49, 2, 'Samsung Galaxy Tab 10.1', 0x266c743b702667743b0d0a0953616d73756e672047616c617879205461622031302e312c2069732074686520776f726c6426616d703b727371756f3b73207468696e6e657374207461626c65742c206d6561737572696e6720382e36206d6d20746869636b6e6573732c2072756e6e696e67207769746820416e64726f696420332e3020486f6e6579636f6d62204f53206f6e2061203147487a206475616c2d636f726520546567726120322070726f636573736f722c2073696d696c617220746f2069747320796f756e6765722062726f746865722053616d73756e672047616c6178792054616220382e392e266c743b2f702667743b0d0a266c743b702667743b0d0a0953616d73756e672047616c617879205461622031302e31206769766573207075726520416e64726f696420332e3020657870657269656e63652c20616464696e6720697473206e657720546f75636857697a205558206f7220546f75636857697a20342e302026616d703b6e646173683b20696e636c756465732061206c6976652070616e656c2c207768696368206c65747320796f7520746f20637573746f6d697a65207769746820646966666572656e7420636f6e74656e742c207375636820617320796f75722070696374757265732c20626f6f6b6d61726b732c20616e6420736f6369616c2066656564732c2073706f7274696e6720612031302e3120696e636865732057584741206361706163697469766520746f7563682073637265656e2077697468203132383020782038303020706978656c73206f66207265736f6c7574696f6e2c20657175697070656420776974682033206d656761706978656c20726561722063616d6572612077697468204c454420666c61736820616e6420612032206d656761706978656c2066726f6e742063616d6572612c20485350412b20636f6e6e656374697669747920757020746f2032314d6270732c203732307020484420766964656f207265636f7264696e67206361706162696c6974792c20313038307020484420706c61796261636b2c20444c4e4120737570706f72742c20426c7565746f6f746820322e312c2055534220322e302c206779726f73636f70652c2057692d4669203830322e313120612f622f672f6e2c206d6963726f2d534420736c6f742c20332e356d6d206865616470686f6e65206a61636b2c20616e642053494d20736c6f742c20696e636c7564696e67207468652053616d73756e6720537469636b2026616d703b6e646173683b206120426c7565746f6f7468206d6963726f70686f6e6520746861742063616e206265206361727269656420696e206120706f636b6574206c696b6520612070656e20616e6420736f756e6420646f636b207769746820706f776572656420737562776f6f6665722e266c743b2f702667743b0d0a266c743b702667743b0d0a0953616d73756e672047616c617879205461622031302e312077696c6c20636f6d6520696e2031364742202f2033324742202f203634474220766572697469657320616e64207072652d6c6f61646564207769746820536f6369616c204875622c2052656164657226616d703b727371756f3b73204875622c204d757369632048756220616e642053616d73756e67204d696e69204170707320547261792026616d703b6e646173683b20776869636820676976657320796f752061636365737320746f206d6f726520636f6d6d6f6e6c792075736564206170707320746f2068656c702065617365206d756c74697461736b696e6720616e642069742069732063617061626c65206f662041646f626520466c61736820506c617965722031302e322c20706f776572656420627920363836306d41682062617474657279207468617420676976657320796f75203130686f757273206f6620766964656f2d706c61796261636b2074696d652e26616d703b6e6273703b26616d703b61756d6c3b26616d703b6f756d6c3b266c743b2f702667743b0d0a, '', ''),
(42, 2, 'Apple Cinema 30&quot;', 0x266c743b702667743b0d0a09266c743b666f6e7420666163653d2671756f743b68656c7665746963612c67656e6576612c617269616c2671756f743b2073697a653d2671756f743b322671756f743b2667743b266c743b666f6e7420666163653d2671756f743b48656c7665746963612671756f743b2073697a653d2671756f743b322671756f743b2667743b5468652033302d696e6368204170706c652043696e656d6120484420446973706c61792064656c697665727320616e20616d617a696e6720323536302078203136303020706978656c207265736f6c7574696f6e2e2044657369676e6564207370656369666963616c6c7920666f72207468652063726561746976652070726f66657373696f6e616c2c207468697320646973706c61792070726f7669646573206d6f726520737061636520666f72206561736965722061636365737320746f20616c6c2074686520746f6f6c7320616e642070616c6574746573206e656564656420746f20656469742c20666f726d617420616e6420636f6d706f7369746520796f757220776f726b2e20436f6d62696e65207468697320646973706c617920776974682061204d61632050726f2c204d6163426f6f6b2050726f2c206f7220506f7765724d616320473520616e642074686572652773206e6f206c696d697420746f207768617420796f752063616e20616368696576652e20266c743b2f666f6e742667743b266c743b6272202f2667743b0d0a09266c743b6272202f2667743b0d0a09266c743b666f6e7420666163653d2671756f743b48656c7665746963612671756f743b2073697a653d2671756f743b322671756f743b2667743b5468652043696e656d6120484420666561747572657320616e206163746976652d6d6174726978206c6971756964206372797374616c20646973706c617920746861742070726f647563657320666c69636b65722d6672656520696d6167657320746861742064656c6976657220747769636520746865206272696768746e6573732c207477696365207468652073686172706e65737320616e642074776963652074686520636f6e747261737420726174696f206f662061207479706963616c2043525420646973706c61792e20556e6c696b65206f7468657220666c61742070616e656c732c20697427732064657369676e6564207769746820612070757265206469676974616c20696e7465726661636520746f2064656c6976657220646973746f7274696f6e2d6672656520696d616765732074686174206e65766572206e6565642061646a757374696e672e2057697468206f7665722034206d696c6c696f6e206469676974616c20706978656c732c2074686520646973706c617920697320756e697175656c792073756974656420666f7220736369656e746966696320616e6420746563686e6963616c206170706c69636174696f6e7320737563682061732076697375616c697a696e67206d6f6c6563756c61722073747275637475726573206f7220616e616c797a696e672067656f6c6f676963616c20646174612e20266c743b2f666f6e742667743b266c743b6272202f2667743b0d0a09266c743b6272202f2667743b0d0a09266c743b666f6e7420666163653d2671756f743b48656c7665746963612671756f743b2073697a653d2671756f743b322671756f743b2667743b4f66666572696e672061636375726174652c206272696c6c69616e7420636f6c6f7220706572666f726d616e63652c207468652043696e656d612048442064656c697665727320757020746f2031362e37206d696c6c696f6e20636f6c6f7273206163726f7373206120776964652067616d757420616c6c6f77696e6720796f7520746f2073656520737562746c65206e75616e636573206265747765656e20636f6c6f72732066726f6d20736f66742070617374656c7320746f2072696368206a6577656c20746f6e65732e204120776964652076696577696e6720616e676c6520656e737572657320756e69666f726d20636f6c6f722066726f6d206564676520746f20656467652e204170706c65277320436f6c6f7253796e6320746563686e6f6c6f677920616c6c6f777320796f7520746f2063726561746520637573746f6d2070726f66696c657320746f206d61696e7461696e20636f6e73697374656e7420636f6c6f72206f6e73637265656e20616e6420696e207072696e742e2054686520726573756c743a20596f752063616e20636f6e666964656e746c7920757365207468697320646973706c617920696e20616c6c20796f757220636f6c6f722d637269746963616c206170706c69636174696f6e732e20266c743b2f666f6e742667743b266c743b6272202f2667743b0d0a09266c743b6272202f2667743b0d0a09266c743b666f6e7420666163653d2671756f743b48656c7665746963612671756f743b2073697a653d2671756f743b322671756f743b2667743b486f7573656420696e2061206e657720616c756d696e756d2064657369676e2c2074686520646973706c61792068617320612076657279207468696e2062657a656c207468617420656e68616e6365732076697375616c2061636375726163792e204561636820646973706c61792066656174757265732074776f2046697265576972652034303020706f72747320616e642074776f2055534220322e3020706f7274732c206d616b696e67206174746163686d656e74206f66206465736b746f70207065726970686572616c732c2073756368206173206953696768742c2069506f642c206469676974616c20616e64207374696c6c2063616d657261732c2068617264206472697665732c207072696e7465727320616e64207363616e6e6572732c206576656e206d6f72652061636365737369626c6520616e6420636f6e76656e69656e742e2054616b696e6720616476616e74616765206f6620746865206d756368207468696e6e657220616e64206c69676874657220666f6f747072696e74206f6620616e204c43442c20746865206e657720646973706c61797320737570706f72742074686520564553412028566964656f20456c656374726f6e696373205374616e6461726473204173736f63696174696f6e29206d6f756e74696e6720696e74657266616365207374616e646172642e20437573746f6d657273207769746820746865206f7074696f6e616c2043696e656d6120446973706c61792056455341204d6f756e742041646170746572206b6974206761696e2074686520666c65786962696c69747920746f206d6f756e7420746865697220646973706c617920696e206c6f636174696f6e73206d6f737420617070726f70726961746520666f7220746865697220776f726b20656e7669726f6e6d656e742e20266c743b2f666f6e742667743b266c743b6272202f2667743b0d0a09266c743b6272202f2667743b0d0a09266c743b666f6e7420666163653d2671756f743b48656c7665746963612671756f743b2073697a653d2671756f743b322671756f743b2667743b5468652043696e656d6120484420666561747572657320612073696e676c65206361626c652064657369676e207769746820656c6567616e7420627265616b6f757420666f72207468652055534220322e302c2046697265576972652034303020616e6420612070757265206469676974616c20636f6e6e656374696f6e207573696e672074686520696e647573747279207374616e64617264204469676974616c20566964656f20496e7465726661636520284456492920696e746572666163652e205468652044564920636f6e6e656374696f6e20616c6c6f777320666f7220612064697265637420707572652d6469676974616c20636f6e6e656374696f6e2e266c743b2f666f6e742667743b266c743b2f666f6e742667743b266c743b2f702667743b0d0a266c743b68332667743b0d0a0946656174757265733a266c743b2f68332667743b0d0a266c743b702667743b0d0a09556e726976616c656420646973706c617920706572666f726d616e6365266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a090933302d696e636820287669657761626c6529206163746976652d6d6174726978206c6971756964206372797374616c20646973706c61792070726f76696465732062726561746874616b696e6720696d616765207175616c69747920616e642076697669642c20726963686c792073617475726174656420636f6c6f722e266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909537570706f727420666f7220323536302d62792d3136303020706978656c207265736f6c7574696f6e20666f7220646973706c6179206f66206869676820646566696e6974696f6e207374696c6c20616e6420766964656f20696d61676572792e266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909576964652d666f726d61742064657369676e20666f722073696d756c74616e656f757320646973706c6179206f662074776f2066756c6c207061676573206f66207465787420616e642067726170686963732e266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909496e647573747279207374616e646172642044564920636f6e6e6563746f7220666f7220646972656374206174746163686d656e7420746f204d61632d20616e642057696e646f77732d6261736564206465736b746f707320616e64206e6f7465626f6f6b73266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909496e6372656469626c7920776964652028313730206465677265652920686f72697a6f6e74616c20616e6420766572746963616c2076696577696e6720616e676c6520666f72206d6178696d756d207669736962696c69747920616e6420636f6c6f7220706572666f726d616e63652e266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094c696768746e696e672d6661737420706978656c20726573706f6e736520666f722066756c6c2d6d6f74696f6e206469676974616c20766964656f20706c61796261636b2e266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909537570706f727420666f722031362e37206d696c6c696f6e2073617475726174656420636f6c6f72732c20666f722075736520696e20616c6c2067726170686963732d696e74656e73697665206170706c69636174696f6e732e266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a0953696d706c6520736574757020616e64206f7065726174696f6e266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a090953696e676c65206361626c65207769746820656c6567616e7420627265616b6f757420666f7220636f6e6e656374696f6e20746f204456492c2055534220616e6420466972655769726520706f727473266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094275696c742d696e2074776f2d706f72742055534220322e302068756220666f72206561737920636f6e6e656374696f6e206f66206465736b746f70207065726970686572616c20646576696365732e266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090954776f2046697265576972652034303020706f72747320746f20737570706f72742069536967687420616e64206f74686572206465736b746f70207065726970686572616c73266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09536c65656b2c20656c6567616e742064657369676e266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a090948756765207669727475616c20776f726b73706163652c207665727920736d616c6c20666f6f747072696e742e266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094e6172726f772042657a656c2064657369676e20746f206d696e696d697a652076697375616c20696d70616374206f66207573696e67206475616c20646973706c617973266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909556e697175652068696e67652064657369676e20666f72206566666f72746c6573732061646a7573746d656e74266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909537570706f727420666f722056455341206d6f756e74696e6720736f6c7574696f6e7320284170706c652043696e656d6120446973706c61792056455341204d6f756e74204164617074657220736f6c642073657061726174656c7929266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b68332667743b0d0a09546563686e6963616c2073706563696669636174696f6e73266c743b2f68332667743b0d0a266c743b702667743b0d0a09266c743b622667743b53637265656e2073697a652028646961676f6e616c207669657761626c6520696d6167652073697a6529266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a09094170706c652043696e656d6120484420446973706c61793a20333020696e63686573202832392e372d696e6368207669657761626c6529266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b53637265656e2074797065266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a09095468696e2066696c6d207472616e736973746f72202854465429206163746976652d6d6174726978206c6971756964206372797374616c20646973706c61792028414d4c434429266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b5265736f6c7574696f6e73266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a0909323536302078203136303020706978656c7320286f7074696d756d207265736f6c7574696f6e29266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09093230343820782031323830266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09093139323020782031323030266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090931323830207820383030266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090931303234207820363430266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b446973706c617920636f6c6f727320286d6178696d756d29266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a090931362e37206d696c6c696f6e266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b56696577696e6720616e676c6520287479706963616c29266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a0909313730c2b020686f72697a6f6e74616c3b20313730c2b020766572746963616c266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b4272696768746e65737320287479706963616c29266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a090933302d696e63682043696e656d6120484420446973706c61793a203430302063642f6d32266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b436f6e747261737420726174696f20287479706963616c29266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a09093730303a31266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b526573706f6e73652074696d6520287479706963616c29266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a09093136206d73266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b506978656c207069746368266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a090933302d696e63682043696e656d6120484420446973706c61793a20302e323530206d6d266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b53637265656e2074726561746d656e74266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a0909416e7469676c6172652068617264636f6174266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b5573657220636f6e74726f6c732028686172647761726520616e6420736f66747761726529266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a0909446973706c617920506f7765722c266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090953797374656d20736c6565702c2077616b65266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094272696768746e657373266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094d6f6e69746f722074696c74266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b436f6e6e6563746f727320616e64206361626c6573266c743b2f622667743b266c743b6272202f2667743b0d0a094361626c65266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a090944564920284469676974616c2056697375616c20496e7465726661636529266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909466972655769726520343030266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090955534220322e30266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909444320706f77657220283234205629266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09436f6e6e6563746f7273266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a090954776f2d706f72742c2073656c662d706f77657265642055534220322e3020687562266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090954776f2046697265576972652034303020706f727473266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094b656e73696e67746f6e20736563757269747920706f7274266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b56455341206d6f756e742061646170746572266c743b2f622667743b266c743b6272202f2667743b0d0a095265717569726573206f7074696f6e616c2043696e656d6120446973706c61792056455341204d6f756e74204164617074657220284d39363439472f4129266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a0909436f6d70617469626c65207769746820564553412046444d4920284d49532d442c203130302c20432920636f6d706c69616e74206d6f756e74696e6720736f6c7574696f6e73266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b456c656374726963616c20726571756972656d656e7473266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a0909496e70757420766f6c746167653a203130302d323430205641432035302d3630487a266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094d6178696d756d20706f776572207768656e206f7065726174696e673a2031353057266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909456e65726779207361766572206d6f64653a203357206f72206c657373266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b456e7669726f6e6d656e74616c20726571756972656d656e7473266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a09094f7065726174696e672074656d70657261747572653a203530c2b020746f203935c2b0204620283130c2b020746f203335c2b0204329266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090953746f726167652074656d70657261747572653a202d3430c2b020746f20313136c2b0204620282d3430c2b020746f203437c2b0204329266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094f7065726174696e672068756d69646974793a2032302520746f20383025206e6f6e636f6e64656e73696e67266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094d6178696d756d206f7065726174696e6720616c7469747564653a2031302c3030302066656574266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b4167656e637920617070726f76616c73266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a0909464343205061727420313520436c6173732042266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909454e353530323220436c6173732042266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909454e3535303234266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09095643434920436c6173732042266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090941532f4e5a53203335343820436c6173732042266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909434e5320313334333820436c6173732042266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909494345532d30303320436c6173732042266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090949534f20313334303620706172742032266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094d5052204949266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909494543203630393530266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909554c203630393530266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909435341203630393530266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909454e3630393530266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909454e455247592053544152266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090954434f20273033266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b53697a6520616e6420776569676874266c743b2f622667743b266c743b6272202f2667743b0d0a0933302d696e6368204170706c652043696e656d6120484420446973706c6179266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a09094865696768743a2032312e3320696e63686573202835342e3320636d29266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090957696474683a2032372e3220696e63686573202836382e3820636d29266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090944657074683a20382e343620696e63686573202832312e3520636d29266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09095765696768743a2032372e3520706f756e6473202831322e35206b6729266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b53797374656d20526571756972656d656e7473266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a09094d61632050726f2c20616c6c2067726170686963206f7074696f6e73266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094d6163426f6f6b2050726f266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909506f776572204d616320473520285043492d582920776974682041544920526164656f6e2039363530206f7220626574746572206f72204e5649444941204765466f72636520363830302047542044444c206f7220626574746572266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909506f776572204d616320473520285043492045787072657373292c20616c6c206772617068696373206f7074696f6e73266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909506f776572426f6f6b2047342077697468206475616c2d6c696e6b2044564920737570706f7274266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090957696e646f777320504320616e642067726170686963732063617264207468617420737570706f7274732044564920706f7274732077697468206475616c2d6c696e6b206469676974616c2062616e64776964746820616e64205645534120444443207374616e6461726420666f7220706c75672d616e642d706c6179207365747570266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a, '', '');
INSERT INTO `product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`) VALUES
(42, 1, 'Apple Cinema 30&quot;', 0x266c743b702667743b0d0a09266c743b666f6e7420666163653d2671756f743b68656c7665746963612c67656e6576612c617269616c2671756f743b2073697a653d2671756f743b322671756f743b2667743b266c743b666f6e7420666163653d2671756f743b48656c7665746963612671756f743b2073697a653d2671756f743b322671756f743b2667743b5468652033302d696e6368204170706c652043696e656d6120484420446973706c61792064656c697665727320616e20616d617a696e6720323536302078203136303020706978656c207265736f6c7574696f6e2e2044657369676e6564207370656369666963616c6c7920666f72207468652063726561746976652070726f66657373696f6e616c2c207468697320646973706c61792070726f7669646573206d6f726520737061636520666f72206561736965722061636365737320746f20616c6c2074686520746f6f6c7320616e642070616c6574746573206e656564656420746f20656469742c20666f726d617420616e6420636f6d706f7369746520796f757220776f726b2e20436f6d62696e65207468697320646973706c617920776974682061204d61632050726f2c204d6163426f6f6b2050726f2c206f7220506f7765724d616320473520616e642074686572652773206e6f206c696d697420746f207768617420796f752063616e20616368696576652e20266c743b2f666f6e742667743b266c743b6272202f2667743b0d0a09266c743b6272202f2667743b0d0a09266c743b666f6e7420666163653d2671756f743b48656c7665746963612671756f743b2073697a653d2671756f743b322671756f743b2667743b5468652043696e656d6120484420666561747572657320616e206163746976652d6d6174726978206c6971756964206372797374616c20646973706c617920746861742070726f647563657320666c69636b65722d6672656520696d6167657320746861742064656c6976657220747769636520746865206272696768746e6573732c207477696365207468652073686172706e65737320616e642074776963652074686520636f6e747261737420726174696f206f662061207479706963616c2043525420646973706c61792e20556e6c696b65206f7468657220666c61742070616e656c732c20697427732064657369676e6564207769746820612070757265206469676974616c20696e7465726661636520746f2064656c6976657220646973746f7274696f6e2d6672656520696d616765732074686174206e65766572206e6565642061646a757374696e672e2057697468206f7665722034206d696c6c696f6e206469676974616c20706978656c732c2074686520646973706c617920697320756e697175656c792073756974656420666f7220736369656e746966696320616e6420746563686e6963616c206170706c69636174696f6e7320737563682061732076697375616c697a696e67206d6f6c6563756c61722073747275637475726573206f7220616e616c797a696e672067656f6c6f676963616c20646174612e20266c743b2f666f6e742667743b266c743b6272202f2667743b0d0a09266c743b6272202f2667743b0d0a09266c743b666f6e7420666163653d2671756f743b48656c7665746963612671756f743b2073697a653d2671756f743b322671756f743b2667743b4f66666572696e672061636375726174652c206272696c6c69616e7420636f6c6f7220706572666f726d616e63652c207468652043696e656d612048442064656c697665727320757020746f2031362e37206d696c6c696f6e20636f6c6f7273206163726f7373206120776964652067616d757420616c6c6f77696e6720796f7520746f2073656520737562746c65206e75616e636573206265747765656e20636f6c6f72732066726f6d20736f66742070617374656c7320746f2072696368206a6577656c20746f6e65732e204120776964652076696577696e6720616e676c6520656e737572657320756e69666f726d20636f6c6f722066726f6d206564676520746f20656467652e204170706c65277320436f6c6f7253796e6320746563686e6f6c6f677920616c6c6f777320796f7520746f2063726561746520637573746f6d2070726f66696c657320746f206d61696e7461696e20636f6e73697374656e7420636f6c6f72206f6e73637265656e20616e6420696e207072696e742e2054686520726573756c743a20596f752063616e20636f6e666964656e746c7920757365207468697320646973706c617920696e20616c6c20796f757220636f6c6f722d637269746963616c206170706c69636174696f6e732e20266c743b2f666f6e742667743b266c743b6272202f2667743b0d0a09266c743b6272202f2667743b0d0a09266c743b666f6e7420666163653d2671756f743b48656c7665746963612671756f743b2073697a653d2671756f743b322671756f743b2667743b486f7573656420696e2061206e657720616c756d696e756d2064657369676e2c2074686520646973706c61792068617320612076657279207468696e2062657a656c207468617420656e68616e6365732076697375616c2061636375726163792e204561636820646973706c61792066656174757265732074776f2046697265576972652034303020706f72747320616e642074776f2055534220322e3020706f7274732c206d616b696e67206174746163686d656e74206f66206465736b746f70207065726970686572616c732c2073756368206173206953696768742c2069506f642c206469676974616c20616e64207374696c6c2063616d657261732c2068617264206472697665732c207072696e7465727320616e64207363616e6e6572732c206576656e206d6f72652061636365737369626c6520616e6420636f6e76656e69656e742e2054616b696e6720616476616e74616765206f6620746865206d756368207468696e6e657220616e64206c69676874657220666f6f747072696e74206f6620616e204c43442c20746865206e657720646973706c61797320737570706f72742074686520564553412028566964656f20456c656374726f6e696373205374616e6461726473204173736f63696174696f6e29206d6f756e74696e6720696e74657266616365207374616e646172642e20437573746f6d657273207769746820746865206f7074696f6e616c2043696e656d6120446973706c61792056455341204d6f756e742041646170746572206b6974206761696e2074686520666c65786962696c69747920746f206d6f756e7420746865697220646973706c617920696e206c6f636174696f6e73206d6f737420617070726f70726961746520666f7220746865697220776f726b20656e7669726f6e6d656e742e20266c743b2f666f6e742667743b266c743b6272202f2667743b0d0a09266c743b6272202f2667743b0d0a09266c743b666f6e7420666163653d2671756f743b48656c7665746963612671756f743b2073697a653d2671756f743b322671756f743b2667743b5468652043696e656d6120484420666561747572657320612073696e676c65206361626c652064657369676e207769746820656c6567616e7420627265616b6f757420666f72207468652055534220322e302c2046697265576972652034303020616e6420612070757265206469676974616c20636f6e6e656374696f6e207573696e672074686520696e647573747279207374616e64617264204469676974616c20566964656f20496e7465726661636520284456492920696e746572666163652e205468652044564920636f6e6e656374696f6e20616c6c6f777320666f7220612064697265637420707572652d6469676974616c20636f6e6e656374696f6e2e266c743b2f666f6e742667743b266c743b2f666f6e742667743b266c743b2f702667743b0d0a266c743b68332667743b0d0a0946656174757265733a266c743b2f68332667743b0d0a266c743b702667743b0d0a09556e726976616c656420646973706c617920706572666f726d616e6365266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a090933302d696e636820287669657761626c6529206163746976652d6d6174726978206c6971756964206372797374616c20646973706c61792070726f76696465732062726561746874616b696e6720696d616765207175616c69747920616e642076697669642c20726963686c792073617475726174656420636f6c6f722e266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909537570706f727420666f7220323536302d62792d3136303020706978656c207265736f6c7574696f6e20666f7220646973706c6179206f66206869676820646566696e6974696f6e207374696c6c20616e6420766964656f20696d61676572792e266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909576964652d666f726d61742064657369676e20666f722073696d756c74616e656f757320646973706c6179206f662074776f2066756c6c207061676573206f66207465787420616e642067726170686963732e266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909496e647573747279207374616e646172642044564920636f6e6e6563746f7220666f7220646972656374206174746163686d656e7420746f204d61632d20616e642057696e646f77732d6261736564206465736b746f707320616e64206e6f7465626f6f6b73266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909496e6372656469626c7920776964652028313730206465677265652920686f72697a6f6e74616c20616e6420766572746963616c2076696577696e6720616e676c6520666f72206d6178696d756d207669736962696c69747920616e6420636f6c6f7220706572666f726d616e63652e266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094c696768746e696e672d6661737420706978656c20726573706f6e736520666f722066756c6c2d6d6f74696f6e206469676974616c20766964656f20706c61796261636b2e266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909537570706f727420666f722031362e37206d696c6c696f6e2073617475726174656420636f6c6f72732c20666f722075736520696e20616c6c2067726170686963732d696e74656e73697665206170706c69636174696f6e732e266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a0953696d706c6520736574757020616e64206f7065726174696f6e266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a090953696e676c65206361626c65207769746820656c6567616e7420627265616b6f757420666f7220636f6e6e656374696f6e20746f204456492c2055534220616e6420466972655769726520706f727473266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094275696c742d696e2074776f2d706f72742055534220322e302068756220666f72206561737920636f6e6e656374696f6e206f66206465736b746f70207065726970686572616c20646576696365732e266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090954776f2046697265576972652034303020706f72747320746f20737570706f72742069536967687420616e64206f74686572206465736b746f70207065726970686572616c73266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09536c65656b2c20656c6567616e742064657369676e266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a090948756765207669727475616c20776f726b73706163652c207665727920736d616c6c20666f6f747072696e742e266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094e6172726f772042657a656c2064657369676e20746f206d696e696d697a652076697375616c20696d70616374206f66207573696e67206475616c20646973706c617973266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909556e697175652068696e67652064657369676e20666f72206566666f72746c6573732061646a7573746d656e74266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909537570706f727420666f722056455341206d6f756e74696e6720736f6c7574696f6e7320284170706c652043696e656d6120446973706c61792056455341204d6f756e74204164617074657220736f6c642073657061726174656c7929266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b68332667743b0d0a09546563686e6963616c2073706563696669636174696f6e73266c743b2f68332667743b0d0a266c743b702667743b0d0a09266c743b622667743b53637265656e2073697a652028646961676f6e616c207669657761626c6520696d6167652073697a6529266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a09094170706c652043696e656d6120484420446973706c61793a20333020696e63686573202832392e372d696e6368207669657761626c6529266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b53637265656e2074797065266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a09095468696e2066696c6d207472616e736973746f72202854465429206163746976652d6d6174726978206c6971756964206372797374616c20646973706c61792028414d4c434429266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b5265736f6c7574696f6e73266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a0909323536302078203136303020706978656c7320286f7074696d756d207265736f6c7574696f6e29266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09093230343820782031323830266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09093139323020782031323030266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090931323830207820383030266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090931303234207820363430266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b446973706c617920636f6c6f727320286d6178696d756d29266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a090931362e37206d696c6c696f6e266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b56696577696e6720616e676c6520287479706963616c29266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a0909313730c2b020686f72697a6f6e74616c3b20313730c2b020766572746963616c266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b4272696768746e65737320287479706963616c29266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a090933302d696e63682043696e656d6120484420446973706c61793a203430302063642f6d32266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b436f6e747261737420726174696f20287479706963616c29266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a09093730303a31266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b526573706f6e73652074696d6520287479706963616c29266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a09093136206d73266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b506978656c207069746368266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a090933302d696e63682043696e656d6120484420446973706c61793a20302e323530206d6d266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b53637265656e2074726561746d656e74266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a0909416e7469676c6172652068617264636f6174266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b5573657220636f6e74726f6c732028686172647761726520616e6420736f66747761726529266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a0909446973706c617920506f7765722c266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090953797374656d20736c6565702c2077616b65266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094272696768746e657373266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094d6f6e69746f722074696c74266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b436f6e6e6563746f727320616e64206361626c6573266c743b2f622667743b266c743b6272202f2667743b0d0a094361626c65266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a090944564920284469676974616c2056697375616c20496e7465726661636529266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909466972655769726520343030266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090955534220322e30266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909444320706f77657220283234205629266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09436f6e6e6563746f7273266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a090954776f2d706f72742c2073656c662d706f77657265642055534220322e3020687562266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090954776f2046697265576972652034303020706f727473266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094b656e73696e67746f6e20736563757269747920706f7274266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b56455341206d6f756e742061646170746572266c743b2f622667743b266c743b6272202f2667743b0d0a095265717569726573206f7074696f6e616c2043696e656d6120446973706c61792056455341204d6f756e74204164617074657220284d39363439472f4129266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a0909436f6d70617469626c65207769746820564553412046444d4920284d49532d442c203130302c20432920636f6d706c69616e74206d6f756e74696e6720736f6c7574696f6e73266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b456c656374726963616c20726571756972656d656e7473266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a0909496e70757420766f6c746167653a203130302d323430205641432035302d3630487a266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094d6178696d756d20706f776572207768656e206f7065726174696e673a2031353057266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909456e65726779207361766572206d6f64653a203357206f72206c657373266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b456e7669726f6e6d656e74616c20726571756972656d656e7473266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a09094f7065726174696e672074656d70657261747572653a203530c2b020746f203935c2b0204620283130c2b020746f203335c2b0204329266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090953746f726167652074656d70657261747572653a202d3430c2b020746f20313136c2b0204620282d3430c2b020746f203437c2b0204329266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094f7065726174696e672068756d69646974793a2032302520746f20383025206e6f6e636f6e64656e73696e67266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094d6178696d756d206f7065726174696e6720616c7469747564653a2031302c3030302066656574266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b4167656e637920617070726f76616c73266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a0909464343205061727420313520436c6173732042266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909454e353530323220436c6173732042266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909454e3535303234266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09095643434920436c6173732042266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090941532f4e5a53203335343820436c6173732042266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909434e5320313334333820436c6173732042266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909494345532d30303320436c6173732042266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090949534f20313334303620706172742032266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094d5052204949266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909494543203630393530266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909554c203630393530266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909435341203630393530266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909454e3630393530266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909454e455247592053544152266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090954434f20273033266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b53697a6520616e6420776569676874266c743b2f622667743b266c743b6272202f2667743b0d0a0933302d696e6368204170706c652043696e656d6120484420446973706c6179266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a09094865696768743a2032312e3320696e63686573202835342e3320636d29266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090957696474683a2032372e3220696e63686573202836382e3820636d29266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090944657074683a20382e343620696e63686573202832312e3520636d29266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09095765696768743a2032372e3520706f756e6473202831322e35206b6729266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a266c743b702667743b0d0a09266c743b622667743b53797374656d20526571756972656d656e7473266c743b2f622667743b266c743b2f702667743b0d0a266c743b756c2667743b0d0a09266c743b6c692667743b0d0a09094d61632050726f2c20616c6c2067726170686963206f7074696f6e73266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a09094d6163426f6f6b2050726f266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909506f776572204d616320473520285043492d582920776974682041544920526164656f6e2039363530206f7220626574746572206f72204e5649444941204765466f72636520363830302047542044444c206f7220626574746572266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909506f776572204d616320473520285043492045787072657373292c20616c6c206772617068696373206f7074696f6e73266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909506f776572426f6f6b2047342077697468206475616c2d6c696e6b2044564920737570706f7274266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a090957696e646f777320504320616e642067726170686963732063617264207468617420737570706f7274732044564920706f7274732077697468206475616c2d6c696e6b206469676974616c2062616e64776964746820616e64205645534120444443207374616e6461726420666f7220706c75672d616e642d706c6179207365747570266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a, '', ''),
(30, 2, 'Canon EOS 5D', 0x266c743b702667743b0d0a0943616e6f6e2773207072657373206d6174657269616c20666f722074686520454f532035442073746174657320746861742069742027646566696e657320286129206e657720442d534c522063617465676f7279272c207768696c65207765277265206e6f74207479706963616c6c7920746f6f20636f6e6365726e65642077697468206d61726b6574696e672074616c6b207468697320706172746963756c61722073746174656d656e7420697320636c6561726c79207072657474792061636375726174652e2054686520454f5320354420697320756e6c696b6520616e792070726576696f7573206469676974616c20534c5220696e207468617420697420636f6d62696e657320612066756c6c2d6672616d6520283335206d6d2073697a6564292068696768207265736f6c7574696f6e2073656e736f72202831322e38206d656761706978656c7329207769746820612072656c61746976656c7920636f6d7061637420626f64792028736c696768746c79206c6172676572207468616e2074686520454f53203230442c20616c74686f75676820696e20796f75722068616e64206974206665656c73206e6f7469636561626c7920276368756e6b69657227292e2054686520454f532035442069732061696d656420746f20736c6f7420696e206265747765656e2074686520454f532032304420616e642074686520454f532d31442070726f66657373696f6e616c206469676974616c20534c5227732c20616e20696d706f7274616e7420646966666572656e6365207768656e20636f6d706172656420746f20746865206c617474657220697320746861742074686520454f5320354420646f65736e2774206861766520616e7920656e7669726f6e6d656e74616c207365616c732e205768696c652043616e6f6e20646f6e2774207370656369666963616c6c7920726566657220746f2074686520454f532035442061732061202770726f66657373696f6e616c27206469676974616c20534c522069742077696c6c2068617665206f6276696f75732061707065616c20746f2070726f66657373696f6e616c732077686f2077616e7420612068696768207175616c697479206469676974616c20534c5220696e206120626f6479206c696768746572207468616e2074686520454f532d31442e2049742077696c6c20616c736f206e6f20646f7562742061707065616c20746f2063757272656e7420454f5320323044206f776e6572732028616c74686f756768206c65747320686f70652074686579277665206e6f7420626f7567687420746f6f206d616e792045462d53206c656e7365732e2e2e2920c3a4c3ab266c743b2f702667743b0d0a, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_discount`
--

CREATE TABLE IF NOT EXISTS `product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=444 ;

--
-- Dumping data for table `product_discount`
--

INSERT INTO `product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(296, 32, 6, 10, 1, 10.0000, '2010-01-01', '2010-01-31'),
(443, 42, 8, 30, 1, 66.0000, '0000-00-00', '0000-00-00'),
(442, 42, 8, 20, 1, 77.0000, '0000-00-00', '0000-00-00'),
(441, 42, 8, 10, 1, 88.0000, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE IF NOT EXISTS `product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2359 ;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2345, 30, 'data/canon_eos_5d_2.jpg', 0),
(2353, 47, 'data/hp_2.jpg', 0),
(2035, 28, 'data/htc_touch_hd_2.jpg', 0),
(2351, 41, 'data/imac_3.jpg', 0),
(1982, 40, 'data/iphone_6.jpg', 0),
(2001, 36, 'data/ipod_nano_5.jpg', 0),
(2000, 36, 'data/ipod_nano_4.jpg', 0),
(2005, 34, 'data/ipod_shuffle_5.jpg', 0),
(2004, 34, 'data/ipod_shuffle_4.jpg', 0),
(2011, 32, 'data/ipod_touch_7.jpg', 0),
(2010, 32, 'data/ipod_touch_6.jpg', 0),
(2009, 32, 'data/ipod_touch_5.jpg', 0),
(1971, 43, 'data/macbook_5.jpg', 0),
(1970, 43, 'data/macbook_4.jpg', 0),
(1974, 44, 'data/macbook_air_4.jpg', 0),
(1973, 44, 'data/macbook_air_2.jpg', 0),
(1977, 45, 'data/macbook_pro_2.jpg', 0),
(1976, 45, 'data/macbook_pro_3.jpg', 0),
(1986, 31, 'data/nikon_d300_3.jpg', 0),
(1985, 31, 'data/nikon_d300_2.jpg', 0),
(1988, 29, 'data/palm_treo_pro_3.jpg', 0),
(1995, 46, 'data/sony_vaio_5.jpg', 0),
(1994, 46, 'data/sony_vaio_4.jpg', 0),
(1991, 48, 'data/ipod_classic_4.jpg', 0),
(1990, 48, 'data/ipod_classic_3.jpg', 0),
(1981, 40, 'data/iphone_2.jpg', 0),
(1980, 40, 'data/iphone_5.jpg', 0),
(2344, 30, 'data/canon_eos_5d_3.jpg', 0),
(2352, 47, 'data/hp_3.jpg', 0),
(2034, 28, 'data/htc_touch_hd_3.jpg', 0),
(2350, 41, 'data/imac_2.jpg', 0),
(1979, 40, 'data/iphone_3.jpg', 0),
(1978, 40, 'data/iphone_4.jpg', 0),
(1989, 48, 'data/ipod_classic_2.jpg', 0),
(1999, 36, 'data/ipod_nano_2.jpg', 0),
(1998, 36, 'data/ipod_nano_3.jpg', 0),
(2003, 34, 'data/ipod_shuffle_2.jpg', 0),
(2002, 34, 'data/ipod_shuffle_3.jpg', 0),
(2008, 32, 'data/ipod_touch_2.jpg', 0),
(2007, 32, 'data/ipod_touch_3.jpg', 0),
(2006, 32, 'data/ipod_touch_4.jpg', 0),
(1969, 43, 'data/macbook_2.jpg', 0),
(1968, 43, 'data/macbook_3.jpg', 0),
(1972, 44, 'data/macbook_air_3.jpg', 0),
(1975, 45, 'data/macbook_pro_4.jpg', 0),
(1984, 31, 'data/nikon_d300_4.jpg', 0),
(1983, 31, 'data/nikon_d300_5.jpg', 0),
(1987, 29, 'data/palm_treo_pro_2.jpg', 0),
(1993, 46, 'data/sony_vaio_2.jpg', 0),
(1992, 46, 'data/sony_vaio_3.jpg', 0),
(2327, 49, 'data/samsung_tab_7.jpg', 0),
(2326, 49, 'data/samsung_tab_6.jpg', 0),
(2325, 49, 'data/samsung_tab_5.jpg', 0),
(2324, 49, 'data/samsung_tab_4.jpg', 0),
(2323, 49, 'data/samsung_tab_3.jpg', 0),
(2322, 49, 'data/samsung_tab_2.jpg', 0),
(2357, 42, 'data/canon_eos_5d_1.jpg', 0),
(2356, 42, 'data/compaq_presario.jpg', 0),
(2355, 42, 'data/hp_1.jpg', 0),
(2354, 42, 'data/canon_logo.jpg', 0),
(2358, 42, 'data/canon_eos_5d_2.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_option`
--

CREATE TABLE IF NOT EXISTS `product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value` text COLLATE utf8_bin NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=227 ;

--
-- Dumping data for table `product_option`
--

INSERT INTO `product_option` (`product_option_id`, `product_id`, `option_id`, `option_value`, `required`) VALUES
(224, 35, 11, '', 1),
(225, 47, 12, 0x323031312d30342d3232, 1),
(222, 42, 7, '', 1),
(219, 42, 8, 0x323031312d30322d3230, 1),
(208, 42, 4, 0x74657374, 1),
(218, 42, 1, '', 1),
(209, 42, 6, '', 1),
(217, 42, 5, '', 1),
(223, 42, 2, '', 1),
(226, 30, 5, '', 1),
(221, 42, 9, 0x32323a3235, 1),
(220, 42, 10, 0x323031312d30322d32302032323a3235, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_option_value`
--

CREATE TABLE IF NOT EXISTS `product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) COLLATE utf8_bin NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) COLLATE utf8_bin NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=17 ;

--
-- Dumping data for table `product_option_value`
--

INSERT INTO `product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(5, 218, 42, 1, 32, 96, 1, 10.0000, '+', 1, '+', 10.00000000, '+'),
(7, 218, 42, 1, 43, 300, 1, 30.0000, '+', 3, '+', 30.00000000, '+'),
(6, 218, 42, 1, 31, 146, 1, 20.0000, '+', 2, '-', 20.00000000, '+'),
(3, 217, 42, 5, 40, 300, 0, 3.0000, '+', 0, '+', 3.00000000, '+'),
(2, 217, 42, 5, 42, 200, 1, 2.0000, '+', 0, '+', 2.00000000, '+'),
(4, 217, 42, 5, 39, 92, 1, 4.0000, '+', 0, '+', 4.00000000, '+'),
(1, 217, 42, 5, 41, 100, 0, 1.0000, '+', 0, '+', 1.00000000, '+'),
(11, 223, 42, 2, 45, 3998, 1, 40.0000, '+', 0, '+', 40.00000000, '+'),
(9, 223, 42, 2, 24, 194, 1, 20.0000, '+', 0, '+', 20.00000000, '+'),
(10, 223, 42, 2, 44, 2696, 1, 30.0000, '+', 0, '+', 30.00000000, '+'),
(8, 223, 42, 2, 23, 48, 1, 10.0000, '+', 0, '+', 10.00000000, '+'),
(12, 224, 35, 11, 46, 0, 1, 5.0000, '+', 0, '+', 0.00000000, '+'),
(13, 224, 35, 11, 47, 10, 1, 10.0000, '+', 0, '+', 0.00000000, '+'),
(14, 224, 35, 11, 48, 15, 1, 15.0000, '+', 0, '+', 0.00000000, '+'),
(16, 226, 30, 5, 40, 5, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(15, 226, 30, 5, 39, 2, 1, 0.0000, '+', 0, '+', 0.00000000, '+');

-- --------------------------------------------------------

--
-- Table structure for table `product_related`
--

CREATE TABLE IF NOT EXISTS `product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `product_related`
--

INSERT INTO `product_related` (`product_id`, `related_id`) VALUES
(40, 42),
(41, 42),
(42, 40),
(42, 41);

-- --------------------------------------------------------

--
-- Table structure for table `product_reward`
--

CREATE TABLE IF NOT EXISTS `product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=551 ;

--
-- Dumping data for table `product_reward`
--

INSERT INTO `product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(550, 42, 6, 10),
(549, 42, 8, 100),
(548, 47, 6, 30),
(547, 47, 8, 300),
(380, 28, 6, 400),
(379, 28, 8, 400),
(330, 43, 6, 60),
(329, 43, 8, 600),
(340, 29, 6, 0),
(339, 29, 8, 0),
(344, 48, 6, 0),
(343, 48, 8, 0),
(336, 40, 6, 0),
(335, 40, 8, 0),
(540, 30, 6, 20),
(539, 30, 8, 200),
(332, 44, 6, 70),
(331, 44, 8, 700),
(334, 45, 6, 80),
(333, 45, 8, 800),
(337, 31, 8, 0),
(338, 31, 6, 0),
(426, 35, 6, 0),
(425, 35, 8, 0),
(345, 33, 8, 0),
(346, 33, 6, 0),
(347, 46, 8, 0),
(348, 46, 6, 0),
(546, 41, 6, 0),
(545, 41, 8, 0),
(351, 36, 8, 0),
(352, 36, 6, 0),
(353, 34, 8, 0),
(354, 34, 6, 0),
(355, 32, 8, 0),
(356, 32, 6, 0),
(522, 49, 6, 1000),
(521, 49, 8, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `product_special`
--

CREATE TABLE IF NOT EXISTS `product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=442 ;

--
-- Dumping data for table `product_special`
--

INSERT INTO `product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(441, 42, 8, 1, 90.0000, '0000-00-00', '0000-00-00'),
(439, 30, 8, 2, 90.0000, '0000-00-00', '0000-00-00'),
(438, 30, 8, 1, 80.0000, '0000-00-00', '0000-00-00'),
(440, 47, 8, 0, 800.0000, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE IF NOT EXISTS `product_tag` (
  `product_tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `tag` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`product_tag_id`),
  KEY `product_id` (`product_id`),
  KEY `language_id` (`language_id`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=349 ;

--
-- Dumping data for table `product_tag`
--

INSERT INTO `product_tag` (`product_tag_id`, `product_id`, `language_id`, `tag`) VALUES
(348, 42, 1, 'test 2'),
(347, 42, 1, 'test 1'),
(346, 42, 2, 'test 2'),
(345, 42, 2, 'test 1');

-- --------------------------------------------------------

--
-- Table structure for table `product_to_category`
--

CREATE TABLE IF NOT EXISTS `product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `product_to_category`
--

INSERT INTO `product_to_category` (`product_id`, `category_id`) VALUES
(28, 20),
(28, 24),
(29, 20),
(29, 24),
(30, 20),
(30, 33),
(31, 33),
(32, 34),
(33, 20),
(33, 28),
(34, 34),
(35, 20),
(36, 34),
(40, 20),
(40, 24),
(41, 27),
(42, 20),
(42, 28),
(43, 18),
(43, 20),
(44, 18),
(44, 20),
(45, 18),
(46, 18),
(46, 20),
(47, 18),
(47, 20),
(48, 20),
(48, 34),
(49, 57);

-- --------------------------------------------------------

--
-- Table structure for table `product_to_download`
--

CREATE TABLE IF NOT EXISTS `product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `product_to_download`
--


-- --------------------------------------------------------

--
-- Table structure for table `product_to_layout`
--

CREATE TABLE IF NOT EXISTS `product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `product_to_layout`
--


-- --------------------------------------------------------

--
-- Table structure for table `product_to_store`
--

CREATE TABLE IF NOT EXISTS `product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `product_to_store`
--

INSERT INTO `product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0);

-- --------------------------------------------------------

--
-- Table structure for table `return`
--

CREATE TABLE IF NOT EXISTS `return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `date_ordered` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(32) COLLATE utf8_bin NOT NULL,
  `email` varchar(96) COLLATE utf8_bin NOT NULL,
  `telephone` varchar(32) COLLATE utf8_bin NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text COLLATE utf8_bin,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `return`
--


-- --------------------------------------------------------

--
-- Table structure for table `return_action`
--

CREATE TABLE IF NOT EXISTS `return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `return_action`
--

INSERT INTO `return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `return_history`
--

CREATE TABLE IF NOT EXISTS `return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text COLLATE utf8_bin NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `return_history`
--


-- --------------------------------------------------------

--
-- Table structure for table `return_product`
--

CREATE TABLE IF NOT EXISTS `return_product` (
  `return_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `model` varchar(64) COLLATE utf8_bin NOT NULL,
  `quantity` int(4) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `comment` text COLLATE utf8_bin NOT NULL,
  `return_action_id` int(11) NOT NULL,
  PRIMARY KEY (`return_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `return_product`
--


-- --------------------------------------------------------

--
-- Table structure for table `return_reason`
--

CREATE TABLE IF NOT EXISTS `return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- Dumping data for table `return_reason`
--

INSERT INTO `return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `return_status`
--

CREATE TABLE IF NOT EXISTS `return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `return_status`
--

INSERT INTO `return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `text` text COLLATE utf8_bin NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `review`
--


-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `group` varchar(32) COLLATE utf8_bin NOT NULL,
  `key` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `value` text COLLATE utf8_bin NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=25440 ;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `store_id`, `group`, `key`, `value`, `serialized`) VALUES
(9457, 0, 'shipping', 'shipping_sort_order', 0x33, 0),
(3453, 0, 'sub_total', 'sub_total_sort_order', 0x31, 0),
(3452, 0, 'sub_total', 'sub_total_status', 0x31, 0),
(272, 0, 'tax', 'tax_status', 0x31, 0),
(16013, 0, 'total', 'total_sort_order', 0x39, 0),
(16012, 0, 'total', 'total_status', 0x31, 0),
(273, 0, 'tax', 'tax_sort_order', 0x35, 0),
(19411, 0, 'free_checkout', 'free_checkout_sort_order', 0x31, 0),
(20444, 0, 'cod', 'cod_sort_order', 0x35, 0),
(20440, 0, 'cod', 'cod_total', 0x302e3031, 0),
(20441, 0, 'cod', 'cod_order_status_id', 0x31, 0),
(20442, 0, 'cod', 'cod_geo_zone_id', 0x30, 0),
(20443, 0, 'cod', 'cod_status', 0x31, 0),
(9456, 0, 'shipping', 'shipping_status', 0x31, 0),
(9455, 0, 'shipping', 'shipping_estimator', 0x31, 0),
(25437, 0, 'config', 'config_google_analytics', '', 0),
(25436, 0, 'config', 'config_error_filename', 0x6572726f722e747874, 0),
(25435, 0, 'config', 'config_error_log', 0x31, 0),
(25434, 0, 'config', 'config_error_display', 0x31, 0),
(13801, 0, 'coupon', 'coupon_sort_order', 0x34, 0),
(13800, 0, 'coupon', 'coupon_status', 0x31, 0),
(25433, 0, 'config', 'config_compression', 0x30, 0),
(25432, 0, 'config', 'config_encryption', 0x3132333435, 0),
(20422, 0, 'flat', 'flat_sort_order', 0x31, 0),
(20421, 0, 'flat', 'flat_status', 0x31, 0),
(20420, 0, 'flat', 'flat_geo_zone_id', 0x30, 0),
(20419, 0, 'flat', 'flat_tax_class_id', 0x39, 0),
(24356, 0, 'carousel', 'carousel_module', 0x613a313a7b693a303b613a393a7b733a393a2262616e6e65725f6964223b733a313a2238223b733a353a226c696d6974223b733a313a2235223b733a363a227363726f6c6c223b733a313a2233223b733a353a227769647468223b733a323a223830223b733a363a22686569676874223b733a323a223830223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31343a22636f6e74656e745f626f74746f6d223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d7d, 1),
(24341, 0, 'featured', 'featured_product', 0x34312c34302c34382c33362c33342c33322c34322c3330, 0),
(24342, 0, 'featured', 'featured_module', 0x613a313a7b693a303b613a363a7b733a31313a22696d6167655f7769647468223b733a333a22313537223b733a31323a22696d6167655f686569676874223b733a333a22313330223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6e74656e745f746f70223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2232223b7d7d, 1),
(20418, 0, 'flat', 'flat_cost', 0x352e3030, 0),
(9444, 0, 'credit', 'credit_sort_order', 0x37, 0),
(9443, 0, 'credit', 'credit_status', 0x31, 0),
(25431, 0, 'config', 'config_maintenance', 0x30, 0),
(25430, 0, 'config', 'config_seo_url', 0x30, 0),
(25429, 0, 'config', 'config_use_ssl', 0x30, 0),
(25428, 0, 'config', 'config_alert_emails', '', 0),
(25427, 0, 'config', 'config_account_mail', 0x30, 0),
(25426, 0, 'config', 'config_alert_mail', 0x30, 0),
(18432, 0, 'reward', 'reward_sort_order', 0x32, 0),
(18431, 0, 'reward', 'reward_status', 0x31, 0),
(25425, 0, 'config', 'config_smtp_timeout', 0x35, 0),
(19721, 0, 'affiliate', 'affiliate_module', 0x613a313a7b693a303b613a343a7b733a393a226c61796f75745f6964223b733a323a223130223b733a383a22706f736974696f6e223b733a31323a22636f6c756d6e5f7269676874223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2231223b7d7d, 1),
(25424, 0, 'config', 'config_smtp_port', 0x3235, 0),
(25423, 0, 'config', 'config_smtp_password', '', 0),
(25439, 0, 'account', 'account_module', 0x613a313a7b693a303b613a343a7b733a393a226c61796f75745f6964223b733a313a2236223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2230223b7d7d, 1),
(25422, 0, 'config', 'config_smtp_username', '', 0),
(25421, 0, 'config', 'config_smtp_host', '', 0),
(25420, 0, 'config', 'config_mail_parameter', '', 0),
(25419, 0, 'config', 'config_mail_protocol', 0x6d61696c, 0),
(25418, 0, 'config', 'config_image_cart_height', 0x3830, 0),
(25417, 0, 'config', 'config_image_cart_width', 0x3830, 0),
(25416, 0, 'config', 'config_image_wishlist_height', 0x3530, 0),
(25415, 0, 'config', 'config_image_wishlist_width', 0x3530, 0),
(25414, 0, 'config', 'config_image_compare_height', 0x3930, 0),
(25413, 0, 'config', 'config_image_compare_width', 0x3930, 0),
(25412, 0, 'config', 'config_image_related_height', 0x3830, 0),
(25411, 0, 'config', 'config_image_related_width', 0x3830, 0),
(25410, 0, 'config', 'config_image_additional_height', 0x323238, 0),
(25409, 0, 'config', 'config_image_additional_width', 0x323238, 0),
(25408, 0, 'config', 'config_image_product_height', 0x3830, 0),
(25407, 0, 'config', 'config_image_product_width', 0x3830, 0),
(25406, 0, 'config', 'config_image_popup_height', 0x393030, 0),
(16017, 0, 'voucher', 'voucher_sort_order', 0x38, 0),
(16016, 0, 'voucher', 'voucher_status', 0x31, 0),
(25405, 0, 'config', 'config_image_popup_width', 0x393030, 0),
(25402, 0, 'config', 'config_image_category_height', 0x3830, 0),
(25404, 0, 'config', 'config_image_thumb_height', 0x323238, 0),
(19410, 0, 'free_checkout', 'free_checkout_status', 0x31, 0),
(19409, 0, 'free_checkout', 'free_checkout_order_status_id', 0x31, 0),
(25403, 0, 'config', 'config_image_thumb_width', 0x323238, 0),
(25401, 0, 'config', 'config_image_category_width', 0x3830, 0),
(24534, 0, 'slideshow', 'slideshow_module', 0x613a313a7b693a303b613a373a7b733a393a2262616e6e65725f6964223b733a323a223130223b733a353a227769647468223b733a333a22363830223b733a363a22686569676874223b733a333a22313734223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6e74656e745f746f70223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2231223b7d7d, 1),
(25400, 0, 'config', 'config_icon', 0x646174612f636172742e706e67, 0),
(25399, 0, 'config', 'config_logo', 0x646174612f6c6f676f2e706e67, 0),
(25398, 0, 'config', 'config_cart_weight', 0x31, 0),
(25397, 0, 'config', 'config_upload_allowed', 0x6a70672c204a50472c206a7065672c206769662c20706e672c20747874, 0),
(25396, 0, 'config', 'config_download', 0x31, 0),
(25395, 0, 'config', 'config_review_status', 0x31, 0),
(24322, 0, 'category', 'category_module', 0x613a31313a7b693a303b613a343a7b733a393a226c61796f75745f6964223b733a313a2233223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2231223b7d693a313b613a343a7b733a393a226c61796f75745f6964223b733a313a2232223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2231223b7d693a323b613a343a7b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2231223b7d693a333b613a343a7b733a393a226c61796f75745f6964223b733a313a2236223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2231223b7d693a343b613a343a7b733a393a226c61796f75745f6964223b733a323a223130223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2231223b7d693a353b613a343a7b733a393a226c61796f75745f6964223b733a313a2237223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2231223b7d693a363b613a343a7b733a393a226c61796f75745f6964223b733a313a2238223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2231223b7d693a373b613a343a7b733a393a226c61796f75745f6964223b733a313a2234223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2231223b7d693a383b613a343a7b733a393a226c61796f75745f6964223b733a323a223131223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2231223b7d693a393b613a343a7b733a393a226c61796f75745f6964223b733a313a2235223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2231223b7d693a31303b613a343a7b733a393a226c61796f75745f6964223b733a313a2239223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2231223b7d7d, 1),
(24357, 0, 'bestseller', 'bestseller_module', 0x613a31313a7b693a303b613a373a7b733a353a226c696d6974223b733a313a2235223b733a31313a22696d6167655f7769647468223b733a333a22313836223b733a31323a22696d6167655f686569676874223b733a333a22313033223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2234223b7d693a313b613a373a7b733a353a226c696d6974223b733a313a2235223b733a31313a22696d6167655f7769647468223b733a333a22313836223b733a31323a22696d6167655f686569676874223b733a333a22313033223b733a393a226c61796f75745f6964223b733a313a2236223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2234223b7d693a323b613a373a7b733a353a226c696d6974223b733a313a2235223b733a31313a22696d6167655f7769647468223b733a333a22313836223b733a31323a22696d6167655f686569676874223b733a333a22313033223b733a393a226c61796f75745f6964223b733a313a2233223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2234223b7d693a333b613a373a7b733a353a226c696d6974223b733a313a2235223b733a31313a22696d6167655f7769647468223b733a333a22313836223b733a31323a22696d6167655f686569676874223b733a333a22313033223b733a393a226c61796f75745f6964223b733a323a223130223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2234223b7d693a343b613a373a7b733a353a226c696d6974223b733a313a2235223b733a31313a22696d6167655f7769647468223b733a333a22313836223b733a31323a22696d6167655f686569676874223b733a333a22313033223b733a393a226c61796f75745f6964223b733a313a2237223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2234223b7d693a353b613a373a7b733a353a226c696d6974223b733a313a2235223b733a31313a22696d6167655f7769647468223b733a333a22313836223b733a31323a22696d6167655f686569676874223b733a333a22313033223b733a393a226c61796f75745f6964223b733a313a2238223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2234223b7d693a363b613a373a7b733a353a226c696d6974223b733a313a2235223b733a31313a22696d6167655f7769647468223b733a333a22313836223b733a31323a22696d6167655f686569676874223b733a333a22313033223b733a393a226c61796f75745f6964223b733a313a2234223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2234223b7d693a373b613a373a7b733a353a226c696d6974223b733a313a2235223b733a31313a22696d6167655f7769647468223b733a333a22313836223b733a31323a22696d6167655f686569676874223b733a333a22313033223b733a393a226c61796f75745f6964223b733a323a223131223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2234223b7d693a383b613a373a7b733a353a226c696d6974223b733a313a2235223b733a31313a22696d6167655f7769647468223b733a333a22313836223b733a31323a22696d6167655f686569676874223b733a333a22313033223b733a393a226c61796f75745f6964223b733a313a2235223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2234223b7d693a393b613a373a7b733a353a226c696d6974223b733a313a2235223b733a31313a22696d6167655f7769647468223b733a333a22313836223b733a31323a22696d6167655f686569676874223b733a333a22313033223b733a393a226c61796f75745f6964223b733a313a2239223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2234223b7d693a31303b613a373a7b733a353a226c696d6974223b733a313a2235223b733a31313a22696d6167655f7769647468223b733a333a22313836223b733a31323a22696d6167655f686569676874223b733a333a22313033223b733a393a226c61796f75745f6964223b733a313a2232223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2234223b7d7d, 1),
(24340, 0, 'featured', 'product', 0x63, 0),
(24366, 0, 'banner', 'banner_module', 0x613a34363a7b693a303b613a373a7b733a393a2262616e6e65725f6964223b733a313a2237223b733a353a227769647468223b733a333a22353838223b733a363a22686569676874223b733a333a22313435223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6e74656e745f746f70223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2233223b7d693a313b613a373a7b733a393a2262616e6e65725f6964223b733a323a223130223b733a353a227769647468223b733a333a22363739223b733a363a22686569676874223b733a333a22313732223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6e74656e745f746f70223b733a363a22737461747573223b733a313a2230223b733a31303a22736f72745f6f72646572223b733a313a2231223b7d693a323b613a373a7b733a393a2262616e6e65725f6964223b733a323a223131223b733a353a227769647468223b733a323a223935223b733a363a22686569676874223b733a333a22343732223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a333b613a373a7b733a393a2262616e6e65725f6964223b733a323a223131223b733a353a227769647468223b733a323a223935223b733a363a22686569676874223b733a333a22343732223b733a393a226c61796f75745f6964223b733a313a2233223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a343b613a373a7b733a393a2262616e6e65725f6964223b733a323a223131223b733a353a227769647468223b733a323a223935223b733a363a22686569676874223b733a333a22343732223b733a393a226c61796f75745f6964223b733a313a2236223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a353b613a373a7b733a393a2262616e6e65725f6964223b733a323a223131223b733a353a227769647468223b733a323a223935223b733a363a22686569676874223b733a333a22343732223b733a393a226c61796f75745f6964223b733a323a223130223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a363b613a373a7b733a393a2262616e6e65725f6964223b733a323a223131223b733a353a227769647468223b733a323a223935223b733a363a22686569676874223b733a333a22343732223b733a393a226c61796f75745f6964223b733a313a2237223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a373b613a373a7b733a393a2262616e6e65725f6964223b733a323a223131223b733a353a227769647468223b733a323a223935223b733a363a22686569676874223b733a333a22343732223b733a393a226c61796f75745f6964223b733a313a2238223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a383b613a373a7b733a393a2262616e6e65725f6964223b733a323a223131223b733a353a227769647468223b733a323a223935223b733a363a22686569676874223b733a333a22343732223b733a393a226c61796f75745f6964223b733a323a223131223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a393b613a373a7b733a393a2262616e6e65725f6964223b733a323a223131223b733a353a227769647468223b733a323a223935223b733a363a22686569676874223b733a333a22343732223b733a393a226c61796f75745f6964223b733a313a2232223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a31303b613a373a7b733a393a2262616e6e65725f6964223b733a323a223131223b733a353a227769647468223b733a323a223935223b733a363a22686569676874223b733a333a22343732223b733a393a226c61796f75745f6964223b733a313a2235223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a31313b613a373a7b733a393a2262616e6e65725f6964223b733a323a223131223b733a353a227769647468223b733a323a223935223b733a363a22686569676874223b733a333a22343732223b733a393a226c61796f75745f6964223b733a313a2239223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a31323b613a373a7b733a393a2262616e6e65725f6964223b733a323a223133223b733a353a227769647468223b733a323a223935223b733a363a22686569676874223b733a333a22343732223b733a393a226c61796f75745f6964223b733a313a2236223b733a383a22706f736974696f6e223b733a31323a22636f6c756d6e5f7269676874223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a31333b613a373a7b733a393a2262616e6e65725f6964223b733a323a223133223b733a353a227769647468223b733a323a223935223b733a363a22686569676874223b733a333a22343732223b733a393a226c61796f75745f6964223b733a323a223130223b733a383a22706f736974696f6e223b733a31323a22636f6c756d6e5f7269676874223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a31343b613a373a7b733a393a2262616e6e65725f6964223b733a323a223133223b733a353a227769647468223b733a323a223935223b733a363a22686569676874223b733a333a22343732223b733a393a226c61796f75745f6964223b733a313a2233223b733a383a22706f736974696f6e223b733a31323a22636f6c756d6e5f7269676874223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a31353b613a373a7b733a393a2262616e6e65725f6964223b733a323a223133223b733a353a227769647468223b733a323a223935223b733a363a22686569676874223b733a333a22343732223b733a393a226c61796f75745f6964223b733a313a2237223b733a383a22706f736974696f6e223b733a31323a22636f6c756d6e5f7269676874223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a31363b613a373a7b733a393a2262616e6e65725f6964223b733a323a223133223b733a353a227769647468223b733a323a223935223b733a363a22686569676874223b733a333a22343732223b733a393a226c61796f75745f6964223b733a313a2238223b733a383a22706f736974696f6e223b733a31323a22636f6c756d6e5f7269676874223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a31373b613a373a7b733a393a2262616e6e65725f6964223b733a323a223133223b733a353a227769647468223b733a323a223935223b733a363a22686569676874223b733a333a22343732223b733a393a226c61796f75745f6964223b733a313a2234223b733a383a22706f736974696f6e223b733a31323a22636f6c756d6e5f7269676874223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a31383b613a373a7b733a393a2262616e6e65725f6964223b733a323a223133223b733a353a227769647468223b733a323a223935223b733a363a22686569676874223b733a333a22343732223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31323a22636f6c756d6e5f7269676874223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a31393b613a373a7b733a393a2262616e6e65725f6964223b733a323a223133223b733a353a227769647468223b733a323a223935223b733a363a22686569676874223b733a333a22343732223b733a393a226c61796f75745f6964223b733a323a223131223b733a383a22706f736974696f6e223b733a31323a22636f6c756d6e5f7269676874223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a32303b613a373a7b733a393a2262616e6e65725f6964223b733a323a223133223b733a353a227769647468223b733a323a223935223b733a363a22686569676874223b733a333a22343732223b733a393a226c61796f75745f6964223b733a313a2235223b733a383a22706f736974696f6e223b733a31323a22636f6c756d6e5f7269676874223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a32313b613a373a7b733a393a2262616e6e65725f6964223b733a323a223133223b733a353a227769647468223b733a323a223935223b733a363a22686569676874223b733a333a22343732223b733a393a226c61796f75745f6964223b733a313a2232223b733a383a22706f736974696f6e223b733a31323a22636f6c756d6e5f7269676874223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a32323b613a373a7b733a393a2262616e6e65725f6964223b733a323a223133223b733a353a227769647468223b733a323a223935223b733a363a22686569676874223b733a333a22343732223b733a393a226c61796f75745f6964223b733a313a2239223b733a383a22706f736974696f6e223b733a31323a22636f6c756d6e5f7269676874223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a32333b613a373a7b733a393a2262616e6e65725f6964223b733a323a223132223b733a353a227769647468223b733a333a22333430223b733a363a22686569676874223b733a323a223730223b733a393a226c61796f75745f6964223b733a313a2236223b733a383a22706f736974696f6e223b733a31313a22636f6e74656e745f746f70223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a32343b613a373a7b733a393a2262616e6e65725f6964223b733a323a223132223b733a353a227769647468223b733a333a22333430223b733a363a22686569676874223b733a323a223730223b733a393a226c61796f75745f6964223b733a323a223130223b733a383a22706f736974696f6e223b733a31313a22636f6e74656e745f746f70223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a32353b613a373a7b733a393a2262616e6e65725f6964223b733a323a223132223b733a353a227769647468223b733a333a22333430223b733a363a22686569676874223b733a323a223730223b733a393a226c61796f75745f6964223b733a313a2233223b733a383a22706f736974696f6e223b733a31313a22636f6e74656e745f746f70223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a32363b613a373a7b733a393a2262616e6e65725f6964223b733a323a223132223b733a353a227769647468223b733a333a22333430223b733a363a22686569676874223b733a323a223730223b733a393a226c61796f75745f6964223b733a313a2237223b733a383a22706f736974696f6e223b733a31313a22636f6e74656e745f746f70223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a32373b613a373a7b733a393a2262616e6e65725f6964223b733a323a223132223b733a353a227769647468223b733a333a22333430223b733a363a22686569676874223b733a323a223730223b733a393a226c61796f75745f6964223b733a313a2238223b733a383a22706f736974696f6e223b733a31313a22636f6e74656e745f746f70223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a32383b613a373a7b733a393a2262616e6e65725f6964223b733a323a223132223b733a353a227769647468223b733a333a22333430223b733a363a22686569676874223b733a323a223730223b733a393a226c61796f75745f6964223b733a313a2234223b733a383a22706f736974696f6e223b733a31313a22636f6e74656e745f746f70223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a32393b613a373a7b733a393a2262616e6e65725f6964223b733a323a223132223b733a353a227769647468223b733a333a22333430223b733a363a22686569676874223b733a323a223730223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6e74656e745f746f70223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a33303b613a373a7b733a393a2262616e6e65725f6964223b733a323a223132223b733a353a227769647468223b733a333a22333430223b733a363a22686569676874223b733a323a223730223b733a393a226c61796f75745f6964223b733a323a223131223b733a383a22706f736974696f6e223b733a31313a22636f6e74656e745f746f70223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a33313b613a373a7b733a393a2262616e6e65725f6964223b733a323a223132223b733a353a227769647468223b733a333a22333430223b733a363a22686569676874223b733a323a223730223b733a393a226c61796f75745f6964223b733a313a2235223b733a383a22706f736974696f6e223b733a31313a22636f6e74656e745f746f70223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a33323b613a373a7b733a393a2262616e6e65725f6964223b733a323a223132223b733a353a227769647468223b733a333a22333430223b733a363a22686569676874223b733a323a223730223b733a393a226c61796f75745f6964223b733a313a2232223b733a383a22706f736974696f6e223b733a31313a22636f6e74656e745f746f70223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a33333b613a373a7b733a393a2262616e6e65725f6964223b733a323a223132223b733a353a227769647468223b733a333a22333430223b733a363a22686569676874223b733a323a223730223b733a393a226c61796f75745f6964223b733a313a2239223b733a383a22706f736974696f6e223b733a31313a22636f6e74656e745f746f70223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d693a33343b613a373a7b733a393a2262616e6e65725f6964223b733a313a2236223b733a353a227769647468223b733a333a22313938223b733a363a22686569676874223b733a333a22313438223b733a393a226c61796f75745f6964223b733a313a2236223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2232223b7d693a33353b613a373a7b733a393a2262616e6e65725f6964223b733a313a2236223b733a353a227769647468223b733a333a22313938223b733a363a22686569676874223b733a333a22313438223b733a393a226c61796f75745f6964223b733a323a223130223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2232223b7d693a33363b613a373a7b733a393a2262616e6e65725f6964223b733a313a2236223b733a353a227769647468223b733a333a22313938223b733a363a22686569676874223b733a333a22313438223b733a393a226c61796f75745f6964223b733a313a2233223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2232223b7d693a33373b613a373a7b733a393a2262616e6e65725f6964223b733a313a2236223b733a353a227769647468223b733a333a22313938223b733a363a22686569676874223b733a333a22313438223b733a393a226c61796f75745f6964223b733a313a2237223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2232223b7d693a33383b613a373a7b733a393a2262616e6e65725f6964223b733a313a2236223b733a353a227769647468223b733a333a22313938223b733a363a22686569676874223b733a333a22313438223b733a393a226c61796f75745f6964223b733a313a2238223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2232223b7d693a33393b613a373a7b733a393a2262616e6e65725f6964223b733a313a2236223b733a353a227769647468223b733a333a22313938223b733a363a22686569676874223b733a333a22313438223b733a393a226c61796f75745f6964223b733a313a2234223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2232223b7d693a34303b613a373a7b733a393a2262616e6e65725f6964223b733a313a2236223b733a353a227769647468223b733a333a22313938223b733a363a22686569676874223b733a333a22313438223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2232223b7d693a34313b613a373a7b733a393a2262616e6e65725f6964223b733a313a2236223b733a353a227769647468223b733a333a22313938223b733a363a22686569676874223b733a333a22313438223b733a393a226c61796f75745f6964223b733a323a223131223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2232223b7d693a34323b613a373a7b733a393a2262616e6e65725f6964223b733a313a2236223b733a353a227769647468223b733a333a22313938223b733a363a22686569676874223b733a333a22313438223b733a393a226c61796f75745f6964223b733a313a2235223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2232223b7d693a34333b613a373a7b733a393a2262616e6e65725f6964223b733a313a2236223b733a353a227769647468223b733a333a22313938223b733a363a22686569676874223b733a333a22313438223b733a393a226c61796f75745f6964223b733a313a2232223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2232223b7d693a34343b613a373a7b733a393a2262616e6e65725f6964223b733a313a2236223b733a353a227769647468223b733a333a22313938223b733a363a22686569676874223b733a333a22313438223b733a393a226c61796f75745f6964223b733a313a2239223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2232223b7d693a34353b613a373a7b733a393a2262616e6e65725f6964223b733a323a223131223b733a353a227769647468223b733a323a223935223b733a363a22686569676874223b733a333a22343237223b733a393a226c61796f75745f6964223b733a313a2234223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a222d31223b7d7d, 1),
(24328, 0, 'latest', 'latest_module', 0x613a31313a7b693a303b613a373a7b733a353a226c696d6974223b733a323a223130223b733a31313a22696d6167655f7769647468223b733a323a223835223b733a31323a22696d6167655f686569676874223b733a323a223635223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2233223b7d693a313b613a373a7b733a353a226c696d6974223b733a323a223130223b733a31313a22696d6167655f7769647468223b733a323a223835223b733a31323a22696d6167655f686569676874223b733a323a223635223b733a393a226c61796f75745f6964223b733a323a223130223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2233223b7d693a323b613a373a7b733a353a226c696d6974223b733a323a223130223b733a31313a22696d6167655f7769647468223b733a323a223835223b733a31323a22696d6167655f686569676874223b733a323a223635223b733a393a226c61796f75745f6964223b733a313a2236223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2233223b7d693a333b613a373a7b733a353a226c696d6974223b733a323a223130223b733a31313a22696d6167655f7769647468223b733a323a223835223b733a31323a22696d6167655f686569676874223b733a323a223635223b733a393a226c61796f75745f6964223b733a313a2233223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2233223b7d693a343b613a373a7b733a353a226c696d6974223b733a323a223130223b733a31313a22696d6167655f7769647468223b733a323a223835223b733a31323a22696d6167655f686569676874223b733a323a223635223b733a393a226c61796f75745f6964223b733a313a2235223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2233223b7d693a353b613a373a7b733a353a226c696d6974223b733a323a223130223b733a31313a22696d6167655f7769647468223b733a323a223835223b733a31323a22696d6167655f686569676874223b733a323a223635223b733a393a226c61796f75745f6964223b733a313a2238223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2233223b7d693a363b613a373a7b733a353a226c696d6974223b733a323a223130223b733a31313a22696d6167655f7769647468223b733a323a223835223b733a31323a22696d6167655f686569676874223b733a323a223635223b733a393a226c61796f75745f6964223b733a313a2234223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2233223b7d693a373b613a373a7b733a353a226c696d6974223b733a323a223130223b733a31313a22696d6167655f7769647468223b733a323a223835223b733a31323a22696d6167655f686569676874223b733a323a223635223b733a393a226c61796f75745f6964223b733a323a223131223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2233223b7d693a383b613a373a7b733a353a226c696d6974223b733a323a223130223b733a31313a22696d6167655f7769647468223b733a323a223835223b733a31323a22696d6167655f686569676874223b733a323a223635223b733a393a226c61796f75745f6964223b733a313a2232223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2233223b7d693a393b613a373a7b733a353a226c696d6974223b733a323a223130223b733a31313a22696d6167655f7769647468223b733a323a223835223b733a31323a22696d6167655f686569676874223b733a323a223635223b733a393a226c61796f75745f6964223b733a313a2239223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2233223b7d693a31303b613a373a7b733a353a226c696d6974223b733a323a223130223b733a31313a22696d6167655f7769647468223b733a323a223830223b733a31323a22696d6167655f686569676874223b733a323a223830223b733a393a226c61796f75745f6964223b733a313a2236223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a313a2233223b7d7d, 1),
(24343, 0, 'cr2htmlmodule', 'cr2htmlmodule_title1_1', 0xc490e1bb91692054c3a163, 0),
(24344, 0, 'cr2htmlmodule', 'cr2htmlmodule_header1', 0x31, 0),
(24345, 0, 'cr2htmlmodule', 'cr2htmlmodule_borderless1', 0x30, 0),
(24346, 0, 'cr2htmlmodule', 'cr2htmlmodule_code1_1', 0x266c743b756c2667743b0d0a09266c743b6c692667743b0d0a0909266c743b696d6720616c743d2671756f743b2671756f743b207372633d2671756f743b687474703a2f2f6c6f63616c686f73742f3138306275792f696d6167652f646174612f7061726e65722d696d672f686f6d65325f31312e6a70672671756f743b207374796c653d2671756f743b77696474683a20383870783b206865696768743a20353970783b2671756f743b202f2667743b266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b696d6720616c743d2671756f743b2671756f743b207372633d2671756f743b687474703a2f2f6c6f63616c686f73742f3138306275792f696d6167652f646174612f7061726e65722d696d672f686f6d65325f31332e6a70672671756f743b207374796c653d2671756f743b77696474683a20383870783b206865696768743a20353970783b2671756f743b202f2667743b266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b696d6720616c743d2671756f743b2671756f743b207372633d2671756f743b687474703a2f2f6c6f63616c686f73742f3138306275792f696d6167652f646174612f7061726e65722d696d672f686f6d65325f31372e6a70672671756f743b207374796c653d2671756f743b77696474683a20383870783b206865696768743a20353970783b2671756f743b202f2667743b266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b696d6720616c743d2671756f743b2671756f743b207372633d2671756f743b687474703a2f2f6c6f63616c686f73742f3138306275792f696d6167652f646174612f7061726e65722d696d672f686f6d65325f31392e6a70672671756f743b207374796c653d2671756f743b77696474683a20383870783b206865696768743a20353970783b2671756f743b202f2667743b266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b696d6720616c743d2671756f743b2671756f743b207372633d2671756f743b687474703a2f2f6c6f63616c686f73742f3138306275792f696d6167652f646174612f7061726e65722d696d672f686f6d65325f32342e6a70672671756f743b207374796c653d2671756f743b77696474683a20383870783b206865696768743a20353970783b2671756f743b202f2667743b266c743b2f6c692667743b0d0a09266c743b6c692667743b0d0a0909266c743b696d6720616c743d2671756f743b2671756f743b207372633d2671756f743b687474703a2f2f6c6f63616c686f73742f3138306275792f696d6167652f646174612f7061726e65722d696d672f686f6d65325f31332e6a70672671756f743b207374796c653d2671756f743b77696474683a20383870783b206865696768743a20353970783b2671756f743b202f2667743b266c743b2f6c692667743b0d0a266c743b2f756c2667743b0d0a, 0),
(24347, 0, 'cr2htmlmodule', 'cr2htmlmodule_title2_1', '', 0),
(24348, 0, 'cr2htmlmodule', 'cr2htmlmodule_header2', 0x30, 0),
(24349, 0, 'cr2htmlmodule', 'cr2htmlmodule_borderless2', 0x30, 0),
(24350, 0, 'cr2htmlmodule', 'cr2htmlmodule_code2_1', '', 0),
(24351, 0, 'cr2htmlmodule', 'cr2htmlmodule_title3_1', '', 0),
(24352, 0, 'cr2htmlmodule', 'cr2htmlmodule_header3', 0x30, 0),
(24353, 0, 'cr2htmlmodule', 'cr2htmlmodule_borderless3', 0x30, 0),
(24354, 0, 'cr2htmlmodule', 'cr2htmlmodule_code3_1', '', 0),
(24355, 0, 'cr2htmlmodule', 'cr2htmlmodule_module', 0x613a313a7b693a303b613a363a7b733a373a22617265615f6964223b733a353a226172656131223b733a393a22636c6173736e616d65223b733a363a227061726e6572223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31343a22636f6e74656e745f626f74746f6d223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a323a223130223b7d7d, 1),
(24363, 0, 'store', 'store_module', 0x613a313a7b693a303b613a343a7b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6c756d6e5f6c656674223b733a363a22737461747573223b733a313a2230223b733a31303a22736f72745f6f72646572223b733a313a2236223b7d7d, 1),
(24362, 0, 'store', 'store_admin', 0x30, 0),
(25394, 0, 'config', 'config_return_status_id', 0x32, 0),
(25393, 0, 'config', 'config_complete_status_id', 0x35, 0),
(25392, 0, 'config', 'config_order_status_id', 0x31, 0),
(25391, 0, 'config', 'config_stock_status_id', 0x35, 0),
(25390, 0, 'config', 'config_stock_checkout', 0x30, 0),
(25389, 0, 'config', 'config_stock_warning', 0x30, 0),
(25388, 0, 'config', 'config_stock_display', 0x30, 0),
(25387, 0, 'config', 'config_commission', 0x35, 0),
(25386, 0, 'config', 'config_affiliate_id', 0x34, 0),
(25385, 0, 'config', 'config_checkout_id', 0x35, 0),
(25381, 0, 'config', 'config_customer_price', 0x30, 0),
(25384, 0, 'config', 'config_account_id', 0x33, 0),
(25383, 0, 'config', 'config_guest_checkout', 0x31, 0),
(25438, 0, 'special', 'special_module', 0x613a323a7b693a303b613a373a7b733a353a226c696d6974223b733a313a2235223b733a31313a22696d6167655f7769647468223b733a333a22313535223b733a31323a22696d6167655f686569676874223b733a333a22313330223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31343a22636f6e74656e745f626f74746f6d223b733a363a22737461747573223b733a313a2231223b733a31303a22736f72745f6f72646572223b733a303a22223b7d693a313b613a373a7b733a353a226c696d6974223b733a313a2235223b733a31313a22696d6167655f7769647468223b733a323a223830223b733a31323a22696d6167655f686569676874223b733a323a223830223b733a393a226c61796f75745f6964223b733a313a2231223b733a383a22706f736974696f6e223b733a31313a22636f6e74656e745f746f70223b733a363a22737461747573223b733a313a2230223b733a31303a22736f72745f6f72646572223b733a303a22223b7d7d, 1),
(25382, 0, 'config', 'config_customer_approval', 0x30, 0),
(25380, 0, 'config', 'config_customer_group_id', 0x38, 0),
(25378, 0, 'config', 'config_tax_customer', 0x7368697070696e67, 0),
(25379, 0, 'config', 'config_invoice_prefix', 0x494e562d323031312d3030, 0),
(25377, 0, 'config', 'config_tax_default', 0x7368697070696e67, 0),
(25374, 0, 'config', 'config_catalog_limit', 0x3135, 0),
(25376, 0, 'config', 'config_tax', 0x31, 0),
(25375, 0, 'config', 'config_admin_limit', 0x3230, 0),
(25373, 0, 'config', 'config_weight_class_id', 0x31, 0),
(25372, 0, 'config', 'config_length_class_id', 0x31, 0),
(25371, 0, 'config', 'config_currency_auto', 0x31, 0),
(25370, 0, 'config', 'config_currency', 0x766e64, 0),
(25369, 0, 'config', 'config_admin_language', 0x656e, 0),
(25368, 0, 'config', 'config_language', 0x7669, 0),
(25366, 0, 'config', 'config_country_id', 0x323330, 0),
(25367, 0, 'config', 'config_zone_id', 0x33373736, 0),
(25365, 0, 'config', 'config_layout_id', 0x34, 0),
(25364, 0, 'config', 'config_template', 0x64656661756c74, 0),
(25363, 0, 'config', 'config_meta_description', 0x4d792053746f7265, 0),
(25362, 0, 'config', 'config_title', 0x3138306275792e766e, 0),
(25361, 0, 'config', 'config_fax', '', 0),
(25360, 0, 'config', 'config_telephone', 0x313233343536373839, 0),
(25359, 0, 'config', 'config_email', 0x7472756e676e677579656e7468616e68373040676d61696c2e636f6d, 0),
(25358, 0, 'config', 'config_address', 0x416464726573732031, 0),
(25357, 0, 'config', 'config_owner', 0x596f7572204e616d65, 0),
(25356, 0, 'config', 'config_name', 0x596f75722053746f7265, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stock_status`
--

CREATE TABLE IF NOT EXISTS `stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=9 ;

--
-- Dumping data for table `stock_status`
--

INSERT INTO `stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2 - 3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2 - 3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE IF NOT EXISTS `store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  `url` varchar(255) COLLATE utf8_bin NOT NULL,
  `ssl` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `store`
--


-- --------------------------------------------------------

--
-- Table structure for table `tax_class`
--

CREATE TABLE IF NOT EXISTS `tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tax_class`
--

INSERT INTO `tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed Stuff', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate`
--

CREATE TABLE IF NOT EXISTS `tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) COLLATE utf8_bin NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) COLLATE utf8_bin NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=88 ;

--
-- Dumping data for table `tax_rate`
--

INSERT INTO `tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (17.5%)', 17.5000, 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', 2.0000, 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate_to_customer_group`
--

CREATE TABLE IF NOT EXISTS `tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tax_rate_to_customer_group`
--

INSERT INTO `tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 6),
(86, 8),
(87, 6),
(87, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tax_rule`
--

CREATE TABLE IF NOT EXISTS `tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) COLLATE utf8_bin NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=129 ;

--
-- Dumping data for table `tax_rule`
--

INSERT INTO `tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `url_alias`
--

CREATE TABLE IF NOT EXISTS `url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) COLLATE utf8_bin NOT NULL,
  `keyword` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`url_alias_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=776 ;

--
-- Dumping data for table `url_alias`
--

INSERT INTO `url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(704, 'product_id=48', 'ipod_classic'),
(773, 'category_id=20', 'desktops'),
(503, 'category_id=26', 'pc'),
(505, 'category_id=27', 'mac'),
(730, 'manufacturer_id=8', 'apple'),
(774, 'information_id=4', 'about_us'),
(775, 'product_id=42', 'test'),
(767, 'category_id=34', 'mp3-players'),
(536, 'category_id=36', 'Normal');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `password` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `firstname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lastname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `email` varchar(96) COLLATE utf8_bin NOT NULL DEFAULT '',
  `code` varchar(32) COLLATE utf8_bin NOT NULL,
  `ip` varchar(15) COLLATE utf8_bin NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_group_id`, `username`, `password`, `firstname`, `lastname`, `email`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '', '', 'trungnguyenthanh70@gmail.com', '', '127.0.0.1', 1, '2012-01-08 15:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE IF NOT EXISTS `user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  `permission` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Top Administrator', 0x613a323a7b733a363a22616363657373223b613a3132303a7b693a303b733a31373a22636174616c6f672f617474726962757465223b693a313b733a32333a22636174616c6f672f6174747269627574655f67726f7570223b693a323b733a31363a22636174616c6f672f63617465676f7279223b693a333b733a31363a22636174616c6f672f646f776e6c6f6164223b693a343b733a31393a22636174616c6f672f696e666f726d6174696f6e223b693a353b733a32303a22636174616c6f672f6d616e756661637475726572223b693a363b733a31343a22636174616c6f672f6f7074696f6e223b693a373b733a31353a22636174616c6f672f70726f64756374223b693a383b733a31343a22636174616c6f672f726576696577223b693a393b733a31383a22636f6d6d6f6e2f66696c656d616e61676572223b693a31303b733a31333a2264657369676e2f62616e6e6572223b693a31313b733a31333a2264657369676e2f6c61796f7574223b693a31323b733a31343a22657874656e73696f6e2f66656564223b693a31333b733a31363a22657874656e73696f6e2f6d6f64756c65223b693a31343b733a31373a22657874656e73696f6e2f7061796d656e74223b693a31353b733a31383a22657874656e73696f6e2f7368697070696e67223b693a31363b733a31353a22657874656e73696f6e2f746f74616c223b693a31373b733a31363a22666565642f676f6f676c655f62617365223b693a31383b733a31393a22666565642f676f6f676c655f736974656d6170223b693a31393b733a32303a226c6f63616c69736174696f6e2f636f756e747279223b693a32303b733a32313a226c6f63616c69736174696f6e2f63757272656e6379223b693a32313b733a32313a226c6f63616c69736174696f6e2f67656f5f7a6f6e65223b693a32323b733a32313a226c6f63616c69736174696f6e2f6c616e6775616765223b693a32333b733a32353a226c6f63616c69736174696f6e2f6c656e6774685f636c617373223b693a32343b733a32353a226c6f63616c69736174696f6e2f6f726465725f737461747573223b693a32353b733a32363a226c6f63616c69736174696f6e2f72657475726e5f616374696f6e223b693a32363b733a32363a226c6f63616c69736174696f6e2f72657475726e5f726561736f6e223b693a32373b733a32363a226c6f63616c69736174696f6e2f72657475726e5f737461747573223b693a32383b733a32353a226c6f63616c69736174696f6e2f73746f636b5f737461747573223b693a32393b733a32323a226c6f63616c69736174696f6e2f7461785f636c617373223b693a33303b733a32313a226c6f63616c69736174696f6e2f7461785f72617465223b693a33313b733a32353a226c6f63616c69736174696f6e2f7765696768745f636c617373223b693a33323b733a31373a226c6f63616c69736174696f6e2f7a6f6e65223b693a33333b733a31343a226d6f64756c652f6163636f756e74223b693a33343b733a31363a226d6f64756c652f616666696c69617465223b693a33353b733a31333a226d6f64756c652f62616e6e6572223b693a33363b733a31373a226d6f64756c652f6265737473656c6c6572223b693a33373b733a31353a226d6f64756c652f6361726f7573656c223b693a33383b733a31353a226d6f64756c652f63617465676f7279223b693a33393b733a31353a226d6f64756c652f6665617475726564223b693a34303b733a31383a226d6f64756c652f676f6f676c655f74616c6b223b693a34313b733a31383a226d6f64756c652f696e666f726d6174696f6e223b693a34323b733a31333a226d6f64756c652f6c6174657374223b693a34333b733a31363a226d6f64756c652f736c69646573686f77223b693a34343b733a31343a226d6f64756c652f7370656369616c223b693a34353b733a31323a226d6f64756c652f73746f7265223b693a34363b733a31343a226d6f64756c652f77656c636f6d65223b693a34373b733a31363a227061796d656e742f616c657274706179223b693a34383b733a32343a227061796d656e742f617574686f72697a656e65745f61696d223b693a34393b733a32313a227061796d656e742f62616e6b5f7472616e73666572223b693a35303b733a31343a227061796d656e742f636865717565223b693a35313b733a31313a227061796d656e742f636f64223b693a35323b733a32313a227061796d656e742f667265655f636865636b6f7574223b693a35333b733a31343a227061796d656e742f6c6971706179223b693a35343b733a32303a227061796d656e742f6d6f6e6579626f6f6b657273223b693a35353b733a31343a227061796d656e742f6e6f63686578223b693a35363b733a31353a227061796d656e742f7061796d617465223b693a35373b733a31363a227061796d656e742f706179706f696e74223b693a35383b733a32363a227061796d656e742f70657270657475616c5f7061796d656e7473223b693a35393b733a31343a227061796d656e742f70705f70726f223b693a36303b733a31373a227061796d656e742f70705f70726f5f756b223b693a36313b733a31393a227061796d656e742f70705f7374616e64617264223b693a36323b733a31353a227061796d656e742f73616765706179223b693a36333b733a32323a227061796d656e742f736167657061795f646972656374223b693a36343b733a31383a227061796d656e742f736167657061795f7573223b693a36353b733a31393a227061796d656e742f74776f636865636b6f7574223b693a36363b733a32383a227061796d656e742f7765625f7061796d656e745f736f667477617265223b693a36373b733a31363a227061796d656e742f776f726c64706179223b693a36383b733a32373a227265706f72742f616666696c696174655f636f6d6d697373696f6e223b693a36393b733a32323a227265706f72742f637573746f6d65725f637265646974223b693a37303b733a32313a227265706f72742f637573746f6d65725f6f72646572223b693a37313b733a32323a227265706f72742f637573746f6d65725f726577617264223b693a37323b733a32343a227265706f72742f70726f647563745f707572636861736564223b693a37333b733a32313a227265706f72742f70726f647563745f766965776564223b693a37343b733a31383a227265706f72742f73616c655f636f75706f6e223b693a37353b733a31373a227265706f72742f73616c655f6f72646572223b693a37363b733a31383a227265706f72742f73616c655f72657475726e223b693a37373b733a32303a227265706f72742f73616c655f7368697070696e67223b693a37383b733a31353a227265706f72742f73616c655f746178223b693a37393b733a31343a2273616c652f616666696c69617465223b693a38303b733a31323a2273616c652f636f6e74616374223b693a38313b733a31313a2273616c652f636f75706f6e223b693a38323b733a31333a2273616c652f637573746f6d6572223b693a38333b733a31393a2273616c652f637573746f6d65725f67726f7570223b693a38343b733a31303a2273616c652f6f72646572223b693a38353b733a31313a2273616c652f72657475726e223b693a38363b733a31323a2273616c652f766f7563686572223b693a38373b733a31383a2273616c652f766f75636865725f7468656d65223b693a38383b733a31353a2273657474696e672f73657474696e67223b693a38393b733a31333a2273657474696e672f73746f7265223b693a39303b733a31373a227368697070696e672f636974796c696e6b223b693a39313b733a31333a227368697070696e672f666c6174223b693a39323b733a31333a227368697070696e672f66726565223b693a39333b733a31333a227368697070696e672f6974656d223b693a39343b733a32333a227368697070696e672f70617263656c666f7263655f3438223b693a39353b733a31353a227368697070696e672f7069636b7570223b693a39363b733a31393a227368697070696e672f726f79616c5f6d61696c223b693a39373b733a31323a227368697070696e672f757073223b693a39383b733a31333a227368697070696e672f75737073223b693a39393b733a31353a227368697070696e672f776569676874223b693a3130303b733a31313a22746f6f6c2f6261636b7570223b693a3130313b733a31343a22746f6f6c2f6572726f725f6c6f67223b693a3130323b733a31323a22746f74616c2f636f75706f6e223b693a3130333b733a31323a22746f74616c2f637265646974223b693a3130343b733a31343a22746f74616c2f68616e646c696e67223b693a3130353b733a31393a22746f74616c2f6c6f775f6f726465725f666565223b693a3130363b733a31323a22746f74616c2f726577617264223b693a3130373b733a31343a22746f74616c2f7368697070696e67223b693a3130383b733a31353a22746f74616c2f7375625f746f74616c223b693a3130393b733a393a22746f74616c2f746178223b693a3131303b733a31313a22746f74616c2f746f74616c223b693a3131313b733a31333a22746f74616c2f766f7563686572223b693a3131323b733a393a22757365722f75736572223b693a3131333b733a32303a22757365722f757365725f7065726d697373696f6e223b693a3131343b733a31353a227368697070696e672f7069636b7570223b693a3131353b733a31343a226d6f64756c652f7370656369616c223b693a3131363b733a31333a226d6f64756c652f6c6174657374223b693a3131373b733a31373a226d6f64756c652f6265737473656c6c6572223b693a3131383b733a32303a226d6f64756c652f63723268746d6c6d6f64756c65223b693a3131393b733a31323a226d6f64756c652f73746f7265223b7d733a363a226d6f64696679223b613a3132303a7b693a303b733a31373a22636174616c6f672f617474726962757465223b693a313b733a32333a22636174616c6f672f6174747269627574655f67726f7570223b693a323b733a31363a22636174616c6f672f63617465676f7279223b693a333b733a31363a22636174616c6f672f646f776e6c6f6164223b693a343b733a31393a22636174616c6f672f696e666f726d6174696f6e223b693a353b733a32303a22636174616c6f672f6d616e756661637475726572223b693a363b733a31343a22636174616c6f672f6f7074696f6e223b693a373b733a31353a22636174616c6f672f70726f64756374223b693a383b733a31343a22636174616c6f672f726576696577223b693a393b733a31383a22636f6d6d6f6e2f66696c656d616e61676572223b693a31303b733a31333a2264657369676e2f62616e6e6572223b693a31313b733a31333a2264657369676e2f6c61796f7574223b693a31323b733a31343a22657874656e73696f6e2f66656564223b693a31333b733a31363a22657874656e73696f6e2f6d6f64756c65223b693a31343b733a31373a22657874656e73696f6e2f7061796d656e74223b693a31353b733a31383a22657874656e73696f6e2f7368697070696e67223b693a31363b733a31353a22657874656e73696f6e2f746f74616c223b693a31373b733a31363a22666565642f676f6f676c655f62617365223b693a31383b733a31393a22666565642f676f6f676c655f736974656d6170223b693a31393b733a32303a226c6f63616c69736174696f6e2f636f756e747279223b693a32303b733a32313a226c6f63616c69736174696f6e2f63757272656e6379223b693a32313b733a32313a226c6f63616c69736174696f6e2f67656f5f7a6f6e65223b693a32323b733a32313a226c6f63616c69736174696f6e2f6c616e6775616765223b693a32333b733a32353a226c6f63616c69736174696f6e2f6c656e6774685f636c617373223b693a32343b733a32353a226c6f63616c69736174696f6e2f6f726465725f737461747573223b693a32353b733a32363a226c6f63616c69736174696f6e2f72657475726e5f616374696f6e223b693a32363b733a32363a226c6f63616c69736174696f6e2f72657475726e5f726561736f6e223b693a32373b733a32363a226c6f63616c69736174696f6e2f72657475726e5f737461747573223b693a32383b733a32353a226c6f63616c69736174696f6e2f73746f636b5f737461747573223b693a32393b733a32323a226c6f63616c69736174696f6e2f7461785f636c617373223b693a33303b733a32313a226c6f63616c69736174696f6e2f7461785f72617465223b693a33313b733a32353a226c6f63616c69736174696f6e2f7765696768745f636c617373223b693a33323b733a31373a226c6f63616c69736174696f6e2f7a6f6e65223b693a33333b733a31343a226d6f64756c652f6163636f756e74223b693a33343b733a31363a226d6f64756c652f616666696c69617465223b693a33353b733a31333a226d6f64756c652f62616e6e6572223b693a33363b733a31373a226d6f64756c652f6265737473656c6c6572223b693a33373b733a31353a226d6f64756c652f6361726f7573656c223b693a33383b733a31353a226d6f64756c652f63617465676f7279223b693a33393b733a31353a226d6f64756c652f6665617475726564223b693a34303b733a31383a226d6f64756c652f676f6f676c655f74616c6b223b693a34313b733a31383a226d6f64756c652f696e666f726d6174696f6e223b693a34323b733a31333a226d6f64756c652f6c6174657374223b693a34333b733a31363a226d6f64756c652f736c69646573686f77223b693a34343b733a31343a226d6f64756c652f7370656369616c223b693a34353b733a31323a226d6f64756c652f73746f7265223b693a34363b733a31343a226d6f64756c652f77656c636f6d65223b693a34373b733a31363a227061796d656e742f616c657274706179223b693a34383b733a32343a227061796d656e742f617574686f72697a656e65745f61696d223b693a34393b733a32313a227061796d656e742f62616e6b5f7472616e73666572223b693a35303b733a31343a227061796d656e742f636865717565223b693a35313b733a31313a227061796d656e742f636f64223b693a35323b733a32313a227061796d656e742f667265655f636865636b6f7574223b693a35333b733a31343a227061796d656e742f6c6971706179223b693a35343b733a32303a227061796d656e742f6d6f6e6579626f6f6b657273223b693a35353b733a31343a227061796d656e742f6e6f63686578223b693a35363b733a31353a227061796d656e742f7061796d617465223b693a35373b733a31363a227061796d656e742f706179706f696e74223b693a35383b733a32363a227061796d656e742f70657270657475616c5f7061796d656e7473223b693a35393b733a31343a227061796d656e742f70705f70726f223b693a36303b733a31373a227061796d656e742f70705f70726f5f756b223b693a36313b733a31393a227061796d656e742f70705f7374616e64617264223b693a36323b733a31353a227061796d656e742f73616765706179223b693a36333b733a32323a227061796d656e742f736167657061795f646972656374223b693a36343b733a31383a227061796d656e742f736167657061795f7573223b693a36353b733a31393a227061796d656e742f74776f636865636b6f7574223b693a36363b733a32383a227061796d656e742f7765625f7061796d656e745f736f667477617265223b693a36373b733a31363a227061796d656e742f776f726c64706179223b693a36383b733a32373a227265706f72742f616666696c696174655f636f6d6d697373696f6e223b693a36393b733a32323a227265706f72742f637573746f6d65725f637265646974223b693a37303b733a32313a227265706f72742f637573746f6d65725f6f72646572223b693a37313b733a32323a227265706f72742f637573746f6d65725f726577617264223b693a37323b733a32343a227265706f72742f70726f647563745f707572636861736564223b693a37333b733a32313a227265706f72742f70726f647563745f766965776564223b693a37343b733a31383a227265706f72742f73616c655f636f75706f6e223b693a37353b733a31373a227265706f72742f73616c655f6f72646572223b693a37363b733a31383a227265706f72742f73616c655f72657475726e223b693a37373b733a32303a227265706f72742f73616c655f7368697070696e67223b693a37383b733a31353a227265706f72742f73616c655f746178223b693a37393b733a31343a2273616c652f616666696c69617465223b693a38303b733a31323a2273616c652f636f6e74616374223b693a38313b733a31313a2273616c652f636f75706f6e223b693a38323b733a31333a2273616c652f637573746f6d6572223b693a38333b733a31393a2273616c652f637573746f6d65725f67726f7570223b693a38343b733a31303a2273616c652f6f72646572223b693a38353b733a31313a2273616c652f72657475726e223b693a38363b733a31323a2273616c652f766f7563686572223b693a38373b733a31383a2273616c652f766f75636865725f7468656d65223b693a38383b733a31353a2273657474696e672f73657474696e67223b693a38393b733a31333a2273657474696e672f73746f7265223b693a39303b733a31373a227368697070696e672f636974796c696e6b223b693a39313b733a31333a227368697070696e672f666c6174223b693a39323b733a31333a227368697070696e672f66726565223b693a39333b733a31333a227368697070696e672f6974656d223b693a39343b733a32333a227368697070696e672f70617263656c666f7263655f3438223b693a39353b733a31353a227368697070696e672f7069636b7570223b693a39363b733a31393a227368697070696e672f726f79616c5f6d61696c223b693a39373b733a31323a227368697070696e672f757073223b693a39383b733a31333a227368697070696e672f75737073223b693a39393b733a31353a227368697070696e672f776569676874223b693a3130303b733a31313a22746f6f6c2f6261636b7570223b693a3130313b733a31343a22746f6f6c2f6572726f725f6c6f67223b693a3130323b733a31323a22746f74616c2f636f75706f6e223b693a3130333b733a31323a22746f74616c2f637265646974223b693a3130343b733a31343a22746f74616c2f68616e646c696e67223b693a3130353b733a31393a22746f74616c2f6c6f775f6f726465725f666565223b693a3130363b733a31323a22746f74616c2f726577617264223b693a3130373b733a31343a22746f74616c2f7368697070696e67223b693a3130383b733a31353a22746f74616c2f7375625f746f74616c223b693a3130393b733a393a22746f74616c2f746178223b693a3131303b733a31313a22746f74616c2f746f74616c223b693a3131313b733a31333a22746f74616c2f766f7563686572223b693a3131323b733a393a22757365722f75736572223b693a3131333b733a32303a22757365722f757365725f7065726d697373696f6e223b693a3131343b733a31353a227368697070696e672f7069636b7570223b693a3131353b733a31343a226d6f64756c652f7370656369616c223b693a3131363b733a31333a226d6f64756c652f6c6174657374223b693a3131373b733a31373a226d6f64756c652f6265737473656c6c6572223b693a3131383b733a32303a226d6f64756c652f63723268746d6c6d6f64756c65223b693a3131393b733a31323a226d6f64756c652f73746f7265223b7d7d),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE IF NOT EXISTS `voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8_bin NOT NULL,
  `from_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `from_email` varchar(96) COLLATE utf8_bin NOT NULL,
  `to_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `to_email` varchar(96) COLLATE utf8_bin NOT NULL,
  `message` text COLLATE utf8_bin NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `voucher`
--


-- --------------------------------------------------------

--
-- Table structure for table `voucher_history`
--

CREATE TABLE IF NOT EXISTS `voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `voucher_history`
--


-- --------------------------------------------------------

--
-- Table structure for table `voucher_theme`
--

CREATE TABLE IF NOT EXISTS `voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=9 ;

--
-- Dumping data for table `voucher_theme`
--

INSERT INTO `voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'data/canon_eos_5d_2.jpg'),
(7, 'data/gift-voucher-birthday.jpg'),
(6, 'data/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `voucher_theme_description`
--

CREATE TABLE IF NOT EXISTS `voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `voucher_theme_description`
--

INSERT INTO `voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `weight_class`
--

CREATE TABLE IF NOT EXISTS `weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Dumping data for table `weight_class`
--

INSERT INTO `weight_class` (`weight_class_id`, `value`) VALUES
(1, 1.00000000),
(2, 1000.00000000),
(5, 2.20460000),
(6, 35.27400000);

-- --------------------------------------------------------

--
-- Table structure for table `weight_class_description`
--

CREATE TABLE IF NOT EXISTS `weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) COLLATE utf8_bin NOT NULL,
  `unit` varchar(4) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Dumping data for table `weight_class_description`
--

INSERT INTO `weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

CREATE TABLE IF NOT EXISTS `zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` varchar(128) COLLATE utf8_bin NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3968 ;

--
-- Dumping data for table `zone`
--

INSERT INTO `zone` (`zone_id`, `country_id`, `code`, `name`, `status`) VALUES
(1, 1, 'BDS', 'Badakhshan', 1),
(2, 1, 'BDG', 'Badghis', 1),
(3, 1, 'BGL', 'Baghlan', 1),
(4, 1, 'BAL', 'Balkh', 1),
(5, 1, 'BAM', 'Bamian', 1),
(6, 1, 'FRA', 'Farah', 1),
(7, 1, 'FYB', 'Faryab', 1),
(8, 1, 'GHA', 'Ghazni', 1),
(9, 1, 'GHO', 'Ghowr', 1),
(10, 1, 'HEL', 'Helmand', 1),
(11, 1, 'HER', 'Herat', 1),
(12, 1, 'JOW', 'Jowzjan', 1),
(13, 1, 'KAB', 'Kabul', 1),
(14, 1, 'KAN', 'Kandahar', 1),
(15, 1, 'KAP', 'Kapisa', 1),
(16, 1, 'KHO', 'Khost', 1),
(17, 1, 'KNR', 'Konar', 1),
(18, 1, 'KDZ', 'Kondoz', 1),
(19, 1, 'LAG', 'Laghman', 1),
(20, 1, 'LOW', 'Lowgar', 1),
(21, 1, 'NAN', 'Nangrahar', 1),
(22, 1, 'NIM', 'Nimruz', 1),
(23, 1, 'NUR', 'Nurestan', 1),
(24, 1, 'ORU', 'Oruzgan', 1),
(25, 1, 'PIA', 'Paktia', 1),
(26, 1, 'PKA', 'Paktika', 1),
(27, 1, 'PAR', 'Parwan', 1),
(28, 1, 'SAM', 'Samangan', 1),
(29, 1, 'SAR', 'Sar-e Pol', 1),
(30, 1, 'TAK', 'Takhar', 1),
(31, 1, 'WAR', 'Wardak', 1),
(32, 1, 'ZAB', 'Zabol', 1),
(33, 2, 'BR', 'Berat', 1),
(34, 2, 'BU', 'Bulqize', 1),
(35, 2, 'DL', 'Delvine', 1),
(36, 2, 'DV', 'Devoll', 1),
(37, 2, 'DI', 'Diber', 1),
(38, 2, 'DR', 'Durres', 1),
(39, 2, 'EL', 'Elbasan', 1),
(40, 2, 'ER', 'Kolonje', 1),
(41, 2, 'FR', 'Fier', 1),
(42, 2, 'GJ', 'Gjirokaster', 1),
(43, 2, 'GR', 'Gramsh', 1),
(44, 2, 'HA', 'Has', 1),
(45, 2, 'KA', 'Kavaje', 1),
(46, 2, 'KB', 'Kurbin', 1),
(47, 2, 'KC', 'Kucove', 1),
(48, 2, 'KO', 'Korce', 1),
(49, 2, 'KR', 'Kruje', 1),
(50, 2, 'KU', 'Kukes', 1),
(51, 2, 'LB', 'Librazhd', 1),
(52, 2, 'LE', 'Lezhe', 1),
(53, 2, 'LU', 'Lushnje', 1),
(54, 2, 'MM', 'Malesi e Madhe', 1),
(55, 2, 'MK', 'Mallakaster', 1),
(56, 2, 'MT', 'Mat', 1),
(57, 2, 'MR', 'Mirdite', 1),
(58, 2, 'PQ', 'Peqin', 1),
(59, 2, 'PR', 'Permet', 1),
(60, 2, 'PG', 'Pogradec', 1),
(61, 2, 'PU', 'Puke', 1),
(62, 2, 'SH', 'Shkoder', 1),
(63, 2, 'SK', 'Skrapar', 1),
(64, 2, 'SR', 'Sarande', 1),
(65, 2, 'TE', 'Tepelene', 1),
(66, 2, 'TP', 'Tropoje', 1),
(67, 2, 'TR', 'Tirane', 1),
(68, 2, 'VL', 'Vlore', 1),
(69, 3, 'ADR', 'Adrar', 1),
(70, 3, 'ADE', 'Ain Defla', 1),
(71, 3, 'ATE', 'Ain Temouchent', 1),
(72, 3, 'ALG', 'Alger', 1),
(73, 3, 'ANN', 'Annaba', 1),
(74, 3, 'BAT', 'Batna', 1),
(75, 3, 'BEC', 'Bechar', 1),
(76, 3, 'BEJ', 'Bejaia', 1),
(77, 3, 'BIS', 'Biskra', 1),
(78, 3, 'BLI', 'Blida', 1),
(79, 3, 'BBA', 'Bordj Bou Arreridj', 1),
(80, 3, 'BOA', 'Bouira', 1),
(81, 3, 'BMD', 'Boumerdes', 1),
(82, 3, 'CHL', 'Chlef', 1),
(83, 3, 'CON', 'Constantine', 1),
(84, 3, 'DJE', 'Djelfa', 1),
(85, 3, 'EBA', 'El Bayadh', 1),
(86, 3, 'EOU', 'El Oued', 1),
(87, 3, 'ETA', 'El Tarf', 1),
(88, 3, 'GHA', 'Ghardaia', 1),
(89, 3, 'GUE', 'Guelma', 1),
(90, 3, 'ILL', 'Illizi', 1),
(91, 3, 'JIJ', 'Jijel', 1),
(92, 3, 'KHE', 'Khenchela', 1),
(93, 3, 'LAG', 'Laghouat', 1),
(94, 3, 'MUA', 'Muaskar', 1),
(95, 3, 'MED', 'Medea', 1),
(96, 3, 'MIL', 'Mila', 1),
(97, 3, 'MOS', 'Mostaganem', 1),
(98, 3, 'MSI', 'M''Sila', 1),
(99, 3, 'NAA', 'Naama', 1),
(100, 3, 'ORA', 'Oran', 1),
(101, 3, 'OUA', 'Ouargla', 1),
(102, 3, 'OEB', 'Oum el-Bouaghi', 1),
(103, 3, 'REL', 'Relizane', 1),
(104, 3, 'SAI', 'Saida', 1),
(105, 3, 'SET', 'Setif', 1),
(106, 3, 'SBA', 'Sidi Bel Abbes', 1),
(107, 3, 'SKI', 'Skikda', 1),
(108, 3, 'SAH', 'Souk Ahras', 1),
(109, 3, 'TAM', 'Tamanghasset', 1),
(110, 3, 'TEB', 'Tebessa', 1),
(111, 3, 'TIA', 'Tiaret', 1),
(112, 3, 'TIN', 'Tindouf', 1),
(113, 3, 'TIP', 'Tipaza', 1),
(114, 3, 'TIS', 'Tissemsilt', 1),
(115, 3, 'TOU', 'Tizi Ouzou', 1),
(116, 3, 'TLE', 'Tlemcen', 1),
(117, 4, 'E', 'Eastern', 1),
(118, 4, 'M', 'Manu''a', 1),
(119, 4, 'R', 'Rose Island', 1),
(120, 4, 'S', 'Swains Island', 1),
(121, 4, 'W', 'Western', 1),
(122, 5, 'ALV', 'Andorra la Vella', 1),
(123, 5, 'CAN', 'Canillo', 1),
(124, 5, 'ENC', 'Encamp', 1),
(125, 5, 'ESE', 'Escaldes-Engordany', 1),
(126, 5, 'LMA', 'La Massana', 1),
(127, 5, 'ORD', 'Ordino', 1),
(128, 5, 'SJL', 'Sant Julia de Loria', 1),
(129, 6, 'BGO', 'Bengo', 1),
(130, 6, 'BGU', 'Benguela', 1),
(131, 6, 'BIE', 'Bie', 1),
(132, 6, 'CAB', 'Cabinda', 1),
(133, 6, 'CCU', 'Cuando-Cubango', 1),
(134, 6, 'CNO', 'Cuanza Norte', 1),
(135, 6, 'CUS', 'Cuanza Sul', 1),
(136, 6, 'CNN', 'Cunene', 1),
(137, 6, 'HUA', 'Huambo', 1),
(138, 6, 'HUI', 'Huila', 1),
(139, 6, 'LUA', 'Luanda', 1),
(140, 6, 'LNO', 'Lunda Norte', 1),
(141, 6, 'LSU', 'Lunda Sul', 1),
(142, 6, 'MAL', 'Malange', 1),
(143, 6, 'MOX', 'Moxico', 1),
(144, 6, 'NAM', 'Namibe', 1),
(145, 6, 'UIG', 'Uige', 1),
(146, 6, 'ZAI', 'Zaire', 1),
(147, 9, 'ASG', 'Saint George', 1),
(148, 9, 'ASJ', 'Saint John', 1),
(149, 9, 'ASM', 'Saint Mary', 1),
(150, 9, 'ASL', 'Saint Paul', 1),
(151, 9, 'ASR', 'Saint Peter', 1),
(152, 9, 'ASH', 'Saint Philip', 1),
(153, 9, 'BAR', 'Barbuda', 1),
(154, 9, 'RED', 'Redonda', 1),
(155, 10, 'AN', 'Antartida e Islas del Atlantico', 1),
(156, 10, 'BA', 'Buenos Aires', 1),
(157, 10, 'CA', 'Catamarca', 1),
(158, 10, 'CH', 'Chaco', 1),
(159, 10, 'CU', 'Chubut', 1),
(160, 10, 'CO', 'Cordoba', 1),
(161, 10, 'CR', 'Corrientes', 1),
(162, 10, 'DF', 'Distrito Federal', 1),
(163, 10, 'ER', 'Entre Rios', 1),
(164, 10, 'FO', 'Formosa', 1),
(165, 10, 'JU', 'Jujuy', 1),
(166, 10, 'LP', 'La Pampa', 1),
(167, 10, 'LR', 'La Rioja', 1),
(168, 10, 'ME', 'Mendoza', 1),
(169, 10, 'MI', 'Misiones', 1),
(170, 10, 'NE', 'Neuquen', 1),
(171, 10, 'RN', 'Rio Negro', 1),
(172, 10, 'SA', 'Salta', 1),
(173, 10, 'SJ', 'San Juan', 1),
(174, 10, 'SL', 'San Luis', 1),
(175, 10, 'SC', 'Santa Cruz', 1),
(176, 10, 'SF', 'Santa Fe', 1),
(177, 10, 'SD', 'Santiago del Estero', 1),
(178, 10, 'TF', 'Tierra del Fuego', 1),
(179, 10, 'TU', 'Tucuman', 1),
(180, 11, 'AGT', 'Aragatsotn', 1),
(181, 11, 'ARR', 'Ararat', 1),
(182, 11, 'ARM', 'Armavir', 1),
(183, 11, 'GEG', 'Geghark''unik''', 1),
(184, 11, 'KOT', 'Kotayk''', 1),
(185, 11, 'LOR', 'Lorri', 1),
(186, 11, 'SHI', 'Shirak', 1),
(187, 11, 'SYU', 'Syunik''', 1),
(188, 11, 'TAV', 'Tavush', 1),
(189, 11, 'VAY', 'Vayots'' Dzor', 1),
(190, 11, 'YER', 'Yerevan', 1),
(191, 13, 'ACT', 'Australian Capital Territory', 1),
(192, 13, 'NSW', 'New South Wales', 1),
(193, 13, 'NT', 'Northern Territory', 1),
(194, 13, 'QLD', 'Queensland', 1),
(195, 13, 'SA', 'South Australia', 1),
(196, 13, 'TAS', 'Tasmania', 1),
(197, 13, 'VIC', 'Victoria', 1),
(198, 13, 'WA', 'Western Australia', 1),
(199, 14, 'BUR', 'Burgenland', 1),
(200, 14, 'KAR', 'Kärnten', 1),
(201, 14, 'NOS', 'Nieder&ouml;sterreich', 1),
(202, 14, 'OOS', 'Ober&ouml;sterreich', 1),
(203, 14, 'SAL', 'Salzburg', 1),
(204, 14, 'STE', 'Steiermark', 1),
(205, 14, 'TIR', 'Tirol', 1),
(206, 14, 'VOR', 'Vorarlberg', 1),
(207, 14, 'WIE', 'Wien', 1),
(208, 15, 'AB', 'Ali Bayramli', 1),
(209, 15, 'ABS', 'Abseron', 1),
(210, 15, 'AGC', 'AgcabAdi', 1),
(211, 15, 'AGM', 'Agdam', 1),
(212, 15, 'AGS', 'Agdas', 1),
(213, 15, 'AGA', 'Agstafa', 1),
(214, 15, 'AGU', 'Agsu', 1),
(215, 15, 'AST', 'Astara', 1),
(216, 15, 'BA', 'Baki', 1),
(217, 15, 'BAB', 'BabAk', 1),
(218, 15, 'BAL', 'BalakAn', 1),
(219, 15, 'BAR', 'BArdA', 1),
(220, 15, 'BEY', 'Beylaqan', 1),
(221, 15, 'BIL', 'Bilasuvar', 1),
(222, 15, 'CAB', 'Cabrayil', 1),
(223, 15, 'CAL', 'Calilabab', 1),
(224, 15, 'CUL', 'Culfa', 1),
(225, 15, 'DAS', 'Daskasan', 1),
(226, 15, 'DAV', 'Davaci', 1),
(227, 15, 'FUZ', 'Fuzuli', 1),
(228, 15, 'GA', 'Ganca', 1),
(229, 15, 'GAD', 'Gadabay', 1),
(230, 15, 'GOR', 'Goranboy', 1),
(231, 15, 'GOY', 'Goycay', 1),
(232, 15, 'HAC', 'Haciqabul', 1),
(233, 15, 'IMI', 'Imisli', 1),
(234, 15, 'ISM', 'Ismayilli', 1),
(235, 15, 'KAL', 'Kalbacar', 1),
(236, 15, 'KUR', 'Kurdamir', 1),
(237, 15, 'LA', 'Lankaran', 1),
(238, 15, 'LAC', 'Lacin', 1),
(239, 15, 'LAN', 'Lankaran', 1),
(240, 15, 'LER', 'Lerik', 1),
(241, 15, 'MAS', 'Masalli', 1),
(242, 15, 'MI', 'Mingacevir', 1),
(243, 15, 'NA', 'Naftalan', 1),
(244, 15, 'NEF', 'Neftcala', 1),
(245, 15, 'OGU', 'Oguz', 1),
(246, 15, 'ORD', 'Ordubad', 1),
(247, 15, 'QAB', 'Qabala', 1),
(248, 15, 'QAX', 'Qax', 1),
(249, 15, 'QAZ', 'Qazax', 1),
(250, 15, 'QOB', 'Qobustan', 1),
(251, 15, 'QBA', 'Quba', 1),
(252, 15, 'QBI', 'Qubadli', 1),
(253, 15, 'QUS', 'Qusar', 1),
(254, 15, 'SA', 'Saki', 1),
(255, 15, 'SAT', 'Saatli', 1),
(256, 15, 'SAB', 'Sabirabad', 1),
(257, 15, 'SAD', 'Sadarak', 1),
(258, 15, 'SAH', 'Sahbuz', 1),
(259, 15, 'SAK', 'Saki', 1),
(260, 15, 'SAL', 'Salyan', 1),
(261, 15, 'SM', 'Sumqayit', 1),
(262, 15, 'SMI', 'Samaxi', 1),
(263, 15, 'SKR', 'Samkir', 1),
(264, 15, 'SMX', 'Samux', 1),
(265, 15, 'SAR', 'Sarur', 1),
(266, 15, 'SIY', 'Siyazan', 1),
(267, 15, 'SS', 'Susa', 1),
(268, 15, 'SUS', 'Susa', 1),
(269, 15, 'TAR', 'Tartar', 1),
(270, 15, 'TOV', 'Tovuz', 1),
(271, 15, 'UCA', 'Ucar', 1),
(272, 15, 'XA', 'Xankandi', 1),
(273, 15, 'XAC', 'Xacmaz', 1),
(274, 15, 'XAN', 'Xanlar', 1),
(275, 15, 'XIZ', 'Xizi', 1),
(276, 15, 'XCI', 'Xocali', 1),
(277, 15, 'XVD', 'Xocavand', 1),
(278, 15, 'YAR', 'Yardimli', 1),
(279, 15, 'YEV', 'Yevlax', 1),
(280, 15, 'ZAN', 'Zangilan', 1),
(281, 15, 'ZAQ', 'Zaqatala', 1),
(282, 15, 'ZAR', 'Zardab', 1),
(283, 15, 'NX', 'Naxcivan', 1),
(284, 16, 'ACK', 'Acklins', 1),
(285, 16, 'BER', 'Berry Islands', 1),
(286, 16, 'BIM', 'Bimini', 1),
(287, 16, 'BLK', 'Black Point', 1),
(288, 16, 'CAT', 'Cat Island', 1),
(289, 16, 'CAB', 'Central Abaco', 1),
(290, 16, 'CAN', 'Central Andros', 1),
(291, 16, 'CEL', 'Central Eleuthera', 1),
(292, 16, 'FRE', 'City of Freeport', 1),
(293, 16, 'CRO', 'Crooked Island', 1),
(294, 16, 'EGB', 'East Grand Bahama', 1),
(295, 16, 'EXU', 'Exuma', 1),
(296, 16, 'GRD', 'Grand Cay', 1),
(297, 16, 'HAR', 'Harbour Island', 1),
(298, 16, 'HOP', 'Hope Town', 1),
(299, 16, 'INA', 'Inagua', 1),
(300, 16, 'LNG', 'Long Island', 1),
(301, 16, 'MAN', 'Mangrove Cay', 1),
(302, 16, 'MAY', 'Mayaguana', 1),
(303, 16, 'MOO', 'Moore''s Island', 1),
(304, 16, 'NAB', 'North Abaco', 1),
(305, 16, 'NAN', 'North Andros', 1),
(306, 16, 'NEL', 'North Eleuthera', 1),
(307, 16, 'RAG', 'Ragged Island', 1),
(308, 16, 'RUM', 'Rum Cay', 1),
(309, 16, 'SAL', 'San Salvador', 1),
(310, 16, 'SAB', 'South Abaco', 1),
(311, 16, 'SAN', 'South Andros', 1),
(312, 16, 'SEL', 'South Eleuthera', 1),
(313, 16, 'SWE', 'Spanish Wells', 1),
(314, 16, 'WGB', 'West Grand Bahama', 1),
(315, 17, 'CAP', 'Capital', 1),
(316, 17, 'CEN', 'Central', 1),
(317, 17, 'MUH', 'Muharraq', 1),
(318, 17, 'NOR', 'Northern', 1),
(319, 17, 'SOU', 'Southern', 1),
(320, 18, 'BAR', 'Barisal', 1),
(321, 18, 'CHI', 'Chittagong', 1),
(322, 18, 'DHA', 'Dhaka', 1),
(323, 18, 'KHU', 'Khulna', 1),
(324, 18, 'RAJ', 'Rajshahi', 1),
(325, 18, 'SYL', 'Sylhet', 1),
(326, 19, 'CC', 'Christ Church', 1),
(327, 19, 'AND', 'Saint Andrew', 1),
(328, 19, 'GEO', 'Saint George', 1),
(329, 19, 'JAM', 'Saint James', 1),
(330, 19, 'JOH', 'Saint John', 1),
(331, 19, 'JOS', 'Saint Joseph', 1),
(332, 19, 'LUC', 'Saint Lucy', 1),
(333, 19, 'MIC', 'Saint Michael', 1),
(334, 19, 'PET', 'Saint Peter', 1),
(335, 19, 'PHI', 'Saint Philip', 1),
(336, 19, 'THO', 'Saint Thomas', 1),
(337, 20, 'BR', 'Brestskaya (Brest)', 1),
(338, 20, 'HO', 'Homyel''skaya (Homyel'')', 1),
(339, 20, 'HM', 'Horad Minsk', 1),
(340, 20, 'HR', 'Hrodzyenskaya (Hrodna)', 1),
(341, 20, 'MA', 'Mahilyowskaya (Mahilyow)', 1),
(342, 20, 'MI', 'Minskaya', 1),
(343, 20, 'VI', 'Vitsyebskaya (Vitsyebsk)', 1),
(344, 21, 'VAN', 'Antwerpen', 1),
(345, 21, 'WBR', 'Brabant Wallon', 1),
(346, 21, 'WHT', 'Hainaut', 1),
(347, 21, 'WLG', 'Liege', 1),
(348, 21, 'VLI', 'Limburg', 1),
(349, 21, 'WLX', 'Luxembourg', 1),
(350, 21, 'WNA', 'Namur', 1),
(351, 21, 'VOV', 'Oost-Vlaanderen', 1),
(352, 21, 'VBR', 'Vlaams Brabant', 1),
(353, 21, 'VWV', 'West-Vlaanderen', 1),
(354, 22, 'BZ', 'Belize', 1),
(355, 22, 'CY', 'Cayo', 1),
(356, 22, 'CR', 'Corozal', 1),
(357, 22, 'OW', 'Orange Walk', 1),
(358, 22, 'SC', 'Stann Creek', 1),
(359, 22, 'TO', 'Toledo', 1),
(360, 23, 'AL', 'Alibori', 1),
(361, 23, 'AK', 'Atakora', 1),
(362, 23, 'AQ', 'Atlantique', 1),
(363, 23, 'BO', 'Borgou', 1),
(364, 23, 'CO', 'Collines', 1),
(365, 23, 'DO', 'Donga', 1),
(366, 23, 'KO', 'Kouffo', 1),
(367, 23, 'LI', 'Littoral', 1),
(368, 23, 'MO', 'Mono', 1),
(369, 23, 'OU', 'Oueme', 1),
(370, 23, 'PL', 'Plateau', 1),
(371, 23, 'ZO', 'Zou', 1),
(372, 24, 'DS', 'Devonshire', 1),
(373, 24, 'HC', 'Hamilton City', 1),
(374, 24, 'HA', 'Hamilton', 1),
(375, 24, 'PG', 'Paget', 1),
(376, 24, 'PB', 'Pembroke', 1),
(377, 24, 'GC', 'Saint George City', 1),
(378, 24, 'SG', 'Saint George''s', 1),
(379, 24, 'SA', 'Sandys', 1),
(380, 24, 'SM', 'Smith''s', 1),
(381, 24, 'SH', 'Southampton', 1),
(382, 24, 'WA', 'Warwick', 1),
(383, 25, 'BUM', 'Bumthang', 1),
(384, 25, 'CHU', 'Chukha', 1),
(385, 25, 'DAG', 'Dagana', 1),
(386, 25, 'GAS', 'Gasa', 1),
(387, 25, 'HAA', 'Haa', 1),
(388, 25, 'LHU', 'Lhuntse', 1),
(389, 25, 'MON', 'Mongar', 1),
(390, 25, 'PAR', 'Paro', 1),
(391, 25, 'PEM', 'Pemagatshel', 1),
(392, 25, 'PUN', 'Punakha', 1),
(393, 25, 'SJO', 'Samdrup Jongkhar', 1),
(394, 25, 'SAT', 'Samtse', 1),
(395, 25, 'SAR', 'Sarpang', 1),
(396, 25, 'THI', 'Thimphu', 1),
(397, 25, 'TRG', 'Trashigang', 1),
(398, 25, 'TRY', 'Trashiyangste', 1),
(399, 25, 'TRO', 'Trongsa', 1),
(400, 25, 'TSI', 'Tsirang', 1),
(401, 25, 'WPH', 'Wangdue Phodrang', 1),
(402, 25, 'ZHE', 'Zhemgang', 1),
(403, 26, 'BEN', 'Beni', 1),
(404, 26, 'CHU', 'Chuquisaca', 1),
(405, 26, 'COC', 'Cochabamba', 1),
(406, 26, 'LPZ', 'La Paz', 1),
(407, 26, 'ORU', 'Oruro', 1),
(408, 26, 'PAN', 'Pando', 1),
(409, 26, 'POT', 'Potosi', 1),
(410, 26, 'SCZ', 'Santa Cruz', 1),
(411, 26, 'TAR', 'Tarija', 1),
(412, 27, 'BRO', 'Brcko district', 1),
(413, 27, 'FUS', 'Unsko-Sanski Kanton', 1),
(414, 27, 'FPO', 'Posavski Kanton', 1),
(415, 27, 'FTU', 'Tuzlanski Kanton', 1),
(416, 27, 'FZE', 'Zenicko-Dobojski Kanton', 1),
(417, 27, 'FBP', 'Bosanskopodrinjski Kanton', 1),
(418, 27, 'FSB', 'Srednjebosanski Kanton', 1),
(419, 27, 'FHN', 'Hercegovacko-neretvanski Kanton', 1),
(420, 27, 'FZH', 'Zapadnohercegovacka Zupanija', 1),
(421, 27, 'FSA', 'Kanton Sarajevo', 1),
(422, 27, 'FZA', 'Zapadnobosanska', 1),
(423, 27, 'SBL', 'Banja Luka', 1),
(424, 27, 'SDO', 'Doboj', 1),
(425, 27, 'SBI', 'Bijeljina', 1),
(426, 27, 'SVL', 'Vlasenica', 1),
(427, 27, 'SSR', 'Sarajevo-Romanija or Sokolac', 1),
(428, 27, 'SFO', 'Foca', 1),
(429, 27, 'STR', 'Trebinje', 1),
(430, 28, 'CE', 'Central', 1),
(431, 28, 'GH', 'Ghanzi', 1),
(432, 28, 'KD', 'Kgalagadi', 1),
(433, 28, 'KT', 'Kgatleng', 1),
(434, 28, 'KW', 'Kweneng', 1),
(435, 28, 'NG', 'Ngamiland', 1),
(436, 28, 'NE', 'North East', 1),
(437, 28, 'NW', 'North West', 1),
(438, 28, 'SE', 'South East', 1),
(439, 28, 'SO', 'Southern', 1),
(440, 30, 'AC', 'Acre', 1),
(441, 30, 'AL', 'Alagoas', 1),
(442, 30, 'AP', 'Amapa', 1),
(443, 30, 'AM', 'Amazonas', 1),
(444, 30, 'BA', 'Bahia', 1),
(445, 30, 'CE', 'Ceara', 1),
(446, 30, 'DF', 'Distrito Federal', 1),
(447, 30, 'ES', 'Espirito Santo', 1),
(448, 30, 'GO', 'Goias', 1),
(449, 30, 'MA', 'Maranhao', 1),
(450, 30, 'MT', 'Mato Grosso', 1),
(451, 30, 'MS', 'Mato Grosso do Sul', 1),
(452, 30, 'MG', 'Minas Gerais', 1),
(453, 30, 'PA', 'Para', 1),
(454, 30, 'PB', 'Paraiba', 1),
(455, 30, 'PR', 'Parana', 1),
(456, 30, 'PE', 'Pernambuco', 1),
(457, 30, 'PI', 'Piaui', 1),
(458, 30, 'RJ', 'Rio de Janeiro', 1),
(459, 30, 'RN', 'Rio Grande do Norte', 1),
(460, 30, 'RS', 'Rio Grande do Sul', 1),
(461, 30, 'RO', 'Rondonia', 1),
(462, 30, 'RR', 'Roraima', 1),
(463, 30, 'SC', 'Santa Catarina', 1),
(464, 30, 'SP', 'Sao Paulo', 1),
(465, 30, 'SE', 'Sergipe', 1),
(466, 30, 'TO', 'Tocantins', 1),
(467, 31, 'PB', 'Peros Banhos', 1),
(468, 31, 'SI', 'Salomon Islands', 1),
(469, 31, 'NI', 'Nelsons Island', 1),
(470, 31, 'TB', 'Three Brothers', 1),
(471, 31, 'EA', 'Eagle Islands', 1),
(472, 31, 'DI', 'Danger Island', 1),
(473, 31, 'EG', 'Egmont Islands', 1),
(474, 31, 'DG', 'Diego Garcia', 1),
(475, 32, 'BEL', 'Belait', 1),
(476, 32, 'BRM', 'Brunei and Muara', 1),
(477, 32, 'TEM', 'Temburong', 1),
(478, 32, 'TUT', 'Tutong', 1),
(479, 33, '', 'Blagoevgrad', 1),
(480, 33, '', 'Burgas', 1),
(481, 33, '', 'Dobrich', 1),
(482, 33, '', 'Gabrovo', 1),
(483, 33, '', 'Haskovo', 1),
(484, 33, '', 'Kardjali', 1),
(485, 33, '', 'Kyustendil', 1),
(486, 33, '', 'Lovech', 1),
(487, 33, '', 'Montana', 1),
(488, 33, '', 'Pazardjik', 1),
(489, 33, '', 'Pernik', 1),
(490, 33, '', 'Pleven', 1),
(491, 33, '', 'Plovdiv', 1),
(492, 33, '', 'Razgrad', 1),
(493, 33, '', 'Shumen', 1),
(494, 33, '', 'Silistra', 1),
(495, 33, '', 'Sliven', 1),
(496, 33, '', 'Smolyan', 1),
(497, 33, '', 'Sofia', 1),
(498, 33, '', 'Sofia - town', 1),
(499, 33, '', 'Stara Zagora', 1),
(500, 33, '', 'Targovishte', 1),
(501, 33, '', 'Varna', 1),
(502, 33, '', 'Veliko Tarnovo', 1),
(503, 33, '', 'Vidin', 1),
(504, 33, '', 'Vratza', 1),
(505, 33, '', 'Yambol', 1),
(506, 34, 'BAL', 'Bale', 1),
(507, 34, 'BAM', 'Bam', 1),
(508, 34, 'BAN', 'Banwa', 1),
(509, 34, 'BAZ', 'Bazega', 1),
(510, 34, 'BOR', 'Bougouriba', 1),
(511, 34, 'BLG', 'Boulgou', 1),
(512, 34, 'BOK', 'Boulkiemde', 1),
(513, 34, 'COM', 'Comoe', 1),
(514, 34, 'GAN', 'Ganzourgou', 1),
(515, 34, 'GNA', 'Gnagna', 1),
(516, 34, 'GOU', 'Gourma', 1),
(517, 34, 'HOU', 'Houet', 1),
(518, 34, 'IOA', 'Ioba', 1),
(519, 34, 'KAD', 'Kadiogo', 1),
(520, 34, 'KEN', 'Kenedougou', 1),
(521, 34, 'KOD', 'Komondjari', 1),
(522, 34, 'KOP', 'Kompienga', 1),
(523, 34, 'KOS', 'Kossi', 1),
(524, 34, 'KOL', 'Koulpelogo', 1),
(525, 34, 'KOT', 'Kouritenga', 1),
(526, 34, 'KOW', 'Kourweogo', 1),
(527, 34, 'LER', 'Leraba', 1),
(528, 34, 'LOR', 'Loroum', 1),
(529, 34, 'MOU', 'Mouhoun', 1),
(530, 34, 'NAH', 'Nahouri', 1),
(531, 34, 'NAM', 'Namentenga', 1),
(532, 34, 'NAY', 'Nayala', 1),
(533, 34, 'NOU', 'Noumbiel', 1),
(534, 34, 'OUB', 'Oubritenga', 1),
(535, 34, 'OUD', 'Oudalan', 1),
(536, 34, 'PAS', 'Passore', 1),
(537, 34, 'PON', 'Poni', 1),
(538, 34, 'SAG', 'Sanguie', 1),
(539, 34, 'SAM', 'Sanmatenga', 1),
(540, 34, 'SEN', 'Seno', 1),
(541, 34, 'SIS', 'Sissili', 1),
(542, 34, 'SOM', 'Soum', 1),
(543, 34, 'SOR', 'Sourou', 1),
(544, 34, 'TAP', 'Tapoa', 1),
(545, 34, 'TUY', 'Tuy', 1),
(546, 34, 'YAG', 'Yagha', 1),
(547, 34, 'YAT', 'Yatenga', 1),
(548, 34, 'ZIR', 'Ziro', 1),
(549, 34, 'ZOD', 'Zondoma', 1),
(550, 34, 'ZOW', 'Zoundweogo', 1),
(551, 35, 'BB', 'Bubanza', 1),
(552, 35, 'BJ', 'Bujumbura', 1),
(553, 35, 'BR', 'Bururi', 1),
(554, 35, 'CA', 'Cankuzo', 1),
(555, 35, 'CI', 'Cibitoke', 1),
(556, 35, 'GI', 'Gitega', 1),
(557, 35, 'KR', 'Karuzi', 1),
(558, 35, 'KY', 'Kayanza', 1),
(559, 35, 'KI', 'Kirundo', 1),
(560, 35, 'MA', 'Makamba', 1),
(561, 35, 'MU', 'Muramvya', 1),
(562, 35, 'MY', 'Muyinga', 1),
(563, 35, 'MW', 'Mwaro', 1),
(564, 35, 'NG', 'Ngozi', 1),
(565, 35, 'RT', 'Rutana', 1),
(566, 35, 'RY', 'Ruyigi', 1),
(567, 36, 'PP', 'Phnom Penh', 1),
(568, 36, 'PS', 'Preah Seihanu (Kompong Som or Sihanoukville)', 1),
(569, 36, 'PA', 'Pailin', 1),
(570, 36, 'KB', 'Keb', 1),
(571, 36, 'BM', 'Banteay Meanchey', 1),
(572, 36, 'BA', 'Battambang', 1),
(573, 36, 'KM', 'Kampong Cham', 1),
(574, 36, 'KN', 'Kampong Chhnang', 1),
(575, 36, 'KU', 'Kampong Speu', 1),
(576, 36, 'KO', 'Kampong Som', 1),
(577, 36, 'KT', 'Kampong Thom', 1),
(578, 36, 'KP', 'Kampot', 1),
(579, 36, 'KL', 'Kandal', 1),
(580, 36, 'KK', 'Kaoh Kong', 1),
(581, 36, 'KR', 'Kratie', 1),
(582, 36, 'MK', 'Mondul Kiri', 1),
(583, 36, 'OM', 'Oddar Meancheay', 1),
(584, 36, 'PU', 'Pursat', 1),
(585, 36, 'PR', 'Preah Vihear', 1),
(586, 36, 'PG', 'Prey Veng', 1),
(587, 36, 'RK', 'Ratanak Kiri', 1),
(588, 36, 'SI', 'Siemreap', 1),
(589, 36, 'ST', 'Stung Treng', 1),
(590, 36, 'SR', 'Svay Rieng', 1),
(591, 36, 'TK', 'Takeo', 1),
(592, 37, 'ADA', 'Adamawa (Adamaoua)', 1),
(593, 37, 'CEN', 'Centre', 1),
(594, 37, 'EST', 'East (Est)', 1),
(595, 37, 'EXN', 'Extreme North (Extreme-Nord)', 1),
(596, 37, 'LIT', 'Littoral', 1),
(597, 37, 'NOR', 'North (Nord)', 1),
(598, 37, 'NOT', 'Northwest (Nord-Ouest)', 1),
(599, 37, 'OUE', 'West (Ouest)', 1),
(600, 37, 'SUD', 'South (Sud)', 1),
(601, 37, 'SOU', 'Southwest (Sud-Ouest).', 1),
(602, 38, 'AB', 'Alberta', 1),
(603, 38, 'BC', 'British Columbia', 1),
(604, 38, 'MB', 'Manitoba', 1),
(605, 38, 'NB', 'New Brunswick', 1),
(606, 38, 'NL', 'Newfoundland and Labrador', 1),
(607, 38, 'NT', 'Northwest Territories', 1),
(608, 38, 'NS', 'Nova Scotia', 1),
(609, 38, 'NU', 'Nunavut', 1),
(610, 38, 'ON', 'Ontario', 1),
(611, 38, 'PE', 'Prince Edward Island', 1),
(612, 38, 'QC', 'Qu&eacute;bec', 1),
(613, 38, 'SK', 'Saskatchewan', 1),
(614, 38, 'YT', 'Yukon Territory', 1),
(615, 39, 'BV', 'Boa Vista', 1),
(616, 39, 'BR', 'Brava', 1),
(617, 39, 'CS', 'Calheta de Sao Miguel', 1),
(618, 39, 'MA', 'Maio', 1),
(619, 39, 'MO', 'Mosteiros', 1),
(620, 39, 'PA', 'Paul', 1),
(621, 39, 'PN', 'Porto Novo', 1),
(622, 39, 'PR', 'Praia', 1),
(623, 39, 'RG', 'Ribeira Grande', 1),
(624, 39, 'SL', 'Sal', 1),
(625, 39, 'CA', 'Santa Catarina', 1),
(626, 39, 'CR', 'Santa Cruz', 1),
(627, 39, 'SD', 'Sao Domingos', 1),
(628, 39, 'SF', 'Sao Filipe', 1),
(629, 39, 'SN', 'Sao Nicolau', 1),
(630, 39, 'SV', 'Sao Vicente', 1),
(631, 39, 'TA', 'Tarrafal', 1),
(632, 40, 'CR', 'Creek', 1),
(633, 40, 'EA', 'Eastern', 1),
(634, 40, 'ML', 'Midland', 1),
(635, 40, 'ST', 'South Town', 1),
(636, 40, 'SP', 'Spot Bay', 1),
(637, 40, 'SK', 'Stake Bay', 1),
(638, 40, 'WD', 'West End', 1),
(639, 40, 'WN', 'Western', 1),
(640, 41, 'BBA', 'Bamingui-Bangoran', 1),
(641, 41, 'BKO', 'Basse-Kotto', 1),
(642, 41, 'HKO', 'Haute-Kotto', 1),
(643, 41, 'HMB', 'Haut-Mbomou', 1),
(644, 41, 'KEM', 'Kemo', 1),
(645, 41, 'LOB', 'Lobaye', 1),
(646, 41, 'MKD', 'Mambere-KadeÔ', 1),
(647, 41, 'MBO', 'Mbomou', 1),
(648, 41, 'NMM', 'Nana-Mambere', 1),
(649, 41, 'OMP', 'Ombella-M''Poko', 1),
(650, 41, 'OUK', 'Ouaka', 1),
(651, 41, 'OUH', 'Ouham', 1),
(652, 41, 'OPE', 'Ouham-Pende', 1),
(653, 41, 'VAK', 'Vakaga', 1),
(654, 41, 'NGR', 'Nana-Grebizi', 1),
(655, 41, 'SMB', 'Sangha-Mbaere', 1),
(656, 41, 'BAN', 'Bangui', 1),
(657, 42, 'BA', 'Batha', 1),
(658, 42, 'BI', 'Biltine', 1),
(659, 42, 'BE', 'Borkou-Ennedi-Tibesti', 1),
(660, 42, 'CB', 'Chari-Baguirmi', 1),
(661, 42, 'GU', 'Guera', 1),
(662, 42, 'KA', 'Kanem', 1),
(663, 42, 'LA', 'Lac', 1),
(664, 42, 'LC', 'Logone Occidental', 1),
(665, 42, 'LR', 'Logone Oriental', 1),
(666, 42, 'MK', 'Mayo-Kebbi', 1),
(667, 42, 'MC', 'Moyen-Chari', 1),
(668, 42, 'OU', 'Ouaddai', 1),
(669, 42, 'SA', 'Salamat', 1),
(670, 42, 'TA', 'Tandjile', 1),
(671, 43, 'AI', 'Aisen del General Carlos Ibanez', 1),
(672, 43, 'AN', 'Antofagasta', 1),
(673, 43, 'AR', 'Araucania', 1),
(674, 43, 'AT', 'Atacama', 1),
(675, 43, 'BI', 'Bio-Bio', 1),
(676, 43, 'CO', 'Coquimbo', 1),
(677, 43, 'LI', 'Libertador General Bernardo O''Hi', 1),
(678, 43, 'LL', 'Los Lagos', 1),
(679, 43, 'MA', 'Magallanes y de la Antartica Chi', 1),
(680, 43, 'ML', 'Maule', 1),
(681, 43, 'RM', 'Region Metropolitana', 1),
(682, 43, 'TA', 'Tarapaca', 1),
(683, 43, 'VS', 'Valparaiso', 1),
(684, 44, 'AN', 'Anhui', 1),
(685, 44, 'BE', 'Beijing', 1),
(686, 44, 'CH', 'Chongqing', 1),
(687, 44, 'FU', 'Fujian', 1),
(688, 44, 'GA', 'Gansu', 1),
(689, 44, 'GU', 'Guangdong', 1),
(690, 44, 'GX', 'Guangxi', 1),
(691, 44, 'GZ', 'Guizhou', 1),
(692, 44, 'HA', 'Hainan', 1),
(693, 44, 'HB', 'Hebei', 1),
(694, 44, 'HL', 'Heilongjiang', 1),
(695, 44, 'HE', 'Henan', 1),
(696, 44, 'HK', 'Hong Kong', 1),
(697, 44, 'HU', 'Hubei', 1),
(698, 44, 'HN', 'Hunan', 1),
(699, 44, 'IM', 'Inner Mongolia', 1),
(700, 44, 'JI', 'Jiangsu', 1),
(701, 44, 'JX', 'Jiangxi', 1),
(702, 44, 'JL', 'Jilin', 1),
(703, 44, 'LI', 'Liaoning', 1),
(704, 44, 'MA', 'Macau', 1),
(705, 44, 'NI', 'Ningxia', 1),
(706, 44, 'SH', 'Shaanxi', 1),
(707, 44, 'SA', 'Shandong', 1),
(708, 44, 'SG', 'Shanghai', 1),
(709, 44, 'SX', 'Shanxi', 1),
(710, 44, 'SI', 'Sichuan', 1),
(711, 44, 'TI', 'Tianjin', 1),
(712, 44, 'XI', 'Xinjiang', 1),
(713, 44, 'YU', 'Yunnan', 1),
(714, 44, 'ZH', 'Zhejiang', 1),
(715, 46, 'D', 'Direction Island', 1),
(716, 46, 'H', 'Home Island', 1),
(717, 46, 'O', 'Horsburgh Island', 1),
(718, 46, 'S', 'South Island', 1),
(719, 46, 'W', 'West Island', 1),
(720, 47, 'AMZ', 'Amazonas', 1),
(721, 47, 'ANT', 'Antioquia', 1),
(722, 47, 'ARA', 'Arauca', 1),
(723, 47, 'ATL', 'Atlantico', 1),
(724, 47, 'BDC', 'Bogota D.C.', 1),
(725, 47, 'BOL', 'Bolivar', 1),
(726, 47, 'BOY', 'Boyaca', 1),
(727, 47, 'CAL', 'Caldas', 1),
(728, 47, 'CAQ', 'Caqueta', 1),
(729, 47, 'CAS', 'Casanare', 1),
(730, 47, 'CAU', 'Cauca', 1),
(731, 47, 'CES', 'Cesar', 1),
(732, 47, 'CHO', 'Choco', 1),
(733, 47, 'COR', 'Cordoba', 1),
(734, 47, 'CAM', 'Cundinamarca', 1),
(735, 47, 'GNA', 'Guainia', 1),
(736, 47, 'GJR', 'Guajira', 1),
(737, 47, 'GVR', 'Guaviare', 1),
(738, 47, 'HUI', 'Huila', 1),
(739, 47, 'MAG', 'Magdalena', 1),
(740, 47, 'MET', 'Meta', 1),
(741, 47, 'NAR', 'Narino', 1),
(742, 47, 'NDS', 'Norte de Santander', 1),
(743, 47, 'PUT', 'Putumayo', 1),
(744, 47, 'QUI', 'Quindio', 1),
(745, 47, 'RIS', 'Risaralda', 1),
(746, 47, 'SAP', 'San Andres y Providencia', 1),
(747, 47, 'SAN', 'Santander', 1),
(748, 47, 'SUC', 'Sucre', 1),
(749, 47, 'TOL', 'Tolima', 1),
(750, 47, 'VDC', 'Valle del Cauca', 1),
(751, 47, 'VAU', 'Vaupes', 1),
(752, 47, 'VIC', 'Vichada', 1),
(753, 48, 'G', 'Grande Comore', 1),
(754, 48, 'A', 'Anjouan', 1),
(755, 48, 'M', 'Moheli', 1),
(756, 49, 'BO', 'Bouenza', 1),
(757, 49, 'BR', 'Brazzaville', 1),
(758, 49, 'CU', 'Cuvette', 1),
(759, 49, 'CO', 'Cuvette-Ouest', 1),
(760, 49, 'KO', 'Kouilou', 1),
(761, 49, 'LE', 'Lekoumou', 1),
(762, 49, 'LI', 'Likouala', 1),
(763, 49, 'NI', 'Niari', 1),
(764, 49, 'PL', 'Plateaux', 1),
(765, 49, 'PO', 'Pool', 1),
(766, 49, 'SA', 'Sangha', 1),
(767, 50, 'PU', 'Pukapuka', 1),
(768, 50, 'RK', 'Rakahanga', 1),
(769, 50, 'MK', 'Manihiki', 1),
(770, 50, 'PE', 'Penrhyn', 1),
(771, 50, 'NI', 'Nassau Island', 1),
(772, 50, 'SU', 'Surwarrow', 1),
(773, 50, 'PA', 'Palmerston', 1),
(774, 50, 'AI', 'Aitutaki', 1),
(775, 50, 'MA', 'Manuae', 1),
(776, 50, 'TA', 'Takutea', 1),
(777, 50, 'MT', 'Mitiaro', 1),
(778, 50, 'AT', 'Atiu', 1),
(779, 50, 'MU', 'Mauke', 1),
(780, 50, 'RR', 'Rarotonga', 1),
(781, 50, 'MG', 'Mangaia', 1),
(782, 51, 'AL', 'Alajuela', 1),
(783, 51, 'CA', 'Cartago', 1),
(784, 51, 'GU', 'Guanacaste', 1),
(785, 51, 'HE', 'Heredia', 1),
(786, 51, 'LI', 'Limon', 1),
(787, 51, 'PU', 'Puntarenas', 1),
(788, 51, 'SJ', 'San Jose', 1),
(789, 52, 'ABE', 'Abengourou', 1),
(790, 52, 'ABI', 'Abidjan', 1),
(791, 52, 'ABO', 'Aboisso', 1),
(792, 52, 'ADI', 'Adiake', 1),
(793, 52, 'ADZ', 'Adzope', 1),
(794, 52, 'AGB', 'Agboville', 1),
(795, 52, 'AGN', 'Agnibilekrou', 1),
(796, 52, 'ALE', 'Alepe', 1),
(797, 52, 'BOC', 'Bocanda', 1),
(798, 52, 'BAN', 'Bangolo', 1),
(799, 52, 'BEO', 'Beoumi', 1),
(800, 52, 'BIA', 'Biankouma', 1),
(801, 52, 'BDK', 'Bondoukou', 1),
(802, 52, 'BGN', 'Bongouanou', 1),
(803, 52, 'BFL', 'Bouafle', 1),
(804, 52, 'BKE', 'Bouake', 1),
(805, 52, 'BNA', 'Bouna', 1),
(806, 52, 'BDL', 'Boundiali', 1),
(807, 52, 'DKL', 'Dabakala', 1),
(808, 52, 'DBU', 'Dabou', 1),
(809, 52, 'DAL', 'Daloa', 1),
(810, 52, 'DAN', 'Danane', 1),
(811, 52, 'DAO', 'Daoukro', 1),
(812, 52, 'DIM', 'Dimbokro', 1),
(813, 52, 'DIV', 'Divo', 1),
(814, 52, 'DUE', 'Duekoue', 1),
(815, 52, 'FER', 'Ferkessedougou', 1),
(816, 52, 'GAG', 'Gagnoa', 1),
(817, 52, 'GBA', 'Grand-Bassam', 1),
(818, 52, 'GLA', 'Grand-Lahou', 1),
(819, 52, 'GUI', 'Guiglo', 1),
(820, 52, 'ISS', 'Issia', 1),
(821, 52, 'JAC', 'Jacqueville', 1),
(822, 52, 'KAT', 'Katiola', 1),
(823, 52, 'KOR', 'Korhogo', 1),
(824, 52, 'LAK', 'Lakota', 1),
(825, 52, 'MAN', 'Man', 1),
(826, 52, 'MKN', 'Mankono', 1),
(827, 52, 'MBA', 'Mbahiakro', 1),
(828, 52, 'ODI', 'Odienne', 1),
(829, 52, 'OUM', 'Oume', 1),
(830, 52, 'SAK', 'Sakassou', 1),
(831, 52, 'SPE', 'San-Pedro', 1),
(832, 52, 'SAS', 'Sassandra', 1),
(833, 52, 'SEG', 'Seguela', 1),
(834, 52, 'SIN', 'Sinfra', 1),
(835, 52, 'SOU', 'Soubre', 1),
(836, 52, 'TAB', 'Tabou', 1),
(837, 52, 'TAN', 'Tanda', 1),
(838, 52, 'TIE', 'Tiebissou', 1),
(839, 52, 'TIN', 'Tingrela', 1),
(840, 52, 'TIA', 'Tiassale', 1),
(841, 52, 'TBA', 'Touba', 1),
(842, 52, 'TLP', 'Toulepleu', 1),
(843, 52, 'TMD', 'Toumodi', 1),
(844, 52, 'VAV', 'Vavoua', 1),
(845, 52, 'YAM', 'Yamoussoukro', 1),
(846, 52, 'ZUE', 'Zuenoula', 1),
(847, 53, 'BB', 'Bjelovar-Bilogora', 1),
(848, 53, 'CZ', 'City of Zagreb', 1),
(849, 53, 'DN', 'Dubrovnik-Neretva', 1),
(850, 53, 'IS', 'Istra', 1),
(851, 53, 'KA', 'Karlovac', 1),
(852, 53, 'KK', 'Koprivnica-Krizevci', 1),
(853, 53, 'KZ', 'Krapina-Zagorje', 1),
(854, 53, 'LS', 'Lika-Senj', 1),
(855, 53, 'ME', 'Medimurje', 1),
(856, 53, 'OB', 'Osijek-Baranja', 1),
(857, 53, 'PS', 'Pozega-Slavonia', 1),
(858, 53, 'PG', 'Primorje-Gorski Kotar', 1),
(859, 53, 'SI', 'Sibenik', 1),
(860, 53, 'SM', 'Sisak-Moslavina', 1),
(861, 53, 'SB', 'Slavonski Brod-Posavina', 1),
(862, 53, 'SD', 'Split-Dalmatia', 1),
(863, 53, 'VA', 'Varazdin', 1),
(864, 53, 'VP', 'Virovitica-Podravina', 1),
(865, 53, 'VS', 'Vukovar-Srijem', 1),
(866, 53, 'ZK', 'Zadar-Knin', 1),
(867, 53, 'ZA', 'Zagreb', 1),
(868, 54, 'CA', 'Camaguey', 1),
(869, 54, 'CD', 'Ciego de Avila', 1),
(870, 54, 'CI', 'Cienfuegos', 1),
(871, 54, 'CH', 'Ciudad de La Habana', 1),
(872, 54, 'GR', 'Granma', 1),
(873, 54, 'GU', 'Guantanamo', 1),
(874, 54, 'HO', 'Holguin', 1),
(875, 54, 'IJ', 'Isla de la Juventud', 1),
(876, 54, 'LH', 'La Habana', 1),
(877, 54, 'LT', 'Las Tunas', 1),
(878, 54, 'MA', 'Matanzas', 1),
(879, 54, 'PR', 'Pinar del Rio', 1),
(880, 54, 'SS', 'Sancti Spiritus', 1),
(881, 54, 'SC', 'Santiago de Cuba', 1),
(882, 54, 'VC', 'Villa Clara', 1),
(883, 55, 'F', 'Famagusta', 1),
(884, 55, 'K', 'Kyrenia', 1),
(885, 55, 'A', 'Larnaca', 1),
(886, 55, 'I', 'Limassol', 1),
(887, 55, 'N', 'Nicosia', 1),
(888, 55, 'P', 'Paphos', 1),
(889, 56, 'U', 'Ustecky', 1),
(890, 56, 'C', 'Jihocesky', 1),
(891, 56, 'B', 'Jihomoravsky', 1),
(892, 56, 'K', 'Karlovarsky', 1),
(893, 56, 'H', 'Kralovehradecky', 1),
(894, 56, 'L', 'Liberecky', 1),
(895, 56, 'T', 'Moravskoslezsky', 1),
(896, 56, 'M', 'Olomoucky', 1),
(897, 56, 'E', 'Pardubicky', 1),
(898, 56, 'P', 'Plzensky', 1),
(899, 56, 'A', 'Praha', 1),
(900, 56, 'S', 'Stredocesky', 1),
(901, 56, 'J', 'Vysocina', 1),
(902, 56, 'Z', 'Zlinsky', 1),
(903, 57, 'AR', 'Arhus', 1),
(904, 57, 'BH', 'Bornholm', 1),
(905, 57, 'CO', 'Copenhagen', 1),
(906, 57, 'FO', 'Faroe Islands', 1),
(907, 57, 'FR', 'Frederiksborg', 1),
(908, 57, 'FY', 'Fyn', 1),
(909, 57, 'KO', 'Kobenhavn', 1),
(910, 57, 'NO', 'Nordjylland', 1),
(911, 57, 'RI', 'Ribe', 1),
(912, 57, 'RK', 'Ringkobing', 1),
(913, 57, 'RO', 'Roskilde', 1),
(914, 57, 'SO', 'Sonderjylland', 1),
(915, 57, 'ST', 'Storstrom', 1),
(916, 57, 'VK', 'Vejle', 1),
(917, 57, 'VJ', 'Vestj&aelig;lland', 1),
(918, 57, 'VB', 'Viborg', 1),
(919, 58, 'S', '''Ali Sabih', 1),
(920, 58, 'K', 'Dikhil', 1),
(921, 58, 'J', 'Djibouti', 1),
(922, 58, 'O', 'Obock', 1),
(923, 58, 'T', 'Tadjoura', 1),
(924, 59, 'AND', 'Saint Andrew Parish', 1),
(925, 59, 'DAV', 'Saint David Parish', 1),
(926, 59, 'GEO', 'Saint George Parish', 1),
(927, 59, 'JOH', 'Saint John Parish', 1),
(928, 59, 'JOS', 'Saint Joseph Parish', 1),
(929, 59, 'LUK', 'Saint Luke Parish', 1),
(930, 59, 'MAR', 'Saint Mark Parish', 1),
(931, 59, 'PAT', 'Saint Patrick Parish', 1),
(932, 59, 'PAU', 'Saint Paul Parish', 1),
(933, 59, 'PET', 'Saint Peter Parish', 1),
(934, 60, 'DN', 'Distrito Nacional', 1),
(935, 60, 'AZ', 'Azua', 1),
(936, 60, 'BC', 'Baoruco', 1),
(937, 60, 'BH', 'Barahona', 1),
(938, 60, 'DJ', 'Dajabon', 1),
(939, 60, 'DU', 'Duarte', 1),
(940, 60, 'EL', 'Elias Pina', 1),
(941, 60, 'SY', 'El Seybo', 1),
(942, 60, 'ET', 'Espaillat', 1),
(943, 60, 'HM', 'Hato Mayor', 1),
(944, 60, 'IN', 'Independencia', 1),
(945, 60, 'AL', 'La Altagracia', 1),
(946, 60, 'RO', 'La Romana', 1),
(947, 60, 'VE', 'La Vega', 1),
(948, 60, 'MT', 'Maria Trinidad Sanchez', 1),
(949, 60, 'MN', 'Monsenor Nouel', 1),
(950, 60, 'MC', 'Monte Cristi', 1),
(951, 60, 'MP', 'Monte Plata', 1),
(952, 60, 'PD', 'Pedernales', 1),
(953, 60, 'PR', 'Peravia (Bani)', 1),
(954, 60, 'PP', 'Puerto Plata', 1),
(955, 60, 'SL', 'Salcedo', 1),
(956, 60, 'SM', 'Samana', 1),
(957, 60, 'SH', 'Sanchez Ramirez', 1),
(958, 60, 'SC', 'San Cristobal', 1),
(959, 60, 'JO', 'San Jose de Ocoa', 1),
(960, 60, 'SJ', 'San Juan', 1),
(961, 60, 'PM', 'San Pedro de Macoris', 1),
(962, 60, 'SA', 'Santiago', 1),
(963, 60, 'ST', 'Santiago Rodriguez', 1),
(964, 60, 'SD', 'Santo Domingo', 1),
(965, 60, 'VA', 'Valverde', 1),
(966, 61, 'AL', 'Aileu', 1),
(967, 61, 'AN', 'Ainaro', 1),
(968, 61, 'BA', 'Baucau', 1),
(969, 61, 'BO', 'Bobonaro', 1),
(970, 61, 'CO', 'Cova Lima', 1),
(971, 61, 'DI', 'Dili', 1),
(972, 61, 'ER', 'Ermera', 1),
(973, 61, 'LA', 'Lautem', 1),
(974, 61, 'LI', 'Liquica', 1),
(975, 61, 'MT', 'Manatuto', 1),
(976, 61, 'MF', 'Manufahi', 1),
(977, 61, 'OE', 'Oecussi', 1),
(978, 61, 'VI', 'Viqueque', 1),
(979, 62, 'AZU', 'Azuay', 1),
(980, 62, 'BOL', 'Bolivar', 1),
(981, 62, 'CAN', 'Ca&ntilde;ar', 1),
(982, 62, 'CAR', 'Carchi', 1),
(983, 62, 'CHI', 'Chimborazo', 1),
(984, 62, 'COT', 'Cotopaxi', 1),
(985, 62, 'EOR', 'El Oro', 1),
(986, 62, 'ESM', 'Esmeraldas', 1),
(987, 62, 'GPS', 'Gal&aacute;pagos', 1),
(988, 62, 'GUA', 'Guayas', 1),
(989, 62, 'IMB', 'Imbabura', 1),
(990, 62, 'LOJ', 'Loja', 1),
(991, 62, 'LRO', 'Los Rios', 1),
(992, 62, 'MAN', 'Manab&iacute;', 1),
(993, 62, 'MSA', 'Morona Santiago', 1),
(994, 62, 'NAP', 'Napo', 1),
(995, 62, 'ORE', 'Orellana', 1),
(996, 62, 'PAS', 'Pastaza', 1),
(997, 62, 'PIC', 'Pichincha', 1),
(998, 62, 'SUC', 'Sucumb&iacute;os', 1),
(999, 62, 'TUN', 'Tungurahua', 1),
(1000, 62, 'ZCH', 'Zamora Chinchipe', 1),
(1001, 63, 'DHY', 'Ad Daqahliyah', 1),
(1002, 63, 'BAM', 'Al Bahr al Ahmar', 1),
(1003, 63, 'BHY', 'Al Buhayrah', 1),
(1004, 63, 'FYM', 'Al Fayyum', 1),
(1005, 63, 'GBY', 'Al Gharbiyah', 1),
(1006, 63, 'IDR', 'Al Iskandariyah', 1),
(1007, 63, 'IML', 'Al Isma''iliyah', 1),
(1008, 63, 'JZH', 'Al Jizah', 1),
(1009, 63, 'MFY', 'Al Minufiyah', 1),
(1010, 63, 'MNY', 'Al Minya', 1),
(1011, 63, 'QHR', 'Al Qahirah', 1),
(1012, 63, 'QLY', 'Al Qalyubiyah', 1),
(1013, 63, 'WJD', 'Al Wadi al Jadid', 1),
(1014, 63, 'SHQ', 'Ash Sharqiyah', 1),
(1015, 63, 'SWY', 'As Suways', 1),
(1016, 63, 'ASW', 'Aswan', 1),
(1017, 63, 'ASY', 'Asyut', 1),
(1018, 63, 'BSW', 'Bani Suwayf', 1),
(1019, 63, 'BSD', 'Bur Sa''id', 1),
(1020, 63, 'DMY', 'Dumyat', 1),
(1021, 63, 'JNS', 'Janub Sina''', 1),
(1022, 63, 'KSH', 'Kafr ash Shaykh', 1),
(1023, 63, 'MAT', 'Matruh', 1),
(1024, 63, 'QIN', 'Qina', 1),
(1025, 63, 'SHS', 'Shamal Sina''', 1),
(1026, 63, 'SUH', 'Suhaj', 1),
(1027, 64, 'AH', 'Ahuachapan', 1),
(1028, 64, 'CA', 'Cabanas', 1),
(1029, 64, 'CH', 'Chalatenango', 1),
(1030, 64, 'CU', 'Cuscatlan', 1),
(1031, 64, 'LB', 'La Libertad', 1),
(1032, 64, 'PZ', 'La Paz', 1),
(1033, 64, 'UN', 'La Union', 1),
(1034, 64, 'MO', 'Morazan', 1),
(1035, 64, 'SM', 'San Miguel', 1),
(1036, 64, 'SS', 'San Salvador', 1),
(1037, 64, 'SV', 'San Vicente', 1),
(1038, 64, 'SA', 'Santa Ana', 1),
(1039, 64, 'SO', 'Sonsonate', 1),
(1040, 64, 'US', 'Usulutan', 1),
(1041, 65, 'AN', 'Provincia Annobon', 1),
(1042, 65, 'BN', 'Provincia Bioko Norte', 1),
(1043, 65, 'BS', 'Provincia Bioko Sur', 1),
(1044, 65, 'CS', 'Provincia Centro Sur', 1),
(1045, 65, 'KN', 'Provincia Kie-Ntem', 1),
(1046, 65, 'LI', 'Provincia Litoral', 1),
(1047, 65, 'WN', 'Provincia Wele-Nzas', 1),
(1048, 66, 'MA', 'Central (Maekel)', 1),
(1049, 66, 'KE', 'Anseba (Keren)', 1),
(1050, 66, 'DK', 'Southern Red Sea (Debub-Keih-Bahri)', 1),
(1051, 66, 'SK', 'Northern Red Sea (Semien-Keih-Bahri)', 1),
(1052, 66, 'DE', 'Southern (Debub)', 1),
(1053, 66, 'BR', 'Gash-Barka (Barentu)', 1),
(1054, 67, 'HA', 'Harjumaa (Tallinn)', 1),
(1055, 67, 'HI', 'Hiiumaa (Kardla)', 1),
(1056, 67, 'IV', 'Ida-Virumaa (Johvi)', 1),
(1057, 67, 'JA', 'Jarvamaa (Paide)', 1),
(1058, 67, 'JO', 'Jogevamaa (Jogeva)', 1),
(1059, 67, 'LV', 'Laane-Virumaa (Rakvere)', 1),
(1060, 67, 'LA', 'Laanemaa (Haapsalu)', 1),
(1061, 67, 'PA', 'Parnumaa (Parnu)', 1),
(1062, 67, 'PO', 'Polvamaa (Polva)', 1),
(1063, 67, 'RA', 'Raplamaa (Rapla)', 1),
(1064, 67, 'SA', 'Saaremaa (Kuessaare)', 1),
(1065, 67, 'TA', 'Tartumaa (Tartu)', 1),
(1066, 67, 'VA', 'Valgamaa (Valga)', 1),
(1067, 67, 'VI', 'Viljandimaa (Viljandi)', 1),
(1068, 67, 'VO', 'Vorumaa (Voru)', 1),
(1069, 68, 'AF', 'Afar', 1),
(1070, 68, 'AH', 'Amhara', 1),
(1071, 68, 'BG', 'Benishangul-Gumaz', 1),
(1072, 68, 'GB', 'Gambela', 1),
(1073, 68, 'HR', 'Hariai', 1),
(1074, 68, 'OR', 'Oromia', 1),
(1075, 68, 'SM', 'Somali', 1),
(1076, 68, 'SN', 'Southern Nations - Nationalities and Peoples Region', 1),
(1077, 68, 'TG', 'Tigray', 1),
(1078, 68, 'AA', 'Addis Ababa', 1),
(1079, 68, 'DD', 'Dire Dawa', 1),
(1080, 71, 'C', 'Central Division', 1),
(1081, 71, 'N', 'Northern Division', 1),
(1082, 71, 'E', 'Eastern Division', 1),
(1083, 71, 'W', 'Western Division', 1),
(1084, 71, 'R', 'Rotuma', 1),
(1085, 72, 'AL', 'Ahvenanmaan Laani', 1),
(1086, 72, 'ES', 'Etela-Suomen Laani', 1),
(1087, 72, 'IS', 'Ita-Suomen Laani', 1),
(1088, 72, 'LS', 'Lansi-Suomen Laani', 1),
(1089, 72, 'LA', 'Lapin Lanani', 1),
(1090, 72, 'OU', 'Oulun Laani', 1),
(1091, 73, 'AL', 'Alsace', 1),
(1092, 73, 'AQ', 'Aquitaine', 1),
(1093, 73, 'AU', 'Auvergne', 1),
(1094, 73, 'BR', 'Brittany', 1),
(1095, 73, 'BU', 'Burgundy', 1),
(1096, 73, 'CE', 'Center Loire Valley', 1),
(1097, 73, 'CH', 'Champagne', 1),
(1098, 73, 'CO', 'Corse', 1),
(1099, 73, 'FR', 'France Comte', 1),
(1100, 73, 'LA', 'Languedoc Roussillon', 1),
(1101, 73, 'LI', 'Limousin', 1),
(1102, 73, 'LO', 'Lorraine', 1),
(1103, 73, 'MI', 'Midi Pyrenees', 1),
(1104, 73, 'NO', 'Nord Pas de Calais', 1),
(1105, 73, 'NR', 'Normandy', 1),
(1106, 73, 'PA', 'Paris / Ill de France', 1),
(1107, 73, 'PI', 'Picardie', 1),
(1108, 73, 'PO', 'Poitou Charente', 1),
(1109, 73, 'PR', 'Provence', 1),
(1110, 73, 'RH', 'Rhone Alps', 1),
(1111, 73, 'RI', 'Riviera', 1),
(1112, 73, 'WE', 'Western Loire Valley', 1),
(1113, 74, 'Et', 'Etranger', 1),
(1114, 74, '01', 'Ain', 1),
(1115, 74, '02', 'Aisne', 1),
(1116, 74, '03', 'Allier', 1),
(1117, 74, '04', 'Alpes de Haute Provence', 1),
(1118, 74, '05', 'Hautes-Alpes', 1),
(1119, 74, '06', 'Alpes Maritimes', 1),
(1120, 74, '07', 'Ard&egrave;che', 1),
(1121, 74, '08', 'Ardennes', 1),
(1122, 74, '09', 'Ari&egrave;ge', 1),
(1123, 74, '10', 'Aube', 1),
(1124, 74, '11', 'Aude', 1),
(1125, 74, '12', 'Aveyron', 1),
(1126, 74, '13', 'Bouches du Rh&ocirc;ne', 1),
(1127, 74, '14', 'Calvados', 1),
(1128, 74, '15', 'Cantal', 1),
(1129, 74, '16', 'Charente', 1),
(1130, 74, '17', 'Charente Maritime', 1),
(1131, 74, '18', 'Cher', 1),
(1132, 74, '19', 'Corr&egrave;ze', 1),
(1133, 74, '2A', 'Corse du Sud', 1),
(1134, 74, '2B', 'Haute Corse', 1),
(1135, 74, '21', 'C&ocirc;te d&#039;or', 1),
(1136, 74, '22', 'C&ocirc;tes d&#039;Armor', 1),
(1137, 74, '23', 'Creuse', 1),
(1138, 74, '24', 'Dordogne', 1),
(1139, 74, '25', 'Doubs', 1),
(1140, 74, '26', 'Dr&ocirc;me', 1),
(1141, 74, '27', 'Eure', 1),
(1142, 74, '28', 'Eure et Loir', 1),
(1143, 74, '29', 'Finist&egrave;re', 1),
(1144, 74, '30', 'Gard', 1),
(1145, 74, '31', 'Haute Garonne', 1),
(1146, 74, '32', 'Gers', 1),
(1147, 74, '33', 'Gironde', 1),
(1148, 74, '34', 'H&eacute;rault', 1),
(1149, 74, '35', 'Ille et Vilaine', 1),
(1150, 74, '36', 'Indre', 1),
(1151, 74, '37', 'Indre et Loire', 1),
(1152, 74, '38', 'Is&eacute;re', 1),
(1153, 74, '39', 'Jura', 1),
(1154, 74, '40', 'Landes', 1),
(1155, 74, '41', 'Loir et Cher', 1),
(1156, 74, '42', 'Loire', 1),
(1157, 74, '43', 'Haute Loire', 1),
(1158, 74, '44', 'Loire Atlantique', 1),
(1159, 74, '45', 'Loiret', 1),
(1160, 74, '46', 'Lot', 1),
(1161, 74, '47', 'Lot et Garonne', 1),
(1162, 74, '48', 'Loz&egrave;re', 1),
(1163, 74, '49', 'Maine et Loire', 1),
(1164, 74, '50', 'Manche', 1),
(1165, 74, '51', 'Marne', 1),
(1166, 74, '52', 'Haute Marne', 1),
(1167, 74, '53', 'Mayenne', 1),
(1168, 74, '54', 'Meurthe et Moselle', 1),
(1169, 74, '55', 'Meuse', 1),
(1170, 74, '56', 'Morbihan', 1),
(1171, 74, '57', 'Moselle', 1),
(1172, 74, '58', 'Ni&egrave;vre', 1),
(1173, 74, '59', 'Nord', 1),
(1174, 74, '60', 'Oise', 1),
(1175, 74, '61', 'Orne', 1),
(1176, 74, '62', 'Pas de Calais', 1),
(1177, 74, '63', 'Puy de D&ocirc;me', 1),
(1178, 74, '64', 'Pyr&eacute;n&eacute;es Atlantiques', 1),
(1179, 74, '65', 'Hautes Pyr&eacute;n&eacute;es', 1),
(1180, 74, '66', 'Pyr&eacute;n&eacute;es Orientales', 1),
(1181, 74, '67', 'Bas Rhin', 1),
(1182, 74, '68', 'Haut Rhin', 1),
(1183, 74, '69', 'Rh&ocirc;ne', 1),
(1184, 74, '70', 'Haute Sa&ocirc;ne', 1),
(1185, 74, '71', 'Sa&ocirc;ne et Loire', 1),
(1186, 74, '72', 'Sarthe', 1),
(1187, 74, '73', 'Savoie', 1),
(1188, 74, '74', 'Haute Savoie', 1),
(1189, 74, '75', 'Paris', 1),
(1190, 74, '76', 'Seine Maritime', 1),
(1191, 74, '77', 'Seine et Marne', 1),
(1192, 74, '78', 'Yvelines', 1),
(1193, 74, '79', 'Deux S&egrave;vres', 1),
(1194, 74, '80', 'Somme', 1),
(1195, 74, '81', 'Tarn', 1),
(1196, 74, '82', 'Tarn et Garonne', 1),
(1197, 74, '83', 'Var', 1),
(1198, 74, '84', 'Vaucluse', 1),
(1199, 74, '85', 'Vend&eacute;e', 1),
(1200, 74, '86', 'Vienne', 1),
(1201, 74, '87', 'Haute Vienne', 1),
(1202, 74, '88', 'Vosges', 1),
(1203, 74, '89', 'Yonne', 1),
(1204, 74, '90', 'Territoire de Belfort', 1),
(1205, 74, '91', 'Essonne', 1),
(1206, 74, '92', 'Hauts de Seine', 1),
(1207, 74, '93', 'Seine St-Denis', 1),
(1208, 74, '94', 'Val de Marne', 1),
(1209, 74, '95', 'Val d''Oise', 1),
(1210, 76, 'M', 'Archipel des Marquises', 1),
(1211, 76, 'T', 'Archipel des Tuamotu', 1),
(1212, 76, 'I', 'Archipel des Tubuai', 1),
(1213, 76, 'V', 'Iles du Vent', 1),
(1214, 76, 'S', 'Iles Sous-le-Vent', 1),
(1215, 77, 'C', 'Iles Crozet', 1),
(1216, 77, 'K', 'Iles Kerguelen', 1),
(1217, 77, 'A', 'Ile Amsterdam', 1),
(1218, 77, 'P', 'Ile Saint-Paul', 1),
(1219, 77, 'D', 'Adelie Land', 1),
(1220, 78, 'ES', 'Estuaire', 1),
(1221, 78, 'HO', 'Haut-Ogooue', 1),
(1222, 78, 'MO', 'Moyen-Ogooue', 1),
(1223, 78, 'NG', 'Ngounie', 1),
(1224, 78, 'NY', 'Nyanga', 1),
(1225, 78, 'OI', 'Ogooue-Ivindo', 1),
(1226, 78, 'OL', 'Ogooue-Lolo', 1),
(1227, 78, 'OM', 'Ogooue-Maritime', 1),
(1228, 78, 'WN', 'Woleu-Ntem', 1),
(1229, 79, 'BJ', 'Banjul', 1),
(1230, 79, 'BS', 'Basse', 1),
(1231, 79, 'BR', 'Brikama', 1),
(1232, 79, 'JA', 'Janjangbure', 1),
(1233, 79, 'KA', 'Kanifeng', 1),
(1234, 79, 'KE', 'Kerewan', 1),
(1235, 79, 'KU', 'Kuntaur', 1),
(1236, 79, 'MA', 'Mansakonko', 1),
(1237, 79, 'LR', 'Lower River', 1),
(1238, 79, 'CR', 'Central River', 1),
(1239, 79, 'NB', 'North Bank', 1),
(1240, 79, 'UR', 'Upper River', 1),
(1241, 79, 'WE', 'Western', 1),
(1242, 80, 'AB', 'Abkhazia', 1),
(1243, 80, 'AJ', 'Ajaria', 1),
(1244, 80, 'TB', 'Tbilisi', 1),
(1245, 80, 'GU', 'Guria', 1),
(1246, 80, 'IM', 'Imereti', 1),
(1247, 80, 'KA', 'Kakheti', 1),
(1248, 80, 'KK', 'Kvemo Kartli', 1),
(1249, 80, 'MM', 'Mtskheta-Mtianeti', 1),
(1250, 80, 'RL', 'Racha Lechkhumi and Kvemo Svanet', 1),
(1251, 80, 'SZ', 'Samegrelo-Zemo Svaneti', 1),
(1252, 80, 'SJ', 'Samtskhe-Javakheti', 1),
(1253, 80, 'SK', 'Shida Kartli', 1),
(1254, 81, 'BAW', 'Baden-W&uuml;rttemberg', 1),
(1255, 81, 'BAY', 'Bayern', 1),
(1256, 81, 'BER', 'Berlin', 1),
(1257, 81, 'BRG', 'Brandenburg', 1),
(1258, 81, 'BRE', 'Bremen', 1),
(1259, 81, 'HAM', 'Hamburg', 1),
(1260, 81, 'HES', 'Hessen', 1),
(1261, 81, 'MEC', 'Mecklenburg-Vorpommern', 1),
(1262, 81, 'NDS', 'Niedersachsen', 1),
(1263, 81, 'NRW', 'Nordrhein-Westfalen', 1),
(1264, 81, 'RHE', 'Rheinland-Pfalz', 1),
(1265, 81, 'SAR', 'Saarland', 1),
(1266, 81, 'SAS', 'Sachsen', 1),
(1267, 81, 'SAC', 'Sachsen-Anhalt', 1),
(1268, 81, 'SCN', 'Schleswig-Holstein', 1),
(1269, 81, 'THE', 'Th&uuml;ringen', 1),
(1270, 82, 'AS', 'Ashanti Region', 1),
(1271, 82, 'BA', 'Brong-Ahafo Region', 1),
(1272, 82, 'CE', 'Central Region', 1),
(1273, 82, 'EA', 'Eastern Region', 1),
(1274, 82, 'GA', 'Greater Accra Region', 1),
(1275, 82, 'NO', 'Northern Region', 1),
(1276, 82, 'UE', 'Upper East Region', 1),
(1277, 82, 'UW', 'Upper West Region', 1),
(1278, 82, 'VO', 'Volta Region', 1),
(1279, 82, 'WE', 'Western Region', 1),
(1280, 84, 'AT', 'Attica', 1),
(1281, 84, 'CN', 'Central Greece', 1),
(1282, 84, 'CM', 'Central Macedonia', 1),
(1283, 84, 'CR', 'Crete', 1),
(1284, 84, 'EM', 'East Macedonia and Thrace', 1),
(1285, 84, 'EP', 'Epirus', 1),
(1286, 84, 'II', 'Ionian Islands', 1),
(1287, 84, 'NA', 'North Aegean', 1),
(1288, 84, 'PP', 'Peloponnesos', 1),
(1289, 84, 'SA', 'South Aegean', 1),
(1290, 84, 'TH', 'Thessaly', 1),
(1291, 84, 'WG', 'West Greece', 1),
(1292, 84, 'WM', 'West Macedonia', 1),
(1293, 85, 'A', 'Avannaa', 1),
(1294, 85, 'T', 'Tunu', 1),
(1295, 85, 'K', 'Kitaa', 1),
(1296, 86, 'A', 'Saint Andrew', 1),
(1297, 86, 'D', 'Saint David', 1),
(1298, 86, 'G', 'Saint George', 1),
(1299, 86, 'J', 'Saint John', 1),
(1300, 86, 'M', 'Saint Mark', 1),
(1301, 86, 'P', 'Saint Patrick', 1),
(1302, 86, 'C', 'Carriacou', 1),
(1303, 86, 'Q', 'Petit Martinique', 1),
(1304, 89, 'AV', 'Alta Verapaz', 1),
(1305, 89, 'BV', 'Baja Verapaz', 1),
(1306, 89, 'CM', 'Chimaltenango', 1),
(1307, 89, 'CQ', 'Chiquimula', 1),
(1308, 89, 'PE', 'El Peten', 1),
(1309, 89, 'PR', 'El Progreso', 1),
(1310, 89, 'QC', 'El Quiche', 1),
(1311, 89, 'ES', 'Escuintla', 1),
(1312, 89, 'GU', 'Guatemala', 1),
(1313, 89, 'HU', 'Huehuetenango', 1),
(1314, 89, 'IZ', 'Izabal', 1),
(1315, 89, 'JA', 'Jalapa', 1),
(1316, 89, 'JU', 'Jutiapa', 1),
(1317, 89, 'QZ', 'Quetzaltenango', 1),
(1318, 89, 'RE', 'Retalhuleu', 1),
(1319, 89, 'ST', 'Sacatepequez', 1),
(1320, 89, 'SM', 'San Marcos', 1),
(1321, 89, 'SR', 'Santa Rosa', 1),
(1322, 89, 'SO', 'Solola', 1),
(1323, 89, 'SU', 'Suchitepequez', 1),
(1324, 89, 'TO', 'Totonicapan', 1),
(1325, 89, 'ZA', 'Zacapa', 1),
(1326, 90, 'CNK', 'Conakry', 1),
(1327, 90, 'BYL', 'Beyla', 1),
(1328, 90, 'BFA', 'Boffa', 1),
(1329, 90, 'BOK', 'Boke', 1),
(1330, 90, 'COY', 'Coyah', 1),
(1331, 90, 'DBL', 'Dabola', 1),
(1332, 90, 'DLB', 'Dalaba', 1),
(1333, 90, 'DGR', 'Dinguiraye', 1),
(1334, 90, 'DBR', 'Dubreka', 1),
(1335, 90, 'FRN', 'Faranah', 1),
(1336, 90, 'FRC', 'Forecariah', 1),
(1337, 90, 'FRI', 'Fria', 1),
(1338, 90, 'GAO', 'Gaoual', 1),
(1339, 90, 'GCD', 'Gueckedou', 1),
(1340, 90, 'KNK', 'Kankan', 1),
(1341, 90, 'KRN', 'Kerouane', 1),
(1342, 90, 'KND', 'Kindia', 1),
(1343, 90, 'KSD', 'Kissidougou', 1),
(1344, 90, 'KBA', 'Koubia', 1),
(1345, 90, 'KDA', 'Koundara', 1),
(1346, 90, 'KRA', 'Kouroussa', 1),
(1347, 90, 'LAB', 'Labe', 1),
(1348, 90, 'LLM', 'Lelouma', 1),
(1349, 90, 'LOL', 'Lola', 1),
(1350, 90, 'MCT', 'Macenta', 1),
(1351, 90, 'MAL', 'Mali', 1),
(1352, 90, 'MAM', 'Mamou', 1),
(1353, 90, 'MAN', 'Mandiana', 1),
(1354, 90, 'NZR', 'Nzerekore', 1),
(1355, 90, 'PIT', 'Pita', 1),
(1356, 90, 'SIG', 'Siguiri', 1),
(1357, 90, 'TLM', 'Telimele', 1),
(1358, 90, 'TOG', 'Tougue', 1),
(1359, 90, 'YOM', 'Yomou', 1),
(1360, 91, 'BF', 'Bafata Region', 1),
(1361, 91, 'BB', 'Biombo Region', 1),
(1362, 91, 'BS', 'Bissau Region', 1),
(1363, 91, 'BL', 'Bolama Region', 1),
(1364, 91, 'CA', 'Cacheu Region', 1),
(1365, 91, 'GA', 'Gabu Region', 1),
(1366, 91, 'OI', 'Oio Region', 1),
(1367, 91, 'QU', 'Quinara Region', 1),
(1368, 91, 'TO', 'Tombali Region', 1),
(1369, 92, 'BW', 'Barima-Waini', 1),
(1370, 92, 'CM', 'Cuyuni-Mazaruni', 1),
(1371, 92, 'DM', 'Demerara-Mahaica', 1),
(1372, 92, 'EC', 'East Berbice-Corentyne', 1),
(1373, 92, 'EW', 'Essequibo Islands-West Demerara', 1),
(1374, 92, 'MB', 'Mahaica-Berbice', 1),
(1375, 92, 'PM', 'Pomeroon-Supenaam', 1),
(1376, 92, 'PI', 'Potaro-Siparuni', 1),
(1377, 92, 'UD', 'Upper Demerara-Berbice', 1),
(1378, 92, 'UT', 'Upper Takutu-Upper Essequibo', 1),
(1379, 93, 'AR', 'Artibonite', 1),
(1380, 93, 'CE', 'Centre', 1),
(1381, 93, 'GA', 'Grand''Anse', 1),
(1382, 93, 'ND', 'Nord', 1),
(1383, 93, 'NE', 'Nord-Est', 1),
(1384, 93, 'NO', 'Nord-Ouest', 1),
(1385, 93, 'OU', 'Ouest', 1),
(1386, 93, 'SD', 'Sud', 1),
(1387, 93, 'SE', 'Sud-Est', 1),
(1388, 94, 'F', 'Flat Island', 1),
(1389, 94, 'M', 'McDonald Island', 1),
(1390, 94, 'S', 'Shag Island', 1),
(1391, 94, 'H', 'Heard Island', 1),
(1392, 95, 'AT', 'Atlantida', 1),
(1393, 95, 'CH', 'Choluteca', 1),
(1394, 95, 'CL', 'Colon', 1),
(1395, 95, 'CM', 'Comayagua', 1),
(1396, 95, 'CP', 'Copan', 1),
(1397, 95, 'CR', 'Cortes', 1),
(1398, 95, 'PA', 'El Paraiso', 1),
(1399, 95, 'FM', 'Francisco Morazan', 1),
(1400, 95, 'GD', 'Gracias a Dios', 1),
(1401, 95, 'IN', 'Intibuca', 1),
(1402, 95, 'IB', 'Islas de la Bahia (Bay Islands)', 1),
(1403, 95, 'PZ', 'La Paz', 1),
(1404, 95, 'LE', 'Lempira', 1),
(1405, 95, 'OC', 'Ocotepeque', 1),
(1406, 95, 'OL', 'Olancho', 1),
(1407, 95, 'SB', 'Santa Barbara', 1),
(1408, 95, 'VA', 'Valle', 1),
(1409, 95, 'YO', 'Yoro', 1),
(1410, 96, 'HCW', 'Central and Western Hong Kong Island', 1),
(1411, 96, 'HEA', 'Eastern Hong Kong Island', 1),
(1412, 96, 'HSO', 'Southern Hong Kong Island', 1),
(1413, 96, 'HWC', 'Wan Chai Hong Kong Island', 1),
(1414, 96, 'KKC', 'Kowloon City Kowloon', 1),
(1415, 96, 'KKT', 'Kwun Tong Kowloon', 1),
(1416, 96, 'KSS', 'Sham Shui Po Kowloon', 1),
(1417, 96, 'KWT', 'Wong Tai Sin Kowloon', 1),
(1418, 96, 'KYT', 'Yau Tsim Mong Kowloon', 1),
(1419, 96, 'NIS', 'Islands New Territories', 1),
(1420, 96, 'NKT', 'Kwai Tsing New Territories', 1),
(1421, 96, 'NNO', 'North New Territories', 1),
(1422, 96, 'NSK', 'Sai Kung New Territories', 1),
(1423, 96, 'NST', 'Sha Tin New Territories', 1),
(1424, 96, 'NTP', 'Tai Po New Territories', 1),
(1425, 96, 'NTW', 'Tsuen Wan New Territories', 1),
(1426, 96, 'NTM', 'Tuen Mun New Territories', 1),
(1427, 96, 'NYL', 'Yuen Long New Territories', 1),
(1428, 97, 'BK', 'Bacs-Kiskun', 1),
(1429, 97, 'BA', 'Baranya', 1),
(1430, 97, 'BE', 'Bekes', 1),
(1431, 97, 'BS', 'Bekescsaba', 1),
(1432, 97, 'BZ', 'Borsod-Abauj-Zemplen', 1),
(1433, 97, 'BU', 'Budapest', 1),
(1434, 97, 'CS', 'Csongrad', 1),
(1435, 97, 'DE', 'Debrecen', 1),
(1436, 97, 'DU', 'Dunaujvaros', 1),
(1437, 97, 'EG', 'Eger', 1),
(1438, 97, 'FE', 'Fejer', 1),
(1439, 97, 'GY', 'Gyor', 1),
(1440, 97, 'GM', 'Gyor-Moson-Sopron', 1),
(1441, 97, 'HB', 'Hajdu-Bihar', 1),
(1442, 97, 'HE', 'Heves', 1),
(1443, 97, 'HO', 'Hodmezovasarhely', 1),
(1444, 97, 'JN', 'Jasz-Nagykun-Szolnok', 1),
(1445, 97, 'KA', 'Kaposvar', 1),
(1446, 97, 'KE', 'Kecskemet', 1),
(1447, 97, 'KO', 'Komarom-Esztergom', 1),
(1448, 97, 'MI', 'Miskolc', 1),
(1449, 97, 'NA', 'Nagykanizsa', 1),
(1450, 97, 'NO', 'Nograd', 1),
(1451, 97, 'NY', 'Nyiregyhaza', 1),
(1452, 97, 'PE', 'Pecs', 1),
(1453, 97, 'PS', 'Pest', 1),
(1454, 97, 'SO', 'Somogy', 1),
(1455, 97, 'SP', 'Sopron', 1),
(1456, 97, 'SS', 'Szabolcs-Szatmar-Bereg', 1),
(1457, 97, 'SZ', 'Szeged', 1),
(1458, 97, 'SE', 'Szekesfehervar', 1),
(1459, 97, 'SL', 'Szolnok', 1),
(1460, 97, 'SM', 'Szombathely', 1),
(1461, 97, 'TA', 'Tatabanya', 1),
(1462, 97, 'TO', 'Tolna', 1),
(1463, 97, 'VA', 'Vas', 1),
(1464, 97, 'VE', 'Veszprem', 1),
(1465, 97, 'ZA', 'Zala', 1),
(1466, 97, 'ZZ', 'Zalaegerszeg', 1),
(1467, 98, 'AL', 'Austurland', 1),
(1468, 98, 'HF', 'Hofuoborgarsvaeoi', 1),
(1469, 98, 'NE', 'Norourland eystra', 1),
(1470, 98, 'NV', 'Norourland vestra', 1),
(1471, 98, 'SL', 'Suourland', 1),
(1472, 98, 'SN', 'Suournes', 1),
(1473, 98, 'VF', 'Vestfiroir', 1),
(1474, 98, 'VL', 'Vesturland', 1),
(1475, 99, 'AN', 'Andaman and Nicobar Islands', 1),
(1476, 99, 'AP', 'Andhra Pradesh', 1),
(1477, 99, 'AR', 'Arunachal Pradesh', 1),
(1478, 99, 'AS', 'Assam', 1),
(1479, 99, 'BI', 'Bihar', 1),
(1480, 99, 'CH', 'Chandigarh', 1),
(1481, 99, 'DA', 'Dadra and Nagar Haveli', 1),
(1482, 99, 'DM', 'Daman and Diu', 1),
(1483, 99, 'DE', 'Delhi', 1),
(1484, 99, 'GO', 'Goa', 1),
(1485, 99, 'GU', 'Gujarat', 1),
(1486, 99, 'HA', 'Haryana', 1),
(1487, 99, 'HP', 'Himachal Pradesh', 1),
(1488, 99, 'JA', 'Jammu and Kashmir', 1),
(1489, 99, 'KA', 'Karnataka', 1),
(1490, 99, 'KE', 'Kerala', 1),
(1491, 99, 'LI', 'Lakshadweep Islands', 1),
(1492, 99, 'MP', 'Madhya Pradesh', 1),
(1493, 99, 'MA', 'Maharashtra', 1),
(1494, 99, 'MN', 'Manipur', 1),
(1495, 99, 'ME', 'Meghalaya', 1),
(1496, 99, 'MI', 'Mizoram', 1),
(1497, 99, 'NA', 'Nagaland', 1),
(1498, 99, 'OR', 'Orissa', 1),
(1499, 99, 'PO', 'Pondicherry', 1),
(1500, 99, 'PU', 'Punjab', 1),
(1501, 99, 'RA', 'Rajasthan', 1),
(1502, 99, 'SI', 'Sikkim', 1),
(1503, 99, 'TN', 'Tamil Nadu', 1),
(1504, 99, 'TR', 'Tripura', 1),
(1505, 99, 'UP', 'Uttar Pradesh', 1),
(1506, 99, 'WB', 'West Bengal', 1),
(1507, 100, 'AC', 'Aceh', 1),
(1508, 100, 'BA', 'Bali', 1),
(1509, 100, 'BT', 'Banten', 1),
(1510, 100, 'BE', 'Bengkulu', 1),
(1511, 100, 'BD', 'BoDeTaBek', 1),
(1512, 100, 'GO', 'Gorontalo', 1),
(1513, 100, 'JK', 'Jakarta Raya', 1),
(1514, 100, 'JA', 'Jambi', 1),
(1515, 100, 'JB', 'Jawa Barat', 1),
(1516, 100, 'JT', 'Jawa Tengah', 1),
(1517, 100, 'JI', 'Jawa Timur', 1),
(1518, 100, 'KB', 'Kalimantan Barat', 1),
(1519, 100, 'KS', 'Kalimantan Selatan', 1),
(1520, 100, 'KT', 'Kalimantan Tengah', 1),
(1521, 100, 'KI', 'Kalimantan Timur', 1),
(1522, 100, 'BB', 'Kepulauan Bangka Belitung', 1),
(1523, 100, 'LA', 'Lampung', 1),
(1524, 100, 'MA', 'Maluku', 1),
(1525, 100, 'MU', 'Maluku Utara', 1),
(1526, 100, 'NB', 'Nusa Tenggara Barat', 1),
(1527, 100, 'NT', 'Nusa Tenggara Timur', 1),
(1528, 100, 'PA', 'Papua', 1),
(1529, 100, 'RI', 'Riau', 1),
(1530, 100, 'SN', 'Sulawesi Selatan', 1),
(1531, 100, 'ST', 'Sulawesi Tengah', 1),
(1532, 100, 'SG', 'Sulawesi Tenggara', 1),
(1533, 100, 'SA', 'Sulawesi Utara', 1),
(1534, 100, 'SB', 'Sumatera Barat', 1),
(1535, 100, 'SS', 'Sumatera Selatan', 1),
(1536, 100, 'SU', 'Sumatera Utara', 1);
INSERT INTO `zone` (`zone_id`, `country_id`, `code`, `name`, `status`) VALUES
(1537, 100, 'YO', 'Yogyakarta', 1),
(1538, 101, 'TEH', 'Tehran', 1),
(1539, 101, 'QOM', 'Qom', 1),
(1540, 101, 'MKZ', 'Markazi', 1),
(1541, 101, 'QAZ', 'Qazvin', 1),
(1542, 101, 'GIL', 'Gilan', 1),
(1543, 101, 'ARD', 'Ardabil', 1),
(1544, 101, 'ZAN', 'Zanjan', 1),
(1545, 101, 'EAZ', 'East Azarbaijan', 1),
(1546, 101, 'WEZ', 'West Azarbaijan', 1),
(1547, 101, 'KRD', 'Kurdistan', 1),
(1548, 101, 'HMD', 'Hamadan', 1),
(1549, 101, 'KRM', 'Kermanshah', 1),
(1550, 101, 'ILM', 'Ilam', 1),
(1551, 101, 'LRS', 'Lorestan', 1),
(1552, 101, 'KZT', 'Khuzestan', 1),
(1553, 101, 'CMB', 'Chahar Mahaal and Bakhtiari', 1),
(1554, 101, 'KBA', 'Kohkiluyeh and Buyer Ahmad', 1),
(1555, 101, 'BSH', 'Bushehr', 1),
(1556, 101, 'FAR', 'Fars', 1),
(1557, 101, 'HRM', 'Hormozgan', 1),
(1558, 101, 'SBL', 'Sistan and Baluchistan', 1),
(1559, 101, 'KRB', 'Kerman', 1),
(1560, 101, 'YZD', 'Yazd', 1),
(1561, 101, 'EFH', 'Esfahan', 1),
(1562, 101, 'SMN', 'Semnan', 1),
(1563, 101, 'MZD', 'Mazandaran', 1),
(1564, 101, 'GLS', 'Golestan', 1),
(1565, 101, 'NKH', 'North Khorasan', 1),
(1566, 101, 'RKH', 'Razavi Khorasan', 1),
(1567, 101, 'SKH', 'South Khorasan', 1),
(1568, 102, 'BD', 'Baghdad', 1),
(1569, 102, 'SD', 'Salah ad Din', 1),
(1570, 102, 'DY', 'Diyala', 1),
(1571, 102, 'WS', 'Wasit', 1),
(1572, 102, 'MY', 'Maysan', 1),
(1573, 102, 'BA', 'Al Basrah', 1),
(1574, 102, 'DQ', 'Dhi Qar', 1),
(1575, 102, 'MU', 'Al Muthanna', 1),
(1576, 102, 'QA', 'Al Qadisyah', 1),
(1577, 102, 'BB', 'Babil', 1),
(1578, 102, 'KB', 'Al Karbala', 1),
(1579, 102, 'NJ', 'An Najaf', 1),
(1580, 102, 'AB', 'Al Anbar', 1),
(1581, 102, 'NN', 'Ninawa', 1),
(1582, 102, 'DH', 'Dahuk', 1),
(1583, 102, 'AL', 'Arbil', 1),
(1584, 102, 'TM', 'At Ta''mim', 1),
(1585, 102, 'SL', 'As Sulaymaniyah', 1),
(1586, 103, 'CA', 'Carlow', 1),
(1587, 103, 'CV', 'Cavan', 1),
(1588, 103, 'CL', 'Clare', 1),
(1589, 103, 'CO', 'Cork', 1),
(1590, 103, 'DO', 'Donegal', 1),
(1591, 103, 'DU', 'Dublin', 1),
(1592, 103, 'GA', 'Galway', 1),
(1593, 103, 'KE', 'Kerry', 1),
(1594, 103, 'KI', 'Kildare', 1),
(1595, 103, 'KL', 'Kilkenny', 1),
(1596, 103, 'LA', 'Laois', 1),
(1597, 103, 'LE', 'Leitrim', 1),
(1598, 103, 'LI', 'Limerick', 1),
(1599, 103, 'LO', 'Longford', 1),
(1600, 103, 'LU', 'Louth', 1),
(1601, 103, 'MA', 'Mayo', 1),
(1602, 103, 'ME', 'Meath', 1),
(1603, 103, 'MO', 'Monaghan', 1),
(1604, 103, 'OF', 'Offaly', 1),
(1605, 103, 'RO', 'Roscommon', 1),
(1606, 103, 'SL', 'Sligo', 1),
(1607, 103, 'TI', 'Tipperary', 1),
(1608, 103, 'WA', 'Waterford', 1),
(1609, 103, 'WE', 'Westmeath', 1),
(1610, 103, 'WX', 'Wexford', 1),
(1611, 103, 'WI', 'Wicklow', 1),
(1612, 104, 'BS', 'Be''er Sheva', 1),
(1613, 104, 'BH', 'Bika''at Hayarden', 1),
(1614, 104, 'EA', 'Eilat and Arava', 1),
(1615, 104, 'GA', 'Galil', 1),
(1616, 104, 'HA', 'Haifa', 1),
(1617, 104, 'JM', 'Jehuda Mountains', 1),
(1618, 104, 'JE', 'Jerusalem', 1),
(1619, 104, 'NE', 'Negev', 1),
(1620, 104, 'SE', 'Semaria', 1),
(1621, 104, 'SH', 'Sharon', 1),
(1622, 104, 'TA', 'Tel Aviv (Gosh Dan)', 1),
(3860, 105, 'CL', 'Caltanissetta', 1),
(3842, 105, 'AG', 'Agrigento', 1),
(3843, 105, 'AL', 'Alessandria', 1),
(3844, 105, 'AN', 'Ancona', 1),
(3845, 105, 'AO', 'Aosta', 1),
(3846, 105, 'AR', 'Arezzo', 1),
(3847, 105, 'AP', 'Ascoli Piceno', 1),
(3848, 105, 'AT', 'Asti', 1),
(3849, 105, 'AV', 'Avellino', 1),
(3850, 105, 'BA', 'Bari', 1),
(3851, 105, 'BL', 'Belluno', 1),
(3852, 105, 'BN', 'Benevento', 1),
(3853, 105, 'BG', 'Bergamo', 1),
(3854, 105, 'BI', 'Biella', 1),
(3855, 105, 'BO', 'Bologna', 1),
(3856, 105, 'BZ', 'Bolzano', 1),
(3857, 105, 'BS', 'Brescia', 1),
(3858, 105, 'BR', 'Brindisi', 1),
(3859, 105, 'CA', 'Cagliari', 1),
(1643, 106, 'CLA', 'Clarendon Parish', 1),
(1644, 106, 'HAN', 'Hanover Parish', 1),
(1645, 106, 'KIN', 'Kingston Parish', 1),
(1646, 106, 'MAN', 'Manchester Parish', 1),
(1647, 106, 'POR', 'Portland Parish', 1),
(1648, 106, 'AND', 'Saint Andrew Parish', 1),
(1649, 106, 'ANN', 'Saint Ann Parish', 1),
(1650, 106, 'CAT', 'Saint Catherine Parish', 1),
(1651, 106, 'ELI', 'Saint Elizabeth Parish', 1),
(1652, 106, 'JAM', 'Saint James Parish', 1),
(1653, 106, 'MAR', 'Saint Mary Parish', 1),
(1654, 106, 'THO', 'Saint Thomas Parish', 1),
(1655, 106, 'TRL', 'Trelawny Parish', 1),
(1656, 106, 'WML', 'Westmoreland Parish', 1),
(1657, 107, 'AI', 'Aichi', 1),
(1658, 107, 'AK', 'Akita', 1),
(1659, 107, 'AO', 'Aomori', 1),
(1660, 107, 'CH', 'Chiba', 1),
(1661, 107, 'EH', 'Ehime', 1),
(1662, 107, 'FK', 'Fukui', 1),
(1663, 107, 'FU', 'Fukuoka', 1),
(1664, 107, 'FS', 'Fukushima', 1),
(1665, 107, 'GI', 'Gifu', 1),
(1666, 107, 'GU', 'Gumma', 1),
(1667, 107, 'HI', 'Hiroshima', 1),
(1668, 107, 'HO', 'Hokkaido', 1),
(1669, 107, 'HY', 'Hyogo', 1),
(1670, 107, 'IB', 'Ibaraki', 1),
(1671, 107, 'IS', 'Ishikawa', 1),
(1672, 107, 'IW', 'Iwate', 1),
(1673, 107, 'KA', 'Kagawa', 1),
(1674, 107, 'KG', 'Kagoshima', 1),
(1675, 107, 'KN', 'Kanagawa', 1),
(1676, 107, 'KO', 'Kochi', 1),
(1677, 107, 'KU', 'Kumamoto', 1),
(1678, 107, 'KY', 'Kyoto', 1),
(1679, 107, 'MI', 'Mie', 1),
(1680, 107, 'MY', 'Miyagi', 1),
(1681, 107, 'MZ', 'Miyazaki', 1),
(1682, 107, 'NA', 'Nagano', 1),
(1683, 107, 'NG', 'Nagasaki', 1),
(1684, 107, 'NR', 'Nara', 1),
(1685, 107, 'NI', 'Niigata', 1),
(1686, 107, 'OI', 'Oita', 1),
(1687, 107, 'OK', 'Okayama', 1),
(1688, 107, 'ON', 'Okinawa', 1),
(1689, 107, 'OS', 'Osaka', 1),
(1690, 107, 'SA', 'Saga', 1),
(1691, 107, 'SI', 'Saitama', 1),
(1692, 107, 'SH', 'Shiga', 1),
(1693, 107, 'SM', 'Shimane', 1),
(1694, 107, 'SZ', 'Shizuoka', 1),
(1695, 107, 'TO', 'Tochigi', 1),
(1696, 107, 'TS', 'Tokushima', 1),
(1697, 107, 'TK', 'Tokyo', 1),
(1698, 107, 'TT', 'Tottori', 1),
(1699, 107, 'TY', 'Toyama', 1),
(1700, 107, 'WA', 'Wakayama', 1),
(1701, 107, 'YA', 'Yamagata', 1),
(1702, 107, 'YM', 'Yamaguchi', 1),
(1703, 107, 'YN', 'Yamanashi', 1),
(1704, 108, 'AM', '''Amman', 1),
(1705, 108, 'AJ', 'Ajlun', 1),
(1706, 108, 'AA', 'Al ''Aqabah', 1),
(1707, 108, 'AB', 'Al Balqa''', 1),
(1708, 108, 'AK', 'Al Karak', 1),
(1709, 108, 'AL', 'Al Mafraq', 1),
(1710, 108, 'AT', 'At Tafilah', 1),
(1711, 108, 'AZ', 'Az Zarqa''', 1),
(1712, 108, 'IR', 'Irbid', 1),
(1713, 108, 'JA', 'Jarash', 1),
(1714, 108, 'MA', 'Ma''an', 1),
(1715, 108, 'MD', 'Madaba', 1),
(1716, 109, 'AL', 'Almaty', 1),
(1717, 109, 'AC', 'Almaty City', 1),
(1718, 109, 'AM', 'Aqmola', 1),
(1719, 109, 'AQ', 'Aqtobe', 1),
(1720, 109, 'AS', 'Astana City', 1),
(1721, 109, 'AT', 'Atyrau', 1),
(1722, 109, 'BA', 'Batys Qazaqstan', 1),
(1723, 109, 'BY', 'Bayqongyr City', 1),
(1724, 109, 'MA', 'Mangghystau', 1),
(1725, 109, 'ON', 'Ongtustik Qazaqstan', 1),
(1726, 109, 'PA', 'Pavlodar', 1),
(1727, 109, 'QA', 'Qaraghandy', 1),
(1728, 109, 'QO', 'Qostanay', 1),
(1729, 109, 'QY', 'Qyzylorda', 1),
(1730, 109, 'SH', 'Shyghys Qazaqstan', 1),
(1731, 109, 'SO', 'Soltustik Qazaqstan', 1),
(1732, 109, 'ZH', 'Zhambyl', 1),
(1733, 110, 'CE', 'Central', 1),
(1734, 110, 'CO', 'Coast', 1),
(1735, 110, 'EA', 'Eastern', 1),
(1736, 110, 'NA', 'Nairobi Area', 1),
(1737, 110, 'NE', 'North Eastern', 1),
(1738, 110, 'NY', 'Nyanza', 1),
(1739, 110, 'RV', 'Rift Valley', 1),
(1740, 110, 'WE', 'Western', 1),
(1741, 111, 'AG', 'Abaiang', 1),
(1742, 111, 'AM', 'Abemama', 1),
(1743, 111, 'AK', 'Aranuka', 1),
(1744, 111, 'AO', 'Arorae', 1),
(1745, 111, 'BA', 'Banaba', 1),
(1746, 111, 'BE', 'Beru', 1),
(1747, 111, 'bT', 'Butaritari', 1),
(1748, 111, 'KA', 'Kanton', 1),
(1749, 111, 'KR', 'Kiritimati', 1),
(1750, 111, 'KU', 'Kuria', 1),
(1751, 111, 'MI', 'Maiana', 1),
(1752, 111, 'MN', 'Makin', 1),
(1753, 111, 'ME', 'Marakei', 1),
(1754, 111, 'NI', 'Nikunau', 1),
(1755, 111, 'NO', 'Nonouti', 1),
(1756, 111, 'ON', 'Onotoa', 1),
(1757, 111, 'TT', 'Tabiteuea', 1),
(1758, 111, 'TR', 'Tabuaeran', 1),
(1759, 111, 'TM', 'Tamana', 1),
(1760, 111, 'TW', 'Tarawa', 1),
(1761, 111, 'TE', 'Teraina', 1),
(1762, 112, 'CHA', 'Chagang-do', 1),
(1763, 112, 'HAB', 'Hamgyong-bukto', 1),
(1764, 112, 'HAN', 'Hamgyong-namdo', 1),
(1765, 112, 'HWB', 'Hwanghae-bukto', 1),
(1766, 112, 'HWN', 'Hwanghae-namdo', 1),
(1767, 112, 'KAN', 'Kangwon-do', 1),
(1768, 112, 'PYB', 'P''yongan-bukto', 1),
(1769, 112, 'PYN', 'P''yongan-namdo', 1),
(1770, 112, 'YAN', 'Ryanggang-do (Yanggang-do)', 1),
(1771, 112, 'NAJ', 'Rason Directly Governed City', 1),
(1772, 112, 'PYO', 'P''yongyang Special City', 1),
(1773, 113, 'CO', 'Ch''ungch''ong-bukto', 1),
(1774, 113, 'CH', 'Ch''ungch''ong-namdo', 1),
(1775, 113, 'CD', 'Cheju-do', 1),
(1776, 113, 'CB', 'Cholla-bukto', 1),
(1777, 113, 'CN', 'Cholla-namdo', 1),
(1778, 113, 'IG', 'Inch''on-gwangyoksi', 1),
(1779, 113, 'KA', 'Kangwon-do', 1),
(1780, 113, 'KG', 'Kwangju-gwangyoksi', 1),
(1781, 113, 'KD', 'Kyonggi-do', 1),
(1782, 113, 'KB', 'Kyongsang-bukto', 1),
(1783, 113, 'KN', 'Kyongsang-namdo', 1),
(1784, 113, 'PG', 'Pusan-gwangyoksi', 1),
(1785, 113, 'SO', 'Soul-t''ukpyolsi', 1),
(1786, 113, 'TA', 'Taegu-gwangyoksi', 1),
(1787, 113, 'TG', 'Taejon-gwangyoksi', 1),
(1788, 114, 'AL', 'Al ''Asimah', 1),
(1789, 114, 'AA', 'Al Ahmadi', 1),
(1790, 114, 'AF', 'Al Farwaniyah', 1),
(1791, 114, 'AJ', 'Al Jahra''', 1),
(1792, 114, 'HA', 'Hawalli', 1),
(1793, 115, 'GB', 'Bishkek', 1),
(1794, 115, 'B', 'Batken', 1),
(1795, 115, 'C', 'Chu', 1),
(1796, 115, 'J', 'Jalal-Abad', 1),
(1797, 115, 'N', 'Naryn', 1),
(1798, 115, 'O', 'Osh', 1),
(1799, 115, 'T', 'Talas', 1),
(1800, 115, 'Y', 'Ysyk-Kol', 1),
(1801, 116, 'VT', 'Vientiane', 1),
(1802, 116, 'AT', 'Attapu', 1),
(1803, 116, 'BK', 'Bokeo', 1),
(1804, 116, 'BL', 'Bolikhamxai', 1),
(1805, 116, 'CH', 'Champasak', 1),
(1806, 116, 'HO', 'Houaphan', 1),
(1807, 116, 'KH', 'Khammouan', 1),
(1808, 116, 'LM', 'Louang Namtha', 1),
(1809, 116, 'LP', 'Louangphabang', 1),
(1810, 116, 'OU', 'Oudomxai', 1),
(1811, 116, 'PH', 'Phongsali', 1),
(1812, 116, 'SL', 'Salavan', 1),
(1813, 116, 'SV', 'Savannakhet', 1),
(1814, 116, 'VI', 'Vientiane', 1),
(1815, 116, 'XA', 'Xaignabouli', 1),
(1816, 116, 'XE', 'Xekong', 1),
(1817, 116, 'XI', 'Xiangkhoang', 1),
(1818, 116, 'XN', 'Xaisomboun', 1),
(1819, 117, 'AIZ', 'Aizkraukles Rajons', 1),
(1820, 117, 'ALU', 'Aluksnes Rajons', 1),
(1821, 117, 'BAL', 'Balvu Rajons', 1),
(1822, 117, 'BAU', 'Bauskas Rajons', 1),
(1823, 117, 'CES', 'Cesu Rajons', 1),
(1824, 117, 'DGR', 'Daugavpils Rajons', 1),
(1825, 117, 'DOB', 'Dobeles Rajons', 1),
(1826, 117, 'GUL', 'Gulbenes Rajons', 1),
(1827, 117, 'JEK', 'Jekabpils Rajons', 1),
(1828, 117, 'JGR', 'Jelgavas Rajons', 1),
(1829, 117, 'KRA', 'Kraslavas Rajons', 1),
(1830, 117, 'KUL', 'Kuldigas Rajons', 1),
(1831, 117, 'LPR', 'Liepajas Rajons', 1),
(1832, 117, 'LIM', 'Limbazu Rajons', 1),
(1833, 117, 'LUD', 'Ludzas Rajons', 1),
(1834, 117, 'MAD', 'Madonas Rajons', 1),
(1835, 117, 'OGR', 'Ogres Rajons', 1),
(1836, 117, 'PRE', 'Preilu Rajons', 1),
(1837, 117, 'RZR', 'Rezeknes Rajons', 1),
(1838, 117, 'RGR', 'Rigas Rajons', 1),
(1839, 117, 'SAL', 'Saldus Rajons', 1),
(1840, 117, 'TAL', 'Talsu Rajons', 1),
(1841, 117, 'TUK', 'Tukuma Rajons', 1),
(1842, 117, 'VLK', 'Valkas Rajons', 1),
(1843, 117, 'VLM', 'Valmieras Rajons', 1),
(1844, 117, 'VSR', 'Ventspils Rajons', 1),
(1845, 117, 'DGV', 'Daugavpils', 1),
(1846, 117, 'JGV', 'Jelgava', 1),
(1847, 117, 'JUR', 'Jurmala', 1),
(1848, 117, 'LPK', 'Liepaja', 1),
(1849, 117, 'RZK', 'Rezekne', 1),
(1850, 117, 'RGA', 'Riga', 1),
(1851, 117, 'VSL', 'Ventspils', 1),
(1852, 119, 'BE', 'Berea', 1),
(1853, 119, 'BB', 'Butha-Buthe', 1),
(1854, 119, 'LE', 'Leribe', 1),
(1855, 119, 'MF', 'Mafeteng', 1),
(1856, 119, 'MS', 'Maseru', 1),
(1857, 119, 'MH', 'Mohale''s Hoek', 1),
(1858, 119, 'MK', 'Mokhotlong', 1),
(1859, 119, 'QN', 'Qacha''s Nek', 1),
(1860, 119, 'QT', 'Quthing', 1),
(1861, 119, 'TT', 'Thaba-Tseka', 1),
(1862, 120, 'BI', 'Bomi', 1),
(1863, 120, 'BG', 'Bong', 1),
(1864, 120, 'GB', 'Grand Bassa', 1),
(1865, 120, 'CM', 'Grand Cape Mount', 1),
(1866, 120, 'GG', 'Grand Gedeh', 1),
(1867, 120, 'GK', 'Grand Kru', 1),
(1868, 120, 'LO', 'Lofa', 1),
(1869, 120, 'MG', 'Margibi', 1),
(1870, 120, 'ML', 'Maryland', 1),
(1871, 120, 'MS', 'Montserrado', 1),
(1872, 120, 'NB', 'Nimba', 1),
(1873, 120, 'RC', 'River Cess', 1),
(1874, 120, 'SN', 'Sinoe', 1),
(1875, 121, 'AJ', 'Ajdabiya', 1),
(1876, 121, 'AZ', 'Al ''Aziziyah', 1),
(1877, 121, 'FA', 'Al Fatih', 1),
(1878, 121, 'JA', 'Al Jabal al Akhdar', 1),
(1879, 121, 'JU', 'Al Jufrah', 1),
(1880, 121, 'KH', 'Al Khums', 1),
(1881, 121, 'KU', 'Al Kufrah', 1),
(1882, 121, 'NK', 'An Nuqat al Khams', 1),
(1883, 121, 'AS', 'Ash Shati''', 1),
(1884, 121, 'AW', 'Awbari', 1),
(1885, 121, 'ZA', 'Az Zawiyah', 1),
(1886, 121, 'BA', 'Banghazi', 1),
(1887, 121, 'DA', 'Darnah', 1),
(1888, 121, 'GD', 'Ghadamis', 1),
(1889, 121, 'GY', 'Gharyan', 1),
(1890, 121, 'MI', 'Misratah', 1),
(1891, 121, 'MZ', 'Murzuq', 1),
(1892, 121, 'SB', 'Sabha', 1),
(1893, 121, 'SW', 'Sawfajjin', 1),
(1894, 121, 'SU', 'Surt', 1),
(1895, 121, 'TL', 'Tarabulus (Tripoli)', 1),
(1896, 121, 'TH', 'Tarhunah', 1),
(1897, 121, 'TU', 'Tubruq', 1),
(1898, 121, 'YA', 'Yafran', 1),
(1899, 121, 'ZL', 'Zlitan', 1),
(1900, 122, 'V', 'Vaduz', 1),
(1901, 122, 'A', 'Schaan', 1),
(1902, 122, 'B', 'Balzers', 1),
(1903, 122, 'N', 'Triesen', 1),
(1904, 122, 'E', 'Eschen', 1),
(1905, 122, 'M', 'Mauren', 1),
(1906, 122, 'T', 'Triesenberg', 1),
(1907, 122, 'R', 'Ruggell', 1),
(1908, 122, 'G', 'Gamprin', 1),
(1909, 122, 'L', 'Schellenberg', 1),
(1910, 122, 'P', 'Planken', 1),
(1911, 123, 'AL', 'Alytus', 1),
(1912, 123, 'KA', 'Kaunas', 1),
(1913, 123, 'KL', 'Klaipeda', 1),
(1914, 123, 'MA', 'Marijampole', 1),
(1915, 123, 'PA', 'Panevezys', 1),
(1916, 123, 'SI', 'Siauliai', 1),
(1917, 123, 'TA', 'Taurage', 1),
(1918, 123, 'TE', 'Telsiai', 1),
(1919, 123, 'UT', 'Utena', 1),
(1920, 123, 'VI', 'Vilnius', 1),
(1921, 124, 'DD', 'Diekirch', 1),
(1922, 124, 'DC', 'Clervaux', 1),
(1923, 124, 'DR', 'Redange', 1),
(1924, 124, 'DV', 'Vianden', 1),
(1925, 124, 'DW', 'Wiltz', 1),
(1926, 124, 'GG', 'Grevenmacher', 1),
(1927, 124, 'GE', 'Echternach', 1),
(1928, 124, 'GR', 'Remich', 1),
(1929, 124, 'LL', 'Luxembourg', 1),
(1930, 124, 'LC', 'Capellen', 1),
(1931, 124, 'LE', 'Esch-sur-Alzette', 1),
(1932, 124, 'LM', 'Mersch', 1),
(1933, 125, 'OLF', 'Our Lady Fatima Parish', 1),
(1934, 125, 'ANT', 'St. Anthony Parish', 1),
(1935, 125, 'LAZ', 'St. Lazarus Parish', 1),
(1936, 125, 'CAT', 'Cathedral Parish', 1),
(1937, 125, 'LAW', 'St. Lawrence Parish', 1),
(1938, 127, 'AN', 'Antananarivo', 1),
(1939, 127, 'AS', 'Antsiranana', 1),
(1940, 127, 'FN', 'Fianarantsoa', 1),
(1941, 127, 'MJ', 'Mahajanga', 1),
(1942, 127, 'TM', 'Toamasina', 1),
(1943, 127, 'TL', 'Toliara', 1),
(1944, 128, 'BLK', 'Balaka', 1),
(1945, 128, 'BLT', 'Blantyre', 1),
(1946, 128, 'CKW', 'Chikwawa', 1),
(1947, 128, 'CRD', 'Chiradzulu', 1),
(1948, 128, 'CTP', 'Chitipa', 1),
(1949, 128, 'DDZ', 'Dedza', 1),
(1950, 128, 'DWA', 'Dowa', 1),
(1951, 128, 'KRG', 'Karonga', 1),
(1952, 128, 'KSG', 'Kasungu', 1),
(1953, 128, 'LKM', 'Likoma', 1),
(1954, 128, 'LLG', 'Lilongwe', 1),
(1955, 128, 'MCG', 'Machinga', 1),
(1956, 128, 'MGC', 'Mangochi', 1),
(1957, 128, 'MCH', 'Mchinji', 1),
(1958, 128, 'MLJ', 'Mulanje', 1),
(1959, 128, 'MWZ', 'Mwanza', 1),
(1960, 128, 'MZM', 'Mzimba', 1),
(1961, 128, 'NTU', 'Ntcheu', 1),
(1962, 128, 'NKB', 'Nkhata Bay', 1),
(1963, 128, 'NKH', 'Nkhotakota', 1),
(1964, 128, 'NSJ', 'Nsanje', 1),
(1965, 128, 'NTI', 'Ntchisi', 1),
(1966, 128, 'PHL', 'Phalombe', 1),
(1967, 128, 'RMP', 'Rumphi', 1),
(1968, 128, 'SLM', 'Salima', 1),
(1969, 128, 'THY', 'Thyolo', 1),
(1970, 128, 'ZBA', 'Zomba', 1),
(1971, 129, 'JO', 'Johor', 1),
(1972, 129, 'KE', 'Kedah', 1),
(1973, 129, 'KL', 'Kelantan', 1),
(1974, 129, 'LA', 'Labuan', 1),
(1975, 129, 'ME', 'Melaka', 1),
(1976, 129, 'NS', 'Negeri Sembilan', 1),
(1977, 129, 'PA', 'Pahang', 1),
(1978, 129, 'PE', 'Perak', 1),
(1979, 129, 'PR', 'Perlis', 1),
(1980, 129, 'PP', 'Pulau Pinang', 1),
(1981, 129, 'SA', 'Sabah', 1),
(1982, 129, 'SR', 'Sarawak', 1),
(1983, 129, 'SE', 'Selangor', 1),
(1984, 129, 'TE', 'Terengganu', 1),
(1985, 129, 'WP', 'Wilayah Persekutuan', 1),
(1986, 130, 'THU', 'Thiladhunmathi Uthuru', 1),
(1987, 130, 'THD', 'Thiladhunmathi Dhekunu', 1),
(1988, 130, 'MLU', 'Miladhunmadulu Uthuru', 1),
(1989, 130, 'MLD', 'Miladhunmadulu Dhekunu', 1),
(1990, 130, 'MAU', 'Maalhosmadulu Uthuru', 1),
(1991, 130, 'MAD', 'Maalhosmadulu Dhekunu', 1),
(1992, 130, 'FAA', 'Faadhippolhu', 1),
(1993, 130, 'MAA', 'Male Atoll', 1),
(1994, 130, 'AAU', 'Ari Atoll Uthuru', 1),
(1995, 130, 'AAD', 'Ari Atoll Dheknu', 1),
(1996, 130, 'FEA', 'Felidhe Atoll', 1),
(1997, 130, 'MUA', 'Mulaku Atoll', 1),
(1998, 130, 'NAU', 'Nilandhe Atoll Uthuru', 1),
(1999, 130, 'NAD', 'Nilandhe Atoll Dhekunu', 1),
(2000, 130, 'KLH', 'Kolhumadulu', 1),
(2001, 130, 'HDH', 'Hadhdhunmathi', 1),
(2002, 130, 'HAU', 'Huvadhu Atoll Uthuru', 1),
(2003, 130, 'HAD', 'Huvadhu Atoll Dhekunu', 1),
(2004, 130, 'FMU', 'Fua Mulaku', 1),
(2005, 130, 'ADD', 'Addu', 1),
(2006, 131, 'GA', 'Gao', 1),
(2007, 131, 'KY', 'Kayes', 1),
(2008, 131, 'KD', 'Kidal', 1),
(2009, 131, 'KL', 'Koulikoro', 1),
(2010, 131, 'MP', 'Mopti', 1),
(2011, 131, 'SG', 'Segou', 1),
(2012, 131, 'SK', 'Sikasso', 1),
(2013, 131, 'TB', 'Tombouctou', 1),
(2014, 131, 'CD', 'Bamako Capital District', 1),
(2015, 132, 'ATT', 'Attard', 1),
(2016, 132, 'BAL', 'Balzan', 1),
(2017, 132, 'BGU', 'Birgu', 1),
(2018, 132, 'BKK', 'Birkirkara', 1),
(2019, 132, 'BRZ', 'Birzebbuga', 1),
(2020, 132, 'BOR', 'Bormla', 1),
(2021, 132, 'DIN', 'Dingli', 1),
(2022, 132, 'FGU', 'Fgura', 1),
(2023, 132, 'FLO', 'Floriana', 1),
(2024, 132, 'GDJ', 'Gudja', 1),
(2025, 132, 'GZR', 'Gzira', 1),
(2026, 132, 'GRG', 'Gargur', 1),
(2027, 132, 'GXQ', 'Gaxaq', 1),
(2028, 132, 'HMR', 'Hamrun', 1),
(2029, 132, 'IKL', 'Iklin', 1),
(2030, 132, 'ISL', 'Isla', 1),
(2031, 132, 'KLK', 'Kalkara', 1),
(2032, 132, 'KRK', 'Kirkop', 1),
(2033, 132, 'LIJ', 'Lija', 1),
(2034, 132, 'LUQ', 'Luqa', 1),
(2035, 132, 'MRS', 'Marsa', 1),
(2036, 132, 'MKL', 'Marsaskala', 1),
(2037, 132, 'MXL', 'Marsaxlokk', 1),
(2038, 132, 'MDN', 'Mdina', 1),
(2039, 132, 'MEL', 'Melliea', 1),
(2040, 132, 'MGR', 'Mgarr', 1),
(2041, 132, 'MST', 'Mosta', 1),
(2042, 132, 'MQA', 'Mqabba', 1),
(2043, 132, 'MSI', 'Msida', 1),
(2044, 132, 'MTF', 'Mtarfa', 1),
(2045, 132, 'NAX', 'Naxxar', 1),
(2046, 132, 'PAO', 'Paola', 1),
(2047, 132, 'PEM', 'Pembroke', 1),
(2048, 132, 'PIE', 'Pieta', 1),
(2049, 132, 'QOR', 'Qormi', 1),
(2050, 132, 'QRE', 'Qrendi', 1),
(2051, 132, 'RAB', 'Rabat', 1),
(2052, 132, 'SAF', 'Safi', 1),
(2053, 132, 'SGI', 'San Giljan', 1),
(2054, 132, 'SLU', 'Santa Lucija', 1),
(2055, 132, 'SPB', 'San Pawl il-Bahar', 1),
(2056, 132, 'SGW', 'San Gwann', 1),
(2057, 132, 'SVE', 'Santa Venera', 1),
(2058, 132, 'SIG', 'Siggiewi', 1),
(2059, 132, 'SLM', 'Sliema', 1),
(2060, 132, 'SWQ', 'Swieqi', 1),
(2061, 132, 'TXB', 'Ta Xbiex', 1),
(2062, 132, 'TRX', 'Tarxien', 1),
(2063, 132, 'VLT', 'Valletta', 1),
(2064, 132, 'XGJ', 'Xgajra', 1),
(2065, 132, 'ZBR', 'Zabbar', 1),
(2066, 132, 'ZBG', 'Zebbug', 1),
(2067, 132, 'ZJT', 'Zejtun', 1),
(2068, 132, 'ZRQ', 'Zurrieq', 1),
(2069, 132, 'FNT', 'Fontana', 1),
(2070, 132, 'GHJ', 'Ghajnsielem', 1),
(2071, 132, 'GHR', 'Gharb', 1),
(2072, 132, 'GHS', 'Ghasri', 1),
(2073, 132, 'KRC', 'Kercem', 1),
(2074, 132, 'MUN', 'Munxar', 1),
(2075, 132, 'NAD', 'Nadur', 1),
(2076, 132, 'QAL', 'Qala', 1),
(2077, 132, 'VIC', 'Victoria', 1),
(2078, 132, 'SLA', 'San Lawrenz', 1),
(2079, 132, 'SNT', 'Sannat', 1),
(2080, 132, 'ZAG', 'Xagra', 1),
(2081, 132, 'XEW', 'Xewkija', 1),
(2082, 132, 'ZEB', 'Zebbug', 1),
(2083, 133, 'ALG', 'Ailinginae', 1),
(2084, 133, 'ALL', 'Ailinglaplap', 1),
(2085, 133, 'ALK', 'Ailuk', 1),
(2086, 133, 'ARN', 'Arno', 1),
(2087, 133, 'AUR', 'Aur', 1),
(2088, 133, 'BKR', 'Bikar', 1),
(2089, 133, 'BKN', 'Bikini', 1),
(2090, 133, 'BKK', 'Bokak', 1),
(2091, 133, 'EBN', 'Ebon', 1),
(2092, 133, 'ENT', 'Enewetak', 1),
(2093, 133, 'EKB', 'Erikub', 1),
(2094, 133, 'JBT', 'Jabat', 1),
(2095, 133, 'JLT', 'Jaluit', 1),
(2096, 133, 'JEM', 'Jemo', 1),
(2097, 133, 'KIL', 'Kili', 1),
(2098, 133, 'KWJ', 'Kwajalein', 1),
(2099, 133, 'LAE', 'Lae', 1),
(2100, 133, 'LIB', 'Lib', 1),
(2101, 133, 'LKP', 'Likiep', 1),
(2102, 133, 'MJR', 'Majuro', 1),
(2103, 133, 'MLP', 'Maloelap', 1),
(2104, 133, 'MJT', 'Mejit', 1),
(2105, 133, 'MIL', 'Mili', 1),
(2106, 133, 'NMK', 'Namorik', 1),
(2107, 133, 'NAM', 'Namu', 1),
(2108, 133, 'RGL', 'Rongelap', 1),
(2109, 133, 'RGK', 'Rongrik', 1),
(2110, 133, 'TOK', 'Toke', 1),
(2111, 133, 'UJA', 'Ujae', 1),
(2112, 133, 'UJL', 'Ujelang', 1),
(2113, 133, 'UTK', 'Utirik', 1),
(2114, 133, 'WTH', 'Wotho', 1),
(2115, 133, 'WTJ', 'Wotje', 1),
(2116, 135, 'AD', 'Adrar', 1),
(2117, 135, 'AS', 'Assaba', 1),
(2118, 135, 'BR', 'Brakna', 1),
(2119, 135, 'DN', 'Dakhlet Nouadhibou', 1),
(2120, 135, 'GO', 'Gorgol', 1),
(2121, 135, 'GM', 'Guidimaka', 1),
(2122, 135, 'HC', 'Hodh Ech Chargui', 1),
(2123, 135, 'HG', 'Hodh El Gharbi', 1),
(2124, 135, 'IN', 'Inchiri', 1),
(2125, 135, 'TA', 'Tagant', 1),
(2126, 135, 'TZ', 'Tiris Zemmour', 1),
(2127, 135, 'TR', 'Trarza', 1),
(2128, 135, 'NO', 'Nouakchott', 1),
(2129, 136, 'BR', 'Beau Bassin-Rose Hill', 1),
(2130, 136, 'CU', 'Curepipe', 1),
(2131, 136, 'PU', 'Port Louis', 1),
(2132, 136, 'QB', 'Quatre Bornes', 1),
(2133, 136, 'VP', 'Vacoas-Phoenix', 1),
(2134, 136, 'AG', 'Agalega Islands', 1),
(2135, 136, 'CC', 'Cargados Carajos Shoals (Saint Brandon Islands)', 1),
(2136, 136, 'RO', 'Rodrigues', 1),
(2137, 136, 'BL', 'Black River', 1),
(2138, 136, 'FL', 'Flacq', 1),
(2139, 136, 'GP', 'Grand Port', 1),
(2140, 136, 'MO', 'Moka', 1),
(2141, 136, 'PA', 'Pamplemousses', 1),
(2142, 136, 'PW', 'Plaines Wilhems', 1),
(2143, 136, 'PL', 'Port Louis', 1),
(2144, 136, 'RR', 'Riviere du Rempart', 1),
(2145, 136, 'SA', 'Savanne', 1),
(2146, 138, 'BN', 'Baja California Norte', 1),
(2147, 138, 'BS', 'Baja California Sur', 1),
(2148, 138, 'CA', 'Campeche', 1),
(2149, 138, 'CI', 'Chiapas', 1),
(2150, 138, 'CH', 'Chihuahua', 1),
(2151, 138, 'CZ', 'Coahuila de Zaragoza', 1),
(2152, 138, 'CL', 'Colima', 1),
(2153, 138, 'DF', 'Distrito Federal', 1),
(2154, 138, 'DU', 'Durango', 1),
(2155, 138, 'GA', 'Guanajuato', 1),
(2156, 138, 'GE', 'Guerrero', 1),
(2157, 138, 'HI', 'Hidalgo', 1),
(2158, 138, 'JA', 'Jalisco', 1),
(2159, 138, 'ME', 'Mexico', 1),
(2160, 138, 'MI', 'Michoacan de Ocampo', 1),
(2161, 138, 'MO', 'Morelos', 1),
(2162, 138, 'NA', 'Nayarit', 1),
(2163, 138, 'NL', 'Nuevo Leon', 1),
(2164, 138, 'OA', 'Oaxaca', 1),
(2165, 138, 'PU', 'Puebla', 1),
(2166, 138, 'QA', 'Queretaro de Arteaga', 1),
(2167, 138, 'QR', 'Quintana Roo', 1),
(2168, 138, 'SA', 'San Luis Potosi', 1),
(2169, 138, 'SI', 'Sinaloa', 1),
(2170, 138, 'SO', 'Sonora', 1),
(2171, 138, 'TB', 'Tabasco', 1),
(2172, 138, 'TM', 'Tamaulipas', 1),
(2173, 138, 'TL', 'Tlaxcala', 1),
(2174, 138, 'VE', 'Veracruz-Llave', 1),
(2175, 138, 'YU', 'Yucatan', 1),
(2176, 138, 'ZA', 'Zacatecas', 1),
(2177, 139, 'C', 'Chuuk', 1),
(2178, 139, 'K', 'Kosrae', 1),
(2179, 139, 'P', 'Pohnpei', 1),
(2180, 139, 'Y', 'Yap', 1),
(2181, 140, 'GA', 'Gagauzia', 1),
(2182, 140, 'CU', 'Chisinau', 1),
(2183, 140, 'BA', 'Balti', 1),
(2184, 140, 'CA', 'Cahul', 1),
(2185, 140, 'ED', 'Edinet', 1),
(2186, 140, 'LA', 'Lapusna', 1),
(2187, 140, 'OR', 'Orhei', 1),
(2188, 140, 'SO', 'Soroca', 1),
(2189, 140, 'TI', 'Tighina', 1),
(2190, 140, 'UN', 'Ungheni', 1),
(2191, 140, 'SN', 'St‚nga Nistrului', 1),
(2192, 141, 'FV', 'Fontvieille', 1),
(2193, 141, 'LC', 'La Condamine', 1),
(2194, 141, 'MV', 'Monaco-Ville', 1),
(2195, 141, 'MC', 'Monte-Carlo', 1),
(2196, 142, '1', 'Ulanbaatar', 1),
(2197, 142, '035', 'Orhon', 1),
(2198, 142, '037', 'Darhan uul', 1),
(2199, 142, '039', 'Hentiy', 1),
(2200, 142, '041', 'Hovsgol', 1),
(2201, 142, '043', 'Hovd', 1),
(2202, 142, '046', 'Uvs', 1),
(2203, 142, '047', 'Tov', 1),
(2204, 142, '049', 'Selenge', 1),
(2205, 142, '051', 'Suhbaatar', 1),
(2206, 142, '053', 'Omnogovi', 1),
(2207, 142, '055', 'Ovorhangay', 1),
(2208, 142, '057', 'Dzavhan', 1),
(2209, 142, '059', 'DundgovL', 1),
(2210, 142, '061', 'Dornod', 1),
(2211, 142, '063', 'Dornogov', 1),
(2212, 142, '064', 'Govi-Sumber', 1),
(2213, 142, '065', 'Govi-Altay', 1),
(2214, 142, '067', 'Bulgan', 1),
(2215, 142, '069', 'Bayanhongor', 1),
(2216, 142, '071', 'Bayan-Olgiy', 1),
(2217, 142, '073', 'Arhangay', 1),
(2218, 143, 'A', 'Saint Anthony', 1),
(2219, 143, 'G', 'Saint Georges', 1),
(2220, 143, 'P', 'Saint Peter', 1),
(2221, 144, 'AGD', 'Agadir', 1),
(2222, 144, 'HOC', 'Al Hoceima', 1),
(2223, 144, 'AZI', 'Azilal', 1),
(2224, 144, 'BME', 'Beni Mellal', 1),
(2225, 144, 'BSL', 'Ben Slimane', 1),
(2226, 144, 'BLM', 'Boulemane', 1),
(2227, 144, 'CBL', 'Casablanca', 1),
(2228, 144, 'CHA', 'Chaouen', 1),
(2229, 144, 'EJA', 'El Jadida', 1),
(2230, 144, 'EKS', 'El Kelaa des Sraghna', 1),
(2231, 144, 'ERA', 'Er Rachidia', 1),
(2232, 144, 'ESS', 'Essaouira', 1),
(2233, 144, 'FES', 'Fes', 1),
(2234, 144, 'FIG', 'Figuig', 1),
(2235, 144, 'GLM', 'Guelmim', 1),
(2236, 144, 'IFR', 'Ifrane', 1),
(2237, 144, 'KEN', 'Kenitra', 1),
(2238, 144, 'KHM', 'Khemisset', 1),
(2239, 144, 'KHN', 'Khenifra', 1),
(2240, 144, 'KHO', 'Khouribga', 1),
(2241, 144, 'LYN', 'Laayoune', 1),
(2242, 144, 'LAR', 'Larache', 1),
(2243, 144, 'MRK', 'Marrakech', 1),
(2244, 144, 'MKN', 'Meknes', 1),
(2245, 144, 'NAD', 'Nador', 1),
(2246, 144, 'ORZ', 'Ouarzazate', 1),
(2247, 144, 'OUJ', 'Oujda', 1),
(2248, 144, 'RSA', 'Rabat-Sale', 1),
(2249, 144, 'SAF', 'Safi', 1),
(2250, 144, 'SET', 'Settat', 1),
(2251, 144, 'SKA', 'Sidi Kacem', 1),
(2252, 144, 'TGR', 'Tangier', 1),
(2253, 144, 'TAN', 'Tan-Tan', 1),
(2254, 144, 'TAO', 'Taounate', 1),
(2255, 144, 'TRD', 'Taroudannt', 1),
(2256, 144, 'TAT', 'Tata', 1),
(2257, 144, 'TAZ', 'Taza', 1),
(2258, 144, 'TET', 'Tetouan', 1),
(2259, 144, 'TIZ', 'Tiznit', 1),
(2260, 144, 'ADK', 'Ad Dakhla', 1),
(2261, 144, 'BJD', 'Boujdour', 1),
(2262, 144, 'ESM', 'Es Smara', 1),
(2263, 145, 'CD', 'Cabo Delgado', 1),
(2264, 145, 'GZ', 'Gaza', 1),
(2265, 145, 'IN', 'Inhambane', 1),
(2266, 145, 'MN', 'Manica', 1),
(2267, 145, 'MC', 'Maputo (city)', 1),
(2268, 145, 'MP', 'Maputo', 1),
(2269, 145, 'NA', 'Nampula', 1),
(2270, 145, 'NI', 'Niassa', 1),
(2271, 145, 'SO', 'Sofala', 1),
(2272, 145, 'TE', 'Tete', 1),
(2273, 145, 'ZA', 'Zambezia', 1),
(2274, 146, 'AY', 'Ayeyarwady', 1),
(2275, 146, 'BG', 'Bago', 1),
(2276, 146, 'MG', 'Magway', 1),
(2277, 146, 'MD', 'Mandalay', 1),
(2278, 146, 'SG', 'Sagaing', 1),
(2279, 146, 'TN', 'Tanintharyi', 1),
(2280, 146, 'YG', 'Yangon', 1),
(2281, 146, 'CH', 'Chin State', 1),
(2282, 146, 'KC', 'Kachin State', 1),
(2283, 146, 'KH', 'Kayah State', 1),
(2284, 146, 'KN', 'Kayin State', 1),
(2285, 146, 'MN', 'Mon State', 1),
(2286, 146, 'RK', 'Rakhine State', 1),
(2287, 146, 'SH', 'Shan State', 1),
(2288, 147, 'CA', 'Caprivi', 1),
(2289, 147, 'ER', 'Erongo', 1),
(2290, 147, 'HA', 'Hardap', 1),
(2291, 147, 'KR', 'Karas', 1),
(2292, 147, 'KV', 'Kavango', 1),
(2293, 147, 'KH', 'Khomas', 1),
(2294, 147, 'KU', 'Kunene', 1),
(2295, 147, 'OW', 'Ohangwena', 1),
(2296, 147, 'OK', 'Omaheke', 1),
(2297, 147, 'OT', 'Omusati', 1),
(2298, 147, 'ON', 'Oshana', 1),
(2299, 147, 'OO', 'Oshikoto', 1),
(2300, 147, 'OJ', 'Otjozondjupa', 1),
(2301, 148, 'AO', 'Aiwo', 1),
(2302, 148, 'AA', 'Anabar', 1),
(2303, 148, 'AT', 'Anetan', 1),
(2304, 148, 'AI', 'Anibare', 1),
(2305, 148, 'BA', 'Baiti', 1),
(2306, 148, 'BO', 'Boe', 1),
(2307, 148, 'BU', 'Buada', 1),
(2308, 148, 'DE', 'Denigomodu', 1),
(2309, 148, 'EW', 'Ewa', 1),
(2310, 148, 'IJ', 'Ijuw', 1),
(2311, 148, 'ME', 'Meneng', 1),
(2312, 148, 'NI', 'Nibok', 1),
(2313, 148, 'UA', 'Uaboe', 1),
(2314, 148, 'YA', 'Yaren', 1),
(2315, 149, 'BA', 'Bagmati', 1),
(2316, 149, 'BH', 'Bheri', 1),
(2317, 149, 'DH', 'Dhawalagiri', 1),
(2318, 149, 'GA', 'Gandaki', 1),
(2319, 149, 'JA', 'Janakpur', 1),
(2320, 149, 'KA', 'Karnali', 1),
(2321, 149, 'KO', 'Kosi', 1),
(2322, 149, 'LU', 'Lumbini', 1),
(2323, 149, 'MA', 'Mahakali', 1),
(2324, 149, 'ME', 'Mechi', 1),
(2325, 149, 'NA', 'Narayani', 1),
(2326, 149, 'RA', 'Rapti', 1),
(2327, 149, 'SA', 'Sagarmatha', 1),
(2328, 149, 'SE', 'Seti', 1),
(2329, 150, 'DR', 'Drenthe', 1),
(2330, 150, 'FL', 'Flevoland', 1),
(2331, 150, 'FR', 'Friesland', 1),
(2332, 150, 'GE', 'Gelderland', 1),
(2333, 150, 'GR', 'Groningen', 1),
(2334, 150, 'LI', 'Limburg', 1),
(2335, 150, 'NB', 'Noord Brabant', 1),
(2336, 150, 'NH', 'Noord Holland', 1),
(2337, 150, 'OV', 'Overijssel', 1),
(2338, 150, 'UT', 'Utrecht', 1),
(2339, 150, 'ZE', 'Zeeland', 1),
(2340, 150, 'ZH', 'Zuid Holland', 1),
(2341, 152, 'L', 'Iles Loyaute', 1),
(2342, 152, 'N', 'Nord', 1),
(2343, 152, 'S', 'Sud', 1),
(2344, 153, 'AUK', 'Auckland', 1),
(2345, 153, 'BOP', 'Bay of Plenty', 1),
(2346, 153, 'CAN', 'Canterbury', 1),
(2347, 153, 'COR', 'Coromandel', 1),
(2348, 153, 'GIS', 'Gisborne', 1),
(2349, 153, 'FIO', 'Fiordland', 1),
(2350, 153, 'HKB', 'Hawke''s Bay', 1),
(2351, 153, 'MBH', 'Marlborough', 1),
(2352, 153, 'MWT', 'Manawatu-Wanganui', 1),
(2353, 153, 'MCM', 'Mt Cook-Mackenzie', 1),
(2354, 153, 'NSN', 'Nelson', 1),
(2355, 153, 'NTL', 'Northland', 1),
(2356, 153, 'OTA', 'Otago', 1),
(2357, 153, 'STL', 'Southland', 1),
(2358, 153, 'TKI', 'Taranaki', 1),
(2359, 153, 'WGN', 'Wellington', 1),
(2360, 153, 'WKO', 'Waikato', 1),
(2361, 153, 'WAI', 'Wairprarapa', 1),
(2362, 153, 'WTC', 'West Coast', 1),
(2363, 154, 'AN', 'Atlantico Norte', 1),
(2364, 154, 'AS', 'Atlantico Sur', 1),
(2365, 154, 'BO', 'Boaco', 1),
(2366, 154, 'CA', 'Carazo', 1),
(2367, 154, 'CI', 'Chinandega', 1),
(2368, 154, 'CO', 'Chontales', 1),
(2369, 154, 'ES', 'Esteli', 1),
(2370, 154, 'GR', 'Granada', 1),
(2371, 154, 'JI', 'Jinotega', 1),
(2372, 154, 'LE', 'Leon', 1),
(2373, 154, 'MD', 'Madriz', 1),
(2374, 154, 'MN', 'Managua', 1),
(2375, 154, 'MS', 'Masaya', 1),
(2376, 154, 'MT', 'Matagalpa', 1),
(2377, 154, 'NS', 'Nuevo Segovia', 1),
(2378, 154, 'RS', 'Rio San Juan', 1),
(2379, 154, 'RI', 'Rivas', 1),
(2380, 155, 'AG', 'Agadez', 1),
(2381, 155, 'DF', 'Diffa', 1),
(2382, 155, 'DS', 'Dosso', 1),
(2383, 155, 'MA', 'Maradi', 1),
(2384, 155, 'NM', 'Niamey', 1),
(2385, 155, 'TH', 'Tahoua', 1),
(2386, 155, 'TL', 'Tillaberi', 1),
(2387, 155, 'ZD', 'Zinder', 1),
(2388, 156, 'AB', 'Abia', 1),
(2389, 156, 'CT', 'Abuja Federal Capital Territory', 1),
(2390, 156, 'AD', 'Adamawa', 1),
(2391, 156, 'AK', 'Akwa Ibom', 1),
(2392, 156, 'AN', 'Anambra', 1),
(2393, 156, 'BC', 'Bauchi', 1),
(2394, 156, 'BY', 'Bayelsa', 1),
(2395, 156, 'BN', 'Benue', 1),
(2396, 156, 'BO', 'Borno', 1),
(2397, 156, 'CR', 'Cross River', 1),
(2398, 156, 'DE', 'Delta', 1),
(2399, 156, 'EB', 'Ebonyi', 1),
(2400, 156, 'ED', 'Edo', 1),
(2401, 156, 'EK', 'Ekiti', 1),
(2402, 156, 'EN', 'Enugu', 1),
(2403, 156, 'GO', 'Gombe', 1),
(2404, 156, 'IM', 'Imo', 1),
(2405, 156, 'JI', 'Jigawa', 1),
(2406, 156, 'KD', 'Kaduna', 1),
(2407, 156, 'KN', 'Kano', 1),
(2408, 156, 'KT', 'Katsina', 1),
(2409, 156, 'KE', 'Kebbi', 1),
(2410, 156, 'KO', 'Kogi', 1),
(2411, 156, 'KW', 'Kwara', 1),
(2412, 156, 'LA', 'Lagos', 1),
(2413, 156, 'NA', 'Nassarawa', 1),
(2414, 156, 'NI', 'Niger', 1),
(2415, 156, 'OG', 'Ogun', 1),
(2416, 156, 'ONG', 'Ondo', 1),
(2417, 156, 'OS', 'Osun', 1),
(2418, 156, 'OY', 'Oyo', 1),
(2419, 156, 'PL', 'Plateau', 1),
(2420, 156, 'RI', 'Rivers', 1),
(2421, 156, 'SO', 'Sokoto', 1),
(2422, 156, 'TA', 'Taraba', 1),
(2423, 156, 'YO', 'Yobe', 1),
(2424, 156, 'ZA', 'Zamfara', 1),
(2425, 159, 'N', 'Northern Islands', 1),
(2426, 159, 'R', 'Rota', 1),
(2427, 159, 'S', 'Saipan', 1),
(2428, 159, 'T', 'Tinian', 1),
(2429, 160, 'AK', 'Akershus', 1),
(2430, 160, 'AA', 'Aust-Agder', 1),
(2431, 160, 'BU', 'Buskerud', 1),
(2432, 160, 'FM', 'Finnmark', 1),
(2433, 160, 'HM', 'Hedmark', 1),
(2434, 160, 'HL', 'Hordaland', 1),
(2435, 160, 'MR', 'More og Romdal', 1),
(2436, 160, 'NT', 'Nord-Trondelag', 1),
(2437, 160, 'NL', 'Nordland', 1),
(2438, 160, 'OF', 'Ostfold', 1),
(2439, 160, 'OP', 'Oppland', 1),
(2440, 160, 'OL', 'Oslo', 1),
(2441, 160, 'RL', 'Rogaland', 1),
(2442, 160, 'ST', 'Sor-Trondelag', 1),
(2443, 160, 'SJ', 'Sogn og Fjordane', 1),
(2444, 160, 'SV', 'Svalbard', 1),
(2445, 160, 'TM', 'Telemark', 1),
(2446, 160, 'TR', 'Troms', 1),
(2447, 160, 'VA', 'Vest-Agder', 1),
(2448, 160, 'VF', 'Vestfold', 1),
(2449, 161, 'DA', 'Ad Dakhiliyah', 1),
(2450, 161, 'BA', 'Al Batinah', 1),
(2451, 161, 'WU', 'Al Wusta', 1),
(2452, 161, 'SH', 'Ash Sharqiyah', 1),
(2453, 161, 'ZA', 'Az Zahirah', 1),
(2454, 161, 'MA', 'Masqat', 1),
(2455, 161, 'MU', 'Musandam', 1),
(2456, 161, 'ZU', 'Zufar', 1),
(2457, 162, 'B', 'Balochistan', 1),
(2458, 162, 'T', 'Federally Administered Tribal Areas', 1),
(2459, 162, 'I', 'Islamabad Capital Territory', 1),
(2460, 162, 'N', 'North-West Frontier', 1),
(2461, 162, 'P', 'Punjab', 1),
(2462, 162, 'S', 'Sindh', 1),
(2463, 163, 'AM', 'Aimeliik', 1),
(2464, 163, 'AR', 'Airai', 1),
(2465, 163, 'AN', 'Angaur', 1),
(2466, 163, 'HA', 'Hatohobei', 1),
(2467, 163, 'KA', 'Kayangel', 1),
(2468, 163, 'KO', 'Koror', 1),
(2469, 163, 'ME', 'Melekeok', 1),
(2470, 163, 'NA', 'Ngaraard', 1),
(2471, 163, 'NG', 'Ngarchelong', 1),
(2472, 163, 'ND', 'Ngardmau', 1),
(2473, 163, 'NT', 'Ngatpang', 1),
(2474, 163, 'NC', 'Ngchesar', 1),
(2475, 163, 'NR', 'Ngeremlengui', 1),
(2476, 163, 'NW', 'Ngiwal', 1),
(2477, 163, 'PE', 'Peleliu', 1),
(2478, 163, 'SO', 'Sonsorol', 1),
(2479, 164, 'BT', 'Bocas del Toro', 1),
(2480, 164, 'CH', 'Chiriqui', 1),
(2481, 164, 'CC', 'Cocle', 1),
(2482, 164, 'CL', 'Colon', 1),
(2483, 164, 'DA', 'Darien', 1),
(2484, 164, 'HE', 'Herrera', 1),
(2485, 164, 'LS', 'Los Santos', 1),
(2486, 164, 'PA', 'Panama', 1),
(2487, 164, 'SB', 'San Blas', 1),
(2488, 164, 'VG', 'Veraguas', 1),
(2489, 165, 'BV', 'Bougainville', 1),
(2490, 165, 'CE', 'Central', 1),
(2491, 165, 'CH', 'Chimbu', 1),
(2492, 165, 'EH', 'Eastern Highlands', 1),
(2493, 165, 'EB', 'East New Britain', 1),
(2494, 165, 'ES', 'East Sepik', 1),
(2495, 165, 'EN', 'Enga', 1),
(2496, 165, 'GU', 'Gulf', 1),
(2497, 165, 'MD', 'Madang', 1),
(2498, 165, 'MN', 'Manus', 1),
(2499, 165, 'MB', 'Milne Bay', 1),
(2500, 165, 'MR', 'Morobe', 1),
(2501, 165, 'NC', 'National Capital', 1),
(2502, 165, 'NI', 'New Ireland', 1),
(2503, 165, 'NO', 'Northern', 1),
(2504, 165, 'SA', 'Sandaun', 1),
(2505, 165, 'SH', 'Southern Highlands', 1),
(2506, 165, 'WE', 'Western', 1),
(2507, 165, 'WH', 'Western Highlands', 1),
(2508, 165, 'WB', 'West New Britain', 1),
(2509, 166, 'AG', 'Alto Paraguay', 1),
(2510, 166, 'AN', 'Alto Parana', 1),
(2511, 166, 'AM', 'Amambay', 1),
(2512, 166, 'AS', 'Asuncion', 1),
(2513, 166, 'BO', 'Boqueron', 1),
(2514, 166, 'CG', 'Caaguazu', 1),
(2515, 166, 'CZ', 'Caazapa', 1),
(2516, 166, 'CN', 'Canindeyu', 1),
(2517, 166, 'CE', 'Central', 1),
(2518, 166, 'CC', 'Concepcion', 1),
(2519, 166, 'CD', 'Cordillera', 1),
(2520, 166, 'GU', 'Guaira', 1),
(2521, 166, 'IT', 'Itapua', 1),
(2522, 166, 'MI', 'Misiones', 1),
(2523, 166, 'NE', 'Neembucu', 1),
(2524, 166, 'PA', 'Paraguari', 1),
(2525, 166, 'PH', 'Presidente Hayes', 1),
(2526, 166, 'SP', 'San Pedro', 1),
(2527, 167, 'AM', 'Amazonas', 1),
(2528, 167, 'AN', 'Ancash', 1),
(2529, 167, 'AP', 'Apurimac', 1),
(2530, 167, 'AR', 'Arequipa', 1),
(2531, 167, 'AY', 'Ayacucho', 1),
(2532, 167, 'CJ', 'Cajamarca', 1),
(2533, 167, 'CL', 'Callao', 1),
(2534, 167, 'CU', 'Cusco', 1),
(2535, 167, 'HV', 'Huancavelica', 1),
(2536, 167, 'HO', 'Huanuco', 1),
(2537, 167, 'IC', 'Ica', 1),
(2538, 167, 'JU', 'Junin', 1),
(2539, 167, 'LD', 'La Libertad', 1),
(2540, 167, 'LY', 'Lambayeque', 1),
(2541, 167, 'LI', 'Lima', 1),
(2542, 167, 'LO', 'Loreto', 1),
(2543, 167, 'MD', 'Madre de Dios', 1),
(2544, 167, 'MO', 'Moquegua', 1),
(2545, 167, 'PA', 'Pasco', 1),
(2546, 167, 'PI', 'Piura', 1),
(2547, 167, 'PU', 'Puno', 1),
(2548, 167, 'SM', 'San Martin', 1),
(2549, 167, 'TA', 'Tacna', 1),
(2550, 167, 'TU', 'Tumbes', 1),
(2551, 167, 'UC', 'Ucayali', 1),
(2552, 168, 'ABR', 'Abra', 1),
(2553, 168, 'ANO', 'Agusan del Norte', 1),
(2554, 168, 'ASU', 'Agusan del Sur', 1),
(2555, 168, 'AKL', 'Aklan', 1),
(2556, 168, 'ALB', 'Albay', 1),
(2557, 168, 'ANT', 'Antique', 1),
(2558, 168, 'APY', 'Apayao', 1),
(2559, 168, 'AUR', 'Aurora', 1),
(2560, 168, 'BAS', 'Basilan', 1),
(2561, 168, 'BTA', 'Bataan', 1),
(2562, 168, 'BTE', 'Batanes', 1),
(2563, 168, 'BTG', 'Batangas', 1),
(2564, 168, 'BLR', 'Biliran', 1),
(2565, 168, 'BEN', 'Benguet', 1),
(2566, 168, 'BOL', 'Bohol', 1),
(2567, 168, 'BUK', 'Bukidnon', 1),
(2568, 168, 'BUL', 'Bulacan', 1),
(2569, 168, 'CAG', 'Cagayan', 1),
(2570, 168, 'CNO', 'Camarines Norte', 1),
(2571, 168, 'CSU', 'Camarines Sur', 1),
(2572, 168, 'CAM', 'Camiguin', 1),
(2573, 168, 'CAP', 'Capiz', 1),
(2574, 168, 'CAT', 'Catanduanes', 1),
(2575, 168, 'CAV', 'Cavite', 1),
(2576, 168, 'CEB', 'Cebu', 1),
(2577, 168, 'CMP', 'Compostela', 1),
(2578, 168, 'DNO', 'Davao del Norte', 1),
(2579, 168, 'DSU', 'Davao del Sur', 1),
(2580, 168, 'DOR', 'Davao Oriental', 1),
(2581, 168, 'ESA', 'Eastern Samar', 1),
(2582, 168, 'GUI', 'Guimaras', 1),
(2583, 168, 'IFU', 'Ifugao', 1),
(2584, 168, 'INO', 'Ilocos Norte', 1),
(2585, 168, 'ISU', 'Ilocos Sur', 1),
(2586, 168, 'ILO', 'Iloilo', 1),
(2587, 168, 'ISA', 'Isabela', 1),
(2588, 168, 'KAL', 'Kalinga', 1),
(2589, 168, 'LAG', 'Laguna', 1),
(2590, 168, 'LNO', 'Lanao del Norte', 1),
(2591, 168, 'LSU', 'Lanao del Sur', 1),
(2592, 168, 'UNI', 'La Union', 1),
(2593, 168, 'LEY', 'Leyte', 1),
(2594, 168, 'MAG', 'Maguindanao', 1),
(2595, 168, 'MRN', 'Marinduque', 1),
(2596, 168, 'MSB', 'Masbate', 1),
(2597, 168, 'MIC', 'Mindoro Occidental', 1),
(2598, 168, 'MIR', 'Mindoro Oriental', 1),
(2599, 168, 'MSC', 'Misamis Occidental', 1),
(2600, 168, 'MOR', 'Misamis Oriental', 1),
(2601, 168, 'MOP', 'Mountain', 1),
(2602, 168, 'NOC', 'Negros Occidental', 1),
(2603, 168, 'NOR', 'Negros Oriental', 1),
(2604, 168, 'NCT', 'North Cotabato', 1),
(2605, 168, 'NSM', 'Northern Samar', 1),
(2606, 168, 'NEC', 'Nueva Ecija', 1),
(2607, 168, 'NVZ', 'Nueva Vizcaya', 1),
(2608, 168, 'PLW', 'Palawan', 1),
(2609, 168, 'PMP', 'Pampanga', 1),
(2610, 168, 'PNG', 'Pangasinan', 1),
(2611, 168, 'QZN', 'Quezon', 1),
(2612, 168, 'QRN', 'Quirino', 1),
(2613, 168, 'RIZ', 'Rizal', 1),
(2614, 168, 'ROM', 'Romblon', 1),
(2615, 168, 'SMR', 'Samar', 1),
(2616, 168, 'SRG', 'Sarangani', 1),
(2617, 168, 'SQJ', 'Siquijor', 1),
(2618, 168, 'SRS', 'Sorsogon', 1),
(2619, 168, 'SCO', 'South Cotabato', 1),
(2620, 168, 'SLE', 'Southern Leyte', 1),
(2621, 168, 'SKU', 'Sultan Kudarat', 1),
(2622, 168, 'SLU', 'Sulu', 1),
(2623, 168, 'SNO', 'Surigao del Norte', 1),
(2624, 168, 'SSU', 'Surigao del Sur', 1),
(2625, 168, 'TAR', 'Tarlac', 1),
(2626, 168, 'TAW', 'Tawi-Tawi', 1),
(2627, 168, 'ZBL', 'Zambales', 1),
(2628, 168, 'ZNO', 'Zamboanga del Norte', 1),
(2629, 168, 'ZSU', 'Zamboanga del Sur', 1),
(2630, 168, 'ZSI', 'Zamboanga Sibugay', 1),
(2631, 170, 'DO', 'Dolnoslaskie', 1),
(2632, 170, 'KP', 'Kujawsko-Pomorskie', 1),
(2633, 170, 'LO', 'Lodzkie', 1),
(2634, 170, 'LL', 'Lubelskie', 1),
(2635, 170, 'LU', 'Lubuskie', 1),
(2636, 170, 'ML', 'Malopolskie', 1),
(2637, 170, 'MZ', 'Mazowieckie', 1),
(2638, 170, 'OP', 'Opolskie', 1),
(2639, 170, 'PP', 'Podkarpackie', 1),
(2640, 170, 'PL', 'Podlaskie', 1),
(2641, 170, 'PM', 'Pomorskie', 1),
(2642, 170, 'SL', 'Slaskie', 1),
(2643, 170, 'SW', 'Swietokrzyskie', 1),
(2644, 170, 'WM', 'Warminsko-Mazurskie', 1),
(2645, 170, 'WP', 'Wielkopolskie', 1),
(2646, 170, 'ZA', 'Zachodniopomorskie', 1),
(2647, 198, 'P', 'Saint Pierre', 1),
(2648, 198, 'M', 'Miquelon', 1),
(2649, 171, 'AC', 'A&ccedil;ores', 1),
(2650, 171, 'AV', 'Aveiro', 1),
(2651, 171, 'BE', 'Beja', 1),
(2652, 171, 'BR', 'Braga', 1),
(2653, 171, 'BA', 'Bragan&ccedil;a', 1),
(2654, 171, 'CB', 'Castelo Branco', 1),
(2655, 171, 'CO', 'Coimbra', 1),
(2656, 171, 'EV', '&Eacute;vora', 1),
(2657, 171, 'FA', 'Faro', 1),
(2658, 171, 'GU', 'Guarda', 1),
(2659, 171, 'LE', 'Leiria', 1),
(2660, 171, 'LI', 'Lisboa', 1),
(2661, 171, 'ME', 'Madeira', 1),
(2662, 171, 'PO', 'Portalegre', 1),
(2663, 171, 'PR', 'Porto', 1),
(2664, 171, 'SA', 'Santar&eacute;m', 1),
(2665, 171, 'SE', 'Set&uacute;bal', 1),
(2666, 171, 'VC', 'Viana do Castelo', 1),
(2667, 171, 'VR', 'Vila Real', 1),
(2668, 171, 'VI', 'Viseu', 1),
(2669, 173, 'DW', 'Ad Dawhah', 1),
(2670, 173, 'GW', 'Al Ghuwayriyah', 1),
(2671, 173, 'JM', 'Al Jumayliyah', 1),
(2672, 173, 'KR', 'Al Khawr', 1),
(2673, 173, 'WK', 'Al Wakrah', 1),
(2674, 173, 'RN', 'Ar Rayyan', 1),
(2675, 173, 'JB', 'Jarayan al Batinah', 1),
(2676, 173, 'MS', 'Madinat ash Shamal', 1),
(2677, 173, 'UD', 'Umm Sa''id', 1),
(2678, 173, 'UL', 'Umm Salal', 1),
(2679, 175, 'AB', 'Alba', 1),
(2680, 175, 'AR', 'Arad', 1),
(2681, 175, 'AG', 'Arges', 1),
(2682, 175, 'BC', 'Bacau', 1),
(2683, 175, 'BH', 'Bihor', 1),
(2684, 175, 'BN', 'Bistrita-Nasaud', 1),
(2685, 175, 'BT', 'Botosani', 1),
(2686, 175, 'BV', 'Brasov', 1),
(2687, 175, 'BR', 'Braila', 1),
(2688, 175, 'B', 'Bucuresti', 1),
(2689, 175, 'BZ', 'Buzau', 1),
(2690, 175, 'CS', 'Caras-Severin', 1),
(2691, 175, 'CL', 'Calarasi', 1),
(2692, 175, 'CJ', 'Cluj', 1),
(2693, 175, 'CT', 'Constanta', 1),
(2694, 175, 'CV', 'Covasna', 1),
(2695, 175, 'DB', 'Dimbovita', 1),
(2696, 175, 'DJ', 'Dolj', 1),
(2697, 175, 'GL', 'Galati', 1),
(2698, 175, 'GR', 'Giurgiu', 1),
(2699, 175, 'GJ', 'Gorj', 1),
(2700, 175, 'HR', 'Harghita', 1),
(2701, 175, 'HD', 'Hunedoara', 1),
(2702, 175, 'IL', 'Ialomita', 1),
(2703, 175, 'IS', 'Iasi', 1),
(2704, 175, 'IF', 'Ilfov', 1),
(2705, 175, 'MM', 'Maramures', 1),
(2706, 175, 'MH', 'Mehedinti', 1),
(2707, 175, 'MS', 'Mures', 1),
(2708, 175, 'NT', 'Neamt', 1),
(2709, 175, 'OT', 'Olt', 1),
(2710, 175, 'PH', 'Prahova', 1),
(2711, 175, 'SM', 'Satu-Mare', 1),
(2712, 175, 'SJ', 'Salaj', 1),
(2713, 175, 'SB', 'Sibiu', 1),
(2714, 175, 'SV', 'Suceava', 1),
(2715, 175, 'TR', 'Teleorman', 1),
(2716, 175, 'TM', 'Timis', 1),
(2717, 175, 'TL', 'Tulcea', 1),
(2718, 175, 'VS', 'Vaslui', 1),
(2719, 175, 'VL', 'Valcea', 1),
(2720, 175, 'VN', 'Vrancea', 1),
(2721, 176, 'AB', 'Abakan', 1),
(2722, 176, 'AG', 'Aginskoye', 1),
(2723, 176, 'AN', 'Anadyr', 1),
(2724, 176, 'AR', 'Arkahangelsk', 1),
(2725, 176, 'AS', 'Astrakhan', 1),
(2726, 176, 'BA', 'Barnaul', 1),
(2727, 176, 'BE', 'Belgorod', 1),
(2728, 176, 'BI', 'Birobidzhan', 1),
(2729, 176, 'BL', 'Blagoveshchensk', 1),
(2730, 176, 'BR', 'Bryansk', 1),
(2731, 176, 'CH', 'Cheboksary', 1),
(2732, 176, 'CL', 'Chelyabinsk', 1),
(2733, 176, 'CR', 'Cherkessk', 1),
(2734, 176, 'CI', 'Chita', 1),
(2735, 176, 'DU', 'Dudinka', 1),
(2736, 176, 'EL', 'Elista', 1),
(2737, 176, 'GO', 'Gomo-Altaysk', 1),
(2738, 176, 'GA', 'Gorno-Altaysk', 1),
(2739, 176, 'GR', 'Groznyy', 1),
(2740, 176, 'IR', 'Irkutsk', 1),
(2741, 176, 'IV', 'Ivanovo', 1),
(2742, 176, 'IZ', 'Izhevsk', 1),
(2743, 176, 'KA', 'Kalinigrad', 1),
(2744, 176, 'KL', 'Kaluga', 1),
(2745, 176, 'KS', 'Kasnodar', 1),
(2746, 176, 'KZ', 'Kazan', 1),
(2747, 176, 'KE', 'Kemerovo', 1),
(2748, 176, 'KH', 'Khabarovsk', 1),
(2749, 176, 'KM', 'Khanty-Mansiysk', 1),
(2750, 176, 'KO', 'Kostroma', 1),
(2751, 176, 'KR', 'Krasnodar', 1),
(2752, 176, 'KN', 'Krasnoyarsk', 1),
(2753, 176, 'KU', 'Kudymkar', 1),
(2754, 176, 'KG', 'Kurgan', 1),
(2755, 176, 'KK', 'Kursk', 1),
(2756, 176, 'KY', 'Kyzyl', 1),
(2757, 176, 'LI', 'Lipetsk', 1),
(2758, 176, 'MA', 'Magadan', 1),
(2759, 176, 'MK', 'Makhachkala', 1),
(2760, 176, 'MY', 'Maykop', 1),
(2761, 176, 'MO', 'Moscow', 1),
(2762, 176, 'MU', 'Murmansk', 1),
(2763, 176, 'NA', 'Nalchik', 1),
(2764, 176, 'NR', 'Naryan Mar', 1),
(2765, 176, 'NZ', 'Nazran', 1),
(2766, 176, 'NI', 'Nizhniy Novgorod', 1),
(2767, 176, 'NO', 'Novgorod', 1),
(2768, 176, 'NV', 'Novosibirsk', 1),
(2769, 176, 'OM', 'Omsk', 1),
(2770, 176, 'OR', 'Orel', 1),
(2771, 176, 'OE', 'Orenburg', 1),
(2772, 176, 'PA', 'Palana', 1),
(2773, 176, 'PE', 'Penza', 1),
(2774, 176, 'PR', 'Perm', 1),
(2775, 176, 'PK', 'Petropavlovsk-Kamchatskiy', 1),
(2776, 176, 'PT', 'Petrozavodsk', 1),
(2777, 176, 'PS', 'Pskov', 1),
(2778, 176, 'RO', 'Rostov-na-Donu', 1),
(2779, 176, 'RY', 'Ryazan', 1),
(2780, 176, 'SL', 'Salekhard', 1),
(2781, 176, 'SA', 'Samara', 1),
(2782, 176, 'SR', 'Saransk', 1),
(2783, 176, 'SV', 'Saratov', 1),
(2784, 176, 'SM', 'Smolensk', 1),
(2785, 176, 'SP', 'St. Petersburg', 1),
(2786, 176, 'ST', 'Stavropol', 1),
(2787, 176, 'SY', 'Syktyvkar', 1),
(2788, 176, 'TA', 'Tambov', 1),
(2789, 176, 'TO', 'Tomsk', 1),
(2790, 176, 'TU', 'Tula', 1),
(2791, 176, 'TR', 'Tura', 1),
(2792, 176, 'TV', 'Tver', 1),
(2793, 176, 'TY', 'Tyumen', 1),
(2794, 176, 'UF', 'Ufa', 1),
(2795, 176, 'UL', 'Ul''yanovsk', 1),
(2796, 176, 'UU', 'Ulan-Ude', 1),
(2797, 176, 'US', 'Ust''-Ordynskiy', 1),
(2798, 176, 'VL', 'Vladikavkaz', 1),
(2799, 176, 'VA', 'Vladimir', 1),
(2800, 176, 'VV', 'Vladivostok', 1),
(2801, 176, 'VG', 'Volgograd', 1),
(2802, 176, 'VD', 'Vologda', 1),
(2803, 176, 'VO', 'Voronezh', 1),
(2804, 176, 'VY', 'Vyatka', 1),
(2805, 176, 'YA', 'Yakutsk', 1),
(2806, 176, 'YR', 'Yaroslavl', 1),
(2807, 176, 'YE', 'Yekaterinburg', 1),
(2808, 176, 'YO', 'Yoshkar-Ola', 1),
(2809, 177, 'BU', 'Butare', 1),
(2810, 177, 'BY', 'Byumba', 1),
(2811, 177, 'CY', 'Cyangugu', 1),
(2812, 177, 'GK', 'Gikongoro', 1),
(2813, 177, 'GS', 'Gisenyi', 1),
(2814, 177, 'GT', 'Gitarama', 1),
(2815, 177, 'KG', 'Kibungo', 1),
(2816, 177, 'KY', 'Kibuye', 1),
(2817, 177, 'KR', 'Kigali Rurale', 1),
(2818, 177, 'KV', 'Kigali-ville', 1),
(2819, 177, 'RU', 'Ruhengeri', 1),
(2820, 177, 'UM', 'Umutara', 1),
(2821, 178, 'CCN', 'Christ Church Nichola Town', 1),
(2822, 178, 'SAS', 'Saint Anne Sandy Point', 1),
(2823, 178, 'SGB', 'Saint George Basseterre', 1),
(2824, 178, 'SGG', 'Saint George Gingerland', 1),
(2825, 178, 'SJW', 'Saint James Windward', 1),
(2826, 178, 'SJC', 'Saint John Capesterre', 1),
(2827, 178, 'SJF', 'Saint John Figtree', 1),
(2828, 178, 'SMC', 'Saint Mary Cayon', 1),
(2829, 178, 'CAP', 'Saint Paul Capesterre', 1),
(2830, 178, 'CHA', 'Saint Paul Charlestown', 1),
(2831, 178, 'SPB', 'Saint Peter Basseterre', 1),
(2832, 178, 'STL', 'Saint Thomas Lowland', 1),
(2833, 178, 'STM', 'Saint Thomas Middle Island', 1),
(2834, 178, 'TPP', 'Trinity Palmetto Point', 1),
(2835, 179, 'AR', 'Anse-la-Raye', 1),
(2836, 179, 'CA', 'Castries', 1),
(2837, 179, 'CH', 'Choiseul', 1),
(2838, 179, 'DA', 'Dauphin', 1),
(2839, 179, 'DE', 'Dennery', 1),
(2840, 179, 'GI', 'Gros-Islet', 1),
(2841, 179, 'LA', 'Laborie', 1),
(2842, 179, 'MI', 'Micoud', 1),
(2843, 179, 'PR', 'Praslin', 1),
(2844, 179, 'SO', 'Soufriere', 1),
(2845, 179, 'VF', 'Vieux-Fort', 1),
(2846, 180, 'C', 'Charlotte', 1),
(2847, 180, 'R', 'Grenadines', 1),
(2848, 180, 'A', 'Saint Andrew', 1),
(2849, 180, 'D', 'Saint David', 1),
(2850, 180, 'G', 'Saint George', 1),
(2851, 180, 'P', 'Saint Patrick', 1),
(2852, 181, 'AN', 'A''ana', 1),
(2853, 181, 'AI', 'Aiga-i-le-Tai', 1),
(2854, 181, 'AT', 'Atua', 1),
(2855, 181, 'FA', 'Fa''asaleleaga', 1),
(2856, 181, 'GE', 'Gaga''emauga', 1),
(2857, 181, 'GF', 'Gagaifomauga', 1),
(2858, 181, 'PA', 'Palauli', 1),
(2859, 181, 'SA', 'Satupa''itea', 1),
(2860, 181, 'TU', 'Tuamasaga', 1),
(2861, 181, 'VF', 'Va''a-o-Fonoti', 1),
(2862, 181, 'VS', 'Vaisigano', 1),
(2863, 182, 'AC', 'Acquaviva', 1),
(2864, 182, 'BM', 'Borgo Maggiore', 1),
(2865, 182, 'CH', 'Chiesanuova', 1),
(2866, 182, 'DO', 'Domagnano', 1),
(2867, 182, 'FA', 'Faetano', 1),
(2868, 182, 'FI', 'Fiorentino', 1),
(2869, 182, 'MO', 'Montegiardino', 1),
(2870, 182, 'SM', 'Citta di San Marino', 1),
(2871, 182, 'SE', 'Serravalle', 1),
(2872, 183, 'S', 'Sao Tome', 1),
(2873, 183, 'P', 'Principe', 1),
(2874, 184, 'BH', 'Al Bahah', 1),
(2875, 184, 'HS', 'Al Hudud ash Shamaliyah', 1),
(2876, 184, 'JF', 'Al Jawf', 1),
(2877, 184, 'MD', 'Al Madinah', 1),
(2878, 184, 'QS', 'Al Qasim', 1),
(2879, 184, 'RD', 'Ar Riyad', 1),
(2880, 184, 'AQ', 'Ash Sharqiyah (Eastern)', 1),
(2881, 184, 'AS', '''Asir', 1),
(2882, 184, 'HL', 'Ha''il', 1),
(2883, 184, 'JZ', 'Jizan', 1),
(2884, 184, 'ML', 'Makkah', 1),
(2885, 184, 'NR', 'Najran', 1),
(2886, 184, 'TB', 'Tabuk', 1),
(2887, 185, 'DA', 'Dakar', 1),
(2888, 185, 'DI', 'Diourbel', 1),
(2889, 185, 'FA', 'Fatick', 1),
(2890, 185, 'KA', 'Kaolack', 1),
(2891, 185, 'KO', 'Kolda', 1),
(2892, 185, 'LO', 'Louga', 1),
(2893, 185, 'MA', 'Matam', 1),
(2894, 185, 'SL', 'Saint-Louis', 1),
(2895, 185, 'TA', 'Tambacounda', 1),
(2896, 185, 'TH', 'Thies', 1),
(2897, 185, 'ZI', 'Ziguinchor', 1),
(2898, 186, 'AP', 'Anse aux Pins', 1),
(2899, 186, 'AB', 'Anse Boileau', 1),
(2900, 186, 'AE', 'Anse Etoile', 1),
(2901, 186, 'AL', 'Anse Louis', 1),
(2902, 186, 'AR', 'Anse Royale', 1),
(2903, 186, 'BL', 'Baie Lazare', 1),
(2904, 186, 'BS', 'Baie Sainte Anne', 1),
(2905, 186, 'BV', 'Beau Vallon', 1),
(2906, 186, 'BA', 'Bel Air', 1),
(2907, 186, 'BO', 'Bel Ombre', 1),
(2908, 186, 'CA', 'Cascade', 1),
(2909, 186, 'GL', 'Glacis', 1),
(2910, 186, 'GM', 'Grand'' Anse (on Mahe)', 1),
(2911, 186, 'GP', 'Grand'' Anse (on Praslin)', 1),
(2912, 186, 'DG', 'La Digue', 1),
(2913, 186, 'RA', 'La Riviere Anglaise', 1),
(2914, 186, 'MB', 'Mont Buxton', 1),
(2915, 186, 'MF', 'Mont Fleuri', 1),
(2916, 186, 'PL', 'Plaisance', 1),
(2917, 186, 'PR', 'Pointe La Rue', 1),
(2918, 186, 'PG', 'Port Glaud', 1),
(2919, 186, 'SL', 'Saint Louis', 1),
(2920, 186, 'TA', 'Takamaka', 1),
(2921, 187, 'E', 'Eastern', 1),
(2922, 187, 'N', 'Northern', 1),
(2923, 187, 'S', 'Southern', 1),
(2924, 187, 'W', 'Western', 1),
(2925, 189, 'BA', 'Banskobystrický', 1),
(2926, 189, 'BR', 'Bratislavský', 1),
(2927, 189, 'KO', 'Košický', 1),
(2928, 189, 'NI', 'Nitriansky', 1),
(2929, 189, 'PR', 'Prešovský', 1),
(2930, 189, 'TC', 'Trenčiansky', 1),
(2931, 189, 'TV', 'Trnavský', 1),
(2932, 189, 'ZI', 'Žilinský', 1),
(2933, 191, 'CE', 'Central', 1),
(2934, 191, 'CH', 'Choiseul', 1),
(2935, 191, 'GC', 'Guadalcanal', 1),
(2936, 191, 'HO', 'Honiara', 1),
(2937, 191, 'IS', 'Isabel', 1),
(2938, 191, 'MK', 'Makira', 1),
(2939, 191, 'ML', 'Malaita', 1),
(2940, 191, 'RB', 'Rennell and Bellona', 1),
(2941, 191, 'TM', 'Temotu', 1),
(2942, 191, 'WE', 'Western', 1),
(2943, 192, 'AW', 'Awdal', 1),
(2944, 192, 'BK', 'Bakool', 1),
(2945, 192, 'BN', 'Banaadir', 1),
(2946, 192, 'BR', 'Bari', 1),
(2947, 192, 'BY', 'Bay', 1),
(2948, 192, 'GA', 'Galguduud', 1),
(2949, 192, 'GE', 'Gedo', 1),
(2950, 192, 'HI', 'Hiiraan', 1),
(2951, 192, 'JD', 'Jubbada Dhexe', 1),
(2952, 192, 'JH', 'Jubbada Hoose', 1),
(2953, 192, 'MU', 'Mudug', 1),
(2954, 192, 'NU', 'Nugaal', 1),
(2955, 192, 'SA', 'Sanaag', 1),
(2956, 192, 'SD', 'Shabeellaha Dhexe', 1),
(2957, 192, 'SH', 'Shabeellaha Hoose', 1),
(2958, 192, 'SL', 'Sool', 1),
(2959, 192, 'TO', 'Togdheer', 1),
(2960, 192, 'WG', 'Woqooyi Galbeed', 1),
(2961, 193, 'EC', 'Eastern Cape', 1),
(2962, 193, 'FS', 'Free State', 1),
(2963, 193, 'GT', 'Gauteng', 1),
(2964, 193, 'KN', 'KwaZulu-Natal', 1),
(2965, 193, 'LP', 'Limpopo', 1),
(2966, 193, 'MP', 'Mpumalanga', 1),
(2967, 193, 'NW', 'North West', 1),
(2968, 193, 'NC', 'Northern Cape', 1),
(2969, 193, 'WC', 'Western Cape', 1),
(2970, 195, 'CA', 'La Coru&ntilde;a', 1),
(2971, 195, 'AL', '&Aacute;lava', 1),
(2972, 195, 'AB', 'Albacete', 1),
(2973, 195, 'AC', 'Alicante', 1),
(2974, 195, 'AM', 'Almeria', 1),
(2975, 195, 'AS', 'Asturias', 1),
(2976, 195, 'AV', '&Aacute;vila', 1),
(2977, 195, 'BJ', 'Badajoz', 1),
(2978, 195, 'IB', 'Baleares', 1),
(2979, 195, 'BA', 'Barcelona', 1),
(2980, 195, 'BU', 'Burgos', 1),
(2981, 195, 'CC', 'C&aacute;ceres', 1),
(2982, 195, 'CZ', 'C&aacute;diz', 1),
(2983, 195, 'CT', 'Cantabria', 1),
(2984, 195, 'CL', 'Castell&oacute;n', 1),
(2985, 195, 'CE', 'Ceuta', 1),
(2986, 195, 'CR', 'Ciudad Real', 1),
(2987, 195, 'CD', 'C&oacute;rdoba', 1),
(2988, 195, 'CU', 'Cuenca', 1),
(2989, 195, 'GI', 'Girona', 1),
(2990, 195, 'GD', 'Granada', 1),
(2991, 195, 'GJ', 'Guadalajara', 1),
(2992, 195, 'GP', 'Guip&uacute;zcoa', 1),
(2993, 195, 'HL', 'Huelva', 1),
(2994, 195, 'HS', 'Huesca', 1),
(2995, 195, 'JN', 'Ja&eacute;n', 1),
(2996, 195, 'RJ', 'La Rioja', 1),
(2997, 195, 'PM', 'Las Palmas', 1),
(2998, 195, 'LE', 'Leon', 1),
(2999, 195, 'LL', 'Lleida', 1),
(3000, 195, 'LG', 'Lugo', 1),
(3001, 195, 'MD', 'Madrid', 1),
(3002, 195, 'MA', 'Malaga', 1),
(3003, 195, 'ML', 'Melilla', 1),
(3004, 195, 'MU', 'Murcia', 1),
(3005, 195, 'NV', 'Navarra', 1),
(3006, 195, 'OU', 'Ourense', 1),
(3007, 195, 'PL', 'Palencia', 1),
(3008, 195, 'PO', 'Pontevedra', 1),
(3009, 195, 'SL', 'Salamanca', 1),
(3010, 195, 'SC', 'Santa Cruz de Tenerife', 1),
(3011, 195, 'SG', 'Segovia', 1),
(3012, 195, 'SV', 'Sevilla', 1),
(3013, 195, 'SO', 'Soria', 1),
(3014, 195, 'TA', 'Tarragona', 1),
(3015, 195, 'TE', 'Teruel', 1),
(3016, 195, 'TO', 'Toledo', 1),
(3017, 195, 'VC', 'Valencia', 1),
(3018, 195, 'VD', 'Valladolid', 1),
(3019, 195, 'VZ', 'Vizcaya', 1),
(3020, 195, 'ZM', 'Zamora', 1),
(3021, 195, 'ZR', 'Zaragoza', 1),
(3022, 196, 'CE', 'Central', 1),
(3023, 196, 'EA', 'Eastern', 1),
(3024, 196, 'NC', 'North Central', 1),
(3025, 196, 'NO', 'Northern', 1),
(3026, 196, 'NW', 'North Western', 1),
(3027, 196, 'SA', 'Sabaragamuwa', 1),
(3028, 196, 'SO', 'Southern', 1),
(3029, 196, 'UV', 'Uva', 1),
(3030, 196, 'WE', 'Western', 1),
(3031, 197, 'A', 'Ascension', 1),
(3032, 197, 'S', 'Saint Helena', 1),
(3033, 197, 'T', 'Tristan da Cunha', 1),
(3034, 199, 'ANL', 'A''ali an Nil', 1),
(3035, 199, 'BAM', 'Al Bahr al Ahmar', 1),
(3036, 199, 'BRT', 'Al Buhayrat', 1),
(3037, 199, 'JZR', 'Al Jazirah', 1),
(3038, 199, 'KRT', 'Al Khartum', 1);
INSERT INTO `zone` (`zone_id`, `country_id`, `code`, `name`, `status`) VALUES
(3039, 199, 'QDR', 'Al Qadarif', 1),
(3040, 199, 'WDH', 'Al Wahdah', 1),
(3041, 199, 'ANB', 'An Nil al Abyad', 1),
(3042, 199, 'ANZ', 'An Nil al Azraq', 1),
(3043, 199, 'ASH', 'Ash Shamaliyah', 1),
(3044, 199, 'BJA', 'Bahr al Jabal', 1),
(3045, 199, 'GIS', 'Gharb al Istiwa''iyah', 1),
(3046, 199, 'GBG', 'Gharb Bahr al Ghazal', 1),
(3047, 199, 'GDA', 'Gharb Darfur', 1),
(3048, 199, 'GKU', 'Gharb Kurdufan', 1),
(3049, 199, 'JDA', 'Janub Darfur', 1),
(3050, 199, 'JKU', 'Janub Kurdufan', 1),
(3051, 199, 'JQL', 'Junqali', 1),
(3052, 199, 'KSL', 'Kassala', 1),
(3053, 199, 'NNL', 'Nahr an Nil', 1),
(3054, 199, 'SBG', 'Shamal Bahr al Ghazal', 1),
(3055, 199, 'SDA', 'Shamal Darfur', 1),
(3056, 199, 'SKU', 'Shamal Kurdufan', 1),
(3057, 199, 'SIS', 'Sharq al Istiwa''iyah', 1),
(3058, 199, 'SNR', 'Sinnar', 1),
(3059, 199, 'WRB', 'Warab', 1),
(3060, 200, 'BR', 'Brokopondo', 1),
(3061, 200, 'CM', 'Commewijne', 1),
(3062, 200, 'CR', 'Coronie', 1),
(3063, 200, 'MA', 'Marowijne', 1),
(3064, 200, 'NI', 'Nickerie', 1),
(3065, 200, 'PA', 'Para', 1),
(3066, 200, 'PM', 'Paramaribo', 1),
(3067, 200, 'SA', 'Saramacca', 1),
(3068, 200, 'SI', 'Sipaliwini', 1),
(3069, 200, 'WA', 'Wanica', 1),
(3070, 202, 'H', 'Hhohho', 1),
(3071, 202, 'L', 'Lubombo', 1),
(3072, 202, 'M', 'Manzini', 1),
(3073, 202, 'S', 'Shishelweni', 1),
(3074, 203, 'K', 'Blekinge', 1),
(3075, 203, 'W', 'Dalama', 1),
(3076, 203, 'X', 'G&auml;vleborg', 1),
(3077, 203, 'I', 'Gotland', 1),
(3078, 203, 'N', 'Halland', 1),
(3079, 203, 'Z', 'J&auml;mtland', 1),
(3080, 203, 'F', 'J&ouml;nk&ouml;ping', 1),
(3081, 203, 'H', 'Kalmar', 1),
(3082, 203, 'G', 'Kronoberg', 1),
(3083, 203, 'BD', 'Norrbotten', 1),
(3084, 203, 'T', '&Ouml;rebro', 1),
(3085, 203, 'E', '&Ouml;sterg&ouml;tland', 1),
(3086, 203, 'M', 'Sk&aring;ne', 1),
(3087, 203, 'D', 'S&ouml;dermanland', 1),
(3088, 203, 'AB', 'Stockholm', 1),
(3089, 203, 'C', 'Uppsala', 1),
(3090, 203, 'S', 'V&auml;rmland', 1),
(3091, 203, 'AC', 'V&auml;sterbotten', 1),
(3092, 203, 'Y', 'V&auml;sternorrland', 1),
(3093, 203, 'U', 'V&auml;stmanland', 1),
(3094, 203, 'O', 'V&auml;stra G&ouml;taland', 1),
(3095, 204, 'AG', 'Aargau', 1),
(3096, 204, 'AR', 'Appenzell Ausserrhoden', 1),
(3097, 204, 'AI', 'Appenzell Innerrhoden', 1),
(3098, 204, 'BS', 'Basel-Stadt', 1),
(3099, 204, 'BL', 'Basel-Landschaft', 1),
(3100, 204, 'BE', 'Bern', 1),
(3101, 204, 'FR', 'Fribourg', 1),
(3102, 204, 'GE', 'Gen&egrave;ve', 1),
(3103, 204, 'GL', 'Glarus', 1),
(3104, 204, 'GR', 'Graub&uuml;nden', 1),
(3105, 204, 'JU', 'Jura', 1),
(3106, 204, 'LU', 'Luzern', 1),
(3107, 204, 'NE', 'Neuch&acirc;tel', 1),
(3108, 204, 'NW', 'Nidwald', 1),
(3109, 204, 'OW', 'Obwald', 1),
(3110, 204, 'SG', 'St. Gallen', 1),
(3111, 204, 'SH', 'Schaffhausen', 1),
(3112, 204, 'SZ', 'Schwyz', 1),
(3113, 204, 'SO', 'Solothurn', 1),
(3114, 204, 'TG', 'Thurgau', 1),
(3115, 204, 'TI', 'Ticino', 1),
(3116, 204, 'UR', 'Uri', 1),
(3117, 204, 'VS', 'Valais', 1),
(3118, 204, 'VD', 'Vaud', 1),
(3119, 204, 'ZG', 'Zug', 1),
(3120, 204, 'ZH', 'Z&uuml;rich', 1),
(3121, 205, 'HA', 'Al Hasakah', 1),
(3122, 205, 'LA', 'Al Ladhiqiyah', 1),
(3123, 205, 'QU', 'Al Qunaytirah', 1),
(3124, 205, 'RQ', 'Ar Raqqah', 1),
(3125, 205, 'SU', 'As Suwayda', 1),
(3126, 205, 'DA', 'Dara', 1),
(3127, 205, 'DZ', 'Dayr az Zawr', 1),
(3128, 205, 'DI', 'Dimashq', 1),
(3129, 205, 'HL', 'Halab', 1),
(3130, 205, 'HM', 'Hamah', 1),
(3131, 205, 'HI', 'Hims', 1),
(3132, 205, 'ID', 'Idlib', 1),
(3133, 205, 'RD', 'Rif Dimashq', 1),
(3134, 205, 'TA', 'Tartus', 1),
(3135, 206, 'CH', 'Chang-hua', 1),
(3136, 206, 'CI', 'Chia-i', 1),
(3137, 206, 'HS', 'Hsin-chu', 1),
(3138, 206, 'HL', 'Hua-lien', 1),
(3139, 206, 'IL', 'I-lan', 1),
(3140, 206, 'KH', 'Kao-hsiung county', 1),
(3141, 206, 'KM', 'Kin-men', 1),
(3142, 206, 'LC', 'Lien-chiang', 1),
(3143, 206, 'ML', 'Miao-li', 1),
(3144, 206, 'NT', 'Nan-t''ou', 1),
(3145, 206, 'PH', 'P''eng-hu', 1),
(3146, 206, 'PT', 'P''ing-tung', 1),
(3147, 206, 'TG', 'T''ai-chung', 1),
(3148, 206, 'TA', 'T''ai-nan', 1),
(3149, 206, 'TP', 'T''ai-pei county', 1),
(3150, 206, 'TT', 'T''ai-tung', 1),
(3151, 206, 'TY', 'T''ao-yuan', 1),
(3152, 206, 'YL', 'Yun-lin', 1),
(3153, 206, 'CC', 'Chia-i city', 1),
(3154, 206, 'CL', 'Chi-lung', 1),
(3155, 206, 'HC', 'Hsin-chu', 1),
(3156, 206, 'TH', 'T''ai-chung', 1),
(3157, 206, 'TN', 'T''ai-nan', 1),
(3158, 206, 'KC', 'Kao-hsiung city', 1),
(3159, 206, 'TC', 'T''ai-pei city', 1),
(3160, 207, 'GB', 'Gorno-Badakhstan', 1),
(3161, 207, 'KT', 'Khatlon', 1),
(3162, 207, 'SU', 'Sughd', 1),
(3163, 208, 'AR', 'Arusha', 1),
(3164, 208, 'DS', 'Dar es Salaam', 1),
(3165, 208, 'DO', 'Dodoma', 1),
(3166, 208, 'IR', 'Iringa', 1),
(3167, 208, 'KA', 'Kagera', 1),
(3168, 208, 'KI', 'Kigoma', 1),
(3169, 208, 'KJ', 'Kilimanjaro', 1),
(3170, 208, 'LN', 'Lindi', 1),
(3171, 208, 'MY', 'Manyara', 1),
(3172, 208, 'MR', 'Mara', 1),
(3173, 208, 'MB', 'Mbeya', 1),
(3174, 208, 'MO', 'Morogoro', 1),
(3175, 208, 'MT', 'Mtwara', 1),
(3176, 208, 'MW', 'Mwanza', 1),
(3177, 208, 'PN', 'Pemba North', 1),
(3178, 208, 'PS', 'Pemba South', 1),
(3179, 208, 'PW', 'Pwani', 1),
(3180, 208, 'RK', 'Rukwa', 1),
(3181, 208, 'RV', 'Ruvuma', 1),
(3182, 208, 'SH', 'Shinyanga', 1),
(3183, 208, 'SI', 'Singida', 1),
(3184, 208, 'TB', 'Tabora', 1),
(3185, 208, 'TN', 'Tanga', 1),
(3186, 208, 'ZC', 'Zanzibar Central/South', 1),
(3187, 208, 'ZN', 'Zanzibar North', 1),
(3188, 208, 'ZU', 'Zanzibar Urban/West', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'K', 'Kara', 1),
(3266, 210, 'P', 'Plateaux', 1),
(3267, 210, 'S', 'Savanes', 1),
(3268, 210, 'C', 'Centrale', 1),
(3269, 210, 'M', 'Maritime', 1),
(3270, 211, 'A', 'Atafu', 1),
(3271, 211, 'F', 'Fakaofo', 1),
(3272, 211, 'N', 'Nukunonu', 1),
(3273, 212, 'H', 'Ha''apai', 1),
(3274, 212, 'T', 'Tongatapu', 1),
(3275, 212, 'V', 'Vava''u', 1),
(3276, 213, 'CT', 'Couva/Tabaquite/Talparo', 1),
(3277, 213, 'DM', 'Diego Martin', 1),
(3278, 213, 'MR', 'Mayaro/Rio Claro', 1),
(3279, 213, 'PD', 'Penal/Debe', 1),
(3280, 213, 'PT', 'Princes Town', 1),
(3281, 213, 'SG', 'Sangre Grande', 1),
(3282, 213, 'SL', 'San Juan/Laventille', 1),
(3283, 213, 'SI', 'Siparia', 1),
(3284, 213, 'TP', 'Tunapuna/Piarco', 1),
(3285, 213, 'PS', 'Port of Spain', 1),
(3286, 213, 'SF', 'San Fernando', 1),
(3287, 213, 'AR', 'Arima', 1),
(3288, 213, 'PF', 'Point Fortin', 1),
(3289, 213, 'CH', 'Chaguanas', 1),
(3290, 213, 'TO', 'Tobago', 1),
(3291, 214, 'AR', 'Ariana', 1),
(3292, 214, 'BJ', 'Beja', 1),
(3293, 214, 'BA', 'Ben Arous', 1),
(3294, 214, 'BI', 'Bizerte', 1),
(3295, 214, 'GB', 'Gabes', 1),
(3296, 214, 'GF', 'Gafsa', 1),
(3297, 214, 'JE', 'Jendouba', 1),
(3298, 214, 'KR', 'Kairouan', 1),
(3299, 214, 'KS', 'Kasserine', 1),
(3300, 214, 'KB', 'Kebili', 1),
(3301, 214, 'KF', 'Kef', 1),
(3302, 214, 'MH', 'Mahdia', 1),
(3303, 214, 'MN', 'Manouba', 1),
(3304, 214, 'ME', 'Medenine', 1),
(3305, 214, 'MO', 'Monastir', 1),
(3306, 214, 'NA', 'Nabeul', 1),
(3307, 214, 'SF', 'Sfax', 1),
(3308, 214, 'SD', 'Sidi', 1),
(3309, 214, 'SL', 'Siliana', 1),
(3310, 214, 'SO', 'Sousse', 1),
(3311, 214, 'TA', 'Tataouine', 1),
(3312, 214, 'TO', 'Tozeur', 1),
(3313, 214, 'TU', 'Tunis', 1),
(3314, 214, 'ZA', 'Zaghouan', 1),
(3315, 215, 'ADA', 'Adana', 1),
(3316, 215, 'ADI', 'Adiyaman', 1),
(3317, 215, 'AFY', 'Afyonkarahisar', 1),
(3318, 215, 'AGR', 'Agri', 1),
(3319, 215, 'AKS', 'Aksaray', 1),
(3320, 215, 'AMA', 'Amasya', 1),
(3321, 215, 'ANK', 'Ankara', 1),
(3322, 215, 'ANT', 'Antalya', 1),
(3323, 215, 'ARD', 'Ardahan', 1),
(3324, 215, 'ART', 'Artvin', 1),
(3325, 215, 'AYI', 'Aydin', 1),
(3326, 215, 'BAL', 'Balikesir', 1),
(3327, 215, 'BAR', 'Bartin', 1),
(3328, 215, 'BAT', 'Batman', 1),
(3329, 215, 'BAY', 'Bayburt', 1),
(3330, 215, 'BIL', 'Bilecik', 1),
(3331, 215, 'BIN', 'Bingol', 1),
(3332, 215, 'BIT', 'Bitlis', 1),
(3333, 215, 'BOL', 'Bolu', 1),
(3334, 215, 'BRD', 'Burdur', 1),
(3335, 215, 'BRS', 'Bursa', 1),
(3336, 215, 'CKL', 'Canakkale', 1),
(3337, 215, 'CKR', 'Cankiri', 1),
(3338, 215, 'COR', 'Corum', 1),
(3339, 215, 'DEN', 'Denizli', 1),
(3340, 215, 'DIY', 'Diyarbakir', 1),
(3341, 215, 'DUZ', 'Duzce', 1),
(3342, 215, 'EDI', 'Edirne', 1),
(3343, 215, 'ELA', 'Elazig', 1),
(3344, 215, 'EZC', 'Erzincan', 1),
(3345, 215, 'EZR', 'Erzurum', 1),
(3346, 215, 'ESK', 'Eskisehir', 1),
(3347, 215, 'GAZ', 'Gaziantep', 1),
(3348, 215, 'GIR', 'Giresun', 1),
(3349, 215, 'GMS', 'Gumushane', 1),
(3350, 215, 'HKR', 'Hakkari', 1),
(3351, 215, 'HTY', 'Hatay', 1),
(3352, 215, 'IGD', 'Igdir', 1),
(3353, 215, 'ISP', 'Isparta', 1),
(3354, 215, 'IST', 'Istanbul', 1),
(3355, 215, 'IZM', 'Izmir', 1),
(3356, 215, 'KAH', 'Kahramanmaras', 1),
(3357, 215, 'KRB', 'Karabuk', 1),
(3358, 215, 'KRM', 'Karaman', 1),
(3359, 215, 'KRS', 'Kars', 1),
(3360, 215, 'KAS', 'Kastamonu', 1),
(3361, 215, 'KAY', 'Kayseri', 1),
(3362, 215, 'KLS', 'Kilis', 1),
(3363, 215, 'KRK', 'Kirikkale', 1),
(3364, 215, 'KLR', 'Kirklareli', 1),
(3365, 215, 'KRH', 'Kirsehir', 1),
(3366, 215, 'KOC', 'Kocaeli', 1),
(3367, 215, 'KON', 'Konya', 1),
(3368, 215, 'KUT', 'Kutahya', 1),
(3369, 215, 'MAL', 'Malatya', 1),
(3370, 215, 'MAN', 'Manisa', 1),
(3371, 215, 'MAR', 'Mardin', 1),
(3372, 215, 'MER', 'Mersin', 1),
(3373, 215, 'MUG', 'Mugla', 1),
(3374, 215, 'MUS', 'Mus', 1),
(3375, 215, 'NEV', 'Nevsehir', 1),
(3376, 215, 'NIG', 'Nigde', 1),
(3377, 215, 'ORD', 'Ordu', 1),
(3378, 215, 'OSM', 'Osmaniye', 1),
(3379, 215, 'RIZ', 'Rize', 1),
(3380, 215, 'SAK', 'Sakarya', 1),
(3381, 215, 'SAM', 'Samsun', 1),
(3382, 215, 'SAN', 'Sanliurfa', 1),
(3383, 215, 'SII', 'Siirt', 1),
(3384, 215, 'SIN', 'Sinop', 1),
(3385, 215, 'SIR', 'Sirnak', 1),
(3386, 215, 'SIV', 'Sivas', 1),
(3387, 215, 'TEL', 'Tekirdag', 1),
(3388, 215, 'TOK', 'Tokat', 1),
(3389, 215, 'TRA', 'Trabzon', 1),
(3390, 215, 'TUN', 'Tunceli', 1),
(3391, 215, 'USK', 'Usak', 1),
(3392, 215, 'VAN', 'Van', 1),
(3393, 215, 'YAL', 'Yalova', 1),
(3394, 215, 'YOZ', 'Yozgat', 1),
(3395, 215, 'ZON', 'Zonguldak', 1),
(3396, 216, 'A', 'Ahal Welayaty', 1),
(3397, 216, 'B', 'Balkan Welayaty', 1),
(3398, 216, 'D', 'Dashhowuz Welayaty', 1),
(3399, 216, 'L', 'Lebap Welayaty', 1),
(3400, 216, 'M', 'Mary Welayaty', 1),
(3401, 217, 'AC', 'Ambergris Cays', 1),
(3402, 217, 'DC', 'Dellis Cay', 1),
(3403, 217, 'FC', 'French Cay', 1),
(3404, 217, 'LW', 'Little Water Cay', 1),
(3405, 217, 'RC', 'Parrot Cay', 1),
(3406, 217, 'PN', 'Pine Cay', 1),
(3407, 217, 'SL', 'Salt Cay', 1),
(3408, 217, 'GT', 'Grand Turk', 1),
(3409, 217, 'SC', 'South Caicos', 1),
(3410, 217, 'EC', 'East Caicos', 1),
(3411, 217, 'MC', 'Middle Caicos', 1),
(3412, 217, 'NC', 'North Caicos', 1),
(3413, 217, 'PR', 'Providenciales', 1),
(3414, 217, 'WC', 'West Caicos', 1),
(3415, 218, 'NMG', 'Nanumanga', 1),
(3416, 218, 'NLK', 'Niulakita', 1),
(3417, 218, 'NTO', 'Niutao', 1),
(3418, 218, 'FUN', 'Funafuti', 1),
(3419, 218, 'NME', 'Nanumea', 1),
(3420, 218, 'NUI', 'Nui', 1),
(3421, 218, 'NFT', 'Nukufetau', 1),
(3422, 218, 'NLL', 'Nukulaelae', 1),
(3423, 218, 'VAI', 'Vaitupu', 1),
(3424, 219, 'KAL', 'Kalangala', 1),
(3425, 219, 'KMP', 'Kampala', 1),
(3426, 219, 'KAY', 'Kayunga', 1),
(3427, 219, 'KIB', 'Kiboga', 1),
(3428, 219, 'LUW', 'Luwero', 1),
(3429, 219, 'MAS', 'Masaka', 1),
(3430, 219, 'MPI', 'Mpigi', 1),
(3431, 219, 'MUB', 'Mubende', 1),
(3432, 219, 'MUK', 'Mukono', 1),
(3433, 219, 'NKS', 'Nakasongola', 1),
(3434, 219, 'RAK', 'Rakai', 1),
(3435, 219, 'SEM', 'Sembabule', 1),
(3436, 219, 'WAK', 'Wakiso', 1),
(3437, 219, 'BUG', 'Bugiri', 1),
(3438, 219, 'BUS', 'Busia', 1),
(3439, 219, 'IGA', 'Iganga', 1),
(3440, 219, 'JIN', 'Jinja', 1),
(3441, 219, 'KAB', 'Kaberamaido', 1),
(3442, 219, 'KML', 'Kamuli', 1),
(3443, 219, 'KPC', 'Kapchorwa', 1),
(3444, 219, 'KTK', 'Katakwi', 1),
(3445, 219, 'KUM', 'Kumi', 1),
(3446, 219, 'MAY', 'Mayuge', 1),
(3447, 219, 'MBA', 'Mbale', 1),
(3448, 219, 'PAL', 'Pallisa', 1),
(3449, 219, 'SIR', 'Sironko', 1),
(3450, 219, 'SOR', 'Soroti', 1),
(3451, 219, 'TOR', 'Tororo', 1),
(3452, 219, 'ADJ', 'Adjumani', 1),
(3453, 219, 'APC', 'Apac', 1),
(3454, 219, 'ARU', 'Arua', 1),
(3455, 219, 'GUL', 'Gulu', 1),
(3456, 219, 'KIT', 'Kitgum', 1),
(3457, 219, 'KOT', 'Kotido', 1),
(3458, 219, 'LIR', 'Lira', 1),
(3459, 219, 'MRT', 'Moroto', 1),
(3460, 219, 'MOY', 'Moyo', 1),
(3461, 219, 'NAK', 'Nakapiripirit', 1),
(3462, 219, 'NEB', 'Nebbi', 1),
(3463, 219, 'PAD', 'Pader', 1),
(3464, 219, 'YUM', 'Yumbe', 1),
(3465, 219, 'BUN', 'Bundibugyo', 1),
(3466, 219, 'BSH', 'Bushenyi', 1),
(3467, 219, 'HOI', 'Hoima', 1),
(3468, 219, 'KBL', 'Kabale', 1),
(3469, 219, 'KAR', 'Kabarole', 1),
(3470, 219, 'KAM', 'Kamwenge', 1),
(3471, 219, 'KAN', 'Kanungu', 1),
(3472, 219, 'KAS', 'Kasese', 1),
(3473, 219, 'KBA', 'Kibaale', 1),
(3474, 219, 'KIS', 'Kisoro', 1),
(3475, 219, 'KYE', 'Kyenjojo', 1),
(3476, 219, 'MSN', 'Masindi', 1),
(3477, 219, 'MBR', 'Mbarara', 1),
(3478, 219, 'NTU', 'Ntungamo', 1),
(3479, 219, 'RUK', 'Rukungiri', 1),
(3480, 220, 'CK', 'Cherkasy', 1),
(3481, 220, 'CH', 'Chernihiv', 1),
(3482, 220, 'CV', 'Chernivtsi', 1),
(3483, 220, 'CR', 'Crimea', 1),
(3484, 220, 'DN', 'Dnipropetrovs''k', 1),
(3485, 220, 'DO', 'Donets''k', 1),
(3486, 220, 'IV', 'Ivano-Frankivs''k', 1),
(3487, 220, 'KL', 'Kharkiv Kherson', 1),
(3488, 220, 'KM', 'Khmel''nyts''kyy', 1),
(3489, 220, 'KR', 'Kirovohrad', 1),
(3490, 220, 'KV', 'Kiev', 1),
(3491, 220, 'KY', 'Kyyiv', 1),
(3492, 220, 'LU', 'Luhans''k', 1),
(3493, 220, 'LV', 'L''viv', 1),
(3494, 220, 'MY', 'Mykolayiv', 1),
(3495, 220, 'OD', 'Odesa', 1),
(3496, 220, 'PO', 'Poltava', 1),
(3497, 220, 'RI', 'Rivne', 1),
(3498, 220, 'SE', 'Sevastopol', 1),
(3499, 220, 'SU', 'Sumy', 1),
(3500, 220, 'TE', 'Ternopil''', 1),
(3501, 220, 'VI', 'Vinnytsya', 1),
(3502, 220, 'VO', 'Volyn''', 1),
(3503, 220, 'ZK', 'Zakarpattya', 1),
(3504, 220, 'ZA', 'Zaporizhzhya', 1),
(3505, 220, 'ZH', 'Zhytomyr', 1),
(3506, 221, 'AZ', 'Abu Zaby', 1),
(3507, 221, 'AJ', '''Ajman', 1),
(3508, 221, 'FU', 'Al Fujayrah', 1),
(3509, 221, 'SH', 'Ash Shariqah', 1),
(3510, 221, 'DU', 'Dubayy', 1),
(3511, 221, 'RK', 'R''as al Khaymah', 1),
(3512, 221, 'UQ', 'Umm al Qaywayn', 1),
(3513, 222, 'ABN', 'Aberdeen', 1),
(3514, 222, 'ABNS', 'Aberdeenshire', 1),
(3515, 222, 'ANG', 'Anglesey', 1),
(3516, 222, 'AGS', 'Angus', 1),
(3517, 222, 'ARY', 'Argyll and Bute', 1),
(3518, 222, 'BEDS', 'Bedfordshire', 1),
(3519, 222, 'BERKS', 'Berkshire', 1),
(3520, 222, 'BLA', 'Blaenau Gwent', 1),
(3521, 222, 'BRI', 'Bridgend', 1),
(3522, 222, 'BSTL', 'Bristol', 1),
(3523, 222, 'BUCKS', 'Buckinghamshire', 1),
(3524, 222, 'CAE', 'Caerphilly', 1),
(3525, 222, 'CAMBS', 'Cambridgeshire', 1),
(3526, 222, 'CDF', 'Cardiff', 1),
(3527, 222, 'CARM', 'Carmarthenshire', 1),
(3528, 222, 'CDGN', 'Ceredigion', 1),
(3529, 222, 'CHES', 'Cheshire', 1),
(3530, 222, 'CLACK', 'Clackmannanshire', 1),
(3531, 222, 'CON', 'Conwy', 1),
(3532, 222, 'CORN', 'Cornwall', 1),
(3533, 222, 'DNBG', 'Denbighshire', 1),
(3534, 222, 'DERBY', 'Derbyshire', 1),
(3535, 222, 'DVN', 'Devon', 1),
(3536, 222, 'DOR', 'Dorset', 1),
(3537, 222, 'DGL', 'Dumfries and Galloway', 1),
(3538, 222, 'DUND', 'Dundee', 1),
(3539, 222, 'DHM', 'Durham', 1),
(3540, 222, 'ARYE', 'East Ayrshire', 1),
(3541, 222, 'DUNBE', 'East Dunbartonshire', 1),
(3542, 222, 'LOTE', 'East Lothian', 1),
(3543, 222, 'RENE', 'East Renfrewshire', 1),
(3544, 222, 'ERYS', 'East Riding of Yorkshire', 1),
(3545, 222, 'SXE', 'East Sussex', 1),
(3546, 222, 'EDIN', 'Edinburgh', 1),
(3547, 222, 'ESX', 'Essex', 1),
(3548, 222, 'FALK', 'Falkirk', 1),
(3549, 222, 'FFE', 'Fife', 1),
(3550, 222, 'FLINT', 'Flintshire', 1),
(3551, 222, 'GLAS', 'Glasgow', 1),
(3552, 222, 'GLOS', 'Gloucestershire', 1),
(3553, 222, 'LDN', 'Greater London', 1),
(3554, 222, 'MCH', 'Greater Manchester', 1),
(3555, 222, 'GDD', 'Gwynedd', 1),
(3556, 222, 'HANTS', 'Hampshire', 1),
(3557, 222, 'HWR', 'Herefordshire', 1),
(3558, 222, 'HERTS', 'Hertfordshire', 1),
(3559, 222, 'HLD', 'Highlands', 1),
(3560, 222, 'IVER', 'Inverclyde', 1),
(3561, 222, 'IOW', 'Isle of Wight', 1),
(3562, 222, 'KNT', 'Kent', 1),
(3563, 222, 'LANCS', 'Lancashire', 1),
(3564, 222, 'LEICS', 'Leicestershire', 1),
(3565, 222, 'LINCS', 'Lincolnshire', 1),
(3566, 222, 'MSY', 'Merseyside', 1),
(3567, 222, 'MERT', 'Merthyr Tydfil', 1),
(3568, 222, 'MLOT', 'Midlothian', 1),
(3569, 222, 'MMOUTH', 'Monmouthshire', 1),
(3570, 222, 'MORAY', 'Moray', 1),
(3571, 222, 'NPRTAL', 'Neath Port Talbot', 1),
(3572, 222, 'NEWPT', 'Newport', 1),
(3573, 222, 'NOR', 'Norfolk', 1),
(3574, 222, 'ARYN', 'North Ayrshire', 1),
(3575, 222, 'LANN', 'North Lanarkshire', 1),
(3576, 222, 'YSN', 'North Yorkshire', 1),
(3577, 222, 'NHM', 'Northamptonshire', 1),
(3578, 222, 'NLD', 'Northumberland', 1),
(3579, 222, 'NOT', 'Nottinghamshire', 1),
(3580, 222, 'ORK', 'Orkney Islands', 1),
(3581, 222, 'OFE', 'Oxfordshire', 1),
(3582, 222, 'PEM', 'Pembrokeshire', 1),
(3583, 222, 'PERTH', 'Perth and Kinross', 1),
(3584, 222, 'PWS', 'Powys', 1),
(3585, 222, 'REN', 'Renfrewshire', 1),
(3586, 222, 'RHON', 'Rhondda Cynon Taff', 1),
(3587, 222, 'RUT', 'Rutland', 1),
(3588, 222, 'BOR', 'Scottish Borders', 1),
(3589, 222, 'SHET', 'Shetland Islands', 1),
(3590, 222, 'SPE', 'Shropshire', 1),
(3591, 222, 'SOM', 'Somerset', 1),
(3592, 222, 'ARYS', 'South Ayrshire', 1),
(3593, 222, 'LANS', 'South Lanarkshire', 1),
(3594, 222, 'YSS', 'South Yorkshire', 1),
(3595, 222, 'SFD', 'Staffordshire', 1),
(3596, 222, 'STIR', 'Stirling', 1),
(3597, 222, 'SFK', 'Suffolk', 1),
(3598, 222, 'SRY', 'Surrey', 1),
(3599, 222, 'SWAN', 'Swansea', 1),
(3600, 222, 'TORF', 'Torfaen', 1),
(3601, 222, 'TWR', 'Tyne and Wear', 1),
(3602, 222, 'VGLAM', 'Vale of Glamorgan', 1),
(3603, 222, 'WARKS', 'Warwickshire', 1),
(3604, 222, 'WDUN', 'West Dunbartonshire', 1),
(3605, 222, 'WLOT', 'West Lothian', 1),
(3606, 222, 'WMD', 'West Midlands', 1),
(3607, 222, 'SXW', 'West Sussex', 1),
(3608, 222, 'YSW', 'West Yorkshire', 1),
(3609, 222, 'WIL', 'Western Isles', 1),
(3610, 222, 'WLT', 'Wiltshire', 1),
(3611, 222, 'WORCS', 'Worcestershire', 1),
(3612, 222, 'WRX', 'Wrexham', 1),
(3613, 223, 'AL', 'Alabama', 1),
(3614, 223, 'AK', 'Alaska', 1),
(3615, 223, 'AS', 'American Samoa', 1),
(3616, 223, 'AZ', 'Arizona', 1),
(3617, 223, 'AR', 'Arkansas', 1),
(3618, 223, 'AF', 'Armed Forces Africa', 1),
(3619, 223, 'AA', 'Armed Forces Americas', 1),
(3620, 223, 'AC', 'Armed Forces Canada', 1),
(3621, 223, 'AE', 'Armed Forces Europe', 1),
(3622, 223, 'AM', 'Armed Forces Middle East', 1),
(3623, 223, 'AP', 'Armed Forces Pacific', 1),
(3624, 223, 'CA', 'California', 1),
(3625, 223, 'CO', 'Colorado', 1),
(3626, 223, 'CT', 'Connecticut', 1),
(3627, 223, 'DE', 'Delaware', 1),
(3628, 223, 'DC', 'District of Columbia', 1),
(3629, 223, 'FM', 'Federated States Of Micronesia', 1),
(3630, 223, 'FL', 'Florida', 1),
(3631, 223, 'GA', 'Georgia', 1),
(3632, 223, 'GU', 'Guam', 1),
(3633, 223, 'HI', 'Hawaii', 1),
(3634, 223, 'ID', 'Idaho', 1),
(3635, 223, 'IL', 'Illinois', 1),
(3636, 223, 'IN', 'Indiana', 1),
(3637, 223, 'IA', 'Iowa', 1),
(3638, 223, 'KS', 'Kansas', 1),
(3639, 223, 'KY', 'Kentucky', 1),
(3640, 223, 'LA', 'Louisiana', 1),
(3641, 223, 'ME', 'Maine', 1),
(3642, 223, 'MH', 'Marshall Islands', 1),
(3643, 223, 'MD', 'Maryland', 1),
(3644, 223, 'MA', 'Massachusetts', 1),
(3645, 223, 'MI', 'Michigan', 1),
(3646, 223, 'MN', 'Minnesota', 1),
(3647, 223, 'MS', 'Mississippi', 1),
(3648, 223, 'MO', 'Missouri', 1),
(3649, 223, 'MT', 'Montana', 1),
(3650, 223, 'NE', 'Nebraska', 1),
(3651, 223, 'NV', 'Nevada', 1),
(3652, 223, 'NH', 'New Hampshire', 1),
(3653, 223, 'NJ', 'New Jersey', 1),
(3654, 223, 'NM', 'New Mexico', 1),
(3655, 223, 'NY', 'New York', 1),
(3656, 223, 'NC', 'North Carolina', 1),
(3657, 223, 'ND', 'North Dakota', 1),
(3658, 223, 'MP', 'Northern Mariana Islands', 1),
(3659, 223, 'OH', 'Ohio', 1),
(3660, 223, 'OK', 'Oklahoma', 1),
(3661, 223, 'OR', 'Oregon', 1),
(3662, 223, 'PW', 'Palau', 1),
(3663, 223, 'PA', 'Pennsylvania', 1),
(3664, 223, 'PR', 'Puerto Rico', 1),
(3665, 223, 'RI', 'Rhode Island', 1),
(3666, 223, 'SC', 'South Carolina', 1),
(3667, 223, 'SD', 'South Dakota', 1),
(3668, 223, 'TN', 'Tennessee', 1),
(3669, 223, 'TX', 'Texas', 1),
(3670, 223, 'UT', 'Utah', 1),
(3671, 223, 'VT', 'Vermont', 1),
(3672, 223, 'VI', 'Virgin Islands', 1),
(3673, 223, 'VA', 'Virginia', 1),
(3674, 223, 'WA', 'Washington', 1),
(3675, 223, 'WV', 'West Virginia', 1),
(3676, 223, 'WI', 'Wisconsin', 1),
(3677, 223, 'WY', 'Wyoming', 1),
(3678, 224, 'BI', 'Baker Island', 1),
(3679, 224, 'HI', 'Howland Island', 1),
(3680, 224, 'JI', 'Jarvis Island', 1),
(3681, 224, 'JA', 'Johnston Atoll', 1),
(3682, 224, 'KR', 'Kingman Reef', 1),
(3683, 224, 'MA', 'Midway Atoll', 1),
(3684, 224, 'NI', 'Navassa Island', 1),
(3685, 224, 'PA', 'Palmyra Atoll', 1),
(3686, 224, 'WI', 'Wake Island', 1),
(3687, 225, 'AR', 'Artigas', 1),
(3688, 225, 'CA', 'Canelones', 1),
(3689, 225, 'CL', 'Cerro Largo', 1),
(3690, 225, 'CO', 'Colonia', 1),
(3691, 225, 'DU', 'Durazno', 1),
(3692, 225, 'FS', 'Flores', 1),
(3693, 225, 'FA', 'Florida', 1),
(3694, 225, 'LA', 'Lavalleja', 1),
(3695, 225, 'MA', 'Maldonado', 1),
(3696, 225, 'MO', 'Montevideo', 1),
(3697, 225, 'PA', 'Paysandu', 1),
(3698, 225, 'RN', 'Rio Negro', 1),
(3699, 225, 'RV', 'Rivera', 1),
(3700, 225, 'RO', 'Rocha', 1),
(3701, 225, 'SL', 'Salto', 1),
(3702, 225, 'SJ', 'San Jose', 1),
(3703, 225, 'SO', 'Soriano', 1),
(3704, 225, 'TA', 'Tacuarembo', 1),
(3705, 225, 'TT', 'Treinta y Tres', 1),
(3706, 226, 'AN', 'Andijon', 1),
(3707, 226, 'BU', 'Buxoro', 1),
(3708, 226, 'FA', 'Farg''ona', 1),
(3709, 226, 'JI', 'Jizzax', 1),
(3710, 226, 'NG', 'Namangan', 1),
(3711, 226, 'NW', 'Navoiy', 1),
(3712, 226, 'QA', 'Qashqadaryo', 1),
(3713, 226, 'QR', 'Qoraqalpog''iston Republikasi', 1),
(3714, 226, 'SA', 'Samarqand', 1),
(3715, 226, 'SI', 'Sirdaryo', 1),
(3716, 226, 'SU', 'Surxondaryo', 1),
(3717, 226, 'TK', 'Toshkent City', 1),
(3718, 226, 'TO', 'Toshkent Region', 1),
(3719, 226, 'XO', 'Xorazm', 1),
(3720, 227, 'MA', 'Malampa', 1),
(3721, 227, 'PE', 'Penama', 1),
(3722, 227, 'SA', 'Sanma', 1),
(3723, 227, 'SH', 'Shefa', 1),
(3724, 227, 'TA', 'Tafea', 1),
(3725, 227, 'TO', 'Torba', 1),
(3726, 229, 'AM', 'Amazonas', 1),
(3727, 229, 'AN', 'Anzoategui', 1),
(3728, 229, 'AP', 'Apure', 1),
(3729, 229, 'AR', 'Aragua', 1),
(3730, 229, 'BA', 'Barinas', 1),
(3731, 229, 'BO', 'Bolivar', 1),
(3732, 229, 'CA', 'Carabobo', 1),
(3733, 229, 'CO', 'Cojedes', 1),
(3734, 229, 'DA', 'Delta Amacuro', 1),
(3735, 229, 'DF', 'Dependencias Federales', 1),
(3736, 229, 'DI', 'Distrito Federal', 1),
(3737, 229, 'FA', 'Falcon', 1),
(3738, 229, 'GU', 'Guarico', 1),
(3739, 229, 'LA', 'Lara', 1),
(3740, 229, 'ME', 'Merida', 1),
(3741, 229, 'MI', 'Miranda', 1),
(3742, 229, 'MO', 'Monagas', 1),
(3743, 229, 'NE', 'Nueva Esparta', 1),
(3744, 229, 'PO', 'Portuguesa', 1),
(3745, 229, 'SU', 'Sucre', 1),
(3746, 229, 'TA', 'Tachira', 1),
(3747, 229, 'TR', 'Trujillo', 1),
(3748, 229, 'VA', 'Vargas', 1),
(3749, 229, 'YA', 'Yaracuy', 1),
(3750, 229, 'ZU', 'Zulia', 1),
(3751, 230, 'AG', 'An Giang', 1),
(3752, 230, 'BG', 'Bac Giang', 1),
(3753, 230, 'BK', 'Bac Kan', 1),
(3754, 230, 'BL', 'Bac Lieu', 1),
(3755, 230, 'BC', 'Bac Ninh', 1),
(3756, 230, 'BR', 'Ba Ria-Vung Tau', 1),
(3757, 230, 'BN', 'Ben Tre', 1),
(3758, 230, 'BH', 'Binh Dinh', 1),
(3759, 230, 'BU', 'Binh Duong', 1),
(3760, 230, 'BP', 'Binh Phuoc', 1),
(3761, 230, 'BT', 'Binh Thuan', 1),
(3762, 230, 'CM', 'Ca Mau', 1),
(3763, 230, 'CT', 'Can Tho', 1),
(3764, 230, 'CB', 'Cao Bang', 1),
(3765, 230, 'DL', 'Dak Lak', 1),
(3766, 230, 'DG', 'Dak Nong', 1),
(3767, 230, 'DN', 'Da Nang', 1),
(3768, 230, 'DB', 'Dien Bien', 1),
(3769, 230, 'DI', 'Dong Nai', 1),
(3770, 230, 'DT', 'Dong Thap', 1),
(3771, 230, 'GL', 'Gia Lai', 1),
(3772, 230, 'HG', 'Ha Giang', 1),
(3773, 230, 'HD', 'Hai Duong', 1),
(3774, 230, 'HP', 'Hai Phong', 1),
(3775, 230, 'HM', 'Ha Nam', 1),
(3776, 230, 'HI', 'Ha Noi', 1),
(3777, 230, 'HT', 'Ha Tay', 1),
(3778, 230, 'HH', 'Ha Tinh', 1),
(3779, 230, 'HB', 'Hoa Binh', 1),
(3780, 230, 'HC', 'Ho Chi Minh City', 1),
(3781, 230, 'HU', 'Hau Giang', 1),
(3782, 230, 'HY', 'Hung Yen', 1),
(3783, 232, 'C', 'Saint Croix', 1),
(3784, 232, 'J', 'Saint John', 1),
(3785, 232, 'T', 'Saint Thomas', 1),
(3786, 233, 'A', 'Alo', 1),
(3787, 233, 'S', 'Sigave', 1),
(3788, 233, 'W', 'Wallis', 1),
(3789, 235, 'AB', 'Abyan', 1),
(3790, 235, 'AD', 'Adan', 1),
(3791, 235, 'AM', 'Amran', 1),
(3792, 235, 'BA', 'Al Bayda', 1),
(3793, 235, 'DA', 'Ad Dali', 1),
(3794, 235, 'DH', 'Dhamar', 1),
(3795, 235, 'HD', 'Hadramawt', 1),
(3796, 235, 'HJ', 'Hajjah', 1),
(3797, 235, 'HU', 'Al Hudaydah', 1),
(3798, 235, 'IB', 'Ibb', 1),
(3799, 235, 'JA', 'Al Jawf', 1),
(3800, 235, 'LA', 'Lahij', 1),
(3801, 235, 'MA', 'Ma''rib', 1),
(3802, 235, 'MR', 'Al Mahrah', 1),
(3803, 235, 'MW', 'Al Mahwit', 1),
(3804, 235, 'SD', 'Sa''dah', 1),
(3805, 235, 'SN', 'San''a', 1),
(3806, 235, 'SH', 'Shabwah', 1),
(3807, 235, 'TA', 'Ta''izz', 1),
(3808, 236, 'KOS', 'Kosovo', 1),
(3809, 236, 'MON', 'Montenegro', 1),
(3810, 236, 'SER', 'Serbia', 1),
(3811, 236, 'VOJ', 'Vojvodina', 1),
(3812, 237, 'BC', 'Bas-Congo', 1),
(3813, 237, 'BN', 'Bandundu', 1),
(3814, 237, 'EQ', 'Equateur', 1),
(3815, 237, 'KA', 'Katanga', 1),
(3816, 237, 'KE', 'Kasai-Oriental', 1),
(3817, 237, 'KN', 'Kinshasa', 1),
(3818, 237, 'KW', 'Kasai-Occidental', 1),
(3819, 237, 'MA', 'Maniema', 1),
(3820, 237, 'NK', 'Nord-Kivu', 1),
(3821, 237, 'OR', 'Orientale', 1),
(3822, 237, 'SK', 'Sud-Kivu', 1),
(3823, 238, 'CE', 'Central', 1),
(3824, 238, 'CB', 'Copperbelt', 1),
(3825, 238, 'EA', 'Eastern', 1),
(3826, 238, 'LP', 'Luapula', 1),
(3827, 238, 'LK', 'Lusaka', 1),
(3828, 238, 'NO', 'Northern', 1),
(3829, 238, 'NW', 'North-Western', 1),
(3830, 238, 'SO', 'Southern', 1),
(3831, 238, 'WE', 'Western', 1),
(3832, 239, 'BU', 'Bulawayo', 1),
(3833, 239, 'HA', 'Harare', 1),
(3834, 239, 'ML', 'Manicaland', 1),
(3835, 239, 'MC', 'Mashonaland Central', 1),
(3836, 239, 'ME', 'Mashonaland East', 1),
(3837, 239, 'MW', 'Mashonaland West', 1),
(3838, 239, 'MV', 'Masvingo', 1),
(3839, 239, 'MN', 'Matabeleland North', 1),
(3840, 239, 'MS', 'Matabeleland South', 1),
(3841, 239, 'MD', 'Midlands', 1),
(3861, 105, 'CB', 'Campobasso', 1),
(3862, 105, 'CI', 'Carbonia-Iglesias', 1),
(3863, 105, 'CE', 'Caserta', 1),
(3864, 105, 'CT', 'Catania', 1),
(3865, 105, 'CZ', 'Catanzaro', 1),
(3866, 105, 'CH', 'Chieti', 1),
(3867, 105, 'CO', 'Como', 1),
(3868, 105, 'CS', 'Cosenza', 1),
(3869, 105, 'CR', 'Cremona', 1),
(3870, 105, 'KR', 'Crotone', 1),
(3871, 105, 'CN', 'Cuneo', 1),
(3872, 105, 'EN', 'Enna', 1),
(3873, 105, 'FE', 'Ferrara', 1),
(3874, 105, 'FI', 'Firenze', 1),
(3875, 105, 'FG', 'Foggia', 1),
(3876, 105, 'FC', 'Forli-Cesena', 1),
(3877, 105, 'FR', 'Frosinone', 1),
(3878, 105, 'GE', 'Genova', 1),
(3879, 105, 'GO', 'Gorizia', 1),
(3880, 105, 'GR', 'Grosseto', 1),
(3881, 105, 'IM', 'Imperia', 1),
(3882, 105, 'IS', 'Isernia', 1),
(3883, 105, 'AQ', 'L&#39;Aquila', 1),
(3884, 105, 'SP', 'La Spezia', 1),
(3885, 105, 'LT', 'Latina', 1),
(3886, 105, 'LE', 'Lecce', 1),
(3887, 105, 'LC', 'Lecco', 1),
(3888, 105, 'LI', 'Livorno', 1),
(3889, 105, 'LO', 'Lodi', 1),
(3890, 105, 'LU', 'Lucca', 1),
(3891, 105, 'MC', 'Macerata', 1),
(3892, 105, 'MN', 'Mantova', 1),
(3893, 105, 'MS', 'Massa-Carrara', 1),
(3894, 105, 'MT', 'Matera', 1),
(3895, 105, 'VS', 'Medio Campidano', 1),
(3896, 105, 'ME', 'Messina', 1),
(3897, 105, 'MI', 'Milano', 1),
(3898, 105, 'MO', 'Modena', 1),
(3899, 105, 'NA', 'Napoli', 1),
(3900, 105, 'NO', 'Novara', 1),
(3901, 105, 'NU', 'Nuoro', 1),
(3902, 105, 'OG', 'Ogliastra', 1),
(3903, 105, 'OT', 'Olbia-Tempio', 1),
(3904, 105, 'OR', 'Oristano', 1),
(3905, 105, 'PD', 'Padova', 1),
(3906, 105, 'PA', 'Palermo', 1),
(3907, 105, 'PR', 'Parma', 1),
(3908, 105, 'PV', 'Pavia', 1),
(3909, 105, 'PG', 'Perugia', 1),
(3910, 105, 'PU', 'Pesaro e Urbino', 1),
(3911, 105, 'PE', 'Pescara', 1),
(3912, 105, 'PC', 'Piacenza', 1),
(3913, 105, 'PI', 'Pisa', 1),
(3914, 105, 'PT', 'Pistoia', 1),
(3915, 105, 'PN', 'Pordenone', 1),
(3916, 105, 'PZ', 'Potenza', 1),
(3917, 105, 'PO', 'Prato', 1),
(3918, 105, 'RG', 'Ragusa', 1),
(3919, 105, 'RA', 'Ravenna', 1),
(3920, 105, 'RC', 'Reggio Calabria', 1),
(3921, 105, 'RE', 'Reggio Emilia', 1),
(3922, 105, 'RI', 'Rieti', 1),
(3923, 105, 'RN', 'Rimini', 1),
(3924, 105, 'RM', 'Roma', 1),
(3925, 105, 'RO', 'Rovigo', 1),
(3926, 105, 'SA', 'Salerno', 1),
(3927, 105, 'SS', 'Sassari', 1),
(3928, 105, 'SV', 'Savona', 1),
(3929, 105, 'SI', 'Siena', 1),
(3930, 105, 'SR', 'Siracusa', 1),
(3931, 105, 'SO', 'Sondrio', 1),
(3932, 105, 'TA', 'Taranto', 1),
(3933, 105, 'TE', 'Teramo', 1),
(3934, 105, 'TR', 'Terni', 1),
(3935, 105, 'TO', 'Torino', 1),
(3936, 105, 'TP', 'Trapani', 1),
(3937, 105, 'TN', 'Trento', 1),
(3938, 105, 'TV', 'Treviso', 1),
(3939, 105, 'TS', 'Trieste', 1),
(3940, 105, 'UD', 'Udine', 1),
(3941, 105, 'VA', 'Varese', 1),
(3942, 105, 'VE', 'Venezia', 1),
(3943, 105, 'VB', 'Verbano-Cusio-Ossola', 1),
(3944, 105, 'VC', 'Vercelli', 1),
(3945, 105, 'VR', 'Verona', 1),
(3946, 105, 'VV', 'Vibo Valentia', 1),
(3947, 105, 'VI', 'Vicenza', 1),
(3948, 105, 'VT', 'Viterbo', 1),
(3949, 222, 'ANT', 'County Antrim', 1),
(3950, 222, 'ARM', 'County Armagh', 1),
(3951, 222, 'DOW', 'County Down', 1),
(3952, 222, 'FER', 'County Fermanagh', 1),
(3953, 222, 'LDY', 'County Londonderry', 1),
(3954, 222, 'TYR', 'County Tyrone', 1),
(3955, 222, 'CMA', 'Cumbria', 1),
(3956, 190, '1', 'Pomurska', 1),
(3957, 190, '2', 'Podravska', 1),
(3958, 190, '3', 'Koroška', 1),
(3959, 190, '4', 'Savinjska', 1),
(3960, 190, '5', 'Zasavska', 1),
(3961, 190, '6', 'Spodnjeposavska', 1),
(3962, 190, '7', 'Jugovzhodna Slovenija', 1),
(3963, 190, '8', 'Osrednjeslovenska', 1),
(3964, 190, '9', 'Gorenjska', 1),
(3965, 190, '10', 'Notranjsko-kraška', 1),
(3966, 190, '11', 'Goriška', 1),
(3967, 190, '12', 'Obalno-kraška', 1);

-- --------------------------------------------------------

--
-- Table structure for table `zone_to_geo_zone`
--

CREATE TABLE IF NOT EXISTS `zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=66 ;

--
-- Dumping data for table `zone_to_geo_zone`
--

INSERT INTO `zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(57, 222, 0, 3, '2010-02-26 22:33:24', '0000-00-00 00:00:00'),
(65, 222, 0, 4, '2010-12-15 15:18:13', '0000-00-00 00:00:00');