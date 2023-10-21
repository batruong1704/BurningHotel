
use burninghotel

CREATE TABLE chitietdatmon (
  MaDatMon int NOT NULL,
  MaHoaDon int NOT NULL,
  MaMonAn int NOT NULL,
  SoLuong int NOT NULL,
  ThanhTien int NOT NULL
)

CREATE TABLE chitietdatphong (
  MaCTDP int NOT NULL,
  MaPDP int NOT NULL,
  MaPhong int NOT NULL,
  NgayDen date NOT NULL,
  NgayDi date NOT NULL
)


INSERT INTO chitietdatphong (MaCTDP, MaPDP, MaPhong, NgayDen, NgayDi) VALUES
(1, 1, 1, '2023-10-18', '2023-10-19');


CREATE TABLE chitietdichvu (
  MaCTDV int NOT NULL,
  MaPDV int NOT NULL,
  MaDichVu int NOT NULL
)


INSERT INTO chitietdichvu (MaCTDV, MaPDV, MaDichVu) VALUES
(1, 1, 1),
(2, 1, 2);


CREATE TABLE dichvu (
  MaDichVu int NOT NULL,
  TenDichVu varchar(50) NOT NULL,
  DonGia int NOT NULL
)

INSERT INTO dichvu (MaDichVu, TenDichVu, DonGia) VALUES
(1, 'Extrabed', 300000),
(2, 'Xe đưa đón sân bay', 250000);


CREATE TABLE hoadon (
  MaHoaDon int NOT NULL,
  MaPDP int NOT NULL,
  TongTien varchar(50) NOT NULL,
  TrangThai varchar(50) NOT NULL
)


INSERT INTO hoadon (MaHoaDon, MaPDP, TongTien, TrangThai) VALUES
(1, 1, '3050000', 'Chờ thanh toán');


CREATE TABLE monan (
  MaMonAn int NOT NULL,
  TenMon varchar(20) NOT NULL,
  GiaMon int NOT NULL,
  IMG varchar(200) NOT NULL,
  PhanLoai varchar(20) NOT NULL
)


CREATE TABLE phieudatphong (
  MaPDP int NOT NULL,
  MaKhachHang int NOT NULL,
  TongTien varchar(50) NOT NULL,
  ThanhToanTruoc varchar(50) NOT NULL,
  PhuongThucThanhToan varchar(50) NOT NULL,
  NgayTT date NOT NULL
)


INSERT INTO phieudatphong (MaPDP, MaKhachHang, TongTien, ThanhToanTruoc, PhuongThucThanhToan, NgayTT) VALUES
(1, 1, '3050000', '305000', 'Thẻ Visa, Master Card', '2023-10-17');

CREATE TABLE phieudichvu (
  MaPDV int NOT NULL,
  MaPDP int NOT NULL,
  TongTien varchar(50) NOT NULL
)

INSERT INTO phieudichvu (MaPDV, MaPDP, TongTien) VALUES
(1, 1, '550000');

CREATE TABLE phieugiamgia (
  MaGiamGia int NOT NULL,
  TenMaGiamGia int NOT NULL,
  ChietKhau int NOT NULL
)

CREATE TABLE phong (
  MaPhong int NOT NULL,
  LoaiPhong varchar(20) NOT NULL,
  KieuPhong varchar(50) NOT NULL,
  SLMax int NOT NULL,
  LoaiGiuong varchar(50) NOT NULL,
  GiaPhong varchar(10) NOT NULL,
  IMG varchar(50) NOT NULL,
  DienTich varchar(50) NOT NULL,
  TamNhin varchar(50) NOT NULL,
  MoTa varchar(500) NOT NULL,
  TrangThai varchar(20) NOT NULL
)


INSERT INTO phong (MaPhong, LoaiPhong, KieuPhong, SLMax, LoaiGiuong, GiaPhong, IMG, DienTich, TamNhin, MoTa, TrangThai) VALUES
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


CREATE TABLE quanlytaikhoan (
  ID int NOT NULL,
  HoTen varchar(100) NOT NULL,
  SDT varchar(12) NOT NULL,
  Email varchar(50) NOT NULL,
  CMND int NOT NULL,
  PassWord varchar(20) NOT NULL,
  AccessToken varchar(50) DEFAULT NULL
)


INSERT INTO quanlytaikhoan (ID, HoTen, SDT, Email, CMND, PassWord, AccessToken) VALUES
(1, 'Admin', '0123456789', 'admin@gmail.com', 343025555, 'admin', NULL),
(50, 'Cát Trường Trương Bá', '0336004076', 'batruong1704@gmail.com', 123456789, '0123456789', '108617347685033795623'),
(72, 'Cát Trường Trương Bá', '0336004076', 'truongtg2k@gmail.com', 123456789, 'admin123', '109408661915133195138'),
(73, 'Trường Bá', '', '7steam.work@gmail.com', 0, '', '105238185890006122819');


CREATE TABLE taikhoanadmin (
  ID int NOT NULL,
  HoTen varchar(50) NOT NULL,
  SDT varchar(50) NOT NULL,
  Email varchar(50) NOT NULL,
  PassWord varchar(50) NOT NULL
)

INSERT INTO taikhoanadmin (ID, HoTen, SDT, Email, PassWord) VALUES
(1, 'Bá Trường', '012345678', 'buck0503@gmail.com', '123'),
(2, 'thuydung', '0394407543', 'dung@gmail.com', '1');

-- Tạo các primary key
ALTER TABLE chitietdatmon
  ADD CONSTRAINT PK_chitietdatmon PRIMARY KEY (MaDatMon);

ALTER TABLE chitietdatphong
  ADD CONSTRAINT PK_chitietdatphong PRIMARY KEY (MaCTDP);

ALTER TABLE chitietdichvu
  ADD CONSTRAINT PK_chitietdichvu PRIMARY KEY (MaCTDV);

ALTER TABLE dichvu
  ADD CONSTRAINT PK_dichvu PRIMARY KEY (MaDichVu);

ALTER TABLE hoadon
  ADD CONSTRAINT PK_hoadon PRIMARY KEY (MaHoaDon);

ALTER TABLE monan
  ADD CONSTRAINT PK_monan PRIMARY KEY (MaMonAn);

ALTER TABLE phieudatphong
  ADD CONSTRAINT PK_phieudatphong PRIMARY KEY (MaPDP);

ALTER TABLE phieudichvu
  ADD CONSTRAINT PK_phieudichvu PRIMARY KEY (MaPDV);

ALTER TABLE phieugiamgia
  ADD CONSTRAINT PK_phieugiamgia PRIMARY KEY (MaGiamGia);

ALTER TABLE phong
  ADD CONSTRAINT PK_phong PRIMARY KEY (MaPhong);

ALTER TABLE quanlytaikhoan
  ADD CONSTRAINT PK_quanlytaikhoan PRIMARY KEY (ID);

ALTER TABLE taikhoanadmin
  ADD CONSTRAINT PK_taikhoanadmin PRIMARY KEY (ID);

-- Tạo các foreign keys
ALTER TABLE chitietdatphong
  ADD CONSTRAINT FK_chitietdatphong_phieudatphong FOREIGN KEY (MaPDP) REFERENCES phieudatphong (MaPDP)

ALTER TABLE chitietdatphong
  ADD CONSTRAINT FK_chitietdatphong_phong FOREIGN KEY (MaPhong) REFERENCES phong (MaPhong);

ALTER TABLE chitietdichvu
  ADD CONSTRAINT FK_chitietdichvu_phieudichvu FOREIGN KEY (MaPDV) REFERENCES phieudichvu (MaPDV)

ALTER TABLE chitietdichvu
  ADD CONSTRAINT FK_chitietdichvu_dichvu FOREIGN KEY (MaDichVu) REFERENCES dichvu (MaDichVu);

ALTER TABLE hoadon
  ADD CONSTRAINT FK_hoadon_phieudatphong FOREIGN KEY (MaPDP) REFERENCES phieudatphong (MaPDP);

ALTER TABLE phieudatphong
  ADD CONSTRAINT FK_phieudatphong_quanlytaikhoan FOREIGN KEY (MaKhachHang) REFERENCES quanlytaikhoan (ID);

ALTER TABLE phieudichvu
  ADD CONSTRAINT FK_phieudichvu_phieudatphong FOREIGN KEY (MaPDP) REFERENCES phieudatphong (MaPDP);
