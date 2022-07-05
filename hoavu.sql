-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 25, 2021 lúc 10:06 AM
-- Phiên bản máy phục vụ: 10.4.16-MariaDB
-- Phiên bản PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hoavu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `album`
--

CREATE TABLE `album` (
  `maAB` int(100) NOT NULL,
  `tenAB` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Quocgia` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `album`
--

INSERT INTO `album` (`maAB`, `tenAB`, `Quocgia`) VALUES
(2, 'POP', 'Âu Mỹ'),
(3, 'Rock', 'Âu Mỹ'),
(4, 'Rap/Hip hop', 'Âu Mỹ'),
(5, 'R&B', 'Âu Mỹ'),
(6, 'Hàn Quốc', 'Châu Á'),
(7, 'Hoa Ngữ', 'Châu Á'),
(8, 'Nhạc trẻ', 'Việt Nam'),
(11, 'Nhạc trữ tình', 'Việt Nam'),
(12, 'Nhạc dance Việt', 'Việt Nam'),
(13, 'Rap Việt', 'Việt Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chude`
--

CREATE TABLE `chude` (
  `maCD` int(50) NOT NULL,
  `tenCD` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `loaiCD` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chude`
--

INSERT INTO `chude` (`maCD`, `tenCD`, `loaiCD`) VALUES
(1, 'Nhạc hot', 'Đề xuất'),
(2, 'Những bài hit', 'Đề xuất'),
(3, 'Nhạc hot Âu-Mỹ', 'Đề xuất'),
(4, 'Kpop - hit', 'Đề xuất'),
(5, 'EDM', 'Thể loại'),
(6, 'Acoustic', 'Thể loại'),
(7, 'Indie', 'Thể loại'),
(8, 'Ngày mưa', 'Tâm trạng'),
(9, 'Tình Yêu', 'Tâm trạng'),
(10, 'Âm nhạc thư giãn', 'Tâm trạng'),
(11, 'Trữ Tình & bolero', 'Thể loại'),
(12, 'Motivation', 'Tâm trạng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `list`
--

CREATE TABLE `list` (
  `maTT` int(50) NOT NULL,
  `maList` int(50) NOT NULL,
  `maBH` int(50) NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `list`
--

INSERT INTO `list` (`maTT`, `maList`, `maBH`, `dateTime`) VALUES
(1, 1, 93, '2021-04-20 12:36:46'),
(2, 3, 95, '2021-04-20 12:36:46'),
(18, 1, 73, '2021-04-20 13:28:02'),
(19, 1, 74, '2021-04-20 13:28:14'),
(20, 1, 75, '2021-04-20 13:28:34'),
(21, 1, 76, '2021-04-20 13:29:21'),
(22, 7, 73, '2021-04-20 13:29:29'),
(23, 5, 87, '2021-04-23 12:45:32'),
(24, 5, 128, '2021-04-23 12:45:38'),
(25, 5, 188, '2021-04-23 12:45:44'),
(26, 5, 185, '2021-04-23 12:45:51'),
(27, 5, 160, '2021-04-23 12:45:56'),
(28, 7, 87, '2021-04-23 12:46:06'),
(29, 7, 74, '2021-04-23 12:46:07'),
(30, 7, 186, '2021-04-23 12:46:13'),
(31, 9, 78, '2021-04-23 12:46:23'),
(32, 9, 185, '2021-04-23 12:46:29'),
(33, 9, 188, '2021-04-23 12:46:34'),
(34, 9, 193, '2021-04-23 12:46:39'),
(35, 9, 183, '2021-04-23 12:46:44'),
(36, 19, 77, '2021-04-23 12:46:58'),
(37, 19, 162, '2021-04-23 12:47:03'),
(38, 19, 167, '2021-04-23 12:47:08'),
(39, 19, 192, '2021-04-23 12:47:14'),
(40, 19, 195, '2021-04-23 12:47:18'),
(41, 20, 87, '2021-04-23 12:47:26'),
(42, 20, 194, '2021-04-23 12:47:36'),
(43, 20, 190, '2021-04-23 12:47:41'),
(44, 20, 187, '2021-04-23 12:47:46'),
(45, 20, 184, '2021-04-23 12:47:50'),
(46, 19, 183, '2021-04-23 12:47:59'),
(47, 19, 73, '2021-04-23 12:48:01'),
(48, 11, 87, '2021-04-23 12:48:11'),
(49, 11, 172, '2021-04-23 12:48:17'),
(50, 11, 160, '2021-04-23 12:48:21'),
(51, 11, 78, '2021-04-23 12:48:24'),
(52, 11, 89, '2021-04-23 12:48:28'),
(53, 11, 165, '2021-04-23 12:48:31'),
(54, 14, 78, '2021-04-23 12:48:44'),
(55, 14, 90, '2021-04-23 12:48:48'),
(56, 14, 188, '2021-04-23 12:48:54'),
(57, 14, 166, '2021-04-23 12:48:57'),
(58, 14, 74, '2021-04-23 12:49:00'),
(59, 14, 94, '2021-04-23 12:49:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `listbh`
--

CREATE TABLE `listbh` (
  `maList` int(11) NOT NULL,
  `tenList` varchar(50) NOT NULL,
  `maAB` int(50) NOT NULL,
  `Anh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `listbh`
--

INSERT INTO `listbh` (`maList`, `tenList`, `maAB`, `Anh`, `dateTime`) VALUES
(1, 'Những bài hát của Hà Anh Tuấn', 2, 'public/images/playlist/1061332173675372452476431818456362453126714o_1593518828725695475556_crop_15935189466561853890489.jpg', '2020-12-11 07:54:24'),
(3, 'Bài hát của tháng', 8, 'public/images/1607673391hinh-anh-anime-dep-8.jpg', '2020-12-11 07:54:24'),
(5, 'Nhạc hot', 2, 'public/images/160767340641498402_1930628060570421_2334997301816354118_nyeonjung.jpg', '2020-12-11 07:54:24'),
(7, 'Rock', 8, 'public/images/1607673429top-nhung-hinh-anime-dep-nhat-de-thuong-hinh-nen-anime-16.png', '2020-12-11 07:54:24'),
(9, 'Hoa Ngữ', 8, 'public/images/1607673446wallpaper-4k-hinh-nen-4k-binh-minh-tren-nui_101300409.jpg', '2020-12-11 07:54:24'),
(11, 'Nghe gì hôm nay', 8, 'public/images/1608306511wallpaper-4k-hinh-nen-4k-hai-chu-cho-vui-dua-ben-song_101308536.jpg', '2020-12-18 15:48:31'),
(12, 'Chủ nhật chill', 8, 'public/images/160830661848412054_2250208225242395_2184146180328390656_o.jpg', '2020-12-18 15:50:18'),
(14, 'Những bài hát hay của Soobin', 2, 'public/images/playlist/hinh-anh-hinh-nen-soobin-hoang-son-dep-nhat-3.png', '2020-12-21 15:47:02'),
(19, 'Mood', 2, 'public/images/playlist/vkfmvk-kefoe.jpg', '2020-12-23 05:24:17'),
(20, 'Party', 6, 'public/images/playlist/tải xuống.jpg', '2020-12-25 15:25:57'),
(21, 'Bài hát Trung Quốc hay', 7, 'public/images/playlist/1618811346Mẫutm.jpg', '2021-04-19 05:49:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaimv`
--

CREATE TABLE `loaimv` (
  `maLMV` int(50) NOT NULL,
  `tenLMV` varchar(50) NOT NULL,
  `Quocgia` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loaimv`
--

INSERT INTO `loaimv` (`maLMV`, `tenLMV`, `Quocgia`) VALUES
(1, 'Nhạc trẻ', 'Việt Nam'),
(2, 'Nhạc trữ tình', 'Việt Nam'),
(3, 'Nhạc dance Việt', 'Việt Nam'),
(4, 'Rap Việt', 'Việt Nam'),
(5, 'Pop', 'Âu Mỹ'),
(6, 'Rock', 'Âu Mỹ'),
(7, 'Rap/Hiphop', 'Âu Mỹ'),
(8, 'R&B', 'Âu Mỹ'),
(9, 'Hàn Quốc', 'Châu Á'),
(11, 'Hoa Ngữ', 'Châu Á');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mv`
--

CREATE TABLE `mv` (
  `maMV` int(50) NOT NULL,
  `tenMV` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `maLMV` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `maCS` int(50) NOT NULL,
  `Quocgia` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Anh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Link` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `mv`
--

INSERT INTO `mv` (`maMV`, `tenMV`, `maLMV`, `maCS`, `Quocgia`, `Anh`, `Link`, `dateTime`) VALUES
(14, 'Qua khung cửa sổ', '1', 61, 'Việt Nam', 'public/images/Bài hát-MV/h2.png', 'public/mv/videoplayback (25).mp4', '2020-12-26 13:16:00'),
(15, 'Cứ chill thôi', '1', 61, 'Việt Nam', 'public/images/Bài hát-MV/cuchillth.jpg', 'public/mv/videoplayback (26).mp4', '2020-12-26 13:18:32'),
(16, 'Và thế là hết', '1', 61, 'Việt Nam', 'public/images/Bài hát-MV/vathelahet.jpg', 'public/mv/videoplayback (27).mp4', '2020-12-26 13:19:24'),
(17, 'Những con đường song song', '1', 61, 'Việt Nam', 'public/images/Bài hát-MV/ncdss.jpg', 'public/mv/videoplayback (28).mp4', '2020-12-26 13:20:22'),
(18, 'Vùng ký ức', '1', 61, 'Việt Nam', 'public/images/Bài hát-MV/vungkyuc.jpg', 'public/mv/videoplayback (29).mp4', '2020-12-26 13:21:20'),
(19, 'Không phải dạng vừa đâu', '5', 54, 'Việt Nam', 'public/images/Bài hát-MV/kpdvd.jpg', 'public/mv/videoplayback (11).mp4', '2020-12-26 13:22:39'),
(22, 'Chắc ai đó sẽ về', '5', 54, 'Việt Nam', 'public/images/Bài hát-MV/chac-ai-do-se-ve-10__37716_std.jpg', 'public/mv/videoplayback (13).mp4', '2020-12-26 13:26:02'),
(24, 'Như ngày hôm qua', '5', 54, 'Việt Nam', 'public/images/Bài hát-MV/nhu-ngay-hom-qua.jpg', 'public/mv/videoplayback (15).mp4', '2020-12-26 13:40:31'),
(25, 'Hoa hải đường', '1', 59, 'Việt Nam', 'public/images/Bài hát-MV/tải xuống (13).jpg', 'public/mv/videoplayback (14).mp4', '2020-12-26 13:41:19'),
(26, 'Hồng nhan', '1', 59, 'Việt Nam', 'public/images/Bài hát-MV/cats.jpg', 'public/mv/videoplayback (16).mp4', '2020-12-26 13:42:04'),
(27, 'Bạc phận', '1', 59, 'Việt Nam', 'public/images/Bài hát-MV/tải xuống (42).jpg', 'public/mv/videoplayback (17).mp4', '2020-12-26 13:43:59'),
(28, 'Sóng gió', '1', 54, 'Việt Nam', 'public/images/Bài hát-MV/jack-bi-chan-thuong-nang-sau-canh-quay-hanh-dong-trong-mv-song-gio-18df29cf-e9c76a.jpg', 'public/mv/videoplayback (18).mp4', '2020-12-26 13:44:57'),
(29, 'Em gì ơi', '1', 59, 'Việt Nam', 'public/images/Bài hát-MV/tải xuống (12).jpg', 'public/mv/videoplayback (19).mp4', '2020-12-26 13:45:38'),
(30, 'BlackJack', '4', 58, 'Việt Nam', 'public/images/Bài hát-MV/5fc5060ec3b1c.jpg', 'public/mv/videoplayback (20).mp4', '2020-12-26 13:47:56'),
(31, 'Xin đừng lặng im', '5', 58, 'Việt Nam', 'public/images/Bài hát-MV/tải xuống (11).jpg', 'public/mv/videoplayback (21).mp4', '2020-12-26 13:48:37'),
(32, 'Phía sau một cô gái', '5', 58, 'Việt Nam', 'public/images/Bài hát-MV/148126865214673-soobinhoangson--2-.jpg', 'public/mv/videoplayback (22).mp4', '2020-12-26 13:51:56'),
(33, 'Ngày mai em đi', '5', 58, 'Việt Nam', 'public/images/Bài hát-MV/maxresdefault (6).jpg', 'public/mv/videoplayback (23).mp4', '2020-12-26 14:06:25'),
(34, 'Daydream', '5', 58, 'Việt Nam', 'public/images/Bài hát-MV/tải xuống (11).jpg', 'public/mv/videoplayback (24).mp4', '2020-12-26 14:07:07'),
(35, 'Em bỏ thuốc chưa', '1', 16, 'Việt Nam', 'public/images/Bài hát-MV/bich-phuong.jpg', 'public/mv/embothuocchua.mp4', '2020-12-26 14:12:20'),
(36, 'Gửi anh xa nhớ', '1', 16, 'Việt Nam', 'public/images/Bài hát-MV/tải xuống (10).jpg', 'public/mv/guianhxanho.mp4', '2020-12-26 14:14:06'),
(37, 'Mình yêu nhau đi', '1', 16, 'Việt Nam', 'public/images/Bài hát-MV/6d8e62a5c22e455e4d1d335828fd9f6f_1391961492.jpg', 'public/mv/minhyeunhaudi.mp4', '2020-12-26 14:15:11'),
(38, 'Sâu trong em', '1', 16, 'Việt Nam', 'public/images/Bài hát-MV/tải xuống (9).jpg', 'public/mv/sautrongem.mp4', '2020-12-26 14:17:31'),
(39, 'Đi đu đưa đi', '1', 16, 'Việt Nam', 'public/images/Bài hát-MV/tải xuống (8).jpg', 'public/mv/diduduadi.mp4', '2020-12-26 14:19:48'),
(40, 'Nơi tình yêu bắt đầu', '8', 57, 'Việt Nam', 'public/images/Bài hát-MV/buianhtuan04.jpg', 'public/mv/noitinhyeubatdau.mp4', '2020-12-26 15:47:20'),
(41, 'Nơi tình yêu kết thúc', '8', 57, 'Việt Nam', 'public/images/Bài hát-MV/mqdefault.jpg', 'public/mv/noitinhyeuketthuc.mp4', '2020-12-26 15:48:00'),
(42, 'Đường ai nấy đi', '1', 57, 'Việt Nam', 'public/images/Bài hát-MV/1605579442807.jpg', 'public/mv/duongainaydi.mp4', '2020-12-26 15:50:49'),
(43, 'Mơ hồ', '1', 57, 'Việt Nam', 'public/images/Bài hát-MV/04.jpg', 'public/mv/moho.mp4', '2020-12-26 15:51:44'),
(44, 'Phố không em', '8', 60, 'Việt Nam', 'public/images/Bài hát-MV/pho.jpg', 'public/mv/phokhongem.mp4', '2020-12-27 11:16:06'),
(45, 'Những ngày vắng em', '8', 60, 'Việt Nam', 'public/images/Bài hát-MV/nhung.jpg', 'public/mv/nhungngayvangem.mp4', '2020-12-27 11:17:13'),
(46, 'Một ngày mùa thu', '8', 60, 'Việt Nam', 'public/images/Bài hát-MV/maxresdefault (5).jpg', 'public/mv/motngaymuathu.mp4', '2020-12-27 11:18:22'),
(47, 'Faded', '6', 62, 'Âu Mỹ', 'public/images/Bài hát-MV/faded.jpg', 'public/mv/faded.mp4', '2020-12-27 11:20:14'),
(48, 'Sing me to sleep', '6', 62, 'Âu Mỹ', 'public/images/Bài hát-MV/sing-me-to-sleep-nhac-tong-hop.jpg', 'public/mv/singmetosleep.mp4', '2020-12-27 11:21:41'),
(49, 'Alone', '6', 62, 'Âu Mỹ', 'public/images/Bài hát-MV/alone.jpg', 'public/mv/alone.mp4', '2020-12-27 11:22:40'),
(50, 'All falls down', '6', 62, 'Âu Mỹ', 'public/images/Bài hát-MV/all.jpg', 'public/mv/allfallsdown.mp4', '2020-12-27 11:23:39'),
(51, 'Tired', '6', 62, 'Âu Mỹ', 'public/images/Bài hát-MV/tir.jpg', 'public/mv/tired.mp4', '2020-12-27 11:24:37'),
(52, 'Yummy', '5', 63, 'Âu Mỹ', 'public/images/Bài hát-MV/yummy.jpg', 'public/mv/yummy.mp4', '2020-12-27 11:25:50'),
(53, 'What do you mean', '5', 63, 'Âu Mỹ', 'public/images/Bài hát-MV/whar.jpg', 'public/mv/whatdoyoumean.mp4', '2020-12-27 11:26:45'),
(54, 'Uptown Funk', '7', 64, 'Âu Mỹ', 'public/images/Bài hát-MV/up.jpg', 'public/mv/uptownfunk.mp4', '2020-12-27 11:27:57'),
(55, 'Lazy song', '7', 64, 'Việt Nam', 'public/images/Bài hát-MV/lazy.jpg', 'public/mv/lazysong.mp4', '2020-12-27 11:28:50'),
(56, 'When I was your man', '8', 64, 'Âu Mỹ', 'public/images/Bài hát-MV/flower.jpg', 'public/mv/wheniwas.mp4', '2020-12-27 11:29:56'),
(57, 'Born to die', '8', 65, 'Âu Mỹ', 'public/images/Bài hát-MV/bo.jpg', 'public/mv/borntodie.mp4', '2020-12-27 11:31:25'),
(58, 'Summertime sadness', '8', 65, 'Âu Mỹ', 'public/images/Bài hát-MV/sum.jpg', 'public/mv/summertime.mp4', '2020-12-27 11:32:15'),
(59, 'Young and beautiful', '8', 65, 'Âu Mỹ', 'public/images/Bài hát-MV/yu.jpg', 'public/mv/youngn.mp4', '2020-12-27 11:33:23'),
(60, 'West coast', '8', 65, 'Âu Mỹ', 'public/images/Bài hát-MV/we.jpg', 'public/mv/westcoast.mp4', '2020-12-27 11:34:44'),
(61, 'Dark paradise', '8', 65, 'Âu Mỹ', 'public/images/Bài hát-MV/da.jpg', 'public/mv/darkparadise.mp4', '2020-12-27 11:35:43'),
(62, 'Give me your heart a break', '5', 66, 'Âu Mỹ', 'public/images/Bài hát-MV/Give-Your-Heart-a-Break-n.jpg', 'public/mv/givemeurheart.mp4', '2020-12-27 11:36:46'),
(63, 'Confident', '5', 66, 'Âu Mỹ', 'public/images/Bài hát-MV/confidentcovera.jpg', 'public/mv/confident.mp4', '2020-12-27 11:37:58'),
(64, 'Made in the USA', '5', 66, 'Âu Mỹ', 'public/images/Bài hát-MV/0.jpg', 'public/mv/madeintheusa.mp4', '2020-12-27 11:39:00'),
(65, 'When a man gotta do', '6', 67, 'Âu Mỹ', 'public/images/Bài hát-MV/gotta.jpg', 'public/mv/whenaman.mp4', '2020-12-27 11:40:02'),
(66, 'When you look me in the eyes', '8', 67, 'Âu Mỹ', 'public/images/Bài hát-MV/eyes.jpg', 'public/mv/whenyoulook.mp4', '2020-12-27 11:41:45'),
(67, 'Sugar', '5', 68, 'Âu Mỹ', 'public/images/Bài hát-MV/sugar.jpg', 'public/mv/sugar.mp4', '2020-12-27 11:43:01'),
(68, 'Break my heart', '5', 70, 'Âu Mỹ', 'public/images/Bài hát-MV/tải xuống (19).jpg', 'public/mv/breakur.mp4', '2020-12-27 11:44:28'),
(69, 'New rules', '5', 70, 'Âu Mỹ', 'public/images/Bài hát-MV/new.jpg', 'public/mv/newrules.mp4', '2020-12-27 11:45:22'),
(70, 'IDGAF', '5', 70, 'Âu Mỹ', 'public/images/Bài hát-MV/id.jpg', 'public/mv/idgaf.mp4', '2020-12-27 11:46:30'),
(71, 'Blinding lights', '5', 71, 'Âu Mỹ', 'public/images/Bài hát-MV/bl.jpg', 'public/mv/blinding.mp4', '2020-12-27 11:47:52'),
(72, 'Call out my name', '5', 71, 'Âu Mỹ', 'public/images/Bài hát-MV/call.jpg', 'public/mv/callout.mp4', '2020-12-27 11:48:48'),
(73, 'After hours', '5', 71, 'Âu Mỹ', 'public/images/Bài hát-MV/af.jpg', 'public/mv/afterhours.mp4', '2020-12-27 11:49:46'),
(74, 'Hello', '8', 72, 'Âu Mỹ', 'public/images/Bài hát-MV/hello.jpg', 'public/mv/hello.mp4', '2020-12-27 11:50:35'),
(75, 'Rolling in the deep', '8', 72, 'Âu Mỹ', 'public/images/Bài hát-MV/ro.jpg', 'public/mv/rolling.mp4', '2020-12-27 11:51:24'),
(76, 'Someone like you', '8', 72, 'Âu Mỹ', 'public/images/Bài hát-MV/so.jpg', 'public/mv/solikeyou.mp4', '2020-12-27 11:52:17'),
(77, 'Set fire to the rain', '8', 72, 'Âu Mỹ', 'public/images/Bài hát-MV/set.jpg', 'public/mv/setfiretotherain.mp4', '2020-12-27 11:53:16'),
(78, 'Ice cream', '9', 77, 'Châu Á', 'public/images/Bài hát-MV/ice.jpg', 'public/mv/videoplayback (7).mp4', '2020-12-27 11:56:39'),
(79, 'Kill this love', '9', 77, 'Châu Á', 'public/images/Bài hát-MV/kill.jpg', 'public/mv/videoplayback (6).mp4', '2020-12-27 11:57:45'),
(80, 'How you like that', '9', 77, 'Châu Á', 'public/images/Bài hát-MV/how.jpg', 'public/mv/how.jpg', '2020-12-27 12:19:57'),
(81, 'Lovesick girl', '9', 73, 'Châu Á', 'public/images/Bài hát-MV/lovesi.jpg', 'public/mv/love.mp4', '2020-12-27 12:21:05'),
(82, 'Ddu-du ddu-du', '9', 73, 'Châu Á', 'public/images/Bài hát-MV/dudu.jpg', 'public/mv/dudu.mp4', '2020-12-27 12:22:02'),
(83, 'Love scenario', '9', 76, 'Châu Á', 'public/images/Bài hát-MV/sc.jpg', 'public/mv/lovesc.mp4', '2020-12-27 12:27:42'),
(84, 'Killing me', '9', 73, 'Châu Á', 'public/images/Bài hát-MV/ki.jpg', 'public/mv/killing.mp4', '2020-12-27 12:29:31'),
(85, 'Roly poly', '9', 75, 'Châu Á', 'public/images/Bài hát-MV/roly.jpg', 'public/mv/ro.mp4', '2020-12-27 12:30:55'),
(86, 'Lovey dovey', '9', 75, 'Châu Á', 'public/images/Bài hát-MV/lovey.png', 'public/mv/lovey.mp4', '2020-12-27 12:32:11'),
(87, 'Cry cry', '9', 75, 'Châu Á', 'public/images/Bài hát-MV/cry.jpg', 'public/mv/cry.mp4', '2020-12-27 12:33:07'),
(88, 'Sugar free', '9', 75, 'Châu Á', 'public/images/Bài hát-MV/su.jpg', 'public/mv/sugarfree.mp4', '2020-12-27 12:34:10'),
(89, 'Bang bang bang', '9', 74, 'Châu Á', 'public/images/Bài hát-MV/bang.jpg', 'public/mv/bang.mp4', '2020-12-27 12:35:27'),
(90, 'Fxxk it', '9', 74, 'Châu Á', 'public/images/Bài hát-MV/f.jpg', 'public/mv/fxxk.mp4', '2020-12-27 12:36:46'),
(91, 'Haru haru', '9', 74, 'Châu Á', 'public/images/Bài hát-MV/haru.jpg', 'public/mv/haru.mp4', '2020-12-27 12:37:47'),
(92, 'Fantastic baby', '9', 74, 'Châu Á', 'public/images/Bài hát-MV/fan.jpg', 'public/mv/fan.mp4', '2020-12-27 12:39:24'),
(93, 'I like that', '9', 79, 'Châu Á', 'public/images/Bài hát-MV/ilike.jpg', 'public/mv/ilikethat.mp4', '2020-12-27 12:49:48'),
(94, 'Loving you', '9', 79, 'Châu Á', 'public/images/Bài hát-MV/lo.jpg', 'public/mv/lovingu.mp4', '2020-12-27 12:50:47'),
(95, 'Starry night', '9', 78, 'Châu Á', 'public/images/Bài hát-MV/st.jpg', 'public/mv/starrynight.mp4', '2020-12-27 12:51:56'),
(96, 'I am the best', '9', 73, 'Châu Á', 'public/images/Bài hát-MV/iam.jpg', 'public/mv/iamthebest.mp4', '2020-12-27 12:53:13'),
(97, 'Come back home', '9', 73, 'Châu Á', 'public/images/Bài hát-MV/come.jpg', 'public/mv/comebackhome.mp4', '2020-12-27 12:54:40'),
(98, 'Fire', '9', 73, 'Châu Á', 'public/images/Bài hát-MV/fire.jpg', 'public/mv/fire.mp4', '2020-12-27 12:55:29'),
(99, 'Lonely', '9', 73, 'Châu Á', 'public/images/Bài hát-MV/lonely.jpg', 'public/mv/lonely.mp4', '2020-12-27 12:56:22'),
(100, 'Từ khi có anh', '11', 80, 'Châu Á', 'public/images/Bài hát-MV/1.jpg', 'public/mv/tukhi.mp4', '2020-12-27 13:32:25'),
(101, 'Có một cô gái', '11', 80, 'Châu Á', 'public/images/Bài hát-MV/2.jpg', 'public/mv/com.mp4', '2020-12-27 13:33:01'),
(102, 'Chuyến tàu ly biệt', '11', 80, 'Châu Á', 'public/images/Bài hát-MV/3.jpg', 'public/mv/chuyen.mp4', '2020-12-27 13:33:40'),
(103, 'My boo', '11', 81, 'Châu Á', 'public/images/Bài hát-MV/4.jpeg', 'public/mv/myboo.mp3', '2020-12-27 15:17:01'),
(104, 'Tôi quản gì cậu', '9', 82, 'Châu Á', 'public/images/Bài hát-MV/7.jpg', 'public/mv/toiquan.mp4', '2020-12-27 15:17:42'),
(105, 'Tề thiên đại thánh', '11', 82, 'Châu Á', 'public/images/Bài hát-MV/9.jpg', 'public/mv/tethienn.mp4', '2020-12-27 15:18:13'),
(106, 'Khác loài', '11', 82, 'Châu Á', 'public/images/Bài hát-MV/9.jpg', 'public/mv/khac.mp4', '2020-12-27 15:18:49'),
(108, 'Muộn rồi sao mà còn ', '1', 54, 'Việt Nam', 'public/images/Bài hát-MV/1621928946mr3.jpg', 'public/mv/1621928946y2mate.com - SƠN TÙNG MTP  MUỘN RỒI MÀ SAO CÒN  OFFICIAL MUSIC VIDEO_v720P.mp4', '2021-05-25 07:49:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nghesi`
--

CREATE TABLE `nghesi` (
  `maCS` int(50) NOT NULL,
  `tenCS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Quocgia` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gioithieu` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Anh` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nghesi`
--

INSERT INTO `nghesi` (`maCS`, `tenCS`, `Quocgia`, `Gioithieu`, `Anh`, `dateTime`) VALUES
(16, 'Bích Phương', 'Việt Nam', '<p>B&iacute;ch Phương l&agrave; ca sĩ trưởng th&agrave;nh từ cuộc thi Việt Nam Idol 2010. Năm 2011, c&ocirc; nổi l&ecirc;n như 1 hiện tượng với h&agrave;ng loạt những ca kh&uacute;c Pop Ballad mang giai điệu trữ t&igrave;nh, lời ca đi s&acirc;u v&agrave;o l&ograve;ng người như: Vẫn, C&oacute; khi n&agrave;o rời xa, K&iacute; ức ngủ qu&ecirc;n, v..v..</p>\r\n', 'public/images/Ca sĩ/Bích Phương.jpg', '2020-12-21 09:10:19'),
(54, 'Sơn Tùng MTP', 'Việt Nam', '<p>M-TP t&ecirc;n thật l&agrave; Nguyễn Thanh T&ugrave;ng. Cậu thanh ni&ecirc;n sinh năm 1994 ở Th&aacute;i B&igrave;nh sớm bị hip hop hớp hồn giống như bao bạn b&egrave; đồng trang lứa. V&agrave; với niềm đam m&ecirc; n&agrave;y, M-TP quyết t&acirc;m khăn g&oacute;i tới H&agrave; Nội học hỏi th&ecirc;m về hip hop. Sau khi tốt nghiệp cấp 3, anh ch&agrave;ng dự định sẽ đầu qu&acirc;n l&agrave;m học vi&ecirc;n tại Học viện M4Me để r&egrave;n dũa khả năng ca h&aacute;t, s&aacute;ng t&aacute;c... trước khi ch&iacute;nh thức theo đuổi con đường &acirc;m nhạc.</p>\r\n', 'public/images/Ca sĩ/hinh-nen-son-tung-mtp-1.jpg', '2020-12-23 01:57:43'),
(55, 'Ha Anh Tuấn', 'Việt Nam', '<p>Năm 2006, H&agrave; Anh Tuấn tham gia cuộc thi Sao Mai Điểm Hẹn v&agrave; v&agrave;o được top 3 chung cuộc.<br />\r\nSau cuộc thi, anh chọn d&ograve;ng nhạc R&amp;B để theo đuổi với album đầu tay &quot;Cafe S&aacute;ng&quot; (2007) sau đ&oacute; l&agrave; &quot;Saigon Radio&quot; (2009), &quot;Acous&#39;84&quot; (2010), &quot;Lava&quot; (2014), &quot;Street Rhythm&quot; (2015)... mang lại cho anh nhiều giải thưởng.<br />\r\n&nbsp;</p>\r\n', 'public/images/Ca sĩ/unnamed.jpg', '2020-12-23 01:59:55'),
(56, 'Mỹ Tâm', 'Việt Nam', '<p>Thời ni&ecirc;n thiếu, Mỹ T&acirc;m gi&agrave;nh được nhiều giải thưởng trong c&aacute;c cuộc thi &acirc;m nhạc. C&ocirc; sở hữu chất giọng nữ trung với &acirc;m vực rộng v&agrave; khỏe. D&ograve;ng nhạc của c&ocirc; kh&aacute; đa dạng nhưng chủ yếu l&agrave; Pop.<br />\r\nNăm 2001, c&ocirc; debut bằng album đầu tay &quot;M&atilde;i Y&ecirc;u&quot;, sau đ&oacute; l&agrave; &quot;Đ&acirc;u Chỉ Ri&ecirc;ng Em&quot; năm 2002 v&agrave; &quot;Yesterday &amp; Now&quot; năm 2003 đạt kỷ lục về doanh số b&aacute;n ra.</p>\r\n', 'public/images/Ca sĩ/images (3).jpg', '2020-12-23 02:15:19'),
(57, 'Bùi Anh Tuấn', 'Việt Nam', '<p>B&ugrave;i Anh Tuấn tham gia nhiều cuộc thi &acirc;m nhạc v&agrave; đạt nhiều giải thưởng, trong đ&oacute; nổi bật l&agrave; năm 2011 với hai giải nhất Ng&ocirc;i Sao Tiếng H&aacute;t Truyền H&igrave;nh v&agrave; CocaCola Music Award.<br />\r\nNăm 2012, anh tham gia The Voice v&agrave; g&acirc;y ch&uacute; &yacute; với b&agrave;i h&aacute;t &quot;Nơi T&igrave;nh Y&ecirc;u Bắt Đầu&quot;, tuy kh&ocirc;ng gi&agrave;nh được giải nhưng nhờ cuộc thi, anh được nhiều kh&aacute;n giả trẻ y&ecirc;u th&iacute;ch, thuận lợi cho con đường ca h&aacute;t chuy&ecirc;n nghiệp. C&ugrave;ng năm đ&oacute;, anh gi&agrave;nh được giải &quot;Nam nghệ sĩ mới xuất sắc nhất&quot; của Zing Music Awards.</p>\r\n', 'public/images/Ca sĩ/nbjtDYaswkmblybvTEoMwuFF4yRAR2b7XB0uKvzj.jpeg', '2020-12-23 02:53:54'),
(58, 'Soobin Hoàng Sơn', 'Việt Nam', '<p><strong>Nguyễn Ho&agrave;ng Sơn,</strong>&nbsp;hay được biết đến với nghệ danh&nbsp;<strong>Soobin Ho&agrave;ng Sơn</strong>&nbsp;hay&nbsp;<strong>SOOBIN</strong>&nbsp;(sinh ng&agrave;y&nbsp;<a href=\"https://vi.wikipedia.org/wiki/10_th%C3%A1ng_9\" title=\"10 tháng 9\">10 th&aacute;ng 9</a>&nbsp;năm&nbsp;<a href=\"https://vi.wikipedia.org/wiki/1992\" title=\"1992\">1992</a>&nbsp;tại&nbsp;<a href=\"https://vi.wikipedia.org/wiki/H%C3%A0_N%E1%BB%99i\" title=\"Hà Nội\">H&agrave; Nội</a>,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam\" title=\"Việt Nam\">Việt Nam</a>) l&agrave; một nam&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Ca_s%C4%A9\" title=\"Ca sĩ\">ca sĩ</a>,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Nh%E1%BA%A1c_s%C4%A9\" title=\"Nhạc sĩ\">nhạc sĩ</a>,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Rap\" title=\"Rap\">rapper</a>,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Nh%C3%A0_s%E1%BA%A3n_xu%E1%BA%A5t_nh%E1%BA%A1c\" title=\"Nhà sản xuất nhạc\">nh&agrave; sản xuất &acirc;m nhạc</a>&nbsp', 'public/images/Ca sĩ/145-1103.jpg', '2020-12-23 03:16:03'),
(59, 'Jack', 'Việt Nam', '<p>Với niềm đam m&ecirc; ca h&aacute;t, Jack từ bỏ con đường sư phạm v&agrave; gia nhập nh&oacute;m hiphop G5R.<br />\r\nNăm 2019, Jack ra mắt ca kh&uacute;c &quot;Hồng Nhan&quot;. B&agrave;i h&aacute;t nhanh ch&oacute;ng trở th&agrave;nh một hiện tượng trong giới trẻ Việt Nam.<br />\r\nThừa thắng x&ocirc;ng l&ecirc;n, Jack kết hợp c&ugrave;ng K-ICM ra mắt &quot;Bạc Phận&quot;, v&agrave; cũng như trước đ&oacute;, h&agrave;i h&aacute;t nhanh ch&oacute;ng dẫn đầu c&aacute;c bảng xếp hạng &acirc;m nhạc trong nước.<br />\r\nCũng trong thời gian n&agrave;y, Jack quyết định đầu qu&acirc;n về c&ocirc;ng ty ICM, chung một nh&agrave; với K-ICM. Bộ đ&ocirc;i li&ecirc;n tiếp ra mắt những ca kh&uacute;c &quot;khủng&quot; như: &quot;S&oacute;ng Gi&oacute;&quot;, &quot;Em G&igrave; Ơi&quot;...<br />\r\nCuối năm 2019, sau những l&ugrave;m x&ugrave;m với K-ICM v&agrave; c&ocirc;ng ty quản l&yacute;, Jack rời khỏi ICM.<br />\r\nĐầu năm 2020, Jack ra mắt ca kh&uacute;c &quot;L&agrave; Một Thằng Con Trai&quot; đ&a', 'public/images/Ca sĩ/bo-anh-dau-tien-cua-jack-sau-on-ao-voi-k-icm-4.jpg', '2020-12-23 03:29:44'),
(60, 'Thái Đinh', 'Việt Nam', '<p>Th&aacute;i Đinh y&ecirc;u th&iacute;ch &acirc;m nhạc từ nhỏ. Anh theo học thanh nhạc v&agrave; đi h&aacute;t, gi&agrave;nh nhiều giải thưởng ở c&aacute;c cuộc thi d&agrave;nh cho học sinh.<br />\r\nĐến năm cấp ba anh bắt đầu s&aacute;ng t&aacute;c, l&uacute;c đầu l&agrave; dựa tr&ecirc;n những giai điệu c&oacute; sẵn sau đ&oacute; anh học guitar v&agrave; s&aacute;ng t&aacute;c độc lập. &quot;Phố Kh&ocirc;ng Em&quot;, &quot;Những Ng&agrave;y Vắng Em&quot;, &quot;Điều Chưa N&oacute;i&quot;... được ra đời, Th&aacute;i Đinh được gọi l&agrave; &quot;ho&agrave;ng tử ballad&quot; v&igrave; những s&aacute;ng t&aacute;c đều thuộc thể loại Pop ballad v&agrave; c&oacute; nội dung buồn.<br />\r\nC&aacute;c ca kh&uacute;c của Th&aacute;i Đinh được c&aacute;c ca sĩ c&oacute; t&ecirc;n tuổi thể hiện, như &quot;Phố Kh&ocirc;ng Em&quot; l&agrave; ca sĩ L&ecirc; Hiếu.<br />\r\nNăm 2018, Th&aacute;i Đinh c&ugrave;ng NamKun tổ chức đ&ecirc;m nhạc &quot;11h11&quot; d&agrave;nh cho người h&acirc;m mộ.<br />\r', 'public/images/Ca sĩ/23a834c9aa8a43d41a9b.jpg', '2020-12-23 03:30:04'),
(61, 'Chillies', 'Việt Nam', '<p><strong>Chillies</strong>&nbsp;l&agrave; một&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Nh%C3%B3m_nh%E1%BA%A1c\" title=\"Nhóm nhạc\">nh&oacute;m nhạc</a>&nbsp;gồm 5 th&agrave;nh vi&ecirc;n: Khang, Nh&iacute;m, Phước, Đức v&agrave; Ph&uacute;. Nh&oacute;m được th&agrave;nh lập v&agrave;o th&aacute;ng 10 năm 2018 v&agrave; được quản l&yacute; bởi c&ocirc;ng ty, h&atilde;ng đĩa&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Warner_Music_Group\" title=\"Warner Music Group\">Warner Music</a>&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam\" title=\"Việt Nam\">Vietnam</a><sup><a href=\"https://vi.wikipedia.org/wiki/Chillies_(nh%C3%B3m_nh%E1%BA%A1c)#cite_note-1\">[1]</a></sup><sup><a href=\"https://vi.wikipedia.org/wiki/Chillies_(nh%C3%B3m_nh%E1%BA%A1c)#cite_note-2\">[2]</a></sup>.</p>\r\n', 'public/images/Ca sĩ/chillies-3-15873985344291431615711.jpg', '2020-12-23 03:30:22'),
(62, 'Alen Walker', 'Âu Mỹ', '<p><strong>Alan Olav Walker</strong>&nbsp;(born 24 August 1997) is an English-Norwegian DJ and record producer.<sup><a href=\"https://en.wikipedia.org/wiki/Alan_Walker_(music_producer)#cite_note-MagInt-2\">[2]</a></sup>&nbsp;In 2015, Walker received international acclaim after releasing the single &quot;<a href=\"https://en.wikipedia.org/wiki/Faded_(Alan_Walker_song)\" title=\"\">Faded</a>&quot;, which received platinum certifications in 14 countries. In 2020, he was ranked 26th on&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/DJ_Magazine\" title=\"DJ Magazine\">DJ Mag</a>.&nbsp;<sup><a href=\"https://en.wikipedia.org/wiki/Alan_Walker_(music_producer)#cite_note-3\">[3]</a></sup></em>&nbsp;He released his debut studio album,&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Different_World_(Alan_Walker_album)\" title=\"Different World (Alan Walker album)\">Different World</a></em>, in 2018.</p>\r\n', 'public/images/Ca sĩ/images (1).jpg', '2020-12-23 03:54:12'),
(63, 'Justin Bieber', 'Âu Mỹ', '<p><strong>Justin Drew Bieber</strong>&nbsp;(<a href=\"https://en.wikipedia.org/wiki/Help:IPA/English\" title=\"Help:IPA/English\">/ˈdʒʌstɪn-dru-ˈbiːbər/</a>; born March 1, 1994) is a Canadian singer, songwriter and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Multi-instrumentalist\" title=\"Multi-instrumentalist\">multi-instrumentalist</a>.<sup><a href=\"https://en.wikipedia.org/wiki/Justin_Bieber#cite_note-4\">[4]</a></sup><sup><a href=\"https://en.wikipedia.org/wiki/Justin_Bieber#cite_note-5\">[5]</a></sup>&nbsp;Discovered at age 13 by talent manager&nbsp;<a href=\"https://en.wikipedia.org/wiki/Scooter_Braun\" title=\"Scooter Braun\">Scooter Braun</a>&nbsp;after he had watched his&nbsp;<a href=\"https://en.wikipedia.org/wiki/YouTube\" title=\"YouTube\">YouTube</a>&nbsp;cover song videos, Bieber was signed to&nbsp;<a href=\"https://en.wikipedia.org/wiki/RBMG_Records\" title=\"RBMG Records\">RBMG Records</a>&nbsp;in 2008. With Bieber&#39;s debut&nbsp;</p>\r\n', 'public/images/Ca sĩ/ustin-bieber-tro-lai.jpg', '2020-12-23 05:17:18'),
(64, 'Bruno Mars', 'Âu Mỹ', '<p>Peter Gene Hernandez (sinh ng&agrave;y 8 th&aacute;ng 10 năm 1985), được biết đến với nghệ danh Bruno Mars, l&agrave; một ca sĩ, nhạc sĩ, nh&agrave; sản xuất thu &acirc;m, nhạc sĩ v&agrave; vũ c&ocirc;ng người Mỹ.</p>\r\n', 'public/images/Ca sĩ/images.jpg', '2020-12-23 05:29:33'),
(65, 'Lana Del Rey', 'Âu Mỹ', '<p>Elizabeth Woolridge Grant (sinh ng&agrave;y 21 th&aacute;ng 6 năm 1985), được biết đến với nghệ danh Lana Del Rey, l&agrave; một ca sĩ ki&ecirc;m nhạc sĩ người Mỹ.</p>\r\n', 'public/images/Ca sĩ/tải xuống (19).jpg', '2020-12-24 03:13:05'),
(66, 'Demi Lovato', 'Âu Mỹ', '<p>Elizabeth Woolridge Grant (sinh ng&agrave;y 21 th&aacute;ng 6 năm 1985), được biết đến với nghệ danh Lana Del Rey, l&agrave; một ca sĩ ki&ecirc;m nhạc sĩ người Mỹ.</p>\r\n', 'public/images/Ca sĩ/DemiLovato4kWallpaper3840x2160.jpg', '2020-12-24 03:13:19'),
(67, 'Jonas Brothers', 'Việt Nam', '<p>Jonas Brothers l&agrave; một ban nhạc pop rock của Mỹ. Được th&agrave;nh lập v&agrave;o năm 2005, họ đ&atilde; trở n&ecirc;n nổi tiếng khi xuất hiện tr&ecirc;n mạng truyền h&igrave;nh Disney Channel. Họ bao gồm ba anh em: Kevin Jonas, Joe Jonas v&agrave; Nick Jonas.</p>\r\n', 'public/images/Ca sĩ/02-jonas-brothers-press-by-peggy-sirota-2019-billboard-1548-15517585027841544375214.jpg', '2020-12-24 03:14:45'),
(68, 'Adam Levins', 'Âu Mỹ', '<p>Adam Noah Levine (/ ləˈviːn /; sinh ng&agrave;y 18 th&aacute;ng 3 năm 1979) l&agrave; một ca sĩ ki&ecirc;m nhạc sĩ, nh&agrave; sản xuất thu &acirc;m người Mỹ, l&agrave; ca sĩ ch&iacute;nh v&agrave; tay chơi guitar nhịp điệu của ban nhạc pop rock Maroon 5. Levine bắt đầu sự nghiệp &acirc;m nhạc của m&igrave;nh v&agrave;o năm 1994 với ban nhạc Kara&#39;s Flowers, trong đ&oacute; anh ấy l&agrave; giọng ca ch&iacute;nh v&agrave; tay guitar.</p>\r\n', 'public/images/Ca sĩ/muon-dep-trai-phong-cach-nhu-adam-levine-hoc-ngay-6-meo-nay-5f3be9.jpg', '2020-12-24 03:15:29'),
(70, 'Dua Lipa', 'Âu Mỹ', '<p>Dua Lipa (/ ˈduːə ˈliːpə /; ph&aacute;t &acirc;m tiếng Albania: [ˈdua ˈlipa]; sinh ng&agrave;y 22 th&aacute;ng 8 năm 1995) [2] l&agrave; một ca sĩ v&agrave; nhạc sĩ người Anh. Sau khi hoạt động với tư c&aacute;ch người mẫu, c&ocirc; k&yacute; hợp đồng với Warner Music Group v&agrave;o năm 2015 v&agrave; ph&aacute;t h&agrave;nh album đầu tay c&ugrave;ng t&ecirc;n v&agrave;o năm 2017.</p>\r\n', 'public/images/Ca sĩ/photo-1-1519637408505875198269.jpg', '2020-12-24 03:16:28'),
(71, 'The Weeknd', 'Việt Nam', '<p>Abel Makkonen Tesfaye (sinh ng&agrave;y 16 th&aacute;ng 2 năm 1990), được biết đến với nghệ danh The Weeknd, l&agrave; một ca sĩ, nhạc sĩ v&agrave; nh&agrave; sản xuất thu &acirc;m người Canada.</p>\r\n', 'public/images/Ca sĩ/the-weeknd-blinding-lights-cover-final-15754321677731810336056.jpg', '2020-12-24 03:17:31'),
(72, 'Adele ', 'Âu Mỹ', '<p>Adele Laurie Blue Adkins MBE (/ əˈdɛl /; sinh ng&agrave;y 5 th&aacute;ng 5 năm 1988), l&agrave; một ca sĩ ki&ecirc;m nhạc sĩ người Anh.</p>\r\n', 'public/images/Ca sĩ/hay-lam-duoc-nhu-adele.jpg', '2020-12-24 04:17:03'),
(73, '2ne1', 'Hàn Quốc', '<p>2NE1 (tiếng H&agrave;n: 투 애니원, IPA: [tʰu.ɛ.ni.wʌn]) l&agrave; một nh&oacute;m nhạc nữ H&agrave;n Quốc bao gồm Bom, CL, Dara v&agrave; Minzy.</p>\r\n', 'public/images/Ca sĩ/cuu-nhan-vien-yg-2ne1-bi-doi-xu-bat-cong-nhuong-hit-cho-blackpink-aab85a66-1573139816751623815325.jpg', '2020-12-25 15:23:04'),
(74, 'Bigbang', 'Hàn Quốc', '<p>Big Bang (Tiếng Triều Ti&ecirc;n: 빅뱅), thường được viết l&agrave; BIGBANG, l&agrave; một nh&oacute;m nhạc nam của H&agrave;n Quốc với 5 th&agrave;nh vi&ecirc;n thuộc YG Entertainment. Big Bang được biết đến lần đầu ti&ecirc;n qua những tập phim t&agrave;i liệu ghi lại qu&aacute; tr&igrave;nh h&igrave;nh th&agrave;nh của họ được chiếu tr&ecirc;n TV với tựa đề The Big Bang Documentary từ th&aacute;ng 7 đến th&aacute;ng 8 năm 2006.</p>\r\n', 'public/images/Ca sĩ/1_105025 (1).jpg', '2020-12-25 15:32:33'),
(75, 'Tara', 'Hàn Quốc', '<p>Quốc gia: South Korea<br />\r\nC&ocirc;ng ty đại diện: M-net Media<br />\r\nT-ara l&agrave; một nh&oacute;m nhạc nữ đến từ Seoul, H&agrave;n Quốc được th&agrave;nh lập bởi Core Contents Media trong năm 2009<br />\r\n<br />\r\nTrước khi đứng tr&ecirc;n s&acirc;n khấu, nh&oacute;m đ&atilde; được đ&agrave;o tạo chuy&ecirc;n nghiệp được trong v&ograve;ng 3 năm. Ban đầu, nh&oacute;m chỉ c&oacute; 5 th&agrave;nh vi&ecirc;n. Họ đ&atilde; cho ra mắt b&agrave;i h&aacute;t đầu ti&ecirc;n l&agrave; &quot;Good Person&quot; trong bộ phim Cinderella Man v&agrave;o th&aacute;ng 4 năm 2009.<br />\r\n&nbsp;</p>\r\n', 'public/images/Ca sĩ/unnamed (1).jpg', '2020-12-25 15:37:46'),
(76, 'iKON', 'Hàn Quốc', '<p>iKON (tiếng H&agrave;n: 아이콘) l&agrave; nh&oacute;m nhạc H&agrave;n Quốc được th&agrave;nh lập bởi YG Entertainment.<br />\r\n<br />\r\nNh&oacute;m nhạc n&agrave;y c&oacute; bảy th&agrave;nh vi&ecirc;n gồm: B.I, Bobby, Kim Jinhwan, Koo Junhoe, Song Yunhyeong, Kim Donghyuk v&agrave; Jung Chanwoo. Theo gi&aacute;m đốc điều h&agrave;nh YG, Yang Hyun Suk, chữ &quot;C&quot; trong &quot;ICON&quot; đ&atilde; được thay thế bằng &quot;K&quot; trong &quot;Korea&quot; với &yacute; nghĩa một nh&oacute;m nhạc biểu tượng đưa &acirc;m nhạc v&agrave; văn h&oacute;a của H&agrave;n Quốc v&agrave; &acirc;m nhạc của nh&oacute;m sẽ được to&agrave;n ch&acirc;u &Aacute; biết đến.</p>\r\n', 'public/images/Ca sĩ/tải xuống (35).jpg', '2020-12-25 15:44:21'),
(77, 'Black Pink', 'Hàn Quốc', '<p>BLACKPINK (Hangul: 블랙핑크; Romaja quốc ngữ: Beullaek Pingkeu, thường được viết c&aacute;ch điệu th&agrave;nh BLACK PINK, BLACKPINK hay BL&Lambda;ƆKPIИK)<br />\r\n<br />\r\nV&agrave;o ng&agrave;y 29/06/2016, YG Entertainment đ&atilde; ch&iacute;nh thức tiết lộ girlgroup mới của họ sẽ chỉ gồm bốn th&agrave;nh vi&ecirc;n đ&atilde; c&ocirc;ng bố từ trước, đồng thời nh&oacute;m sẽ c&oacute; t&ecirc;n l&agrave; Black Pink.<br />\r\n&nbsp;</p>\r\n', 'public/images/Ca sĩ/tải xuống (37).jpg', '2020-12-25 15:52:50'),
(78, 'Mamamoo', 'Hàn Quốc', '<p>Mamamoo (tiếng H&agrave;n: 마마 무), thường được viết c&aacute;ch điệu l&agrave; MAMAMOO, [2] l&agrave; một nh&oacute;m nhạc nữ H&agrave;n Quốc được th&agrave;nh lập bởi RBW (trước đ&acirc;y l&agrave; WA Entertainment) v&agrave;o năm 2014. Nh&oacute;m ch&iacute;nh thức ra mắt v&agrave;o ng&agrave;y 18 th&aacute;ng 6 năm 2014, với đĩa đơn &ldquo;Mr.</p>\r\n', 'public/images/Ca sĩ/tải xuống (38).jpg', '2020-12-25 16:04:08'),
(79, 'Sistar', 'Hàn Quốc', '<p>Sistar (tiếng H&agrave;n: 씨스 타, thường được viết c&aacute;ch điệu l&agrave; SISTAR) l&agrave; một nh&oacute;m nhạc nữ H&agrave;n Quốc được th&agrave;nh lập v&agrave;o năm 2010 bởi Starship Entertainment.</p>\r\n', 'public/images/Ca sĩ/sistar_yyau.jpg', '2020-12-25 16:12:04'),
(80, 'Triệu Vy', 'Trung Quốc', '', 'public/images/Ca sĩ/trieuvy.jpg', '2020-12-27 12:58:45'),
(81, 'Dịch Dương Thiên Tỷ', 'Trung Quốc', '', 'public/images/Ca sĩ/dich.jpg', '2020-12-27 12:59:48'),
(82, 'Hoa Thần Vũ', 'Trung Quốc', '', 'public/images/Ca sĩ/hoa.jpg', '2020-12-27 13:00:28'),
(84, 'Mẫn Nhi', 'Trung Quốc', '<p>Good girl</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'public/images/Ca sĩ/1618811308Mẫutm.jpg', '2021-04-19 05:48:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `song`
--

CREATE TABLE `song` (
  `maBH` int(50) NOT NULL,
  `tenBH` varchar(50) NOT NULL,
  `maCD` varchar(50) NOT NULL,
  `maCS` varchar(50) NOT NULL,
  `moi` tinyint(1) NOT NULL,
  `Anh` varchar(200) NOT NULL,
  `link` varchar(500) NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `song`
--

INSERT INTO `song` (`maBH`, `tenBH`, `maCD`, `maCS`, `moi`, `Anh`, `link`, `dateTime`) VALUES
(73, 'Người tình mùa đông', '6', '55', 0, 'public/images/Bài hát-MV/2231_IMG_1193.jpg', 'public/music/nguoitinhmuadong.mp3', '2020-12-23 02:00:43'),
(74, 'Tháng tư là lời nói dối của em', '9', '55', 0, 'public/images/Bài hát-MV/thanhnien-vn.jpg', 'public/music/thangtulaloinoidoicuaem.mp3', '2020-12-23 02:01:56'),
(75, 'Người con gái ta từng thương', '10', '55', 0, 'public/images/Bài hát-MV/images.jpg', 'public/music/nguoicongaitathuong.mp3', '2020-12-23 02:05:14'),
(76, 'Chuyện của mùa đông', '6', '55', 0, 'public/images/Bài hát-MV/20201027hatalbum34913-tcbc-16080038284222130648345-511-0-1449-1500-crop-1608004213263141621722.jpg', 'public/music/chuyencuamuadong.mp3', '2020-12-23 02:06:44'),
(77, 'Qua cơn mê', '10', '55', 0, 'public/images/Bài hát-MV/hat-mv-01-1481169891565.jpg', 'public/music/quaconme.mp3', '2020-12-23 02:12:57'),
(78, 'Đúng cũng thành sai', '2', '56', 0, 'public/images/Bài hát-MV/dung-cung-thanh-sai.jpg', 'public/music/dungcungthanhsai.mp3', '2020-12-23 02:16:43'),
(79, 'Đừng hỏi em', '9', '56', 0, 'public/images/Bài hát-MV/tải xuống (6).jpg', 'public/music/dunghoiem.mp3', '2020-12-23 02:17:40'),
(80, 'Người hãy quên em đi', '2', '56', 0, 'public/images/Bài hát-MV/images (1).jpg', 'public/music/nguoihayquenemdi.mp3', '2020-12-23 02:18:24'),
(81, 'Nếu anh đi', '9', '56', 0, 'public/images/Bài hát-MV/tải xuống (5).jpg', 'public/music/neuanhdi.mp3', '2020-12-23 02:19:11'),
(82, 'Chuyện như chưa bắt đầu', '9', '56', 0, 'public/images/Bài hát-MV/tải xuống (7).jpg', 'public/music/chuyennhuchuabatdau.mp3', '2020-12-23 02:20:05'),
(83, 'Em bỏ thuốc chưa', '1', '16', 1, 'public/images/Bài hát-MV/bich-phuong.jpg', 'public/music/embothuocchua.mp3', '2020-12-23 02:26:54'),
(84, 'Đi đu đưa đi', '2', '16', 0, 'public/images/Bài hát-MV/tải xuống (8).jpg', 'public/music/diduduadi.mp3', '2020-12-23 02:29:48'),
(85, 'Gửi anh xa nhớ', '8', '16', 0, 'public/images/Bài hát-MV/tải xuống (10).jpg', 'public/music/guianhxanho.mp3', '2020-12-23 02:31:24'),
(86, 'Sâu trong em', '10', '16', 0, 'public/images/Bài hát-MV/tải xuống (9).jpg', 'public/music/sautrongem.mp3', '2020-12-23 02:34:08'),
(87, 'Mình yêu nhau đi', '10', '16', 0, 'public/images/Bài hát-MV/6d8e62a5c22e455e4d1d335828fd9f6f_1391961492.jpg', 'public/music/minhyeunhaudi.mp3', '2020-12-23 02:38:19'),
(88, 'Chúng ta của hiện tại', '1', '54', 1, 'public/images/Bài hát-MV/Screenshot-8.png', 'public/music/chungtaohientai.mp3', '2020-12-23 02:44:32'),
(89, 'Chạy ngay đi', '2', '54', 0, 'public/images/Bài hát-MV/chayngaydi_wtuw.jpg', 'public/music/Chayngaydi.mp3', '2020-12-23 02:49:53'),
(90, 'Có chắc yêu là đây', '2', '54', 0, 'public/images/Bài hát-MV/tung1-1594000950-width800height451.png', 'public/music/cochacyeuladay.mp3', '2020-12-23 02:50:56'),
(91, 'Em của ngày hôm qua', '2', '54', 0, 'public/images/Bài hát-MV/son-tung-bat-ngo-bi-fan-doi-no-em-cua-ngay-hom-qua-phan-2-98ea8d95.png', 'public/music/emcuangayhomqua.mp3', '2020-12-23 02:51:58'),
(92, 'Nơi tình yêu bắt đầu', '9', '57', 0, 'public/images/Bài hát-MV/buianhtuan04.jpg', 'public/music/noitinhyeubatdau.mp3', '2020-12-23 02:59:08'),
(93, 'Nơi tình yêu kết thúc', '9', '57', 0, 'public/images/Bài hát-MV/mqdefault.jpg', 'public/music/noitinhyeuketthuc.mp3', '2020-12-23 03:00:50'),
(94, 'Hẹn một mai', '10', '57', 0, 'public/images/Bài hát-MV/1210947b1023af83b6c2498093174bd7.jpg', 'public/music/henmotmai.mp3', '2020-12-23 03:02:46'),
(95, 'Đường ai nấy đi', '10', '57', 0, 'public/images/Bài hát-MV/loi-bai-hat-duong-ai-nay-di-bui-anh-tuan-kem-hop-am.jpg', 'public/music/duongainaydi.mp3', '2020-12-23 03:03:46'),
(96, 'Mơ hồ', '10', '57', 0, 'public/images/Bài hát-MV/1568623595898.jpg', 'public/music/mo.mp3', '2020-12-23 03:05:21'),
(97, 'BlackJack', '1', '58', 1, 'public/images/Bài hát-MV/5fc5060ec3b1c.jpg', 'public/music/blackjack.mp3', '2020-12-23 03:16:39'),
(98, 'Xin đừng lặng im', '8', '58', 0, 'public/images/Bài hát-MV/145040-so.jpg', 'public/music/xindunglangim.mp3', '2020-12-23 03:17:19'),
(99, 'Phía sau một cô gái', '8', '58', 0, 'public/images/Bài hát-MV/148126865214673-soobinhoangson--2-.jpg', 'public/music/phiasaumotcogai.mp3', '2020-12-23 03:18:32'),
(100, 'Ngày mai em đi', '2', '58', 0, 'public/images/Bài hát-MV/25a80fd92c98c5c69c89.jpg', 'public/music/ngaymaiemdi.mp3', '2020-12-23 03:19:06'),
(101, 'Qua khung cửa sổ', '7', '61', 1, 'public/images/Bài hát-MV/h2.png', 'public/music/quakhungcuaso.mp3', '2020-12-23 03:37:43'),
(102, 'Cứ chill thôi', '7', '61', 0, 'public/images/Bài hát-MV/mqdefault (1).jpg', 'public/music/cuchillthoi.mp3', '2020-12-23 03:38:28'),
(103, 'Và thế là hết', '7', '61', 0, 'public/images/Bài hát-MV/c6e26dd059d14c39bf8adba191248c2b.jpg', 'public/music/vathelahet.mp3', '2020-12-23 03:39:08'),
(104, 'Những con đường song song', '7', '61', 0, 'public/images/Bài hát-MV/maxresdefault (2).jpg', 'public/music/nhungconduongsongsonh.mp3', '2020-12-23 03:40:37'),
(105, 'Vùng ký ức', '10', '61', 1, 'public/images/Bài hát-MV/chillies-band-1.jpg', 'public/music/vungkyuc.mp3', '2020-12-23 03:41:32'),
(106, 'Thợ sửa khóa', '1', '60', 1, 'public/images/Bài hát-MV/maxresdefault (1).jpg', 'public/music/thosuakhoa.mp3', '2020-12-23 03:42:16'),
(107, 'Đi qua mùa hạ', '9', '60', 0, 'public/images/Bài hát-MV/2-5-156324849259822071907.jpg', 'public/music/diquamuaha.mp3', '2020-12-23 03:42:51'),
(108, 'Phố không em', '9', '60', 0, 'public/images/Bài hát-MV/maxresdefault (3).jpg', 'public/music/phokhongem.mp3', '2020-12-23 03:45:29'),
(109, 'Những ngày vắng em', '7', '60', 0, 'public/images/Bài hát-MV/maxresdefault (4).jpg', 'public/music/nhungngayvangem.mp3', '2020-12-23 03:46:11'),
(110, 'Một ngày mùa thu', '7', '60', 0, 'public/images/Bài hát-MV/maxresdefault (5).jpg', 'public/music/diquamuaha.mp3', '2020-12-23 03:47:05'),
(111, 'Hồng nhan', '2', '59', 0, 'public/images/Bài hát-MV/cats.jpg', 'public/music/hongnhan.mp3', '2020-12-23 03:48:10'),
(112, 'Bạc phận', '2', '59', 0, 'public/images/Bài hát-MV/maxresdefault.jpg', 'public/music/bacphan.mp3', '2020-12-23 03:49:01'),
(113, 'Sóng gió', '2', '59', 0, 'public/images/Bài hát-MV/jack-bi-chan-thuong-nang-sau-canh-quay-hanh-dong-trong-mv-song-gio-18df29cf-e9c76a.jpg', 'public/music/songgio.mp3', '2020-12-23 03:50:10'),
(114, 'Em gì ơi', '10', '59', 0, 'public/images/Bài hát-MV/tải xuống (12).jpg', 'public/music/emgioi.mp3', '2020-12-23 03:51:51'),
(115, 'Hoa hải đường', '2', '59', 1, 'public/images/Bài hát-MV/tải xuống (13).jpg', 'public/music/hoahaiduong.mp3', '2020-12-23 03:53:19'),
(116, 'Faded', '5', '62', 0, 'public/images/Bài hát-MV/tải xuống (1).jpg', 'public/music/faded.mp3', '2020-12-23 04:07:25'),
(117, 'Sing me to sleep', '5', '62', 0, 'public/images/Bài hát-MV/tải xuống (2).jpg', 'public/music/singmetosleep.mp3', '2020-12-23 04:08:13'),
(118, 'Alone', '1', '62', 0, 'public/images/Bài hát-MV/tải xuống (3).jpg', 'public/music/alone.mp3', '2020-12-23 04:11:31'),
(119, 'All falls down', '5', '62', 0, 'public/images/Bài hát-MV/tải xuống (4).jpg', 'public/music/allfallsdown.mp3', '2020-12-23 04:12:36'),
(120, 'Tired', '5', '62', 0, 'public/images/Bài hát-MV/tải xuống.jpg', 'public/music/tired.mp3', '2020-12-23 04:13:40'),
(121, 'Yummy', '3', '63', 1, 'public/images/Bài hát-MV/20200104110707-91c8.jpg', 'public/music/yummy.mp3', '2020-12-23 05:18:15'),
(122, 'What do you mean', '2', '63', 0, 'public/images/Bài hát-MV/tải xuống (15).jpg', 'public/music/whatdoyoumean.mp3', '2020-12-23 05:20:54'),
(123, 'Baby', '2', '63', 1, 'public/images/Bài hát-MV/justin-bieber-tu-hinh-anh-baby-thanh-nguoi-dan-ong-chung-chac_11.jpg', 'public/music/baby.mp3', '2020-12-23 05:21:53'),
(124, 'Uptown Funk', '3', '64', 0, 'public/images/Bài hát-MV/anh1_qejg.jpg', 'public/music/uptownfunk.mp3', '2020-12-23 05:30:22'),
(125, 'Lazy song', '10', '64', 1, 'public/images/Bài hát-MV/tải xuống (16).jpg', 'public/music/thelazysong.mp3', '2020-12-23 05:32:43'),
(126, 'When I was your man', '3', '64', 0, 'public/images/Bài hát-MV/tải xuống (18).jpg', 'public/music/wheniwasyourman.mp3', '2020-12-23 05:35:00'),
(127, 'Blinding lights', '3', '71', 1, 'public/images/Bài hát-MV/The-Weeknd-AMA-2020-Billboard-1548-1606157960-compressed-1.jpg', 'public/music/blindinglights.mp3', '2020-12-24 03:20:56'),
(128, 'Earned it', '2', '71', 0, 'public/images/Bài hát-MV/llboard02650-7776.jpg', 'public/music/earnedit.mp3', '2020-12-24 03:25:23'),
(129, 'Call out my name', '1', '71', 0, 'public/images/Bài hát-MV/4e33288f97b7f6cab5064d8bfa37dc86.jpg', 'public/music/calloutmyname.mp3', '2020-12-24 03:25:59'),
(130, 'After hours', '1', '71', 1, 'public/images/Bài hát-MV/images (2).jpg', 'public/music/afterhours.mp3', '2020-12-24 03:27:00'),
(131, 'Born to die', '9', '65', 1, 'public/images/Bài hát-MV/lana-del-rey-born-di-9bf2.jpg', 'public/music/borntodie.mp3', '2020-12-24 03:28:21'),
(132, 'Summertime sadness', '10', '65', 0, 'public/images/Bài hát-MV/maxresdefault-66d8.jpg', 'public/music/summertimesadness.mp3', '2020-12-24 03:30:02'),
(133, 'Young and beautiful', '3', '65', 0, 'public/images/Bài hát-MV/6z-e67d.jpg', 'public/music/youngandbeautiful.mp3', '2020-12-24 03:31:26'),
(134, 'West coast', '2', '65', 0, 'public/images/Bài hát-MV/sddefault.jpg', 'public/music/westcoast.mp3', '2020-12-24 03:32:20'),
(135, 'Dark paradise', '3', '65', 0, 'public/images/Bài hát-MV/0f3b22a0ec2e00e30d8f5475aea6a705.jpg', 'public/music/darkparadise.mp3', '2020-12-24 03:32:59'),
(136, 'Break my heart', '1', '70', 0, 'public/images/Bài hát-MV/tải xuống (19).jpg', 'public/music/breakmyheart.mp3', '2020-12-24 03:35:39'),
(137, 'New rules', '12', '70', 0, 'public/images/Bài hát-MV/Dua_Lipa_-_New_Rules.jpg', 'public/music/newrules.mp3', '2020-12-24 03:38:26'),
(138, 'IDGAF', '12', '70', 0, 'public/images/Bài hát-MV/20190624112809-4879.jpg', 'public/music/idgaf.mp3', '2020-12-24 03:39:34'),
(142, 'Girls like you', '12', '68', 0, 'public/images/Bài hát-MV/tải xuống (21).jpg', 'public/music/girlslikeyou.mp3', '2020-12-24 03:50:46'),
(143, 'Memories', '2', '68', 0, 'public/images/Bài hát-MV/003678000_1435139636-Maroon_5.jpg', 'public/music/memories.mp3', '2020-12-24 03:51:28'),
(144, 'Sugar', '3', '68', 0, 'public/images/Bài hát-MV/mv-kiem-hon-3-ty-luot-xem-tren-youtube-tu-y-tuong-hat-dam-cuoi-gop-vui-ap-u-hon-10-nam-fa30ee.jpg', 'public/music/sugar.mp3', '2020-12-24 03:53:17'),
(145, 'One more night', '3', '68', 1, 'public/images/Bài hát-MV/tải xuống (22).jpg', 'public/music/onemorenight.mp3', '2020-12-24 03:54:11'),
(146, 'Sucker', '3', '67', 1, 'public/images/Bài hát-MV/20190302102514-c8ab.jpg', 'public/music/sucker.mp3', '2020-12-24 04:05:26'),
(147, 'SOS music video', '12', '67', 0, 'public/images/Bài hát-MV/1-1.jpg', 'public/music/sos.mp3', '2020-12-24 04:06:11'),
(148, 'When a man gotta do', '2', '67', 0, 'public/images/Bài hát-MV/images (3).jpg', 'public/music/whatamangottado.mp3', '2020-12-24 04:07:48'),
(149, 'When you look me in the eyes', '9', '67', 0, 'public/images/Bài hát-MV/mqdefault (2).jpg', 'public/music/whenilookatyouinmyeyes.mp3', '2020-12-24 04:09:12'),
(150, 'Heart attack', '2', '66', 0, 'public/images/Bài hát-MV/hqdefault.jpg', 'public/music/heartattack.mp3', '2020-12-24 04:11:02'),
(151, 'Give me your heart a break', '9', '66', 0, 'public/images/Bài hát-MV/Give-Your-Heart-a-Break-n.jpg', 'public/music/givemeyourheartabreak.mp3', '2020-12-24 04:12:11'),
(152, 'Confident', '12', '66', 0, 'public/images/Bài hát-MV/confidentcovera.jpg', 'public/music/confident.mp3', '2020-12-24 04:14:06'),
(153, 'Made in the USA', '3', '66', 0, 'public/images/Bài hát-MV/0.jpg', 'public/music/madeintheua.mp3', '2020-12-24 04:15:01'),
(154, 'Hello', '2', '72', 0, 'public/images/Bài hát-MV/9-2591-1446177256.jpg', 'public/music/hello.mp3', '2020-12-24 04:18:16'),
(155, 'Rolling in the deep', '12', '72', 0, 'public/images/Bài hát-MV/tải xuống (24).jpg', 'public/music/rollinginthedeep.mp3', '2020-12-24 04:19:35'),
(156, 'Someone like you', '9', '72', 0, 'public/images/Bài hát-MV/tải xuống (25).jpg', 'public/music/someonelikeyou.mp3', '2020-12-24 04:20:49'),
(157, 'Set fire to the rain', '9', '72', 0, 'public/images/Bài hát-MV/Adele7.jpg', 'public/music/setfiretotherain.mp3', '2020-12-24 04:21:58'),
(158, 'I am the best', '4', '73', 0, 'public/images/Bài hát-MV/2ne1_i_am_the_best_2.jpg', 'public/music/iamthebest.mp3', '2020-12-25 15:24:17'),
(159, 'Come back home', '5', '73', 0, 'public/images/Bài hát-MV/tải xuống (26).jpg', 'public/music/comebackhome.mp3', '2020-12-25 15:26:51'),
(160, 'Fire', '2', '73', 0, 'public/images/Bài hát-MV/2ne1.jpg', 'public/music/fire.mp3', '2020-12-25 15:27:42'),
(161, 'Lonely', '5', '73', 0, 'public/images/Bài hát-MV/tải xuống (27).jpg', 'public/music/fire.mp3', '2020-12-25 15:28:22'),
(162, 'Bang bang bang', '5', '74', 0, 'public/images/Bài hát-MV/tải xuống (1).jpg', 'public/music/bangbangbang.mp3', '2020-12-25 15:33:40'),
(163, 'Fxxk it', '4', '74', 0, 'public/images/Bài hát-MV/372539e33537a7787b5924dfd418f8b2.jpg', 'public/music/fxxkit.mp3', '2020-12-25 15:34:25'),
(164, 'Haru haru', '10', '74', 0, 'public/images/Bài hát-MV/tải xuống (30).jpg', 'public/music/haruharu.mp3', '2020-12-25 15:36:00'),
(165, 'Fantastic baby', '4', '74', 0, 'public/images/Bài hát-MV/tải xuống (29).jpg', 'public/music/fantasticbaby.mp3', '2020-12-25 15:36:54'),
(166, 'Roly poly', '12', '75', 0, 'public/images/Bài hát-MV/tải xuống.jpg', 'public/music/rolypoly.mp3', '2020-12-25 15:40:19'),
(167, 'Lovey dovey', '1', '75', 0, 'public/images/Bài hát-MV/tải xuống (31).jpg', 'public/music/loveydovey.mp3', '2020-12-25 15:41:05'),
(168, 'Cry cry', '10', '75', 0, 'public/images/Bài hát-MV/tải xuống (33).jpg', 'public/music/crycry.mp3', '2020-12-25 15:42:48'),
(169, 'Sugar free', '4', '75', 0, 'public/images/Bài hát-MV/tải xuống (34).jpg', 'public/music/sugarfree.mp3', '2020-12-25 15:43:37'),
(170, 'Love scenario', '4', '76', 0, 'public/images/Bài hát-MV/tải xuống.jpg', 'public/music/lovescenario.mp3', '2020-12-25 15:46:23'),
(171, 'Killing me', '2', '76', 0, 'public/images/Bài hát-MV/tải xuống (35).jpg', 'public/music/blingbling.mp3', '2020-12-25 15:47:48'),
(172, 'Best friend', '12', '16', 0, 'public/images/Bài hát-MV/tải xuống (36).jpg', 'public/music/bestfriend.mp3', '2020-12-25 15:48:40'),
(173, 'How you like that', '2', '77', 1, 'public/images/Bài hát-MV/b16822-1594538916497410632408-crop-1594538926757145586589-15946147460842092300449.jpg', 'public/music/howulikethat.mp3', '2020-12-25 15:56:34'),
(174, 'Lovesick girl', '9', '77', 1, 'public/images/Bài hát-MV/blackpink09.jpg', 'public/music/lovesickgirl.mp3', '2020-12-25 15:57:49'),
(175, 'Ddu-du ddu-du', '4', '77', 1, 'public/images/Bài hát-MV/BlackPinketop1.jpg', 'public/music/dudu.mp3', '2020-12-25 15:59:38'),
(176, 'Kill this love', '4', '77', 0, 'public/images/Bài hát-MV/tải xuống (37).jpg', 'public/music/killthislove.mp3', '2020-12-25 16:02:19'),
(177, 'Ice cream', '1', '77', 1, 'public/images/Bài hát-MV/Blackpink-Icecream1.png', 'public/music/icecream.mp3', '2020-12-25 16:03:23'),
(178, 'Dingga', '4', '78', 1, 'public/images/Bài hát-MV/tải xuống.jpg', 'public/music/dingga.mp3', '2020-12-25 16:07:15'),
(179, 'Aya', '2', '78', 0, 'public/images/Bài hát-MV/tải xuống (38).jpg', 'public/music/aya.mp3', '2020-12-25 16:08:39'),
(180, 'Hip', '2', '78', 0, 'public/images/Bài hát-MV/371a6fd81d03428b95a7347271f89eb7_gxwz.jpeg', 'public/music/hip.mp3', '2020-12-25 16:09:17'),
(181, 'Wind flower', '4', '78', 0, 'public/images/Bài hát-MV/tải xuống (39).jpg', 'public/music/windflower.mp3', '2020-12-25 16:10:04'),
(182, 'Starry night', '1', '78', 0, 'public/images/Bài hát-MV/tải xuống (40).jpg', 'public/music/starrynight.mp3', '2020-12-25 16:11:00'),
(183, 'I like that', '12', '79', 0, 'public/images/Bài hát-MV/tải xuống (41).jpg', 'public/music/ilikethat.mp3', '2020-12-25 16:17:43'),
(184, 'Loving you', '2', '79', 0, 'public/images/Bài hát-MV/ed875216ec3943881446eb4b1296345f.jpg', 'public/music/lovingyou.mp3', '2020-12-25 16:18:42'),
(185, 'Touch my body', '4', '79', 0, 'public/images/Bài hát-MV/20160623101833_uuszivug.jpg', 'public/music/touchmybody.mp3', '2020-12-25 16:19:23'),
(186, 'Ma boy', '9', '79', 0, 'public/images/Bài hát-MV/images (4).jpg', 'public/music/maboy.mp3', '2020-12-25 16:20:15'),
(187, 'Từ khi có anh', '9', '80', 0, 'public/images/Bài hát-MV/1.jpg', 'public/music/tukhicoanh.mp3', '2020-12-27 13:18:57'),
(188, 'Có một cô gái', '9', '80', 0, 'public/images/Bài hát-MV/2.jpg', 'public/music/co1.mp3', '2020-12-27 13:19:58'),
(189, 'Chuyến tàu ly biệt', '9', '80', 0, 'public/images/Bài hát-MV/3.jpg', 'public/music/chuyentau.mp3', '2020-12-27 13:20:54'),
(190, 'My boo', '10', '81', 0, 'public/images/Bài hát-MV/4.jpeg', 'public/music/myboo.mp3', '2020-12-27 13:22:32'),
(191, 'Ripples in the heart', '10', '81', 0, 'public/images/Bài hát-MV/5.jpg', 'public/music/ripples.mp3', '2020-12-27 13:23:34'),
(192, 'Fall', '9', '81', 0, 'public/images/Bài hát-MV/6.png', 'public/music/fall.mp3', '2020-12-27 13:24:20'),
(193, 'Tôi quản gì cậu', '9', '82', 0, 'public/images/Bài hát-MV/7.jpg', 'public/music/toimacke.mp3', '2020-12-27 13:26:13'),
(194, 'Tề thiên đại thánh', '1', '82', 0, 'public/images/Bài hát-MV/8.jpg', 'public/music/tethien.mp3', '2020-12-27 13:27:08'),
(195, 'Khác loài', '2', '82', 0, 'public/images/Bài hát-MV/9.jpg', 'public/music/khacloai.mp3', '2020-12-27 13:27:51'),
(196, 'Muộn rồi sao mà còn', '1', '54', 1, 'public/images/Bài hát-MV/1621926450mr3.jpg', 'public/music/1621926450y2mate.com - SƠN TÙNG MTP  MUỘN RỒI MÀ SAO CÒN  OFFICIAL MUSIC VIDEO_320kbps.mp3', '2021-05-25 07:04:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Quyen` tinyint(1) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `Quyen`, `created`, `updated`) VALUES
(1, 'Hà Phi Vũ ', 'hoalong369741@gmail.com', '93279e3308bdbbeed946fc965017f67a', 1, '2020-12-08 08:40:26', '2021-05-15 01:53:50'),
(6, 'Trần Thị Như Ý', 'nhuytran2000@gmail.com', '4297f44b13955235245b2497399d7a93', 0, '2020-12-11 07:11:44', '2020-12-11 07:11:44'),
(9, 'Lưu Chí Hà', '123321@gmail.com', '4297f44b13955235245b2497399d7a93', 0, '2021-03-29 16:23:39', '2021-04-02 04:41:14'),
(10, 'Cao Duy', '312@gmail.com', '4297f44b13955235245b2497399d7a93', 0, '2021-04-16 12:17:00', '2021-04-16 12:17:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`maAB`);

--
-- Chỉ mục cho bảng `chude`
--
ALTER TABLE `chude`
  ADD PRIMARY KEY (`maCD`);

--
-- Chỉ mục cho bảng `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`maTT`);

--
-- Chỉ mục cho bảng `listbh`
--
ALTER TABLE `listbh`
  ADD PRIMARY KEY (`maList`);

--
-- Chỉ mục cho bảng `loaimv`
--
ALTER TABLE `loaimv`
  ADD PRIMARY KEY (`maLMV`);

--
-- Chỉ mục cho bảng `mv`
--
ALTER TABLE `mv`
  ADD PRIMARY KEY (`maMV`);

--
-- Chỉ mục cho bảng `nghesi`
--
ALTER TABLE `nghesi`
  ADD PRIMARY KEY (`maCS`);

--
-- Chỉ mục cho bảng `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`maBH`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `album`
--
ALTER TABLE `album`
  MODIFY `maAB` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `chude`
--
ALTER TABLE `chude`
  MODIFY `maCD` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `list`
--
ALTER TABLE `list`
  MODIFY `maTT` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `listbh`
--
ALTER TABLE `listbh`
  MODIFY `maList` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `loaimv`
--
ALTER TABLE `loaimv`
  MODIFY `maLMV` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `mv`
--
ALTER TABLE `mv`
  MODIFY `maMV` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT cho bảng `nghesi`
--
ALTER TABLE `nghesi`
  MODIFY `maCS` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `song`
--
ALTER TABLE `song`
  MODIFY `maBH` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
