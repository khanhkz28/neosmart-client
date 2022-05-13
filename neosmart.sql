-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 10, 2022 lúc 03:29 AM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `neosmart`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` tinyint(4) NOT NULL DEFAULT 1,
  `position` tinyint(4) NOT NULL DEFAULT 0,
  `listblog_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`id`, `created_at`, `updated_at`, `title`, `detail`, `description`, `content`, `photo`, `slug`, `display`, `position`, `listblog_id`) VALUES
(19, '2022-04-24 20:57:52', '2022-05-08 23:31:36', 'khoa thong minh', '<p>ssss</p>', '<p>noi dung</p>', '<h2><span style=\"font-size: 24pt;\"><strong>Sản phẩm kh&oacute;a th&ocirc;ng minh.</strong></span></h2>\r\n<p>Điều khiển v&agrave; kiểm so&aacute;t to&agrave;n bộ c&aacute;c thiết bị trong hệ thống an ninh Bkav SmartHome Security. C&oacute; khả năng quản l&yacute; v&agrave; điều khiển tới 500 thiết bị trong nh&agrave;</p>\r\n<p>&nbsp;</p>', 'chodocx-1623207689539.png', 'khoa-thong-minh', 1, 1, 2),
(20, '2022-04-26 00:10:29', '2022-05-08 23:32:12', 'san pham rat huu ich', '<p>chi Tiết</p>', '<p>tuy chon</p>', '<p><img src=\"//www.tiny.cloud/docs/images/tiny-husky.jpg\" alt=\"\" width=\"320\" height=\"320\"></p>', 'photo1646280815645-1646280816151764748403.png', 'san-pham-rat-huu-ich', 1, 1, 2),
(21, '2022-04-26 20:39:46', '2022-04-29 01:49:15', 'Thiết kế nhà thông minh', '<p><strong>Giới thiệu chung:&nbsp;</strong>l&agrave; nơi sản xuất thiết bị th&ocirc;ng minh</p>', '<p><strong>Địa chỉ: </strong>33/4 duong 3/2&nbsp;<strong><br>Diện t&iacute;ch:&nbsp;</strong>4000m<sup>2</sup></p>', '<p>nội dung b&agrave;i viết hay</p>', 'z2986123859434_008_da73bf0c4cddfb69787109643e8ff909.jpg', '', 1, 1, 2),
(22, '2022-04-28 19:13:16', '2022-05-08 23:31:15', 'Bai viết thứ 2', '<p><strong>Giới thiệu chung: </strong>C&ocirc;ng tr&igrave;nh nằm trong KĐT mới Văn Kh&ecirc; - H&agrave; Đ&ocirc;ng. L&agrave; một trong những KĐT mới, hiện đại của TP H&agrave; Nội.</p>', '<p><strong>Địa chỉ: </strong>3000 m<sup>2</sup><strong><br>Diện t&iacute;ch:&nbsp;</strong>2222222km</p>', '<p><code>&lt;div class=\"row\"&gt;</code></p>\r\n<p><code>&lt;div class=\"col-6\"&gt;</code></p>\r\n<p><code>&lt;img src=\"http://localhost:8000/images/client/Hnews.png\"&gt;</code></p>\r\n<p><code>&lt;/div&gt;</code></p>\r\n<p><code>&lt;div class=\"col-6\"&gt;</code></p>\r\n<p><code>ch&aacute;u l&ecirc;n ba ch&aacute;u đi mẫu gi&aacute;o</code></p>\r\n<p><code>&lt;/div&gt;</code></p>\r\n<p><code>&lt;/div&gt;</code></p>', 'z2986123859434_008_da73bf0c4cddfb69787109643e8ff909.jpg', 'bai-viet-thu-2', 1, 1, 1),
(23, '2022-04-28 20:55:47', '2022-05-08 23:32:23', 'bài viết mới', '<p><strong>Giới thiệu chung: san phẩm</strong></p>', '<p><strong>Địa chỉ: 3000<br>Diện t&iacute;ch: 225</strong></p>', '<div class=\"row\">\r\n<div class=\"col-6\"><code>pppp</code></div>\r\n<div class=\"col-6\"><code>ss</code></div>\r\n</div>', 'image 36.png', 'bai-viet-moi', 1, 1, 2),
(24, '2022-04-28 21:12:05', '2022-05-08 23:33:04', 'Công trình mới thi công', '<p><strong>Giới thiệu chung: giới thiệu</strong></p>', '<p><strong>Địa chỉ: </strong>222<strong><br>Diện t&iacute;ch: 333</strong></p>', '<div class=\"row\">\r\n<div class=\"col-6\"><img src=\"http://localhost:8000/images/client/404.jpg\" alt=\"\" width=\"280\" height=\"186\"></div>\r\n<div class=\"col-6\">Cảnh đẹp ban đ&ecirc;m</div>\r\n</div>', 'image 14.png', 'cong-trinh-moi-thi-cong', 1, 1, 2),
(25, '2022-04-28 23:58:15', '2022-05-08 20:55:11', 'Bài viết test dữ liệu image', '<p><strong>Giới thiệu chung:&nbsp;</strong>Giới thiệu chung cho b&agrave;i viết</p>', '<p><strong>Địa chỉ: </strong>3000<strong><br>Diện t&iacute;ch:</strong> 2000</p>\r\n<p>&nbsp;</p>', '<div class=\"row \">\r\n<div class=\"col-6\">[h&igrave;nh]</div>\r\n<div class=\"col-6\">[nội dung]</div>\r\n</div>', 'image 32.png', 'bai-viet-test-du-lieu-image', 1, 1, 1),
(26, '2022-04-29 00:55:52', '2022-04-29 00:55:52', 'Bài viết test design', '<p><strong>Giới thiệu chung: </strong>Sản phẩm sẽ ra mắt&nbsp; v&agrave;o ng&agrave;y mai</p>', '<p><strong>Địa chỉ: </strong>3000m<sup>2</sup><strong><br>Diện t&iacute;ch: </strong>4000</p>', '<p style=\"text-align: left;\">&nbsp;&nbsp;</p>\r\n<p style=\"padding-left: 40px; text-align: justify;\"><img style=\"float: left;\" src=\"https://img4.thuthuatphanmem.vn/uploads/2020/12/25/hinh-nen-ga-trong-full-hd_105643192.jpg\" alt=\"\" width=\"250\" height=\"141\"><strong>&nbsp; &nbsp; Title của sản ph&acirc;m</strong></p>\r\n<p style=\"padding-left: 40px; text-align: justify;\">&nbsp; &nbsp; Th&ocirc;ng thường để điều khiển tất cả c&aacute;c thiết bị trong nh&agrave;, bạn cần tới h&agrave;ng chục c&ocirc;ng tắc, thậm ch&iacute; với căn nh&agrave; lớn h&agrave;ng trăm c&ocirc;ng tắc. Với nh&agrave; th&ocirc;ng minh Bkav SmartHome, bạn c&oacute; thể điều khiển tất cả bằng một v&agrave;i n&uacute;t bấm tr&ecirc;n m&agrave;n h&igrave;nh cảm ứng của smartphone hay m&aacute;y t&iacute;nh bảng. Bạn cũng c&oacute; thể điều khiển v&agrave; kiểm so&aacute;t ng&ocirc;i nh&agrave; th&ocirc;ng qua giao diện trực quan 3D, ở đ&oacute; c&aacute;c thiết bị được m&ocirc; phỏng giống như đang sử dụng thực tế, chỉ cần chạm v&agrave;o thiết bị tương ứng trong m&agrave;n h&igrave;nh để điều khiển.</p>', 'image 36.png', '', 1, 1, 1),
(27, '2022-04-29 01:13:13', '2022-05-08 21:11:07', 'Bài viết test notify', '<p><strong>Giới thiệu chung: giới thiệu th&ecirc;m b&agrave;i viểt</strong></p>', '<p><strong>Địa chỉ: 32/24<br>Diện t&iacute;ch:2000m</strong></p>', '<p>th&ecirc;m v&agrave;i viết kiểu mới</p>', 'chodocx-1623207689539.png', 'bai-viet-test-notify', 1, 1, 2),
(28, '2022-04-29 01:39:56', '2022-05-08 20:27:08', 'Thử thêm', '<p><strong>Giới thiệu chung: sds ds</strong></p>', '<p><strong>Địa chỉ: sds&nbsp;<br>Diện t&iacute;ch:sd sd</strong></p>', '<p>d sds ds sds</p>', 'photo1646280815645-1646280816151764748403.png', '', 1, 1, 1),
(29, '2022-04-26 00:10:29', '2022-04-26 00:10:29', 'san pham rat huu ich 1', '', 'tuy chon', '<p><img src=\"//www.tiny.cloud/docs/images/tiny-husky.jpg\" alt=\"\" width=\"320\" height=\"320\"></p>', 'Blog.png', '', 1, 1, 2),
(30, '2022-04-26 20:39:46', '2022-04-29 01:49:15', 'Thiết kế nhà thông minh 1', '<p><strong>Giới thiệu chung:&nbsp;</strong>l&agrave; nơi sản xuất thiết bị th&ocirc;ng minh</p>', '<p><strong>Địa chỉ: </strong>33/4 duong 3/2&nbsp;<strong><br>Diện t&iacute;ch:&nbsp;</strong>4000m<sup>2</sup></p>', '<p>nội dung b&agrave;i viết hay</p>', 'z2986123859434_008_da73bf0c4cddfb69787109643e8ff909.jpg', '', 1, 1, 2),
(31, '2022-04-28 19:13:16', '2022-05-04 02:08:51', 'Bai viết thứ 2 1', '<p><strong>Giới thiệu chung: </strong>C&ocirc;ng tr&igrave;nh nằm trong KĐT mới Văn Kh&ecirc; - H&agrave; Đ&ocirc;ng. L&agrave; một trong những KĐT mới, hiện đại của TP H&agrave; Nội.</p>', '<p><strong>Địa chỉ: </strong>3000 m<sup>2</sup><strong><br>Diện t&iacute;ch:&nbsp;</strong>2222222km</p>', '<p><code>&lt;div class=\"row\"&gt;</code></p>\r\n<p><code>&lt;div class=\"col-6\"&gt;</code></p>\r\n<p><code>&lt;img src=\"http://localhost:8000/images/client/Hnews.png\"&gt;</code></p>\r\n<p><code>&lt;/div&gt;</code></p>\r\n<p><code>&lt;div class=\"col-6\"&gt;</code></p>\r\n<p><code>ch&aacute;u l&ecirc;n ba ch&aacute;u đi mẫu gi&aacute;o</code></p>\r\n<p><code>&lt;/div&gt;</code></p>\r\n<p><code>&lt;/div&gt;</code></p>', 'image 14.png', '', 1, 1, 1),
(32, '2022-04-28 20:55:47', '2022-04-28 21:02:18', 'bài viết mới 1', '<p><strong>Giới thiệu chung: san phẩm</strong></p>', '<p><strong>Địa chỉ: 3000<br>Diện t&iacute;ch: 225</strong></p>', '<div class=\"row\">\r\n<div class=\"col-6\"><code>pppp</code></div>\r\n<div class=\"col-6\"><code>ss</code></div>\r\n</div>', 'image 14.png', '', 1, 1, 2),
(33, '2022-04-28 21:12:05', '2022-05-02 05:58:45', 'Công trình mới thi công 1', '<p><strong>Giới thiệu chung: giới thiệu</strong></p>', '<p><strong>Địa chỉ: </strong>222<strong><br>Diện t&iacute;ch: 333</strong></p>', '<div class=\"row\">\r\n<div class=\"col-6\"><img src=\"http://localhost:8000/images/client/404.jpg\" alt=\"\" width=\"280\" height=\"186\"></div>\r\n<div class=\"col-6\">Cảnh đẹp ban đ&ecirc;m</div>\r\n</div>', 'image 14.png', '', 1, 1, 2),
(34, '2022-04-28 23:58:15', '2022-05-02 05:58:43', 'Bài viết test dữ liệu image 1', '<p><strong>Giới thiệu chung:&nbsp;</strong>Giới thiệu chung cho b&agrave;i viết</p>', '<p><strong>Địa chỉ: </strong>3000<strong><br>Diện t&iacute;ch:</strong> 2000</p>\r\n<p>&nbsp;</p>', '<div class=\"row \">\r\n<div class=\"col-6\">[h&igrave;nh]</div>\r\n<div class=\"col-6\">[nội dung]</div>\r\n</div>', 'image 32.png', '', 1, 1, 1),
(35, '2022-04-29 00:55:52', '2022-04-29 00:55:52', 'Bài viết test design 1', '<p><strong>Giới thiệu chung: </strong>Sản phẩm sẽ ra mắt&nbsp; v&agrave;o ng&agrave;y mai</p>', '<p><strong>Địa chỉ: </strong>3000m<sup>2</sup><strong><br>Diện t&iacute;ch: </strong>4000</p>', '<p style=\"text-align: left;\">&nbsp;&nbsp;</p>\r\n<p style=\"padding-left: 40px; text-align: justify;\"><img style=\"float: left;\" src=\"https://img4.thuthuatphanmem.vn/uploads/2020/12/25/hinh-nen-ga-trong-full-hd_105643192.jpg\" alt=\"\" width=\"250\" height=\"141\"><strong>&nbsp; &nbsp; Title của sản ph&acirc;m</strong></p>\r\n<p style=\"padding-left: 40px; text-align: justify;\">&nbsp; &nbsp; Th&ocirc;ng thường để điều khiển tất cả c&aacute;c thiết bị trong nh&agrave;, bạn cần tới h&agrave;ng chục c&ocirc;ng tắc, thậm ch&iacute; với căn nh&agrave; lớn h&agrave;ng trăm c&ocirc;ng tắc. Với nh&agrave; th&ocirc;ng minh Bkav SmartHome, bạn c&oacute; thể điều khiển tất cả bằng một v&agrave;i n&uacute;t bấm tr&ecirc;n m&agrave;n h&igrave;nh cảm ứng của smartphone hay m&aacute;y t&iacute;nh bảng. Bạn cũng c&oacute; thể điều khiển v&agrave; kiểm so&aacute;t ng&ocirc;i nh&agrave; th&ocirc;ng qua giao diện trực quan 3D, ở đ&oacute; c&aacute;c thiết bị được m&ocirc; phỏng giống như đang sử dụng thực tế, chỉ cần chạm v&agrave;o thiết bị tương ứng trong m&agrave;n h&igrave;nh để điều khiển.</p>', 'image 36.png', '', 1, 1, 1),
(36, '2022-04-29 01:13:13', '2022-04-29 01:13:13', 'Bài viết test notify 1', '<p><strong>Giới thiệu chung: giới thiệu th&ecirc;m b&agrave;i viểt</strong></p>', '<p><strong>Địa chỉ: 32/24<br>Diện t&iacute;ch:2000m</strong></p>', '<p>th&ecirc;m v&agrave;i viết kiểu mới</p>', 'chodocx-1623207689539.png', '', 1, 1, 2),
(37, '2022-04-29 01:39:56', '2022-04-29 01:46:45', 'Thử thêm 1', '<p><strong>Giới thiệu chung: sds ds</strong></p>', '<p><strong>Địa chỉ: sds&nbsp;<br>Diện t&iacute;ch:sd sd</strong></p>', '<p>d sds ds sds</p>', 'photo1646280815645-1646280816151764748403.png', '', 1, 1, 1),
(38, '2022-04-24 20:57:52', '2022-05-04 19:05:50', 'khoa thong minh thu1', '<p>ssss</p>', '<p>noi dung</p>', '<h2><span style=\"font-size: 24pt;\"><strong>Sản phẩm kh&oacute;a th&ocirc;ng minh.</strong></span></h2>\r\n<p>Điều khiển v&agrave; kiểm so&aacute;t to&agrave;n bộ c&aacute;c thiết bị trong hệ thống an ninh Bkav SmartHome Security. C&oacute; khả năng quản l&yacute; v&agrave; điều khiển tới 500 thiết bị trong nh&agrave;</p>\r\n<p>&nbsp;</p>', '1651035714image 32.png', '', 1, 1, 2),
(39, '2022-04-26 00:10:29', '2022-04-26 00:10:29', 'san pham rat huu ich thu 1', '', 'tuy chon', '<p><img src=\"//www.tiny.cloud/docs/images/tiny-husky.jpg\" alt=\"\" width=\"320\" height=\"320\"></p>', 'Blog.png', '', 1, 1, 2),
(40, '2022-04-26 20:39:46', '2022-04-29 01:49:15', 'Thiết kế nhà thông minh thu1', '<p><strong>Giới thiệu chung:&nbsp;</strong>l&agrave; nơi sản xuất thiết bị th&ocirc;ng minh</p>', '<p><strong>Địa chỉ: </strong>33/4 duong 3/2&nbsp;<strong><br>Diện t&iacute;ch:&nbsp;</strong>4000m<sup>2</sup></p>', '<p>nội dung b&agrave;i viết hay</p>', 'z2986123859434_008_da73bf0c4cddfb69787109643e8ff909.jpg', '', 1, 1, 2),
(41, '2022-04-28 19:13:16', '2022-05-04 02:08:51', 'Bai viết thứ 2 thu1', '<p><strong>Giới thiệu chung: </strong>C&ocirc;ng tr&igrave;nh nằm trong KĐT mới Văn Kh&ecirc; - H&agrave; Đ&ocirc;ng. L&agrave; một trong những KĐT mới, hiện đại của TP H&agrave; Nội.</p>', '<p><strong>Địa chỉ: </strong>3000 m<sup>2</sup><strong><br>Diện t&iacute;ch:&nbsp;</strong>2222222km</p>', '<p><code>&lt;div class=\"row\"&gt;</code></p>\r\n<p><code>&lt;div class=\"col-6\"&gt;</code></p>\r\n<p><code>&lt;img src=\"http://localhost:8000/images/client/Hnews.png\"&gt;</code></p>\r\n<p><code>&lt;/div&gt;</code></p>\r\n<p><code>&lt;div class=\"col-6\"&gt;</code></p>\r\n<p><code>ch&aacute;u l&ecirc;n ba ch&aacute;u đi mẫu gi&aacute;o</code></p>\r\n<p><code>&lt;/div&gt;</code></p>\r\n<p><code>&lt;/div&gt;</code></p>', 'image 14.png', '', 1, 1, 1),
(42, '2022-04-28 20:55:47', '2022-04-28 21:02:18', 'bài viết mới thu1', '<p><strong>Giới thiệu chung: san phẩm</strong></p>', '<p><strong>Địa chỉ: 3000<br>Diện t&iacute;ch: 225</strong></p>', '<div class=\"row\">\r\n<div class=\"col-6\"><code>pppp</code></div>\r\n<div class=\"col-6\"><code>ss</code></div>\r\n</div>', 'image 14.png', '', 1, 1, 2),
(43, '2022-04-28 21:12:05', '2022-05-02 05:58:45', 'Công trình mới thi công thu1', '<p><strong>Giới thiệu chung: giới thiệu</strong></p>', '<p><strong>Địa chỉ: </strong>222<strong><br>Diện t&iacute;ch: 333</strong></p>', '<div class=\"row\">\r\n<div class=\"col-6\"><img src=\"http://localhost:8000/images/client/404.jpg\" alt=\"\" width=\"280\" height=\"186\"></div>\r\n<div class=\"col-6\">Cảnh đẹp ban đ&ecirc;m</div>\r\n</div>', 'image 14.png', '', 1, 1, 2),
(44, '2022-04-28 23:58:15', '2022-05-02 05:58:43', 'Bài viết test dữ liệu image thu1', '<p><strong>Giới thiệu chung:&nbsp;</strong>Giới thiệu chung cho b&agrave;i viết</p>', '<p><strong>Địa chỉ: </strong>3000<strong><br>Diện t&iacute;ch:</strong> 2000</p>\r\n<p>&nbsp;</p>', '<div class=\"row \">\r\n<div class=\"col-6\">[h&igrave;nh]</div>\r\n<div class=\"col-6\">[nội dung]</div>\r\n</div>', 'image 32.png', '', 1, 1, 1),
(45, '2022-04-29 00:55:52', '2022-04-29 00:55:52', 'Bài viết test design thu1', '<p><strong>Giới thiệu chung: </strong>Sản phẩm sẽ ra mắt&nbsp; v&agrave;o ng&agrave;y mai</p>', '<p><strong>Địa chỉ: </strong>3000m<sup>2</sup><strong><br>Diện t&iacute;ch: </strong>4000</p>', '<p style=\"text-align: left;\">&nbsp;&nbsp;</p>\r\n<p style=\"padding-left: 40px; text-align: justify;\"><img style=\"float: left;\" src=\"https://img4.thuthuatphanmem.vn/uploads/2020/12/25/hinh-nen-ga-trong-full-hd_105643192.jpg\" alt=\"\" width=\"250\" height=\"141\"><strong>&nbsp; &nbsp; Title của sản ph&acirc;m</strong></p>\r\n<p style=\"padding-left: 40px; text-align: justify;\">&nbsp; &nbsp; Th&ocirc;ng thường để điều khiển tất cả c&aacute;c thiết bị trong nh&agrave;, bạn cần tới h&agrave;ng chục c&ocirc;ng tắc, thậm ch&iacute; với căn nh&agrave; lớn h&agrave;ng trăm c&ocirc;ng tắc. Với nh&agrave; th&ocirc;ng minh Bkav SmartHome, bạn c&oacute; thể điều khiển tất cả bằng một v&agrave;i n&uacute;t bấm tr&ecirc;n m&agrave;n h&igrave;nh cảm ứng của smartphone hay m&aacute;y t&iacute;nh bảng. Bạn cũng c&oacute; thể điều khiển v&agrave; kiểm so&aacute;t ng&ocirc;i nh&agrave; th&ocirc;ng qua giao diện trực quan 3D, ở đ&oacute; c&aacute;c thiết bị được m&ocirc; phỏng giống như đang sử dụng thực tế, chỉ cần chạm v&agrave;o thiết bị tương ứng trong m&agrave;n h&igrave;nh để điều khiển.</p>', 'image 36.png', '', 1, 1, 1),
(46, '2022-05-05 23:59:29', '2022-05-05 23:59:29', 'blog123', '<p><strong>Giới thiệu chung:dsa dsa</strong></p>', '<p><strong>Địa chỉ:ss&nbsp;<br>Diện t&iacute;ch:s</strong></p>', '<p>gio ithiej ducn</p>', 'photo1646280815645-1646280816151764748403.png', 'blog123', 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `photo`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Công trình Biệt thự lớn - Lâu đài', '<p>C&ocirc;ng tr&igrave;nh Biệt thự lớn - L&acirc;u đ&agrave;i</p>', 'photo1646280815645-1646280816151764748403.png', 'cong-trinh-biet-thu-lon-lau-dai', '2022-04-14 01:06:54', '2022-05-05 22:02:57'),
(2, 'Công trình Chung cư', '<p>C&ocirc;ng tr&igrave;nh Chung cư</p>', 'chodocx-1623207689539.png', 'cong-trinh-chung-cu', '2022-04-14 01:07:17', '2022-05-05 21:34:23'),
(3, 'Thiết bị xử lý trung tâm', '<p>Thiết bị xử l&yacute; trung t&acirc;m</p>', 'image 36.png', 'thiet-bi-xu-ly-trung-tam', '2022-04-14 01:23:27', '2022-05-05 21:34:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `client_message`
--

CREATE TABLE `client_message` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `client_message`
--

INSERT INTO `client_message` (`id`, `fullname`, `email`, `phone_number`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'phong1', 'phong@gmail.com', '0125445633', 'Hey John, wellish laminable ineunt popshop catalyte prismatize\r\n                  campimetrical lentisk excluding portlet coccinellid\r\n                  impestation Bangash Lollardist perameloid procerebrum presume\r\n                  cashmerette washbasin nainsook Odontolcae Alea holcodont', 1, '2022-04-22 03:12:38', '2022-05-04 02:08:39'),
(2, 'khanh1', 'khanh@gmail.com', '0236545662', 'Hey John, wellish laminable ineunt pshop catalyte prismatize ampitcal lentisk excluding portlet coccinellid imtn ngash Lollardist perameloid prorebrum presume ashmerette washbasin nainsook Odontolcae Alea holcodont welted cibarious terrifical uploop naphthaleneacetic coinable nsailor Zwinglian blighty benchful guar porch o uilding coinvolve eidolism warmth eralize seismographic recongeal ethanethial clog regicidal regainment legific', 0, '2022-04-22 03:14:02', '2022-05-02 05:59:25'),
(3, 'namnhi', 'nhi@gmail.com', '0236544562', 'Hey John, wellish laminable ineunt pshop catalyte prismatize campimetrical entisk excluding portlet coccinellid mpestation Bangash llardist erameloid procerebrum presume cashmerette ashbasin nainsook Odontolcae Alea holcodont               welted cibarious terrifical uploop aphthaleneacetic                 containable nonsailor Zwinglian blighty benchful guar porch                 fallectomy building coinvolve eidolism warmth unclericalize                 seismographic recongeal ethanethial clog regicidal regainment                 legific', 1, '2022-04-22 03:14:37', '2022-05-04 02:06:42'),
(4, 'phong1', 'phong@gmail.com', '0384486035', 'Hey John, wellish laminable ineunt pshop catalyte prismatize campimetrical entisk excluding portlet coccinellid          impestation Bangash Lollardist erameloid procerebrum presume                cashmerette washbasin nainsook dontolcae Alea holcodont welted cibarious rrifical uploop naphthaleneacetic             containable nonsailor Zwinglian blighty benchful guar porch               fallectomy building coinvolve eidolism warmth unclericalize               seismographic recongeal ethanethial clog regicidal regainment                legific', 1, '2022-04-25 01:54:38', '2022-05-02 06:42:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `faq`
--

CREATE TABLE `faq` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `faq`
--

INSERT INTO `faq` (`id`, `title`, `description`, `content`, `display`, `created_at`, `updated_at`) VALUES
(1, 'Why?', 'Why', 'Why', 1, '2022-04-14 19:54:45', '2022-04-14 19:54:45'),
(2, 'Lorem ipsum dolor sit amet?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, '2022-04-14 20:27:20', '2022-04-14 20:27:20'),
(3, 'Lorem ipsum dolor sit amet??', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua..', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. .', 1, '2022-04-14 20:27:54', '2022-04-14 20:27:54'),
(4, 'Lorem ipsum dolor sit amet???', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.. ?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. .?', 1, '2022-04-14 20:28:02', '2022-04-14 20:28:02'),
(5, 'Lorem ipsum dolor sit amet????', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.. ??', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. .??', 1, '2022-04-14 20:28:08', '2022-04-14 20:28:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `listblog`
--

CREATE TABLE `listblog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `listblog`
--

INSERT INTO `listblog` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Công trình Chung cư', 'Công trình Chung cư', '2022-04-14 02:00:43', '2022-04-14 02:00:43'),
(2, 'Công trình HomeStay', 'Công trình HomeStay', '2022-04-14 02:00:43', '2022-04-14 02:00:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `parent` tinyint(4) NOT NULL DEFAULT 0,
  `position` tinyint(4) NOT NULL DEFAULT 0,
  `display` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `label`, `link`, `parent`, `position`, `display`, `created_at`, `updated_at`) VALUES
(1, 'Menu', 'menu', 0, 1, 0, NULL, '2022-04-29 02:40:10'),
(2, 'User', 'user', 0, 0, 1, NULL, '2022-04-27 23:27:41'),
(4, 'Product', 'product', 0, 0, 1, NULL, NULL),
(5, 'Blog', 'blog', 0, 1, 1, NULL, '2022-04-28 18:45:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_12_082626_create_categories_table', 1),
(6, '2022_04_12_082842_create_products_table', 1),
(7, '2022_04_14_074635_create_listblog_table', 1),
(8, '2022_04_14_075443_create_blog_table', 1),
(9, '2022_04_15_022956_create_faq_table', 2),
(10, '2022_04_19_013700_create_client_message', 3),
(11, '2022_04_20_100357_create_menu_table', 3),
(12, '2022_04_25_024502_create-table_add_display_to_menu_table', 4),
(13, '2022_04_26_041241_create-table_add_detail_to_blog_table', 5),
(14, '2022_04_29_023336_create-table_add_photo_to_categories_table', 6),
(15, '2022_05_04_034132_create-table_add_slug_to_products_table', 6),
(16, '2022_05_04_044149_create-table_add_slug_to_categories_table', 6),
(17, '2022_05_04_065831_create-table_add_slug_to_blog_table', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` tinyint(4) NOT NULL DEFAULT 1,
  `position` tinyint(4) NOT NULL DEFAULT 0,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `detail`, `content`, `photo`, `slug`, `display`, `position`, `category_id`, `created_at`, `updated_at`) VALUES
(25, 'Thiết bị ăn tự động', '<p><strong>M&ocirc; tả:</strong> c&oacute; 2 mắt, 1 mũi v&agrave; miệng</p>', 21000000, '<p><strong>M&egrave;o mặt quạo</strong></p>', '<p><strong>Sản phẩm m&egrave;o mập:</strong> xuất xứ Trung Quốc, thiết kế sang trọng t&iacute;nh năng vượt trội.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://cafefcdn.com/thumb_w/650/203337114487263232/2022/3/3/photo1646280815645-1646280816151764748403.jpg\" alt=\"\" width=\"650\" height=\"406\"></p>', 'chodocx-1623207689539.png', 'thiet-bi-an-tu-dong', 1, 1, 3, '2022-04-22 01:53:28', '2022-05-05 20:23:40'),
(26, 'Máy cung cấp thịt chó', '<p>dsadsa</p>', 1200000, '<p>sdasdsa</p>', '<p>Ch&oacute; con hấp cơm</p>\r\n<p><img src=\"https://icdn.dantri.com.vn/thumb_w/660/2021/06/09/chodocx-1623207689539.jpeg\" alt=\"\" width=\"277\" height=\"166\"></p>\r\n<p>&nbsp;</p>', 'chodocx-1623207689539.png', 'may-cung-cap-thit-cho', 1, 1, 2, '2022-04-22 01:53:52', '2022-05-05 02:59:03'),
(32, 'Tranh bông cúc vàng', '<p>M&ocirc; tả sản phẩm</p>', 1000000, '<p>Điện &aacute;p: 100- 240V - 50/60 Hz<br>Nhiệt độ hoạt động: 60&ordm;C Max<br>Tần số Zigbee : 2,4 GHz<br>Tiếp điểm ALARM: NO-3A-220VAC.<br>Số k&ecirc;nh hỗ trợ: 4 k&ecirc;nh.<br>Nguồn đầu ra: 12VDC-1A.<br>K&iacute;ch thước (D x R x C): 100 x 103 x 37 mm<br>Trọng lượng: 264 gram<br>Support Giao diện: 3D trạng th&aacute;i<br>Bảo h&agrave;nh: 24 th&aacute;ng</p>', '<p>Thiết bị SH - SCZ l&agrave; thiết bị an ninh được sử dụng trong<br>hệ thống nh&agrave; th&ocirc;ng minh SmartHome, c&oacute; chức năng thu thập t&iacute;n hiệu từ c&aacute;c cảm biến an ninh như:<br>h&agrave;ng r&agrave;o điện tử, cảm biến vị tr&iacute;, cảm biến k&iacute;nh vỡ, cảm biến b&aacute;o kh&oacute;i&hellip;</p>', 'image 14.png', 'tranh-bong-cuc-vang', 1, 1, 3, '2022-04-26 02:55:22', '2022-05-03 21:54:55'),
(33, 'Thiết bị điều khiển rèm mành SH-CZ', '<p>dfassad</p>', 12322213, '<p>Điện &aacute;p: 100- 240V - 50/60 Hz<br>C&ocirc;ng suất tải: 5A Max<br>Nhiệt độ hoạt động: 60&ordm;C Max<br>Tần số Zigbee : 2,4 GHz<br>K&iacute;ch thước bản h&igrave;nh vu&ocirc;ng (D x R x C): 97 x 93 x 43 mm.<br>K&iacute;ch thước bản h&igrave;nh chữ nhật (D x R x C): 117 x 73 x 35.3 mm<br>Trọng lượng: 300 gram<br>Support Giao diện: 3D trạng th&aacute;i<br>Bảo h&agrave;nh: 24 th&aacute;ng</p>', '<p>Điều khiển hệ thống động cơ r&egrave;m, m&agrave;nh, cổng tự động, giao diện 3D,<br>kịch bản ngữ cảnh th&ocirc;ng minh. Thiết kế cao cấp, tinh xảo với<br>khung nh&ocirc;m phay nguy&ecirc;n khối, mặt k&iacute;nh cảm ứng chống xước Gorilla Glass</p>', '1651035584image 32.png', '', 1, 1, 3, '2022-04-26 03:01:32', '2022-04-27 01:26:57'),
(35, 'Bộ điều khiển 6 kênh SH-CC6', '<p>Decription&nbsp;</p>', 15000000, '<p>Điện &aacute;p: 100- 240V - 50/60 Hz<br>4 k&ecirc;nh Relay 220VAC 15A Max<br>2 k&ecirc;nh Triac 220VAC 5A Max<br>Nhiệt độ hoạt động: 60&ordm;C Max<br>Tần số Zigbee : 2,4 GHz<br>Tần số Wifi: 802.11b/g/n &ndash; 2.4GHz<br>K&iacute;ch thước (D x R x C): 140x90x55mm<br>Trọng lượng: 290 gram<br>Support Giao diện: 3D trạng th&aacute;i<br>Bảo h&agrave;nh: 24 th&aacute;ng</p>', '<p><span style=\"font-family: \'comic sans ms\', sans-serif;\">Hỗ trợ 6 k&ecirc;nh điều khiển (4 k&ecirc;nh c&ocirc;ng suất, 2 k&ecirc;nh dimming) th&ocirc;ng qua bảng điều khiển, </span><span style=\"font-family: \'comic sans ms\', sans-serif;\">giao diện 3D, kịch bản ngữ cảnh th&ocirc;ng minh. Hỗ trợ điều khiển 4 k&ecirc;nh kịch bản ngữ cảnh </span><span style=\"font-family: \'comic sans ms\', sans-serif;\">mặc định tr&ecirc;n giao diện thiết bị. Thiết kế cao cấp, tinh xảo với </span><span style=\"font-family: \'comic sans ms\', sans-serif;\">khung nh&ocirc;m phay nguy&ecirc;n khối, mặt k&iacute;nh cảm ứng chống xước Gorilla Glass.</span></p>', 'image32.png', '', 1, 1, 3, '2022-04-26 21:49:48', '2022-04-27 01:13:27'),
(37, 'Thiết bị an ninh trung tâm SH-SCZ', '<p>M&ocirc; tả sản phẩm</p>', 150000000, '<p>Điện &aacute;p: 100- 240V - 50/60 Hz<br>Nhiệt độ hoạt động: 60&ordm;C Max<br>Tần số Zigbee : 2,4 GHz<br>Tiếp điểm ALARM: NO-3A-220VAC.<br>Số k&ecirc;nh hỗ trợ: 4 k&ecirc;nh.<br>Nguồn đầu ra: 12VDC-1A.<br>K&iacute;ch thước (D x R x C): 100 x 103 x 37 mm<br>Trọng lượng: 264 gram<br>Support Giao diện: 3D trạng th&aacute;i<br>Bảo h&agrave;nh: 24 th&aacute;ng</p>', '<p>Thiết bị SH - SCZ l&agrave; thiết bị an ninh được sử dụng trong hệ thống nh&agrave; th&ocirc;ng minh SmartHome, c&oacute; chức năng thu thập t&iacute;n hiệu từ c&aacute;c cảm biến an ninh như: h&agrave;ng r&agrave;o điện tử, cảm biến vị tr&iacute;, cảm biến k&iacute;nh vỡ, cảm biến b&aacute;o kh&oacute;i&hellip;</p>', 'image 36.png', '', 1, 1, 3, '2022-04-27 01:07:05', '2022-04-27 01:11:16'),
(39, 'ssds', '<p>ss</p>', 111000, '<p>điện &aacute;p: <br><br>Trọng Lượng:<br>Support giao diện:<br>Bảo h&agrave;nh: th&aacute;ng</p>', '<p>sds</p>', 'chodocx-1623207689539.png', '', 1, 1, 1, '2022-04-29 02:25:45', '2022-05-02 06:25:50'),
(41, 'Bộ điều khiển 10 kênh SH-CC6', '<p>Decription&nbsp;</p>', 15000000, '<p>Điện &aacute;p: 100- 240V - 50/60 Hz<br>4 k&ecirc;nh Relay 220VAC 15A Max<br>2 k&ecirc;nh Triac 220VAC 5A Max<br>Nhiệt độ hoạt động: 60&ordm;C Max<br>Tần số Zigbee : 2,4 GHz<br>Tần số Wifi: 802.11b/g/n &ndash; 2.4GHz<br>K&iacute;ch thước (D x R x C): 140x90x55mm<br>Trọng lượng: 290 gram<br>Support Giao diện: 3D trạng th&aacute;i<br>Bảo h&agrave;nh: 24 th&aacute;ng</p>', '<p><span style=\"font-family: \'comic sans ms\', sans-serif;\">Hỗ trợ 6 k&ecirc;nh điều khiển (4 k&ecirc;nh c&ocirc;ng suất, 2 k&ecirc;nh dimming) th&ocirc;ng qua bảng điều khiển, </span><span style=\"font-family: \'comic sans ms\', sans-serif;\">giao diện 3D, kịch bản ngữ cảnh th&ocirc;ng minh. Hỗ trợ điều khiển 4 k&ecirc;nh kịch bản ngữ cảnh </span><span style=\"font-family: \'comic sans ms\', sans-serif;\">mặc định tr&ecirc;n giao diện thiết bị. Thiết kế cao cấp, tinh xảo với </span><span style=\"font-family: \'comic sans ms\', sans-serif;\">khung nh&ocirc;m phay nguy&ecirc;n khối, mặt k&iacute;nh cảm ứng chống xước Gorilla Glass.</span></p>', 'image32.png', 'bo-dieu-khien-10-kenh-sh-cc6', 1, 1, 3, '2022-04-26 21:49:48', '2022-05-08 21:09:14'),
(42, 'Thiết bị ăn tự động 1', '<p><strong>M&ocirc; tả:</strong> c&oacute; 2 mắt, 1 mũi v&agrave; miệng</p>', 21000000, '<p><strong>M&egrave;o mặt quạo</strong></p>', '<p><strong>Sản phẩm m&egrave;o mập:</strong> xuất xứ Trung Quốc, thiết kế sang trọng t&iacute;nh năng vượt trội.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://cafefcdn.com/thumb_w/650/203337114487263232/2022/3/3/photo1646280815645-1646280816151764748403.jpg\" alt=\"\" width=\"650\" height=\"406\"></p>', 'photo1646280815645-1646280816151764748403.png', '', 1, 1, 3, '2022-04-22 01:53:28', '2022-05-02 22:43:02'),
(43, 'Thiết bị ăn tự động 2', '<p><strong>M&ocirc; tả:</strong> c&oacute; 2 mắt, 1 mũi v&agrave; miệng</p>', 21000000, '<p><strong>M&egrave;o mặt quạo</strong></p>', '<p><strong>Sản phẩm m&egrave;o mập:</strong> xuất xứ Trung Quốc, thiết kế sang trọng t&iacute;nh năng vượt trội.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://cafefcdn.com/thumb_w/650/203337114487263232/2022/3/3/photo1646280815645-1646280816151764748403.jpg\" alt=\"\" width=\"650\" height=\"406\"></p>', 'photo1646280815645-1646280816151764748403.png', 'thiet-bi-an-tu-dong-2', 1, 1, 3, '2022-04-22 01:53:28', '2022-05-08 21:09:22'),
(44, 'Máy cung cấp thịt chó 1', '<p>dsadsa</p>', 1200000, '<p>sdasdsa</p>', '<p>Ch&oacute; con hấp cơm</p>\r\n<p><img src=\"https://icdn.dantri.com.vn/thumb_w/660/2021/06/09/chodocx-1623207689539.jpeg\" alt=\"\" width=\"277\" height=\"166\"></p>\r\n<p>&nbsp;</p>', 'chodocx-1623207689539.png', '', 1, 1, 2, '2022-04-22 01:53:52', '2022-04-27 01:29:00'),
(45, 'Tranh bông cúc vàng 1', '<p>M&ocirc; tả sản phẩm</p>', 1000000, '<p>Điện &aacute;p: 100- 240V - 50/60 Hz<br>Nhiệt độ hoạt động: 60&ordm;C Max<br>Tần số Zigbee : 2,4 GHz<br>Tiếp điểm ALARM: NO-3A-220VAC.<br>Số k&ecirc;nh hỗ trợ: 4 k&ecirc;nh.<br>Nguồn đầu ra: 12VDC-1A.<br>K&iacute;ch thước (D x R x C): 100 x 103 x 37 mm<br>Trọng lượng: 264 gram<br>Support Giao diện: 3D trạng th&aacute;i<br>Bảo h&agrave;nh: 24 th&aacute;ng</p>', '<p>Thiết bị SH - SCZ l&agrave; thiết bị an ninh được sử dụng trong<br>hệ thống nh&agrave; th&ocirc;ng minh SmartHome, c&oacute; chức năng thu thập t&iacute;n hiệu từ c&aacute;c cảm biến an ninh như:<br>h&agrave;ng r&agrave;o điện tử, cảm biến vị tr&iacute;, cảm biến k&iacute;nh vỡ, cảm biến b&aacute;o kh&oacute;i&hellip;</p>', 'image 14.png', '', 1, 1, 3, '2022-04-26 02:55:22', '2022-04-28 18:52:18'),
(46, 'Thiết bị điều khiển rèm mành SH-CZ 1', '<p>dfassad</p>', 12322213, '<p>Điện &aacute;p: 100- 240V - 50/60 Hz<br>C&ocirc;ng suất tải: 5A Max<br>Nhiệt độ hoạt động: 60&ordm;C Max<br>Tần số Zigbee : 2,4 GHz<br>K&iacute;ch thước bản h&igrave;nh vu&ocirc;ng (D x R x C): 97 x 93 x 43 mm.<br>K&iacute;ch thước bản h&igrave;nh chữ nhật (D x R x C): 117 x 73 x 35.3 mm<br>Trọng lượng: 300 gram<br>Support Giao diện: 3D trạng th&aacute;i<br>Bảo h&agrave;nh: 24 th&aacute;ng</p>', '<p>Điều khiển hệ thống động cơ r&egrave;m, m&agrave;nh, cổng tự động, giao diện 3D,<br>kịch bản ngữ cảnh th&ocirc;ng minh. Thiết kế cao cấp, tinh xảo với<br>khung nh&ocirc;m phay nguy&ecirc;n khối, mặt k&iacute;nh cảm ứng chống xước Gorilla Glass</p>', '1651035584image 32.png', '', 1, 1, 3, '2022-04-26 03:01:32', '2022-04-27 01:26:57'),
(47, 'Bộ điều khiển 6 kênh SH-CC6 1', '<p>Decription&nbsp;</p>', 15000000, '<p>Điện &aacute;p: 100- 240V - 50/60 Hz<br>4 k&ecirc;nh Relay 220VAC 15A Max<br>2 k&ecirc;nh Triac 220VAC 5A Max<br>Nhiệt độ hoạt động: 60&ordm;C Max<br>Tần số Zigbee : 2,4 GHz<br>Tần số Wifi: 802.11b/g/n &ndash; 2.4GHz<br>K&iacute;ch thước (D x R x C): 140x90x55mm<br>Trọng lượng: 290 gram<br>Support Giao diện: 3D trạng th&aacute;i<br>Bảo h&agrave;nh: 24 th&aacute;ng</p>', '<p><span style=\"font-family: \'comic sans ms\', sans-serif;\">Hỗ trợ 6 k&ecirc;nh điều khiển (4 k&ecirc;nh c&ocirc;ng suất, 2 k&ecirc;nh dimming) th&ocirc;ng qua bảng điều khiển, </span><span style=\"font-family: \'comic sans ms\', sans-serif;\">giao diện 3D, kịch bản ngữ cảnh th&ocirc;ng minh. Hỗ trợ điều khiển 4 k&ecirc;nh kịch bản ngữ cảnh </span><span style=\"font-family: \'comic sans ms\', sans-serif;\">mặc định tr&ecirc;n giao diện thiết bị. Thiết kế cao cấp, tinh xảo với </span><span style=\"font-family: \'comic sans ms\', sans-serif;\">khung nh&ocirc;m phay nguy&ecirc;n khối, mặt k&iacute;nh cảm ứng chống xước Gorilla Glass.</span></p>', 'image32.png', '', 1, 1, 3, '2022-04-26 21:49:48', '2022-04-27 01:13:27'),
(48, 'Thiết bị an ninh trung tâm SH-SCZ 1', '<p>M&ocirc; tả sản phẩm</p>', 150000000, '<p>Điện &aacute;p: 100- 240V - 50/60 Hz<br>Nhiệt độ hoạt động: 60&ordm;C Max<br>Tần số Zigbee : 2,4 GHz<br>Tiếp điểm ALARM: NO-3A-220VAC.<br>Số k&ecirc;nh hỗ trợ: 4 k&ecirc;nh.<br>Nguồn đầu ra: 12VDC-1A.<br>K&iacute;ch thước (D x R x C): 100 x 103 x 37 mm<br>Trọng lượng: 264 gram<br>Support Giao diện: 3D trạng th&aacute;i<br>Bảo h&agrave;nh: 24 th&aacute;ng</p>', '<p>Thiết bị SH - SCZ l&agrave; thiết bị an ninh được sử dụng trong hệ thống nh&agrave; th&ocirc;ng minh SmartHome, c&oacute; chức năng thu thập t&iacute;n hiệu từ c&aacute;c cảm biến an ninh như: h&agrave;ng r&agrave;o điện tử, cảm biến vị tr&iacute;, cảm biến k&iacute;nh vỡ, cảm biến b&aacute;o kh&oacute;i&hellip;</p>', 'image 36.png', '', 1, 1, 3, '2022-04-27 01:07:05', '2022-04-27 01:11:16'),
(49, 'ssds 1', '<p>ss</p>', 111000, '<p>điện &aacute;p: <br><br>Trọng Lượng:<br>Support giao diện:<br>Bảo h&agrave;nh: th&aacute;ng</p>', '<p>sds</p>', 'chodocx-1623207689539.png', '', 1, 1, 1, '2022-04-29 02:25:45', '2022-05-02 06:25:50'),
(50, 'Bộ điều khiển 10 kênh SH-CC6 2 ', '<p>Decription&nbsp;</p>', 15000000, '<p>Điện &aacute;p: 100- 240V - 50/60 Hz<br>4 k&ecirc;nh Relay 220VAC 15A Max<br>2 k&ecirc;nh Triac 220VAC 5A Max<br>Nhiệt độ hoạt động: 60&ordm;C Max<br>Tần số Zigbee : 2,4 GHz<br>Tần số Wifi: 802.11b/g/n &ndash; 2.4GHz<br>K&iacute;ch thước (D x R x C): 140x90x55mm<br>Trọng lượng: 290 gram<br>Support Giao diện: 3D trạng th&aacute;i<br>Bảo h&agrave;nh: 24 th&aacute;ng</p>', '<p><span style=\"font-family: \'comic sans ms\', sans-serif;\">Hỗ trợ 6 k&ecirc;nh điều khiển (4 k&ecirc;nh c&ocirc;ng suất, 2 k&ecirc;nh dimming) th&ocirc;ng qua bảng điều khiển, </span><span style=\"font-family: \'comic sans ms\', sans-serif;\">giao diện 3D, kịch bản ngữ cảnh th&ocirc;ng minh. Hỗ trợ điều khiển 4 k&ecirc;nh kịch bản ngữ cảnh </span><span style=\"font-family: \'comic sans ms\', sans-serif;\">mặc định tr&ecirc;n giao diện thiết bị. Thiết kế cao cấp, tinh xảo với </span><span style=\"font-family: \'comic sans ms\', sans-serif;\">khung nh&ocirc;m phay nguy&ecirc;n khối, mặt k&iacute;nh cảm ứng chống xước Gorilla Glass.</span></p>', 'image32.png', '', 1, 1, 3, '2022-04-26 21:49:48', '2022-04-27 01:13:27'),
(51, 'Thiết bị ăn tự động 3', '<p><strong>M&ocirc; tả:</strong> c&oacute; 2 mắt, 1 mũi v&agrave; miệng</p>', 21000000, '<p><strong>M&egrave;o mặt quạo</strong></p>', '<p><strong>Sản phẩm m&egrave;o mập:</strong> xuất xứ Trung Quốc, thiết kế sang trọng t&iacute;nh năng vượt trội.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://cafefcdn.com/thumb_w/650/203337114487263232/2022/3/3/photo1646280815645-1646280816151764748403.jpg\" alt=\"\" width=\"650\" height=\"406\"></p>', 'photo1646280815645-1646280816151764748403.png', '', 1, 1, 3, '2022-04-22 01:53:28', '2022-05-02 22:43:02'),
(52, 'Thiết bị ăn tự động 12', '<p><strong>M&ocirc; tả:</strong> c&oacute; 2 mắt, 1 mũi v&agrave; miệng</p>', 21000000, '<p><strong>M&egrave;o mặt quạo</strong></p>', '<p><strong>Sản phẩm m&egrave;o mập:</strong> xuất xứ Trung Quốc, thiết kế sang trọng t&iacute;nh năng vượt trội.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://cafefcdn.com/thumb_w/650/203337114487263232/2022/3/3/photo1646280815645-1646280816151764748403.jpg\" alt=\"\" width=\"650\" height=\"406\"></p>', 'photo1646280815645-1646280816151764748403.png', '', 1, 1, 3, '2022-04-22 01:53:28', '2022-05-02 22:43:02'),
(53, 'Máy cung cấp thịt chó 12', '<p>dsadsa</p>', 1200000, '<p>sdasdsa</p>', '<p>Ch&oacute; con hấp cơm</p>\r\n<p><img src=\"https://icdn.dantri.com.vn/thumb_w/660/2021/06/09/chodocx-1623207689539.jpeg\" alt=\"\" width=\"277\" height=\"166\"></p>\r\n<p>&nbsp;</p>', 'chodocx-1623207689539.png', '', 1, 1, 2, '2022-04-22 01:53:52', '2022-04-27 01:29:00'),
(54, 'Tranh bông cúc vàng 21', '<p>M&ocirc; tả sản phẩm</p>', 1000000, '<p>Điện &aacute;p: 100- 240V - 50/60 Hz<br>Nhiệt độ hoạt động: 60&ordm;C Max<br>Tần số Zigbee : 2,4 GHz<br>Tiếp điểm ALARM: NO-3A-220VAC.<br>Số k&ecirc;nh hỗ trợ: 4 k&ecirc;nh.<br>Nguồn đầu ra: 12VDC-1A.<br>K&iacute;ch thước (D x R x C): 100 x 103 x 37 mm<br>Trọng lượng: 264 gram<br>Support Giao diện: 3D trạng th&aacute;i<br>Bảo h&agrave;nh: 24 th&aacute;ng</p>', '<p>Thiết bị SH - SCZ l&agrave; thiết bị an ninh được sử dụng trong<br>hệ thống nh&agrave; th&ocirc;ng minh SmartHome, c&oacute; chức năng thu thập t&iacute;n hiệu từ c&aacute;c cảm biến an ninh như:<br>h&agrave;ng r&agrave;o điện tử, cảm biến vị tr&iacute;, cảm biến k&iacute;nh vỡ, cảm biến b&aacute;o kh&oacute;i&hellip;</p>', 'image 14.png', '', 1, 1, 3, '2022-04-26 02:55:22', '2022-04-28 18:52:18'),
(55, 'Thiết bị điều khiển rèm mành SH-CZ 12', '<p>dfassad</p>', 12322213, '<p>Điện &aacute;p: 100- 240V - 50/60 Hz<br>C&ocirc;ng suất tải: 5A Max<br>Nhiệt độ hoạt động: 60&ordm;C Max<br>Tần số Zigbee : 2,4 GHz<br>K&iacute;ch thước bản h&igrave;nh vu&ocirc;ng (D x R x C): 97 x 93 x 43 mm.<br>K&iacute;ch thước bản h&igrave;nh chữ nhật (D x R x C): 117 x 73 x 35.3 mm<br>Trọng lượng: 300 gram<br>Support Giao diện: 3D trạng th&aacute;i<br>Bảo h&agrave;nh: 24 th&aacute;ng</p>', '<p>Điều khiển hệ thống động cơ r&egrave;m, m&agrave;nh, cổng tự động, giao diện 3D,<br>kịch bản ngữ cảnh th&ocirc;ng minh. Thiết kế cao cấp, tinh xảo với<br>khung nh&ocirc;m phay nguy&ecirc;n khối, mặt k&iacute;nh cảm ứng chống xước Gorilla Glass</p>', '1651035584image 32.png', '', 1, 1, 3, '2022-04-26 03:01:32', '2022-04-27 01:26:57'),
(56, 'Bộ điều khiển 6 kênh SH-CC6 12', '<p>Decription&nbsp;</p>', 15000000, '<p>Điện &aacute;p: 100- 240V - 50/60 Hz<br>4 k&ecirc;nh Relay 220VAC 15A Max<br>2 k&ecirc;nh Triac 220VAC 5A Max<br>Nhiệt độ hoạt động: 60&ordm;C Max<br>Tần số Zigbee : 2,4 GHz<br>Tần số Wifi: 802.11b/g/n &ndash; 2.4GHz<br>K&iacute;ch thước (D x R x C): 140x90x55mm<br>Trọng lượng: 290 gram<br>Support Giao diện: 3D trạng th&aacute;i<br>Bảo h&agrave;nh: 24 th&aacute;ng</p>', '<p><span style=\"font-family: \'comic sans ms\', sans-serif;\">Hỗ trợ 6 k&ecirc;nh điều khiển (4 k&ecirc;nh c&ocirc;ng suất, 2 k&ecirc;nh dimming) th&ocirc;ng qua bảng điều khiển, </span><span style=\"font-family: \'comic sans ms\', sans-serif;\">giao diện 3D, kịch bản ngữ cảnh th&ocirc;ng minh. Hỗ trợ điều khiển 4 k&ecirc;nh kịch bản ngữ cảnh </span><span style=\"font-family: \'comic sans ms\', sans-serif;\">mặc định tr&ecirc;n giao diện thiết bị. Thiết kế cao cấp, tinh xảo với </span><span style=\"font-family: \'comic sans ms\', sans-serif;\">khung nh&ocirc;m phay nguy&ecirc;n khối, mặt k&iacute;nh cảm ứng chống xước Gorilla Glass.</span></p>', 'image32.png', '', 1, 1, 3, '2022-04-26 21:49:48', '2022-04-27 01:13:27'),
(57, 'Thiết bị an ninh trung tâm SH-SCZ 12', '<p>M&ocirc; tả sản phẩm</p>', 150000000, '<p>Điện &aacute;p: 100- 240V - 50/60 Hz<br>Nhiệt độ hoạt động: 60&ordm;C Max<br>Tần số Zigbee : 2,4 GHz<br>Tiếp điểm ALARM: NO-3A-220VAC.<br>Số k&ecirc;nh hỗ trợ: 4 k&ecirc;nh.<br>Nguồn đầu ra: 12VDC-1A.<br>K&iacute;ch thước (D x R x C): 100 x 103 x 37 mm<br>Trọng lượng: 264 gram<br>Support Giao diện: 3D trạng th&aacute;i<br>Bảo h&agrave;nh: 24 th&aacute;ng</p>', '<p>Thiết bị SH - SCZ l&agrave; thiết bị an ninh được sử dụng trong hệ thống nh&agrave; th&ocirc;ng minh SmartHome, c&oacute; chức năng thu thập t&iacute;n hiệu từ c&aacute;c cảm biến an ninh như: h&agrave;ng r&agrave;o điện tử, cảm biến vị tr&iacute;, cảm biến k&iacute;nh vỡ, cảm biến b&aacute;o kh&oacute;i&hellip;</p>', 'image 36.png', '', 1, 1, 3, '2022-04-27 01:07:05', '2022-04-27 01:11:16'),
(58, 'ssds 21', '<p>ss</p>', 111000, '<p>điện &aacute;p: <br><br>Trọng Lượng:<br>Support giao diện:<br>Bảo h&agrave;nh: th&aacute;ng</p>', '<p>sds</p>', 'chodocx-1623207689539.png', '', 1, 1, 1, '2022-04-29 02:25:45', '2022-05-02 06:25:50'),
(59, 'Bộ điều khiển 10 kênh SH-CC6 12', '<p>Decription&nbsp;</p>', 15000000, '<p>Điện &aacute;p: 100- 240V - 50/60 Hz<br>4 k&ecirc;nh Relay 220VAC 15A Max<br>2 k&ecirc;nh Triac 220VAC 5A Max<br>Nhiệt độ hoạt động: 60&ordm;C Max<br>Tần số Zigbee : 2,4 GHz<br>Tần số Wifi: 802.11b/g/n &ndash; 2.4GHz<br>K&iacute;ch thước (D x R x C): 140x90x55mm<br>Trọng lượng: 290 gram<br>Support Giao diện: 3D trạng th&aacute;i<br>Bảo h&agrave;nh: 24 th&aacute;ng</p>', '<p><span style=\"font-family: \'comic sans ms\', sans-serif;\">Hỗ trợ 6 k&ecirc;nh điều khiển (4 k&ecirc;nh c&ocirc;ng suất, 2 k&ecirc;nh dimming) th&ocirc;ng qua bảng điều khiển, </span><span style=\"font-family: \'comic sans ms\', sans-serif;\">giao diện 3D, kịch bản ngữ cảnh th&ocirc;ng minh. Hỗ trợ điều khiển 4 k&ecirc;nh kịch bản ngữ cảnh </span><span style=\"font-family: \'comic sans ms\', sans-serif;\">mặc định tr&ecirc;n giao diện thiết bị. Thiết kế cao cấp, tinh xảo với </span><span style=\"font-family: \'comic sans ms\', sans-serif;\">khung nh&ocirc;m phay nguy&ecirc;n khối, mặt k&iacute;nh cảm ứng chống xước Gorilla Glass.</span></p>', 'image32.png', '', 1, 1, 3, '2022-04-26 21:49:48', '2022-04-27 01:13:27'),
(60, 'Thiết bị ăn tự động 1 2', '<p><strong>M&ocirc; tả:</strong> c&oacute; 2 mắt, 1 mũi v&agrave; miệng</p>', 21000000, '<p><strong>M&egrave;o mặt quạo</strong></p>', '<p><strong>Sản phẩm m&egrave;o mập:</strong> xuất xứ Trung Quốc, thiết kế sang trọng t&iacute;nh năng vượt trội.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://cafefcdn.com/thumb_w/650/203337114487263232/2022/3/3/photo1646280815645-1646280816151764748403.jpg\" alt=\"\" width=\"650\" height=\"406\"></p>', 'photo1646280815645-1646280816151764748403.png', '', 1, 1, 3, '2022-04-22 01:53:28', '2022-05-02 22:43:02'),
(61, 'Thiết bị ăn tự động 2 21', '<p><strong>M&ocirc; tả:</strong> c&oacute; 2 mắt, 1 mũi v&agrave; miệng</p>', 21000000, '<p><strong>M&egrave;o mặt quạo</strong></p>', '<p><strong>Sản phẩm m&egrave;o mập:</strong> xuất xứ Trung Quốc, thiết kế sang trọng t&iacute;nh năng vượt trội.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://cafefcdn.com/thumb_w/650/203337114487263232/2022/3/3/photo1646280815645-1646280816151764748403.jpg\" alt=\"\" width=\"650\" height=\"406\"></p>', 'photo1646280815645-1646280816151764748403.png', '', 1, 1, 3, '2022-04-22 01:53:28', '2022-05-02 22:43:02'),
(62, 'Máy cung cấp thịt chó 1 12', '<p>dsadsa</p>', 1200000, '<p>sdasdsa</p>', '<p>Ch&oacute; con hấp cơm</p>\r\n<p><img src=\"https://icdn.dantri.com.vn/thumb_w/660/2021/06/09/chodocx-1623207689539.jpeg\" alt=\"\" width=\"277\" height=\"166\"></p>\r\n<p>&nbsp;</p>', 'chodocx-1623207689539.png', '', 1, 1, 2, '2022-04-22 01:53:52', '2022-04-27 01:29:00'),
(63, 'Tranh bông cúc vàng 1 21', '<p>M&ocirc; tả sản phẩm</p>', 1000000, '<p>Điện &aacute;p: 100- 240V - 50/60 Hz<br>Nhiệt độ hoạt động: 60&ordm;C Max<br>Tần số Zigbee : 2,4 GHz<br>Tiếp điểm ALARM: NO-3A-220VAC.<br>Số k&ecirc;nh hỗ trợ: 4 k&ecirc;nh.<br>Nguồn đầu ra: 12VDC-1A.<br>K&iacute;ch thước (D x R x C): 100 x 103 x 37 mm<br>Trọng lượng: 264 gram<br>Support Giao diện: 3D trạng th&aacute;i<br>Bảo h&agrave;nh: 24 th&aacute;ng</p>', '<p>Thiết bị SH - SCZ l&agrave; thiết bị an ninh được sử dụng trong<br>hệ thống nh&agrave; th&ocirc;ng minh SmartHome, c&oacute; chức năng thu thập t&iacute;n hiệu từ c&aacute;c cảm biến an ninh như:<br>h&agrave;ng r&agrave;o điện tử, cảm biến vị tr&iacute;, cảm biến k&iacute;nh vỡ, cảm biến b&aacute;o kh&oacute;i&hellip;</p>', 'image 14.png', '', 1, 1, 3, '2022-04-26 02:55:22', '2022-04-28 18:52:18'),
(64, 'Thiết bị điều khiển rèm mành SH-CZ 1 21', '<p>dfassad</p>', 12322213, '<p>Điện &aacute;p: 100- 240V - 50/60 Hz<br>C&ocirc;ng suất tải: 5A Max<br>Nhiệt độ hoạt động: 60&ordm;C Max<br>Tần số Zigbee : 2,4 GHz<br>K&iacute;ch thước bản h&igrave;nh vu&ocirc;ng (D x R x C): 97 x 93 x 43 mm.<br>K&iacute;ch thước bản h&igrave;nh chữ nhật (D x R x C): 117 x 73 x 35.3 mm<br>Trọng lượng: 300 gram<br>Support Giao diện: 3D trạng th&aacute;i<br>Bảo h&agrave;nh: 24 th&aacute;ng</p>', '<p>Điều khiển hệ thống động cơ r&egrave;m, m&agrave;nh, cổng tự động, giao diện 3D,<br>kịch bản ngữ cảnh th&ocirc;ng minh. Thiết kế cao cấp, tinh xảo với<br>khung nh&ocirc;m phay nguy&ecirc;n khối, mặt k&iacute;nh cảm ứng chống xước Gorilla Glass</p>', '1651035584image 32.png', '', 1, 1, 3, '2022-04-26 03:01:32', '2022-04-27 01:26:57'),
(65, 'Bộ điều khiển 6 kênh SH-CC6 1 12', '<p>Decription&nbsp;</p>', 15000000, '<p>Điện &aacute;p: 100- 240V - 50/60 Hz<br>4 k&ecirc;nh Relay 220VAC 15A Max<br>2 k&ecirc;nh Triac 220VAC 5A Max<br>Nhiệt độ hoạt động: 60&ordm;C Max<br>Tần số Zigbee : 2,4 GHz<br>Tần số Wifi: 802.11b/g/n &ndash; 2.4GHz<br>K&iacute;ch thước (D x R x C): 140x90x55mm<br>Trọng lượng: 290 gram<br>Support Giao diện: 3D trạng th&aacute;i<br>Bảo h&agrave;nh: 24 th&aacute;ng</p>', '<p><span style=\"font-family: \'comic sans ms\', sans-serif;\">Hỗ trợ 6 k&ecirc;nh điều khiển (4 k&ecirc;nh c&ocirc;ng suất, 2 k&ecirc;nh dimming) th&ocirc;ng qua bảng điều khiển, </span><span style=\"font-family: \'comic sans ms\', sans-serif;\">giao diện 3D, kịch bản ngữ cảnh th&ocirc;ng minh. Hỗ trợ điều khiển 4 k&ecirc;nh kịch bản ngữ cảnh </span><span style=\"font-family: \'comic sans ms\', sans-serif;\">mặc định tr&ecirc;n giao diện thiết bị. Thiết kế cao cấp, tinh xảo với </span><span style=\"font-family: \'comic sans ms\', sans-serif;\">khung nh&ocirc;m phay nguy&ecirc;n khối, mặt k&iacute;nh cảm ứng chống xước Gorilla Glass.</span></p>', 'image32.png', '', 1, 1, 3, '2022-04-26 21:49:48', '2022-04-27 01:13:27'),
(66, 'Thiết bị an ninh trung tâm SH-SCZ 1 21', '<p>M&ocirc; tả sản phẩm</p>', 150000000, '<p>Điện &aacute;p: 100- 240V - 50/60 Hz<br>Nhiệt độ hoạt động: 60&ordm;C Max<br>Tần số Zigbee : 2,4 GHz<br>Tiếp điểm ALARM: NO-3A-220VAC.<br>Số k&ecirc;nh hỗ trợ: 4 k&ecirc;nh.<br>Nguồn đầu ra: 12VDC-1A.<br>K&iacute;ch thước (D x R x C): 100 x 103 x 37 mm<br>Trọng lượng: 264 gram<br>Support Giao diện: 3D trạng th&aacute;i<br>Bảo h&agrave;nh: 24 th&aacute;ng</p>', '<p>Thiết bị SH - SCZ l&agrave; thiết bị an ninh được sử dụng trong hệ thống nh&agrave; th&ocirc;ng minh SmartHome, c&oacute; chức năng thu thập t&iacute;n hiệu từ c&aacute;c cảm biến an ninh như: h&agrave;ng r&agrave;o điện tử, cảm biến vị tr&iacute;, cảm biến k&iacute;nh vỡ, cảm biến b&aacute;o kh&oacute;i&hellip;</p>', 'image 36.png', '', 1, 1, 3, '2022-04-27 01:07:05', '2022-04-27 01:11:16'),
(67, 'ssds 1 12', '<p>ss</p>', 111000, '<p>điện &aacute;p: <br><br>Trọng Lượng:<br>Support giao diện:<br>Bảo h&agrave;nh: th&aacute;ng</p>', '<p>sds</p>', 'chodocx-1623207689539.png', 'ssds-1-12', 1, 1, 1, '2022-04-29 02:25:45', '2022-05-05 01:09:50'),
(68, 'product 1', '<p>dsadsa</p>', 111111, '<p>điện &aacute;p: <br>sdsds<br>Trọng Lượng:<br>Support giao diện:<br>Bảo h&agrave;nh: th&aacute;ng</p>', '<p>sdads</p>', 'chodocx-1623207689539.png', 'product-1', 1, 1, 1, '2022-05-03 21:50:38', '2022-05-03 21:50:38'),
(69, 'Sản phẩm test', '<p>sản phẩm</p>', 100000, '<p>điện &aacute;p: <br>100<br>Trọng Lượng:1 11<br>Support giao diện:<br>Bảo h&agrave;nh: th&aacute;ng</p>', '<p>sản phẩm đẹp</p>', 'photo1646280815645-1646280816151764748403.png', 'san-pham-test', 1, 1, 2, '2022-05-04 23:51:17', '2022-05-04 23:51:17'),
(70, 'Sản phẩm mới nhất', '<p>sản phẩm ho&agrave;n hảo</p>', 2000000, '<p>điện &aacute;p: 10000<br><br>Trọng Lượng: 1000g<br>Support giao diện:<br>Bảo h&agrave;nh: th&aacute;ng</p>', '<p>H&igrave;nh như l&agrave; sản phẩm mới</p>', 'chodocx-1623207689539.png', 'san-pham-moi-nhat', 1, 1, 3, '2022-05-04 23:52:09', '2022-05-04 23:52:09'),
(72, 'Sản phẩm mới nhất 10', '<p>sản phẩm ho&agrave;n hảo</p>', 2000000, '<p>điện &aacute;p: 10000<br><br>Trọng Lượng: 1000g<br>Support giao diện:<br>Bảo h&agrave;nh: th&aacute;ng</p>', '<p>H&igrave;nh như l&agrave; sản phẩm mới</p>', 'chodocx-1623207689539.png', 'san-pham-moi-nhat-10', 1, 1, 3, '2022-05-04 23:54:26', '2022-05-04 23:54:26'),
(73, 'Sản phẩm mới nhất 100', '<p>sản phẩm ho&agrave;n hảo</p>', 2000000, '<p>điện &aacute;p: 10000<br><br>Trọng Lượng: 1000g<br>Support giao diện:<br>Bảo h&agrave;nh: th&aacute;ng</p>', '<p>H&igrave;nh như l&agrave; sản phẩm mới</p>', 'chodocx-1623207689539.png', 'san-pham-moi-nhat-100', 1, 1, 3, '2022-05-04 23:54:37', '2022-05-04 23:54:37'),
(74, 'Sản phẩm mới nhất 1000', '<p>sản phẩm ho&agrave;n hảo</p>', 2000000, '<p>điện &aacute;p: 10000<br><br>Trọng Lượng: 1000g<br>Support giao diện:<br>Bảo h&agrave;nh: th&aacute;ng</p>', '<p>H&igrave;nh như l&agrave; sản phẩm mới</p>', 'chodocx-1623207689539.png', 'san-pham-moi-nhat-1000', 1, 1, 3, '2022-05-04 23:54:46', '2022-05-04 23:54:46'),
(75, 'Sản phẩm mới nhất 11', '<p>sản phẩm ho&agrave;n hảo</p>', 2000000, '<p>điện &aacute;p: 10000<br><br>Trọng Lượng: 1000g<br>Support giao diện:<br>Bảo h&agrave;nh: th&aacute;ng</p>', '<p>H&igrave;nh như l&agrave; sản phẩm mới</p>', 'chodocx-1623207689539.png', 'san-pham-moi-nhat-11', 1, 1, 3, '2022-05-04 23:55:02', '2022-05-04 23:55:02'),
(76, 'Sản phẩm mới nhất 12', '<p>sản phẩm ho&agrave;n hảo</p>', 2000000, '<p>điện &aacute;p: 10000<br><br>Trọng Lượng: 1000g<br>Support giao diện:<br>Bảo h&agrave;nh: th&aacute;ng</p>', '<p>H&igrave;nh như l&agrave; sản phẩm mới</p>', 'chodocx-1623207689539.png', 'san-pham-moi-nhat-12', 1, 1, 3, '2022-05-04 23:55:54', '2022-05-04 23:55:54'),
(77, 'Sản phẩm mới nhất 13', '<p>sản phẩm ho&agrave;n hảo</p>', 2000000, '<p>điện &aacute;p: 10000<br><br>Trọng Lượng: 1000g<br>Support giao diện:<br>Bảo h&agrave;nh: th&aacute;ng</p>', '<p>H&igrave;nh như l&agrave; sản phẩm mới</p>', 'chodocx-1623207689539.png', 'san-pham-moi-nhat-13', 1, 1, 1, '2022-05-04 23:56:27', '2022-05-04 23:56:27'),
(78, 'Sản phẩm mới nhất 14', '<p>sản phẩm ho&agrave;n hảo</p>', 2000000, '<p>điện &aacute;p: 10000<br><br>Trọng Lượng: 1000g<br>Support giao diện:<br>Bảo h&agrave;nh: th&aacute;ng</p>', '<p>H&igrave;nh như l&agrave; sản phẩm mới</p>', 'chodocx-1623207689539.png', 'san-pham-moi-nhat-14', 1, 1, 1, '2022-05-04 23:56:46', '2022-05-04 23:56:46'),
(79, 'Sản phẩm mới nhất 15', '<p>sản phẩm ho&agrave;n hảo</p>', 2000000, '<p>điện &aacute;p: 10000<br><br>Trọng Lượng: 1000g<br>Support giao diện:<br>Bảo h&agrave;nh: th&aacute;ng</p>', '<p>H&igrave;nh như l&agrave; sản phẩm mới</p>', 'chodocx-1623207689539.png', 'san-pham-moi-nhat-15', 1, 1, 3, '2022-05-04 23:58:25', '2022-05-04 23:58:25'),
(81, 'Căn nhà số 2', '<p>3000m<sup>2</sup></p>', 300000, '<p>điện &aacute;p: 3000m<sup>2</sup><br><br>Trọng Lượng: 3000m<sup>2</sup><br>Support giao diện: 3000m<sup>2 3000m2</sup><br>Bảo h&agrave;nh: th&aacute;ng 3000m<sup>2</sup></p>', '<p>3000m<sup>2</sup>3000m<sup>2 </sup>3000m<sup>2</sup>3000m<sup>2&nbsp; </sup>3000m<sup>2</sup>3000m<sup>2 </sup>3000m<sup>2</sup>3000m<sup>2&nbsp;</sup></p>', 'z2986123859434_008_da73bf0c4cddfb69787109643e8ff909.jpg', 'can-nha-so-2', 1, 1, 1, '2022-05-04 23:59:56', '2022-05-04 23:59:56'),
(82, 'Căn nhà số 3', '<p>3000m<sup>2</sup></p>', 300000, '<p>điện &aacute;p: 3000m<sup>2</sup><br><br>Trọng Lượng: 3000m<sup>2</sup><br>Support giao diện: 3000m<sup>2 3000m2</sup><br>Bảo h&agrave;nh: th&aacute;ng 3000m<sup>2</sup></p>', '<p>3000m<sup>2</sup>3000m<sup>2 </sup>3000m<sup>2</sup>3000m<sup>2&nbsp; </sup>3000m<sup>2</sup>3000m<sup>2 </sup>3000m<sup>2</sup>3000m<sup>2&nbsp;</sup></p>', 'z2986123859434_008_da73bf0c4cddfb69787109643e8ff909.jpg', 'can-nha-so-3', 1, 1, 1, '2022-05-05 00:01:26', '2022-05-05 00:01:26'),
(83, 'Tòa nhà 10', '<p>Nh&agrave; 3 tầng</p>', 20000, '<p>điện &aacute;p: Nh&agrave; 3 tầng Nh&agrave; 3 tầng<br><br>Trọng Lượng: Nh&agrave; 3 tầng<br>Support giao diện: Nh&agrave; 3 tầng<br>Bảo h&agrave;nh: th&aacute;ng Nh&agrave; 3 tầng</p>', '<p>Nh&agrave; 3 tầng Nh&agrave; 3 tầng Nh&agrave; 3 tầng Nh&agrave; 3 tầngNh&agrave; 3 tầng</p>', 'z2986123859434_008_da73bf0c4cddfb69787109643e8ff909.jpg', 'toa-nha-10', 1, 1, 2, '2022-05-05 00:02:43', '2022-05-05 00:02:43'),
(84, 'Tòa nhà 11', '<p>Nh&agrave; 3 tầng</p>', 20000, '<p>điện &aacute;p: Nh&agrave; 3 tầng Nh&agrave; 3 tầng<br><br>Trọng Lượng: Nh&agrave; 3 tầng<br>Support giao diện: Nh&agrave; 3 tầng<br>Bảo h&agrave;nh: th&aacute;ng Nh&agrave; 3 tầng</p>', '<p>Nh&agrave; 3 tầng Nh&agrave; 3 tầng Nh&agrave; 3 tầng Nh&agrave; 3 tầngNh&agrave; 3 tầng</p>', 'z2986123859434_008_da73bf0c4cddfb69787109643e8ff909.jpg', 'toa-nha-11', 1, 1, 2, '2022-05-05 00:09:46', '2022-05-05 00:09:46'),
(85, 'Nhà cao tầng 1', '<p>Nh&agrave; c&oacute; 4 tầng</p>', 2000, '<p>điện &aacute;p: <br>&nbsp;10000Kwh<br>Trọng Lượng:<br>Support giao diện:<br>Bảo h&agrave;nh: th&aacute;ng</p>', '<p>Nh&agrave; thiết kế kh&aacute; xấu v&agrave; t&ugrave;</p>', 'z2986123859434_008_da73bf0c4cddfb69787109643e8ff909.jpg', 'nha-cao-tang-1', 1, 1, 3, '2022-05-05 00:14:43', '2022-05-05 00:14:43'),
(86, 'Building 1', '<p>Home Building</p>', 30000, '<p>điện &aacute;p: 1111<br><br>Trọng Lượng: 1 1<br>Support giao diện: 11<br>Bảo h&agrave;nh: th&aacute;ng 1 1</p>', '<p>&nbsp;</p>\r\n<div>\r\n<div>navigate(\"/product/add\");</div>\r\n</div>\r\n<div>\r\n<div>navigate(\"/product/add\");\r\n<div>\r\n<div>navigate(\"/product/add\");</div>\r\n</div>\r\n</div>\r\n</div>', 'photo1646280815645-1646280816151764748403.png', 'building-1', 1, 1, 1, '2022-05-05 00:16:06', '2022-05-05 00:16:06'),
(87, 'Home Stay 1', '<p>Home Stay khu vực miền n&uacute;i</p>', 300000, '<p>điện &aacute;p: <br>3000Kwh<br>Trọng Lượng: 100000<br>Support giao diện:<br>Bảo h&agrave;nh: th&aacute;ng</p>', '<p>điện &aacute;p: <br>3000Kwh<br>Trọng Lượng: 100000<br>Support giao diện:<br>Bảo h&agrave;nh: th&aacute;ng</p>', 'z2986123859434_008_da73bf0c4cddfb69787109643e8ff909.jpg', 'home-stay-1', 1, 1, 3, '2022-05-05 00:18:07', '2022-05-05 00:18:07'),
(88, 'Sản phẩm mới 100', '<p>Sản phẩm hiện chứ ra mắt</p>', 30000, '<p>điện &aacute;p: <br>1000Kwh<br>Trọng Lượng:<br>Support giao diện:<br>Bảo h&agrave;nh: th&aacute;ng</p>', '<p>Sản phẩm kh&aacute; mới n&ecirc;n c&ograve;n nhiều sai s&oacute;t</p>', 'z2986123859434_008_da73bf0c4cddfb69787109643e8ff909.jpg', 'san-pham-moi-100', 1, 1, 1, '2022-05-05 00:23:54', '2022-05-05 00:39:14'),
(89, 'Sản phẩm mới 102', '<p>Sản phẩm hiện chứ ra mắt sss</p>', 30000, '<p>điện &aacute;p: 1000<br>1000Kwh<br>Trọng Lượng:<br>Support giao diện:<br>Bảo h&agrave;nh: th&aacute;ng</p>', '<p>Sản phẩm kh&aacute; mới n&ecirc;n c&ograve;n nhiều sai s&oacute;t</p>', 'chodocx-1623207689539.png', 'san-pham-moi-102', 1, 1, 1, '2022-05-05 00:25:55', '2022-05-05 00:25:55'),
(90, 'dsadsdsadaasdsa', '<p>dasdsad</p>', 21321321, '<p>điện &aacute;p: <br>dsadas<br>Trọng Lượng:<br>Support giao diện:<br>Bảo h&agrave;nh: th&aacute;ng</p>', '<p>asdsadsdasdas</p>', 'chodocx-1623207689539.png', 'dsadsdsadaasdsa', 1, 1, 3, '2022-05-05 22:03:17', '2022-05-05 22:03:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$4uEq4tq6tCFpy2e4YOeIAe2S9mjz8K5cs9xpxCj0s863KFgBTknj.', 0, NULL, '2022-04-14 19:07:55', '2022-04-14 19:07:55'),
(2, 'admin1', 'admin1@gmail.com', NULL, '$2y$10$A1dks.TNEnCEvBG9JbPgp.uQQ6UZYvs4ngA3RpfPBa3qtyiUSSInK', 0, NULL, '2022-04-17 23:31:50', '2022-04-17 23:31:50'),
(3, 'admin12', 'admin12@gmail.com', NULL, '$2y$10$sKXevz5VYUohb6uI6t30mOITRV0I/fQj.62jP95ZIX9ho/TJ90r.a', 0, NULL, '2022-04-18 00:06:26', '2022-04-18 00:06:26'),
(4, 'admin123', 'admin123@gmail.com', NULL, '$2y$10$CJE.nbEVuVHtag32OtUiUemifk7buEwYJvETgWeoz6yt1EwKorCna', 0, NULL, '2022-04-18 00:07:49', '2022-04-18 00:07:49'),
(5, 'admin123', 'admin1234@gmail.com', NULL, '$2y$10$9n5xiUOSDyo1CNniAk3nG.FVrCJMVNdh1cbFIquqr0vJbE5L/R8f6', 0, NULL, '2022-04-18 00:11:18', '2022-04-18 00:11:18'),
(6, 'phong', 'phong@gmail.com', NULL, '$2y$10$OjZ5smD3bo6zipxOUawZFutyEnV250Jua6GmdUA65XNRogfAoIC4O', 1, NULL, '2022-04-18 22:42:31', '2022-04-18 22:42:31'),
(7, 'phong3', 'phong3@gmail.com', NULL, '$2y$10$YWRamhGCukAzBHaLPrxivO4N.HWLoF3lT6d1L/YC8XSoaCF2epJhW', 0, NULL, '2022-04-25 06:32:47', '2022-04-25 06:32:47');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_title_unique` (`title`),
  ADD KEY `blog_listblog_id_foreign` (`listblog_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `client_message`
--
ALTER TABLE `client_message`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faq_title_unique` (`title`),
  ADD UNIQUE KEY `faq_content_unique` (`content`) USING HASH;

--
-- Chỉ mục cho bảng `listblog`
--
ALTER TABLE `listblog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_title_unique` (`title`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `client_message`
--
ALTER TABLE `client_message`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `faq`
--
ALTER TABLE `faq`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `listblog`
--
ALTER TABLE `listblog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_listblog_id_foreign` FOREIGN KEY (`listblog_id`) REFERENCES `listblog` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
