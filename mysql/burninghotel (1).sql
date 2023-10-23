-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 23, 2023 lúc 04:49 PM
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
-- Cấu trúc bảng cho bảng `daubep`
--

CREATE TABLE `daubep` (
  `ID` int(11) NOT NULL,
  `HoTen` varchar(255) NOT NULL,
  `GioiTinh` varchar(10) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `ChucVu` varchar(255) DEFAULT NULL,
  `SoNamKinhNghiem` int(11) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `SoDienThoai` varchar(15) DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `MoTa` text DEFAULT NULL,
  `HinhAnh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `daubep`
--

INSERT INTO `daubep` (`ID`, `HoTen`, `GioiTinh`, `NgaySinh`, `ChucVu`, `SoNamKinhNghiem`, `Email`, `SoDienThoai`, `DiaChi`, `MoTa`, `HinhAnh`) VALUES
(1, 'Trương Bá Cát Trường', 'Nam', '1985-01-15', 'Bếp trưởng', 15, 'truong@example.com', '0987654321', 'Đường Phủ Lý, Hà Nội', 'Phó Bếp của chúng tôi không chỉ là người hỗ trợ Bếp Trưởng mà còn là linh hồn của bếp nhà hàng. Với 10 năm kinh nghiệm chế biến đa dạng các món ăn, Phó Bếp chịu trách nhiệm đảm bảo rằng mỗi món ăn đều được chuẩn bị một cách hoàn hảo. Sự tỉ mỉ, sự chú ý đến chi tiết và khả năng làm việc nhóm xuất sắc là những đặc điểm xuất sắc của họ.', '../img/restaurant/chef1.jpg'),
(2, 'Nguyễn Thị Xón', 'Nữ', '1990-06-25', 'Phó bếp', 10, 'xon@example.com', '0123456789', '456 Đường XYZ, Hà Nội', 'Phó Bếp của chúng tôi không chỉ là người hỗ trợ Bếp Trưởng mà còn là linh hồn của bếp nhà hàng. Với 10 năm kinh nghiệm chế biến đa dạng các món ăn, Phó Bếp chịu trách nhiệm đảm bảo rằng mỗi món ăn đều được chuẩn bị một cách hoàn hảo. Sự tỉ mỉ, sự chú ý đến chi tiết và khả năng làm việc nhóm xuất sắc là những đặc điểm xuất sắc của họ.', '../img/restaurant/chef2.jpg'),
(3, 'Cấn Minh Quang', 'Nam', '1987-03-10', 'Phó bếp', 12, 'quang@example.com', '0369852147', '789 Đường DEF, Hà Nội', 'Phó Bếp của chúng tôi không chỉ là người hỗ trợ Bếp Trưởng mà còn là linh hồn của bếp nhà hàng. Với 10 năm kinh nghiệm chế biến đa dạng các món ăn, Phó Bếp chịu trách nhiệm đảm bảo rằng mỗi món ăn đều được chuẩn bị một cách hoàn hảo. Sự tỉ mỉ, sự chú ý đến chi tiết và khả năng làm việc nhóm xuất sắc là những đặc điểm xuất sắc của họ.', '../img/restaurant/chef3.jpg'),
(4, 'Nguyễn Khánh', 'Nam', '1975-08-02', 'Phó bếp', 25, 'khanh@example.com', '0912345678', '987 Đường UVW, Hà Nội', 'Phó Bếp của chúng tôi không chỉ là người hỗ trợ Bếp Trưởng mà còn là linh hồn của bếp nhà hàng. Với 10 năm kinh nghiệm chế biến đa dạng các món ăn, Phó Bếp chịu trách nhiệm đảm bảo rằng mỗi món ăn đều được chuẩn bị một cách hoàn hảo. Sự tỉ mỉ, sự chú ý đến chi tiết và khả năng làm việc nhóm xuất sắc là những đặc điểm xuất sắc của họ.', '../img/restaurant/chef4.jpg'),
(5, 'Trịnh Tiến Lên', 'Nam', '1993-12-20', 'Đầu bếp', 8, 'len@example.com', '0563214789', '753 Đường JKL, Hà Nội', 'Với 8 năm kinh nghiệm, Đầu Bếp của chúng tôi không chỉ là người nấu ăn giỏi mà còn là người thầy hướng dẫn tài năng. Sự chắc chắn và khéo léo trong việc chế biến các nguyên liệu tươi ngon thành những bữa ăn tinh tế là niềm tự hào của họ. Độ sáng tạo không giới hạn và kỹ năng thượng thừa của Đầu Bếp đều làm cho mỗi bữa ăn trở thành một trải nghiệm ẩm thực đáng nhớ.', '../img/restaurant/chef5.jpg'),
(6, 'Gia Bảo', 'Nam', '1980-04-05', 'Đầu bếp', 18, 'bao@example.com', '0709876543', '345 Đường MNO, Hà Nội', 'Với 18 năm kinh nghiệm, Đầu Bếp của chúng tôi không chỉ là người nấu ăn giỏi mà còn là người thầy hướng dẫn tài năng. Sự chắc chắn và khéo léo trong việc chế biến các nguyên liệu tươi ngon thành những bữa ăn tinh tế là niềm tự hào của họ. Độ sáng tạo không giới hạn và kỹ năng thượng thừa của Đầu Bếp đều làm cho mỗi bữa ăn trở thành một trải nghiệm ẩm thực đáng nhớ.', '../img/restaurant/chef6.jpg'),
(7, 'Trương Vân', 'Nữ', '1988-09-14', 'Đầu bếp', 14, 'van@example.com', '0563217890', '542 Đường PQR, Hà Nội', 'Với 14 năm kinh nghiệm, Đầu Bếp của chúng tôi không chỉ là người nấu ăn giỏi mà còn là người thầy hướng dẫn tài năng. Sự chắc chắn và khéo léo trong việc chế biến các nguyên liệu tươi ngon thành những bữa ăn tinh tế là niềm tự hào của họ. Độ sáng tạo không giới hạn và kỹ năng thượng thừa của Đầu Bếp đều làm cho mỗi bữa ăn trở thành một trải nghiệm ẩm thực đáng nhớ.', '../img/restaurant/chef1.jpg'),
(8, 'Nguyễn Tuấn', 'Nam', '1982-06-07', 'Đầu bếp', 20, 'tuan@example.com', '0918563201', '153 Đường STU, Hà Nội', 'Với 20 năm kinh nghiệm, Đầu Bếp của chúng tôi không chỉ là người nấu ăn giỏi mà còn là người thầy hướng dẫn tài năng. Sự chắc chắn và khéo léo trong việc chế biến các nguyên liệu tươi ngon thành những bữa ăn tinh tế là niềm tự hào của họ. Độ sáng tạo không giới hạn và kỹ năng thượng thừa của Đầu Bếp đều làm cho mỗi bữa ăn trở thành một trải nghiệm ẩm thực đáng nhớ.', '../img/restaurant/chef1.jpg'),
(9, 'Cao Trinh', 'Nữ', '1995-03-30', 'Đầu bếp', 6, 'trinh@example.com', '0123456789', '456 Đường VWX, Hà Nội', 'Với 6 năm kinh nghiệm, Đầu Bếp của chúng tôi không chỉ là người nấu ăn giỏi mà còn là người thầy hướng dẫn tài năng. Sự chắc chắn và khéo léo trong việc chế biến các nguyên liệu tươi ngon thành những bữa ăn tinh tế là niềm tự hào của họ. Độ sáng tạo không giới hạn và kỹ năng thượng thừa của Đầu Bếp đều làm cho mỗi bữa ăn trở thành một trải nghiệm ẩm thực đáng nhớ.', '../img/restaurant/chef1.jpg'),
(10, 'Phan Quốc', 'Nam', '1986-11-12', 'Đầu bếp', 13, 'quoc@example.com', '0987654321', '123 Đường YZA, Hà Nội', 'Với 13 năm kinh nghiệm, Đầu Bếp của chúng tôi không chỉ là người nấu ăn giỏi mà còn là người thầy hướng dẫn tài năng. Sự chắc chắn và khéo léo trong việc chế biến các nguyên liệu tươi ngon thành những bữa ăn tinh tế là niềm tự hào của họ. Độ sáng tạo không giới hạn và kỹ năng thượng thừa của Đầu Bếp đều làm cho mỗi bữa ăn trở thành một trải nghiệm ẩm thực đáng nhớ.', '../img/restaurant/chef1.jpg');

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
-- Cấu trúc bảng cho bảng `doan`
--

CREATE TABLE `doan` (
  `ID` int(11) NOT NULL,
  `TenMon` varchar(255) NOT NULL,
  `PhanLoai` enum('Món chính','Món khai vị','Món tráng miệng','Đồ ăn nhanh','Nước uống') NOT NULL,
  `Thoigiannau` int(11) NOT NULL,
  `dokho` enum('Dễ','Bình thường','Tương đối khó','Khó') NOT NULL,
  `thanhphan` text NOT NULL,
  `hamluongcalo` float DEFAULT NULL,
  `thanhtien` varchar(255) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `soluongdaban` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `doan`
--

INSERT INTO `doan` (`ID`, `TenMon`, `PhanLoai`, `Thoigiannau`, `dokho`, `thanhphan`, `hamluongcalo`, `thanhtien`, `mota`, `soluongdaban`) VALUES
(1, 'Gà nướng Kon Tum', 'Món chính', 35, 'Dễ', 'Gà, xả, muối tôm, tỏi băm, mật ong, dầu ăn', 450, '250000', 'Thịt được tẩm ướp gia vị từ một số loài rễ, lá, mật ong và cây rừng Kon Tum nên gà nướng mang hương vị đặc biệt. Khi thưởng thức nên chấm thêm muối tiêu hoặc muối hột lớn với ớt cay cay hay lá bét (một loại lá rừng).', 0),
(2, 'Bún riêu cua', 'Món chính', 30, 'Bình thường', 'Riêu cua, bún, hành, mắm tôm', 350, '22000', 'Bún riêu cua là món ngon đặc biệt với hương vị độc đáo từ riêu cua và bún mềm, thấm vị.', 0),
(3, 'Mì Quảng', 'Món chính', 25, 'Tương đối khó', 'Mì, gia vị, hành, thịt', 200, '30000', 'Mì Quảng là một món ăn truyền thống của Quảng Nam, có hương vị đậm đà và phong cách riêng.', 0),
(4, 'Lẩu cá hồi', 'Món chính', 40, 'Khó', 'Cá hồi, rau sống, nước lẩu', 360, '400000', 'Lẩu cá hồi với cá hồi tươi ngon và nước lẩu thơm ngon, hoàn hảo cho những ngày se lạnh.', 0),
(5, 'Bánh mì thịt', 'Món chính', 20, 'Bình thường', 'Bánh mì, thịt gà, rau sống', 310, '25000', 'Bánh mì thịt với thịt gà tươi ngon và bánh mì giòn tan, thích hợp cho bữa sáng hoặc bữa trưa.', 0),
(6, 'Cơm rang dương châu', 'Món chính', 25, 'Tương đối khó', 'Cơm, hành, dương châu, gia vị', 520, '35000', 'Cơm rang dương châu với cơm nướng và hương vị độc đáo từ dương châu.', 0),
(7, 'Bún bò Huế', 'Món chính', 35, 'Bình thường', 'Bún, bò, gia vị, hành, rau sống', 420, '28000', 'Bún bò Huế với hương vị đặc trưng của miền Trung Việt Nam, thích hợp cho người thích mì vị cay.', 0),
(8, 'Phở gà', 'Món chính', 30, 'Dễ', 'Phở, gà, gia vị', 380, '30000', 'Phở gà với mì và thịt gà thơm ngon, thích hợp cho bữa sáng hoặc bữa trưa.', 0),
(9, 'Bánh xèo', 'Món chính', 20, 'Dễ', 'Bánh xèo, gia vị', 380, '20000', 'Bánh xèo với bánh mỳ giòn tan và nhiều loại gia vị tươi ngon.', 0),
(10, 'Bánh tráng cuốn', 'Món chính', 25, 'Bình thường', 'Bánh tráng, thịt nướng, rau sống', 350, '22000', 'Bánh tráng cuốn với bánh tráng mỏng và thịt nướng tươi ngon.', 0),
(11, 'Gà nướng Kon Tum', 'Món chính', 35, 'Dễ', 'Gà, xả, muối tôm, tỏi băm, mật ong, dầu ăn', 450, '250000', 'Thịt được tẩm ướp gia vị từ một số loài rễ, lá, mật ong và cây rừng Kon Tum nên gà nướng mang hương vị đặc biệt. Khi thưởng thức nên chấm thêm muối tiêu hoặc muối hột lớn với ớt cay cay hay lá bét (một loại lá rừng).', 0),
(12, 'Bún riêu cua', 'Món chính', 30, 'Bình thường', 'Riêu cua, bún, hành, mắm tôm', 350, '22000', 'Bún riêu cua là món ngon đặc biệt với hương vị độc đáo từ riêu cua và bún mềm, thấm vị.', 0),
(13, 'Mì Quảng', 'Món chính', 25, 'Tương đối khó', 'Mì, gia vị, hành, thịt', 200, '30000', 'Mì Quảng là một món ăn truyền thống của Quảng Nam, có hương vị đậm đà và phong cách riêng.', 0),
(14, 'Lẩu cá hồi', 'Món chính', 40, 'Khó', 'Cá hồi, rau sống, nước lẩu', 360, '400000', 'Lẩu cá hồi với cá hồi tươi ngon và nước lẩu thơm ngon, hoàn hảo cho những ngày se lạnh.', 0),
(15, 'Bánh mì thịt', 'Món chính', 20, 'Bình thường', 'Bánh mì, thịt gà, rau sống', 310, '25000', 'Bánh mì thịt với thịt gà tươi ngon và bánh mì giòn tan, thích hợp cho bữa sáng hoặc bữa trưa.', 0),
(16, 'Cơm rang dương châu', 'Món chính', 25, 'Tương đối khó', 'Cơm, hành, dương châu, gia vị', 520, '35000', 'Cơm rang dương châu với cơm nướng và hương vị độc đáo từ dương châu.', 0),
(17, 'Bún bò Huế', 'Món chính', 35, 'Bình thường', 'Bún, bò, gia vị, hành, rau sống', 420, '28000', 'Bún bò Huế với hương vị đặc trưng của miền Trung Việt Nam, thích hợp cho người thích mì vị cay.', 0),
(18, 'Phở gà', 'Món chính', 30, 'Dễ', 'Phở, gà, gia vị', 380, '30000', 'Phở gà với mì và thịt gà thơm ngon, thích hợp cho bữa sáng hoặc bữa trưa.', 0),
(19, 'Bánh xèo', 'Món chính', 20, 'Dễ', 'Bánh xèo, gia vị', 380, '20000', 'Bánh xèo với bánh mỳ giòn tan và nhiều loại gia vị tươi ngon.', 0),
(20, 'Bánh tráng cuốn', 'Món chính', 25, 'Bình thường', 'Bánh tráng, thịt nướng, rau sống', 350, '22000', 'Bánh tráng cuốn với bánh tráng mỏng và thịt nướng tươi ngon.', 0),
(21, 'Bún chả', 'Món chính', 25, 'Bình thường', 'Bún, thịt nướng, gia vị', 380, '25000', 'Bún chả là món ăn truyền thống của Hà Nội với bún mềm, thịt nướng thơm ngon. Bún chả thường được ăn kèm với nhiều loại rau sống và nước mắm pha chua ngọt.', 0),
(22, 'Cơm gà', 'Món chính', 30, 'Dễ', 'Cơm, thịt gà, gia vị', 350, '20000', 'Cơm gà là món ngon và bổ dưỡng với thịt gà tươi ngon và cơm hấp. Món này thường được kèm theo nước lẩu hấp dẫn.', 0),
(23, 'Bánh mì kẹp thịt', 'Món chính', 20, 'Bình thường', 'Bánh mì, thịt, rau sống', 320, '18000', 'Bánh mì kẹp thịt với thịt và rau sống giòn tan là lựa chọn lý tưởng cho bữa ăn nhanh và ngon miệng.', 0),
(24, 'Hủ tiếu Nam Vang', 'Món chính', 30, 'Tương đối khó', 'Hủ tiếu, thịt, gia vị', 410, '28000', 'Hủ tiếu Nam Vang là món ăn phổ biến tại Sài Gòn với hủ tiếu và thịt tươi ngon. Món này thường được kèm theo nước dùng thơm ngon.', 0),
(25, 'Mì Ý hấp', 'Món chính', 35, 'Tương đối khó', 'Mì Ý, thịt, gia vị', 450, '32000', 'Mì Ý hấp với mì Ý mềm và thịt ngon là một món ăn sang trọng và ngon miệng.', 0),
(26, 'Cơm rang dưa lưới', 'Món chính', 25, 'Bình thường', 'Cơm, dưa lưới, gia vị', 320, '22000', 'Cơm rang dưa lưới là món ăn thơm ngon và dễ làm với cơm và dưa lưới giòn tan.', 0),
(27, 'Gỏi cuốn', 'Món chính', 20, 'Dễ', 'Bánh tráng, thịt nướng, rau sống', 280, '18000', 'Gỏi cuốn là món ăn dễ làm và ngon miệng với bánh tráng mỏng và thịt nướng tươi ngon.', 0),
(28, 'Gỏi cuốn', 'Món khai vị', 20, 'Dễ', 'Bánh tráng, thịt nướng, rau sống', 280, '18000', 'Gỏi cuốn là món ăn dễ làm và ngon miệng với bánh tráng mỏng và thịt nướng tươi ngon.', 0),
(29, 'Bánh mì pate', 'Món khai vị', 15, 'Dễ', 'Bánh mì, pate, gia vị', 250, '12000', 'Bánh mì pate với lớp pate thơm ngon và bánh mì giòn tan là lựa chọn tuyệt vời cho món khai vị.', 0),
(30, 'Canapé hải sản', 'Món khai vị', 25, 'Tương đối khó', 'Bánh mì, hải sản, gia vị', 320, '22000', 'Canapé hải sản với hải sản tươi ngon và bánh mì hấp dẫn là món khai vị hấp dẫn.', 0),
(31, 'Nem chua', 'Món khai vị', 20, 'Dễ', 'Thịt, gia vị', 240, '14000', 'Nem chua là món khai vị truyền thống với thịt và gia vị thơm ngon.', 0),
(32, 'Bánh mì ốp la', 'Món khai vị', 20, 'Dễ', 'Bánh mì, trứng, gia vị', 290, '16000', 'Bánh mì ốp la với trứng gà và gia vị hấp dẫn là món khai vị ngon miệng.', 0),
(33, 'Xúc xích chiên', 'Món khai vị', 25, 'Dễ', 'Xúc xích, gia vị', 310, '18000', 'Xúc xích chiên với xúc xích tươi ngon và gia vị là lựa chọn lý tưởng cho món khai vị.', 0),
(34, 'Súp lơ', 'Món khai vị', 30, 'Tương đối khó', 'Súp lơ, gia vị', 260, '14000', 'Súp lơ với súp lơ thơm ngon và gia vị là món khai vị hấp dẫn.', 0),
(35, 'Kem sữa chua', 'Món tráng miệng', 10, 'Dễ', 'Sữa chua, gia vị', 180, '15000', 'Kem sữa chua với lớp sữa chua mềm mịn và hương vị thơm ngon.', 0),
(36, 'Bánh flan', 'Món tráng miệng', 15, 'Dễ', 'Bánh flan, gia vị', 250, '18000', 'Bánh flan với lớp caramel và bánh flan mềm mịn là món tráng miệng ngon miệng.', 0),
(37, 'Kem chocolate', 'Món tráng miệng', 10, 'Dễ', 'Sô cô la, kem', 220, '16000', 'Kem chocolate với kem thơm và sô cô la là món tráng miệng ngon miệng.', 0),
(38, 'Cheesecake dâu', 'Món tráng miệng', 20, 'Tương đối khó', 'Dâu, bánh cheesecake, gia vị', 290, '22000', 'Cheesecake dâu với lớp cheesecake mềm và hương vị dâu là món tráng miệng hấp dẫn.', 0),
(39, 'Bánh ngọt phô mai', 'Món tráng miệng', 15, 'Dễ', 'Bánh ngọt, phô mai, gia vị', 260, '19000', 'Bánh ngọt phô mai với lớp phô mai béo và bánh ngọt giòn là món tráng miệng ngon miệng.', 0),
(40, 'Panna cotta', 'Món tráng miệng', 25, 'Tương đối khó', 'Kem, hạt dẻ', 320, '25000', 'Panna cotta với lớp kem mềm và hương vị hạt dẻ là món tráng miệng hấp dẫn.', 0),
(41, 'Bánh tiramisu', 'Món tráng miệng', 20, 'Tương đối khó', 'Bánh tiramisu, cà phê', 310, '22000', 'Bánh tiramisu với bánh tiramisu thơm ngon và lớp cà phê là món tráng miệng hấp dẫn.', 0),
(42, 'Bánh mì hamburger', 'Đồ ăn nhanh', 15, 'Dễ', 'Bánh mì, thịt bò, rau sống', 450, '35000', 'Bánh mì hamburger với thịt bò, rau sống và gia vị hấp dẫn là món đồ ăn nhanh phổ biến.', 0),
(43, 'Pizza hawaiian', 'Đồ ăn nhanh', 20, 'Tương đối khó', 'Bánh pizza, thịt dăm, dứa, phô mai', 500, '42000', 'Pizza hawaiian với lớp bánh pizza mỏng, thịt dăm, dứa và phô mai là món đồ ăn nhanh thơm ngon.', 0),
(44, 'Bánh mỳ sandwich', 'Đồ ăn nhanh', 15, 'Dễ', 'Bánh mỳ, thịt gà, rau sống', 380, '30000', 'Bánh mỳ sandwich với thịt gà, rau sống và gia vị hấp dẫn là món đồ ăn nhanh ngon miệng.', 0),
(45, 'Bánh bao', 'Đồ ăn nhanh', 10, 'Dễ', 'Bánh bao, nhân thịt', 280, '18000', 'Bánh bao với lớp bánh mềm và nhân thịt là món đồ ăn nhanh truyền thống.', 0),
(46, 'Cơm cuộn', 'Đồ ăn nhanh', 25, 'Dễ', 'Cơm, thịt nướng, rau sống', 320, '25000', 'Cơm cuộn với lớp cơm, thịt nướng và rau sống là món đồ ăn nhanh ngon miệng.', 0),
(47, 'Mì xào hải sản', 'Đồ ăn nhanh', 20, 'Tương đối khó', 'Mì, hải sản, gia vị', 420, '35000', 'Mì xào hải sản với lớp mì và hải sản tươi ngon là món đồ ăn nhanh hấp dẫn.', 0),
(48, 'Hotdog', 'Đồ ăn nhanh', 15, 'Dễ', 'Xúc xích, bánh mì', 350, '28000', 'Hotdog với xúc xích và bánh mì giòn là món đồ ăn nhanh phổ biến.', 0),
(49, 'Bánh trứng', 'Đồ ăn nhanh', 12, 'Dễ', 'Trứng gà, gia vị', 280, '20000', 'Bánh trứng với lớp bánh mềm và trứng gà là món đồ ăn nhanh ngon miệng.', 0),
(50, 'Bánh mì bơ tỏi', 'Đồ ăn nhanh', 15, 'Dễ', 'Bánh mì, bơ tỏi, gia vị', 320, '22000', 'Bánh mì bơ tỏi với bơ tỏi thơm và bánh mì giòn là món đồ ăn nhanh hấp dẫn.', 0),
(51, 'Bánh su kem', 'Đồ ăn nhanh', 18, 'Dễ', 'Bánh su kem, kem, gia vị', 280, '19000', 'Bánh su kem với lớp bánh su kem mềm và kem thơm là món đồ ăn nhanh ngon miệng.', 0),
(52, 'Cà phê đen', 'Nước uống', 5, 'Dễ', 'Cà phê, nước', 30, '22000', 'Cà phê đen với hương vị đắng và thơm là món nước uống phổ biến.', 0),
(53, 'Nước chanh', 'Nước uống', 5, 'Dễ', 'Nước chanh, đường', 40, '15000', 'Nước chanh với hương vị chua ngọt là món nước uống giải khát.', 0),
(54, 'Soda chanh', 'Nước uống', 8, 'Dễ', 'Soda, nước chanh', 60, '25000', 'Soda chanh với hương vị soda và chanh là món nước uống giải khát phổ biến.', 0),
(55, 'Nước dừa', 'Nước uống', 10, 'Dễ', 'Nước dừa', 50, '28000', 'Nước dừa tươi ngon và bổ dưỡng.', 0),
(56, 'Sinh tố bơ', 'Nước uống', 10, 'Dễ', 'Bơ, sữa, đường', 90, '35000', 'Sinh tố bơ với hương vị bơ ngon và thơm.', 0),
(57, 'Cà phê sữa', 'Nước uống', 5, 'Dễ', 'Cà phê, sữa, đường', 70, '26000', 'Cà phê sữa với hương vị cà phê và sữa ngon miệng.', 0),
(58, 'Trà đào', 'Nước uống', 8, 'Dễ', 'Trà, đào, đường', 80, '30000', 'Trà đào với hương vị trà thơm và đào ngon miệng.', 0);

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
-- Chỉ mục cho bảng `daubep`
--
ALTER TABLE `daubep`
  ADD PRIMARY KEY (`ID`);

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
-- AUTO_INCREMENT cho bảng `daubep`
--
ALTER TABLE `daubep`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `MaDichVu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `doan`
--
ALTER TABLE `doan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
