-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 17, 2020 lúc 02:38 AM
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
-- Cơ sở dữ liệu: `t1904e_blog`
--

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
(8, 'Category3', NULL, '2020-04-28 14:25:31', '2020-04-28 14:25:31'),
(9, 'Category4', NULL, '2020-05-14 06:40:21', '2020-05-14 06:40:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `name`, `content`, `email`, `post_id`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Hà Quang Huy', 'bài viết hay quá', 'huy96cpqn@gmail.com', 2, 1, NULL, '2020-05-14 08:16:56', '2020-05-14 08:16:56'),
(2, 'Hà Minh Tú', 'post comment', 'haminhtu1221@gmail.com', 8, 1, NULL, '2020-05-22 18:09:12', '2020-05-22 18:09:12');

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
(4, '2020_04_21_191928_create_posts_table', 2),
(5, '2020_04_21_192120_create_categories_table', 2),
(6, '2020_04_21_192137_create_comments_table', 2),
(7, '2020_04_21_192148_create_tags_table', 2),
(8, '2020_05_19_190251_create_subscribes_table', 3);

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
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `content`, `title`, `summary`, `is_active`, `category_id`, `user_id`, `cover`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'Cựu danh thủ Arsenal, Ian Wright tiết lộ HLV Arsene Wenger từng dự định kết hợp song tấu Thierry Henry và Nicolas Anelka trên hàng công Pháo thủ thành London. Thế nhưng, chân sút người Pháp, Anelka quyết định cập bến Real Madrid. \r\n\r\nAnelka gia nhập đội chủ sân Emirates từ PSG vào năm 1997 với bản hợp đồng trị giá 500 nghìn bảng. Anh nhanh chóng chứng minh giá trị của mình bằng việc góp công lớn vào danh hiệu Premier League của Arsenal ngay ở mùa giải đầu tiên khoác áo đội bóng Bắc London.\r\n\r\nViệc ra đi của Anelka khiến kế hoạch tạo thành cặp song tấu đáng chờ đợi trên hàng công của Wenger đổ bể. Chia sẻ trên Premier League Productions, Wright cho biết:\r\n\r\n  \r\n\"Anelka rất khéo léo, lấy bóng từ chân đối thủ. Anh ấy nhanh nhẹn và có thể làm mọi thứ với trái bóng. Wenger cố gắng kết hợp Anelka với Thierry Henry nhưng đã không thành công,\".', 'Real Madrid', 'Real Madrid là đội bóng giàu danh hiệu nhất', 1, 9, 1, 'images/1589438509_hero_1.jpg.jpg', NULL, NULL, '2020-05-14 06:41:49'),
(3, '<p>&Ocirc;ng Nguyễn Thanh Long, Thứ trưởng Thường trực Bộ Y tế, chiều 28/4 cho biết, 8 trường hợp dương t&iacute;nh lại đang được c&aacute;ch ly, theo d&otilde;i tiếp tại c&aacute;c cơ sở y tế. Giới nghi&ecirc;n cứu đ&atilde; thực hiện việc nu&ocirc;i cấy 5 mẫu virus từ họ, nhưng virus kh&ocirc;ng ph&aacute;t triển. C&aacute;c nh&agrave; chuy&ecirc;n m&ocirc;n nhận định ch&uacute;ng c&oacute; thể l&agrave; virus bất hoạt (x&aacute;c virus). &quot;Về l&yacute; thuyết, khả năng l&acirc;y nhiễm của c&aacute;c ca t&aacute;i dương t&iacute;nh n&agrave;y rất thấp&quot;, Thứ trưởng Nguyễn Thanh Long n&oacute;i. &Ocirc;ng Long từng chỉ ra ba nguy&ecirc;n nh&acirc;n c&oacute; thể khiến bệnh nh&acirc;n Covid-19 t&aacute;i dương t&iacute;nh sau nhiều lần &acirc;m t&iacute;nh. Thứ nhất, người bệnh chưa khỏi bệnh ho&agrave;n to&agrave;n, chưa đ&agrave;o thải hết mầm bệnh, virus vẫn tồn tại trong cơ thể, đặc biệt trong tế b&agrave;o ni&ecirc;m mạc phổi. Thứ hai, người bệnh đ&atilde; khỏi bệnh, đang trong qu&aacute; tr&igrave;nh đ&agrave;o thải virus bất hoạt. Người bệnh thải ra vật chất giống mầm bệnh nhưng kh&ocirc;ng c&oacute; khả năng g&acirc;y hại. Thứ ba, bệnh nh&acirc;n l&agrave; người l&agrave;nh mang tr&ugrave;ng, xảy ra khi cơ thể người mang virus chưa sản xuất đủ kh&aacute;ng thể để khống chế, kiểm so&aacute;t, ti&ecirc;u diệt virus. Bộ Y tế chỉ đạo nghi&ecirc;n cứu s&acirc;u c&aacute;c trường hợp t&aacute;i dương t&iacute;nh, giao cho hai ph&ograve;ng th&iacute; nghiệm c&oacute; mức độ an to&agrave;n sinh học cấp 3 thuộc Viện Vệ sinh dịch tễ Trung ương v&agrave; Viện Pasteur TP HCM nu&ocirc;i cấy virus thu được. Nếu virus đ&oacute; sống, ph&aacute;t triển th&igrave; chứng tỏ cơ thể người đ&oacute; chưa khỏi bệnh. Nếu virus kh&ocirc;ng ph&aacute;t triển nh&acirc;n l&ecirc;n, đ&oacute; chỉ l&agrave; dạng bất hoạt c&oacute; thể kh&ocirc;ng g&acirc;y hại. 8 ca t&aacute;i dương t&iacute;nh gồm c&aacute;c bệnh nh&acirc;n 188, 137, 74 ở H&agrave; Nội; 52 v&agrave; 149 ở Quảng Ninh; bệnh nh&acirc;n 36 ở B&igrave;nh Thuận; 207 v&agrave; 224 ở TP HCM. &Ocirc;ng Long kh&ocirc;ng cho biết 5 ca c&oacute; virus bất hoạt l&agrave; bệnh nh&acirc;n n&agrave;o. Một nghi&ecirc;n cứu tại H&agrave;n Quốc tr&ecirc;n 268 ca t&aacute;i dương t&iacute;nh cho thấy nCoV thu được từ những người n&agrave;y đem nu&ocirc;i cấy đều kh&ocirc;ng ph&aacute;t triển, cũng kh&ocirc;ng ghi nhận t&igrave;nh trạng l&acirc;y nhiễm xuất ph&aacute;t từ những người t&aacute;i dương t&iacute;nh.</p>', '5 bệnh nhân tái dương tính chỉ mang \'xác virus\'', 'Các viện nghiên cứu lấy mẫu của 5 trong 8 bệnh nhân Covid-19 tái dương tính để nuôi cấy, nhưng chúng không nhân lên bởi có thể chỉ là virus bất hoạt.', 1, 1, 1, 'images/1589438576_hero_1.jpg.jpg', NULL, '2020-04-28 14:31:54', '2020-05-14 06:42:56'),
(4, '<p>Đầu ti&ecirc;n c&oacute; thể kể đến Chelsea. 2 đội gặp nhau 3 lần ở c&aacute;c giải ch&acirc;u lục, 1 trận kết th&uacute;c với kết quả h&ograve;a, 2 trận c&ograve;n lại Chelsea l&agrave; b&ecirc;n thắng cuộc.</p>', 'Chelsea', 'Đầu tiên có thể kể đến Chelsea.', 1, 1, 1, 'images/1589438535_img_4.jpg.jpg', NULL, '2020-05-06 12:27:59', '2020-05-14 06:42:15'),
(5, '<p>Năm 2000, Los Blancos chạm tr&aacute;n Boca Juniors ở chung kết C&uacute;p li&ecirc;n lục địa (tiền th&acirc;n của C&uacute;p v&ocirc; địch c&aacute;c CLB thế giới) v&agrave; thua với tỷ số 2-1.</p>', 'Los Blancos', 'Năm 2000, Los Blancos chạm trán Boca Juniors', 0, 1, 1, 'images/1589438549_img_1.jpg.jpg', NULL, '2020-05-06 12:31:46', '2020-05-14 06:42:29'),
(6, '<p>Năm 1983, nhược tiểu Aberdeen của Alex Ferguson, trong lần đầu ti&ecirc;n đ&aacute; chung kết giải ch&acirc;u lục, đ&atilde; đ&aacute;nh bại đội b&oacute;ng vĩ đại Real Madrid để l&ecirc;n ng&ocirc;i Cup Winners&#39; Cup.</p>', 'Aberdeen', 'Năm 1983, nhược tiểu Aberdeen của Alex Ferguson', 1, 8, 1, 'images/1589438593_img_4.jpg.jpg', NULL, '2020-05-06 12:52:50', '2020-05-14 06:43:13'),
(8, '<p>M&ugrave;a H&egrave; tới l&agrave; thời điểm để HLV Mikel Arteta bắt đầu x&acirc;y dựng triều đại của ri&ecirc;ng m&igrave;nh tại&nbsp;Arsenal, nhưng dự kiến n&oacute; sẽ diễn ra kh&ocirc;ng mấy su&ocirc;n sẻ khi Ph&aacute;o thủ đang phải đối mặt với kh&aacute; nhiều kh&oacute; khăn về mặt t&agrave;i ch&iacute;nh.&nbsp;</p>\r\n\r\n<p>Tất nhi&ecirc;n, d&ugrave; gặp nhiều vấn đề nhưng chắc chắn Arteta vẫn sẽ c&oacute; được những t&acirc;n binh chất lượng, chỉ l&agrave; &ocirc;ng kh&ocirc;ng thể mang h&agrave;ng loạt ng&ocirc;i sao về Emirates. Nhiều khả năng, Ph&aacute;o thủ sẽ tiến h&agrave;nh dồn to&agrave;n lực cho một bom tấn duy nhất, v&agrave; rất c&oacute; thể đ&oacute; l&agrave; Thomas Partey.</p>', 'Arsenal đứng trước viễn cảnh', 'Arsenal đứng trước viễn cảnh sở hữu một trong những tiền vệ hàng đầu thế giới hiện tại.', 1, 2, 1, 'images/1589438390_img_3.jpg.jpg', NULL, '2020-05-14 06:39:50', '2020-05-14 06:39:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subscribes`
--

CREATE TABLE `subscribes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `subscribes`
--

INSERT INTO `subscribes` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'huy96cpqnvn@gmail.com', '2020-05-19 13:16:30', '2020-05-19 13:16:30'),
(2, 'huy96cpqnvn@gmail.com', '2020-05-19 13:19:00', '2020-05-19 13:19:00'),
(3, 'huy96cpqnvn@gmail.com', '2020-05-19 13:20:40', '2020-05-19 13:20:40'),
(4, 'huy96cpqnvn@gmail.com', '2020-05-19 13:21:22', '2020-05-19 13:21:22'),
(5, 'huy96cpqnvn@gmail.com', '2020-05-19 13:22:41', '2020-05-19 13:22:41'),
(6, 'huy96cpqnvn@gmail.com', '2020-05-19 13:24:49', '2020-05-19 13:24:49'),
(7, 'huy96cpqnvn@gmail.com', '2020-05-19 13:25:21', '2020-05-19 13:25:21'),
(8, 'huy96cpqnvn@gmail.com', '2020-05-19 13:28:40', '2020-05-19 13:28:40'),
(9, 'huy96cpqnvn@gmail.com', '2020-05-19 13:29:21', '2020-05-19 13:29:21');

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
(1, 'trẻ', NULL, NULL, NULL),
(2, 'đẹp', NULL, NULL, NULL),
(5, 'aloha', NULL, '2020-04-28 10:08:40', '2020-04-28 10:08:40');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'huy96cpqn', 'huy96cpqnvn@gmail.com', NULL, '$2y$10$enS9c54KgLQ8TzrWegcGNOAYnFPyIKhpM7InC8LAp0rpKn5.lEhyO', NULL, '2020-04-18 14:01:03', '2020-04-18 14:01:03'),
(2, 'Hà Minh Tú', 'haminhtu1221@gmail.com', NULL, '$2y$10$DWv4CS4Ay5W30SBPlmcNyeeH/HRavLVNMeRNC5N89gX5aNoHVIaDK', NULL, '2020-05-20 10:11:10', '2020-05-20 10:11:10');

--
-- Chỉ mục cho các bảng đã đổ
--

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
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
