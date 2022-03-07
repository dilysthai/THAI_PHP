-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 23, 2021 lúc 02:44 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doangiay`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
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
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(2, 'admin', 'admin@gmail.com', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(15, 'Converse'),
(16, 'Yeezy'),
(17, 'Jordan');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
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
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
(30, 71, '8h308c8tp91n1s2dl4ecgtuulg', 'Ghế chơi game E-Dra Medusa EGC209 White', '4490000', 1, 'cabba1df7a.jpg'),
(38, 42, '0hju9vg365vq46fu2g2234musr', 'Laptop Gaming MSI GF63 Thin 10SC 014VN I5 - 10200H', '18990000', 1, '534620c511.jpg'),
(39, 41, 'iac8c2ggvkrdj530lkjv6p4f2k', 'Laptop gaming Acer Nitro 5 AN515 44 R9JM', '29490000', 1, '90a2cd01b7.jpg'),
(40, 51, 'iac8c2ggvkrdj530lkjv6p4f2k', 'Laptop Gaming MSI GF65 Thin 10UE 241VN', '26490000', 1, '35e0fc9f5c.jpg'),
(52, 82, 'i9ei0gda2hdosc9hf58bdqjbr1', 'Giày Converse Cao Cổ Cam', '19490000', 1, '17fab3a34c.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(20, 'Giày Sneakers');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_compare`
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
-- Cấu trúc bảng cho bảng `tbl_customer`
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
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(3, 'Ng.Anh tu', '113 Láº¡c Long QuÃ¢n HCM', 'TPHCM', 'hcm', '700000', '099999123', 'thanhviendangki@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'vÃµ thá»‹ tháº£o nguyÃªn', '149 LÅ©y BÃ¡n BÃ­ch, phÆ°á»ng TÃ¢n Thá»›i HÃ²a, quáº­n TÃ¢n PhÃº, TP.HCM', 'TPHCM', 'hcm', '700000', '522525294', 'hoathuytinh071@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(6, 'NGUYỄN HẢI ĐĂNG', '470 Trần Đại Nghĩa  - Phường Hòa Quý - Quận Ngũ Hành Sơn - TP Đà Nẵng', 'Thành phố Đà Nẵng', 'dn', '2232', '0355518840', 'nquyenhaidanq@gmail.com', 'f11eed37d737eb8929d13ab8ff1434e4'),
(7, 'NGUYỄN HẢI ĐĂNG', '470 Trần Đại Nghĩa  - Phường Hòa Quý - Quận Ngũ Hành Sơn - TP Đà Nẵng', '', '', '', '0355518840', 'nquyenhaidanq1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(8, 'Đồ Án Lập Trình Web', '470 Trần Đại Nghĩa  - Phường Hòa Quý - Quận Ngũ Hành Sơn - TP Đà Nẵng', '', '', '', '0355518840', 'doan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(9, 'Hải Đăng', 'Đà Nẵng', '', '', '', '1232131321', 'haidang1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
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
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(62, 73, 'Ghế Gaming Cougar Armor K Black  - Hot', 7, 2, '9980000', '073e089be9.jpg', 1, '2021-05-04 21:20:40'),
(63, 65, 'Chuột Gaming Razer DeathAdder V2 - Mới 100% - Fullbox', 7, 1, '1690000', '26ebeeb75a.jpg', 1, '2021-05-05 08:36:30'),
(64, 74, 'Bàn phím cơ Gaming Mistel X8 Bumblebee Switch: Cherry MX Red/Blue/Brown', 7, 1, '2490000', 'ceb34e40c0.jpg', 1, '2021-05-05 08:36:30'),
(65, 79, 'Tai nghe HyperX Cloud Earbuds - Kingston Full Box 100%', 7, 2, '1580000', '13e9c54405.jpg', 1, '2021-05-05 09:02:12'),
(74, 43, 'Laptop ASUS TUF Gaming F15 FX506LI HN039T', 7, 2, '40980000', '645b46a168.jpg', 1, '2021-06-01 08:18:00'),
(75, 41, 'Laptop gaming Acer Nitro 5 AN515 44 R9JM', 9, 1, '29490000', '90a2cd01b7.jpg', 1, '2021-06-01 08:45:20'),
(76, 89, 'Giày Converse Cổ Thấp Vàng Size 38', 6, 2, '58980000', 'd0cfc7fcc6.jpg', 1, '2021-12-09 22:49:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
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
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `product_code`, `productQuantity`, `product_soldout`, `product_remain`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(81, 'Giày Converse Cao Cổ Trắng Xọc', '', '', '0', '', 20, 15, '<p><strong>Converse Cao Cổ&nbsp;</strong></p>', 0, '3400000', '2ebe01bc9a.jpg'),
(82, 'Giày Converse Cao Cổ Cam', '', '', '0', '', 20, 15, '<p><strong>Converse Cao Cổ</strong></p>', 0, '19490000', '17fab3a34c.jpg'),
(83, 'Giày Converse Cổ Thấp Vàng', '', '', '0', '', 20, 15, '<p><strong>Converse Cổ Thấp</strong></p>', 0, '790000', '42739a58d0.jpg'),
(84, 'Giày Yeezy 350 Cam', '', '', '0', '', 20, 16, '<p><strong>Yeezy 350&nbsp;</strong></p>', 0, '250000', '2d5d58543a.jpg'),
(86, 'Giày Yeezy 350 Xanh Nhạt', '', '', '0', '', 20, 16, '<p><strong>Yeezy 350</strong></p>', 0, '19490000', 'cccca8295b.jpg'),
(87, 'Giày Converse Cao Cổ Size 41', '', '', '0', '', 20, 15, '<p><strong>Converse Cao Cổ</strong></p>', 0, '2300000', 'd438194fee.jpg'),
(88, 'Giày Converse Cao Cổ Cam Size 39', '', '', '0', '', 20, 15, '<p>Converse Cao Cổ</p>', 0, '1300000', '58992cb51b.jpg'),
(89, 'Giày Converse Cổ Thấp Vàng Size 38', '', '', '0', '', 20, 15, '<p>Converse Cổ Thấp&nbsp;</p>', 0, '29490000', 'd0cfc7fcc6.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_warehouse`
--

CREATE TABLE `tbl_warehouse` (
  `id_warehouse` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `sl_nhap` varchar(50) NOT NULL,
  `sl_ngaynhap` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_warehouse`
--

INSERT INTO `tbl_warehouse` (`id_warehouse`, `id_sanpham`, `sl_nhap`, `sl_ngaynhap`) VALUES
(1, 22, '5', '2019-07-16 18:31:22'),
(2, 21, '10', '2019-07-16 18:32:03'),
(3, 21, '3', '2019-07-16 18:42:59'),
(4, 20, '5', '2019-07-16 18:51:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wishlist`
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
-- Đang đổ dữ liệu cho bảng `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(3, 3, 6, 'MÃ¡y tÃ­nh Dell A503', '10000000', 'dbb417a309.jpg'),
(4, 3, 18, 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', '2589900', '32942e9470.jpg'),
(7, 6, 82, 'Giày Converse Cao Cổ Cam', '19490000', '17fab3a34c.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Chỉ mục cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD PRIMARY KEY (`id_warehouse`);

--
-- Chỉ mục cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  MODIFY `id_warehouse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
