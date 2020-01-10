-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 14, 2019 lúc 04:27 PM
-- Phiên bản máy phục vụ: 10.4.10-MariaDB
-- Phiên bản PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `demodjango`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add user', 1, 'add_taikhoan'),
(2, 'Can change user', 1, 'change_taikhoan'),
(3, 'Can delete user', 1, 'delete_taikhoan'),
(4, 'Can view user', 1, 'view_taikhoan'),
(5, 'Can add tag', 2, 'add_tag'),
(6, 'Can change tag', 2, 'change_tag'),
(7, 'Can delete tag', 2, 'delete_tag'),
(8, 'Can view tag', 2, 'view_tag'),
(9, 'Can add loai tin', 3, 'add_loaitin'),
(10, 'Can change loai tin', 3, 'change_loaitin'),
(11, 'Can delete loai tin', 3, 'delete_loaitin'),
(12, 'Can view loai tin', 3, 'view_loaitin'),
(13, 'Can add the loai', 4, 'add_theloai'),
(14, 'Can change the loai', 4, 'change_theloai'),
(15, 'Can delete the loai', 4, 'delete_theloai'),
(16, 'Can view the loai', 4, 'view_theloai'),
(17, 'Can add tin', 5, 'add_tin'),
(18, 'Can change tin', 5, 'change_tin'),
(19, 'Can delete tin', 5, 'delete_tin'),
(20, 'Can view tin', 5, 'view_tin'),
(21, 'Can add comment', 6, 'add_comment'),
(22, 'Can change comment', 6, 'change_comment'),
(23, 'Can delete comment', 6, 'delete_comment'),
(24, 'Can view comment', 6, 'view_comment'),
(25, 'Can add log entry', 7, 'add_logentry'),
(26, 'Can change log entry', 7, 'change_logentry'),
(27, 'Can delete log entry', 7, 'delete_logentry'),
(28, 'Can view log entry', 7, 'view_logentry'),
(29, 'Can add permission', 8, 'add_permission'),
(30, 'Can change permission', 8, 'change_permission'),
(31, 'Can delete permission', 8, 'delete_permission'),
(32, 'Can view permission', 8, 'view_permission'),
(33, 'Can add group', 9, 'add_group'),
(34, 'Can change group', 9, 'change_group'),
(35, 'Can delete group', 9, 'delete_group'),
(36, 'Can view group', 9, 'view_group'),
(37, 'Can add content type', 10, 'add_contenttype'),
(38, 'Can change content type', 10, 'change_contenttype'),
(39, 'Can delete content type', 10, 'delete_contenttype'),
(40, 'Can view content type', 10, 'view_contenttype'),
(41, 'Can add session', 11, 'add_session'),
(42, 'Can change session', 11, 'change_session'),
(43, 'Can delete session', 11, 'delete_session'),
(44, 'Can view session', 11, 'view_session');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_swedish_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_swedish_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-12-12 11:24:06.329196', '1', 'Thời sự', 1, '[{\"added\": {}}]', 4, 1),
(2, '2019-12-12 11:24:30.272285', '1', 'Thời sự', 2, '[]', 4, 1),
(3, '2019-12-12 11:24:42.974223', '2', 'Kinh doanh', 1, '[{\"added\": {}}]', 4, 1),
(4, '2019-12-12 11:24:52.943243', '3', 'Giải trí', 1, '[{\"added\": {}}]', 4, 1),
(5, '2019-12-12 11:24:57.628454', '4', 'Giáo dục', 1, '[{\"added\": {}}]', 4, 1),
(6, '2019-12-12 11:25:10.919082', '5', 'Đời sống', 1, '[{\"added\": {}}]', 4, 1),
(7, '2019-12-12 11:25:16.748191', '6', 'Pháp luật', 1, '[{\"added\": {}}]', 4, 1),
(8, '2019-12-12 11:25:24.508232', '7', 'Công nghệ', 1, '[{\"added\": {}}]', 4, 1),
(9, '2019-12-12 11:25:28.782780', '7', 'Công nghệ', 2, '[]', 4, 1),
(10, '2019-12-12 11:25:35.238922', '8', 'Thể thao', 1, '[{\"added\": {}}]', 4, 1),
(11, '2019-12-12 11:26:10.837586', '1', 'Chống tham lũng', 1, '[{\"added\": {}}]', 3, 1),
(12, '2019-12-12 11:26:27.391047', '2', 'Quốc hội', 1, '[{\"added\": {}}]', 3, 1),
(13, '2019-12-12 11:26:36.215376', '3', 'An toàn giao thông', 1, '[{\"added\": {}}]', 3, 1),
(14, '2019-12-12 11:26:46.444190', '4', 'Môi trường', 1, '[{\"added\": {}}]', 3, 1),
(15, '2019-12-12 11:26:55.166414', '5', 'Du học', 1, '[{\"added\": {}}]', 3, 1),
(16, '2019-12-12 11:27:04.444242', '6', 'Người thầy', 1, '[{\"added\": {}}]', 3, 1),
(17, '2019-12-12 11:27:20.895015', '7', 'Thế giới sao', 1, '[{\"added\": {}}]', 3, 1),
(18, '2019-12-12 11:27:25.351300', '8', 'Doanh nhân', 1, '[{\"added\": {}}]', 3, 1),
(19, '2019-12-12 11:34:53.941023', '8', 'Hà Nội chuyển công tác hơn 700 cán bộ, công chức để ngăn tham nhũng', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(20, '2019-12-12 11:35:21.250956', '7', 'Ô tô đoàn nghệ thuật tình thương lao vào vách núi, 2 người chết', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(21, '2019-12-12 11:35:33.852510', '6', 'Nguyên Phó Bí thư huyện kêu cứu, Công an Quảng Ngãi thông tin bất ngờ', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(22, '2019-12-12 11:35:43.956915', '5', 'Nghi vấn giật dây chuyền rồi ngã xe máy chết sau tai nạn ở Sài Gòn', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(23, '2019-12-12 11:35:51.990897', '4', 'Phòng chống tham nhũng là bước đột phá trong công tác xây dựng Đảng', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(24, '2019-12-12 11:36:00.369374', '3', 'Đi bão ăn mừng U22, xe bán tải đâm gãy cột điện, 2 người nhập viện', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(25, '2019-12-12 11:36:09.592814', '2', 'Phó Bí thư tỉnh Quảng Ngãi lên tiếng vụ người tố tiêu cực bị uy hiếp tính mạng', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(26, '2019-12-12 11:36:17.680423', '1', 'Ông Hoàng Trung Hải: Hà Nội vẫn dùng dịch vụ phần mềm của Nhật Cường', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(27, '2019-12-12 11:42:56.045953', '8', 'Hà Nội chuyển công tác hơn 700 cán bộ, công chức để ngăn tham nhũng', 2, '[]', 5, 1),
(28, '2019-12-12 11:43:26.257868', '9', 's;ldfjg;lsdfjg;sdl', 1, '[{\"added\": {}}]', 5, 1),
(29, '2019-12-12 12:28:57.287684', '9', 's;ldfjg;lsdfjg;sdl', 3, '', 5, 1),
(30, '2019-12-12 12:30:06.405780', '1', 'Ông Hoàng Trung Hải: Hà Nội vẫn dùng dịch vụ phần mềm của Nhật Cường', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(31, '2019-12-12 12:30:49.523810', '2', 'Phó Bí thư tỉnh Quảng Ngãi lên tiếng vụ người tố tiêu cực bị uy hiếp tính mạng', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(32, '2019-12-12 12:31:41.658911', '3', 'Đi bão ăn mừng U22, xe bán tải đâm gãy cột điện, 2 người nhập viện', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(33, '2019-12-12 12:31:56.801974', '4', 'Phòng chống tham nhũng là bước đột phá trong công tác xây dựng Đảng', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(34, '2019-12-12 12:32:08.406114', '5', 'Nghi vấn giật dây chuyền rồi ngã xe máy chết sau tai nạn ở Sài Gòn', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(35, '2019-12-12 12:32:57.862917', '6', 'Nguyên Phó Bí thư huyện kêu cứu, Công an Quảng Ngãi thông tin bất ngờ', 2, '[{\"changed\": {\"fields\": [\"anh\"]}}]', 5, 1),
(36, '2019-12-12 15:53:23.542723', '10', 'Bí thư Trương Quang Nghĩa: Đà Nẵng không chạy theo doanh nghiệp', 1, '[{\"added\": {}}]', 5, 2),
(37, '2019-12-12 16:12:36.591615', '11', 'Hàng loạt sai phạm tại dự án mở rộng quốc lộ 1 tỉnh Bình Định, Phú Yên', 1, '[{\"added\": {}}]', 5, 2),
(38, '2019-12-12 16:35:28.229742', '12', 'Chủ tịch Quốc hội hội kiến Thủ tướng Liên bang Nga', 1, '[{\"added\": {}}]', 5, 2),
(39, '2019-12-12 16:55:44.401182', '13', 'Chủ tịch Quốc hội nói về đường ngàn tỉ vừa bàn giao đã hư hỏng', 1, '[{\"added\": {}}]', 5, 2),
(40, '2019-12-12 16:58:26.448518', '13', 'Chủ tịch Quốc hội nói về đường ngàn tỉ vừa bàn giao đã hư hỏng', 2, '[{\"changed\": {\"fields\": [\"Nd\"]}}]', 5, 2),
(41, '2019-12-13 10:09:08.064720', '14', 'Quốc hội không \'lơ\' luật Biểu tình, luật về hội', 1, '[{\"added\": {}}]', 5, 2),
(42, '2019-12-13 10:09:16.739994', '15', 'Quốc hội không \'lơ\' luật Biểu tình, luật về hội', 1, '[{\"added\": {}}]', 5, 2),
(43, '2019-12-13 10:09:55.371292', '15', 'Quốc hội không \'lơ\' luật Biểu tình, luật về hội', 3, '', 5, 2),
(44, '2019-12-13 10:19:09.070909', '16', 'Chỉ có Phú Quốc đủ điều kiện miễn thị thực cho người nước ngoài', 1, '[{\"added\": {}}]', 5, 2),
(45, '2019-12-13 10:36:15.371104', '17', 'Phó Thủ tướng Vũ Đức Đam phụ trách toàn diện Bộ Y tế', 1, '[{\"added\": {}}]', 5, 2),
(46, '2019-12-13 10:36:27.643471', '18', 'Phó Thủ tướng Vũ Đức Đam phụ trách toàn diện Bộ Y tế', 1, '[{\"added\": {}}]', 5, 2),
(47, '2019-12-13 10:37:10.866217', '18', 'Phó Thủ tướng Vũ Đức Đam phụ trách toàn diện Bộ Y tế', 3, '', 5, 2),
(48, '2019-12-13 10:39:42.583386', '1', 'Ông Hoàng Trung Hải: Hà Nội vẫn dùng dịch vụ phần mềm của Nhật Cường', 2, '[{\"changed\": {\"fields\": [\"Nd\"]}}]', 5, 2),
(49, '2019-12-13 10:43:08.795602', '3', 'Đi bão ăn mừng U22, xe bán tải đâm gãy cột điện, 2 người nhập viện', 3, '', 5, 2),
(50, '2019-12-13 10:47:12.970494', '17', 'Phó Thủ tướng Vũ Đức Đam phụ trách toàn diện Bộ Y tế', 2, '[{\"changed\": {\"fields\": [\"Nd\"]}}]', 5, 2),
(51, '2019-12-13 10:48:42.638531', '17', 'Phó Thủ tướng Vũ Đức Đam phụ trách toàn diện Bộ Y tế', 2, '[{\"changed\": {\"fields\": [\"Nd\"]}}]', 5, 2),
(52, '2019-12-13 10:51:40.293271', '17', 'Phó Thủ tướng Vũ Đức Đam phụ trách toàn diện Bộ Y tế', 2, '[{\"changed\": {\"fields\": [\"Nd\"]}}]', 5, 2),
(53, '2019-12-13 10:55:17.961569', '17', 'Phó Thủ tướng Vũ Đức Đam phụ trách toàn diện Bộ Y tế', 2, '[{\"changed\": {\"fields\": [\"Nd\"]}}]', 5, 2),
(54, '2019-12-13 10:59:09.625439', '16', 'Chỉ có Phú Quốc đủ điều kiện miễn thị thực cho người nước ngoài', 2, '[{\"changed\": {\"fields\": [\"Nd\"]}}]', 5, 2),
(55, '2019-12-13 11:01:27.736053', '16', 'Chỉ có Phú Quốc đủ điều kiện miễn thị thực cho người nước ngoài', 2, '[{\"changed\": {\"fields\": [\"Nd\"]}}]', 5, 2),
(56, '2019-12-13 11:08:40.299911', '14', 'Quốc hội không \'lơ\' luật Biểu tình, luật về hội', 2, '[{\"changed\": {\"fields\": [\"Nd\"]}}]', 5, 2),
(57, '2019-12-13 11:18:55.386884', '10', 'Bí thư Trương Quang Nghĩa: Đà Nẵng không chạy theo doanh nghiệp', 2, '[{\"changed\": {\"fields\": [\"Nd\"]}}]', 5, 2),
(58, '2019-12-13 11:24:26.539737', '8', 'Hà Nội chuyển công tác hơn 700 cán bộ, công chức để ngăn tham nhũng', 2, '[{\"changed\": {\"fields\": [\"Nd\"]}}]', 5, 2),
(59, '2019-12-13 11:25:33.783365', '8', 'Hà Nội chuyển công tác hơn 700 cán bộ, công chức để ngăn tham nhũng', 2, '[]', 5, 2),
(60, '2019-12-13 11:27:44.776989', '8', 'Hà Nội chuyển công tác hơn 700 cán bộ, công chức để ngăn tham nhũng', 2, '[{\"changed\": {\"fields\": [\"View\"]}}]', 5, 2),
(61, '2019-12-13 11:28:21.487602', '6', 'Nguyên Phó Bí thư huyện kêu cứu, Công an Quảng Ngãi thông tin bất ngờ', 3, '', 5, 2),
(62, '2019-12-13 11:29:33.211570', '2', 'Phó Bí thư tỉnh Quảng Ngãi lên tiếng vụ người tố tiêu cực bị uy hiếp tính mạng', 3, '', 5, 2),
(63, '2019-12-13 11:30:07.839435', '4', 'Phòng chống tham nhũng là bước đột phá trong công tác xây dựng Đảng', 3, '', 5, 2),
(64, '2019-12-13 11:31:48.119484', '8', 'Hà Nội chuyển công tác hơn 700 cán bộ, công chức để ngăn tham nhũng', 2, '[{\"changed\": {\"fields\": [\"Nd\"]}}]', 5, 2),
(65, '2019-12-13 11:32:50.053163', '8', 'Hà Nội chuyển công tác hơn 700 cán bộ, công chức để ngăn tham nhũng', 2, '[{\"changed\": {\"fields\": [\"Nd\"]}}]', 5, 2),
(66, '2019-12-13 11:33:45.988149', '5', 'Nghi vấn giật dây chuyền rồi ngã xe máy chết sau tai nạn ở Sài Gòn', 3, '', 5, 2),
(67, '2019-12-13 11:34:34.854988', '7', 'Ô tô đoàn nghệ thuật tình thương lao vào vách núi, 2 người chết', 3, '', 5, 2),
(68, '2019-12-13 11:35:45.147880', '1', 'Ông Hoàng Trung Hải: Hà Nội vẫn dùng dịch vụ phần mềm của Nhật Cường', 2, '[{\"changed\": {\"fields\": [\"Nd\"]}}]', 5, 2),
(69, '2019-12-13 11:39:37.280179', '13', 'Chủ tịch Quốc hội nói về đường ngàn tỉ vừa bàn giao đã hư hỏng', 2, '[{\"changed\": {\"fields\": [\"Nd\"]}}]', 5, 2),
(70, '2019-12-13 11:40:41.597479', '13', 'Chủ tịch Quốc hội nói về đường ngàn tỉ vừa bàn giao đã hư hỏng', 2, '[{\"changed\": {\"fields\": [\"Nd\"]}}]', 5, 2),
(71, '2019-12-13 11:41:22.498127', '13', 'Chủ tịch Quốc hội nói về đường ngàn tỉ vừa bàn giao đã hư hỏng', 2, '[{\"changed\": {\"fields\": [\"Nd\"]}}]', 5, 2),
(72, '2019-12-13 11:42:02.145955', '13', 'Chủ tịch Quốc hội nói về đường ngàn tỉ vừa bàn giao đã hư hỏng', 2, '[{\"changed\": {\"fields\": [\"Nd\"]}}]', 5, 2),
(73, '2019-12-13 11:43:31.563409', '13', 'Chủ tịch Quốc hội nói về đường ngàn tỉ vừa bàn giao đã hư hỏng', 2, '[{\"changed\": {\"fields\": [\"Nd\"]}}]', 5, 2),
(74, '2019-12-13 11:44:34.550080', '13', 'Chủ tịch Quốc hội nói về đường ngàn tỉ vừa bàn giao đã hư hỏng', 2, '[{\"changed\": {\"fields\": [\"Nd\"]}}]', 5, 2),
(75, '2019-12-13 11:53:29.305652', '19', 'Tìm thấy thi thể 1 trong 3 thợ lặn mất tích khi trục vớt tàu chìm ở Cần Giờ', 1, '[{\"added\": {}}]', 5, 2),
(76, '2019-12-13 12:02:46.736239', '20', 'Đề xuất mở rộng việc đặt tiền bảo lãnh để xe vi phạm không thành sắt vụn', 1, '[{\"added\": {}}]', 5, 2),
(77, '2019-12-13 12:04:12.568775', '20', 'Đề xuất mở rộng việc đặt tiền bảo lãnh để xe vi phạm không thành sắt vụn', 2, '[{\"changed\": {\"fields\": [\"Nd\"]}}]', 5, 2),
(78, '2019-12-13 12:13:32.138630', '21', 'Chấn động: 11 hố chôn chất thải nguy hại chứa axit hữu cơ ở Sóc Sơn', 1, '[{\"added\": {}}]', 5, 2),
(79, '2019-12-13 12:15:11.465392', '21', 'Chấn động: 11 hố chôn chất thải nguy hại chứa axit hữu cơ ở Sóc Sơn', 2, '[{\"changed\": {\"fields\": [\"Nd\"]}}]', 5, 2),
(80, '2019-12-13 12:15:45.241660', '21', 'Chấn động: 11 hố chôn chất thải nguy hại chứa axit hữu cơ ở Sóc Sơn', 2, '[{\"changed\": {\"fields\": [\"Nd\"]}}]', 5, 2),
(81, '2019-12-13 12:20:48.956751', '22', 'Đâu chỉ sông Tô Lịch, công nghệ Nhật làm sạch vịnh Tokyo dịp Olympic 2020', 1, '[{\"added\": {}}]', 5, 2),
(82, '2019-12-13 12:21:32.698152', '22', 'Đâu chỉ sông Tô Lịch, công nghệ Nhật làm sạch vịnh Tokyo dịp Olympic 2020', 2, '[{\"changed\": {\"fields\": [\"Nd\"]}}]', 5, 2),
(83, '2019-12-13 12:36:27.243756', '23', 'Thực hư việc dùng chất thải nguy hại của Formosa Hà Tĩnh san lấp mặt bằng', 1, '[{\"added\": {}}]', 5, 2),
(84, '2019-12-13 12:37:06.940975', '23', 'Thực hư việc dùng chất thải nguy hại của Formosa Hà Tĩnh san lấp mặt bằng', 2, '[]', 5, 2),
(85, '2019-12-13 12:44:40.685303', '24', '\'Siêu máy bay\' đưa đội tuyển U22 Việt Nam về muộn vì sân bay ùn tắc', 1, '[{\"added\": {}}]', 5, 2),
(86, '2019-12-13 12:51:45.230866', '25', '11 sự thật về độ giàu có của ông chủ Amazon', 1, '[{\"added\": {}}]', 5, 2),
(87, '2019-12-13 12:52:53.466605', '25', '11 sự thật về độ giàu có của ông chủ Amazon', 2, '[{\"changed\": {\"fields\": [\"Nd\"]}}]', 5, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'admin', 'logentry'),
(9, 'auth', 'group'),
(8, 'auth', 'permission'),
(10, 'contenttypes', 'contenttype'),
(11, 'sessions', 'session'),
(2, 'Tag', 'tag'),
(1, 'TaiKhoan', 'taikhoan'),
(6, 'Tin', 'comment'),
(3, 'Tin', 'loaitin'),
(4, 'Tin', 'theloai'),
(5, 'Tin', 'tin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Tag', '0001_initial', '2019-12-12 11:08:17.642756'),
(2, 'contenttypes', '0001_initial', '2019-12-12 11:08:19.116688'),
(3, 'contenttypes', '0002_remove_content_type_name', '2019-12-12 11:08:20.654864'),
(4, 'auth', '0001_initial', '2019-12-12 11:08:23.026926'),
(5, 'auth', '0002_alter_permission_name_max_length', '2019-12-12 11:08:31.355543'),
(6, 'auth', '0003_alter_user_email_max_length', '2019-12-12 11:08:31.392634'),
(7, 'auth', '0004_alter_user_username_opts', '2019-12-12 11:08:31.464626'),
(8, 'auth', '0005_alter_user_last_login_null', '2019-12-12 11:08:31.510598'),
(9, 'auth', '0006_require_contenttypes_0002', '2019-12-12 11:08:31.547589'),
(10, 'auth', '0007_alter_validators_add_error_messages', '2019-12-12 11:08:31.605556'),
(11, 'auth', '0008_alter_user_username_max_length', '2019-12-12 11:08:31.668530'),
(12, 'auth', '0009_alter_user_last_name_max_length', '2019-12-12 11:08:31.713870'),
(13, 'auth', '0010_alter_group_name_max_length', '2019-12-12 11:08:33.994438'),
(14, 'auth', '0011_update_proxy_permissions', '2019-12-12 11:08:34.177334'),
(15, 'TaiKhoan', '0001_initial', '2019-12-12 11:08:35.675240'),
(16, 'Tin', '0001_initial', '2019-12-12 11:08:45.251436'),
(17, 'Tin', '0002_auto_20191212_1755', '2019-12-12 11:08:53.680464'),
(18, 'Tin', '0003_auto_20191212_1758', '2019-12-12 11:09:06.158510'),
(19, 'admin', '0001_initial', '2019-12-12 11:09:07.275449'),
(20, 'admin', '0002_logentry_remove_auto_add', '2019-12-12 11:09:12.486977'),
(21, 'admin', '0003_logentry_add_action_flag_choices', '2019-12-12 11:09:12.595053'),
(22, 'sessions', '0001_initial', '2019-12-12 11:09:13.125494'),
(23, 'Tin', '0004_auto_20191212_1818', '2019-12-12 11:18:58.536484');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_swedish_ci NOT NULL,
  `session_data` longtext COLLATE utf8_swedish_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ag9qagdiyswds3r3391renmi0wjjcyg9', 'MWU5OTFjN2U0NmFiOGEzMGY1MzQ0ZjFiM2U0YjRhOGRkODkyZTU1Mzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzc1ODI4ZWE0YjVkN2M0MzUzZGY2YTlmYjc5Mjc4NDZkYjVlZWIwIn0=', '2019-12-26 16:08:45.517862'),
('istoog130r27jjpzfwssan6b6b00su08', 'MWU5OTFjN2U0NmFiOGEzMGY1MzQ0ZjFiM2U0YjRhOGRkODkyZTU1Mzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzc1ODI4ZWE0YjVkN2M0MzUzZGY2YTlmYjc5Mjc4NDZkYjVlZWIwIn0=', '2019-12-26 15:40:08.984450'),
('l4hmhsvnaea5ibpp9vh0zi7qizzylvdi', 'MzQyNzM0ZjU5YzI1OTM2MWJmZDY2MWFhOGNkZjI2MDdkODA1NWMxODp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMDNkMzhlN2NjZGE1YzQ1MzM1YTI1N2E4MDM2MTAyZjEzNThhNTM0In0=', '2019-12-28 13:00:21.463190'),
('vz9d2xcyiyfzdu9cpnufykakzpkm0lto', 'NTQxOThlMWE1ZDdhNDg5ZjkxMGQyMzgxN2E0ZGEwMDMzMTI4MTgzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NzczMTUzMDIyYWJjOWM3ZTBkYzAwMDU3YTEyYzBkMTZhY2FlZTU5In0=', '2019-12-26 11:11:20.742915');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tag_tag`
--

CREATE TABLE `tag_tag` (
  `id` int(11) NOT NULL,
  `nd` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `soLuong` int(11) NOT NULL,
  `create_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tag_tag`
--

INSERT INTO `tag_tag` (`id`, `nd`, `soLuong`, `create_at`) VALUES
(1, 'Hà Nội', 5, '2019-12-14 12:54:53.428164'),
(2, '11 hố chôn', 1, '2019-12-14 12:55:14.639959'),
(3, 'VĨnh phúc', 1, '2019-12-14 13:14:12.431373'),
(4, 'phú quốc', 2, '2019-12-14 13:14:21.798698'),
(5, 'Phú Quốc', 1, '2019-12-14 13:14:28.389676'),
(6, 'H', 4, '2019-12-14 14:52:34.438129');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan_taikhoan`
--

CREATE TABLE `taikhoan_taikhoan` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_swedish_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_swedish_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_swedish_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_swedish_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_swedish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `age` int(11) NOT NULL,
  `diaChi` longtext COLLATE utf8_swedish_ci NOT NULL,
  `gioiTinh` varchar(255) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan_taikhoan`
--

INSERT INTO `taikhoan_taikhoan` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `age`, `diaChi`, `gioiTinh`) VALUES
(1, 'pbkdf2_sha256$150000$Av1y8Xp403Er$iYKf9GJu9Os/7GaDZ5jV5WW3AqOVp7yQ6GGumDVJewg=', '2019-12-12 11:11:20.672146', 1, 'admin', '', '', '', 1, 1, '2019-12-12 11:11:15.961170', 0, '', ''),
(2, 'pbkdf2_sha256$180000$lGBfpGXRxm5e$FP0d8VM7buM4QY3SmQ/BdXtU/ds38aQTgju04bXkfHA=', '2019-12-12 16:08:45.510866', 1, 'Hanh', '', '', 'hanh@gmail.com', 1, 1, '2019-12-12 15:39:33.995924', 0, '', ''),
(3, 'pbkdf2_sha256$150000$UsO7SORVhhUm$FW3BHJZpmDKnugJBmzIIvnhQo4/MTYsHtTez0zCXfOE=', '2019-12-14 13:00:21.391960', 1, 'son', '', '', 'son@gmail.com', 1, 1, '2019-12-14 13:00:17.893854', 0, '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan_taikhoan_groups`
--

CREATE TABLE `taikhoan_taikhoan_groups` (
  `id` int(11) NOT NULL,
  `taikhoan_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan_taikhoan_user_permissions`
--

CREATE TABLE `taikhoan_taikhoan_user_permissions` (
  `id` int(11) NOT NULL,
  `taikhoan_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin_comment`
--

CREATE TABLE `tin_comment` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `gmail` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `nd` longtext COLLATE utf8_swedish_ci NOT NULL,
  `creat_at` datetime(6) NOT NULL,
  `update_at` datetime(6) NOT NULL,
  `id_Tin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tin_comment`
--

INSERT INTO `tin_comment` (`id`, `name`, `gmail`, `nd`, `creat_at`, `update_at`, `id_Tin_id`) VALUES
(1, 'son', 'son@gmail.com', 'comment đầu tiên', '2019-12-14 13:11:37.832763', '2019-12-14 13:11:37.885807', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin_loaitin`
--

CREATE TABLE `tin_loaitin` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `tenKhongDau` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `idTheLoai_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tin_loaitin`
--

INSERT INTO `tin_loaitin` (`id`, `ten`, `tenKhongDau`, `idTheLoai_id`) VALUES
(1, 'Chống tham lũng', 'chong-tham-lung', 1),
(2, 'Quốc hội', 'quoc-hoi', 1),
(3, 'An toàn giao thông', 'an-toan-giao-thong', 1),
(4, 'Môi trường', 'moi-truong', 1),
(5, 'Du học', 'du-hoc', 4),
(6, 'Người thầy', 'nguoi-thay', 4),
(7, 'Thế giới sao', 'the-gioi-sao', 3),
(8, 'Doanh nhân', 'doanh-nhan', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin_theloai`
--

CREATE TABLE `tin_theloai` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `tenKhongDau` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tin_theloai`
--

INSERT INTO `tin_theloai` (`id`, `ten`, `tenKhongDau`) VALUES
(1, 'Thời sự', 'thoi-su'),
(2, 'Kinh doanh', 'kinh-doanh'),
(3, 'Giải trí', 'giai-tri'),
(4, 'Giáo dục', 'giao-duc'),
(5, 'Đời sống', 'oi-song'),
(6, 'Pháp luật', 'phap-luat'),
(7, 'Công nghệ', 'cong-nghe'),
(8, 'Thể thao', 'the-thao');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin_tin`
--

CREATE TABLE `tin_tin` (
  `id` int(11) NOT NULL,
  `tieuDe` longtext COLLATE utf8_swedish_ci NOT NULL,
  `tieuDeKhongDau` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `ndTomTat` longtext COLLATE utf8_swedish_ci NOT NULL,
  `nd` longtext COLLATE utf8_swedish_ci NOT NULL,
  `anh` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `view` int(11) NOT NULL,
  `tacGia` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `update_at` datetime(6) NOT NULL,
  `id_lt_id` int(11) NOT NULL,
  `id_tl_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tin_tin`
--

INSERT INTO `tin_tin` (`id`, `tieuDe`, `tieuDeKhongDau`, `ndTomTat`, `nd`, `anh`, `view`, `tacGia`, `create_at`, `update_at`, `id_lt_id`, `id_tl_id`) VALUES
(1, 'Ông Hoàng Trung Hải: Hà Nội vẫn dùng dịch vụ phần mềm của Nhật Cường', 'ong-hoang-trung-hai-ha-noi-van-dung-dich-vu-phan-mem-cua-nhat-cuong', 'Bí thư Thành ủy Hà Nội Hoàng Trung Hải cho biết, các dịch vụ phần mềm do Nhật Cường cung cấp vẫn đang được TP sử dụng.', '<p><h2><b><br>Bí thư Thành ủy Hà Nội Hoàng Trung Hải cho biết, các dịch vụ phần mềm do Nhật Cường cung cấp vẫn đang được TP sử dụng.</br></b></h2></p>\r\n<p>Liên quan vụ Nhật Cường, mới đây Bộ Công an đã bắt nguyên Phó giám đốc Sở KH&ĐT Nguyễn Tiến Học vì vi phạm quy định về đấu thầu gây hậu quả nghiêm trọng.\r\n\r\nBên lề kỳ họp HĐND TP Hà Nội sáng nay, báo chí đặt câu hỏi với Bí thư Thành uỷ Hà Nội Hoàng Trung Hải về dịch vụ phần mềm của Nhật Cường cung cấp cho TP có tiếp tục được sử dụng.\r\n\r\nTrả lời câu hỏi này, ông Hoàng Trung Hải nói: “Các dịch vụ đó vẫn đang sử dụng”.</p>\r\n<img src=\"https://vnn-imgs-f.vgcloud.vn/2019/12/09/11/1-1.JPG\"><p>\r\nTheo lãnh đạo Thành ủy, việc vi phạm thế nào cơ quan pháp luật sẽ kết luận, còn những dịch vụ TP đang sử dụng thì vẫn sử dụng bình thường.\r\n</p>\r\n<p>\r\n“Thực tế vừa rồi các phần mềm cung cấp dịch vụ công cấp độ 3, cấp độ 4, rồi đăng ký doanh nghiệp, đăng ký kinh doanh qua mạng thì tất cả vẫn hoạt động bình thường. TP phải có người quản trị việc đó”, ông Hải nói.\r\n</p>\r\n<p>\r\nPV tiếp tục hỏi: Sau động thái của cơ quan điều tra, TP có chỉ đạo thanh tra, rà soát lại quá trình đấu thầu cung cấp dịch vụ công?\r\n\r\n\"Không, về nguyên tắc cơ quan điều tra đang điều tra thì mình hợp tác với cơ quan điều tra để họ làm. Hà Nội sẽ hợp tác với cơ quan điều tra để làm\", ông Hải nói.\r\n\r\nCùng vấn đề trên, Chủ tịch UBND TP Hà Nội Nguyễn Đức Chung đề nghị báo chí “chờ cơ quan điều tra kết luận”.\r\n\r\nTrao đổi thêm, Giám đốc Sở KH&ĐT Nguyễn Mạnh Quyền cho biết, sau động thái của Bộ Công an, Sở sẽ chỉ đạo rà soát lại công tác đấu thầu.\r\n\r\n“Đó là việc đương nhiên, phải có rà soát và báo cáo Thành ủy, UBND TP để xin chỉ đạo”, ông Quyền khẳng định. Ông nói thêm, có vấn đề gì thì mời PV đến Sở để phân công người cung cấp thông tin.\r\n\r\nCơ quan Cảnh sát điều tra Bộ Công an (C03) đang điều tra mở rộng vụ án Buôn lậu, Vi phạm quy định về kế toán gây hậu quả nghiêm trọng, Rửa tiền xảy ra tại công ty TNHH Thương mại và dịch vụ kỹ thuật Nhật Cường, công ty TNHH Giải pháp phần mềm Nhật Cường (Nhật Cường Software) và các đơn vị có liên quan.\r\n</p>\r\nNgày 29/11, Bộ Công an đã khởi tố, bắt tạm giam nguyên Phó giám đốc Sở KH&ĐT Hà Nội Nguyễn Tiến Học và 2 người khác về tội Vi phạm quy định về đấu thầu gây hậu quả nghiêm trọng.\r\n<p>\r\nCơ quan Cảnh sát điều tra, Bộ Công an cũng đã ra quyết định bổ sung quyết định khởi tố bị can đối với Bùi Quang Huy, TGĐ công ty TNHH Thương mại và dịch vụ Nhật Cường, Giám đốc công ty TNHH Giải pháp phần mềm Nhật Cường (hiện đang bị truy nã). \r\n</p>', 'images/19/12/12/ong-hoang-trung-hai-ha-noi-van-dung-dich-vu-phan-mem-cua-nhat-cuong-240x_gPAlAeF.jpg', 72, 'admin', '2019-12-11 16:47:34.697716', '2019-12-14 13:11:37.775634', 1, 1),
(8, 'Hà Nội chuyển công tác hơn 700 cán bộ, công chức để ngăn tham nhũng', 'ha-noi-chuyen-cong-tac-hon-700-can-bo-cong-chuc-e-ngan-tham-nhung', 'TP Hà Nội đã chuyển đổi vị trí công tác của 714 cán bộ, công chức nhằm ngăn ngừa tham nhũng.', '<p><h2><b><br>TP Hà Nội đã chuyển đổi vị trí công tác của 714 cán bộ, công chức nhằm ngăn ngừa tham nhũng.</b></h2></p></br>\r\n<p>Kỳ họp thứ 11, khoá 15 của HĐND TP Hà Nội khai mạc sáng nay.\r\n\r\nTờ trình của UBND TP về báo cáo công tác phòng, chống tham nhũng năm 2019 nêu nhiều kết quả đã đạt được trong năm.\r\n\r\nTheo đó, TP đã triển khai kiểm tra 578 cơ quan, tổ chức, đơn vị về việc thực hiện các quy định về công khai, minh bạch trong hoạt động.</p>\r\n<img src=\"https://vnn-imgs-f.vgcloud.vn/2019/12/03/09/ha-noi-chuyen-vi-tri-cong-tac-hon-700-can-bo-de-ngan-tham-nhung.jpg\">\r\n<p>\r\nViệc ban hành và thực hiện các chế độ, định mức, tiêu chuẩn cũng được thực hiện trên tất cả các lĩnh vực với 360 cuộc kiểm tra. Qua đó, phát hiện 1 vụ việc và 2 cá nhân vi phạm quy định về chế độ, định mức, tiêu chuẩn.</p>\r\n<p>\r\nViệc thực hiện quy tắc ứng xử của cán bộ, công chức, viên chức được giám sát chặt chẽ. Gần 450 cơ quan, tổ chức đã được kiểm tra và có 4 trường hợp vi phạm được xem xét, xử lý.</p>\r\n<p>\r\nBáo cáo cho biết, năm 2019, Hà Nội đã chuyển đổi vị trí công tác của 714 cán bộ, công chức nhằm ngăn ngừa tham nhũng.</p>\r\n<p>\r\nTP cũng đã tăng cường công tác tuyên truyền, quán triệt và tổ chức thực hiện tốt các chính sách về chính sách tinh giản biên chế. Hà Nội đã phê duyệt danh sách và kinh phí tinh giản biên chế 6 đợt với 191 trường hợp (176 trường hợp về hưu trước tuổi, 15 trường hợp thôi việc ngay).</p>\r\n<p>\r\nĐồng thời phê duyệt danh sách và kinh phí chi trả cho cán bộ nghỉ hưu trước tuổi do không đủ điều kiện về tuổi tái cử, tái bổ nhiệm giữ chức vụ, chức danh trong 2 đợt với 62 cán bộ\r\n.</p>\r\n<p>\r\nVề kết quả phát hiện, xử lý tham nhũng, vi phạm, UBND TP thông tin đã chuyển cơ quan điều tra 5 vụ việc và kiến nghị chuyển cơ quan điều tra 8 vụ.\r\n</p>\r\n<p>\r\nCông an Hà Nội cũng đã chuyển VKS các cấp đề nghị truy tố 18 vụ với 56 bị can; tạm đình chỉ điều tra 1 vụ với 3 bị can; đang điều tra 21 vụ với 53 bị can; số vụ án đang điều tra là 4 vụ với 1 bị can.\r\n</p>\r\n<p>\r\nHà Nội nhận định tình hình tham nhũng trên địa bàn vẫn diễn biến phức tạp, thủ đoạn tinh vi hơn, phạm vi, lĩnh vực tham nhũng rộng, tiềm ẩn trong một số lĩnh vực như quản lý, sử dụng đất đai, GPMB, đầu tư xây dựng, tài chính...\r\n</p>\r\n<p>\r\nNguyên nhân của những tồn tại được TP chỉ ra là do công tác quản lý Nhà nước còn bộc lộ nhiều kẽ hở, trình độ quản lý còn hạn chế.\r\n</p>\r\n<p>\r\nTrong khi đó, một bộ phận cán bộ, công chức thiếu tu dưỡng, rèn luyện, lợi dụng sơ hở trong quản lý, cơ chế, chính sách hoặc lợi dụng nhiệm vụ được giao làm trái quy định, quy trình công tác để vụ lợi.\r\n</p>\r\n<p>\r\nMột số đơn vị chưa quyết liệt trong chỉ đạo, tổ chức thực hiện công tác PCTN; các cơ quan PCTN tại một số đơn vị, địa phương còn lúng túng trong việc đề ra các giải pháp, phòng ngừa, chống tham nhũng…\r\n\r\n</p>', 'images/19/12/12/ha-noi-chuyen-vi-tri-cong-tac-hon-700-can-bo-de-ngan-tham-nhung-240x160.jpg', 82, 'Hạnh', '2019-12-11 16:51:16.112827', '2019-12-14 13:26:41.074258', 1, 1),
(10, 'Bí thư Trương Quang Nghĩa: Đà Nẵng không chạy theo doanh nghiệp', 'bi-thu-truong-quang-nghia-a-nang-khong-chay-theo-doanh-nghiep', 'Sáng nay, ông Trương Quang Nghĩa, Bí thư Thành ủy, Trưởng đoàn ĐBQH TP Đà Nẵng có buổi tiếp xúc với cử tri sau kỳ họp QH thứ 8.', '<h3>Sáng nay, ông Trương Quang Nghĩa, Bí thư Thành ủy, Trưởng đoàn ĐBQH TP Đà Nẵng có buổi tiếp xúc với cử tri sau kỳ họp QH thứ 8.</h3>\r\n<p>Cử tri các quận Hải Châu, Thanh Khê, Cẩm Lệ, Sơn Trà, Ngũ Hành Sơn đặt nhiều câu hỏi liên quan các vấn đề nóng như chống tham nhũng, quy hoạch thành phố, giáo dục...</p>\r\n<p>Cử tri Nguyễn Quang Nga cho rằng, công tác phòng chống tham nhũng thời gian qua đã đạt được kết quả tốt. Tuy nhiên, một số nơi chưa giải quyết triệt để, xử lý không nghiêm làm cho không ít người dân băn khoăn.</p>\r\n<img src=\"https://vnn-imgs-f.vgcloud.vn/2019/12/03/15/anh2.jpg\">\r\n\r\n<p>21 cán bộ tại Đà Nẵng bị khởi tố, chuẩn bị hầu tòa liên quan Vũ \'nhôm\' là do thời gian dài có sự bưng bít sai phạm, tung hô thành tích lên nên mới như thế. Mọi thứ do công tác tổ chức cán bộ, tham những từ đây mà ra”, ông Nga đặt vấn đề.</p>\r\n<p>Theo cử tri Nguyễn Minh Dưỡng, thời gian qua, việc một số cán bộ đầu ngành, các tướng lĩnh tham nhũng bị xử lý hình sự… đặt ra dấu hỏi về công tác quản lý, giáo dục cán bộ.</p>\r\n<p>Bí thư Thành ủy Đà Nẵng cho biết trong 2 năm qua, TP quyết tâm khắc phục tồn tại. Nhiều người đã hỏi ông bao giờ xử vụ án Vũ “nhôm” liên quan đến sai phạm đất đai Đà Nẵng.</p>\r\n<p>“Cơ quan điều tra đã tống đạt các quyết định qua VKS. Hiện VKS đang thẩm định hồ sơ và sẽ xác định ngày xử án… Đây là bài học xương máu. Rất mong cử tri chia sẻ với các công việc đang giải quyết, không phải là đơn giản, phải tháo từng cái một”, ông Trương Quang Nghĩa nói.</p>', 'images/19/12/12/anh1-1.jpg', 36, 'hạnh', '2019-12-12 15:53:23.526734', '2019-12-14 14:41:19.375677', 1, 1),
(11, 'Hàng loạt sai phạm tại dự án mở rộng quốc lộ 1 tỉnh Bình Định, Phú Yên', 'hang-loat-sai-pham-tai-du-an-mo-rong-quoc-lo-1-tinh-binh-inh-phu-yen', 'Thanh tra Chính phủ chiều nay công bố kết luận thanh tra đối với dự án đầu tư xây dựng công trình mở rộng quốc lộ 1 đoạn từ Km1125-1265, tỉnh Bình Định và Phú Yên', '<p><h3><b>Thanh tra Chính phủ chiều nay công bố kết luận thanh tra đối với dự án đầu tư xây dựng công trình mở rộng quốc lộ 1 đoạn từ Km1125-1265, tỉnh Bình Định và Phú Yên.</b></h3></p>\r\n<p>Dự án có chiều dài khoảng 118km, từ khi được thông xe kỹ thuật và nghiệm thu đưa vào khai thác, sử dụng đã góp phần tăng cường năng lực giao thông từ Bắc vào Nam và phát triển kinh tế - xã hội</p>\r\n<p>Theo kết luận thanh tra, sau 3 năm đưa vào khai thác, sử dụng dự án đã xuất hiện nhiều vấn đề về chất lượng công trình</p>\r\n<p><b>Thiết kế cơ sở chưa đúng</p></b>\r\n<p>Thiết kế cơ sở dự án BOT Nam Bình Định sử dụng lại cống cũ ngang đường, thiết kế mặt đường bê tông nhựa tại một số vị trí thường xuyên ngập là chưa phù hợp với thực tế, thiếu đồng bộ, dẫn đến mặt đường tại khu vực đó luôn bị ngập khi thời tiết mưa, có nơi ngập sâu từ 30cm đến 60cm, ảnh hưởng đến chất lượng công trình</p>\r\n<img src=\"https://vnn-imgs-f.vgcloud.vn/2019/12/12/18/hang-loat-sai-pham-tai-du-an-mo-rong-ql1-tinh-binh-dinh-va-phu-yen.jpg\">\r\n<p>Từ những thiếu sót, khuyết điểm, vi phạm, khi công trình gặp yếu tố bất lợi về thời tiết, nước mặt tích tụ thẩm thấu vào kết cấu bê tông nhựa, đồng thời dưới tác động của tải trọng xe với mật độ giao thông lớn, liên tục dẫn đến mặt đường bị hư hỏng, ảnh hưởng đến nền đường, từ đó suy giảm chất lượng và tuổi thọ công trình.</p>\r\n<p><b>Sơ hở ảnh hưởng đến lợi ích Nhà nước</p></b>\r\n<p>Ban quản lý dự án 2 có thiếu sót khi lập hồ sơ yêu cầu đã yêu cầu nguồn vốn đầu tư đối với nhà đầu tư tại dự án BOT Nam Bình Định thấp hơn tổng mức đầu tư của dự án, ảnh hưởng nhất định đến việc đảm bảo vốn để thực hiện dự án</p>\r\n<p>Ban quản lý dự án 2 không đăng thông tin kết quả lựa chọn nhà đầu tư theo quy định; đến thời điểm tổ chức lựa chọn nhà đầu tư để thực hiện dự án, Bộ GTVT không công bố lại danh mục dự án.\r\n</p>', 'images/19/12/12/hang-loat-sai-pham-tai-du-an-mo-rong-ql1-tinh-binh-dinh-va-phu-yen.jpg', 68, 'Son', '2019-12-12 16:12:36.589614', '2019-12-14 12:57:42.697256', 1, 1),
(12, 'Chủ tịch Quốc hội hội kiến Thủ tướng Liên bang Nga', 'chu-tich-quoc-hoi-hoi-kien-thu-tuong-lien-bang-nga', 'Trưa 11/12 (giờ địa phương), trong khuôn khổ chuyến thăm chính thức Liên bang Nga, Chủ tịch QH Nguyễn Thị Kim Ngân đã hội kiến Thủ tướng Dmitry Medvedev tại Thủ đô Moscow', '<p><h3><b>Chủ tịch Quốc hội hội kiến Thủ tướng Liên bang Nga\r\n</b></h3></p>\r\n<p>Chủ tịch Quốc hội Nguyễn Thị Kim Ngân bày tỏ vui mừng dẫn đầu Đoàn đại biểu cấp cao Quốc hội Việt Nam thăm chính thức Liên bang Nga và hội kiến Thủ tướng Medvedev - người bạn thân thiết của nhân dân Việt Nam.</p>\r\n<img src=\"https://vnn-imgs-a1.vgcloud.vn/baochinhphu.vn/Uploaded/buithuhuong/2019_12_12/5.thu%20tuong.1.jpg\">\r\n<p>Thủ tướng Medvedev chào mừng Chủ tịch Quốc hội Nguyễn Thị Kim Ngân thăm chính thức Liên bang Nga. Nhấn mạnh đây là chuyến thăm có ý nghĩa quan trọng đối với việc thúc đẩy quan hệ hợp tác Liên bang Nga-Việt Nam, Thủ tướng Medvedev bày tỏ tin tưởng chuyến thăm sẽ thành công tốt đẹp.</p>\r\n<p>Chủ tịch Quốc hội Nguyễn Thị Kim Ngân đánh giá cao quan hệ Việt Nam và Liên bang Nga đang phát triển tốt đẹp về mọi mặt</p>\r\n<p>Bà khẳng định, Quốc hội Việt Nam luôn ủng hộ tăng cường hơn nữa hợp tác toàn diện giữa Việt Nam và Nga, sẵn sàng phối hợp với Chính phủ kịp thời tháo gỡ khó khăn, vướng mắc trong hợp tác song phương, góp phần đưa hợp tác Việt-Nga ngày càng đi vào chiều sâu và hiệu quả</p>\r\n<p>Trong đó, Chủ tịch Quốc hội nhắc đến việc thực hiện các thỏa thuận đạt được giữa hai Thủ tướng hai nước trong chuyến thăm chính thức Việt Nam của Thủ tướng Medvedev vào tháng 11/2018, cũng như chuyến thăm chính thức Nga của Thủ tướng Nguyễn Xuân Phúc tháng 5/2019.</p>\r\n<p>Thời gian qua, đã có nhiều dự án đầu tư lớn giữa hai nước được triển khai. Hai bên cũng còn rất nhiều tiềm năng hợp tác đầu tư trên các lĩnh vực Phát triển hạ tầng đô thị, giao thông, đường sắt và cảng biển, kinh tế số, năng lượng hạt nhân... </p>\r\n<p>Ngoài những dự án của Nga tại Việt Nam, đã có những dự án đầu tư của Việt Nam tại Nga, ví dụ như dự án chăn nuôi bò sữa công nghệ cao của Tập đoàn TH True Milk tại Nga.</p>\r\n<p>Hai bên đã và đang hợp tác trong lĩnh vực công nghệ số. Việt Nam ủng hộ các doanh nghiệp đầu tư ra nước ngoài, xây dựng chính phủ điện tử; đề nghị hai bên thúc đẩy đàm phán về việc đi lại của công dân hai nước.</p>\r\n<p>Trung tâm Nghiên cứu khoa học và công nghệ hạt nhân tại Việt Nam là dự án hợp tác quan trọng đối với quan hệ Đối tác chiến lược toàn diện Việt-Nga, mở ra hướng hợp tác chiến lược mới giữa hai nước. Hiện vẫn còn một số vấn đề liên quan, Chủ tịch Quốc hội đề nghị Bộ Tài chính hai bên sớm trao đổi, thống nhất  để có thể bắt đầu triển khai.</p>\r\n<img src=\"https://vnn-imgs-a1.vgcloud.vn/baochinhphu.vn/Uploaded/buithuhuong/2019_12_12/1.toan%20ca%CC%89nh.7.jpg\">\r\n<p>Thủ tướng D. Medvedev nhấn mạnh, Liên bang Nga và Việt Nam có mối quan hệ rất tốt đẹp. Năm 2020 là dịp có nhiều sự kiện quan trọng mà Nga và Việt Nam cùng kỷ niệm. Trong năm 2019, hai Thủ tướng hai nước đã khai mạc Năm chéo với khoảng 120 hoạt động được tổ chức, góp phần quan trọng tăng cường tình hữu nghị giữa hai nước. Thủ tướng Medvedev đánh giá quan hệ hợp tác giữa Quốc hội hai nước rất hiệu quả. </p>', 'images/19/12/12/5.thu_tuong.1.jpg', 70, 'BuiThiHuong', '2019-12-12 16:35:28.225749', '2019-12-12 16:35:28.225749', 2, 1),
(13, 'Chủ tịch Quốc hội nói về đường ngàn tỉ vừa bàn giao đã hư hỏng', 'chu-tich-quoc-hoi-noi-ve-uong-ngan-ti-vua-ban-giao-a-hu-hong', 'Chủ tịch Quốc hội Nguyễn Thị Kim Ngân chiều nay dẫn đầu đoàn ĐBQH TP Cần Thơ có buổi tiếp xúc cử tri tại huyện Phong Điền.', '<p><h3><b>Chủ tịch Quốc hội nói về đường ngàn tỉ vừa bàn giao đã hư hỏng\r\n</b></h3></p>\r\n<br>\r\n</br>\r\n\r\n<p><b>Chủ tịch Quốc hội Nguyễn Thị Kim Ngân chiều nay dẫn đầu đoàn ĐBQH TP Cần Thơ có buổi tiếp xúc cử tri tại huyện Phong Điền</b></p>\r\n\r\n<p>Tại buổi tiếp xúc, cử tri Võ Văn Chính cho rằng, hiện nay chất lượng công trình giao thông đang gây bức xúc cho người dân. Nhiều công trình giao thông nghìn tỷ đồng, đội vốn cao, thi công mới xong, đưa vào sử dụng vài tháng đã xuống cấp, hư hỏng nặng</p>\r\n<br>\r\n</br>\r\n\r\n<img src=\"https://vnn-imgs-f.vgcloud.vn/2019/11/28/18/cu-tri-hoi-vi-sao-duong-giao-thong-nghin-ti-vua-ban-giao-da-hu-hong-1.JPG\">\r\n<br>\r\n</br>\r\n\r\n<p>“Thậm chí có công trình chưa vào sử dụng đã hư hỏng làm thất thoát lớn tiền của nhân dân, lãng phí ngân sách nhà nước. Đặc biệt làm mất lòng tin trong xã hội và ảnh hưởng \r\nđến tốc độ phát triển của đất nước”, cử tri Chính nêu.</p>\r\n\r\n<p>Cử tri này chỉ ra những công trình giao thông lớn gần đây được đầu tư hàng nghìn tỷ đồng đã bị xuống cấp, hư hỏng ngay sau khi đưa vào sử dụng như: cao tốc Đà Nẵng – Quảng Ngãi, đường Hồ Chí Minh, đoạn tránh Chư Sê (Gia Lai)…</p>\r\n\r\n<p>“Chúng tôi rất lo lắng về vấn đề này. Mong QH, Chính phủ cho biết nguyên nhân do đâu và xử lý như thế nào, cũng như hướng khắc phục”, ông Chính băn khoăn.</p>\r\n<br>\r\n</br>\r\n\r\n<img src=\"https://vnn-imgs-f.vgcloud.vn/2019/11/28/18/cu-tri-hoi-vi-sao-duong-giao-thong-nghin-ti-vua-ban-giao-da-hu-hong-4.jpg\">\r\n<br>\r\n</br>\r\n\r\n<p>Về phần mình, cử tri Nguyễn Văn Dũng lo lắng về việc các nhà khoa học đưa ra cảnh báo ĐBSCL đang bị sụt lún, tình hình sạt lở ngày càng nghiêm trọng do khai thác nước ngầm quá mức, tình trạng các thuỷ điện ở đầu nguồn sông MêKong và biến đổi khí hậu.</p>\r\n\r\n<p>“Cử tri muốn biết QH, Chính phủ đã có giải pháp gì để hạn chế hiện trạng trên”, cử tri Dũng nêu.</p>\r\n<br>\r\n</br>\r\n<img src=\"https://vnn-imgs-f.vgcloud.vn/2019/11/28/18/cu-tri-hoi-vi-sao-duong-giao-thong-nghin-ti-vua-ban-giao-da-hu-hong-3.jpg\">\r\n<br>\r\n</br>\r\n<p>Trả lời cử tri về chất lượng công trình giao thông, đầu tư tiền rất lớn nhưng chậm tiến độ, chưa sử dụng đã hư hỏng; giải pháp khắc phục như thế nào và trách nhiệm ra sao? Chủ tịch Quốc hội Nguyễn Thị Kim Ngân cho biết, vấn đề chậm tiến độ, giải ngân đầu tư công nói chung, trong đó có giao thông, là một tồn tại, yếu kém mà trong các kỳ họp QH đều được các đại biểu mổ xẻ và phân tích.</p>', 'images/19/12/12/cu-tri-hoi-vi-sao-duong-giao-thong-nghin-ti-vua-ban-giao-da-hu-hong-8-240x160.jpg', 100, 'VTV24', '2019-12-12 16:55:44.396184', '2019-12-13 11:44:34.547060', 2, 1),
(14, 'Quốc hội không \'lơ\' luật Biểu tình, luật về hội', 'quoc-hoi-khong-lo-luat-bieu-tinh-luat-ve-hoi', 'Tổng thư ký QH Nguyễn Hạnh Phúc cho biết, luật Biểu tình và cả luật về hội không phải QH không quan tâm, mà vẫn đang phải chờ Chính phủ trình.', '<p><h3><b>Quốc hội không \'lơ\' luật Biểu tình, luật về hội</b></h3></p>\r\n<p><b>Tổng thư ký QH Nguyễn Hạnh Phúc cho biết, luật Biểu tình và cả luật về hội không phải QH không quan tâm, mà vẫn đang phải chờ Chính phủ trình.</b></p>\r\n<p><br>Họp báo bế mạc kỳ họp thứ 8, QH khoá 14 chiều 27/11, báo chí đặt câu hỏi, trong phiên thảo luận gần đây, có ý kiến ĐB cho rằng QH đang lơ trách nhiệm với luật Biểu tình và luật về hội, vậy UB Pháp luật có kế hoạch \"trả nợ\" cho dân 2 luật này thế nào.</p></br>\r\n<p><br>\"Khi nào Chính phủ chuẩn bị chu đáo, thấu đáo trình ra QH thì các ĐB sẽ cho ý kiến. Còn hiện tại, Chính phủ chưa báo cáo để đưa vào chương trình làm luật nên vẫn phải chờ, chứ không phải Chính phủ trình rồi mà QH không cho ý kiến để ban hành\", ông Nguyễn Hạnh Phúc nói.</p></br>\r\n<img src=\"https://vnn-imgs-f.vgcloud.vn/2019/11/27/19/khong-phai-la-quoc-hoi-khong-lo-luat-bieu-tinh-luat-hoi-1.jpg\">\r\n<p><b><br>ĐBQH phát biểu trùng cũng không sao</br></b></p\r\n<p><br>Về câu hỏi tại kỳ họp có tình trạng khi thảo luận một chính sách thì có một số ĐB đề cập tần suất rất dày, lặp đi lặp lại, có ý kiến cho rằng ĐB nhận \"lobby\", phát biểu theo đặt hàng của nhóm lợi ích nào đấy, Tổng thư ký QH cho biết không rõ chuyện có đặt hàng hay không, nếu có phần mềm phân tích được có hay không việc đó thì tốt.</p></br>\r\n<p><br>Phát biểu là quyền của ĐB, cùng vấn đề, ĐB có thể phát biểu góc này, góc khác thì sẽ trùng, không thể nào không trùng được. QH khuyến khích ĐB phát biểu càng nhiều càng tốt, trùng cũng không sao cả.</p></br>\r\n<p><br>Khi báo chí hỏi về hoạt động vận động hành lang theo \"đặt hàng\" có thể ảnh hưởng không tốt đến hoạt động của QH, kỳ trước Trưởng đoàn ĐBQH tỉnh Nam Định Nguyễn Anh Sơn đã nói về việc có chuyện 4 ĐBQH cùng đọc 1 bài, có chi tiết không chính xác cũng đọc giống y như nhau. </p></br>\r\n<img src=\"https://vnn-imgs-f.vgcloud.vn/2019/11/27/19/khong-phai-la-quoc-hoi-khong-lo-luat-bieu-tinh-luat-hoi.jpg\">\r\n<p><br>Tổng thư ký QH Nguyễn Hạnh Phúc cho biết, quá trình các ĐB làm việc với các bộ, ngành, có trao đổi, cơ quan soạn thảo trình ra, cơ quan thẩm tra, xem xét thấu đáo, xin ý kiến ĐB bằng văn bản.</p></br>\r\n<p><br>Có thể có việc nhiều ĐB cùng đề cập một vấn đề nhưng không vì như thế mà thay đổi tình thế, làm lệch lạc chủ trương đúng đắn của Đảng và nhà nước.</p></br>\r\n<p><br>Ông Phúc lấy ví dụ quá trình sửa bộ luật Lao động. \"Lúc đầu nhiều ĐB đề nghị nghỉ thêm 1 ngày 28/6 là ngày gia đình Việt Nam, chỉ số ít đề nghị nghỉ thêm 1 ngày dịp Quốc khánh. Đó là ý kiến rất cá biệt nhưng tập thể phân tích thấy rất đúng rất trúng nên khi lấy phiếu xin ý kiến thì tỷ lệ tán thành nội dung này rất cao\", ông Phúc nói. </p></br>', 'images/19/12/13/khong-phai-la-quoc-hoi-khong-lo-luat-bieu-tinh-luat-hoi-1-240x160.jpg', 120, 'admin', '2019-12-13 10:09:08.059724', '2019-12-13 11:08:40.296896', 2, 1),
(16, 'Chỉ có Phú Quốc đủ điều kiện miễn thị thực cho người nước ngoài', 'chi-co-phu-quoc-u-ieu-kien-mien-thi-thuc-cho-nguoi-nuoc-ngoai', 'Phú Quốc có sân bay, có không gian riêng biệt; có ranh giới địa lý xác định, cách biệt với đất liền; phù hợp với chính sách phát triển KTXH và không làm phương hại đến quốc phòng, an ninh.', '<p><h3><b>Chỉ có Phú Quốc đủ điều kiện miễn thị thực cho người nước ngoài</b></h3></p>\r\n<p><b>Phú Quốc có sân bay, có không gian riêng biệt; có ranh giới địa lý xác định, cách biệt với đất liền; phù hợp với chính sách phát triển KTXH và không làm phương hại đến quốc phòng, an ninh.</b></p>\r\n<p><br>Tại họp báo công bố kết quả kỳ họp thứ 8 QH khóa 14 chiều qua, báo chí đặt câu hỏi về quy định miễn thị thực cho người nước ngoài và khu kinh tế ven biển được nêu trong luật sửa đổi, bổ sung một số điều của luật Nhập cảnh, xuất cảnh, quá cảnh, cư trú của người nước ngoài tại Việt Nam.</p></br>\r\n<p><br>Ủy viên UB Quốc phòng - An ninh Nguyễn Thanh Hồng cho biết khi thẩm tra dự án luật này, UB tiếp thu ý kiến ĐB và quy định cụ thể điều kiện để người nước ngoài nhập cảnh vào khu kinh tế ven biển.</p></br>\r\n<p><br>Các điều kiện gồm: có sân bay quốc tế, có không gian riêng biệt; có ranh giới địa lý xác định, cách biệt với đất liền; phù hợp với chính sách phát triển kinh tế - xã hội và không làm phương hại đến quốc phòng, an ninh quốc gia, trật tự, an toàn xã hội của Việt Nam.</p></br>\r\n<img src=\"https://vnn-imgs-f.vgcloud.vn/2019/11/27/22/img-7940.jpg\">\r\n<p><br>Hiện nay, đáp ứng đủ 4 điều kiện trên chỉ có Phú Quốc. \"Thời gian qua, chúng ta đã thí điểm miễn thị thực cho người nước ngoài vào Phú Quốc. Kết quả đánh giá cho thấy, việc này đã đảm bảo các yêu cầu về quốc phòng - an ninh, thu hút khách du lịch và tăng cường thu hút đầu tư nước ngoài”, ông Nguyễn Thanh Hồng nói.</p></br>\r\n<p><br>Ông nhấn mạnh, việc sửa đổi luật nhằm tạo điều kiện thuận lợi cho người nước ngoài du lịch, đầu tư vào Việt Nam. Việc sửa đổi nhằm luật hóa nghị quyết của Quốc hội về thị thực điện tử.</p></br>\r\n<p><br>Báo cáo thẩm tra cũng đánh giá kỹ tác động của vấn đề này nhằm đảm bảo quốc phòng an ninh, khắc phục bất cập, tồn tại trong quản lý người nước ngoài tại Việt Nam, có biện pháp ngăn chặn, phòng ngừa hoạt động của tội phạm nước ngoài.</p></br>\r\n<p><br>Chiều 25/11, QH đã thông qua luật sửa đổi, bổ sung một số điều của luật Nhập cảnh, xuất cảnh, quá cảnh, cư trú của người nước ngoài tại Việt Nam, với 83,64% ĐB tán thành.</p></br>\r\n<p><br>Luật mới bổ sung quy định miễn thị thực có thời hạn tạm trú 30 ngày cho người nước ngoài vào khu kinh tế ven biển (hiện cả nước có 18 khu, bao gồm hai huyện đảo Phú Quốc, Vân Đồn). Luật có hiệu lực thi hành từ 1/7/2020.</p></br>\r\n<video><source src=\"\" type=\"https://video.vietnamnetjsc.vn/media/ts/2019/11/28/16/03/529cb006-abde-425d-9c36-135a41ad3b4c_1.jpg\"></video>', 'images/19/12/13/chi-co-phu-quoc-du-dieu-kien-mien-thi-thuc-cho-nguoi-nuoc-ngoai-240x160.jpg', 123, 'admin', '2019-12-13 10:19:09.067891', '2019-12-13 11:01:27.733055', 2, 1),
(17, 'Phó Thủ tướng Vũ Đức Đam phụ trách toàn diện Bộ Y tế', 'pho-thu-tuong-vu-uc-am-phu-trach-toan-dien-bo-y-te', 'Chính phủ đã có phân công Phó Thủ tướng Vũ Đức Đam phụ trách Bí thư ban cán sự Đảng Bộ Y tế và phụ trách toàn diện Bộ Y tế.', '<p><h3><b>Phó Thủ tướng Vũ Đức Đam phụ trách toàn diện Bộ Y tế</b></h3></p>\r\n<p><b>Chính phủ đã có phân công Phó Thủ tướng Vũ Đức Đam phụ trách Bí thư ban cán sự Đảng Bộ Y tế và phụ trách toàn diện Bộ Y tế.</b></p>\r\n<p><br>Tại họp báo công bố kết quả kỳ họp thứ 8 QH khóa 14 chiều nay, báo chí đặt câu hỏi về nhân sự thay thế sau khi miễn nhiệm chức Bộ trưởng Y tế đối với bà Nguyễn Thị Kim Tiến.\r\n</p></br>\r\n<p><br>“Hiện Chính phủ giao cho Phó Thủ tướng Vũ Đức Đam kiêm nhiệm nhiệm vụ Bộ trưởng Y tế thay cho bà Nguyễn Thị Kim Tiến sau khi QH miễn nhiệm. Vậy ông Vũ Đức Đam sẽ đảm nhiệm vai trò Bộ trưởng Y tế đến khi nào? Và khi nào Bộ Y tế có Bộ trưởng mới?\", báo chí đặt câu hỏi.</p></br>\r\n<p><br>Trả lời Tổng thư ký QH Nguyễn Hạnh Phúc cho biết, QH chỉ phê chuẩn đề nghị của Thủ tướng về việc bổ nhiệm, miễn nhiệm các bộ trưởng. Khi nào Thủ tướng chọn được người bổ nhiệm Bộ trưởng trình QH thì QH phê chuẩn chứ không phải QH quyết định bầu nhân sự này.</p></br>\r\n<img src=\"https://vnn-imgs-f.vgcloud.vn/2019/11/27/17/1.jpg\">\r\n<p><br>Vừa rồi, Chính phủ đã có phân công Phó Thủ tướng Vũ Đức Đam phụ trách Bí thư ban cán sự Đảng Bộ Y tế và phân công phụ trách toàn diện Bộ Y tế. Khi nào có nhân sự, Chính phủ đề xuất sang QH phê chuẩn thì mới biết được khi nào Bộ Y tế có Bộ trưởng mới.</p></br>\r\n<p><br>Vào chiều 22/11, QH đã phê chuẩn miễn nhiệm chức Bộ trưởng Y tế đối với bà Nguyễn Thị Kim Tiến với kết quả bỏ phiếu 87% ĐBQH đồng ý, 30 ĐBQH không đồng ý (chiếm 6% tổng ĐBQH).</p></br>\r\n<p><br>Trước đó, Bộ Chính trị quyết định bổ nhiệm bà Tiến làm Trưởng Ban Bảo vệ, chăm sóc sức khoẻ cán bộ TƯ thay ông Nguyễn Quốc Triệu.</p></br>\r\n<img src=\"https://vnn-imgs-f.vgcloud.vn/2019/11/22/13/ba-nguyen-thi-kim-tien-roi-ghe-bo-truong-y-te-2.jpg\">', 'images/19/12/13/pho-thu-tuong-vu-duc-dam-phu-trach-toan-dien-bo-y-te-240x160.jpg', 30, 'admin', '2019-12-13 10:36:15.369107', '2019-12-13 10:55:17.956571', 2, 1),
(19, 'Tìm thấy thi thể 1 trong 3 thợ lặn mất tích khi trục vớt tàu chìm ở Cần Giờ', 'tim-thay-thi-the-1-trong-3-tho-lan-mat-tich-khi-truc-vot-tau-chim-o-can-gio', 'Thi thể 1 trong 3 thợ lặn mất tích lúc trục vớt tàu chìm ở Cần Giờ được tìm thấy vào cuối buổi chiều nay.', '<p><h3><b>Tìm thấy thi thể 1 trong 3 thợ lặn mất tích khi trục vớt tàu chìm ở Cần Giờ</b></h3></p>\r\n<br>\r\n</br>\r\n<p><b>Thi thể 1 trong 3 thợ lặn mất tích lúc trục vớt tàu chìm ở Cần Giờ được tìm thấy vào cuối buổi chiều nay. </b></p>\r\n<p>Cuối buổi chiều, đại diện Cảng vụ hàng hải TP.HCM xác nhận vừa bàn giao thi thể thợ lặn mất tích đầu tiên cho Công an huyện Cần Giờ thụ lý, điều tra theo thẩm quyền.</p>\r\n<p>Theo vị đại diện, 16h chiều nay, sau nhiều giờ quần thảo trên sông Lòng Tàu, lực lượng cứu hộ - cứu nạn đã phát hiện thi thể anh Cao Văn Lý (SN 1975, quê tỉnh Kiên Giang) gần khu vực tàu chìm.</p>\r\n<br>\r\n</br>\r\n<img src=\"https://vnn-imgs-f.vgcloud.vn/2019/12/11/19/tim-thay-thi-the-tho-lan-mat-tich-dau-tien-tren-song-long-tau-2.JPG\">\r\n<br>\r\n</br>\r\n<p>Hiện các lực lượng chức năng vẫn đang tìm kiếm hai người mất tích còn lại là anh Lê Đức Hòa (SN 1986, quê tỉnh Bình Định) và anh Đoàn Văn Hiếu (SN 1983, quê tỉnh Bà Rịa - Vũng Tàu).</p>\r\n<p>Vị đại diện cho biết, đến 20h tối, công tác tìm kiếm 2 nạn nhân mất tích sẽ phải tạm dừng. Nguyên nhân là do trời tối, nước sông dâng cao, không đủ điều kiện cứu hộ. Tuy nhiên, lực lượng chức năng vẫn túc trực ở hiện trường để đảm bảo an toàn hàng hải qua khu vực.</p>\r\n<br>\r\n</br>\r\n<img src=\"https://vnn-imgs-f.vgcloud.vn/2019/12/11/19/tim-thay-thi-the-tho-lan-mat-tich-dau-tien-tren-song-long-tau.JPG\">\r\n<br>\r\n</br>\r\n<p>Theo báo cáo nhanh của Ban chỉ huy phòng chống thiên tai và tìm kiếm cứu nạn TP.HCM, khi nhận được tin báo về việc 3 thợ lặn mất tích, đơn vị đã cùng Cảng vụ hàng hải TP.HCM, Bộ chỉ huy Bộ đội Biên phòng TP, UBND huyện Cần Giờ có mặt tại hiện trường để phối hợp, điều động, chỉ huy lực lượng, phương tiện tìm kiếm cứu nạn những người mất tích.</p>\r\n<p>Lực lượng cảnh sát PCCC và cứu nạn, cứu hộ thuộc Công an TP.HCM đã điều động đội thợ lặn gồm 25 chiến sĩ ra hiện trường để phối hợp tìm kiếm.</p>\r\n<p>Hiện nguyên nhân khiến 3 thợ lặn mất tích vẫn đang được cơ quan chức năng làm rõ.</p>\r\n<br>\r\n</br>\r\n<img src=\"https://vnn-imgs-f.vgcloud.vn/2019/12/11/19/tim-thay-thi-the-tho-lan-mat-tich-dau-tien-tren-song-long-tau-1.JPG\">\r\n<br>\r\n</br>\r\n<p>Như đã thông tin, sáng nay trong quá trình trục vớt tàu Vietsun Integrity chìm trên sông Lòng Tàu hơn 1 tháng trước, một nhóm thợ lặn 5 người đã gặp tai nạn lao động.\r\n</p>\r\n<p>Ba người mất tích và 2 người nguy kịch được chuyển đến bệnh viện cấp cứu đều là thợ lặn thuộc Công ty TNHH Dịch vụ hàng hải Thái Bình Dương, làm nhiệm vụ trục vớt tàu và số container bị chìm.\r\n\r\n</p>', 'images/19/12/13/tim-thay-thi-the-tho-lan-mat-tich-dau-tien-tren-song-long-tau-4-240x160.jpg', 12, 'admin', '2019-12-13 11:53:29.302641', '2019-12-13 11:53:29.302641', 3, 1),
(20, 'Đề xuất mở rộng việc đặt tiền bảo lãnh để xe vi phạm không thành sắt vụn', 'e-xuat-mo-rong-viec-at-tien-bao-lanh-e-xe-vi-pham-khong-thanh-sat-vun', 'Chiều nay, UB Pháp luật QH tổ chức phiên giải trình về tạm giữ, tịch thu phương tiện giao thông vận tải đường bộ theo thủ tục hành chính.', '<p><h3><b>Đề xuất mở rộng việc đặt tiền bảo lãnh để xe vi phạm không thành sắt vụn</b></h3></p>\r\n<br>\r\n</br>\r\n<p><b>Chiều nay, UB Pháp luật QH tổ chức phiên giải trình về tạm giữ, tịch thu phương tiện giao thông vận tải đường bộ theo thủ tục hành chính.</b></p>\r\n<p>Chiều nay, UB Pháp luật QH tổ chức phiên giải trình về tạm giữ, tịch thu phương tiện giao thông vận tải đường bộ theo thủ tục hành chính.</p>\r\n<p>Tại Công an các đơn vị địa phương còn tồn đọng gần 137 ngàn xe vi phạm hành chính quá thời hạn bị tạm giữ chưa xử lý được. </p>\r\n<img src=\"https://vnn-imgs-f.vgcloud.vn/2019/12/13/09/de-xuat-mo-rong-viec-dat-tien-bao-lanh-de-xe-vi-pham-khong-thanh-sat-vun.jpg\">\r\n<br>\r\n</br>\r\n<p>Thứ trưởng Công an nêu khó khăn theo quy định hiện nay, thời hiệu thi hành quyết định xử phạt 1 năm nên khi người vi phạm không nộp phạt phải tạm giữ xe đến khi hết thời hiệu mới thực hiện thủ tục xử lý phương tiện. Chính việc này dẫn đến số lượng và thời gian tạm giữ phương tiện kéo dài...</p>\r\n<p>“Việc gia tăng số lượng phương tiện quá thời hạn tạm giữ mà chưa xử lý được dẫn đến tình trạng quá tải. Việc tạm giữ quá lâu dẫn đến tình trạng nhiều phương tiện bị hỏng hóc, cũ nát, không sử dụng được”, ông Ngọc nói.</p>\r\n<p>Phó trưởng đoàn chuyên trách tỉnh Đồng Tháp Phạm Văn Hòa cho rằng do quy định thời gian hết thời hiệu thi hành xử phạt dài quá, các phương tiện tạm giữ nhiều khi thành đống sắt vụn, bán đấu giá không ai mua. Nhiều khi người vi phạm nhận xe nhưng trả tiền lưu kho còn hơn giá trị chiếc xe nên ai muốn nhận. Đây là một lãng phí tài sản của xã hội rất lớn.</p>\r\n<p>ĐB Hòa đề nghị xem lại phạm vi tạm giữ các phương tiện vi phạm giao thông để việc tạm giữ phương tiện ít đi.</p>\r\n<p>Ví dụ người dân đi có giấy tờ xe nhưng không đủ tuổi thủ tục bắt buộc lập biên bản xong giữ 1 tuần lễ rồi mới đóng phạt, vừa đóng phạt vừa đóng giữ lưu kho thì không hợp lý. Nhiều khi xe đem ra vừa bị trầy, bị hư hao nhưng lại không phí bồi hoàn.</p>\r\n\r\n<p>\"Dứt khoát là không bán lại trong nội bộ lung tung để tránh tiêu cực. Xe vi phạm pháp luật như thế mà đi tận dụng lại cũng là vi phạm pháp luật. Vì vậy những trường hợp này phải xử lý nghiêm gắn với trách nhiệm người đứng đầu. Nếu nhất quán như thế thì giải quyết được các bãi tồn đọng. Còn buông lỏng, tạm giữ rồi tuồn ra thì lại tiếp tục vi phạm pháp luật\", ĐB tỉnh Lâm Đồng lưu ý.</p>\r\n<img src=\"https://vnn-imgs-f.vgcloud.vn/2019/12/12/19/thu-truong-cong-an-de-xuat-mo-rong-viec-dat-tien-bao-lanh-de-giu-xe-vi-pham.jpg\">\r\n<br>\r\n</br>\r\n<p>Phó chủ nhiệm UB Đối ngoại Nguyễn Sỹ Cương đề nghị Bộ Công an, Tư pháp quan tâm đến thông tin phản ánh ở các vùng sâu, vùng xa, các tỉnh khó khăn có việc lợi dụng tạm giữ xe vi phạm để tiêu thụ xe gian, xe không giấy tờ.</p>\r\n<p><b>Quá hạn 10 ngày không nộp phạt, tịch thu, bán đấu giá</b></p>\r\n<p>Thứ trưởng Công an kiến nghị rà soát, sửa đổi luật Xử lý vi phạm hành chính và các văn bản có liên quan theo hướng mở rộng phạm vi áp dụng hình thức đặt tiền bảo lãnh để được giữ phương tiện vi phạm dưới sự quản lý của cơ quan có thẩm quyền. Điều này nhằm hạn chế việc đưa các phương tiện về nơi tạm giữ.</p>\r\n\r\n<img src=\"https://vnn-imgs-f.vgcloud.vn/2019/12/12/15/thu-truong-cong-an-de-xuat-mo-rong-viec-dat-tien-bao-lanh-xe-vi-pham-1.jpg\">\r\n<br>\r\n</br>\r\n<p>Đồng thời, nghiên cứu quy định cho phép các tổ chức, cá nhân có đủ điều kiện theo quy định pháp luật được đầu tư các địa điểm tạm giữ phương tiện, có thu phí theo quy định của Bộ Tài chính để huy động nguồn lực xã hội và giảm tải áp lựa về kinh phí đầu tư cơ sở vật chất cho Nhà nước.\r\n\r\n</p>', 'images/19/12/13/de-xuat-mo-rong-viec-dat-tien-bao-lanh-de-xe-vi-pham-khong-thanh-sat-vun-240x160.jpg', 20, 'admin', '2019-12-13 12:02:46.734215', '2019-12-13 12:04:12.565792', 3, 1),
(21, 'Chấn động: 11 hố chôn chất thải nguy hại chứa axit hữu cơ ở Sóc Sơn', 'chan-ong-11-ho-chon-chat-thai-nguy-hai-chua-axit-huu-co-o-soc-son', 'Chất thải chôn trộm gần núi Sú, suối Sú, gần nguồn nước sinh hoạt của người dân xã Bắc Sơn, huyện Sóc Sơn, Hà Nội là chất thải nguy hại.', '<p><h3><b>Chấn động: 11 hố chôn chất thải nguy hại chứa axit hữu cơ ở Sóc Sơn</b></h3></p>\r\n<br>\r\n</br>\r\n<p><b>Chất thải chôn trộm gần núi Sú, suối Sú, gần nguồn nước sinh hoạt của người dân xã Bắc Sơn, huyện Sóc Sơn, Hà Nội là chất thải nguy hại.</b></p>\r\n<p>Chi cục Bảo vệ môi trường (Sở TN&MT Hà Nội) chiều nay cho biết, bước đầu đã xác định số hóa chất chôn trộm trong các hố đất tại Sóc Sơn là chất thải nguy hại.</p>\r\n<p>Lãnh đạo Chi cục đã trực tiếp làm việc với cơ quan chức năng của huyện Sóc Sơn.</p>\r\n<br>\r\n</br>\r\n<img src=\"https://vnn-imgs-f.vgcloud.vn/2019/12/12/19/chat-thai-trong-11-ho-chon-tai-soc-son-la-chat-thai-nguy-hai.jpg\">\r\n<br>\r\n</br>\r\n</p>\r\n<p>“Trách nhiệm của chúng tôi là làm rõ đây là chất thải nguy hại gì, thành phần thế nào, trên cơ sở đó sẽ phối hợp với đơn vị có đủ năng lực, kinh nghiệm xử lý chất thải nguy hại để xử lý. Tôi đánh giá khối lượng chất thải nguy hại chôn trộm dưới lòng đất ở thôn Lai Sơn là rất lớn, không chỉ là loại mủ pin điện thoại mà còn tương đối nhiều chất khác cả về a xít hữu cơ, kim loại nặng…</p>\r\n<p>Chúng tôi đang đề nghị cho kiểm tra lại thật kỹ lưỡng về số chất thải nguy hại chôn dưới lòng đất gần núi Sú, suối Sú ở thôn Lai Sơn”, Chi cục trưởng Chi cục Bảo vệ môi trường Mai Trọng Thái cho biết.</p>\r\n<img src=\"https://vnn-imgs-f.vgcloud.vn/2019/12/12/19/chat-thai-trong-11-ho-chon-tai-soc-son-la-chat-thai-nguy-hai-1.jpg\">\r\n<br>\r\n</br>\r\n<p>Chi cục sẽ đề nghị Công an huyện Sóc Sơn cho xem thông tin về kết quả trưng cầu giám định trước đó để biết cụ thể hơn những chất thải nguy hại bị kẻ gian chôn trộm gần nguồn nước sinh hoạt thôn Lai Sơn; sau khi có kết quả giám định chính xác chất thải bị chôn trộm sẽ có phương án thu gom, xử lý đối với từng chất cụ thể. Thậm chí, xử lý cả những lượng đất, đá bị lẫn với chất thải nguy hại ở các hố.</p>', 'images/19/12/13/chat-thai-trong-11-ho-chon-tai-soc-son-la-chat-thai-nguy-hai-2-360x240.jpg', 3, 'admin', '2019-12-13 12:13:32.134632', '2019-12-14 12:55:35.550338', 4, 1),
(22, 'Đâu chỉ sông Tô Lịch, công nghệ Nhật làm sạch vịnh Tokyo dịp Olympic 2020', 'au-chi-song-to-lich-cong-nghe-nhat-lam-sach-vinh-tokyo-dip-olympic-2020', 'Tổ chức xúc tiến thương mại và môi trường Nhật Bản (JEBO) vừa công bố các dự án mà tổ chức này áp dụng công nghệ Nano-Bioreacter trong việc làm sạch các con sông, ao hồ tại Nhật Bản.', '<p><h3><b>Đâu chỉ sông Tô Lịch, công nghệ Nhật làm sạch vịnh Tokyo dịp Olympic 2020</b></h3></p>\r\n</br>\r\n<p><b>Tổ chức xúc tiến thương mại và môi trường Nhật Bản (JEBO) vừa công bố các dự án mà tổ chức này áp dụng công nghệ Nano-Bioreacter trong việc làm sạch các con sông, ao hồ tại Nhật Bản.</b></p>\r\n<p>Công nghệ đã được áp dụng thành công trong việc cải thiện chất lượng nước tại sông Onga (tỉnh Fukuoka); xử lý ô nhiễm nước tại kênh Sakishima (tỉnh Osaka) từ năm 2000; các hồ chứa nước đập thủy điện; các ao hồ trong công viên tại Nhật Bản, và hàng trăm các nhà máy xử lý nước thải công nghiệp, xử lý nước thải chăn nuôi; nuôi trồng thủy hải sản.</p>\r\n<p>Đặc biệt, phát minh về công nghệ Nano này cách đây hơn đã 30 năm, là “công nghệ lõi” được các tập đoàn lớn hàng đầu của Nhật Bản và khoảng 2.000 cơ sở sản xuất tại Nhật Bản và một số nơi trên thế giới hiện đang áp dụng.</p>\r\n<p>Dự án cải thiện chất lượng nước sông Onga (Fukuoka) được thực hiện từ năm 1994, đã trải qua 25 năm nhưng vẫn vận hành tốt.</p>\r\n<img src=\"https://vnn-imgs-f.vgcloud.vn/2019/12/09/14/4-nam-1994-song-onga-nhat-ban-3.jpg\">\r\n<br>\r\n</br>\r\n<p>Dự án cải thiện tình trạng “siêu phú dưỡng” của kênh Sakishima (tỉnh Osaka) thực hiện từ năm 2000 với mục đích xử lý lượng tảo phát sinh gây ô nhiễm nghiêm trọng nguồn nước và mùi hôi.</p>\r\n<p>Sau 3 ngày xử lý bằng công nghệ Nano, tảo dần biến mất, hết mùi hôi thối, nước trong có thể nhìn thấy đáy và hoàn toàn là dòng kênh an toàn, có thể tắm được.</p>\r\n<p>Dự án thứ 3, công nghệ Nano-Bioreactor được Ủy ban Olympic quốc tế (IOC) và Ban tổ chức Olympic Tokyo 2020 chọn để xử lý ô nhiễm nước vịnh Tokyo (chỉ số coliform, e.coli vượt quy chuẩn cho phép) để chuẩn bị cho các hoạt động thể thao trên vịnh Tokyo.</p>', 'images/19/12/13/7-vinh-tokyo-240x160.jpg', 65, 'admin', '2019-12-13 12:20:48.952772', '2019-12-13 12:21:32.693151', 4, 1),
(23, 'Thực hư việc dùng chất thải nguy hại của Formosa Hà Tĩnh san lấp mặt bằng', 'thuc-hu-viec-dung-chat-thai-nguy-hai-cua-formosa-ha-tinh-san-lap-mat-bang', 'Dư luận tại Hà Tĩnh rộ lên việc sử dụng “chất thải nguy hại” của Formosa để san lấp mặt bằng khiến cho người dân bất an. Thông tin này được nhà chức trách bác bỏ.', 'ỉ thải FHS được Chi cục Tiêu chuẩn đo lường chất lượng (Sở Khoa học & Công nghệ Hà Tĩnh) tiếp nhận đăng ký công bố sản phẩm xỉ thép dùng cho các mục đích cấp phối làm vật liệu san lấp cho công trình xây dựng, công trình giao thông và làm phụ gia xi măng.', 'images/19/12/13/thuc-hu-viec-dung-chat-thai-nguy-hai-cua-formosa-ha-tinh-san-lap-mat-ban_ojT78pL.jpg', 21, 'admin', '2019-12-13 12:36:27.241757', '2019-12-13 12:37:06.936975', 4, 1),
(24, '\'Siêu máy bay\' đưa đội tuyển U22 Việt Nam về muộn vì sân bay ùn tắc', 'sieu-may-bay-ua-oi-tuyen-u22-viet-nam-ve-muon-vi-san-bay-un-tac', 'Do sân bay thủ đô Manila (Philippines) hết slot cất cánh nên chuyến bay đưa 2 đội tuyển bóng đá nam và nữ chỉ đổi giờ sớm hơn 2h so với lịch bay cũ.', '<p><h3><b>\'Siêu máy bay\' đưa đội tuyển U22 Việt Nam về muộn vì sân bay ùn tắc\r\n</b></h3></p>\r\n<br>\r\n</br>\r\n<p><b>Do sân bay thủ đô Manila (Philippines) hết slot cất cánh nên chuyến bay đưa 2 đội tuyển bóng đá nam và nữ chỉ đổi giờ sớm hơn 2h so với lịch bay cũ.</b></p>\r\n<p>Tổng giám đốc Vietnam Airlines Dương Trí Thành cho biết, Vietnam Airlines nhận được yêu cầu đẩy giờ cất cánh sớm cho chuyến bay đưa 2 đội tuyển bóng đá nam và nữ vừa giành HCV SEA Games 30 về nước.</p>\r\n<p>uy nhiên, do sân bay thủ đô Manila hết slot cất cánh nên chuyến bay chỉ đổi giờ sớm hơn được 2h so với lịch bay cũ, thay vì 3h theo yêu cầu.</p>\r\n<img src=\"https://vnn-imgs-f.vgcloud.vn/2019/12/11/16/sieu-may-bay-dua-doi-tuyen-u22-viet-nam-ve-muon-vi-san-bay-un-tac.jpg\">\r\n<br>\r\n</br>\r\n<p>Hai đội tuyển bóng đá cùng tuyển thủ các môn điền kinh, bơi lội... về bằng siêu máy bay B787-10 trong chiều tối nay. Theo lịch ban đầu, chuyến chuyên cơ đưa các cầu thủ Việt Nam về nước dự kiến cất cánh lúc 17h, hạ cánh xuống Nội Bài lúc 20h10.</p>\r\n<p>Sau khi đội tuyển U22 Việt Nam đoạt huy chương vàng, chuyến bay này đã đổi lịch về nước sớm hơn 2h đồng hồ, dự kiến hạ cánh xuống Nội Bài lúc 18h05.</p>\r\n<p>Ngay sau khi về đến Nội Bài, toàn bộ đội tuyển bóng đá nam và nữ cùng ban huấn luyện sẽ dự tiệc cùng Thủ tướng.</p>\r\n<p>Chiều qua, Vietnam Airlines đã thực hiện 7 chuyến bay charter (thuê chuyến) đưa cổ động viên Việt Nam sang tiếp sức đội tuyển U22 tranh huy chương vàng môn bóng đá nam .</p>\r\n<p>Trước đó, các hãng hàng không Việt Nam và các công ty lữ hành muốn tăng thêm chuyến để đáp ứng nhu cầu của cổ động viên, nhưng cũng vì lý do sân bay Manila hết slot trống nên không thể tăng chuyến.</p>', 'images/19/12/13/sieu-may-bay-dua-doi-tuyen-u22-viet-nam-ve-muon-vi-san-bay-un-tac-1-240x160.jpg', 79, 'admin', '2019-12-13 12:44:40.681305', '2019-12-14 13:22:07.226750', 3, 1),
(25, '11 sự thật về độ giàu có của ông chủ Amazon', '11-su-that-ve-o-giau-co-cua-ong-chu-amazon', 'Tỷ phú Jeff Bezos đã nắm giữ ngôi vị người giàu nhất thế giới trong hơn 2 năm. Tuy nhiên trong những tuần gần đây, vị trí đó đang bị cạnh tranh quyết liệt bởi tỷ phú Bill Gates.', '<p><h3><b>11 sự thật về độ giàu có của ông chủ Amazon\r\n</b></h3></p>\r\n<br>\r\n</br>\r\n<p><b>Tỷ phú Jeff Bezos đã nắm giữ ngôi vị người giàu nhất thế giới trong hơn 2 năm. Tuy nhiên trong những tuần gần đây, vị trí đó đang bị cạnh tranh quyết liệt bởi tỷ phú Bill Gates.</b></p>\r\n<img src=\"https://vnn-imgs-a1.vgcloud.vn/znews-photo.zadn.vn/w660/Uploaded/mdf_nemrxw/2019_12_10/5cc8465bb14bf4061e28ecde.jpg\">\r\n<br>\r\n</br>\r\n<img src=\"https://vnn-imgs-a1.vgcloud.vn/znews-photo.zadn.vn/w660/Uploaded/mdf_nemrxw/2019_12_10/5cc84766b14bf415013a4127.jpg\">\r\n<br>\r\n</br>\r\n<p>Sau khi chia cho vợ cũ 25% số cổ phiếu Amazon mà Jeff Bezos nắm giữ, ông vẫn là người giàu nhất thế giới trong một thời gian dài. Với khối tài sản trị giá 35,2 tỷ USD, MacKenzie Bezos hiện là người phụ nữ giàu thứ 4 </p>\r\n<img src=\"https://vnn-imgs-a1.vgcloud.vn/znews-photo.zadn.vn/w660/Uploaded/mdf_nemrxw/2019_12_10/5da5aead4af909091166cf24.jpg\">\r\n<br>\r\n</br>\r\n<img src=\"https://vnn-imgs-a1.vgcloud.vn/znews-photo.zadn.vn/w660/Uploaded/mdf_nemrxw/2019_12_10/5db05a564af90978482d15b2.jpg\">\r\n\r\n<p>Nếu các mức thuế tài sản đánh vào giới siêu giàu được Mỹ thực hiện từ năm 1982, tài sản hiện nay của Jeff Bezos sẽ ở mức 86,8 tỷ USD. Con số này vẫn giúp ông đứng ở vị trí giàu nhất nước Mỹ, và giàu thứ 2 thế giới</p>', 'images/19/12/13/11-su-that-ve-do-giau-co-cua-ong-chu-amazon-240x160.jpg', 20, 'admin', '2019-12-13 12:51:45.228870', '2019-12-13 12:52:53.462607', 8, 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Chỉ mục cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_TaiKhoan_taikhoan_id` (`user_id`);

--
-- Chỉ mục cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Chỉ mục cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Chỉ mục cho bảng `tag_tag`
--
ALTER TABLE `tag_tag`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `taikhoan_taikhoan`
--
ALTER TABLE `taikhoan_taikhoan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `taikhoan_taikhoan_groups`
--
ALTER TABLE `taikhoan_taikhoan_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `TaiKhoan_taikhoan_groups_taikhoan_id_group_id_c20fc14f_uniq` (`taikhoan_id`,`group_id`),
  ADD KEY `TaiKhoan_taikhoan_groups_group_id_e5ccb827_fk_auth_group_id` (`group_id`);

--
-- Chỉ mục cho bảng `taikhoan_taikhoan_user_permissions`
--
ALTER TABLE `taikhoan_taikhoan_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `TaiKhoan_taikhoan_user_p_taikhoan_id_permission_i_d72c9057_uniq` (`taikhoan_id`,`permission_id`),
  ADD KEY `TaiKhoan_taikhoan_us_permission_id_7add5c78_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `tin_comment`
--
ALTER TABLE `tin_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Tin_comment_id_Tin_id_3241c373_fk_Tin_tin_id` (`id_Tin_id`);

--
-- Chỉ mục cho bảng `tin_loaitin`
--
ALTER TABLE `tin_loaitin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Tin_loaitin_idTheLoai_id_548d37df_fk_Tin_theloai_id` (`idTheLoai_id`),
  ADD KEY `Tin_loaitin_tenKhongDau_8446c107` (`tenKhongDau`);

--
-- Chỉ mục cho bảng `tin_theloai`
--
ALTER TABLE `tin_theloai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Tin_theloai_tenKhongDau_af75e7d6` (`tenKhongDau`);

--
-- Chỉ mục cho bảng `tin_tin`
--
ALTER TABLE `tin_tin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Tin_tin_id_lt_id_19164c06_fk_Tin_loaitin_id` (`id_lt_id`),
  ADD KEY `Tin_tin_id_tl_id_c4af8aa3_fk_Tin_theloai_id` (`id_tl_id`),
  ADD KEY `Tin_tin_tieuDeKhongDau_863f8143` (`tieuDeKhongDau`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `tag_tag`
--
ALTER TABLE `tag_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `taikhoan_taikhoan`
--
ALTER TABLE `taikhoan_taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `taikhoan_taikhoan_groups`
--
ALTER TABLE `taikhoan_taikhoan_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `taikhoan_taikhoan_user_permissions`
--
ALTER TABLE `taikhoan_taikhoan_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tin_comment`
--
ALTER TABLE `tin_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tin_loaitin`
--
ALTER TABLE `tin_loaitin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tin_theloai`
--
ALTER TABLE `tin_theloai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tin_tin`
--
ALTER TABLE `tin_tin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Các ràng buộc cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Các ràng buộc cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_TaiKhoan_taikhoan_id` FOREIGN KEY (`user_id`) REFERENCES `taikhoan_taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `taikhoan_taikhoan_groups`
--
ALTER TABLE `taikhoan_taikhoan_groups`
  ADD CONSTRAINT `TaiKhoan_taikhoan_gr_taikhoan_id_99f8eb2b_fk_TaiKhoan_` FOREIGN KEY (`taikhoan_id`) REFERENCES `taikhoan_taikhoan` (`id`),
  ADD CONSTRAINT `TaiKhoan_taikhoan_groups_group_id_e5ccb827_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Các ràng buộc cho bảng `taikhoan_taikhoan_user_permissions`
--
ALTER TABLE `taikhoan_taikhoan_user_permissions`
  ADD CONSTRAINT `TaiKhoan_taikhoan_us_permission_id_7add5c78_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `TaiKhoan_taikhoan_us_taikhoan_id_dc9e61a3_fk_TaiKhoan_` FOREIGN KEY (`taikhoan_id`) REFERENCES `taikhoan_taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `tin_comment`
--
ALTER TABLE `tin_comment`
  ADD CONSTRAINT `Tin_comment_id_Tin_id_3241c373_fk_Tin_tin_id` FOREIGN KEY (`id_Tin_id`) REFERENCES `tin_tin` (`id`);

--
-- Các ràng buộc cho bảng `tin_loaitin`
--
ALTER TABLE `tin_loaitin`
  ADD CONSTRAINT `Tin_loaitin_idTheLoai_id_548d37df_fk_Tin_theloai_id` FOREIGN KEY (`idTheLoai_id`) REFERENCES `tin_theloai` (`id`);

--
-- Các ràng buộc cho bảng `tin_tin`
--
ALTER TABLE `tin_tin`
  ADD CONSTRAINT `Tin_tin_id_lt_id_19164c06_fk_Tin_loaitin_id` FOREIGN KEY (`id_lt_id`) REFERENCES `tin_loaitin` (`id`),
  ADD CONSTRAINT `Tin_tin_id_tl_id_c4af8aa3_fk_Tin_theloai_id` FOREIGN KEY (`id_tl_id`) REFERENCES `tin_theloai` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
