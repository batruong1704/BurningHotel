-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 16, 2023 lúc 10:29 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `burninghotel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdatmon`
--

CREATE TABLE `chitietdatmon` (
  `MaDatMon` int(11) NOT NULL,
  `MaHoaDon` int(11) NOT NULL,
  `MaMonAn` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdatphong`
--

CREATE TABLE `chitietdatphong` (
  `MaDatPhong` int(11) NOT NULL,
  `MaKhachHang` int(11) NOT NULL,
  `MaHoaDon` int(11) NOT NULL,
  `MaPhong` int(11) NOT NULL,
  `NgayDen` date NOT NULL,
  `NgayDi` date NOT NULL,
  `TienPhong` int(11) NOT NULL,
  `DaThanhToan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdichvu`
--

CREATE TABLE `chitietdichvu` (
  `MaDatDichVu` int(11) NOT NULL,
  `MaDichVu` int(11) NOT NULL,
  `TongTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `ID` int(11) NOT NULL,
  `TenDichVu` varchar(50) NOT NULL,
  `DonGia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`ID`, `TenDichVu`, `DonGia`) VALUES
(1, 'Extrabed', '300000'),
(2, 'Xe đưa đón sân bay', '250000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHoaDon` int(11) NOT NULL,
  `MaKhachHang` int(11) NOT NULL,
  `MaDatPhong` int(11) NOT NULL,
  `MaDatMon` int(11) NOT NULL,
  `TongTien` int(11) NOT NULL,
  `NgayLap` date NOT NULL,
  `MaGiamGia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monan`
--

CREATE TABLE `monan` (
  `MaMonAn` int(11) NOT NULL,
  `TenMon` varchar(20) NOT NULL,
  `GiaMon` int(11) NOT NULL,
  `IMG` varchar(200) NOT NULL,
  `PhanLoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `monan`
--

INSERT INTO `monan` (`MaMonAn`, `TenMon`, `GiaMon`, `IMG`, `PhanLoai`) VALUES
(1, 'Bún riêu cua', 35000, 'bunrieucua.jpg', 'Món mặn'),
(2, 'Phở bò', 40000, 'phobo.jpg', 'Món mặn'),
(3, 'Bánh mì gà', 25000, 'banhmiga.jpg', 'Món mặn'),
(4, 'Gỏi cuốn', 30000, 'goicuon.jpg', 'Món ngon'),
(5, 'Bánh xèo', 35000, 'banhx.jpg', 'Món ngon'),
(6, 'Cơm rang', 32000, 'comrang.jpg', 'Món mặn'),
(7, 'Mì Quảng', 38000, 'miquang.jpg', 'Món mặn'),
(8, 'Bánh tráng trộn', 25000, 'banhtrangtron.jpg', 'Món ngon');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieugiamgia`
--

CREATE TABLE `phieugiamgia` (
  `MaGiamGia` varchar(25) NOT NULL,
  `TenMaGiamGia` varchar(100) NOT NULL,
  `ChietKhau` int(11) NOT NULL,
  `TinhKhaDung` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieugiamgia`
--

INSERT INTO `phieugiamgia` (`MaGiamGia`, `TenMaGiamGia`, `ChietKhau`, `TinhKhaDung`) VALUES
('0', 'Không giảm giá', 0, 1),
('uudaihe2023', 'Ưu đãi mùa hè 2023, ...', 7, 1),
('uudaithu2022', 'Ưu đãi mùa thu năm 2022', 5, 0),
('uudaixuan2023', 'ưu đãi mùa xuân năm 2023', 10, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`MaPhong`, `LoaiPhong`, `KieuPhong`, `SLMax`, `LoaiGiuong`, `GiaPhong`, `IMG`, `DienTich`, `TamNhin`, `MoTa`, `TrangThai`) VALUES
(101, 'Deluxe', 'Deluxe Single', 2, '1 giường đơn', '2500000', '../img/roomstyle/junior_suite.jpg', '32m', '14:12', '0', '0'),
(102, 'Deluxe', 'Deluxe Twin', 3, '2 giường đơn', '3200000', '../img/allroom/Deluxe_room1.jpg', '42m', 'Ra biển ', '0', '0'),
(103, 'Deluxe', 'Deluxe Double', 3, '1 giường đôi và 1 giường đơn', '3200000', '../img/allroom/family_room.jpg', '42m', '12:10', '0', '0'),
(104, 'Deluxe', 'Deluxe Triple', 4, '1 giường đôi và 2 giường đơn', '5800000', '../img/allroom/family_room1.jpg', '45m', '12:12', '0', '0'),
(105, 'Executive', 'Executive Twin', 3, '2 giường đơn', '8600000', '../img/allroom/Junior_suite.jpg', '50m', '14:12', '0', '0'),
(201, 'Executive', 'Executive Double', 3, '1 giường đôi và 1 giường đơn', '9400000', '../img/allroom/Single_room.jpg', '50m', '14:10', '0', '0'),
(202, 'Executive', 'Executive Triple', 4, '1 giường đôi và 2 giường đơn', '10100000', '../img/allroom/Standard_room.jpg', '56m', '12:10', '0', '0'),
(203, 'Executive', 'Executive Connecting', 6, '2 giường đôi và 2 giường đơn', '18200000', '../img/allroom/Standard_room1.jpg', '64m', '14:12', '0', '0'),
(204, 'Suite', 'Suite Twin', 3, '2 giường đơn', '18900000', '../img/allroom/Superior_suite.jpg', '56m', '14:10', '0', '0'),
(205, 'Suite', 'Suite Double', 3, '1 giường đôi và 1 giường đơn', '20700000', '../img/roomstyle/double_room.jpg', '56m', '12:10', '0', '0'),
(301, 'Suite', 'Suite Triple', 4, '1 giường đôi và 2 giường đơn', '22200000', '../img/roomstyle/small_suite.jpg', '65m', '12:12', '0', '0'),
(302, 'Suite', 'Suite Connecting', 6, '2 giường đôi và 2 giường đơn', '39500000', '../img/roomstyle/junior_suite.jpg', '72m', '14:10', '0', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quanlytaikhoan`
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
(46, 'Trường Bá', 'null', '7steam.work@gmail.com', 0, '123', '105238185890006122819'),
(47, 'Cát Trường Trương Bá', 'null', 'truongtg2k@gmail.com', 0, '123', '109408661915133195138'),
(50, 'Cát Trường Trương Bá', '0336004076', 'batruong1704@gmail.com', 123456789, '0123456789', '108617347685033795623');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoanadmin`
--

CREATE TABLE `taikhoanadmin` (
  `ID` int(11) NOT NULL,
  `HoTen` varchar(50) NOT NULL,
  `SDT` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `PassWord` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoanadmin`
--

INSERT INTO `taikhoanadmin` (`ID`, `HoTen`, `SDT`, `Email`, `PassWord`) VALUES
(1, 'Bá Trường', '012345678', 'buck0503@gmail.com', '123'),
(2, 'thuydung', '0394407543', 'dung@gmail.com', '1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdatmon`
--
ALTER TABLE `chitietdatmon`
  ADD PRIMARY KEY (`MaDatMon`);

--
-- Chỉ mục cho bảng `chitietdatphong`
--
ALTER TABLE `chitietdatphong`
  ADD PRIMARY KEY (`MaDatPhong`);

--
-- Chỉ mục cho bảng `chitietdichvu`
--
ALTER TABLE `chitietdichvu`
  ADD PRIMARY KEY (`MaDatDichVu`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHoaDon`);

--
-- Chỉ mục cho bảng `monan`
--
ALTER TABLE `monan`
  ADD PRIMARY KEY (`MaMonAn`);

--
-- Chỉ mục cho bảng `phieugiamgia`
--
ALTER TABLE `phieugiamgia`
  ADD PRIMARY KEY (`MaGiamGia`);

--
-- Chỉ mục cho bảng `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`MaPhong`);

--
-- Chỉ mục cho bảng `quanlytaikhoan`
--
ALTER TABLE `quanlytaikhoan`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `taikhoanadmin`
--
ALTER TABLE `taikhoanadmin`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietdatmon`
--
ALTER TABLE `chitietdatmon`
  MODIFY `MaDatMon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitietdatphong`
--
ALTER TABLE `chitietdatphong`
  MODIFY `MaDatPhong` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitietdichvu`
--
ALTER TABLE `chitietdichvu`
  MODIFY `MaDatDichVu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHoaDon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `monan`
--
ALTER TABLE `monan`
  MODIFY `MaMonAn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `quanlytaikhoan`
--
ALTER TABLE `quanlytaikhoan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `taikhoanadmin`
--
ALTER TABLE `taikhoanadmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
