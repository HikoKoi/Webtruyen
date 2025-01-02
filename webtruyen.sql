-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 24, 2024 lúc 05:37 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webtruyen`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chapters`
--

CREATE TABLE `chapters` (
  `chapter_id` int(11) NOT NULL,
  `story_id` int(11) DEFAULT NULL,
  `chapter_number` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chapters`
--

INSERT INTO `chapters` (`chapter_id`, `story_id`, `chapter_number`, `title`) VALUES
(1, 1, 1, 'chương 1'),
(2, 1, 2, 'chương 2'),
(3, 2, 1, 'chương 1'),
(4, 2, 2, 'chương 2'),
(5, 3, 1, 'chương 1'),
(6, 3, 2, 'chương 2'),
(7, 4, 1, 'chương 1'),
(8, 4, 2, 'chương 2'),
(9, 5, 1, 'chương 1'),
(10, 5, 2, 'chương 2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history`
--

CREATE TABLE `history` (
  `user_id` int(11) NOT NULL,
  `story_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `history`
--

INSERT INTO `history` (`user_id`, `story_id`) VALUES
(123, 2),
(123, 2),
(123, 2),
(123, 5),
(123, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `story_id` int(11) NOT NULL,
  `chapter_number` int(11) NOT NULL,
  `page_number` int(11) NOT NULL,
  `image_path` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `pages`
--

INSERT INTO `pages` (`page_id`, `story_id`, `chapter_number`, `page_number`, `image_path`) VALUES
(1, 1, 1, 1, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 1/chap_11160-time_1731402181-673319c588413.jpg'),
(2, 1, 1, 2, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 1/chap_11160-time_1731402182-673319c605b73.jpg'),
(3, 1, 1, 3, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 1/chap_11160-time_1731402182-673319c6b38c1.jpg'),
(4, 1, 1, 4, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 1/chap_11160-time_1731402183-673319c738869.jpg'),
(5, 1, 1, 5, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 1/chap_11160-time_1731402183-673319c7a9408.jpg'),
(6, 1, 1, 6, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 1/chap_11160-time_1731402184-673319c8a587e.jpg'),
(7, 1, 1, 7, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 1/chap_11160-time_1731402185-673319c92300c.jpg'),
(8, 1, 1, 8, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 1/chap_11160-time_1731402186-673319ca1c475.jpg'),
(9, 1, 1, 9, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 1/chap_11160-time_1731402186-673319ca9d45c.jpg'),
(10, 1, 1, 10, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 1/chap_11160-time_1731402187-673319cb0e5c5.jpg'),
(11, 1, 1, 11, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 1/chap_11160-time_1731402187-673319cb73ef4.jpg'),
(12, 1, 1, 12, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 1/chap_11160-time_1731402187-673319cbd934b.jpg'),
(13, 1, 1, 13, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 1/chap_11160-time_1731402188-673319cc52389.jpg'),
(14, 1, 1, 14, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 1/chap_11160-time_1731402188-673319ccb6d34.jpg'),
(15, 1, 1, 15, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 1/chap_11160-time_1731402189-673319cd26f6f.jpg'),
(16, 1, 1, 16, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 1/chap_11160-time_1731402189-673319cd9ac70.jpg'),
(17, 1, 1, 17, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 1/chap_11160-time_1731402190-673319ce0fd99.jpg'),
(18, 1, 1, 18, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 1/chap_11160-time_1731402190-673319ce737e0.jpg'),
(19, 1, 1, 19, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 1/chap_11160-time_1731402190-673319cedcbe6.jpg'),
(20, 1, 2, 1, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 2/chap_11160-time_1732021466-673c8cdad28fb.jpg'),
(21, 1, 2, 2, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 2/chap_11160-time_1732021468-673c8cdc0fecd.jpg'),
(22, 1, 2, 3, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 2/chap_11160-time_1732021469-673c8cdd39361.jpg'),
(23, 1, 2, 4, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 2/chap_11160-time_1732021469-673c8cdddaad9.jpg'),
(24, 1, 2, 5, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 2/chap_11160-time_1732021470-673c8cde7dbb5.jpg'),
(25, 1, 2, 6, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 2/chap_11160-time_1732021471-673c8cdf22f4a.jpg'),
(26, 1, 2, 7, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 2/chap_11160-time_1732021471-673c8cdfb0b53.jpg'),
(27, 1, 2, 8, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 2/chap_11160-time_1732021472-673c8ce058a31.jpg'),
(28, 1, 2, 9, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 2/chap_11160-time_1732021473-673c8ce103aa4.jpg'),
(29, 1, 2, 10, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 2/chap_11160-time_1732021473-673c8ce1d037d.jpg'),
(30, 1, 2, 11, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 2/chap_11160-time_1732021474-673c8ce274075.jpg'),
(31, 1, 2, 12, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 2/chap_11160-time_1732021475-673c8ce323f6d.jpg'),
(32, 1, 2, 13, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 2/chap_11160-time_1732021475-673c8ce3b3de6.jpg'),
(33, 1, 2, 14, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 2/chap_11160-time_1732021476-673c8ce4645de.jpg'),
(34, 1, 2, 15, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 2/chap_11160-time_1732021477-673c8ce50b646.jpg'),
(35, 1, 2, 16, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 2/chap_11160-time_1732021477-673c8ce59fa7a.jpg'),
(36, 1, 2, 17, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 2/chap_11160-time_1732021478-673c8ce63d666.jpg'),
(37, 1, 2, 18, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 2/chap_11160-time_1732021478-673c8ce6d8205.jpg'),
(38, 1, 2, 19, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 2/chap_11160-time_1732021479-673c8ce77eefc.jpg'),
(39, 1, 2, 20, 'C:/xampp/htdocs/final/saufix/Vũ Trang Siêu Nhiên/Chuong 2/chap_11160-time_1732021479-673c8ce7ed9d1.jpg'),
(40, 2, 1, 1, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 1/chap_128-time_1731402929-67331cb1345aa.jpg'),
(41, 2, 1, 2, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 1/chap_128-time_1731402930-67331cb239c49.jpg'),
(42, 2, 1, 3, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 1/chap_128-time_1731402931-67331cb3907b5.jpg'),
(43, 2, 1, 4, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 1/chap_128-time_1731402932-67331cb4a88f9.jpg'),
(44, 2, 1, 5, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 1/chap_128-time_1731402933-67331cb5a4722.jpg'),
(45, 2, 1, 6, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 1/chap_128-time_1731402934-67331cb657c65.jpg'),
(46, 2, 1, 7, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 1/chap_128-time_1731402935-67331cb7a8919.jpg'),
(47, 2, 1, 8, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 1/chap_128-time_1731402936-67331cb84e7c4.jpg'),
(48, 2, 1, 9, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 1/chap_128-time_1731402937-67331cb94d942.jpg'),
(49, 2, 1, 10, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 1/chap_128-time_1731402938-67331cba40553.jpg'),
(50, 2, 1, 11, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 1/chap_128-time_1731402939-67331cbb24f8a.jpg'),
(51, 2, 1, 12, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 1/chap_128-time_1731402940-67331cbc2f7d8.jpg'),
(52, 2, 1, 13, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 1/chap_128-time_1731402941-67331cbd260f5.jpg'),
(53, 2, 1, 14, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 1/chap_128-time_1731402942-67331cbe223bd.jpg'),
(54, 2, 1, 15, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 1/chap_128-time_1731402944-67331cc03d804.jpg'),
(55, 2, 1, 16, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 1/chap_128-time_1731402944-67331cc0a5232.jpg'),
(56, 2, 2, 1, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 2/10.jpg'),
(57, 2, 2, 2, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 2/11.jpg'),
(58, 2, 2, 3, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 2/12.jpg'),
(59, 2, 2, 4, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 2/13.jpg'),
(60, 2, 2, 5, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 2/14.jpg'),
(61, 2, 2, 6, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 2/15.jpg'),
(62, 2, 2, 7, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 2/16.jpg'),
(63, 2, 2, 8, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 2/2.jpg'),
(64, 2, 2, 9, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 2/3.jpg'),
(65, 2, 2, 10, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 2/4.jpg'),
(66, 2, 2, 11, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 2/5.jpg'),
(67, 2, 2, 12, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 2/6.jpg'),
(68, 2, 2, 13, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 2/7.jpg'),
(69, 2, 2, 14, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 2/8.jpg'),
(70, 2, 2, 15, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 2/9.jpg'),
(71, 2, 2, 16, 'C:/xampp/htdocs/final/saufix/One Piece/Chương 2/chap_128-time_1731402944-67331cc03d804.jpg'),
(72, 3, 1, 1, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/0.jpg'),
(73, 3, 1, 2, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/1.jpg'),
(74, 3, 1, 3, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/11.jpg'),
(75, 3, 1, 4, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/12.jpg'),
(76, 3, 1, 5, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/13.jpg'),
(77, 3, 1, 6, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/14.jpg'),
(78, 3, 1, 7, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/15.jpg'),
(79, 3, 1, 8, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/16.jpg'),
(80, 3, 1, 9, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/17.jpg'),
(81, 3, 1, 10, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/18.jpg'),
(82, 3, 1, 11, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/19.jpg'),
(83, 3, 1, 12, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/2.jpg'),
(84, 3, 1, 13, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/20.jpg'),
(85, 3, 1, 14, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/21.jpg'),
(86, 3, 1, 15, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/22.jpg'),
(87, 3, 1, 16, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/23.jpg'),
(88, 3, 1, 17, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/24.jpg'),
(89, 3, 1, 18, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/25.jpg'),
(90, 3, 1, 19, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/26.jpg'),
(91, 3, 1, 20, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/27.jpg'),
(92, 3, 1, 21, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/28.jpg'),
(93, 3, 1, 22, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/29.jpg'),
(94, 3, 1, 23, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/3.jpg'),
(95, 3, 1, 24, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/30.jpg'),
(96, 3, 1, 25, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/31.jpg'),
(97, 3, 1, 26, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/32.jpg'),
(98, 3, 1, 27, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/33.jpg'),
(99, 3, 1, 28, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/34.jpg'),
(100, 3, 1, 29, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/35.jpg'),
(101, 3, 1, 30, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/36.jpg'),
(102, 3, 1, 31, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/37.jpg'),
(103, 3, 1, 32, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/38.jpg'),
(104, 3, 1, 33, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/39.jpg'),
(105, 3, 1, 34, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/4.jpg'),
(106, 3, 1, 35, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/40.jpg'),
(107, 3, 1, 36, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/41.jpg'),
(108, 3, 1, 37, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/42.jpg'),
(109, 3, 1, 38, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/43.jpg'),
(110, 3, 1, 39, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/44.jpg'),
(111, 3, 1, 40, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/45.jpg'),
(112, 3, 1, 41, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/46.jpg'),
(113, 3, 1, 42, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/47.jpg'),
(114, 3, 1, 43, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/48.jpg'),
(115, 3, 1, 44, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/5.jpg'),
(116, 3, 1, 45, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/6.jpg'),
(117, 3, 1, 46, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/7.jpg'),
(118, 3, 1, 47, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/8.jpg'),
(119, 3, 1, 48, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 1/9.jpg'),
(120, 3, 2, 1, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/0.jpg'),
(121, 3, 2, 2, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/1.jpg'),
(122, 3, 2, 3, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/10.jpg'),
(123, 3, 2, 4, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/11.jpg'),
(124, 3, 2, 5, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/12.jpg'),
(125, 3, 2, 6, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/13.jpg'),
(126, 3, 2, 7, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/14.jpg'),
(127, 3, 2, 8, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/15.jpg'),
(128, 3, 2, 9, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/16.jpg'),
(129, 3, 2, 10, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/17.jpg'),
(130, 3, 2, 11, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/18.jpg'),
(131, 3, 2, 12, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/19.jpg'),
(132, 3, 2, 13, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/2.jpg'),
(133, 3, 2, 14, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/20.jpg'),
(134, 3, 2, 15, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/21.jpg'),
(135, 3, 2, 16, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/22.jpg'),
(136, 3, 2, 17, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/23.jpg'),
(137, 3, 2, 18, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/24.jpg'),
(138, 3, 2, 19, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/25.jpg'),
(139, 3, 2, 20, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/26.jpg'),
(140, 3, 2, 21, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/27.jpg'),
(141, 3, 2, 22, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/28.jpg'),
(142, 3, 2, 23, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/29.jpg'),
(143, 3, 2, 24, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/3.jpg'),
(144, 3, 2, 25, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/30.jpg'),
(145, 3, 2, 26, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/31.jpg'),
(146, 3, 2, 27, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/32.jpg'),
(147, 3, 2, 28, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/33.jpg'),
(148, 3, 2, 29, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/34.jpg'),
(149, 3, 2, 30, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/35.jpg'),
(150, 3, 2, 31, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/36.jpg'),
(151, 3, 2, 32, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/37.jpg'),
(152, 3, 2, 33, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/38.jpg'),
(153, 3, 2, 34, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/39.jpg'),
(154, 3, 2, 35, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/4.jpg'),
(155, 3, 2, 36, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/40.jpg'),
(156, 3, 2, 37, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/41.jpg'),
(157, 3, 2, 38, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/42.jpg'),
(158, 3, 2, 39, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/43.jpg'),
(159, 3, 2, 40, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/44.jpg'),
(160, 3, 2, 41, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/45.jpg'),
(161, 3, 2, 42, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/46.jpg'),
(162, 3, 2, 43, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/47.jpg'),
(163, 3, 2, 44, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/48.jpg'),
(164, 3, 2, 45, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/49.jpg'),
(165, 3, 2, 46, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/5.jpg'),
(166, 3, 2, 47, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/50.jpg'),
(167, 3, 2, 48, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/6.jpg'),
(168, 3, 2, 49, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/7.jpg'),
(169, 3, 2, 50, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/8.jpg'),
(170, 3, 2, 51, 'C:/xampp/htdocs/final/saufix/Đại Chiến Người Khổng Lồ/Chương 2/9.jpg'),
(171, 4, 1, 1, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/0.jpg'),
(172, 4, 1, 2, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/1.jpg'),
(173, 4, 1, 3, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/10.jpg'),
(174, 4, 1, 4, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/11.jpg'),
(175, 4, 1, 5, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/12.jpg'),
(176, 4, 1, 6, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/13.jpg'),
(177, 4, 1, 7, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/14.jpg'),
(178, 4, 1, 8, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/15.jpg'),
(179, 4, 1, 9, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/16.jpg'),
(180, 4, 1, 10, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/17.jpg'),
(181, 4, 1, 11, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/18.jpg'),
(182, 4, 1, 12, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/19.jpg'),
(183, 4, 1, 13, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/2.jpg'),
(184, 4, 1, 14, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/20.jpg'),
(185, 4, 1, 15, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/21.jpg'),
(186, 4, 1, 16, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/22.jpg'),
(187, 4, 1, 17, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/23.jpg'),
(188, 4, 1, 18, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/24.jpg'),
(189, 4, 1, 19, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/25.jpg'),
(190, 4, 1, 20, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/26.jpg'),
(191, 4, 1, 21, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/27.jpg'),
(192, 4, 1, 22, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/28.jpg'),
(193, 4, 1, 23, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/29.jpg'),
(194, 4, 1, 24, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/3.jpg'),
(195, 4, 1, 25, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/30.jpg'),
(196, 4, 1, 26, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/31.jpg'),
(197, 4, 1, 27, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/32.jpg'),
(198, 4, 1, 28, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/33.jpg'),
(199, 4, 1, 29, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/34.jpg'),
(200, 4, 1, 30, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/35.jpg'),
(201, 4, 1, 31, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/36.jpg'),
(202, 4, 1, 32, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/37.jpg'),
(203, 4, 1, 33, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/38.jpg'),
(204, 4, 1, 34, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/39.jpg'),
(205, 4, 1, 35, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/4.jpg'),
(206, 4, 1, 36, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/40.jpg'),
(207, 4, 1, 37, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/41.jpg'),
(208, 4, 1, 38, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/42.jpg'),
(209, 4, 1, 39, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/43.jpg'),
(210, 4, 1, 40, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/44.jpg'),
(211, 4, 1, 41, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/45.jpg'),
(212, 4, 1, 42, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/46.jpg'),
(213, 4, 1, 43, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/47.jpg'),
(214, 4, 1, 44, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/48.jpg'),
(215, 4, 1, 45, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/49.jpg'),
(216, 4, 1, 46, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/5.jpg'),
(217, 4, 1, 47, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/50.jpg'),
(218, 4, 1, 48, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/51.jpg'),
(219, 4, 1, 49, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/52.jpg'),
(220, 4, 1, 50, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/53.jpg'),
(221, 4, 1, 51, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/54.jpg'),
(222, 4, 1, 52, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/55.jpg'),
(223, 4, 1, 53, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/56.jpg'),
(224, 4, 1, 54, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/57.jpg'),
(225, 4, 1, 55, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/58.jpg'),
(226, 4, 1, 56, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/59.jpg'),
(227, 4, 1, 57, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/6.jpg'),
(228, 4, 1, 58, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/60.jpg'),
(229, 4, 1, 59, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/61.jpg'),
(230, 4, 1, 60, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/62.jpg'),
(231, 4, 1, 61, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/63.jpg'),
(232, 4, 1, 62, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/64.jpg'),
(233, 4, 1, 63, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/7.jpg'),
(234, 4, 1, 64, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/8.jpg'),
(235, 4, 1, 65, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 1/9.jpg'),
(236, 4, 2, 1, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/0.jpg'),
(237, 4, 2, 2, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/1.jpg'),
(238, 4, 2, 3, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/10.jpg'),
(239, 4, 2, 4, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/11.jpg'),
(240, 4, 2, 5, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/12.jpg'),
(241, 4, 2, 6, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/13.jpg'),
(242, 4, 2, 7, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/14.jpg'),
(243, 4, 2, 8, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/15.jpg'),
(244, 4, 2, 9, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/16.jpg'),
(245, 4, 2, 10, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/17.jpg'),
(246, 4, 2, 11, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/18.jpg'),
(247, 4, 2, 12, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/19.jpg'),
(248, 4, 2, 13, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/2.jpg'),
(249, 4, 2, 14, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/20.jpg'),
(250, 4, 2, 15, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/21.jpg'),
(251, 4, 2, 16, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/22.jpg'),
(252, 4, 2, 17, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/23.jpg'),
(253, 4, 2, 18, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/24.jpg'),
(254, 4, 2, 19, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/25.jpg'),
(255, 4, 2, 20, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/26.jpg'),
(256, 4, 2, 21, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/27.jpg'),
(257, 4, 2, 22, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/28.jpg'),
(258, 4, 2, 23, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/29.jpg'),
(259, 4, 2, 24, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/3.jpg'),
(260, 4, 2, 25, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/30.jpg'),
(261, 4, 2, 26, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/31.jpg'),
(262, 4, 2, 27, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/32.jpg'),
(263, 4, 2, 28, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/33.jpg'),
(264, 4, 2, 29, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/34.jpg'),
(265, 4, 2, 30, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/35.jpg'),
(266, 4, 2, 31, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/36.jpg'),
(267, 4, 2, 32, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/37.jpg'),
(268, 4, 2, 33, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/38.jpg'),
(269, 4, 2, 34, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/39.jpg'),
(270, 4, 2, 35, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/4.jpg'),
(271, 4, 2, 36, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/40.jpg'),
(272, 4, 2, 37, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/41.jpg'),
(273, 4, 2, 38, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/42.jpg'),
(274, 4, 2, 39, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/43.jpg'),
(275, 4, 2, 40, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/44.jpg'),
(276, 4, 2, 41, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/45.jpg'),
(277, 4, 2, 42, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/46.jpg'),
(278, 4, 2, 43, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/47.jpg'),
(279, 4, 2, 44, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/48.jpg'),
(280, 4, 2, 45, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/49.jpg'),
(281, 4, 2, 46, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/5.jpg'),
(282, 4, 2, 47, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/50.jpg'),
(283, 4, 2, 48, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/51.jpg'),
(284, 4, 2, 49, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/52.jpg'),
(285, 4, 2, 50, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/53.jpg'),
(286, 4, 2, 51, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/54.jpg'),
(287, 4, 2, 52, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/55.jpg'),
(288, 4, 2, 53, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/56.jpg'),
(289, 4, 2, 54, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/57.jpg'),
(290, 4, 2, 55, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/58.jpg'),
(291, 4, 2, 56, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/59.jpg'),
(292, 4, 2, 57, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/6.jpg'),
(293, 4, 2, 58, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/60.jpg'),
(294, 4, 2, 59, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/61.jpg'),
(295, 4, 2, 60, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/62.jpg'),
(296, 4, 2, 61, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/63.jpg'),
(297, 4, 2, 62, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/64.jpg'),
(298, 4, 2, 63, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/65.jpg'),
(299, 4, 2, 64, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/66.jpg'),
(300, 4, 2, 65, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/67.jpg'),
(301, 4, 2, 66, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/68.jpg'),
(302, 4, 2, 67, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/69.jpg'),
(303, 4, 2, 68, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/7.jpg'),
(304, 4, 2, 69, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/70.jpg'),
(305, 4, 2, 70, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/8.jpg'),
(306, 4, 2, 71, 'C:/xampp/htdocs/final/saufix/Tôi Thăng Cấp Một Mình/Chương 2/9.jpg'),
(307, 5, 1, 1, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 1/1.jpg'),
(308, 5, 1, 2, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 1/10.jpg'),
(309, 5, 1, 3, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 1/11.jpg'),
(310, 5, 1, 4, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 1/12.jpg'),
(311, 5, 1, 5, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 1/13.jpg'),
(312, 5, 1, 6, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 1/14.jpg'),
(313, 5, 1, 7, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 1/15.jpg'),
(314, 5, 1, 8, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 1/16.jpg'),
(315, 5, 1, 9, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 1/17.jpg'),
(316, 5, 1, 10, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 1/18.jpg'),
(317, 5, 1, 11, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 1/19.jpg'),
(318, 5, 1, 12, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 1/2.jpg'),
(319, 5, 1, 13, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 1/3.jpg'),
(320, 5, 1, 14, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 1/4.jpg'),
(321, 5, 1, 15, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 1/5.jpg'),
(322, 5, 1, 16, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 1/6.jpg'),
(323, 5, 1, 17, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 1/7.jpg'),
(324, 5, 1, 18, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 1/8.jpg'),
(325, 5, 1, 19, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 1/9.jpg'),
(326, 5, 2, 1, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 2/1.jpg'),
(327, 5, 2, 2, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 2/10.jpg'),
(328, 5, 2, 3, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 2/11.jpg'),
(329, 5, 2, 4, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 2/12.jpg'),
(330, 5, 2, 5, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 2/13.jpg'),
(331, 5, 2, 6, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 2/14.jpg'),
(332, 5, 2, 7, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 2/15.jpg'),
(333, 5, 2, 8, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 2/16.jpg'),
(334, 5, 2, 9, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 2/17.jpg'),
(335, 5, 2, 10, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 2/18.jpg'),
(336, 5, 2, 11, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 2/19.jpg'),
(337, 5, 2, 12, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 2/2.jpg'),
(338, 5, 2, 13, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 2/3.jpg'),
(339, 5, 2, 14, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 2/4.jpg'),
(340, 5, 2, 15, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 2/5.jpg'),
(341, 5, 2, 16, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 2/6.jpg'),
(342, 5, 2, 17, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 2/7.jpg'),
(343, 5, 2, 18, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 2/8.jpg'),
(344, 5, 2, 19, 'C:/xampp/htdocs/final/saufix/Chào Mừng Cậu Đến Trường Iruma-Kun/Chương 2/9.jpg'),
(345, 6, 1, 1, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chuong 1/chap_380-time_1731533164-6735196ca6e05.jpg'),
(346, 6, 1, 2, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chuong 1/chap_380-time_1731533165-6735196d70260.jpg'),
(347, 6, 1, 3, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chuong 1/chap_380-time_1731533166-6735196e6945e.jpg'),
(348, 6, 1, 4, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chuong 1/chap_380-time_1731533167-6735196f6a05b.jpg'),
(349, 6, 1, 5, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chuong 1/chap_380-time_1731533168-67351970878b0.jpg'),
(350, 6, 1, 6, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chuong 1/chap_380-time_1731533169-6735197195e4f.jpg'),
(351, 6, 1, 7, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chuong 1/chap_380-time_1731533170-673519728cdb6.jpg'),
(352, 6, 1, 8, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chuong 1/chap_380-time_1731533171-673519730df1f.jpg'),
(353, 6, 1, 9, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chuong 1/chap_380-time_1731533172-673519740c179.jpg'),
(354, 6, 1, 10, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chuong 1/chap_380-time_1731533173-67351975212a6.jpg'),
(355, 6, 1, 11, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chuong 1/chap_380-time_1731533174-673519762913c.jpg'),
(356, 6, 1, 12, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chuong 1/chap_380-time_1731533174-673519769d902.jpg'),
(357, 6, 1, 13, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chuong 1/chap_380-time_1731533175-67351977207d7.jpg'),
(358, 6, 1, 14, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chuong 1/chap_380-time_1731533175-6735197790b1f.jpg'),
(359, 6, 1, 15, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chuong 1/chap_380-time_1731533176-6735197812b09.jpg'),
(360, 6, 1, 16, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chuong 1/chap_380-time_1731533177-673519792419a.jpg'),
(361, 6, 1, 17, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chuong 1/chap_380-time_1731533177-67351979936ae.jpg'),
(362, 6, 1, 18, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chuong 1/chap_380-time_1731533178-6735197a248f9.jpg'),
(363, 6, 1, 19, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chuong 1/chap_380-time_1731533178-6735197aa677c.jpg'),
(364, 6, 1, 20, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chuong 1/chap_380-time_1731533179-6735197b3718d.jpg'),
(365, 6, 1, 21, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chuong 1/chap_380-time_1731533179-6735197badf01.jpg'),
(366, 6, 1, 22, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chuong 1/chap_380-time_1731533180-6735197ca61d8.jpg'),
(367, 6, 1, 23, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chuong 1/chap_380-time_1731533181-6735197d41666.jpg'),
(368, 6, 2, 1, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/1.jpg'),
(369, 6, 2, 2, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/10.jpg'),
(370, 6, 2, 3, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/11.jpg'),
(371, 6, 2, 4, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/12.jpg'),
(372, 6, 2, 5, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/13.jpg'),
(373, 6, 2, 6, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/14.jpg'),
(374, 6, 2, 7, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/15.jpg'),
(375, 6, 2, 8, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/16.jpg'),
(376, 6, 2, 9, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/17.jpg'),
(377, 6, 2, 10, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/18.jpg'),
(378, 6, 2, 11, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/19.jpg'),
(379, 6, 2, 12, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/2.jpg'),
(380, 6, 2, 13, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/20.jpg'),
(381, 6, 2, 14, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/21.jpg'),
(382, 6, 2, 15, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/22.jpg'),
(383, 6, 2, 16, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/23.jpg'),
(384, 6, 2, 17, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/24.jpg'),
(385, 6, 2, 18, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/25.jpg'),
(386, 6, 2, 19, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/26.jpg'),
(387, 6, 2, 20, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/27.jpg'),
(388, 6, 2, 21, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/28.jpg'),
(389, 6, 2, 22, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/29.jpg'),
(390, 6, 2, 23, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/3.jpg'),
(391, 6, 2, 24, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/30.jpg'),
(392, 6, 2, 25, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/31.jpg'),
(393, 6, 2, 26, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/32.jpg'),
(394, 6, 2, 27, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/33.jpg'),
(395, 6, 2, 28, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/34.jpg'),
(396, 6, 2, 29, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/35.jpg'),
(397, 6, 2, 30, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/36.jpg'),
(398, 6, 2, 31, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/37.jpg'),
(399, 6, 2, 32, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/38.jpg'),
(400, 6, 2, 33, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/39.jpg'),
(401, 6, 2, 34, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/4.jpg'),
(402, 6, 2, 35, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/40.jpg'),
(403, 6, 2, 36, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/5.jpg'),
(404, 6, 2, 37, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/6.jpg'),
(405, 6, 2, 38, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/7.jpg'),
(406, 6, 2, 39, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/8.jpg'),
(407, 6, 2, 40, 'C:/xampp/htdocs/final/saufix/Học Viện Anh Hùng/Chương 2/9.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stories`
--

CREATE TABLE `stories` (
  `story_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `stories`
--

INSERT INTO `stories` (`story_id`, `title`, `author`, `description`) VALUES
(1, 'Vũ Trang Siêu Nhiên', 'Masashi Kishimoto', 'Một ninja trẻ với ước mơ trở thành Hokage'),
(2, 'One Piece', 'Eiichiro Oda', 'Cuộc hành trình của Luffy tìm kho báu One Piece'),
(3, 'Attack on Titan', 'Hajime Isayama', 'Cuộc chiến sinh tồn của nhân loại trước Titan'),
(4, 'Tôi thăng cấp một mình ', 'Jang Sung Lak', 'Theo chân Sung JinWoo trên hành trình từ \"thợ săn kém cỏi\" đến \"thợ săn hạng S mạnh nhất thế giới\".'),
(5, 'Chào Mừng Cậu Đến Trường Iruma-Kun\r\n', 'Đang cập nhật', 'Mairimashita! Iruma-kun là câu chuyện kể về cậu bé Suzuki Iruma, người đã bị bố mẹ mình kí khế ước bán cho ác ma để đổi lấy tiền tài và bình an. Cậu bé Iruma đáng thương từ lúc mới biết đi (1 tuổi) đã phải \"ra xã hội\" lăn lộn, buôn ba khắp nơi với hai vị phụ huynh \"tưng tửng\" cho đến ngày một Ác Ma đến rước cậu đến Ma giới theo khế ước. Tưởng chừng như sắp vào bụng quỷ thì vị Ác Ma già nua này đã khóc lóc yêu cầu cậu làm cháu trai ông ta, với bản tính lương thiện và tốt bụng đến cả bản thân mình cũng phải kinh ngạc, cậu bất đắc dĩ đã đồng ý lời đề nghị đó và nhập học trường Ác Ma theo ý ông ta. Chuyện gì sẽ xảy ra tiếp theo, mời các bạn theo dõi cuộc sống học đường đầy bất thường của Iruma-kun.'),
(6, 'Học Viện Anh Hùng', 'Đang cập nhật', 'Vào tương lai, lúc mà con người với những sức mạnh siêu nhiên là điều thường thấy quanh thế giới. Đây là câu chuyện về Izuku Midoriya, từ một kẻ bất tài trở thành một siêu anh hùng. Tất cả ta cần là mơ ước.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`) VALUES
(1, 'son', '123'),
(2, 'khoi', '123'),
(3, 'hieu', '123'),
(4, 'ngan', '123'),
(5, 'van anh', '123'),
(32, '123', '123'),
(38, '321', '321');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`chapter_id`),
  ADD KEY `story_id` (`story_id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `chapter_id` (`chapter_number`),
  ADD KEY `story_id` (`story_id`);

--
-- Chỉ mục cho bảng `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`story_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chapters`
--
ALTER TABLE `chapters`
  MODIFY `chapter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=408;

--
-- AUTO_INCREMENT cho bảng `stories`
--
ALTER TABLE `stories`
  MODIFY `story_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chapters`
--
ALTER TABLE `chapters`
  ADD CONSTRAINT `chapters_ibfk_1` FOREIGN KEY (`story_id`) REFERENCES `stories` (`story_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`chapter_number`) REFERENCES `chapters` (`chapter_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pages_ibfk_2` FOREIGN KEY (`story_id`) REFERENCES `stories` (`story_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
