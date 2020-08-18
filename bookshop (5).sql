-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 18, 2020 lúc 03:21 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bookshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `authors`
--

INSERT INTO `authors` (`id`, `name`, `detail`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Nhật Ánh', 'Nguyễn Nhật Ánh (sinh ngày 7 tháng 5 năm 1955) là một nhà văn người Việt. Ông được biết đến qua nhiều tác phẩm văn học về đề tài tuổi mới lớn, các tác phẩm của ông rất được độc giả ưa chuộng và nhiều tác phẩm đã được chuyển thể thành phim.\r\n\r\nÔng lần lượt viết về sân khấu, phụ trách mục tiểu phẩm, phụ trách trang thiếu nhi và hiện nay là bình luận viên thể thao trên báo Sài Gòn Giải phóng Chủ nhật với bút danh Chu Đình Ngạn. Ngoài ra, ông còn có những bút danh khác như Anh Bồ Câu, Lê Duy Cật, Đông Phương Sóc, Sóc Phương Đông,...', NULL, '2020-05-29 12:27:09', '2020-05-29 12:27:09'),
(2, 'Tô Hoài', 'Tô Hoài (tên khai sinh: Nguyễn Sen; 27 tháng 9 năm 1920 – 6 tháng 7 năm 2014)[1] là một nhà văn Việt Nam. Một số tác phẩm đề tài thiếu nhi của ông được dịch ra ngoại ngữ. Ông được nhà nước Việt Nam trao tặng Giải thưởng Hồ Chí Minh về Văn học – Nghệ thuật Đợt 1 (1996) cho các tác phẩm: Xóm giếng, Nhà nghèo, O chuột, Dế mèn phiêu lưu ký, Núi Cứu quốc, Truyện Tây Bắc, Mười năm, Xuống làng, Vỡ tỉnh, Tào lường, Họ Giàng ở Phìn Sa, Miền Tây, Vợ chồng A Phủ, Tuổi trẻ Hoàng Văn Thụ.', NULL, '2020-06-16 08:36:11', '2020-06-16 08:36:11'),
(3, 'Dale Carnegie', 'Dale Breckenridge Carnegie (trước kia là Carnagey cho tới năm 1922 và có thể một thời gian muộn hơn) (24 tháng 11 năm 1888 – 1 tháng 11 năm 1955) là một nhà văn và nhà thuyết trình Mỹ và là người phát triển các lớp tự giáo dục, nghệ thuật bán hàng, huấn luyện đoàn thể, nói trước công chúng và các kỹ năng giao tiếp giữa mọi người. Ra đời trong cảnh nghèo đói tại một trang trại ở Missouri, ông là tác giả cuốn Đắc Nhân Tâm, được xuất bản lần đầu năm 1936, một cuốn sách thuộc hàng bán chạy nhất và được biết đến nhiều nhất cho đến tận ngày nay, nội dung nói về cách ứng xử, cư xử trong cuộc sống. Ông cũng viết một cuốn tiểu sử Abraham Lincoln, với tựa đề Lincoln con người chưa biết, và nhiều cuốn sách khác.', NULL, '2020-06-16 08:36:59', '2020-06-16 08:36:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Văn học', NULL, '2020-05-29 11:17:29', '2020-05-29 11:17:29'),
(2, 'Kinh tế', NULL, '2020-06-15 18:19:15', '2020-06-15 18:19:15'),
(3, 'Kĩ năng sống', NULL, '2020-06-15 18:20:00', '2020-06-15 18:20:00'),
(6, 'Nuôi Dạy Con', NULL, '2020-06-17 07:48:45', '2020-06-17 07:48:45'),
(7, 'Nữ Công Gia Chánh', NULL, '2020-06-17 07:48:56', '2020-06-17 07:48:56'),
(8, 'Từ Điển', NULL, '2020-06-17 07:49:09', '2020-06-17 07:49:09'),
(9, 'Giáo Trình', NULL, '2020-06-17 07:49:17', '2020-06-17 07:49:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productDetails_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `content`, `productDetails_id`, `deleted_at`, `created_at`, `updated_at`, `status`) VALUES
(1, 'tuan', 'nvtuan88@gmail.com', 'asfdasdasdasdasdasdasd', 48, NULL, '2020-06-20 04:22:21', '2020-06-20 04:22:21', 0),
(2, 'admin', 'nvtuan88@gmail.com', 'ádasdasdasd', 11, NULL, '2020-06-20 07:08:39', '2020-06-20 07:08:39', 0),
(3, 'tuan', 'TuanNVTH1904004@fpt.edu.vn', 'âsdasdasdasdasda', 11, NULL, '2020-06-20 07:09:21', '2020-06-20 07:09:21', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `discounts`
--

INSERT INTO `discounts` (`id`, `discount`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '50%', NULL, '2020-05-30 05:15:48', '2020-05-30 05:15:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Tiếng Việt', NULL, '2020-05-29 11:40:24', '2020-05-29 11:40:24'),
(2, 'Tiếng Anh', NULL, '2020-06-16 08:37:23', '2020-06-16 08:37:23'),
(3, 'Tiếng Tây Ban Nha', NULL, '2020-06-16 08:37:33', '2020-06-16 08:37:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '2020_05_29_155056_create_categories_table', 2),
(5, '2020_05_29_155339_create_products_table', 2),
(6, '2020_05_29_155405_create_product_details_table', 2),
(7, '2020_05_29_155421_create_authors_table', 2),
(8, '2020_05_29_155445_create_languages_table', 2),
(9, '2020_05_29_155508_create_publishers_table', 2),
(10, '2020_05_29_155530_create_price_filters_table', 2),
(11, '2020_05_29_155607_create_comments_table', 2),
(12, '2020_05_29_163704_create_discounts_table', 2),
(13, '2020_05_31_131728_create_mails_table', 3),
(14, '2020_05_31_132102_create_tags_table', 3),
(15, '2020_05_31_132249_create_news_table', 3),
(16, '2020_05_31_132345_create_news_categories_table', 3),
(17, '2020_05_31_133137_create_news_comments_table', 3),
(18, '2020_05_31_133555_create_orders_table', 3),
(19, '2020_05_31_133648_create_order_details_table', 3),
(20, '2020_06_03_151447_rename_table', 4),
(21, '2020_06_10_002600_add_note_and_ship_address_to_orders', 4),
(22, '2020_06_15_152816_create_profiles_table', 5),
(23, '2020_06_15_205148_create_profiles_table', 6),
(24, '2020_06_15_220143_add_cover_to_users_table', 7),
(25, '2020_06_17_230836_change_user_status_column_type', 8),
(26, '2020_06_18_002654_create_messages_table', 8),
(27, '2020_06_20_174043_change_nullable_cover_to_users_tables', 8),
(28, '2020_06_24_142501_add_status_to_comments_table', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `content`, `title`, `summary`, `status`, `category_id`, `user_id`, `cover`, `deleted_at`, `created_at`, `updated_at`) VALUES
(9, '<p><img alt=\"\" src=\"https://i-giaitri.vnecdn.net/2017/04/03/origin-2640-1491215637.jpg\" style=\"height:540px; width:351px\" /></p>\r\n\r\n<p>&Ocirc;ng L&ecirc; Thanh Huy - gi&aacute;m đốc C&ocirc;ng ty Cổ phần S&aacute;ch B&aacute;ch Việt - cho biết đơn vị của &ocirc;ng đ&atilde; mua th&agrave;nh c&ocirc;ng bản quyền cuốn&nbsp;<em>Origin&nbsp;</em>(tạm dịch:&nbsp;<em>Nguy&ecirc;n bản</em>) - t&aacute;c phẩm mới nhất của Dan Brown.</p>\r\n\r\n<p>Trước đ&oacute;, năm 2013,&nbsp;B&aacute;ch Việt từng bỏ ra v&agrave;i trăm triệu để được xuất bản&nbsp;<a href=\"https://giaitri.vnexpress.net/tin-tuc/sach/lang-van/sach-moi-nhat-cua-dan-brown-sap-ra-mat-tai-viet-nam-2936559.html?utm_source=search_vne\"><em>Inferno (Hỏa ngục)</em></a>.&nbsp;</p>\r\n\r\n<p>&quot;Bản quyền&nbsp;<em>Origin</em>&nbsp;cao gấp đ&ocirc;i&nbsp;<em>Inferno.</em>&nbsp;T&ocirc;i nghĩ đ&acirc;y l&agrave; con số kỷ lục trong ng&agrave;nh xuất bản ở Việt Nam. Tuy nhi&ecirc;n,&nbsp;đối t&aacute;c l&agrave;&nbsp;nh&agrave; xuất bản Transworld y&ecirc;u cầu kh&ocirc;ng tiết lộ điều n&agrave;y&quot;, &ocirc;ng Huy chia sẻ.</p>', 'Sách mới nhất của Dan Brown', 'Ông Lê Thanh Huy - giám đốc Công ty Cổ phần Sách Bách Việt - cho biết đơn vị của ông đã mua thành công bản quyền cuốn Origin (tạm dịch: Nguyên bản) - tác phẩm mới nhất của Dan Brown.', 1, 1, 2, 'images/1592707949_23f7f2605cd1a37ed4849f0bdfda61ea.jpg.jpg', NULL, '2020-06-21 02:47:14', '2020-06-22 02:18:29'),
(10, '<p><img alt=\"\" src=\"https://znews-photo-td.zadn.vn/w660/Uploaded/neg_iflemly/2017_04_01/collage_dd_647_092916102334_1.jpg\" style=\"height:404px; width:647px\" /></p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Tiểu thuyết&nbsp;<em>Origin&nbsp;</em>của nh&agrave; văn Dan Brown dự kiến sẽ ph&aacute;t h&agrave;nh ng&agrave;y 26/9 năm nay.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Hiện nội dung của&nbsp;<em>Origin</em>&nbsp;chưa được tiết lộ cặn kẽ. Tuy nhi&ecirc;n, độc giả vẫn sẽ được gặp lại gi&aacute;o sư Robert Langdon v&agrave; c&ugrave;ng dấn th&acirc;n v&agrave;o một b&iacute; ẩn &quot;rung chuyển&quot;, m&agrave; theo m&ocirc; tả th&igrave; sẽ &ldquo;đẩy gi&aacute;o sư biểu tượng học Robert Langdon của trường Harvard v&agrave;o điểm giao cắt của hai c&acirc;u hỏi khiến lo&agrave;i người lu&ocirc;n đau đ&aacute;u, v&agrave; ph&aacute;t hiện g&acirc;y chấn động sẽ gi&uacute;p &ocirc;ng t&igrave;m ra đ&aacute;p &aacute;n cho tất cả&rdquo;.</p>\r\n\r\n<p>Giống như những cuốn tiểu thuyết trước,&nbsp;<em>Origin</em>&nbsp;dự kiến chứa đựng nhiều t&igrave;nh tiết li&ecirc;n quan tới mật m&atilde;, khoa học, t&ocirc;n gi&aacute;o, lịch sử, nghệ thuật v&agrave; kiến tr&uacute;c.</p>\r\n\r\n<p>Thời điểm bản tiếng Việt của cuốn s&aacute;ch đến tay bạn đọc cũng dự kiến cũng v&agrave;o đ&uacute;ng dịp Hội s&aacute;ch Quốc tế TP.HCM lần thứ 10 - 2018.</p>', 'Việt Nam mua bản quyền tác phẩm sắp ra mắt của Dan Brown', 'Bách Việt Books, đơn vị đã mua được bản quyền chuyển ngữ và phát hành bản tiếng Việt của Origin cho biết mặc dù con số cụ thể không được phép tiết lộ nhưng mức giá bản quyền cuốn này cao gấp đôi bản quyền Inferno - Hỏa ngục phát hành năm 2014.', 1, 1, 2, 'images/1592792192_bia-1_cho-hoa-nguyen-soai-no.jpg.jpg', NULL, '2020-06-21 02:54:01', '2020-06-22 02:16:32'),
(11, '<h1><img alt=\"\" src=\"https://i-giaitri.vnecdn.net/2016/08/04/Loi-hua-ve-mot-cay-but-chi-5336-1470299493.jpg\" style=\"height:538px; width:390px\" /></h1>\r\n\r\n<p><em>Lời hứa về một c&acirc;y b&uacute;t ch&igrave; (The Promise of a Pencil)</em>&nbsp;l&agrave; t&aacute;c phẩm của Adam Braun - một doanh nh&acirc;n, nh&agrave; hoạt động từ thiện v&agrave; t&aacute;c giả 32 tuổi người Mỹ. Anh l&agrave; người s&aacute;ng lập quỹ từ thiện Pencils of Promise - tổ chức phi lợi nhuận x&acirc;y dựng trường học v&agrave; mang đến c&aacute;c tiện &iacute;ch gi&aacute;o dục cho trẻ em ở những nước đang ph&aacute;t triển.</p>\r\n\r\n<p>Cuốn s&aacute;ch kể về h&agrave;nh tr&igrave;nh gi&aacute;c ngộ v&agrave; theo đuổi mục đ&iacute;ch sống &yacute; nghĩa của Adam Braun. Anh biết kiếm tiền từ năm 12 tuổi, c&oacute; tư duy kinh doanh t&agrave;i ch&iacute;nh nổi trội, 16 tuổi đ&atilde; thực tập tại một quỹ đầu tư, tốt nghiệp trường đại học danh gi&aacute;, l&agrave;m việc trong một c&ocirc;ng ty danh tiếng với nhiều cơ hội thăng tiến... Tuy nhi&ecirc;n suốt qu&aacute; tr&igrave;nh trưởng th&agrave;nh, đặc biệt từ năm 22 đến 25 tuổi, Adam Braun lu&ocirc;n trằn trọc v&igrave; kh&ocirc;ng t&igrave;m được &yacute; nghĩa cuộc sống.</p>', '\'Lời hứa về một cây bút chì\' - cuốn sách truyền cảm hứng sống', 'Lời hứa về một cây bút chì (The Promise of a Pencil) là tác phẩm của Adam Braun - một doanh nhân, nhà hoạt động từ thiện và tác giả 32 tuổi người Mỹ.', 1, 1, 2, 'images/1592708102_chien-tranh-tien-te-phan1-bia-truoc_taiban_.jpg.jpg', NULL, '2020-06-21 02:55:02', '2020-06-21 02:55:02'),
(12, '<p><img alt=\"\" src=\"https://i-giaitri.vnecdn.net/2016/06/18/Bo-an-pham-dong-hanh-cung-phim-3331-6322-1466222447.jpg\" style=\"height:244px; width:500px\" /></p>\r\n\r\n<p>Bộ phim hoạt h&igrave;nh&nbsp;<a href=\"http://giaitri.vnexpress.net/tin-tuc/phim/diem-phim/finding-nemo-song-dong-hon-khi-co-3d-1929029.html?utm_source=detail&amp;utm_medium=box_relatedtop&amp;utm_campaign=boxtracking\"><em>Finding Dory</em></a>&nbsp;vừa ra rạp v&agrave;o ng&agrave;y 17/6 tập trung v&agrave;o nh&acirc;n vật c&ocirc; c&aacute; xanh hay qu&ecirc;n Dory v&agrave; chuyến h&agrave;nh tr&igrave;nh t&igrave;m về qu&ecirc; hương của c&ocirc;.</p>\r\n\r\n<p>Nh&acirc;n dịp n&agrave;y, Nh&agrave; xuất bản Kim Đồng giới thiệu đến bạn đọc nhỏ tuổi bộ ấn phẩm kh&aacute;m ph&aacute; thế giới của c&ocirc; c&aacute; Dory v&agrave; ch&uacute; c&aacute; Nemo gồm c&aacute;c truyện tranh m&agrave;u v&agrave; m&agrave;u nước.</p>\r\n\r\n<p><img alt=\"\" src=\"https://i-giaitri.vnecdn.net/2016/06/18/Bo-an-pham-dong-hanh-cung-phim-2176-2257-1466222447.jpg\" style=\"height:335px; width:500px\" /></p>', 'Bộ sách đồng hành cùng phim hoạt hình \'Đi tìm Dory\'', 'Bộ phim hoạt hình Finding Dory vừa ra rạp vào ngày 17/6 tập trung vào nhân vật cô cá xanh hay quên Dory và chuyến hành trình tìm về quê hương của cô.', 1, 1, 2, 'images/1592708158_b_a-chi_t-chi.jpg.jpg', NULL, '2020-06-21 02:55:58', '2020-06-21 02:55:58'),
(13, '<p>&nbsp;</p>\r\n\r\n<p>Bộ s&aacute;ch của t&aacute;c giả người Nga gồm 3 cuốn:&nbsp;<em>Thuyền trưởng Đơn Vị, Người mặt nạ đen ở nước An-giep, Ba ng&agrave;y ở nước t&iacute; hon.</em>&nbsp;Loạt truyện n&agrave;y được viết cho thiếu nhi ở độ tuổi cấp 2, nổi tiếng trong thập ni&ecirc;n 1970-1980. Bộ s&aacute;ch tiểu thuyết To&aacute;n học được viết hấp dẫn, l&yacute; th&uacute;, gi&uacute;p c&aacute;c em học sinh tăng cường tư duy m&ocirc;n To&aacute;n, đồng thời c&oacute; những ph&uacute;t gi&acirc;y thư gi&atilde;n th&uacute; vị b&ecirc;n những nh&acirc;n vật đ&aacute;ng y&ecirc;u của thế giới c&aacute;c con số.</p>\r\n\r\n<p><em>Thuyền trường Đơn Vị</em>&nbsp;kể về cuộc phi&ecirc;u lưu kỳ th&uacute; của Số Kh&ocirc;ng tr&ecirc;n chiếc t&agrave;u của Thuyền trưởng Đơn Vị đi v&agrave;o thế giới kỳ diệu. Thế giới ấy được dựng n&ecirc;n bằng những con số, ph&eacute;p t&iacute;nh. Trong truyện, những kh&aacute;i niệm của to&aacute;n học được tr&igrave;nh b&agrave;y bằng ng&ocirc;n ngữ mềm mại của văn chương như biển Ti&ecirc;n Đề, đảo Tam gi&aacute;c Vu&ocirc;ng, đại dương Số Học... Trong h&agrave;nh tr&igrave;nh phi&ecirc;u lưu mạo hiểm ấy, thuyền trưởng Đơn Vị sẽ đưa độc giả nhỏ h&igrave;nh th&agrave;nh những tư duy To&aacute;n học bổ &iacute;ch, kh&aacute;m ph&aacute; tầm quan trọng của m&ocirc;n To&aacute;n trong đời sống.</p>', 'Truyện kinh điển Nga thay \'áo mới\' ở Việt Nam', 'Bộ sách của tác giả người Nga gồm 3 cuốn: Thuyền trưởng Đơn Vị, Người mặt nạ đen ở nước An-giep, Ba ngày ở nước tí hon. Loạt truyện này được viết cho thiếu nhi ở độ tuổi cấp 2, nổi tiếng trong thập niên 1970-1980.', 1, 1, 2, 'images/1592708250_image_57359.jpg.jpg', NULL, '2020-06-21 02:57:30', '2020-06-21 02:57:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_categories`
--

CREATE TABLE `news_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Tin tức', NULL, '2020-06-01 04:53:30', '2020-06-01 04:53:30'),
(2, 'Review', NULL, '2020-06-06 07:53:03', '2020-06-06 07:53:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_comments`
--

CREATE TABLE `news_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `paymentMethod` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `totalprice` double(8,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipAddress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `date`, `paymentMethod`, `status`, `user_id`, `totalprice`, `deleted_at`, `created_at`, `updated_at`, `note`, `shipAddress`) VALUES
(63, '2020-06-25 16:31:05', 'COD', 5, 5, 74000.00, NULL, '2020-06-25 09:31:05', '2020-06-25 09:33:29', '                      ', NULL),
(69, '2020-06-25 17:19:10', 'COD', 1, 5, 76000.00, NULL, '2020-06-25 10:19:10', '2020-07-17 03:04:37', '                      ', NULL),
(70, '2020-06-25 17:52:31', 'COD', 4, 5, 30000.00, NULL, '2020-06-25 10:52:31', '2020-06-25 11:05:14', '                      ', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `productDetail_id` int(11) NOT NULL,
  `orderAmount` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `totalprice` double(8,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `productDetail_id`, `orderAmount`, `price`, `totalprice`, `deleted_at`, `created_at`, `updated_at`) VALUES
(34, 58, 12, 1, 169000.00, 267000.00, NULL, '2020-06-25 07:23:36', '2020-06-25 07:23:36'),
(35, 58, 13, 1, 98000.00, 267000.00, NULL, '2020-06-25 07:23:36', '2020-06-25 07:23:36'),
(46, 63, 47, 1, 74000.00, 74000.00, NULL, '2020-06-25 09:31:05', '2020-06-25 09:31:05'),
(61, 69, 48, 1, 76000.00, 76000.00, NULL, '2020-06-25 10:19:12', '2020-06-25 10:19:12'),
(62, 70, 11, 1, 30000.00, 30000.00, NULL, '2020-06-25 10:52:33', '2020-06-25 10:52:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('nvtuan88@gmail.com', '$2y$10$NBGI2bFkUxYuCwx3Q2JYz.//hdaGzjOxSp9jLgAH6bh3LbduMIF6a', '2020-06-20 09:55:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Tiểu thuyết', 1, NULL, '2020-05-29 12:48:08', '2020-05-29 12:48:08'),
(2, 'Truyện ngắn', 1, NULL, '2020-06-15 20:02:14', '2020-06-15 20:02:14'),
(3, 'Ngôn tình', 1, NULL, '2020-06-15 20:02:28', '2020-06-15 20:02:28'),
(4, 'Marketing', 2, NULL, '2020-06-15 20:02:46', '2020-06-15 20:02:46'),
(5, 'Quản Trị - Lãnh Đạo', 2, NULL, '2020-06-17 07:50:00', '2020-06-17 07:50:00'),
(6, 'Phân Tích Kinh Tế', 2, NULL, '2020-06-17 07:50:13', '2020-06-17 07:50:13'),
(7, 'Tâm Lý', 3, NULL, '2020-06-17 07:51:00', '2020-06-17 07:51:00'),
(8, 'Sách Cho Tuổi Mới Lớn', 3, NULL, '2020-06-17 07:51:12', '2020-06-17 07:51:12'),
(9, 'Rèn Luyện Nhân Cách', 3, NULL, '2020-06-17 07:51:26', '2020-06-17 07:51:26'),
(10, 'Cẩm Nang Làm Cha Mẹ', 6, NULL, '2020-06-17 07:51:57', '2020-06-17 07:51:57'),
(11, 'Dành Cho Mẹ Bầu', 6, NULL, '2020-06-17 07:52:08', '2020-06-17 07:52:08'),
(12, 'Giáo Dục Trẻ Tuổi Teen', 6, NULL, '2020-06-17 07:52:17', '2020-06-17 07:52:17'),
(13, 'Nấu Ăn', 7, NULL, '2020-06-17 07:52:45', '2020-06-17 07:52:45'),
(14, 'Khéo Tay', 7, NULL, '2020-06-17 07:52:55', '2020-06-17 07:52:55'),
(15, 'Món Ăn Bài Thuốc', 7, NULL, '2020-06-17 07:53:04', '2020-06-17 07:53:04'),
(16, 'Từ Điển Hán - Việt', 8, NULL, '2020-06-17 07:53:30', '2020-06-17 07:53:30'),
(17, 'Từ Điển Chuyên Ngành', 8, NULL, '2020-06-17 07:53:52', '2020-06-17 07:53:52'),
(18, 'Giáo Trình ĐH, CĐ, THCN', 9, NULL, '2020-06-17 07:54:24', '2020-06-17 07:54:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `amount` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_details`
--

INSERT INTO `product_details` (`id`, `name`, `product_id`, `cover`, `review`, `detail`, `price`, `status`, `amount`, `author_id`, `language_id`, `publisher_id`, `user_id`, `discount`, `deleted_at`, `created_at`, `updated_at`) VALUES
(11, 'Nhà Giả Kim', 1, 'images/1592381536_8935235213746.jpg.jpg', 'NHÀ GIẢ KIM là cuốn sách được in nhiều nhất chỉ sau Kinh Thánh.', '<p><strong>Nh&agrave; Giả Kim (T&aacute;i Bản 2017)</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn0.fahasa.com/media/flashmagazine/images/page_images/nha_gia_kim_tai_ban_2017/2019_11_04_14_41_25_1.jpg\" style=\"height:1125px; width:700px\" /></strong></p>\r\n\r\n<p>NH&Agrave; GIẢ KIM l&agrave; cuốn s&aacute;ch được in nhiều nhất chỉ sau Kinh Th&aacute;nh. Cuốn s&aacute;ch của Paulo Coelho c&oacute; sự hấp dẫn ra sao khiến độc giả kh&ocirc;ng chỉ c&aacute;c xứ d&ugrave;ng ng&ocirc;n ngữ Bồ Đ&agrave;o Nha m&agrave; c&aacute;c ng&ocirc;n ngữ kh&aacute;c say m&ecirc; như vậy?</p>\r\n\r\n<p>Tiểu thuyết NH&Agrave; GIẢ KIM của Paulo Coelho như một c&acirc;u chuyện cổ t&iacute;ch giản dị, nh&acirc;n &aacute;i, gi&agrave;u chất thơ, thấm đẫm những minh triết huyền b&iacute; của phương Đ&ocirc;ng. Trong lần xuất bản đầu ti&ecirc;n tại Brazil v&agrave;o năm 1988, s&aacute;ch chỉ b&aacute;n được 900 bản. Nhưng, với số phận đặc biệt của cuốn s&aacute;ch d&agrave;nh cho to&agrave;n nh&acirc;n loại, vượt ra ngo&agrave;i bi&ecirc;n giới quốc gia, Nh&agrave; giả kim đ&atilde; l&agrave;m rung động h&agrave;ng triệu t&acirc;m hồn, trở th&agrave;nh một trong những cuốn s&aacute;ch b&aacute;n chạy nhất mọi thời đại, v&agrave; c&oacute; thể l&agrave;m thay đổi cuộc đời người đọc.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/flashmagazine/images/page_images/nha_gia_kim_tai_ban_2017/2019_11_04_14_41_25_2.jpg\" style=\"height:1072px; width:600px\" /></p>\r\n\r\n<p>&ldquo;Nhưng nh&agrave; luyện kim đan kh&ocirc;ng quan t&acirc;m mấy đến những điều ấy. &Ocirc;ng đ&atilde; từng thấy nhiều người đến rồi đi, trong khi ốc đảo v&agrave; sa mạc vẫn l&agrave; ốc đảo v&agrave; sa mạc. &Ocirc;ng đ&atilde; thấy vua ch&uacute;a v&agrave; kẻ ăn xin đi qua biển c&aacute;t n&agrave;y, c&aacute;i biển c&aacute;t thường xuy&ecirc;n thay h&igrave;nh đổi dạng v&igrave; gi&oacute; thổi nhưng vẫn m&atilde;i m&atilde;i l&agrave; biển c&aacute;t m&agrave; &ocirc;ng đ&atilde; biết từ thuở nhỏ. Tuy vậy, tự đ&aacute;y l&ograve;ng m&igrave;nh, &ocirc;ng kh&ocirc;ng thể kh&ocirc;ng cảm thấy vui trước hạnh ph&uacute;c của mỗi người lữ kh&aacute;ch, sau bao ng&agrave;y chỉ c&oacute; c&aacute;t v&agrave;ng với trời xanh nay được thấy ch&agrave; l&agrave; xanh tươi hiện ra trước mắt. &lsquo;C&oacute; thể Thượng đế tạo ra sa mạc chỉ để cho con người biết qu&yacute; trọng c&acirc;y ch&agrave; l&agrave;,&rsquo; &ocirc;ng nghĩ.&rdquo; - Tr&iacute;ch NH&Agrave; GIẢ KIM</p>', 30000.00, 1, 8, 1, 1, 1, 2, 0, NULL, '2020-06-17 08:03:03', '2020-06-25 11:05:14'),
(12, 'Thuyết Tán Tỉnh Cậu', 1, 'images/1592381546_theoryoflove_1.jpg.jpg', 'Bộ phim ăn khách Theory of Love đã làm mưa làm gió bao nhiêu trái tim người xem thì nay tiểu thuyết đã chính thức được ra mắt.', '<p><strong>Thuyết T&aacute;n Tỉnh Cậu - Tặng K&egrave;m Bookmark + Postcard</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/t/h/theoryoflove_1.jpg\" style=\"height:600px; width:600px\" /></strong></p>\r\n\r\n<p>&ldquo;Lăng nhăng như m&agrave;y m&agrave; cũng muốn kết h&ocirc;n hả?&rdquo; &ldquo;Th&igrave; tao hết lăng nhăng rồi n&ecirc;n mới muốn kết h&ocirc;n, từ l&uacute;c đẻ ra đến giờ chưa kết h&ocirc;n lần n&agrave;o n&ecirc;n muốn thử. M&agrave; đ&aacute;m cưới phải c&oacute; c&ocirc; d&acirc;u thiệt l&agrave; dễ thương n&egrave;, tổ chức tiệc mời cả ngh&igrave;n b&agrave;n lu&ocirc;n, nếu mời được Thủ tướng đến l&agrave;m chủ h&ocirc;n th&igrave; c&ograve;n o&aacute;ch hơn nữa.&rdquo; &ldquo;M&agrave;y ảo tưởng n&oacute; vừa th&ocirc;i.&rdquo; &ldquo;Kh&ocirc;ng th&iacute;ch hả?&rdquo; &ldquo;Kh&ocirc;ng.&rdquo; &ldquo;Th&iacute;ch đ&aacute;m cưới theo phong c&aacute;ch n&agrave;o?&rdquo; &ldquo;Đơn giản, c&oacute; lẽ chỉ tổ chức trong gia đ&igrave;nh th&ocirc;i?&rdquo; &ldquo;Ok, để tao gọi điện b&aacute;o cho mẹ.&rdquo;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/t/h/theoryoflove_1.png\" style=\"height:682px; width:492px\" /></p>\r\n\r\n<p>Bộ phim ăn kh&aacute;ch Theory of Love đ&atilde; l&agrave;m mưa l&agrave;m gi&oacute; bao nhi&ecirc;u tr&aacute;i tim người xem th&igrave; nay tiểu thuyết đ&atilde; ch&iacute;nh thức được ra mắt.</p>\r\n\r\n<p>Ch&agrave;ng trai ăn chơi cũng phải dừng lại trước người m&agrave; cậu y&ecirc;u. Nhưng đ&oacute; kh&ocirc;ng phải chuyện dễ d&agrave;ng. Y&ecirc;u m&agrave; kh&ocirc;ng biết m&igrave;nh y&ecirc;u, thương m&agrave; cứ băn khoăn...</p>', 169000.00, 1, 4, 1, 1, 2, 2, 30, NULL, '2020-06-17 08:05:57', '2020-06-19 03:36:48'),
(13, 'Ngàn Cánh Hạc', 1, 'images/1592381554_ngancanhhac_bia1_2.jpg.jpg', 'Bản Ngàn cánh hạc tiếng Việt lần này bổ sung hai chương tác giả chỉ mới in trên tạp chí, chưa bao giờ xuất bản thành sách.', '<p><strong>Ng&agrave;n C&aacute;nh Hạc - Bản B&igrave;a Cứng</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/n/g/ngancanhhac_bia1.jpg\" style=\"height:600px; width:600px\" /></strong></p>\r\n\r\n<p>Bản&nbsp;<em>Ng&agrave;n c&aacute;nh hạc</em>&nbsp;tiếng Việt lần n&agrave;y bổ sung hai chương t&aacute;c giả chỉ mới in tr&ecirc;n tạp ch&iacute;, chưa bao giờ xuất bản th&agrave;nh s&aacute;ch.</p>\r\n\r\n<p>&hellip;</p>\r\n\r\n<p>L&agrave; hậu duệ một gia tộc tr&agrave; đạo, thay v&igrave; duy tr&igrave; truyền thống, Kikuji lại t&igrave;m c&aacute;ch trốn tr&aacute;nh n&oacute;, coi nhẹ n&oacute;, thậm ch&iacute; b&aacute;n lu&ocirc;n cả tr&agrave; thất của gia đ&igrave;nh để đoạn tuyệt n&oacute;.</p>\r\n\r\n<p>Sau một lần v&ocirc; t&igrave;nh gh&eacute; thăm buổi thưởng tr&agrave; ở nh&agrave; t&igrave;nh nh&acirc;n của cha, anh đ&atilde; sa ch&acirc;n v&agrave;o những mối quan hệ trầm lu&acirc;n, dằn vặt v&agrave; bất hạnh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/n/g/ngancanhhac_bia1_1.jpg\" style=\"height:904px; width:600px\" /></p>\r\n\r\n<p>Tr&agrave; đạo, bằng c&aacute;ch đ&oacute;, dai dẳng n&iacute;u chặt lấy anh. Từ những c&aacute;i ch&eacute;n c&oacute; lịch sử v&agrave;i trăm năm đ&atilde; in dấu nhiều khu&ocirc;n miệng cố nh&acirc;n, cho đến những con người sống trong hiện tại vẫn ấp ủ ho&agrave;i duy&ecirc;n nợ cũ&hellip; Tất cả t&igrave;m đến quanh Kikuji, len v&agrave;o c&agrave;o cấu t&acirc;m can, thậm ch&iacute; khuấy động cả qu&atilde;ng đời hạnh ph&uacute;c sau n&agrave;y của anh.</p>\r\n\r\n<p>Thưởng tr&agrave; l&agrave; thưởng thức nghệ thuật t&acirc;m tưởng, nhưng&nbsp;<em>Ng&agrave;n c&aacute;nh hạc</em>&nbsp;lại thưởng tr&agrave; bằng c&aacute;ch nhấn mạnh sự mong manh của đời người đặt b&ecirc;n chiều d&agrave;i những đạo cụ pha, rồi lại nếm n&aacute;p ch&iacute;nh c&aacute;i suy vi tan vỡ của những đạo cụ ấy.</p>\r\n\r\n<p>N&oacute;i kh&aacute;c đi l&agrave;, d&ugrave;ng sự v&ocirc; thường của tr&agrave; để m&agrave; thưởng tr&agrave;.</p>\r\n\r\n<p>Sau&nbsp;<em>Xứ tuyết</em>,&nbsp;<em>Ng&agrave;n c&aacute;nh hạc</em>&nbsp;lại l&agrave; một t&aacute;c phẩm nữa gi&uacute;p người đọc đi v&agrave;o thế giới ng&ocirc;n ngữ h&igrave;nh ảnh đa cảm của Kawabata Yasunari.</p>', 98000.00, 1, 6, 1, 1, 1, 2, 33, NULL, '2020-06-17 08:07:49', '2020-06-19 03:38:38'),
(14, 'Bước Chậm Lại Giữa Thế Gian Vội Vã', 1, 'images/1592381790_buoc_cham_lai_giua_the_gian_voi_va.u335.d20160817.t102115.612356.jpg.jpg', 'Chen vai thích cánh để có một chỗ bám trên xe buýt giờ đi làm, nhích từng xentimét bánh xe trên đường lúc tan sở, quay cuồng với thi cử và tiến độ công việc', '<p><strong>Bước Chậm Lại Giữa Thế Gian Vội V&atilde; (T&aacute;i Bản 2018)</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/b/u/buoc_cham_lai_giua_the_gian_voi_va.u335.d20160817.t102115.612356.jpg\" style=\"height:548px; width:376px\" /></strong></p>\r\n\r\n<p>Chen vai th&iacute;ch c&aacute;nh để c&oacute; một chỗ b&aacute;m tr&ecirc;n xe bu&yacute;t giờ đi l&agrave;m, nh&iacute;ch từng xentim&eacute;t b&aacute;nh xe tr&ecirc;n đường l&uacute;c tan sở, quay cuồng với thi cử v&agrave; tiến độ c&ocirc;ng việc, lu b&ugrave; vướng mắc trong những mối quan hệ cả th&acirc;n lẫn sơ&hellip; bạn c&oacute; lu&ocirc;n cảm thấy thế gian xung quanh m&igrave;nh đang xoay chuyển qu&aacute; vội v&agrave;ng?</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/flashmagazine/images/page_images/buoc_cham_lai_giua_the_gian_voi_va_tai_ban_2018/2019_09_19_11_46_51_1.jpg\" style=\"height:863px; width:600px\" /></p>\r\n\r\n<p>Nếu c&oacute; thể, h&atilde;y tạm dừng một bước.</p>\r\n\r\n<p>Để tự hỏi, l&agrave; do thế gian n&agrave;y vội v&agrave;ng hay do ch&iacute;nh t&acirc;m tr&iacute; bạn đang qu&aacute; bận rộn? Để cầm cuốn s&aacute;ch nhỏ dung dị m&agrave; lắng đọng n&agrave;y l&ecirc;n, chậm r&atilde;i lật giở từng trang, thong thả kh&aacute;m ph&aacute; những điều m&agrave; chỉ khi bước chậm lại mới c&oacute; thể thấu r&otilde;: về c&aacute;c mối quan hệ, về ch&iacute;nh bản th&acirc;n m&igrave;nh, về những trăn trở trước cuộc đời v&agrave; nh&acirc;n thế, về bao điều l&yacute; tr&iacute; rất hiểu nhưng tr&aacute;i tim chưa c&aacute;ch n&agrave;o nghe theo&hellip;</p>\r\n\r\n<p>Ra mắt lần đầu năm 2012, Bước chậm lại giữa thế gian vội v&atilde;&nbsp;của Đại đức&nbsp;Hae Min&nbsp;đ&atilde; li&ecirc;n tục đứng đầu danh s&aacute;ch best-seller của nhiều trang&nbsp;s&aacute;ch trực tuyến&nbsp;uy t&iacute;n của H&agrave;n Quốc, trở th&agrave;nh cuốn s&aacute;ch chữa l&agrave;nh cho h&agrave;ng triệu người trẻ lu&ocirc;n tất bật với nhịp sống hiện đại hối hả.</p>', 85000.00, 1, 3, 1, 1, 3, 2, 20, NULL, '2020-06-17 08:16:30', '2020-06-19 03:39:36'),
(15, 'Vui Vẻ Không Quạu Nha', 2, 'images/1592382135_image_195509_1_33312.jpg.jpg', 'Cuộc đời ngày ngày nói yêu mình.', '<p><strong>Cuộc đời ngày ngày nói yêu mình.</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/i/m/image_195509_1_33312.jpg\" style=\"height:600px; width:600px\" /></strong></p>\r\n\r\n<p>Xong cuộc đời lại đủ thứ phức tạp v&agrave; bất c&ocirc;ng với m&igrave;nh.<br />\r\nVậy là cuộc đời ghét mình r&ocirc;̀i!</p>\r\n\r\n<p>Th&ocirc;i n&agrave;o!</p>\r\n\r\n<p>Thả lỏng và tận hưởng sự vui vẻ đi. Vì chẳng phải cuộc đời đang ghét bạn đâu, mà chính bạn bạn đang loay hoay với những mệt nhọc ở trên đời. Ví dụ như nay đã là deadline mà b&ocirc;̃ng bị rớt mạng, sáng nay đi làm quên đem theo ví, hay đ&ocirc;̀ng nghiệp ở công ty nói x&acirc;́u mình,...</p>\r\n\r\n<p>N&ecirc;́u k&ecirc;̉ ra thì sẽ có ti tỉ thứ không theo ý mình m&ocirc;̃i ngày. Không nói đ&ecirc;́n những chuyện bực tức khác, những n&ocirc;̃i bu&ocirc;̀n chúng ta không làm chủ được, những đi&ecirc;̀u vô tình đ&ecirc;́n khi&ecirc;́n ta quạu cọ và x&acirc;́u xí. Rồi khi ch&uacute;ng ta cứ để ch&uacute;ng trong l&ograve;ng sự phiền muộn kh&ocirc;ng biết k&eacute;o d&agrave;i đến bao giờ mới kết th&uacute;c.</p>\r\n\r\n<p>Cho n&ecirc;n, thay v&igrave; để t&acirc;m đến những chuyện khiến m&igrave;nh kh&ocirc;ng vui, h&atilde;y lựa chọn vui vẻ, bạn sẽ thấy cuộc đời trở n&ecirc;n tuyệt vời hơn rất nhiều. V&agrave; để c&acirc;n bằng những cảm x&uacute;c ấy &ldquo;Vui vẻ không quạu nha&rdquo; chính là một m&oacute;n qu&agrave; để lan tỏa v&agrave; nh&acirc;n l&ecirc;n niềm vui, một cu&ocirc;́n sách mà ai cũng c&acirc;̀n phải có đ&ecirc;̉ thêm yêu những đi&ecirc;̀u nhỏ xíu đáng yêu xung quanh m&igrave;nh.</p>\r\n\r\n<p>Vui vẻ kh&ocirc;ng quạu nha - Cu&ocirc;́n sách kh&ocirc;ng chỉ mặn m&agrave; đúng như tên gọi của nó m&agrave; c&ograve;n bắt kịp c&aacute;c xu hướng được quan t&acirc;m từ fanpage nổi tiếng &ldquo;Ở đ&acirc;y zui n&egrave;&rdquo; sẽ giúp bạn có những tràng cười vui vẻ không ngớt, c&oacute; c&aacute;i nh&igrave;n khoan dung cởi mở hơn, nhìn nhận những xui xẻo v&acirc;́p phải b&ocirc;̃ng trở nên nhỏ b&eacute; dưới g&oacute;c độ d&iacute; dỏm v&agrave; hài hước.</p>\r\n\r\n<p>Vui vẻ kh&ocirc;ng quạu nha - xin được gửi đ&ecirc;́n những bạn trẻ đang dễ giận dữ, cau c&oacute; ngoài th&ecirc;́ giới kia, những ai đang bu&ocirc;̀n phi&ecirc;̀n v&ecirc;̀ rắc rối nào đó, &ldquo;trái tim&rdquo; nhỏ bé này còn phải dành cho ni&ecirc;̀m vui, đừng đ&ecirc;̉ bực bội, dỗi hờn từ những đi&ecirc;̀u không đáng chi&ecirc;́m h&ecirc;́t ch&ocirc;̃.</p>\r\n\r\n<p>Và hãy hét to với Th&ecirc;́ giới rằng &ldquo;Mình là một người tràn đ&acirc;̀y năng lượng,&rdquo; luôn sẵn s&agrave;ng để hạnh ph&uacute;c hơn.</p>', 69000.00, 1, 3, 1, 1, 1, 2, 22, NULL, '2020-06-17 08:22:15', '2020-06-19 03:42:18'),
(16, 'Chúng Ta Là Những Đứa Trẻ Cô Đơn', 2, 'images/1592382515_artboard-11.jpg.jpg', 'Tôi, bạn và rất nhiều người trẻ tuổi khác đang sống trong thời đại của sự vội vã. Vội vã ăn, vội vã ngủ, vội vã làm việc.', '<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/a/r/artboard-11.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p><strong>Ch&uacute;ng Ta L&agrave; Những Đứa Trẻ C&ocirc; Đơn</strong></p>\r\n\r\n<p>Bạn đ&atilde; bao giờ trở về nh&agrave; sau một ng&agrave;y l&agrave;m việc d&agrave;i, mệt mỏi, &aacute;p lực, nằm d&agrave;i tr&ecirc;n ghế với bộ đồ c&ocirc;ng sở, bật thật lớn một bản nhạc deep house, &aacute;t hết tất cả những &acirc;m thanh xung quanh v&agrave; tự huyễn hoặc với ch&iacute;nh m&igrave;nh rằng &ldquo;M&igrave;nh sẽ ổn th&ocirc;i&rdquo;?<br />\r\nBạn đ&atilde; c&oacute; một ng&agrave;y như thế chưa?</p>\r\n\r\n<p>Khi c&ograve;n b&eacute;, ch&uacute;ng ta mong đến ng&agrave;y l&agrave;m người lớn, để rồi những ng&agrave;y đ&atilde; kh&ocirc;n lớn, ch&uacute;ng ta lại ước ao c&oacute; một gi&acirc;y ph&uacute;t được trở về như những ng&agrave;y thơ b&eacute;. Ch&iacute;nh những người trẻ như ch&uacute;ng ta lại cứ ao ước, kh&aacute;t khao được tự do trong những th&aacute;ng ng&agrave;y tuổi trẻ của m&igrave;nh. Ch&uacute;ng ta cứ bắt bản th&acirc;n sống o &eacute;p, phải xoay theo quy luật của x&atilde; hội, phải chiều theo miệng người đời.</p>\r\n\r\n<p>T&ocirc;i, bạn v&agrave; rất nhiều người trẻ tuổi kh&aacute;c đang sống trong thời đại của sự vội v&atilde;. Vội v&atilde; ăn, vội v&atilde; ngủ, vội v&atilde; l&agrave;m việc. Bởi v&igrave; chỉ chậm chạp một ch&uacute;t th&ocirc;i, dường như ch&uacute;ng ta sẽ bị mọi người xung quanh vượt xa. Guồng quay cuộc sống v&ocirc; t&igrave;nh cuốn ch&uacute;ng ta đi, biến ch&uacute;ng ta th&agrave;nh những đứa trẻ c&ocirc; đơn giữa chốn phồn hoa. Để rồi đến đ&ecirc;m về, khi trở về căn ph&ograve;ng trọ nhỏ b&eacute;, bủa v&acirc;y ch&uacute;ng ta chỉ l&agrave; sự mệt mỏi, v&ocirc; định về tương lai, về ng&agrave;y mai kh&ocirc;ng ai đo&aacute;n trước.</p>\r\n\r\n<p>Xa gia đ&igrave;nh, kh&ocirc;ng c&oacute; cha mẹ ở b&ecirc;n, chắc hẳn chẳng ai c&oacute; thể đứng vững ngay những lần đầu v&igrave; cuộc đời sẽ biết c&aacute;ch để khiến ch&uacute;ng ta phải mất thăng bằng, phải rơi nước mắt, từ học h&agrave;nh, c&ocirc;ng việc đến chuyện t&igrave;nh cảm. Mọi thứ đều c&oacute; thể đang rất tốt v&agrave;o ng&agrave;y h&ocirc;m nay, nhưng ngay ng&agrave;y mai th&ocirc;i lại nhanh ch&oacute;ng trở n&ecirc;n tồi tệ.</p>\r\n\r\n<p>&nbsp;&ldquo;Cuộc đời l&agrave; vậy đấy!&rdquo;, đ&oacute; l&agrave; điều bạn phải chấp nhận. Ở ngo&agrave;i kia, c&ograve;n rất nhiều người trẻ cũng vậy. Cũng c&oacute; l&uacute;c mệt nho&agrave;i, c&oacute; l&uacute;c tuyệt vọng, c&oacute; l&uacute;c kh&oacute;c l&oacute;c, muốn bu&ocirc;ng xu&ocirc;i. N&ecirc;n bạn ơi, đừng bỏ cuộc nh&eacute;. So với việc gồng m&igrave;nh, đau khổ trong v&agrave;i giờ rồi kiệt sức, th&igrave; việc tạm nhấn n&uacute;t pause, rồi trở lại mạnh mẽ hơn chắc chắn sẽ l&agrave; một lựa chọn th&ocirc;ng minh hơn đ&oacute;.</p>\r\n\r\n<p>Lựa chọn hay kh&ocirc;ng, l&agrave; do bản th&acirc;n mỗi người, nhưng xin bạn h&atilde;y nhớ&nbsp;<strong><em>Chỉ cần kh&ocirc;ng bỏ cuộc, th&igrave; chẳng c&oacute; g&igrave; đ&aacute;ng sợ cả&hellip; Ch&uacute;ng ta c&ograve;n trẻ, c&oacute; thể c&ocirc; đơn, c&oacute; thể kiệt sức, nhưng sẽ kh&ocirc;ng bao giờ từ bỏ!</em></strong></p>', 88000.00, 1, 5, 1, 1, 1, 2, 12, NULL, '2020-06-17 08:28:35', '2020-06-19 03:42:13'),
(17, 'Thả Thính Chân Kinh', 2, 'images/1592382623_8f665e9b1b05e15bb814_4_1.jpg.jpg', 'Và, bạn sẽ thấy đâu đó dáng hình của mình những ngày ngu ngơ cũ, thật buồn mà cũng thật đẹp, vì nếu thật là tình yêu thì tình yêu luôn luôn đẹp…', '<p>Thả Th&iacute;nh Ch&acirc;n Kinh</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/8/f/8f665e9b1b05e15bb814_4_1.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p><strong><em>Thả th&iacute;nh ch&acirc;n kinh</em></strong>, với mạch cảm x&uacute;c của một tr&aacute;i tim từng trải qu&aacute; nhiều cảm x&uacute;c buồn vui trong t&igrave;nh y&ecirc;u v&agrave; cuộc sống, văn của Khang đẹp v&agrave; buồn v&agrave; trong s&aacute;ng v&agrave; đầy hy vọng, như ch&iacute;nh con người v&agrave; t&iacute;nh c&aacute;ch của Khang. Tập s&aacute;ch trẻ trung v&agrave; th&uacute; vị c&ugrave;ng nhiều cung bậc cảm x&uacute;c về t&igrave;nh y&ecirc;u, m&aacute;ch nước cho c&aacute;c cậu trai c&ocirc; g&aacute;i c&aacute;ch &ldquo;thả th&iacute;nh&rdquo; l&agrave;m sao cho đối tượng m&igrave;nh thầm thương trộm nhớ phải &ldquo;gục ng&atilde;&rdquo;. Nhưng s&acirc;u hơn, xa hơn những lời ngọt ng&agrave;o c&oacute; c&aacute;nh l&agrave; th&aacute;i độ vui sống sau b&atilde;o gi&ocirc;ng t&igrave;nh trường, l&agrave; c&aacute;ch h&agrave;nh xử văn minh sau khi t&igrave;nh y&ecirc;u bỏ ra đi.</p>\r\n\r\n<p><strong><em>Thả th&iacute;nh ch&acirc;n kinh</em></strong>&nbsp;l&agrave; h&agrave;nh tr&igrave;nh t&igrave;m kiếm ch&acirc;n t&igrave;nh của những người trẻ, c&oacute; vấp v&aacute;p, c&oacute; tổn thương, thậm ch&iacute; đau đớn nhưng t&aacute;c giả đ&atilde; gởi một th&ocirc;ng điệp rất r&otilde; r&agrave;ng: H&atilde;y kh&ocirc;ng ngừng tin tưởng v&agrave;o t&igrave;nh y&ecirc;u v&agrave; bản th&acirc;n m&igrave;nh, rồi ch&acirc;n t&igrave;nh sẽ đến.</p>\r\n\r\n<p>V&agrave;, bạn sẽ thấy đ&acirc;u đ&oacute; d&aacute;ng h&igrave;nh của m&igrave;nh những ng&agrave;y ngu ngơ cũ, thật buồn m&agrave; cũng thật đẹp, v&igrave; nếu thật l&agrave; t&igrave;nh y&ecirc;u th&igrave; t&igrave;nh y&ecirc;u lu&ocirc;n lu&ocirc;n đẹp&hellip;</p>', 95000.00, 1, 4, 1, 1, 1, 2, 20, NULL, '2020-06-17 08:30:23', '2020-06-17 08:30:23'),
(18, 'Tôi Có Câu Chuyện, Bạn Có Rượu Không?', 2, 'images/1592382749_vvvvvvvvvvvvv_2_1.jpg.jpg', 'Tôi sẽ viết trong những đêm khuya, viết cho xong một mẩu chuyện vào lúc bạn đã say ngủ.', '<p>T&ocirc;i C&oacute; C&acirc;u Chuyện, Bạn C&oacute; Rượu Kh&ocirc;ng?</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/v/v/vvvvvvvvvvvvv_2_1.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p>Mỗi một thời khắc tr&ecirc;n thế gian n&agrave;y đều c&oacute; một c&acirc;u chuyện đang xảy ra. C&oacute; những c&acirc;u chuyện bạn đ&atilde; từng trải qua, cả những c&acirc;u chuyện m&agrave; bạn chưa từng trải qua, thế nhưng bất kể l&agrave; chuyện g&igrave;, cũng đều đ&aacute;ng gi&aacute; để được ghi nhớ trong l&ograve;ng của mỗi người.</p>\r\n\r\n<p><strong><em>&quot;T&ocirc;i c&oacute; c&acirc;u chuyện, bạn c&oacute; rượu kh&ocirc;ng?&quot;</em></strong>&nbsp;l&agrave; một cuốn s&aacute;ch bạn c&oacute; thể giở ra trong một qu&aacute;n cafe v&agrave;o một buổi chiều n&agrave;o đ&oacute;, hoặc trong một đ&ecirc;m mất ngủ sau khi tan l&agrave;m về. Hai mươi mốt c&acirc;u chuyện b&ecirc;n trong s&aacute;ch l&agrave; 21 x&uacute;c cảm ho&agrave;n to&agrave;n kh&aacute;c biệt nhau: ch&uacute;ng c&oacute; thể khiến cho bạn hạnh ph&uacute;c, c&oacute; thể khiến bạn buồn b&atilde;, đau thương, hoặc cũng c&oacute; thể khiến bạn nảy sinh sự hối tiếc&hellip; Ch&uacute;ng đều l&agrave; những ng&ocirc;i sao đang phi&ecirc;u l&atilde;ng trong biển người bất tận, những đều &ldquo;t&igrave;nh cờ&rdquo; gặp gỡ bạn, mới c&oacute; thể tỏa s&aacute;ng lung linh. Những con người trong những c&acirc;u chuyện ấy c&oacute; thể kh&oacute;c, c&oacute; thể cười vui, c&oacute; thể đau thương, c&oacute; thể l&agrave; đang rơi lệ. Thế nhưng đến cuối con đường, chắc chắn rằng họ sẽ hạnh ph&uacute;c, giống như bạn đ&atilde; nhận được hạnh ph&uacute;c.</p>\r\n\r\n<p>T&ocirc;i biết, thế giới của mỗi người kh&ocirc;ng giống nhau, nhưng thế giới trong những c&acirc;u chuyện n&agrave;y, chắc chắn l&agrave; một phương diện m&agrave; dường như bạn từng biết tới nhưng lại kh&ocirc;ng thể chạm đến. N&oacute; tựa như ch&eacute;n rượu giữa đ&ecirc;m, đ&oacute;a hoa tr&ecirc;n cỏ, b&igrave;nh dị m&agrave; ch&acirc;n thực, đẹp đẽ m&agrave; t&agrave;n khốc. Nếu bạn bằng l&ograve;ng, v&agrave;o một đ&ecirc;m khuya bốn bề thanh vắng, h&atilde;y mời t&ocirc;i một ly, rượu g&igrave; t&ugrave;y &yacute;, để t&ocirc;i kể chuyện cho bạn nghe. Tuy c&acirc;u chuyện c&oacute; thể vụng về, k&iacute;ch động, ấu trĩ, nhưng xin bạn h&atilde;y tin rằng, những điều đ&atilde; xảy ra v&agrave; những điều sắp xảy ra đều sẽ lặp lại, bởi v&igrave; tất cả mọi c&acirc;u chuyện đều chỉ c&oacute; một c&aacute;i kết, nếu c&oacute; tr&ugrave;ng hợp, chỉ đơn thuần l&agrave; t&igrave;nh cờ.</p>\r\n\r\n<p>T&ocirc;i sẽ viết trong những đ&ecirc;m khuya, viết cho xong một mẩu chuyện v&agrave;o l&uacute;c bạn đ&atilde; say ngủ.</p>\r\n\r\n<p>Sau đ&oacute; gửi một c&acirc;u ch&agrave;o buổi s&aacute;ng đến tất cả những th&agrave;nh phố mất ngủ, n&oacute;i c&acirc;u ch&uacute;c ngủ ngon với tất cả những người chưa chợp mắt&hellip;</p>\r\n\r\n<p><em>&quot;Ch&uacute;c cho bạn m&atilde;i m&atilde;i ấm &aacute;p v&agrave; kh&ocirc;ng sợ h&atilde;i bất cứ điều g&igrave;.&quot;</em></p>\r\n\r\n<p><strong><em>&quot;T&ocirc;i c&oacute; c&acirc;u chuyện, bạn c&oacute; rượu kh&ocirc;ng?&quot;</em></strong>&nbsp;- Hy vọng trong rất nhiều những đ&ecirc;m cảm thấy c&ocirc; đơn sau n&agrave;y, khi b&ecirc;n cạnh bạn chỉ c&oacute; rượu, cuốn s&aacute;ch n&agrave;y c&oacute; thể trở th&agrave;nh đồ nhắm cho bạn, kh&ocirc;ng nhiều, kh&ocirc;ng &iacute;t, kh&ocirc;ng say, kh&ocirc;ng về.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/v/v/vvvvvvvvvvvvv_1.png\" style=\"height:981px; width:700px\" /></p>\r\n\r\n<p><em>* Giới thiệu t&aacute;c giả:</em></p>\r\n\r\n<p>Quan Đ&ocirc;ng D&atilde; Kh&aacute;ch &ndash; nh&agrave; văn, bi&ecirc;n kịch, người kể chuyện, thuộc ch&ograve;m sao Ma Kết. Mong muốn d&ugrave;ng c&acirc;u chữ để viết ra những lời bi ail y hợp m&agrave; &iacute;t người biết tới. Mong gặp gỡ một người xa lạ, b&igrave;nh dị c&ugrave;ng l&agrave;m bạn giữa th&agrave;nh phố phồn hoa n&aacute;o nhiệt n&agrave;y.</p>', 129000.00, 1, 4, 1, 1, 1, 2, 24, NULL, '2020-06-17 08:32:29', '2020-06-17 08:32:29'),
(19, 'Chiết Chi', 3, 'images/1592383032_b_a-chi_t-chi.jpg.jpg', '“Lục Tu Văn nói, y muốn tìm một người, mà y là độc nhất vô nhị trong mắt người đó.  … đến tận lúc chết y vẫn không tìm ra”', '<p><strong>Chiết Chi</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/b/_/b_a-chi_t-chi.jpg\" style=\"height:600px; width:600px\" /></strong></p>\r\n\r\n<p><strong>&ldquo;Lục Tu Văn n&oacute;i, y muốn t&igrave;m một người, m&agrave; y l&agrave; độc nhất v&ocirc; nhị trong mắt người đ&oacute;.</strong></p>\r\n\r\n<p><strong>&hellip; đến tận l&uacute;c chết y vẫn kh&ocirc;ng t&igrave;m ra&rdquo;</strong></p>\r\n\r\n<p>Lục Tu Văn từ nhỏ đ&atilde; l&agrave; một thi&ecirc;n t&agrave;i v&otilde; thuật, được gi&aacute;o chủ Ma Gi&aacute;o l&uacute;c bấy giờ v&ocirc; c&ugrave;ng y&ecirc;u th&iacute;ch, c&ograve;n được định sẵn sẽ l&agrave; người kế nghiệp sau n&agrave;y. Nhưng v&igrave; t&iacute;nh c&aacute;ch ki&ecirc;u ngạo, ngang t&agrave;ng lại độc &aacute;c, th&acirc;m trầm n&ecirc;n mọi người xung quanh đều gh&eacute;t y. Một trong số đ&oacute; ch&iacute;nh l&agrave; Đo&agrave;n Lăng.</p>\r\n\r\n<p>Đo&agrave;n Lăng sinh ra trong một danh m&ocirc;n ch&iacute;nh ph&aacute;i, tuổi c&ograve;n nhỏ đ&atilde; bị bắt c&oacute;c đến Ma Gi&aacute;o, chịu số phận l&agrave;m sư đệ của y&ecirc;u nghiệt Lục Tu Văn, bị h&agrave;nh đến mức mỗi lần nhắc tới c&aacute;i t&ecirc;n n&agrave;y đều hận nghiến răng nghiến lợi. Người duy nhất đối xử tốt với hắn trong những năm th&aacute;ng như địa ngục ấy chỉ c&oacute; Lục Tu Ng&ocirc;n &ndash; đệ đệ sinh đ&ocirc;i của Lục Tu Văn.</p>\r\n\r\n<p>Cũng từ gi&acirc;y ph&uacute;t đ&oacute;, cuộc t&igrave;nh đầy &acirc;n o&aacute;n th&ugrave; hận đan xen giữa hư v&agrave; thực bắt đầu giữa ba con người Lục Tu Văn &ndash; Đo&agrave;n Lăng &ndash; Lục Tu Ng&ocirc;n. B&iacute; mật 10 năm trước được giấu k&iacute;n, 10 năm sau gặp lại, vật đổi sao dời, một kẻ th&acirc;n bại danh liệt m&igrave;nh đầy thương t&iacute;ch, một người tho&aacute;t ra trở th&agrave;nh đại hiệp được người đời ngưỡng mộ.</p>\r\n\r\n<p><em>&ldquo;B&igrave;nh thường hắn lu&ocirc;n nhận ra sự kh&aacute;c biệt giữa huynh đệ họ, nhưng lại nhận nhầm v&agrave;o đ&uacute;ng khoảnh khắc quan trọng nhất. Chỉ v&igrave; một sai lầm đ&oacute;, hắn kh&ocirc;ng những mất mười năm cuồng si, lại c&ograve;n tận mắt nh&igrave;n người y&ecirc;u thương chết trong l&ograve;ng, m&agrave; kh&ocirc;ng hề hay biết.&rdquo;</em></p>\r\n\r\n<p>10 năm gặp lại, thứ Lục Tu Văn nhận được l&agrave; &aacute;nh mắt gh&eacute;t bỏ, hận th&ugrave; của Đo&agrave;n Lăng.</p>\r\n\r\n<p>10 năm đ&aacute;nh đổi, th&acirc;n bại danh liệt chẳng đợi nổi ng&agrave;y nắm hoa đ&agrave;o rơi&hellip;</p>\r\n\r\n<p>Chiết Chi &ndash; Cuốn tiểu thuyết với nhiều cung bậc cảm x&uacute;c từ bi đến h&agrave;i, cuối c&ugrave;ng l&agrave; thỏa m&atilde;n bằng một c&aacute;i kết trọn vẹn. L&agrave; cuốn s&aacute;ch ti&ecirc;u biểu cho phong c&aacute;ch cổ trang của Khốn Ỷ Nguy L&acirc;u &ndash; t&aacute;c giả được đ&ocirc;ng đảo bạn đọc y&ecirc;u th&iacute;ch v&agrave; đ&oacute;n nhận.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/b/_/b_a_chi_t_chi.jpg\" style=\"height:700px; width:487px\" /></p>', 139000.00, 1, 4, 1, 1, 1, 2, 20, NULL, '2020-06-17 08:37:12', '2020-06-17 08:37:12'),
(20, 'Hệ Thống Tự Cứu Của Nhân Vật Phản Diện', 3, 'images/1592383137_bia-mem_he-thong-tap-2.jpg.jpg', 'Thẩm Viên đã từng bước sửa đổi cốt truyện gốc, khiến câu chuyện có những bước chuyển ngoặt bất ngờ đầy thú vị…', '<p><strong>Hệ Thống Tự Cứu Của Nh&acirc;n Vật Phản Diện - Tập 2</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/b/i/bia-mem_he-thong-tap-2.jpg\" style=\"height:600px; width:600px\" /></strong></p>\r\n\r\n<p>V&igrave; một c&acirc;u mắng chửi t&aacute;c giả v&agrave; cuốn tiểu thuyết sắc hiệp đang đọc, Thẩm Vi&ecirc;n bị cuốn v&agrave;o trong cuốn truyện đ&oacute;, sống trong th&acirc;n x&aacute;c của Thẩm Thanh Thu - nh&acirc;n vật phản diện cặn b&atilde; chuy&ecirc;n h&atilde;m hại nam ch&iacute;nh Lạc Băng H&agrave;.</p>\r\n\r\n<p>Vốn theo nguy&ecirc;n t&aacute;c, Thẩm Thanh Thu sau c&ugrave;ng sẽ bị Lạc Băng H&agrave; xử bằng cực h&igrave;nh! Song giờ đ&acirc;y, hắn lại phải suốt ng&agrave;y chắn đao cản thương, xả th&acirc;n cứu y!</p>\r\n\r\n<p>Thẩm Vi&ecirc;n đ&atilde; từng bước sửa đổi cốt truyện gốc, khiến c&acirc;u chuyện c&oacute; những bước chuyển ngoặt bất ngờ đầy th&uacute; vị&hellip;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/b/i/bia-mem_he-thong-tap-2_1.jpg\" style=\"height:1062px; width:700px\" /></p>\r\n\r\n<p><strong>Đ&ocirc;i n&eacute;t t&aacute;c giả</strong></p>\r\n\r\n<p>Mặc Hương Đồng Khứu, t&aacute;c giả của trang văn học mạng Tấn Giang, được rất nhiều độc giả biết tới qua cuốn tiểu thuyết&nbsp;<em>Ma đạo tổ sư</em>. Hai tiểu thuyết kh&aacute;c l&agrave;&nbsp;<em>Hệ thống tự cứu của nh&acirc;n vật phản diện</em>&nbsp;v&agrave;&nbsp;<em>Thi&ecirc;n quan tứ ph&uacute;c</em><em>&nbsp;(tạm dịch)</em>&nbsp;cũng đ&aacute;nh gi&aacute; cao tr&ecirc;n c&aacute;c trang văn học.&nbsp;</p>\r\n\r\n<p>C&aacute;c t&aacute;c phẩm của Mặc Hương Đồng Khứu được bạn đọc y&ecirc;u th&iacute;ch bởi t&igrave;nh tiết chặt chẽ, c&acirc;u chuyện mới lạ v&agrave; mang gi&aacute; trị nh&acirc;n văn s&acirc;u sắc, c&ugrave;ng phong c&aacute;ch h&agrave;i hước đặc trưng.&nbsp;</p>', 58700.00, 1, 4, 1, 1, 1, 2, 12, NULL, '2020-06-17 08:38:57', '2020-06-17 08:38:57'),
(21, 'Chờ Hoa Nguyên Soái Nở', 3, 'images/1592383236_bia-1_cho-hoa-nguyen-soai-no.jpg.jpg', 'Ai bảo cây cối không có tình yêu?', '<p><strong>Chờ Hoa Nguy&ecirc;n So&aacute;i Nở</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/b/i/bia-1_cho-hoa-nguyen-soai-no.jpg\" style=\"height:600px; width:600px\" /></strong></p>\r\n\r\n<p>Ai bảo c&acirc;y cối kh&ocirc;ng c&oacute; t&igrave;nh y&ecirc;u?</p>\r\n\r\n<p>H&atilde;y tưởng tượng bạn gặp một người ngo&agrave;i h&agrave;nh tinh v&agrave; anh ấy đến từ h&agrave;nh tinh thực vật. Anh ấy thể hiện t&igrave;nh cảm bằng c&aacute;ch ng&agrave;y ng&agrave;y gửi tặng bạn một b&ocirc;ng hoa, lại c&ograve;n xin hạt giống của bạn để trồng nữa. Thế l&agrave; thế n&agrave;o nhỉ? C&acirc;u trả lời nằm trong những t&igrave;nh huống h&agrave;i hước &ocirc;ng n&oacute;i g&agrave; b&agrave; n&oacute;i vịt của Hồ Bất Th&iacute;ch v&agrave; anh bạn trai người ngo&agrave;i h&agrave;nh tinh của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/h/chohoanguyensoaino_chinhsua_toai.jpg\" style=\"height:664px; width:700px\" /></p>\r\n\r\n<p><strong>Đ&ocirc;i n&eacute;t t&aacute;c giả</strong></p>\r\n\r\n<p>Nguyệt Hạ Tang, giới t&iacute;nh nữ, một t&aacute;c giả trẻ của mạng văn học Tấn Giang. Từng c&oacute; độc giả nhận x&eacute;t, &ldquo;Theo d&otilde;i c&ocirc; từ rất sớm, mỗi một t&aacute;c phẩm của c&ocirc; đều kh&aacute; hay v&agrave; hợp gout của t&ocirc;i, mỗi một lần đọc xong một cuốn truyện đều c&oacute; cảm gi&aacute;c chưa đ&atilde; ghiền g&igrave; cả&rdquo;.</p>\r\n\r\n<p>C&aacute;c t&aacute;c phẩm<em>: B&aacute; vương (tạm dịch), An tức nhật (tạm dịch), Kh&ocirc;ng c&oacute; kiếp sau (tạm dịch)&hellip;</em></p>', 70000.00, 1, 5, 1, 1, 1, 2, 23, NULL, '2020-06-17 08:40:36', '2020-06-17 08:40:36'),
(22, 'Góc Phố', 3, 'images/1592383338_gocpho_bia1_2.jpg.jpg', 'Bình lặng, êm ả, pha chút nồng ấm của hương cà phê và thanh mát của trà với trái lê, GÓC PHỐ là những lát cắt dịu dàng qua hai năm từ người lạ thành người thân của Ánh Lý và một anh chủ quán.', '<p>G&oacute;c Phố</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/g/o/gocpho_bia1_1_1.jpg\" style=\"height:1064px; width:774px\" /></p>\r\n\r\n<p>B&igrave;nh lặng, &ecirc;m ả, pha ch&uacute;t nồng ấm của hương c&agrave; ph&ecirc; v&agrave; thanh m&aacute;t của tr&agrave; với tr&aacute;i l&ecirc;, G&Oacute;C PHỐ l&agrave; những l&aacute;t cắt dịu d&agrave;ng qua hai năm từ người lạ th&agrave;nh người th&acirc;n của &Aacute;nh L&yacute; v&agrave; một anh chủ qu&aacute;n.</p>\r\n\r\n<p>Chiều Cao H&ugrave;ng h&ocirc;m ấy, &Aacute;nh L&yacute; trong l&ograve;ng b&iacute; bức đ&atilde; ch&acirc;n bước đưa ch&acirc;n cho đến khi bất thần ngẩng mặt l&ecirc;n v&agrave; nh&igrave;n thấy biển hiệu G&oacute;c Phố. Cậu v&agrave;o qu&aacute;n c&agrave; ph&ecirc; nhưng gọi tr&agrave;, gặp một người để uống nước trả tiền nhưng cuối c&ugrave;ng lại được người ta nấu cho cả bữa cơm, thậm ch&iacute; cho ở cả nh&agrave; kh&ocirc;ng thu ph&iacute;.</p>\r\n\r\n<p>Nếu c&oacute; những t&igrave;nh y&ecirc;u chết đi sống lại để vượt qua chướng ngại, th&igrave; cũng c&oacute; những t&igrave;nh y&ecirc;u như ở G&oacute;c Phố, d&ugrave;ng sự &ocirc;n tồn v&agrave; lắng đọng đến tận t&acirc;m can để khắc phục kh&oacute; khăn. B&igrave;nh y&ecirc;n qua ng&agrave;y nắng, b&igrave;nh y&ecirc;n qua ng&agrave;y mưa, b&igrave;nh y&ecirc;n lựa chọn xa nhau để được b&igrave;nh y&ecirc;n b&ecirc;n nhau m&atilde;i m&atilde;i, nơi G&oacute;c Phố dịu d&agrave;ng v&agrave; biết đợi chờ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/flashmagazine/images/page_images/goc_pho___tang_kem_bookmark/2020_03_31_17_00_38_3.JPG\" style=\"height:1027px; width:700px\" /></p>', 67000.00, 1, 3, 1, 1, 1, 2, 4, NULL, '2020-06-17 08:42:18', '2020-06-17 08:42:18'),
(23, 'Nghệ Thuật Bán Hàng Bậc Cao', 4, 'images/1592383627_nghethuatbanhangbaccao-16x24-xp_bia-1.jpg.jpg', 'Mục tiêu của một thương vụ là đảm bảo khách hàng nhận được giá trị tương xứng', '<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/n/g/nghethuatbanhangbaccao-16x24-xp_bia-1.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p>Mục ti&ecirc;u của một thương vụ l&agrave; đảm bảo kh&aacute;ch h&agrave;ng nhận được gi&aacute; trị tương xứng, nhưng nếu bạn mang đến cho kh&aacute;ch h&agrave;ng những gi&aacute; trị c&ograve;n cao hơn gi&aacute; trị m&agrave; lẽ ra họ sẽ nhận được th&igrave; kh&ocirc;ng những bạn đ&atilde; c&oacute; một thương vụ th&agrave;nh c&ocirc;ng m&agrave; bạn c&ograve;n c&oacute; th&ecirc;m một kh&aacute;ch h&agrave;ng sẵn l&ograve;ng gi&uacute;p bạn c&oacute; th&ecirc;m nhiều kh&aacute;ch h&agrave;ng kh&aacute;c nữa.</p>\r\n\r\n<p>Triết l&yacute; chứa đựng trong cuốn s&aacute;ch Nghệ Thuật B&aacute;n H&agrave;ng Bậc Cao thật đơn giản: &ldquo;bạn c&oacute; thể c&oacute; được những tất cả mọi thứ trong cuộc sống nếu bạn biết gi&uacute;p người kh&aacute;c đạt được điều họ muốn&rdquo;, thậm ch&iacute; c&ograve;n đ&uacute;ng đắn v&agrave; cần thiết hơn trong cuộc sống hiện nay so với thời kỳ khi cuốn Nghệ Thuật B&aacute;n H&agrave;ng Bậc Cao được xuất bản lần đầu</p>\r\n\r\n<p>Trong cuốn s&aacute;ch kinh doanh n&agrave;y, bạn sẽ c&oacute; cơ hội l&agrave;m quen với nhiều người b&aacute;n h&agrave;ng sẵn s&agrave;ng từ bỏ một thương vụ bởi họ biết rằng thương vụ đ&oacute; kh&ocirc;ng mang lại lợi &iacute;ch tốt nhất cho kh&aacute;ch h&agrave;ng của m&igrave;nh. Khi đ&oacute;, b&aacute;n h&agrave;ng trở n&ecirc;n giống như thi đấu thể thao, nh&agrave; v&ocirc; địch quần vợt phải biết đ&aacute;nh b&oacute;ng sao cho anh ta c&oacute; thể đ&aacute;nh c&uacute; tiếp theo hiệu quả hơn, hay c&aacute;c tay g&ocirc;n kỳ cựu cũng vậy. Nếu nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng kh&ocirc;ng quan t&acirc;m đến việc x&acirc;y dựng v&agrave; duy tr&igrave; mối quan hệ tốt đẹp với kh&aacute;ch h&agrave;ng m&agrave; chỉ chăm chăm kiếm tiền từ t&uacute;i người kh&aacute;c th&igrave; đảm bảo rằng họ sẽ nhanh ch&oacute;ng bị đ&agrave;o thải khỏi nghề n&agrave;y.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/d/o/doc_thu_nghethuatbanhangbaccao16x24-8.jpg\" style=\"height:992px; width:600px\" /></p>\r\n\r\n<p>Khi đọc cuốn s&aacute;ch Nghệ Thuật B&aacute;n H&agrave;ng Bậc Cao, c&aacute;c bạn cần linh động &aacute;p dụng từng nguy&ecirc;n tắc hay nghiều nguy&ecirc;n tắc c&ugrave;ng l&uacute;c để ph&ugrave; hợp với sản phẩm của bạn cũng như y&ecirc;u cầu của kh&aacute;ch h&agrave;ng. Cuốn s&aacute;ch bao gồm rất nhiều v&iacute; dụ minh hoạ v&agrave; những c&acirc;u chuyện thực tế, được viết theo lối kể chuyện tự nhi&ecirc;n, do vậy bạn cần phải chủ động học hỏi - chứ kh&ocirc;ng chỉ đơn giản chỉ đọc n&oacute; m&agrave; th&ocirc;i. Một cuốn sổ tay nhỏ sẽ rất hữu &iacute;ch trong việc gi&uacute;p bạn ghi lại những &yacute; tưởng quan trọng. Bạn h&atilde;y mạnh dạn đ&aacute;nh dấu v&agrave;o s&aacute;ch những c&acirc;u từ cần ghi nhớ v&agrave; đừng lo lắng l&agrave; n&oacute; sẽ bị cũ hay xấu đi</p>\r\n\r\n<p>N&ecirc;n đọc quyển Nghệ Thuật B&aacute;n H&agrave;ng Bậc Cao n&agrave;y như thế n&agrave;o? nội dung cuốn s&aacute;ch được viết theo lối kể chuyện, kết hợp với rất nhiều đoạn hội thoại v&agrave; những mẫu chuyện vui. Hơn 700 c&acirc;u hỏi v&agrave; 250 chiến thuật kinh doanh, chi&ecirc;u thức cũng như c&aacute;c c&aacute;ch thức kết th&uacute;c một thương vụ được g&oacute;i gọn trong gần 100 c&acirc;u chuyện, b&agrave;i ph&acirc;n t&iacute;ch v&agrave; nhiều c&acirc;u chuyện kh&aacute;c nhau sẽ đem đến cho bạn cảm gi&aacute;c th&uacute; vị khi đọc.</p>\r\n\r\n<p>- &ldquo;Nếu như chỉ gọi Zig Ziglar l&agrave; một người b&aacute;n h&agrave;ng si&ecirc;u hạng th&igrave; vẫn chưa đủ. Cuốn s&aacute;ch kinh tế n&agrave;y l&agrave; tập hợp những hiểu biết về nghệ thuật b&aacute;n h&agrave;ng m&agrave; &ocirc;ng đ&atilde; d&agrave;y c&ocirc;ng sưu tầm. V&igrave; vậy, cuốn s&aacute;ch n&agrave;y rất đ&aacute;ng để c&aacute;c bạn t&igrave;m đọc&rdquo; &ndash; Richard M. DeVos, đồng s&aacute;ng lập Anway, Chủ tịch v&agrave; chủ sở hữu của NBA Orlando Magic.</p>\r\n\r\n<p>Trong lần t&aacute;i bản n&agrave;y, cuốn s&aacute;ch Nghệ Thuật B&aacute;n H&agrave;ng Bậc Cao đ&atilde; được đổi sang khổ lớn, b&igrave;a mềm với phương c&aacute;ch trang trọng hơn. Cuốn s&aacute;ch Nghệ Thuật B&aacute;n H&agrave;ng Bậc Cao sẽ tiếp tục l&agrave; cuốn cẩm nang kh&ocirc;ng thể thiếu với những ai đang hoạt động tranh lĩnh vực kinh doanh, b&aacute;n h&agrave;ng.</p>', 80000.00, 1, 5, 1, 1, 1, 2, 12, NULL, '2020-06-17 08:47:07', '2020-06-17 08:47:07'),
(24, 'Con Đường Trở Thành Freelancer Writer', 4, 'images/1592383782_image_195509_1_40339.jpg.jpg', 'CON ĐƯỜNG TRỞ THÀNH FREELANCER WRITER – TÔI ĐÃ KIẾM 800.000.000 MỘT NĂM TỪ VIỆC VIẾT LÁCH NHƯ THẾ NÀO?', '<p><strong>CON ĐƯỜNG TRỞ TH&Agrave;NH FREELANCER WRITER &ndash; T&Ocirc;I Đ&Atilde; KIẾM 800.000.000 MỘT NĂM TỪ VIỆC VIẾT L&Aacute;CH NHƯ THẾ N&Agrave;O?</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/0/101114322_244830213468396_6545190818032910336_n.jpg\" style=\"height:600px; width:600px\" /></strong></p>\r\n\r\n<p>TẠI SAO VIẾT HAY NHƯNG VẪN KH&Ocirc;NG THỂ SỐNG VỚI NGHỀ FREELANCE WRITER?</p>\r\n\r\n<p>L&agrave;m thế n&agrave;o để c&oacute; thể bắt đầu trở th&agrave;nh Freelance Writer?</p>\r\n\r\n<p>L&agrave;m thế n&agrave;o để t&igrave;m được kh&aacute;ch h&agrave;ng?</p>\r\n\r\n<p>L&agrave;m thế n&agrave;o c&oacute; thể đảm bảo một nguồn thu nhập ổn định?</p>\r\n\r\n<p>T&iacute;nh nhuận b&uacute;t/th&ugrave; lao như thế n&agrave;o cho ph&ugrave; hợp?</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/0/101832039_953817311755172_6388880383852675072_n.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p>L&agrave;m thế n&agrave;o để biến c&ocirc;ng việc n&agrave;y trở th&agrave;nh nghề nghiệp c&oacute; thể nu&ocirc;i sống bản th&acirc;n hay gia đ&igrave;nh thay v&igrave; những c&ocirc;ng việc văn ph&ograve;ng cố định?</p>\r\n\r\n<p>Hiểu được vấn đề đ&oacute;, RIO Book phối hợp c&ugrave;ng t&aacute;c giả Linh Phan với hơn 15 năm học tập v&agrave; l&agrave;m việc trong ng&agrave;nh Truyền th&ocirc;ng tiếp thị, hiện đang hoạt động chuy&ecirc;n s&acirc;u trong lĩnh vực T&acirc;m l&yacute; học trẻ em, ra mắt cuốn s&aacute;ch&nbsp;<strong>&ldquo;Con đường trở th&agrave;nh Freelance Writer - T&ocirc;i đ&atilde; kiếm 800.000.000 một năm như thế n&agrave;o?&rdquo;</strong>:</p>\r\n\r\n<p>Lộ tr&igrave;nh hướng dẫn đầy đủ từ cơ bản đến chuy&ecirc;n nghiệp cho Freelance Writer với 20 năm t&iacute;ch lũy của t&aacute;c giả trong nghề viết.</p>\r\n\r\n<p>Trải nghiệm từ một Freelance Writer viết cho Freelance Writer với văn phong dễ đọc, dễ ứng dụng v&agrave; giải quyết ch&iacute;nh x&aacute;c những vấn đề m&agrave; người đọc gặp phải.</p>\r\n\r\n<p>40 c&aacute;ch kiếm tiền từ Viết l&aacute;ch tự do</p>\r\n\r\n<p>10 chiến lược t&igrave;m kiếm kh&aacute;ch h&agrave;ng ổn định cho người mới bắt đầu</p>\r\n\r\n<p>v&agrave; nhiều hơn thế..</p>\r\n\r\n<p>Trong bối cảnh đại dịch 2020, con người đ&atilde; dần cởi mở hơn với m&ocirc; h&igrave;nh l&agrave;m việc từ xa v&agrave; ghi nhận những điểm t&iacute;ch cực. M&ocirc; h&igrave;nh l&agrave;m việc văn ph&ograve;ng từ l&acirc;u đ&atilde; kh&ocirc;ng c&ograve;n l&agrave; ưu ti&ecirc;n h&agrave;ng đầu của thế hệ trẻ v&agrave; những lựa chọn kinh doanh linh hoạt như Nghề viết tự do đang chứng minh những ưu thế nổi trội bắt kịp xu hướng thời đại mới.</p>\r\n\r\n<p>Nếu bạn l&agrave; một người đam m&ecirc; viết v&agrave; muốn sống với nghề viết,&nbsp;<strong>&ldquo;Con đường trở th&agrave;nh Freelance Writer - T&ocirc;i đ&atilde; kiếm 800.000.000 một năm như thế n&agrave;o?&rdquo;</strong>&nbsp;l&agrave; cuốn s&aacute;ch d&agrave;nh ri&ecirc;ng cho bạn.</p>', 120000.00, 1, 7, 1, 1, 1, 2, 12, NULL, '2020-06-17 08:49:42', '2020-06-17 08:49:42'),
(25, 'Người Bán Hàng Vĩ Đại Nhất Thế Giới', 4, 'images/1592383880_image_188445.jpg.jpg', 'Người Bán Hàng Vĩ Đại Nhất Thế Giới của Og Mandino là một hành trình dài về câu chuyện của Hafid, một cậu bé chăn lạc đà nghèo, ở Jerusalem cổ đại', '<p><strong>Người B&aacute;n H&agrave;ng Vĩ Đại Nhất Thế Giới Tập 1</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/n/g/nguoi-ban-hang-vi-dai-nhat-the-gioi-tap-1.jpg\" style=\"height:427px; width:640px\" /></strong></p>\r\n\r\n<p><strong>Người B&aacute;n H&agrave;ng Vĩ Đại Nhất Thế Giới</strong>&nbsp;của Og Mandino l&agrave; một h&agrave;nh tr&igrave;nh d&agrave;i về c&acirc;u chuyện của Hafid, một cậu b&eacute; chăn lạc đ&agrave; ngh&egrave;o, ở Jerusalem cổ đại. Người thanh ni&ecirc;n đ&atilde; học được từ một thương nh&acirc;n gi&agrave;u c&oacute; v&agrave; th&agrave;nh c&ocirc;ng về những b&iacute; quyết để trở th&agrave;nh một người b&aacute;n h&agrave;ng vĩ đại.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/q/u/quote_nguoi_ban_hang_vi_dai_1.jpg\" style=\"height:338px; width:600px\" /></p>\r\n\r\n<p>Cuốn s&aacute;ch n&agrave;y được g&oacute;i gọn trong mười cuốn da d&ecirc; gi&uacute;p bạn trở th&agrave;nh một Người b&aacute;n h&agrave;ng vĩ đại nhất thế giới, tuy nhi&ecirc;n n&oacute; kh&ocirc;ng chỉ dạy bạn c&aacute;ch&nbsp;&ldquo;b&aacute;n h&agrave;ng&rdquo;, m&agrave; n&oacute; c&ograve;n l&agrave; một cuốn s&aacute;ch dạy bạn l&agrave;m người, gi&uacute;p bạn trở th&agrave;nh người&nbsp;&ldquo;vĩ đại nhất&rdquo;&nbsp;trong lĩnh vực m&agrave; m&igrave;nh đ&atilde; chọn.</p>\r\n\r\n<p>Nội dung cuốn s&aacute;ch n&agrave;y được đ&uacute;c r&uacute;t từ những kinh nghiệm xương m&aacute;u m&agrave; nhờ đ&oacute; n&oacute; đ&atilde; biến c&aacute;c ước mơ của cổ nh&acirc;n th&agrave;nh hiện thực chứ kh&ocirc;ng phải do một c&aacute; nh&acirc;n n&agrave;o đ&oacute; tưởng tượng ra trong khi lại chưa được thực nghiệm kiểm chứng. Mỗi người đều c&oacute; quyền tự do lựa chọn con đường để thực hiện giấc mơ của m&igrave;nh tuỳ thuận với nhận thức ri&ecirc;ng của họ.&nbsp;</p>\r\n\r\n<p>Cho đến nay, &ldquo;Người b&aacute;n h&agrave;ng vĩ đại nhất Thế giới&rdquo;&nbsp;được dịch ra 25 ng&ocirc;n ngữ v&agrave; đ&atilde; b&aacute;n ra hơn 50 triệu bản, trở th&agrave;nh cuốn s&aacute;ch b&aacute;n chạy nhất Thế giới.</p>\r\n\r\n<p><strong>&quot;Người B&aacute;n H&agrave;ng Vĩ Đại Nhất Thế Giới&quot;</strong>&nbsp;c&oacute; một cốt truyện rất độc đ&aacute;o v&agrave; th&uacute; vị c&ugrave;ng văn phong t&agrave;i t&igrave;nh v&agrave; cuốn h&uacute;t. Mỗi người trong ch&uacute;ng ta đều l&agrave; một nh&agrave; kinh doanh, d&ugrave; ta thuộc ng&agrave;nh nghề n&agrave;o. Bởi v&igrave; quan trọng nhất l&agrave; ta phải tiếp thị được bản th&acirc;n m&igrave;nh cho ch&iacute;nh m&igrave;nh, chỉ khi đ&oacute; ta mới t&igrave;m được hạnh ph&uacute;c v&agrave; sự b&igrave;nh y&ecirc;n trong t&acirc;m hồn. H&atilde;y đọc thật cẩn thận, tiếp thu v&agrave; lưu từng chi tiết trong cuốn s&aacute;ch n&agrave;y, v&agrave; n&oacute; sẽ gi&uacute;p bất cứ người n&agrave;o cũng c&oacute; thể trở th&agrave;nh nh&agrave; kinh doanh t&agrave;i ba nhất.&nbsp;</p>\r\n\r\n<p><strong>Người nổi tiếng n&oacute;i g&igrave; về cuốn s&aacute;ch n&agrave;y:</strong></p>\r\n\r\n<p><em>&nbsp;&ldquo;Người b&aacute;n h&agrave;ng vĩ đại nhất thế giới l&agrave; một trong những cuốn s&aacute;ch truyền cảm hứng cao nhất m&agrave; t&ocirc;i từng đọc. T&ocirc;i c&oacute; thể hiểu tại sao n&oacute; được đ&oacute;n nhận nhiều như vậy.&rdquo;</em>&nbsp;-&nbsp;<strong>Norman Vincent Peale,</strong>một gi&aacute;o sĩ v&agrave; t&aacute;c giả người Mỹ - cha đẻ của tư duy t&iacute;ch cực</p>\r\n\r\n<p><em>&ldquo;T&ocirc;i đ&atilde; đọc hầu hết tất cả c&aacute;c cuốn s&aacute;ch viết về kỹ năng b&aacute;n h&agrave;ng, nhưng t&ocirc;i nghĩ rằng Og Mandino đ&atilde; thật sự tuyệt vời khi viết Người b&aacute;n h&agrave;ng vĩ đại nhất thế giới. Kh&ocirc;ng một ai tu&acirc;n theo nguy&ecirc;n tắc n&agrave;y m&agrave; thất bại v&agrave; sẽ kh&ocirc;ng ai trở n&ecirc;n thực sự tuyệt vời nếu chưa đọc qua cuốn s&aacute;ch n&agrave;y; t&aacute;c giả đ&atilde; kể những c&acirc;u chuyện thực tiễn nhiều hơn l&agrave; tr&igrave;nh b&agrave;y khi n&oacute;i về c&aacute;c nguy&ecirc;n tắc v&agrave; &ocirc;ng đ&atilde; viết ch&uacute;ng th&agrave;nh một trong những c&acirc;u chuyện hấp dẫn nhất m&agrave; t&ocirc;i từng đọc.&rdquo;</em>&nbsp;<em>&ndash;&nbsp;</em><strong>Paul J. Meyer</strong><em>,&nbsp;</em>người s&aacute;ng lập Success Motivation Institute (Học viện Động cơ th&agrave;nh c&ocirc;ng)&nbsp;</p>\r\n\r\n<p><em>&ldquo;Doanh nh&acirc;n Ryan Waggoner, một nh&agrave; tư vấn chiến lược kinh doanh, ph&aacute;t triển ứng dụng Mobile nổi tiếng, sống tại New York, Mỹ cho biết, &ocirc;ng r&egrave;n luyện nhiều t&iacute;nh c&aacute;ch bằng d&ograve;ng s&aacute;ch self-help. Cuốn s&aacute;ch m&agrave; vị doanh nh&acirc;n ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin tr&ecirc;n ấn tượng Người B&aacute;n H&agrave;ng Vĩ Đại Nhất Thế Giới.&nbsp;</em><em>&Ocirc;ng chia sẻ: &quot;T&ocirc;i bắt đầu đọc &#39;Người b&aacute;n h&agrave;ng vĩ đại nhất thế giới&#39; v&agra', 100000.00, 1, 6, 1, 1, 1, 2, 12, NULL, '2020-06-17 08:51:20', '2020-06-17 08:51:20');
INSERT INTO `product_details` (`id`, `name`, `product_id`, `cover`, `review`, `detail`, `price`, `status`, `amount`, `author_id`, `language_id`, `publisher_id`, `user_id`, `discount`, `deleted_at`, `created_at`, `updated_at`) VALUES
(26, 'Hiệu Ứng Chim Mồi (Tập 2)', 4, 'images/1592538460_image_188786.jpg.jpg', 'Người ta hay coi lý thuyết và kinh nghiệm thực tiễn là hai thứ hoàn toàn đối nghịch nhau.', '<p>Người ta hay coi l&yacute; thuyết v&agrave; kinh nghiệm thực tiễn l&agrave; hai thứ ho&agrave;n to&agrave;n đối nghịch nhau. Người đi theo hướng l&yacute; thuyết thường coi kiến thức kinh nghiệm l&agrave; thiếu bền vững, c&ograve;n kẻ đi theo hướng thực h&agrave;nh thường gọi s&aacute;ch vở l&agrave; l&yacute; thuyết su&ocirc;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/i/m/image_188786.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p>Thế nhưng, kể từ năm 2014, sau khi bắt đầu vừa tham gia nghi&ecirc;n cứu l&yacute; thuyết bậc sau đại học, vừa tham gia b&aacute;n h&agrave;ng thực tiễn, ch&uacute;ng t&ocirc;i ph&aacute;t hiện ra rằng l&yacute; thuyết v&agrave; thực tiễn lu&ocirc;n song h&agrave;nh, gắn b&oacute; đến độ kh&ocirc;ng thể t&aacute;ch rời: Người nắm l&yacute; thuyết nhưng kh&ocirc;ng thực h&agrave;nh sẽ kh&ocirc;ng thể biết những kiến thức của m&igrave;nh liệu c&oacute; thể ứng dụng được trong thực tế hay kh&ocirc;ng; ngược lại, người thực h&agrave;nh nhưng kh&ocirc;ng c&oacute; l&yacute; thuyết chống lưng sẽ kh&ocirc;ng thể biết rằng liệu th&agrave;nh c&ocirc;ng của m&igrave;nh c&oacute; cơ sở hay kh&ocirc;ng, hay chỉ l&agrave; may mắn v&agrave; kh&ocirc;ng thể &aacute;p dụng cho lần tiếp theo.</p>\r\n\r\n<p>Do vậy, quyển s&aacute;ch được cấu tr&uacute;c th&agrave;nh c&aacute;c phần nhỏ với l&yacute; thuyết v&agrave; ứng dụng đan xen. Mỗi hiện tượng hay kỹ thuật b&aacute;n h&agrave;ng đều được giải th&iacute;ch bằng l&yacute; thuyết, v&agrave; mỗi l&yacute; thuyết đều c&oacute; c&aacute;c ứng dụng minh họa, nhằm gi&uacute;p c&aacute;c bạn độc giả c&oacute; thể c&oacute; kiến thức vững chắc v&agrave; linh hoạt.<br />\r\nMột số thủ thuật ứng dụng l&agrave; kh&ocirc;ng ch&iacute;nh thống v&agrave; c&oacute; thể kh&ocirc;ng đ&uacute;ng chuẩn mực về đạo đức kinh doanh. Tuy nhi&ecirc;n, ch&uacute;ng t&ocirc;i vẫn sẽ tr&igrave;nh b&agrave;y để c&aacute;c bạn độc giả c&oacute; thể n&eacute; tr&aacute;nh khi gặp phải &ndash; dưới vai tr&ograve; người mua h&agrave;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/flashmagazine/images/page_images/hieu_ung_chim_moi_tap_2/2019_11_14_14_34_11_1.jpg\" style=\"height:856px; width:600px\" /></p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i viết s&aacute;ch n&agrave;y kh&ocirc;ng nhằm biến bạn th&agrave;nh gi&aacute;o sư, m&agrave; nhằm k&iacute;ch th&iacute;ch sự hứng th&uacute; của bạn với t&acirc;m l&yacute; học, một ng&agrave;nh khoa học c&oacute; qu&aacute; nhiều ứng dụng v&agrave;o kinh doanh. Do vậy, c&aacute;c kiến thức phức tạp, chi tiết hơn mang t&iacute;nh h&agrave;n l&acirc;m được đưa v&agrave;o c&aacute;c phần phụ lục để phục vụ c&aacute;c bạn c&oacute; nhu cầu t&igrave;m hiểu để ứng dụng s&acirc;u. Nhờ đ&oacute;, c&aacute;c kiến thức ở phần nội dung ch&iacute;nh sẽ vẫn giữ được sự đơn giản, dễ hiểu v&agrave; hấp dẫn của ri&ecirc;ng m&igrave;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/flashmagazine/images/page_images/hieu_ung_chim_moi_tap_2/2019_11_14_14_34_11_2.jpg\" style=\"height:888px; width:600px\" /></p>\r\n\r\n<p>Hi vọng những kiến thức l&yacute; thuyết t&iacute;ch lũy trong qu&aacute; tr&igrave;nh nghi&ecirc;n cứu h&agrave;n l&acirc;m c&ugrave;ng với c&aacute;c ứng dụng tự suy từ kinh nghiệm tự doanh thực chiến của nh&oacute;m t&aacute;c giả sẽ gi&uacute;p cho c&ocirc;ng việc của bạn hiệu quả hơn.</p>\r\n\r\n<p>Ch&uacute;c bạn c&oacute; những ph&uacute;t gi&acirc;y thư gi&atilde;n c&oacute; &iacute;ch c&ugrave;ng Hiệu ứng chim mồi!</p>', 69000.00, 1, 5, 3, 2, 2, 2, 12, NULL, '2020-06-19 03:47:40', '2020-06-19 03:47:40'),
(27, 'Nhà Lãnh Đạo Không Chức Danh', 5, 'images/1592538588_8934974145936.jpg.jpg', 'Suốt hơn 15 năm, Robin Sharma đã thầm lặng chia sẻ với những công ty trong danh sách Fortune 500 và nhiều người siêu giàu khác một công thức thành công đã giúp ông trở thành một trong những nhà cố vấn lãnh đạo được theo đuổi nhiều nhất thế giới.', '<p><strong>Nh&agrave; L&atilde;nh Đạo Kh&ocirc;ng Chức Danh</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/8/9/8934974145936.jpg\" style=\"height:400px; width:266px\" /></strong></p>\r\n\r\n<p>Suốt hơn 15 năm, Robin Sharma đ&atilde; thầm lặng chia sẻ với những c&ocirc;ng ty trong danh s&aacute;ch Fortune 500 v&agrave; nhiều người si&ecirc;u gi&agrave;u kh&aacute;c một c&ocirc;ng thức th&agrave;nh c&ocirc;ng đ&atilde; gi&uacute;p &ocirc;ng trở th&agrave;nh một trong những nh&agrave; cố vấn l&atilde;nh đạo được theo đuổi nhiều nhất thế giới. Đ&acirc;y l&agrave; lần đầu ti&ecirc;n Sharma c&ocirc;ng bố c&ocirc;ng thức độc quyền n&agrave;y với bạn, để bạn c&oacute; thể đạt được những g&igrave; tốt nhất, đồng thời gi&uacute;p tổ chức của bạn c&oacute; thể c&oacute; những bước đột ph&aacute; đến một cấp độ th&agrave;nh c&ocirc;ng mới trong thời đại thi&ecirc;n biến vạn h&oacute;a như hiện nay.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/flashmagazine/images/page_images/nha_lanh_dao_khong_chuc_danh/2019_09_19_12_02_22_1.jpg\" style=\"height:954px; width:600px\" /></p>\r\n\r\n<p>Trong cuốn s&aacute;ch&nbsp;Nh&agrave; L&atilde;nh Đạo Kh&ocirc;ng Chức Danh, bạn sẽ học được:</p>\r\n\r\n<ul>\r\n	<li>L&agrave;m thế n&agrave;o để l&agrave;m việc v&agrave; tạo ảnh hưởng với mọi người như một si&ecirc;u sao, bất chấp bạn đang ở vị tr&iacute; n&agrave;o</li>\r\n	<li>Một phương ph&aacute;p để nhận biết v&agrave; nắm bắt cơ hội v&agrave;o những thời điểm thay đổi</li>\r\n	<li>Những b&iacute; mật thật sự của sự đổi mới</li>\r\n	<li>Một chiến lược tức thời để x&acirc;y dựng đội nh&oacute;m tuyệt vời v&agrave; trở th&agrave;nh một nh&agrave; cung cấp ngoạn mục của kh&aacute;ch h&agrave;ng</li>\r\n	<li>Những thủ thuật cứng rắn gi&uacute;p trở n&ecirc;n mạnh mẽ cả về thể chất lẫn tinh thần để c&oacute; thể đi đầu trong lĩnh vực của bạn</li>\r\n	<li>Những phương thức thực tế để đ&aacute;nh bại sự căng thẳng, x&acirc;y dựng một &yacute; ch&iacute; bất bại, giải ph&oacute;ng năng lượng, v&agrave; c&acirc;n bằng cuộc sống c&aacute; nh&acirc;n</li>\r\n</ul>\r\n\r\n<p>Bất kể bạn l&agrave;m g&igrave; trong tổ chức v&agrave; cuộc sống hiện tại của bạn như thế n&agrave;o, một thực tế quan trọng duy nhất l&agrave; bạn c&oacute; khả năng thể hiện năng lực l&atilde;nh đạo. Cho d&ugrave; sự nghiệp hiện tại của bạn đang ở đ&acirc;u, bạn vẫn lu&ocirc;n cần phải thể hiện những khả năng tột đỉnh của m&igrave;nh. Cuốn s&aacute;ch n&agrave;y sẽ hướng dẫn bạn l&agrave;m thế n&agrave;o để khai th&aacute;c tối đa khả năng đ&oacute;, cũng như thay đổi cuộc sống v&agrave; thế giới xung quanh bạn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/flashmagazine/images/page_images/nha_lanh_dao_khong_chuc_danh/2019_09_19_12_02_22_2.jpg\" style=\"height:941px; width:600px\" /></p>', 98000.00, 1, 4, 1, 2, 2, 2, 20, NULL, '2020-06-19 03:49:48', '2020-06-19 03:58:34'),
(28, 'Bí Mật Tư Duy Triệu Phú', 5, 'images/1592538771_image_188995_1.jpg.jpg', 'Cuốn sách dành cho những ai còn loay hoay muốn tìm đường đến sự giàu có và thành công.', '<p>Trong cuốn s&aacute;ch n&agrave;y&nbsp;<strong>T. Harv Eker&nbsp;</strong>sẽ tiết lộ những b&iacute; mật tại sao một số người lại đạt được những th&agrave;nh c&ocirc;ng vượt bậc, được số phận ban cho cuộc sống sung t&uacute;c, gi&agrave;u c&oacute;, trong khi một số người kh&aacute;c phải chật vật, vất vả mới c&oacute; một cuộc sống qua ng&agrave;y. Bạn sẽ hiểu được nguồn gốc sự thật v&agrave; những yếu tố quyết định th&agrave;nh c&ocirc;ng, thất bại để rồi &aacute;p dụng, thay đổi c&aacute;ch suy nghĩ, l&ecirc;n kế hoạch rồi t&igrave;m ra c&aacute;ch l&agrave;m việc, đầu tư, sử dụng nguồn t&agrave;i ch&iacute;nh của bạn theo hướng hiệu quả nhất.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/i/m/image_188995_1.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p>Cuốn s&aacute;ch d&agrave;nh cho những ai c&ograve;n loay hoay muốn t&igrave;m đường đến sự gi&agrave;u c&oacute; v&agrave; th&agrave;nh c&ocirc;ng. &ldquo;B&iacute; mật tự duy triệu ph&uacute;&rdquo; mang đến nhiều tư duy mới cho người đọc về c&aacute;ch suy nghĩ của người gi&agrave;u hay c&aacute;ch suy nghĩ để trở n&ecirc;n gi&agrave;u c&oacute;.</p>\r\n\r\n<p>Trong cuốn s&aacute;ch, Eker liệt k&ecirc; 17 c&aacute;ch thức m&agrave; c&aacute;c kế hoạch chi tiết t&agrave;i ch&iacute;nh của những người gi&agrave;u kh&aacute;c với người ngh&egrave;o v&agrave; tầng lớp trung lưu. Một chủ đề được x&aacute;c định trong s&aacute;ch n&agrave;y l&agrave; loại bỏ c&aacute;c suy nghĩ đổ lỗi cho sự thất bại. Eker lập luận rằng: Người gi&agrave;u tin &quot;T&ocirc;i tạo ra cuộc sống của t&ocirc;i&quot;, c&ograve;n những người ngh&egrave;o cho rằng &quot;Cuộc sống sẽ tự nhi&ecirc;n đến với t&ocirc;i&quot;; người gi&agrave;u tập trung v&agrave;o c&aacute;c cơ hội trong khi người ngh&egrave;o tập trung v&agrave;o những trở ngại; v&agrave; những người gi&agrave;u ngưỡng mộ những người gi&agrave;u c&oacute; v&agrave; th&agrave;nh c&ocirc;ng kh&aacute;c trong khi người d&acirc;n ngh&egrave;o ghen tị, bực tức trước những người th&agrave;nh c&ocirc;ng v&agrave; gi&agrave;u c&oacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/b/i/bi_mat_tu_duy_trieu_phu_1.jpg\" style=\"height:338px; width:600px\" /></p>\r\n\r\n<p><strong>B&iacute; mật tư duy triệu ph&uacute; l&agrave; t&aacute;c phẩm nổi tiếng thế giới được thời b&aacute;o New York Times, Wall Street Journal v&agrave; USB Today b&igrave;nh chọn l&agrave; cuốn s&aacute;ch hay nhất, b&aacute;n chạy nhất trong nhiều năm</strong><strong>.</strong></p>\r\n\r\n<p><strong>Người</strong><strong>&nbsp;nổi tiếng n&oacute;i về&nbsp;</strong><strong>&ldquo;</strong><strong>B&iacute; mật tư duy triệu ph&uacute;</strong><strong>&rdquo;</strong><strong>:</strong></p>\r\n\r\n<p><strong>&middot;&nbsp;</strong><em>&quot;Ai cũng c&oacute; một cuộc sống, ai cũng l&agrave;m việc cần c&ugrave;, ai cũng ước mơ được th&agrave;nh c&ocirc;ng, nhưng kh&ocirc;ng mấy ai may mắn học được c&aacute;ch tư duy độc đ&aacute;o v&agrave; tầm nh&igrave;n của những tỷ ph&uacute; lừng danh đ&atilde; tiết lộ trong cuốn s&aacute;ch gi&aacute; trị n&agrave;y...&quot;&nbsp;<strong>-&nbsp;</strong></em><strong>Wall Street Journal</strong></p>\r\n\r\n<p><strong>&middot;&nbsp;</strong><em>&ldquo;Đ&acirc;y ch&iacute;nh l&agrave; một trong những cuốn s&aacute;ch gi&agrave;u ảnh hưởng, rất thuyết phục v&agrave; thực tế nhất về c&aacute;ch trở n&ecirc;n gi&agrave;u c&oacute; m&agrave; c&aacute;c bạn từng đọc được&rdquo; &ndash;&nbsp;</em><strong><em>Brian Tracy</em><em>&nbsp;(T&aacute;c giả cuốn s&aacute;ch L&agrave;m gi&agrave;u theo c&aacute;ch của bạn)</em></strong></p>\r\n\r\n<p><strong>&middot;&nbsp;</strong>&ldquo;H&atilde;y nghiền ngẫm cuốn s&aacute;ch n&agrave;y như thể cuộc đời rồi sẽ phụ thuộc v&agrave;o n&oacute;&hellip; về phương diện t&agrave;i ch&iacute;nh th&igrave; khả dĩ lắm đấy&rdquo;<strong><em>&nbsp;&ndash;&nbsp;</em></strong><strong>Anthony Robbins<em>&nbsp;(Nh&agrave; diễn thuyết, t&aacute;c giả cuốn s&aacute;ch nổi tiếng Đ&aacute;nh thức con người phi thường trong bạn)</em></strong></p>\r\n\r\n<p><strong>&middot;&nbsp;</strong>&ldquo;Bạn cần được T&Aacute;I - GI&Aacute;O DỤC nếu bạn muốn T&Aacute;I ĐỊNH NGHĨA số mệnh t&agrave;i ch&iacute;nh của m&igrave;nh.&nbsp; Đ&oacute; cũng ch&iacute;nh l&agrave; những thứ bạn sẽ được học tại : B&Iacute; MẬT TƯ DUY TRIỆU PH&Uacute; - MILLIONAIRE MIND INTENSIVE (NWA)&rdquo;<strong><em>&nbsp;-&nbsp;&nbsp;</em></strong><strong>Phạm Tuấn Sơn<em>: Doanh Nh&acirc;n ti&ecirc;u biểu Việt Nam - T&aacute;c giả cuốn D&aacute;m l&agrave;m gi&agrave;u - Chủ tịch HĐQT c&ocirc;ng ty CP Babylons</em></strong>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/b/i/bi_mat_tu_duy_trieu_phu_3.jpg\" style=\"height:338px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 98000.00, 1, 5, 3, 2, 1, 2, 20, NULL, '2020-06-19 03:52:51', '2020-06-19 07:43:08'),
(29, 'Vị Giám Đốc Một Phút', 5, 'images/1592538866_23f7f2605cd1a37ed4849f0bdfda61ea.jpg.jpg', 'Vị giám đốc một phút - Cuốn sách quản lý nổi tiếng nhất mọi thời đại', '<p><strong>Vị gi&aacute;m đốc một ph&uacute;t -&nbsp;</strong><strong>Cuốn s&aacute;ch quản l&yacute; nổi tiếng nhất mọi thời đại</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/2/3/23f7f2605cd1a37ed4849f0bdfda61ea.jpg\" style=\"height:600px; width:600px\" /></strong></p>\r\n\r\n<p>Với h&agrave;ng triệu bản được b&aacute;n ra, &quot;Vị gi&aacute;m đốc một ph&uacute;t&quot; được xếp hạng l&agrave; một trong những cuốn s&aacute;ch quản l&yacute; th&agrave;nh c&ocirc;ng nhất mọi thời đại.</p>\r\n\r\n<p><strong>&quot;Vị gi&aacute;m đốc một ph&uacute;t&quot;</strong>&nbsp;kể về qu&aacute; tr&igrave;nh t&igrave;m kiếm v&agrave; t&iacute;ch lũy những kinh nghiệm quản l&yacute; của một ch&agrave;ng trai trẻ vừa tốt nghiệp đại học. Trong suốt h&agrave;nh tr&igrave;nh k&eacute;o d&agrave;i r&ograve;ng r&atilde; nhiều năm, anh đ&atilde; chứng kiến nhiều c&aacute;ch quản l&yacute; kh&aacute;c nhau nhưng vẫn chưa t&igrave;m ra người v&agrave; nơi m&igrave;nh mong được gặp, m&atilde;i cho đến khi anh gặp được một vị gi&aacute;m đốc rất đặc biệt -&nbsp;<strong>Vị gi&aacute;m đốc một ph&uacute;t</strong>. Đ&acirc;y l&agrave; người th&agrave;nh c&ocirc;ng với phương ph&aacute;p l&agrave;m việc chỉ g&oacute;i gọn trong v&ograve;ng một ph&uacute;t nhưng rất ho&agrave;n hảo: Vừa tạo hiệu quả c&ocirc;ng việc cao nhất, vừa x&acirc;y dựng được một m&ocirc;i trường l&agrave;m việc th&acirc;n thiện giữa c&aacute;c nh&acirc;n vi&ecirc;n với nhau.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/q/u/quotes-vi-giam-doc-1-phut-01.jpg\" style=\"height:450px; width:600px\" /></p>\r\n\r\n<p>Nhờ &aacute;p dụng những b&iacute; quyết hữu &iacute;ch từ&nbsp;<strong>&quot;Vị gi&aacute;m đốc một ph&uacute;t&quot;,</strong>&nbsp;ch&agrave;ng thanh ni&ecirc;n trẻ đ&atilde; t&igrave;m ra phương c&aacute;ch quản l&yacute; cho ri&ecirc;ng m&igrave;nh v&agrave; anh cũng sớm trở th&agrave;nh gi&aacute;m đốc một ph&uacute;t.</p>\r\n\r\n<p>Những &yacute; tưởng bổ &iacute;ch trong &quot;Vị gi&aacute;m đốc một ph&uacute;t&quot; đ&atilde; nhanh ch&oacute;ng lan rộng v&agrave; được h&agrave;ng triệu gi&aacute;m đốc, những nh&agrave; quản l&yacute; trong danh s&aacute;ch 500 tập đo&agrave;n, c&ocirc;ng ty h&agrave;ng đầu thế giới của tạp ch&iacute; Fortune cũng như c&aacute;c doanh nghiệp khắp thế giới đ&atilde; v&agrave; đang ứng dụng những kinh nghiệm quản l&yacute; qu&yacute; b&aacute;u trong cuốn s&aacute;ch n&agrave;y.</p>\r\n\r\n<p>Cuốn s&aacute;ch b&eacute; nhỏ n&agrave;y đ&atilde; l&agrave;m được những điều đ&aacute;ng ngạc nhi&ecirc;n: L&agrave;m tăng năng suất, hiệu quả trong c&ocirc;ng việc v&agrave; những th&agrave;nh t&iacute;ch, tiến bộ đối với từng c&aacute; nh&acirc;n cũng như đối với c&aacute;c c&ocirc;ng ty, tập đo&agrave;n lớn tr&ecirc;n thế giới như Toyota, Toshiba, Doughnut, Wells Fargo, Sony Corp, Victoria&rsquo;s Secret, Yellow Pages, Abbot Labs, Foodmaker, Hilton Hotels, Bayer Corporation&hellip;&nbsp;</p>\r\n\r\n<p>Charles Lee, chủ tịch c&ocirc;ng ty Verizon đ&atilde; viết: &ldquo;Sau ngần ấy năm, t&ocirc;i vẫn cầm đến cuốn s&aacute;ch &quot;Vị gi&aacute;m đốc một ph&uacute;t&quot; trong những ph&uacute;t gi&acirc;y r&atilde;nh rỗi hiếm hoi nhằm &ocirc;n lại những kỹ thuật quản l&yacute; của m&igrave;nh. Cho đến l&uacute;c n&agrave;y, t&ocirc;i chưa t&igrave;m thấy một cuốn s&aacute;ch n&agrave;o c&oacute; những lời hướng dẫn quản l&yacute; con người tốt hơn v&agrave; dễ sử dụng hơn cuốn s&aacute;ch n&agrave;y.&rdquo;</p>\r\n\r\n<p><strong>&quot;Vị gi&aacute;m đốc một ph&uacute;t&quot;</strong>&nbsp;l&agrave; một c&acirc;u chuyện th&uacute; vị, dễ đọc v&agrave; ngắn gọn, thể hiện ba b&iacute; quyết rất thiết thực: Mục ti&ecirc;u một ph&uacute;t, một ph&uacute;t khen ngợi v&agrave; một ph&uacute;t khiển tr&aacute;ch đ&atilde; li&ecirc;n tục xuất hiện trong danh s&aacute;ch những cuốn s&aacute;ch b&aacute;n chạy nhất trong hơn hai thập kỷ qua v&agrave; trở th&agrave;nh một hiện tượng to&agrave;n cầu. Bất cứ ai l&agrave;m c&ocirc;ng t&aacute;c quản l&yacute; cũng đều biết đến cuốn s&aacute;ch Vị Gi&aacute;m đốc một ph&uacute;t cũng như gi&aacute; trị to lớn của n&oacute;.</p>', 169000.00, 1, 4, 1, 1, 1, 2, 20, NULL, '2020-06-19 03:54:26', '2020-06-19 03:57:44'),
(30, 'Vị Tu Sĩ Bán Chiếc Ferrari', 5, 'images/1592538993_image_180164_1_43_1_57_1_4_1_2_1_210_1_29_1_98_1_25_1_21_1_5_1_3_1_18_1_18_1_45_1_26_1_32_1_14_1_2177.jpg.jpg', 'Cuốn sách cho những người khát khao theo đuổi đam mê', '<p><strong>Vị Tu Sĩ B&aacute;n Chiếc F</strong><strong>erarri</strong>&nbsp;kh&ocirc;ng phải l&agrave; một cuốn s&aacute;ch xa lạ, cuốn s&aacute;ch n&agrave;y l&agrave; một trong những ấn phẩm kinh điển của thế giới về đề t&agrave;i truyền cảm hứng, theo đuổi l&yacute; tưởng sống, v&agrave; hướng về một cuộc sống hạnh ph&uacute;c. Đ&acirc;y cũng l&agrave; cuốn s&aacute;ch đầu ti&ecirc;n m&agrave; t&aacute;c giả, nh&agrave; diễn thuyết nổi tiếng thế giới Robin Sharma chấp b&uacute;t.</p>\r\n\r\n<p>Cuốn s&aacute;ch g&acirc;y được tiếng vang khi xuất bản năm 1997 v&agrave; b&aacute;n được hơn 3 triệu bản v&agrave;o năm 2013.</p>\r\n\r\n<p>Từng được xuất bản v&agrave; b&aacute;n chạy ở Việt Nam với c&aacute;i t&ecirc;n T&igrave;m về sức mạnh v&ocirc; bi&ecirc;n, trong lần t&aacute;i bản n&agrave;y,&nbsp;<strong>Vị</strong><strong>&nbsp;tu sĩ b&aacute;n chiếc Ferrari</strong>&nbsp;l&agrave; phi&ecirc;n bản bổ sung, ho&agrave;n thiện v&agrave; tiếp tục l&agrave; cuốn s&aacute;ch kinh điển về đề t&agrave;i truyền cảm hứng, theo đuổi l&yacute; tưởng sống, hướng tới cuộc sống hạnh ph&uacute;c của t&aacute;c giả Robin Sharma.</p>\r\n\r\n<p>Ngay từ năm 1997, Vị tu sĩ b&aacute;n chiếc Ferrari đ&atilde; nhanh ch&oacute;ng trở th&agrave;nh hiện tượng v&agrave; nằm trong danh s&aacute;ch best-seller, b&aacute;n ra hơn 4 triệu bản tại 50 quốc gia tr&ecirc;n khắp thế giới. Điều đặc biệt, khi đ&oacute; Robin Sharma chỉ l&agrave; một t&aacute;c giả trẻ chưa c&oacute; t&ecirc;n tuổi.</p>\r\n\r\n<p>Vậy, tại sao cuốn s&aacute;ch n&agrave;y lại c&oacute; sức hấp dẫn với bạn đọc tr&ecirc;n to&agrave;n thế giới?</p>\r\n\r\n<p><strong>Vị tu sĩ b&aacute;n chiếc Ferrari</strong>&nbsp;kể về Julian Manter, một luật sư dưới con mắt x&atilde; hội l&agrave; một người đứng tr&ecirc;n đỉnh cao danh vọng: l&agrave; &ldquo;ng&ocirc;i sao&rdquo; trong ng&agrave;nh luật, thu nhập l&ecirc;n tới bảy con số, sở hữu một căn biệt thự tr&aacute;ng lệ, một chiếc m&aacute;y bay ri&ecirc;ng v&agrave; một chiếc Ferrari m&agrave;u đỏ b&oacute;ng lo&aacute;ng đ&aacute;ng ngưỡng mộ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/i/m/image_180164_1_43_1_57_1_4_1_2_1_210_1_29_1_98_1_25_1_21_1_5_1_3_1_18_1_18_1_45_1_26_1_32_1_14_1_2177.jpg\" style=\"height:841px; width:590px\" /></p>\r\n\r\n<p>Nhưng &iacute;t ai biết, trong nội t&acirc;m s&acirc;u thẳm Julian lại l&agrave; một con người đầy đau khổ, căng thẳng. Bởi đằng sau cuộc sống &ldquo;lung linh&rdquo; của anh những dấu hiệu của sự sụp đổ trong niềm vui v&agrave; &yacute; nghĩa sống: li&ecirc;n tục bị cuốn v&agrave;o c&ocirc;ng việc, v&agrave;o một v&ograve;ng xo&aacute;y kh&ocirc;ng thể dừng lại; như anh n&oacute;i &ldquo;l&uacute;c n&agrave;o cũng c&oacute; một vụ kiện &ldquo;khủng&rdquo; đang chờ sẵn, quy m&ocirc; vụ sau, lớn hơn vụ trước&rdquo;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/v/i/vitusiferrari_1_-_copy.jpg\" style=\"height:835px; width:591px\" /></p>\r\n\r\n<p>V&agrave; cuối c&ugrave;ng, trong một vụ kiện, Julian đột quỵ v&agrave; nhập viện. Để rồi ngay khi xuất viện, Julian đ&atilde; c&oacute; một quyết định l&agrave; bước ngoặt thay đổi cuộc đời. Anh b&aacute;n tất cả t&agrave;i sản của m&igrave;nh, trong đ&oacute; c&oacute; chiếc xe Ferrari - niềm tự h&agrave;o của m&igrave;nh, v&agrave; bắt đầu h&agrave;nh tr&igrave;nh đến Ấn Độ để gặp gỡ c&aacute;c nh&agrave; hiền triết Sivana. Qua đ&oacute;, anh dần &ldquo;lột x&aacute;c&rdquo; v&agrave; t&igrave;m lại ch&iacute;nh m&igrave;nh, trở th&agrave;nh một con người th&agrave;nh c&ocirc;ng, sống một cuộc đời &yacute; nghĩa v&agrave; để lại di sản trong đời sống.</p>', 80000.00, 1, 4, 1, 1, 1, 2, 33, NULL, '2020-06-19 03:56:33', '2020-06-19 03:57:07'),
(31, 'Doanh Nghiệp Của Thế Kỷ 21', 6, 'images/1592539595_image_195509_1_603.jpg.jpg', 'Một quyển sách khác của tác giả bộ sách nổi tiếng Dạy con làm giàu.', '<p>Một quyển s&aacute;ch kh&aacute;c của t&aacute;c giả bộ s&aacute;ch nổi tiếng&nbsp;Dạy con l&agrave;m gi&agrave;u. Trong cuốn s&aacute;ch n&agrave;y, Robert T. Kiyosaki sẽ chỉ ra cho bạn đọc thấy l&yacute; do tại sao m&igrave;nh cần phải g&acirc;y dựng doanh nghiệp ri&ecirc;ng của m&igrave;nh v&agrave; ch&iacute;nh x&aacute;c đ&oacute; l&agrave; doanh nghiệp g&igrave;. Nhưng đ&acirc;y kh&ocirc;ng phải l&agrave; việc thay đổi loại h&igrave;nh doanh nghiệp m&igrave;nh đang triển khai m&agrave; đ&oacute; l&agrave; việc thay đổi ch&iacute;nh bản th&acirc;n. T&aacute;c giả c&ograve;n cho bạn đọc biết c&aacute;ch thức t&igrave;m kiếm những g&igrave; m&igrave;nh cần để ph&aacute;t triển doanh nghiệp ho&agrave;n hảo, nhưng để doanh nghiệp của m&igrave;nh ph&aacute;t triển th&igrave; m&igrave;nh cũng sẽ phải ph&aacute;t triển theo.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/flashmagazine/images/page_images/doanh_nghiep_cua_the_ky_21_tai_ban_2019/2020_06_11_14_53_46_1.JPG\" style=\"height:950px; width:600px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/flashmagazine/images/page_images/doanh_nghiep_cua_the_ky_21_tai_ban_2019/2020_06_11_14_53_46_2.JPG\" style=\"height:995px; width:600px\" /></p>', 98000.00, 1, 3, 3, 2, 2, 2, 12, NULL, '2020-06-19 04:06:35', '2020-06-19 04:06:35'),
(32, 'Chiến Tranh Tiền Tệ', 6, 'images/1592539697_chien-tranh-tien-te-phan1-bia-truoc_taiban_.jpg.jpg', 'Phần lớn chúng ta thường nghĩ sự hiện diện của đồng tiền trong cuộc sống là một lẽ đương nhiên, như không khí hay nước vậy', '<p><strong>Chiến Tranh Tiền Tệ - Ai Thực Sự L&agrave; Người Gi&agrave;u Nhất Thế Giới?</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/h/chien-tranh-tien-te-phan1-bia-truoc_taiban__1.jpg\" style=\"height:922px; width:600px\" /></strong></p>\r\n\r\n<p><strong><em>&nbsp;Th&ocirc;ng tin t&aacute;c giả:</em></strong></p>\r\n\r\n<p>Song Hong Binh (Tống Hồng Binh) sinh năm 1968 tại Tứ Xuy&ecirc;n, Trung Quốc. &Ocirc;ng l&agrave; t&aacute;c giả của rất nhiều cuốn s&aacute;ch b&aacute;n chạy, l&agrave; học giả nghi&ecirc;n cứu t&agrave;i ch&iacute;nh thế giới v&agrave; cũng l&agrave; Viện trưởng của Viện nghi&ecirc;n cứu Kinh tế T&agrave;i ch&iacute;nh Ho&agrave;n cầu (Bắc Kinh).&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/h/chien-tranh-tien-te-phan1-bia-sau_taiban_.jpg\" style=\"height:915px; width:600px\" /></p>\r\n\r\n<p><strong><em>Th&ocirc;ng tin t&aacute;c phẩm:</em></strong></p>\r\n\r\n<p>Phần lớn ch&uacute;ng ta thường nghĩ sự hiện diện của đồng tiền trong cuộc sống l&agrave; một lẽ đương nhi&ecirc;n, như kh&ocirc;ng kh&iacute; hay nước vậy. Rất &iacute;t người trong ch&uacute;ng ta hiểu được nguồn gốc của tiền bạc cũng như sự sinh tồn v&agrave; ph&aacute;t triển của đồng tiền.<br />\r\n<br />\r\nMột khi đọc &ldquo;Chiến tranh tiền tệ - Ai thật sự l&agrave; người gi&agrave;u nhất thế giới&rdquo; bạn sẽ phải giật m&igrave;nh nhận ra một điều kinh khủng rằng, đằng sau những tờ giấy bạc ch&uacute;ng ta chi ti&ecirc;u h&agrave;ng ng&agrave;y l&agrave; cả một thế lực ngầm đ&aacute;ng sợ - một thế lực b&iacute; ẩn với quyền lực si&ecirc;u nhi&ecirc;n c&oacute; thể điều khiển cả thế giới rộng lớn n&agrave;y.<br />\r\n<br />\r\n&ldquo;Chiến tranh tiền tệ - Ai thật sự l&agrave; người gi&agrave;u nhất thế giới&rdquo; đề cập đến một cuộc chiến khốc liệt, kh&ocirc;ng khoan nhượng v&agrave; dai dẳng giữa một nh&oacute;m nhỏ c&aacute;c &ocirc;ng tr&ugrave;m t&agrave;i ch&iacute;nh &ndash; đứng đầu l&agrave; gia tộc Rothschild &ndash; với c&aacute;c thể chế t&agrave;i ch&iacute;nh của nhiều quốc gia. Đ&oacute; l&agrave; một cuộc chiến m&agrave; đồng tiền l&agrave; s&uacute;ng đạn v&agrave; mức s&aacute;t thương thật sự gh&ecirc; gớm.&nbsp;<br />\r\n<br />\r\nĐồng thời, &ldquo;Chiến tranh tiền tệ - Ai thật sự l&agrave; người gi&agrave;u nhất thế giới&rdquo; c&ograve;n gi&uacute;p bạn hiểu th&ecirc;m nhiều điều, rằng Bill Gates chưa phải l&agrave; người gi&agrave;u nhất h&agrave;nh tinh, rằng tỉ lệ tử vong của c&aacute;c tổng thống Mỹ lại cao hơn tỉ lệ tử trận của binh l&iacute;nh Mỹ ngo&agrave;i chiến trường, hay v&igrave; sao phố Wall lại mạo hiểm đổ hết vốn liếng của m&igrave;nh cho việc &ldquo;đầu tư&rdquo; v&agrave;o Hitler.&nbsp;<br />\r\n<br />\r\nL&agrave; một cuốn s&aacute;ch l&agrave;m sửng sốt những ai muốn t&igrave;m hiểu về bản chất của tiền tệ, để từ đ&oacute; nhận ra những hiểm họa t&agrave;i ch&iacute;nh tiềm ẩn nhằm chuẩn bị t&acirc;m l&yacute; cho một cuộc chiến tiền tệ &ldquo;kh&ocirc;ng đổ m&aacute;u&rdquo;, &ldquo;Chiến tranh tiền tệ - Ai thật sự l&agrave; người gi&agrave;u nhất thế giới&rdquo; c&ograve;n phơi b&agrave;y những &acirc;m mưu của c&aacute;c nh&agrave; t&agrave;i phiệt thế giới trong việc tạo ra những cơn &ldquo;hạn h&aacute;n&rdquo;, &ldquo;b&atilde;o lũ&rdquo; về tiền tệ để thu lợi nhuận. Cuốn s&aacute;ch cũng đề cập đến sự ph&aacute;t triển của c&aacute;c định chế t&agrave;i ch&iacute;nh &ndash; những cơ cấu được x&acirc;y dựng nhằm đ&aacute;p ứng nhu cầu ph&aacute;t triển vũ b&atilde;o của nền kinh tế to&agrave;n cầu. Gấp cuốn s&aacute;ch lại, c&oacute; thể bạn đọc sẽ c&oacute; nhiều t&acirc;m trạng kh&aacute;c nhau. Đối với một số người, đ&oacute; c&oacute; thể l&agrave; sự sợ h&atilde;i thế lực t&agrave;i ch&iacute;nh quốc tế v&agrave; cảm gi&aacute;c bất an về sự chi phối của thế lực n&agrave;y. Với số kh&aacute;c th&igrave; đ&oacute; c&oacute; thể l&agrave; một cảm gi&aacute;c th&uacute; vị khi kh&aacute;m ph&aacute; ra sự thật trần trụi để từ đ&oacute; c&oacute; c&aacute;ch nh&igrave;n nhận kh&aacute;c nhằm x&acirc;y dựng cho m&igrave;nh những kế hoạch đầu tư một c&aacute;ch hiệu quả nhất. V&agrave; cho d&ugrave; bạn c&oacute; lo sợ hay cảm thấy t&ograve; m&ograve;, th&uacute; vị th&igrave; &ldquo;Chiến tranh tiền tệ - Ai thật sự l&agrave; người gi&agrave;u nhất thế giới&rdquo; cũng l&agrave; một cuốn s&aacute;ch đ&aacute;ng đọc. Một cuốn s&aacute;ch bổ &iacute;ch cho c&aacute;c chuy&ecirc;n gia quản l&yacute; t&agrave;i ch&iacute;nh, c&aacute;c nh&agrave; quản trị doanh nghiệp, c&aacute;c nh&agrave; đầu tư nhỏ, c&aacute;c gi&aacute;o vi&ecirc;n giảng dạy về t&agrave;i ch&iacute;nh &ndash; ng&acirc;n h&agrave;ng cũng như sinh vi&ecirc;n c&aacute;c trường kinh tế.&nbsp;&nbsp;</p>', 80000.00, 1, 4, 3, 2, 2, 2, 33, NULL, '2020-06-19 04:08:17', '2020-06-19 04:08:17'),
(33, 'Nợ Nần Và Quỷ Dữ', 6, 'images/1592539780_image_195509_1_9786.jpg.jpg', 'Nợ nần và Quỷ dữ cho thấy lý do tại sao chúng ta cần thay đổi tư duy về vấn đề nợ công và tiền pháp định, đồng thời kiểm soát chặt chẽ sự phát triển của nợ tư nhân.', '<p>Cuốn s&aacute;ch n&agrave;y n&oacute;i, việc ch&uacute;ng ta tin rằng: tăng trưởng t&iacute;n dụng l&agrave; cần thiết để th&uacute;c đẩy tăng trưởng kinh tế; v&agrave; tăng trưởng nợ sẽ kh&ocirc;ng c&oacute; vấn đề g&igrave; nếu ch&uacute;ng ta c&oacute; thể duy tr&igrave; lạm ph&aacute;t ở mức thấp l&agrave; ho&agrave;n to&agrave;n sai lầm. Thực tế l&agrave; tăng trưởng t&iacute;n dụng kh&ocirc;ng đi c&ugrave;ng với tăng trưởng kinh tế, m&agrave; ngược lại, n&oacute; khiến gi&aacute; bất động sản tăng l&ecirc;n v&agrave; dẫn đến khủng hoảng t&agrave;i ch&iacute;nh v&agrave; suy tho&aacute;i.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/i/m/image_195509_1_9786.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p>Nợ nần v&agrave; Quỷ dữ cho thấy l&yacute; do tại sao ch&uacute;ng ta cần thay đổi tư duy về vấn đề nợ c&ocirc;ng v&agrave; tiền ph&aacute;p định, đồng thời kiểm so&aacute;t chặt chẽ sự ph&aacute;t triển của nợ tư nh&acirc;n.</p>', 69000.00, 1, 5, 1, 2, 2, 2, 12, NULL, '2020-06-19 04:09:40', '2020-06-19 04:09:40'),
(34, 'Dòng Tiền Gắn Liền Lợi Nhuận', 6, 'images/1592539859_image_195509_1_39469.jpg.jpg', 'Đó là vì các bạn quên đi một tham số quan trọng: là gía trị thời gian của tiền tệ, bởi vậy, các bạn chưa kiểm soát được DÒNG TIỀN!', '<p><strong>H&oacute;a giải nghịch l&yacute; kinh doanh c&oacute; l&atilde;i m&agrave; kh&ocirc;ng thấy tiền</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/i/m/image_195509_1_39469.jpg\" style=\"height:600px; width:600px\" /></strong></p>\r\n\r\n<p>Rất nhiều bạn trẻ v&agrave; cả những bạn kh&ocirc;ng-c&ograve;n-trẻ, mới khởi nghiệp hoặc đ&atilde; khởi nghiệp được coi l&agrave; th&agrave;nh c&ocirc;ng (v&igrave; sau 3 năm m&agrave; doanh nghiệp vẫn tồn tại) lu&ocirc;n thắc mắc một điều l&agrave; tại sao doanh nghiệp vẫn tăng trưởng, c&oacute; doanh thu, nhưng cứ lỗ? Mặc d&ugrave; kế hoạch kinh doanh th&igrave; rất khả thi nhưng thậm ch&iacute; doanh thu c&agrave;ng tăng, lỗ c&agrave;ng nhiều.</p>\r\n\r\n<p>Đ&oacute; l&agrave; v&igrave; c&aacute;c bạn qu&ecirc;n đi một tham số quan trọng: l&agrave; g&iacute;a trị thời gian của tiền tệ, bởi vậy, c&aacute;c bạn chưa kiểm so&aacute;t được D&Ograve;NG TIỀN!<br />\r\nC&oacute; thể n&oacute;i d&ograve;ng tiền l&agrave; nguồn lực cốt l&otilde;i của doanh nghiệp, nếu d&ograve;ng tiền được quản trị đ&uacute;ng đắn, hiệu quả, mang lại hiệu suất về kinh tế, doanh nghiệp c&oacute; thể tăng trưởng v&agrave; thịnh vượng. Ngược lại, nếu quản l&yacute; d&ograve;ng tiền k&eacute;m hiệu quả, doanh nghiệp sẽ gặp rất nhiều rủi ro.</p>\r\n\r\n<p>T&aacute;c giả của hai cuốn s&aacute;ch kinh doanh kinh điển Kế hoạch b&iacute; ng&ocirc; v&agrave; Khởi nghiệp từ khốn kh&oacute; cung cấp một giải ph&aacute;p quản l&yacute; d&ograve;ng tiền đơn giản, phản trực quan nhằm gi&uacute;p c&aacute;c doanh nghiệp nhỏ tho&aacute;t khỏi v&ograve;ng xo&aacute;y ph&aacute; sản v&agrave; đạt được lợi nhuận ngay lập tức.<br />\r\nSử dụng phương ph&aacute;p D&ograve;ng tiền gắn liền lợi nhuận (Profit First) của Mike Michalowicz, bạn sẽ biết:</p>\r\n\r\n<p>- Bốn nguy&ecirc;n tắc để đơn giản h&oacute;a quy tr&igrave;nh kế to&aacute;n;<br />\r\n- Một doanh nghiệp nhỏ c&oacute; lợi nhuận gi&aacute; trị hơn nhiều so với một doanh nghiệp lớn c&ugrave;ng ng&agrave;nh;<br />\r\n- C&aacute;c doanh nghiệp đạt được lợi nhuận sớm v&agrave; biết quản trị d&ograve;ng tiền đ&uacute;ng c&aacute;ch c&oacute; thể đạt được sự tăng trưởng d&agrave;i hạn.<br />\r\nVới h&agrave;ng t&aacute; c&aacute;c nghi&ecirc;n cứu, lời khuy&ecirc;n c&ugrave;ng khiếu h&agrave;i hước đặc trưng, Mike Michalowicz đ&atilde; gi&uacute;p c&aacute;c doanh nh&acirc;n &ldquo;lật ngược thế cờ&rdquo; v&agrave; đạt được doanh thu m&agrave; họ lu&ocirc;n mơ ước.</p>', 98000.00, 1, 4, 3, 2, 2, 2, 33, NULL, '2020-06-19 04:10:59', '2020-06-19 04:10:59'),
(35, 'Từ Điển Tâm Lý', 7, 'images/1592539972_t_-_i_n-t_m-l_---b_a-1-_1_.jpg.jpg', '“Tính cách” và “cảm xúc” là những từ ngữ vô cùng quen thuộc, nhưng để bóc tách và phân tích từng loại tính cách và cảm xúc thì không phải chuyện dễ dàng gì.', '<p><strong>Từ Điển T&acirc;m L&yacute;</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn0.fahasa.com/media/flashmagazine/images/page_images/tu_dien_tam_ly/2020_05_12_14_25_53_1.jpg\" style=\"height:877px; width:600px\" /></strong></p>\r\n\r\n<p>&ldquo;T&iacute;nh c&aacute;ch&rdquo; v&agrave; &ldquo;cảm x&uacute;c&rdquo; l&agrave; những từ ngữ v&ocirc; c&ugrave;ng quen thuộc, nhưng để b&oacute;c t&aacute;ch v&agrave; ph&acirc;n t&iacute;ch từng loại t&iacute;nh c&aacute;ch v&agrave; cảm x&uacute;c th&igrave; kh&ocirc;ng phải chuyện dễ d&agrave;ng g&igrave;.</p>\r\n\r\n<p>Khi giao tiếp với người kh&aacute;c, ch&uacute;ng ta lu&ocirc;n cố gắng phỏng đo&aacute;n t&iacute;nh c&aacute;ch v&agrave; cảm x&uacute;c của đối phương, để điều chỉnh c&aacute;ch ứng xử v&agrave; xem họ c&oacute; h&ograve;a hợp với ta kh&ocirc;ng. Nhiệm vụ n&agrave;y hao tổn kh&ocirc;ng &iacute;t t&acirc;m tr&iacute;, nhưng nhiều khi ch&uacute;ng ta vẫn kh&ocirc;ng thể đọc vị ch&iacute;nh x&aacute;c đối phương. Ch&uacute;ng ta phải trải qua những cuộc đối thoại gượng gạo, nhưng t&igrave;nh huống kh&oacute; xử, hay tệ hơn l&agrave; những mối quan hệ đổ vỡ, cũng chỉ v&igrave; ta kh&ocirc;ng thể hiểu ch&iacute;nh x&aacute;c t&acirc;m tư của người kh&aacute;c để cư xử cho ph&ugrave; hợp.</p>\r\n\r\n<p>Từ Điển T&acirc;m L&yacute; ch&iacute;nh l&agrave; cuốn s&aacute;ch &ldquo;vỡ l&ograve;ng&rdquo; về t&iacute;nh c&aacute;ch v&agrave; cảm x&uacute;c, gi&uacute;p bạn trở n&ecirc;n thấu đ&aacute;o v&agrave; kh&eacute;o l&eacute;o hơn trong giao tiếp. Được tổng hợp v&agrave; chắt lọc từ khối kiến thức đồ sộ của c&aacute;c chuy&ecirc;n gia t&acirc;m l&yacute; v&agrave; viết lại bằng giọng văn th&acirc;n thiện, Từ Điển T&acirc;m L&yacute; hứa hẹn đem lại cho bạn đọc những kiến thức cơ bản về t&iacute;nh c&aacute;ch v&agrave; cảm x&uacute;c của con người. Cuốn s&aacute;ch kh&ocirc;ng chỉ dừng lai ở l&yacute; thuyết su&ocirc;ng m&agrave; c&ograve;n đưa ra những giải ph&aacute;p cụ thể hướng dẫn bạn đọc vận dụng kiến thức về &ldquo;t&iacute;nh c&aacute;ch&rdquo; v&agrave; &ldquo;cảm x&uacute;c&rdquo;, gi&uacute;p bạn thấu hiểu bản th&acirc;n v&agrave; người kh&aacute;c, từ đ&oacute; x&acirc;y dựng những mối quan hệ l&agrave;nh mạnh.</p>', 98000.00, 1, 10, 3, 2, 1, 2, 22, NULL, '2020-06-19 04:12:52', '2020-06-19 04:12:52'),
(36, 'Tôi Tự Học', 7, 'images/1592540077_toituhoc.jpg.jpg', 'Sách “Tôi tự học” của tác giả Nguyễn Duy Cần đề cập đến khái niệm, mục đích của học vấn đối với con người đồng thời nêu lên một số phương pháp học tập đúng đắn và hiệu quả', '<p><strong>T&ocirc;i Tự Học</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/t/o/toi_tu_hoc_1_2018_07_16_09_35_46.jpg\" style=\"height:841px; width:600px\" /></strong></p>\r\n\r\n<p>S&aacute;ch &ldquo;T&ocirc;i tự học&rdquo; của t&aacute;c giả Nguyễn Duy Cần đề cập đến kh&aacute;i niệm, mục đ&iacute;ch của học vấn đối với con người đồng thời n&ecirc;u l&ecirc;n một số phương ph&aacute;p học tập đ&uacute;ng đắn v&agrave; hiệu quả. T&aacute;c giả cho rằng gi&aacute; trị của học vấn nằm ở sự lĩnh hội v&agrave; mở mang tri thức của con người chứ kh&ocirc;ng đơn thuần thể hiện tr&ecirc;n bằng cấp. Trong x&atilde; hội ng&agrave;y nay, kh&ocirc;ng &iacute;t người qu&ecirc;n đi &yacute; nghĩa đ&iacute;ch thực của học vấn, biến việc học của m&igrave;nh th&agrave;nh c&ocirc;ng cụ để kiếm tiền nhưng thực ra n&oacute; chỉ l&agrave; phương tiện để&nbsp; đưa con người đến th&agrave;nh c&ocirc;ng m&agrave; th&ocirc;i. Bởi v&igrave; học kh&ocirc;ng phải để lấy bằng m&agrave; học c&ograve;n để &ldquo;biết m&igrave;nh&rdquo; v&agrave; để &ldquo;đối nh&acirc;n xử thế&rdquo;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/t/o/toi_tu_hoc_2_2018_07_16_09_35_46.jpg\" style=\"height:927px; width:600px\" /></p>\r\n\r\n<p>Cuốn s&aacute;ch n&agrave;y tuy đ&atilde; được xuất bản từ rất l&acirc;u nhưng gi&aacute; trị của s&aacute;ch vẫn c&ograve;n nguy&ecirc;n vẹn. Những tư tưởng, chủ đề của s&aacute;ch vẫn ph&ugrave; hợp v&agrave; c&oacute; thể &aacute;p dụng trong đời sống hiện nay. Thiết nghĩ, cuốn s&aacute;ch n&agrave;y rất cần cho mọi đối tượng bạn đọc v&igrave; kh&ocirc;ng c&oacute; giới hạn n&agrave;o cho việc truy tầm kiến thức, việc học l&agrave; sự nghiệp l&acirc;u d&agrave;i của mỗi con người. Đặc biệt, cuốn s&aacute;ch l&agrave; một t&agrave;i liệu qu&yacute; để c&aacute;c bạn học sinh &ndash; sinh vi&ecirc;n tham khảo, tổ chức lại việc học của m&igrave;nh một c&aacute;ch hợp l&yacute; v&agrave; khoa học. C&aacute;c bậc phụ huynh cũng cần tham khảo s&aacute;ch n&agrave;y để định hướng v&agrave; tư vấn cho con em m&igrave;nh trong qu&aacute; tr&igrave;nh học tập.&nbsp;</p>', 72000.00, 1, 5, 2, 2, 2, 2, 20, NULL, '2020-06-19 04:14:37', '2020-06-19 04:14:37'),
(37, 'Hiệu Ứng Đèn Gas', 7, 'images/1592540189_untitled-ssssssssss1.jpg.jpg', 'Chồng của bạn đi quá giới hạn khi tán tỉnh một cô nàng ở bữa tiệc tối. Khi bạn đối chất với anh ta, anh ta nói rằng bạn đừng nên tỏ ra tự ti và áp đặt đến thế.', '<p><strong>Hiệu Ứng Đ&egrave;n Gas</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/u/n/untitled-ssssssssss1.jpg\" style=\"height:600px; width:600px\" /></strong></p>\r\n\r\n<p>Chồng của bạn đi qu&aacute; giới hạn khi t&aacute;n tỉnh một c&ocirc; n&agrave;ng ở bữa tiệc tối. Khi bạn đối chất với anh ta, anh ta n&oacute;i rằng bạn đừng n&ecirc;n tỏ ra tự ti v&agrave; &aacute;p đặt đến thế. Sau cuộc tranh c&atilde;i k&eacute;o d&agrave;i, bạn xin lỗi v&igrave; đ&atilde; khiến anh ta c&oacute; một khoảng thời gian kh&oacute; khăn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/flashmagazine/images/page_images/hieu_ung_den_gas/2020_02_28_16_52_14_3.jpg\" style=\"height:776px; width:600px\" /></p>\r\n\r\n<p>Mẹ bạn coi thường trang phục của bạn, c&ocirc;ng việc của bạn, v&agrave; cả con trai của bạn nữa. Nhưng thay v&igrave; phản kh&aacute;ng, bạn lại tự hỏi rằng c&oacute; phải mẹ m&igrave;nh đ&atilde; đ&uacute;ng hay kh&ocirc;ng, v&agrave; nghĩ rằng một người trưởng th&agrave;nh th&igrave; cần phải c&oacute; khả năng tiếp thu những lời chỉ tr&iacute;ch &quot;cỏn con&quot; như thế.</p>\r\n\r\n<p>Nếu bạn nghĩ những điều n&agrave;y kh&ocirc;ng thể xảy ra với m&igrave;nh, h&atilde;y nghĩ lại đi. Thắp đ&egrave;n gas l&agrave; một h&igrave;nh thức bạo h&agrave;nh v&agrave; thao t&uacute;ng về mặt cảm x&uacute;c v&ocirc; c&ugrave;ng quỷ quyệt, rất kh&oacute; để nhận diện v&agrave; c&ograve;n kh&oacute; hơn nữa để tho&aacute;t ra.</p>\r\n\r\n<p>Cuốn s&aacute;ch n&agrave;y sẽ gi&uacute;p bạn hiểu được, suy nghĩ lại, v&agrave; cuối c&ugrave;ng l&agrave; tho&aacute;t ra, d&ugrave; l&agrave; qua việc biến đổi mối quan hệ từ b&ecirc;n trong hay rời bỏ n&oacute; một lần v&agrave; m&atilde;i m&atilde;i.</p>', 120000.00, 1, 4, 3, 2, 2, 2, 12, NULL, '2020-06-19 04:16:29', '2020-06-19 04:16:29'),
(38, 'Tâm Lý Học Và Đời Sống', 7, 'images/1592540330_image_185935.jpg.jpg', 'Hiểu biết tâm lý con người là một lợi thế trong các hoạt động tương tác xã hội.', '<p><strong>T&acirc;m L&yacute; Học V&agrave; Đời Sống</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/8/9/8935074112378-1.jpg\" style=\"height:969px; width:600px\" /></strong></p>\r\n\r\n<p>&nbsp; &nbsp;-&nbsp; Hiểu biết t&acirc;m l&yacute; con người l&agrave; một lợi thế trong c&aacute;c hoạt động tương t&aacute;c x&atilde; hội. Nghi&ecirc;n cứu v&agrave; ứng dụng th&agrave;nh tựu của m&ocirc;n khoa học n&agrave;y cũng g&oacute;p phần quan trọng v&agrave;o việc n&acirc;ng cao chất lượng sống về mặt tinh thần, l&agrave;m tăng tiến sự giao lưu giữa c&aacute;c cộng đồng văn h&oacute;a v&agrave; ph&aacute;t triển x&atilde; hội lo&agrave;i người.</p>\r\n\r\n<p>&nbsp;&nbsp; -&nbsp; T&acirc;m l&yacute; học v&agrave; đời sống l&agrave; cuốn s&aacute;ch đồ sộ, đề cập v&agrave; đi s&acirc;u khai th&aacute;c rất nhiều chủ đề về t&acirc;m l&yacute; con người dựa tr&ecirc;n kết quả của h&agrave;ng trăm c&ocirc;ng tr&igrave;nh thực nghiệm do c&aacute;c nh&agrave; nghi&ecirc;n cứu t&acirc;m l&yacute; thực hiện. Đ&oacute; l&agrave; những nghi&ecirc;n cứu đ&aacute;ng tin cậy được tập hợp từ nhiều nơi tr&ecirc;n khắp thế giới, ở nhiều thời điểm lịch sử cho đến thế kỷ 21, tr&ecirc;n nhiều quy m&ocirc; kh&aacute;c nhau. C&aacute;c chủ đề t&acirc;m l&yacute; con người, từ nhận thức đến h&agrave;nh vi chủ quan cũng như t&aacute;c động của ho&agrave;n cảnh, đều được ph&acirc;n t&iacute;ch đầy đủ trong cuốn s&aacute;ch n&agrave;y. Đ&acirc;y sẽ l&agrave; một t&agrave;i liệu tổng qu&aacute;t v&agrave; chuy&ecirc;n s&acirc;u gi&uacute;p bạn nghi&ecirc;n cứu c&aacute;c vấn đề t&acirc;m l&yacute; học trong đời sống h&agrave;ng ng&agrave;y một c&aacute;ch c&oacute; hệ thống v&agrave; dễ tiếp thu nhất.</p>\r\n\r\n<p>Về c&aacute;c t&aacute;c giả:</p>\r\n\r\n<p>&nbsp;&nbsp; -&nbsp; Richard J. Gerrig l&agrave; gi&aacute;o sư t&acirc;m l&yacute; học Đại học Stony Brook. Trước khi giảng dạy tại Stony Brook, Gerrig giảng dạy tại Đại học Yale, nơi &ocirc;ng nhận giải thưởng The Lex Hixon. Nghi&ecirc;n cứu của Gerrig về c&aacute;c lĩnh vực t&acirc;m l&yacute; học nhận thức trong việc sử dụng ng&ocirc;n ngữ được đ&aacute;nh gi&aacute; cao. Phạm vi nghi&ecirc;n cứu l&agrave; c&aacute;c hoạt động thần kinh ẩn dưới tiến tr&igrave;nh th&ocirc;ng tin.</p>\r\n\r\n<p>&nbsp;&nbsp; -&nbsp; Philip G. Zimbardo l&agrave; gi&aacute;o sư t&acirc;m l&yacute; học Đại học Stanford, nơi &ocirc;ng giảng dạy từ năm 1968, sau khi đảm đương c&ocirc;ng việc n&agrave;y tại Đại học Yale, Đại học New York, v&agrave; Đại học Columbia. &Ocirc;ng c&oacute; nhiều đ&oacute;ng g&oacute;p cho đ&agrave;o tạo đại học v&agrave; sau đại học. Zimbardo đ&atilde; được Hiệp hội t&acirc;m l&yacute; học Mỹ trao tặng giải thưởng Ernest Hilgard về những đ&oacute;ng g&oacute;p cho t&acirc;m l&yacute; học.</p>', 98000.00, 1, 4, 3, 2, 2, 2, 22, NULL, '2020-06-19 04:18:50', '2020-06-19 04:18:50'),
(39, 'Cẩm Nang Con Trai', 8, 'images/1592552728_untitled-d_1.jpg.jpg', 'Thời kỳ trưởng thành thường mang tới những thay đổi lớn. Mọi thứ bỗng chốc trở nên lạ kỳ, thân hình phổng phao, vỡ giọng, râu tóc mọc dài, mùi hôi xuất hiện... những điều này đôi khi khiến các đấng nam nhi thấy khó hiểu và thậm chí lo lắng.', '<p><strong>Cẩm Nang Con Trai (T&aacute;i Bản 2020)</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/a/camnangcontrai-03.jpg\" style=\"height:450px; width:600px\" /></strong></p>\r\n\r\n<p>Thời kỳ trưởng th&agrave;nh thường mang tới những thay đổi lớn. Mọi thứ bỗng chốc trở n&ecirc;n lạ kỳ, th&acirc;n h&igrave;nh phổng phao, vỡ giọng, r&acirc;u t&oacute;c mọc d&agrave;i, m&ugrave;i h&ocirc;i xuất hiện... những điều n&agrave;y đ&ocirc;i khi khiến c&aacute;c đấng nam nhi thấy kh&oacute; hiểu v&agrave; thậm ch&iacute; lo lắng.</p>\r\n\r\n<p>Nếu bạn đang ở c&aacute;i tuổi m&agrave; b&acirc;y giờ người ta thường gọi theo tiếng Anh l&agrave; &quot;teen&quot; v&agrave;i c&aacute;i cậu nh&oacute;c b&eacute; bỏng đ&aacute;ng y&ecirc;u của mẹ ng&agrave;y n&agrave;o giờ đang trở th&agrave;nh một cậu ch&agrave;ng lớn tướng th&igrave; đừng qu&aacute; căng thẳng bởi bạn đang trải qua giai đoạn n&agrave;y như h&agrave;ng triệu cậu bạn kh&aacute;c trước khi c&oacute; thể quen dần v&agrave; chấp nhận những đổi thay ấy, giống như bao điều b&igrave;nh thường trong cuộc sống.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/a/camnangcontrai-02.jpg\" style=\"height:449px; width:600px\" /></p>\r\n\r\n<p>Vỡ giọng, chiều cao tăng vọt, mồ h&ocirc;i nhễ nhại, mụn trứng c&aacute; đầy mặt v&agrave; &quot;l&ocirc;ng l&aacute;&quot; khắp cơ thể... l&agrave; những thứ m&agrave; bạn sẽ phải đối mặt trong suốt thời kỳ thay đổi, lớn l&ecirc;n v&agrave; ph&aacute;t triển. V&agrave; c&ograve;n nhiều thứ kh&aacute;c nữa... Một v&agrave;i cậu bạn sẽ kh&ocirc;ng muốn b&agrave;n t&aacute;n về c&aacute;i điều kh&aacute;c lạ đang xảy ra với họ - sự ph&aacute;t triển giới t&iacute;nh. Số kh&aacute;c th&igrave; nhỏ to truyền kinh nghiệm cho bạn b&egrave; d&ugrave; họ cũng chỉ l&agrave; những anh ch&agrave;ng tay mơ hay thậm ch&iacute; chẳng biết một tẹo n&agrave;o về những thay đổi &quot;kỳ cục&quot; của qu&aacute; tr&igrave;nh n&agrave;y.</p>\r\n\r\n<p>Nếu đang l&uacute;ng t&uacute;ng về những g&igrave; xảy ra đối với m&igrave;nh, c&aacute;c bạn n&ecirc;n t&igrave;m th&ocirc;ng tin qua s&aacute;ch b&aacute;o hoặc hỏi bố mẹ để biết r&otilde; về sự ph&aacute;t triển giới t&iacute;nh. Cuốn Cẩm nang con trai sẽ dạy c&aacute;c bạn trai nhiều điều bổ &iacute;ch v&agrave; kiến thức về giới t&iacute;nh v&agrave; cuộc sống: Dậy th&igrave; l&agrave; g&igrave;? Từ điển tuổi dậy th&igrave;, c&aacute;ch d&ugrave;ng bao cao su, chăm s&oacute;c da, răng miệng, tập thể dục v&agrave; r&egrave;n luyện t&iacute;nh c&aacute;ch nam nhi.</p>\r\n\r\n<p>Con trai ph&aacute;t triển chậm v&agrave; thời gian ph&aacute;t triển cũng l&acirc;u hơn con g&aacute;i. Con trai đạt đến chiều cao tối đa ở tuổi 17 hoặc 18 trong khi con g&aacute;i đến tuổi 15 l&agrave; cao l&ecirc;u ngh&ecirc;u rồi. Con g&aacute;i nh&iacute;ch th&ecirc;m ch&uacute;t nữa v&agrave; dừng lại khi 19 tuổi trong khi con trai tiếp tục ph&aacute;t triển đến 22-23 tuổi. Những dấu hiệu đầu ti&ecirc;n của dậy th&igrave; c&oacute; thể bộc lộ sớm khi bạn khoảng 9 tuổi. C&aacute;c bạn trai sẽ ph&aacute;t triển nhanh ở độ tuổi từ 12-18 tuổi. V&agrave; ở độ tuổi n&agrave;y c&aacute;c bạn bắt đầu để &yacute; đến giới t&iacute;nh.</p>', 76000.00, 1, 5, 3, 1, 2, 2, 20, NULL, '2020-06-19 07:45:28', '2020-06-19 07:45:28'),
(40, 'Cẩm Nang Giáo Dục Giới Tính', 8, 'images/1592552813_image_195509_1_988.jpg.jpg', 'Giáo dục giới tính là một trong những nội dung nhạy cảm nhất trong quan niệm nuôi dạy con của các bậc làm Cha mẹ truyền thống.', '<p>Gi&aacute;o dục giới t&iacute;nh l&agrave; một trong những nội dung nhạy cảm nhất trong quan niệm nu&ocirc;i dạy con của c&aacute;c bậc l&agrave;m Cha mẹ truyền thống.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/i/m/image_195509_1_988.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p>Một trong những l&yacute; do lớn nhất khiến gi&aacute;o dục giới t&iacute;nh trở th&agrave;nh chủ đề khiến Cha Mẹ tr&aacute;nh n&eacute; đ&oacute; ch&iacute;nh l&agrave; v&igrave; ngay bản th&acirc;n Cha Mẹ, những người vốn được nu&ocirc;i dạy theo c&aacute;ch truyền thống cũng kh&ocirc;ng tự tin với những hiểu biết của m&igrave;nh về gi&aacute;o dục giới t&iacute;nh v&agrave; e ngại về vấn đề n&agrave;y v&igrave; &ldquo;hồi trẻ kh&ocirc;ng được dạy&rdquo; hoặc &ldquo;chưa được học ch&iacute;nh thức ở đ&acirc;u cả&rdquo;, coi đ&acirc;y thực sự l&agrave; vấn đề &ldquo;KH&Oacute; N&Oacute;I&rdquo;, &ldquo;KH&Oacute; DIỄN ĐẠT&rdquo;, &ldquo;KH&Oacute; TRAO ĐỔI CỞI MỞ&rdquo; v&agrave; &ldquo;KH&Ocirc;NG BIẾT GIAO TIẾP&rdquo; c&ugrave;ng con như thế n&agrave;o cho đ&uacute;ng c&aacute;ch.</p>\r\n\r\n<p>Trong khi đ&oacute;, c&aacute;c th&ocirc;ng tin, kiến thức về giới t&iacute;nh tr&ecirc;n c&aacute;c k&ecirc;nh th&ocirc;ng tin, c&aacute;c trang mạng x&atilde; hội kh&ocirc;ng ch&iacute;nh thống, ngo&agrave;i luồng th&igrave; nhiều v&ocirc; kể m&agrave; lượng truy cập xem cũng nhiều nhất.</p>\r\n\r\n<p>Quả thật, với nhiều cha mẹ th&igrave; thật kh&oacute; để biết n&ecirc;n bắt đầu từ đ&acirc;u, dạy con từ khi n&agrave;o, dạy bao nhi&ecirc;u l&agrave; đủ v&agrave; dạy thế n&agrave;o cho đ&uacute;ng c&aacute;ch???</p>', 56000.00, 1, 6, 1, 1, 1, 2, 12, NULL, '2020-06-19 07:46:53', '2020-06-19 07:46:53'),
(41, 'Cẩm Nang Bé Gái Tuổi Dậy Thì', 8, 'images/1592552888_image_188830.jpg.jpg', 'Đây là những cuốn cẩm nang quý giá giúp các bậc phụ huynh cùng những cô gái nhỏ của mình bước vào tuổi dậy thì tươi đẹp với tâm lí sẵn sàng và thoải mái!', '<p>Tất tần tật những thắc mắc về t&acirc;m sinh l&iacute; c&aacute;c b&eacute; g&aacute;i tuổi dậy th&igrave; (9-18 tuổi) đều được giải đ&aacute;p trong 2 cuốn s&aacute;ch n&agrave;y. Những c&acirc;u hỏi của c&aacute;c b&eacute; g&aacute;i, đang bỡ ngỡ trước ngưỡng tuổi dậy th&igrave;, được chuy&ecirc;n gia trả lời vừa khoa học m&agrave; dễ hiểu, dễ nhớ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/i/m/image_188830.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p>Đ&acirc;y l&agrave; những cuốn cẩm nang qu&yacute; gi&aacute; gi&uacute;p c&aacute;c bậc phụ huynh c&ugrave;ng những c&ocirc; g&aacute;i nhỏ của m&igrave;nh bước v&agrave;o tuổi dậy th&igrave; tươi đẹp với t&acirc;m l&iacute; sẵn s&agrave;ng v&agrave; thoải m&aacute;i!</p>', 65000.00, 1, 4, 1, 1, 1, 2, 21, NULL, '2020-06-19 07:48:08', '2020-06-19 07:48:08');
INSERT INTO `product_details` (`id`, `name`, `product_id`, `cover`, `review`, `detail`, `price`, `status`, `amount`, `author_id`, `language_id`, `publisher_id`, `user_id`, `discount`, `deleted_at`, `created_at`, `updated_at`) VALUES
(42, 'Cẩm Nang Tâm Lý Học Đường', 8, 'images/1592552992_bia-cam-nang-370x533.jpg.jpg', 'Cuốn sách ra đời với mong muốn được hỗ trợ quý phụ huynh, giáo viên cách nhận biết 16 triệu chứng bệnh - hành vi tâm lý học đường thường gặp phải, đồng thời phân tích biểu hiện, nguyên nhân từ đó đưa ra phương pháp khắc phục.', '<p><strong>Cẩm Nang T&acirc;m L&yacute; Học Đường</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/b/i/bia-cam-nang-370x533.jpg\" style=\"height:760px; width:600px\" /></strong></p>\r\n\r\n<p>Trong thời điểm c&oacute; rất nhiều vấn đề về t&acirc;m l&yacute; học đường đang diễn ra tại Việt Nam, nhằm cung cấp cho gi&aacute;o vi&ecirc;n, phụ huynh những hiểu biết khoa học, ch&iacute;nh x&aacute;c về t&acirc;m l&yacute; học trường học ở lứa tuổi học sinh - si&ecirc;n vi&ecirc;n, n&acirc;ng cao nhận thức về t&acirc;m l&yacute; học trường học tại Việt Nam, Anbooks phối hợp với Li&ecirc;n hiệp Ph&aacute;t triển T&acirc;m L&yacute; Học đường Quốc tế (CASP-I) ra mắt Cẩm nang t&acirc;m l&yacute; học đường (d&agrave;nh cho gi&aacute;o vi&ecirc;n - phụ huynh - học sinh - sinh vi&ecirc;n).</p>\r\n\r\n<p>Được giới thiệu tại Hội thảo T&acirc;m l&yacute; Học đường Quốc tế lần thứ VI (1.8.2018 - 2.8.2018) tại Trường Đại học Sư phạm H&agrave; Nội, Cẩm nang t&acirc;m l&yacute; học đường được x&acirc;y dựng tr&ecirc;n 6 trục nội dung, được sắp xếp theo c&aacute;c nh&oacute;m vấn đề thường gặp theo lứa tuổi tăng dần nhắm gi&uacute;p qu&yacute; thầy c&ocirc; v&agrave; phụ huynh dễ d&agrave;ng t&igrave;m thấy c&aacute;c chỉ dẫn ph&ugrave; hợp với độ tuổi của học tr&ograve; m&igrave;nh, con em m&igrave;nh. 6 nội dung bao gồm:</p>\r\n\r\n<p>1. Giới thiệu c&aacute;c thuật ngữ chuy&ecirc;n m&ocirc;n về t&acirc;m l&yacute; học đường.</p>\r\n\r\n<p>2. Định nghĩa lại hiểu biết về: Chậm ph&aacute;t triển ở trẻ; Khuyết tật tr&iacute; tuệ.&nbsp;</p>\r\n\r\n<p>3. Bổ sung kiến thức về c&aacute;c bệnh - h&agrave;nh vi rối loạn: Rối loạn tăng động giảm ch&uacute; &yacute;; Rối loạn phổ tự kỷ; Rối loạn học tập.&nbsp;</p>\r\n\r\n<p>4. Hướng dẫn cho bố mẹ, thầy c&ocirc; gi&aacute;o c&aacute;ch nhận biết về c&aacute;c h&agrave;nh vi của tuổi học đường như: Bắt nạt học đường; Nghiện game, internet v&agrave; mạng x&atilde; hội; T&igrave;nh y&ecirc;u tuổi học tr&ograve;; C&aacute;c vấn đề về giấc ngủ; Mệt mỏi v&agrave; c&aacute;c hệ lụy.</p>\r\n\r\n<p>5. Đưa ra những phương ph&aacute;p xử l&yacute; ph&ugrave; hợp cho bố mẹ khi rơi v&agrave;o trường hợp: L&agrave; phụ huynh của c&aacute;c em đang l&agrave; nạn nh&acirc;n của quấy rối t&igrave;nh dục, x&acirc;m hại t&igrave;nh dục.&nbsp;</p>\r\n\r\n<p>6. Hướng dẫn thầy c&ocirc; gi&aacute;o, bố mẹ đưa ra phương &aacute;n xử l&yacute; những vướng mắc trong mối quan hệ với người bệnh lo &acirc;u, trầm cảm, hay những người c&oacute; h&agrave;nh vi tự g&acirc;y tổn thương, thậm ch&iacute;&hellip; tự tử.&nbsp;&nbsp;</p>\r\n\r\n<p>Cuốn s&aacute;ch ra đời với mong muốn được hỗ trợ qu&yacute; phụ huynh, gi&aacute;o vi&ecirc;n c&aacute;ch nhận biết 16 triệu chứng bệnh - h&agrave;nh vi t&acirc;m l&yacute; học đường thường gặp phải, đồng thời ph&acirc;n t&iacute;ch biểu hiện, nguy&ecirc;n nh&acirc;n từ đ&oacute; đưa ra phương ph&aacute;p khắc phục. Cẩm nang cũng cung cấp những thuật ngữ cơ bản chuy&ecirc;n ng&agrave;nh (song ngữ) để thầy c&ocirc; v&agrave; phụ huynh dễ d&agrave;ng tra cứu, đảm bảo t&iacute;nh ch&iacute;nh x&aacute;c - khoa học. Đ&acirc;y l&agrave; một t&agrave;i liệu quan trọng cho ng&agrave;nh t&acirc;m l&yacute; học đường tại Việt Nam t&iacute;nh đến thời điểm n&agrave;y.&nbsp;</p>\r\n\r\n<p>Đ&acirc;y cũng l&agrave; m&oacute;n qu&agrave; nh&acirc;n năm học mới m&agrave; Anbooks v&agrave; đội ngũ chuy&ecirc;n gia t&acirc;m l&yacute; học đường - th&agrave;nh vi&ecirc;n của Li&ecirc;n hiệp Ph&aacute;t triển T&acirc;m l&yacute; Học đường Quốc tế (CASP-I) gửi tặng đến qu&yacute; thầy c&ocirc;, cha mẹ, hy vọng sẽ g&oacute;p phần cải thiện thực trạng thiếu th&ocirc;ng tin khoa học chuẩn x&aacute;c về c&aacute;c vấn đề t&acirc;m l&yacute; học đường tại Việt Nam.</p>', 87000.00, 1, 6, 2, 1, 3, 2, 12, NULL, '2020-06-19 07:49:52', '2020-06-19 07:49:52'),
(43, 'Cách Sống', 9, 'images/1592553173_image_57359.jpg.jpg', 'Inamori Kazuo một doanh nhân hết sức thành đạt trong việc sáng lập và điều hành tập đoàn Kyocera lớn mạnh của Nhật Bản.', '<p>Inamori Kazuo một&nbsp;doanh nh&acirc;n&nbsp;hết sức th&agrave;nh đạt trong việc s&aacute;ng lập v&agrave; điều h&agrave;nh tập đo&agrave;n Kyocera lớn mạnh của Nhật Bản. &Ocirc;ng sẽ đem đến cho ch&uacute;ng ta những tư tưởng về C&aacute;ch Sống. Đ&acirc;y l&agrave; tập hợp những triết l&yacute; m&agrave; &ocirc;ng đ&uacute;c r&uacute;t ra được từ thực tế sau bao nhi&ecirc;u năm gian nan x&acirc;y dựng c&ocirc;ng ty.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/i/m/image_57359.jpg\" style=\"height:324px; width:232px\" /></p>\r\n\r\n<p>Trước thực tại của một x&atilde; hội Nhật Bản m&agrave; con người ng&agrave;y c&agrave;ng đ&aacute;nh mất đi gi&aacute; trị truyền thống, Inamori Kazuo đưa ra một y&ecirc;u cầu bức thiết l&agrave; phải nh&igrave;n lại &ldquo;lẽ sống&rdquo; của con người thời hiện đại. Lẽ sống qua c&aacute;i nh&igrave;n của t&aacute;c giả kh&ocirc;ng phải l&agrave; c&aacute;i g&igrave; xa vời m&agrave; l&agrave; những điều giản đơn, những gi&aacute; trị gần gũi hay những th&oacute;i quen hằng ng&agrave;y: &ldquo;những nguy&ecirc;n tắc đạo đức ch&acirc;n phương&rdquo;. C&aacute;ch sống gồm 5 chương, mỗi chương l&agrave; một quan điểm của t&aacute;c giả:</p>\r\n\r\n<p>Chương 1. Biến suy nghĩ th&agrave;nh hiện thực.</p>\r\n\r\n<p>Ch&uacute;ng ta kh&ocirc;ng thể c&oacute; c&aacute;c &yacute; tưởng v&agrave; s&aacute;ng tạo nếu lười suy nghĩ. Chắc c&aacute;c bạn biết kh&ocirc;ng &iacute;t những nh&agrave; b&aacute;c học như Edison hay Newton t&igrave;m ra những ph&aacute;t minh trong những l&uacute;c b&igrave;nh thường nhất, bởi họ sống với những trăn trở, kh&ocirc;ng ngừng t&igrave;m kiếm lời giải đ&aacute;p cho vấn đề. Cuộc đời chỉ cho ta những điều ta muốn c&oacute;, v&igrave; vậy h&atilde;y suy nghĩ &ldquo;Suy nghĩ phải thấu đ&aacute;o, phải li&ecirc;n tục, kh&ocirc;ng ngừng nghỉ cả ng&agrave;y lẫn đ&ecirc;m&hellip;&rdquo; h&atilde;y h&igrave;nh dung &ldquo;sẽ thực hiện được nếu h&igrave;nh dung ra mọi ng&otilde; ng&aacute;ch của c&ocirc;ng việc&rdquo;, h&atilde;y l&ecirc;n kế hoạch &ldquo;kh&ocirc;ng thể th&agrave;nh c&ocirc;ng nếu kh&ocirc;ng lập kế hoạch chi tiết v&agrave; chuẩn bị chu đ&aacute;o&rdquo;.</p>\r\n\r\n<p>Chương 2. Suy nghĩ từ nguy&ecirc;n l&yacute; v&agrave; nguy&ecirc;n tắc.</p>\r\n\r\n<p>Những nguy&ecirc;n l&yacute; v&agrave; nguy&ecirc;n tắc ch&acirc;n phương như những chuẩn mực đạo đức m&agrave; bạn vẫn được bố mẹ dạy bảo từ khi c&ograve;n nhỏ, ch&uacute;ng kh&ocirc;ng những tốt cho cuộc sống m&agrave; c&ograve;n cả trong kinh doanh. H&atilde;y sống ki&ecirc;n định với những nguy&ecirc;n tắc đ&oacute;, n&oacute; sẽ chỉ đường cho bạn ngay cả khi bạn lạc lối.</p>', 89000.00, 1, 5, 3, 2, 2, 2, 23, NULL, '2020-06-19 07:52:53', '2020-06-19 07:52:53'),
(44, 'Cái Dũng Của Thánh Nhân', 9, 'images/1592553284_8934974146186.jpg.jpg', 'Chỗ mà người xưa gọi là hào kiệt ắt phải có khí tiết hơn người. Nhưng nhân tình có chỗ không nhịn được.', '<p><strong>C&aacute;i Dũng Của Th&aacute;nh Nh&acirc;n</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/a/cai_dung_cua_thanh_nhan__1_2018_07_16_14_15_08.jpg\" style=\"height:856px; width:600px\" /></strong></p>\r\n\r\n<p>Chỗ m&agrave; người xưa gọi l&agrave; h&agrave;o kiệt ắt phải c&oacute; kh&iacute; tiết hơn người. Nhưng nh&acirc;n t&igrave;nh c&oacute; chỗ kh&ocirc;ng nhịn được. Bởi vậy, kẻ thất phu gặp nhục, tuốt gươm đứng dậy, vươn m&igrave;nh xốc đ&aacute;nh. C&aacute;i đ&oacute; chưa gọi l&agrave; dũng. Kẻ đại dũng trong thi&ecirc;n hạ, tr&aacute;i lại, th&igrave;nh l&igrave;nh gặp những việc phi thường cũng kh&ocirc;ng kinh, v&ocirc; cố bị những điều ngang tr&aacute;i cũng kh&ocirc;ng giận. Đ&oacute; l&agrave; nhờ chỗ ho&agrave;i b&atilde;o của họ rất lớn v&agrave; chỗ lập ch&iacute; của họ rất xa vậy.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/a/cai_dung_cua_thanh_nhan__2_2018_07_16_14_15_08.jpg\" style=\"height:911px; width:600px\" /></p>', 78000.00, 1, 9, 2, 1, 1, 2, 11, NULL, '2020-06-19 07:54:44', '2020-06-19 07:54:44'),
(45, 'Nói Nhiều Không Bằng Nói Đúng', 9, 'images/1592553375_image_195509_1_22478.jpg.jpg', 'Quyển sách cung cấp 36 bí quyết để chiếm được cảm tình của người khác.', '<p>Quyển s&aacute;ch cung cấp 36 b&iacute; quyết để chiếm được cảm t&igrave;nh của người kh&aacute;c.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/n/o/noi_nhieu_khong_bang_noi_dung_1_2018_08_03_15_01_29.jpg\" style=\"height:821px; width:600px\" /></p>\r\n\r\n<p>Muốn c&oacute; mối quan hệ x&atilde; hội tốt, h&atilde;y bắt đầu từ những lời n&oacute;i l&agrave;m đẹp l&ograve;ng mọi người. Trong giao tiếp, h&atilde;y lu&ocirc;n nhớ c&aacute;c nguy&ecirc;n t&aacute;c: Im lặng - Quan s&aacute;t - Lắng nghe.</p>\r\n\r\n<p>Đừng n&oacute;i qu&aacute; thẳng thắn, khiến người nghe thấy kh&oacute; chịu!</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/n/o/noi_nhieu_khong_bang_noi_dung_2_2018_08_03_15_01_29.jpg\" style=\"height:904px; width:600px\" /></p>\r\n\r\n<p>N&oacute;i chuyện kh&ocirc;ng dễ nghe sẽ khiến mọi người phản cảm v&agrave; xa c&aacute;ch bạn, đồng thời dẫn đến việc bạn trở th&agrave;nh người c&oacute; ấn tượng xấu.</p>\r\n\r\n<p>Lời n&oacute;i hay như những giai điệu đẹp, ai cũng muốn nghe.</p>', 79000.00, 1, 8, 1, 1, 3, 2, 19, NULL, '2020-06-19 07:56:15', '2020-06-19 07:56:15'),
(46, 'Cẩm Nang Tư Duy Đạo Đức', 9, 'images/1592553472_image_119074.jpg.jpg', 'Bộ sách CẨM NANG TƯ DUY này dành cho mọi bạn đọc, từ học sinh, sinh viên đến các giảng viên, các nhà nghiên cứu, doanh nhân, người đã đi làm cũng như quý phụ huynh... muốn nâng cao năng lực tư duy của mình.', '<p>Bộ s&aacute;ch&nbsp;<strong>CẨM NANG TƯ DUY</strong>&nbsp;n&agrave;y d&agrave;nh cho mọi bạn đọc, từ học sinh, sinh vi&ecirc;n đến c&aacute;c giảng vi&ecirc;n, c&aacute;c nh&agrave; nghi&ecirc;n cứu, doanh nh&acirc;n, người đ&atilde; đi l&agrave;m cũng như qu&yacute; phụ huynh... muốn n&acirc;ng cao năng lực tư duy của m&igrave;nh. Học sinh, sinh vi&ecirc;n c&oacute; thể đọc cẩm nang như t&agrave;i liệu tham khảo để học tốt c&aacute;c bộ m&ocirc;n; qu&yacute; phụ huynh c&oacute; thể sử dụng cẩm nang để vừa n&acirc;ng cao năng lực tư duy của m&igrave;nh vừa gi&uacute;p con em m&igrave;nh ph&aacute;t triển c&aacute;c kỹ năng tư duy cần thiết để học tốt; c&aacute;c giảng vi&ecirc;n, nh&agrave; nghi&ecirc;n cứu c&oacute; thể sử dụng cẩm nang để học tốt; c&aacute;c chủ đề của m&igrave;nh; người đ&atilde; đi l&agrave;m, doanh nh&acirc;n... c&oacute; thể &aacute;p dụng c&aacute;c kỹ năng, &yacute; tưởng của cẩm nang v&agrave;o c&ocirc;ng việc v&agrave; cuộc sống.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/a/cam_nang_tu_duy_dao_duc_1_2018_08_04_09_11_32.jpg\" style=\"height:997px; width:600px\" /></p>\r\n\r\n<p>Bộ s&aacute;ch do &ldquo;The Foundation for Critical Thinking (Quỹ Tư duy Phản biện) bi&ecirc;n soạn. Đ&acirc;y l&agrave; một tổ chức học thuật, cung cấp nhiều &ldquo;cẩm nang&rdquo; về tư duy khoa học được bi&ecirc;n soạn chặt chẽ, chắt lọc, ngắn gọn v&agrave; thiết thực, đ&uacute;c kết nhiều th&agrave;nh tựu về phương ph&aacute;p tr&ecirc;n &ldquo;mẫu số chung&rdquo; l&agrave; khuyến kh&iacute;ch tư duy ph&acirc;n t&iacute;ch v&agrave; phản biện, c&ugrave;ng với c&aacute;c kỹ năng nghe, n&oacute;i, đọc, viết, học tập, v&agrave; nghi&ecirc;n cứu một c&aacute;ch c&oacute; thực chất, c&oacute; chiều s&acirc;u v&agrave; dễ d&agrave;ng &aacute;p dụng v&agrave;o cuộc sống. &nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/a/cam_nang_tu_duy_dao_duc_2_2018_08_04_09_11_32.jpg\" style=\"height:1077px; width:600px\" /></p>', 65000.00, 1, -8, 3, 2, 2, 2, 10, NULL, '2020-06-19 07:57:52', '2020-06-23 16:39:09'),
(47, 'Con Nghĩ Đi, Mẹ Không Biết', 10, 'images/1592553616_image_184772.jpg.jpg', 'Hành trình lớn lên cùng con của bà mẹ này có thể chạm tới trái tim của các ông bố bà mẹ khác có lẽ là bởi sự chân thành và những chiêm nghiệm thật như  được rút ra từ tim của người mẹ.', '<p><strong>Con nghĩ đi, mẹ kh&ocirc;ng biết</strong>&nbsp;l&agrave; tập hợp những b&agrave;i viết được đ&oacute;n nhận nhiệt th&agrave;nh tr&ecirc;n Facebook của&nbsp;<strong>Thu H&agrave; (Mẹ Xu-Sim)</strong>, rất nhiều b&agrave;i viết trong số đ&oacute; đ&atilde; từng được đăng tr&ecirc;n c&aacute;c b&aacute;o Tuổi trẻ, Thanh Ni&ecirc;n, Vnexpress, D&acirc;ntr&iacute;, V Nhưng kh&aacute;c với những d&ograve;ng chia sẻ tr&ecirc;n mạng x&atilde; hội, nội dung c&aacute;c b&agrave;i được chọn lọc hơn, c&oacute; chủ đ&iacute;ch hơn với giải ph&aacute;p để con tự lập v&agrave; mẹ tự do. Những b&agrave;i viết của&nbsp;<strong>Thu H&agrave;</strong>&nbsp;sinh động, thiết thực v&igrave; đ&oacute; l&agrave; những trải nghiệm thật, ho&agrave;n to&agrave;n l&agrave; sự thật của một b&agrave; mẹ c&oacute; hai con đang trong tuổi ăn, tuổi học, cuả một ngưuời l&agrave;m việc với trẻ em li&ecirc;n tục suốt 20 năm, trong đ&oacute; c&oacute; 3 năm dạy học v&agrave; 17 năm l&agrave;m b&aacute;o tuổi teen.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/flashmagazine/images/page_images/con_nghi_di__me_khong_biet_tai_ban_2019/2019_11_04_14_39_13_1.jpg\" style=\"height:951px; width:600px\" /></p>\r\n\r\n<p>H&agrave;nh tr&igrave;nh lớn l&ecirc;n c&ugrave;ng con của b&agrave; mẹ n&agrave;y c&oacute; thể chạm tới tr&aacute;i tim của c&aacute;c &ocirc;ng bố b&agrave; mẹ kh&aacute;c c&oacute; lẽ l&agrave; bởi sự ch&acirc;n th&agrave;nh v&agrave; những chi&ecirc;m nghiệm thật như&nbsp; được r&uacute;t ra từ tim của người mẹ. Nhiều người y&ecirc;u mến chị bởi những triết l&yacute; gi&aacute;o dục h&agrave;n l&acirc;m được viết bằng lối kể chuyện giản dị, thực tế v&agrave; sống động. Đối tượng độc giả ch&iacute;nh của cuốn s&aacute;ch l&agrave; c&aacute;c &ocirc;ng bố- b&agrave; mẹ, nhưng c&aacute;c bạn trẻ vẫn c&oacute; thể đọc s&aacute;ch để hiểu hơn về phụ huynh m&igrave;nh, cũng l&agrave; một m&oacute;n qu&agrave; &yacute; nhị khi muốn &ldquo;nhắc kh&eacute;o&rdquo; bố mẹ rằng: &ldquo;con muốn tự lập&rdquo;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/flashmagazine/images/page_images/con_nghi_di__me_khong_biet_tai_ban_2019/2019_11_04_14_39_13_2.jpg\" style=\"height:1016px; width:600px\" /></p>', 74000.00, 1, 6, 2, 1, 1, 2, 12, NULL, '2020-06-19 08:00:16', '2020-06-19 08:00:16'),
(48, 'Ăn Dặm Kiểu Nhật', 10, 'images/1592553729_image_180164_1_43_1_57_1_4_1_2_1_165.jpg.jpg', 'Bạn đã làm cha mẹ. Và bạn có lúng túng với bước đầu cho bé yêu ăn dặm?', '<p>Bạn đ&atilde; l&agrave;m cha mẹ. V&agrave; bạn c&oacute; l&uacute;ng t&uacute;ng với bước đầu cho b&eacute; y&ecirc;u ăn dặm?</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/i/m/image_180164_1_43_1_57_1_4_1_2_1_165.jpg\" style=\"height:669px; width:600px\" /></p>\r\n\r\n<p>Giai đoạn ăn dặm c&oacute; vai tr&ograve; l&agrave; giai đoạn chuẩn bị để trẻ chuyển từ b&uacute; mẹ, uống sữa ngo&agrave;i sang &ldquo;nhai n&aacute;t v&agrave; nuốt&rdquo;. Điều quan trọng của giai đoạn n&agrave;y kh&ocirc;ng chỉ l&agrave; cho trẻ ăn v&agrave; theo d&otilde;i đảm bảo sự ph&aacute;t triển của trẻ m&agrave; c&ograve;n phải theo d&otilde;i chức năng ăn v&agrave; l&ocirc;i k&eacute;o hợp l&yacute; sự ham th&iacute;ch ăn của trẻ, l&agrave;m cho trẻ tự lập. Để l&agrave;m được những việc đ&oacute;, thống nhất quan điểm l&agrave; rất quan trọng, phải thống nhất về việc lựa chọn thực phẩm, lượng ăn, c&aacute;ch ăn, những người lớn xung quanh gi&uacute;p đỡ như thế n&agrave;o. Tuy nhi&ecirc;n việc ăn dặm l&agrave; việc h&agrave;ng ng&agrave;y. Bạn c&oacute; đang băn khoăn trăn trở n&ecirc;n cho trẻ ăn g&igrave;, ăn bao nhi&ecirc;u, ăn như thế n&agrave;o kh&ocirc;ng. Trong giai đoạn lần đầu ti&ecirc;n b&eacute; tiếp x&uacute;c với thức ăn, nếu mọi người xung quanh b&eacute; qu&aacute; nhạy cảm, lo lắng về bữa ăn dặm của trẻ, lo lắng đ&oacute; sẽ truyền sang b&eacute; v&agrave; thường l&agrave;m mất đi kh&ocirc;ng kh&iacute; của bữa ăn vốn dĩ l&agrave; vui vẻ.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/flashmagazine/images/page_images/an_dam_kieu_nhat_tai_ban_2018/2019_09_19_14_11_58_3.jpg\" style=\"height:713px; width:600px\" /></p>\r\n\r\n<p>Ch&iacute;nh v&igrave; thế, đ&uacute;ng như ti&ecirc;u đề của cuốn s&aacute;ch, t&ocirc;i giới thiệu những c&ocirc;ng thức nấu ăn đơn giản m&agrave; ai cũng c&oacute; thể l&agrave;m được trong thời gian ngắn bởi n&oacute; &ldquo;đơn giản&rdquo;, &ldquo;dễ l&agrave;m&rdquo; v&agrave; những c&ocirc;ng thức nấu ăn phong ph&uacute; s&aacute;ng tạo v&iacute; dụ như chia từ thức ăn của người lớn, thực đơn sử dụng baby food &hellip; Ngo&agrave;i ra c&ograve;n n&oacute;i rất cẩn thận về những thực phẩm cần phải c&acirc;n nhắc khi trẻ bị ốm, dị ứng thực phẩm. Hơn nữa, cuốn s&aacute;ch cũng c&oacute; cả những c&ocirc;ng thức nấu ăn khi bị dị ứng để bữa ăn dặm kh&ocirc;ng trở n&ecirc;n nh&agrave;m ch&aacute;n.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn0.fahasa.com/media/flashmagazine/images/page_images/an_dam_kieu_nhat_tai_ban_2018/2019_09_19_14_11_58_4.jpg\" style=\"height:713px; width:600px\" /></p>', 76000.00, 1, 2, 1, 1, 1, 2, 12, NULL, '2020-06-19 08:02:09', '2020-06-19 08:02:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `publishers`
--

CREATE TABLE `publishers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Kim Đồng', NULL, '2020-05-29 11:49:53', '2020-05-29 11:49:53'),
(2, 'NXB Trẻ', NULL, '2020-06-16 08:46:55', '2020-06-16 08:46:55'),
(3, 'Sư phạm Hà Nội', NULL, '2020-06-16 08:47:18', '2020-06-16 08:47:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subscribes`
--

CREATE TABLE `subscribes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `subscribes`
--

INSERT INTO `subscribes` (`id`, `email`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'huy96cpqnvn@gmail.com', NULL, '2020-06-10 08:43:07', '2020-06-10 08:43:07'),
(2, 'huy96cpqnvn@gmail.com', NULL, '2020-06-10 08:49:34', '2020-06-10 08:49:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Tin tức', NULL, '2020-06-01 04:59:55', '2020-06-01 04:59:55'),
(2, 'Review', NULL, '2020-06-16 09:53:11', '2020-06-16 09:53:11'),
(3, 'Sách', NULL, '2020-06-16 09:53:21', '2020-06-16 09:53:21');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cover` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `level`, `phone`, `address`, `status`, `created_at`, `updated_at`, `cover`) VALUES
(2, 'Hà Quang Huy', 'huy96cpqnvn@gmail.com', NULL, '$2y$10$8mWBZLh2NW.ZF2exDwjmDOXEAU38akIHaAGiIzKV/tet0nhSr3PHi', NULL, 'admin', '0123456888', 'Hà Nội', 1, '2020-05-29 05:12:48', '2020-06-15 15:52:11', 'images/1592236331_avatar1.jpg.jpg'),
(3, 'haminhtu', 'haminhtu1221@gmail.com', NULL, '123456', NULL, 'admin', '0334909668', 'Thoj Xuaan Thanh Hoas', 1, NULL, NULL, ''),
(5, 'admin', 'admin@gmail.com', NULL, '$2y$10$8mWBZLh2NW.ZF2exDwjmDOXEAU38akIHaAGiIzKV/tet0nhSr3PHi', NULL, 'admin', '122523666', 'thanh hoa', 0, NULL, '2020-06-23 13:48:11', 'images/1592920090_rEpDUQCxe4.jpeg.jpeg'),
(13, 'tuấn', 'nvtuan88@gmail.com', NULL, '$2y$10$BIn8Jiur/qgHb/Lxio2KAOvTHNZ0AzpWA487lVLyp9EoZzkSncy3y', '3y3d4X1GtV2nxGl1Y8f5Z8TSGYhH6jX8e07e2j2fgYC9OtChSNagZMdMuKwf', 'user', '098287839', 'hà nội', 1, '2020-06-20 09:41:24', '2020-06-20 09:41:24', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news_comments`
--
ALTER TABLE `news_comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT cho bảng `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `news_comments`
--
ALTER TABLE `news_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
