-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 28, 2023 lúc 05:53 PM
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
  `MaCTDP` int(11) NOT NULL,
  `MaPDP` int(11) NOT NULL,
  `MaPhong` int(11) NOT NULL,
  `NgayDen` date NOT NULL,
  `NgayDi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdatphong`
--

INSERT INTO `chitietdatphong` (`MaCTDP`, `MaPDP`, `MaPhong`, `NgayDen`, `NgayDi`) VALUES
(1, 1, 1, '2023-10-18', '2023-10-19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdichvu`
--

CREATE TABLE `chitietdichvu` (
  `MaCTDV` int(11) NOT NULL,
  `MaPDV` int(11) NOT NULL,
  `MaDichVu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdichvu`
--

INSERT INTO `chitietdichvu` (`MaCTDV`, `MaPDV`, `MaDichVu`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `MaDichVu` int(11) NOT NULL,
  `TenDichVu` varchar(50) NOT NULL,
  `DonGia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`MaDichVu`, `TenDichVu`, `DonGia`) VALUES
(1, 'Extrabed', 300000),
(2, 'Xe đưa đón sân bay', 250000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHoaDon` int(11) NOT NULL,
  `MaPDP` int(11) NOT NULL,
  `TongTien` varchar(50) NOT NULL,
  `TinhTrang` varchar(50) NOT NULL
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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieudatphong`
--

CREATE TABLE `phieudatphong` (
  `MaPDP` int(11) NOT NULL,
  `MaKhachHang` int(11) NOT NULL,
  `TongTien` varchar(50) NOT NULL,
  `ThanhToanTruoc` varchar(50) NOT NULL,
  `PhuongThucThanhToan` varchar(50) NOT NULL,
  `NgayTT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieudatphong`
--

INSERT INTO `phieudatphong` (`MaPDP`, `MaKhachHang`, `TongTien`, `ThanhToanTruoc`, `PhuongThucThanhToan`, `NgayTT`) VALUES
(1, 1, '3050000', '305000', 'Thẻ Visa, Master Card', '2023-10-17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieudichvu`
--

CREATE TABLE `phieudichvu` (
  `MaPDV` int(11) NOT NULL,
  `MaPDP` int(11) NOT NULL,
  `TongTienDV` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieugiamgia`
--

CREATE TABLE `phieugiamgia` (
  `MaGiamGia` int(11) NOT NULL,
  `TenMaGiamGia` int(11) NOT NULL,
  `ChietKhau` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(50, 'Cát Trường Trương Bá', '0336004076', 'batruong1704@gmail.com', 123456789, '0123456789', '108617347685033795623'),
(72, 'Cát Trường Trương Bá', '0336004076', 'truongtg2k@gmail.com', 123456789, 'admin123', '109408661915133195138'),
(73, 'Trường Bá', '', '7steam.work@gmail.com', 0, '', '105238185890006122819');

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
  ADD PRIMARY KEY (`MaCTDP`),
  ADD KEY `mkl3` (`MaPDP`),
  ADD KEY `mkl4` (`MaPhong`);

--
-- Chỉ mục cho bảng `chitietdichvu`
--
ALTER TABLE `chitietdichvu`
  ADD PRIMARY KEY (`MaCTDV`),
  ADD KEY `mkl1` (`MaPDV`),
  ADD KEY `mkl2` (`MaDichVu`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`MaDichVu`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHoaDon`),
  ADD KEY `MaPDP` (`MaPDP`);

--
-- Chỉ mục cho bảng `monan`
--
ALTER TABLE `monan`
  ADD PRIMARY KEY (`MaMonAn`);

--
-- Chỉ mục cho bảng `phieudatphong`
--
ALTER TABLE `phieudatphong`
  ADD PRIMARY KEY (`MaPDP`),
  ADD KEY `MaKhachHang` (`MaKhachHang`);

--
-- Chỉ mục cho bảng `phieudichvu`
--
ALTER TABLE `phieudichvu`
  ADD PRIMARY KEY (`MaPDV`),
  ADD KEY `MaPDP` (`MaPDP`);

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
  MODIFY `MaCTDP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `chitietdichvu`
--
ALTER TABLE `chitietdichvu`
  MODIFY `MaCTDV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `MaDichVu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHoaDon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `monan`
--
ALTER TABLE `monan`
  MODIFY `MaMonAn` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phieudatphong`
--
ALTER TABLE `phieudatphong`
  MODIFY `MaPDP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `phieudichvu`
--
ALTER TABLE `phieudichvu`
  MODIFY `MaPDV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `quanlytaikhoan`
--
ALTER TABLE `quanlytaikhoan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `taikhoanadmin`
--
ALTER TABLE `taikhoanadmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdatphong`
--
ALTER TABLE `chitietdatphong`
  ADD CONSTRAINT `mkl3` FOREIGN KEY (`MaPDP`) REFERENCES `phieudatphong` (`MaPDP`),
  ADD CONSTRAINT `mkl4` FOREIGN KEY (`MaPhong`) REFERENCES `phong` (`MaPhong`);

DELIMITER $$
--
-- Sự kiện
--
CREATE DEFINER=`root`@`localhost` EVENT `CapNhapTrangThaiHoaDon` ON SCHEDULE EVERY 1 SECOND STARTS '2023-10-28 22:53:33' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE hoadon AS hd
  JOIN chitietdatphong AS ctdp
  ON hd.MaPDP = ctdp.MaPDP
  SET hd.TinhTrang = 
  CASE
    WHEN ctdp.NgayDen <= NOW() AND ctdp.NgayDi >= NOW() THEN 'Chờ thanh toán'
    WHEN ctdp.NgayDi < NOW() THEN 'Đã thanh toán'
  END
  Where hd.TinhTrang IN ('Đã đặt cọc', 'Chờ thanh toán')$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
