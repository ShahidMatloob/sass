-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 17, 2021 at 06:25 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paksafet_sass`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(999) NOT NULL,
  `is_dropdown` varchar(999) NOT NULL,
  `is_featured` varchar(999) NOT NULL,
  `in_menu` varchar(999) NOT NULL,
  `category_image` varchar(999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `is_dropdown`, `is_featured`, `in_menu`, `category_image`) VALUES
(1, 'Bedding', 'yes', 'yes', 'yes', 'category.png'),
(2, 'Home Accessories', 'yes', 'yes', 'yes', 'category.png'),
(3, 'Bath Linen', 'yes', 'yes', 'yes', 'category.png'),
(4, 'Kids', 'yes', 'no', 'yes', 'category.png'),
(5, 'Bedding Basic', 'yes', 'yes', 'yes', '250520211141-250520211248-images.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(999) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(999) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(999) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(9999) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(999) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`, `date`) VALUES
(1, 'sdfds', '', 'fdsfsd', 'fsdfsdafs', '13/06/2021 11:02 AM'),
(2, 'sdfds', 'erter@fdfs.fsdf', 'fdsfsd', 'fdsfsdffsaf', '13/06/2021 11:03 AM'),
(3, 'hgfhfgh', 'hgfh@fdf.fsd', 'fsdfs', 'sdfsdfsd', '13/06/2021 11:05 AM'),
(4, 'sdfds', 'muhammad.tayyab833@gmail.com', 'fdsfsd', 'cvfdggfd', '13/06/2021 11:37 AM'),
(5, 'sdfds', 'muhammad.tayyab833@gmail.com', 'gdg', 'gdfgdf', '13/06/2021 11:40 AM'),
(6, 'sdfds', 'ayeza833@gmail.com', 'sddsa', 'dsad', '13/06/2021 11:41 AM'),
(7, 'fdsfs', 'fsdfs@fdsf.fsd', 'fsd', 'fsdfsfsdfdsfs', '13/06/2021 11:42 AM'),
(8, 'Muhammad Tayyab', 'muhammad.tayyab833@gmail.com', 'I have an issue', 'I want to return my Product , Because i had canceled this order, Please refund me. I will order next time. This time I am sorry about my behaviour.', '13/06/2021 12:07 PM'),
(9, 'Muhammad Tayyab', 'muhammad.tayyab833@gmail.com', 'I have an issue', 'I want to return my Product , Because I had canceled this order, Please refund me. I will order next time. This time I am sorry about my behavior.', '13/06/2021 12:10 PM'),
(10, 'fdsf', 'fdsf@fdf.fdf', 'fdsfsd', 'fsdffsd', '13/06/2021 12:14 PM'),
(11, 'fdsf', 'eqweqwe@eqwe', 'I have an issue', 'I want to return my Product , Because i had canceled this order, Please refund me. I will order next time. This time I am sorry about my behavior.', '13/06/2021 12:15 PM'),
(12, 'Muhammad Tayyab', 'muhammad.tayyab833@gmail.com', 'I have an issue', 'I have an issueI have an issueI have an issueI have an issueI have an issueI have an issueI have an issue', '13/06/2021 12:18 PM'),
(13, 'Muhammad Tayyab', 'muhammad.tayyab833@gmail.com', 'I have an issue', 'I have an issue I have an issue I have an issue I have an issue I have an issue I have an issue I have an issue I have an issue I have an issue I have an issue I have an issue I have an issue I have an issue I have an issue I have an issue I have an issue I have an issue I have an issue I have an issue I have an issue I have an issue ', '13/06/2021 12:24 PM'),
(14, 'nice', 'nice@fdf.fd', 'I have an issue', 'I have an issue I have an issue I have an issue I have an issue I have an issue I have an issue I have an issue I have an issue I have an issue I have an issue ', '13/06/2021 12:27 PM');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `products_id` varchar(999) NOT NULL,
  `products_qty` varchar(999) NOT NULL,
  `user_name` varchar(999) NOT NULL,
  `address` varchar(999) NOT NULL,
  `city` varchar(999) NOT NULL,
  `state` varchar(999) NOT NULL,
  `country` varchar(999) NOT NULL,
  `phone` varchar(999) NOT NULL,
  `email` varchar(999) NOT NULL,
  `shipping_cost` varchar(999) NOT NULL,
  `shipping_method` varchar(999) NOT NULL,
  `order_ammount` varchar(999) NOT NULL,
  `order_note` varchar(999) NOT NULL,
  `tracking_number` varchar(999) NOT NULL,
  `order_date` varchar(999) NOT NULL,
  `order_status` varchar(999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `products_id`, `products_qty`, `user_name`, `address`, `city`, `state`, `country`, `phone`, `email`, `shipping_cost`, `shipping_method`, `order_ammount`, `order_note`, `tracking_number`, `order_date`, `order_status`) VALUES
(4, 1, '3', '1', 'Demo', 'Chak 204', 'Faisalabad', 'Punjab', 'Pakistan', '43242', 'paksafetytex@gmail.com', '200', 'Cash on Delivery', '1500', 'Deliver Fast', 'pk-454802250421', '25/04/2021 02:48 PM', 'Complete'),
(5, 3, '2', '1', 'Muhammad Tayyab', 'Chak no 204 R.B', 'Faisalabad', 'Punjab', 'Pakistan', '03074828680', 'mts@gmail.com', '200', 'Cash on Delivery', '9000', 'Deliver Fast as soon as possible', 'pk-303107180521', '18/05/2021 07:31 PM', 'Pending'),
(6, 3, '1,2,3', '1,1,1', 'Muhammad Tayyab', 'Chak no 204 R.B', 'Faisalabad', 'Punjab', 'Pakistan', '03074828680', 'mts@gmail.com', '200', 'Cash on Delivery', '12000', '', 'pk-543307180521', '18/05/2021 07:33 PM', 'Pending'),
(7, 3, '1,4,3', '2,4,5', 'Muhammad Tayyab', 'Chak no 204 R.B', 'Faisalabad', 'Punjab', 'Pakistan', '03074828680', 'mts@gmail.com', '200', 'Cash on Delivery', '30500', '', 'pk-125007180521', '18/05/2021 07:50 PM', 'Canceled'),
(8, 3, '1,4,3', '2,4,5', 'Muhammad Tayyab', 'Chak no 204 R.B', 'Faisalabad', 'Punjab', 'Pakistan', '03074828680', 'mts@gmail.com', '200', 'Cash on Delivery', '30500', '', 'pk-355007180521', '18/05/2021 07:50 PM', 'Completed'),
(9, 3, '1,4,3', '2,4,5', 'Muhammad Tayyab', 'Chak no 204 R.B', 'Faisalabad', 'Punjab', 'Pakistan', '03074828680', 'mts@gmail.com', '200', 'Cash on Delivery', '30500', '', 'pk-095107180521', '18/05/2021 07:51 PM', 'Canceled'),
(10, 3, '1,4', '2,4', 'Muhammad Tayyab', 'Chak no 204 R.B', 'Faisalabad', 'Punjab', 'Pakistan', '03074828680', 'mts@gmail.com', '200', 'Cash on Delivery', '23000', '', 'pk-115507180521', '18/05/2021 07:55 PM', 'Pending'),
(11, 3, '3,1', '4,2', 'Muhammad Tayyab', 'Chak no 204 R.B', 'Faisalabad', 'Punjab', 'Pakistan', '03074828680', 'mts@gmail.com', '200', 'Cash on Delivery', '9000', '', 'pk-225707180521', '18/05/2021 07:57 PM', 'Pending'),
(12, 3, '1', '1', 'Muhammad Tayyab', 'Chak no 204 R.B', 'Faisalabad', 'Punjab', 'Pakistan', '03074828680', 'mts@gmail.com', '200', 'Cash on Delivery', '1500', '', 'pk-085807180521', '18/05/2021 07:58 PM', 'Pending'),
(13, 3, '4', '1', 'Muhammad Tayyab', 'Chak no 204 R.B', 'Faisalabad', 'Punjab', 'Pakistan', '03074828680', 'mts@gmail.com', '200', 'Cash on Delivery', '5000', '', 'pk-060108180521', '18/05/2021 08:01 PM', 'Canceled'),
(14, 3, '1,3', '3,5', 'Muhammad Tayyab', 'Chak no 204 R.B', 'Faisalabad', 'Punjab', 'Pakistan', '03074828680', 'mts@gmail.com', '200', 'Cash on Delivery', '12000', '', 'pk-230308180521', '18/05/2021 08:03 PM', 'Pending'),
(15, 3, '1', '3', 'Muhammad Tayyab', 'Chak no 204 R.B', 'Faisalabad', 'Punjab', 'Pakistan', '03074828680', 'mts@gmail.com', '200', 'Cash on Delivery', '4500', '', 'pk-560508180521', '18/05/2021 08:05 PM', 'Pending'),
(16, 3, '4,1', '5,2', 'Muhammad Tayyab', 'Chak no 204 R.B', 'Faisalabad', 'Punjab', 'Pakistan', '03074828680', 'mts@gmail.com', '200', 'Cash on Delivery', '28000', '', 'pk-490708180521', '18/05/2021 08:07 PM', 'Canceled'),
(17, 4, '2', '4', 'Mian Soban', 'chak 204 rb', 'Faisalabad', 'Punjab', 'Pakistan', '03001234567', 'soban@gmail.com', '200', 'Cash on Delivery', '36000', 'Deliver me Fast', 'pk-330511180521', '18/05/2021 11:05 PM', 'Pending'),
(18, 4, '4', '5', 'Mian Soban', 'chak 204 rb', 'Faisalabad', 'Punjab', 'Pakistan', '03001234567', 'soban@gmail.com', '200', 'Cash on Delivery', '25000', '', 'pk-261911180521', '18/05/2021 11:19 PM', 'Canceled'),
(19, 1, '15', '1', 'Demo Demo', 'Demo Address', 'Demo City', 'Demo State', 'Pakistan', '0123456789', 'demo@demo.com', '200', 'Cash on Delivery', '300', '', 'pk-311103200521', '20/05/2021 03:11 PM', 'Pending'),
(20, 3, '4', '1', 'Muhammad Tayyab', 'Chak no 204 R.B', 'Faisalabad', 'Punjab', 'Pakistan', '03074828680', 'mts@gmail.com', '200', 'Cash on Delivery', '5000', '', 'pk-325803200521', '20/05/2021 03:58 PM', 'Pending'),
(21, 1, '15', '1', 'Demo Demo', 'Demo Address', 'Demo City', 'Demo State', 'Pakistan', '0123456789', 'demo@demo.com', '200', 'Cash on Delivery', '300', '', 'pk-404005220521', '22/05/2021 05:40 PM', 'Pending'),
(22, 1, '4', '1', 'Demo Demo', 'Demo Address', 'Demo City', 'Demo State', 'Pakistan', '0123456789', 'demo@demo.com', '200', 'Cash on Delivery', '5000', '', 'pk-334405220521', '22/05/2021 05:44 PM', 'Pending'),
(23, 1, '4', '2', 'Demo Demo', 'Demo Address', 'Demo City', 'Demo State', 'Pakistan', '0123456789', 'demo@demo.com', '200', 'Cash on Delivery', '10000', '', 'pk-214505220521', '22/05/2021 05:45 PM', 'Complete'),
(24, 3, '15', '5', 'Muhammad Tayyab', 'Chak no 204 R.B', 'Faisalabad', 'Punjab', 'Pakistan', '03074828680', 'mts@gmail.com', '200', 'Cash on Delivery', '1500', '', 'pk-033307230521', '23/05/2021 07:33 PM', 'Canceled'),
(25, 5, '1', '1', 'Muhammad Shaban', 'Near Jamaya Masjid Chak 204 RB Faisalabad', 'Faisalabad', 'Faisalabad', 'Pakistan', '0658954980', 'shaniii2110@gmail.com', '200', 'Cash on Delivery', '2000', 'Gfhhn', 'pk-583209110621', '11/06/2021 09:32 AM', 'Canceled'),
(26, 4, '4,2', '4,3', 'Mian Soban', 'chak 204 rb', 'Faisalabad', 'Punjab', 'Pakistan', '03001234567', 'ayeza833@gmail.com', '200', 'Cash on Delivery', '47000', '', '2106033258', '12/06/2021 03:32 PM', 'Processing'),
(27, 6, '1', '1', 'Muhammad Shaban', 'Near Jamaya Masjid Chak 204 RB Faisalabad', 'Faisalabad', 'Faisalabad', 'Pakistan', '066532800', 'shaniii2110@gmail.com', '200', 'Cash on Delivery', '2000', '', '2106102250', '13/06/2021 10:22 PM', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(999) NOT NULL,
  `description` varchar(999) NOT NULL,
  `category_id` varchar(999) NOT NULL,
  `sub_category_id` varchar(999) NOT NULL,
  `category_name` varchar(999) NOT NULL,
  `image` varchar(999) NOT NULL,
  `regular_price` int(11) NOT NULL,
  `sale_price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `is_featured` int(11) NOT NULL,
  `created_at` varchar(999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `category_id`, `sub_category_id`, `category_name`, `image`, `regular_price`, `sale_price`, `stock`, `is_featured`, `created_at`) VALUES
(1, 'This is first Product', 'This is first Product Description', '1', '', 'Bedding', 'default.png', 2000, 0, 10, 0, '25/05/2021 10:53 PM'),
(2, 'This is second Product', 'This is second Product Description', '', '9', 'Cushion Covers', 'default.png', 9000, 0, 20, 1, ''),
(3, 'This is third Product', 'This is third Product Description', '', '14', 'Bathrobes', '250520211238-images.png', 2000, 1500, 10, 1, '25/05/2021 12:34 PM'),
(4, 'This is fourth Product', 'This is fourth Product Description', '', '9', 'Cushion Covers', 'default.png', 9000, 5000, 20, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `name` varchar(999) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(999) COLLATE utf8_unicode_ci NOT NULL,
  `view` varchar(9999) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `product_id`, `rating`, `name`, `email`, `view`) VALUES
(1, 2, 5, 'Saladin', 'saladinonlinestore@gmail.com', 'Nice Product!!!'),
(2, 2, 4, 'xxweqw', 'eqweqwe@eqwe', 'Good Product'),
(4, 2, 4, 'nice', 'nice@fdf.fd', 'Niceeeeeeeeeeee'),
(5, 2, 2, 'Nicee', 'mts@gmail.com', 'Nicesssssssss'),
(6, 1, 0, 'Muhammad Shaban', 'shaniii2110@gmail.com', 'Nice quality'),
(7, 1, 4, 'Muhammad Shaban', 'shaniii2110@gmail.com', 'Its good'),
(8, 4, 3, 'Nicee', 'mts@gmail.com', 'dsdvdsfd');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `slider_image` varchar(999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `slider_image`) VALUES
(1, 'slider1.jpg'),
(2, 'slider2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `sub_category` varchar(999) NOT NULL,
  `parent_id` varchar(999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `sub_category`, `parent_id`) VALUES
(4, 'Bathrobes', '4'),
(5, 'Bedding', '4'),
(9, 'Cushion Covers', '2'),
(10, 'Rugs', '2'),
(11, 'Table Linen', '2'),
(12, 'Curtains', '2'),
(13, 'Towels', '3'),
(14, 'Bathrobes', '3'),
(15, 'Bath Mats', '3'),
(16, 'Fillings', '5'),
(17, 'Comforters', '5'),
(18, 'Portable Mattress', '5'),
(19, 'Bed Set', '1'),
(20, 'Pillow Covers', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `UserFullName` varchar(999) NOT NULL,
  `UserEmail` varchar(999) NOT NULL,
  `UserPassword` varchar(999) NOT NULL,
  `UserEmailVeriy` varchar(999) NOT NULL,
  `UserMobile` varchar(999) NOT NULL,
  `UserCity` varchar(999) NOT NULL,
  `UserState` varchar(999) NOT NULL,
  `UserCountry` varchar(999) NOT NULL,
  `UserAddress` varchar(999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `UserFullName`, `UserEmail`, `UserPassword`, `UserEmailVeriy`, `UserMobile`, `UserCity`, `UserState`, `UserCountry`, `UserAddress`) VALUES
(1, 'Demo Demo', 'demo@demo.com', 'Demo', '', '0123456789', 'Demo City', 'Demo State', 'Pakistan', 'Demo Address'),
(3, 'Muhammad Tayyab', 'mts@gmail.com', 'mts', '', '03074828680', 'Faisalabad', 'Punjab', 'Pakistan', 'Chak no 204 R.B'),
(4, 'Mian Soban', 'soban@gmail.com', 'soban', '', '03001234567', 'Faisalabad', 'Punjab', 'Pakistan', 'chak 204 rb'),
(5, 'Muhammad Shaban', 'shaniii2110@gmail.com', 'shaban', '', '', '', '', '', ''),
(6, 'Muhammad Shaban', 'shaniii2114@gmail.com', 'Shaban123', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` varchar(999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
