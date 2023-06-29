-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 26, 2023 lúc 11:30 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `blockchain`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `billreceiveds`
--

CREATE TABLE `billreceiveds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `total_price` double NOT NULL,
  `id_product` bigint(20) NOT NULL,
  `list_saleroom` varchar(255) NOT NULL,
  `shelf_life` timestamp NULL DEFAULT NULL,
  `thumb` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `billreceiveds`
--

INSERT INTO `billreceiveds` (`id`, `quantity`, `price`, `total_price`, `id_product`, `list_saleroom`, `shelf_life`, `thumb`, `created_at`, `updated_at`) VALUES
(197, 500, 50000, 25000000, 1, '151,152', '2023-06-30 07:25:00', '/storage/img/qr-code/img-1.png', '2023-06-26 00:20:31', '2023-06-26 00:22:15'),
(198, 500, 145000, 72500000, 4, '151,152,153', '2023-06-30 07:27:00', '/storage/img/qr-code/img-2.png', '2023-06-26 00:22:51', '2023-06-26 00:23:31'),
(199, 500, 60000, 30000000, 3, '151,152,153', '2023-06-24 07:23:00', '/storage/img/qr-code/img-3.png', '2023-06-26 00:23:49', '2023-06-26 00:24:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blockchaindbs`
--

CREATE TABLE `blockchaindbs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blockchain` mediumtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blockchaindbs`
--

INSERT INTO `blockchaindbs` (`id`, `blockchain`, `created_at`, `updated_at`) VALUES
(56, '{\"difficulty\":2,\"chain\":[{\"prevHash\":\"$2y$10$T6XtlzYVynWmiAMlv4NqjuXVaQAEnUVE4ulc\\/SHHDQjvXfi3JIGcy\",\"data\":{\"isgenesis\":true},\"timeStamp\":\"2023-06-26T07:20:31.109566Z\",\"hash\":\"$2y$10$u5zUFQh5Xlnwgdxu.9INVeUjI.8PHrG8BCAuHzi0KOAefKUKwR0f.\",\"mineVar\":0,\"target\":\"\",\"subHash\":\"\",\"mineTime\":0},{\"prevHash\":\"$2y$10$u5zUFQh5Xlnwgdxu.9INVeUjI.8PHrG8BCAuHzi0KOAefKUKwR0f.\",\"data\":{\"madoanhnghiep\":\"0107634256\",\"tenncc\":\"C\\u00d4NG TY C\\u1ed4 PH\\u1ea6N GI\\u1ed0NG C\\u00c2Y TR\\u1ed2NG \\u0110.H N\\u00d4NG NGHI\\u1ec6P 1\",\"thumb_ncc\":\"\\/storage\\/uploads\\/20232023\\/06\\/15\\/img-2169-2a8dec3c-e349-495b-9943-015ba58793ed.webp\",\"mota_ncc\":\"C\\u00f4ng ty c\\u1ed5 ph\\u1ea7n gi\\u1ed1ng c\\u00e2y tr\\u1ed3ng  \\u0110\\u1ea1i h\\u1ecdc N\\u00f4ng nghi\\u1ec7p 1 t\\u1ecda l\\u1ea1c t\\u1ea1i Th\\u1ecb tr\\u1ea5n Tr\\u00e2u Qu\\u1ef3, Huy\\u1ec7n Gia L\\u00e2m, Th\\u00e0nh ph\\u1ed1 H\\u00e0 N\\u1ed9i. T\\u1ef1 h\\u00e0o l\\u00e0 doanh nghi\\u1ec7p \\u0111i \\u0111\\u1ea7u trong l\\u0129nh v\\u1ef1c S\\u1ea3n xu\\u1ea5t v\\u00e0 ph\\u00e2n ph\\u1ed1i gi\\u1ed1ng c\\u00e2y tr\\u1ed3ng v\\u1edbi kh\\u1ea9u hi\\u1ec7u \\u201c Uy t\\u00edn \\u2013 N\\u0103ng su\\u1ea5t - Ch\\u1ea5t l\\u01b0\\u1ee3ng \\u2013 Hi\\u1ec7u Qu\\u1ea3\\u201d.  Hi\\u1ec7u qu\\u1ea3 c\\u1ee7a nh\\u00e0 n\\u00f4ng lu\\u00f4n \\u0111\\u01b0\\u1ee3c c\\u00f4ng ty \\u0111\\u1eb7t l\\u00ean h\\u00e0ng \\u0111\\u1ea7u.Hi\\u1ec7n c\\u00f4ng ty l\\u00e0 nh\\u00e0 cung c\\u1ea5p v\\u00e0 ph\\u00e2n ph\\u1ed1i c\\u00e1c lo\\u1ea1i gi\\u1ed1ng c\\u00e2y tr\\u1ed3ng uy t\\u00edn, ch\\u1ea5t l\\u01b0\\u1ee3ng cho h\\u1ea7u h\\u1ebft c\\u00e1c t\\u1ec9nh, th\\u00e0nh ph\\u1ed5 \\u1edf Mi\\u1ec1n b\\u1eafc v\\u00e0 Mi\\u1ec1n trung Vi\\u1ec7t Nam.  C\\u00f4ng ty \\u0111\\u01b0\\u1ee3c x\\u00e2y d\\u1ef1ng t\\u1eeb nh\\u1eefng K\\u1ef9 s\\u01b0 \\u0111\\u1ea7u ng\\u00e0nh, lu\\u00f4n t\\u00e2m huy\\u1ebft v\\u1edbi s\\u1ef1 nghi\\u1ec7p nghi\\u00ean c\\u1ee9u, t\\u00ecm t\\u00f2i ra nh\\u1eefng gi\\u1ed1ng c\\u00e2y tr\\u1ed3ng m\\u1edbi \\u0111\\u00e1p \\u1ee9ng y\\u00eau c\\u1ea7u ng\\u00e0y c\\u00e0ng cao c\\u1ee7a th\\u1ecb tr\\u01b0\\u1eddng v\\u00e0 th\\u1ecb hi\\u1ebfu c\\u1ee7a kh\\u00e1ch h\\u00e0ng.\",\"diachi_ncc\":\"S\\u1ed1 nh\\u00e0 55, \\u0110\\u01b0\\u1eddng A, T\\u1ed5 d\\u00e2n ph\\u1ed1 An \\u0110\\u00e0o, Th\\u1ecb Tr\\u1ea5n Tr\\u00e2u Qu\\u1ef3, Huy\\u1ec7n Gia L\\u00e2m, Th\\u00e0nh ph\\u1ed1 H\\u00e0 N\\u1ed9i, Vi\\u1ec7t Nam\",\"sodienthoai_ncc\":\"0979090189\",\"ten_cg\":\"C\\u00e2y Thanh Long Gi\\u1ed1ng \\u0110\\u1ed3ng T\\u00e2m Long An\",\"mota_cg\":\"C\\u00e2y gi\\u1ed1ng thanh long ru\\u1ed9t \\u0111\\u1ecf b\\u1eaft \\u0111\\u1ea7u xu\\u1ea5t hi\\u1ec7n \\u1edf Vi\\u1ec7t Nam nhi\\u1ec1u n\\u0103m nay, v\\u00e0 hi\\u1ec7n tr\\u00ean c\\u1ea3 n\\u01b0\\u1edbc ta duy ch\\u1ec9 c\\u00f3 ba t\\u1ec9nh \\u00e1p d\\u1ee5ng tr\\u1ed3ng th\\u00ed \\u0111i\\u1ec3m l\\u00e0 B\\u00ecnh Thu\\u1eadn, Ti\\u1ec1n Giang v\\u00e0 T\\u00e2y Ninh, g\\u1ea7n \\u0111\\u00e2y c\\u00f3 m\\u1ed9t s\\u1ed1 t\\u1ec9nh c\\u0169ng \\u00e1p d\\u1ee5ng tr\\u1ed3ng th\\u1eed Thanh long ru\\u1ed9t \\u0111\\u1ecf nh\\u01b0 H\\u00e0 T\\u00e2y, Th\\u00e1i Nguy\\u00ean, B\\u1eafc Giang, Qu\\u1ea3ng Ninh... Tuy nhi\\u00ean, qua th\\u1ef1c t\\u1ebf cho th\\u1ea5y v\\u00f9ng T\\u00e2y Ninh cho tr\\u00e1i Thanh long ru\\u1ed9t \\u0111\\u1ecf kh\\u00f4ng \\u0111\\u1eb9p m\\u00e3 nh\\u01b0 2 v\\u00f9ng B\\u00ecnh Thu\\u1eadn v\\u00e0 Ti\\u1ec1n Giang nh\\u01b0ng ch\\u1ea5t l\\u01b0\\u1ee3ng \\u0103n ng\\u1ecdt \\u0111\\u1eadm v\\u00e0 m\\u00f9i th\\u01a1m h\\u01a1n h\\u1eb3n, do \\u0111\\u00f3 hi\\u1ec7n t\\u1ea1i Thanh Long ru\\u1ed9t \\u0111\\u1ecf tr\\u1ed3ng t\\u1ea1i T\\u00e2y Ninh \\u0111\\u01b0\\u1ee3c ng\\u01b0\\u1eddi ti\\u00eau d\\u00f9ng \\u01b0a th\\u00edch h\\u01a1n v\\u00e0 c\\u00f3 gi\\u00e1 tr\\u1ecb kinh t\\u1ebf cao h\\u01a1n tr\\u1ed3ng \\u1edf c\\u00e1c v\\u00f9ng kh\\u00e1c.\",\"thumb_cg\":\"\\/storage\\/uploads\\/20232023\\/06\\/09\\/trong-thanh-long-ruot-do-bang-hat-1.jpg\",\"chitiet_cg\":\"\\u0110\\u01b0\\u1ee3c cung c\\u1ea5p b\\u1edfi nh\\u00e0 cung c\\u1ea5p gi\\u1ed1ng h\\u00e0ng \\u0111\\u1ea7u V\\u0129nh Long\",\"mavungtrong\":\"VN - TGOR - 0082\",\"tennv\":\"V\\u01b0\\u1eddn c\\u00e2y \\u0103n tr\\u00e1i B\\u00ecnh \\u0110\\u00f4ng\",\"thumb_nv\":\"\\/storage\\/uploads\\/20232023\\/05\\/27\\/BinhDong.jpg\",\"mota_nv\":\"Mi\\u1ec7t v\\u01b0\\u1eddn t\\u1ea1i B\\u00ecnh D\\u01b0\\u01a1ng \\u0111\\u01b0\\u1ee3c gh\\u00e9 t\\u1edbi nhi\\u1ec1u nh\\u1ea5t l\\u00e0  mi\\u1ec7t v\\u01b0\\u1eddn L\\u00e1i Thi\\u00eau. \\u0110\\u1ecba ch\\u1ec9 c\\u1ee5 th\\u1ec3 t\\u1ea1i KP H\\u01b0ng Th\\u1ecd, x\\u00e3 H\\u01b0ng \\u0110\\u1ecbnh, th\\u1ecb x\\u00e3 Thu\\u1eadn An, B\\u00ecnh D\\u01b0\\u01a1ng.  V\\u1ecb tr\\u00ed c\\u1ea3 mi\\u1ec7t v\\u01b0\\u1eddn n\\u00e0y ch\\u1ec9 c\\u00e1ch S\\u00e0i G\\u00f2n tp Th\\u1ee7 D\\u1ea7u M\\u1ed9t 10 km v\\u1ec1 ph\\u00eda Nam, c\\u00e1ch S\\u00e0i G\\u00f2n 20km v\\u1ec1 ph\\u00eda B\\u1eafc.\\n\\nN\\u01a1i \\u0111\\u00e2y c\\u00f3 n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00edt t\\u1ed1 n\\u1eef, s\\u1ea7u ri\\u00eang, ch\\u00f4m ch\\u00f4m, m\\u00e3ng c\\u1ea7u\\u2026. Nh\\u1eefng khu v\\u01b0\\u1eddn ng\\u1eadp tr\\u00e0n m\\u00e0u \\u0111\\u1ecf c\\u1ee7a ch\\u00f4m ch\\u00f4m, v\\u00e0ng c\\u1ee7a d\\u00e2u da, t\\u00edm c\\u1ee7a m\\u0103ng c\\u1ee5t h\\u00f2a c\\u00f9ng m\\u00f9i th\\u01a1m c\\u1ee7a s\\u1ea7u ri\\u00eang, c\\u1ee7a t\\u1ed1 n\\u1eef,\\u2026l\\u00e0 m\\u1ed9t trong nh\\u1eefng v\\u1ef1a hoa qu\\u1ea3 l\\u1edbn nh\\u1ea5t Nam B\\u1ed9.\",\"sodienthoai_nv\":\"023457891\",\"diachi_nv\":\"X\\u00e3 B\\u00ecnh \\u0110\\u00f4ng - TX G\\u00f2 C\\u00f4ng, Ti\\u1ec1n Giang T\\u1ec9nh\",\"chitiet_ct\":\"Chu\\u1ea9n b\\u1ecb \\u0111\\u1ea5t:\\n\\n\\u0110\\u1ea5t \\u0111\\u01b0\\u1ee3c chu\\u1ea9n b\\u1ecb tr\\u01b0\\u1edbc khi tr\\u1ed3ng c\\u00e2y gi\\u1ed1ng thanh long ru\\u1ed9t \\u0111\\u1ecf 1-2 tu\\u1ea7n. D\\u00f9ng Benomyl (n\\u1ed3ng \\u0111\\u1ed9 0,1%) t\\u01b0\\u1edbi v\\u00e0o m\\u00f4 \\u0111\\u1ea5t tr\\u01b0\\u1edbc khi tr\\u1ed3ng \\u0111\\u1ec3 ph\\u00f2ng ng\\u1eeba n\\u1ea5m b\\u1ec7nh. N\\u00ean l\\u00e0m m\\u00f4 \\u0111\\u1ea5t nh\\u1eb1m gi\\u00fap tho\\u00e1t n\\u01b0\\u1edbc t\\u1ed1t. K\\u00edch th\\u01b0\\u1edbc m\\u00f4 cao 10 -15cm, \\u0111\\u01b0\\u1eddng k\\u00ednh 60-0,80cm.\\n\\nM\\u00f4 \\u0111\\u1ea5t s\\u1eed d\\u1ee5ng tr\\u1ed3ng c\\u00e2y gi\\u1ed1ng thanh long ru\\u1ed9t \\u0111\\u1ecf l\\u00e0 l\\u1edbp \\u0111\\u1ea5t m\\u1eb7t tr\\u1ed9n v\\u1edbi ph\\u00e2n chu\\u1ed3ng hoai 15-20 kg (ph\\u00e2n h\\u1eefu c\\u01a1: 10-15kg\\/tr\\u1ee5) + 500g ph\\u00e2n Super l\\u00e2n + Basudin(2g\\/m\\u00f4).\\n\\n\\n\\nTh\\u1eddi v\\u1ee5 tr\\u1ed3ng:\\n\\nC\\u00e2y gi\\u1ed1ng thanh long ru\\u1ed9t \\u0111\\u1ecf c\\u00f3 th\\u1ec3 tr\\u1ed3ng quanh n\\u0103m, t\\u1ed1t nh\\u1ea5t n\\u00ean tr\\u1ed3ng v\\u00e0o m\\u00f9a xu\\u00e2n v\\u00e0 m\\u00f9a thu.\\n\\nC\\u00e1ch tr\\u1ed3ng\\n\\n\\u0110\\u1eb7t ph\\u1ea7n l\\u00f5i xu\\u1ed1ng \\u0111\\u1ea5t, ph\\u1ea7n m\\u1eb7t ph\\u1eb3ng c\\u1ee7a th\\u00e2n thanh long \\u00f4m s\\u00e1t v\\u00e0o tr\\u1ee5 v\\u00e0 d\\u00f9ng d\\u00e2y nylon c\\u1ed9t c\\u00e0nh v\\u00e0o tr\\u1ee5, m\\u1ed7i tr\\u1ee5 \\u0111\\u1eb7t 4 hom.\\n\\nM\\u1eadt \\u0111\\u1ed9 tr\\u1ed3ng c\\u00e2y gi\\u1ed1ng thanh long ru\\u1ed9t \\u0111\\u1ecf 1100 tr\\u1ee5\\/ha, kho\\u1ea3ng c\\u00e1ch tr\\u1ed3ng: 3m x 3m\\n\\nT\\u01b0\\u1edbi n\\u01b0\\u1edbc:\\n\\nSau khi \\u0111\\u1eb7t ph\\u1ea3i t\\u01b0\\u1edbi n\\u01b0\\u1edbc th\\u01b0\\u1eddng xuy\\u00ean 2 l\\u1ea7n \\/ng\\u00e0y (kh\\u00f4ng t\\u01b0\\u1edbi qu\\u00e1 nhi\\u1ec1u n\\u01b0\\u1edbc s\\u1ebd g\\u00e2y th\\u1ed1i g\\u1ed1c), khi c\\u00e2y \\u0111\\u00e3 sinh tr\\u01b0\\u1edfng, ph\\u00e1t tri\\u1ec3n t\\u00f9y theo th\\u1eddi ti\\u1ebft m\\u00e0 t\\u01b0\\u1edbi n\\u01b0\\u1edbc cho c\\u00e2y, kh\\u00f4ng \\u0111\\u1ec3 qu\\u00e1 kh\\u00f4 v\\u00e0 kh\\u00f4ng t\\u01b0\\u1edbi qu\\u00e1 \\u1ea9m, ch\\u00fa \\u00fd tho\\u00e1t n\\u01b0\\u1edbc khi m\\u01b0a l\\u0169.T\\u1ec9a c\\u00e0nh, t\\u1ea1o t\\u00e1n:\\n\\nCh\\u0103m s\\u00f3c t\\u1ec9a c\\u00e0nh t\\u1ea1o t\\u00e1n cho thanh long ra nhi\\u1ec1u qu\\u1ea3\\n\\nT\\u1eeb m\\u1eb7t \\u0111\\u1ea5t t\\u1edbi \\u0111\\u1ec9nh tr\\u1ee5 ch\\u1ec9 ch\\u1ecdn \\u0111\\u1ec3 l\\u1ea1i 1 c\\u00e0nh, trong th\\u1eddi gian n\\u00e0y c\\u1ea7n ch\\u00fa \\u00fd c\\u1ed9t c\\u00e0nh s\\u00e1t v\\u00e0o tr\\u1ee5 \\u0111\\u1ec3 r\\u1ec5 kh\\u00ed sinh c\\u1ee7a c\\u00e0nh b\\u00e1m ch\\u1eb7t v\\u00e0o tr\\u1ee5 gi\\u00fap c\\u00e0nh kh\\u00f4ng b\\u1ecb g\\u00e3y khi g\\u1eb7p m\\u01b0a, gi\\u00f3.\\n\\nTr\\u00ean \\u0111\\u1ec9nh tr\\u1ee5, c\\u00e0nh c\\u00f3 th\\u1ec3 \\u0111\\u01b0\\u1ee3c c\\u1eaft t\\u1ec9a sao cho t\\u1ea1o t\\u00e1n tr\\u00f2n v\\u00e0 ph\\u00e2n b\\u1ed1 \\u0111\\u1ec1u quanh tr\\u1ee5. C\\u00e1c c\\u00e0nh m\\u1edbi tr\\u00ean \\u0111\\u1ec9nh tr\\u1ee5 s\\u1ebd \\u0111\\u01b0\\u1ee3c t\\u1ec9a theo nguy\\u00ean t\\u1eafc: m\\u1ed9t c\\u00e0nh m\\u1eb9, 2 c\\u00e0nh con. Ch\\u1ecdn c\\u00e1c c\\u00e0nh to kh\\u1ecfe \\u0111\\u1ec3 l\\u1ea1i. Th\\u01b0\\u1eddng xuy\\u00ean t\\u1ec9a b\\u1ecf c\\u00e1c c\\u00e0nh tai chu\\u1ed9t, c\\u00e0nh s\\u00e2u b\\u1ec7nh, c\\u00e0nh n\\u1eb1m khu\\u1ea5t trong t\\u00e1n, c\\u00e0nh \\u0111\\u00e3 cho qu\\u1ea3 2-3 n\\u0103m\\n\\nB\\u00f3n ph\\u00e2n:\\n\\nSau khi tr\\u1ed3ng c\\u00e2y gi\\u1ed1ng thanh long ru\\u1ed9t \\u0111\\u1ecf 2 tu\\u1ea7n (\\u0111\\u1ed1i v\\u1edbi c\\u00e2y \\u0111\\u00e3 c\\u00f3 r\\u1ec5 ho\\u00e0n ch\\u1ec9nh) c\\u00f3 th\\u1ec3 s\\u1eed d\\u1ee5ng Urea + DAP ho\\u1eb7c NPK 16-16-8 hay 20-20-15 t\\u01b0\\u1edbi, li\\u1ec1u l\\u01b0\\u1ee3ng 20-30g\\/tr\\u1ee5, 10 ng\\u00e0y\\/l\\u1ea7n\\n\\nC\\u00e2y 3-12 th\\u00e1ng s\\u1eed d\\u1ee5ng Urea + DAP ho\\u1eb7c NPK 16-16-8 hay 20-20-15 t\\u01b0\\u1edbi 30-50g\\/tr\\u1ee5, 15 ng\\u00e0y\\/l\\u1ea7n t\\u00f9y theo lo\\u1ea1i \\u0111\\u1ea5t v\\u00e0 t\\u0103ng theo tu\\u1ed5i c\\u00e2y.\\n\\nC\\u00e2y 1-3 n\\u0103m: C\\u00f3 th\\u1ec3 s\\u1eed d\\u1ee5ng ph\\u00e2n chu\\u1ed3ng hoai ho\\u1eb7c h\\u1eefu c\\u01a1 20-50kg\\/tr\\u1ee5\\/n\\u0103m, chia l\\u00e0m 2 l\\u1ea7n b\\u00f3n. L\\u1ea7n 1 v\\u00e0o l\\u00fac c\\u00e2y chu\\u1ea9n b\\u1ecb ra hoa r\\u1ed9 (th\\u00e1ng 2-3), l\\u1ea7n 2 th\\u00e1ng 9-10 sau giai \\u0111o\\u1ea1n cho tr\\u00e1i r\\u1ed9, giai \\u0111o\\u1ea1n sinh c\\u00e0nh m\\u1edbi v\\u00e0 chu\\u1ea9n b\\u1ecb nu\\u00f4i tr\\u00e1i v\\u1ee5 ngh\\u1ecbch.\\n\\nS\\u1eed d\\u1ee5ng ph\\u00e2n NPK 20-20-15 ho\\u1eb7c \\u0111\\u01a1n ph\\u00e2n Urea, DAP, KCl. Khi c\\u00e2y ra hoa v\\u00e0 nu\\u00f4i qu\\u1ea3 c\\u1ea7n ch\\u00fa \\u00fd h\\u00e0m l\\u01b0\\u1ee3ng l\\u00e2n v\\u00e0 kali cao, k\\u00edch th\\u00edch c\\u00e2y ra c\\u00e0nh m\\u1edbi c\\u1ea7n b\\u00f3n \\u0111\\u1ea1m cao.\",\"mota_ct\":\"Thanh long ru\\u1ed9t \\u0111\\u1ecf c\\u00f2n c\\u00f3 t\\u00ean g\\u1ecdi l\\u00e0 Thanh long N\\u1eef Ho\\u00e0ng (t\\u00ean khoa h\\u1ecdc l\\u00e0 Hylocereus) thu\\u1ed9c d\\u00f2ng H14 c\\u00f3 xu\\u1ea5t x\\u1ee9 t\\u1eeb Colombia.\\n\\nC\\u00e2y gi\\u1ed1ng thanh long ru\\u1ed9t \\u0111\\u1ecf b\\u1eaft \\u0111\\u1ea7u xu\\u1ea5t hi\\u1ec7n \\u1edf Vi\\u1ec7t Nam nhi\\u1ec1u n\\u0103m nay, v\\u00e0 hi\\u1ec7n tr\\u00ean c\\u1ea3 n\\u01b0\\u1edbc ta duy ch\\u1ec9 c\\u00f3 ba t\\u1ec9nh \\u00e1p d\\u1ee5ng tr\\u1ed3ng th\\u00ed \\u0111i\\u1ec3m l\\u00e0 B\\u00ecnh Thu\\u1eadn, Ti\\u1ec1n Giang v\\u00e0 T\\u00e2y Ninh, g\\u1ea7n \\u0111\\u00e2y c\\u00f3 m\\u1ed9t s\\u1ed1 t\\u1ec9nh c\\u0169ng \\u00e1p d\\u1ee5ng tr\\u1ed3ng th\\u1eed Thanh long ru\\u1ed9t \\u0111\\u1ecf nh\\u01b0 H\\u00e0 T\\u00e2y, Th\\u00e1i Nguy\\u00ean, B\\u1eafc Giang, Qu\\u1ea3ng Ninh... Tuy nhi\\u00ean, qua th\\u1ef1c t\\u1ebf cho th\\u1ea5y v\\u00f9ng T\\u00e2y Ninh cho tr\\u00e1i Thanh long ru\\u1ed9t \\u0111\\u1ecf kh\\u00f4ng \\u0111\\u1eb9p m\\u00e3 nh\\u01b0 2 v\\u00f9ng B\\u00ecnh Thu\\u1eadn v\\u00e0 Ti\\u1ec1n Giang nh\\u01b0ng ch\\u1ea5t l\\u01b0\\u1ee3ng \\u0103n ng\\u1ecdt \\u0111\\u1eadm v\\u00e0 m\\u00f9i th\\u01a1m h\\u01a1n h\\u1eb3n, do \\u0111\\u00f3 hi\\u1ec7n t\\u1ea1i Thanh Long ru\\u1ed9t \\u0111\\u1ecf tr\\u1ed3ng t\\u1ea1i T\\u00e2y Ninh \\u0111\\u01b0\\u1ee3c ng\\u01b0\\u1eddi ti\\u00eau d\\u00f9ng \\u01b0a th\\u00edch h\\u01a1n v\\u00e0 c\\u00f3 gi\\u00e1 tr\\u1ecb kinh t\\u1ebf cao h\\u01a1n tr\\u1ed3ng \\u1edf c\\u00e1c v\\u00f9ng kh\\u00e1c.\",\"thumb_ct\":\"\\/storage\\/uploads\\/20232023\\/06\\/09\\/canh-tac-thanh-long-5.jpg\",\"ten_ct\":\"C\\u00e2y Thanh Long \\u0110\\u1ed3ng T\\u00e2m Long An\",\"id_product\":\"1\",\"ten_sp\":\"Thanh Long \\u0110\\u1ed3ng T\\u00e2m Long An\",\"mota_sp\":\"L\\u00e0 lo\\u1ea1i qu\\u1ea3 m\\u1ecdng, h\\u00ecnh b\\u1ea7u d\\u1ee5c c\\u00f3 nhi\\u1ec1u tai l\\u00e1 xanh (do phi\\u1ebfn hoa c\\u00f2n l\\u1ea1i), \\u0111\\u1ea7u qu\\u1ea3 l\\u00f5m s\\u00e2u th\\u00e0nh m\\u1ed9t h\\u1ed1c. Khi c\\u00f2n non v\\u1ecf qu\\u1ea3 m\\u00e0u xanh, khi ch\\u00edn chuy\\u1ec3n m\\u00e0u \\u0111\\u1ecf h\\u1ed3ng. Th\\u1ecbt qu\\u1ea3 ph\\u1ea7n l\\u1edbn m\\u00e0u tr\\u1eafng, m\\u1ed9t s\\u1ed1 \\u00edt gi\\u1ed1ng c\\u00f3 ru\\u1ed9t v\\u00e0ng ho\\u1eb7c \\u0111\\u1ecf. v\\u1ecf c\\u00f3 th\\u1ec3 b\\u00f3c kh\\u00e1 d\\u1ec5 d\\u00e0\",\"chitiet_sp\":\"Gi\\u1ed1ng ru\\u1ed9t \\u0111\\u1ecf c\\u00f3 ch\\u1ee9a Lycopene, l\\u00e0 m\\u1ed9t ch\\u1ea5t ch\\u1ed1ng \\u00f4xy ho\\u00e1 thi\\u00ean nhi\\u00ean, c\\u00f3 th\\u1ec3 ch\\u1ed1ng ung th\\u01b0, b\\u1ec7nh tim v\\u00e0 l\\u00e0m gi\\u1ea3m huy\\u1ebft \\u00e1p. \\u0110\\u00e2y l\\u00e0 lo\\u1ea1i tr\\u00e1i c\\u00e2y r\\u1ea5t \\u0111\\u1eb9p m\\u1eaft v\\u00e0 c\\u00f3 l\\u1ee3i cho s\\u1ee9c kho\\u1ebb.\\nThanh long ru\\u1ed9t \\u0111\\u1ecf c\\u00f3 \\u0111\\u1eb7c t\\u00ednh ho\\u00e0n to\\u00e0n kh\\u00e1c so v\\u1edbi lo\\u1ea1i thanh long tr\\u1eafng th\\u00f4ng th\\u01b0\\u1eddng ngo\\u00e0i th\\u1ecb tr\\u01b0\\u1eddng hi\\u1ec7n nay. B\\u00ean ngo\\u00e0i thanh long \\u0111\\u1ecf c\\u00f3 v\\u1ecf c\\u1ee9ng, m\\u00e0u \\u0111\\u1ecf \\u0111\\u1eadm t\\u01b0\\u01a1i s\\u00e1ng; b\\u00ean trong ngo\\u00e0i m\\u00e0u \\u0111\\u1ecf th\\u1eb3m nh\\u01b0 son, l\\u1ea1 m\\u1eaft th\\u00ec th\\u00e0nh ph\\u1ea5n dinh d\\u01b0\\u1ee1ng g\\u1ea5p \\u0111\\u00f4i thanh long tr\\u1eafng. V\\u1edbi c\\u00e1c ch\\u1ec9 s\\u1ed1 Vitamin C12 \\u2013 6, Protid 1,30 \\u2013 1,08, Vitamin A, Glucid, Lipit th\\u00ec thanh long ru\\u1ed9t \\u0111\\u1ecf mang l\\u1ea1i gi\\u00e1 tr\\u1ecb dinh d\\u01b0\\u1ee1ng r\\u1ea5t cao.Thanh long ru\\u1ed9t \\u0111\\u1ecf l\\u00e0 m\\u1ed9t s\\u1ea3n ph\\u1ea9m m\\u1edbi, l\\u1ea1, ngon, b\\u1ed5 d\\u01b0\\u1ee1ng v\\u00e0 l\\u00e0 s\\u1ea3n ph\\u1ea9m \\u201cmade in Vietnam\\u201d. Hi\\u1ec7n nay Hoa k\\u1ef3 \\u0111\\u00e3 c\\u1ea5p code xu\\u1ea5t kh\\u1ea9u cho s\\u1ea3n ph\\u1ea9m v\\u00e0 v\\u1edbi k\\u1ef9 thu\\u1eadt s\\u1ea3n xu\\u1ea5t ti\\u00ean ti\\u1ebfn thanh long ru\\u1ed9t \\u0111\\u1ecf l\\u00e0 s\\u1ea3n ph\\u1ea9m tu\\u00e2n th\\u1ee7 nghi\\u00eam ng\\u1eb7t v\\u1ec1 VSATTP, d\\u01b0 l\\u01b0\\u1ee3ng thu\\u1ed1c b\\u1ea3o v\\u1ec7 th\\u1ef1c v\\u1eadt c\\u0169ng nh\\u01b0 m\\u1ed9t s\\u1ed1 y\\u00eau c\\u1ea7u kh\\u00e1c\\u2026 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c c\\u00e1c \\u0111\\u1ed1i t\\u00e1c xu\\u1ea5t kh\\u1ea9u M\\u1ef9, Nh\\u1eadt, Ch\\u00e2u \\u00c2u tin d\\u00f9ng. \\u0110\\u1eb7c \\u0111i\\u1ec3m c\\u1ee7a lo\\u1ea1i Thanh Long n\\u00e0y l\\u00e0 nh\\u00ecn qu\\u1ea3 r\\u1ea5t nh\\u1ecf nh\\u01b0ng l\\u1ea1i n\\u1eb7ng c\\u00e2n (~1kg\\/1qu\\u1ea3), ru\\u1ed9t \\u0111\\u1ecf t\\u01b0\\u01a1i, c\\u01a1m gi\\u00f2n, th\\u01a1m, \\u0111\\u1eb7t bi\\u1ec7t r\\u1ea5t ng\\u1ecdt, nhi\\u1ec1u vitamin v\\u00e0 kho\\u00e1ng ch\\u1ea5t. Tuy gi\\u00e1 c\\u1ee7a lo\\u1ea1i qu\\u1ea3 n\\u00e0y h\\u01a1i cao so v\\u1edbi Thanh Long ru\\u1ed9t tr\\u1eafng nh\\u01b0ng n\\u00f3 l\\u1ea1i c\\u00f3 v\\u1ecb \\u0111\\u1eb7c bi\\u1ec7t th\\u01a1m ngon, v\\u00e0 tr\\u1edf th\\u00e0nh m\\u00f3n \\u0103n cao c\\u1ea5p v\\u1eeba ngon v\\u1eeba l\\u1ea1 \\u0111\\u1ed1i v\\u1edbi ng\\u01b0\\u1eddi ti\\u00eau d\\u00f9ng trong v\\u00e0 ngo\\u00e0i n\\u01b0\\u1edbc.\",\"thumb_sp\":\"\\/storage\\/uploads\\/20232023\\/05\\/27\\/thanh-long-ruot-do-01-removebg-preview.png\",\"id_bill\":197,\"created_at\":\"2023-06-26 07:20:31\",\"shelf_life\":\"2023-06-30 14:25:00\"},\"timeStamp\":\"2023-06-26T07:20:31.163122Z\",\"hash\":\"$2y$10$VwyQNJxulLDSNEAOFOwmReC8nLa0\\/XfrwXVyJUsAjTqn4bRgNJz2.\",\"mineVar\":1902,\"target\":\"a\",\"subHash\":\"0\",\"mineTime\":102},{\"prevHash\":\"$2y$10$VwyQNJxulLDSNEAOFOwmReC8nLa0\\/XfrwXVyJUsAjTqn4bRgNJz2.\",\"data\":{\"madoanhnghiep\":\"0107634256\",\"tenncc\":\"C\\u00d4NG TY C\\u1ed4 PH\\u1ea6N GI\\u1ed0NG C\\u00c2Y TR\\u1ed2NG \\u0110.H N\\u00d4NG NGHI\\u1ec6P 1\",\"thumb_ncc\":\"\\/storage\\/uploads\\/20232023\\/06\\/15\\/img-2169-2a8dec3c-e349-495b-9943-015ba58793ed.webp\",\"mota_ncc\":\"C\\u00f4ng ty c\\u1ed5 ph\\u1ea7n gi\\u1ed1ng c\\u00e2y tr\\u1ed3ng  \\u0110\\u1ea1i h\\u1ecdc N\\u00f4ng nghi\\u1ec7p 1 t\\u1ecda l\\u1ea1c t\\u1ea1i Th\\u1ecb tr\\u1ea5n Tr\\u00e2u Qu\\u1ef3, Huy\\u1ec7n Gia L\\u00e2m, Th\\u00e0nh ph\\u1ed1 H\\u00e0 N\\u1ed9i. T\\u1ef1 h\\u00e0o l\\u00e0 doanh nghi\\u1ec7p \\u0111i \\u0111\\u1ea7u trong l\\u0129nh v\\u1ef1c S\\u1ea3n xu\\u1ea5t v\\u00e0 ph\\u00e2n ph\\u1ed1i gi\\u1ed1ng c\\u00e2y tr\\u1ed3ng v\\u1edbi kh\\u1ea9u hi\\u1ec7u \\u201c Uy t\\u00edn \\u2013 N\\u0103ng su\\u1ea5t - Ch\\u1ea5t l\\u01b0\\u1ee3ng \\u2013 Hi\\u1ec7u Qu\\u1ea3\\u201d.  Hi\\u1ec7u qu\\u1ea3 c\\u1ee7a nh\\u00e0 n\\u00f4ng lu\\u00f4n \\u0111\\u01b0\\u1ee3c c\\u00f4ng ty \\u0111\\u1eb7t l\\u00ean h\\u00e0ng \\u0111\\u1ea7u.Hi\\u1ec7n c\\u00f4ng ty l\\u00e0 nh\\u00e0 cung c\\u1ea5p v\\u00e0 ph\\u00e2n ph\\u1ed1i c\\u00e1c lo\\u1ea1i gi\\u1ed1ng c\\u00e2y tr\\u1ed3ng uy t\\u00edn, ch\\u1ea5t l\\u01b0\\u1ee3ng cho h\\u1ea7u h\\u1ebft c\\u00e1c t\\u1ec9nh, th\\u00e0nh ph\\u1ed5 \\u1edf Mi\\u1ec1n b\\u1eafc v\\u00e0 Mi\\u1ec1n trung Vi\\u1ec7t Nam.  C\\u00f4ng ty \\u0111\\u01b0\\u1ee3c x\\u00e2y d\\u1ef1ng t\\u1eeb nh\\u1eefng K\\u1ef9 s\\u01b0 \\u0111\\u1ea7u ng\\u00e0nh, lu\\u00f4n t\\u00e2m huy\\u1ebft v\\u1edbi s\\u1ef1 nghi\\u1ec7p nghi\\u00ean c\\u1ee9u, t\\u00ecm t\\u00f2i ra nh\\u1eefng gi\\u1ed1ng c\\u00e2y tr\\u1ed3ng m\\u1edbi \\u0111\\u00e1p \\u1ee9ng y\\u00eau c\\u1ea7u ng\\u00e0y c\\u00e0ng cao c\\u1ee7a th\\u1ecb tr\\u01b0\\u1eddng v\\u00e0 th\\u1ecb hi\\u1ebfu c\\u1ee7a kh\\u00e1ch h\\u00e0ng.\",\"diachi_ncc\":\"S\\u1ed1 nh\\u00e0 55, \\u0110\\u01b0\\u1eddng A, T\\u1ed5 d\\u00e2n ph\\u1ed1 An \\u0110\\u00e0o, Th\\u1ecb Tr\\u1ea5n Tr\\u00e2u Qu\\u1ef3, Huy\\u1ec7n Gia L\\u00e2m, Th\\u00e0nh ph\\u1ed1 H\\u00e0 N\\u1ed9i, Vi\\u1ec7t Nam\",\"sodienthoai_ncc\":\"0979090189\",\"ten_cg\":\"C\\u00e2y Thanh Long Gi\\u1ed1ng \\u0110\\u1ed3ng T\\u00e2m Long An\",\"mota_cg\":\"C\\u00e2y gi\\u1ed1ng thanh long ru\\u1ed9t \\u0111\\u1ecf b\\u1eaft \\u0111\\u1ea7u xu\\u1ea5t hi\\u1ec7n \\u1edf Vi\\u1ec7t Nam nhi\\u1ec1u n\\u0103m nay, v\\u00e0 hi\\u1ec7n tr\\u00ean c\\u1ea3 n\\u01b0\\u1edbc ta duy ch\\u1ec9 c\\u00f3 ba t\\u1ec9nh \\u00e1p d\\u1ee5ng tr\\u1ed3ng th\\u00ed \\u0111i\\u1ec3m l\\u00e0 B\\u00ecnh Thu\\u1eadn, Ti\\u1ec1n Giang v\\u00e0 T\\u00e2y Ninh, g\\u1ea7n \\u0111\\u00e2y c\\u00f3 m\\u1ed9t s\\u1ed1 t\\u1ec9nh c\\u0169ng \\u00e1p d\\u1ee5ng tr\\u1ed3ng th\\u1eed Thanh long ru\\u1ed9t \\u0111\\u1ecf nh\\u01b0 H\\u00e0 T\\u00e2y, Th\\u00e1i Nguy\\u00ean, B\\u1eafc Giang, Qu\\u1ea3ng Ninh... Tuy nhi\\u00ean, qua th\\u1ef1c t\\u1ebf cho th\\u1ea5y v\\u00f9ng T\\u00e2y Ninh cho tr\\u00e1i Thanh long ru\\u1ed9t \\u0111\\u1ecf kh\\u00f4ng \\u0111\\u1eb9p m\\u00e3 nh\\u01b0 2 v\\u00f9ng B\\u00ecnh Thu\\u1eadn v\\u00e0 Ti\\u1ec1n Giang nh\\u01b0ng ch\\u1ea5t l\\u01b0\\u1ee3ng \\u0103n ng\\u1ecdt \\u0111\\u1eadm v\\u00e0 m\\u00f9i th\\u01a1m h\\u01a1n h\\u1eb3n, do \\u0111\\u00f3 hi\\u1ec7n t\\u1ea1i Thanh Long ru\\u1ed9t \\u0111\\u1ecf tr\\u1ed3ng t\\u1ea1i T\\u00e2y Ninh \\u0111\\u01b0\\u1ee3c ng\\u01b0\\u1eddi ti\\u00eau d\\u00f9ng \\u01b0a th\\u00edch h\\u01a1n v\\u00e0 c\\u00f3 gi\\u00e1 tr\\u1ecb kinh t\\u1ebf cao h\\u01a1n tr\\u1ed3ng \\u1edf c\\u00e1c v\\u00f9ng kh\\u00e1c.\",\"thumb_cg\":\"\\/storage\\/uploads\\/20232023\\/06\\/09\\/trong-thanh-long-ruot-do-bang-hat-1.jpg\",\"chitiet_cg\":\"\\u0110\\u01b0\\u1ee3c cung c\\u1ea5p b\\u1edfi nh\\u00e0 cung c\\u1ea5p gi\\u1ed1ng h\\u00e0ng \\u0111\\u1ea7u V\\u0129nh Long\",\"mavungtrong\":\"VN - BTOR -0008\",\"tennv\":\"H\\u1ee3p t\\u00e1c x\\u00e3 H\\u00e0m Lu\\u00f4ng\",\"thumb_nv\":\"\\/storage\\/uploads\\/20232023\\/05\\/27\\/HamLuong.jpg\",\"mota_nv\":\"\\u0110\\u01b0\\u1ee3c bi\\u1ebft, T\\u1ed5 h\\u1ee3p t\\u00e1c (THT) tr\\u1ed3ng s\\u1ea7u ri\\u00eang \\u1ea5p H\\u00e0m Lu\\u00f4ng tri\\u1ec3n khai gi\\u1ea3i ph\\u00e1p v\\u1ec1 ngu\\u1ed3n n\\u01b0\\u1edbc, trong \\u0111\\u00f3 c\\u00f3 k\\u1ef9 thu\\u1eadt l\\u1ecdc n\\u01b0\\u1edbc gi\\u1ebfng \\u0111\\u1ec3 t\\u1ea1m th\\u1eddi c\\u1ee9u l\\u1ea5y v\\u01b0\\u1eddn s\\u1ea7u ri\\u00eang kh\\u00e1 th\\u00e0nh c\\u00f4ng. L\\u00fac \\u0111\\u1ea7u, c\\u00e1c ch\\u1ecb t\\u1ef1 mua n\\u01b0\\u1edbc v\\u1ec1 t\\u01b0\\u1edbi. L\\u01b0\\u1ee3ng n\\u01b0\\u1edbc t\\u01b0\\u1edbi cho c\\u00e2y c\\u0169ng ch\\u1ec9 mang t\\u00ednh gi\\u1ea3i kh\\u00e1t t\\u1ea1m th\\u1eddi, ng\\u1eafn h\\u1ea1n trong khi h\\u1ea1n m\\u1eb7n k\\u00e9o d\\u00e0i nhi\\u1ec1u th\\u00e1ng li\\u1ec1n. \\u0110\\u1ec3 \\u0111\\u1ed3ng b\\u1ed9 gi\\u1ea3i ph\\u00e1p, c\\u00e1c ch\\u1ecb t\\u1ea1m l\\u1ea5y n\\u01b0\\u1edbc t\\u1eeb gi\\u1ebfng khoan. C\\u00e1c ch\\u1ecb \\u0111\\u1ea7u t\\u01b0 m\\u1ee7 d\\u01b0\\u1edbi m\\u01b0\\u01a1ng v\\u01b0\\u1eddn \\u0111\\u1ec3 tr\\u1eef n\\u01b0\\u1edbc v\\u00e0 l\\u1ecdc c\\u00e1c t\\u1ea1p ch\\u1ea5t ph\\u00e8n, kim lo\\u1ea1i n\\u1eb7ng trong n\\u01b0\\u1edbc b\\u1eb1ng ph\\u00e2n l\\u00e2n, v\\u00f4i v\\u00e0 c\\u00e2y l\\u1ee5c b\\u00ecnh. Quy tr\\u00ecnh x\\u1eed l\\u00fd n\\u01b0\\u1edbc gi\\u1ebfng trong 3 ng\\u00e0y l\\u00e0 c\\u00f3 th\\u1ec3 t\\u01b0\\u1edbi cho c\\u00e2y an to\\u00e0n.\\n\\nB\\u00e0 Cao Th\\u1ecb Chi\\u00ean (67 tu\\u1ed5i) - T\\u1ed5 tr\\u01b0\\u1edfng THT tr\\u1ed3ng s\\u1ea7u ri\\u00eang \\u1ea5p H\\u00e0m Lu\\u00f4ng cho bi\\u1ebft, ti\\u1ec1n th\\u00e2n c\\u1ee7a t\\u1ed5 l\\u00e0 THT tr\\u1ed3ng s\\u1ea7u ri\\u00eang \\u1ea5p H\\u00e0m Lu\\u00f4ng, x\\u00e3 T\\u00e2n Ph\\u00fa, v\\u1edbi 12 th\\u00e0nh vi\\u00ean ban \\u0111\\u1ea7u l\\u00e0 nh\\u1eefng ch\\u1ecb em \\u0111am m\\u00ea tr\\u1ed3ng s\\u1ea7u ri\\u00eang c\\u1ee7a \\u1ea5p H\\u00e0m Lu\\u00f4ng. H\\u1ea7u h\\u1ebft c\\u00e1c ch\\u1ecb xu\\u1ea5t th\\u00e2n t\\u1eeb gia \\u0111\\u00ecnh l\\u00e0m n\\u00f4ng ngh\\u00e8o kh\\u00f3. \\u201cTr\\u01b0\\u1edbc \\u0111\\u00e2y, H\\u00e0m Lu\\u00f4ng l\\u00e0 \\u1ea5p ngh\\u00e8o v\\u00ec c\\u00f2n \\u0111\\u1ea5t ru\\u1ed9ng. Th\\u1ea5y m\\u00f4 h\\u00ecnh tr\\u1ed3ng s\\u1ea7u ri\\u00eang hi\\u1ec7u qu\\u1ea3 c\\u1ee7a c\\u00e1c \\u1ea5p l\\u00e2n c\\u1eadn, ch\\u1ecb em ch\\u00fang t\\u00f4i \\u0111\\u00e3 m\\u1ea1nh d\\u1ea1n chuy\\u1ec3n \\u0111\\u1ed5i sang tr\\u1ed3ng c\\u00e2y s\\u1ea7u ri\\u00eang. Di\\u1ec7n t\\u00edch s\\u1ea7u ri\\u00eang ph\\u00e1t tri\\u1ec3n m\\u1ea1nh v\\u00e0 tr\\u1edf th\\u00e0nh c\\u00e2y tr\\u1ed3ng ch\\u1ee7 l\\u1ef1c c\\u1ee7a \\u0111\\u1ecba ph\\u01b0\\u01a1ng. Ch\\u00fang t\\u00f4i tr\\u1ed3ng gi\\u1ed1ng s\\u1ea7u ri\\u00eang kh\\u1ed5 qua, sau \\u0111\\u00f3 l\\u00e0 s\\u1eefa h\\u1ea1t l\\u00e9p, chu\\u1ed3ng b\\u00f2 v\\u00e0 hi\\u1ec7n nay ch\\u1ee7 y\\u1ebfu l\\u00e0 Ri.6. Kh\\u00f4ng ch\\u1ec9 ch\\u0103m s\\u00f3c cho v\\u01b0\\u1eddn s\\u1ea7u ri\\u00eang c\\u1ee7a t\\u1ed5, c\\u00e1c ch\\u1ecb v\\u1eadn h\\u00e0nh t\\u1ed5 lao \\u0111\\u1ed9ng ph\\u1ee5 n\\u1eef l\\u00e0m thu\\u00ea \\u0111\\u1ec3 ch\\u0103m s\\u00f3c v\\u00e0 h\\u01b0\\u1edbng d\\u1eabn k\\u1ef9 thu\\u1eadt cho c\\u00e1c v\\u01b0\\u1eddn tr\\u1ed3ng kh\\u00e1c trong v\\u00e0 ngo\\u00e0i x\\u00e3\\u201d, b\\u00e0 Cao Th\\u1ecb Chi\\u00ean b\\u1ed9c b\\u1ea1ch.\",\"sodienthoai_nv\":\"0123456789\",\"diachi_nv\":\"Th\\u00f4n H\\u00e0m Lu\\u00f4ng, x\\u00e3 T\\u00e2n Ph\\u00fa, huy\\u1ec7n Ch\\u00e2u Th\\u00e0nh, t\\u1ec9nh B\\u1ebfn Tre\",\"chitiet_ct\":\"Chu\\u1ea9n b\\u1ecb \\u0111\\u1ea5t:\\n\\n\\u0110\\u1ea5t \\u0111\\u01b0\\u1ee3c chu\\u1ea9n b\\u1ecb tr\\u01b0\\u1edbc khi tr\\u1ed3ng c\\u00e2y gi\\u1ed1ng thanh long ru\\u1ed9t \\u0111\\u1ecf 1-2 tu\\u1ea7n. D\\u00f9ng Benomyl (n\\u1ed3ng \\u0111\\u1ed9 0,1%) t\\u01b0\\u1edbi v\\u00e0o m\\u00f4 \\u0111\\u1ea5t tr\\u01b0\\u1edbc khi tr\\u1ed3ng \\u0111\\u1ec3 ph\\u00f2ng ng\\u1eeba n\\u1ea5m b\\u1ec7nh. N\\u00ean l\\u00e0m m\\u00f4 \\u0111\\u1ea5t nh\\u1eb1m gi\\u00fap tho\\u00e1t n\\u01b0\\u1edbc t\\u1ed1t. K\\u00edch th\\u01b0\\u1edbc m\\u00f4 cao 10 -15cm, \\u0111\\u01b0\\u1eddng k\\u00ednh 60-0,80cm.\\n\\nM\\u00f4 \\u0111\\u1ea5t s\\u1eed d\\u1ee5ng tr\\u1ed3ng c\\u00e2y gi\\u1ed1ng thanh long ru\\u1ed9t \\u0111\\u1ecf l\\u00e0 l\\u1edbp \\u0111\\u1ea5t m\\u1eb7t tr\\u1ed9n v\\u1edbi ph\\u00e2n chu\\u1ed3ng hoai 15-20 kg (ph\\u00e2n h\\u1eefu c\\u01a1: 10-15kg\\/tr\\u1ee5) + 500g ph\\u00e2n Super l\\u00e2n + Basudin(2g\\/m\\u00f4).\\n\\n\\n\\nTh\\u1eddi v\\u1ee5 tr\\u1ed3ng:\\n\\nC\\u00e2y gi\\u1ed1ng thanh long ru\\u1ed9t \\u0111\\u1ecf c\\u00f3 th\\u1ec3 tr\\u1ed3ng quanh n\\u0103m, t\\u1ed1t nh\\u1ea5t n\\u00ean tr\\u1ed3ng v\\u00e0o m\\u00f9a xu\\u00e2n v\\u00e0 m\\u00f9a thu.\\n\\nC\\u00e1ch tr\\u1ed3ng\\n\\n\\u0110\\u1eb7t ph\\u1ea7n l\\u00f5i xu\\u1ed1ng \\u0111\\u1ea5t, ph\\u1ea7n m\\u1eb7t ph\\u1eb3ng c\\u1ee7a th\\u00e2n thanh long \\u00f4m s\\u00e1t v\\u00e0o tr\\u1ee5 v\\u00e0 d\\u00f9ng d\\u00e2y nylon c\\u1ed9t c\\u00e0nh v\\u00e0o tr\\u1ee5, m\\u1ed7i tr\\u1ee5 \\u0111\\u1eb7t 4 hom.\\n\\nM\\u1eadt \\u0111\\u1ed9 tr\\u1ed3ng c\\u00e2y gi\\u1ed1ng thanh long ru\\u1ed9t \\u0111\\u1ecf 1100 tr\\u1ee5\\/ha, kho\\u1ea3ng c\\u00e1ch tr\\u1ed3ng: 3m x 3m\\n\\nT\\u01b0\\u1edbi n\\u01b0\\u1edbc:\\n\\nSau khi \\u0111\\u1eb7t ph\\u1ea3i t\\u01b0\\u1edbi n\\u01b0\\u1edbc th\\u01b0\\u1eddng xuy\\u00ean 2 l\\u1ea7n \\/ng\\u00e0y (kh\\u00f4ng t\\u01b0\\u1edbi qu\\u00e1 nhi\\u1ec1u n\\u01b0\\u1edbc s\\u1ebd g\\u00e2y th\\u1ed1i g\\u1ed1c), khi c\\u00e2y \\u0111\\u00e3 sinh tr\\u01b0\\u1edfng, ph\\u00e1t tri\\u1ec3n t\\u00f9y theo th\\u1eddi ti\\u1ebft m\\u00e0 t\\u01b0\\u1edbi n\\u01b0\\u1edbc cho c\\u00e2y, kh\\u00f4ng \\u0111\\u1ec3 qu\\u00e1 kh\\u00f4 v\\u00e0 kh\\u00f4ng t\\u01b0\\u1edbi qu\\u00e1 \\u1ea9m, ch\\u00fa \\u00fd tho\\u00e1t n\\u01b0\\u1edbc khi m\\u01b0a l\\u0169.T\\u1ec9a c\\u00e0nh, t\\u1ea1o t\\u00e1n:\\n\\nCh\\u0103m s\\u00f3c t\\u1ec9a c\\u00e0nh t\\u1ea1o t\\u00e1n cho thanh long ra nhi\\u1ec1u qu\\u1ea3\\n\\nT\\u1eeb m\\u1eb7t \\u0111\\u1ea5t t\\u1edbi \\u0111\\u1ec9nh tr\\u1ee5 ch\\u1ec9 ch\\u1ecdn \\u0111\\u1ec3 l\\u1ea1i 1 c\\u00e0nh, trong th\\u1eddi gian n\\u00e0y c\\u1ea7n ch\\u00fa \\u00fd c\\u1ed9t c\\u00e0nh s\\u00e1t v\\u00e0o tr\\u1ee5 \\u0111\\u1ec3 r\\u1ec5 kh\\u00ed sinh c\\u1ee7a c\\u00e0nh b\\u00e1m ch\\u1eb7t v\\u00e0o tr\\u1ee5 gi\\u00fap c\\u00e0nh kh\\u00f4ng b\\u1ecb g\\u00e3y khi g\\u1eb7p m\\u01b0a, gi\\u00f3.\\n\\nTr\\u00ean \\u0111\\u1ec9nh tr\\u1ee5, c\\u00e0nh c\\u00f3 th\\u1ec3 \\u0111\\u01b0\\u1ee3c c\\u1eaft t\\u1ec9a sao cho t\\u1ea1o t\\u00e1n tr\\u00f2n v\\u00e0 ph\\u00e2n b\\u1ed1 \\u0111\\u1ec1u quanh tr\\u1ee5. C\\u00e1c c\\u00e0nh m\\u1edbi tr\\u00ean \\u0111\\u1ec9nh tr\\u1ee5 s\\u1ebd \\u0111\\u01b0\\u1ee3c t\\u1ec9a theo nguy\\u00ean t\\u1eafc: m\\u1ed9t c\\u00e0nh m\\u1eb9, 2 c\\u00e0nh con. Ch\\u1ecdn c\\u00e1c c\\u00e0nh to kh\\u1ecfe \\u0111\\u1ec3 l\\u1ea1i. Th\\u01b0\\u1eddng xuy\\u00ean t\\u1ec9a b\\u1ecf c\\u00e1c c\\u00e0nh tai chu\\u1ed9t, c\\u00e0nh s\\u00e2u b\\u1ec7nh, c\\u00e0nh n\\u1eb1m khu\\u1ea5t trong t\\u00e1n, c\\u00e0nh \\u0111\\u00e3 cho qu\\u1ea3 2-3 n\\u0103m\\n\\nB\\u00f3n ph\\u00e2n:\\n\\nSau khi tr\\u1ed3ng c\\u00e2y gi\\u1ed1ng thanh long ru\\u1ed9t \\u0111\\u1ecf 2 tu\\u1ea7n (\\u0111\\u1ed1i v\\u1edbi c\\u00e2y \\u0111\\u00e3 c\\u00f3 r\\u1ec5 ho\\u00e0n ch\\u1ec9nh) c\\u00f3 th\\u1ec3 s\\u1eed d\\u1ee5ng Urea + DAP ho\\u1eb7c NPK 16-16-8 hay 20-20-15 t\\u01b0\\u1edbi, li\\u1ec1u l\\u01b0\\u1ee3ng 20-30g\\/tr\\u1ee5, 10 ng\\u00e0y\\/l\\u1ea7n\\n\\nC\\u00e2y 3-12 th\\u00e1ng s\\u1eed d\\u1ee5ng Urea + DAP ho\\u1eb7c NPK 16-16-8 hay 20-20-15 t\\u01b0\\u1edbi 30-50g\\/tr\\u1ee5, 15 ng\\u00e0y\\/l\\u1ea7n t\\u00f9y theo lo\\u1ea1i \\u0111\\u1ea5t v\\u00e0 t\\u0103ng theo tu\\u1ed5i c\\u00e2y.\\n\\nC\\u00e2y 1-3 n\\u0103m: C\\u00f3 th\\u1ec3 s\\u1eed d\\u1ee5ng ph\\u00e2n chu\\u1ed3ng hoai ho\\u1eb7c h\\u1eefu c\\u01a1 20-50kg\\/tr\\u1ee5\\/n\\u0103m, chia l\\u00e0m 2 l\\u1ea7n b\\u00f3n. L\\u1ea7n 1 v\\u00e0o l\\u00fac c\\u00e2y chu\\u1ea9n b\\u1ecb ra hoa r\\u1ed9 (th\\u00e1ng 2-3), l\\u1ea7n 2 th\\u00e1ng 9-10 sau giai \\u0111o\\u1ea1n cho tr\\u00e1i r\\u1ed9, giai \\u0111o\\u1ea1n sinh c\\u00e0nh m\\u1edbi v\\u00e0 chu\\u1ea9n b\\u1ecb nu\\u00f4i tr\\u00e1i v\\u1ee5 ngh\\u1ecbch.\\n\\nS\\u1eed d\\u1ee5ng ph\\u00e2n NPK 20-20-15 ho\\u1eb7c \\u0111\\u01a1n ph\\u00e2n Urea, DAP, KCl. Khi c\\u00e2y ra hoa v\\u00e0 nu\\u00f4i qu\\u1ea3 c\\u1ea7n ch\\u00fa \\u00fd h\\u00e0m l\\u01b0\\u1ee3ng l\\u00e2n v\\u00e0 kali cao, k\\u00edch th\\u00edch c\\u00e2y ra c\\u00e0nh m\\u1edbi c\\u1ea7n b\\u00f3n \\u0111\\u1ea1m cao.\",\"mota_ct\":\"Lo\\u1ea1i c\\u00e2y \\u0103n tr\\u00e1i l\\u00e2u n\\u0103m, \\u0111\\u01b0\\u1ee3c tr\\u1ed3ng theo ti\\u00eau chu\\u1ea9n VietGap\",\"thumb_ct\":\"\\/storage\\/uploads\\/20232023\\/06\\/09\\/canh-tac-sau-rieng-2.jpg\",\"ten_ct\":\"C\\u00e2y S\\u1ea7u Ri\\u00eang Ri 6\",\"id_product\":\"4\",\"ten_sp\":\"S\\u1ea7u Ri\\u00eang Ri 6\",\"mota_sp\":\"Qu\\u1ea3 s\\u1ea7u ri\\u00eang \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u ng\\u01b0\\u1eddi \\u1edf \\u0110\\u00f4ng Nam \\u00c1 xem nh\\u01b0 l\\u00e0 \\\"vua c\\u1ee7a c\\u00e1c lo\\u1ea1i tr\\u00e1i c\\u00e2y\\\". N\\u00f3 c\\u00f3 \\u0111\\u1eb7c \\u0111i\\u1ec3m l\\u00e0 k\\u00edch th\\u01b0\\u1edbc l\\u1edbn, m\\u00f9i m\\u1ea1nh, v\\u00e0 nhi\\u1ec1u gai nh\\u1ecdn bao quanh v\\u1ecf. Qu\\u1ea3 c\\u00f3 th\\u1ec3 \\u0111\\u1ea1t 30 xentim\\u00e9t (12 in) chi\\u1ec1u d\\u00e0i v\\u00e0 15 xentim\\u00e9t (6 in) \\u0111\\u01b0\\u1eddng k\\u00ednh, th\\u01b0\\u1eddng n\\u1eb7ng m\\u1ed9t \\u0111\\u1ebfn ba kilogram (2 \\u0111\\u1ebfn 7 lb).\",\"chitiet_sp\":\"<p>S\\u1ea7u ri&ecirc;ng Ri 6 h\\u1ea1t l&eacute;p ch&iacute;n t\\u1ef1 nhi&ecirc;n Cai L\\u1eady &ndash; Ti\\u1ec1n Giang. \\u0110\\u01b0\\u1ee3c tr\\u1ed3ng tr&ecirc;n v&ugrave;ng \\u0111\\u1ea5t ph&ugrave; sa m&agrave;u m\\u1ee1 n&ecirc;n c&oacute; h\\u01b0\\u01a1ng v\\u1ecb th\\u01a1m kh&aacute;c v\\u1edbi c&aacute;c d&ograve;ng s\\u1ea7u ri&ecirc;ng kh&aacute;c. C\\u01a1m b&ugrave;i, d\\u1ebbo. \\u0110\\u1ea1t chu\\u1ea9n VietGap. S\\u1ea7u ri&ecirc;ng Ri 6 l&agrave; lo\\u1ea1i qu\\u1ea3 gi&agrave;u gi&aacute; tr\\u1ecb dinh d\\u01b0\\u1ee1ng, trong 100g c\\u01a1m qu\\u1ea3 s\\u1ea7u ri&ecirc;ng c&oacute; 37% n\\u01b0\\u1edbc, 6% protit, 2% lipit, 16% gluxit v&agrave; nhi\\u1ec1u lo\\u1ea1i ch\\u1ea5t kho&aacute;ng, vitamin. S\\u1ea7u ri&ecirc;ng Ri 6 c&oacute; t&aacute;c d\\u1ee5ng gi&uacute;p t\\u0103ng c\\u01b0\\u1eddng v&agrave; ph\\u1ee5c h\\u1ed3i s\\u1ee9c kh\\u1ecfe cho ng\\u01b0\\u1eddi \\u1ed1m y\\u1ebfu, c&oacute; &iacute;ch cho c\\u01a1 b\\u1eafp, duy tr&igrave; s\\u1ef1 ch\\u1eafc kh\\u1ecfe c\\u1ee7a x\\u01b0\\u01a1ng, gi&uacute;p duy tr&igrave; v&agrave; \\u0111i\\u1ec1u h&ograve;a ho\\u1ea1t \\u0111\\u1ed9ng c\\u1ee7a tuy\\u1ebfn gi&aacute;p, b\\u1ea3o v\\u1ec7 s\\u1ef1 kh\\u1ecfe m\\u1ea1nh cho r\\u0103ng v&agrave; l\\u1ee3i. S\\u1ea7u ri&ecirc;ng Ri 6 \\u0111\\u01b0\\u1ee3c tr\\u1ed3ng theo ti&ecirc;u chu\\u1ea9n VietGAP, kh&ocirc;ng ch\\u1ee9a d\\u01b0 l\\u01b0\\u1ee3ng h&oacute;a ch\\u1ea5t b\\u1ea3o v\\u1ec7 th\\u1ef1c v\\u1eadt v&agrave; k&iacute;ch th&iacute;ch t\\u0103ng tr\\u01b0\\u1edfng \\u0111\\u1ed9c h\\u1ea1i. Qua qu&aacute; tr&igrave;nh thu ho\\u1ea1ch, v\\u1eadn chuy\\u1ec3n v&agrave; b\\u1ea3o qu\\u1ea3n c\\u1ea9n th\\u1eadn, s\\u1ea3n ph\\u1ea9m \\u0111\\u1ea3m b\\u1ea3o v\\u1eabn gi\\u1eef \\u0111\\u01b0\\u1ee3c h\\u01b0\\u01a1ng v\\u1ecb v&agrave; \\u0111\\u1ed9 t\\u01b0\\u01a1i ngon khi t\\u1edbi tay ng\\u01b0\\u1eddi ti&ecirc;u d&ugrave;ng.<\\/p>\",\"thumb_sp\":\"\\/storage\\/uploads\\/20232023\\/05\\/27\\/saurieng.png\",\"id_bill\":198,\"created_at\":\"2023-06-26 07:22:51\",\"shelf_life\":\"2023-06-30 14:27:00\"},\"timeStamp\":\"2023-06-26T07:22:51.266059Z\",\"hash\":\"$2y$10$PyqxIfZJ6mPfj8Ea5W7RTe\\/Uv6a0RkRnyp\\/AlkaCm61k2M1EBEzlq\",\"mineVar\":729,\"target\":\"a\",\"subHash\":\"0\",\"mineTime\":39},{\"prevHash\":\"$2y$10$PyqxIfZJ6mPfj8Ea5W7RTe\\/Uv6a0RkRnyp\\/AlkaCm61k2M1EBEzlq\",\"data\":{\"madoanhnghiep\":\"0107634256\",\"tenncc\":\"C\\u00d4NG TY C\\u1ed4 PH\\u1ea6N GI\\u1ed0NG C\\u00c2Y TR\\u1ed2NG \\u0110.H N\\u00d4NG NGHI\\u1ec6P 1\",\"thumb_ncc\":\"\\/storage\\/uploads\\/20232023\\/06\\/15\\/img-2169-2a8dec3c-e349-495b-9943-015ba58793ed.webp\",\"mota_ncc\":\"C\\u00f4ng ty c\\u1ed5 ph\\u1ea7n gi\\u1ed1ng c\\u00e2y tr\\u1ed3ng  \\u0110\\u1ea1i h\\u1ecdc N\\u00f4ng nghi\\u1ec7p 1 t\\u1ecda l\\u1ea1c t\\u1ea1i Th\\u1ecb tr\\u1ea5n Tr\\u00e2u Qu\\u1ef3, Huy\\u1ec7n Gia L\\u00e2m, Th\\u00e0nh ph\\u1ed1 H\\u00e0 N\\u1ed9i. T\\u1ef1 h\\u00e0o l\\u00e0 doanh nghi\\u1ec7p \\u0111i \\u0111\\u1ea7u trong l\\u0129nh v\\u1ef1c S\\u1ea3n xu\\u1ea5t v\\u00e0 ph\\u00e2n ph\\u1ed1i gi\\u1ed1ng c\\u00e2y tr\\u1ed3ng v\\u1edbi kh\\u1ea9u hi\\u1ec7u \\u201c Uy t\\u00edn \\u2013 N\\u0103ng su\\u1ea5t - Ch\\u1ea5t l\\u01b0\\u1ee3ng \\u2013 Hi\\u1ec7u Qu\\u1ea3\\u201d.  Hi\\u1ec7u qu\\u1ea3 c\\u1ee7a nh\\u00e0 n\\u00f4ng lu\\u00f4n \\u0111\\u01b0\\u1ee3c c\\u00f4ng ty \\u0111\\u1eb7t l\\u00ean h\\u00e0ng \\u0111\\u1ea7u.Hi\\u1ec7n c\\u00f4ng ty l\\u00e0 nh\\u00e0 cung c\\u1ea5p v\\u00e0 ph\\u00e2n ph\\u1ed1i c\\u00e1c lo\\u1ea1i gi\\u1ed1ng c\\u00e2y tr\\u1ed3ng uy t\\u00edn, ch\\u1ea5t l\\u01b0\\u1ee3ng cho h\\u1ea7u h\\u1ebft c\\u00e1c t\\u1ec9nh, th\\u00e0nh ph\\u1ed5 \\u1edf Mi\\u1ec1n b\\u1eafc v\\u00e0 Mi\\u1ec1n trung Vi\\u1ec7t Nam.  C\\u00f4ng ty \\u0111\\u01b0\\u1ee3c x\\u00e2y d\\u1ef1ng t\\u1eeb nh\\u1eefng K\\u1ef9 s\\u01b0 \\u0111\\u1ea7u ng\\u00e0nh, lu\\u00f4n t\\u00e2m huy\\u1ebft v\\u1edbi s\\u1ef1 nghi\\u1ec7p nghi\\u00ean c\\u1ee9u, t\\u00ecm t\\u00f2i ra nh\\u1eefng gi\\u1ed1ng c\\u00e2y tr\\u1ed3ng m\\u1edbi \\u0111\\u00e1p \\u1ee9ng y\\u00eau c\\u1ea7u ng\\u00e0y c\\u00e0ng cao c\\u1ee7a th\\u1ecb tr\\u01b0\\u1eddng v\\u00e0 th\\u1ecb hi\\u1ebfu c\\u1ee7a kh\\u00e1ch h\\u00e0ng.\",\"diachi_ncc\":\"S\\u1ed1 nh\\u00e0 55, \\u0110\\u01b0\\u1eddng A, T\\u1ed5 d\\u00e2n ph\\u1ed1 An \\u0110\\u00e0o, Th\\u1ecb Tr\\u1ea5n Tr\\u00e2u Qu\\u1ef3, Huy\\u1ec7n Gia L\\u00e2m, Th\\u00e0nh ph\\u1ed1 H\\u00e0 N\\u1ed9i, Vi\\u1ec7t Nam\",\"sodienthoai_ncc\":\"0979090189\",\"ten_cg\":\"C\\u00e2y M\\u0103ng C\\u1ee5t Gi\\u1ed1ng\",\"mota_cg\":\"C\\u00e2y M\\u0103ng C\\u1ee5t Gi\\u1ed1ng con F1 si\\u00eau thu\\u1ea7n ch\\u1ee7ng\",\"thumb_cg\":\"\\/storage\\/uploads\\/20232023\\/06\\/09\\/mangcut.png\",\"chitiet_cg\":\"C\\u00e2y M\\u0103ng C\\u1ee5t Gi\\u1ed1ng con F1 si\\u00eau thu\\u1ea7n ch\\u1ee7ng\",\"mavungtrong\":\"VN - TGOR - 0082\",\"tennv\":\"V\\u01b0\\u1eddn c\\u00e2y \\u0103n tr\\u00e1i B\\u00ecnh \\u0110\\u00f4ng\",\"thumb_nv\":\"\\/storage\\/uploads\\/20232023\\/05\\/27\\/BinhDong.jpg\",\"mota_nv\":\"Mi\\u1ec7t v\\u01b0\\u1eddn t\\u1ea1i B\\u00ecnh D\\u01b0\\u01a1ng \\u0111\\u01b0\\u1ee3c gh\\u00e9 t\\u1edbi nhi\\u1ec1u nh\\u1ea5t l\\u00e0  mi\\u1ec7t v\\u01b0\\u1eddn L\\u00e1i Thi\\u00eau. \\u0110\\u1ecba ch\\u1ec9 c\\u1ee5 th\\u1ec3 t\\u1ea1i KP H\\u01b0ng Th\\u1ecd, x\\u00e3 H\\u01b0ng \\u0110\\u1ecbnh, th\\u1ecb x\\u00e3 Thu\\u1eadn An, B\\u00ecnh D\\u01b0\\u01a1ng.  V\\u1ecb tr\\u00ed c\\u1ea3 mi\\u1ec7t v\\u01b0\\u1eddn n\\u00e0y ch\\u1ec9 c\\u00e1ch S\\u00e0i G\\u00f2n tp Th\\u1ee7 D\\u1ea7u M\\u1ed9t 10 km v\\u1ec1 ph\\u00eda Nam, c\\u00e1ch S\\u00e0i G\\u00f2n 20km v\\u1ec1 ph\\u00eda B\\u1eafc.\\n\\nN\\u01a1i \\u0111\\u00e2y c\\u00f3 n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00edt t\\u1ed1 n\\u1eef, s\\u1ea7u ri\\u00eang, ch\\u00f4m ch\\u00f4m, m\\u00e3ng c\\u1ea7u\\u2026. Nh\\u1eefng khu v\\u01b0\\u1eddn ng\\u1eadp tr\\u00e0n m\\u00e0u \\u0111\\u1ecf c\\u1ee7a ch\\u00f4m ch\\u00f4m, v\\u00e0ng c\\u1ee7a d\\u00e2u da, t\\u00edm c\\u1ee7a m\\u0103ng c\\u1ee5t h\\u00f2a c\\u00f9ng m\\u00f9i th\\u01a1m c\\u1ee7a s\\u1ea7u ri\\u00eang, c\\u1ee7a t\\u1ed1 n\\u1eef,\\u2026l\\u00e0 m\\u1ed9t trong nh\\u1eefng v\\u1ef1a hoa qu\\u1ea3 l\\u1edbn nh\\u1ea5t Nam B\\u1ed9.\",\"sodienthoai_nv\":\"023457891\",\"diachi_nv\":\"X\\u00e3 B\\u00ecnh \\u0110\\u00f4ng - TX G\\u00f2 C\\u00f4ng, Ti\\u1ec1n Giang T\\u1ec9nh\",\"chitiet_ct\":\"Chu\\u1ea9n b\\u1ecb \\u0111\\u1ea5t:\\n\\n\\u0110\\u1ea5t \\u0111\\u01b0\\u1ee3c chu\\u1ea9n b\\u1ecb tr\\u01b0\\u1edbc khi tr\\u1ed3ng c\\u00e2y gi\\u1ed1ng thanh long ru\\u1ed9t \\u0111\\u1ecf 1-2 tu\\u1ea7n. D\\u00f9ng Benomyl (n\\u1ed3ng \\u0111\\u1ed9 0,1%) t\\u01b0\\u1edbi v\\u00e0o m\\u00f4 \\u0111\\u1ea5t tr\\u01b0\\u1edbc khi tr\\u1ed3ng \\u0111\\u1ec3 ph\\u00f2ng ng\\u1eeba n\\u1ea5m b\\u1ec7nh. N\\u00ean l\\u00e0m m\\u00f4 \\u0111\\u1ea5t nh\\u1eb1m gi\\u00fap tho\\u00e1t n\\u01b0\\u1edbc t\\u1ed1t. K\\u00edch th\\u01b0\\u1edbc m\\u00f4 cao 10 -15cm, \\u0111\\u01b0\\u1eddng k\\u00ednh 60-0,80cm.\\n\\nM\\u00f4 \\u0111\\u1ea5t s\\u1eed d\\u1ee5ng tr\\u1ed3ng c\\u00e2y gi\\u1ed1ng thanh long ru\\u1ed9t \\u0111\\u1ecf l\\u00e0 l\\u1edbp \\u0111\\u1ea5t m\\u1eb7t tr\\u1ed9n v\\u1edbi ph\\u00e2n chu\\u1ed3ng hoai 15-20 kg (ph\\u00e2n h\\u1eefu c\\u01a1: 10-15kg\\/tr\\u1ee5) + 500g ph\\u00e2n Super l\\u00e2n + Basudin(2g\\/m\\u00f4).\\n\\n\\n\\nTh\\u1eddi v\\u1ee5 tr\\u1ed3ng:\\n\\nC\\u00e2y gi\\u1ed1ng thanh long ru\\u1ed9t \\u0111\\u1ecf c\\u00f3 th\\u1ec3 tr\\u1ed3ng quanh n\\u0103m, t\\u1ed1t nh\\u1ea5t n\\u00ean tr\\u1ed3ng v\\u00e0o m\\u00f9a xu\\u00e2n v\\u00e0 m\\u00f9a thu.\\n\\nC\\u00e1ch tr\\u1ed3ng\\n\\n\\u0110\\u1eb7t ph\\u1ea7n l\\u00f5i xu\\u1ed1ng \\u0111\\u1ea5t, ph\\u1ea7n m\\u1eb7t ph\\u1eb3ng c\\u1ee7a th\\u00e2n thanh long \\u00f4m s\\u00e1t v\\u00e0o tr\\u1ee5 v\\u00e0 d\\u00f9ng d\\u00e2y nylon c\\u1ed9t c\\u00e0nh v\\u00e0o tr\\u1ee5, m\\u1ed7i tr\\u1ee5 \\u0111\\u1eb7t 4 hom.\\n\\nM\\u1eadt \\u0111\\u1ed9 tr\\u1ed3ng c\\u00e2y gi\\u1ed1ng thanh long ru\\u1ed9t \\u0111\\u1ecf 1100 tr\\u1ee5\\/ha, kho\\u1ea3ng c\\u00e1ch tr\\u1ed3ng: 3m x 3m\\n\\nT\\u01b0\\u1edbi n\\u01b0\\u1edbc:\\n\\nSau khi \\u0111\\u1eb7t ph\\u1ea3i t\\u01b0\\u1edbi n\\u01b0\\u1edbc th\\u01b0\\u1eddng xuy\\u00ean 2 l\\u1ea7n \\/ng\\u00e0y (kh\\u00f4ng t\\u01b0\\u1edbi qu\\u00e1 nhi\\u1ec1u n\\u01b0\\u1edbc s\\u1ebd g\\u00e2y th\\u1ed1i g\\u1ed1c), khi c\\u00e2y \\u0111\\u00e3 sinh tr\\u01b0\\u1edfng, ph\\u00e1t tri\\u1ec3n t\\u00f9y theo th\\u1eddi ti\\u1ebft m\\u00e0 t\\u01b0\\u1edbi n\\u01b0\\u1edbc cho c\\u00e2y, kh\\u00f4ng \\u0111\\u1ec3 qu\\u00e1 kh\\u00f4 v\\u00e0 kh\\u00f4ng t\\u01b0\\u1edbi qu\\u00e1 \\u1ea9m, ch\\u00fa \\u00fd tho\\u00e1t n\\u01b0\\u1edbc khi m\\u01b0a l\\u0169.T\\u1ec9a c\\u00e0nh, t\\u1ea1o t\\u00e1n:\\n\\nCh\\u0103m s\\u00f3c t\\u1ec9a c\\u00e0nh t\\u1ea1o t\\u00e1n cho thanh long ra nhi\\u1ec1u qu\\u1ea3\\n\\nT\\u1eeb m\\u1eb7t \\u0111\\u1ea5t t\\u1edbi \\u0111\\u1ec9nh tr\\u1ee5 ch\\u1ec9 ch\\u1ecdn \\u0111\\u1ec3 l\\u1ea1i 1 c\\u00e0nh, trong th\\u1eddi gian n\\u00e0y c\\u1ea7n ch\\u00fa \\u00fd c\\u1ed9t c\\u00e0nh s\\u00e1t v\\u00e0o tr\\u1ee5 \\u0111\\u1ec3 r\\u1ec5 kh\\u00ed sinh c\\u1ee7a c\\u00e0nh b\\u00e1m ch\\u1eb7t v\\u00e0o tr\\u1ee5 gi\\u00fap c\\u00e0nh kh\\u00f4ng b\\u1ecb g\\u00e3y khi g\\u1eb7p m\\u01b0a, gi\\u00f3.\\n\\nTr\\u00ean \\u0111\\u1ec9nh tr\\u1ee5, c\\u00e0nh c\\u00f3 th\\u1ec3 \\u0111\\u01b0\\u1ee3c c\\u1eaft t\\u1ec9a sao cho t\\u1ea1o t\\u00e1n tr\\u00f2n v\\u00e0 ph\\u00e2n b\\u1ed1 \\u0111\\u1ec1u quanh tr\\u1ee5. C\\u00e1c c\\u00e0nh m\\u1edbi tr\\u00ean \\u0111\\u1ec9nh tr\\u1ee5 s\\u1ebd \\u0111\\u01b0\\u1ee3c t\\u1ec9a theo nguy\\u00ean t\\u1eafc: m\\u1ed9t c\\u00e0nh m\\u1eb9, 2 c\\u00e0nh con. Ch\\u1ecdn c\\u00e1c c\\u00e0nh to kh\\u1ecfe \\u0111\\u1ec3 l\\u1ea1i. Th\\u01b0\\u1eddng xuy\\u00ean t\\u1ec9a b\\u1ecf c\\u00e1c c\\u00e0nh tai chu\\u1ed9t, c\\u00e0nh s\\u00e2u b\\u1ec7nh, c\\u00e0nh n\\u1eb1m khu\\u1ea5t trong t\\u00e1n, c\\u00e0nh \\u0111\\u00e3 cho qu\\u1ea3 2-3 n\\u0103m\\n\\nB\\u00f3n ph\\u00e2n:\\n\\nSau khi tr\\u1ed3ng c\\u00e2y gi\\u1ed1ng thanh long ru\\u1ed9t \\u0111\\u1ecf 2 tu\\u1ea7n (\\u0111\\u1ed1i v\\u1edbi c\\u00e2y \\u0111\\u00e3 c\\u00f3 r\\u1ec5 ho\\u00e0n ch\\u1ec9nh) c\\u00f3 th\\u1ec3 s\\u1eed d\\u1ee5ng Urea + DAP ho\\u1eb7c NPK 16-16-8 hay 20-20-15 t\\u01b0\\u1edbi, li\\u1ec1u l\\u01b0\\u1ee3ng 20-30g\\/tr\\u1ee5, 10 ng\\u00e0y\\/l\\u1ea7n\\n\\nC\\u00e2y 3-12 th\\u00e1ng s\\u1eed d\\u1ee5ng Urea + DAP ho\\u1eb7c NPK 16-16-8 hay 20-20-15 t\\u01b0\\u1edbi 30-50g\\/tr\\u1ee5, 15 ng\\u00e0y\\/l\\u1ea7n t\\u00f9y theo lo\\u1ea1i \\u0111\\u1ea5t v\\u00e0 t\\u0103ng theo tu\\u1ed5i c\\u00e2y.\\n\\nC\\u00e2y 1-3 n\\u0103m: C\\u00f3 th\\u1ec3 s\\u1eed d\\u1ee5ng ph\\u00e2n chu\\u1ed3ng hoai ho\\u1eb7c h\\u1eefu c\\u01a1 20-50kg\\/tr\\u1ee5\\/n\\u0103m, chia l\\u00e0m 2 l\\u1ea7n b\\u00f3n. L\\u1ea7n 1 v\\u00e0o l\\u00fac c\\u00e2y chu\\u1ea9n b\\u1ecb ra hoa r\\u1ed9 (th\\u00e1ng 2-3), l\\u1ea7n 2 th\\u00e1ng 9-10 sau giai \\u0111o\\u1ea1n cho tr\\u00e1i r\\u1ed9, giai \\u0111o\\u1ea1n sinh c\\u00e0nh m\\u1edbi v\\u00e0 chu\\u1ea9n b\\u1ecb nu\\u00f4i tr\\u00e1i v\\u1ee5 ngh\\u1ecbch.\\n\\nS\\u1eed d\\u1ee5ng ph\\u00e2n NPK 20-20-15 ho\\u1eb7c \\u0111\\u01a1n ph\\u00e2n Urea, DAP, KCl. Khi c\\u00e2y ra hoa v\\u00e0 nu\\u00f4i qu\\u1ea3 c\\u1ea7n ch\\u00fa \\u00fd h\\u00e0m l\\u01b0\\u1ee3ng l\\u00e2n v\\u00e0 kali cao, k\\u00edch th\\u00edch c\\u00e2y ra c\\u00e0nh m\\u1edbi c\\u1ea7n b\\u00f3n \\u0111\\u1ea1m cao.\",\"mota_ct\":\"M\\u0103ng c\\u1ee5t (Garcinia mangostana) l\\u00e0 m\\u1ed9t lo\\u1ea1i tr\\u00e1i c\\u00e2y nhi\\u1ec7t \\u0111\\u1edbi, c\\u00f3 v\\u1ecb h\\u01a1i ng\\u1ecdt v\\u00e0 chua. N\\u00f3 c\\u00f3 ngu\\u1ed3n g\\u1ed1c t\\u1eeb \\u0110\\u00f4ng Nam \\u00c1 nh\\u01b0ng c\\u00f3 th\\u1ec3 \\u0111\\u01b0\\u1ee3c t\\u00ecm th\\u1ea5y \\u1edf nhi\\u1ec1u v\\u00f9ng nhi\\u1ec7t \\u0111\\u1edbi kh\\u00e1c nhau tr\\u00ean th\\u1ebf gi\\u1edbi. Tr\\u00e1i c\\u00e2y n\\u00e0y c\\u00f3 m\\u00e0u t\\u00edm \\u0111\\u1eadm, v\\u1ecf c\\u1ee7a n\\u00f3 ph\\u00e1t tri\\u1ec3n khi ch\\u00edn, ph\\u1ea7n th\\u1ecbt b\\u00ean trong m\\u1ecdng n\\u01b0\\u1edbc c\\u00f3 m\\u00e0u tr\\u1eafng. M\\u0103ng c\\u1ee5t mang l\\u1ea1i nhi\\u1ec1u l\\u1ee3i \\u00edch cho s\\u1ee9c kh\\u1ecfe do cung c\\u1ea5p nhi\\u1ec1u ch\\u1ea5t dinh d\\u01b0\\u1ee1ng, ch\\u1ea5t x\\u01a1 v\\u00e0 ch\\u1ea5t ch\\u1ed1ng oxy h\\u00f3a.\",\"thumb_ct\":\"\\/storage\\/uploads\\/20232023\\/06\\/09\\/NewsOutSide-22-12-201722-24789-1231-8164-1514538282.jpeg\",\"ten_ct\":\"C\\u00e2y M\\u0103ng C\\u1ee5t\",\"id_product\":\"3\",\"ten_sp\":\"M\\u0103ng C\\u1ee5t\",\"mota_sp\":\"M\\u0103ng c\\u1ee5t l\\u00e0 m\\u1ed9t lo\\u1ea1i tr\\u00e1i c\\u00e2y t\\u1ef1 nhi\\u00ean \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng r\\u1ea5t ph\\u1ed5 bi\\u1ebfn \\u1edf \\u0110\\u00f4ng Nam \\u00c1. \\u1ede Vi\\u1ec7t Nam, m\\u0103ng c\\u1ee5t \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng nh\\u01b0 m\\u1ed9t lo\\u1ea1i qu\\u1ea3 tr\\u00e1ng mi\\u1ec7ng th\\u01a1m ngon, ng\\u1ecdt thanh v\\u00e0 \\u0111\\u00f4i khi chua nh\\u1eb9. Tuy nhi\\u00ean, \\u0103n m\\u0103ng c\\u1ee5t c\\u00f3 t\\u00e1c d\\u1ee5ng g\\u00ec th\\u00ec kh\\u00f4ng ph\\u1ea3i ai c\\u0169ng bi\\u1ebft.\",\"chitiet_sp\":\"M\\u0103ng c\\u1ee5t l\\u00e0 m\\u1ed9t lo\\u1ea1i tr\\u00e1i c\\u00e2y t\\u1ef1 nhi\\u00ean \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng r\\u1ea5t ph\\u1ed5 bi\\u1ebfn \\u1edf \\u0110\\u00f4ng Nam \\u00c1. \\u1ede Vi\\u1ec7t Nam, m\\u0103ng c\\u1ee5t \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng nh\\u01b0 m\\u1ed9t lo\\u1ea1i qu\\u1ea3 tr\\u00e1ng mi\\u1ec7ng th\\u01a1m ngon, ng\\u1ecdt thanh v\\u00e0 \\u0111\\u00f4i khi chua nh\\u1eb9. Tuy nhi\\u00ean, \\u0103n m\\u0103ng c\\u1ee5t c\\u00f3 t\\u00e1c d\\u1ee5ng g\\u00ec th\\u00ec kh\\u00f4ng ph\\u1ea3i ai c\\u0169ng bi\\u1ebft.\",\"thumb_sp\":\"\\/storage\\/uploads\\/20232023\\/05\\/27\\/mangcut.png\",\"id_bill\":199,\"created_at\":\"2023-06-26 07:23:49\",\"shelf_life\":\"2023-06-24 14:23:00\"},\"timeStamp\":\"2023-06-26T07:23:49.386951Z\",\"hash\":\"$2y$10$VSnJdtB6172yJ6c67gkm6enfIya0bha43hjm5K5Kes5eQmB.uKPjy\",\"mineVar\":570,\"target\":\"a\",\"subHash\":\"0\",\"mineTime\":31}]}', '2023-06-26 00:22:13', '2023-06-26 00:24:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `crops`
--

CREATE TABLE `crops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `detail` longtext NOT NULL,
  `id_seedandseedling` bigint(20) NOT NULL,
  `id_farmer` bigint(20) NOT NULL,
  `thumb` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `crops`
--

INSERT INTO `crops` (`id`, `name`, `description`, `detail`, `id_seedandseedling`, `id_farmer`, `thumb`, `created_at`, `updated_at`) VALUES
(1, 'Cây Thanh Long Đồng Tâm Long An', 'Thanh long ruột đỏ còn có tên gọi là Thanh long Nữ Hoàng (tên khoa học là Hylocereus) thuộc dòng H14 có xuất xứ từ Colombia.\n\nCây giống thanh long ruột đỏ bắt đầu xuất hiện ở Việt Nam nhiều năm nay, và hiện trên cả nước ta duy chỉ có ba tỉnh áp dụng trồng thí điểm là Bình Thuận, Tiền Giang và Tây Ninh, gần đây có một số tỉnh cũng áp dụng trồng thử Thanh long ruột đỏ như Hà Tây, Thái Nguyên, Bắc Giang, Quảng Ninh... Tuy nhiên, qua thực tế cho thấy vùng Tây Ninh cho trái Thanh long ruột đỏ không đẹp mã như 2 vùng Bình Thuận và Tiền Giang nhưng chất lượng ăn ngọt đậm và mùi thơm hơn hẳn, do đó hiện tại Thanh Long ruột đỏ trồng tại Tây Ninh được người tiêu dùng ưa thích hơn và có giá trị kinh tế cao hơn trồng ở các vùng khác.', 'Chuẩn bị đất:\n\nĐất được chuẩn bị trước khi trồng cây giống thanh long ruột đỏ 1-2 tuần. Dùng Benomyl (nồng độ 0,1%) tưới vào mô đất trước khi trồng để phòng ngừa nấm bệnh. Nên làm mô đất nhằm giúp thoát nước tốt. Kích thước mô cao 10 -15cm, đường kính 60-0,80cm.\n\nMô đất sử dụng trồng cây giống thanh long ruột đỏ là lớp đất mặt trộn với phân chuồng hoai 15-20 kg (phân hữu cơ: 10-15kg/trụ) + 500g phân Super lân + Basudin(2g/mô).\n\n\n\nThời vụ trồng:\n\nCây giống thanh long ruột đỏ có thể trồng quanh năm, tốt nhất nên trồng vào mùa xuân và mùa thu.\n\nCách trồng\n\nĐặt phần lõi xuống đất, phần mặt phẳng của thân thanh long ôm sát vào trụ và dùng dây nylon cột cành vào trụ, mỗi trụ đặt 4 hom.\n\nMật độ trồng cây giống thanh long ruột đỏ 1100 trụ/ha, khoảng cách trồng: 3m x 3m\n\nTưới nước:\n\nSau khi đặt phải tưới nước thường xuyên 2 lần /ngày (không tưới quá nhiều nước sẽ gây thối gốc), khi cây đã sinh trưởng, phát triển tùy theo thời tiết mà tưới nước cho cây, không để quá khô và không tưới quá ẩm, chú ý thoát nước khi mưa lũ.Tỉa cành, tạo tán:\n\nChăm sóc tỉa cành tạo tán cho thanh long ra nhiều quả\n\nTừ mặt đất tới đỉnh trụ chỉ chọn để lại 1 cành, trong thời gian này cần chú ý cột cành sát vào trụ để rễ khí sinh của cành bám chặt vào trụ giúp cành không bị gãy khi gặp mưa, gió.\n\nTrên đỉnh trụ, cành có thể được cắt tỉa sao cho tạo tán tròn và phân bố đều quanh trụ. Các cành mới trên đỉnh trụ sẽ được tỉa theo nguyên tắc: một cành mẹ, 2 cành con. Chọn các cành to khỏe để lại. Thường xuyên tỉa bỏ các cành tai chuột, cành sâu bệnh, cành nằm khuất trong tán, cành đã cho quả 2-3 năm\n\nBón phân:\n\nSau khi trồng cây giống thanh long ruột đỏ 2 tuần (đối với cây đã có rễ hoàn chỉnh) có thể sử dụng Urea + DAP hoặc NPK 16-16-8 hay 20-20-15 tưới, liều lượng 20-30g/trụ, 10 ngày/lần\n\nCây 3-12 tháng sử dụng Urea + DAP hoặc NPK 16-16-8 hay 20-20-15 tưới 30-50g/trụ, 15 ngày/lần tùy theo loại đất và tăng theo tuổi cây.\n\nCây 1-3 năm: Có thể sử dụng phân chuồng hoai hoặc hữu cơ 20-50kg/trụ/năm, chia làm 2 lần bón. Lần 1 vào lúc cây chuẩn bị ra hoa rộ (tháng 2-3), lần 2 tháng 9-10 sau giai đoạn cho trái rộ, giai đoạn sinh cành mới và chuẩn bị nuôi trái vụ nghịch.\n\nSử dụng phân NPK 20-20-15 hoặc đơn phân Urea, DAP, KCl. Khi cây ra hoa và nuôi quả cần chú ý hàm lượng lân và kali cao, kích thích cây ra cành mới cần bón đạm cao.', 1, 4, '/storage/uploads/20232023/06/09/canh-tac-thanh-long-5.jpg', '2023-05-21 21:56:05', '2023-06-09 06:09:22'),
(2, 'Cây Xoài', 'Xoài cát núm thoạt nhìn không khác gì với những loại xoài cát khác nhưng thứ quả này chỉ xuất hiện tại các tỉnh miền Tây Nam Bộ và nhiều nhất là ở huyện Vũng Liêm, tỉnh Vĩnh Long. Chính vì vậy, cùng với khoai lang Bình Tân, xoài cát núm Vũng Liêm trở thành loại quả đặc sản của người dân Vĩnh Long, góp phần không nhỏ trong việc đem lại nguồn thu nhập ổn định cũng như phát triển loại hình du lịch nông nghiệp đang ngày càng được ưa chuộng.', 'Chuẩn bị đất:\n\nĐất được chuẩn bị trước khi trồng cây giống thanh long ruột đỏ 1-2 tuần. Dùng Benomyl (nồng độ 0,1%) tưới vào mô đất trước khi trồng để phòng ngừa nấm bệnh. Nên làm mô đất nhằm giúp thoát nước tốt. Kích thước mô cao 10 -15cm, đường kính 60-0,80cm.\n\nMô đất sử dụng trồng cây giống thanh long ruột đỏ là lớp đất mặt trộn với phân chuồng hoai 15-20 kg (phân hữu cơ: 10-15kg/trụ) + 500g phân Super lân + Basudin(2g/mô).\n\n\n\nThời vụ trồng:\n\nCây giống thanh long ruột đỏ có thể trồng quanh năm, tốt nhất nên trồng vào mùa xuân và mùa thu.\n\nCách trồng\n\nĐặt phần lõi xuống đất, phần mặt phẳng của thân thanh long ôm sát vào trụ và dùng dây nylon cột cành vào trụ, mỗi trụ đặt 4 hom.\n\nMật độ trồng cây giống thanh long ruột đỏ 1100 trụ/ha, khoảng cách trồng: 3m x 3m\n\nTưới nước:\n\nSau khi đặt phải tưới nước thường xuyên 2 lần /ngày (không tưới quá nhiều nước sẽ gây thối gốc), khi cây đã sinh trưởng, phát triển tùy theo thời tiết mà tưới nước cho cây, không để quá khô và không tưới quá ẩm, chú ý thoát nước khi mưa lũ.Tỉa cành, tạo tán:\n\nChăm sóc tỉa cành tạo tán cho thanh long ra nhiều quả\n\nTừ mặt đất tới đỉnh trụ chỉ chọn để lại 1 cành, trong thời gian này cần chú ý cột cành sát vào trụ để rễ khí sinh của cành bám chặt vào trụ giúp cành không bị gãy khi gặp mưa, gió.\n\nTrên đỉnh trụ, cành có thể được cắt tỉa sao cho tạo tán tròn và phân bố đều quanh trụ. Các cành mới trên đỉnh trụ sẽ được tỉa theo nguyên tắc: một cành mẹ, 2 cành con. Chọn các cành to khỏe để lại. Thường xuyên tỉa bỏ các cành tai chuột, cành sâu bệnh, cành nằm khuất trong tán, cành đã cho quả 2-3 năm\n\nBón phân:\n\nSau khi trồng cây giống thanh long ruột đỏ 2 tuần (đối với cây đã có rễ hoàn chỉnh) có thể sử dụng Urea + DAP hoặc NPK 16-16-8 hay 20-20-15 tưới, liều lượng 20-30g/trụ, 10 ngày/lần\n\nCây 3-12 tháng sử dụng Urea + DAP hoặc NPK 16-16-8 hay 20-20-15 tưới 30-50g/trụ, 15 ngày/lần tùy theo loại đất và tăng theo tuổi cây.\n\nCây 1-3 năm: Có thể sử dụng phân chuồng hoai hoặc hữu cơ 20-50kg/trụ/năm, chia làm 2 lần bón. Lần 1 vào lúc cây chuẩn bị ra hoa rộ (tháng 2-3), lần 2 tháng 9-10 sau giai đoạn cho trái rộ, giai đoạn sinh cành mới và chuẩn bị nuôi trái vụ nghịch.\n\nSử dụng phân NPK 20-20-15 hoặc đơn phân Urea, DAP, KCl. Khi cây ra hoa và nuôi quả cần chú ý hàm lượng lân và kali cao, kích thích cây ra cành mới cần bón đạm cao.', 2, 4, '/storage/uploads/20232023/06/09/xoai-vinh long.jpg', '2023-05-21 15:09:19', '2023-06-18 00:48:28'),
(4, 'Cây Sầu Riêng Ri 6', 'Loại cây ăn trái lâu năm, được trồng theo tiêu chuẩn VietGap', 'Chuẩn bị đất:\n\nĐất được chuẩn bị trước khi trồng cây giống thanh long ruột đỏ 1-2 tuần. Dùng Benomyl (nồng độ 0,1%) tưới vào mô đất trước khi trồng để phòng ngừa nấm bệnh. Nên làm mô đất nhằm giúp thoát nước tốt. Kích thước mô cao 10 -15cm, đường kính 60-0,80cm.\n\nMô đất sử dụng trồng cây giống thanh long ruột đỏ là lớp đất mặt trộn với phân chuồng hoai 15-20 kg (phân hữu cơ: 10-15kg/trụ) + 500g phân Super lân + Basudin(2g/mô).\n\n\n\nThời vụ trồng:\n\nCây giống thanh long ruột đỏ có thể trồng quanh năm, tốt nhất nên trồng vào mùa xuân và mùa thu.\n\nCách trồng\n\nĐặt phần lõi xuống đất, phần mặt phẳng của thân thanh long ôm sát vào trụ và dùng dây nylon cột cành vào trụ, mỗi trụ đặt 4 hom.\n\nMật độ trồng cây giống thanh long ruột đỏ 1100 trụ/ha, khoảng cách trồng: 3m x 3m\n\nTưới nước:\n\nSau khi đặt phải tưới nước thường xuyên 2 lần /ngày (không tưới quá nhiều nước sẽ gây thối gốc), khi cây đã sinh trưởng, phát triển tùy theo thời tiết mà tưới nước cho cây, không để quá khô và không tưới quá ẩm, chú ý thoát nước khi mưa lũ.Tỉa cành, tạo tán:\n\nChăm sóc tỉa cành tạo tán cho thanh long ra nhiều quả\n\nTừ mặt đất tới đỉnh trụ chỉ chọn để lại 1 cành, trong thời gian này cần chú ý cột cành sát vào trụ để rễ khí sinh của cành bám chặt vào trụ giúp cành không bị gãy khi gặp mưa, gió.\n\nTrên đỉnh trụ, cành có thể được cắt tỉa sao cho tạo tán tròn và phân bố đều quanh trụ. Các cành mới trên đỉnh trụ sẽ được tỉa theo nguyên tắc: một cành mẹ, 2 cành con. Chọn các cành to khỏe để lại. Thường xuyên tỉa bỏ các cành tai chuột, cành sâu bệnh, cành nằm khuất trong tán, cành đã cho quả 2-3 năm\n\nBón phân:\n\nSau khi trồng cây giống thanh long ruột đỏ 2 tuần (đối với cây đã có rễ hoàn chỉnh) có thể sử dụng Urea + DAP hoặc NPK 16-16-8 hay 20-20-15 tưới, liều lượng 20-30g/trụ, 10 ngày/lần\n\nCây 3-12 tháng sử dụng Urea + DAP hoặc NPK 16-16-8 hay 20-20-15 tưới 30-50g/trụ, 15 ngày/lần tùy theo loại đất và tăng theo tuổi cây.\n\nCây 1-3 năm: Có thể sử dụng phân chuồng hoai hoặc hữu cơ 20-50kg/trụ/năm, chia làm 2 lần bón. Lần 1 vào lúc cây chuẩn bị ra hoa rộ (tháng 2-3), lần 2 tháng 9-10 sau giai đoạn cho trái rộ, giai đoạn sinh cành mới và chuẩn bị nuôi trái vụ nghịch.\n\nSử dụng phân NPK 20-20-15 hoặc đơn phân Urea, DAP, KCl. Khi cây ra hoa và nuôi quả cần chú ý hàm lượng lân và kali cao, kích thích cây ra cành mới cần bón đạm cao.', 1, 3, '/storage/uploads/20232023/06/09/canh-tac-sau-rieng-2.jpg', '2023-05-27 01:37:34', '2023-06-09 06:08:13'),
(5, 'Cây Măng Cụt', 'Măng cụt (Garcinia mangostana) là một loại trái cây nhiệt đới, có vị hơi ngọt và chua. Nó có nguồn gốc từ Đông Nam Á nhưng có thể được tìm thấy ở nhiều vùng nhiệt đới khác nhau trên thế giới. Trái cây này có màu tím đậm, vỏ của nó phát triển khi chín, phần thịt bên trong mọng nước có màu trắng. Măng cụt mang lại nhiều lợi ích cho sức khỏe do cung cấp nhiều chất dinh dưỡng, chất xơ và chất chống oxy hóa.', 'Chuẩn bị đất:\n\nĐất được chuẩn bị trước khi trồng cây giống thanh long ruột đỏ 1-2 tuần. Dùng Benomyl (nồng độ 0,1%) tưới vào mô đất trước khi trồng để phòng ngừa nấm bệnh. Nên làm mô đất nhằm giúp thoát nước tốt. Kích thước mô cao 10 -15cm, đường kính 60-0,80cm.\n\nMô đất sử dụng trồng cây giống thanh long ruột đỏ là lớp đất mặt trộn với phân chuồng hoai 15-20 kg (phân hữu cơ: 10-15kg/trụ) + 500g phân Super lân + Basudin(2g/mô).\n\n\n\nThời vụ trồng:\n\nCây giống thanh long ruột đỏ có thể trồng quanh năm, tốt nhất nên trồng vào mùa xuân và mùa thu.\n\nCách trồng\n\nĐặt phần lõi xuống đất, phần mặt phẳng của thân thanh long ôm sát vào trụ và dùng dây nylon cột cành vào trụ, mỗi trụ đặt 4 hom.\n\nMật độ trồng cây giống thanh long ruột đỏ 1100 trụ/ha, khoảng cách trồng: 3m x 3m\n\nTưới nước:\n\nSau khi đặt phải tưới nước thường xuyên 2 lần /ngày (không tưới quá nhiều nước sẽ gây thối gốc), khi cây đã sinh trưởng, phát triển tùy theo thời tiết mà tưới nước cho cây, không để quá khô và không tưới quá ẩm, chú ý thoát nước khi mưa lũ.Tỉa cành, tạo tán:\n\nChăm sóc tỉa cành tạo tán cho thanh long ra nhiều quả\n\nTừ mặt đất tới đỉnh trụ chỉ chọn để lại 1 cành, trong thời gian này cần chú ý cột cành sát vào trụ để rễ khí sinh của cành bám chặt vào trụ giúp cành không bị gãy khi gặp mưa, gió.\n\nTrên đỉnh trụ, cành có thể được cắt tỉa sao cho tạo tán tròn và phân bố đều quanh trụ. Các cành mới trên đỉnh trụ sẽ được tỉa theo nguyên tắc: một cành mẹ, 2 cành con. Chọn các cành to khỏe để lại. Thường xuyên tỉa bỏ các cành tai chuột, cành sâu bệnh, cành nằm khuất trong tán, cành đã cho quả 2-3 năm\n\nBón phân:\n\nSau khi trồng cây giống thanh long ruột đỏ 2 tuần (đối với cây đã có rễ hoàn chỉnh) có thể sử dụng Urea + DAP hoặc NPK 16-16-8 hay 20-20-15 tưới, liều lượng 20-30g/trụ, 10 ngày/lần\n\nCây 3-12 tháng sử dụng Urea + DAP hoặc NPK 16-16-8 hay 20-20-15 tưới 30-50g/trụ, 15 ngày/lần tùy theo loại đất và tăng theo tuổi cây.\n\nCây 1-3 năm: Có thể sử dụng phân chuồng hoai hoặc hữu cơ 20-50kg/trụ/năm, chia làm 2 lần bón. Lần 1 vào lúc cây chuẩn bị ra hoa rộ (tháng 2-3), lần 2 tháng 9-10 sau giai đoạn cho trái rộ, giai đoạn sinh cành mới và chuẩn bị nuôi trái vụ nghịch.\n\nSử dụng phân NPK 20-20-15 hoặc đơn phân Urea, DAP, KCl. Khi cây ra hoa và nuôi quả cần chú ý hàm lượng lân và kali cao, kích thích cây ra cành mới cần bón đạm cao.', 6, 4, '/storage/uploads/20232023/06/09/NewsOutSide-22-12-201722-24789-1231-8164-1514538282.jpeg', '2023-05-27 01:41:46', '2023-06-18 00:49:16'),
(6, 'Cây Bưởi Da Xanh', 'Phần múi bưởi có chứa 89% nước, 9.3% đường, 0.5 protein, vitamin C, B1, B2, B3, B6, sắt, magie, kẽm, kali, natri, photpho, Ngoài ra, trong vỏ bưởi có nhiều tinh dầu với thành phần chính là limonene và myrcen.', 'Sơ đồ vườn- Phải có sơ đồ và bảng hiệu thể hiện hệ thống nông trại bao gồm vườn cây, nhà lưới,sân, chuồng trại hoặc các vị trí sản xuất khác…- Sơ đồ vườn bao gồm: Tên chủ vườn, mã số/ký hiệu nhận diện từng lô, khoảng cáchcây và đường ranh giới; vị trí nhà ở, nhà kho chứa phân, thuốc, khu vực ủ phân chuồng,giếng nước, chuồng trại,…   Tưới và tiêu nước - Không dùng nước thải công nghiệp, nước thải từ các bệnh viện, các khu dân cư tậptrung, các trang trại chăn nuôi, các lò giết mổ gia súc gia cầm, nước phân tươi, nước tiểu. - Mùa khô tưới thường xuyên cho bưởi, vào mùa mưa do lượng mưa không phân bốđều, vì vậy vườn cần phải có mương cống để tiêu nước vào các tháng mưa nhiều, trách ngậpúng kéo dài cây có thể chết.- Vườn cần phải có hệ thống mương rãnh để tưới nước vào mùa khô và thoát nước vàomùa mưa. Thường tưới theo 2 cách: Tưới tràn, tưới phun dưới tán và tưới nhỏ giọt, biện pháptưới nhỏ giọt mang lại hiệu quả cao hơn.- Ở thời kỳ kinh doanh tùy từng giai đoạn mà lượng nước và số lần tưới thay đổi. Ởgiai đoạn ra hoa đậu quả 1-2 ngày tưới/lần. Lượng nước tưới từ 100-200lít/lần. Lượng nướctưới nhiều hay ít tùy thuộc vào tuổi cây, loại đất, thời tiết và phương pháp tưới.- Việc tưới tiêu cần phải lập kế hoạch cho từng vụ và phải được lưu hồ sơ (Thời điểmtưới, giai đoạn tưới, lượng nước tưới, số lần tưới). Phải có biện pháp quản lý tốt nguồn nướctưới (Phân tích nguy cơ ô nhiễm nguồn nước, bảng đánh giá nguy cơ, biện pháp khắc phục).   Tỉa cành và tạo tánHàng năm sau khi thu hoạch cần loại bỏ những cành đã mang quả, cành bị sâu, bệnh,cành ốm yếu, cành nằm trong tán không có khả năng mang quả, cành đan chéo nhau, nhữngcành vượt trong thời kỳ cây mang quả; những cành nằm ngoài bộ khung tán cây đã định hìnhtrước đó. Khử trùng dụng cụ bằng nước Javel hoặc cồn 900 khi tỉa cành, tránh lây bệnh (tiềm ẩnvirus) qua cây khác.    Phân bónMức bón cho cây trồng tuỳ thuộc vào nhiều yếu tố như loại đất, thành phần dinhdưỡng trong đất, tuổi cây, mật độ, năng suất vụ trước.- Phân bón hữu cơ: Phân hữu cơ: 10-30kg/cây/năm; Phân hữu cơ vi sinh: 5-8kg/cây/năm; Vôi: 2-3kg/cây/năm', 7, 4, '/storage/uploads/20232023/06/09/ttxvn_1609daxanh.jpg', '2023-05-27 01:44:47', '2023-06-18 00:55:53'),
(7, 'Cây Cherry', 'Cây Cherry VietGap', 'Chuẩn bị đất:\n\nĐất được chuẩn bị trước khi trồng cây giống thanh long ruột đỏ 1-2 tuần. Dùng Benomyl (nồng độ 0,1%) tưới vào mô đất trước khi trồng để phòng ngừa nấm bệnh. Nên làm mô đất nhằm giúp thoát nước tốt. Kích thước mô cao 10 -15cm, đường kính 60-0,80cm.\n\nMô đất sử dụng trồng cây giống thanh long ruột đỏ là lớp đất mặt trộn với phân chuồng hoai 15-20 kg (phân hữu cơ: 10-15kg/trụ) + 500g phân Super lân + Basudin(2g/mô).\n\n\n\nThời vụ trồng:\n\nCây giống thanh long ruột đỏ có thể trồng quanh năm, tốt nhất nên trồng vào mùa xuân và mùa thu.\n\nCách trồng\n\nĐặt phần lõi xuống đất, phần mặt phẳng của thân thanh long ôm sát vào trụ và dùng dây nylon cột cành vào trụ, mỗi trụ đặt 4 hom.\n\nMật độ trồng cây giống thanh long ruột đỏ 1100 trụ/ha, khoảng cách trồng: 3m x 3m\n\nTưới nước:\n\nSau khi đặt phải tưới nước thường xuyên 2 lần /ngày (không tưới quá nhiều nước sẽ gây thối gốc), khi cây đã sinh trưởng, phát triển tùy theo thời tiết mà tưới nước cho cây, không để quá khô và không tưới quá ẩm, chú ý thoát nước khi mưa lũ.Tỉa cành, tạo tán:\n\nChăm sóc tỉa cành tạo tán cho thanh long ra nhiều quả\n\nTừ mặt đất tới đỉnh trụ chỉ chọn để lại 1 cành, trong thời gian này cần chú ý cột cành sát vào trụ để rễ khí sinh của cành bám chặt vào trụ giúp cành không bị gãy khi gặp mưa, gió.\n\nTrên đỉnh trụ, cành có thể được cắt tỉa sao cho tạo tán tròn và phân bố đều quanh trụ. Các cành mới trên đỉnh trụ sẽ được tỉa theo nguyên tắc: một cành mẹ, 2 cành con. Chọn các cành to khỏe để lại. Thường xuyên tỉa bỏ các cành tai chuột, cành sâu bệnh, cành nằm khuất trong tán, cành đã cho quả 2-3 năm\n\nBón phân:\n\nSau khi trồng cây giống thanh long ruột đỏ 2 tuần (đối với cây đã có rễ hoàn chỉnh) có thể sử dụng Urea + DAP hoặc NPK 16-16-8 hay 20-20-15 tưới, liều lượng 20-30g/trụ, 10 ngày/lần\n\nCây 3-12 tháng sử dụng Urea + DAP hoặc NPK 16-16-8 hay 20-20-15 tưới 30-50g/trụ, 15 ngày/lần tùy theo loại đất và tăng theo tuổi cây.\n\nCây 1-3 năm: Có thể sử dụng phân chuồng hoai hoặc hữu cơ 20-50kg/trụ/năm, chia làm 2 lần bón. Lần 1 vào lúc cây chuẩn bị ra hoa rộ (tháng 2-3), lần 2 tháng 9-10 sau giai đoạn cho trái rộ, giai đoạn sinh cành mới và chuẩn bị nuôi trái vụ nghịch.\n\nSử dụng phân NPK 20-20-15 hoặc đơn phân Urea, DAP, KCl. Khi cây ra hoa và nuôi quả cần chú ý hàm lượng lân và kali cao, kích thích cây ra cành mới cần bón đạm cao.', 1, 4, '/storage/uploads/20232023/06/09/cay-cherry-1.jpg', '2023-05-27 01:45:32', '2023-06-09 06:15:00'),
(8, 'Dây Dưa Hấu VietGap', 'Cây ăn quả ngắn ngày', 'Dây Dưa Hấu được trồng chuyên canh theo tiêu chuẩn VietGapChuẩn bị đất:\n\nĐất được chuẩn bị trước khi trồng cây giống thanh long ruột đỏ 1-2 tuần. Dùng Benomyl (nồng độ 0,1%) tưới vào mô đất trước khi trồng để phòng ngừa nấm bệnh. Nên làm mô đất nhằm giúp thoát nước tốt. Kích thước mô cao 10 -15cm, đường kính 60-0,80cm.\n\nMô đất sử dụng trồng cây giống thanh long ruột đỏ là lớp đất mặt trộn với phân chuồng hoai 15-20 kg (phân hữu cơ: 10-15kg/trụ) + 500g phân Super lân + Basudin(2g/mô).\n\n\n\nThời vụ trồng:\n\nCây giống thanh long ruột đỏ có thể trồng quanh năm, tốt nhất nên trồng vào mùa xuân và mùa thu.\n\nCách trồng\n\nĐặt phần lõi xuống đất, phần mặt phẳng của thân thanh long ôm sát vào trụ và dùng dây nylon cột cành vào trụ, mỗi trụ đặt 4 hom.\n\nMật độ trồng cây giống thanh long ruột đỏ 1100 trụ/ha, khoảng cách trồng: 3m x 3m\n\nTưới nước:\n\nSau khi đặt phải tưới nước thường xuyên 2 lần /ngày (không tưới quá nhiều nước sẽ gây thối gốc), khi cây đã sinh trưởng, phát triển tùy theo thời tiết mà tưới nước cho cây, không để quá khô và không tưới quá ẩm, chú ý thoát nước khi mưa lũ.Tỉa cành, tạo tán:\n\nChăm sóc tỉa cành tạo tán cho thanh long ra nhiều quả\n\nTừ mặt đất tới đỉnh trụ chỉ chọn để lại 1 cành, trong thời gian này cần chú ý cột cành sát vào trụ để rễ khí sinh của cành bám chặt vào trụ giúp cành không bị gãy khi gặp mưa, gió.\n\nTrên đỉnh trụ, cành có thể được cắt tỉa sao cho tạo tán tròn và phân bố đều quanh trụ. Các cành mới trên đỉnh trụ sẽ được tỉa theo nguyên tắc: một cành mẹ, 2 cành con. Chọn các cành to khỏe để lại. Thường xuyên tỉa bỏ các cành tai chuột, cành sâu bệnh, cành nằm khuất trong tán, cành đã cho quả 2-3 năm\n\nBón phân:\n\nSau khi trồng cây giống thanh long ruột đỏ 2 tuần (đối với cây đã có rễ hoàn chỉnh) có thể sử dụng Urea + DAP hoặc NPK 16-16-8 hay 20-20-15 tưới, liều lượng 20-30g/trụ, 10 ngày/lần\n\nCây 3-12 tháng sử dụng Urea + DAP hoặc NPK 16-16-8 hay 20-20-15 tưới 30-50g/trụ, 15 ngày/lần tùy theo loại đất và tăng theo tuổi cây.\n\nCây 1-3 năm: Có thể sử dụng phân chuồng hoai hoặc hữu cơ 20-50kg/trụ/năm, chia làm 2 lần bón. Lần 1 vào lúc cây chuẩn bị ra hoa rộ (tháng 2-3), lần 2 tháng 9-10 sau giai đoạn cho trái rộ, giai đoạn sinh cành mới và chuẩn bị nuôi trái vụ nghịch.\n\nSử dụng phân NPK 20-20-15 hoặc đơn phân Urea, DAP, KCl. Khi cây ra hoa và nuôi quả cần chú ý hàm lượng lân và kali cao, kích thích cây ra cành mới cần bón đạm cao.', 8, 5, '/storage/uploads/20232023/06/09/cach-trong-dua-hau-trai-vu.jpg', '2023-05-27 02:11:56', '2023-06-09 06:12:29'),
(9, 'Cây Vãi Thều', 'Cây ăn quả ngắn ngày', 'Chuẩn bị đất:\n\nĐất được chuẩn bị trước khi trồng cây giống thanh long ruột đỏ 1-2 tuần. Dùng Benomyl (nồng độ 0,1%) tưới vào mô đất trước khi trồng để phòng ngừa nấm bệnh. Nên làm mô đất nhằm giúp thoát nước tốt. Kích thước mô cao 10 -15cm, đường kính 60-0,80cm.\n\nMô đất sử dụng trồng cây giống thanh long ruột đỏ là lớp đất mặt trộn với phân chuồng hoai 15-20 kg (phân hữu cơ: 10-15kg/trụ) + 500g phân Super lân + Basudin(2g/mô).\n\n\n\nThời vụ trồng:\n\nCây giống thanh long ruột đỏ có thể trồng quanh năm, tốt nhất nên trồng vào mùa xuân và mùa thu.\n\nCách trồng\n\nĐặt phần lõi xuống đất, phần mặt phẳng của thân thanh long ôm sát vào trụ và dùng dây nylon cột cành vào trụ, mỗi trụ đặt 4 hom.\n\nMật độ trồng cây giống thanh long ruột đỏ 1100 trụ/ha, khoảng cách trồng: 3m x 3m\n\nTưới nước:\n\nSau khi đặt phải tưới nước thường xuyên 2 lần /ngày (không tưới quá nhiều nước sẽ gây thối gốc), khi cây đã sinh trưởng, phát triển tùy theo thời tiết mà tưới nước cho cây, không để quá khô và không tưới quá ẩm, chú ý thoát nước khi mưa lũ.Tỉa cành, tạo tán:\n\nChăm sóc tỉa cành tạo tán cho thanh long ra nhiều quả\n\nTừ mặt đất tới đỉnh trụ chỉ chọn để lại 1 cành, trong thời gian này cần chú ý cột cành sát vào trụ để rễ khí sinh của cành bám chặt vào trụ giúp cành không bị gãy khi gặp mưa, gió.\n\nTrên đỉnh trụ, cành có thể được cắt tỉa sao cho tạo tán tròn và phân bố đều quanh trụ. Các cành mới trên đỉnh trụ sẽ được tỉa theo nguyên tắc: một cành mẹ, 2 cành con. Chọn các cành to khỏe để lại. Thường xuyên tỉa bỏ các cành tai chuột, cành sâu bệnh, cành nằm khuất trong tán, cành đã cho quả 2-3 năm\n\nBón phân:\n\nSau khi trồng cây giống thanh long ruột đỏ 2 tuần (đối với cây đã có rễ hoàn chỉnh) có thể sử dụng Urea + DAP hoặc NPK 16-16-8 hay 20-20-15 tưới, liều lượng 20-30g/trụ, 10 ngày/lần\n\nCây 3-12 tháng sử dụng Urea + DAP hoặc NPK 16-16-8 hay 20-20-15 tưới 30-50g/trụ, 15 ngày/lần tùy theo loại đất và tăng theo tuổi cây.\n\nCây 1-3 năm: Có thể sử dụng phân chuồng hoai hoặc hữu cơ 20-50kg/trụ/năm, chia làm 2 lần bón. Lần 1 vào lúc cây chuẩn bị ra hoa rộ (tháng 2-3), lần 2 tháng 9-10 sau giai đoạn cho trái rộ, giai đoạn sinh cành mới và chuẩn bị nuôi trái vụ nghịch.\n\nSử dụng phân NPK 20-20-15 hoặc đơn phân Urea, DAP, KCl. Khi cây ra hoa và nuôi quả cần chú ý hàm lượng lân và kali cao, kích thích cây ra cành mới cần bón đạm cao.', 12, 6, '/storage/uploads/20232023/06/09/ttxvn_vaithieu.jpg', '2023-05-27 02:13:13', '2023-06-09 06:12:54'),
(10, 'Cây Mít', 'Cây ăn quả lâu năm', 'Để cây trồng mang lại hiệu quả kinh tế cao, các ngành chức năng của huyện đã phối hợp với ban, ngành, đoàn thể địa phương tổ chức các lớp dạy nghề, chuyển giao khoa học - kỹ thuật và tổ chức tham quan các mô hình sản xuất hiệu quả để nông dân mạnh dạn áp dụng các tiến bộ khoa học - kỹ thuật vào trong sản xuất nhằm nâng cao giá trị trên cùng đơn vị diện tích.\n\n* Xác định công tác giải quyết việc làm cho người dân có vai trò quan trọng trong việc nâng cao đời sống cho người dân địa phương, chính vì thế, trong thời gian qua, huyện Cai Lậy đã tích cực triển khai đa dạng các hình thức nhằm giúp người dân tìm được việc làm có mức thu nhập ổn định.\n\nNhờ triển khai đồng bộ các giải pháp mà công tác đào tạo nghề, giới thiệu việc làm cho người dân đã được huyện Cai Lậy thực hiện có hiệu quả. Trong đó, ngoài việc phát huy nội lực địa phương, sự góp sức từ các ban, ngành, đoàn thể trong việc giới thiệu những mô hình hay, cách làm hiệu quả, hỗ trợ vốn vay ưu đãi mà người dân đã tìm được những mô hình sản xuất hiệu quả, tăng thu nhập cho gia đình. Song song đó, huyện cũng phối hợp với Trung tâm Giới thiệu việc làm khu vực Cai Lậy tổ chức tư vấn, hướng dẫn cho hơn 345 lao động. Ngoài ra, đăng ký xuất cảnh lao động làm việc ở nước ngoài cho 18 lao động… Theo số liệu thống kê, trong năm 2021, huyện đã giải quyết việc làm cho 1.870 người, đạt chỉ tiêu đề ra. Qua đó, góp phần giảm nghèo, nâng cao đời sống cho người dân và thúc đẩy kinh tế - xã hội của địa phương phát triển.', 10, 5, '/storage/uploads/20232023/06/09/31-1.jpg', '2023-05-27 03:03:58', '2023-06-09 06:12:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `farmers`
--

CREATE TABLE `farmers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mavungtrong` varchar(255) NOT NULL,
  `tenchunhatrong` varchar(255) NOT NULL,
  `tencoso` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `sodienthoai` varchar(255) NOT NULL,
  `mota` longtext NOT NULL,
  `thumb` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `farmers`
--

INSERT INTO `farmers` (`id`, `mavungtrong`, `tenchunhatrong`, `tencoso`, `diachi`, `sodienthoai`, `mota`, `thumb`, `created_at`, `updated_at`) VALUES
(3, 'VN - BTOR -0008', 'Hợp tác xã Hàm Luông', 'Hợp tác xã Hàm Luông', 'Thôn Hàm Luông, xã Tân Phú, huyện Châu Thành, tỉnh Bến Tre', '0123456789', 'Được biết, Tổ hợp tác (THT) trồng sầu riêng ấp Hàm Luông triển khai giải pháp về nguồn nước, trong đó có kỹ thuật lọc nước giếng để tạm thời cứu lấy vườn sầu riêng khá thành công. Lúc đầu, các chị tự mua nước về tưới. Lượng nước tưới cho cây cũng chỉ mang tính giải khát tạm thời, ngắn hạn trong khi hạn mặn kéo dài nhiều tháng liền. Để đồng bộ giải pháp, các chị tạm lấy nước từ giếng khoan. Các chị đầu tư mủ dưới mương vườn để trữ nước và lọc các tạp chất phèn, kim loại nặng trong nước bằng phân lân, vôi và cây lục bình. Quy trình xử lý nước giếng trong 3 ngày là có thể tưới cho cây an toàn.\n\nBà Cao Thị Chiên (67 tuổi) - Tổ trưởng THT trồng sầu riêng ấp Hàm Luông cho biết, tiền thân của tổ là THT trồng sầu riêng ấp Hàm Luông, xã Tân Phú, với 12 thành viên ban đầu là những chị em đam mê trồng sầu riêng của ấp Hàm Luông. Hầu hết các chị xuất thân từ gia đình làm nông nghèo khó. “Trước đây, Hàm Luông là ấp nghèo vì còn đất ruộng. Thấy mô hình trồng sầu riêng hiệu quả của các ấp lân cận, chị em chúng tôi đã mạnh dạn chuyển đổi sang trồng cây sầu riêng. Diện tích sầu riêng phát triển mạnh và trở thành cây trồng chủ lực của địa phương. Chúng tôi trồng giống sầu riêng khổ qua, sau đó là sữa hạt lép, chuồng bò và hiện nay chủ yếu là Ri.6. Không chỉ chăm sóc cho vườn sầu riêng của tổ, các chị vận hành tổ lao động phụ nữ làm thuê để chăm sóc và hướng dẫn kỹ thuật cho các vườn trồng khác trong và ngoài xã”, bà Cao Thị Chiên bộc bạch.', '/storage/uploads/20232023/05/27/HamLuong.jpg', '2023-05-27 01:53:31', '2023-05-27 02:22:30'),
(4, 'VN - TGOR - 0082', 'Vườn cây ăn trái Bình Đông', 'Vườn cây ăn trái Bình Đông', 'Xã Bình Đông - TX Gò Công, Tiền Giang Tỉnh', '023457891', 'Miệt vườn tại Bình Dương được ghé tới nhiều nhất là  miệt vườn Lái Thiêu. Địa chỉ cụ thể tại KP Hưng Thọ, xã Hưng Định, thị xã Thuận An, Bình Dương.  Vị trí cả miệt vườn này chỉ cách Sài Gòn tp Thủ Dầu Một 10 km về phía Nam, cách Sài Gòn 20km về phía Bắc.\n\nNơi đây có nổi tiếng với mít tố nữ, sầu riêng, chôm chôm, mãng cầu…. Những khu vườn ngập tràn màu đỏ của chôm chôm, vàng của dâu da, tím của măng cụt hòa cùng mùi thơm của sầu riêng, của tố nữ,…là một trong những vựa hoa quả lớn nhất Nam Bộ.', '/storage/uploads/20232023/05/27/BinhDong.jpg', '2023-05-27 01:59:22', '2023-05-27 02:22:40'),
(5, 'VN - TGOR - 0026', 'Vườn cây ăn quả Mỹ Thành Nam', 'Vườn cây ăn quả Mỹ Thành Nam', 'Xã Mỹ Thành Nam - Huyện Cai Lậy, Tỉnh Tiền Giang', '0321456789', 'Nông dân Nguyễn Văn Nhã, ấp 5, xã Mỹ Thành Nam, huyện Cai Lậy (tỉnh Tiền Giang) có 2,2 ha mít Thái siêu sớm đang thu hoạch cho biết, mỗi tháng ông thu hoạch 4 lần. \n\nMỗi lần thu hoạch khoảng 500 kg và thu vào bình quân 10 triệu đồng. Hiện nay, mít Thái đang trở lại đợt tăng giá mạnh nên hộ dân trồng mít như gia đình ông rất phấn khởi. Để cây trồng mang lại hiệu quả kinh tế cao, các ngành chức năng của huyện đã phối hợp với ban, ngành, đoàn thể địa phương tổ chức các lớp dạy nghề, chuyển giao khoa học - kỹ thuật và tổ chức tham quan các mô hình sản xuất hiệu quả để nông dân mạnh dạn áp dụng các tiến bộ khoa học - kỹ thuật vào trong sản xuất nhằm nâng cao giá trị trên cùng đơn vị diện tích.\n\n* Xác định công tác giải quyết việc làm cho người dân có vai trò quan trọng trong việc nâng cao đời sống cho người dân địa phương, chính vì thế, trong thời gian qua, huyện Cai Lậy đã tích cực triển khai đa dạng các hình thức nhằm giúp người dân tìm được việc làm có mức thu nhập ổn định.', '/storage/uploads/20232023/05/27/MyThanhNam.png', '2023-05-27 02:08:06', '2023-05-27 02:22:47'),
(6, 'VN - HDOR - 0010', 'Nhóm nhà vườn số 7', 'Nhóm nhà vườn số 7', 'Xóm 3,4 Thanh Xá Huyện Thanh Hà Hải Tỉnh Dương', '0325641789', 'Vãi Thều', '/storage/uploads/20232023/05/27/ttxvn_vaithieu.jpg', '2023-05-27 02:09:34', '2023-05-27 02:23:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `imagecrops`
--

CREATE TABLE `imagecrops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `id_crop` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `img_products`
--

CREATE TABLE `img_products` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `thumb1` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `img_products`
--

INSERT INTO `img_products` (`id`, `product_id`, `thumb1`, `created_at`, `updated_at`) VALUES
(1, 2, '/storage/uploads/20232023/05/22/Xoai-cat-num-Fruits-tt-1.jpg', '2023-05-22 03:48:05', '2023-05-22 03:48:05'),
(2, 1, '/storage/uploads/20232023/06/18/thanhlongruotdo14-removebg-preview.png', '2023-06-17 21:07:36', '2023-06-17 21:07:36'),
(3, 1, '/storage/uploads/20232023/06/18/Thanh-Long-Ruột-Đỏ-VietGap-removebg-preview.png', '2023-06-17 21:07:43', '2023-06-17 21:07:43'),
(4, 2, '/storage/uploads/20232023/06/18/xoai-vinh long.jpg', '2023-06-18 00:27:37', '2023-06-18 00:27:37'),
(5, 4, '/storage/uploads/20232023/06/18/_550x550-cr_sau-rieng-57-removebg-preview.png', '2023-06-18 00:28:00', '2023-06-18 00:28:00'),
(6, 4, '/storage/uploads/20232023/06/18/Sầu-riêng-ri-6-VietGAP-Bàu-Tre-removebg-preview.png', '2023-06-18 00:28:10', '2023-06-18 00:28:10'),
(7, 5, '/storage/uploads/20232023/06/18/cherry-la-qua-gi-co-may-loai-phan-biet-cherry-my-voi-cherry-avt-1200x676.jpg', '2023-06-18 00:28:30', '2023-06-18 00:28:30'),
(8, 5, '/storage/uploads/20232023/06/18/gia-cherry-tren-thi-truong-00.png', '2023-06-18 00:28:40', '2023-06-18 00:28:40'),
(9, 7, '/storage/uploads/20232023/06/18/_550x550-cr_mit--5-removebg-preview.png', '2023-06-18 00:28:58', '2023-06-18 00:28:58'),
(10, 7, '/storage/uploads/20232023/06/18/_550x550-cr_mit--7-removebg-preview.png', '2023-06-18 00:29:37', '2023-06-18 00:29:37'),
(11, 6, '/storage/uploads/20232023/06/18/Buoi-Da-Xanh__1_-removebg-preview.png', '2023-06-18 00:30:11', '2023-06-18 00:30:11'),
(12, 6, '/storage/uploads/20232023/06/18/BUOI-DA-XANH-removebg-preview.png', '2023-06-18 00:30:19', '2023-06-18 00:30:19'),
(13, 8, '/storage/uploads/20232023/06/18/FRU00121-5__1_-removebg-preview.png', '2023-06-18 00:36:17', '2023-06-18 00:36:17'),
(14, 8, '/storage/uploads/20232023/06/18/Dua-Hau-Khong-Hat-800_800-removebg-preview.png', '2023-06-18 00:36:26', '2023-06-18 00:36:26'),
(15, 3, '/storage/uploads/20232023/06/18/_550x550-cr_mang-cut--7-removebg-preview.png', '2023-06-18 00:36:43', '2023-06-18 00:36:43'),
(16, 3, '/storage/uploads/20232023/06/18/_550x550-cr_mang-cut--59-removebg-preview.png', '2023-06-18 00:36:49', '2023-06-18 00:36:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `content` longtext NOT NULL,
  `active` int(11) NOT NULL,
  `thumb` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `description`, `content`, `active`, `thumb`, `created_at`, `updated_at`) VALUES
(1, 'Sầu Riêng', 0, 'Vua của các loại trái cây', 'Vua của các loại trái cây', 1, '/storage/uploads/20232023/05/28/saurieng.png', '2023-05-28 06:08:44', '2023-05-27 23:22:15'),
(2, 'Dưa Hấu', 0, 'Có các dạng chính sau: dạng thuôn dài, dạng trái oval, dạng trái tròn', 'Dưa hấu là một loài thực vật thuộc họ Cucurbitaceae, một loài thực vật có hoa giống như cây nho có hoa nguồn gốc từ khu vực Tây Phi. Nó được trồng để lấy quả. Dưa hấu là một loài dây leo xoắn và dài trong họ thực vật có hoa Cucurbitaceae. Có bằng chứng từ hạt giống dưa hấu trong những ngôi mộ Pharaoh ở Ai Cập cổ đại', 1, '/storage/uploads/20232023/05/28/seedless-watermelon-around-2.5kg-whole-fruit_23a860613aa94413aca16b9d766f6291-removebg-preview.png', '2023-05-27 23:25:51', '2023-05-27 23:25:51'),
(3, 'Thanh Long', 0, 'Thanh long một loài cây được trồng chủ yếu để lấy quả', 'Thanh long một loài cây được trồng chủ yếu để lấy quả và cũng là tên của một vài chi của họ xương rồng. Thanh long là loài thực vật bản địa tại México, các nước Trung Mỹ và Nam Mỹ.', 1, '/storage/uploads/20232023/05/28/thanh-long-ruot-do-01-removebg-preview.png', '2023-05-27 23:28:04', '2023-05-27 23:28:04'),
(4, 'Mít', 0, 'Có nhiều loại như mít mật, mít ướt, mít dai, mít tố nữ', 'Cây mít được trồng phổ biến ở các vùng nông thôn. Mít có nhiều loại như mít mật, mít ướt, mít dai, mít tố nữ (đặc sản của miền Nam) v.v... Ngoài giá trị dinh dưỡng trong ẩm thực như nói trên, nhiều bộ phận của cây mít còn là vị thuốc.\r\n\r\nLá mít có địa vị đặc biệt dùng để lót oản cúng Phật. Lá mít cũng được dùng để gói thuốc lào truyền thống. Gỗ mít cũng là loại gỗ được chuộng để tạc tượng thờ trong các đền chùa vì thớ gỗ mịn, dễ khắc nhưng nặng và chắc.', 1, '/storage/uploads/20232023/05/28/mit-phong-ung-thu-removebg-preview.png', '2023-05-27 23:43:06', '2023-05-27 23:43:06'),
(5, 'Xoài', 0, 'loại trái cây vị ngọt thuộc chi Xoài', 'Xoài là một loại trái cây vị ngọt thuộc chi Xoài, bao gồm rất nhiều quả cây nhiệt đới, được trồng chủ yếu như trái cây ăn được. Phần lớn các loài được tìm thấy trong tự nhiên là các loại xoài hoang dã. Tất cả đều thuộc họ thực vật có hoa Anacardiaceae. Xoài có nguồn gốc ở Nam Á và Đông Nam Á, từ đó nó đã được phân phối trên toàn thế giới để trở thành một trong những loại trái cây được trồng hầu hết ở vùng nhiệt đới. Mật độ cao nhất của chi Xoài (Magifera) ở phía tây của Malesia (Sumatra, Java và Borneo) và ở Myanmar và Ấn Độ.[1] Trong khi loài Mangifera khác (ví dụ như xoài ngựa, M. Foetida) cũng được phát triển trên cơ sở địa phương hơn, Mangifera indica - \"xoài thường\" hoặc \"xoài Ấn Độ\" - là cây xoài thường chỉ được trồng ở nhiều vùng nhiệt đới và cận nhiệt đới. Nó có nguồn gốc ở Ấn Độ và Myanmar.[2] Nó là hoa quả quốc gia của Ấn Độ, Pakistan, Philippines, và cây quốc gia của Bangladesh.[3] Trong một số nền văn hóa, trái cây và lá của nó được sử dụng như là nghi lễ trang trí tại các đám cưới, lễ kỷ niệm, và nghi lễ tôn giáo.', 1, '/storage/uploads/20232023/05/28/Xoai-cat-num-Fruits-tt-1-removebg-preview.png', '2023-05-27 23:44:06', '2023-05-27 23:44:06'),
(6, 'Cherry', 0, 'là một loại quả của nhiều loại thực vật thuộc chi Prunus và là một quả hạch.', 'Anh đào (Cherry) là một loại quả của nhiều loại thực vật thuộc chi Prunus và là một quả hạch.\r\n\r\nHoa anh đào (Sakura) là hoa của các loài thực vật thuộc phân chi anh đào này; đặc biệt là của loài Prunus serrulata và một số loài khác chuyên để làm cảnh. Còn anh đào lấy quả bán thương mại được lấy từ các giống cây trồng của một số loài, hầu hết là các giống thuộc hoặc lai với các loài Prunus avium ngọt và Prunus cerasus chua. Tên gọi \'anh đào\' cũng đề cập đến cây và gỗ của nó, và đôi khi được áp dụng cho hạnh nhân và cây có hoa tương tự trong chi Prunus, như trong \"anh đào cảnh\" hoặc \"hoa anh đào\". Anh đào dại có thể đề cập đến bất kỳ loài anh đào nào nằm ngoài phạm vi đất canh tác, mặc dù Prunus avium thường được gọi cụ thể bằng cái tên \"anh đào dại\" ở quần đảo Anh.\r\n\r\nĐây là cây ăn quả khó trồng và khó sống.', 1, '/storage/uploads/20232023/05/28/cherry.png', '2023-05-27 23:44:50', '2023-05-27 23:44:50'),
(7, 'Bưởi', 0, 'là loại trái cây có múi lớn nhất và là tổ tiên chính của bưởi chùm', 'Bưởi (tiếng Anh: \"pomelo\", /ˈpɒmɪloʊ, ˈpʌm-/POM-il-oh, PUM-;[2][3] Citrus maxima), thuộc họ Rutaceae, là loại trái cây có múi lớn nhất và là tổ tiên chính của bưởi chùm.[4] Đây là một loại trái cây tự nhiên, không lai tạo, có múi, có nguồn gốc từ Đông Nam Á.[4] Có hương vị tương tự như bưởi chùm ngọt, bưởi thường được tiêu thụ và sử dụng cho các dịp lễ hội trên khắp Đông Nam Á. Cũng như bưởi, hóa chất thực vật trong bưởi có khả năng gây tương tác thuốc.', 1, '/storage/uploads/20232023/05/28/1-10-removebg-preview.png', '2023-05-27 23:45:52', '2023-05-27 23:45:52'),
(8, 'Măng Cụt', 0, 'là loại cây nhiệt đới thường xanh cho quả ăn được, có nguồn gốc từ các đảo quốc Đông Nam Á', 'Măng cụt (danh pháp hai phần: Garcinia mangostana) hay còn được gọi là quả tỏi ngọt[2], là một loài cây thuộc họ Bứa (Clusiaceae). Nó cũng là loại cây nhiệt đới thường xanh cho quả ăn được, có nguồn gốc từ các đảo quốc Đông Nam Á. Nguồn gốc của nó là không chắc chắn do việc trồng trọt thời tiền sử rộng rãi.[3][4] Nó mọc chủ yếu ở Đông Nam Á, Tây Nam Ấn Độ và các khu vực nhiệt đới khác như Colombia, Puerto Rico và Florida,[3][5][6] nơi cây đã được giới thiệu. Cây cao từ 6 đến 25 m (19,7 đến 82,0 ft).[3] Quả khi chín có vỏ ngoài dày, màu đỏ tím đậm, vỏ không ăn được.[3][5] Ruột trắng ngà, mọng nước, hơi xơ và chia thành nhiều múi, một quả có thể chứa khoảng 4, 8 múi, rất hiếm khi có 3 hay 9 múi. Quả có vị chua ngọt thanh thanh và có mùi thơm thu hút. Trong mỗi quả, phần thịt có mùi thơm ăn được bao quanh mỗi hạt là vỏ quả trong thực vật, tức là lớp bên trong của bầu nhụy.[7][8] Hạt có hình quả hạnh và kích thước nhỏ.', 1, '/storage/uploads/20232023/05/28/mangcut.png', '2023-05-27 23:46:55', '2023-05-27 23:46:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
(5, '2023_05_08_083721_create_blockchains_table', 2),
(6, '2023_05_08_084421_create_blockchaindbs_table', 3),
(7, '2023_05_09_081334_create_seedsuppliers_table', 4),
(8, '2023_05_09_081443_create_farmers_table', 4),
(9, '2023_05_09_081914_create_salesrooms_table', 4),
(10, '2023_05_20_131926_create_seedsandseedlings_table', 5),
(11, '2023_05_20_132617_create_crops_table', 5),
(12, '2023_05_20_133123_create_products_table', 5),
(13, '2023_05_23_064604_create_billreceiveds_table', 6),
(14, '2023_05_23_070335_create_billreceiveds_table', 7),
(15, '2023_05_26_083612_create_sliders_table', 8),
(16, '2022_05_04_161337_create_menus_table', 9),
(17, '2023_06_02_073135_create_salesroomchains_table', 10),
(18, '2023_06_09_115725_create_imagecrops_table', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
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
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `detail` longtext NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `thumb` varchar(500) DEFAULT NULL,
  `active` int(11) DEFAULT 1,
  `id_crop` bigint(20) NOT NULL,
  `menu_id` bigint(11) DEFAULT NULL,
  `block` longtext DEFAULT NULL,
  `block_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `detail`, `price`, `quantity`, `thumb`, `active`, `id_crop`, `menu_id`, `block`, `block_number`, `created_at`, `updated_at`) VALUES
(1, 'Thanh Long Đồng Tâm Long An', 'Là loại quả mọng, hình bầu dục có nhiều tai lá xanh (do phiến hoa còn lại), đầu quả lõm sâu thành một hốc. Khi còn non vỏ quả màu xanh, khi chín chuyển màu đỏ hồng. Thịt quả phần lớn màu trắng, một số ít giống có ruột vàng hoặc đỏ. vỏ có thể bóc khá dễ dà', 'Giống ruột đỏ có chứa Lycopene, là một chất chống ôxy hoá thiên nhiên, có thể chống ung thư, bệnh tim và làm giảm huyết áp. Đây là loại trái cây rất đẹp mắt và có lợi cho sức khoẻ.\nThanh long ruột đỏ có đặc tính hoàn toàn khác so với loại thanh long trắng thông thường ngoài thị trường hiện nay. Bên ngoài thanh long đỏ có vỏ cứng, màu đỏ đậm tươi sáng; bên trong ngoài màu đỏ thẳm như son, lạ mắt thì thành phấn dinh dưỡng gấp đôi thanh long trắng. Với các chỉ số Vitamin C12 – 6, Protid 1,30 – 1,08, Vitamin A, Glucid, Lipit thì thanh long ruột đỏ mang lại giá trị dinh dưỡng rất cao.Thanh long ruột đỏ là một sản phẩm mới, lạ, ngon, bổ dưỡng và là sản phẩm “made in Vietnam”. Hiện nay Hoa kỳ đã cấp code xuất khẩu cho sản phẩm và với kỹ thuật sản xuất tiên tiến thanh long ruột đỏ là sản phẩm tuân thủ nghiêm ngặt về VSATTP, dư lượng thuốc bảo vệ thực vật cũng như một số yêu cầu khác… đã được các đối tác xuất khẩu Mỹ, Nhật, Châu Âu tin dùng. Đặc điểm của loại Thanh Long này là nhìn quả rất nhỏ nhưng lại nặng cân (~1kg/1quả), ruột đỏ tươi, cơm giòn, thơm, đặt biệt rất ngọt, nhiều vitamin và khoáng chất. Tuy giá của loại quả này hơi cao so với Thanh Long ruột trắng nhưng nó lại có vị đặc biệt thơm ngon, và trở thành món ăn cao cấp vừa ngon vừa lạ đối với người tiêu dùng trong và ngoài nước.', '50000', 500, '/storage/uploads/20232023/05/27/thanh-long-ruot-do-01-removebg-preview.png', 1, 1, 3, '2bd8dc267bc4795623ffa69cf7a243df', 1, '2023-05-22 09:53:54', '2023-06-26 00:22:13'),
(2, 'Xoài cát núm', 'Xoài cát núm có đặc điểm là quả dẹp, hạt mỏng và ít xơ. Khi quả còn sống thì bên ngoài sẽ có màu xanh và vị chua béo. Khi chín vỏ vàng chanh và thịt ngọt vừa phải. Xoài cát núm được bán ở những tỉnh lân cận của miền tây và hiện nay đã  xuất khẩu sang Hàn Quốc.', 'Giá trị dinh dưỡng 100g Xoài: Calo (kcal) 59, Lipid 0,4g, Cholesterol 0mg, Natri 1mg, Kali 168mg, Cacbohydrat 15g, Protein 0,8g và nhiều loại Vitamin A 1.082 IU, Vitamin C 36,4mg, Canxi 11mg, Sắt 0,2mg, Vitamin B6 0,1mg, Magie 10mg….', '69000', 0, '/storage/uploads/20232023/05/27/Xoai-cat-num-Fruits-tt-1-removebg-preview.png', 0, 2, 5, '3f7854b63749a2306a0dffe190616583', 2, '2023-05-22 03:27:24', '2023-06-25 21:20:06'),
(3, 'Măng Cụt', 'Măng cụt là một loại trái cây tự nhiên được sử dụng rất phổ biến ở Đông Nam Á. Ở Việt Nam, măng cụt được sử dụng như một loại quả tráng miệng thơm ngon, ngọt thanh và đôi khi chua nhẹ. Tuy nhiên, ăn măng cụt có tác dụng gì thì không phải ai cũng biết.', 'Măng cụt là một loại trái cây tự nhiên được sử dụng rất phổ biến ở Đông Nam Á. Ở Việt Nam, măng cụt được sử dụng như một loại quả tráng miệng thơm ngon, ngọt thanh và đôi khi chua nhẹ. Tuy nhiên, ăn măng cụt có tác dụng gì thì không phải ai cũng biết.', '60000', 500, '/storage/uploads/20232023/05/27/mangcut.png', 1, 5, 8, 'cb581a98d384b3bc308ca13f60cc5046', 3, '2023-05-27 01:33:53', '2023-06-26 00:24:20'),
(4, 'Sầu Riêng Ri 6', 'Quả sầu riêng được nhiều người ở Đông Nam Á xem như là \"vua của các loại trái cây\". Nó có đặc điểm là kích thước lớn, mùi mạnh, và nhiều gai nhọn bao quanh vỏ. Quả có thể đạt 30 xentimét (12 in) chiều dài và 15 xentimét (6 in) đường kính, thường nặng một đến ba kilogram (2 đến 7 lb).', '<p>Sầu ri&ecirc;ng Ri 6 hạt l&eacute;p ch&iacute;n tự nhi&ecirc;n Cai Lậy &ndash; Tiền Giang. Được trồng tr&ecirc;n v&ugrave;ng đất ph&ugrave; sa m&agrave;u mỡ n&ecirc;n c&oacute; hương vị thơm kh&aacute;c với c&aacute;c d&ograve;ng sầu ri&ecirc;ng kh&aacute;c. Cơm b&ugrave;i, dẻo. Đạt chuẩn VietGap. Sầu ri&ecirc;ng Ri 6 l&agrave; loại quả gi&agrave;u gi&aacute; trị dinh dưỡng, trong 100g cơm quả sầu ri&ecirc;ng c&oacute; 37% nước, 6% protit, 2% lipit, 16% gluxit v&agrave; nhiều loại chất kho&aacute;ng, vitamin. Sầu ri&ecirc;ng Ri 6 c&oacute; t&aacute;c dụng gi&uacute;p tăng cường v&agrave; phục hồi sức khỏe cho người ốm yếu, c&oacute; &iacute;ch cho cơ bắp, duy tr&igrave; sự chắc khỏe của xương, gi&uacute;p duy tr&igrave; v&agrave; điều h&ograve;a hoạt động của tuyến gi&aacute;p, bảo vệ sự khỏe mạnh cho răng v&agrave; lợi. Sầu ri&ecirc;ng Ri 6 được trồng theo ti&ecirc;u chuẩn VietGAP, kh&ocirc;ng chứa dư lượng h&oacute;a chất bảo vệ thực vật v&agrave; k&iacute;ch th&iacute;ch tăng trưởng độc hại. Qua qu&aacute; tr&igrave;nh thu hoạch, vận chuyển v&agrave; bảo quản cẩn thận, sản phẩm đảm bảo vẫn giữ được hương vị v&agrave; độ tươi ngon khi tới tay người ti&ecirc;u d&ugrave;ng.</p>', '145000', 500, '/storage/uploads/20232023/05/27/saurieng.png', 1, 4, 1, '784694056c402950a4f4c3b20f8c37e8', 2, '2023-05-27 01:38:37', '2023-06-26 00:23:30'),
(5, 'Cherry', 'Qủa cherry mọc thành từng chùm trên cuống dài, ban đầu có màu xanh, khi chín có màu vàng hay màu đỏ có khi đỏ sậm trên nền lá xanh thẫm. Quả cherry có vịt ngọt chua thanh nhẹ, da căng bóng, mọng nước, ăn giòn ngọt, vị đậm đà, hương thơm dịu nhẹ quyến rũ.', '<p>Quả Cherry chứa h&agrave;m lượng dinh dưỡng rất cao, theo c&aacute;c chuy&ecirc;n gia dinh dưỡng th&igrave; 154g thịt quả Cherry chứa lượng&nbsp;<strong>mangan: 5% DV, calo: 97, kali: 10% DV, chất đạm: 2g, đồng: 5% DV, carb: 25g, chất xơ: 3g, vitamin C: 18% (DV)</strong></p>', '150000', 0, '/storage/uploads/20232023/05/27/cherry.png', 0, 7, 6, 'b7777335947a1084cebb0d844fe0dcb8', 2, '2023-05-27 01:42:41', '2023-06-25 21:25:17'),
(6, 'Bưởi Da Xanh', 'Bưởi Da xanh là trái cây đặc sản nổi tiếng của Việt Nam. Bưởi da xanh có đặc điểm vỏ có màu xanh đến xanh hơi vàng khi chín.Tép bưởi màu hồng đỏ, vị ngọt thanh, màu sắc đẹp mắt, là một trong những loại trái cây cực tốt cho sức khoẻ với nhiều công dụng thần kỳ khác nhau đã được khoa học chứng minh.', 'Bưởi da xanh có nhiều chất xơ, chứa nhiều vitamin C cùng những vitamin và khoáng chất khác tốt cho cơ thể. Trong 100g bưởi da xanh có khoảng 38 kcal.\nTác dụng của bưởi da xanh đối với sức khỏe\nVới lượng vitamin C dồi dào, bưởi da xanh giúp tăng cường sức đề kháng của cơ thể. Trong bưởi còn có chất chống oxy hóa, bảo vệ cơ thể tốt trong những bệnh về xương khớp,...Ngoài ra, bưởi da xanh còn có nhiều công dụng như giúp thông mũi, miệng, sảng khoái, giúp long đờm, giữ ấm bụng, giảm lượng cholesterol, phòng chống ung thư, dưỡng tóc, trị gàu và trị rụng tóc, hói đầu,...', '40000', 0, '/storage/uploads/20232023/05/27/1-10-removebg-preview.png', 0, 6, 7, '126ceefa78fb6488e02e8641f0d9b093', 2, '2023-05-27 01:47:38', '2023-06-25 21:38:22'),
(7, 'Mít', '- Mít thái có múi mít màu vàng đậm, ít xơ, giòn, ráo, vị ngọt đậm và thơm mát.\r\n- Mít thái rất giàu các chất dinh dưỡng quan trọng như vitamin A, vitamin C, canxi, kali, sắt và nhiều chất dinh dưỡng khác. Vì vậy, chúng rất có lợi cho sức khỏe con người. giúp bạn tăng cường hệ miễn dịch, duy trì vẻ đẹp cho làn da và đôi mắt, giúp xương chắc khỏe,…\r\n- Mít thái khi chín bạn dùng để ăn trực tiếp hoặc chế biến các món ăn lạ miệng và đẹp mắt như: mít chiên Tempura, mít xào la hán, mít nướng BBQ…. Ngoài ra, mít thái được sử dụng như một loại nguyên liệu để sản xuất bánh, kẹo, mứt, đồ hộp,…\r\n- Bảo quản trong tủ lạnh ở nhiệt độ 0-4°C thì có thể giữ mít tươi ngon trong 3-5 ngày.', '<p>1. M&iacute;t gi&agrave;u chất dinh dưỡng thực vật c&oacute; t&aacute;c dụng ngăn ngừa qu&aacute; tr&igrave;nh sản sinh tế b&agrave;o ung thư. C&aacute;c chất dinh dưỡng n&agrave;y đi v&agrave;o trong m&aacute;u ngăn chặn sự nh&acirc;n l&ecirc;n bất thường của c&aacute;c tế b&agrave;o, do đ&oacute; ngăn ngừa ung thư. 2. C&aacute;c chất dinh dưỡng thực vật c&oacute; trong m&iacute;t c&ograve;n gi&uacute;p ti&ecirc;u diệt c&aacute;c tế b&agrave;o ung thư trong cơ thể, đặc biệt l&agrave; khi kết hợp với điều trị y khoa. 3. M&iacute;t cũng chứa hợp chất gọi l&agrave; saponin c&oacute; khả năng ngăn ngừa sự nh&acirc;n l&ecirc;n của c&aacute;c tế b&agrave;o ung thư ở đại tr&agrave;ng, do đ&oacute; ngăn ngừa ung thư đại tr&agrave;ng.</p>', '43000', 0, '/storage/uploads/20232023/05/27/mit-phong-ung-thu-removebg-preview.png', 0, 10, 4, '9f5c3629dd0d77cb97d631bacd560b72', 4, '2023-05-27 03:05:42', '2023-06-25 22:58:39'),
(8, 'Dưa Hấu', 'Trước đây khi ăn dưa hấu chúng ta thường có cảm giác không thoải mái khi vừa ăn vừa phải lừa nhả hạt ra, với dưa hấu không hạt chúng ta không còn cảm giác khó chịu phải nhả hạt ra nữa. Giống quả mới lạ và độc đáo này hiện nay được rất người người tìm mua bởi độ tiện lợi và ứng dụng được nhiều món ăn, pha chế.\r\n\r\nHình dáng, hương vị, đặc điểm của Dưa Hấu không hạt\r\nQuả dưa tròn, da xanh nhạt có gân xanh đậm, vỏ mỏng, nhiều nước\r\n\r\nDưa hấu không hạt có ruột dưa đỏ, đẹp, không hạt, và vị ngọt đậm đà. Có mùi thơm đặc trưng, và dễ bảo quản.\r\n\r\nTrọng lượng trung bình mỗi quả từ 3–5 kg\r\n\r\nHiện nay với dưa hấu không hạt, các bà mẹ hoàn toàn yên tâm khi cho trẻ em ăn mà không sợ bị hóc hạt.', '<p>Thương hiệu:&nbsp;Vườn Nh&agrave; Mẹ</p>\r\n\r\n<p>Xuất xứ:&nbsp;Việt Nam</p>\r\n\r\n<p>Với sản phẩm tươi sống, trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch khoảng 10%.</p>\r\n\r\n<p>Dưa hấu S&agrave;i G&ograve;n Vườn Nh&agrave; Mẹ - 1kg dưa hấu ngọt m&aacute;t, đỏ ngon - Hoa quả tươi, sạch, chuẩn VietGap</p>\r\n\r\n<p>CHI TIẾT SẢN PHẨM:</p>\r\n\r\n<p>- Sản phẩm: Dưa hấu</p>\r\n\r\n<p>- Khối lượng: 1kg</p>\r\n\r\n<p>- Bảo quản: Để nơi kh&ocirc; tho&aacute;ng tr&aacute;nh &aacute;nh s&aacute;ng trực tiếp mặt trời</p>\r\n\r\n<p>- Phương thức giao h&agrave;ng: Giao nội th&agrave;nh H&agrave; Nội</p>\r\n\r\n<p>M&Ocirc; TẢ CHI TIẾT:</p>\r\n\r\n<p>- H&agrave;ng loại 1 , c&oacute; đầy đủ giấy an to&agrave;n VSTP. Rau củ quả tươi, sạch, chuẩn VietGap.</p>\r\n\r\n<p>- Ăn dưa hấu thường xuy&ecirc;n c&oacute; thể giảm c&aacute;c triệu chứng mất nước sau khi vận động mạnh, luyện tập thể thao như chuột r&uacute;t, mệt mỏi, cho&aacute;ng&hellip;</p>\r\n\r\n<p>- Dưa hấu c&oacute; chứa Cucurbitacin E &ndash; hợp chất c&oacute; t&aacute;c dụng ức chế sự ph&aacute;t triển của khối u v&agrave; ngăn ngừa hiện tượng di căn của tế b&agrave;o ung thư.</p>\r\n\r\n<p>- Nếu bạn đang gặp vấn đ&egrave; về c&acirc;n nặng, th&igrave; dưa hấu c&oacute; thể l&agrave; loại thực phẩm l&iacute; tưởng gi&uacute;p bạn c&oacute; được v&oacute;c d&aacute;ng như mong muốn.</p>\r\n\r\n<p>- Nhờ v&agrave;o h&agrave;m lượng nước v&agrave; chất xơ dồi d&agrave;o m&agrave; dưa hấu l&agrave; một trong những thực phẩm c&oacute; khả năng tăng cường nhu động của cơ quan ti&ecirc;u h&oacute;a.</p>\r\n\r\n<p>CAM KẾT:</p>\r\n\r\n<p>- Hoa quả tươi được chọn lọc theo quy chuẩn VietGap. Do vậy kh&aacute;ch h&agrave;ng h&atilde;y an t&acirc;m v&igrave; ch&uacute;ng t&ocirc;i x&acirc;y dựng thương hiệu uy t&iacute;n đặt l&ecirc;n h&agrave;ng đầu!</p>\r\n\r\n<p>- Giao h&agrave;ng hỏa tốc nhận ngay trong ng&agrave;y để đảm bảo rau quả tươi tới tận tay qu&yacute; kh&aacute;ch ạ.</p>\r\n\r\n<ul>\r\n</ul>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>', '30000', 0, '/storage/uploads/20232023/05/27/seedless-watermelon-around-2.5kg-whole-fruit_23a860613aa94413aca16b9d766f6291-removebg-preview.png', 0, 8, 2, '5f829e16a96945f39373c87e287183b9', 3, '2023-05-27 03:14:24', '2023-06-25 22:56:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `salesroomchains`
--

CREATE TABLE `salesroomchains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blockchain_salesroom` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `salesroomchains`
--

INSERT INTO `salesroomchains` (`id`, `blockchain_salesroom`, `created_at`, `updated_at`) VALUES
(59, '{\"difficulty\":2,\"chain\":[{\"prevHash\":\"$2y$10$qVn4C551EhNYajwNTheWtO7.uP\\/qYUusuUdhukTngQ7pdpICuHbGq\",\"data\":{\"isgenesis\":true},\"timeStamp\":\"2023-06-26T07:15:40.072036Z\",\"hash\":\"$2y$10$3yNP9B9KSWi\\/52yrvhUoDOMQrZTK.S\\/n3ms2XqPgC\\/s\\/AQhYu7SGa\",\"mineVar\":0,\"target\":\"\",\"subHash\":\"\",\"mineTime\":0},{\"prevHash\":\"$2y$10$3yNP9B9KSWi\\/52yrvhUoDOMQrZTK.S\\/n3ms2XqPgC\\/s\\/AQhYu7SGa\",\"data\":{\"madoanhnghiep\":\"BHX201008601\",\"tencoso\":\"B\\u00e1ch H\\u00f3a Xanh\",\"diachi\":\"Th\\u1eeda \\u0111\\u1ea5t s\\u1ed1 468 , t\\u1edd b\\u1ea3n \\u0111\\u1ed3 s\\u1ed1 10 , Kh\\u00f3m 2 , Ph\\u01b0\\u1eddng 5 , TP V\\u0129nh Long , t\\u1ec9nh V\\u0129nh Long\",\"thumb_saleroom\":\"\\/storage\\/uploads\\/20232023\\/06\\/26\\/bach-hoa-xanh-logo-inkythuatso-03-17-22-34.jpg\",\"created_at\":\"2023-06-26 07:15:39\"},\"timeStamp\":\"2023-06-26T07:15:40.125556Z\",\"hash\":\"$2y$10$YabhCvUqwcuX7\\/Pf1aCRF.hQMda9t4CL7PLUkMMLNNYUnbnHlzGTy\",\"mineVar\":732,\"target\":\"a\",\"subHash\":\"9\",\"mineTime\":41},{\"prevHash\":\"$2y$10$YabhCvUqwcuX7\\/Pf1aCRF.hQMda9t4CL7PLUkMMLNNYUnbnHlzGTy\",\"data\":{\"madoanhnghiep\":\"COOP20086201\",\"tencoso\":\"COOP MART\",\"diachi\":\"S\\u1ed1 26, Tr\\u01b0ng N\\u1eef V\\u01b0\\u01a1ng, ph\\u01b0\\u1eddng 1, TP. V\\u0129nh Long, t\\u1ec9nh V\\u0129nh Long\",\"thumb_saleroom\":\"\\/storage\\/uploads\\/20232023\\/06\\/26\\/co_op mart.png\",\"created_at\":\"2023-06-26 07:17:25\"},\"timeStamp\":\"2023-06-26T07:17:25.371333Z\",\"hash\":\"$2y$10$RdzlIJiZSfHMJjIs1tv\\/S.TyCYa0TTAgmZq.VcKOU5EodEGWTLFly\",\"mineVar\":380,\"target\":\"a\",\"subHash\":\"0\",\"mineTime\":21},{\"prevHash\":\"$2y$10$RdzlIJiZSfHMJjIs1tv\\/S.TyCYa0TTAgmZq.VcKOU5EodEGWTLFly\",\"data\":{\"madoanhnghiep\":\"SMK2408901\",\"tencoso\":\"Smarket 24\",\"diachi\":\"S\\u1ed1 210 Ph\\u1ea1m C\\u00f4ng Tr\\u1ee9, KDC 143ha, Th\\u1ea1nh M\\u1ef9 L\\u1ee3i, Qu\\u1eadn 2, TP. H\\u1ed3 Ch\\u00ed Minh\",\"thumb_saleroom\":\"\\/storage\\/uploads\\/20232023\\/06\\/26\\/company_logo_with_right_colors.png\",\"created_at\":\"2023-06-26 07:18:30\"},\"timeStamp\":\"2023-06-26T07:18:30.701951Z\",\"hash\":\"$2y$10$2eraatXy0NFj1uzB.BC5E.t1CQa9g4Zm2OJEtMXQU36SojChP.Dca\",\"mineVar\":1343,\"target\":\"a\",\"subHash\":\"9\",\"mineTime\":73}]}', '2023-06-26 00:16:21', '2023-06-26 00:19:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `salesrooms`
--

CREATE TABLE `salesrooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `madoanhnghiep` varchar(255) NOT NULL,
  `tencoso` varchar(255) NOT NULL,
  `tennguoidaidien` varchar(255) NOT NULL,
  `tenchucoso` varchar(255) NOT NULL,
  `sodienthoai` varchar(255) NOT NULL,
  `diachi` varchar(500) NOT NULL,
  `mota` longtext NOT NULL,
  `thumb_saleroom` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `salesrooms`
--

INSERT INTO `salesrooms` (`id`, `madoanhnghiep`, `tencoso`, `tennguoidaidien`, `tenchucoso`, `sodienthoai`, `diachi`, `mota`, `thumb_saleroom`, `created_at`, `updated_at`) VALUES
(151, 'BHX201008601', 'Bách Hóa Xanh', 'Nguyễn Văn A', 'Nguyễn Văn A', '0899111222', 'Thửa đất số 468 , tờ bản đồ số 10 , Khóm 2 , Phường 5 , TP Vĩnh Long , tỉnh Vĩnh Long', 'Cuối năm 2015, Bách hóa XANH được đưa vào thử nghiệm với hình thức chuỗi cửa hàng chuyên bán lẻ thực phẩm tươi sống (thịt cá, rau củ, trái cây,…) và nhu yếu phẩm chất lượng, nguồn gốc rõ ràng. Trải qua gần 6 năm phát triển, Bách hóa XANH đã có gần 2.000 siêu thị trên khắp các tỉnh thành ở Miền Nam, Miền Đông và Nam Trung Bộ và hơn 20 kho hàng phục vụ cho website BachhoaXANH.com chuyên cung cấp các sản phẩm đa dạng về chủng loại; giá cả hợp lý, nhân viên thân thiện, địa điểm dễ tiếp cận đối với người nội trợ.', '/storage/uploads/20232023/06/26/bach-hoa-xanh-logo-inkythuatso-03-17-22-34.jpg', '2023-06-26 00:15:39', '2023-06-26 00:15:39'),
(152, 'COOP20086201', 'COOP MART', 'Nguyễn Văn Giàu', 'Nguyễn Văn Giàu', '0975319992', 'Số 26, Trưng Nữ Vương, phường 1, TP. Vĩnh Long, tỉnh Vĩnh Long', 'Siêu thị coop mart là một trong những siêu thị thương hiệu chất lượng hàng đầu Việt Nam, với chất lượng phục vụ, giá cả và chất lượng sản phẩm sạch hàng đầu', '/storage/uploads/20232023/06/26/co_op mart.png', '2023-06-26 00:17:25', '2023-06-26 00:17:25'),
(153, 'SMK2408901', 'Smarket 24', 'Lê Thanh Bằng', 'Lê Thanh Bằng', '0899142589', 'Số 210 Phạm Công Trứ, KDC 143ha, Thạnh Mỹ Lợi, Quận 2, TP. Hồ Chí Minh', 'Chuỗi cửa hàng tiện lợi Smarket24 là một trong những thương hiệu hàng đầu về chất lượng sản phẩm và dịch vụ tận tình. Tuy còn non trẻ nhưng Smarket24 không mất quá lâu để chứng minh bản thân mình. Với hơn 100 cửa hàng trãi dài khắp cả nước Việt Nam. Smarket24 cửa hàng tiện lợi phong cách hiện đại và chuyên nghiệp', '/storage/uploads/20232023/06/26/company_logo_with_right_colors.png', '2023-06-26 00:18:30', '2023-06-26 00:18:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seedsandseedlings`
--

CREATE TABLE `seedsandseedlings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `detail` longtext NOT NULL,
  `id_seedsupplier` bigint(20) NOT NULL,
  `thumb` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `seedsandseedlings`
--

INSERT INTO `seedsandseedlings` (`id`, `name`, `description`, `detail`, `id_seedsupplier`, `thumb`, `created_at`, `updated_at`) VALUES
(1, 'Cây Thanh Long Giống Đồng Tâm Long An', 'Cây giống thanh long ruột đỏ bắt đầu xuất hiện ở Việt Nam nhiều năm nay, và hiện trên cả nước ta duy chỉ có ba tỉnh áp dụng trồng thí điểm là Bình Thuận, Tiền Giang và Tây Ninh, gần đây có một số tỉnh cũng áp dụng trồng thử Thanh long ruột đỏ như Hà Tây, Thái Nguyên, Bắc Giang, Quảng Ninh... Tuy nhiên, qua thực tế cho thấy vùng Tây Ninh cho trái Thanh long ruột đỏ không đẹp mã như 2 vùng Bình Thuận và Tiền Giang nhưng chất lượng ăn ngọt đậm và mùi thơm hơn hẳn, do đó hiện tại Thanh Long ruột đỏ trồng tại Tây Ninh được người tiêu dùng ưa thích hơn và có giá trị kinh tế cao hơn trồng ở các vùng khác.', 'Được cung cấp bởi nhà cung cấp giống hàng đầu Vĩnh Long', 4, '/storage/uploads/20232023/06/09/trong-thanh-long-ruot-do-bang-hat-1.jpg', NULL, '2023-06-09 10:23:55'),
(2, 'Hạt Giống Cây Xoài Vĩnh Long', 'Xoài cát núm hiện được trồng nhiều ở tỉnh Vĩnh Long. Đây là giống xoài ngon, được nhiều người ưa chuộng. Tuy nhiên, giống xoài này vẫn chưa phổ biến ở nhiều nơi nên chưa được biết đến rộng rãi. Xoài cát núm có đặc điểm là quả dẹp, hạt mỏng và ít xơ', 'Loại giống F1 siêu thuần chủng được cung cấp bởi cơ sở uy tín nhất Vĩnh Long. Xoài cát núm là một trong những loại trái cây đặc sản của tỉnh Vĩnh Long nói riêng và vùng sông nước Nam Bộ nói chung. Không khó để bạn bắt gặp những vườn xoài bạt ngàn, trĩu quả nếu có dịp đi du lịch Vĩnh Long. Đây là thức quả đặc sản đã góp phần phát triển loại hình du lịch nông nghiệp của tỉnh.', 1, '/storage/uploads/20232023/06/09/xoai-cat-chu-1.jpg', '2023-05-21 14:26:07', '2023-06-18 00:38:33'),
(4, 'Cây Sầu Riêng Giống', 'Đến với Nông Nghiệp Việt, các bạn sẽ được cung cấp giống cây chuẩn nhất với hóa đơn bán hàng cho mỗi đơn hàng kèm theo.  Các cây giống được xuất ra thị trường đều trải qua quá trình kiểm soát đầu vào nghiêm ngặt từ khâu chọn mắt ghép tới chọn gốc ghép.  Cây giống đủ tiêu chuẩn đem trồng phải là cây giống đảm bảo tỉ lệ sống 90% trở lên.  Là dòng cây ghép mắt với mắt ghép đạt từ 25-30 cm.  Cây sầu riêng Ri6 đáp ứng đủ 3 chuẩn “chuẩn giống - chuẩn giá - chuẩn sạch bệnh”', 'Cây sầu riêng là cây ăn quả nhiệt đới rất được ưa chuộng ở các nước Đông Nam Á. Do yêu cầu tiêu thụ nội địa và xuất khẩu ngày càng cao hơn, các nước như Mã Lai và Thái Lan tập trung nghiên cứu và phát triển cây sầu riêng từ nhiều năm trước đây. Nhờ có phương hướng phát triển rõ ràng, Thái Lan là nước xuất khẩu sầu riêng đi nhiều nước và có rất nhiều tiến bộ về kỹ thuật canh tác cây sầu riêng. Tại Việt Nam, cây sầu riêng đã phát triển từ lâu, được quan tâm và đầu tư phát triển trong thời gian gần đây một số giống sầu riêng trồng nhiều ở Việt Nam như giống sầu riêng Ri6,giống sầu riêng Monthong Thái Lan Đây là cây trồng mang lại hiệu quả kinh tế cao nếu được trồng và chú ý đầu tư thâm canh, chăm sóc đúng kỹ thuật.', 4, '/storage/uploads/20232023/06/09/ezgif-1-eabb965797.jpg', '2023-05-27 01:36:04', '2023-06-18 00:40:11'),
(5, 'Hạt Cherry', 'Cherry', 'Cherry hay còn gọi là anh đào. Đây là một loại quả hạch thuộc chi Prunus. Loại quả này được các nhà khoa học xếp vào giống cây ăn quả khó trồng và khó sống khi chỉ sống được ở các vùng khí hậu ôn đới.', 1, '/storage/uploads/20232023/06/09/cherry.png', '2023-05-27 01:39:59', '2023-06-09 05:59:39'),
(6, 'Cây Măng Cụt Giống', 'Cây Măng Cụt Giống con F1 siêu thuần chủng', 'Cây Măng Cụt Giống con F1 siêu thuần chủng', 4, '/storage/uploads/20232023/06/09/mangcut.png', '2023-05-27 01:41:02', '2023-06-09 06:00:07'),
(7, 'Cây Giống Bưởi Da Xanh', 'Loại cây ăn trái lâu năm', 'Hạt giống F1 siêu thuần chủng', 4, '/storage/uploads/20232023/06/09/1-10-removebg-preview.png', '2023-05-27 01:44:20', '2023-06-09 06:00:24'),
(8, 'Hạt Dưa Hấu Giống', 'Hạt Dưa Hấu Giống F1 Thuần chủng', 'Hạt Dưa Hấu Giống F1 Thuần chủng', 3, '/storage/uploads/20232023/06/09/a7b508085d60de32cbd10fd731a24eb5.jpg_720x720q80.jpg', '2023-05-27 02:05:01', '2023-06-09 05:20:01'),
(9, 'Cây Chuối Giống', 'Cây Chuối Giống F1 Thuần chủng', 'Cây Chuối Giống F1 Thuần chủng', 1, '/storage/uploads/20232023/06/09/New0150.jpg', '2023-05-27 02:05:20', '2023-06-09 10:21:46'),
(10, 'Cây Mít Giống', 'Cây Mít Giống F1 Thuần Chủng', 'Cây Mít Giống F1 Thuần Chủng', 4, '/storage/uploads/20232023/06/09/mit-phong-ung-thu-removebg-preview.png', '2023-05-27 02:05:55', '2023-06-09 06:00:48'),
(11, 'Cây Nhãn Long Giống', 'Cây Nhãn Long Giống F1 Thuần Chủng', 'Cây Nhãn Long Giống F1 Thuần Chủng', 1, '/storage/uploads/20232023/06/09/nhanlong.jpg', '2023-05-27 02:06:24', '2023-06-09 10:21:57'),
(12, 'Cây Vãi Thều Giống', 'Cây Vãi Thều Giống F1 Thuần chủng', 'Cây Vãi Thều Giống F1 Thuần chủng', 1, '/storage/uploads/20232023/06/09/cay-giong-vai-thieu-hat-lep.jpg', '2023-05-27 02:12:25', '2023-06-09 10:21:27'),
(13, 'BẮP CẢI ĐỎ F1 RED STAR', '- Trọng lượng trung bình từ 1,2-1,8kg  - Thời gian sinh trưởng: Bắt đầu tạo bắp sau trồng khoảng 30-35 ngày và cho thu hoạch khoảng 65-70 ngày sau khi trồng  - Thời vụ gieo trồng: quanh năm', '- Xuất xứ: Nhật Bản  - Là giống lai F1 thế hệ mới, ngắn ngày, chịu nhiệt tốt, giống cho năng suất cao và kháng bệnh tốt  - Hình dạng: Bắp có màu đỏ tía đậm rất đẹp, dạng hình cầu, cuốn chặt và rất đồng đều.', 3, '/storage/uploads/20232023/06/09/ezgif-4-dc8db9b0e9.jpg', '2023-06-09 05:16:14', '2023-06-09 05:16:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seedsuppliers`
--

CREATE TABLE `seedsuppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `madoanhnghiep` varchar(255) NOT NULL,
  `tencoso` varchar(255) NOT NULL,
  `chucoso` varchar(255) NOT NULL,
  `nguoidaidienphaply` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `sodienthoai` varchar(255) NOT NULL,
  `mota` longtext NOT NULL,
  `thumb` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `seedsuppliers`
--

INSERT INTO `seedsuppliers` (`id`, `madoanhnghiep`, `tencoso`, `chucoso`, `nguoidaidienphaply`, `diachi`, `sodienthoai`, `mota`, `thumb`, `created_at`, `updated_at`) VALUES
(1, '086A3401KJU', 'Nhà Cung Cấp Giống Vĩnh Long', 'Đạt', 'Đạt', 'Vĩnh Long', '0365078012', 'Trung tâm Dịch vụ kỹ thuật nông nghiệp Vĩnh Long là tổ chức sự nghiệp công lập trực thuộc Sở Nông nghiệp và Phát triển nông thôn có chức năng triển khai các hoạt động khuyến nông, khuyến lâm, khuyến ngư, chế biến, bảo quản, nông, lâm, thủy sản; cung cấp, phổ biến thông tin và ứng dụng công nghệ thông tin; tổ chức thực hiện công tác dự báo thị trường, xúc tiến thương mại nông sản, lâm sản và thủy sản.', '/storage/uploads/20232023/06/09/tải xuống.png', '2023-05-09 09:37:15', '2023-06-09 06:18:02'),
(3, 'HGSV20151990', 'Công ty hạt giống Sen Vàng', 'Công ty hạt giống Sen Vàng', 'Công ty hạt giống Sen Vàng', 'Số 210 Phạm Công Trứ, KDC 143ha, Thạnh Mỹ Lợi, Quận 2, TP. Hồ Chí Minh', '02862811761', 'Công ty hạt giống Sen Vàng chuyên cung cấp hạt giống - hạt giống rau củ - rau mầm - hạt giống cỏ. Với mục tiêu trở thành công ty sản xuất hạt giống hàng đầu Việt Nam, trong lĩnh vực nghiên cứu, sản xuất và kinh doanh hạt giống. Là ngọn cờ đầu trong việc ứng dụng khoa học và chuyển giao kỹ thuật trong nông nghiệp tới nông dân.    Công ty hạt giống Sen Vàng luôn mong muốn mang tới vụ mùa bội thu cho người nông dân qua chất lượng hạt giống cung cấp. Đối với nhà phân phối hạt giống, đại lý hạt giống, Công ty hạt giống Sen Vàng luôn đem lại sự thịnh vượng và cam kết uy tín.    Với tiêu chí khách hàng là quan trọng đối với sự thành công của mình. Công ty Hạt Giống Sen Vàng lôn thấu hiểu, tạo niềm tin và gìn giữ uy tín với Khách hàng, đối tác, đại lý hạt giống, nhà phân phối hạt giống. Liên tục đổi mới nhằm đáp ứng tốt nhất nhu cầu của Khách hàng. Phát triển và hỗ trợ đổi mới phương pháp canh tác mới, và giúp Nông Dân Việt Nam cải thiện năng suất và gia tăng lợi nhuận.', '/storage/uploads/20232023/06/09/f5141303faa0c5d4c39fd1988eaaf0e3-removebg-preview.png', '2023-06-09 05:07:07', '2023-06-09 05:10:29'),
(4, '0107634256', 'CÔNG TY CỔ PHẦN GIỐNG CÂY TRỒNG Đ.H NÔNG NGHIỆP 1', 'NGUYỄN VĂN TÌNH', 'NGUYỄN VĂN TÌNH', 'Số nhà 55, Đường A, Tổ dân phố An Đào, Thị Trấn Trâu Quỳ, Huyện Gia Lâm, Thành phố Hà Nội, Việt Nam', '0979090189', 'Công ty cổ phần giống cây trồng  Đại học Nông nghiệp 1 tọa lạc tại Thị trấn Trâu Quỳ, Huyện Gia Lâm, Thành phố Hà Nội. Tự hào là doanh nghiệp đi đầu trong lĩnh vực Sản xuất và phân phối giống cây trồng với khẩu hiệu “ Uy tín – Năng suất - Chất lượng – Hiệu Quả”.  Hiệu quả của nhà nông luôn được công ty đặt lên hàng đầu.Hiện công ty là nhà cung cấp và phân phối các loại giống cây trồng uy tín, chất lượng cho hầu hết các tỉnh, thành phổ ở Miền bắc và Miền trung Việt Nam.  Công ty được xây dựng từ những Kỹ sư đầu ngành, luôn tâm huyết với sự nghiệp nghiên cứu, tìm tòi ra những giống cây trồng mới đáp ứng yêu cầu ngày càng cao của thị trường và thị hiếu của khách hàng.', '/storage/uploads/20232023/06/15/img-2169-2a8dec3c-e349-495b-9943-015ba58793ed.webp', '2023-06-09 05:57:16', '2023-06-15 04:15:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) NOT NULL,
  `sort_by` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `url`, `thumb`, `sort_by`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Cherry', '/storage/uploads/20232023/05/26/traicay3.gif', '/storage/uploads/20232023/05/27/vegeble.gif', 1, 1, '2023-05-26 02:00:15', '2023-05-26 21:43:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `timechecks`
--

CREATE TABLE `timechecks` (
  `id` int(11) NOT NULL,
  `time` bigint(20) DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `timechecks`
--

INSERT INTO `timechecks` (`id`, `time`, `created_at`, `updated_at`) VALUES
(1, 1687759314, '2023-06-10 15:27:34', '2023-06-25 23:01:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `perrmission` int(11) NOT NULL,
  `moblie` varchar(20) DEFAULT NULL,
  `birth` varchar(255) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `perrmission`, `moblie`, `birth`, `sex`, `diachi`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Phuc\r\n', 'huynhvinhphuc7777@gmail.com', NULL, '$2y$10$NbVrxOQ4YaCDMgNFcT8cZeBLAfCIPIqMkNKNkv7Yjna24QTqnl8yG', 1, '0975319991', '03-03-2001', 'Nam', 'Vĩnh Long', NULL, '2023-05-09 08:02:36', '2023-05-09 08:02:36');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `billreceiveds`
--
ALTER TABLE `billreceiveds`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blockchaindbs`
--
ALTER TABLE `blockchaindbs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `crops`
--
ALTER TABLE `crops`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `farmers`
--
ALTER TABLE `farmers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `farmers_mavungtrong_unique` (`mavungtrong`);

--
-- Chỉ mục cho bảng `imagecrops`
--
ALTER TABLE `imagecrops`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `img_products`
--
ALTER TABLE `img_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
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
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `salesroomchains`
--
ALTER TABLE `salesroomchains`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `salesrooms`
--
ALTER TABLE `salesrooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `madoanhnghiep` (`madoanhnghiep`);

--
-- Chỉ mục cho bảng `seedsandseedlings`
--
ALTER TABLE `seedsandseedlings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `seedsuppliers`
--
ALTER TABLE `seedsuppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `madoanhnghiep` (`madoanhnghiep`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `timechecks`
--
ALTER TABLE `timechecks`
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
-- AUTO_INCREMENT cho bảng `billreceiveds`
--
ALTER TABLE `billreceiveds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT cho bảng `blockchaindbs`
--
ALTER TABLE `blockchaindbs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `crops`
--
ALTER TABLE `crops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `farmers`
--
ALTER TABLE `farmers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `imagecrops`
--
ALTER TABLE `imagecrops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `img_products`
--
ALTER TABLE `img_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `salesroomchains`
--
ALTER TABLE `salesroomchains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `salesrooms`
--
ALTER TABLE `salesrooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT cho bảng `seedsandseedlings`
--
ALTER TABLE `seedsandseedlings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `seedsuppliers`
--
ALTER TABLE `seedsuppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `timechecks`
--
ALTER TABLE `timechecks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
