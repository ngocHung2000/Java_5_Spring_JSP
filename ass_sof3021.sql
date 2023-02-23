-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 23, 2023 at 04:01 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ass_sof3021`
--

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_san_pham`
--

CREATE TABLE `chi_tiet_san_pham` (
  `id` int(11) NOT NULL,
  `sanpham_id` int(11) DEFAULT NULL,
  `nsx_id` int(11) DEFAULT NULL,
  `mausac_id` int(11) DEFAULT NULL,
  `dongsanpham_id` int(11) DEFAULT NULL,
  `nam_bao_hanh` int(11) DEFAULT NULL,
  `mo_ta` varchar(50) DEFAULT NULL,
  `so_luong_ton` int(11) DEFAULT NULL,
  `gia_nhap` decimal(20,0) DEFAULT NULL,
  `gia_ban` decimal(20,0) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chi_tiet_san_pham`
--

INSERT INTO `chi_tiet_san_pham` (`id`, `sanpham_id`, `nsx_id`, `mausac_id`, `dongsanpham_id`, `nam_bao_hanh`, `mo_ta`, `so_luong_ton`, `gia_nhap`, `gia_ban`, `img`) VALUES
(1, 7, 1, 20, 1, 2024, NULL, 50, '150000', '250000', 'giay1.jpeg'),
(2, 7, 1, 20, 1, 2024, NULL, 50, '150000', '290000', 'giay2.jpg'),
(3, 9, 2, 21, 1, 2024, NULL, 50, '160000', '270000', 'giay4.jpg'),
(4, 9, 2, 22, 1, 2024, NULL, 50, '160000', '280000', 'giay5.jpg'),
(5, 8, 1, 20, 1, 2024, NULL, 50, '170000', '290000', 'giay6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `chuc_vu`
--

CREATE TABLE `chuc_vu` (
  `id` int(11) NOT NULL,
  `ma` varchar(45) DEFAULT NULL,
  `ten` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cua_hang`
--

CREATE TABLE `cua_hang` (
  `id` int(11) NOT NULL,
  `ma` varchar(45) DEFAULT NULL,
  `ten` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dia_chi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `thanh_pho` varchar(45) DEFAULT NULL,
  `quoc_gia` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dong_san_pham`
--

CREATE TABLE `dong_san_pham` (
  `id` int(11) NOT NULL,
  `ma` varchar(45) DEFAULT NULL,
  `ten` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dong_san_pham`
--

INSERT INTO `dong_san_pham` (`id`, `ma`, `ten`) VALUES
(1, 'DSP01', 'Real'),
(2, 'DSP02', 'Fake');

-- --------------------------------------------------------

--
-- Table structure for table `gio_hang`
--

CREATE TABLE `gio_hang` (
  `id` int(11) NOT NULL,
  `khachhang_id` int(11) DEFAULT NULL,
  `nhanvien_id` int(11) DEFAULT NULL,
  `ma` varchar(45) DEFAULT NULL,
  `ngay_tao` datetime DEFAULT NULL,
  `ngay_thanh_toan` datetime DEFAULT NULL,
  `ten_nguoi_nhan` varchar(45) DEFAULT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `sdt` varchar(45) DEFAULT NULL,
  `tinh_trang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gio_hang_chi_tiet`
--

CREATE TABLE `gio_hang_chi_tiet` (
  `id` int(11) NOT NULL,
  `giohangchitiet_giohang` int(11) DEFAULT NULL,
  `giohangchitiet_chitietsanpham` int(11) DEFAULT NULL,
  `so_luong` int(11) DEFAULT NULL,
  `don_gia` decimal(20,0) DEFAULT NULL,
  `don_gia_khi_gia` decimal(20,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don`
--

CREATE TABLE `hoa_don` (
  `id` int(11) NOT NULL,
  `nhanvien_id` int(11) DEFAULT NULL,
  `khachhang_id` int(11) DEFAULT NULL,
  `ma` varchar(45) DEFAULT NULL,
  `ngay_tao` datetime DEFAULT NULL,
  `ngay_thanh_toan` datetime DEFAULT NULL,
  `ngay_ship` datetime DEFAULT NULL,
  `ngay_nhan` datetime DEFAULT NULL,
  `tinh_trang` int(11) DEFAULT NULL,
  `ten_nguoi_nhan` varchar(45) DEFAULT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `sdt` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don_chi_tiet`
--

CREATE TABLE `hoa_don_chi_tiet` (
  `id` int(11) NOT NULL,
  `hoadonchitiet_hoadon` int(11) DEFAULT NULL,
  `hoadonchitiet_chitietsanpham` int(11) DEFAULT NULL,
  `so_luong` int(11) DEFAULT NULL,
  `don_gia` decimal(20,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

CREATE TABLE `khach_hang` (
  `id` int(11) NOT NULL,
  `ma` varchar(45) DEFAULT NULL,
  `ho_ten` varchar(45) DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `sdt` varchar(45) DEFAULT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `mat_khau` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mau_sac`
--

CREATE TABLE `mau_sac` (
  `id` int(11) NOT NULL,
  `ma` varchar(45) DEFAULT NULL,
  `ten` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mau_sac`
--

INSERT INTO `mau_sac` (`id`, `ma`, `ten`) VALUES
(20, 'RGB01', 'Red'),
(21, 'RGB02', 'Green'),
(22, 'RGB03', 'Blue'),
(23, 'RGB04', 'Black'),
(24, 'RGB05', 'White'),
(25, 'RGB06', 'Pink');

-- --------------------------------------------------------

--
-- Table structure for table `nhan_vien`
--

CREATE TABLE `nhan_vien` (
  `id` int(11) NOT NULL,
  `ma` varchar(45) DEFAULT NULL,
  `ho_ten` varchar(45) DEFAULT NULL,
  `gioi_tinh` varchar(45) DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `dia_chi` varchar(45) DEFAULT NULL,
  `mat_khau` varchar(255) DEFAULT NULL,
  `cuahang_id` int(11) DEFAULT NULL,
  `chucvu_id` int(11) DEFAULT NULL,
  `trangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nsx`
--

CREATE TABLE `nsx` (
  `id` int(11) NOT NULL,
  `ma` varchar(45) DEFAULT NULL,
  `ten` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nsx`
--

INSERT INTO `nsx` (`id`, `ma`, `ten`) VALUES
(1, 'NSX01', 'Balenciaga'),
(2, 'NSX02', 'Nike'),
(3, 'NSX03', 'Converse'),
(4, 'NSX04', 'Adidas'),
(5, 'NSX05', 'Reebok');

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE `san_pham` (
  `id` int(11) NOT NULL,
  `ma` varchar(45) DEFAULT NULL,
  `ten` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `san_pham`
--

INSERT INTO `san_pham` (`id`, `ma`, `ten`) VALUES
(7, 'TL01', 'Giay the thao'),
(8, 'TL02', 'Giay Sneaker'),
(9, 'TL03', 'Giay da');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chi_tiet_san_pham`
--
ALTER TABLE `chi_tiet_san_pham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chitietsanpham_sanpham_idx` (`sanpham_id`),
  ADD KEY `chitietsanpham_nsx_idx` (`nsx_id`),
  ADD KEY `chitietsanpham_mausac_idx` (`mausac_id`),
  ADD KEY `chitietsanpham_dongsanpham_idx` (`dongsanpham_id`);

--
-- Indexes for table `chuc_vu`
--
ALTER TABLE `chuc_vu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cua_hang`
--
ALTER TABLE `cua_hang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dong_san_pham`
--
ALTER TABLE `dong_san_pham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `giohang_khachhang_idx` (`khachhang_id`),
  ADD KEY `giohang_nhanvien_idx` (`nhanvien_id`);

--
-- Indexes for table `gio_hang_chi_tiet`
--
ALTER TABLE `gio_hang_chi_tiet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `giohangchitiet_giohang_idx` (`giohangchitiet_giohang`),
  ADD KEY `giohangchitiet_chitietsanpham_idx` (`giohangchitiet_chitietsanpham`);

--
-- Indexes for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hoadon_nhanvien_idx` (`nhanvien_id`),
  ADD KEY `hoadon_khachhang_idx` (`khachhang_id`);

--
-- Indexes for table `hoa_don_chi_tiet`
--
ALTER TABLE `hoa_don_chi_tiet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hoadonchitiet_hoadon_idx` (`hoadonchitiet_hoadon`),
  ADD KEY `hoadonchitiet_chitietsanpham_idx` (`hoadonchitiet_chitietsanpham`);

--
-- Indexes for table `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mau_sac`
--
ALTER TABLE `mau_sac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nhanvien_cuahang_idx` (`cuahang_id`),
  ADD KEY `nhanvien_chucvu_idx` (`chucvu_id`);

--
-- Indexes for table `nsx`
--
ALTER TABLE `nsx`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chi_tiet_san_pham`
--
ALTER TABLE `chi_tiet_san_pham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `chuc_vu`
--
ALTER TABLE `chuc_vu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cua_hang`
--
ALTER TABLE `cua_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dong_san_pham`
--
ALTER TABLE `dong_san_pham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gio_hang`
--
ALTER TABLE `gio_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gio_hang_chi_tiet`
--
ALTER TABLE `gio_hang_chi_tiet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hoa_don_chi_tiet`
--
ALTER TABLE `hoa_don_chi_tiet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mau_sac`
--
ALTER TABLE `mau_sac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `nhan_vien`
--
ALTER TABLE `nhan_vien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nsx`
--
ALTER TABLE `nsx`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chi_tiet_san_pham`
--
ALTER TABLE `chi_tiet_san_pham`
  ADD CONSTRAINT `chitietsanpham_dongsanpham` FOREIGN KEY (`dongsanpham_id`) REFERENCES `dong_san_pham` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `chitietsanpham_mausac` FOREIGN KEY (`mausac_id`) REFERENCES `mau_sac` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `chitietsanpham_nsx` FOREIGN KEY (`nsx_id`) REFERENCES `nsx` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `chitietsanpham_sanpham` FOREIGN KEY (`sanpham_id`) REFERENCES `san_pham` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD CONSTRAINT `giohang_khachhang` FOREIGN KEY (`khachhang_id`) REFERENCES `khach_hang` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `giohang_nhanvien` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhan_vien` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `gio_hang_chi_tiet`
--
ALTER TABLE `gio_hang_chi_tiet`
  ADD CONSTRAINT `giohangchitiet_chitietsanpham` FOREIGN KEY (`giohangchitiet_chitietsanpham`) REFERENCES `chi_tiet_san_pham` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `giohangchitiet_giohang` FOREIGN KEY (`giohangchitiet_giohang`) REFERENCES `gio_hang` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD CONSTRAINT `hoadon_khachhang` FOREIGN KEY (`khachhang_id`) REFERENCES `khach_hang` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `hoadon_nhanvien` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhan_vien` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoa_don_chi_tiet`
--
ALTER TABLE `hoa_don_chi_tiet`
  ADD CONSTRAINT `hoadonchitiet_chitietsanpham` FOREIGN KEY (`hoadonchitiet_chitietsanpham`) REFERENCES `chi_tiet_san_pham` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `hoadonchitiet_hoadon` FOREIGN KEY (`hoadonchitiet_hoadon`) REFERENCES `hoa_don` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD CONSTRAINT `nhanvien_chucvu` FOREIGN KEY (`chucvu_id`) REFERENCES `chuc_vu` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nhanvien_cuahang` FOREIGN KEY (`cuahang_id`) REFERENCES `cua_hang` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
