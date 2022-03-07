-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2021 at 04:49 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_mvcphu`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminEmail` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `adminUser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminPass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'phu', 'phu@gmail.com', 'phuAdmin', 'e10adc3949ba59abbe56e057f20f883e', 0),
(2, 'admin', 'admin@gmail.com', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(7, 'Apple'),
(8, 'Acer'),
(9, 'HP'),
(10, 'Dell'),
(12, 'Asus'),
(13, 'MSI');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
(30, 71, '8h308c8tp91n1s2dl4ecgtuulg', 'Ghế chơi game E-Dra Medusa EGC209 White', '4490000', 1, 'cabba1df7a.jpg'),
(38, 42, '0hju9vg365vq46fu2g2234musr', 'Laptop Gaming MSI GF63 Thin 10SC 014VN I5 - 10200H', '18990000', 1, '534620c511.jpg'),
(39, 41, 'iac8c2ggvkrdj530lkjv6p4f2k', 'Laptop gaming Acer Nitro 5 AN515 44 R9JM', '29490000', 1, '90a2cd01b7.jpg'),
(40, 51, 'iac8c2ggvkrdj530lkjv6p4f2k', 'Laptop Gaming MSI GF65 Thin 10UE 241VN', '26490000', 1, '35e0fc9f5c.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(3, 'LapTop - LapTop Gaming'),
(4, 'Tai Nghe Gaming'),
(5, 'Bàn Phím'),
(6, 'Màn Hình'),
(18, 'Ghế Gaming'),
(19, 'Chuột - Lót  Chuột');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `compareid` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `image` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(3, 'Ng.Anh tu', '113 Láº¡c Long QuÃ¢n HCM', 'TPHCM', 'hcm', '700000', '099999123', 'thanhviendangki@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'vÃµ thá»‹ tháº£o nguyÃªn', '149 LÅ©y BÃ¡n BÃ­ch, phÆ°á»ng TÃ¢n Thá»›i HÃ²a, quáº­n TÃ¢n PhÃº, TP.HCM', 'TPHCM', 'hcm', '700000', '522525294', 'hoathuytinh071@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(6, 'NGUYỄN HẢI ĐĂNG', '470 Trần Đại Nghĩa  - Phường Hòa Quý - Quận Ngũ Hành Sơn - TP Đà Nẵng', 'Thành phố Đà Nẵng', 'dn', '2232', '0355518840', 'nquyenhaidanq@gmail.com', 'f11eed37d737eb8929d13ab8ff1434e4'),
(7, 'NGUYỄN HẢI ĐĂNG', '470 Trần Đại Nghĩa  - Phường Hòa Quý - Quận Ngũ Hành Sơn - TP Đà Nẵng', '', '', '', '0355518840', 'nquyenhaidanq1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(8, 'Đồ Án Lập Trình Web', '470 Trần Đại Nghĩa  - Phường Hòa Quý - Quận Ngũ Hành Sơn - TP Đà Nẵng', '', '', '', '0355518840', 'doan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(61, 65, 'Chuột Gaming Razer DeathAdder V2 - Mới 100% - Fullbox', 7, 1, '1690000', '26ebeeb75a.jpg', 1, '2021-05-04 21:14:46'),
(62, 73, 'Ghế Gaming Cougar Armor K Black  - Hot', 7, 2, '9980000', '073e089be9.jpg', 1, '2021-05-04 21:20:40'),
(63, 65, 'Chuột Gaming Razer DeathAdder V2 - Mới 100% - Fullbox', 7, 1, '1690000', '26ebeeb75a.jpg', 1, '2021-05-05 08:36:30'),
(64, 74, 'Bàn phím cơ Gaming Mistel X8 Bumblebee Switch: Cherry MX Red/Blue/Brown', 7, 1, '2490000', 'ceb34e40c0.jpg', 1, '2021-05-05 08:36:30'),
(65, 79, 'Tai nghe HyperX Cloud Earbuds - Kingston Full Box 100%', 7, 2, '1580000', '13e9c54405.jpg', 1, '2021-05-05 09:02:12'),
(66, 65, 'Chuột Gaming Razer DeathAdder V2 - Mới 100% - Fullbox', 7, 1, '1690000', '26ebeeb75a.jpg', 1, '2021-05-05 12:20:38'),
(67, 58, 'Macbook Air 13 2020 MGND3SA M1/8GB/256GB (Gold)', 7, 1, '25090000', '1f657fd7bf.jpg', 0, '2021-05-05 16:50:14'),
(68, 56, 'Macbook Pro 13 MYD92SA Touchbar M1/8GB/512GB/GPU 8-core (Xám)', 7, 1, '36390000', '9e93263f39.jpg', 0, '2021-05-06 13:23:11'),
(69, 55, 'Laptop Gaming Dell G3 3500 G3500B I7-10750H', 8, 1, '29990000', 'c746b1fd33.jpg', 1, '2021-05-10 10:42:59'),
(70, 69, 'Chuột CoolerMaster MM711 RGB White Glossy', 7, 1, '900000', 'e7e75f0918.jpg', 0, '2021-05-17 08:51:03'),
(71, 42, 'Laptop Gaming MSI GF63 Thin 10SC 014VN I5 - 10200H', 7, 1, '18990000', '534620c511.jpg', 0, '2021-05-27 09:45:35'),
(72, 41, 'Laptop gaming Acer Nitro 5 AN515 44 R9JM', 7, 2, '58980000', '90a2cd01b7.jpg', 0, '2021-05-27 09:47:10'),
(73, 74, 'Bàn phím cơ Gaming Mistel X8 Bumblebee Switch: Cherry MX Red/Blue/Brown', 7, 3, '7470000', 'ceb34e40c0.jpg', 0, '2021-05-31 14:05:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productQuantity` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_soldout` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_remain` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `product_code`, `productQuantity`, `product_soldout`, `product_remain`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(41, 'Laptop gaming Acer Nitro 5 AN515 44 R9JM', '', '', '0', '', 3, 8, '<p>LapTop Acer Gaming</p>', 0, '29490000', '90a2cd01b7.jpg'),
(42, 'Laptop Gaming MSI GF63 Thin 10SC 014VN I5 - 10200H', '', '', '0', '', 3, 12, '<p>Laptop Gaming MSI</p>', 0, '18990000', '534620c511.jpg'),
(43, 'Laptop ASUS TUF Gaming F15 FX506LI HN039T', '', '', '0', '', 3, 12, '<p>LapTop Asus TUF</p>', 0, '20490000', '645b46a168.jpg'),
(44, 'Laptop Gaming Asus ROG Strix G G512 IAL013T', '', '', '0', '', 3, 12, '<p>LapTop Gaming Asus - Rog Strix</p>', 0, '22590000', 'd6492853f5.jpg'),
(45, 'Laptop Gaming Asus ROG Strix G15 G512 IHN281T', '', '', '0', '', 3, 12, '<p>Laptop Gaming Asus</p>', 0, '26990000', '7a97c15160.jpg'),
(46, 'Laptop Gaming ASUS TUF F15 FA506QM HN005T', '', '', '0', '', 3, 12, '<p><strong>Laptop ASUS TUF</strong></p>', 0, '32990000', '9f2ffbfc24.jpg'),
(47, 'Laptop Asus ROG Strix G15 G513QM HN169T', '', '', '0', '', 3, 12, '<p><strong>Laptop Asus ROG</strong></p>', 0, '40990000', '21cba1a35f.jpg'),
(48, 'Laptop Asus ROG Strix SCAR 15 G533QR HF113T', '', '', '0', '', 3, 12, '<p><strong>Laptop Asus ROG</strong></p>', 0, '59990000', '0c36f9ac74.jpg'),
(49, 'Laptop Gaming Asus ROG Strix G17 G713QM K4113T', '', '', '0', '', 3, 12, '<p><strong>Laptop Gaming Asus</strong></p>', 0, '41990000', '4a242f79a9.jpg'),
(50, 'Laptop Gaming MSI GF63 Thin 10SCSR 830VN', '', '', '0', '', 3, 13, '<p><strong>Laptop Gaming MSI</strong></p>', 0, '22990000', '18e012adfd.jpg'),
(51, 'Laptop Gaming MSI GF65 Thin 10UE 241VN', '', '', '0', '', 3, 13, '<p><strong>Laptop Gaming MSI</strong>&nbsp;</p>', 0, '26490000', '35e0fc9f5c.jpg'),
(52, 'Laptop Gaming MSI GS66 Stealth 10SE 407VN', '', '', '0', '', 3, 13, '<p><strong>Laptop Gaming MSI&nbsp;</strong></p>', 0, '39990000', '23b159ca06.jpg'),
(53, 'Laptop Gaming MSI GE66 Raider 10UG 205VN', '', '', '0', '', 3, 13, '<p><strong>Laptop Gaming MSI</strong></p>', 0, '63990000', '468d83fdbe.jpg'),
(54, 'Laptop Gaming Dell G3 3500 G3500B I7-10750H', '', '', '0', '', 0, 0, '<p><strong>Laptop Gaming Dell</strong></p>', 0, '29990000', 'da6c029cf5.jpg'),
(55, 'Laptop Gaming Dell G3 3500 G3500B I7-10750H', '', '', '0', '', 3, 10, '<p><strong>Laptop Gaming Dell&nbsp;</strong></p>', 0, '29990000', 'c746b1fd33.jpg'),
(56, 'Macbook Pro 13 MYD92SA Touchbar M1/8GB/512GB/GPU 8-core (Xám)', '', '', '0', '', 3, 7, '<p><strong>Macbook Pro 13</strong></p>', 0, '36390000', '9e93263f39.jpg'),
(57, 'Macbook Pro 13 MYDA2SA Touchbar M1/8GB/256GB/GPU 8-core (Bạc)', '', '', '0', '', 3, 7, '<p><strong>Macbook Pro 13</strong></p>', 0, '31590000', '9afc238913.jpg'),
(58, 'Macbook Air 13 2020 MGND3SA M1/8GB/256GB (Gold)', '', '', '0', '', 3, 7, '<p><strong>Macbook AIR 13</strong></p>', 0, '25090000', '1f657fd7bf.jpg'),
(59, 'Màn hình ASUS VA24EHE 24\" IPS 75Hz viền mỏng', '', '', '0', '', 6, 12, '<p><span>M&agrave;n H&igrave;nh Asus</span></p>', 0, '3790000', 'bc2b5169c1.jpg'),
(60, 'Màn hình ASUS TUF GAMING VG259Q 25“ IPS 144Hz G-Sync 1ms', '', '', '0', '', 6, 12, '<p>M&agrave;n H&igrave;nh Asus</p>', 0, '6190000', 'b3e3e18e81.jpg'),
(61, 'Màn hình cong HKC NB27C2 27\" VA 144Hz Chuyên game', '', '', '0', '', 6, 0, '<p>M&agrave;n H&igrave;nh HKC</p>', 0, '5090000', '781d754d2a.jpg'),
(62, 'Màn hình MSI OPTIX G272 27\" IPS 144Hz chuyên Game', '', '', '0', '', 6, 13, '<p>M&agrave;n H&igrave;nh MSI</p>', 0, '5890000', 'f9b944b3e8.jpg'),
(65, 'Chuột Gaming Razer DeathAdder V2 - Mới 100% - Fullbox', '', '', '0', '', 19, 8, '<p>Chuột Gaming Razer</p>', 0, '1690000', '26ebeeb75a.jpg'),
(67, 'Chuột Logitech G304 Lightspeed Wireless White', '', '', '0', '', 19, 9, '<p>Chuột Logitech</p>', 0, '790000', 'deb7bf092f.jpg'),
(68, 'Chuột Gaming ASUS ROG Gladius II Core', '', '', '0', '', 19, 12, '<p>Chuột Gaming ASUS</p>', 0, '990000', '9fb11d0713.jpg'),
(69, 'Chuột CoolerMaster MM711 RGB White Glossy', '', '', '0', '', 19, 9, '<p>Chuột CoolerMaster</p>', 0, '900000', 'e7e75f0918.jpg'),
(70, 'Ghế chơi game Warrior – Maiden Series – WGC306', '', '', '0', '', 18, 8, '<p>Ghế Gaming WARRIOR</p>', 0, '3490000', '976aec28ad.jpg'),
(71, 'Ghế chơi game E-Dra Medusa EGC209 White', '', '', '0', '', 18, 8, '<p>Ghế Gaming E-Dra</p>', 0, '4490000', 'cabba1df7a.jpg'),
(73, 'Ghế Gaming Cougar Armor K Black  - Hot', '', '', '0', '', 18, 8, '<p>Ghế Gaming Cougar</p>', 0, '4990000', '073e089be9.jpg'),
(74, 'Bàn phím cơ Gaming Mistel X8 Bumblebee Switch: Cherry MX Red/Blue/Brown', '', '', '0', '', 5, 13, '<p>Ph&iacute;m Cơ Mistel</p>', 0, '2490000', 'ceb34e40c0.jpg'),
(75, 'Bàn phím Ajazz K870T RGB Bluetooth', '', '', '0', '', 5, 7, '<p>Ph&iacute;m Cơ Ajazz</p>', 0, '990000', '90303cbeba.jpg'),
(76, 'Bàn phím cơ Corsair K70 TKL RGB Champion Series', '', '', '0', '', 5, 10, '<p>Ph&iacute;m Cơ Corsair</p>', 0, '3490000', 'f498214952.jpg'),
(77, 'Tai nghe SteelSeries Arctis 5 Black Edition - 2019 Edition', '', '', '0', '', 4, 12, '<p><span>Tai Nghe Gaming</span></p>', 0, '2390000', '6b04115128.jpg'),
(78, 'Tai nghe Gaming DareU EH925S Pink RGB Full box 100%', '', '', '0', '', 4, 13, '<p>Tai Nghe Gaming</p>', 0, '790000', '6e7b466deb.jpg'),
(79, 'Tai nghe HyperX Cloud Earbuds - Kingston Full Box 100%', '', '', '0', '', 4, 10, '<p>Tai nghe HyperX</p>', 0, '790000', '13e9c54405.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderid` int(11) NOT NULL,
  `slider_Name` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `slider_image` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_warehouse`
--

CREATE TABLE `tbl_warehouse` (
  `id_warehouse` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `sl_nhap` varchar(50) NOT NULL,
  `sl_ngaynhap` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_warehouse`
--

INSERT INTO `tbl_warehouse` (`id_warehouse`, `id_sanpham`, `sl_nhap`, `sl_ngaynhap`) VALUES
(1, 22, '5', '2019-07-16 18:31:22'),
(2, 21, '10', '2019-07-16 18:32:03'),
(3, 21, '3', '2019-07-16 18:42:59'),
(4, 20, '5', '2019-07-16 18:51:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(3, 3, 6, 'MÃ¡y tÃ­nh Dell A503', '10000000', 'dbb417a309.jpg'),
(4, 3, 18, 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', '2589900', '32942e9470.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD PRIMARY KEY (`id_warehouse`);

--
-- Indexes for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  MODIFY `id_warehouse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
