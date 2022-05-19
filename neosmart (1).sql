-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 19, 2022 lúc 03:59 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

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
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, '2022-04-13 19:01:54', '2022-04-13 19:01:54', 'Thiết bị xử lý trung tâm1', '', 'Địa chỉ Thiết bị xử lý trung tâm1', '<div class=\"box-article-heading clearfix\" style=\"padding:0px; text-align:start\">\r\n<h1><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\">Gặp gỡ người vẽ l&ecirc;n những &yacute; tưởng thiết kế nội thất</span></span></span></span></span></span></span>&nbsp;</h1>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"article-pages\" style=\"margin-bottom:40px; padding:0px; text-align:start\">\r\n<h3 style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-size:16px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&Yacute; tưởng thiết kế ch&iacute;nh l&agrave; bước đệm, đ&ograve;i hỏi qu&aacute; tr&igrave;nh chắt lọc, thời gian nghi&ecirc;n cứu để cho ra đời một sản phẩm ho&agrave;n chỉnh.&nbsp;Sản phẩm nội thất cũng kh&ocirc;ng đi ngo&agrave;i quy luật chung ấy, m&agrave; đ&ocirc;i khi ngo&agrave;i nguồn cảm hứng s&aacute;ng tạo, c&ograve;n l&agrave; tư duy logic, t&iacute;nh to&aacute;n để sản phẩm nội thất ph&ugrave; hợp với nhu cầu, th&oacute;i quen sinh hoạt của kh&aacute;ch h&agrave;ng.&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></h3>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Tại H-FURNTIRE, bất kỳ một sản phẩm nội thất n&agrave;o ra đời kh&ocirc;ng chỉ&nbsp;xuất ph&aacute;t từ&nbsp;&yacute; tưởng m&agrave; c&ograve;n l&agrave; qu&aacute; tr&igrave;nh tỉ mỉ trong từng đường n&eacute;t để mỗi một sản phẩm thực sự l&agrave; điểm nhấn ho&agrave;n hảo cho mọi kh&ocirc;ng gian sống. Với những y&ecirc;u cầu khắt khe cả về h&igrave;nh thức, c&ocirc;ng năng v&agrave; t&iacute;nh thẩm mỹ trong&nbsp;một sản phẩm nội thất, h&atilde;y c&ugrave;ng H-FURNTIRE gặp gỡ &ocirc;ng&nbsp;Nicolai Lehn &ndash; Gi&aacute;m Đốc Thiết Kế để hiểu hơn về qu&aacute; tr&igrave;nh vẽ n&ecirc;n một &yacute; tưởng thiết kế nội thất.&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Vẻ đẹp của một sản phẩm&nbsp;<u><a href=\"http://moho.com.vn/\" style=\"box-sizing:border-box; padding:0px; font-family:Montserrat, sans-serif !important; color:#434343; text-decoration:none; outline:none; transition:opacity 150ms linear 0s, color 150ms linear 0s, background 150ms linear 0s; max-width:100%\" target=\"_blank\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"color:#2d698f\"><strong>nội thất</strong></span></span></a></u>&nbsp;kh&ocirc;ng đơn thuần&nbsp;l&agrave; cảm nhận bằng mắt m&agrave; c&ograve;n l&agrave; sự cảm thụ&nbsp;của tất thảy c&aacute;c gi&aacute;c quan, l&agrave;m sao cho mỗi một&nbsp;<u><strong><a href=\"https://moho.com.vn/collections/tat-ca-san-pham-moho\" style=\"box-sizing:border-box; padding:0px; font-family:Montserrat, sans-serif !important; color:#434343; text-decoration:none; outline:none; transition:opacity 150ms linear 0s, color 150ms linear 0s, background 150ms linear 0s; max-width:100%\" target=\"_blank\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"color:#2d698f\">sản phẩm nội thất</span></span></a></strong></u>&nbsp;sẽ l&agrave; một trải nghiệm kh&oacute; qu&ecirc;n đối với kh&aacute;ch h&agrave;ng.</span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Montserrat,sans-serif !important\"><img src=\"https://file.hstatic.net/200000065946/file/ke-cua-moho-nguoi-ve-len-nhung-y-tuong-thiet-ke-noi-that_1_-compressed_7569d4e30858427d9ec40b612aeda764_grande.jpg\" style=\"border:0px; box-sizing:border-box; font-family:Montserrat,sans-serif !important; max-width:100%; padding:0px; vertical-align:middle\" /></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&ldquo;Đối với t&ocirc;i, &yacute; tưởng thiết kế kh&ocirc;ng phải l&agrave; sự ngẫu hứng, l&agrave; cảm gi&aacute;c chủ quan của c&aacute; nh&acirc;n. N&oacute; phải được xuất ph&aacute;t bắt đầu từ&nbsp; ch&iacute;nh nhu cầu của đối tượng m&agrave; sản phẩm hướng đến, bao gồm nhu cầu về c&aacute;i đẹp, về những c&ocirc;ng năng tuỳ theo th&oacute;i quen sinh hoạt của mỗi người. Bởi nếu kh&ocirc;ng dựa tr&ecirc;n những nguyện vọng của kh&aacute;ch h&agrave;ng, sản phẩm của </span></span></span></span></span></span></span><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">H-FURNTIRE&nbsp;</span></span></span></span></span></span></span></span></span><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">chắc hẳn sẽ kh&ocirc;ng thể tiếp cận được. Điều t&ocirc;i muốn x&acirc;y dựng ở đ&acirc;y l&agrave; mang đến những thiết kế cao cấp d&agrave;nh ri&ecirc;ng cho người Việt. T&ocirc;i muốn gi&uacute;p kh&aacute;ch h&agrave;ng c&aacute; nh&acirc;n ho&aacute; kh&ocirc;ng gian sống thật sự ph&ugrave; hợp v&agrave; l&yacute; tưởng. Đ&oacute; ch&iacute;nh l&agrave; cốt l&otilde;i, l&agrave; nguồn cảm hứng gi&uacute;p t&ocirc;i vẽ n&ecirc;n h&agrave;ng trăm, h&agrave;ng ng&agrave;n những &yacute; tưởng.&quot;</span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<h2 style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-size:28px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"font-family:Montserrat,sans-serif !important\"><strong>Sự kh&aacute;c biệt giữa &yacute; tưởng ban đầu v&agrave; sản phẩm ra đời c&oacute; đ&aacute;ng kể kh&ocirc;ng?&nbsp;</strong></span></span></span></span></span></span></span></span></span></span></h2>\r\n\r\n<div style=\"max-width:100%; padding:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">L&agrave; một người Đan Mạch, t&ocirc;i c&oacute; những g&oacute;c nh&igrave;n v&agrave; tư duy s&aacute;ng tạo ri&ecirc;ng, đ&ocirc;i khi sẽ kh&ocirc;ng ph&ugrave; hợp với thị hiếu nhu cầu của người Việt. Nhưng thật may mắn v&igrave; t&ocirc;i c&oacute; những đồng nghiệp tại </span></span></span></span></span></span></span><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">H-FURNTIRE</span></span></span></span></span></span></span></span></span><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">, họ c&ugrave;ng t&ocirc;i tạo ra những gi&aacute; trị, mang đến cho t&ocirc;i những g&oacute;c nh&igrave;n tư duy rất kh&aacute;c. Với 15 năm kinh nghiệm trong việc thiết kế nội thất, nhưng t&ocirc;i hiểu mọi c&ocirc;ng việc n&agrave;o cũng y&ecirc;u cầu t&iacute;nh mới, sự học hỏi v&agrave; t&ocirc;i lu&ocirc;n giữ quan điểm n&agrave;y cho đến tận h&ocirc;m nay. T&ocirc;i học hỏi từ những cộng sự, từ những kh&aacute;ch h&agrave;ng v&agrave; từ những người th&acirc;n, bạn b&egrave; của t&ocirc;i. Khi hiểu được những nhu cầu n&agrave;y, t&ocirc;i chọn cho m&igrave;nh một concept hướng đến v&agrave; ph&aacute;c thảo ch&uacute;ng l&ecirc;n. Sự chỉnh sửa đ&ocirc;i khi sẽ đến từ những số liệu kỹ thuật, t&iacute;nh to&aacute;n m&agrave; c&aacute;c cộng sự sẽ hỗ trợ t&ocirc;i, để th&agrave;nh phẩm ph&ugrave; hợp với ti&ecirc;u chuẩn v&agrave;ng của người Việt, mang đến kh&ocirc;ng gian mới cho mọi gia đ&igrave;nh Việt.</span></span></span></span></span></span></span></span></span></span></span>&nbsp;</div>\r\n\r\n<div style=\"max-width:100%; padding:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">C&oacute; thể n&oacute;i mỗi một sản phẩm nội thất tại </span></span></span></span></span></span></span><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">H-FURNTIRE</span></span></span></span></span></span></span></span></span><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">trước khi ra đời đều l&agrave; sự cộng hưởng từ một tập thể đội ngũ </span></span></span></span></span></span></span><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">H-FURNTIRE</span></span></span></span></span></span></span></span></span><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">. Kh&ocirc;ng chỉ ri&ecirc;ng bộ phận thiết kế, m&agrave; bộ phận ph&acirc;n t&iacute;ch, Sales, MD team, Marketing team v&agrave; c&aacute;c anh chị tổ sản xuất c&ugrave;ng trao đổi, cốt l&otilde;i để sản phẩm khi đến tay kh&aacute;ch h&agrave;ng sẽ l&agrave; sản phẩm tốt nhất, kh&ocirc;ng chỉ tăng t&iacute;nh thẩm mỹ kh&ocirc;ng gian m&agrave; c&ograve;n yếu tố sức khoẻ v&agrave; an to&agrave;n trong suốt qu&aacute; tr&igrave;nh sử dụng.&nbsp;</span></span></span></span></span></span></span></span></span></span></span></div>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Montserrat,sans-serif !important\"><img src=\"https://file.hstatic.net/200000065946/file/ke-cua-moho-nguoi-ve-len-nhung-y-tuong-thiet-ke-noi-that_3_-compressed_16c265d7e891465899b09d64764554ec_grande.jpg\" style=\"border:0px; box-sizing:border-box; font-family:Montserrat,sans-serif !important; max-width:100%; padding:0px; vertical-align:middle\" /></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Lắng nghe v&agrave; cải tiến ch&iacute;nh l&agrave; điều m&agrave; ch&uacute;ng t&ocirc;i lu&ocirc;n l&agrave;m c&ugrave;ng nhau trong suốt qu&aacute; tr&igrave;nh đến khi ch&uacute;ng t&ocirc;i nhận được sự thống nhất với nhau để đưa ch&uacute;ng v&agrave;o sản xuất. Chưa dừng lại ở đ&oacute;, </span></span></span></span></span></span></span><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">H-FURNTIRE&nbsp;</span></span></span></span></span></span></span></span></span><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">vẫn lu&ocirc;n lắng nghe những phản hồi từ những trải nhiệm thực tế của kh&aacute;ch h&agrave;ng để cải thiện n&oacute; hoặc l&agrave;m tốt hơn cho những sản phẩm sau n&agrave;y.&rdquo;</span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">H-FURNTIRE&nbsp;</span></span></span></span></span></span></span></span></span><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">lu&ocirc;n đ&aacute;nh gi&aacute; cao những &yacute; kiến v&agrave; mong muốn của mọi người v&agrave; đặc biệt l&agrave; kh&aacute;ch h&agrave;ng của m&igrave;nh. V&igrave; gi&aacute; trị của MOHO được tạo n&ecirc;n bằng c&aacute;ch m&agrave; MOHO hiện thực h&oacute;a những nhu cầu của kh&aacute;ch h&agrave;ng v&agrave; biến cuộc sống ở nh&agrave; trở n&ecirc;n tuyệt vời hơn.</span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<h1 style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-size:36px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"font-family:Montserrat,sans-serif !important\"><strong>Định hướng m&agrave; H-FURNTIRE đang nỗ lực trong từng thiết kế của m&igrave;nh l&agrave; g&igrave;?&nbsp;</strong></span></span></span></span></span></span></span></span></span></span></h1>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Đ&oacute; l&agrave; t&iacute;nh bền vững của sản phẩm cũng như l&agrave; sự bền vững cho nguồn gỗ trong tương lai. Cụm từ &ldquo;<u><a href=\"https://moho.com.vn/blogs/noi-that-ung-dung/noi-that-ben-vung-la-gi-va-tai-sao-dieu-nay-lai-quan-trong\" style=\"box-sizing:border-box; padding:0px; font-family:Montserrat, sans-serif !important; color:#434343; text-decoration:none; outline:none; transition:opacity 150ms linear 0s, color 150ms linear 0s, background 150ms linear 0s; max-width:100%\" target=\"_blank\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"color:#2d698f\"><strong>Nội thất bền vững</strong></span></span></a></u>&rdquo; đang l&agrave; nỗi băng khoăn của t&ocirc;i. Tuy nguồn gỗ m&agrave; </span></span></span></span></span></span></span><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">H-FURNTIRE&nbsp;</span></span></span></span></span></span></span></span></span><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">đang sử dụng l&agrave; nguồn gỗ đạt&nbsp;<u><a href=\"https://moho.com.vn/blogs/noi-that-ung-dung/chung-nhan-fsc-chung-nhan-bao-ve-rung-quy-mo-toan-cau\" style=\"box-sizing:border-box; padding:0px; font-family:Montserrat, sans-serif !important; color:#434343; text-decoration:none; outline:none; transition:opacity 150ms linear 0s, color 150ms linear 0s, background 150ms linear 0s; max-width:100%\" target=\"_blank\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"color:#2d698f\"><strong>chuẩn FSC</strong></span></span></a></u>&nbsp;v&agrave;&nbsp;<a href=\"https://moho.com.vn/blogs/news/noi-that-moho-dat-chuan-carb-p2-an-toan-cho-suc-khoe\" style=\"box-sizing:border-box; padding:0px; font-family:Montserrat, sans-serif !important; color:#434343; text-decoration:none; outline:none; transition:opacity 150ms linear 0s, color 150ms linear 0s, background 150ms linear 0s; max-width:100%\" target=\"_blank\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"color:#2d698f\"><u><strong>chuẩn CARB-P2</strong></u></span></span></a>, c&aacute;c ti&ecirc;u chuẩn khắc khe chỉ c&oacute; ở c&aacute;c sản phẩm xuất khẩu. Nhưng t&ocirc;i mong rằng trong tương lai c&aacute;c sản phẩm của </span></span></span></span></span></span></span><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">H-FURNTIRE&nbsp;</span></span></span></span></span></span></span></span></span><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">sẽ l&agrave; những sản phẩm c&oacute; thể t&aacute;i chế, t&aacute;i sử dụng v&agrave; c&oacute; v&ograve;ng đời l&acirc;u hơn, th&acirc;n thiện với m&ocirc;i trường hơn v&agrave; tiết kiệm nguồn t&agrave;i nguy&ecirc;n cho tương lai. Điều n&agrave;y kh&ocirc;ng chỉ đơn giản l&agrave; bền vững từ nguồn nguy&ecirc;n vật liệu m&agrave; c&ograve;n l&agrave; cả &yacute; tưởng thiết kế, sao cho thật tối giản, sao cho thật thời thượng để kh&aacute;ch h&agrave;ng c&oacute; thể gắn b&oacute;, d&ugrave;ng l&acirc;u m&agrave; kh&ocirc;ng mất đi t&iacute;nh thẩm mỹ, hay cảm thấy lỗi thời.&nbsp;</span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&quot;Sản phẩm nội thất của </span></span></span></span></span></span></span><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">H-FURNTIRE&nbsp;</span></span></span></span></span></span></span></span></span><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">l&agrave; thương hiệu nội thất Việt với thiết kế hiện đại, chất lượng chuẩn quốc tế nhưng chi ph&iacute; lại v&ocirc; c&ugrave;ng hợp l&yacute;. Mỗi một sản phẩm tại </span></span></span></span></span></span></span><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">H-FURNTIRE&nbsp;</span></span></span></span></span></span></span></span></span><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">kh&ocirc;ng chỉ gi&uacute;p tối ưu ng&acirc;n s&aacute;ch cho kh&aacute;ch h&agrave;ng m&agrave; c&ograve;n l&agrave; gi&uacute;p bất k&igrave; kh&aacute;ch h&agrave;ng d&ugrave; mức thu nhập cao hay thấp cũng c&oacute; thể sở hữu một kh&ocirc;ng gian sống l&yacute; tưởng. Từng thiết kế sẽ lu&ocirc;n thật gần gũi, ph&ugrave; hợp với mọi phong c&aacute;ch thiết kế nội thất, phải đảm bảo t&iacute;nh d&agrave;i l&acirc;u, kh&ocirc;ng bị lỗi thời theo năm th&aacute;ng. Đ&oacute; sẽ l&agrave; kim chỉ nam m&agrave; mỗi một th&agrave;nh vi&ecirc;n </span></span></span></span></span></span></span><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">H-FURNTIRE&nbsp;</span></span></span></span></span></span></span></span></span><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">lu&ocirc;n nỗ lực từng ng&agrave;y để tạo dựng. Ch&uacute;ng t&ocirc;i l&agrave;m tất cả v&igrave; kh&aacute;ch h&agrave;ng th&acirc;n y&ecirc;u của m&igrave;nh.&quot;</span></span></span></span></span></span></span></span></span></span></span></p>\r\n</div>', 'ct1.png', 'trung-tam', 1, 1, 1);
INSERT INTO `blog` (`id`, `created_at`, `updated_at`, `title`, `detail`, `description`, `content`, `photo`, `slug`, `display`, `position`, `listblog_id`) VALUES
(2, NULL, NULL, 'Công trình Mandarin - Hà Nội', '<div><b>Địa chỉ:</b> Chung cư cao cấp Mandarin Garden, Hà Nội  </div><div><b>Diện tích:</b>  170 m2</div>', '<b>Giới thiệu chung:</b> Công trình nằm trong KĐT mới Văn Khê - Hà Đông. Là một trong những KĐT mới, hiện đại của TP Hà Nội.', '<div class=\"box-article-heading clearfix\" style=\"padding:0px; text-align:start\">\r\n<h1><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\">Gặp gỡ người vẽ l&ecirc;n những &yacute; tưởng thiết kế nội thất</span></span></span></span></span></span></span>&nbsp;</h1>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"article-pages\" style=\"margin-bottom:40px; padding:0px; text-align:start\">\r\n<h3 style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-size:16px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&Yacute; tưởng thiết kế ch&iacute;nh l&agrave; bước đệm, đ&ograve;i hỏi qu&aacute; tr&igrave;nh chắt lọc, thời gian nghi&ecirc;n cứu để cho ra đời một sản phẩm ho&agrave;n chỉnh.&nbsp;Sản phẩm nội thất cũng kh&ocirc;ng đi ngo&agrave;i quy luật chung ấy, m&agrave; đ&ocirc;i khi ngo&agrave;i nguồn cảm hứng s&aacute;ng tạo, c&ograve;n l&agrave; tư duy logic, t&iacute;nh to&aacute;n để sản phẩm nội thất ph&ugrave; hợp với nhu cầu, th&oacute;i quen sinh hoạt của kh&aacute;ch h&agrave;ng.&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></h3>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Tại H-FURNTIRE, bất kỳ một sản phẩm nội thất n&agrave;o ra đời kh&ocirc;ng chỉ&nbsp;xuất ph&aacute;t từ&nbsp;&yacute; tưởng m&agrave; c&ograve;n l&agrave; qu&aacute; tr&igrave;nh tỉ mỉ trong từng đường n&eacute;t để mỗi một sản phẩm thực sự l&agrave; điểm nhấn ho&agrave;n hảo cho mọi kh&ocirc;ng gian sống. Với những y&ecirc;u cầu khắt khe cả về h&igrave;nh thức, c&ocirc;ng năng v&agrave; t&iacute;nh thẩm mỹ trong&nbsp;một sản phẩm nội thất, h&atilde;y c&ugrave;ng H-FURNTIRE gặp gỡ &ocirc;ng&nbsp;Nicolai Lehn &ndash; Gi&aacute;m Đốc Thiết Kế để hiểu hơn về qu&aacute; tr&igrave;nh vẽ n&ecirc;n một &yacute; tưởng thiết kế nội thất.&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Vẻ đẹp của một sản phẩm&nbsp;<u><a href=\"http://moho.com.vn/\" style=\"box-sizing:border-box; padding:0px; font-family:Montserrat, sans-serif !important; color:#434343; text-decoration:none; outline:none; transition:opacity 150ms linear 0s, color 150ms linear 0s, background 150ms linear 0s; max-width:100%\" target=\"_blank\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"color:#2d698f\"><strong>nội thất</strong></span></span></a></u>&nbsp;kh&ocirc;ng đơn thuần&nbsp;l&agrave; cảm nhận bằng mắt m&agrave; c&ograve;n l&agrave; sự cảm thụ&nbsp;của tất thảy c&aacute;c gi&aacute;c quan, l&agrave;m sao cho mỗi một&nbsp;<u><strong><a href=\"https://moho.com.vn/collections/tat-ca-san-pham-moho\" style=\"box-sizing:border-box; padding:0px; font-family:Montserrat, sans-serif !important; color:#434343; text-decoration:none; outline:none; transition:opacity 150ms linear 0s, color 150ms linear 0s, background 150ms linear 0s; max-width:100%\" target=\"_blank\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"color:#2d698f\">sản phẩm nội thất</span></span></a></strong></u>&nbsp;sẽ l&agrave; một trải nghiệm kh&oacute; qu&ecirc;n đối với kh&aacute;ch h&agrave;ng.</span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Montserrat,sans-serif !important\"><img src=\"https://file.hstatic.net/200000065946/file/ke-cua-moho-nguoi-ve-len-nhung-y-tuong-thiet-ke-noi-that_1_-compressed_7569d4e30858427d9ec40b612aeda764_grande.jpg\" style=\"border:0px; box-sizing:border-box; font-family:Montserrat,sans-serif !important; max-width:100%; padding:0px; vertical-align:middle\" /></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&ldquo;Đối với t&ocirc;i, &yacute; tưởng thiết kế kh&ocirc;ng phải l&agrave; sự ngẫu hứng, l&agrave; cảm gi&aacute;c chủ quan của c&aacute; nh&acirc;n. N&oacute; phải được xuất ph&aacute;t bắt đầu từ&nbsp; ch&iacute;nh nhu cầu của đối tượng m&agrave; sản phẩm hướng đến, bao gồm nhu cầu về c&aacute;i đẹp, về những c&ocirc;ng năng tuỳ theo th&oacute;i quen sinh hoạt của mỗi người. Bởi nếu kh&ocirc;ng dựa tr&ecirc;n những nguyện vọng của kh&aacute;ch h&agrave;ng, sản phẩm của </span></span></span></span></span></span></span><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">H-FURNTIRE&nbsp;</span></span></span></span></span></span></span></span></span><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">chắc hẳn sẽ kh&ocirc;ng thể tiếp cận được. Điều t&ocirc;i muốn x&acirc;y dựng ở đ&acirc;y l&agrave; mang đến những thiết kế cao cấp d&agrave;nh ri&ecirc;ng cho người Việt. T&ocirc;i muốn gi&uacute;p kh&aacute;ch h&agrave;ng c&aacute; nh&acirc;n ho&aacute; kh&ocirc;ng gian sống thật sự ph&ugrave; hợp v&agrave; l&yacute; tưởng. Đ&oacute; ch&iacute;nh l&agrave; cốt l&otilde;i, l&agrave; nguồn cảm hứng gi&uacute;p t&ocirc;i vẽ n&ecirc;n h&agrave;ng trăm, h&agrave;ng ng&agrave;n những &yacute; tưởng.&quot;</span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<h2 style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-size:28px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"font-family:Montserrat,sans-serif !important\"><strong>Sự kh&aacute;c biệt giữa &yacute; tưởng ban đầu v&agrave; sản phẩm ra đời c&oacute; đ&aacute;ng kể kh&ocirc;ng?&nbsp;</strong></span></span></span></span></span></span></span></span></span></span></h2>\r\n\r\n<div style=\"max-width:100%; padding:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">L&agrave; một người Đan Mạch, t&ocirc;i c&oacute; những g&oacute;c nh&igrave;n v&agrave; tư duy s&aacute;ng tạo ri&ecirc;ng, đ&ocirc;i khi sẽ kh&ocirc;ng ph&ugrave; hợp với thị hiếu nhu cầu của người Việt. Nhưng thật may mắn v&igrave; t&ocirc;i c&oacute; những đồng nghiệp tại </span></span></span></span></span></span></span><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">H-FURNTIRE</span></span></span></span></span></span></span></span></span><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">, họ c&ugrave;ng t&ocirc;i tạo ra những gi&aacute; trị, mang đến cho t&ocirc;i những g&oacute;c nh&igrave;n tư duy rất kh&aacute;c. Với 15 năm kinh nghiệm trong việc thiết kế nội thất, nhưng t&ocirc;i hiểu mọi c&ocirc;ng việc n&agrave;o cũng y&ecirc;u cầu t&iacute;nh mới, sự học hỏi v&agrave; t&ocirc;i lu&ocirc;n giữ quan điểm n&agrave;y cho đến tận h&ocirc;m nay. T&ocirc;i học hỏi từ những cộng sự, từ những kh&aacute;ch h&agrave;ng v&agrave; từ những người th&acirc;n, bạn b&egrave; của t&ocirc;i. Khi hiểu được những nhu cầu n&agrave;y, t&ocirc;i chọn cho m&igrave;nh một concept hướng đến v&agrave; ph&aacute;c thảo ch&uacute;ng l&ecirc;n. Sự chỉnh sửa đ&ocirc;i khi sẽ đến từ những số liệu kỹ thuật, t&iacute;nh to&aacute;n m&agrave; c&aacute;c cộng sự sẽ hỗ trợ t&ocirc;i, để th&agrave;nh phẩm ph&ugrave; hợp với ti&ecirc;u chuẩn v&agrave;ng của người Việt, mang đến kh&ocirc;ng gian mới cho mọi gia đ&igrave;nh Việt.</span></span></span></span></span></span></span></span></span></span></span>&nbsp;</div>\r\n\r\n<div style=\"max-width:100%; padding:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">C&oacute; thể n&oacute;i mỗi một sản phẩm nội thất tại </span></span></span></span></span></span></span><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">H-FURNTIRE</span></span></span></span></span></span></span></span></span><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">trước khi ra đời đều l&agrave; sự cộng hưởng từ một tập thể đội ngũ </span></span></span></span></span></span></span><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">H-FURNTIRE</span></span></span></span></span></span></span></span></span><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">. Kh&ocirc;ng chỉ ri&ecirc;ng bộ phận thiết kế, m&agrave; bộ phận ph&acirc;n t&iacute;ch, Sales, MD team, Marketing team v&agrave; c&aacute;c anh chị tổ sản xuất c&ugrave;ng trao đổi, cốt l&otilde;i để sản phẩm khi đến tay kh&aacute;ch h&agrave;ng sẽ l&agrave; sản phẩm tốt nhất, kh&ocirc;ng chỉ tăng t&iacute;nh thẩm mỹ kh&ocirc;ng gian m&agrave; c&ograve;n yếu tố sức khoẻ v&agrave; an to&agrave;n trong suốt qu&aacute; tr&igrave;nh sử dụng.&nbsp;</span></span></span></span></span></span></span></span></span></span></span></div>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Montserrat,sans-serif !important\"><img src=\"https://file.hstatic.net/200000065946/file/ke-cua-moho-nguoi-ve-len-nhung-y-tuong-thiet-ke-noi-that_3_-compressed_16c265d7e891465899b09d64764554ec_grande.jpg\" style=\"border:0px; box-sizing:border-box; font-family:Montserrat,sans-serif !important; max-width:100%; padding:0px; vertical-align:middle\" /></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Lắng nghe v&agrave; cải tiến ch&iacute;nh l&agrave; điều m&agrave; ch&uacute;ng t&ocirc;i lu&ocirc;n l&agrave;m c&ugrave;ng nhau trong suốt qu&aacute; tr&igrave;nh đến khi ch&uacute;ng t&ocirc;i nhận được sự thống nhất với nhau để đưa ch&uacute;ng v&agrave;o sản xuất. Chưa dừng lại ở đ&oacute;, </span></span></span></span></span></span></span><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">H-FURNTIRE&nbsp;</span></span></span></span></span></span></span></span></span><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">vẫn lu&ocirc;n lắng nghe những phản hồi từ những trải nhiệm thực tế của kh&aacute;ch h&agrave;ng để cải thiện n&oacute; hoặc l&agrave;m tốt hơn cho những sản phẩm sau n&agrave;y.&rdquo;</span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">H-FURNTIRE&nbsp;</span></span></span></span></span></span></span></span></span><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">lu&ocirc;n đ&aacute;nh gi&aacute; cao những &yacute; kiến v&agrave; mong muốn của mọi người v&agrave; đặc biệt l&agrave; kh&aacute;ch h&agrave;ng của m&igrave;nh. V&igrave; gi&aacute; trị của MOHO được tạo n&ecirc;n bằng c&aacute;ch m&agrave; MOHO hiện thực h&oacute;a những nhu cầu của kh&aacute;ch h&agrave;ng v&agrave; biến cuộc sống ở nh&agrave; trở n&ecirc;n tuyệt vời hơn.</span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<h1 style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-size:36px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"font-family:Montserrat,sans-serif !important\"><strong>Định hướng m&agrave; H-FURNTIRE đang nỗ lực trong từng thiết kế của m&igrave;nh l&agrave; g&igrave;?&nbsp;</strong></span></span></span></span></span></span></span></span></span></span></h1>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Đ&oacute; l&agrave; t&iacute;nh bền vững của sản phẩm cũng như l&agrave; sự bền vững cho nguồn gỗ trong tương lai. Cụm từ &ldquo;<u><a href=\"https://moho.com.vn/blogs/noi-that-ung-dung/noi-that-ben-vung-la-gi-va-tai-sao-dieu-nay-lai-quan-trong\" style=\"box-sizing:border-box; padding:0px; font-family:Montserrat, sans-serif !important; color:#434343; text-decoration:none; outline:none; transition:opacity 150ms linear 0s, color 150ms linear 0s, background 150ms linear 0s; max-width:100%\" target=\"_blank\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"color:#2d698f\"><strong>Nội thất bền vững</strong></span></span></a></u>&rdquo; đang l&agrave; nỗi băng khoăn của t&ocirc;i. Tuy nguồn gỗ m&agrave; </span></span></span></span></span></span></span><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">H-FURNTIRE&nbsp;</span></span></span></span></span></span></span></span></span><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">đang sử dụng l&agrave; nguồn gỗ đạt&nbsp;<u><a href=\"https://moho.com.vn/blogs/noi-that-ung-dung/chung-nhan-fsc-chung-nhan-bao-ve-rung-quy-mo-toan-cau\" style=\"box-sizing:border-box; padding:0px; font-family:Montserrat, sans-serif !important; color:#434343; text-decoration:none; outline:none; transition:opacity 150ms linear 0s, color 150ms linear 0s, background 150ms linear 0s; max-width:100%\" target=\"_blank\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"color:#2d698f\"><strong>chuẩn FSC</strong></span></span></a></u>&nbsp;v&agrave;&nbsp;<a href=\"https://moho.com.vn/blogs/news/noi-that-moho-dat-chuan-carb-p2-an-toan-cho-suc-khoe\" style=\"box-sizing:border-box; padding:0px; font-family:Montserrat, sans-serif !important; color:#434343; text-decoration:none; outline:none; transition:opacity 150ms linear 0s, color 150ms linear 0s, background 150ms linear 0s; max-width:100%\" target=\"_blank\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"color:#2d698f\"><u><strong>chuẩn CARB-P2</strong></u></span></span></a>, c&aacute;c ti&ecirc;u chuẩn khắc khe chỉ c&oacute; ở c&aacute;c sản phẩm xuất khẩu. Nhưng t&ocirc;i mong rằng trong tương lai c&aacute;c sản phẩm của </span></span></span></span></span></span></span><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">H-FURNTIRE&nbsp;</span></span></span></span></span></span></span></span></span><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">sẽ l&agrave; những sản phẩm c&oacute; thể t&aacute;i chế, t&aacute;i sử dụng v&agrave; c&oacute; v&ograve;ng đời l&acirc;u hơn, th&acirc;n thiện với m&ocirc;i trường hơn v&agrave; tiết kiệm nguồn t&agrave;i nguy&ecirc;n cho tương lai. Điều n&agrave;y kh&ocirc;ng chỉ đơn giản l&agrave; bền vững từ nguồn nguy&ecirc;n vật liệu m&agrave; c&ograve;n l&agrave; cả &yacute; tưởng thiết kế, sao cho thật tối giản, sao cho thật thời thượng để kh&aacute;ch h&agrave;ng c&oacute; thể gắn b&oacute;, d&ugrave;ng l&acirc;u m&agrave; kh&ocirc;ng mất đi t&iacute;nh thẩm mỹ, hay cảm thấy lỗi thời.&nbsp;</span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Montserrat,sans-serif\"><span style=\"color:#434343\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&quot;Sản phẩm nội thất của </span></span></span></span></span></span></span><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">H-FURNTIRE&nbsp;</span></span></span></span></span></span></span></span></span><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">l&agrave; thương hiệu nội thất Việt với thiết kế hiện đại, chất lượng chuẩn quốc tế nhưng chi ph&iacute; lại v&ocirc; c&ugrave;ng hợp l&yacute;. Mỗi một sản phẩm tại </span></span></span></span></span></span></span><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">H-FURNTIRE&nbsp;</span></span></span></span></span></span></span></span></span><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">kh&ocirc;ng chỉ gi&uacute;p tối ưu ng&acirc;n s&aacute;ch cho kh&aacute;ch h&agrave;ng m&agrave; c&ograve;n l&agrave; gi&uacute;p bất k&igrave; kh&aacute;ch h&agrave;ng d&ugrave; mức thu nhập cao hay thấp cũng c&oacute; thể sở hữu một kh&ocirc;ng gian sống l&yacute; tưởng. Từng thiết kế sẽ lu&ocirc;n thật gần gũi, ph&ugrave; hợp với mọi phong c&aacute;ch thiết kế nội thất, phải đảm bảo t&iacute;nh d&agrave;i l&acirc;u, kh&ocirc;ng bị lỗi thời theo năm th&aacute;ng. Đ&oacute; sẽ l&agrave; kim chỉ nam m&agrave; mỗi một th&agrave;nh vi&ecirc;n </span></span></span></span></span></span></span><span style=\"font-size:24px\"><span style=\"font-family:inherit\"><span style=\"color:#000000\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">H-FURNTIRE&nbsp;</span></span></span></span></span></span></span></span></span><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-size:15px\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:Montserrat,sans-serif !important\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">lu&ocirc;n nỗ lực từng ng&agrave;y để tạo dựng. Ch&uacute;ng t&ocirc;i l&agrave;m tất cả v&igrave; kh&aacute;ch h&agrave;ng th&acirc;n y&ecirc;u của m&igrave;nh.&quot;</span></span></span></span></span></span></span></span></span></span></span></p>\r\n</div>', 'ct2.png', 'trung-tam1', 1, 1, 1),
(4, NULL, NULL, 'Công trình Mandarin - Hà Nội 3', '', 'Địa chỉ: Chung cư cao cấp Mandarin Garden, Hà Nội\r\n\r\n<br>Diện tích: > 170 m2', 'tét2', 'ct3.png', 'trung-tam2', 1, 1, 1),
(7, NULL, NULL, 'Công trình Mandarin - Hà Nội2', '', 'Địa chỉ: Chung cư cao cấp Mandarin Garden, Hà Nội\r\n\r\n<br>Diện tích: > 170 m2', 'tét1', 'ct1.png', 'a', 1, 1, 1),
(18, NULL, NULL, 'Công trình Hồ Nội ', 'Công trình Hồ Nội ', 'Công trình Hồ Nội ', 'Công trình Hồ Nội ', 'ct1.png', 'a2', 1, 0, 2),
(19, NULL, NULL, 'Công trình Hồ Nội 123', 'Công trình Hồ Nội  123', 'Công trình Hồ Nội  1', 'Công trình Hồ Nội ', 'ct2.png', 'a5', 1, 0, 2),
(20, NULL, NULL, 'Công trình Hồ Nội 321', 'Công trình Hồ Nội 312', 'Công trình Hồ Nội 312', 'Công trình Hồ Nội 321', 'ct3.png', 'a7', 1, 0, 2);

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
(1, 'Chỉ một nút bấm', 'Thông thường để điều khiển tất cả các thiết bị trong nhà, bạn cần tới hàng chục công tắc, thậm chí với căn nhà lớn hàng trăm công tắc. Với nhà thông minh Bkav SmartHome, bạn có thể điều khiển tất cả bằng một vài nút bấm trên màn hình cảm ứng của smartphone hay máy tính bảng. Bạn cũng có thể điều khiển và kiểm soát ngôi nhà thông qua giao diện trực quan 3D, ở đó các thiết bị được mô phỏng giống như đang sử dụng thực tế, chỉ cần chạm vào thiết bị tương ứng trong màn hình để điều khiển.', 'cp.png', 'chi-mot-nui-bam', '2022-04-13 18:06:54', '2022-04-13 18:06:54'),
(2, 'Chạm để điều khiển', 'Ví dụ sau giúp bạn hình dung được phần nào hoạt động của hệ thống: Khi khách đến, bạn chỉ cần chạm vào “Tiếp khách”, đèn phòng khách bật sáng rực rỡ, rèm kéo lên, điều hòa giảm xuống độ mát sâu hơn, giảm âm lượng nhạc phát… thông thường để làm được việc này bạn phải chạy khắp căn phòng và bấm rất nhiều công tắc. Thật tiện nghi khi chỉ cần chạm vào một nút trên màn hình. Một ví dụ khác khi đi ngủ, thay vì phải kéo rèm, đóng cửa, tắt điện, mò mẫm đi lên giường, bạn chỉ việc chạm vào “Đi ngủ” trên điện thoại hoặc máy tính bảng, hệ thống sẽ thực hiện giúp bạn những điều này, đồng thời kích hoạt hệ thống an ninh, báo động khi phát hiện xâm nhập trái phép.', 'cp1.png', 'cham-de-dieu-khien', '2022-04-13 18:07:17', '2022-04-13 18:07:17'),
(3, 'Hơn cả sự tiện nghi', 'Một kịch bản thường gặp, trước khi trở về nhà từ cơ quan, bạn chỉ cần bấm “Về nhà”, bình nóng lạnh sẽ bật, hệ thống quạt thông gió, điều hòa nhiệt độ sẽ khởi động… để khi bạn về đến nhà, tất cả đã sẵn sàng phục vụ. Không chỉ bằng “ra lệnh”, hệ thống nhà thông minh Bkav SmartHome còn chủ động “phục vụ” chủ nhân. Vào mỗi buổi sáng, rèm cửa hé mở, hệ thống âm thanh phát những bản nhạc nhẹ nhàng mà bạn ưa thích, điều hòa tăng nhiệt độ để giúp bạn đỡ “lười” ra khỏi giường trong mỗi buổi sáng.', 'cp2.png', 'hon-ca-su-tien-nghi', '2022-04-13 18:23:27', '2022-04-13 18:23:27'),
(4, 'Công trình Chung cư', 'Công trình Chung cư', 'cp3.png', 'cong-trinh-chung-cu', '2022-04-13 18:59:18', '2022-04-13 18:59:18'),
(5, 'Ra lệnh bằng giọng nói', 'Không chỉ điều khiển trực tiếp trên smartphone, máy tính bảng, bạn có thể điều khiển nhà mình bằng giọng nói của chính bạn. Nhà thông minh Bkav SmartHome được trang bị công nghệ trợ lý ảo, giúp giao tiếp với hệ thống trở nên thân thiện, không cứng nhắc như một hệ thống điều khiển thông thường. Sẽ là một trải nghiệm tuyệt vời khi bạn ra lệnh bằng giọng nói và hệ thống đáp ứng bạn.', 'cp4.png', 'ra-lenh-bang-giong-noi', '2022-04-28 19:38:49', '2022-04-28 19:38:49'),
(6, 'Thiết bị xử lý trung tâm 123', 'Thiết bị xử lý trung tâm 123', 'image 1.png', 'thiet-bi-xu-ly-trung-tam-123', '2022-05-03 21:44:31', '2022-05-03 21:44:31');

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
(1, 'test', 'test@gmail..com', '0909332345', 'test', 1, NULL, '2022-04-18 22:27:49'),
(2, 'Trọng Khánh', 'admin@gmail.com', '0775525689', 'asdfasdfasdf', 0, '2022-04-21 00:33:04', '2022-04-21 00:33:04'),
(3, 'Trọng Khánh', 'admin@gmail.com', '0775525689', 'asdfasdfasdf', 0, '2022-04-21 00:34:55', '2022-04-21 00:34:55'),
(4, 'Trọng Khánh', 'admin@gmail.com', '0775525689', 'asdfasdfasdf', 0, '2022-04-21 00:37:00', '2022-04-21 00:37:00'),
(5, 'Trọng Khánh', 'ps11244@gmail.com', '0775525689', 'dsadsadsad', 0, '2022-04-21 00:38:42', '2022-04-21 00:38:42'),
(6, 'Trọng Khánh', 'ps11244@gmail.com', '0775525689', 'dsadsadsad', 0, '2022-04-21 00:41:01', '2022-04-21 00:41:01'),
(7, 'Trọng Khánh', 'ps11244@gmail.com', '0775525689', 'dsadsadsad', 0, '2022-04-21 00:43:11', '2022-04-21 00:43:11'),
(8, 'Trọng Khánh', 'ps11244@gmail.com', '0775525689', 'dsadsadsad', 0, '2022-04-21 00:44:57', '2022-04-21 00:44:57'),
(9, 'Trọng Khánh', 'ps11244@gmail.com', '0775525689', 'dsadsadsad', 0, '2022-04-21 00:45:12', '2022-04-21 00:45:12'),
(10, 'Trọng Khánh', 'ps11244@gmail.com', '0775525689', 'dsadsadsad', 0, '2022-04-21 00:45:29', '2022-04-21 00:45:29'),
(11, 'Trọng Khánh', 'ps11244@gmail.com', '0775525689', 'dsadsadsad', 0, '2022-04-21 00:45:59', '2022-04-21 00:45:59'),
(12, 'ÂSÂSASA', 'admin@gmail.com', '0775525689', 'ÁDSADASD', 0, '2022-04-22 02:23:31', '2022-04-22 02:23:31'),
(13, 'Trọng Khánh', 'admin@gmail.com', '0775525689', '1111', 0, '2022-04-22 02:35:23', '2022-04-22 02:35:23'),
(14, 'àdasfdsafdasfdas', 'khanh@gmail.com', '1234567890', 'ádasdas', 0, '2022-05-17 21:58:54', '2022-05-17 21:58:54');

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
(1, 'Tại sao nên chọn Neosmart?', 'Neosmart mang lại sự tốt nhất cho người dùng', 'Neosmart mang lại sự tốt nhất cho người dùng', 1, '2022-04-14 12:54:45', '2022-04-14 12:54:45'),
(2, 'Lorem ipsum dolor sit amet?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, '2022-04-14 13:27:20', '2022-04-14 13:27:20'),
(3, 'Lorem ipsum dolor sit amet??', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua..', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. .', 1, '2022-04-14 13:27:54', '2022-04-14 13:27:54'),
(4, 'Lorem ipsum dolor sit amet???', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.. ?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. .?', 1, '2022-04-14 13:28:02', '2022-04-14 13:28:02'),
(5, 'Lorem ipsum dolor sit amet????', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.. ??', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. .??', 1, '2022-04-14 13:28:08', '2022-04-14 13:28:08'),
(6, 'Lorem ipsum dolor sit amet???\r\n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ..', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ..', 1, NULL, NULL);

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
(1, 'Công trình Chung cư', 'Công trình Chung cư', '2022-04-13 19:00:43', '2022-04-13 19:00:43'),
(2, 'Công trình Hồ Nội ', 'Công trình Hồ Nội ', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `parent` tinyint(4) NOT NULL DEFAULT 0,
  `sort` tinyint(4) NOT NULL DEFAULT 0,
  `display` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `label`, `link`, `parent`, `sort`, `display`, `created_at`, `updated_at`) VALUES
(1, 'Trang Chủ', '/', 0, 0, 0, '2022-04-20 20:29:49', '2022-04-20 20:29:49'),
(2, 'Công trình', '/congtrinh', 0, 0, 0, '2022-04-20 20:33:50', '2022-04-20 20:33:50'),
(3, 'Sản phẩm', '/sanpham', 0, 0, 0, '2022-04-20 20:35:43', '2022-04-20 20:35:43'),
(4, 'Hỏi đáp', '/faq', 0, 0, 0, '2022-04-20 20:36:53', '2022-04-20 20:36:53'),
(5, 'Liên hệ', '/lienhe', 0, 0, 0, '2022-04-20 20:37:06', '2022-04-20 20:37:06');

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
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2022_04_12_082626_create_categories_table', 1),
(16, '2022_04_12_082842_create_products_table', 1),
(17, '2022_04_14_074635_create_listblog_table', 1),
(18, '2022_04_14_075443_create_blog_table', 1),
(19, '2022_04_15_022956_create_faq_table', 1),
(20, '2022_04_19_013700_create_client_message', 1),
(21, '2022_04_20_100357_create_menu_table', 2),
(22, '2022_04_25_024502_create-table_add_display_to_menu_table', 3),
(23, '2022_04_26_041241_create-table_add_detail_to_blog_table', 4),
(24, '2022_04_29_023336_create-table_add_photo_to_categories_table', 5),
(25, '2022_05_04_033745_create-table_add_slug_to_products_table', 6),
(26, '2022_05_04_034132_create-table_add_slug_to_products_table', 7),
(27, '2022_05_04_044149_create-table_add_slug_to_categories_table', 8),
(28, '2022_05_04_065831_create-table_add_slug_to_blog_table', 9);

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
(1, 'Thiết bị xử lý trung tâm', 'Điều khiển và kiểm soát toàn bộ các thiết bị trong hệ thống SmartHome. Có khả năng quản lý và\r\nđiều khiển tới 1000 thiết bị. Thiết kế cao cấp, tinh xảo với khung nhôm phay nguyên khối,\r\nmặt kính cảm ứng chống xước Gorilla Glass.', 9000000, 'test', 'Công trình Mandarin - Hà Nội', '164688013816457568661.jpg', '', 1, 1, 1, '2022-04-13 18:26:45', '2022-04-21 02:15:44'),
(11, 'Thiết bị điều khiển SH-CTZ', 'Hỗ trợ 6 kênh điều khiển (4 kênh công suất, 2 kênh dimming) thông qua bảng điều khiển, giao diện 3D, kịch bản ngữ cảnh thông minh. Hỗ trợ điều khiển 4 kênh kịch bản ngữ cảnh mặc định trên giao diện thiết bị. Thiết kế cao cấp', 6500000, 'Điện áp: 100- 240V - 50/60 Hz\nCông suất tải: 5A Max\nNhiệt độ hoạt động: 60ºC Max\nTần số Zigbee : 2,4 GHz\nKích thước bản hình vuông (D x R x C): 97 x 93 x 43 mm.\nKích thước bản hình chữ nhật (D x R x C): 117 x 73 x 35.3 mm\nTrọng lượng: 240 gram\nSupport Giao diện: 3D trạng thái\nBảo hành: 24 tháng', 'Hỗ trợ 4 kênh điều khiển công suất thông qua bảng điều khiển, giao diện 3D,\nkịch bản ngữ cảnh thông minh. Thiết kế cao cấp, tinh xảo với khung nhôm phay nguyên khối,\nmặt kính cảm ứng chống xước Gorilla Glass.', 'image 32.png', '', 1, 1, 1, '2022-04-20 00:39:19', '2022-04-20 00:39:19'),
(12, 'Thiết bị điều khiển rèm mành SH-CZ', 'a', 6500000, 'Điện áp: 100- 240V - 50/60 Hz\nCông suất tải: 5A Max\nNhiệt độ hoạt động: 60ºC Max\nTần số Zigbee : 2,4 GHz\nKích thước bản hình vuông (D x R x C): 97 x 93 x 43 mm.\nKích thước bản hình chữ nhật (D x R x C): 117 x 73 x 35.3 mm\nTrọng lượng: 300 gram\nSupport Giao diện: 3D trạng thái\nBảo hành: 24 tháng', 'Điều khiển hệ thống động cơ rèm, mành, cổng tự động, giao diện 3D,\nkịch bản ngữ cảnh thông minh. Thiết kế cao cấp, tinh xảo với\nkhung nhôm phay nguyên khối, mặt kính cảm ứng chống xước Gorilla Glass', 'image 35.png', '', 1, 1, 1, '2022-04-20 00:39:54', '2022-04-21 02:16:57'),
(13, 'Thiết bị xử lý trung tâm123', 'Thiết bị xử lý trung tâm123', 9000000, 'test11', 'Công trình Mandarin - Hà Nội1', '164688013816457568661.jpg', '', 1, 1, 1, '2022-04-13 18:26:45', '2022-04-21 02:15:44'),
(14, 'Thiết bị xử lý trung tâm1234', 'Thiết bị xử lý trung tâm1234', 9000000, 'test1234', 'Công trình Mandarin - Hà Nội123', '164688013816457568661.jpg', '', 1, 1, 1, '2022-04-13 18:26:45', '2022-04-21 02:15:44'),
(15, 'Thiết bị xử lý trung tâm 1', 'Thiết bị xử lý trung tâm 1', 90000000, 'Điện áp: 100- 240V - 50/60 Hz\nCông suất tải: 5A Max\nNhiệt độ hoạt động: 60ºC Max\nTần số Zigbee : 2,4 GHz\nKích thước bản hình vuông (D x R x C): 97 x 93 x 43 mm.\nKích thước bản hình chữ nhật (D x R x C): 117 x 73 x 35.3 mm\nTrọng lượng: 240 gram\nSupport Giao diện: 3D trạng thái\nBảo hành: 24 tháng', 'Điều khiển hệ thống động cơ rèm, mành, cổng tự động, giao diện 3D,\nkịch bản ngữ cảnh thông minh. Thiết kế cao cấp, tinh xảo với\nkhung nhôm phay nguyên khối, mặt kính cảm ứng chống xước Gorilla Glass', 'image 1.png', 'thiet-bi-xu-ly-trung-tam-1', 1, 0, 2, '2022-05-03 20:57:26', '2022-05-03 20:57:26');

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
(1, 'admin123', 'admin123@gmail.com', NULL, '$2y$10$WFCkOGFaEJN48sB4JidWhuI2F79wtSx1XEW3U1tkCvFejx18D6ukG', 0, NULL, '2022-04-19 00:37:59', '2022-04-19 00:37:59');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `client_message`
--
ALTER TABLE `client_message`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `faq`
--
ALTER TABLE `faq`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
