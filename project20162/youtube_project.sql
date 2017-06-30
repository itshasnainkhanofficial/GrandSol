-- phpMyAdmin SQL Dump
-- version 2.11.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 13, 2016 at 12:31 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `youtube_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `id` int(3) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `password`) VALUES
(0, 'amit', 'noble');

-- --------------------------------------------------------

--
-- Table structure for table `checkout_address`
--

CREATE TABLE IF NOT EXISTS `checkout_address` (
  `id` int(5) NOT NULL auto_increment,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `contactno` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `checkout_address`
--

INSERT INTO `checkout_address` (`id`, `firstname`, `lastname`, `email`, `address`, `city`, `pincode`, `contactno`) VALUES
(1, 'amit', 'andipara', 'amit.andipara@gmail.com', 'rajkot', 'rajkot', '360005', '9925010051'),
(2, 'pp', 'pp', 'pp', 'pp', 'pp', 'pp', 'pp'),
(3, 'ii', 'ii', 'ii', 'ii', 'ii', '360005', '9925010051'),
(4, 'fdf', 'dfd', 'fdfd@gmail.com', 'dfdfd', 'dafdf', '360005', '9925010051');

-- --------------------------------------------------------

--
-- Table structure for table `confirm_order_address`
--

CREATE TABLE IF NOT EXISTS `confirm_order_address` (
  `id` int(5) NOT NULL auto_increment,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `contactno` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `confirm_order_address`
--

INSERT INTO `confirm_order_address` (`id`, `firstname`, `lastname`, `email`, `address`, `city`, `pincode`, `contactno`) VALUES
(1, 'amit', 'andipara', 'amit.andipara@gmail.com', 'rajkot', 'rajkot', '360005', '9925010051'),
(2, 'amit', 'andipara', 'amit.andipara@gmail.com', 'rajkot', 'rajkot', '360005', '9925010051'),
(3, 'pp', 'pp', 'pp', 'pp', 'pp', 'pp', 'pp'),
(4, 'amit', 'andipara', 'amit.andipara@gmail.com', 'rajkot', 'rajkot', '360005', '9925010051'),
(5, 'amit', 'andipara', 'amit.andipara@gmail.com', 'rajkot', 'rajkot', '360005', '9925010051'),
(6, 'ii', 'ii', 'ii', 'ii', 'ii', '360005', '9925010051');

-- --------------------------------------------------------

--
-- Table structure for table `confirm_order_product`
--

CREATE TABLE IF NOT EXISTS `confirm_order_product` (
  `id` int(5) NOT NULL auto_increment,
  `order_id` varchar(10) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `product_price` int(5) NOT NULL,
  `product_qty` int(5) NOT NULL,
  `product_image` varchar(500) NOT NULL,
  `product_total` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `confirm_order_product`
--

INSERT INTO `confirm_order_product` (`id`, `order_id`, `product_name`, `product_price`, `product_qty`, `product_image`, `product_total`) VALUES
(1, '1', 'ladies dress', 1, 1, 'product_image/aabda4bdf44196a71c03f210263ea68aDSC05546.JPG', '1'),
(2, '3', 'ladies dress', 1, 1, 'product_image/aabda4bdf44196a71c03f210263ea68aDSC05546.JPG', '1'),
(3, '4', 'ladies dress', 1, 1, 'product_image/aabda4bdf44196a71c03f210263ea68aDSC05546.JPG', '1'),
(4, '5', 'ladies dress', 1, 1, 'product_image/aabda4bdf44196a71c03f210263ea68aDSC05546.JPG', '1'),
(5, '6', 'ladies dress', 1, 2, 'product_image/aabda4bdf44196a71c03f210263ea68aDSC05546.JPG', '2');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(5) NOT NULL auto_increment,
  `product_name` varchar(150) NOT NULL,
  `product_price` int(5) NOT NULL,
  `product_qty` int(5) NOT NULL,
  `product_image` varchar(500) NOT NULL,
  `product_category` varchar(50) NOT NULL,
  `pproduct_desc` varchar(500) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_price`, `product_qty`, `product_image`, `product_category`, `pproduct_desc`) VALUES
(1, 'ladies dress', 1, 2, 'product_image/aabda4bdf44196a71c03f210263ea68aDSC05546.JPG', 'Ladies_Clothes', 'excellent product'),
(2, 'ladies new dress', 400, 5, 'product_image/7efc304c215c5794329f7b366d7efe44DSC05546.JPG', 'Ladies_Clothes', 'this is very nice'),
(3, 'this is testing', 20, 2, 'product_image/8032a2c9253500622919ac3e6aee3875girl2.jpg', 'Ladies_Clothes', 'this is good clothes'),
(4, 'this is testing', 50, 5, 'product_image/def702ad25a1d92e890ce9751606abea1.jpg', 'Ladies_Clothes', 'this is nice product'),
(5, 'this is testing', 500, 5, 'product_image/5c84c287790f976fc8fde25b33a63faa2.jpg', 'Ladies_Clothes', 'this is nice product'),
(6, 'this is testing', 30, 5, 'product_image/afbdc3e72acdf1fca737cc17b5223ac33.jpg', 'Ladies_Clothes', 'this is nice product'),
(7, 'this is testing', 25, 4, 'product_image/7007877c14fe3d85a3f226fafff2e9cf4.jpg', 'Ladies_Clothes', 'this is nice product'),
(8, 'this is testing', 50, 5, 'product_image/435abab41de19283dcce459bc98e66b05.gif', 'Ladies_Clothes', 'this is nice product'),
(9, 'this is testing', 50, 5, 'product_image/7a32522cb6dc1adf24f9dfb024a7d0546.jpg', 'Ladies_Clothes', 'this is nice product'),
(10, 'this is testing', 50, 5, 'product_image/d256af308a2da1abf0bd8a0081902dc47.jpg', 'Ladies_Clothes', 'this is nice product'),
(11, 'this is testing', 50, 5, 'product_image/30b1cc2905a1c5ab1463fa98b5f74c238.jpg', 'Ladies_Clothes', 'this is nice product'),
(12, 'this is testing', 50, 5, 'product_image/9070fb3c61afc2e2c86f3e2f4981da359.jpg', 'Ladies_Clothes', 'this is nice product');
