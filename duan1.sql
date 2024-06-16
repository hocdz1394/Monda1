-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th6 16, 2024 lúc 10:09 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duan1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute_product`
--

CREATE TABLE `attribute_product` (
  `id` int(5) NOT NULL,
  `id_product` int(5) NOT NULL,
  `ten_thuoctinh` varchar(20) NOT NULL,
  `giatri` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(5) NOT NULL,
  `id_product` int(5) NOT NULL,
  `stt` int(2) NOT NULL,
  `img` varchar(100) NOT NULL,
  `trangthai` tinyint(4) NOT NULL DEFAULT 0,
  `mota` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `id_product`, `stt`, `img`, `trangthai`, `mota`) VALUES
(23, 45, 3, 'bn3.png', 1, NULL),
(24, 14, 1, 'bn6.png', 1, NULL),
(25, 12, 4, 'bgbn1.jpg', 1, NULL),
(26, 44, 2, 'bn7.png', 1, NULL),
(27, 86, 5, 'bn1.png', 1, NULL),
(28, 16, 6, '4.png', 1, NULL),
(29, 87, 7, 'bgbn2.jpg', 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(5) NOT NULL,
  `id_user` int(5) NOT NULL,
  `ma_hoadon` varchar(50) NOT NULL,
  `ten_nguoidat` varchar(50) NOT NULL,
  `diachi_nguoidat` varchar(200) NOT NULL,
  `sdt_nguoidat` varchar(20) NOT NULL,
  `email_nguoidat` varchar(50) NOT NULL,
  `ten_nguoinhan` varchar(50) DEFAULT NULL,
  `diachi_nguoinhan` varchar(200) DEFAULT NULL,
  `sdt_nguoinhan` varchar(20) DEFAULT NULL,
  `pttt` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0:COD\r\n1:BANK\r\n2:Ví điện tử',
  `total` int(9) NOT NULL,
  `vouncher` int(10) DEFAULT 0 COMMENT '0: Không có vouncher\r\n1: có vouncher',
  `ship` int(9) DEFAULT NULL,
  `order_notes` varchar(200) DEFAULT NULL,
  `tong` int(9) NOT NULL,
  `ngaydat` datetime DEFAULT NULL,
  `hoivien` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id`, `id_user`, `ma_hoadon`, `ten_nguoidat`, `diachi_nguoidat`, `sdt_nguoidat`, `email_nguoidat`, `ten_nguoinhan`, `diachi_nguoinhan`, `sdt_nguoinhan`, `pttt`, `total`, `vouncher`, `ship`, `order_notes`, `tong`, `ngaydat`, `hoivien`) VALUES
(72, 2, 'TECHPRO2-104236-05122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 13730000, 0, 60000, 'Giao chiều', 13790000, '2023-12-05 16:42:31', 0),
(73, 2, 'TECHPRO2-104426-05122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 185200000, 0, 25000, '', 185225000, '2023-12-05 16:44:23', 0),
(74, 2, 'TECHPRO2-105526-05122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 101940000, 0, 60000, '', 102000000, '2023-12-05 16:55:24', 0),
(75, 25, 'TECHPRO25-105606-05122023', 'T TON', 'eawsewq', '07999321321', 'toan70868@gmail.com', '', '', '', 1, 91140000, 0, 60000, '', 91200000, '2023-12-05 16:56:04', 0),
(76, 2, 'TECHPRO2-114357-05122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 4390000, 0, 60000, '', 4450000, '2023-12-05 17:43:56', 0),
(77, 2, 'TECHPRO2-114551-05122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 16990000, 0, 60000, '', 17050000, '2023-12-05 17:45:48', 0),
(78, 2, 'TECHPRO2-115130-05122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 4, 13980000, 300000, 25000, '', 13705000, '2023-12-05 17:51:26', 0),
(79, 2, 'TECHPRO2-115631-05122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', 'Toàn Toàn Toàn', 'Hóc môn', '1231212412412', 1, 45570000, 0, 60000, '', 45630000, '2023-12-05 17:56:11', 0),
(80, 2, 'TECHPRO2-115750-05122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 3, 27960000, 500000, 25000, '', 27485000, '2023-12-05 17:57:43', 0),
(81, 2, 'TECHPRO2-110149-07122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 19990000, 0, 25000, '', 18016000, '2023-12-07 17:01:44', 1999000),
(82, 2, 'TECHPRO2-110313-07122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 19990000, 0, 25000, '', 18016000, '2023-12-07 17:03:04', 1999000),
(83, 2, 'TECHPRO2-110421-07122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 43980000, 0, 25000, '', 39607000, '2023-12-07 17:04:14', 4398000),
(84, 2, 'TECHPRO2-110806-07122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 43980000, 0, 25000, '', 39607000, '2023-12-07 17:08:00', 4398000),
(85, 2, 'TECHPRO2-111401-07122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 43980000, 0, 25000, '', 39607000, '2023-12-07 17:13:51', 4398000),
(86, 2, 'TECHPRO2-112321-07122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 43980000, 0, 16000, '', 39598000, '2023-12-07 17:23:14', 4398000),
(87, 2, 'TECHPRO2-112424-07122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 43980000, 0, 25000, '', 39607000, '2023-12-07 17:24:20', 4398000),
(88, 2, 'TECHPRO2-112527-07122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 43980000, 0, 25000, '', 39607000, '2023-12-07 17:25:22', 4398000),
(89, 2, 'TECHPRO2-112534-07122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 43980000, 0, 25000, '', 39607000, '2023-12-07 17:25:22', 4398000),
(90, 2, 'TECHPRO2-112634-07122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 43980000, 0, 25000, '', 39607000, '2023-12-07 17:26:30', 4398000),
(91, 2, 'TECHPRO2-113017-07122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 43980000, 0, 25000, '', 39607000, '2023-12-07 17:30:12', 4398000),
(92, 2, 'TECHPRO2-113248-07122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 43980000, 0, 25000, '', 39607000, '2023-12-07 17:32:43', 4398000),
(93, 2, 'TECHPRO2-113251-07122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 43980000, 0, 25000, '', 39607000, '2023-12-07 17:32:43', 4398000),
(94, 2, 'TECHPRO2-113416-07122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 43980000, 0, 25000, '', 39607000, '2023-12-07 17:34:11', 4398000),
(95, 2, 'TECHPRO2-113734-07122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 43980000, 0, 25000, '', 39607000, '2023-12-07 17:37:29', 4398000),
(96, 2, 'TECHPRO2-113828-07122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 43980000, 0, 25000, '', 39607000, '2023-12-07 17:38:23', 4398000),
(97, 2, 'TECHPRO2-113903-07122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 43980000, 0, 25000, '', 39607000, '2023-12-07 17:38:58', 4398000),
(98, 2, 'TECHPRO2-114558-07122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 43980000, 0, 25000, '', 39607000, '2023-12-07 17:45:53', 4398000),
(99, 2, 'TECHPRO2-114858-07122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 43980000, 0, 25000, '', 39607000, '2023-12-07 17:48:54', 4398000),
(100, 2, 'TECHPRO2-115339-07122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 43980000, 0, 25000, '', 39607000, '2023-12-07 17:53:34', 4398000),
(101, 2, 'TECHPRO2-115518-07122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 13170000, 0, 25000, '', 11878000, '2023-12-07 17:55:12', 1317000),
(102, 2, 'TECHPRO2-115639-07122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 44370000, 0, 25000, '', 39958000, '2023-12-07 17:56:27', 4437000),
(103, 2, 'TECHPRO2-121107-07122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 45960000, 0, 25000, '', 41389000, '2023-12-07 18:11:01', 4596000),
(104, 2, 'TECHPRO2-121110-07122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 45960000, 0, 25000, '', 41389000, '2023-12-07 18:11:01', 4596000),
(105, 2, 'TECHPRO2121313-07122023', 'T Toan', 'Tiền Giang Nha Trangggg', '07999321321', 'toand70868@gmail.com', '', '', '', 1, 15190000, 0, 25000, '', 13696000, '2023-12-07 18:13:07', 1519000),
(106, 25, 'TECHPRO25122645-07122023', 'T TON', 'eawsewq', '07999321321', 'toan70868@gmail.com', '', '', '', 1, 43980000, 0, 25000, '', 44005000, '2023-12-07 18:26:40', 0),
(107, 25, 'TECHPRO25131817-07122023', 'T TON', 'eawsewq', '07999321321', 'toan70868@gmail.com', '', '', '', 1, 43960000, 0, 25000, '', 39589000, '2023-12-07 19:18:12', 4396000),
(108, 27, 'TECHPRO2711122023', 'lang', 'gjhkhl', '57788', 'langdz.1646@gmail.com', '', '', '', 1, 19990000, 0, 25000, '', 20015000, '2023-12-11 20:48:58', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id_blog` int(10) NOT NULL,
  `madm` int(10) NOT NULL,
  `hinh` varchar(200) NOT NULL,
  `tieude` varchar(200) NOT NULL,
  `noidung` text NOT NULL,
  `ngay` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`id_blog`, `madm`, `hinh`, `tieude`, `noidung`, `ngay`) VALUES
(1, 1, '6.webp', 'OPPO Find N3 Flip 12GB 256GB', 'ĐẶC ĐIỂM NỔI BẬT <br>\nThiết kế gập linh hoạt, đường cong 3D, đường cắt kim cương - biểu tượng của sự phong cách giúp bạn luôn toả sáng <br>\nĐiện thoại gập sở hữu 3 camera sắc nét - Chụp hình đơn giản hơn với Chế độ Flexform <br> \nMàn hình phụ vạn năng - dễ dàng thao tác các tác vụ ngay trên màn hình phụ và tuỳ biến theo sở thích\nMàn hình sống động đáng kinh ngạc - Kích thước 6.8i nches, hỗ trợ 120Hz, HDR10+\nOPPO Find N3 Flip chính thức ra mắt thị trường Việt Nam ngày 26/10 sở hữu nhiều ưu điểm vượt trội: chip Dimensity 9200, RAM 12GB cùng bộ nhớ trong 256GB. Cạnh đó, camera điện thoại gập Find N3 Flip hợp tác cùng <br>Hasselblad, ống kính chính độ phân giải 50MP và màn hình AMOLED 6.8 inch cho trải nghiệp quay chụp chuyên nghiệp hơn bao giờ hết.Oppo Find X3 Flip là một trong những mẫu điện thoại thông minh hàng đầu từ Oppo, một nhà sản xuất công nghệ di động nổi tiếng. Với thiết kế độc đáo và những tính năng ấn tượng, Oppo Find X3 Flip đã thu hút sự chú ý của người dùng trên toàn thế giới.<br><br>Opp Find X3 Flip được thiết kế với màn hình gập độc đáo, cho phép người dùng tận hưởng trải nghiệm mở rộng và linh hoạt hơn. Màn hình AMOLED đa điểm 7.1 inch mang đến hình ảnh sắc nét, màu sắc sống động và độ tương phản cao. Bên cạnh đó, tỷ lệ khung hình cao và độ phân giải 1080 x 2400 pixel tạo nên trải nghiệm xem phim và chơi game tuyệt vời.<br><br>Về hiệu suất, Oppo Find X3 Flip được trang bị bộ vi xử lý Qualcomm Snapdragon 888 mạnh mẽ, đi kèm với 8GB hoặc 12GB RAM, đảm bảo khả năng xử lý nhanh chóng và mượt mà. Bạn có thể thỏa sức chơi game, xem video và làm nhiều tác vụ đa nhiệm mà không gặp trở ngại.<br><br>Ở phần camera, Oppo Find X3 Flip đi kèm với một hệ thống camera đa năng. Bộ tứ camera sau gồm cảm biến chính 50MP, cảm biến góc rộng 16MP, cảm biến tele 13MP và cảm biến đo chiều sâu 5MP. Điều này cho phép bạn chụp ảnh chất lượng cao và tạo ra hiệu ứng xóa phông đẹp mắt. Camera selfie 32MP cũng cung cấp những bức ảnh tự sướng tuyệt vời.<br><br>Điểm đặc biệt khác của Oppo Find X3 Flip là khả năng kết nối 5G, cung cấp tốc độ internet siêu nhanh. Ngoài ra, nó cũng có pin dung lượng lớn 4,500mAh và hỗ trợ sạc nhanh SuperVOOC 2.0, giúp bạn sử dụng thiết bị lâu dài mà không lo hết pin.<br><br>Tóm lại, Oppo Find X3 Flip là một chiếc điện thoại thông minh đẳng cấp với thiết kế gập độc đáo, hiệu suất mạnh mẽ và khả năng chụp ảnh ấn tượng. Nếu bạn đang tìm kiếm một sản phẩm cao cấp và độc đáo, Oppo Find X3 Flip xứng đáng là một lựa chọn hàng đầu.', '2023-11-20'),
(2, 2, '1.webp', 'Samsung Galaxy S23 Ultra 256GB', 'Thoả sức chụp ảnh, quay video chuyên nghiệp - Camera đến 200MP, chế độ chụp đêm cải tiến, bộ xử lí ảnh thông minh <br>\nChiến game bùng nổ - chip Snapdragon 8 Gen 2 8 nhân tăng tốc độ xử lí, màn hình 120Hz, pin 5.000mAh\nNâng cao hiệu suất làm việc với Siêu bút S Pen tích hợp, dễ dàng đánh dấu sự kiện từ hình ảnh hoặc video <br>\nThiết kế bền bỉ, thân thiện - Màu sắc lấy cảm hứng từ thiên nhiên, chất liệu kính và lớp phim phủ PET tái chế <br>\nSau sự đổ bộ thành công của Samsung Galaxy S22 những chiếc điện thoại dòng Flagship tiếp theo - Điện thoại Samsung Galaxy S23 Ultra là đối tượng được Samfans hết mực săn đón. Kiểu dáng thanh lịch sang chảnh kết hợp với những bước đột phá trong công nghệ đã kiến tạo nên siêu phẩm Flagship nhà Samsung. <br>\n\nĐiện thoại Samsung Galaxy S23 Ultra liệu có gì mới?\nSamsung S23 Ultra là dòng điện thoại cao cấp của Samsung, sở hữu camera độ phân giải 200MP ấn tượng, chip Snapdragon 8 Gen 2 mạnh mẽ, bộ nhớ RAM 8GB mang lại hiệu suất xử lý vượt trội cùng khung viền vuông vức sang trọng. Sản phẩm được ra mắt từ đầu năm 2023.\n <br>\nThiết kế cao cấp, đường nét thời thượng, tinh tế\nTiếp nối thiết kế từ những chiếc Samsung Galaxy S22 Ultra, những chiếc Samsung S23 Ultra mang dáng vẻ thanh mảnh với những đường nét được gọt giũa chỉnh chu và cực kỳ tinh tế. Với màn hình tràn viền, tỷ lệ màn hình trên thân máy hơn 90% những chiếc điện thoại S23 Ultra hứa hẹn mang đến một thiết kế thời thượng thu hút mọi ánh nhìn.Samsung Galaxy S23 Ultra 256GB là một chiếc điện thoại thông minh hàng đầu từ Samsung, một trong những nhà sản xuất công nghệ hàng đầu trên thế giới. Với thiết kế sang trọng và tính năng vượt trội, Samsung Galaxy S23 Ultra 256GB đã nâng cao trải nghiệm người dùng lên một tầm cao mới.<br><br> Samsung Galaxy S23 Ultra 256GB được thiết kế với màn hình Dynamic AMOLED 6.8 inch, mang đến hình ảnh chất lượng tuyệt vời với độ phân giải Quad HD+ 1440 x 3200 pixel. Màn hình với tần số làm tươi 120Hz và hỗ trợ HDR10+ tạo ra màu sắc sống động, độ tương phản cao và độ mượt mà trong việc xem phim, chơi game và duyệt web.<br><br> Về hiệu suất, Samsung Galaxy S23 Ultra 256GB được trang bị chip Exynos 990/Qualcomm Snapdragon 898 (phụ thuộc vào khu vực).  <br>Với 8GB hoặc 12GB RAM, điện thoại này đảm bảo khả năng xử lý nhanh chóng và mượt mà. Bạn có thể chơi game, xem video và thực hiện nhiều tác vụ đa nhiệm mà không gặp trở ngại.<br><br> Ngay cả khía cạnh camera, Samsung Galaxy S23 Ultra 256GB không làm bạn thất vọng. Với hệ thống camera đa chức năng, bao gồm cảm biến chính 108MP, cảm biến góc rộng 12MP, cảm biến tele 10MP và cảm biến đo chiều sâu 5MP, bạn có thể chụp ảnh chất lượng cao và tạo ra hiệu ứng chân dung đẹp mắt. Camera selfie 40MP cũng cung cấp những bức ảnh tự sướng đẹp và sắc nét.<br><br> Samsung Galaxy S23 Ultra 256GB cũng cung cấp khả năng kết nối 5G, mang đến tốc độ internet siêu nhanh và mượt mà. Ngoài ra, nó có pin dung lượng lớn 5,000mAh và hỗ trợ sạc nhanh, sạc không dây và chia sẻ pin ngược. Điều này giúp bạn sử dụng thiết bị lâu dài mà không lo hết pin.<br><br> Tóm lại, Samsung Galaxy S23 Ultra 256GB là một chiếc điện thoại thông minh cao cấp với thiết kế sang trọng, hiệu suất mạnh mẽ và khả năng chụp ảnh ấn tượng. Nếu bạn đang tìm kiếm một sản phẩm hàng đầu với các tính năng tiên tiến, Samsung Galaxy S23 Ultra 256GB là sự lựa chọn tuyệt vời cho bạn.', '2023-11-20'),
(3, 2, '4.webp', 'Apple MacBook Air M1 256GB 2020 I Chính hãng Apple Việt Nam', 'ĐẶC ĐIỂM NỔI BẬT <br>\r\nPhù hợp cho lập trình viên, thiết kế đồ họa 2D, dân văn phòng <br>\r\nHiệu năng vượt trội - Cân mọi tác vụ từ word, exel đến chỉnh sửa ảnh trên các phần mềm như AI, PTS <br>\r\nĐa nhiệm mượt mà - Ram 8GB cho phép vừa mở trình duyệt để tra cứu thông tin, vừa làm việc trên phần mềm <br>\r\nTrang bị SSD 256GB - Cho thời gian khởi động nhanh chóng, tối ưu hoá thời gian load ứng dụng <br>\r\nChất lượng hình ảnh sắc nét - Màn hình Retina cao cấp cùng công nghệ TrueTone cân bằng màu sắc <br>\r\nThiết kế sang trọng - Nặng chỉ 1.29KG, độ dày 16.1mm. Tiện lợi mang theo mọi nơi <br>\r\nMacbook Air M1 2020 - Sang trọng, tinh tế, hiệu năng khủng <br>\r\nMacbook Air M1 là dòng sản phẩm có thiết kế mỏng nhẹ, sang trọng và tinh tế cùng với đó là giá thành phải chăng nên MacBook Air đã thu hút được đông đảo người dùng yêu thích và lựa chọn. Đây cũng là một trong những phiên bản Macbook Air mới nhất mà khách hàng không thể bỏ qua khi đến với CellphoneS. Dưới đây là chi tiết về thiết kế, cấu hình của máy.\r\n <br>\r\nThiết kế tinh tế, chất liệu nhôm bền bỉ\r\nMacbook Air 2020 M1 mới vẫn luôn tuân thủ triết lý thiết kế với những đường nét đơn nhưng vô cùng sang trọng. Máy có độ mỏng nhẹ chỉ 1,29kg và các cạnh tràn viền khiến thiết bị trở nên đẹp hơn và cao cấp hơn.', '2023-12-13'),
(4, 3, '2.webp', 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 'iPhone 15 là phiên bản mới nhất trong dòng sản phẩm điện thoại thông minh của Apple, một trong những công ty công nghệ hàng đầu thế giới. Với thiết kế đẹp mắt và tính năng tiên tiến, iPhone 15 đã nâng cao trải nghiệm người dùng lên một tầm cao mới.<br><br>iPhone 15 được thiết kế với màn hình Super Retina XDR OLED 6.7 inch, mang đến hình ảnh chất lượng tuyệt vời với độ phân giải 1170 x 2532 pixel. Màn hình với tần số làm tươi 120Hz và hỗ trợ HDR10+ tạo ra màu sắc sống động, độ tương phản cao và độ mượt mà trong việc xem phim, chơi game và duyệt web.<br><br>Về hiệu suất, iPhone 15 được trang bị chip A16 Bionic, mạnh mẽ và tiết kiệm năng lượng, đảm bảo khả năng xử lý nhanh chóng và hiệu quả. Bạn có thể trải nghiệm mượt mà khi chạy các ứng dụng nặng và chơi game đồ họa cao.<br><br>Ngay cả khía cạnh camera, iPhone 15 không làm bạn thất vọng. <br> Với hệ thống camera kép, bao gồm cảm biến chính 12MP và cảm biến góc rộng 12MP, bạn có thể chụp ảnh sắc nét và tạo ra hiệu ứng chân dung tuyệt đẹp với khả năng điều chỉnh chế độ ánh sáng và xóa phông nền.<br><br>iPhone 15 cũng cung cấp khả năng kết nối 5G, mang đến tốc độ internet nhanh chóng và mượt mà. Ngoài ra, nó hỗ trợ công nghệ sạc nhanh và sạc không dây, giúp bạn tiết kiệm thời gian và sử dụng thiết bị dễ dàng.<br><br>Tóm lại, iPhone 15 là một điện thoại thông minh cao cấp với thiết kế đẹp mắt, hiệu suất mạnh mẽ và khả năng chụp ảnh ấn tượng. Nếu bạn đang tìm kiếm một sản phẩm hàng đầu với các tính năng tiên tiến, iPhone 15 là lựa chọn hoàn hảo cho bạn.', '2023-11-15'),
(5, 3, '5.webp', 'Màn hình văn phòng MSI Pro MP241X 24 inch', 'ĐẶC ĐIỂM NỔI BẬT <br>\r\nChứng chỉ TÜV cùng công nghệ Adaptive-Sync giúp bảo vệ mắt, cho trải nghiệm xem thú vị <br>\r\nĐộ phân giải Full HD mang đến chất lượng hiển thị video và hình ảnh chân thực, sống động <br>\r\nTần số quét màn hình 75Hz giúp chơi game, lướt web, xem phim liền mạch, không gián đoạn <br>\r\nMàn hình kích thước 24 inch đủ hiển thị đầy đủ chi tiết, không chiếm nhiều diện tích trên bàn <br>\r\nMàn hình MSI Pro MP241X 24 inch là kiểu màn hình phẳng, độ phân giải Full HD, hiển thị 16.7 triệu màu và mở rộng góc nhìn lên đến 178 độ nhờ tấm nền VA. Tần số quét 75Hz, thời gian phản hồi 8ms cho trải nghiệm xem tốt hơn. Được phủ lớp chống loá và tích hợp công nghệ nhấp nháy, màn hình sẽ giảm đi ít ánh sáng xanh để bảo vệ tối ưu đôi mắt của người dùng.\r\n<br>\r\nMàn hình MSI Pro MP241X 24 inch - Trang bị nhiều tính năng, trải nghiệm dùng tốt\r\nMàn hình MSI Pro MP241X 24 inch là sự kết hợp của kích thước lớn với khả năng hiển thị sắc nét, mở rộng góc nhìn tối ưu. Do đó, thiết kế màn hình MSI này phù hợp với nhiều không gian làm việc, văn phòng, studio hoặc tại nhà riêng,... tạo ra những trải nghiệm mượt mà, dùng tốt ở mọi tác vụ. \r\n<br>\r\nHiển thị Full HD sắc nét, tốc độ làm mới 75Hz<br>\r\nMàn hình MSI Pro MP241X 24 inch được trang bị tấm nền VA mang tới khả năng hiển thị sắc nét từ độ phân giải Full HD. Hơn hết, với 16.7 triệu màu sắc màn hình đều thể hiện sống động, cho độ chính xác cao phù hợp với những công việc liên quan đến thiết kế.<br>', '2023-12-28'),
(6, 4, '3.png', 'Đồng hồ thông minh k739#de1', 'Đồng hồ thông minh, hay còn được gọi là Smartwatch, là một loại đồng hồ đeo tay được kỹ thuật hóa với nhiều chức năng thông minh. Nó có khả năng tăng cường thời gian duy trì, giúp hiển thị thông tin và thực hiện nhiều chức năng hơn ngoài việc chỉ đơn thuần đo giờ. <br>\n\nSmartwatch thường được so sánh với thiết bị kỹ thuật số cá nhân do tích hợp các tính năng đa dạng như theo dõi sức khỏe, nhận thông báo từ điện thoại, truy cập internet, và thực hiện các ứng dụng giúp người dùng tương tác và quản lý công việc hàng ngày một cách thuận tiện.\n <br>\nNhư tên gọi của nó, đồng hồ thông minh (Smartwatch) là loại đồng hồ điện tử có thể hoạt động như một chiếc điện thoại thông minh bạn đang sở hữu. Không giống với những chiếc đồng hồ kim cơ bản mà trước đây mọi người thường hay sử dụng, đồng hồ thông minh có đầy đủ các tính năng như một chiếc điện thoại nhưng vì được đeo trên tay nên chúng được gọi là “đồng hồ”.\n <br>\nĐồng hồ thông minh có nhiều tính năng đặc biệt như: kết nối với điện thoại qua Bluetooth, qua đó giúp truyền tải dữ liệu với điện thoại. Bên cạnh đó là các tính năng như kết nối Wifi/4G, hỗ trợ thẻ nhớ, GPS, camera, thanh toán trực tuyến, đài FM, các tính năng theo dõi sức khỏe, hỗ trợ luyện tập v.v… <br>', '2023-12-13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id` int(5) NOT NULL,
  `id_catalog` int(5) NOT NULL,
  `ten` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id`, `id_catalog`, `ten`) VALUES
(1, 1, 'IPhone'),
(2, 1, 'Samsung'),
(3, 1, 'OPPO'),
(4, 1, 'XIAOMI'),
(5, 1, 'VIVO'),
(7, 2, 'HP'),
(8, 2, 'ASUS'),
(9, 2, 'MacBook'),
(10, 2, 'DELL'),
(11, 2, 'MSI'),
(12, 3, 'IPAD'),
(13, 3, 'SAMSUNG'),
(14, 3, 'XIAOMI'),
(15, 3, 'OPPO'),
(16, 3, 'LENOVO'),
(17, 4, 'SAMSUNG'),
(19, 4, 'WATCH'),
(20, 4, 'BEFIT'),
(21, 4, 'XIAOMI');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(5) NOT NULL,
  `id_user` int(5) NOT NULL,
  `id_bill` int(5) NOT NULL,
  `id_product` int(5) NOT NULL,
  `ten` varchar(20) NOT NULL,
  `hinh` varchar(200) NOT NULL,
  `gia` int(9) NOT NULL,
  `soluong` int(3) NOT NULL,
  `thanhtien` int(9) NOT NULL,
  `status` tinyint(4) DEFAULT 0 COMMENT '0: Đang duyệt\r\n1: Đang giao\r\n2: đã nhận\r\n3: Hoàn Thành',
  `phi_vanchuyen` int(10) NOT NULL DEFAULT 0,
  `voucher` int(10) DEFAULT 0,
  `pttt` varchar(50) NOT NULL,
  `ten_nhan` varchar(100) NOT NULL,
  `sdt_nhan` int(2) NOT NULL,
  `diachi_nhan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `id_user`, `id_bill`, `id_product`, `ten`, `hinh`, `gia`, `soluong`, `thanhtien`, `status`, `phi_vanchuyen`, `voucher`, `pttt`, `ten_nhan`, `sdt_nhan`, `diachi_nhan`) VALUES
(72, 2, 72, 47, 'Đồng hồ thông minh X', 'sm-xiaomi-xanh.jpg', 990000, 5, 4950000, 3, 0, 0, '', '', 0, ''),
(73, 2, 72, 40, 'Máy tính bảng Lenovo', 'tablet-lenovo-gen.jpg', 4390000, 2, 8780000, 0, 0, 0, '', '', 0, ''),
(74, 2, 73, 17, 'Điện thoại Xiaomi Re', 'dt-xiaomi-bac.jpg', 3690000, 3, 11070000, 2, 0, 0, '', '', 0, ''),
(75, 2, 73, 30, 'Laptop MSI Gaming GF', 'laptop-msi-11800.jpg', 19590000, 2, 39180000, 1, 0, 0, '', '', 0, ''),
(76, 2, 73, 26, 'Laptop Apple MacBook', 'laptop-macbook-m2.jpg', 26990000, 5, 134950000, 2, 0, 0, '', '', 0, ''),
(77, 2, 74, 16, 'Điện thoại Samsung G', 'dt-samsung-do.jpg', 16990000, 6, 101940000, 0, 0, 0, '', '', 0, ''),
(78, 25, 75, 34, 'Máy tính bảng Samsun', 'tablet-samsung-bacxiu.jpg', 15190000, 6, 91140000, 3, 0, 0, '', '', 0, ''),
(79, 2, 76, 40, 'Máy tính bảng Lenovo', 'tablet-lenovo-gen.jpg', 4390000, 3, 4390000, 0, 0, 0, '1', '', 0, ''),
(80, 2, 77, 16, 'Điện thoại Samsung G', 'dt-samsung-do.jpg', 16990000, 1, 16990000, 0, 0, 0, '1', '', 0, ''),
(81, 2, 78, 19, 'Điện thoại vivo V25 ', 'dt-vivo-vang.jpg', 6990000, 2, 13980000, 0, 300000, 0, '4', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(82, 2, 79, 34, 'Máy tính bảng Samsun', 'tablet-samsung-bacxiu.jpg', 15190000, 3, 45570000, 0, 60000, 0, '1', 'Toàn Toàn Toàn', 2147483647, 'Hóc môn'),
(83, 2, 80, 19, 'Điện thoại vivo V25 ', 'dt-vivo-vang.jpg', 6990000, 4, 27960000, 0, 25000, 500000, '3', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(84, 2, 81, 43, 'Đồng hồ thông minh A', 'sm-apple-cam.jpg', 19990000, 2, 19990000, 0, 25000, 0, '1', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(85, 2, 82, 43, 'Đồng hồ thông minh A', 'sm-apple-cam.jpg', 19990000, 2, 19990000, 0, 25000, 0, '1', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(86, 2, 83, 44, 'Đồng hồ thông minh A', 'sm-apple-trang.jpg', 21990000, 2, 43980000, 0, 25000, 0, '1', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(87, 2, 84, 44, 'Đồng hồ thông minh A', 'sm-apple-trang.jpg', 21990000, 2, 43980000, 0, 25000, 0, '1', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(88, 2, 85, 44, 'Đồng hồ thông minh A', 'sm-apple-trang.jpg', 21990000, 2, 43980000, 0, 25000, 0, '1', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(89, 2, 86, 44, 'Đồng hồ thông minh A', 'sm-apple-trang.jpg', 21990000, 2, 43980000, 0, 16000, 0, '1', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(90, 2, 87, 44, 'Đồng hồ thông minh A', 'sm-apple-trang.jpg', 21990000, 2, 43980000, 0, 25000, 0, '1', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(91, 2, 88, 44, 'Đồng hồ thông minh A', 'sm-apple-trang.jpg', 21990000, 2, 43980000, 0, 25000, 0, '1', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(92, 2, 89, 44, 'Đồng hồ thông minh A', 'sm-apple-trang.jpg', 21990000, 2, 43980000, 0, 25000, 0, '1', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(93, 2, 90, 44, 'Đồng hồ thông minh A', 'sm-apple-trang.jpg', 21990000, 2, 43980000, 0, 25000, 0, '1', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(94, 2, 91, 44, 'Đồng hồ thông minh A', 'sm-apple-trang.jpg', 21990000, 2, 43980000, 0, 25000, 0, '1', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(95, 2, 92, 44, 'Đồng hồ thông minh A', 'sm-apple-trang.jpg', 21990000, 2, 43980000, 0, 25000, 0, '1', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(96, 2, 93, 44, 'Đồng hồ thông minh A', 'sm-apple-trang.jpg', 21990000, 2, 43980000, 0, 25000, 0, '1', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(97, 2, 94, 44, 'Đồng hồ thông minh A', 'sm-apple-trang.jpg', 21990000, 2, 43980000, 0, 25000, 0, '1', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(98, 2, 96, 44, 'Đồng hồ thông minh A', 'sm-apple-trang.jpg', 21990000, 2, 43980000, 0, 25000, 0, '1', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(99, 2, 97, 44, 'Đồng hồ thông minh A', 'sm-apple-trang.jpg', 21990000, 2, 43980000, 0, 25000, 0, '1', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(100, 2, 98, 44, 'Đồng hồ thông minh A', 'sm-apple-trang.jpg', 21990000, 2, 43980000, 0, 25000, 0, '1', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(101, 2, 99, 44, 'Đồng hồ thông minh A', 'sm-apple-trang.jpg', 21990000, 2, 43980000, 0, 25000, 0, '1', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(102, 2, 100, 44, 'Đồng hồ thông minh A', 'sm-apple-trang.jpg', 21990000, 2, 43980000, 0, 25000, 0, '1', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(103, 2, 101, 40, 'Máy tính bảng Lenovo', 'tablet-lenovo-gen.jpg', 4390000, 3, 13170000, 0, 25000, 0, '1', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(104, 2, 102, 43, 'Đồng hồ thông minh A', 'sm-apple-cam.jpg', 19990000, 2, 39980000, 0, 25000, 0, '1', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(105, 2, 102, 40, 'Máy tính bảng Lenovo', 'tablet-lenovo-gen.jpg', 4390000, 1, 4390000, 0, 25000, 0, '1', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(106, 2, 103, 44, 'Đồng hồ thông minh A', 'sm-apple-trang.jpg', 21990000, 2, 43980000, 0, 25000, 0, '1', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(107, 2, 103, 47, 'Đồng hồ thông minh X', 'sm-xiaomi-xanh.jpg', 990000, 2, 1980000, 0, 25000, 0, '1', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(108, 2, 105, 34, 'Máy tính bảng Samsun', 'tablet-samsung-bacxiu.jpg', 15190000, 1, 15190000, 0, 25000, 0, '1', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg'),
(109, 25, 106, 44, 'Đồng hồ thông minh A', 'sm-apple-trang.jpg', 21990000, 2, 43980000, 0, 25000, 0, '1', 'T TON', 2147483647, 'eawsewq'),
(110, 25, 107, 43, 'Đồng hồ thông minh A', 'sm-apple-cam.jpg', 19990000, 1, 19990000, 0, 25000, 0, '1', 'T TON', 2147483647, 'eawsewq'),
(111, 25, 107, 40, 'Máy tính bảng Lenovo', 'tablet-lenovo-gen.jpg', 4390000, 2, 8780000, 0, 25000, 0, '1', 'T TON', 2147483647, 'eawsewq'),
(112, 25, 107, 34, 'Máy tính bảng Samsun', 'tablet-samsung-bacxiu.jpg', 15190000, 1, 15190000, 0, 25000, 0, '1', 'T TON', 2147483647, 'eawsewq');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catalog`
--

CREATE TABLE `catalog` (
  `id` int(5) NOT NULL,
  `ten_dm` varchar(10) NOT NULL,
  `stt` varchar(5) NOT NULL,
  `mota` varchar(20) DEFAULT NULL,
  `sethome` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:Không set home\r\n1:Set home'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `catalog`
--

INSERT INTO `catalog` (`id`, `ten_dm`, `stt`, `mota`, `sethome`) VALUES
(1, 'Điện thoại', '1', 'Điện thoại', 0),
(2, 'Laptop', '2', 'Laptop', 0),
(3, 'Tablet', '3', 'Tablet', 0),
(4, 'Smartwatch', '4', 'đồng hồ thông minh', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cmt`
--

CREATE TABLE `cmt` (
  `id` int(5) NOT NULL,
  `id_product` int(5) NOT NULL,
  `id_user` int(5) NOT NULL,
  `noi_dung` varchar(50) NOT NULL,
  `ngay_bl` date NOT NULL,
  `ten` varchar(20) NOT NULL,
  `hinh` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(5) NOT NULL,
  `madh` varchar(50) NOT NULL,
  `id_user` int(5) NOT NULL,
  `id_product` int(5) NOT NULL,
  `id_bill` int(5) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `gia` int(10) NOT NULL,
  `hinh` varchar(100) NOT NULL,
  `soluong` int(5) NOT NULL,
  `ngaydat` datetime NOT NULL,
  `ten_nguoinhan` varchar(50) NOT NULL,
  `sdt_nguoinhan` int(10) NOT NULL,
  `diachi_nguoinhan` varchar(150) NOT NULL,
  `phivanchuyen` int(10) NOT NULL,
  `voucher` int(10) NOT NULL,
  `hoivien` int(10) NOT NULL,
  `pttt` int(2) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: Đang xử lí\r\n1:Đang vận chuyển\r\n2: Đã nhận hàng \r\n3: hủy đơn'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `madh`, `id_user`, `id_product`, `id_bill`, `ten`, `gia`, `hinh`, `soluong`, `ngaydat`, `ten_nguoinhan`, `sdt_nguoinhan`, `diachi_nguoinhan`, `phivanchuyen`, `voucher`, `hoivien`, `pttt`, `status`) VALUES
(1, 'Toannha2-115339-07122023', 2, 44, 100, 'Đồng hồ thông minh Apple Watch Ultra 2 GPS', 21990000, 'sm-apple-trang.jpg', 0, '2023-12-07 17:53:34', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg', 25000, 0, 4398000, 1, 2),
(2, '.EJAW.. 2 .-115518-07122023', 2, 40, 101, 'Máy tính bảng Lenovo Tab M9', 4390000, 'tablet-lenovo-gen.jpg', 0, '2023-12-07 17:55:12', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg', 25000, 0, 1317000, 1, 0),
(3, 'VYXWG2-115639-07122023', 2, 43, 102, 'Đồng hồ thông minh Apple Watch Ultra GPS', 19990000, 'sm-apple-cam.jpg', 0, '2023-12-07 17:56:27', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg', 25000, 0, 4437000, 1, 1),
(4, 'KOTDZ2-115639-07122023', 2, 40, 102, 'Máy tính bảng Lenovo Tab M9', 4390000, 'tablet-lenovo-gen.jpg', 0, '2023-12-07 17:56:27', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg', 25000, 0, 4437000, 1, 0),
(5, 'ZEGWX2-121107-07122023', 2, 44, 103, 'Đồng hồ thông minh Apple Watch Ultra 2 GPS', 21990000, 'sm-apple-trang.jpg', 2, '2023-12-07 18:11:01', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg', 25000, 0, 4596000, 1, 0),
(6, 'HECQW2-121107-07122023', 2, 47, 103, 'Đồng hồ thông minh Xiaomi Redmi Watch 2 Lite 41.2m', 990000, 'sm-xiaomi-xanh.jpg', 2, '2023-12-07 18:11:01', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg', 25000, 0, 4596000, 1, 0),
(7, 'QVHTD2-121313-07122023', 2, 34, 105, 'Máy tính bảng Samsung Galaxy Tab S9 WiFi (8GB/128G', 15190000, 'tablet-samsung-bacxiu.jpg', 1, '2023-12-07 18:13:07', 'T Toan', 2147483647, 'Tiền Giang Nha Trangggg', 25000, 0, 1519000, 1, 0),
(8, 'OVNBR25-122645-07122023', 25, 44, 106, 'Đồng hồ thông minh Apple Watch Ultra 2 GPS', 21990000, 'sm-apple-trang.jpg', 2, '2023-12-07 18:26:40', 'T TON', 2147483647, 'eawsewq', 25000, 0, 0, 1, 0),
(9, 'DLASZ25-131817-07122023', 25, 43, 107, 'Đồng hồ thông minh Apple Watch Ultra GPS', 19990000, 'sm-apple-cam.jpg', 1, '2023-12-07 19:18:12', 'T TON', 2147483647, 'eawsewq', 25000, 0, 4396000, 1, 0),
(10, 'OTFXP25-131817-07122023', 25, 40, 107, 'Máy tính bảng Lenovo Tab M9', 4390000, 'tablet-lenovo-gen.jpg', 2, '2023-12-07 19:18:12', 'T TON', 2147483647, 'eawsewq', 25000, 0, 4396000, 1, 0),
(11, 'KZAPN25-131817-07122023', 25, 34, 107, 'Máy tính bảng Samsung Galaxy Tab S9 WiFi (8GB/128G', 15190000, 'tablet-samsung-bacxiu.jpg', 1, '2023-12-07 19:18:12', 'T TON', 2147483647, 'eawsewq', 25000, 0, 4396000, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(5) NOT NULL,
  `id_catalog` int(5) NOT NULL,
  `id_brand` int(5) NOT NULL,
  `ma_sp` varchar(10) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `gia` int(9) NOT NULL,
  `giamgia` int(9) DEFAULT NULL COMMENT 'Giá đang giảm',
  `sale` tinyint(1) NOT NULL DEFAULT 0,
  `hinh` varchar(300) NOT NULL,
  `hinh1` varchar(200) DEFAULT NULL,
  `hinh2` varchar(200) DEFAULT NULL,
  `hinh3` varchar(200) DEFAULT NULL,
  `hinh4` varchar(200) DEFAULT NULL,
  `hinh5` varchar(200) DEFAULT NULL,
  `ngaynhap` timestamp NULL DEFAULT current_timestamp(),
  `mota` text DEFAULT NULL,
  `tinhnang` text DEFAULT NULL,
  `chitiet` text DEFAULT NULL,
  `new` tinyint(1) NOT NULL DEFAULT 0,
  `xemnhieu` tinyint(1) NOT NULL DEFAULT 0,
  `banchay` tinyint(1) NOT NULL DEFAULT 0,
  `dac_biet` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1: black friday 2:NOen',
  `trangthai` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: Đang bán 0: khg đc bán',
  `soluong` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `id_catalog`, `id_brand`, `ma_sp`, `ten`, `gia`, `giamgia`, `sale`, `hinh`, `hinh1`, `hinh2`, `hinh3`, `hinh4`, `hinh5`, `ngaynhap`, `mota`, `tinhnang`, `chitiet`, `new`, `xemnhieu`, `banchay`, `dac_biet`, `trangthai`, `soluong`) VALUES
(11, 1, 1, 'DT1', 'Điện thoại iPhone 11  ', 34000000, 30000000, 1, 'dt-iphone-11-trang.jpg', 'dt-iphone-11-trang-1.jpg', 'dt-iphone-11-trang-2.jpg', 'dt-iphone-11-trang-3.jpg', 'dt-iphone-11-trang-4.jpg', 'dt-iphone-11-trang-5.jpg', '2023-10-31 17:00:00', 'iPhone 11 thu hút mọi ánh nhìn ngay khi ra mắt nhờ có vẻ ngoài cao cấp, trang bị bộ xử lý mạnh mẽ, cụm camera kép đặc trưng cho khả năng chụp ảnh cực nét cùng màn hình chất lượng cao, để bạn tận hưởng trải nghiệm sử dụng tuyệt vời <br> <br>\r\n', 'Toàn cảnh (Panorama) Chống rung quang học (OIS) Trôi nhanh thời gian (Time Lapse) Quay chậm (Slow Motion) Xóa phông Ban đêm (Night Mode) Zoom quang học Siêu độ phân giải Quay Siêu chậm (Super Slow Motion) Góc rộng (Wide) Góc siêu rộng (Ultrawide) Zo', 'Màn hình: - 6.7 inch <br>\n          - Màn hình Super Retina XDR <br>\n          - Độ phân giải 2796x1290 pixel với mật độ điểm ảnh 460 ppi <br>\nKích thước và khối lượng: - 160,9 x 77,8 x 7,80 mm (Dài x Rộng x Dày)<br>\n- 201 gram <br>\nChất lượng sản phẩm: Thế Giới Di Động cam kết cung cấp sản phẩm iPhone 15 chính hãng. Điều này giúp bạn yên tâm về chất lượng sản phẩm và được hưởng đầy đủ các quyền lợi bảo hành của Apple.<br> <br>\n\n• Ưu đãi và khuyến mãi: Thế Giới Di Động thường xuyên có các chương trình khuyến mãi, giảm giá và tặng quà kèm theo, giúp bạn tiết kiệm chi phí khi mua sắm. <br> <br>\n\n• Hệ thống cửa hàng rộng rãi: Thế Giới Di Động có mạng lưới cửa hàng rộng khắp trên toàn quốc, giúp bạn dễ dàng tìm kiếm và mua sắm. Bạn cũng có thể trải nghiệm sản phẩm trực tiếp tại cửa hàng và nhận sự hỗ trợ từ nhân viên.<br> <br>\n\n• Dịch vụ hậu mãi tốt: Thế Giới Di Động cung cấp dịch vụ hậu mãi chuyên nghiệp, bao gồm bảo hành, sửa chữa và hỗ trợ kỹ thuật giúp bạn yên tâm khi sử dụng sản phẩm.<br> <br>\n\n• Hệ thống trả góp linh hoạt: Thế Giới Di Động cung cấp các lựa chọn trả góp phù hợp với ngân sách của bạn, giúp bạn mua được sản phẩm mong muốn mà không cần thanh toán toàn bộ số tiền một lúc.<br> <br>\n\n• Uy tín và kinh nghiệm: Với hơn 15 năm hoạt động trên thị trường, Thế Giới Di Động đã xây dựng được một uy tín mạnh mẽ trong ngành công nghiệp điện thoại di động. Điều này giúp bạn yên tâm khi mua sắm tại đây. <br> <br>\n\n• Dịch vụ mua sắm trực tuyến: Ngoài các hệ thống cửa hàng siêu thị, Thế Giới Di Động còn cung cấp dịch vụ mua sắm trực tuyến, giúp bạn mua hàng mọi lúc, mọi nơi và dễ dàng so sánh giá cả. <br> <br>\nNếu như trước đây iPhone Xr chỉ có một camera thì nay với iPhone 11 chúng ta sẽ có tới hai camera ở mặt sau.\n\n<br>\nNgoài camera chính vẫn có độ phân giải 12 MP thì chúng ta sẽ có thêm một camera góc siêu rộng và cũng với độ phân giải tương tự', 0, 1, 0, 1, 1, 1),
(12, 1, 1, 'DT2', 'Điện thoại iPhone 12 64GB', 17000000, 15490000, 1, 'dt-iphone-12-violet.jpg', 'dt-iphone-12-violet-1.jpg', 'dt-iphone-12-violet-2.jpg', 'dt-iphone-12-violet-3.jpg', 'dt-iphone-12-violet-4.jpg', 'dt-iphone-12-violet-5.jpg', '2023-11-11 17:00:00', 'iPhone 12 được trang bị hệ thống camera kép bao gồm camera góc rộng và camera siêu rộng có cùng độ phân giải là 12 MP, chế độ ban đêm (Night Mode) trên bộ đôi camera này cũng đã được nâng cấp về phần cứng lẫn thuật toán xử lý, khi chụp những bức ảnh thiếu sáng bạn sẽ nhận được kết quả ấn tượng với màu sắc, độ chi tiết rõ nét đáng kinh ngạc.', '- Quay video Full HD\r\n- Quay video HD\r\n- Quay video 4K\r\n- Nhãn dán (AR Stickers)\r\n- Xóa phông\r\n- Quay chậm (Slow Motion)\r\n- Retina Flash\r\n- Tự động lấy nét (AF)\r\n- Nhận diện khuôn mặt\r\n- HDR', 'iOS 15 <br>\nChip xử lý (CPU) <br>\nApple A16 Bionic 6 nhân <br>\nApple A14 Bionic 6 nhân <br>\nTốc độ CPU <br>\n3.46 GHz <br>\n2 nhân 3.1 GHz & 4 nhân 1.8 GHz <br>\nChip đồ họa (GPU) <br>\nApple GPU 5 nhân <br>\nApple GPU 4 nhân <br> <br>\nApple đã trang bị con chip mới nhất của hãng (tính đến 11/2020) cho iPhone 12 đó là A14 Bionic, được sản xuất trên tiến trình 5 nm với hiệu suất ổn định hơn so với chip A13 được trang bị trên phiên bản tiền nhiệm iPhone 11.\n<br> <br>\nVới CPU Apple A14 Bionic, bạn có thể dễ dàng trải nghiệm mọi tựa game với những pha chuyển cảnh mượt mà hay hàng loạt hiệu ứng đồ họa tuyệt đẹp ở mức đồ họa cao mà không lo tình trạng giật lag.\n\n<br> <br>\nChưa hết, Apple còn gây bất ngờ đến người dùng với hệ thống 5G lần đầu tiên được trang bị trên những chiếc iPhone, cho tốc độ truyền tải dữ liệu nhanh hơn, ổn định hơn', 0, 0, 1, 1, 1, 1),
(13, 1, 3, 'DT3', 'Điện thoại OPPO Find N3 Flip 5G', 22990000, 0, 0, 'dt-oppo-den.jpg', 'dt-oppo-den-1.jpg', 'dt-oppo-den-2.jpg', 'dt-oppo-den-3.jpg', 'dt-oppo-den-4.jpg', 'dt-oppo-den-5.jpg', '2023-11-11 17:00:00', 'OPPO Find N3 Flip đến bên người dùng với một thiết kế nhỏ gọn và gấp gọn độc đáo. Với cơ chế gập, người dùng có thể dễ dàng gấp gọn điện thoại để thuận tiện trong việc cầm nắm và lưu trữ. Điều này mang lại trải nghiệm sử dụng dễ dàng và tiện lợi, đặc biệt khi bạn di chuyển hoặc muốn tiết kiệm không gian.\r\n\r\nVới độ mỏng chỉ với 7.79 mm (khi mở), OPPO Find N3 Flip thật sự ấn tượng giúp tạo nên một sự tinh tế và thanh lịch. Thiết kế mỏng này không chỉ tạo điểm nhấn về thẩm mỹ mà còn là một minh chứng cho sự tiến bộ trong công nghệ sản xuất điện thoại gập.', 'Quay chậm (Slow Motion)\nXóa phông\nBan đêm (Night Mode)\nZoom quang học\nGóc siêu rộng (Ultrawide)\nLàm đẹp\nNhãn dán (AR Stickers)\nGoogle Lens\nZoom kỹ thuật số\nBộ lọc màu\nQuét tài liệu\nẢnh Raw\nPhơi sáng\nSiêu độ phân giải\nChụp hẹn giờ\nQuét mã QR', 'Màn hình AMOLED, Chính 6.8\" & Phụ 3.26\", Full HD+\n<br>\nChip MediaTek Dimensity 9200 5G 8 nhân\n<br>\nRAM: 12 GB\n<br>\nDung lượng: 256 GB\n<br>\nCamera sau: Chính 50 MP & Phụ 48 MP, 32 MP\n<br>\nCamera trước: 32 MP\n<br>\nPin 4300 mAh, Sạc 44 W\n<br> <br>\n ​Tấm nền AMOLED\n<br>\n   • Độ phân giải Full HD+ (1080 x 2520 Pixels)\n<br>\n   • Kích thước 6.8 inch\n<br>\nMàn hình phụ\n<br>\n    • Tấm nền AMOLED\n<br>\n   • Độ phân giải 382 x 720 Pixels\n<br>\n   • Kích thước 3.26 inch\n<br>\n    • Tấm nền AMOLED\n<br>\n   • Độ phân giải 382 x 720 Pixels\n<br>\n   • Kích thước 3.26 inch\n<br>\nCamera\n<br>\n   • Camera chính 50 MP (chống rung OIS)\n<br>\n   • Camera góc siêu rộng 48 MP\n<br>\n   • Camera tele 32 MP\n<br>\n   • Camera trước 32 MP\n<br>\n   • ​Camera chính 50 MP\n<br>\n   • Camera góc siêu rộng 8 MP\n<br>\n   • Camera trước 32 MP\n<br>\nChip xử lý\n<br>\nDimensity 9200 5G\n<br>\nDimensity 9000+ 5G\n<br>\nThời lượng pin\n<br>\n​4300 mAh\n<br>\n4300 mAh\n<br>\nBộ nhớ\n<br>\n   • ​RAM 12 GB\n<br>\n   • ​ROM 256 GB\n<br>\n   • RAM 8 GB\n<br>\n   • ​ROM 256 GB\n<br>\nChất liệu mặt lưng\n<br>\nKính cường lực Gorilla Glass 7\n<br>\nKính cường lực Gorilla Glass 5', 1, 0, 0, 0, 1, 1),
(14, 1, 3, 'DT4', 'Điện thoại OPPO Reno10 Pro 5G', 17000000, 13990000, 1, 'dt-oppo-grey.jpg', 'dt-oppo-grey-1.jpg', 'dt-oppo-grey-2.jpg', 'dt-oppo-grey-3.jpg', 'dt-oppo-grey-4.jpg', 'dt-oppo-grey-5.jpg', '2023-11-10 17:00:00', 'Thiết kế của Reno10 Pro 5G trông rất ấn tượng với kiểu thiết kế bo cong ở mặt lưng và màn hình, điều này mang lại trải nghiệm cầm nắm thoải mái khi sử dụng để không cảm thấy bị cấn, phần viền màn hình vì thế cũng trông mỏng hơn giúp tạo nên một tổng thể sang trọng và cực kỳ bắt mắt.\r\n\r\nVới mặt lưng được làm bằng kính, vì thế Reno10 Pro 5G có thêm sự sang trọng và hiện đại, kèm theo đó là khả năng chống bám vân tay và bụi bẩn tốt giúp máy có thể mới mẻ mà không cần vệ sinh nhiều.', 'Trôi nhanh thời gian (Time Lapse)\nQuay chậm (Slow Motion)\nXóa phông\nBan đêm (Night Mode)\nZoom quang học\nGóc siêu rộng (Ultrawide)\nLàm đẹp\nNhãn dán (AR Stickers)\nGoogle Lens\nZoom kỹ thuật số\nBộ lọc màu\nQuét tài liệu\nQuay video hiển thị kép', 'Màn hình AMOLED, 6.7\", Full HD+\n<br>\nChip Snapdragon 778G 5G\n<br>\nRAM: 12 GB\n<br>\nDung lượng: 256 GB\n<br>\nCamera sau: Chính 50 MP & Phụ 32 MP, 8 MP\n<br>\nCamera trước: 32 MP\n<br>\nPin 4600 mAh, Sạc 80 W <br> <br>\nHiệu năng của chiếc điện thoại OPPO này cũng rất mạnh mẽ với hệ điều hành Android 13, chip Qualcomm Snapdragon 778G, RAM 12 GB và bộ nhớ trong 256 GB. Người dùng có thể yên tâm sử dụng Reno10 Pro 5G để chơi game, xem phim hay làm việc một cách thoải mái và mượt mà. <br> <br>\nPin của Reno10 Pro 5G có dung lượng 4600 mAh và hỗ trợ sạc nhanh 80 W, giúp người dùng có thể sử dụng máy trong thời gian dài mà không lo hết pin. Ngoài ra, tính năng sạc nhanh còn giúp người dùng tiết kiệm thời gian khi sạc pin cho máy bởi chỉ mất đâu đó chưa đầy 1 tiếng là đã có thể sạc đầy được điện thoại. <br> <br>', 0, 1, 0, 0, 1, 1),
(15, 1, 2, 'DT5', 'Điện thoại Samsung Galaxy S23+ 5G 256GB', 19990000, 17990000, 1, 'dt-samsung-den.jpg', 'dt-samsung-den-1.jpg', 'dt-samsung-den-2.jpg', 'dt-samsung-den-3.jpg', 'dt-samsung-den-4.jpg', 'dt-samsung-den-5.jpg', '2023-11-07 17:00:00', 'Samsung Galaxy S23+ 5G 256GB là chiếc điện thoại thuộc dòng cao cấp nhất của Samsung được giới thiệu vào tháng 02/2023. Máy sở hữu một vài điểm ấn tượng như camera có khả năng quay video 8K, cùng với đó là con chip Snapdragon 8 Gen 2 mạnh mẽ hàng đầu giới điện thoại Android.', 'Tự động lấy nét (AF)\nToàn cảnh (Panorama)\nChống rung quang học (OIS)\nChuyên nghiệp (Pro)\nTrôi nhanh thời gian (Time Lapse)\nQuay chậm (Slow Motion)\nXóa phông\nBan đêm (Night Mode)\nZoom quang học', 'Màn hình Dynamic AMOLED 2X, 6.1\", Full HD+\n<br>\nChip Snapdragon 8 Gen 2 for Galaxy\n<br>\nRAM: 8 GB\n<br>\nDung lượng: 128 GB\n<br>\nCamera sau: Chính 50 MP & Phụ 12 MP, 10 MP\n<br>\nCamera trước: 12 MP\n<br>\nPin 3900 mAh, Sạc 25 W\nMàn hình Dynamic AMOLED 2X, 6.8\", Quad HD+ (2K+)\n<br>\nChip Snapdragon 8 Gen 1\n<br>\nRAM: 8 GB\n<br>\nDung lượng: 128 GB\n<br>\nCamera sau: Chính 108 MP & Phụ 12 MP, 10 MP, 10 MP\n<br>\nCamera trước: 40 MP\n<br>\nPin 5000 mAh, Sạc 45 W <br> <br>\nCó thể nói Galaxy S22 Ultra 5G chính là chiếc máy đầu tiên được tích hợp bút S Pen hoàn hảo trong một thân máy của dòng Galaxy S. Giờ đây, bạn có thể dễ dàng phác thảo, ghi chú lại những ý tưởng vô cùng nhanh chóng với độ trễ đã được cải thiện cho cảm giác viết vẽ vô cùng chân thật. <br> <br>\nHiệu năng trên Galaxy S22 Ultra 5G là điều khỏi bàn cãi khi máy sử dụng chip Snapdragon 8 Gen 1 vô cùng mạnh mẽ với tiến trình sản xuất 4 nm. Khi máy chơi game cũng chỉ ấm lên một chút ở vị trí cụm camera chứ không hoàn toàn quá nóng như những sản phẩm khác khi dùng cùng con chip này <br> <br>\nChiếc điện thoại Samsung này được trang bị 4 camera với camera chính lên đến 108 MP, camera góc siêu rộng 12 MP, 2 camera tele 10 MP hỗ trợ thu phóng quang học 10x.', 1, 0, 1, 0, 1, 1),
(16, 1, 2, 'DT6', 'Điện thoại Samsung Galaxy S22 Ultra 5G 128GB ', 30990000, 16990000, 1, 'dt-samsung-do.jpg', 'dt-samsung-do-1.jpg', 'dt-samsung-do-2.jpg', 'dt-samsung-do-3.jpg', 'dt-samsung-do-4.jpg', 'dt-samsung-do-5.jpg', '2023-11-12 17:00:00', 'Galaxy S22 Ultra 5G chiếc smartphone cao cấp nhất trong bộ 3 Galaxy S22 series mà Samsung đã cho ra mắt và lần nữa S22 Ultra 5G tiếp tục trở lại đầy ngoạn mục mang đến 1 diện mạo mới khi tích hợp bút S Pen hoàn hảo trong thân máy, trang bị vi xử lý mạnh mẽ cho các tác vụ sử dụng vô cùng mượt mà và nổi bật hơn với cụm camera không viền độc đáo mang đậm dấu ấn riêng và có mức giá bán siêu hấp dẫn.', 'Làm đẹp\nZoom kỹ thuật số\nBộ lọc màu\nLive Photo\nQuay video hiển thị kép\nGóc rộng (Wide)\nHDR\nChụp bằng giọng nói\nChụp bằng cử chỉ', 'Màn hình Dynamic AMOLED 2X, 6.8\", Quad HD+ (2K+)\n<br>\nChip Snapdragon 8 Gen 1\n<br>\nRAM: 8 GB\n<br>\nDung lượng: 128 GB\n<br>\nCamera sau: Chính 108 MP & Phụ 12 MP, 10 MP, 10 MP\n<br>\nCamera trước: 40 MP\n<br>\nPin 5000 mAh, Sạc 45 W <br> <br>\nCó thể nói Galaxy S22 Ultra 5G chính là chiếc máy đầu tiên được tích hợp bút S Pen hoàn hảo trong một thân máy của dòng Galaxy S. Giờ đây, bạn có thể dễ dàng phác thảo, ghi chú lại những ý tưởng vô cùng nhanh chóng với độ trễ đã được cải thiện cho cảm giác viết vẽ vô cùng chân thật. <br> <br>\nHiệu năng trên Galaxy S22 Ultra 5G là điều khỏi bàn cãi khi máy sử dụng chip Snapdragon 8 Gen 1 vô cùng mạnh mẽ với tiến trình sản xuất 4 nm. Khi máy chơi game cũng chỉ ấm lên một chút ở vị trí cụm camera chứ không hoàn toàn quá nóng như những sản phẩm khác khi dùng cùng con chip này <br> <br>\nChiếc điện thoại Samsung này được trang bị 4 camera với camera chính lên đến 108 MP, camera góc siêu rộng 12 MP, 2 camera tele 10 MP hỗ trợ thu phóng quang học 10x.', 0, 1, 0, 0, 1, 1),
(17, 1, 4, 'DT7', 'Điện thoại Xiaomi Redmi 12 4GB', 4290000, 3690000, 1, 'dt-xiaomi-bac.jpg', 'dt-xiaomi-bac-1.jpg', 'dt-xiaomi-bac-2.jpg', 'dt-xiaomi-bac-3.jpg', 'dt-xiaomi-bac-4.jpg', 'dt-xiaomi-bac-5.jpg', '2023-11-11 17:00:00', 'Xiaomi Redmi 12 mẫu điện thoại mới nhất được nhà Xiaomi tung ra vào tháng 06/2023 khiến cho cộng đồng đam mê công nghệ vô cùng thích thú. Máy khoác lên mình một vẻ ngoài cá tính, màn hình lớn đem đến trải nghiệm đã mắt cùng một hiệu năng ổn định với mọi tác vụ.', 'Làm đẹp\nQuay video Full HD\nQuay video HD\nXóa phông\nTrôi nhanh thời gian (Time Lapse)\nBộ lọc màu', 'Màn hình IPS LCD, 6.79\", Full HD+\n<br>\nChip MediaTek Helio G88\n<br>\nRAM: 4 GB\n<br>\nDung lượng: 128 GB\n<br>\nCamera sau: Chính 50 MP & Phụ 8 MP, 2 MP\n<br>\nCamera trước: 8 MP\n<br>\nPin 5000 mAh, Sạc 18 W\n<br> <br>\nPin 5000 mAh, Sạc 67 W <br> <br>\nThiết kế của Xiaomi Redmi 12 4GB được lấy cảm hứng từ sự tối giản khi mặt lưng được làm từ kính bóng bẩy đi cùng với thân máy khá mỏng nhẹ mang đến vẻ ngoài thời trang, trẻ trung cùng khả năng cầm nắm tốt hơn khi sử dụng trong thời gian dài. <br> <br>\nĐiện thoại RAM 4 GB tuy mức RAM không quá cao nhưng hãng cũng đã tích hợp tính năng mở rộng RAM nên vấn đề đa nhiệm trên máy không còn quá bận tâm nữa. Khi các thao tác chuyển đổi qua lại giữa tab không phải đợi load lại cũng như gặp hiện tượng giật lag. <br> <br>\nMột chi tiết đáng chú ý khác của Xiaomi Redmi 12 là viên pin lớn 5000 mAh, điện thoại có thể dễ dàng cung cấp đủ năng lượng để giữ cho thiết bị hoạt động suốt cả ngày, ngay cả khi sử dụng nhiều. ', 1, 1, 0, 0, 1, 1),
(18, 1, 4, 'DT8', 'Điện thoại Xiaomi 13T 5G 8GB', 11990000, 10990000, 1, 'dt-xiaomi-blue.jpg', 'dt-xiaomi-blue-1.jpg', 'dt-xiaomi-blue-2.jpg', 'dt-xiaomi-blue-3.jpg', 'dt-xiaomi-blue-4.jpg', 'dt-xiaomi-blue-5.jpg', '2023-10-31 17:00:00', 'Xiaomi 13T 5G là một thiết bị độc đáo được ra mắt tại thị trường Việt Nam vào tháng 09/2023. Sản phẩm này đang thu hút sự chú ý lớn từ cộng đồng người dùng, đặc biệt là những người yêu nhiếp ảnh và đang tìm kiếm một trải nghiệm độc đáo với camera nhờ sự hợp tác với Leica, một trong những thương hiệu sản xuất máy ảnh hàng đầu.', 'Làm đẹp\nQuay video Full HD\nQuay video HD\nXóa phông\nTrôi nhanh thời gian (Time Lapse)\nChụp đêm\nHDR\nToàn cảnh (Panorama)\nFlash màn hình\nQuay chậm (Slow Motion)\nHiệu ứng Bokeh\nChụp hẹn giờ\nQuay video ban đêm', 'Màn hình AMOLED, 6.67\", 1.5K\n<br>\nChip MediaTek Dimensity 8200-Ultra\n<br>\nRAM: 8 GB\n<br>\nDung lượng: 256 GB\n<br>\nCamera sau: Chính 50 MP & Phụ 50 MP, 12 MP\n<br>\nCamera trước: 20 MP\n<br>\nPin 5000 mAh, Sạc 67 W <br> <br>\nThiết kế của Xiaomi Redmi 12 4GB được lấy cảm hứng từ sự tối giản khi mặt lưng được làm từ kính bóng bẩy đi cùng với thân máy khá mỏng nhẹ mang đến vẻ ngoài thời trang, trẻ trung cùng khả năng cầm nắm tốt hơn khi sử dụng trong thời gian dài. <br> <br>\nĐiện thoại RAM 4 GB tuy mức RAM không quá cao nhưng hãng cũng đã tích hợp tính năng mở rộng RAM nên vấn đề đa nhiệm trên máy không còn quá bận tâm nữa. Khi các thao tác chuyển đổi qua lại giữa tab không phải đợi load lại cũng như gặp hiện tượng giật lag. <br> <br>\nMột chi tiết đáng chú ý khác của Xiaomi Redmi 12 là viên pin lớn 5000 mAh, điện thoại có thể dễ dàng cung cấp đủ năng lượng để giữ cho thiết bị hoạt động suốt cả ngày, ngay cả khi sử dụng nhiều. ', 0, 0, 1, 0, 1, 1),
(19, 1, 5, 'DT9', 'Điện thoại vivo V25 5G', 10490000, 6990000, 1, 'dt-vivo-vang.jpg', 'dt-vivo-vang-1.jpg', 'dt-vivo-vang-2.jpg', 'dt-vivo-vang-3.jpg', 'dt-vivo-vang-4.jpg', 'dt-vivo-vang-5.jpg', '2023-11-04 17:00:00', '2022 là một năm bùng nổ cho điện thoại V series khi nhiều sản phẩm được cho ra mắt với thông số và thiết kế rất ấn tượng, trong đó có Vivo V25 vừa được giới thiệu vào tháng 10/2022, hứa hẹn sẽ gây sốt trên thị trường công nghệ trong giai đoạn cuối năm nay nhờ tạo hình đẹp cùng hiệu năng mạnh mẽ.\r\n', 'HDR\nToàn cảnh (Panorama)\nChuyên nghiệp (Pro)\nChống rung điện tử kỹ thuật số (EIS)\nTrôi nhanh thời gian (Time Lapse)\nQuay chậm (Slow Motion)\nXóa phông\nBan đêm (Night Mode)\nSiêu độ phân giải\nLàm đẹp\nZoom kỹ thuật số\nBộ lọc màu', 'Màn hình AMOLED, 6.44\", Full HD+\n<br>\nChip MediaTek Dimensity 900 5G\nRAM: 8 GB\n<br>\nDung lượng: 128 GB\n<br>\nCamera sau: Chính 64 MP & Phụ 8 MP, 2 MP <br>\n\nCamera trước: 50 MP\n<br>\nPin 4500 mAh, Sạc 44 W <br> <br>\nMàn hình của chiếc điện thoại vivo dòng Y này được trang bị tấm nền IPS LCD với độ phân giải Full HD+ (1080 x 2388 Pixels), giúp hiển thị hình ảnh và video sắc nét, chân thực. Kích thước màn hình rộng 6.64 inch, kết hợp với tần số quét 90 Hz, mang đến trải nghiệm mượt mà và ấn tượng cho người dùng. <br> <br>\nvivo Y36 được trang bị hệ điều hành Android 13, cùng với chip xử lý Snapdragon 680 và GPU Adreno 610, giúp điện thoại hoạt động mượt mà và nhanh chóng trong việc chạy các ứng dụng và trò chơi. <br> <br>\nMáy hỗ trợ RAM 8 GB và dung lượng lưu trữ 128 GB giúp bạn thoải mái lưu trữ dữ liệu và tận hưởng trải nghiệm đa nhiệm tuyệt vời. Ngoài ra, bạn có thể mở rộng bộ nhớ qua thẻ MicroSD lên đến 1 TB, đảm bảo bạn có đủ không gian lưu trữ cho những khoảnh khắc và thông tin quan trọng.', 0, 0, 1, 0, 1, 1),
(20, 1, 5, 'DT10', 'Điện thoại vivo Y36 128GB', 6290000, 5790000, 1, 'dt-vivo-xanh.jpg', 'dt-vivo-xanh-1.jpeg', 'dt-vivo-xanh-2.jpeg', 'dt-vivo-xanh-3.jpeg', 'dt-vivo-xanh-4.jpeg', 'dt-vivo-xanh-5.jpeg', '2023-11-12 17:00:00', 'vivo Y36 128GB là một trong những sản phẩm điện thoại thông minh nổi bật và đáng chú ý của thương hiệu vivo. Với những tính năng và thông số kỹ thuật vượt trội, vivo Y36 hứa hẹn mang đến cho người dùng trải nghiệm di động đỉnh cao.', '\nHDR\nToàn cảnh (Panorama)\nChuyên nghiệp (Pro)\nChống rung điện tử kỹ thuật số (EIS)\nTrôi nhanh thời gian (Time Lapse)\nQuay chậm (Slow Motion)\nXóa phông\nBan đêm (Night Mode)\nSiêu độ phân giải\nLàm đẹp\nZoom kỹ thuật số\nBộ lọc màu', 'Màn hình AMOLED, 6.44\", Full HD+\n<br>\nChip MediaTek Dimensity 900 5G\nRAM: 8 GB\n<br>\nDung lượng: 128 GB\n<br>\nCamera sau: Chính 64 MP & Phụ 8 MP, 2 MP <br>\n\nCamera trước: 50 MP\n<br>\nPin 4500 mAh, Sạc 44 W <br> <br>\nMàn hình của chiếc điện thoại vivo dòng Y này được trang bị tấm nền IPS LCD với độ phân giải Full HD+ (1080 x 2388 Pixels), giúp hiển thị hình ảnh và video sắc nét, chân thực. Kích thước màn hình rộng 6.64 inch, kết hợp với tần số quét 90 Hz, mang đến trải nghiệm mượt mà và ấn tượng cho người dùng. <br> <br>\nvivo Y36 được trang bị hệ điều hành Android 13, cùng với chip xử lý Snapdragon 680 và GPU Adreno 610, giúp điện thoại hoạt động mượt mà và nhanh chóng trong việc chạy các ứng dụng và trò chơi. <br> <br>\nMáy hỗ trợ RAM 8 GB và dung lượng lưu trữ 128 GB giúp bạn thoải mái lưu trữ dữ liệu và tận hưởng trải nghiệm đa nhiệm tuyệt vời. Ngoài ra, bạn có thể mở rộng bộ nhớ qua thẻ MicroSD lên đến 1 TB, đảm bảo bạn có đủ không gian lưu trữ cho những khoảnh khắc và thông tin quan trọng.', 1, 0, 0, 0, 1, 1),
(21, 2, 7, 'LT1', 'Laptop HP 15s fq5229TU i3 1215U/8GB/512GB/Win11 (8U237PA)', 11190000, 0, 0, 'laptop-hp-15s.png', 'laptop-hp-15s-1.jpg', 'laptop-hp-15s-2.jpg', 'laptop-hp-15s-3.jpg', 'laptop-hp-15s-4.jpg', 'laptop-hp-15s-5.jpg', '2023-10-31 17:00:00', 'Với một mức giá thành lý tưởng, bạn đã có thể sở hữu cho mình một mẫu laptop học tập - văn phòng có hiệu năng ổn định, ngoại hình thanh lịch cùng các tính năng hiện đại. Laptop HP 15s fq5229TU i3 1215U (8U237PA) chắc chắn sẽ đáp ứng đầy đủ nhu cầu làm việc, học tập và giải trí thường ngày của sinh viên cũng như người đi làm', '\nIntel Core i3 Alder Lake\nLoại CPU\n1230U\n1215U\nSố nhân\n10\n6\nSố luồng\n12\n8\nTốc độ CPU\n1.00 GHz\n1.20 GHz\nTốc độ tối đa\nTurbo Boost 4.4 GHz\nTurbo Boost 4.4 GHz\nBộ nhớ đệm\n12 MB\n10 MB', 'CPU: i3, 1215U, 1.2GHz\n<br> \nRAM: 8 GB, DDR4 2 khe (1 khe 8 GB + 1 khe rời), 3200 MHz\n<br>\nỔ cứng: 512 GB SSD NVMe PCIe\n<br>\nMàn hình: 15.6\", Full HD (1920 x 1080)\n<br>\nCard màn hình: Card tích hợp, Intel UHD <br> <br>\n• Laptop HP sử dụng bộ vi xử lý Intel Core i3 1215U kết hợp cùng hiệu suất xử lý nâng cao của card tích hợp Intel UHD Graphics cho phép người dùng khả năng xử lý công việc trơn tru trên Word, Excel, PowerPoint,... cũng như giải trí, xem phim lướt web và chơi các tựa game nhẹ.\n<br> <br>\n• Với bộ nhớ RAM 8 GB có hỗ trợ nâng cấp tối đa 16 GB, bạn có thể mở cùng lúc nhiều tab công việc, chuyển qua lại giữa nhiều tác vụ hay vừa làm việc vừa nghe nhạc mà không bị hiện tượng đơ máy gây khó chịu. Hơn nữa, ổ cứng SSD 512 GB NVMe PCIe giúp tăng tốc độ khởi động hệ thống lên đáng kể, cũng như đem lại không gian lưu trữ thoải mái cho nhiều tệp tin.\n<br> <br>\n• Màn hình laptop kích thước 15.6 inch có độ phân giải Full HD (1920 x 1080) cho bạn tha hồ trải nghiệm nội dung với khung hình lớn, hình ảnh rõ nét và chi tiết cho làm việc và xem phim thú vị. Ngoài ra, công nghệ chống chói Anti Glare làm hạn chế đáng kể tình trạng bóng gương trên màn hình khi người dùng làm việc ngoài trời hay dưới ánh sáng mạnh.\n<br> <br>\n• Hệ thống loa kép cho chất âm to rõ, sống động, phục vụ trọn vẹn cho trải nghiệm xem phim, nghe nhạc và làm việc.\n<br> <br>\n• Laptop HP cơ bản được hoàn thiện với gam màu bạc trung tính, vỏ nhựa cứng cáp cùng kiểu dáng hiện đại để bạn có thể mang theo làm việc ở bất cứ đâu. Với khối lượng 1.69 kg, laptop dễ dàng nằm gọn trong balo cho bạn mang theo đến trường học, cơ quan hay quán coffee.', 1, 0, 1, 0, 1, 1),
(22, 2, 7, 'LT2', 'Laptop HP Envy X360 13 bf0090TU i7 1250U/16GB/512GB/Touch/Pen/Win11 (76B13PA)', 32990000, 25890000, 1, 'laptop-hp-envy.jpg', 'laptop-hp-envy-1.jpg', 'laptop-hp-envy-2.jpg', 'laptop-hp-envy-3.jpg', 'laptop-hp-envy-4.jpg', 'laptop-hp-envy-5.jpg', '2023-11-10 17:00:00', 'Laptop HP Envy X360 13 bf0090TU i7 (76B13PA) - một siêu phẩm laptop cao cấp - sang trọng đến từ nhà HP khi sở hữu những thông số kỹ thuật ấn tượng từ cấu hình mạnh mẽ, màn hình sắc nét cho đến ngoại hình tinh tế, độc đáo với thiết kế gập 360 độ linh hoạt, hứa hẹn không làm người dùng thất vọng.', 'Intel Core i5 Alder Lake\nIntel Core i3 Alder Lake\nLoại CPU\n1230U\n1215U\nSố nhân\n10\n6\nSố luồng\n12\n8\nTốc độ CPU\n1.00 GHz\n1.20 GHz\nTốc độ tối đa\nTurbo Boost 4.4 GHz\nTurbo Boost 4.4 GHz\nBộ nhớ đệm\n12 MB', 'CPU: i5, 1230U, 1.00 GHz\n<br>\nRAM: 16 GB, LPDDR4X (Onboard), 4266 MHz\n<br>\nỔ cứng: 512 GB SSD NVMe PCIe\n\nMàn hình: 13.3\", 2.8K (2880 x 1800) - OLED, Cảm ứng\n<br>\nCard màn hình: Card tích hợp, Intel Iris Xe <br> <br>\nLaptop HP Envy được trang bị với con chip Intel Core i7 1250U kết hợp cùng card Intel Iris Xe Graphics cho mình khả năng hoàn thành hiệu quả mọi tác vụ từ cơ bản cho đến nâng cao. Điểm hiệu năng mình đo được bằng công cụ Cinebench R23 với con laptop này là 1602 điểm đơn nhân và 5509 điểm đa nhân, với những thông số trên thì quá đủ để HP Envy X360 đáp ứng mình với các tác vụ Google Drive, Word, Excel,... hay chỉnh sửa hình ảnh, video, âm thanh đơn giản cũng như chơi một số tựa game. \n<br> <br>\nĐặc biệt, máy còn đạt tiêu chuẩn nền Intel Evo cho phép mình làm việc nhanh và hiệu quả hơn với các tính năng như sạc nhanh, hiệu năng mạnh mẽ,.', 1, 0, 1, 0, 1, 1),
(23, 2, 8, 'LT3', 'Laptop Asus Vivobook Go 15 E1504FA R5 7520U/16GB/512GB/Chuột/Win11 (NJ776W)', 13490000, 0, 0, 'laptop-asus-56wh.jpg', 'laptop-asus-56wh-1.jpg', 'laptop-asus-56wh-2.jpg', 'laptop-asus-56wh-3.jpg', 'laptop-asus-56wh-4.jpg', 'laptop-asus-56wh-5.jpg', '2023-11-11 17:00:00', 'Laptop Asus Vivobook Go 15 E1504FA R5 7520U (NJ776W) mang phong cách thiết kế sang trọng, hiệu năng mạnh mẽ cùng tính đa năng sử dụng, chắc chắn sẽ giúp bạn đáp ứng mọi tác vụ công việc và học tập hàng ngày một cách hiệu quả và chuyên nghiệp nhất.\r\n• Với bộ vi xử lý AMD Ryzen 5 - 7520U tiên tiến, laptop Asus Vivobook mang đến cho bạn hiệu năng vượt trội, đáp ứng nhanh chóng nhất các công việc soạn thảo văn bản, duyệt web, chạy code,... Card tích hợp AMD Radeon Graphics mạnh mẽ sẽ giúp người dùng thực hiện mượt mà các tác vụ đồ họa, xem video HD, xử lý ảnh và thậm chí là chơi các tựa game hot với mức đồ họa trung bình.', '8 GB\n16 GB\nLoại RAM\nDDR4 2 khe (1 khe 8 GB + 1 khe rời)\nDDR4 2 khe (8 GB onboard + 1 khe 8 GB)\nTốc độ Bus RAM\n3200 MHz\n3200 MHz\nHỗ trợ RAM tối đa\n32 GB\n24 GB\nỔ cứng\nHỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng (nâng cấp tối đa 1 TB)\n512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1 TB)', 'CPU: i5, 13500H, 2.6GHz\n<br>\nRAM: 16 GB, DDR4 2 khe (8 GB onboard + 1 khe 8 GB), 3200 MHz\n<br>\nỔ cứng: 512 GB SSD NVMe PCIe\n<br>\nMàn hình: 15.6\", Full HD (1920 x 1080) OLED\n<br>\nCard màn hình: Card tích hợp, Intel Iris\n<br> <br> • Với bộ vi xử lý AMD Ryzen 5 - 7520U tiên tiến, laptop Asus Vivobook mang đến cho bạn hiệu năng vượt trội, đáp ứng nhanh chóng nhất các công việc soạn thảo văn bản, duyệt web, chạy code,... Card tích hợp AMD Radeon Graphics mạnh mẽ sẽ giúp người dùng thực hiện mượt mà các tác vụ đồ họa, xem video HD, xử lý ảnh và thậm chí là chơi các tựa game hot với mức đồ họa trung bình.\n<br> <br>\n• Không chỉ vậy, bộ nhớ RAM 16 GB LPDDR5 cung cấp một hiệu suất hoạt động tối ưu, giúp bạn duyệt web, chỉnh sửa hình ảnh, đồ họa đòi hỏi nhiều tài nguyên mà không gặp phải tình trạng giật lag khó chịu. Ổ cứng SSD 512 GB của laptop này cung cấp không gian lưu trữ đủ đầy cho mọi tài liệu và tập tin của bạn. Bạn còn có thể tháo ổ SSD ra và lắp thay thế ổ có dung lượng tối đa lên đến 1 TB nếu có nhu cầu lưu trữ nhiều hơn nữa.\n<br> <br>\n• Màn hình 15.6 inch của laptop Asus cung cấp hình ảnh sắc nét với độ phân giải Full HD (1920 x 1080) và tấm nền TN. Đặc biệt, lớp phủ chống chói Anti Glare giúp bạn xem màn hình một cách thoải mái ngay cả trong môi trường sáng, giảm căng thẳng mắt hiệu quả.\n<br> <br>\n• Thêm vào đó, màn hình laptop có độ phủ màu đạt 45% NTSC còn tái hiện sắc độ cùng điểm ảnh tương đối tốt, để người dùng trải nghiệm phim ảnh chân thực và làm các công việc đồ họa một cách bán chuyên.\n<br> <br>\n• Âm thanh chất lượng cao từ công nghệ SonicMaster audio sẽ tăng cường trải nghiệm nghe nhạc, xem phim và chơi game trên máy tính, đem lại những giây phút giải trí sống động và thú vị.', 1, 0, 0, 0, 1, 1),
(24, 2, 8, 'LT4', 'Laptop Asus Vivobook 15 OLED A1505VA i5 13500H/16GB/512GB/Chuột/Win11 ', 17990000, 0, 0, 'laptop-asus-xe.jpg', 'laptop-asus-xe-1.jpg', 'laptop-asus-xe-2.jpg', 'laptop-asus-xe-3.jpg', 'laptop-asus-xe-4.jpg', 'laptop-asus-xe-5.jpg', '2023-11-11 17:00:00', 'Bạn đang tìm kiếm cho mình một mẫu laptop học tập - văn phòng mang hiệu năng xử lý mạnh mẽ, khung hình hiển thị sắc nét cùng đa dạng các tính năng hiện đại. Laptop Asus Vivobook 15 OLED A1505VA i5 13500H (L1341W) là một trong những lựa chọn hàng đầu cho việc đáp ứng hoàn hảo nhu cầu công việc, học tập cũng như giải trí thường ngày.', '16 GB\nLoại RAM\nDDR4 2 khe (1 khe 8 GB + 1 khe rời)\nDDR4 2 khe (8 GB onboard + 1 khe 8 GB)\nTốc độ Bus RAM\n3200 MHz\n3200 MHz\nHỗ trợ RAM tối đa\n32 GB\n24 GB\nỔ cứng\nHỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng (nâng cấp tối đa 1 TB)\n512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1 TB)\n512 GB SSD NVMe PCIe\nMÀN HÌNH', 'CPU: i5, 12500H, 2.5GHz\n<br>\nRAM: 8 GB, DDR4 2 khe (1 khe 8 GB + 1 khe rời), 3200 MHz\n<br>\nỔ cứng: Hỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng (nâng cấp tối đa 1 TB), 512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1 TB)\n<br>\nMàn hình: 15.6\", Full HD (1920 x 1080) , 144Hz\n<br>\nCard màn hình: Card rời, RTX 3050 4GB\n<br> <br>\nRAM 16 GB là con số lớn, mang đến khả năng đa nhiệm cao, giải quyết công việc, render video, thiết kế đồ họa, cùng chơi game không gây giật lag, đơ màn hình. Mình có thử mở hơn 10 tab Chrome cùng lúc, vừa nghe nhạc vừa viết content, chuyển tab liên tục nhưng vẫn tạo cảm giác mượt mà, không xuất hiện tình trạng lag máy. Ngoài ra, bạn có thể nâng cấp RAM 24 GB để nâng cao tối đa các công việc sử dụng nhiều tài nguyên nặng. <br> <br>\nỔ cứng SSD 512 GB NVMe PCIe đem lại khả năng khởi động máy nhanh cùng mở các ứng dụng mượt mà. Với một người sinh viên, mình cảm thấy khá hài lòng vì dung lượng này thích hợp lưu trữ các tài liệu, bài luận, thuyết trình, Excel,... <br> <br>\nNgoài ra, sở hữu tính năng bảo mật vân tay và công tắc khóa camera mang lại việc lưu trữ dữ liệu được an toàn và khả năng mở máy nhanh chóng.\n\nTrang bị các cổng giao tiếp cho khả năng kết nối nhanh chóng, đáp ứng đủ nhu cầu sử dụng của mình: HDMI, USB 2.0, Jack tai nghe 3.5 mm, USB 3.2, USB Type-C.\n\n', 0, 1, 0, 0, 1, 1),
(25, 2, 9, 'LT5', 'Laptop Apple MacBook Air 13 inch M1 2020 8-core CPU/8GB/256GB/7-core GPU (MGN63SA/A)', 19590000, 19490000, 1, 'laptop-macbook-grey.jpg', 'laptop-macbook-grey-1.jpg', 'laptop-macbook-grey-2.jpg', 'laptop-macbook-grey-3.jpg', 'laptop-macbook-grey-4.jpg', 'laptop-macbook-grey-5.jpg', '2023-10-31 17:00:00', 'Laptop Apple MacBook Air M1 2020 thuộc dòng laptop cao cấp sang trọng có cấu hình mạnh mẽ, chinh phục được các tính năng văn phòng lẫn đồ hoạ mà bạn mong muốn, thời lượng pin dài, thiết kế mỏng nhẹ sẽ đáp ứng tốt các nhu cầu làm việc của bạ', '13.3 inch\n13.6 inch\nĐộ phân giải\nRetina (2560 x 1600)\nLiquid Retina (2560 x 1664)\nTần số quét\nHãng không công bố\nHãng không công bố\nCông nghệ màn hình\nTrue Tone Technology\n400 nits\nTấm nền IPS\nLED Backlit\nTrue Tone Technology\n500 nits brightness\nWide color (P3)\n1 tỷ màu\nMàn hình cảm ứng\n', 'CPU: Apple M1\n<br>\nRAM: 8 GB\n<br>\nỔ cứng: 256 GB SSD\n<br>\nMàn hình: 13.3\", Retina (2560 x 1600)\n<br>\nCard màn hình: Card tích hợp, 7 nhân GPU <br> <br>\nĐi cùng CPU là card đồ họa tích hợp 7 nhân GPU có hiệu năng vượt trội sau nhiều bài thử nghiệm hiệu năng đồ họa của benchmark, bạn có thể sử dụng nhiều phần mềm đồ họa chuyên nghiệp, thoả sức sáng tạo nội dung, render video ổn định với chất lượng hình ảnh cao.<br> <br> \nMacBook Air được trang bị RAM 8 GB cho khả năng đa nhiệm cao, bạn có thể mở cùng lúc nhiều cửa sổ hoặc ứng dụng để phục vụ cho công việc, giải trí của mình ví dụ như vừa mở Chrome tra cứu thông tin vừa mở Word để làm việc cực kỳ tiện lợi mà không cần lo lắng là máy sẽ bị đơ.\n<br> <br>\nMacBook sở hữu ổ cứng SSD 256 GB cho tốc độ xử lý nhanh chóng, thao tác cuộn trong Safari cực mượt, đánh thức máy đang trong chế độ ngủ chỉ mất vài giây và đem đến không gian lưu trữ rộng rãi bạn cứ thoải mái lưu lại những bộ phim hay mà không lo nó sẽ chiếm chỗ của các tệp tài liệu công việc.', 0, 0, 1, 0, 1, 1),
(26, 2, 9, 'LT6', 'Laptop Apple MacBook Air 13 inch M2 2022 8-core CPU/8GB/256GB/8-core GPU (MLXY3SA/A)', 26990000, 0, 0, 'laptop-macbook-m2.jpg', 'laptop-macbook-m2-1.jpg', 'laptop-macbook-m2-2.jpg', 'laptop-macbook-m2-3.jpg', 'laptop-macbook-m2-4.jpg', 'laptop-macbook-m2-5.jpg', '2023-11-11 17:00:00', 'Sau 14 năm, ba lần sửa đổi và hai kiến trúc bộ vi xử lý khác nhau, kiểu dáng mỏng dần mang tính biểu tượng của MacBook Air đã đi vào lịch sử. Thay vào đó là một chiếc MacBook Air M2 với thiết kế hoàn toàn mới, độ dày không thay đổi tương tự như MacBook Pro, đánh bật mọi rào cản với con chip Apple M2 đầy mạnh mẽ.', '13.6 inch\nĐộ phân giải\nRetina (2560 x 1600)\nLiquid Retina (2560 x 1664)\nTần số quét\nHãng không công bố\nHãng không công bố\nCông nghệ màn hình\nTrue Tone Technology\n400 nits\nTấm nền IPS\nLED Backlit\nTrue Tone Technology\n500 nits brightness\nWide color (P3)\n1 tỷ màu', 'CPU: Apple M2, 100GB/s\n<br>\nRAM: 8 GB\n<br>\nỔ cứng: 256 GB SSD\n<br>\nMàn hình: 13.6\", Liquid Retina (2560 x 1664)\n<br>\nCard màn hình: Card tích hợp, 8 nhân GPU <br> <br>\nBộ vi xử lý Apple M2 tuy có mặt cấu tạo tương đồng với M1 nhưng hiệu suất hoạt động cao hơn 18% và nhanh hơn 1.9 lần so với các dòng laptop sở hữu bộ vi xử lý 10 lõi khác, dư sức cân mọi tác vụ từ học tập, làm việc đến đồ họa đến kỹ thuật chuyên sâu. Đồ họa GPU 8 nhân cho khả năng hoạt động mạnh mẽ hơn 35%, xử lý lên đến 15.8 nghìn tỷ tác vụ trong 1 giây nên các công việc liên quan đến hình ảnh, đồ họa, video,... đều được giải quyết rất mượt mà. <br> <br>\nBề dày 11.3 mm cùng cân nặng ấn tượng 1.24 kg sẽ là một điểm cộng hoàn hảo cho khả năng di động, luôn sẵn sàng đồng hành cùng một người dùng là sinh viên, dân văn phòng như mình đến trường học, công ty hay cũng thoải mái cho người dùng sáng tạo và đặc biệt là những chuyến công tác xa của doanh nhân.', 1, 1, 0, 0, 1, 1),
(27, 2, 10, 'LT7', 'Laptop Dell Inspiron 15 3530 i7 1355U/16GB/512GB/2GB MX550/OfficeHS/Win11 (N3530I716W1)', 17000000, 0, 0, 'laptop-dell-inspiron.jpg', 'laptop-dell-inspiron-1.jpg', 'laptop-dell-inspiron-2.jpg', 'laptop-dell-inspiron-3.jpg', 'laptop-dell-inspiron-4.jpg', 'laptop-dell-inspiron-5.jpg', '2023-10-31 17:00:00', 'Bạn là sinh viên hoặc nhân viên văn phòng muốn tìm mua một chiếc laptop phù hợp cho các tác vụ nặng công việc - học tập, laptop Dell Inspiron 15 3530 i7 1355U (N3530I716W1) với đường nét sang trọng, thông số vượt trội cùng đa tính năng hấp dẫn, là sự lựa chọn mà bạn nên cân nhắc.', '16 GB\nLoại RAM\nDDR4 2 khe (1 khe 8 GB + 1 khe rời)\nDDR4 2 khe (1 khe 8 GB + 1 khe 8 GB)\nTốc độ Bus RAM\n3200 MHz\n3200 MHz\nHỗ trợ RAM tối đa\n16 GB\n16 GB\nỔ cứng\n512 GB SSD NVMe PCIe\n512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 2 TB)\nMÀN HÌNH', 'CPU: i7, 1355U, 1.7GHz\n<br>\nRAM: 16 GB, DDR4 2 khe (1 khe 8 GB + 1 khe 8 GB), 3200 MHz\n\nỔ cứng: 512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 2 TB)\n<br>\nMàn hình: 15.6\", Full HD (1920 x 1080) , 120Hz\n<br>\nCard màn hình: Card rời, MX550 2GB\n<br> <br>\n• Bộ vi xử lý Intel Core i7 1355U đảm bảo sức mạnh xử lý vượt trội, không chỉ vận hành hoàn hảo mọi tác vụ học tập, doanh nghiệp, giải trí thường ngày mà còn đáp ứng hiệu quả cho người dùng với các chương trình học phức tạp, chạy code hoặc làm việc đồ hoạ.\n<br> <br>\n• Card rời NVIDIA GeForce MX550 2 GB cung cấp khả năng xử lý đồ hoạ tốt, giúp bạn làm việc thiết kế, sáng tạo dễ dàng trên các nền tảng: Photoshop, AI, Figma,... hoặc chơi các game hot như: LOL, Valorant, CS:GO,...\n<br> <br>\n• Với RAM 16 GB DDR4 mang đến dung lượng ấn tượng để người dùng thao tác cùng lúc hiệu quả trên nhiều ứng dụng làm việc, giải trí, đồ hoạ, chuyển qua lại linh hoạt mà không lo bị đơ hay lag.\n<br> <br>\n• Ổ cứng SSD 512 GB trên chiếc laptop học tập - văn phòng này cho người dùng đủ không gian để lưu trữ các tệp tin, dữ liệu, tài liệu học tập và công việc của mình, nâng cấp dung lượng lên đến 2 TB dễ dàng bằng cách tháo lắp. Ngoài ra, ổ SSD còn cung cấp tốc độ đọc và ghi nhanh hơn so với ổ đĩa cứng thông thường, từ đó cải thiện tốc độ truy cập và lưu trữ dữ liệu.\n<br> <br>\n• Màn hình 15.6 inch độ phân giải Full HD (1920 x 1080) đi cùng công nghệ LED Backlit cung cấp màu sắc chân thực, góc nhìn rộng, giúp người dùng có trải nghiệm giải trí tuyệt vời, màn hình lớn đặc biệt phù hợp với các công việc bàn giấy hay đồ hoạ.', 1, 0, 0, 0, 1, 1),
(28, 2, 10, 'LT8', 'Laptop Dell Vostro 15 3520 i3 1215U/8GB/512GB/120Hz/OfficeHS/Win11 (5M2TT1)', 14790000, 11990000, 1, 'laptop-dell-vostro.png', 'laptop-dell-vostro-1.jpg', 'laptop-dell-vostro-2.jpg', 'laptop-dell-vostro-3.jpg', 'laptop-dell-vostro-4.jpg', 'laptop-dell-vostro-5.jpg', '2023-11-11 17:00:00', 'Laptop Dell Vostro 15 3520 i3 1215U (5M2TT1) là một lựa chọn hoàn hảo dành cho những người tìm kiếm một thiết bị gọn gàng và đa năng. Với sự kết hợp giữa bộ vi xử lý Intel thế hệ 12 và tần số quét cao 120 Hz, đây là chiếc laptop học tập - văn phòng tuyệt vời phù hợp cho các bạn học sinh - sinh viên.', '8 GB\n16 GB\nLoại RAM\nDDR4 2 khe (1 khe 8 GB + 1 khe rời)\nDDR4 2 khe (1 khe 8 GB + 1 khe 8 GB)\nTốc độ Bus RAM\n3200 MHz\n3200 MHz\nHỗ trợ RAM tối đa\n16 GB\n16 GB\nỔ cứng\n512 GB SSD NVMe PCIe', 'CPU: i3, 1215U, 1.2GHz\n<br>\nRAM: 8 GB, DDR4 2 khe (1 khe 8 GB + 1 khe rời), 3200 MHz\n<br>\nỔ cứng: 512 GB SSD NVMe PCIe\n<br>\nMàn hình: 15.6\", Full HD (1920 x 1080) , 120Hz\n<br>\nCard màn hình: Card tích hợp, Intel UHD <br> <br> \n• Màn hình 15.6 inch với độ phân giải Full HD (1920 x 1080) có khả năng hiển thị hình ảnh chi tiết và sắc nét. Tấm nền IPS cung cấp góc nhìn rộng, công nghệ chống chói Anti Glare giúp giảm thiểu các ánh sáng phản chiếu và mờ hình ảnh. Tần số quét 120 Hz giảm thiểu hiện tượng giật hình và cải thiện trải nghiệm chơi game.\n<br> <br>\n• Laptop Dell được tích hợp công nghệ âm thanh Realtek Audio hỗ trợ âm thanh 3D, âm thanh vòm, cân bằng âm thanh, cài đặt EQ và nhiều tính năng khác để người dùng có thể tùy chỉnh âm thanh theo ý muốn của mình.\n<br> <br>\n• Laptop Dell Vostro được cài đặt hệ điều hành mới nhất của Microsoft - Windows 11, phù hợp để làm việc văn phòng, soạn thảo văn bản, tính toán và quản lý tài liệu. Bộ Office Home & Student cung cấp các ứng dụng như Word, Excel và PowerPoint để giúp người dùng tạo và chỉnh sửa tài liệu thêm dễ dàng hơn.\n<br> <br>\n• Dell Vostro 3520 được hoàn thiện với lớp vỏ màu xám thanh lịch, khối lượng 1.83 kg không quá nặng để người dùng có thể mang theo bên mình. Ngoài ra máy còn được thiết kế với bàn phím chống tràn nước giúp tăng tính bền bỉ trong quá trình sử dụng.', 0, 1, 1, 0, 1, 1),
(29, 2, 11, 'LT9', 'Laptop MSI Gaming GF63 Thin 12VE i5 12450H/8GB/512GB/6GB RTX4050/144Hz/Win11 (460VN) ', 22490000, 21490000, 1, 'laptop-msi-den.png', 'laptop-msi-den-1.jpg', 'laptop-msi-den-2.jpg', 'laptop-msi-den-3.jpg', 'laptop-msi-den-4.jpg', 'laptop-msi-den-5.jpg', '2023-11-07 17:00:00', 'Bạn đang tìm kiếm cho mình một chiếc laptop gaming vừa đáp ứng được đa nhu cầu giải trí, chơi game hay làm việc. Laptop MSI Gaming GF63 Thin 12VE i5 12450H (460VN) với hiệu năng mạnh mẽ từ chip Intel dòng H cùng card đồ họa RTX 40 series chắc chắn sẽ là trợ thủ đắc lực cùng bạn chinh phục mọi chiến trường ảo.', '8 GB\n8 GB\nLoại RAM\nDDR4 2 khe (1 khe 8 GB + 1 khe rời)\nDDR4 2 khe (1 khe 8 GB + 1 khe rời)\nTốc độ Bus RAM\n3200 MHz\n3200 MHz\nHỗ trợ RAM tối đa\n64 GB\n64 GB\nỔ cứng\n512 GB SSD NVMe PCIe Gen 4.0\nHỗ trợ khe cắm HDD SATA 2.5 inch mở rộng', 'CPU: i5, 12450H, 2GHz\n<br>\nRAM: 8 GB, DDR4 2 khe (1 khe 8 GB + 1 khe rời), 3200 MHz\n<br>\nỔ cứng: 512 GB SSD NVMe PCIe Gen 4.0, Hỗ trợ khe cắm HDD SATA 2.5 inch mở rộng\n\nMàn hình: 15.6\", Full HD (1920 x 1080) , 144Hz\n<br> <br>\nCard màn hình: Card rời, RTX 3050 4GB\n<br> <br>\n• Hệ thống tản nhiệt Cooler Boost làm máy hoạt động trong thời gian dài mà ít bị nóng lên, đảm bảo hiệu suất chơi game hay làm việc ổn định.\n<br> <br>\n• Màn hình rộng 15.6 inch với tấm nền IPS cùng độ phân giải Full HD (1920 x 1080) mang đến không gian hiển thị rộng lớn, bao quát, hình ảnh rõ nét cho bạn trải nghiệm những trận game sống động thú vị.\n<br> <br>\n• Bên cạnh đó, tần số quét cao 144 Hz giúp giảm thiểu tối đa hiện tượng xé hình hay trễ ảnh, các game thủ có thể tận hưởng giờ phút chơi game mượt mà, không lo bỏ lỡ các chuyển động nhỏ nhất của đối thủ. Công nghệ chống chói Anti Glare cũng hạn chế tình trạng bóng gương khi bạn sử dụng máy ở nơi có độ sáng cao.\n<br> <br>\n• Loa đạt tiêu chuẩn Hi-Res tích hợp cùng công nghệ Nahimic Audio giúp máy có khả năng giả lập âm thanh vòm, chất âm có tần số cao, rõ ràng và sống động cho bạn trải nghiệm chơi game, xem phim hay nghe nhạc y như thật.\n<br> <br>\n• Laptop MSI Gaming GF Thin được thiết kế đẹp mắt, hầm hố và không kém phần cuốn hút chuẩn gaming, nắp lưng và chiếu nghỉ tay của máy bằng kim loại mang đến tính chắc chắn trong quá trình sử dụng. Hơn nữa, đèn nền bàn phím là đơn sắc đỏ, tạo nhiều cảm hứng mỗi khi bước vào trận game.\n<br> <br>\n• Thiết bị cũng có đầy đủ các cổng giao tiếp như: HDMI, Jack 3.5 mm, USB 3.2, USB Type-C và LAN RJ45 hỗ trợ kết nối thuận lợi với đa thiết bị ngoại vi.', 0, 1, 0, 0, 1, 1),
(30, 2, 11, 'LT10', 'Laptop MSI Gaming GF63 Thin 11UC i7 11800H/8GB/512GB/4GB RTX3050/144Hz/Win11 (1228VN) ', 20490000, 19590000, 1, 'laptop-msi-11800.jpg', 'laptop-msi-11800-1.jpg', 'laptop-msi-11800-2.jpg', 'laptop-msi-11800-3.jpg', 'laptop-msi-11800-4.jpg', 'laptop-msi-11800-5.jpg', '2023-11-12 17:00:00', 'Laptop MSI Gaming GF63 Thin 11UC i7 11800H (1228VN) được trang bị bộ vi xử lý Intel Core i7 dòng H hiệu năng cao và card đồ họa NVIDIA mạnh mẽ, đáp ứng mọi nhu cầu của game thủ và người dùng làm trong ngành sáng tạo nội dung.\r\n• CPU Intel Core i7 11800H đảm bảo cho việc xử lý nhanh chóng các tác vụ đòi hỏi khả năng tính toán cao và ổn định, tối ưu hóa cho công việc cũng như chơi game. GPU NVIDIA GeForce RTX 3050 Max-Q, 4 GB cho phép bạn chơi game ở độ phân giải cao, tốc độ khung hình nhanh mà không bị giật lag.', '8 GB\nLoại RAM\nDDR4 2 khe (1 khe 8 GB + 1 khe rời)\nDDR4 2 khe (1 khe 8 GB + 1 khe rời)\nTốc độ Bus RAM\n3200 MHz\n3200 MHz\nHỗ trợ RAM tối đa\n64 GB\n64 GB\nỔ cứng\n512 GB SSD NVMe PCIe Gen 4.0\nHỗ trợ khe cắm HDD SATA 2.5 inch mở rộng\n512 GB SSD NVMe PCIe\nHỗ trợ khe cắm SATA 2.5 inch mở rộng (nâng cấp SSD hoặc HDD đều được)', 'CPU: i7, 11800H, 2.30 GHz\n<br>\nRAM: 8 GB, DDR4 2 khe (1 khe 8 GB + 1 khe rời), 3200 MHz\n<br> <br>\nỔ cứng: 512 GB SSD NVMe PCIe, Hỗ trợ khe cắm SATA 2.5 inch mở rộng (nâng cấp SSD hoặc HDD đều được)\n\nMàn hình: 15.6\", Full HD (1920 x 1080) , 144Hz\n<br>\nCard màn hình: Card rời, RTX 3050 Max-Q, 4GB <br> <br>\n\n• CPU Intel Core i7 11800H đảm bảo cho việc xử lý nhanh chóng các tác vụ đòi hỏi khả năng tính toán cao và ổn định, tối ưu hóa cho công việc cũng như chơi game. GPU NVIDIA GeForce RTX 3050 Max-Q, 4 GB cho phép bạn chơi game ở độ phân giải cao, tốc độ khung hình nhanh mà không bị giật lag.\n<br> <br>\n• Laptop MSI Gaming GF Thin được trang bị bộ nhớ RAM DDR4 dung lượng 8 GB và ổ cứng SSD PCIe NVMe dung lượng 512 GB, giúp cho máy khởi động nhanh, chạy ứng dụng mượt mà. Ngoài ra bạn cũng có thể nâng cấp dung lượng RAM lên tối đa 64 GB để tăng cường hiệu suất đa nhiệm và xử lý dữ liệu.\n<br> <br>\n• Màn hình IPS 15.6 inch độ phân giải Full HD (1920 x 1080) và tốc độ làm mới 144 Hz cung cấp cho bạn không gian hiển thị rõ nét, khung hình chuyển động mượt mà, góc nhìn rộng lên đến 178 độ. Từ đó nâng cao trải nghiệm chơi game, xem phim hành động thêm trơn tru và sống động hơn.\n<br> <br>\n• Công nghệ Realtek High Definition Audio hỗ trợ các định dạng âm thanh với độ phân giải cao lên đến 24 bit, cung cấp cho bạn chất lượng âm thanh rõ ràng và chi tiết. Đồng thời cũng có khả năng khuếch đại âm thanh giúp trải nghiệm giải trí thêm thích thú hơn.\n<br> <br>\n• Vỏ máy được làm bằng kim loại đen bóng, mang đến vẻ ngoài hấp dẫn và đậm chất thể thao. Bàn phím của laptop được thiết kế với đèn nền đỏ, giúp bạn dễ dàng sử dụng trong điều kiện thiếu ánh sáng.\n<br> <br>\n• Với khối lượng 1.86 kg, MSI Gaming GF63 là một trong những mẫu laptop gaming có thiết kế mỏng nhẹ và dễ dàng mang theo khi di chuyển. Bên cạnh đó máy cũng được trang bị công tắc khóa camera, cho phép bạn tắt hoặc bật camera theo cách thủ công nhanh chóng, dễ dàng. \n', 1, 0, 0, 0, 1, 1),
(31, 3, 12, 'TL1', 'Máy tính bảng iPad Air 5 M1 WiFi Cellular 64GB', 17490000, 0, 0, 'ipad-pink.jpg', 'ipad-pink-1.jpg', 'ipad-pink-2.jpg', 'ipad-pink-3.jpg', 'ipad-pink-1.jpg', 'ipad-pink-2.jpg', '2023-10-31 17:00:00', 'So với chiếc iPad Air 5 M1 WiFi 64GB thì chiếc iPad Air 5 M1 WiFi Cellular 64GB đã có một điểm khác biệt đáng kể đó là phương thức kết nối khi bạn vừa có thể sử dụng Wifi và mạng di động một cách bình thường nhưng vẫn cho một trải nghiệm rất tuyệt vời.', NULL, NULL, 0, 1, 0, 0, 1, 1),
(32, 3, 12, 'TL2', 'Máy tính bảng iPad Pro M2 11 inch WiFi 128GB ', 20190000, NULL, 0, 'ipad-prom2.jpg', 'ipad-prom2-1.jpg', 'ipad-prom2-2.jpg', 'ipad-prom2-3.jpg', 'ipad-prom2-4.jpg', 'ipad-prom2-5.jpg', '0000-00-00 00:00:00', 'Cơn sốt của iPhone 14 series chưa kịp lắng xuống thì mới đây nhà Apple lại vừa tung ra bộ sản phẩm tablet cho năm 2022 với nhiều điểm thu hút. Con chip Apple M2 từng khuấy đảo thị trường laptop bây giờ đã được xuất hiện trên iPad Pro M2 11 inch WiFi 128GB, nó quả thực là một tin chấn động trong giới công nghệ bởi đây có thể là chiếc máy tính bảng có hiệu năng vô đối trên thị trường (10/2022).', NULL, NULL, 0, 0, 1, 0, 1, 1),
(33, 3, 13, 'TL3', 'Máy tính bảng Samsung Galaxy Tab S9+ WiFi 256GB', 20990000, NULL, 0, 'tablet-samsung.jpg', 'tablet-samsung-1.jpg', 'tablet-samsung-2.jpg', 'tablet-samsung-3.jpg', 'tablet-samsung-4.jpg', 'tablet-samsung-5.jpg', '2023-11-11 17:00:00', 'Tại sự kiện Unpacked 2023 diễn ra tại Hàn Quốc, Samsung đã trình làng mẫu máy tính bảng Samsung Galaxy S thế hệ tiếp theo. Samsung Galaxy Tab S9+ WiFi 256GB sở hữu hiệu năng mạnh mẽ, màn hình hiển thị sắc nét và điểm đặc biệt đây là máy có khả năng kháng nước IP68 cùng nhiều tính năng hấp dẫn khác.', NULL, NULL, 0, 0, 1, 0, 1, 1),
(34, 3, 13, 'TL4', 'Máy tính bảng Samsung Galaxy Tab S9 WiFi (8GB/128GB)', 15190000, NULL, 0, 'tablet-samsung-bacxiu.jpg', 'tablet-samsung-bacxiu-1.jpg', 'tablet-samsung-bacxiu-2.jpg', 'tablet-samsung-bacxiu-3.jpg', 'tablet-samsung-bacxiu-4.jpg', 'tablet-samsung-bacxiu-5.jpg', '2023-11-02 17:00:00', 'Cuối cùng Samsung Galaxy Tab S9 WiFi 128GB cũng đã chính thức ra mắt tại thị trường Việt Nam vào tháng 07/2023, đây được xem là một sự trở lại đầy ấn tượng khi hãng nâng cấp mạnh về hiệu năng cũng như cải tiến pin và màn hình tốt hơn so với thế hệ tiền nhiệm, hứa hẹn mang lại trải nghiệm tuyệt vời cho mọi tác vụ.', NULL, NULL, 1, 0, 0, 0, 1, 1),
(35, 3, 14, 'TL5', 'Máy tính bảng Xiaomi Redmi Pad (4GB/128GB)', 5490000, NULL, 0, 'tablet-xiaomi-den.jpg', 'tablet-xiaomi-den-1.jpg', 'tablet-xiaomi-den-2.jpg', 'tablet-xiaomi-den-3.jpg', 'tablet-xiaomi-den-1.jpg', 'tablet-xiaomi-den-3.jpg', '2023-11-07 17:00:00', 'Xiaomi Redmi Pad (4GB/128GB) được xem là cái tên rất đáng mong đợi trên thị trường máy tính bảng giá rẻ hiện nay, máy được ra mắt vào đầu tháng 10/2022 với một mức giá bán khá ấn tượng, đi kèm là màn hình kích thước lớn, hiệu năng ổn định cùng một viên pin dung lượng khủng.', NULL, NULL, 0, 1, 0, 0, 1, 1),
(36, 3, 14, 'TL6', 'Máy tính bảng Xiaomi Redmi Pad (4GB/128GB) ', 5490000, NULL, 0, 'tablet-xiaomi-hehe.jpg', 'tablet-xiaomi-hehe-1.jpg', 'tablet-xiaomi-hehe-2.jpg', 'tablet-xiaomi-hehe-3.jpg', 'tablet-xiaomi-hehe-1.jpg', 'tablet-xiaomi-hehe2.jpg', '2023-11-10 17:00:00', 'MediaTek Helio G99 là CPU được trang bị trên chiếc máy tính bảng Xiaomi, với một hiệu năng mạnh mẽ như thì việc xử lý tốt các tác vụ từ chơi game đến công việc thì Redmi Pad đều có thể đáp ứng dễ dàng. Là một chiếc máy tính bảng RAM 4 GB nên giờ đây việc chuyển đổi qua lại giữa các ứng dụng sẽ được diễn ra mượt mà và hiếm khi gặp hiện tượng giật lag.\r\n\r\n', NULL, NULL, 0, 1, 0, 0, 1, 1),
(37, 3, 15, 'TL7', 'Máy tính bảng OPPO Pad 2', 17000000, 14990000, 1, 'tablet-oppo.jpeg', 'tablet-oppo-xanhla-1.jpg', 'tablet-oppo-xanhla-2.jpg', 'tablet-oppo-xanhla-3.jpg', 'tablet-oppo-xanhla-4.jpg', 'tablet-oppo-xanhla-5.jpg', '2023-11-08 17:00:00', 'OPPO Pad 2 là sản phẩm mới của OPPO trong công cuộc chạy đua công nghệ trên thị trường máy tính bảng. Máy thu hút được khá nhiều sự quan tâm khi trang bị một màn hình lớn, con chip mạnh trong tầm giá cùng một viên pin lớn cho trải nghiệm dài lâu mà ít khi gặp phải gián đoạn.', NULL, NULL, 0, 0, 1, 0, 1, 1),
(38, 3, 15, 'TL8', 'Máy tính bảng OPPO Pad Air 128GB', 7990000, 7290000, 1, 'tablet-oppo-tim.jpeg', 'tablet-oppo-tim-1.jpg', 'tablet-oppo-tim-2.jpg', 'tablet-oppo-tim-3.jpg', 'tablet-oppo-tim-1.jpg', 'tablet-oppo-tim-2.jpg', '2023-11-04 17:00:00', 'OPPO Pad Air 128GB là một máy tính bảng đáng chú ý, được thiết kế để đáp ứng nhu cầu đa dạng của người dùng. Với một số thông tin nổi bật như màn hình lớn và hiệu năng ổn định, OPPO Pad Air có thể là lựa chọn tuyệt vời cho những người dùng cần một máy tính bảng đa năng và tiện lợi.', NULL, NULL, 0, 0, 1, 0, 1, 1),
(39, 3, 16, 'TL9', 'Máy tính bảng Lenovo Tab M9', 4390000, NULL, 0, 'tablet-lenovo-do.jpg', 'tablet-lenovo-do-1.jpg', 'tablet-lenovo-do-2.jpg', 'tablet-lenovo-do-3.jpg', 'tablet-lenovo-do-4.jpg', 'tablet-lenovo-do-5.jpg', '2023-11-11 17:00:00', 'Nhằm mang đến nhiều sự lựa chọn hơn cho dòng máy tính bảng của hãng thì mới đây Lenovo cũng đã cho ra mắt mẫu máy tính bảng Lenovo Tab M9. Máy sở hữu vẻ ngoài đơn giản tinh tế, màn hình lớn cùng một hiệu năng ổn định với các tác vụ.', NULL, NULL, 0, 1, 0, 0, 1, 1),
(40, 3, 16, 'TL10', 'Máy tính bảng Lenovo Tab M9', 4990000, 4390000, 1, 'tablet-lenovo-gen.jpg', 'tablet-lenovo-gen-1.jpg', 'tablet-lenovo-gen-2.jpg', 'tablet-lenovo-gen-3.jpg', 'tablet-lenovo-gen-4.jpg', 'tablet-lenovo-gen-5.jpg', '2023-11-11 17:00:00', 'hằm mang đến nhiều sự lựa chọn hơn cho dòng máy tính bảng của hãng thì mới đây Lenovo cũng đã cho ra mắt mẫu máy tính bảng Lenovo Tab M9. Máy sở hữu vẻ ngoài đơn giản tinh tế, màn hình lớn cùng một hiệu năng ổn định với các tác vụ.\r\nVẻ đẹp đến từ sự đơn giản', NULL, NULL, 1, 0, 0, 0, 1, 1);
INSERT INTO `product` (`id`, `id_catalog`, `id_brand`, `ma_sp`, `ten`, `gia`, `giamgia`, `sale`, `hinh`, `hinh1`, `hinh2`, `hinh3`, `hinh4`, `hinh5`, `ngaynhap`, `mota`, `tinhnang`, `chitiet`, `new`, `xemnhieu`, `banchay`, `dac_biet`, `trangthai`, `soluong`) VALUES
(41, 4, 17, 'SM1', 'Đồng hồ thông minh Samsung Galaxy Watch6 44mm', 7490000, NULL, 0, 'sm-samsung-bac.jpg', 'sm-samsung-bac-1.jpg', 'sm-samsung-bac-2.jpg', 'sm-samsung-bac-3.jpg', 'sm-samsung-bac-4.jpg', 'sm-samsung-ba5.jpg', '2023-11-11 17:00:00', 'Samsung Galaxy Watch6 44mm đã chính thức ra mắt với nhiều cải tiến từ hiệu năng đến thiết kế, đáp ứng đa dạng nhu cầu sử dụng của người dùng. Đây là phiên bản kế nhiệm của Samsung Galaxy Watch5 hứa hẹn sẽ mang đến cho bạn những trải nghiệm tốt nhất.', 'Cảm biến ánh sáng môi trường\nCảm biến địa từ\nCon quay hồi chuyển\nSamsung BioActive\nCảm biến nhiệt độ hồng ngoạiKháng nước 5 ATM (Tắm, bơi vùng nước nông)\nTiện ích khác\nBáo thức\nNghe nhạc với tai nghe Bluetooth\nMàn hình luôn hiển thị\nDự báo thời tiết\nThay mặt đồng hồ\nXem thêm\nBáo thức\nNghe nhạc với tai nghe Bluetooth\nMàn hình luôn hiển thị\nDự báo thời tiết\nThay mặt đồng hồ', 'Màn hình: SUPER AMOLED, 1.5 inch\n\nTheo dõi sức khỏe: Đo huyết áp (chỉ hỗ trợ khi kết nối với điện thoại Samsung), Điện tâm đồ (chỉ hỗ trợ khi kết nối với điện thoại Samsung), Theo dõi mức độ stress <br> <br>\n\nThông báo ứng dụng: Tin nhắn, Cuộc gọi, Messenger (Facebook) <br> <br>\nĐồng hồ thông minh Samsung được trang bị cảm biến 3 trong 1 BioActive chỉ cần sử dụng một con chip duy nhất để kích hoạt 3 cảm biến sức khỏe gồm: Cảm biến nhịp tim quang học (PPG), cảm biến điện tim (ECG) và cảm biến phân tích trở kháng điện sinh học (BIA). <br> <br>\n\nThông qua các cảm biến này bạn nắm rõ 7 chỉ số quan trọng của cơ thể gồm: Cân nặng, cơ xương, khối lượng mỡ, lượng mỡ cơ thể, lượng nước, chỉ số BMI và BMR. Bạn có thể dựa vào những thông tin này để lên kế hoạch tập luyện, nghỉ ngơi một cách phù hợp. \n\n', 0, 0, 1, 0, 1, 1),
(42, 4, 17, 'SM2', 'Đồng hồ thông minh Samsung Galaxy Watch6 LTE 44mm ', 7990000, NULL, 0, 'sm-samsung-den.jpg', 'sm-samsung-den-1.jpg', 'sm-samsung-den-2.jpg', 'sm-samsung-den-3.jpg', 'sm-samsung-den-4.jpg', 'sm-samsung-den-2.jpg', '2023-10-31 17:00:00', 'Samsung đã trình làng mẫu smartwatch mang tên Samsung Galaxy Watch6 LTE 44mm với hệ thống định vị chính xác, hỗ trợ nghe gọi độc lập, đa dạng tính năng sức khỏe và thể thao, đáp ứng nhiều mục đích sử dụng của người dùng. Samsung đã có những thay đổi về ngoại hình lẫn tính năng bên trong hứa hẹn làm hài lòng các tín đồ yêu công nghệ. ', 'Nghe gọi độc lập\nNghe gọi ngay trên đồng hồ\nTiện ích đặc biệt\nNghe nhạc\nKết nối bluetooth với tai nghe\n4G/LTE\nNghe nhạc\nKết nối bluetooth với tai nghe\nPhát hiện té ngã\nChống nước / Kháng nước\nKháng nước 5 ATM (Tắm, bơi vùng nước nông)\nKháng nước 5 ATM (Tắm, bơi vùng nước nông)\nTiện ích khác\nBáo thức\nNghe nhạc với tai nghe Bluetooth\nMàn hình luôn hiển thị\nDự báo thời tiết\nThay mặt đồng hồ', 'Màn hình: SUPER AMOLED, 1.5 inch\n\nTheo dõi sức khỏe: Đo huyết áp (chỉ hỗ trợ khi kết nối với điện thoại Samsung), Điện tâm đồ (chỉ hỗ trợ khi kết nối với điện thoại Samsung), Theo dõi mức độ stress <br> <br>\n\nThông báo ứng dụng: Tin nhắn, Cuộc gọi, Messenger (Facebook) <br> <br>\nSamsung Galaxy Watch6 sở hữu mặt đồng hồ hình tròn quen thuộc với nhiều người dùng, ở thế hệ mới này phần viền sẽ được làm mỏng hơn mang đến cảm giác liền mạch với khung viền hợp kim nhôm xung quanh tạo nên một vẻ ngoài sang trọng. <br> <br>\n\nSử dụng mặt kính Sapphire cao cấp giảm tình trạng trầy xước, nứt vỡ trong quá trình sử dụng, cho khả năng bảo vệ màn hình tốt hơn. Ngoài ra, khả năng chống chịu tác động từ môi trường của đồng hồ còn được chứng minh khi đạt độ bền chuẩn quân đội MIL-STD-810H, bạn có thể yên tâm sử dụng khi ở trong môi trường ẩm ướt, nhiều bụi bẩn', 0, 1, 1, 0, 1, 1),
(43, 4, 19, 'SM3', 'Đồng hồ thông minh Apple Watch Ultra GPS', 19990000, NULL, 0, 'sm-apple-cam.jpg', 'sm-apple-cam-1.jpg', 'sm-apple-cam-2.jpg', 'sm-apple-cam-3.jpg', 'sm-apple-cam-4.jpg', 'sm-apple-cam-2.jpg', '2023-11-03 17:00:00', 'Tại sự kiện Far Out 2022 bên cạnh những chiếc iPhone 14 series thì Apple còn giới thiệu các mẫu Apple Watch, trong đó Apple Watch Ultra GPS + Cellular 49mm viền Titanium dây Alpine size M đã gây được ấn tượng mạnh với truyền thông và người yêu công nghệ trên toàn thế giới. Liệu đây có phải là sự “lột xác” của nhà Táo, theo dõi bài viết dưới đây để có cái nhìn khách quan hơn về sản phẩm này.', 'Đo nhịp tim\nĐếm số bước chân\nTính lượng calories tiêu thụ\nĐiện tâm đồ\nTính quãng đường chạy\nTheo dõi giấc ngủ\nĐo nồng độ oxy trong máu (SpO2)\nNhắc nhở nhịp tim cao, thấp\nTheo dõi chu kỳ kinh nguyệt\nChấm điểm giấc ngủ\nGửi thông báo khi có tai nạn\nƯớc tính ngày rụng trứng', 'Màn hình: OLED, 1.92 inch\n\nTheo dõi sức khỏe: Tính quãng đường chạy, Điện tâm đồ, Đếm số bước chân\n\nChế độ luyện tập: Đi bộ, Đạp xe, Chạy bộ\n\nThông báo ứng dụng: Tin nhắn, Cuộc gọi, Messenger (Facebook)\n\n<br> <br>\nKhung viền được làm từ chất liệu Titanium cho cảm giác mát lạnh khi tiếp xúc với da, dễ dàng lau chùi và khả năng chịu lực cũng rất tốt. Mặt kính Sapphire chống trầy hiệu quả, trong quá trình sử dụng thì mình hay vứt lung tung, thường xuyên va chạm với các vật cứng nhưng vẫn chưa bị nứt vỡ, chứng tỏ độ bền khá cao.\n<br> <br>\nMặt sau của đồng hồ là phần cảm biến và đế sạc không quá khác biệt với Series 8. Ở phía trên là hai nút bấm để tháo dây đeo, Apple Watch Ultra sẽ có nhiều phiên bản dây đeo gồm: Alpine Loop, Trail Loop và Ocean Loop. Chiếc đồng hồ trên tay của mình sử dụng dây đeo Alpine Loop được làm từ hai lớp vải dệt liền mạch, nhẹ và có độ bền cao, khi đeo thì mình cảm thấy khá êm, không để lại vết hằn và khả năng thoáng khí tốt. Kèm theo đó là móc khóa chữ G làm từ Titan chống ăn mòn hiệu quả.', 1, 0, 1, 0, 1, 1),
(44, 4, 19, 'SM4', 'Đồng hồ thông minh Apple Watch Ultra 2 GPS', 21990000, NULL, 0, 'sm-apple-trang.jpg', 'sm-apple-trang-1.jpg', 'sm-apple-trang-2.jpg', 'sm-apple-trang-3.jpg', 'sm-apple-trang-4.jpg', 'sm-apple-trang-2.jpg', '2023-11-12 17:00:00', 'Apple Watch Ultra 2 GPS + Cellular 49mm viền Titanium dây Ocean là chiếc đồng hồ thông minh của Apple gây được nhiều sự chú ý của giới truyền thông và người yêu công nghệ tại sự kiện Wonderlust năm 2023. Đồng hồ sở hữu vẻ ngoài vừa thời thượng vừa đậm chất thể thao vô cùng độc đáo, các tính năng bên trong cũng có cải tiến hứa hẹn sẽ làm hài lòng sự mong đợi của người dùng.', 'Đo nhịp tim\nĐếm số bước chân\nTính lượng calories tiêu thụ\nĐiện tâm đồ\nTính quãng đường chạy\nXem thêm\nĐo nhịp tim\nĐếm số bước chân\nTính lượng calories tiêu thụ\nĐiện tâm đồ\nTính quãng đường chạy\nTheo dõi giấc ngủ\nĐo nồng độ oxy trong máu (SpO2)\nNhắc nhở nhịp tim cao, thấp\nTheo dõi chu kỳ kinh nguyệt\nChấm điểm giấc ngủ\nGửi thông báo khi có tai nạn\nƯớc tính ngày rụng trứng\nXem thêm\nTiện ích khác\nBáo thức\nTừ chối cuộc gọi\nDự báo thời tiết\nĐồng hồ bấm giờ\nThay mặt đồng hồ', 'Màn hình: OLED, 1.92 inch\n\nTheo dõi sức khỏe: Tính quãng đường chạy, Điện tâm đồ, Đếm số bước chân\n\nThông báo ứng dụng: Tin nhắn, Cuộc gọi, Messenger (Facebook) <br> <br>\nĐồng hồ thông minh được cải tiến nhiều tính năng nhằm đảm bảo an toàn cho người đeo bao gồm các tính năng sử dụng như cảm biến nhịp tim quang học, cảm biến oxy trong máu, gia tốc kế, con quay hồi chuyển và máy đo độ cao.\n<br> <br>\nNgoài ra, Apple Watch Ultra có thể phát hiện chính xác khi bạn gặp sự cố khi lái ô tô nhờ vào tính năng phát hiện va chạm. Nếu không may xảy ra tai nạn, đồng hồ sẽ gọi điện và gửi vị trí của bạn đến dịch vụ cũng như thông báo cho những người liên hệ khẩn cấp đã được cài đặt trước đó.', 1, 1, 1, 0, 1, 1),
(45, 4, 20, 'SM5', 'Đồng hồ thông minh BeFit WatchFit 46.7mm', 590000, NULL, 0, 'sm-befit-kem.jpg', 'sm-befit-kem-1.jpg', 'sm-befit-kem-2.jpg', 'sm-befit-kem-3.jpg', 'sm-befit-kem-4.jpg', 'sm-befit-kem-2.jpg', '2023-10-31 17:00:00', 'BeFit WatchFit được trang bị các chức năng sức khỏe và thể thao cơ bản, đáp ứng được nhu cầu sử dụng của người dùng phổ thông. Tuy thuộc phân khúc giá rẻ nhưng chiếc đồng hồ thông minh này vẫn được trang bị tính năng nghe gọi, đảm bảo sự thuận tiện trong quá trình sử dụng.', 'Đo nhịp tim\nĐếm số bước chân\nTheo dõi giấc ngủ\nĐo nồng độ oxy trong máu (SpO2)\nĐo huyết áp\nTìm đồng hồ\n\nBáo thức\n\nĐồng hồ bấm giờ\n\nĐiều khiển chơi nhạc\n\nĐồng hồ đếm ngược\n\nTìm điện thoại\n\nNhắc nhở\n\nĐiều khiển chụp ảnh\n\nHiển thị thông báo:\n\nLine\n\nMessenger (Facebook)\n\nZalo\n\nTin nhắn\n\nCuộc gọi', 'Màn hình: IPS, 1.57 inch\n\nTheo dõi sức khỏe: Đếm số bước chân, Đo nồng độ oxy (SpO2), Theo dõi giấc ngủ\n\nThông báo ứng dụng: Tin nhắn, Cuộc gọi, Messenger (Facebook)\n\n<br> <br>\nVề mặt thiết kế BeFit WatchFit sẽ có vài điểm khác biệt so với những mẫu smartwacth cùng hãng. Sở hữu mặt đồng hồ hình chữ nhật có kích thước 46.7 mm, các góc được bo cong mềm mại nên đối với những ai có cổ tay nhỏ như mình khi đeo cũng không bị thô. Bên cạnh phải của mặt đồng hồ có một nút bấm, khi mình thao tác thì thấy độ nảy khá tốt.\n\n<br> <br>\nĐồng hồ thông minh được trang bị màn hình cảm ứng thuận tiện trong các thao tác điều khiển. Kích thước 1.57 inch tuy không quá lớn nhưng vẫn đủ để hiển thị. Màn hình có độ phân giải 200 x 320 Pixels mang đến những nội dung rõ nét, tấm nền IPS cho màu sắc chân thật và góc nhìn rộng. Những lúc mình sử dụng ở ngoài trời thì màn hình sẽ có bóng gương nhẹ nhưng nội dung hiển thị khá tốt.', 0, 0, 1, 0, 1, 1),
(46, 4, 20, 'SM6', 'Đồng hồ thông minh BeFit Sporty 2 44.5mm Nâu', 1790000, 1090000, 1, 'sm-befit-nau.jpg', 'sm-befit-nau-1.jpg', 'sm-befit-nau-2.jpg', 'sm-befit-nau-3.jpg', 'sm-befit-nau-4.jpg', 'sm-befit-nau-2.jpg', '2023-11-02 17:00:00', 'Hãng đồng hồ thông minh BeFit đã cho ra mắt BeFit Sporty 2 dây da với kiểu dáng thời thượng, đa dạng tính năng từ sức khỏe để tập luyện, thời gian sử dụng kéo dài và trang bị nhiều tiện ích phục vụ tốt hơn cho người dùng trong cả công việc lẫn cuộc sống.', 'Đo nhịp tim\nĐếm số bước chân\nTính quãng đường chạy\nTheo dõi giấc ngủ\nĐo nồng độ oxy trong máu (SpO2)\nTheo dõi chu kỳ kinh nguyệt\nTính lượng calories tiêu thụ\nĐo huyết ápTìm đồng hồ\n\nBáo thức\n\nĐồng hồ bấm giờ\n\nĐiều khiển chơi nhạc\n\nĐồng hồ đếm ngược\n\nTìm điện thoại\n\nNhắc nhở\n\nĐiều khiển chụp ảnh\n\nHiển thị thông báo:\n\nLine\n\nMessenger (Facebook)\n\nZalo\n\nTin nhắn\n\nCuộc gọi', 'Màn hình: IPS, 1.32 inch\n\nTheo dõi sức khỏe: Tính quãng đường chạy, Đếm số bước chân, Đo nồng độ oxy (SpO2)\n\nThông báo ứng dụng: Tin nhắn, Cuộc gọi, Messenger (Facebook) <br> <br>\nLà một chiếc đồng hồ thông minh thì BeFit Sporty 2 không thể nào thiếu các chức năng theo dõi sức khỏe gồm có: Đo nhịp tim, theo dõi giấc ngủ, đo nồng độ oxy trong máu (SpO2), theo dõi chu kỳ kinh nguyệt, đo huyết áp,... giúp người dùng nắm bắt tình trạng sức khỏe một cách nhanh chóng. <br> <br>\nBên cạnh các tính năng theo dõi sức khỏe thì không thể nào thiếu các chế độ thể thao như: Đi bộ, bóng rổ, cầu lông, chạy bộ, leo núi, đạp xe, bóng đá, Yoga, bóng bàn,... đáp ứng mọi nhu cầu luyện tập của người dùng và tập luyện một cách khoa học.\n<br> <br>\nĐồng hồ thông minh BeFit Sporty 2 có thể kết nối với điện thoại sử dụng hệ điều hành từ Android 6 trở lên hoặc iOS 11 trở lên. Để liên kết hai thiết bị này với nhau thì bạn cần tải ứng dụng FitCloudPro trên điện thoại. Ứng dụng sẽ giúp đồng bộ các dữ liệu sức khỏe, luyện tập,... lên điện thoại để bạn tiện theo dõi.\n\n<br> <br>\n\nĐồng hồ sử dụng phương thức kết nối không dây Bluetooth v5.0 cho đường truyền ổn định, các thông báo, tin nhắn hoặc cuộc gọi đều được hiển thị nhanh chóng, bạn không cần phải lo lắng sẽ bỏ lỡ thông tin khi không kiểm tra điện thoại thường xuyên.\n\nBạn có thể nhận cuộc gọi ngay trên đồng hồ nhờ được trang bị loa và mic để đàm thoại, những lúc tập luyện hoặc không rảnh tay cũng không sợ bỏ qua cuộc gọi quan trọng. Đối với cuộc gọi đến từ ứng dụng thì đồng hồ chỉ hiển thị thông báo cuộc gọi đến.\n\n', 0, 1, 1, 0, 1, 1),
(47, 4, 21, 'SM7', 'Đồng hồ thông minh Xiaomi Redmi Watch 2 Lite 41.2m', 1490000, 990000, 0, 'sm-xiaomi-xanh.jpg', 'sm-xiaomi-xanh-1.jpg', 'sm-xiaomi-xanh-2.jpg', 'sm-xiaomi-xanh-3.jpg', 'sm-xiaomi-xanh-4.jpg', 'sm-xiaomi-xanh-5.jpg', '2023-11-07 17:00:00', 'Ngay từ khi ra mắt Xiaomi Redmi Watch 2 Lite đã thu hút được rất nhiều sự chú ý của người dùng bởi mức giá rẻ, thời lượng pin dài, màn hình lớn, GPS hiện đại cùng nhiều tính năng thể thao và theo dõi sức khỏe đáp ứng tốt nhu cầu của đại bộ phận người dùng phổ thông.', 'Đo nhịp tim\nĐếm số bước chân\nTính quãng đường chạy\nTheo dõi giấc ngủ\nĐo nồng độ oxy trong máu (SpO2)\nTheo dõi chu kỳ kinh nguyệt\nTheo dõi mức độ stress\nChế độ luyện tập\nTheo dõi nhịp tim 24h\nTheo dõi nhịp thở\nXem thêm', 'Màn hình: TFT, 1.55 inch  Theo dõi sức khỏe: Theo dõi mức độ stress, Tính quãng đường chạy, Đếm số bước chân  Thông báo ứng dụng: Tin nhắn, Cuộc gọi, Messenger (Facebook) <br> <br> \r\nĐồng hồ thông minh Xiaomi sở hữu màn hình 1.55 inch giúp cho thao tác vuốt chạm diễn ra mượt mà và ít bị nhầm. Công nghệ màn hình TFT tối ưu năng lượng, màu sắc chân thật tuy nhiên lúc mình nhìn nghiêng thì màu sắc của nội dung sẽ bị lệch hoặc nhạt hơn khi nhìn trực diện. <br> <br>\r\nSmartwatch được trang bị hơn 100 chế độ luyện tập thể thao, người dùng có thể thêm hoặc bỏ các chế độ để cá nhân hóa trong quá trình sử dụng. Đồng hồ có thể theo dõi các hoạt động của người dùng như một chuyên gia với hơn 17 chế độ luyện tập chuyên nghiệp gồm: Yoga, HIIT (Cardio cường độ cao), bơi lội, nhảy dây, máy chạy bộ, đạp xe,.', 0, 0, 0, 0, 1, 1),
(85, 1, 4, 'XIAO13T', 'Điện thoại Xiaomi 13T 5G 8GB ', 11990000, 10490000, 0, 'xiaomi-13t-xanh-thumb-thumb-200x200.jpg', 'xiaomi-13t-note-new.jpg', 'xiaomi-13t-xanh-2.jpg', 'xiaomi-13t-xanh-1.jpg', 'xiaomi-13t-xanh-3.jpg', NULL, '2023-12-10 15:18:16', 'Xiaomi 13T 5G là một thiết bị độc đáo được ra mắt tại thị trường Việt Nam vào tháng 09/2023. Sản phẩm này đang thu hút sự chú ý lớn từ cộng đồng người dùng...', NULL, '<p>Mặt lưng của Xiaomi 13T c&oacute; hai phi&ecirc;n bản cho bạn lựa chọn: da v&agrave; k&iacute;nh. Mặt lưng da mang đến sự sang trọng v&agrave; ấm &aacute;p, trong khi mặt lưng k&iacute;nh l&agrave; một lựa chọn hiện đại v&agrave; lịch l&atilde;m.&nbsp;</p>\r\n\r\n<p>D&ugrave; l&agrave; da hay k&iacute;nh, thiết kế mặt lưng của Xiaomi 13T đều theo kiểu phẳng v&agrave; được bo cong nhẹ ở v&ugrave;ng r&igrave;a, gi&uacute;p cầm nắm thoải m&aacute;i hơn bao giờ hết. Sự c&acirc;n nhắc trong việc bo cong r&igrave;a kh&ocirc;ng chỉ tạo điểm nhấn thẩm mỹ m&agrave; c&ograve;n mang lại cảm gi&aacute;c an to&agrave;n khi cầm nắm sản phẩm.</p>\r\n\r\n<p>Khung của Xiaomi 13T được l&agrave;m từ chất liệu kim loại cứng c&aacute;p, c&ugrave;ng với đ&oacute; l&agrave; c&aacute;ch l&agrave;m phẳng để tạo ra một sự kết hợp ho&agrave;n hảo với mặt lưng, gi&uacute;p bảo vệ tối ưu cho c&aacute;c th&agrave;nh phần b&ecirc;n trong, đảm bảo Xiaomi 13T lu&ocirc;n hoạt động ổn định v&agrave; bền bỉ với thời gian.</p>\r\n\r\n<p>Với sự hợp t&aacute;c đến từ Leica, một d&ograve;ng chữ mang t&ecirc;n thương hiệu n&agrave;y đ&atilde; được in l&ecirc;n tr&ecirc;n cụm camera, điều n&agrave;y gi&uacute;p Xiaomi 13T trở n&ecirc;n dễ nhận diện hơn v&agrave; c&ograve;n c&oacute; thể tỏa s&aacute;ng để bất kỳ ai nh&igrave;n v&agrave;o cũng biết được đ&acirc;y l&agrave; một chiếc điện thoại chụp ảnh, quay phim cao cấp.</p>\r\n', 0, 0, 0, 0, 1, 1),
(86, 1, 2, 'SAF20FE', 'Điện thoại Samsung Galaxy S20 FE (8GB/256GB) ', 7500000, 6990000, 0, 'samsung-galaxy-s20-fan-edition-xanh-la-1-org.jpeg', 'samsung-galaxy-s20-fan-edition-xanh-la-4-org.jpeg', 'samsung-galaxy-s20-fan-edition-xanh-la-5-org.jpeg', 'samsung-galaxy-s20-fan-edition-xanh-la-2-org.jpeg', 'samsung-galaxy-s20-fan-edition-xanh-la-1-org.jpeg', NULL, '2023-12-10 15:53:50', 'Samsung đã giới thiệu đến người dùng thành viên mới của dòng S20 Series đó chính là điện thoại Samsung Galaxy S20 FE. Đây là mẫu flagship cao cấp quy tụ nhiều tính năng mà Samfan yêu thích, hứa hẹn sẽ mang lại trải nghiệm cao cấp của dòng Galaxy S với mức giá dễ tiếp cận hơn.', NULL, '<p>Camera tr&ecirc;n S20 FE l&agrave; 3 cảm biến chất lượng nằm gọn trong m&ocirc; đun chữ nhật độc đ&aacute;o ở mặt lưng bao gồm: Camera ch&iacute;nh 12 MP cho chất lượng ảnh sắc n&eacute;t, camera g&oacute;c si&ecirc;u rộng 12 MP cung cấp g&oacute;c chụp tối đa v&agrave; cuối c&ugrave;ng camera tele 8 MP hỗ trợ zoom quang học 3X.</p>\r\n\r\n<p>Với hệ thống camera n&agrave;y, tất nhi&ecirc;n S20 FE sẽ kh&ocirc;ng thể thiếu những t&iacute;nh năng camera h&agrave;ng đầu như chụp x&oacute;a ph&ocirc;ng, tự động lấy n&eacute;t (AF), chống rung quang học OIS,... gi&uacute;p bạn dễ d&agrave;ng nhiếp ảnh với c&aacute;c vật thể đang di chuyển m&agrave; vẫn giữ được chất lượng khung h&igrave;nh v&agrave; độ sắc n&eacute;t cao.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 0, 0, 0, 1, 1),
(87, 1, 7, 'HHTC6', 'Điện thoại HTC Wildfire E3 lite (4GB/64GB) - Chính hãng', 2990000, 1750000, 0, 'htc.webp', 'htc-wildfire-e3-lite-blue-back-130ip.webp', 'htc-wildfire-e3-lite-blue-side.webp', 'htc-wildfire-e3-lite-blue-front-130ip.webp', 'htc-wildfire-e3-lite-grey.webp', NULL, '2023-12-10 16:08:11', 'HTC Wildfire E3 Lite được trang bị con chip Spreadtrum SC9863 có cấu tạo 8 nhân mạnh mẽ, đi kèm với đó là RAM 4GB, giúp mang đến những tác vụ mượt mà. Bên cạnh đó, chiếc điện thoại này còn sở hữu các ưu điểm như màn hình kích thước 6,5 inch rộng rãi, camera chính 13MP và viên pin có dung lượng 5000mAh, đáp ứng mọi nhu cầu sử dụng từ cơ bản đến nâng cao của người dùng.', NULL, '<p>Sau một thời gian vắng b&oacute;ng thị trường, HTC đ&atilde; trở lại với d&ograve;ng sản phẩm HTC Wildfire E3 Lite. D&ograve;ng điện thoại n&agrave;y sở hữu c&aacute;c ưu điểm vượt trội như cấu h&igrave;nh ổn định, m&agrave;n h&igrave;nh HD+, RAM 4GB,...Đặc biệt hơn cả l&agrave; HTC Wildfire E3 Lite c&oacute; một mức gi&aacute; kh&aacute; phải chăng. H&atilde;y c&ugrave;ng kh&aacute;m ph&aacute; d&ograve;ng điện thoại HTC Wildfire E3 Lite c&ugrave;ng Ho&agrave;ng H&agrave; Mobile nh&eacute;!</p>\r\n\r\n<p><strong>HTC Wildfire E3 Lite c&oacute; thiết kế hiện đại, tinh tế</strong></p>\r\n\r\n<p>Thoạt nh&igrave;n HTC Wildfire E3 Lite, bạn sẽ cảm nhận được những chi tiết tr&ecirc;n điện thoại n&agrave;y được ho&agrave;n thiện kh&aacute; tỉ mỉ, mang đến n&eacute;t tinh tế v&agrave; hiện đại. C&aacute;c g&oacute;c của điện thoại được thiết kế bo tr&ograve;n nhẹ nh&agrave;ng, tạo cảm gi&aacute;c thoải m&aacute;i cho người d&ugrave;ng mỗi khi cầm nắm. Phần mặt lưng phẳng với logo thương hiệu ngay giữa tr&ocirc;ng kh&aacute; đơn giản nhưng cũng kh&ocirc;ng k&eacute;m phần sang trọng.</p>\r\n', 0, 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `id` int(5) NOT NULL,
  `id_product` int(5) NOT NULL,
  `id_user` int(5) NOT NULL,
  `rating` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(5) NOT NULL,
  `id_product` int(5) NOT NULL,
  `stt` int(3) NOT NULL,
  `img` varchar(20) NOT NULL,
  `trangthai` tinyint(4) DEFAULT 0,
  `mota` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `id_product`, `stt`, `img`, `trangthai`, `mota`) VALUES
(13, 18, 1, 'sl1.jpg', 1, NULL),
(14, 14, 2, 'sl5.png', 1, NULL),
(15, 16, 3, 'sl6.jpg', 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `hinh` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `gioitinh` varchar(10) DEFAULT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0:Người dùng\r\n1:Admin',
  `diachi` varchar(100) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `hoivien` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: Khách hàng thường\r\n1: Khách hàng thân thiết\r\n2: Khách hàng bạc\r\n3:Khách hàng vàng\r\n4:Khách hàng bạch kim\r\n5:Khách hàng kim cương'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `hoten`, `hinh`, `email`, `gioitinh`, `role`, `diachi`, `sdt`, `hoivien`) VALUES
(1, 'thuykieuxinkgai', 'troankhung', 'Trần Thị Thúy Kiều', '', 'toan70868@gmail.com', 'Nam', 0, '14B Dũng Cua, Trung Mỹ Tây 13A, Trung Mỹ Tây, Khu Phố 5, Quận 12', '0328116190', 0),
(2, 'toan1', '1', 'T Toan', '', 'toand70868@gmail.com', 'Nữ', 0, 'Tiền Giang Nha Trangggg', '07999321321', 2),
(12, 'admin', 'techpro', 'T', NULL, 'toan@gmail.com', NULL, 1, 'đâu cũng được', '07996321312', 0),
(21, 'guests49602', '1720045327', 'das', NULL, 'dasd@gmail.com', NULL, 0, 'dsa', 'dasdas', 0),
(25, 'toan2', '1', 'T TON', NULL, 'toan70868@gmail.com', 'Nam', 0, 'eawsewq', '07999321321', 2),
(27, 'guests48934', '17200438293', 'lang', NULL, 'langdz.1646@gmail.com', NULL, 0, 'gjhkhl', '57788', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_voucher`
--

CREATE TABLE `user_voucher` (
  `id` int(5) NOT NULL,
  `id_user` int(5) NOT NULL,
  `voucher_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_voucher`
--

INSERT INTO `user_voucher` (`id`, `id_user`, `voucher_code`) VALUES
(32, 2, 'toanxinhtrai'),
(33, 2, 'abc300'),
(34, 2, 'abc500');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vouncher`
--

CREATE TABLE `vouncher` (
  `id` int(5) NOT NULL,
  `ten_vouncher` varchar(20) NOT NULL,
  `sotiengiam` int(9) NOT NULL,
  `quantity_voucher` int(5) NOT NULL DEFAULT 0,
  `end_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vouncher`
--

INSERT INTO `vouncher` (`id`, `ten_vouncher`, `sotiengiam`, `quantity_voucher`, `end_time`) VALUES
(1, 'ABC500', 500000, 7, NULL),
(2, 'ABC300', 300000, 7, NULL),
(4, 'toanxinhtrai', 1000000, 9, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(5) NOT NULL,
  `id_product` int(5) NOT NULL,
  `id_user` int(5) NOT NULL,
  `link_sp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `attribute_product`
--
ALTER TABLE `attribute_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_attributepro_product` (`id_product`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banner_product` (`id_product`);

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bill_user` (`id_user`);

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id_blog`),
  ADD KEY `fk_blog_catalog` (`madm`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_brand_catalog` (`id_catalog`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cart_user` (`id_user`),
  ADD KEY `fk_cart_product` (`id_product`),
  ADD KEY `fk_cart_bill` (`id_bill`);

--
-- Chỉ mục cho bảng `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cmt`
--
ALTER TABLE `cmt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cmt_product` (`id_product`),
  ADD KEY `fk_cmt_user` (`id_user`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_catalog` (`id_catalog`),
  ADD KEY `fk_product_brand` (`id_brand`);

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rating_product` (`id_product`),
  ADD KEY `fk_rating_user` (`id_user`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_slider_product` (`id_product`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_voucher`
--
ALTER TABLE `user_voucher`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vouncher`
--
ALTER TABLE `vouncher`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_wishlist_user` (`id_user`),
  ADD KEY `fk_wishlish_product` (`id_product`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `attribute_product`
--
ALTER TABLE `attribute_product`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `id_blog` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT cho bảng `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `cmt`
--
ALTER TABLE `cmt`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `user_voucher`
--
ALTER TABLE `user_voucher`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `vouncher`
--
ALTER TABLE `vouncher`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `attribute_product`
--
ALTER TABLE `attribute_product`
  ADD CONSTRAINT `fk_attributepro_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `banner`
--
ALTER TABLE `banner`
  ADD CONSTRAINT `banner_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `fk_bill_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `fk_blog_catalog` FOREIGN KEY (`madm`) REFERENCES `catalog` (`id`);

--
-- Các ràng buộc cho bảng `brand`
--
ALTER TABLE `brand`
  ADD CONSTRAINT `fk_brand_catalog` FOREIGN KEY (`id_catalog`) REFERENCES `catalog` (`id`);

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `fk_cart_bill` FOREIGN KEY (`id_bill`) REFERENCES `bill` (`id`),
  ADD CONSTRAINT `fk_cart_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `fk_cart_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `cmt`
--
ALTER TABLE `cmt`
  ADD CONSTRAINT `fk_cmt_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `fk_cmt_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`id_brand`) REFERENCES `brand` (`id`),
  ADD CONSTRAINT `fk_product_catalog` FOREIGN KEY (`id_catalog`) REFERENCES `catalog` (`id`);

--
-- Các ràng buộc cho bảng `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `fk_rating_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `fk_rating_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `slider`
--
ALTER TABLE `slider`
  ADD CONSTRAINT `fk_slider_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `fk_wishlish_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `fk_wishlist_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
