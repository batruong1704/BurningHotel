-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 10, 2023 lúc 09:16 PM
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

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `monan`
--
ALTER TABLE `monan`
  ADD PRIMARY KEY (`MaMonAn`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `monan`
--
ALTER TABLE `monan`
  MODIFY `MaMonAn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
