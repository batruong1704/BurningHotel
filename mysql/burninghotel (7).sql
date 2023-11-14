-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 03, 2023 lúc 06:38 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

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
  `MaPMA` int(11) NOT NULL,
  `MaMonAn` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitietdatphong`
--

INSERT INTO `chitietdatphong` (`MaCTDP`, `MaPDP`, `MaPhong`, `NgayDen`, `NgayDi`) VALUES
(10, 10, 101, '2023-11-01', '2023-11-02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdichvu`
--

CREATE TABLE `chitietdichvu` (
  `MaCTDV` int(11) NOT NULL,
  `MaPDV` int(11) NOT NULL,
  `MaDichVu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chucvu`
--

CREATE TABLE `chucvu` (
  `MaChucVu` varchar(255) NOT NULL,
  `TenChucVu` varchar(255) NOT NULL,
  `LuongTheoNgay` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chucvu`
--

INSERT INTO `chucvu` (`MaChucVu`, `TenChucVu`, `LuongTheoNgay`) VALUES
('11', 'Tổng giám đốc', 2000000),
('12', 'Phó giám đốc', 1500000),
('13', 'Thư ký tổng giám đốc', 500000),
('14', 'Trợ lý tổng giám đốc', 340000),
('21', 'Trưởng bộ phận lễ tân', 670000),
('210', 'Nhân viên hành lý', 200000),
('211', 'Nhân viên đứng cửa', 200000),
('212', 'Nhân viên trực tổng đài', 200000),
('213', 'Nhân viên lái xe', 200000),
('22', 'Quản lý phòng khách sạn', 1000000),
('23', 'Quản lý ca trực', 500000),
('24', 'Quản lý tiền sảnh', 500000),
('25', 'Nhân viên quan hệ khách hàng', 340000),
('26', 'Giám sát bộ phận lễ tân', 270000),
('27', 'Nhân viên lễ tân', 200000),
('28', 'Nhân viên đặt phòng', 200000),
('29', 'Nhân viên hỗ trợ khách hàng', 270000),
('31', 'Bếp Trưởng', 25000),
('32', 'Bếp Phó', 10000),
('33', 'Bếp Phụ', 5000),
('41', 'trưởng bộ phận buồn phòng', 400000),
('42', 'Nhân viên buồng phòng', 200000),
('43', 'Nhân viên giặt là', 200000),
('44', 'Nhân viên điều phối', 200000),
('51', 'Quản lý nhà hàng', 340000),
('52', 'Giám sát nhà hàng', 270000),
('53', 'Nhân viên phục vụ', 170000),
('54', 'Nhân viên đón khách', 170000),
('61', 'Kế toán trưởng', 670000),
('62', 'Kế toán tổng hợp', 500000),
('71', 'Trưởng bộ phận an ninh', 370000),
('72', 'Nhân viên an ninh', 200000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `daubep`
--

CREATE TABLE `daubep` (
  `ID` int(11) NOT NULL,
  `HoTen` varchar(255) NOT NULL,
  `GioiTinh` varchar(10) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `MaChucVu` varchar(255) NOT NULL,
  `SoNamKinhNghiem` int(11) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `SoDienThoai` varchar(15) DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `MoTa` text DEFAULT NULL,
  `HinhAnh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `daubep`
--

INSERT INTO `daubep` (`ID`, `HoTen`, `GioiTinh`, `NgaySinh`, `MaChucVu`, `SoNamKinhNghiem`, `Email`, `SoDienThoai`, `DiaChi`, `MoTa`, `HinhAnh`) VALUES
(1, 'Trương Bá Cát Trường', 'Nam', '1985-01-15', '31', 15, 'truong@example.com', '0987654321', 'Đường Phủ Lý, Hà Nội', 'Phó Bếp của chúng tôi không chỉ là người hỗ trợ Bếp Trưởng mà còn là linh hồn của bếp nhà hàng. Với 10 năm kinh nghiệm chế biến đa dạng các món ăn, Phó Bếp chịu trách nhiệm đảm bảo rằng mỗi món ăn đều được chuẩn bị một cách hoàn hảo. Sự tỉ mỉ, sự chú ý đến chi tiết và khả năng làm việc nhóm xuất sắc là những đặc điểm xuất sắc của họ.', '../../img/restaurant/chef1.jpg'),
(2, 'Nguyễn Thị Xón', 'Nữ', '1990-06-25', '32', 10, 'xon@example.com', '0123456789', '456 Đường XYZ, Hà Nội', 'Phó Bếp của chúng tôi không chỉ là người hỗ trợ Bếp Trưởng mà còn là linh hồn của bếp nhà hàng. Với 10 năm kinh nghiệm chế biến đa dạng các món ăn, Phó Bếp chịu trách nhiệm đảm bảo rằng mỗi món ăn đều được chuẩn bị một cách hoàn hảo. Sự tỉ mỉ, sự chú ý đến chi tiết và khả năng làm việc nhóm xuất sắc là những đặc điểm xuất sắc của họ.', '../../img/restaurant/chef2.jpg'),
(3, 'Cấn Minh Quang', 'Nam', '1987-03-10', '33', 12, 'quang@example.com', '0369852147', '789 Đường DEF, Hà Nội', 'Phó Bếp của chúng tôi không chỉ là người hỗ trợ Bếp Trưởng mà còn là linh hồn của bếp nhà hàng. Với 10 năm kinh nghiệm chế biến đa dạng các món ăn, Phó Bếp chịu trách nhiệm đảm bảo rằng mỗi món ăn đều được chuẩn bị một cách hoàn hảo. Sự tỉ mỉ, sự chú ý đến chi tiết và khả năng làm việc nhóm xuất sắc là những đặc điểm xuất sắc của họ.', '../../img/restaurant/chef3.jpg'),
(4, 'Nguyễn Khánh', 'Nam', '1975-08-02', '33', 25, 'khanh@example.com', '0912345678', '987 Đường UVW, Hà Nội', 'Phó Bếp của chúng tôi không chỉ là người hỗ trợ Bếp Trưởng mà còn là linh hồn của bếp nhà hàng. Với 10 năm kinh nghiệm chế biến đa dạng các món ăn, Phó Bếp chịu trách nhiệm đảm bảo rằng mỗi món ăn đều được chuẩn bị một cách hoàn hảo. Sự tỉ mỉ, sự chú ý đến chi tiết và khả năng làm việc nhóm xuất sắc là những đặc điểm xuất sắc của họ.', '../../img/restaurant/chef4.jpg'),
(5, 'Trịnh Tiến Lên', 'Nam', '1993-12-20', '33', 8, 'len@example.com', '0563214789', '753 Đường JKL, Hà Nội', 'Với 8 năm kinh nghiệm, Đầu Bếp của chúng tôi không chỉ là người nấu ăn giỏi mà còn là người thầy hướng dẫn tài năng. Sự chắc chắn và khéo léo trong việc chế biến các nguyên liệu tươi ngon thành những bữa ăn tinh tế là niềm tự hào của họ. Độ sáng tạo không giới hạn và kỹ năng thượng thừa của Đầu Bếp đều làm cho mỗi bữa ăn trở thành một trải nghiệm ẩm thực đáng nhớ.', '../../img/restaurant/chef5.jpg'),
(6, 'Gia Bảo', 'Nam', '1980-04-05', '33', 18, 'bao@example.com', '0709876543', '345 Đường MNO, Hà Nội', 'Với 18 năm kinh nghiệm, Đầu Bếp của chúng tôi không chỉ là người nấu ăn giỏi mà còn là người thầy hướng dẫn tài năng. Sự chắc chắn và khéo léo trong việc chế biến các nguyên liệu tươi ngon thành những bữa ăn tinh tế là niềm tự hào của họ. Độ sáng tạo không giới hạn và kỹ năng thượng thừa của Đầu Bếp đều làm cho mỗi bữa ăn trở thành một trải nghiệm ẩm thực đáng nhớ.', '../../img/restaurant/chef6.jpg'),
(7, 'Trương Vân', 'Nữ', '1988-09-14', '33', 14, 'van@example.com', '0563217890', '542 Đường PQR, Hà Nội', 'Với 14 năm kinh nghiệm, Đầu Bếp của chúng tôi không chỉ là người nấu ăn giỏi mà còn là người thầy hướng dẫn tài năng. Sự chắc chắn và khéo léo trong việc chế biến các nguyên liệu tươi ngon thành những bữa ăn tinh tế là niềm tự hào của họ. Độ sáng tạo không giới hạn và kỹ năng thượng thừa của Đầu Bếp đều làm cho mỗi bữa ăn trở thành một trải nghiệm ẩm thực đáng nhớ.', '../../img/restaurant/chef1.jpg'),
(8, 'Nguyễn Tuấn', 'Nam', '1982-06-07', '33', 20, 'tuan@example.com', '0918563201', '153 Đường STU, Hà Nội', 'Với 20 năm kinh nghiệm, Đầu Bếp của chúng tôi không chỉ là người nấu ăn giỏi mà còn là người thầy hướng dẫn tài năng. Sự chắc chắn và khéo léo trong việc chế biến các nguyên liệu tươi ngon thành những bữa ăn tinh tế là niềm tự hào của họ. Độ sáng tạo không giới hạn và kỹ năng thượng thừa của Đầu Bếp đều làm cho mỗi bữa ăn trở thành một trải nghiệm ẩm thực đáng nhớ.', '../../img/restaurant/chef1.jpg'),
(9, 'Cao Trinh', 'Nữ', '1995-03-30', '33', 6, 'trinh@example.com', '0123456789', '456 Đường VWX, Hà Nội', 'Với 6 năm kinh nghiệm, Đầu Bếp của chúng tôi không chỉ là người nấu ăn giỏi mà còn là người thầy hướng dẫn tài năng. Sự chắc chắn và khéo léo trong việc chế biến các nguyên liệu tươi ngon thành những bữa ăn tinh tế là niềm tự hào của họ. Độ sáng tạo không giới hạn và kỹ năng thượng thừa của Đầu Bếp đều làm cho mỗi bữa ăn trở thành một trải nghiệm ẩm thực đáng nhớ.', '../../img/restaurant/chef1.jpg'),
(10, 'Phan Quốc', 'Nam', '1986-11-12', '32', 13, 'quoc@example.com', '0987654321', '123 Đường YZA, Hà Nội', 'Với 13 năm kinh nghiệm, Đầu Bếp của chúng tôi không chỉ là người nấu ăn giỏi mà còn là người thầy hướng dẫn tài năng. Sự chắc chắn và khéo léo trong việc chế biến các nguyên liệu tươi ngon thành những bữa ăn tinh tế là niềm tự hào của họ. Độ sáng tạo không giới hạn và kỹ năng thượng thừa của Đầu Bếp đều làm cho mỗi bữa ăn trở thành một trải nghiệm ẩm thực đáng nhớ.', '../../img/restaurant/chef1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `MaDichVu` int(11) NOT NULL,
  `TenDichVu` varchar(50) NOT NULL,
  `DonGia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`MaDichVu`, `TenDichVu`, `DonGia`) VALUES
(1, 'Extrabed', 300000),
(2, 'Xe đưa đón sân bay', 250000),
(3, 'Dọn Phòng', 150000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `doan`
--

CREATE TABLE `doan` (
  `ID` int(11) NOT NULL,
  `TenMon` varchar(255) NOT NULL,
  `PhanLoai` enum('Món chính','Món khai vị','Món tráng miệng','Đồ ăn nhanh','Nước uống') NOT NULL,
  `ThoiGianNau` int(11) NOT NULL,
  `DoKho` enum('Dễ','Bình thường','Tương đối khó','Khó') NOT NULL,
  `ThanhPhan` text NOT NULL,
  `HamLuongcalo` float DEFAULT NULL,
  `ThanhTien` double DEFAULT NULL,
  `MoTa` text DEFAULT NULL,
  `SoLuongDaBan` int(11) DEFAULT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `doan`
--

INSERT INTO `doan` (`ID`, `TenMon`, `PhanLoai`, `ThoiGianNau`, `DoKho`, `ThanhPhan`, `HamLuongcalo`, `ThanhTien`, `MoTa`, `SoLuongDaBan`, `img`) VALUES
(1, 'Gà nướng Kon Tum', 'Món chính', 35, 'Dễ', 'Gà, xả, muối tôm, tỏi băm, mật ong, dầu ăn', 450, 250000, 'Thịt được tẩm ướp gia vị từ một số loài rễ, lá, mật ong và cây rừng Kon Tum nên gà nướng mang hương vị đặc biệt. Khi thưởng thức nên chấm thêm muối tiêu hoặc muối hột lớn với ớt cay cay hay lá bét (một loại lá rừng).', 0, ''),
(2, 'Bún riêu cua', 'Món chính', 30, 'Bình thường', 'Riêu cua, bún, hành, mắm tôm', 350, 22000, 'Bún riêu cua là món ngon đặc biệt với hương vị độc đáo từ riêu cua và bún mềm, thấm vị.', 0, ''),
(3, 'Mì Quảng', 'Món chính', 25, 'Tương đối khó', 'Mì, gia vị, hành, thịt', 200, 30000, 'Mì Quảng là một món ăn truyền thống của Quảng Nam, có hương vị đậm đà và phong cách riêng.', 0, ''),
(4, 'Lẩu cá hồi', 'Món chính', 40, 'Khó', 'Cá hồi, rau sống, nước lẩu', 360, 400000, 'Lẩu cá hồi với cá hồi tươi ngon và nước lẩu thơm ngon, hoàn hảo cho những ngày se lạnh.', 0, ''),
(5, 'Bánh mì thịt', 'Món chính', 20, 'Bình thường', 'Bánh mì, thịt gà, rau sống', 310, 25000, 'Bánh mì thịt với thịt gà tươi ngon và bánh mì giòn tan, thích hợp cho bữa sáng hoặc bữa trưa.', 0, ''),
(6, 'Cơm rang dương châu', 'Món chính', 25, 'Tương đối khó', 'Cơm, hành, dương châu, gia vị', 520, 35000, 'Cơm rang dương châu với cơm nướng và hương vị độc đáo từ dương châu.', 0, ''),
(7, 'Bún bò Huế', 'Món chính', 35, 'Bình thường', 'Bún, bò, gia vị, hành, rau sống', 420, 28000, 'Bún bò Huế với hương vị đặc trưng của miền Trung Việt Nam, thích hợp cho người thích mì vị cay.', 0, ''),
(8, 'Phở gà', 'Món chính', 30, 'Dễ', 'Phở, gà, gia vị', 380, 30000, 'Phở gà với mì và thịt gà thơm ngon, thích hợp cho bữa sáng hoặc bữa trưa.', 0, ''),
(9, 'Bánh xèo', 'Món chính', 20, 'Dễ', 'Bánh xèo, gia vị', 380, 20000, 'Bánh xèo với bánh mỳ giòn tan và nhiều loại gia vị tươi ngon.', 0, ''),
(10, 'Bánh tráng cuốn', 'Món chính', 25, 'Bình thường', 'Bánh tráng, thịt nướng, rau sống', 350, 22000, 'Bánh tráng cuốn với bánh tráng mỏng và thịt nướng tươi ngon.', 0, ''),
(11, 'Gà nướng Kon Tum', 'Món chính', 35, 'Dễ', 'Gà, xả, muối tôm, tỏi băm, mật ong, dầu ăn', 450, 250000, 'Thịt được tẩm ướp gia vị từ một số loài rễ, lá, mật ong và cây rừng Kon Tum nên gà nướng mang hương vị đặc biệt. Khi thưởng thức nên chấm thêm muối tiêu hoặc muối hột lớn với ớt cay cay hay lá bét (một loại lá rừng).', 0, ''),
(12, 'Bún riêu cua', 'Món chính', 30, 'Bình thường', 'Riêu cua, bún, hành, mắm tôm', 350, 22000, 'Bún riêu cua là món ngon đặc biệt với hương vị độc đáo từ riêu cua và bún mềm, thấm vị.', 0, ''),
(13, 'Mì Quảng', 'Món chính', 25, 'Tương đối khó', 'Mì, gia vị, hành, thịt', 200, 30000, 'Mì Quảng là một món ăn truyền thống của Quảng Nam, có hương vị đậm đà và phong cách riêng.', 0, ''),
(14, 'Lẩu cá hồi', 'Món chính', 40, 'Khó', 'Cá hồi, rau sống, nước lẩu', 360, 400000, 'Lẩu cá hồi với cá hồi tươi ngon và nước lẩu thơm ngon, hoàn hảo cho những ngày se lạnh.', 0, ''),
(15, 'Bánh mì thịt', 'Món chính', 20, 'Bình thường', 'Bánh mì, thịt gà, rau sống', 310, 25000, 'Bánh mì thịt với thịt gà tươi ngon và bánh mì giòn tan, thích hợp cho bữa sáng hoặc bữa trưa.', 0, ''),
(16, 'Cơm rang dương châu', 'Món chính', 25, 'Tương đối khó', 'Cơm, hành, dương châu, gia vị', 520, 35000, 'Cơm rang dương châu với cơm nướng và hương vị độc đáo từ dương châu.', 0, ''),
(17, 'Bún bò Huế', 'Món chính', 35, 'Bình thường', 'Bún, bò, gia vị, hành, rau sống', 420, 28000, 'Bún bò Huế với hương vị đặc trưng của miền Trung Việt Nam, thích hợp cho người thích mì vị cay.', 0, ''),
(18, 'Phở gà', 'Món chính', 30, 'Dễ', 'Phở, gà, gia vị', 380, 30000, 'Phở gà với mì và thịt gà thơm ngon, thích hợp cho bữa sáng hoặc bữa trưa.', 0, ''),
(19, 'Bánh xèo', 'Món chính', 20, 'Dễ', 'Bánh xèo, gia vị', 380, 20000, 'Bánh xèo với bánh mỳ giòn tan và nhiều loại gia vị tươi ngon.', 0, ''),
(20, 'Bánh tráng cuốn', 'Món chính', 25, 'Bình thường', 'Bánh tráng, thịt nướng, rau sống', 350, 22000, 'Bánh tráng cuốn với bánh tráng mỏng và thịt nướng tươi ngon.', 0, ''),
(21, 'Bún chả', 'Món chính', 25, 'Bình thường', 'Bún, thịt nướng, gia vị', 380, 25000, 'Bún chả là món ăn truyền thống của Hà Nội với bún mềm, thịt nướng thơm ngon. Bún chả thường được ăn kèm với nhiều loại rau sống và nước mắm pha chua ngọt.', 0, ''),
(22, 'Cơm gà', 'Món chính', 30, 'Dễ', 'Cơm, thịt gà, gia vị', 350, 20000, 'Cơm gà là món ngon và bổ dưỡng với thịt gà tươi ngon và cơm hấp. Món này thường được kèm theo nước lẩu hấp dẫn.', 0, ''),
(23, 'Bánh mì kẹp thịt', 'Món chính', 20, 'Bình thường', 'Bánh mì, thịt, rau sống', 320, 18000, 'Bánh mì kẹp thịt với thịt và rau sống giòn tan là lựa chọn lý tưởng cho bữa ăn nhanh và ngon miệng.', 0, ''),
(24, 'Hủ tiếu Nam Vang', 'Món chính', 30, 'Tương đối khó', 'Hủ tiếu, thịt, gia vị', 410, 28000, 'Hủ tiếu Nam Vang là món ăn phổ biến tại Sài Gòn với hủ tiếu và thịt tươi ngon. Món này thường được kèm theo nước dùng thơm ngon.', 0, ''),
(25, 'Mì Ý hấp', 'Món chính', 35, 'Tương đối khó', 'Mì Ý, thịt, gia vị', 450, 32000, 'Mì Ý hấp với mì Ý mềm và thịt ngon là một món ăn sang trọng và ngon miệng.', 0, ''),
(26, 'Cơm rang dưa lưới', 'Món chính', 25, 'Bình thường', 'Cơm, dưa lưới, gia vị', 320, 22000, 'Cơm rang dưa lưới là món ăn thơm ngon và dễ làm với cơm và dưa lưới giòn tan.', 0, ''),
(27, 'Gỏi cuốn', 'Món chính', 20, 'Dễ', 'Bánh tráng, thịt nướng, rau sống', 280, 18000, 'Gỏi cuốn là món ăn dễ làm và ngon miệng với bánh tráng mỏng và thịt nướng tươi ngon.', 0, ''),
(28, 'Gỏi cuốn', 'Món khai vị', 20, 'Dễ', 'Bánh tráng, thịt nướng, rau sống', 280, 18000, 'Gỏi cuốn là món ăn dễ làm và ngon miệng với bánh tráng mỏng và thịt nướng tươi ngon.', 0, ''),
(29, 'Bánh mì pate', 'Món khai vị', 15, 'Dễ', 'Bánh mì, pate, gia vị', 250, 12000, 'Bánh mì pate với lớp pate thơm ngon và bánh mì giòn tan là lựa chọn tuyệt vời cho món khai vị.', 0, ''),
(30, 'Canapé hải sản', 'Món khai vị', 25, 'Tương đối khó', 'Bánh mì, hải sản, gia vị', 320, 22000, 'Canapé hải sản với hải sản tươi ngon và bánh mì hấp dẫn là món khai vị hấp dẫn.', 0, ''),
(31, 'Nem chua', 'Món khai vị', 20, 'Dễ', 'Thịt, gia vị', 240, 14000, 'Nem chua là món khai vị truyền thống với thịt và gia vị thơm ngon.', 0, ''),
(32, 'Bánh mì ốp la', 'Món khai vị', 20, 'Dễ', 'Bánh mì, trứng, gia vị', 290, 16000, 'Bánh mì ốp la với trứng gà và gia vị hấp dẫn là món khai vị ngon miệng.', 0, ''),
(33, 'Xúc xích chiên', 'Món khai vị', 25, 'Dễ', 'Xúc xích, gia vị', 310, 18000, 'Xúc xích chiên với xúc xích tươi ngon và gia vị là lựa chọn lý tưởng cho món khai vị.', 0, ''),
(34, 'Súp lơ', 'Món khai vị', 30, 'Tương đối khó', 'Súp lơ, gia vị', 260, 14000, 'Súp lơ với súp lơ thơm ngon và gia vị là món khai vị hấp dẫn.', 0, ''),
(35, 'Kem sữa chua', 'Món tráng miệng', 10, 'Dễ', 'Sữa chua, gia vị', 180, 15000, 'Kem sữa chua với lớp sữa chua mềm mịn và hương vị thơm ngon.', 0, ''),
(36, 'Bánh flan', 'Món tráng miệng', 15, 'Dễ', 'Bánh flan, gia vị', 250, 18000, 'Bánh flan với lớp caramel và bánh flan mềm mịn là món tráng miệng ngon miệng.', 0, ''),
(37, 'Kem chocolate', 'Món tráng miệng', 10, 'Dễ', 'Sô cô la, kem', 220, 16000, 'Kem chocolate với kem thơm và sô cô la là món tráng miệng ngon miệng.', 0, ''),
(38, 'Cheesecake dâu', 'Món tráng miệng', 20, 'Tương đối khó', 'Dâu, bánh cheesecake, gia vị', 290, 22000, 'Cheesecake dâu với lớp cheesecake mềm và hương vị dâu là món tráng miệng hấp dẫn.', 0, ''),
(39, 'Bánh ngọt phô mai', 'Món tráng miệng', 15, 'Dễ', 'Bánh ngọt, phô mai, gia vị', 260, 19000, 'Bánh ngọt phô mai với lớp phô mai béo và bánh ngọt giòn là món tráng miệng ngon miệng.', 0, ''),
(40, 'Panna cotta', 'Món tráng miệng', 25, 'Tương đối khó', 'Kem, hạt dẻ', 320, 25000, 'Panna cotta với lớp kem mềm và hương vị hạt dẻ là món tráng miệng hấp dẫn.', 0, ''),
(41, 'Bánh tiramisu', 'Món tráng miệng', 20, 'Tương đối khó', 'Bánh tiramisu, cà phê', 310, 22000, 'Bánh tiramisu với bánh tiramisu thơm ngon và lớp cà phê là món tráng miệng hấp dẫn.', 0, ''),
(42, 'Bánh mì hamburger', 'Đồ ăn nhanh', 15, 'Dễ', 'Bánh mì, thịt bò, rau sống', 450, 35000, 'Bánh mì hamburger với thịt bò, rau sống và gia vị hấp dẫn là món đồ ăn nhanh phổ biến.', 0, ''),
(43, 'Pizza hawaiian', 'Đồ ăn nhanh', 20, 'Tương đối khó', 'Bánh pizza, thịt dăm, dứa, phô mai', 500, 42000, 'Pizza hawaiian với lớp bánh pizza mỏng, thịt dăm, dứa và phô mai là món đồ ăn nhanh thơm ngon.', 0, ''),
(44, 'Bánh mỳ sandwich', 'Đồ ăn nhanh', 15, 'Dễ', 'Bánh mỳ, thịt gà, rau sống', 380, 30000, 'Bánh mỳ sandwich với thịt gà, rau sống và gia vị hấp dẫn là món đồ ăn nhanh ngon miệng.', 0, ''),
(45, 'Bánh bao', 'Đồ ăn nhanh', 10, 'Dễ', 'Bánh bao, nhân thịt', 280, 18000, 'Bánh bao với lớp bánh mềm và nhân thịt là món đồ ăn nhanh truyền thống.', 0, ''),
(46, 'Cơm cuộn', 'Đồ ăn nhanh', 25, 'Dễ', 'Cơm, thịt nướng, rau sống', 320, 25000, 'Cơm cuộn với lớp cơm, thịt nướng và rau sống là món đồ ăn nhanh ngon miệng.', 0, ''),
(47, 'Mì xào hải sản', 'Đồ ăn nhanh', 20, 'Tương đối khó', 'Mì, hải sản, gia vị', 420, 35000, 'Mì xào hải sản với lớp mì và hải sản tươi ngon là món đồ ăn nhanh hấp dẫn.', 0, ''),
(48, 'Hotdog', 'Đồ ăn nhanh', 15, 'Dễ', 'Xúc xích, bánh mì', 350, 28000, 'Hotdog với xúc xích và bánh mì giòn là món đồ ăn nhanh phổ biến.', 0, ''),
(49, 'Bánh trứng', 'Đồ ăn nhanh', 12, 'Dễ', 'Trứng gà, gia vị', 280, 20000, 'Bánh trứng với lớp bánh mềm và trứng gà là món đồ ăn nhanh ngon miệng.', 0, ''),
(50, 'Bánh mì bơ tỏi', 'Đồ ăn nhanh', 15, 'Dễ', 'Bánh mì, bơ tỏi, gia vị', 320, 22000, 'Bánh mì bơ tỏi với bơ tỏi thơm và bánh mì giòn là món đồ ăn nhanh hấp dẫn.', 0, ''),
(51, 'Bánh su kem', 'Đồ ăn nhanh', 18, 'Dễ', 'Bánh su kem, kem, gia vị', 280, 19000, 'Bánh su kem với lớp bánh su kem mềm và kem thơm là món đồ ăn nhanh ngon miệng.', 0, ''),
(52, 'Cà phê đen', 'Nước uống', 5, 'Dễ', 'Cà phê, nước', 30, 22000, 'Cà phê đen với hương vị đắng và thơm là món nước uống phổ biến.', 0, ''),
(53, 'Nước chanh', 'Nước uống', 5, 'Dễ', 'Nước chanh, đường', 40, 15000, 'Nước chanh với hương vị chua ngọt là món nước uống giải khát.', 0, ''),
(54, 'Soda chanh', 'Nước uống', 8, 'Dễ', 'Soda, nước chanh', 60, 25000, 'Soda chanh với hương vị soda và chanh là món nước uống giải khát phổ biến.', 0, ''),
(55, 'Nước dừa', 'Nước uống', 10, 'Dễ', 'Nước dừa', 50, 28000, 'Nước dừa tươi ngon và bổ dưỡng.', 0, ''),
(56, 'Sinh tố bơ', 'Nước uống', 10, 'Dễ', 'Bơ, sữa, đường', 90, 35000, 'Sinh tố bơ với hương vị bơ ngon và thơm.', 0, ''),
(57, 'Cà phê sữa', 'Nước uống', 5, 'Dễ', 'Cà phê, sữa, đường', 70, 26000, 'Cà phê sữa với hương vị cà phê và sữa ngon miệng.', 0, ''),
(58, 'Trà đào', 'Nước uống', 8, 'Dễ', 'Trà, đào, đường', 80, 30000, 'Trà đào với hương vị trà thơm và đào ngon miệng.', 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHoaDon` int(11) NOT NULL,
  `MaPDP` int(11) NOT NULL,
  `TongTien` double NOT NULL,
  `TinhTrang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHoaDon`, `MaPDP`, `TongTien`, `TinhTrang`) VALUES
(10, 10, 2700000, 'Đã đặt cọc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `ID` int(11) NOT NULL,
  `HoTen` varchar(255) NOT NULL,
  `SDT` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `CMND` varchar(12) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `GioiTinh` int(11) NOT NULL,
  `PassWord` varchar(255) NOT NULL,
  `AccessToken` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`ID`, `HoTen`, `SDT`, `Email`, `CMND`, `DiaChi`, `GioiTinh`, `PassWord`, `AccessToken`) VALUES
(1, 'Admin', '0123456789', 'admin@gmail.com', '343025555', 'Thanh Hoá', 1, 'admin', NULL),
(50, 'Cát Trường Trương Bá', '0336004076', 'batruong1704@gmail.com', '123456789', 'Hà Nội', 1, '0123456789', '108617347685033795623'),
(74, 'Cát Trường Trương Bá', '0336004076', 'truongtg2k@gmail.com', '123456789', 'Hà Nội', 1, 'admin123', '109408661915133195138'),
(78, 'Trường Bá', '', '7steam.work@gmail.com', '0', 'Hà Nội', 1, 'admin', '105238185890006122819');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mathang`
--

CREATE TABLE `mathang` (
  `MaHang` varchar(20) NOT NULL,
  `TenHang` varchar(50) NOT NULL,
  `MaCongTy` varchar(20) NOT NULL,
  `LoaiHang` varchar(50) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonViTinh` varchar(50) NOT NULL,
  `GiaNhap` double NOT NULL,
  `GiaBan` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `mathang`
--

INSERT INTO `mathang` (`MaHang`, `TenHang`, `MaCongTy`, `LoaiHang`, `SoLuong`, `DonViTinh`, `GiaNhap`, `GiaBan`) VALUES
('MH001', 'Coca Cola', 'MCT001', 'Nước uống', 100, 'Lon', 9000, 11000),
('MH002', 'Pepsi', 'MCT002', 'Nước uống', 150, 'Lon', 8, 10000),
('MH003', 'Bánh mì', 'MCT003', 'Thực phẩm', 200, 'Cái', 5000, 8000),
('MH004', 'Sữa tươi', 'MCT004', 'Nước uống', 80, 'Chai', 12000, 15000),
('MH005', 'Bánh quy', 'MCT005', 'Thực phẩm', 120, 'Hộp', 20000, 25000),
('MH006', 'Rượu Vodka', 'MCT001', 'Đồ uống', 120, 'Chai', 28000, 33000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MaCongTy` varchar(20) NOT NULL,
  `TenCongTy` varchar(50) NOT NULL,
  `DiaChi` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `DienThoai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`MaCongTy`, `TenCongTy`, `DiaChi`, `Email`, `DienThoai`) VALUES
('MCT001', 'Công ty TNHH Thái Dương', 'Hà Nội', 'td@example.com', '0961473771'),
('MCT002', 'Công ty Nam Phương', '123 Đường Minh Khai, Hà Nội', 'namphuong@example.com', '0394462318'),
('MCT003', 'Công ty Hòa Phát', '456 Đường Võ Nguyên Giáp, Hà Nội', 'hoaphat@example.com', '0394407543'),
('MCT004', 'Công ty CP Bánh Kẹo Hải Hà', '789 Đường Phạm Văn Đồng,Hồ Chí Minh', 'haiha@gamil.com', '0389880459'),
('MCT005', 'Công ty CP Tiêu Dùng MaSan', '101 Đường Việt Nam, TP Hà Nội', 'masan@gmail.com', '0961523815');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNhanVien` int(11) NOT NULL,
  `HoTen` varchar(255) NOT NULL,
  `MaChucVu` varchar(255) NOT NULL,
  `NgaySinh` date DEFAULT NULL,
  `GioiTinh` int(11) DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `SoDienThoai` varchar(255) NOT NULL,
  `MatKhau` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNhanVien`, `HoTen`, `MaChucVu`, `NgaySinh`, `GioiTinh`, `DiaChi`, `Email`, `SoDienThoai`, `MatKhau`) VALUES
(1, 'Bá Trường', '1', '2023-11-01', 1, 'Thanh Hoá', 'admin@gmail.com', '123456789', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhaphang`
--

CREATE TABLE `nhaphang` (
  `MaNhapHang` varchar(20) NOT NULL,
  `MaHang` varchar(20) NOT NULL,
  `MaCongTy` varchar(20) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `LoaiHang` varchar(50) NOT NULL,
  `DonViTinh` varchar(50) NOT NULL,
  `GiaNhap` double NOT NULL,
  `NgayNhap` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieudatphong`
--

CREATE TABLE `phieudatphong` (
  `MaPDP` int(11) NOT NULL,
  `MaKhachHang` int(11) NOT NULL,
  `MaNhanVien` int(11) DEFAULT NULL,
  `TongTien` double NOT NULL,
  `ThanhToanTruoc` double NOT NULL,
  `PhuongThucThanhToan` varchar(50) NOT NULL,
  `NgayTT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phieudatphong`
--

INSERT INTO `phieudatphong` (`MaPDP`, `MaKhachHang`, `MaNhanVien`, `TongTien`, `ThanhToanTruoc`, `PhuongThucThanhToan`, `NgayTT`) VALUES
(10, 74, 1, 2500000, 250000, 'Thanh toán bằng QR-Pay', '2023-10-31'),
(11, 78, 1, 3200000, 0, 'Thanh Toán Trực Tiếp', '2023-11-02'),
(12, 78, 1, 11600000, 0, 'Thanh Toán Trực Tiếp', '2023-11-02'),
(13, 78, 1, 8600000, 0, 'Thanh Toán Trực Tiếp', '2023-11-02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieudichvu`
--

CREATE TABLE `phieudichvu` (
  `MaPDV` int(11) NOT NULL,
  `MaPDP` int(11) NOT NULL,
  `TongTienDV` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieugiamgia`
--

CREATE TABLE `phieugiamgia` (
  `MaGiamGia` int(11) NOT NULL,
  `TenMaGiamGia` int(11) NOT NULL,
  `ChietKhau` int(11) NOT NULL,
  `TinhTrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieumonan`
--

CREATE TABLE `phieumonan` (
  `MaPMA` int(11) NOT NULL,
  `MaHoaDon` int(11) NOT NULL,
  `TongTienMA` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phieumonan`
--

INSERT INTO `phieumonan` (`MaPMA`, `MaHoaDon`, `TongTienMA`) VALUES
(1, 10, 200000);

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
  `GiaPhong` double NOT NULL,
  `IMG` varchar(50) NOT NULL,
  `DienTich` varchar(50) NOT NULL,
  `TamNhin` varchar(50) NOT NULL,
  `MoTa` varchar(500) NOT NULL,
  `TrangThai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`MaPhong`, `LoaiPhong`, `KieuPhong`, `SLMax`, `LoaiGiuong`, `GiaPhong`, `IMG`, `DienTich`, `TamNhin`, `MoTa`, `TrangThai`) VALUES
(101, 'Deluxe ', 'Deluxe Single', 2, '1 giường đơn', 2500000, '../img/roomstyle/junior_suite.jpg', '32m', '14:12', '0', 'Trống'),
(102, 'Deluxe ', 'Deluxe Twin', 3, '2 giường đơn', 3200000, '../img/allroom/Deluxe_room1.jpg', '42m', 'Ra biển ', '0', 'Trống'),
(103, 'Deluxe ', 'Deluxe Double', 3, '1 giường đôi và 1 giường đơn', 3200000, '../img/allroom/family_room.jpg', '42m', '12:10', '0', 'Trống'),
(104, 'Deluxe ', 'Deluxe Triple', 4, '1 giường đôi và 2 giường đơn', 5800000, '../img/allroom/family_room1.jpg', '45m', '12:12', '0', 'Trống'),
(105, 'Executive ', 'Executive Twin', 3, '2 giường đơn', 8600000, '../img/allroom/Junior_suite.jpg', '50m', '14:12', '0', 'Trống'),
(106, 'Executive ', 'Executive Double', 3, '1 giường đôi và 1 giường đơn', 9400000, '../img/allroom/Single_room.jpg', '50m', '14:10', '0', 'Trống'),
(201, 'Executive ', 'Executive Triple', 4, '1 giường đôi và 2 giường đơn', 10100000, '../img/allroom/Standard_room.jpg', '56m', '12:10', '0', 'Trống'),
(202, 'Executive ', 'Executive Connecting', 6, '2 giường đôi và 2 giường đơn', 18200000, '../img/allroom/Standard_room1.jpg', '64m', '14:12', '0', 'Trống'),
(203, 'Suite ', 'Suite Twin', 3, '2 giường đơn', 18900000, '../img/allroom/Superior_suite.jpg', '56m', '14:10', '0', 'Trống'),
(204, 'Suite ', 'Suite Double', 3, '1 giường đôi và 1 giường đơn', 20700000, '../img/roomstyle/double_room.jpg', '56m', '12:10', '0', 'Trống'),
(205, 'Suite ', 'Suite Triple', 4, '1 giường đôi và 2 giường đơn', 22200000, '../img/roomstyle/small_suite.jpg', '65m', '12:12', '0', 'Trống'),
(206, 'Suite ', 'Suite Connecting', 6, '2 giường đôi và 2 giường đơn', 39500000, '../img/roomstyle/junior_suite.jpg', '72m', '14:10', '0', 'Trống');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdatmon`
--
ALTER TABLE `chitietdatmon`
  ADD PRIMARY KEY (`MaDatMon`),
  ADD KEY `MaPMA` (`MaPMA`),
  ADD KEY `MaMonAn` (`MaMonAn`);

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
-- Chỉ mục cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`MaChucVu`);

--
-- Chỉ mục cho bảng `daubep`
--
ALTER TABLE `daubep`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MaChucVu` (`MaChucVu`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`MaDichVu`);

--
-- Chỉ mục cho bảng `doan`
--
ALTER TABLE `doan`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHoaDon`),
  ADD KEY `MaPDP` (`MaPDP`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `mathang`
--
ALTER TABLE `mathang`
  ADD PRIMARY KEY (`MaHang`),
  ADD KEY `mlk7` (`MaCongTy`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MaCongTy`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNhanVien`);

--
-- Chỉ mục cho bảng `nhaphang`
--
ALTER TABLE `nhaphang`
  ADD PRIMARY KEY (`MaNhapHang`),
  ADD KEY `mlk8` (`MaHang`),
  ADD KEY `mlk9` (`MaCongTy`);

--
-- Chỉ mục cho bảng `phieudatphong`
--
ALTER TABLE `phieudatphong`
  ADD PRIMARY KEY (`MaPDP`),
  ADD KEY `MaNhanVien` (`MaNhanVien`),
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
-- Chỉ mục cho bảng `phieumonan`
--
ALTER TABLE `phieumonan`
  ADD PRIMARY KEY (`MaPMA`),
  ADD KEY `mlk11` (`MaHoaDon`);

--
-- Chỉ mục cho bảng `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`MaPhong`);

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
  MODIFY `MaCTDP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `chitietdichvu`
--
ALTER TABLE `chitietdichvu`
  MODIFY `MaCTDV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `daubep`
--
ALTER TABLE `daubep`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `MaDichVu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `doan`
--
ALTER TABLE `doan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHoaDon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNhanVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `phieudatphong`
--
ALTER TABLE `phieudatphong`
  MODIFY `MaPDP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `phieudichvu`
--
ALTER TABLE `phieudichvu`
  MODIFY `MaPDV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdatmon`
--
ALTER TABLE `chitietdatmon`
  ADD CONSTRAINT `chitietdatmon_ibfk_1` FOREIGN KEY (`MaPMA`) REFERENCES `phieumonan` (`MaPMA`),
  ADD CONSTRAINT `chitietdatmon_ibfk_2` FOREIGN KEY (`MaPMA`) REFERENCES `phieumonan` (`MaPMA`),
  ADD CONSTRAINT `chitietdatmon_ibfk_3` FOREIGN KEY (`MaMonAn`) REFERENCES `doan` (`ID`);

--
-- Các ràng buộc cho bảng `chitietdatphong`
--
ALTER TABLE `chitietdatphong`
  ADD CONSTRAINT `chitietdatphong_ibfk_1` FOREIGN KEY (`MaPhong`) REFERENCES `phong` (`MaPhong`),
  ADD CONSTRAINT `mkl3` FOREIGN KEY (`MaPDP`) REFERENCES `phieudatphong` (`MaPDP`),
  ADD CONSTRAINT `mkl4` FOREIGN KEY (`MaPhong`) REFERENCES `phong` (`MaPhong`);

--
-- Các ràng buộc cho bảng `chitietdichvu`
--
ALTER TABLE `chitietdichvu`
  ADD CONSTRAINT `chitietdichvu_ibfk_1` FOREIGN KEY (`MaPDV`) REFERENCES `phieudichvu` (`MaPDV`);

--
-- Các ràng buộc cho bảng `daubep`
--
ALTER TABLE `daubep`
  ADD CONSTRAINT `daubep_ibfk_1` FOREIGN KEY (`MaChucVu`) REFERENCES `chucvu` (`MaChucVu`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaPDP`) REFERENCES `phieudatphong` (`MaPDP`),
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`MaPDP`) REFERENCES `phieudatphong` (`MaPDP`);

--
-- Các ràng buộc cho bảng `mathang`
--
ALTER TABLE `mathang`
  ADD CONSTRAINT `mlk7` FOREIGN KEY (`MaCongTy`) REFERENCES `nhacungcap` (`MaCongTy`);

--
-- Các ràng buộc cho bảng `nhaphang`
--
ALTER TABLE `nhaphang`
  ADD CONSTRAINT `mlk8` FOREIGN KEY (`MaHang`) REFERENCES `mathang` (`MaHang`),
  ADD CONSTRAINT `mlk9` FOREIGN KEY (`MaCongTy`) REFERENCES `nhacungcap` (`MaCongTy`);

--
-- Các ràng buộc cho bảng `phieudatphong`
--
ALTER TABLE `phieudatphong`
  ADD CONSTRAINT `phieudatphong_ibfk_1` FOREIGN KEY (`MaNhanVien`) REFERENCES `nhanvien` (`MaNhanVien`),
  ADD CONSTRAINT `phieudatphong_ibfk_2` FOREIGN KEY (`MaNhanVien`) REFERENCES `nhanvien` (`MaNhanVien`),
  ADD CONSTRAINT `phieudatphong_ibfk_3` FOREIGN KEY (`MaKhachHang`) REFERENCES `khachhang` (`ID`);

--
-- Các ràng buộc cho bảng `phieudichvu`
--
ALTER TABLE `phieudichvu`
  ADD CONSTRAINT `phieudichvu_ibfk_1` FOREIGN KEY (`MaPDP`) REFERENCES `phieudatphong` (`MaPDP`);

--
-- Các ràng buộc cho bảng `phieumonan`
--
ALTER TABLE `phieumonan`
  ADD CONSTRAINT `mlk11` FOREIGN KEY (`MaHoaDon`) REFERENCES `hoadon` (`MaHoaDon`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;