-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: May 11, 2021 at 08:27 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `role`, `email`, `mobile`, `status`) VALUES
(1, 'admin', 'admin', 0, '', '', 1),
(6, 'nishchay', '123456', 1, 'nishchaypandya10@gmail.com', '+919106707854', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(1, 'wedding', 1),
(2, 'bday', 1),
(4, 'party', 1),
(5, 'Festival', 1),
(6, 'Musical', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(4, 'test', 'test@gmail.com', '9990413778', 'test', '2020-05-01 09:21:37');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_master`
--

CREATE TABLE `coupon_master` (
  `id` int(11) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `coupon_value` int(11) NOT NULL,
  `coupon_type` varchar(10) NOT NULL,
  `cart_min_value` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon_master`
--

INSERT INTO `coupon_master` (`id`, `coupon_code`, `coupon_value`, `coupon_type`, `cart_min_value`, `status`) VALUES
(1, 'First50', 1000, 'Rupee', 1500, 1),
(2, 'First60', 20, 'Percentage', 1000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` int(11) NOT NULL,
  `length` float NOT NULL,
  `breadth` float NOT NULL,
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `txnid` varchar(20) NOT NULL,
  `mihpayid` varchar(20) NOT NULL,
  `ship_order_id` int(11) NOT NULL,
  `ship_shipment_id` int(11) NOT NULL,
  `payu_status` varchar(10) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `coupon_value` varchar(50) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `length`, `breadth`, `height`, `weight`, `txnid`, `mihpayid`, `ship_order_id`, `ship_shipment_id`, `payu_status`, `coupon_id`, `coupon_value`, `coupon_code`, `added_on`) VALUES
(1, 1, 'delhi', 'delhi', 110076, 'COD', 110, 'pending', 1, 0, 0, 0, 0, 'a0a7dfccb449d8fef1fc', '', 0, 0, '', 0, '', '', '2020-05-29 09:55:15'),
(2, 1, 'Delhi', 'Delhi', 110076, 'COD', 250, 'pending', 1, 0, 0, 0, 0, '2f51ccbc668e912fa9c2', '', 0, 0, '', 0, '', '', '2020-05-29 09:59:03'),
(3, 3, 'pavanchakki , near anjali cebal network, jamnagar', 'Jamnagar', 361005, 'COD', 150, 'pending', 1, 0, 0, 0, 0, 'e53d77b029a97a318d17', '', 0, 0, '', 0, '', '', '2021-05-09 10:55:16'),
(4, 3, 'pavanchakki , near anjali cebal network, jamnagar', 'Jamnagar', 361005, 'payu', 150, 'pending', 2, 0, 0, 0, 0, '1527beac709168970065', '', 0, 0, '', 0, '', '', '2021-05-09 03:02:55'),
(5, 3, 'pavanchakki , near anjali cebal network, jamnagar', 'Select city', 361005, 'COD', 150, 'Success', 5, 0, 0, 0, 0, '5320f8901d219eb621f1', '', 0, 0, '', 0, '', '', '2021-05-09 03:03:41'),
(6, 3, 'test', 'jamnagar', 3610001, 'payu', 1350, 'pending', 1, 0, 0, 0, 0, '9bf05da9e38f5858e08b', '', 0, 0, '', 0, '', '', '2021-05-09 04:53:17'),
(7, 3, 'pavanchakki , near anjali cebal network, jamnagar', 'Bodakdev', 361005, 'payu', 150, 'pending', 1, 0, 0, 0, 0, '8a338176460874619a17', '', 0, 0, '', 0, '', '', '2021-05-09 04:55:13'),
(8, 3, 'pavanchakki , near anjali cebal network, jamnagar', 'Bodakdev', 361005, 'COD', 150, 'pending', 1, 0, 0, 0, 0, '5e44d5a9f26106b4748f', '', 0, 0, '', 0, '', '', '2021-05-09 06:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`) VALUES
(1, 1, 12, 1, 100),
(2, 1, 10, 1, 10),
(3, 2, 13, 1, 150),
(4, 2, 12, 1, 100),
(5, 3, 14, 1, 150),
(6, 4, 14, 1, 150),
(7, 5, 14, 1, 150),
(8, 6, 14, 9, 150),
(9, 7, 14, 1, 150),
(10, 8, 14, 1, 150);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'accepted'),
(2, 'decline'),
(3, 'not avialable');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `best_seller` int(11) NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `added_by` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `sub_categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `added_by`, `status`) VALUES
(14, 2, 1, 'Green Leaf Caterers, jamnagar', 180, 150, 100, '311981497_maharaja_caterers_caterers_mumbai_14618.jpg', '3 shak punjabi/Gujrati. dal-fey jeera rice. including 1 sweet,1 farshan and chash ,papad.paratha/nan/roti.', 'World class level experience with your kind of budget,this is what they are experts at jamnagar.\r\n(note:-*available season wise food. you can customize it just mess us)\r\n\r\n25% of the package price to be paid at the time of booking. Remaining amount to be paid directly to the vendor on the day of the event.\r\n\r\n\r\nNo additional charges applicable for transportation within the city. Travel and stay charges to be borne by the client if the event is outside the city.\r\nServices taken over and above the provided package will be charged additionally. \r\nWe guarantee on time arrival of the artist/vendor at the location on the day of the event. We do not take responsibility for the quality of services delivered. ( General marketplace rules ) \r\n\r\n\r\nCancellation Policy\r\nThis booking cannot be canceled. Changes in date allowed at no extra charge.', 1, 'Green Leaf Caterers', 'World class level Food.', 'catrash, jamanagar', 6, 1),
(15, 2, 1, 'Mini Punjab Catering', 150, 120, 100, '256259278_wedding-caterers.jpg', 'Mini Punjab is a leading brand in outdoor catering services. They offer world-class food and hospitality. They can make any event sparkle with their expertise, as they specialize in outdoor catering.', 'Phone Number\r\n+912249423758\r\n\r\n\r\nMini Punjab is a leading brand in outdoor catering services. They offer world-class food and hospitality. They can make any event sparkle with their expertise, as they specialize in outdoor catering.\r\n\r\nMini Punjab offers more than just the internationally recognised Koliwada Fish Fry, thick, sweet lassi and desi ghee-laden dishes it is famous for. Whether you\'re planning a wedding, private party, corporate event, conference or symposium, the catering wing of this legendary brand has a menu that covers the most popular cuisines — Punjabi, Continental, Chinese, Gujarati, Marwari, South Indian, Bengali, Sindhi, Jain, Japanese, Thai and Mexican. The food is always delicious — whether you choose the buffet, live counters or both — and is served in quality crockery.\r\n\r\nMini Punjab is a caterer based out of Mumbai . Mini Punjab\'s telephone number is 76-66-77-88-99, Mini Punjab website address is http://www.minipunjab.com/default.html, Facebook page is Mini Punjab and address is G.T.B. Nagar, Everard Nagar, Sion, Mumbai.\r\nMini Punjab is mainly known for Wedding Catering, Party Catering , Marriage Catering Services.\r\nIn terms of pricing Mini Punjab offers various packages starting at Rs 920/-.\r\nHas been viewed 154 times and shortlisted by 2 customers over the last month.\r\nThere are 1 albums here at Weddingz -- suggest you have a look. Call weddingz.in to book Mini Punjab at guaranteed prices and with peace of mind.\r\n\r\n\r\nBooking Policy\r\n25% of the package price to be paid at the time of booking. Remaining amount to be paid directly to the vendor on the day of the event.\r\nCancellation Policy\r\nThis booking cannot be canceled. Changes in date allowed at no extra charge.', 0, 'Mini Punjab', 'Mini Punjab is a leading brand in outdoor catering services.', 'Mini Punjab catering services.', 1, 1),
(16, 5, 15, 'Akshaya Caterers,jamnagar', 170, 140, 100, '127049763_maharaja_caterers_caterers_mumbai_14617.jpg', 'Featured Package Price\r\n 500\r\nPhone Number\r\n+912249423758\r\nAddress\r\nSufala CHS, B.R. Road, Opp. Model Town,Mulund (West)', 'Akshaya Caterers, Mumbai offer options of choosing from a simple pre-packaged catering menu or a customized menu that could fit your unique taste and budget. Their main aim is to ensure the complete satisfaction of every customer and their guest, while offering professional but personalized service throughout the event', 0, 'About Akshaya Caterers,', 'About Akshaya Caterers,', 'About Akshaya Caterers,', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shiprocket_token`
--

CREATE TABLE `shiprocket_token` (
  `id` int(11) NOT NULL,
  `token` varchar(500) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shiprocket_token`
--

INSERT INTO `shiprocket_token` (`id`, `token`, `added_on`) VALUES
(1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjQ5NDkwOSwiaXNzIjoiaHR0cHM6Ly9hcGl2Mi5zaGlwcm9ja2V0LmluL3YxL2V4dGVybmFsL2F1dGgvbG9naW4iLCJpYXQiOjE1OTA0MDQ4NTMsImV4cCI6MTU5MTI2ODg1MywibmJmIjoxNTkwNDA0ODUzLCJqdGkiOiJWZU4zaE5YMm1LdVY4cXB0In0.YKracv-yDKppYb2FISr5zE_4gEGWIAz-HzIa6cit9nw', '2020-05-25 05:07:26');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `categories_id`, `sub_categories`, `status`) VALUES
(1, 2, 'catrash', 1),
(2, 2, 'dj', 1),
(3, 4, 'dj', 1),
(4, 1, 'catrash', 1),
(5, 1, 'venue', 1),
(6, 2, 'cake shop', 1),
(7, 1, 'Photographers', 1),
(8, 1, 'Makeup Artists', 1),
(9, 1, 'Mehendi Artists', 1),
(10, 1, 'Decorators', 1),
(11, 1, 'Invitation Cards', 1),
(12, 4, 'catrash', 1),
(13, 2, 'Photographers', 1),
(14, 4, 'Photographers', 1),
(15, 5, 'catrash', 1),
(16, 5, 'Photographers', 1),
(17, 5, 'Dj', 1),
(18, 6, 'Dj', 1),
(19, 6, 'Decorators', 1),
(20, 6, 'catrash', 1),
(21, 6, 'Photographers', 1),
(22, 4, 'Decorators', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(3, 'demo', '123456', 'demo@gmail.com', '9106707854', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `added_on`) VALUES
(1, 3, 14, '2021-05-09 11:10:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_master`
--
ALTER TABLE `coupon_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shiprocket_token`
--
ALTER TABLE `shiprocket_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupon_master`
--
ALTER TABLE `coupon_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `shiprocket_token`
--
ALTER TABLE `shiprocket_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
