-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2023 at 05:19 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlykhachsan`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdatmon`
--

CREATE TABLE `chitietdatmon` (
  `MaDatMon` int(11) NOT NULL,
  `MaHoaDon` int(11) NOT NULL,
  `MaMonAn` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chitietdatphong`
--

CREATE TABLE `chitietdatphong` (
  `MaCTDP` int(11) NOT NULL,
  `MaPDP` int(11) NOT NULL,
  `MaPhong` int(11) NOT NULL,
  `NgayDen` date NOT NULL,
  `NgayDi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietdatphong`
--

INSERT INTO `chitietdatphong` (`MaCTDP`, `MaPDP`, `MaPhong`, `NgayDen`, `NgayDi`) VALUES
(1, 1, 1, '2023-10-18', '2023-10-19');

-- --------------------------------------------------------

--
-- Table structure for table `chitietdichvu`
--

CREATE TABLE `chitietdichvu` (
  `MaCTDV` int(11) NOT NULL,
  `MaPDV` int(11) NOT NULL,
  `MaDichVu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietdichvu`
--

INSERT INTO `chitietdichvu` (`MaCTDV`, `MaPDV`, `MaDichVu`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `dichvu`
--

CREATE TABLE `dichvu` (
  `MaDichVu` int(11) NOT NULL,
  `TenDichVu` varchar(50) NOT NULL,
  `DonGia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dichvu`
--

INSERT INTO `dichvu` (`MaDichVu`, `TenDichVu`, `DonGia`) VALUES
(1, 'Extrabed', 300000),
(2, 'Xe đưa đón sân bay', 250000);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHoaDon` int(11) NOT NULL,
  `MaPDP` int(11) NOT NULL,
  `TongTien` varchar(50) NOT NULL,
  `TinhTrang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`MaHoaDon`, `MaPDP`, `TongTien`, `TrangThai`) VALUES
(1, 1, '3050000', 'Chờ thanh toán');

-- --------------------------------------------------------

--
-- Table structure for table `monan`
--

CREATE TABLE `monan` (
  `MaMonAn` int(11) NOT NULL,
  `TenMon` varchar(20) NOT NULL,
  `GiaMon` int(11) NOT NULL,
  `IMG` varchar(200) NOT NULL,
  `PhanLoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `phieudatphong`
--

CREATE TABLE `phieudatphong` (
  `MaPDP` int(11) NOT NULL,
  `MaKhachHang` int(11) NOT NULL,
  `TongTien` varchar(50) NOT NULL,
  `ThanhToanTruoc` varchar(50) NOT NULL,
  `PhuongThucThanhToan` varchar(50) NOT NULL,
  `NgayTT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phieudatphong`
--

INSERT INTO `phieudatphong` (`MaPDP`, `MaKhachHang`, `TongTien`, `ThanhToanTruoc`, `PhuongThucThanhToan`, `NgayTT`) VALUES
(1, 1, '3050000', '305000', 'Thẻ Visa, Master Card', '2023-10-17');

-- --------------------------------------------------------

--
-- Table structure for table `phieudichvu`
--

CREATE TABLE `phieudichvu` (
  `MaPDV` int(11) NOT NULL,
  `MaPDP` int(11) NOT NULL,
  `TongTienDV` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phieudichvu`
--

INSERT INTO `phieudichvu` (`MaPDV`, `MaPDP`, `TongTien`) VALUES
(1, 1, '550000');

-- --------------------------------------------------------

--
-- Table structure for table `phieugiamgia`
--

CREATE TABLE `phieugiamgia` (
  `MaGiamGia` int(11) NOT NULL,
  `TenMaGiamGia` int(11) NOT NULL,
  `ChietKhau` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

CREATE TABLE `phong` (
  `MaPhong` int(10) NOT NULL,
  `LoaiPhong` varchar(20) NOT NULL,
  `KieuPhong` varchar(50) NOT NULL,
  `SLMax` int(10) NOT NULL,
  `LoaiGiuong` varchar(50) NOT NULL,
  `GiaPhong` varchar(10) NOT NULL,
  `IMG` varchar(50) NOT NULL,
  `DienTich` varchar(50) NOT NULL,
  `TamNhin` varchar(50) NOT NULL,
  `MoTa` varchar(500) NOT NULL,
  `TrangThai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phong`
--

INSERT INTO `phong` (`MaPhong`, `LoaiPhong`, `KieuPhong`, `SLMax`, `LoaiGiuong`, `GiaPhong`, `IMG`, `DienTich`, `TamNhin`, `MoTa`, `TrangThai`) VALUES
(1, 'Deluxe ', 'Deluxe Single', 2, '1 giường đơn', '2500000', '../img/roomstyle/junior_suite.jpg', '32m', '14:12', '0', 'Đầy'),
(2, 'Deluxe ', 'Deluxe Twin', 3, '2 giường đơn', '3200000', '../img/allroom/Deluxe_room1.jpg', '42m', 'Ra biển ', '0', 'Trống'),
(3, 'Deluxe ', 'Deluxe Double', 3, '1 giường đôi và 1 giường đơn', '3200000', '../img/allroom/family_room.jpg', '42m', '12:10', '0', 'Trống'),
(4, 'Deluxe ', 'Deluxe Triple', 4, '1 giường đôi và 2 giường đơn', '5800000', '../img/allroom/family_room1.jpg', '45m', '12:12', '0', 'Trống'),
(5, 'Executive ', 'Executive Twin', 3, '2 giường đơn', '8600000', '../img/allroom/Junior_suite.jpg', '50m', '14:12', '0', 'Trống'),
(6, 'Executive ', 'Executive Double', 3, '1 giường đôi và 1 giường đơn', '9400000', '../img/allroom/Single_room.jpg', '50m', '14:10', '0', 'Trống'),
(7, 'Executive ', 'Executive Triple', 4, '1 giường đôi và 2 giường đơn', '10100000', '../img/allroom/Standard_room.jpg', '56m', '12:10', '0', 'Trống'),
(8, 'Executive ', 'Executive Connecting', 6, '2 giường đôi và 2 giường đơn', '18200000', '../img/allroom/Standard_room1.jpg', '64m', '14:12', '0', 'Trống'),
(9, 'Suite ', 'Suite Twin', 3, '2 giường đơn', '18900000', '../img/allroom/Superior_suite.jpg', '56m', '14:10', '0', 'Trống'),
(10, 'Suite ', 'Suite Double', 3, '1 giường đôi và 1 giường đơn', '20700000', '../img/roomstyle/double_room.jpg', '56m', '12:10', '0', 'Trống'),
(11, 'Suite ', 'Suite Triple', 4, '1 giường đôi và 2 giường đơn', '22200000', '../img/roomstyle/small_suite.jpg', '65m', '12:12', '0', 'Trống'),
(12, 'Suite ', 'Suite Connecting', 6, '2 giường đôi và 2 giường đơn', '39500000', '../img/roomstyle/junior_suite.jpg', '72m', '14:10', '0', 'Trống');

-- --------------------------------------------------------

--
-- Table structure for table `quanlytaikhoan`
--

CREATE TABLE `quanlytaikhoan` (
  `ID` int(11) NOT NULL,
  `HoTen` varchar(100) NOT NULL,
  `SDT` varchar(12) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `CMND` int(12) NOT NULL,
  `PassWord` varchar(20) NOT NULL,
  `AccessToken` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `quanlytaikhoan`
--

INSERT INTO `quanlytaikhoan` (`ID`, `HoTen`, `SDT`, `Email`, `CMND`, `PassWord`, `AccessToken`) VALUES
(1, 'Admin', '0123456789', 'admin@gmail.com', 343025555, 'admin', NULL),
(50, 'Cát Trường Trương Bá', '0336004076', 'batruong1704@gmail.com', 123456789, '0123456789', '108617347685033795623'),
(72, 'Cát Trường Trương Bá', '0336004076', 'truongtg2k@gmail.com', 123456789, 'admin123', '109408661915133195138'),
(73, 'Trường Bá', '', '7steam.work@gmail.com', 0, '', '105238185890006122819');
-- --------------------------------------------------------

--
-- Table structure for table `taikhoanadmin`
--

CREATE TABLE `taikhoanadmin` (
  `ID` int(11) NOT NULL,
  `HoTen` varchar(50) NOT NULL,
  `SDT` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `PassWord` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taikhoanadmin`
--

INSERT INTO `taikhoanadmin` (`ID`, `HoTen`, `SDT`, `Email`, `PassWord`) VALUES
(1, 'Bá Trường', '012345678', 'buck0503@gmail.com', '123'),
(2, 'thuydung', '0394407543', 'dung@gmail.com', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdatmon`
--
ALTER TABLE `chitietdatmon`
  ADD PRIMARY KEY (`MaDatMon`);

--
-- Indexes for table `chitietdatphong`
--
ALTER TABLE `chitietdatphong`
  ADD PRIMARY KEY (`MaCTDP`),
  ADD KEY `mkl3` (`MaPDP`),
  ADD KEY `mkl4` (`MaPhong`);

--
-- Indexes for table `chitietdichvu`
--
ALTER TABLE `chitietdichvu`
  ADD PRIMARY KEY (`MaCTDV`),
  ADD KEY `mkl1` (`MaPDV`),
  ADD KEY `mkl2` (`MaDichVu`);

--
-- Indexes for table `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`MaDichVu`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHoaDon`),
  ADD KEY `MaPDP` (`MaPDP`);

--
-- Indexes for table `monan`
--
ALTER TABLE `monan`
  ADD PRIMARY KEY (`MaMonAn`);

--
-- Indexes for table `phieudatphong`
--
ALTER TABLE `phieudatphong`
  ADD PRIMARY KEY (`MaPDP`),
  ADD KEY `MaKhachHang` (`MaKhachHang`);

--
-- Indexes for table `phieudichvu`
--
ALTER TABLE `phieudichvu`
  ADD PRIMARY KEY (`MaPDV`),
  ADD KEY `MaPDP` (`MaPDP`);

--
-- Indexes for table `phieugiamgia`
--
ALTER TABLE `phieugiamgia`
  ADD PRIMARY KEY (`MaGiamGia`);

--
-- Indexes for table `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`MaPhong`);

--
-- Indexes for table `quanlytaikhoan`
--
ALTER TABLE `quanlytaikhoan`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `taikhoanadmin`
--
ALTER TABLE `taikhoanadmin`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietdatmon`
--
ALTER TABLE `chitietdatmon`
  MODIFY `MaDatMon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chitietdatphong`
--
ALTER TABLE `chitietdatphong`
  MODIFY `MaCTDP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chitietdichvu`
--
ALTER TABLE `chitietdichvu`
  MODIFY `MaCTDV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `MaDichVu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHoaDon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `monan`
--
ALTER TABLE `monan`
  MODIFY `MaMonAn` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phieudatphong`
--
ALTER TABLE `phieudatphong`
  MODIFY `MaPDP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `phieudichvu`
--
ALTER TABLE `phieudichvu`
  MODIFY `MaPDV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quanlytaikhoan`
--
ALTER TABLE `quanlytaikhoan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `taikhoanadmin`
--
ALTER TABLE `taikhoanadmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdatphong`
--
ALTER TABLE `chitietdatphong`
  ADD CONSTRAINT `mkl3` FOREIGN KEY (`MaPDP`) REFERENCES `phieudatphong` (`MaPDP`),
  ADD CONSTRAINT `mkl4` FOREIGN KEY (`MaPhong`) REFERENCES `phong` (`MaPhong`);

--
-- Constraints for table `chitietdichvu`
--
ALTER TABLE `chitietdichvu`
  ADD CONSTRAINT `mkl1` FOREIGN KEY (`MaPDV`) REFERENCES `phieudichvu` (`MaPDV`),
  ADD CONSTRAINT `mkl2` FOREIGN KEY (`MaDichVu`) REFERENCES `dichvu` (`MaDichVu`);

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaPDP`) REFERENCES `phieudatphong` (`MaPDP`);

--
-- Constraints for table `phieudatphong`
--
ALTER TABLE `phieudatphong`
  ADD CONSTRAINT `phieudatphong_ibfk_1` FOREIGN KEY (`MaKhachHang`) REFERENCES `quanlytaikhoan` (`ID`);

--
-- Constraints for table `phieudichvu`
--
ALTER TABLE `phieudichvu`
  ADD CONSTRAINT `phieudichvu_ibfk_1` FOREIGN KEY (`MaPDP`) REFERENCES `phieudatphong` (`MaPDP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
