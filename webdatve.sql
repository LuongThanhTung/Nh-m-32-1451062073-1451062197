-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 14, 2017 lúc 12:54 CH
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webdatve`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(10) NOT NULL,
  `HoTen` varchar(200) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id_admin`, `HoTen`, `username`, `password`) VALUES
(1, 'luongthanhtung', 'admin', 'admin'),
(2, 'trinhviethung', 'admin1', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `datve`
--

CREATE TABLE `datve` (
  `id_vedat` int(10) NOT NULL,
  `id_phim` int(10) DEFAULT NULL,
  `CMND` varchar(15) NOT NULL,
  `SoLuong` int(10) DEFAULT NULL,
  `NgayDat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `datve`
--

INSERT INTO `datve` (`id_vedat`, `id_phim`, `CMND`, `SoLuong`, `NgayDat`) VALUES
(1, 1, '123546789', 3, '2017-05-14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phim`
--

CREATE TABLE `phim` (
  `id_phim` int(10) NOT NULL,
  `TenPhim` varchar(200) DEFAULT NULL,
  `LichChieu` varchar(200) DEFAULT NULL,
  `KhoiChieu` varchar(200) DEFAULT NULL,
  `LoaiPhim` varchar(200) DEFAULT NULL,
  `DienVien` varchar(200) DEFAULT NULL,
  `DaoDien` varchar(200) DEFAULT NULL,
  `ThoiLuong` varchar(200) DEFAULT NULL,
  `PhienBan` varchar(200) DEFAULT NULL,
  `TrangThai` varchar(200) DEFAULT NULL,
  `NoiDung` text,
  `HinhAnh` text,
  `GiaVe` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phim`
--

INSERT INTO `phim` (`id_phim`, `TenPhim`, `LichChieu`, `KhoiChieu`, `LoaiPhim`, `DienVien`, `DaoDien`, `ThoiLuong`, `PhienBan`, `TrangThai`, `NoiDung`, `HinhAnh`, `GiaVe`) VALUES
(1, 'Lời Nguyền Của Rồng Chúa', '2017-05-14\r\n17:45\r\n2017-05-15\r\n11:05 17:45\r\n2017-05-16\r\n11:05\r\n2017-05-17\r\n11:05\r\n', 'Từ 12/05/2017 đến 18/05/2017', 'Hoạt Hình, Gia Đình', 'Viktor Andrienko, Kate Bristol, Allen Enlow\r\n', 'Depoyan Manuk', '85 phút', '2D Digital với lồng tiếng Việt', 'Phim Đang Chiếu', 'Nicky bé nhỏ nhưng với một ước mơ và quyết tâm to lớn là chinh phục được những con rồng như cha mình đã từng làm. Nicky đã vô tình lạc vào thế giới kỳ ảo và tại đây cậu bé phải đối mặt với Rồng chúa đang hồi sinh. Làm cách nào Nicky đánh bại được rồng để trở về nhà?\r\n\r\nLời Nguyền Của Rồng Chúa khởi chiếu 12/05/2017 tại Lotte Cinema ', 'https://lottecinemavn.com/getattachment/Phim/LOI-NGUYEN-CUA-RONG-CHUA/May-12-Rong-Chua-(3).jpg.aspx', 100000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phongchieu`
--

CREATE TABLE `phongchieu` (
  `DiaChi` varchar(200) NOT NULL,
  `SDT` varchar(20) NOT NULL,
  `SoLuongGhe` int(10) NOT NULL,
  `HinhAnh` text NOT NULL,
  `id_phong` int(10) NOT NULL,
  `BangGiaVe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phongchieu`
--

INSERT INTO `phongchieu` (`DiaChi`, `SDT`, `SoLuongGhe`, `HinhAnh`, `id_phong`, `BangGiaVe`) VALUES
('Địa chỉ: Tầng 3 Lotte Mart NSG, 469 Nguyễn Hữu Thọ, q7, TPHCM', '(083) 775 2527', 1472, '', 1, 'https://lottecinemavn.com/getattachment/Rap-phim/Ho-Chi-Minh/Nam-Sai-Gon/Tin-tuc-rap/KINH-3D-CHO-TRE-EM-DUY-NHAT-TAI-LOTTE-CINEMA/Price-List-2015-(NSG)-From-1-May-(1).jpg.aspx');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvien`
--

CREATE TABLE `thanhvien` (
  `CMND` varchar(15) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `HoTen` varchar(200) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `SDT` varchar(20) DEFAULT NULL,
  `DiaChi` varchar(200) DEFAULT NULL,
  `GioiTinh` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thanhvien`
--

INSERT INTO `thanhvien` (`CMND`, `username`, `password`, `HoTen`, `NgaySinh`, `email`, `SDT`, `DiaChi`, `GioiTinh`) VALUES
('123546789', 'vip1', '123456', 'Ngô Duy Anh', '1994-05-01', 'duyngu@gmail.com', '01664855225', 'Gầm Cầu', 'Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `id_tintuc` int(11) NOT NULL,
  `LoaiTinTuc` varchar(200) NOT NULL,
  `NoiDung` text NOT NULL,
  `HinhAnh` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`id_tintuc`, `LoaiTinTuc`, `NoiDung`, `HinhAnh`) VALUES
(1, 'Hot Event', 'GÓI XEM PHIM ƯU ĐÃI - MỪNG 50 NĂM THÀNH LẬP LOTTE GROUP\r\nĐăng ngày : 12.05.2017 - 11:01     	Bởi : admin     	Lượt xem : 3.831\r\n\r\nĐịa điêm: Lotte Cinema trên toàn quốc\r\n\r\nThời gian: Từ 15.05 - 15.06.2017 hoặc khi hết số lượng ưu đãi \r\n\r\nNội dung: Kỷ niệm thành lập Lotte Group tại Hàn Quốc tròn 50 năm: 15.06.1967 - 15.06.2017 \r\n+ Mua gói xem phim ưu đãi gồm: 02 vé 2D movie gift, 01 twin combo cho 02 người gồm 02 nước lớn, 01 bắp lớn trị giá 80,000 đồng\r\n+ Cùng phiếu ưu đãi: miễn phí smile combo gồm 01 bắp smile, 01 nước vừa trị giá 40,000 đồng, giảm giá 50% Lotte combo 01 bắp lớn, 01 nước lớn 60,000 đồng, chỉ còn 30,000 đồng/combo\r\n\r\nGiảm giá ngay khi mua gói xem phim ưu đãi trên:\r\n+ TPHCM: 350,000 đồng giảm chỉ còn 200,000 đồng\r\n+ Hà Nội: 330,000 đồng giảm chỉ còn 180,000 đồng\r\n+ Các tỉnh khác: 310,000 đồng giảm chỉ còn 160,000 đồng\r\n\r\nSố lượng gói xem phim ưu đãi bán ra có giới hạn, ưu tiên khách hàng tới trước được mua trước', 'https://lottecinemavn.com/getattachment/d5a9026d-ee5b-4cf6-b31b-dbed219e8c3f/50TH_ANNIVERSARY_PACK_1000x1800-01-S.jpg.aspx'),
(2, 'Giải Đáp', 'Vé mời Movie Gift là gì?\r\nĐăng ngày : 30.05.2014 - 04:25       Bởi : admin       Lượt xem : 10.912\r\n\r\nMovie Gift là loại vé khách hàng có thể sử dụng để xem bất kỳ phim nào vào bất kỳ suất chiếu nào trong thời hạn của Movie Gift. Movie Gift không áp dụng cho các sản phẩm tại quầy bắp nước.\r\n\r\nMovie Gift thích hợp làm quà tặng người thân, bạn bè, đối tác,...\r\n\r\nGiá vé: 100.000VND/vé Movie Gift 2D, 150.000VND/vé Movie Gift 3D.\r\n\r\nĐối với khách hàng mua với số lượng lớn, quý khách vui lòng liên hệ cụm rạp Lotte Cinema gần nhất để có thêm thông tin chi tiết hoặc liên hệ Ms Quỳnh - ĐT: 08 3775 2521 ext 123\r\nTags:', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `datve`
--
ALTER TABLE `datve`
  ADD PRIMARY KEY (`id_vedat`),
  ADD KEY `id_phim` (`id_phim`),
  ADD KEY `CMND` (`CMND`);

--
-- Chỉ mục cho bảng `phim`
--
ALTER TABLE `phim`
  ADD PRIMARY KEY (`id_phim`);

--
-- Chỉ mục cho bảng `phongchieu`
--
ALTER TABLE `phongchieu`
  ADD PRIMARY KEY (`id_phong`);

--
-- Chỉ mục cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`CMND`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id_tintuc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `datve`
--
ALTER TABLE `datve`
  MODIFY `id_vedat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `phim`
--
ALTER TABLE `phim`
  MODIFY `id_phim` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `phongchieu`
--
ALTER TABLE `phongchieu`
  MODIFY `id_phong` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id_tintuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `datve`
--
ALTER TABLE `datve`
  ADD CONSTRAINT `datve_ibfk_1` FOREIGN KEY (`id_phim`) REFERENCES `phim` (`id_phim`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datve_ibfk_2` FOREIGN KEY (`CMND`) REFERENCES `thanhvien` (`CMND`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
