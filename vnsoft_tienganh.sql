-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 12, 2018 lúc 05:22 PM
-- Phiên bản máy phục vụ: 10.1.32-MariaDB
-- Phiên bản PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vnsoft_tienganh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `access`
--

CREATE TABLE `access` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `access` text CHARACTER SET utf8
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `access`
--

INSERT INTO `access` (`id`, `user_id`, `access`) VALUES
(1, 11, '{\"product\":[\"products\",\"add\",\"edit\",\"delete\",\"categories\",\"cat_add\",\"cat_edit\",\"cat_delete\"]}'),
(2, 12, '{\"menu\":[\"menulist\",\"add\",\"edit\",\"delete\"]}'),
(3, 2, '{\"product\":[\"products\",\"category_pro\",\"add\",\"delete_once\",\"cat_add\",\"del_cat_once\",\"delete_once_comment\",\"delete_once_question\"],\"order\":[\"orders\"],\"news\":[\"newslist\",\"categories\",\"tagsnews\",\"addnews\",\"delete_once_news\",\"cat_add_news\",\"del_catnews_once\"],\"menu\":[\"addmenu\",\"menulist\",\"delete\"],\"imageupload\":[\"banners\",\"addbanner\",\"delete_Banner_once\"],\"pages\":[\"pagelist\",\"addpage\",\"delete_page_once\"],\"contact\":[\"contacts\",\"delete\"],\"email\":[\"emails\",\"delete\"],\"admin\":[\"site_option\",\"maps\",\"store_shopping\"]}'),
(4, 1, '{\"inuser\":[\"categories\",\"cate_add\",\"delete_cat_once\"],\"media\":[\"listAll\",\"categories\",\"add\",\"delete_once\",\"cat_add\",\"del_cat_once\"],\"video\":[\"listAll\",\"category_video\",\"add\",\"delete_once\",\"cat_add\",\"del_cat_once\"],\"product\":[\"products\",\"category_pro\",\"config\",\"add\",\"delete_once\",\"cat_add\",\"del_cat_once\",\"delete_once_comment\",\"delete_once_question\"],\"order\":[\"orders\",\"listSale\",\"listProvince\",\"delete_once_orders\",\"addSale\",\"del_once_sale\"],\"attribute\":[\"listBrand\",\"listLocale\",\"listColor\",\"listprice\",\"listOption\",\"addbrand\",\"delete_brand_once\",\"addlocale\",\"delete_locale_once\",\"addcolor\",\"delete_color_once\",\"addprice\",\"delete_price_once\",\"addoption\",\"delete_option_once\"],\"news\":[\"newslist\",\"categories\",\"tagsnews\",\"addnews\",\"delete_once_news\",\"cat_add_news\",\"del_catnews_once\"],\"tag\":[\"listnew\",\"listpro\"],\"menu\":[\"addmenu\",\"menulist\",\"delete\"],\"comment\":[\"comments\",\"questions\"],\"imageupload\":[\"banners\",\"addbanner\",\"delete_Banner_once\"],\"pages\":[\"pagelist\",\"addpage\",\"delete_page_once\"],\"contact\":[\"contacts\",\"delete\"],\"raovat\":[\"listraovat\",\"categories\",\"tagtinrao\",\"add\",\"delete_raovat_once\",\"cat_add\",\"del_cattinrao_once\"],\"email\":[\"emails\",\"delete\"],\"support\":[\"listSuport\",\"add\",\"delete_support_once\"],\"users\":[\"listuser_admin\",\"listusers\",\"add_users\",\"smslist\"],\"admin\":[\"site_option\",\"maps\",\"store_shopping\",\"setup_product\"],\"province\":[\"listDistric\",\"listWard\",\"street\"],\"report\":[\"soldout\",\"bestsellers\"]}'),
(5, 580, '{\"admin\":[\"\",\"site_option\",\"inuser\",\"comment\",\"email\",\"contact\"],\"users\":[\"delete\"],\"order\":[\"orders\",\"Deleteeorder\"],\"support\":[\"add\",\"edit\",\"x\\u00f3a\"],\"product\":[\"products\",\"add\",\"edit\",\"delete\",\"categories\",\"cat_add\",\"cat_edit\",\"listCodeSale\",\"cat_delete\",\"images\"],\"news\":[\"newslist\",\"add\",\"edit\",\"delete\",\"categories\",\"cat_add\",\"cat_edit\",\"delete_cat\"],\"pages\":[\"pagelist\",\"add\",\"edit\",\"delete\",\"action\"],\"menu\":[\"menulist\",\"add\",\"edit\",\"delete\"]}'),
(6, 612, '{\"media\":[\"listAll\",\"categories\"],\"video\":[\"listAll\",\"category_video\",\"add\",\"delete_once\",\"cat_add\",\"del_cat_once\"]}'),
(7, 636, '{\"product\":[\"products\",\"category_pro\",\"add\",\"delete_once\",\"cat_add\",\"del_cat_once\",\"delete_once_comment\",\"delete_once_question\"],\"order\":[\"orders\",\"listSale\",\"listProvince\",\"delete_once_orders\",\"addSale\",\"del_once_sale\"],\"news\":[\"newslist\",\"categories\",\"tagsnews\",\"addnews\",\"delete_once_news\",\"cat_add_news\",\"del_catnews_once\"],\"users\":[\"listuser_admin\",\"listusers\",\"delete_users_once\",\"add_users\"],\"admin\":[\"site_option\",\"maps\",\"store_shopping\"]}'),
(8, 645, '{\"product\":[\"products\",\"category_pro\",\"add\",\"delete_once\",\"cat_add\",\"del_cat_once\",\"delete_once_comment\",\"delete_once_question\"],\"order\":[\"orders\",\"listSale\",\"listProvince\",\"delete_once_orders\",\"addSale\",\"del_once_sale\"],\"attribute\":[\"listBrand\",\"listLocale\",\"listprice\",\"addbrand\",\"delete_brand_once\",\"addlocale\",\"delete_locale_once\",\"addcolor\",\"delete_color_once\",\"addprice\",\"delete_price_once\",\"addoption\",\"delete_option_once\"],\"news\":[\"newslist\",\"categories\",\"tagsnews\",\"addnews\",\"delete_once_news\",\"cat_add_news\",\"del_catnews_once\"],\"menu\":[\"addmenu\",\"menulist\",\"delete\"],\"imageupload\":[\"banners\",\"addbanner\",\"delete_Banner_once\"],\"pages\":[\"pagelist\",\"addpage\",\"delete_page_once\"],\"contact\":[\"contacts\",\"delete\"],\"admin\":[\"site_option\",\"maps\"]}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `alias`
--

CREATE TABLE `alias` (
  `id` int(11) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `type` char(50) CHARACTER SET utf8 DEFAULT NULL,
  `item_id` int(11) DEFAULT '0',
  `new_cat` int(11) DEFAULT '0',
  `new` int(11) DEFAULT '0',
  `pro_cat` int(11) DEFAULT '0',
  `pro` int(11) DEFAULT '0',
  `page` int(11) DEFAULT '0',
  `m_cat` int(11) DEFAULT '0',
  `media` int(11) DEFAULT '0',
  `locale` int(11) DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `inuser` int(11) DEFAULT NULL,
  `video_cat` int(11) DEFAULT NULL,
  `video` int(11) DEFAULT NULL,
  `services_cat` int(11) DEFAULT NULL,
  `services` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `alias`
--

INSERT INTO `alias` (`id`, `alias`, `type`, `item_id`, `new_cat`, `new`, `pro_cat`, `pro`, `page`, `m_cat`, `media`, `locale`, `brand`, `inuser`, `video_cat`, `video`, `services_cat`, `services`) VALUES
(384, 'tin-tuc-su-kien', 'cate-new', 0, 15, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(392, 'phu-nu-sau-sinh-va-nhung-dieu-can-biet', 'new', 0, 0, 28, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(393, 'tu-van-tu-chuyen-gia-pgs-thay-thuoc-uu-tu-vu-manh-hung-ve-strong-hair', 'new', 0, 0, 29, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(394, 'cac-thanh-phan-cau-tao-gluta', 'new', 0, 0, 30, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395, 'chinh-sach-doi-tra-va-hoan-tien', 'new', 0, 0, 31, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(469, 'men-song-bach-mai', 'pro', 0, 0, 0, 0, 232, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(483, 'tieng-anh-mau-giao', 'cate-pro', 0, 0, 0, 111, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(449, 'kien-khop-tieu-thong-collagen-hvqy-chuyen-biet-benh-thoat-vi-dia-dem-xuong-khop-nguoi-gia', 'pro', 0, 0, 0, 0, 214, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(434, 'chuong-trinh-dao-tao', 'cate-pro', 0, 0, 0, 103, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(484, 'tieng-anh-thieu-nhi', 'cate-pro', 0, 0, 0, 112, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(485, 'tieng-anh-thieu-nien', 'cate-pro', 0, 0, 0, 113, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(446, 'thanh-duong-gamosa-hoc-vien-quan-y-on-dinh-tieu-duong-giam-bien-chung-tieu-duong', 'pro', 0, 0, 0, 0, 211, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(447, 'tra-tam-that-xa-den-ho-tro-dieu-tri-benh-ung-thu', 'pro', 0, 0, 0, 0, 212, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(448, 'tra-tanaka-giup-ha-huyet-ap-giup-ngu-tot-phong-ngua-dot-quy', 'pro', 0, 0, 0, 0, 213, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(440, 'strong-hair-hoc-vien-quan-y', 'pro', 0, 0, 0, 0, 206, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(442, 'vien-sang-da-suong-mai-hoc-vien-quan-y-sang-da-dep-tu-ben-trong', 'pro', 0, 0, 0, 0, 208, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(444, 'tra-dahatala-hoc-vien-quan-y-ho-tro-dieu-tri-benh-tieu-duong', 'pro', 0, 0, 0, 0, 209, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(445, 'siro-laroxen-hoc-vien-quan-y-chuyen-dung-cho-benh-nhan-mat-ngu-bang-thao-duoc', 'pro', 0, 0, 0, 0, 210, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(424, 'chinh-sach-bao-tri-bao-duong', 'page', 0, 0, 0, 0, 0, 51, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(425, 'chinh-sach-ban-hang', 'page', 0, 0, 0, 0, 0, 52, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(426, 'chinh-sach-bao-mat-thong-tin-kh', 'page', 0, 0, 0, 0, 0, 53, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(427, 'chinh-sach-dich-vu', 'page', 0, 0, 0, 0, 0, 54, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(428, 'chinh-sach-thanh-toan', 'page', 0, 0, 0, 0, 0, 55, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(429, 'phuong-thuc-thanh-toan', 'page', 0, 0, 0, 0, 0, 56, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(430, 'chinh-sach-giao-hang-va-van-chuyen', 'page', 0, 0, 0, 0, 0, 57, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(431, 'chinh-sach-doitra-va-hoan-tien', 'page', 0, 0, 0, 0, 0, 58, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(450, 'tinh-chat-nghe-hoc-vien-quan-y', 'pro', 0, 0, 0, 0, 215, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(451, 'don-thuoc-so-12-chua-da-day-cua-vien-103', 'pro', 0, 0, 0, 0, 216, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(452, 'toi-den-hoc-vien-quan-y-goi-500g-qua-tang-y-nghia-cho-nguoi-than', 'pro', 0, 0, 0, 0, 217, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(453, 'toi-den-mot-nhanh-hoc-vien-quan-y-hop-200g', 'pro', 0, 0, 0, 0, 218, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(454, 'toi-den-dong-trung-ha-thao-hoc-vien-quan-y', 'pro', 0, 0, 0, 0, 219, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(455, 'lipo-white-my-pham-chuyen-biet-nam-tan-nhang-hoc-vien-quan-y', 'pro', 0, 0, 0, 0, 220, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(456, 'cream-sk-ginseng-phuc-hoi-tai-tao-lai-cac-te-bao-da-bi-lao-hoa', 'pro', 0, 0, 0, 0, 221, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(457, 'nano-curcumin-tam-that-xa-den-plus-san-pham-moi-ham-luong-cao', 'pro', 0, 0, 0, 0, 222, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(458, 'tra-giam-can-slimutea-ha-mo-mau-ho-tro-giam-beo', 'pro', 0, 0, 0, 0, 223, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(459, 'tra-giam-can-slimomax-hoc-vien-quan-y-ho-tro-giam-beo', 'pro', 0, 0, 0, 0, 224, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(460, 'slimtosen-extra-giam-can-an-toan-va-hieu-qua-cao', 'pro', 0, 0, 0, 0, 225, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(461, 'slim-body-san-pham-giam-can-moi-hoc-vien-quan-y', 'pro', 0, 0, 0, 0, 226, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(462, 'vien-uong-giam-can-dep-da-newslim-beauty-hoc-vien-quan', 'pro', 0, 0, 0, 0, 227, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(463, 'nano-fucomin-hoc-vien-quan-y', 'pro', 0, 0, 0, 0, 228, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(464, 'nano-curcumin-hoc-vien-quan-y-chuyen-viem-loet-da-day-viem-loet-hanh-ta-trang', 'pro', 0, 0, 0, 0, 229, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(465, 'hoc-vien-quan-y', 'brand', 0, 0, 0, 0, 0, 0, 0, 0, NULL, 39, NULL, NULL, NULL, NULL, NULL),
(486, 'tieng-anh-giao-tiep', 'cate-pro', 0, 0, 0, 114, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(467, 'siro-an-ngon-navikid-hoc-vien-quan-y-cho-tre-mau-lon', 'pro', 0, 0, 0, 0, 230, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(468, 'com-bo-safical-iq', 'pro', 0, 0, 0, 0, 231, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(470, 'dinh-tam-an-giac-hvqy-chiet-xuat-ham-luong-cao', 'pro', 0, 0, 0, 0, 233, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(471, 'slimtosen-beauty-hoc-vien-quan-y-san-pham-giam-can-moi-cho-nguoi-kho-giam', 'pro', 0, 0, 0, 0, 234, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(472, 'detoxic-san-pham-diet-ky-sinh-trung-va-cai-thien-tieu-hoa', 'pro', 0, 0, 0, 0, 235, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(473, 'xach-tay-nga', 'brand', 0, 0, 0, 0, 0, 0, 0, 0, NULL, 40, NULL, NULL, NULL, NULL, NULL),
(474, 'nano-curcumin-tam-that-xa-den-hoc-vien-quan-y-ho-tro-dieu-tri-ung-thu-hieu-qua-cao', 'pro', 0, 0, 0, 0, 236, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(475, 'unti-k-san-pham-tot-cho-bn-k-vu-k-tu-cung-k-tuyen-giap', 'pro', 0, 0, 0, 0, 237, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(476, 'unti-k-hoc-vien-quan-y-ho-tro-dieu-tri-benh-ung-thu-hieu-qua-cao', 'pro', 0, 0, 0, 0, 238, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(477, 'dung-dich-ve-sinh-phu-nu-nano-pro-extra-cua-hoc-vien-quan-y', 'pro', 0, 0, 0, 0, 239, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(478, 'com-vi-sinh-safikid-bio-hvqy-kich-thich-an-ngon-tang-cuong-hap-thu-cho-tre', 'pro', 0, 0, 0, 0, 240, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(479, 'vaselin-vien-bong-kem-tri-ne-cuc-tot-cua-vien-bong-quoc-gia', 'pro', 0, 0, 0, 0, 241, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(480, '1-lieu-trinh-4h-strong-hair-hoc-vien-quan-y', 'pro', 0, 0, 0, 0, 242, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(481, 'toi-den-hoc-vien-quan-y-1kg-qua-tang-y-nghia-cho-nguoi-than', 'pro', 0, 0, 0, 0, 243, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(482, 'gioi-thieu', 'page', 0, 0, 0, 0, 0, 59, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cashbook`
--

CREATE TABLE `cashbook` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `id_create` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `date_create` char(50) DEFAULT NULL,
  `hour_create` char(30) DEFAULT NULL,
  `date_time` int(11) DEFAULT NULL,
  `time_create` int(11) DEFAULT NULL,
  `note` text,
  `type_id` int(11) DEFAULT NULL,
  `user_pay` int(11) DEFAULT NULL,
  `group_pay` char(50) DEFAULT NULL,
  `bill_code` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cashtype`
--

CREATE TABLE `cashtype` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `note` text,
  `type` tinyint(1) DEFAULT NULL COMMENT '1:phiếu thu 0 phiếu chi'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `code_sale`
--

CREATE TABLE `code_sale` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `active` int(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `code_sale`
--

INSERT INTO `code_sale` (`id`, `name`, `code`, `price`, `active`) VALUES
(10, 'Noel', 'ADCVX', 10, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `comment` text CHARACTER SET utf8,
  `reply` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `review` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments_binhluan`
--

CREATE TABLE `comments_binhluan` (
  `id` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `giatri` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `date` date NOT NULL,
  `flg` int(1) NOT NULL DEFAULT '0' COMMENT '0: moi binh luan; 1: xac nhan de hien thi',
  `reply` int(11) DEFAULT NULL,
  `review` tinyint(1) DEFAULT '0',
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` char(10) COLLATE utf8_unicode_ci DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_banner`
--

CREATE TABLE `config_banner` (
  `id` int(11) NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `field` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `active` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `config_banner`
--

INSERT INTO `config_banner` (`id`, `type`, `name`, `field`, `active`) VALUES
(1, NULL, 'banner trang chủ', 'banner', '1'),
(2, NULL, 'Banner right', 'left', '1'),
(3, NULL, 'Banner 1', 'ipad', '0'),
(4, NULL, 'Banner Mobile', 'mobile', '0'),
(5, NULL, 'Banner Table', 'table', '0'),
(6, NULL, 'banner bottom', 'bottom', '1'),
(7, NULL, 'đối tác', 'partners', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_checkpro`
--

CREATE TABLE `config_checkpro` (
  `id` int(11) NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `field` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `active` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `config_checkpro`
--

INSERT INTO `config_checkpro` (`id`, `type`, `name`, `field`, `color`, `active`) VALUES
(1, 'product', 'Hot nhất', 'hot', 'd73925', '1'),
(2, 'product', 'Trang chủ', 'home', '008d4c', '1'),
(3, 'product', 'sp khuyến mại', 'coupon', 'f39c12', '0'),
(4, 'product', 'Xem nhiều', 'focus', 'd352d4', '1'),
(5, 'product_category', 'Trang chủ', 'home', 'd73925', '1'),
(6, 'product_category', 'Danh mục mới', 'hot', '008d4c', '0'),
(7, 'product_category', 'Nổi bật', 'focus', 'c3c3c3', '0'),
(8, 'product_category', 'Đặc biệt', 'coupon', 'd352d4', '0'),
(9, 'news', 'Trang chủ', 'home', 'd73925', '1'),
(10, 'news', 'Tin nổi bật', 'focus', '008d4c', '0'),
(11, 'news', 'Tin mới', 'hot', 'c3c3c3', '0'),
(12, 'news_category', 'Trang chủ', 'home', 'd73925', '0'),
(13, 'news_category', 'Danh mục hót', 'hot', '008d4c', '0'),
(14, 'news_category', 'Nổi bật', 'focus', 'c3c3c3', '0'),
(15, 'news_category', 'Danh mục bên trái', 'coupon', '0098da', '0'),
(16, 'media', 'Trang chủ', 'home', 'd73925', '1'),
(17, 'media', 'nổi bật', 'focus', '008d4c', '1'),
(18, 'media', 'Đặc biệt', 'hot', 'c3c3c3', '1'),
(19, 'media_category', 'Trang chủ', 'home', 'd73925', '1'),
(20, 'media_category', 'Mới', 'hot', '008d4c', '1'),
(21, 'media_category', 'Nổi bật', 'focus', 'c3c3c3', '1'),
(22, 'media_category', 'Cột trái', 'coupon', 'd352d4', '1'),
(23, 'video', 'Trang chủ', 'home', 'd73925', '1'),
(24, 'video', 'nổi bật', 'focus', '008d4c', '1'),
(25, 'video', 'Đặc biệt', 'hot', 'c3c3c3', '1'),
(26, 'video_category', 'Trang chủ', 'home', 'd73925', '1'),
(27, 'video_category', 'Mới', 'hot', '008d4c', '1'),
(28, 'video_category', 'Nổi bật', 'focus', 'c3c3c3', '1'),
(29, 'staticpage', 'Trang chủ', 'home', 'd73925', '1'),
(30, 'staticpage', 'Liên hệ', 'focus', '008d4c', '0'),
(31, 'staticpage', 'Đặc biệt', 'hot', 'c3c3c3', '0'),
(32, 'raovat', 'Trang chủ', 'home', 'd73925', '1'),
(33, 'raovat', 'nổi bật', 'focus', '008d4c', '1'),
(34, 'raovat', 'Đặc biệt', 'hot', 'c3c3c3', '1'),
(35, 'raovat_category', 'Trang chủ', 'home', 'd73925', '1'),
(36, 'raovat_category', 'Mới', 'hot', '008d4c', '1'),
(37, 'raovat_category', 'Nổi bật', 'focus', 'c3c3c3', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_class`
--

CREATE TABLE `config_class` (
  `id` int(11) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `config` varchar(255) DEFAULT NULL,
  `active` int(1) DEFAULT NULL COMMENT '1.hoạt động, 2. không hoạt động'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `config_class`
--

INSERT INTO `config_class` (`id`, `class`, `config`, `active`) VALUES
(1, 'background_title', 'background_title {\nbackground: red;\ncolor: red;\n}', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_icon`
--

CREATE TABLE `config_icon` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_menu`
--

CREATE TABLE `config_menu` (
  `id` int(11) NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `field` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `active` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `config_menu`
--

INSERT INTO `config_menu` (`id`, `type`, `name`, `field`, `active`) VALUES
(2, 'top', 'menu top', NULL, '0'),
(3, 'left', 'menu trên cùng', NULL, '1'),
(4, 'right', 'menu right', NULL, '0'),
(5, 'bottom', 'menu chân trang', NULL, '1'),
(6, 'tag', 'menu tag', NULL, '0'),
(7, 'bottom_2', 'menu bottom 2', NULL, '0'),
(8, 'bottom_3', 'menu bottom 3', NULL, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `comment` text CHARACTER SET utf8,
  `mark` tinyint(1) DEFAULT '0',
  `show` tinyint(1) DEFAULT '0',
  `time` int(11) DEFAULT NULL,
  `cat_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `full_name`, `phone`, `email`, `address`, `city`, `country`, `comment`, `mark`, `show`, `time`, `cat_name`) VALUES
(16, 'phạm hương', '0943434389', 'phamhoa@gmail.com', NULL, NULL, NULL, 'thông tin sản phẩm', 0, 1, 1522810591, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` char(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `birthday` int(11) UNSIGNED DEFAULT NULL,
  `gender` tinyint(3) UNSIGNED DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `province` int(11) UNSIGNED DEFAULT NULL,
  `district` int(11) UNSIGNED DEFAULT NULL,
  `ward` int(10) UNSIGNED DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `tax_code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `note` text CHARACTER SET utf8,
  `user_id` int(11) DEFAULT NULL,
  `payment` int(11) DEFAULT NULL,
  `date` char(30) COLLATE utf8_bin DEFAULT NULL,
  `time` char(20) COLLATE utf8_bin DEFAULT NULL,
  `date_time` int(11) DEFAULT NULL,
  `wallet` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `code`, `phone`, `email`, `birthday`, `gender`, `address`, `place`, `province`, `district`, `ward`, `company`, `tax_code`, `note`, `user_id`, `payment`, `date`, `time`, `date_time`, `wallet`) VALUES
(30, 'Thẩm Hải Văn', 'KH30', '0976834543', 'qts@info.mail', 1, 1, '', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, '1523519622', NULL, NULL),
(31, 'Lưu Văn Bị', 'KH31', '09657754654', 'lubi@gmail.com', 12, 1, '', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, '1523519669', NULL, NULL),
(33, 'Khách lẻ', 'KHACHLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer_debt`
--

CREATE TABLE `customer_debt` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `id_create` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `nkd` float(22,0) DEFAULT '0',
  `ghino` float(22,0) DEFAULT '0',
  `ghico` float(22,0) DEFAULT '0',
  `nkc` float(22,0) DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `date_time` int(11) DEFAULT NULL,
  `time_insert` int(11) DEFAULT NULL,
  `note` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `customer_debt`
--

INSERT INTO `customer_debt` (`id`, `id_customer`, `id_create`, `code`, `nkd`, `ghino`, `ghico`, `nkc`, `type`, `date_time`, `time_insert`, `note`) VALUES
(25, 33, 2, 'HD208', 0, 450000, 0, 450000, 'Bán hàng', 1523552400, 1523603853, 0),
(26, 33, 2, 'HD209', 450000, 400000, 0, 850000, 'Bán hàng', 1523552400, 1523603975, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `debt_supplier`
--

CREATE TABLE `debt_supplier` (
  `id` int(11) NOT NULL,
  `nkd` float(22,0) DEFAULT '0',
  `ghino` float(22,0) DEFAULT NULL,
  `ghico` float(22,0) DEFAULT NULL,
  `nkc` float(22,0) DEFAULT NULL,
  `id_ncc` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `pre` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `provinceid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `district`
--

INSERT INTO `district` (`id`, `name`, `pre`, `provinceid`) VALUES
(106, 'Bến Lức', 'Huyện', 8),
(121, 'Bắc Trà My', 'Huyện', 9),
(139, 'Bà Rịa', 'Thị xã', 10),
(147, 'Buôn Đôn', 'Huyện', 11),
(162, ' Thới Lai', 'Huyện', 12),
(171, 'Bắc Bình', 'Huyện', 13),
(181, 'Bảo Lâm', 'Huyện', 14),
(193, 'A Lưới', 'Huyện', 15),
(202, 'An Biên', 'Huyện', 16),
(217, 'Bắc Ninh', 'Thành phố', 17),
(225, 'Ba Chẽ', 'Huyện', 18),
(239, 'Bá Thước', 'Huyện', 19),
(266, 'Anh Sơn', 'Huyện', 20),
(287, 'Bình Giang', 'Huyện', 21),
(299, 'An Khê', 'Thị xã', 22),
(316, 'Bình Long', 'Thị xã', 23),
(327, 'Ân Thi', 'Huyện', 24),
(337, 'An Lão', 'Huyện', 25),
(348, 'Cái Bè', 'Huyện', 26),
(359, 'Đông Hưng', 'Huyện', 27),
(367, 'Bắc Giang', 'Thành phố', 28),
(377, 'Cao Phong', 'Huyện', 29),
(388, 'An Phú', 'Huyện', 30),
(399, 'Bình Xuyên', 'Huyện', 31),
(408, 'Bến Cầu', 'Huyện', 32),
(417, 'Đại Từ', 'Huyện', 33),
(426, 'Bắc Hà', 'Huyện', 34),
(435, 'Giao Thủy', 'Huyện', 35),
(445, 'Ba Tơ', 'Huyện', 36),
(459, 'Ba Tri', 'Huyện', 37),
(468, 'Cư Jút', 'Huyện', 38),
(476, 'Cà Mau', 'Thành phố', 39),
(485, 'Bình Minh', 'Huyện', 40),
(493, 'Gia Viễn', 'Huyện', 41),
(501, 'Cẩm Khê', 'Huyện', 42),
(514, 'Bác Ái', 'Huyện', 43),
(521, 'Đông Hòa', 'Huyện', 44),
(530, 'Bình Lục', 'Huyện', 45),
(536, 'Cẩm Xuyên', 'Huyện', 46),
(548, 'Cao Lãnh', 'Thành phố', 47),
(560, 'Châu Thành', 'Huyện', 48),
(571, 'Đăk Glei', 'Huyện', 49),
(581, 'Ba Đồn', 'Thị xã', 50),
(589, 'Cam Lộ', 'Huyện', 51),
(599, 'Càng Long', 'Huyện', 52),
(607, 'Châu Thành', 'Huyện', 53),
(614, 'Bắc Yên', 'Huyện', 54),
(626, 'Bạc Liêu', 'Thành phố', 55),
(633, 'Lục Yên', 'Huyện', 56),
(642, 'Chiêm Hóa', 'Huyện', 57),
(649, 'Điện Biên', 'Huyện', 58),
(659, 'Lai Châu', 'Thị xã', 59),
(678, 'Bắc Mê', 'Huyện', 61),
(689, 'Ba Bể', 'Huyện', 62),
(697, 'Bảo Lạc', 'Huyện', 63);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `document`
--

CREATE TABLE `document` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `description` text CHARACTER SET utf8,
  `sort` int(3) DEFAULT NULL,
  `lang` char(10) CHARACTER SET utf8 DEFAULT '1',
  `active` int(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `document`
--

INSERT INTO `document` (`id`, `name`, `parent_id`, `description`, `sort`, `lang`, `active`) VALUES
(1, 'Hướng dẫn tổng quan về quản trị website', 0, '<p><a href=\"http://giaodiendep.vn/huongdan/\">Xem video hướng dẫn</a></p>\r\n', 1, 'vi', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `emails`
--

CREATE TABLE `emails` (
  `id` int(11) NOT NULL,
  `email` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `target` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL,
  `sort` int(3) DEFAULT NULL,
  `cate` int(4) DEFAULT '0',
  `lang` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `content` text CHARACTER SET utf8
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `type`, `url`, `title`, `target`, `name`, `image`, `id_item`, `sort`, `cate`, `lang`, `content`) VALUES
(324, 'banner', '', 'Giảm giá', '_self', NULL, 'upload/img/banner/banner12.png', NULL, 2, 0, 'vi', '<p>Chương tr&igrave;nh Black Friday của THẢO DƯỢC QU&Acirc;N Y 103&nbsp;</p>\r\n'),
(325, 'banner', '', 'Thảo dược quân Y 103', '_self', NULL, 'upload/img/banner/banner11.png', NULL, 1, 0, 'vi', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inuser`
--

CREATE TABLE `inuser` (
  `id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `hot` int(11) DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `alias` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` char(10) COLLATE utf8_unicode_ci DEFAULT '1',
  `tag` text COLLATE utf8_unicode_ci,
  `time` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `home` int(11) DEFAULT NULL,
  `focus` int(11) DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_seo` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inuser_category`
--

CREATE TABLE `inuser_category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `home` int(11) DEFAULT NULL,
  `focus` int(11) DEFAULT NULL,
  `hot` int(11) DEFAULT NULL,
  `tour` int(11) DEFAULT NULL,
  `sort` int(5) DEFAULT '1',
  `lang` char(10) COLLATE utf8_unicode_ci DEFAULT '1',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `inuser_category`
--

INSERT INTO `inuser_category` (`id`, `name`, `alias`, `description`, `image`, `parent_id`, `home`, `focus`, `hot`, `tour`, `sort`, `lang`, `title`, `link_website`) VALUES
(30, 'Mr. Director', 'mr-director', '<p>And here&#39;s some amazing content. It&#39;s very engaging. Right?<br />\r\nAnd here&#39;s some amazing content. It&#39;s very engaging. Right?</p>\r\n\r\n<p>And here&#39;s some amazing content. It&#39;s very engaging. Right?</p>\r\n', 'upload/img/inuser/about1.png', 0, 1, NULL, NULL, NULL, 6, 'vi', 'Manager director', NULL),
(31, '山田 太郎', '', '<p>&nbsp;</p>\r\n\r\n<p>And here&#39;s some amazing content. It&#39;s very engaging. Right? And here&#39;s some amazing content. It&#39;s very engaging. Right? And here&#39;s some amazing content. It&#39;s very engaging. Right?</p>\r\n', 'upload/img/inuser/pn3.png', 0, 1, NULL, NULL, NULL, 5, 'en', 'demo2', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inuser_to_category`
--

CREATE TABLE `inuser_to_category` (
  `id` int(11) NOT NULL,
  `id_inuser` int(11) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `date` char(30) DEFAULT NULL,
  `time` char(20) DEFAULT NULL,
  `datetime` int(11) DEFAULT NULL,
  `timeupdate` int(11) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_code` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(255) DEFAULT NULL,
  `customer_address` varchar(255) DEFAULT NULL,
  `customer_place` varchar(255) DEFAULT NULL,
  `customer_ward` varchar(255) DEFAULT NULL,
  `customer_birthday` char(30) DEFAULT NULL,
  `user_create` int(11) DEFAULT NULL,
  `user_sale` int(11) DEFAULT NULL,
  `note` text,
  `total_price` int(11) DEFAULT '0',
  `price_sale` int(11) DEFAULT '0',
  `customer_pay` int(11) DEFAULT '0',
  `customer_payted` int(11) DEFAULT '0',
  `price_return` int(11) DEFAULT '0',
  `price_returned` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT NULL,
  `time_buy` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `sale` int(11) DEFAULT '0',
  `debt` int(11) DEFAULT '0',
  `nkd` float DEFAULT '0',
  `nkc` float DEFAULT '0',
  `refund` int(11) DEFAULT NULL,
  `usersale_name` varchar(255) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0' COMMENT '0 : bán hàng / 1 trả hàng'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `invoices`
--

INSERT INTO `invoices` (`id`, `code`, `date`, `time`, `datetime`, `timeupdate`, `customer`, `customer_id`, `customer_name`, `customer_code`, `customer_email`, `customer_phone`, `customer_address`, `customer_place`, `customer_ward`, `customer_birthday`, `user_create`, `user_sale`, `note`, `total_price`, `price_sale`, `customer_pay`, `customer_payted`, `price_return`, `price_returned`, `status`, `time_buy`, `count`, `sale`, `debt`, `nkd`, `nkc`, `refund`, `usersale_name`, `type`) VALUES
(209, 'HD209', '13/04/2018', '14:19', 1523552400, 1523603975, NULL, 33, 'Khách lẻ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, ' test đơn hàng', 400000, 0, 400000, 0, 0, 0, 1, 1523603975, 5, 0, 400000, 450000, 850000, 0, NULL, 0),
(212, 'HD212', '13/04/2018', '15:39', 1523552400, 1523606629, NULL, 33, 'Khách lẻ', 'KHACHLE', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '', 400000, NULL, 400000, 400000, 0, 0, 1, 1523606629, 1, 0, 0, 0, 0, NULL, 'Admin ', 0),
(213, 'HD213', '13/04/2018', '15:24', 1523552400, 1523607051, NULL, 33, 'Khách lẻ', 'KHACHLE', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '', 400000, NULL, 400000, 400000, 0, 0, 1, 1523607051, 1, 0, 0, 0, 0, NULL, 'Admin ', 0),
(208, 'HD208', '13/04/2018', '14:17', 1523552400, 1523603853, NULL, 33, 'Khách lẻ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 'agdasgdsagdsagdsag', 450000, 0, 450000, 0, 0, 0, 1, 1523603853, 2, 0, 450000, 0, 450000, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoices_detail`
--

CREATE TABLE `invoices_detail` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `price` int(11) DEFAULT '0',
  `price_sale` int(11) DEFAULT '0',
  `price_imp` int(11) DEFAULT '0' COMMENT 'Giá Vốn của sản phẩm thời điểm tạo hoá đơn',
  `price_return_imp` int(11) DEFAULT '0',
  `price_return` int(11) DEFAULT '0' COMMENT 'Giá sp khi khách trả hàng',
  `qty_return` int(11) DEFAULT '0',
  `sale` int(11) DEFAULT '0',
  `inv_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `invoices_detail`
--

INSERT INTO `invoices_detail` (`id`, `name`, `code`, `quantity`, `price`, `price_sale`, `price_imp`, `price_return_imp`, `price_return`, `qty_return`, `sale`, `inv_id`, `product_id`) VALUES
(328, 'Áo Len L06', 'HH185', 1, 400000, 400000, 500000, 0, 0, 0, 0, 213, 185),
(327, 'Áo Len L06', 'HH185', 1, 400000, 400000, 500000, 0, 0, 0, 0, 212, 185),
(326, 'Áo Len L06', 'HH185', 5, 650000, 400000, 500000, 0, 0, 0, 0, 209, 185),
(325, 'Áo Len L07', 'HH186', 2, 550000, 450000, 100000, 0, 0, 0, 0, 208, 186);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoanggia`
--

CREATE TABLE `khoanggia` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_price` int(11) DEFAULT NULL,
  `to_price` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khoanggia`
--

INSERT INTO `khoanggia` (`id`, `name`, `from_price`, `to_price`, `sort`) VALUES
(1, 'Dưới 100k', 0, 100000, 1),
(2, 'Từ 100k - 200k', 100000, 200000, 2),
(3, 'Từ 200k - 500k', 200000, 500000, 3),
(4, 'Từ 500k - 1 tr', 500000, 1000000, 4),
(5, 'Từ 1 tr - 2 triệu', 1000000, 2000000, 5),
(6, 'Từ 2 tr - 3 triệu', 2000000, 3000000, 6),
(7, 'Từ 3 tr - 5 triệu', 3000000, 5000000, 7),
(8, 'Từ 5 tr - 8 triệu', 5000000, 8000000, 8),
(9, 'Từ 8 tr - 10 triệu', 8000000, 10000000, 9),
(10, 'Từ 10 tr - 15 triệu', 10000000, 15000000, 10),
(11, 'Trên 15 triệu', 15000000, 2147483647, 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `alias` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `language`
--

INSERT INTO `language` (`id`, `alias`, `name`) VALUES
(1, 'vi', 'Tiếng Việt'),
(2, 'en', 'English');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `map_shopping`
--

CREATE TABLE `map_shopping` (
  `id` int(11) NOT NULL,
  `title` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `tim_kiem` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `toa_domap` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `toa_dohienthi` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `diachi_shop` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` char(150) CHARACTER SET utf8 DEFAULT NULL,
  `lang` char(10) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `map_shopping`
--

INSERT INTO `map_shopping` (`id`, `title`, `tim_kiem`, `toa_domap`, `toa_dohienthi`, `diachi_shop`, `phone`, `lang`) VALUES
(2, 'Chi nhánh camera siêu net tại Hà Nội', '168 Nguyễn Tuân - Thanh Xuân Hà Nội', '(20.998863, 105.80291809999994)', '20.998863, 105.80291809999994', '168 Nguyễn Tuân - Thanh Xuân Hà Nội', '0918.041616 - 0987.041616', 'vi'),
(5, 'Chi nhánh camera siêu net tại Hải Phòng', '52 Lê Quang Đạo - Nam Từ Liêm - Hà Nội', '', '', 'Số 66, Trường Chinh, Kiến An, Hải Phòng', '031 3603208', 'vi'),
(6, 'Chi nhánh camera siêu net tại TP. HCM', 'Tp HCM', '(10.7764745, 106.70088310000006)', '10.7764745, 106.70088310000006', '212/58 Thoại Ngọc Hầu, P. Phú Thạnh, Q. Tân Phú, TP. HCM', '08 39722693', 'vi'),
(7, 'Chi nhánh camera siêu net tại Yên Bái', 'Yên Bái', '(21.6837923, 104.4551361)', '21.6837923, 104.4551361', '168 Nguyễn Tuân - Yên Bái', '0918.041616 - 0987.041616', 'vi'),
(11, 'cừa hàng thời trang', 'cua hang so 23 ngo 229 cầu giấy hà nội', '(21.0477839, 105.79456129999994)', '21.0477839, 105.79456129999994', 'cua hang so 23 ngo 229 cầu giấy hà nội', '0988787654', 'vi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `content` text CHARACTER SET utf8,
  `title_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `keyword_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `lang` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `home` tinyint(1) DEFAULT NULL,
  `hot` tinyint(1) DEFAULT NULL,
  `focus` tinyint(1) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `image` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `alias` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media_category`
--

CREATE TABLE `media_category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `home` tinyint(1) DEFAULT NULL,
  `focus` tinyint(1) DEFAULT NULL,
  `coupon` tinyint(1) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `title_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description_seo` text CHARACTER SET utf8,
  `keyword_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `lang` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8,
  `parent_id` int(11) DEFAULT NULL,
  `hot` tinyint(1) DEFAULT NULL,
  `left_right` int(11) NOT NULL,
  `pro_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media_images`
--

CREATE TABLE `media_images` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `url` char(200) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seturl` tinyint(2) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `module` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `home` tinyint(1) DEFAULT '0',
  `lang` char(10) COLLATE utf8_unicode_ci DEFAULT '1',
  `view_type` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style` int(1) DEFAULT NULL,
  `level` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `name`, `url`, `image`, `alias`, `position`, `target`, `seturl`, `parent_id`, `description`, `module`, `cat_id`, `sort`, `home`, `lang`, `view_type`, `style`, `level`) VALUES
(116, 'Tại sao chọn EFA', 'page/gioi-thieu.html', NULL, 'tai-sao-chon-efa', 'main', '', NULL, 0, '', 'pages', 0, 0, 0, 'vi', NULL, NULL, 0),
(117, 'Chương trình đạo tạo', 'danh-muc/chuong-trinh-dao-tao.html', NULL, 'chuong-trinh-dao-tao', 'main', '', NULL, 0, '', 'products', 103, 1, 0, 'vi', NULL, NULL, 0),
(118, 'Tiện ích', 'danh-muc-tin/thong-tin-khuyen-mai.html', NULL, 'tien-ich', 'main', '', NULL, 0, '', 'news', 0, 2, 0, 'vi', NULL, NULL, 0),
(120, 'Hệ thống trung tâm', 'danh-muc-tin/tin-tuc-hoat-dong.html', NULL, 'he-thong-trung-tam', 'main', '', NULL, 0, '', 'news', 0, 3, 0, 'vi', NULL, NULL, 0),
(121, 'Hoạt động ngoại khóa', 'lien-he', NULL, 'hoat-dong-ngoai-khoa', 'main', '', NULL, 0, '', '0', 0, 4, 0, 'vi', NULL, NULL, 0),
(122, 'Tin tức, hoạt động', 'danh-muc-tin/tin-tuc-hoat-dong.html', NULL, 'tin-tuc-hoat-dong', 'left', '', NULL, 0, '', 'news', 15, 0, 0, 'vi', NULL, NULL, 0),
(123, 'Khuyến mại, ưu đãi', 'danh-muc-tin/khuyen-mai-uu-dai.html', NULL, 'khuyen-mai-uu-dai', 'left', '', NULL, 0, '', 'news', 16, 1, 0, 'vi', NULL, NULL, 0),
(125, 'Chính sách bán hàng', 'page/chinh-sach-ban-hang.html', NULL, 'chinh-sach-ban-hang', 'bottom', '', NULL, 0, '', 'pages', 0, 0, 0, 'vi', NULL, NULL, 0),
(126, 'Chinh sách bảo mật thông tin', 'page/chinh-sach-bao-mat-thong-tin-kh.html', NULL, 'chinh-sach-bao-mat-thong-tin', 'bottom', '', NULL, 0, '', 'pages', 0, 1, 0, 'vi', NULL, NULL, 0),
(127, 'Chính sách dịch vụ', 'page/chinh-sach-dich-vu.html', NULL, 'chinh-sach-dich-vu', 'bottom', '', NULL, 0, '', 'pages', 0, 2, 0, 'vi', NULL, NULL, 0),
(128, 'Chính sách thanh toán', 'page/chinh-sach-thanh-toan.html', NULL, 'chinh-sach-thanh-toan', 'bottom', '', NULL, 0, '', 'pages', 0, 3, 0, 'vi', NULL, NULL, 0),
(131, 'Tiếng anh giao tiếp', 'danh-muc/tieng-anh-giao-tiep.html', NULL, 'tieng-anh-giao-tiep', 'main', '', NULL, 117, '', 'products', 114, 3, 0, 'vi', NULL, NULL, 0),
(132, 'Tiếng anh thiếu niên', 'danh-muc/tieng-anh-thieu-nien.html', NULL, 'tieng-anh-thieu-nien', 'main', '', NULL, 117, '', 'products', 113, 2, 0, 'vi', NULL, NULL, 0),
(133, 'Tiếng anh thiếu nhi', 'danh-muc/tieng-anh-thieu-nhi.html', NULL, 'tieng-anh-thieu-nhi', 'main', '', NULL, 117, '', 'products', 112, 1, 0, 'vi', NULL, NULL, 0),
(134, 'Tiếng anh mẫu giáo', 'danh-muc/tieng-anh-mau-giao.html', NULL, 'tieng-anh-mau-giao', 'main', '', NULL, 117, '', 'products', 111, 0, 0, 'vi', NULL, NULL, 0),
(138, 'Liện hệ', 'lien-he', NULL, 'lien-he', 'main', '', NULL, 0, '', '0', 0, 5, 0, 'vi', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `hot` int(11) DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `alias` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` char(10) COLLATE utf8_unicode_ci DEFAULT '1',
  `tag` text COLLATE utf8_unicode_ci,
  `time_update` int(8) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `home` int(11) DEFAULT NULL,
  `focus` int(11) DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_seo` text COLLATE utf8_unicode_ci,
  `video` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `button_1` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `hot`, `image`, `content`, `alias`, `lang`, `tag`, `time_update`, `time`, `category_id`, `home`, `focus`, `title_seo`, `keyword_seo`, `description_seo`, `video`, `view`, `active`, `button_1`) VALUES
(28, 'Phụ nữ sau sinh và những điều cần biết', '', NULL, 'upload/img/news/news11.png', '', 'phu-nu-sau-sinh-va-nhung-dieu-can-biet', 'vi', NULL, NULL, 1542038247, 15, 1, NULL, '', '', '', '', 1, 1, 0),
(29, 'Tư vấn Từ Chuyên Gia – PGS Thầy Thuốc Ưu Tú Vũ Mạnh Hùng về Strong Hair', '<p>Theo&nbsp;PGS Thầy Thuốc Ưu T&uacute; Vũ Mạnh H&ugrave;ng&nbsp;th&igrave; t&oacute;c của ch&uacute;ng ta c&oacute; rất nhiều c&aacute;c bệnh l&yacute; kh&aacute;c nhau t&ugrave;y thuộc v&agrave;o độ tuổi giới t&iacute;nh m&agrave; chia th&agrave;nh c&aacute;c ph&aacute;p đồ thời gian điều trị kh&aacute;c nhau.&nbsp;C&aacute;c bạn&nbsp;cần lưu &yacute; c&oacute; 3 giai đoạn&nbsp;bệnh l&yacute; về t&oacute;c ch&iacute;nh như sau:,</p>\r\n', NULL, 'upload/img/news/news1.png', '<p><img alt=\"\" src=\"/upload/images/strong-hair.jpg\" style=\"height:425px; width:728px\" /></p>\r\n\r\n<p><strong>1&nbsp;&ndash; Nh&oacute;m&nbsp;Bệnh&nbsp;L&yacute; Bạc T&oacute;c Sớm.</strong></p>\r\n\r\n<p>T&oacute;c l&agrave; một tổ chức biệt h&oacute;a, một phần phụ của thượng b&igrave; nhiễm chất sừng v&agrave; sắc tố da (Melanin). B&igrave;nh thường tr&ecirc;n 40 tuổi t&oacute;c mới bắt đầu bạc, do mất sắc tố, gốc t&oacute;c bị teo, l&ograve;ng chứa c&aacute;c bọng kh&iacute; g&acirc;y tắc ch&acirc;n t&oacute;c, dẫn đến rụng t&oacute;c dần v&agrave; bạc t&oacute;c. M&agrave;u đen của t&oacute;c l&agrave; biểu hiện của sức khỏe tốt, tinh thần thoải m&aacute;i, nội tiết c&acirc;n bằng, cơ thể được cung cấp đầy đủ c&aacute;c yếu tố vi lượng như đồng, kẽm&hellip; Bạc t&oacute;c ở giai đoạn dưới 40 tuổi được gọi l&agrave; bạc t&oacute;c sớm.</p>\r\n\r\n<p>Nguy&ecirc;n nh&acirc;n ch&iacute;nh như sau :Chế độ ăn uống thiếu c&acirc;n bằng &ndash;&nbsp;Rối loạn tuyến gi&aacute;p v&agrave; tuyến y&ecirc;n &ndash;&nbsp;&nbsp;H&uacute;t thuốc v&agrave; căng thẳng &ndash;&nbsp;Lạm dụng sản phẩm chăm s&oacute;c t&oacute;c &ndash;&nbsp;Do gen di truyền &ndash;&nbsp;&nbsp;Rối loạn nội tiết.</p>\r\n\r\n<p><strong>Liệu tr&igrave;nh hỗ trợ t&oacute;c bạc sớm hiệu quả nhất n&ecirc;n sử dụng&nbsp;Strong&nbsp;Hair từ 4-6 th&aacute;ng.</strong></p>\r\n\r\n<p><em><strong>Lưu &yacute; :&nbsp;&nbsp;</strong>sử dụng strong hair trong qu&aacute; tr&igrave;nh&nbsp; hỗ trợ Trị bạc t&oacute;c sớm đ&ograve;i hỏi qu&aacute; tr&igrave;nh l&acirc;u d&agrave;i với mục đ&iacute;ch cung cấp c&aacute;c dưỡng chất, c&aacute;c yết tố vi lượng gi&uacute;p k&iacute;ch th&iacute;ch t&oacute;c mới mọc l&ecirc;n đen, khỏe mạnh thay đổi m&agrave;u t&oacute;c bạc cũ. V&igrave; vậy c&aacute;c bạn cần tu&acirc;n thủ đ&uacute;ng hướng dẫn trong qu&aacute; tr&igrave;nh sử dụng</em>.</p>\r\n\r\n<p><strong>2&nbsp;&ndash; Nh&oacute;m T&oacute;c Yếu Kh&ocirc; Xơ, Chẻ Ngọn :&nbsp;</strong></p>\r\n\r\n<p>nguy&ecirc;n nh&acirc;n : c&oacute; rất nhiều nguy&ecirc;n nh&acirc;n dẫn đến t&oacute;c kh&ocirc; xơ trong đ&oacute; phải kể đến nguy&ecirc;n nh&acirc;n ch&iacute;nh đ&oacute; l&agrave; :</p>\r\n\r\n<p><em>Gội đầu kh&ocirc;ng đ&uacute;ng c&aacute;ch &ndash;&nbsp;Sử dụng hơi n&oacute;ng để l&agrave;m đẹp &ndash;&nbsp;Lạm dụng h&oacute;a chất &ndash;&nbsp;Qu&aacute; l&acirc;u kh&ocirc;ng tỉa t&oacute;c &ndash;&nbsp;Kh&ocirc;ng bảo vệ t&oacute;c khi đi nắng &ndash;&nbsp;Ngồi điều h&ograve;a thường xuy&ecirc;n &ndash;&nbsp;Chế độ dinh dưỡng kh&ocirc;ng hợp l&iacute;.</em></p>\r\n\r\n<p><strong>&ndash;&nbsp;</strong>Đối với nh&oacute;m bệnh l&yacute; n&agrave;y c&aacute;c bạn n&ecirc;n khắc phục c&aacute;c nguy&ecirc;n nh&acirc;n kể tr&ecirc;n để cải thiện sớm c&aacute;c vấn đề t&oacute;c yếu, kh&ocirc; Xơ, chẻ ngọn. Ngo&agrave;i ra n&ecirc;n sử dụng liệu tr&igrave;nh vi&ecirc;n uống&nbsp;Strong Hair&nbsp;chăm s&oacute;c t&oacute;c từ b&ecirc;n trong để cung cấp c&aacute;c dưỡng chất nu&ocirc;i dưỡng t&oacute;c chắc khỏe.</p>\r\n\r\n<p><strong>Liệu tr&igrave;nh đối với nh&oacute;m bệnh l&yacute; t&oacute;c yếu, kh&ocirc; xơ, chẻ ngọn n&ecirc;n sử dụng&nbsp;Strong hair&nbsp; từ 2-3 th&aacute;ng.</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Lưu &yacute; :&nbsp;</strong>&nbsp;Bệnh l&yacute; về t&oacute;c yếu, kh&ocirc;&nbsp;xơ, chẻ ngọn nếu kh&ocirc;ng chữa triệt để sẽ chuyển sang giai đoạn g&atilde;y dụng kh&oacute; kiểm so&aacute;t g&acirc;y hậu quả nghi&ecirc;m trọng tới sức khỏe t&acirc;m l&yacute; của người mắc phải.&nbsp;</em></li>\r\n</ul>\r\n\r\n<p><strong>3- Nh&oacute;m Bệnh L&yacute;&nbsp;Rụng T&oacute;c.</strong></p>\r\n\r\n<p>Kh&ocirc;ng chỉ ri&ecirc;ng phụ nữ, rụng t&oacute;c cũng l&agrave; nỗi &aacute;m ảnh của đ&agrave;n &ocirc;ng. Rụng t&oacute;c c&oacute; nhiều nguy&ecirc;n nh&acirc;n g&acirc;y ra ngo&agrave;i c&aacute;c nguy&ecirc;n nh&acirc;n của nh&oacute;m 1 như tr&ecirc;n&nbsp; c&ograve;n c&oacute; c&aacute;c nguy&ecirc;n nh&acirc;n&nbsp;ch&iacute;nh như sau:</p>\r\n\r\n<p>Ăn uống mất c&acirc;n bằng, thiếu hụt vitamin B5, biotin &ndash;&nbsp;Mất c&acirc;n bằng nội tiết tố &ndash;&nbsp;Sử dụng thuốc điều trị bệnh &ndash;&nbsp;Tạo qu&aacute; nhiều &aacute;p lực l&ecirc;n t&oacute;c &ndash;&nbsp;Căng thẳng, lo lắng nhiều &ndash;&nbsp;Di truyền &ndash;&nbsp;C&aacute;c bệnh về da đầu .<img alt=\"\" src=\"/upload/images/rambutrontok.jpg\" style=\"height:415px; width:700px\" /></p>\r\n\r\n<p><strong>Liệu tr&igrave;nh tốt nhất đối với nh&oacute;m&nbsp;rụng t&oacute;c n&ecirc;n sử dụng&nbsp;strong hair&nbsp;từ 3 đến 4 th&aacute;ng.</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Lưu &yacute; :</strong>&nbsp;Hỗ Trợ&nbsp;Trị&nbsp;Rụng&nbsp;T&oacute;c sẽ mất nhiều thời gian hơn nh&oacute;m 1 . trong qu&aacute; tr&igrave;nh n&agrave;y&nbsp;c&aacute;c bạn cần tu&acirc;n thủ đ&uacute;ng c&aacute;c vấn đề g&acirc;y t&aacute;c động xấu g&acirc;y tổn thương đến t&oacute;c như uốn, nhuộm, sấy..v..v..</em></li>\r\n</ul>\r\n\r\n<h3>Hướng&nbsp;Dẫn&nbsp;Sử&nbsp;Dụng&nbsp;Strong&nbsp;Hair.</h3>\r\n\r\n<p>STRONG HAIR : 1Hộp 30 vi&ecirc;n</p>\r\n\r\n<p>&ndash; Ng&agrave;y uống 2 vi&ecirc;n/lần x 2 lần/ng&agrave;y. Uống trước bữa ăn 30 ph&uacute;t hoặc sau khi ăn 1 giờ.<br />\r\n&ndash; N&ecirc;n sử dụng li&ecirc;n tục một đợt 2-4 th&aacute;ng.<br />\r\nGP C&Ocirc;NG BỐ:&nbsp;4912/2018/ATTP-XNCB</p>\r\n\r\n<p>Gi&aacute; 1H Strong Hair tại THẢO DƯỢC QU&Acirc;N Y 103 đang KM : 220.000 đ</p>\r\n\r\n<p>1 Liệu tr&igrave;nh 4H: 850.000 đ&nbsp;</p>\r\n\r\n<p>Zalo/Viber: 0966.82.09.79</p>\r\n', 'tu-van-tu-chuyen-gia-pgs-thay-thuoc-uu-tu-vu-manh-hung-ve-strong-hair', 'vi', NULL, NULL, 1542038236, 15, 1, NULL, '', '', '', '', NULL, 1, 0),
(30, 'Các thành phần cấu tạo Gluta', '', NULL, 'upload/img/news/news12.png', '', 'cac-thanh-phan-cau-tao-gluta', 'vi', NULL, NULL, 1542038256, 15, 1, NULL, '', '', '', '', NULL, 1, 0),
(31, 'Chính sách đổi trả và hoàn tiền', '', NULL, 'upload/img/news/news13.png', '', 'chinh-sach-doi-tra-va-hoan-tien', 'vi', NULL, NULL, 1542038265, 15, 1, NULL, '', '', '', '', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_category`
--

CREATE TABLE `news_category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `home` int(11) DEFAULT NULL,
  `focus` int(11) DEFAULT NULL,
  `hot` int(11) DEFAULT NULL,
  `coupon` int(11) DEFAULT NULL,
  `time_update` int(11) DEFAULT NULL,
  `time_start` int(8) DEFAULT NULL,
  `sort` int(5) DEFAULT '1',
  `lang` char(10) COLLATE utf8_unicode_ci DEFAULT '1',
  `title_seo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `description_seo` text COLLATE utf8_unicode_ci,
  `button_view_left` int(11) NOT NULL,
  `button_view_right` int(11) NOT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `news_category`
--

INSERT INTO `news_category` (`id`, `name`, `alias`, `description`, `image`, `parent_id`, `home`, `focus`, `hot`, `coupon`, `time_update`, `time_start`, `sort`, `lang`, `title_seo`, `keyword`, `description_seo`, `button_view_left`, `button_view_right`, `time`) VALUES
(15, 'TIN TỨC & SỰ KIỆN', 'tin-tuc-su-kien', '', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 2, 'vi', '', NULL, '', 0, 0, 1542038205);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_to_category`
--

CREATE TABLE `news_to_category` (
  `id` int(11) NOT NULL,
  `id_news` int(11) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=FIXED;

--
-- Đang đổ dữ liệu cho bảng `news_to_category`
--

INSERT INTO `news_to_category` (`id`, `id_news`, `id_category`) VALUES
(47, 27, 18),
(65, 28, 15),
(66, 30, 15),
(67, 31, 15),
(57, 32, 14),
(58, 32, 17),
(64, 29, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` text CHARACTER SET utf8,
  `phone` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `note` text CHARACTER SET utf8,
  `item_order` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `show` tinyint(1) DEFAULT '0',
  `mark` tinyint(1) DEFAULT '0',
  `admin_note` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `province` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `district` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `ward` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `user_id` decimal(21,0) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `view` tinyint(1) DEFAULT '1',
  `code` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `address2` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `startplaces` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `finishplace` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `mobile` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `fax` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `hot` tinyint(1) DEFAULT NULL,
  `startime` char(30) CHARACTER SET utf8 DEFAULT NULL,
  `endtime` char(30) CHARACTER SET utf8 DEFAULT NULL,
  `home` tinyint(1) DEFAULT NULL,
  `other_note` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `code_sale` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `price_sale` int(10) DEFAULT NULL,
  `approved` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `price_ship` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `fullname`, `address`, `phone`, `email`, `note`, `item_order`, `time`, `show`, `mark`, `admin_note`, `province`, `district`, `ward`, `user_id`, `status`, `view`, `code`, `address2`, `startplaces`, `finishplace`, `mobile`, `fax`, `hot`, `startime`, `endtime`, `home`, `other_note`, `code_sale`, `price_sale`, `approved`, `total_price`, `price_ship`, `invoice_id`) VALUES
(15, 'Nguyễn Văn Dương', 'Hà Nội', '010101010101', 'duongnv@fimo.edu.vn', NULL, NULL, 1540007412, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 'DH_2015', NULL, 'Chuyển khoản qua máy ATM & Ngân hàng', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(16, 'Nguyễn Văn Dương', 'Hà Nội', '0963719570', 'duongnv@fimo.edu.vn', NULL, NULL, 1540032539, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 'DH_2016', NULL, 'Chuyển khoản qua máy ATM & Ngân hàng', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(17, 'Nguyễn Văn Dương', 'Hà Nội', '0963719570', 'duongnv@fimo.edu.vn', NULL, NULL, 1540033003, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 'DH_2017', NULL, 'Chuyển khoản qua máy ATM & Ngân hàng', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 30000, NULL),
(18, 'Nguyễn Văn Dương', 'Hà Nội', '0963719570', 'duongnv@fimo.edu.vn', NULL, NULL, 1540033697, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 'DH_2018', NULL, 'Chuyển khoản qua máy ATM & Ngân hàng', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 280000, 30000, NULL),
(19, 'Nguyễn Văn Dương', 'Hà Nội', '963719570', 'vanduong0090@gmail.com', NULL, NULL, 1540034087, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 'DH_2019', NULL, 'Chuyển khoản qua máy ATM & Ngân hàng', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45000, 30000, NULL),
(20, 'Nguyễn Văn Dương', 'Hà Nội', '963719570', 'vanduong0090@gmail.com', NULL, NULL, 1540034239, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 'DH_2020', NULL, 'Chuyển khoản qua máy ATM & Ngân hàng', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 220000, 30000, NULL),
(21, 'Trần Đức Thiện', '72 CMT8, P.Quyết Thắng, TP.Biên Hoà', '0909467827', 'thienbvdn@gmail.com', NULL, NULL, 1541816553, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 'DH_1021', NULL, 'Chuyển khoản qua máy ATM & Ngân hàng', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 900000, 30000, NULL),
(22, 'Truong Quang Hung', '29/52 Doan Thi Diem,phuong 1, Quan PhuNhuan', '0932033486', 'tqghung@gmail.com', NULL, NULL, 1541852458, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 'DH_1022', NULL, 'Chuyển khoản qua máy ATM & Ngân hàng', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 520000, 30000, NULL),
(23, 'Đặng Hồng Doan', '21 ngõ 1A8, đường Vũ Hựu, khu 7, Phường Thanh Bình, TP Hải Dương', '0982 259066', 'Danghongdoan@gmai.com', NULL, NULL, 1541937302, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 1, 'DH_1123', NULL, 'Chuyển khoản qua máy ATM & Ngân hàng', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1080000, 30000, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_item`
--

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL,
  `order_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` int(50) DEFAULT NULL,
  `price` int(100) DEFAULT NULL,
  `t_option` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `initierary` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_start` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hotel` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tour_type` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `person` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_end` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `pro_dir` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `alias` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `order_item`
--

INSERT INTO `order_item` (`id`, `order_id`, `item_id`, `count`, `price`, `t_option`, `initierary`, `date_start`, `hotel`, `room`, `tour_type`, `person`, `date_end`, `subtotal`, `pro_dir`, `name`, `price_sale`, `alias`, `image`) VALUES
(18, '15', '224', 1, 15000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 75000, 19102018, 'TRÀ GIẢM CÂN SLIMOMAX HỌC VIỆN QUÂN Y HỖ TRỢ GIẢM BÉO', 75000, 'tra-giam-can-slimomax-hoc-vien-quan-y-ho-tro-giam-beo', 'tra-giam-can-slimomax-hoc-vien-quan-y-ho-tro-giam-beo-71-copy.jpg'),
(19, '16', '224', 1, 15000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 75000, 19102018, 'TRÀ GIẢM CÂN SLIMOMAX HỌC VIỆN QUÂN Y HỖ TRỢ GIẢM BÉO', 75000, 'tra-giam-can-slimomax-hoc-vien-quan-y-ho-tro-giam-beo', 'tra-giam-can-slimomax-hoc-vien-quan-y-ho-tro-giam-beo-71-copy.jpg'),
(20, '17', '228', 1, 350000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 280000, 19102018, 'Nano Fucomin Học Viện Quân Y', 280000, 'nano-fucomin-hoc-vien-quan-y', 'nano-fucomin-hvqy5-copy.jpg'),
(21, '18', '228', 1, 350000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 280000, 19102018, 'Nano Fucomin Học Viện Quân Y', 280000, 'nano-fucomin-hoc-vien-quan-y', 'nano-fucomin-hvqy5-copy.jpg'),
(22, '19', '209', 1, 55000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45000, 16102018, 'Trà Dahatala Học viện Quân Y hỗ trợ điều trị bệnh tiểu đường', 45000, 'tra-dahatala-hoc-vien-quan-y-ho-tro-dieu-tri-benh-tieu-duong', 'tra-dahatala-hoc-vien-quan-y-ho-tro-dieu-tri-benh-tieu-duong-63-1.jpg'),
(23, '20', '206', 1, 3200000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 220000, 19102018, 'Strong Hair - Học Viện Quân Y', 220000, 'strong-hair-hoc-vien-quan-y', 'img-1800.PNG'),
(24, '21', '206', 5, 320000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 900000, 19102018, 'Strong Hair - Học Viện Quân Y', 180000, 'strong-hair-hoc-vien-quan-y', 'img-1800.PNG'),
(25, '22', '211', 4, 275000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 520000, 21102018, 'THANH ĐƯỜNG GAMOSA - Học viện Quân Y - Ổn định Tiểu Đường - Giảm biến chứng Tiểu Đường', 130000, 'thanh-duong-gamosa-hoc-vien-quan-y-on-dinh-tieu-duong-giam-bien-chung-tieu-duong', '0636305318675185584.jpg'),
(26, '23', '206', 6, 320000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1080000, 19102018, 'Strong Hair - Học Viện Quân Y', 180000, 'strong-hair-hoc-vien-quan-y', 'img-1800.PNG');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `places`
--

CREATE TABLE `places` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8,
  `lang` char(10) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `places`
--

INSERT INTO `places` (`id`, `name`, `description`, `lang`) VALUES
(3, 'Osaka', '', NULL),
(2, 'Tokyo', '', NULL),
(4, 'Kanazawa', '', NULL),
(5, 'Shirakawa-go', '', NULL),
(6, 'Nagano', '', NULL),
(7, 'Kobe', '', NULL),
(8, 'Hakuba', '', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `style` int(11) DEFAULT NULL,
  `id_value` int(11) DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hot` tinyint(1) DEFAULT NULL,
  `home` tinyint(1) DEFAULT NULL,
  `focus` tinyint(1) DEFAULT NULL,
  `coupon` tinyint(1) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `price` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `description_seo` text COLLATE utf8_unicode_ci,
  `location` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `note` text COLLATE utf8_unicode_ci,
  `like` int(11) DEFAULT '0',
  `order` decimal(21,0) DEFAULT '0',
  `category_id` int(11) DEFAULT NULL,
  `caption_1` text COLLATE utf8_unicode_ci,
  `caption_2` text COLLATE utf8_unicode_ci,
  `locale` int(11) DEFAULT NULL,
  `bought` int(11) DEFAULT '0',
  `dksudung` text COLLATE utf8_unicode_ci,
  `sort` int(10) DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `counter` int(11) DEFAULT '0',
  `lang` char(10) COLLATE utf8_unicode_ci DEFAULT 'vi',
  `destination` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(8) DEFAULT NULL,
  `tags` text COLLATE utf8_unicode_ci,
  `pro_dir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multi_image` text COLLATE utf8_unicode_ci,
  `img_dir` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `quaranty` tinyint(3) DEFAULT NULL,
  `tinhtrang` tinyint(1) DEFAULT NULL,
  `group_attribute_id` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `button_color1` int(11) NOT NULL,
  `config_pro` text COLLATE utf8_unicode_ci NOT NULL,
  `config_pro_content` text COLLATE utf8_unicode_ci NOT NULL,
  `price_imp` int(11) DEFAULT NULL,
  `writer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provinceid` int(11) DEFAULT NULL,
  `order_qty` int(11) DEFAULT NULL,
  `product_hangsx` int(11) DEFAULT NULL,
  `hangsx_id` int(11) DEFAULT NULL,
  `caption_3` text COLLATE utf8_unicode_ci,
  `downloaded` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `detric` int(11) DEFAULT NULL,
  `coupun` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `style`, `id_value`, `brand`, `name`, `code`, `alias`, `image`, `hot`, `home`, `focus`, `coupon`, `view`, `active`, `price`, `price_sale`, `description`, `description_seo`, `location`, `title_seo`, `keyword_seo`, `detail`, `note`, `like`, `order`, `category_id`, `caption_1`, `caption_2`, `locale`, `bought`, `dksudung`, `sort`, `quantity`, `counter`, `lang`, `destination`, `time`, `tags`, `pro_dir`, `multi_image`, `img_dir`, `status`, `quaranty`, `tinhtrang`, `group_attribute_id`, `color`, `size`, `user_id`, `option_id`, `button_color1`, `config_pro`, `config_pro_content`, `price_imp`, `writer`, `address`, `provinceid`, `order_qty`, `product_hangsx`, `hangsx_id`, `caption_3`, `downloaded`, `number`, `detric`, `coupun`, `content`) VALUES
(206, NULL, NULL, 0, 'Strong Hair - Học Viện Quân Y', '', 'strong-hair-hoc-vien-quan-y', 'img-1800.PNG', 1, 1, 1, NULL, NULL, 1, 320000, 220000, '<h2>Strong Hair - Học Viện Qu&acirc;n Y</h2>\r\n\r\n<h2><strong>Strong Hair HVQY&nbsp;</strong>nghi&ecirc;n cứ v&agrave; b&agrave;o chế từ c&aacute;c th&agrave;nh phần dược liệu tự nhi&ecirc;n c&oacute; t&aacute;c dụng tăng cường nu&ocirc;i dưỡng t&oacute;c ngăn hư tổn, đẩy nhanh mọc t&oacute;c, ngăn chặn v&agrave; phục hồi t&oacute;c bạc sớm gi&uacute;p m&aacute;i t&oacute;c của bạn trở n&ecirc;n khỏe mạnh&nbsp; hơn.</h2>\r\n', 'Strong Hair Học viện quân y', NULL, 'Strong Hair Học viện quân y', 'Strong Hair Học viện quân y', NULL, NULL, 0, '0', 83, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 1, 0, NULL, 'vi', NULL, 1541996421, '', '19102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>RỤNG T&Oacute;C - Nỗi &aacute;m ảnh kinh ho&agrave;ng<br />\r\n&nbsp;&ldquo; C&aacute;i răng c&aacute;i t&oacute;c l&agrave; gốc con người &rdquo; l&agrave; c&acirc;u n&oacute;i nổi tiếng của &ocirc;ng b&agrave; ch&uacute;ng ta từ xa xưa v&agrave; đ&uacute;ng vậy, ai trong số ch&uacute;ng ta cũng muốn sở hữu cho m&igrave;nh một m&aacute;i t&oacute;c đẹp, khỏe mạnh bồng bềnh, đặc biệt với chị em phụ nữ. Tuy nhi&ecirc;n, kh&ocirc;ng phải bất k&igrave; ai cũng may mắn c&oacute; được một m&aacute;i t&oacute;c như &yacute; muốn, nhiều người thường gặp phải vấn đề về rụng t&oacute;c, t&oacute;c yếu, h&oacute;i đầu hay bạc sớm l&agrave;m họ trở n&ecirc;n tự ti hơn trong giao tiếp v&agrave; cảm gi&aacute;c &aacute;m ảnh đeo b&aacute;m mỗi khi ra ngo&agrave;i.<br />\r\n&nbsp;Khoa học đ&atilde; chứng minh c&oacute; rất nhiều nguy&ecirc;n nh&acirc;n dẫn tới t&igrave;nh trạng tr&ecirc;n như căng thẳng k&eacute;o d&agrave;i, chế độ dinh dưỡng kh&ocirc;ng c&acirc;n đối, vi&ecirc;m da đầu hoặc mắc một số bệnh l&yacute; kh&aacute;c như cường gi&aacute;p, suy gi&aacute;p hay ung bướu.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/OK3.jpg\" style=\"height:589px; width:1303px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/OK1(2).jpg\" style=\"height:393px; width:800px\" /></p>\r\n\r\n<h2>V&igrave; sao n&ecirc;n sử dụng Vi&ecirc;n uống Stronghair</h2>\r\n\r\n<p>Tr&ecirc;n thị trường c&oacute; đến h&agrave;ng trăm sản phẩm được g&aacute;n với m&aacute;c &ldquo;điều trị rụng t&oacute;c, k&iacute;ch th&iacute;ch mọc t&oacute;c&rdquo; nhưng v&igrave; sao ch&uacute;ng t&ocirc;i khuy&ecirc;n người bệnh n&ecirc;n sử dụng <strong>Vi&ecirc;n uống Strong Hair HVQY</strong></p>\r\n\r\n<p><strong>1.&nbsp;</strong>L&agrave; b&agrave;i thuốc Y Học Cổ Truyền độc đ&aacute;o từ c&aacute;c thảo dược qu&yacute; của Việt Nam. Thừa hưởng v&agrave; ph&aacute;t huy tinh t&uacute;y những c&ocirc;ng thức cổ truyền ưu việt.</p>\r\n\r\n<p>2. Sản phẩm hội tụ những th&agrave;nh phần nguy&ecirc;n liệu đặc biệt t&aacute;c dụng chuy&ecirc;n s&acirc;u c&ugrave;ng c&ocirc;ng nghệ sản xuất hiện đại nhất.</p>\r\n\r\n<p>3. Đ&atilde; được thử nghiệm l&acirc;m s&agrave;ng v&agrave; theo d&otilde;i tr&ecirc;n bệnh nh&acirc;n nhiều năm cho thấy kết quả rất hiệu quả tr&ecirc;n bệnh nh&acirc;n tiểu đường, an to&agrave;n kh&ocirc;ng t&aacute;c dụng phụ.</p>\r\n\r\n<p>4. C&aacute;c dược liệu được nu&ocirc;i trồng theo ti&ecirc;u chuẩn GAP v&agrave; được xử l&iacute; sạch trước khi sản xuất. Sản xuất theo c&ocirc;ng nghệ ti&ecirc;n tiến đạt ti&ecirc;u chuẩn GMP- WHO.</p>\r\n\r\n<p>5. Được cấp ph&eacute;p của Bộ Y tế Việt Nam, được c&aacute;c chuy&ecirc;n gia, c&aacute;c nh&agrave; khoa học h&agrave;ng đầu Việt Nam đ&aacute;nh gi&aacute; cao hiệu quả v&agrave; khuy&ecirc;n d&ugrave;ng</p>\r\n\r\n<p>6. Stronghair l&agrave; th&agrave;nh quả của c&ocirc;ng tr&igrave;nh nghi&ecirc;n cứu khoa học hết sức c&ocirc;ng phu bởi c&aacute;c Gi&aacute;o sư đầu ng&agrave;nh của Học viện Qu&acirc;n Y theo ng&acirc;n s&aacute;ch nh&agrave; nước. Đ&acirc;y l&agrave; c&ocirc;ng tr&igrave;nh nghi&ecirc;n cứu khoa học c&oacute; gi&aacute; trị thực tiễn cao, l&agrave; c&ocirc;ng sức nghi&ecirc;n cứu nhiều năm.</p>\r\n\r\n<h2>Th&agrave;nh phần c&oacute; trong vi&ecirc;n uống Stronghair</h2>\r\n\r\n<p>Trong mỗi <strong>vi&ecirc;n uống Strong Hair</strong>&nbsp;k&iacute;ch th&iacute;ch mọc t&oacute;c được b&agrave;o chế bởi Học viện Qu&acirc;n Y l&agrave; sự kết hợp giữa c&aacute;c dược liệu qu&yacute; gi&uacute;p t&oacute;c mọc nhanh, chắc khỏe v&agrave; an to&agrave;n cho người sử dụng.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/IMG_1803.PNG\" style=\"height:558px; width:797px\" /></p>\r\n\r\n<p>1. Cao H&agrave; thủ &ocirc; đỏ</p>\r\n\r\n<p><strong>Th&agrave;nh phần:&nbsp;</strong>150mg</p>\r\n\r\n<p><strong>C&ocirc;ng dụng:&nbsp;</strong>Theo Đ&ocirc;ng Y nghi&ecirc;n cứu, H&agrave; thủ &ocirc; c&oacute; t&aacute;c dụng li&ecirc;n quan mật thiết tới qu&aacute; tr&igrave;nh sinh huyết, tạng thận; khi tạng thận sung m&atilde;n, tinh huyết đầy đủ th&igrave; t&oacute;c sẽ đen, b&oacute;ng, l&acirc;u bạc, da dẻ hồng h&agrave;o, b&oacute;ng mịn. H&agrave; thủ &ocirc; c&oacute; c&ocirc;ng dụng bồi bổ can thận, dưỡng huyết tư &acirc;m l&agrave;m tăng độ đen b&oacute;ng của r&acirc;u t&oacute;c, đặc biệt khi được d&ugrave;ng với c&aacute;c vị dược liệu kh&aacute;c như sinh địa, m&egrave; đen&hellip;</p>\r\n\r\n<p>2.&nbsp;Cao m&egrave; đen</p>\r\n\r\n<p><strong>Th&agrave;nh phần:&nbsp;</strong>80mg</p>\r\n\r\n<p><strong>C&ocirc;ng dụng:&nbsp;</strong>Theo Đ&ocirc;ng Y hiện đại th&igrave; m&egrave; đen c&oacute; vị ngọt t&iacute;nh b&igrave;nh, c&oacute; t&aacute;c dụng bổ &iacute;ch can thận, dưỡng huyết, tăng kh&iacute; lực gi&uacute;p k&iacute;ch th&iacute;ch ph&aacute;t triển t&oacute;c, r&acirc;u; l&agrave;m cho t&oacute;c r&acirc;u trở n&ecirc;n d&agrave;y, khỏe v&agrave; b&oacute;ng mượt.</p>\r\n\r\n<p>3. Cao sinh địa</p>\r\n\r\n<p><strong>Th&agrave;nh phần:&nbsp;</strong>70mg</p>\r\n\r\n<p><strong>C&ocirc;ng dụng:&nbsp;</strong>Sinh địa c&oacute; vị ngọt đắng, t&iacute;nh lạnh, t&aacute;c dụng sinh huyết, bổ &acirc;m, l&agrave;m m&aacute;t m&aacute;u l&agrave;m tăng sinh dịch. Nhờ đ&oacute; gi&uacute;p t&oacute;c ph&aacute;t triển mạnh hơn, d&agrave;y hơn v&agrave; mềm mượt hơn.</p>\r\n\r\n<p>4. DHEA (dehydrepiandosterone)</p>\r\n\r\n<p><strong>Th&agrave;nh phần:&nbsp;</strong>15mg</p>\r\n\r\n<p><strong>C&ocirc;ng dụng:&nbsp;</strong>L-Carnitine gi&uacute;p vận chuyển c&aacute;c acid b&eacute;o v&agrave;o trong &ldquo;nh&agrave; m&aacute;y năng lượng&rdquo; của tế b&agrave;o. Chỉ tại nơi đ&acirc;y, c&aacute;c acid b&eacute;o mới được chuyển h&oacute;a v&agrave; tạo ra năng lượng gi&uacute;p cho cơ thể hoạt động. Nhờ đ&oacute; l&agrave;m tăng tuần ho&agrave;n, kh&iacute; huyết gi&uacute;p ph&aacute;t triển hệ thống protein dạng sợi&nbsp;</p>\r\n\r\n<p>5.&nbsp;L-carnitine-L-tartrate</p>\r\n\r\n<p><strong>Th&agrave;nh phần:&nbsp;</strong>200mg</p>\r\n\r\n<p><strong>C&ocirc;ng dụng:&nbsp;</strong>L-Carnitine gi&uacute;p vận chuyển c&aacute;c acid b&eacute;o v&agrave;o trong &ldquo;nh&agrave; m&aacute;y năng lượng&rdquo; của tế b&agrave;o. Chỉ tại nơi đ&acirc;y, c&aacute;c acid b&eacute;o mới được chuyển h&oacute;a v&agrave; tạo ra năng lượng gi&uacute;p cho cơ thể hoạt động. Nhờ đ&oacute; l&agrave;m tăng tuần ho&agrave;n, kh&iacute; huyết gi&uacute;p ph&aacute;t triển hệ thống protein dạng sợi như t&oacute;c, r&acirc;u.</p>\r\n\r\n<p>6.&nbsp;L-cystine : Vitamin A : Vitamin B5</p>\r\n\r\n<p><strong>Th&agrave;nh phần:&nbsp;</strong>50mg : 15IU : 3mg</p>\r\n\r\n<p><strong>C&ocirc;ng dụng:&nbsp;</strong>Bổ sung vi lượng thiếu hụt trong cơ thể, gi&uacute;p cơ thể khỏe mạnh to&agrave;n diện.</p>\r\n\r\n<h3>Đối tượng sử dụng</h3>\r\n\r\n<p>Người rụng t&oacute;c, h&oacute;i đầu, t&oacute;c kh&ocirc;, xơ v&agrave; chẻ ngọn.</p>\r\n\r\n<p>&nbsp;Người t&oacute;c bạc sớm.</p>\r\n\r\n<p>&nbsp;Người muốn chăm s&oacute;c t&oacute;c th&ecirc;m b&oacute;ng đẹp.</p>\r\n\r\n<p>D&ugrave;ng được cho cả nam v&agrave; nữ.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Hướng dẫn sử dụng</li>\r\n	<li>&nbsp;Buổi s&aacute;ng: 2 vi&ecirc;n</li>\r\n	<li>&nbsp;Buổi tối: 2 vi&ecirc;n</li>\r\n	<li><em>Trước khi ăn 30 ph&uacute;t hoặc sau khi ăn 01 giờ.</em></li>\r\n	<li>\r\n	<p><strong>&nbsp;Liệu tr&igrave;nh điều trị hiệu quả từ 3-4 th&aacute;ng.</strong></p>\r\n\r\n	<p>Hiệu quả đ&aacute;p ứng c&ograve;n phụ thuộc từng cơ địa người d&ugrave;ng!</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Gi&aacute; 1 liệu tr&igrave;nh 4h: 880.000 đ</p>\r\n\r\n<p>Freeship tr&ecirc;n to&agrave;n quốc</p>\r\n\r\n<p>LH: 0966.82.09.79</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/ok2.jpg\" style=\"height:556px; width:1171px\" /></p>\r\n'),
(212, NULL, NULL, 0, 'Trà Tam Thất Xạ Đen – Hỗ Trợ Điều Trị Bệnh Ung Thư', 'Trà Tam Thất Xạ Đen', 'tra-tam-that-xa-den-ho-tro-dieu-tri-benh-ung-thu', 'tam-that-xa-den-333974j18888.jpg', 1, 1, 1, NULL, 4, 1, 60000, 45000, '<p>Tr&agrave; Tam thất Xạ đen gi&uacute;p tăng cường sức đề kh&aacute;ng của cơ thể. Hạn chế sự h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển của khối u, tế b&agrave;o ung bướu. Hỗ trợ điều trị ung bướu.</p>\r\n\r\n<p>D&ugrave;ng tr&agrave; Tam thất &ndash; Xạ đen một thời gian sẽ thấy hiệu quả, sức khỏe ổn định v&agrave; kh&ocirc;ng c&oacute; t&aacute;c dụng phụ.</p>\r\n', 'Trà Tam Thất Xạ đen', NULL, 'Trà Tam Thất Xạ đen', 'Trà Tam Thất Xạ đen', NULL, NULL, 0, '0', 103, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 6, 0, NULL, 'vi', NULL, 1540138010, '', '19102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><strong>Tr&agrave; Tam thất &ndash; Xạ đen l&agrave; sản phẩm độc đ&aacute;o của Học viện qu&acirc;n y, gi&uacute;p hỗ trợ điều trị ung thư</strong><br />\r\n<br />\r\nC&acirc;y xạ đen c&ograve;n được gọi l&agrave; c&acirc;y d&acirc;y gối, quả n&acirc;u, d&acirc;n tộc Mường gọi l&agrave; c&acirc;y ung thư, t&ecirc;n khoa học gọi l&agrave; Celastrus hindsu Benth. Th&acirc;n c&acirc;y dạng d&acirc;y d&agrave;i 3-10m. C&agrave;nh tr&ograve;n , l&uacute;c non c&oacute; m&agrave;u x&aacute;m nhạt, sau chuyển sang m&agrave;u n&acirc;u, c&oacute; l&ocirc;ng, về sau c&oacute; m&agrave;u xanh.</p>\r\n\r\n<p><strong>C&acirc;y xạ đen</strong><br />\r\nC&acirc;y xạ đen được ph&acirc;n bố ở nhiều nước như : Trung Quốc, Việt Nam, Myanmar, Th&aacute;i-lan&hellip; Ở Trung Quốc, loại c&acirc;y n&agrave;y thường mọc ở độ cao từ 1.000 &ndash; 1.500 m. C&ograve;n ở nước ta, xạ đen ph&acirc;n bố chủ yếu tại c&aacute;c tỉnh H&agrave; Nam, Quảng Ninh, Ninh B&igrave;nh, H&ograve;a B&igrave;nh, Vườn quốc gia C&uacute;c Phương, Vườn quốc gia Ba V&igrave;, Thừa Thi&ecirc;n &ndash; Huế, Gia Lai&hellip;</p>\r\n\r\n<p><strong>C&ocirc;ng dụng ch&iacute;nh:</strong><br />\r\n<br />\r\n&nbsp;&ndash; Ph&ograve;ng chống ung thư, lở ngứa, mụn nhọt;<br />\r\n<br />\r\n&nbsp;&ndash; Hỗ trợ điều trị, ức chế v&agrave; ngăn ngừa sự ph&aacute;t triển của tế b&agrave;o ung thư, ti&ecirc;u hạch, ti&ecirc;u độc, thanh nhiệt, m&aacute;t gan, h&agrave;nh thủy, điều h&ograve;a hoạt huyết, giảm đau, an thần, tăng cường sức đề kh&aacute;ng cho cơ thể.<br />\r\n<br />\r\n&nbsp;&ndash; Tam thất c&oacute; hai t&aacute;c dụng ch&iacute;nh l&agrave; cầm m&aacute;u v&agrave; bổ dưỡng do chứa saponin triterpen l&agrave; ginsenozid, một hoạt chất qu&yacute; của nh&acirc;n s&acirc;m. Gần đ&acirc;y, tam thất c&ograve;n được d&ugrave;ng trong một số trường hợp ung thư (phổi, tuyến tiền liệt, v&ograve;m họng, v&uacute;) với kết quả tốt.<br />\r\n<br />\r\n&nbsp;&ndash; Xạ đen đ&atilde; được c&aacute;c nh&agrave; khoa học của Học Viện Qu&acirc;n Y chọn lọc, nghi&ecirc;n cứu, nu&ocirc;i trồng theo ti&ecirc;u chuẩn sạch v&agrave; b&agrave;o chế tr&ecirc;n d&acirc;y truyền c&ocirc;ng nghệ hiện đại l&agrave;m n&ecirc;n sản phẩm tr&agrave; Tam Thất- Xạ đen. C&ugrave;ng với xạ đen, tam thất cũng l&agrave; c&aacute;c dược liệu qu&yacute; hiếm c&oacute; trong Tr&agrave; Tam thất &ndash; Xạ đen.&nbsp; Tr&agrave; Tam thất &ndash; Xạ đen l&agrave; sản phẩm được tiếp thu chọn lọc tinh hoa của Y học cổ truyền, từ những vị thuốc qu&yacute; hiếm c&oacute; c&ocirc;ng dụng đặc hiệu đ&aacute;p ứng nhu cầu ph&ograve;ng v&agrave; hỗ trợ điều trị những chứng nan y ph&aacute;t sinh trong thời đại c&ocirc;ng nghiệp.<br />\r\n**Lưu ý:</p>\r\n\r\n<p>- Sản phẩm n&agrave;y kh&ocirc;ng phải l&agrave; thuốc, kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh.</p>\r\n\r\n<p><strong>Kết quả nghi&ecirc;n cứu dược liệu sản xuất tr&agrave; Tam Thất &ndash; Xạ Đen</strong><br />\r\n<br />\r\nNhiều chục năm trước, c&acirc;y xạ đen (hay xạ đen cuống, tiếng Mường gọi l&agrave; Xạ c&aacute;i) từng được lương y d&acirc;n tộc Mường B&ugrave;i Thị Bẻn (bệnh nh&acirc;n thường gọi l&agrave; mế Hậu, ở huyện Kim B&ocirc;i, Ho&agrave; B&igrave;nh) đặt t&ecirc;n l&agrave; c&acirc;y ung thư, chuy&ecirc;n d&ugrave;ng để chữa c&aacute;c loại u khối. B&agrave;i thuốc c&acirc;y xạ đen, d&ugrave; sau đ&oacute; được mế tặng cho Hội Đ&ocirc;ng y tỉnh Ho&agrave; B&igrave;nh, vẫn &iacute;t người biết đến; Chỉ kể từ năm 1987, khi được đo&agrave;n b&aacute;c sĩ Học viện Qu&acirc;n y (do GS.TSKH L&ecirc; Thế Trung &ndash; Chủ tịch Hội Ung thư TP.H&agrave; Nội dẫn đầu) ph&aacute;t hiện trong chuyến sưu tầm c&aacute;c b&agrave;i thuốc qu&yacute; trong d&acirc;n gian, c&acirc;y xạ đen mới bắt đầu thu h&uacute;t sự ch&uacute; &yacute; của giới khoa học v&agrave; được đưa về cơ sở n&agrave;y để nghi&ecirc;n cứu.<br />\r\n<br />\r\n&nbsp;Sau 12 năm nghi&ecirc;n cứu, hiện Học Viện Qu&acirc;n Y đ&atilde; chiết suất được từ lo&agrave;i c&acirc;y n&agrave;y một loại tinh thể c&oacute; khả năng ức chế sự ph&aacute;t triển của tế b&agrave;o ung thư; Qua nghi&ecirc;n cứu về thực vật học, ho&aacute; dược, dược l&yacute;, nghi&ecirc;n cứu thực nghiệm tr&ecirc;n động vật được g&acirc;y ung thư (theo đề t&agrave;i cấp Bộ về xạ đen do GS. L&ecirc; Thế Trung l&agrave;m chủ nhiệm), c&aacute;c b&aacute;c sĩ đ&atilde; ph&aacute;t hiện ở lo&agrave;i c&acirc;y n&agrave;y t&aacute;c dụng hạn chế sự ph&aacute;t triển của khối u &aacute;c t&iacute;nh.</p>\r\n\r\n<p>Sự kết hợp giữa Xạ đen &ndash; Một th&agrave;nh phần c&oacute; t&aacute;c dụng ức chế sự ph&aacute;t triển của ung thư, hạn chế sự ph&aacute;t triển của khối u &aacute;c t&iacute;nh với Tam thất- một th&agrave;nh phần tăng lực v&agrave; điều ho&agrave; miễn dịch đ&atilde; được c&aacute;c nh&agrave; khoa học của Học Viện Qu&acirc;n Y nghi&ecirc;n cứu kỹ lưỡng, tạo n&ecirc;n một sản phẩm Tr&agrave; c&oacute; t&aacute;c dụng hỗ trợ điều trị ung thư tốt- Tr&agrave; Tam Thất &ndash;Xạ đen.</p>\r\n\r\n<p><strong>C&ocirc;ng dụng của tr&agrave; Tam Thất &ndash; Xạ Đen</strong><br />\r\n<br />\r\n&nbsp;Tr&agrave; Tam thất &ndash; Xạ đen gi&uacute;p tăng cường sức đề kh&aacute;ng của cơ thể. Hạn chế sự h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển của khối u, tế b&agrave;o ung bướu. Hỗ trợ điều trị ung thư.<br />\r\n&nbsp;<br />\r\n<br />\r\n<strong>Tại sao n&ecirc;n d&ugrave;ng tr&agrave; Tam Thất &ndash; Xạ Đen h&agrave;ng ng&agrave;y ?</strong><br />\r\n<br />\r\nDược liệu b&agrave;o chế tr&agrave; Tam Thất &ndash; Xạ đen đ&atilde; được c&aacute;c gi&aacute;o sư, c&aacute;c nh&agrave; khoa học của Học Viện Qu&acirc;n Y&nbsp; nghi&ecirc;n cứu kỹ lưỡng&nbsp; khẳng định kh&ocirc;ng c&oacute; độc t&iacute;nh, c&oacute; thể sử dụng l&acirc;u d&agrave;i kh&ocirc;ng ảnh hưởng đến chức năng sinh l&yacute;. C&aacute;c th&agrave;nh phần trong tr&agrave; Tam Thất &ndash; Xạ đen c&oacute; t&aacute;c dụng tăng cường sức đề kh&aacute;ng của cơ thể. Hạn chế sự h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển của khối u, tế b&agrave;o ung bướu. Hỗ trợ điều trị ung thư.<br />\r\n<br />\r\n&nbsp;D&ugrave;ng tr&agrave; Tam thất &ndash; Xạ đen một thời gian sẽ thấy hiệu quả, sức khỏe ổn định v&agrave; kh&ocirc;ng c&oacute; t&aacute;c dụng phụ.<br />\r\n&nbsp;<br />\r\n<strong>C&aacute;ch d&ugrave;ng</strong><br />\r\nCho g&oacute;i tr&agrave; v&agrave;o cốc hoặc ấm pha tr&agrave;, h&atilde;m bằng nước đun s&ocirc;i, sau 3 ph&uacute;t rồi uống.&nbsp; Uống mỗi ng&agrave;y cho sức khỏe tuyệt vời.<br />\r\nNg&agrave;y uống từ 3-4 g&oacute;i.</p>\r\n'),
(213, NULL, NULL, 0, 'Trà Tanaka giúp hạ huyết áp, giúp ngủ tốt, phòng ngừa đột quỵ', 'Tanaka', 'tra-tanaka-giup-ha-huyet-ap-giup-ngu-tot-phong-ngua-dot-quy', 'tra-thao-duoc-tanaka-334447f18888.jpg', 1, 1, 1, NULL, 3, 1, 50000, 39000, '<p>Chống oxi h&oacute;a, hạn chế sự l&atilde;o h&oacute;a, gi&uacute;p tăng tr&iacute; nhớ v&agrave; k&eacute;o d&agrave;i tuổi thọ. Cải thiện tuần ho&agrave;n m&aacute;u n&atilde;o, tốt cho người thiểu năng tuần m&aacute;u n&atilde;o. Cải thiện giấc ngủ, giảm căng thẳng mệt mỏi, tăng tr&iacute; nhớ, tăng khả năng l&agrave;m việc. Giảm mỡ m&aacute;u, nhất l&agrave; giảm cholesterol to&agrave;n phần, ngăn ngừa xơ vữa động mạch.</p>\r\n', 'Tanaka', NULL, 'Tanaka', 'Tanaka', NULL, NULL, 0, '0', 109, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 7, 0, NULL, 'vi', NULL, 1541343681, '', '21102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>&nbsp;</p>\r\n\r\n<p><strong>1. TH&Agrave;NH PHẦN :</strong><br />\r\n<br />\r\nMỗi t&uacute;i tr&agrave; Tanaka gồm<br />\r\n- Đỏ ngọn : .......................800 mg<br />\r\n- C&uacute;c hoa v&agrave;ng : ..............500 mg<br />\r\n- Nụ ho&egrave; : .........................400 mg<br />\r\n- Cỏ ngọt : ........................100 mg<br />\r\n<br />\r\n<strong>2. C&Ocirc;NG DỤNG:</strong><br />\r\n<br />\r\n<strong><strong><img alt=\"Trà Tanaka giúp hạ huyết áp, giúp ngủ tốt, phòng ngừa đột quỵ\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;</strong></strong>Chống oxi h&oacute;a, hạn chế sự l&atilde;o h&oacute;a, gi&uacute;p tăng tr&iacute; nhớ v&agrave; k&eacute;o d&agrave;i tuổi thọ.<br />\r\n<strong><strong><strong><strong><img alt=\"Trà Tanaka giúp hạ huyết áp, giúp ngủ tốt, phòng ngừa đột quỵ\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;&nbsp;</strong></strong></strong></strong>Ngăn ngừa xơ vữa động mạch.<br />\r\n<strong><strong><strong><strong><img alt=\"Trà Tanaka giúp hạ huyết áp, giúp ngủ tốt, phòng ngừa đột quỵ\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;&nbsp;</strong></strong></strong></strong>Cải thiện tuần ho&agrave;n m&aacute;u, tốt cho người thiểu năng tuần ho&agrave;n n&atilde;o.<br />\r\n<strong><strong><strong><strong><img alt=\"Trà Tanaka giúp hạ huyết áp, giúp ngủ tốt, phòng ngừa đột quỵ\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;&nbsp;</strong></strong></strong></strong>Điều h&ograve;a huyết &aacute;p, tăng cường chức năng th&agrave;nh mạch.<br />\r\n<strong><strong><strong><strong><img alt=\"Trà Tanaka giúp hạ huyết áp, giúp ngủ tốt, phòng ngừa đột quỵ\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;&nbsp;</strong></strong></strong></strong>Cải thiện giấc ngủ ngon, giảm căng thẳng mệt mỏi, gi&uacute;p tăng tr&iacute; nhớ, tăng khả năng l&agrave;m việc.</p>\r\n\r\n<p>**Lưu ý:</p>\r\n\r\n<p>- Sản&nbsp;phẩm n&agrave;y kh&ocirc;ng phải l&agrave; thuốc, kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh.</p>\r\n\r\n<p><strong>3. ĐỐI TƯỢNG SỬ DỤNG:</strong><br />\r\n<br />\r\n<strong><strong><strong><strong><img alt=\"Trà Tanaka giúp hạ huyết áp, giúp ngủ tốt, phòng ngừa đột quỵ\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;&nbsp;</strong></strong></strong></strong>Người trung v&agrave; cao tuổi c&oacute; c&aacute;c biểu hiện như : thiếu m&aacute;u n&atilde;o, đau đầu, hoa mắt, ch&oacute;ng mặt, mất ngủ<br />\r\n<strong><strong><strong><strong><img alt=\"Trà Tanaka giúp hạ huyết áp, giúp ngủ tốt, phòng ngừa đột quỵ\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;&nbsp;</strong></strong></strong></strong>Người huyết &aacute;p cao<br />\r\n<br />\r\n<strong>4. ĐỐI TƯỢNG KH&Ocirc;NG N&Ecirc;N SỬ DỤNG:</strong><br />\r\n<img alt=\"Trà Tanaka giúp hạ huyết áp, giúp ngủ tốt, phòng ngừa đột quỵ\" src=\"https://vienquany.com/Images/image/Tich%20Do.png\" style=\"height:19px; width:20px\" />Người huyết &aacute;p thấp<br />\r\n<br />\r\n<strong>5. C&Aacute;CH D&Ugrave;NG:</strong><br />\r\nCho g&oacute;i tr&agrave; v&agrave;o cốc hoặc ấm, h&atilde;m bằng nước đun s&ocirc;i, sau 3 ph&uacute;t rồi uống. Uống 2 đến 4 g&oacute;i. Người đang c&oacute; bệnh c&oacute; thể uống 4 đến 6 g&oacute;i một ng&agrave;y.<br />\r\n<br />\r\n<strong>6. BẢO QUẢN:</strong>&nbsp;Bảo quản nơi kh&ocirc; m&aacute;t</p>\r\n\r\n<p>Số XNCB: 1163/2015/ATTP-XNCB</p>\r\n\r\n<p>Số XNQC: 1627/2015/XNQC-ATTP</p>\r\n'),
(208, NULL, NULL, 0, 'Viên sáng da Sương Mai - Học Viện Quân Y - Sáng da, đẹp từ bên trong', 'Sương Mai', 'vien-sang-da-suong-mai-hoc-vien-quan-y-sang-da-dep-tu-ben-trong', '3-39-copy.jpg', 1, 1, 1, NULL, 4, 1, 250000, 140000, '<p>Vi&ecirc;n uống s&aacute;ng da học viện Qu&acirc;n Y Sương Mai l&agrave; sản phẩm gi&uacute;p l&agrave;m s&aacute;ng da, đẹp da từ b&ecirc;n trong. Với c&aacute;c th&agrave;nh phần từ c&aacute;c dược liệu qu&yacute; như Đương Quy, Ho&agrave;ng Kỳ, Huyền S&acirc;m,... Vi&ecirc;n uống s&aacute;ng da Sương Mai l&agrave; sự lựa chon kh&ocirc;ng thể thiếu cho ph&aacute;i đẹp. Đối tượng sử dụng: Người c&oacute; triệu chứng mẩn ngứa da, trứng c&aacute; do huyết Nhiệt, Người muốn S&aacute;ng Da, Bị L&atilde;o h&oacute;a da, người bị nhăn da, n&aacute;m da, t&agrave;n nhang do tiếp x&uacute;c với nhiều bụi bẩn hoạc nhiều nhiều mỹ phẩm g&acirc;y hại cho da</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', NULL, '', '', NULL, NULL, 0, '0', 110, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 2, 0, NULL, 'vi', NULL, 1541343789, '', '16102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"<p>1. Th&agrave;nh ph\\u1ea7n Vi&ecirc;n S&aacute;ng da S\\u01b0\\u01a1ng Mai: (H\\u1ed9p 60 vi&ecirc;n)<\\/p>\\r\\n\\r\\n<p>\\u0110\\u01b0\\u01a1ng Quy &hellip;&hellip;&hellip;&hellip;&hellip;.............&hellip;.450mg<br \\/>\\r\\nX\\u1ea5u h\\u1ed5 t&iacute;a&hellip;&hellip;&hellip;&hellip;...&hellip;&hellip;...............200mg<br \\/>\\r\\nHo&agrave;ng k\\u1ef3&hellip;&hellip;&hellip;...&hellip;..............&hellip;&hellip;.250mg<br \\/>\\r\\nTh\\u1ea1ch v\\u0129&hellip;&hellip;&hellip;&hellip;...................&hellip;&hellip;.200mg<br \\/>\\r\\nCan Kh\\u01b0\\u01a1ng&hellip;&hellip;.&hellip;.........&hellip;&hellip;&hellip;..100mg<br \\/>\\r\\nV\\u01b0\\u01a1ng b\\u1ea5t l\\u01b0u H&agrave;nh&hellip;&hellip;&hellip;&hellip;&hellip;.150mg<br \\/>\\r\\nHuy\\u1ec1n S&acirc;m&hellip;&hellip;&hellip;&hellip;.............&hellip;&hellip;.250mg<br \\/>\\r\\nCam Th\\u1ea3o&hellip;&hellip;.............&hellip;&hellip;&hellip;&hellip;.100mg<br \\/>\\r\\nCollagen tuyp 1&hellip;&hellip;....&hellip;&hellip;&hellip;&hellip;.100mg<br \\/>\\r\\nVitamin C&hellip;&hellip;&hellip;...............&hellip;&hellip;&hellip;.80mg<br \\/>\\r\\nNanocurcumin&hellip;&hellip;.....&hellip;&hellip;&hellip;&hellip;.100mg<br \\/>\\r\\nVitamin E&hellip;&hellip;&hellip;&hellip;...............&hellip;&hellip;.100IUmg<br \\/>\\r\\nC&aacute;c ph\\u1ee5 li\\u1ec7u kh&aacute;c v\\u1eeba \\u0111\\u1ee7 1 vi&ecirc;n<\\/p>\\r\\n\\r\\n<p>2. Ph&acirc;n t&iacute;ch t&aacute;c d\\u1ee5ng c\\u1ee7a c&aacute;c th\\u1ea3o d\\u01b0\\u1ee3c trong th&agrave;nh ph\\u1ea7n thu\\u1ed1c:<\\/p>\\r\\n\\r\\n<p>+ \\u0110\\u01b0\\u01a1ng Quy: B\\u1ed5 huy\\u1ebft, ho\\u1ea1t huy\\u1ebft, \\u0111i\\u1ec1u kinh, gi\\u1ea3m \\u0111au, nhu\\u1eadn tr&agrave;ng, th&ocirc;ng \\u0111\\u1ea1i ti\\u1ec7n.<br \\/>\\r\\n+ X\\u1ea5u h\\u1ed5 t&iacute;a: C&oacute; ho\\u1ea1t t&iacute;nh ch\\u1ed1ng tr\\u1ea7m c\\u1ea3m (antidepressant), ho\\u1ea1t t&iacute;nh ch\\u1ed1ng &acirc;u lo, D\\u01b0\\u1ee3c li\\u1ec7u c&oacute; v\\u1ecb ng\\u1ecdt, h\\u01a1i se,t&iacute;nh h\\u01a1i h&agrave;n, c&oacute; t&aacute;c d\\u1ee5ng tr\\u1ea5n t\\u0129nh an th\\u1ea7n ch\\u1ed1ng vi&ecirc;m&hellip;<br \\/>\\r\\n+ Ho&agrave;ng k\\u1ef3: B\\u1ed5 kh&iacute; c\\u1ed1 bi\\u1ec3u, l\\u1ee3i ti\\u1ec3u, tr\\u1eeb m\\u1ee7, sinh c\\u01a1.<br \\/>\\r\\n+ Th\\u1ea1ch v\\u0129: Th\\u1ea1ch v\\u1ef9 c&oacute; t&aacute;c d\\u1ee5ng l\\u1ee3i th\\u1ee7y th&ocirc;ng l&acirc;m, h&oacute;a \\u0111&agrave;m ch\\u1ec9 kh&aacute;i, c\\u1ea7m m&aacute;u. Ch\\u1ee7 tr\\u1ecb c&aacute;c ch\\u1ee9ng l&acirc;m, ph&ugrave; th\\u0169ng, ho, b\\u0103ng l\\u1eadu, th\\u1ed5 huy\\u1ebft, n\\u1ee5c huy\\u1ebft.<br \\/>\\r\\n+Can Kh\\u01b0\\u01a1ng: &Ocirc;n trung kh\\u1eed h&agrave;n, h\\u1ed3i d\\u01b0\\u01a1ng th&ocirc;ng m\\u1ea1ch, \\u0111\\u1ed3ng th\\u1eddi c&oacute; t&aacute;c d\\u1ee5ng c\\u1ea7m m&aacute;u, ch\\u1ec9 ho.<br \\/>\\r\\n+ V\\u01b0\\u01a1ng b\\u1ea5t l\\u01b0u H&agrave;nh: H&agrave;nh huy\\u1ebft th&ocirc;ng kinh, th&uacute;c d\\u1ee5c sinh xu\\u1ed1ng s\\u1eefa, ti&ecirc;u s\\u01b0ng thu li\\u1ec5m v\\u1ebft th\\u01b0\\u01a1ng. Tr\\u1ecb ph\\u1ee5 n\\u1eef kinh b\\u1ebf, s\\u1eefa kh&ocirc;ng th&ocirc;ng, kh&oacute; sanh, huy\\u1ebft l&acirc;m, nh\\u1ecdt s\\u01b0ng, v&ecirc;\\u1ebf th\\u01b0\\u01a1ng do kim kh&iacute; xu\\u1ea5t huy\\u1ebft.<br \\/>\\r\\n+ Huy\\u1ec1n S&acirc;m: Huy\\u1ec1n s&acirc;m c&oacute; t&aacute;c d\\u1ee5ng gi\\u1ea3i \\u0111\\u1ed9c, ti&ecirc;u vi&ecirc;m, ph\\u1ed1i h\\u1ee3p v\\u1edbi c&aacute;c v\\u1ecb thu\\u1ed1c thanh nhi\\u1ec7t gi\\u1ea3i \\u0111\\u1ed9c, nh\\u01b0 kim ng&acirc;n hoa, li&ecirc;n ki\\u1ec1u, k&eacute; \\u0111\\u1ea7u ng\\u1ef1a&hellip; trong c&aacute;c tr\\u01b0\\u1eddng h\\u1ee3p m\\u1ee5n nh\\u1ecdt, ban ch\\u1ea9n, vi&ecirc;m h\\u1ecdng, vi&ecirc;m tai, \\u0111au m\\u1eaft \\u0111\\u1ecf&hellip; C&ograve;n c&oacute; t&aacute;c d\\u1ee5ng nhuy\\u1ec5n ki&ecirc;n t&aacute;n k\\u1ebft, t\\u1ee9c l&agrave;m m\\u1ec1m c&aacute;c kh\\u1ed1i r\\u1eafn, nh\\u01b0 nh\\u1ecdt \\u0111\\u1ed9c, u, c\\u1ee5c, lao h\\u1ea1ch. Ngo&agrave;i ra c&ograve;n c&oacute; t&aacute;c d\\u1ee5ng ti&ecirc;u kh&aacute;t, t\\u01b0 b\\u1ed5 th\\u1eadn &acirc;m<br \\/>\\r\\n+ Cam Th\\u1ea3o: Cam th\\u1ea3o v\\u1ecb ng\\u1ecdt, t&iacute;nh b&igrave;nh. C&oacute; t&aacute;c d\\u1ee5ng &iacute;ch kh&iacute;, gi\\u1ea3i \\u0111\\u1ed9c, b\\u1ed5 t\\u1ef3 d\\u01b0\\u1ee1ng v\\u1ecb, nhu\\u1eadn ph\\u1ebf, ho&aacute; \\u0111&agrave;m. Trong \\u0111&ocirc;ng y, ngo&agrave;i t&aacute;c d\\u1ee5ng &iacute;ch kh&iacute;, cam th\\u1ea3o th\\u01b0\\u1eddng d&ugrave;ng \\u0111\\u1ec3 gi\\u1ea3m \\u0111\\u1ed9c t&iacute;nh m\\u1ed9t s\\u1ed1 v\\u1ecb thu\\u1ed1c ho\\u1eb7c \\u0111i\\u1ec1u ho&agrave; qu&aacute; tr&igrave;nh h\\u1ea5p thu c&aacute;c v\\u1ecb thu\\u1ed1c, nh\\u1ea5t l&agrave; c&aacute;c v\\u1ecb thu\\u1ed1c c&oacute; \\u0111\\u1ed9c t&iacute;nh, l\\u1ea1nh qu&aacute; ho\\u1eb7c n&oacute;ng qu&aacute;.<\\/p>\\r\\n\\r\\n<p>3. C&ocirc;ng D\\u1ee5ng c\\u1ee7a vi&ecirc;n s&aacute;ng da S\\u01b0\\u01a1ng Mai:<br \\/>\\r\\n- B\\u1ed5 huy\\u1ebft, d\\u01b0\\u1ee1ng huy\\u1ebft, d\\u01b0\\u1ee1ng da, gi\\u1ea3m t&igrave;nh tr\\u1ea1ng da n\\u1ed5i m\\u1ea9n, tr\\u1ee9ng c&aacute; do huy\\u1ebft nhi\\u1ec7t.<br \\/>\\r\\n- Gi&uacute;p ch\\u1ed1ng oxy h&oacute;a, h\\u1ea1n ch\\u1ebf l&atilde;o h&oacute;a da, t\\u0103ng t&iacute;nh \\u0111&agrave;n h\\u1ed3i v&agrave; s\\u0103n ch\\u1eafc da.<br \\/>\\r\\n- Gi&uacute;p s&aacute;ng da, l&agrave;m \\u0111\\u1eb9p da, h\\u1ea1n ch\\u1ebf s\\u1ea1m da.<br \\/>\\r\\n4. \\u0110\\u1ed1i t\\u01b0\\u1ee3ng s\\u1eed d\\u1ee5ng S&aacute;ng Da S\\u01b0\\u01a1ng Mai:<br \\/>\\r\\n- Ng\\u01b0\\u1eddi c&oacute; tri\\u1ec7u ch\\u1ee9ng m\\u1ea9n ng\\u1ee9a da, tr\\u1ee9ng c&aacute; do huy\\u1ebft Nhi\\u1ec7t<br \\/>\\r\\n- Ng\\u01b0\\u1eddi mu\\u1ed1n S&aacute;ng Da, B\\u1ecb L&atilde;o h&oacute;a da, ng\\u01b0\\u1eddi b\\u1ecb nh\\u0103n da, n&aacute;m da, t&agrave;n nhang do ti\\u1ebfp x&uacute;c v\\u1edbi nhi\\u1ec1u b\\u1ee5i b\\u1ea9n ho\\u1ea1c nhi\\u1ec1u nhi\\u1ec1u m\\u1ef9 ph\\u1ea9m g&acirc;y h\\u1ea1i cho da<\\/p>\\r\\n\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://vienquany.com/265/vien-sang-da-suong-mai-hoc-vien-quan-y-sang-da-dep-tu-ben-trong.html\" target=\"_blank\"><strong>Vi&ecirc;n s&aacute;ng da Sương Mai do Học Viện Qu&acirc;n Y</strong></a>&nbsp;sản xuất l&agrave; sản phẩm gi&uacute;p chị em cải thiện l&agrave;n da v&agrave; chăn s&oacute;c sắc đẹp cho bản th&acirc;n m&igrave;nh. Rất nhiều chị em đ&atilde; sử dụng vi&ecirc;n uống&nbsp;<a href=\"https://vienquany.com/265/vien-sang-da-suong-mai-hoc-vien-quan-y-sang-da-dep-tu-ben-trong.html\" target=\"_blank\"><strong>S&aacute;ng da Sương Mai&nbsp;</strong></a>v&igrave; hoạt t&iacute;nh l&agrave;m s&aacute;ng da, trắng da n&agrave;y do t&aacute;c dụng bổ sung dưỡng chất từ b&ecirc;n trong, mang lại hiệu quả cao m&agrave; kh&ocirc;ng g&acirc;y ra c&aacute;c t&aacute;c dụng phụ ngo&agrave;i &yacute; muốn.<br />\r\n<a href=\"https://vienquany.com/265/vien-sang-da-suong-mai-hoc-vien-quan-y-sang-da-dep-tu-ben-trong.html\" target=\"_blank\"><strong>Vi&ecirc;n S&aacute;ng Da Sương Mai</strong></a>&nbsp;l&agrave; sản phẩm được sản xuất bởi Trung t&acirc;m nghi&ecirc;n cứu sản xuất TPCN học viện Qu&acirc;n Y với c&aacute;c th&agrave;nh phần chủ yếu từ tự nhi&ecirc;n bao gồm<br />\r\n<br />\r\n<strong>1. Th&agrave;nh phần Vi&ecirc;n S&aacute;ng da Sương Mai</strong>: (Hộp 60 vi&ecirc;n)<br />\r\n<br />\r\nĐương Quy &hellip;&hellip;&hellip;&hellip;&hellip;.............&hellip;.450mg<br />\r\nXấu hổ t&iacute;a&hellip;&hellip;&hellip;&hellip;...&hellip;&hellip;...............200mg<br />\r\nHo&agrave;ng kỳ&hellip;&hellip;&hellip;...&hellip;..............&hellip;&hellip;.250mg<br />\r\nThạch vĩ&hellip;&hellip;&hellip;&hellip;...................&hellip;&hellip;.200mg<br />\r\nCan Khương&hellip;&hellip;.&hellip;.........&hellip;&hellip;&hellip;..100mg<br />\r\nVương bất lưu H&agrave;nh&hellip;&hellip;&hellip;&hellip;&hellip;.150mg<br />\r\nHuyền S&acirc;m&hellip;&hellip;&hellip;&hellip;.............&hellip;&hellip;.250mg<br />\r\nCam Thảo&hellip;&hellip;.............&hellip;&hellip;&hellip;&hellip;.100mg<br />\r\nCollagen tuyp 1&hellip;&hellip;....&hellip;&hellip;&hellip;&hellip;.100mg<br />\r\nVitamin C&hellip;&hellip;&hellip;...............&hellip;&hellip;&hellip;.80mg<br />\r\nNanocurcumin&hellip;&hellip;.....&hellip;&hellip;&hellip;&hellip;.100mg<br />\r\nVitamin E&hellip;&hellip;&hellip;&hellip;...............&hellip;&hellip;.100IUmg<br />\r\nC&aacute;c phụ liệu kh&aacute;c vừa đủ 1 vi&ecirc;n<br />\r\n<br />\r\n<strong>2. Ph&acirc;n t&iacute;ch t&aacute;c dụng của c&aacute;c thảo dược trong th&agrave;nh phần thuốc</strong>:<br />\r\n<strong>+ Đương Quy</strong>: Bổ huyết, hoạt huyết, điều kinh, giảm đau, nhuận tr&agrave;ng, th&ocirc;ng đại tiện.<br />\r\n<strong>+ Xấu hổ t&iacute;a</strong>: C&oacute; hoạt t&iacute;nh chống trầm cảm (antidepressant), hoạt t&iacute;nh chống &acirc;u lo, Dược liệu c&oacute; vị ngọt, hơi se,t&iacute;nh hơi h&agrave;n, c&oacute; t&aacute;c dụng trấn tĩnh an thần chống vi&ecirc;m&hellip;<br />\r\n<strong>+ Ho&agrave;ng kỳ</strong>: Bổ kh&iacute; cố biểu, lợi tiểu, trừ mủ, sinh cơ.<br />\r\n<strong>+ Thạch vĩ</strong>: Thạch vỹ c&oacute; t&aacute;c dụng lợi thủy th&ocirc;ng l&acirc;m, h&oacute;a đ&agrave;m chỉ kh&aacute;i, cầm m&aacute;u. Chủ trị c&aacute;c chứng l&acirc;m, ph&ugrave; thũng, ho, băng lậu, thổ huyết, nục huyết.<br />\r\n<strong>+ Can Khương</strong>: &Ocirc;n trung khử h&agrave;n, hồi dương th&ocirc;ng mạch, đồng thời c&oacute; t&aacute;c dụng cầm m&aacute;u, chỉ ho.<br />\r\n<strong>+ Vương bất lưu H&agrave;nh</strong>: H&agrave;nh huyết th&ocirc;ng kinh, th&uacute;c dục sinh xuống sữa, ti&ecirc;u sưng thu liễm vết thương. Trị phụ nữ kinh bế, sữa kh&ocirc;ng th&ocirc;ng, kh&oacute; sanh, huyết l&acirc;m, nhọt sưng, v&ecirc;ế thương do kim kh&iacute; xuất huyết.<br />\r\n<strong>+ Huyền S&acirc;m</strong>: Huyền s&acirc;m c&oacute; t&aacute;c dụng giải độc, ti&ecirc;u vi&ecirc;m, phối hợp với c&aacute;c vị thuốc thanh nhiệt giải độc, như kim ng&acirc;n hoa, li&ecirc;n kiều, k&eacute; đầu ngựa&hellip; trong c&aacute;c trường hợp mụn nhọt, ban chẩn, vi&ecirc;m họng, vi&ecirc;m tai, đau mắt đỏ&hellip; C&ograve;n c&oacute; t&aacute;c dụng nhuyễn ki&ecirc;n t&aacute;n kết, tức l&agrave;m mềm c&aacute;c khối rắn, như nhọt độc, u, cục, lao hạch. Ngo&agrave;i ra c&ograve;n c&oacute; t&aacute;c dụng ti&ecirc;u kh&aacute;t, tư bổ thận &acirc;m<br />\r\n<strong>+ Cam Thảo</strong>: Cam thảo vị ngọt, t&iacute;nh b&igrave;nh. C&oacute; t&aacute;c dụng &iacute;ch kh&iacute;, giải độc, bổ tỳ dưỡng vị, nhuận phế, ho&aacute; đ&agrave;m. Trong đ&ocirc;ng y, ngo&agrave;i t&aacute;c dụng &iacute;ch kh&iacute;, cam thảo thường d&ugrave;ng để giảm độc t&iacute;nh một số vị thuốc hoặc điều ho&agrave; qu&aacute; tr&igrave;nh hấp thu c&aacute;c vị thuốc, nhất l&agrave; c&aacute;c vị thuốc c&oacute; độc t&iacute;nh, lạnh qu&aacute; hoặc n&oacute;ng qu&aacute;.<br />\r\n<strong>3. C&ocirc;ng Dụng của vi&ecirc;n s&aacute;ng da Sương Mai</strong>:<br />\r\n<strong><strong><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" /></strong></strong>&nbsp;Bổ huyết, dưỡng huyết, dưỡng da, giảm t&igrave;nh trạng da nổi mẩn, trứng c&aacute; do huyết nhiệt.<br />\r\n<strong><strong><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" /></strong></strong>&nbsp;Gi&uacute;p chống oxy h&oacute;a, hạn chế l&atilde;o h&oacute;a da, tăng t&iacute;nh đ&agrave;n hồi v&agrave; săn chắc da.<br />\r\n<strong><strong><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" /></strong></strong>&nbsp;Gi&uacute;p s&aacute;ng da, l&agrave;m đẹp da, hạn chế sạm da.</p>\r\n\r\n<p><strong>4. Đối tượng sử dụng S&aacute;ng Da Sương Mai</strong>:<br />\r\n<strong><strong><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" /></strong></strong>&nbsp;Người c&oacute; triệu chứng mẩn ngứa da, trứng c&aacute; do huyết Nhiệt<br />\r\n<strong><strong><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" /></strong></strong>&nbsp;Người muốn S&aacute;ng Da, Bị L&atilde;o h&oacute;a da, người bị nhăn da, n&aacute;m da, t&agrave;n nhang do tiếp x&uacute;c với nhiều bụi bẩn hoạc nhiều nhiều mỹ phẩm g&acirc;y hại cho da</p>\r\n\r\n<p><strong>5. C&aacute;ch d&ugrave;ng Sương Mai hợp l&yacute;</strong>:<br />\r\n<strong><strong><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" /></strong></strong>&nbsp;Uống 04 vi&ecirc;n/2 lần/Ng&agrave;y sau bữa ăn<br />\r\n<strong><strong><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" /></strong></strong>&nbsp;Liều duy tr&igrave; 2 vi&ecirc;n/ Lần/ Ng&agrave;y sau bữa ăn<br />\r\n<br />\r\n<strong>6. Khuyến c&aacute;o</strong>:<br />\r\n<img alt=\"Thuốc Kiện Khớp Tiêu Thống Collagen HVQY - Điều trị dứt điểm bệnh thoát vị đĩa đệm, xương khớp người già.\" src=\"http://vienquany.com/uploads/shops/2016_07/tich-do.png\" style=\"height:19px; width:20px\" />Phụ nữ đang mang thai, bệnh nh&acirc;n ưa chảy m&aacute;u, Suy giảm chức năng thận kh&ocirc;ng d&ugrave;ng<br />\r\n<br />\r\n<strong>7. Bảo quản</strong>:<br />\r\nBảo quản nơi kh&ocirc; m&aacute;t, tr&aacute;nh &aacute;nh s&aacute;ng mạnh, để xa tầm tai trẻ em</p>\r\n'),
(209, NULL, NULL, 0, 'Trà Dahatala Học viện Quân Y hỗ trợ điều trị bệnh tiểu đường', 'Trà Dahatala', 'tra-dahatala-hoc-vien-quan-y-ho-tro-dieu-tri-benh-tieu-duong', 'tra-dahatala-hoc-vien-quan-y-ho-tro-dieu-tri-benh-tieu-duong-63-1.jpg', 1, 1, 1, NULL, 4, 1, 55000, 45000, '<p>Tr&agrave; Dahatala l&agrave; sản phẩm tuyệt vời hỗ trợ điều trị bệnh tiểu đường, v&agrave; c&oacute; c&ocirc;ng dụng hỗ trợ cho điều trị vi&ecirc;m lo&eacute;t dạ d&agrave;y, h&agrave;nh t&aacute; tr&agrave;ng.<br />\r\nSản phẩm bao gồm c&aacute;c dược phẩm nguồn ngốc tụ nhi&ecirc;n:</p>\r\n\r\n<p>1. C&acirc;y Dung<br />\r\n2. Ch&egrave; d&acirc;y<br />\r\n3. Mướp đắng<br />\r\n4. Hoa h&ograve;e</p>\r\n', 'Trà Dahatala', NULL, 'Trà Dahatala', 'Trà Dahatala', NULL, NULL, 0, '0', 106, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 3, 0, NULL, 'vi', NULL, 1541560893, '', '16102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"<p>C&acirc;y Dung:<\\/p>\\r\\n\\r\\n<p>hay c&ograve;n g\\u1ecdi l&agrave; c&acirc;y L\\u01b0\\u1ee3t hay Du \\u0111\\u1ea5t v\\u1edbi t&ecirc;n khoa h\\u1ecdc l&agrave; Symplocos laurina (Retz) Wall.ex G.Don. Nh&acirc;n d&acirc;n \\u1edf nhi\\u1ec1u v&ugrave;ng \\u0111&atilde; d&ugrave;ng l&aacute; Dung l&agrave;m ch&egrave; u\\u1ed1ng k&iacute;ch th&iacute;ch ti&ecirc;u h&oacute;a, ch\\u1eefa \\u0111au b\\u1ee5ng, ti&ecirc;u ch\\u1ea3y, \\u0111au d\\u1ea1 d&agrave;y. L&aacute; Dung \\u0111\\u01b0\\u1ee3c d&ugrave;ng ch\\u1eefa \\u0111au d\\u1ea1 d&agrave;y, ng&agrave;y d&ugrave;ng 15-30 g l&aacute; kh&ocirc;, s\\u1eafc u\\u1ed1ng. Theo nghi&ecirc;n c\\u1ee9u c\\u1ee7a H\\u1ecdc vi\\u1ec7n Qu&acirc;n y, trong c&acirc;y Dung c&oacute; ch\\u1ee9a polyphenol v\\u1edbi h&agrave;m l\\u01b0\\u1ee3ng cao &ndash; \\u0111&acirc;y l&agrave; nh&oacute;m h\\u1ee3p ch\\u1ea5t g&oacute;p ph\\u1ea7n t\\u1ea1o ra t&aacute;c d\\u1ee5ng \\u0111\\u1ed9c \\u0111&aacute;o c\\u1ee7a d\\u01b0\\u1ee3c li\\u1ec7u n&agrave;y. Cao chi\\u1ebft v\\u1edbi c\\u1ed3n 50o c\\u1ee7a c&acirc;y Dung c&oacute; t&aacute;c d\\u1ee5ng \\u1ee9c ch\\u1ebf h\\u1ec7 th\\u1ea7n kinh trung \\u01b0\\u01a1ng tr&ecirc;n th\\u1ef1c nghi\\u1ec7m. Ch\\u1ea5t glycosid 3-monoglucofuranosid c\\u1ee7a 7-0-methylleucopelargonidin c&oacute; t&aacute;c d\\u1ee5ng l&agrave;m s\\u0103n v&agrave; b\\u1ea3o v\\u1ec7 ni&ecirc;m m\\u1ea1c. \\u0110&atilde; &aacute;p d\\u1ee5ng th\\u1eed nghi\\u1ec7m n\\u01b0\\u1edbc s\\u1eafc v&agrave; sir&ocirc; l&aacute; Dung ch\\u1eefa vi&ecirc;m d\\u1ea1 d&agrave;y \\u0111\\u1ea1t k\\u1ebft qu\\u1ea3 t\\u1ed1t.<\\/p>\\r\\n\\r\\n<p>Ch&egrave; D&acirc;y:<\\/p>\\r\\n\\r\\n<p>c&oacute; v\\u1ecb ng\\u1ecdt, t&iacute;nh m&aacute;t, t&aacute;c d\\u1ee5ng thanh nhi\\u1ec7t, gi\\u1ea3i \\u0111\\u1ed9c, khu phong, l\\u1ee3i th\\u1ea5p, gi\\u1ea3m \\u0111au, ch\\u1ed1ng vi&ecirc;m. Th&acirc;n v&agrave; l&aacute; \\u0111\\u01b0\\u1ee3c d&ugrave;ng n\\u1ea5u n\\u01b0\\u1edbc u\\u1ed1ng h&agrave;ng ng&agrave;y. Theo kinh nghi\\u1ec7m c\\u1ee7a \\u0111\\u1ed3ng b&agrave;o T&agrave;y, h&agrave;ng ng&agrave;y, l\\u1ea5y 30 &ndash; 50g d\\u01b0\\u1ee3c li\\u1ec7u, h&atilde;m ho\\u1eb7c s\\u1eafc u\\u1ed1ng l&agrave;m nhi\\u1ec1u l\\u1ea7n ch\\u1eefa vi&ecirc;m d\\u1ea1 d&agrave;y. Theo nghi&ecirc;n c\\u1ee9u c\\u1ee7a GS. Ph\\u1ea1m Thanh K\\u1ef3, ch&egrave; D&acirc;y c&oacute; t&aacute;c d\\u1ee5ng ch\\u1ed1ng lo&eacute;t d\\u1ea1 d&agrave;y tr&ecirc;n m&ocirc; h&igrave;nh Shay tr&ecirc;n th\\u1ef1c nghi\\u1ec7m. Ch&egrave; D&acirc;y c&oacute; t&aacute;c d\\u1ee5ng gi\\u1ea3m \\u0111au, \\u0111\\u1eb7c bi\\u1ec7t l&agrave; c&aacute;c c\\u01a1n \\u0111au qu\\u1eb7n b\\u1ee5ng tr&ecirc;n th\\u1ef1c nghi\\u1ec7m. Cao kh&ocirc; to&agrave;n ph\\u1ea7n ch&egrave; D&acirc;y v&agrave; flavonoid l&agrave; myricetin v&agrave; dihydromyricetin c&oacute; t&aacute;c d\\u1ee5ng ch\\u1ed1ng oxy h&oacute;a.<\\/p>\\r\\n\\r\\n<p>M\\u01b0\\u1edbp \\u0111\\u1eafng:<\\/p>\\r\\n\\r\\n<p>c&oacute; v\\u1ecb \\u0111\\u1eafng, t&iacute;nh l\\u1ea1nh. H\\u1ea1t c&oacute; v\\u1ecb \\u0111\\u1eafng h\\u01a1i ng\\u1ecdt, t&iacute;nh \\u1ea5m, c&oacute; t&aacute;c d\\u1ee5ng thanh nhi\\u1ec7t, nhu\\u1eadn tr&agrave;ng, b\\u1ed5 th\\u1eadn v&agrave; l\\u1ee3i ti\\u1ec3u. Hoa M\\u01b0\\u1edbp \\u0111\\u1eafng ph\\u01a1i kh&ocirc; t&aacute;n nh\\u1ecf u\\u1ed1ng ch\\u1eefa \\u0111au d\\u1ea1 d&agrave;y. \\u1ede \\u1ea4n \\u0110\\u1ed9, nh&acirc;n d&acirc;n d&ugrave;ng qu\\u1ea3, l&aacute; v&agrave; r\\u1ec5 M\\u01b0\\u1edbp \\u0111\\u1eafng l&agrave;m thu\\u1ed1c tr\\u1ecb \\u0111&aacute;i th&aacute;o \\u0111\\u01b0\\u1eddng. Theo nghi&ecirc;n c\\u1ee9u c\\u1ee7a Vi\\u1ec7n D\\u01b0\\u1ee3c li\\u1ec7u, cao M\\u01b0\\u1edbp \\u0111\\u1eafng cho \\u0111\\u1ed9ng v\\u1eadt th\\u1ef1c nghi\\u1ec7m u\\u1ed1ng l&agrave;m gi\\u1ea3m \\u0111\\u01b0\\u1eddng m&aacute;u kh&ocirc;ng ph\\u1ee5 thu\\u1ed9c v&agrave;o s\\u1ef1 h\\u1ea5p th\\u1ee5 glucose qua ru\\u1ed9t v&agrave; c&oacute; li&ecirc;n quan v\\u1edbi m\\u1ed9t s\\u1ed1 t&aacute;c d\\u1ee5ng ngo&agrave;i t\\u1ee5y. D\\u1ecbch &eacute;p qu\\u1ea3 M\\u01b0\\u1edbp \\u0111\\u1eafng c&oacute; t&aacute;c d\\u1ee5ng l&agrave;m t\\u0103ng \\u0111&aacute;ng k\\u1ec3 s\\u1ef1 dung n\\u1ea1p glucose \\u1edf 73% s\\u1ed1 b\\u1ec7nh nh&acirc;n \\u0111&aacute;i th&aacute;o \\u0111\\u01b0\\u1eddng kh&ocirc;ng ph\\u1ee5 thu\\u1ed9c insulin \\u0111\\u01b0\\u1ee3c \\u0111i\\u1ec1u tr\\u1ecb. D\\u1ecbch &eacute;p qu\\u1ea3 M\\u01b0\\u1edbp \\u0111\\u1eafng c&ograve;n c&oacute; t&aacute;c d\\u1ee5ng lo\\u1ea1i b\\u1ecf nh\\u1eefng g\\u1ed1c t\\u1ef1 do nh\\u01b0 superoxyd v&agrave; hydroxyl c&oacute; li&ecirc;n quan \\u0111\\u1ebfn b\\u1ec7nh \\u0111&aacute;i th&aacute;o \\u0111\\u01b0\\u1eddng. C&aacute;c protein &alpha; &ndash; momorcharin v&agrave; &beta; &ndash; momorcharin \\u0111\\u01b0\\u1ee3c ph&acirc;n l\\u1eadp t\\u1eeb M\\u01b0\\u1edbp \\u0111\\u1eafng c&oacute; t&aacute;c d\\u1ee5ng l&agrave;m t\\u0103ng ho\\u1ea1t \\u0111\\u1ed9ng ch\\u1ee9c n\\u0103ng c\\u1ee7a \\u0111\\u1ea1i th\\u1ef1c b&agrave;o.<\\/p>\\r\\n\\r\\n<p>H&ograve;e hoa<\\/p>\\r\\n\\r\\n<p>c&oacute; v\\u1ecb \\u0111\\u1eafng, t&iacute;nh m&aacute;t, v&agrave;o 2 kinh can v&agrave; \\u0111\\u1ea1i tr&agrave;ng, c&oacute; t&aacute;c d\\u1ee5ng thanh nhi\\u1ec7t, l\\u01b0\\u01a1ng huy\\u1ebft, ch\\u1ec9 huy\\u1ebft. Theo nghi&ecirc;n c\\u1ee9u c\\u1ee7a H\\u1ecdc vi\\u1ec7n Qu&acirc;n y, rutin v&agrave; quercetin trong H&ograve;e hoa \\u0111\\u1ec1u c&oacute; t&aacute;c d\\u1ee5ng t\\u0103ng c\\u01b0\\u1eddng s\\u1ee9c \\u0111\\u1ec1 kh&aacute;ng, gi\\u1ea3m t&iacute;nh th\\u1ea9m th\\u1ea5u c\\u1ee7a mao m\\u1ea1ch, h\\u1ed3i ph\\u1ee5c t&iacute;nh \\u0111&agrave;n h\\u1ed3i c\\u1ee7a mao m\\u1ea1ch \\u0111&atilde; b\\u1ecb t\\u1ed5n th\\u01b0\\u01a1ng. C&oacute; t&aacute;c d\\u1ee5ng ch\\u1ed1ng oxy ho&aacute;, gi\\u1ea3m c\\u0103ng th\\u1eb3ng, gi&uacute;p \\u0103n ngon v&agrave; ng\\u1ee7 t\\u1ed1t.<br \\/>\\r\\nT\\u1eeb c&aacute;c d\\u01b0\\u1ee3c li\\u1ec7u qu&iacute; tr&ecirc;n, H\\u1ecdc vi\\u1ec7n Qu&acirc;n y \\u0111&atilde; nghi&ecirc;n c\\u1ee9u b&agrave;o ch\\u1ebf t\\u1ea1o ra s\\u1ea3n ph\\u1ea9m Dahatala, c&oacute; t&aacute;c d\\u1ee5ng h\\u1ed7 tr\\u1ee3 \\u0111i\\u1ec1u tr\\u1ecb b\\u1ec7nh l&yacute; vi&ecirc;m lo&eacute;t d\\u1ea1 d&agrave;y &ndash; t&aacute; tr&agrave;ng, t\\u0103ng c\\u01b0\\u1eddng s\\u1ee9c kh\\u1ecfe, c\\u1ea3i thi\\u1ec7n kh\\u1ea3 n\\u0103ng mi\\u1ec5n d\\u1ecbch c\\u01a1 th\\u1ec3, gi&uacute;p h\\u1ed7 tr\\u1ee3 ti&ecirc;u h&oacute;a t\\u1ed1t. C\\u1ea3i thi\\u1ec7n v&agrave; d\\u1ef1 ph&ograve;ng bi\\u1ebfn ch\\u1ee9ng c\\u1ee7a r\\u1ed1i lo\\u1ea1n chuy\\u1ec3n h&oacute;a glucose m&aacute;u.<\\/p>\\r\\n\\r\\n<p>C&ocirc;ng d\\u1ee5ng c\\u1ee7a tr&agrave; Dahatala<\\/p>\\r\\n\\r\\n<p>Tr&agrave; Dahatala h\\u1ed7 tr\\u1ee3 \\u0111i\\u1ec1u tr\\u1ecb vi&ecirc;m lo&eacute;t d\\u1ea1 d&agrave;y &ndash; h&agrave;nh t&aacute; tr&agrave;ng, k&iacute;ch th&iacute;ch ti&ecirc;u h&oacute;a.<br \\/>\\r\\nH\\u1ed7 tr\\u1ee3 \\u0111i\\u1ec1u tr\\u1ecb b\\u1ec7nh ti\\u1ec3u \\u0111\\u01b0\\u1eddng, ng\\u01b0\\u1eddi c&oacute; h\\u1ed9i ch\\u1ee9ng t\\u0103ng glucose m&aacute;u.&nbsp;<br \\/>\\r\\nCh\\u1ed1ng l&atilde;o h&oacute;a, m\\u1ec7t m\\u1ecfi. C\\u1ea3i thi\\u1ec7n gi\\u1ea5c ng\\u1ee7.<br \\/>\\r\\nH\\u1ed7 tr\\u1ee3 n&acirc;ng cao s\\u1ee9c \\u0111\\u1ec1 kh&aacute;ng v&agrave; s\\u1ee9c kh\\u1ecfe.<\\/p>\\r\\n\\r\\n<p>C&aacute;ch d&ugrave;ng:<\\/p>\\r\\n\\r\\n<p>Cho g&oacute;i tr&agrave; v&agrave;o c\\u1ed1c, \\u1ea5m ho\\u1eb7c ph&iacute;ch pha tr&agrave;, h&atilde;m b\\u1eb1ng n\\u01b0\\u1edbc \\u0111un s&ocirc;i, sau 3 ph&uacute;t r\\u1ed3i u\\u1ed1ng. \\u0110\\u1ec3 c\\u1ea3i thi\\u1ec7n ch\\u1ea5t l\\u01b0\\u1ee3ng cu\\u1ed9c s\\u1ed1ng, n&ecirc;n u\\u1ed1ng 3 &ndash; 6 g&oacute;i m\\u1ed7i ng&agrave;y, li&ecirc;n t\\u1ee5c trong nhi\\u1ec1u ng&agrave;y.<\\/p>\\r\\n\\r\\n<p>Nh\\u1eefng l\\u01b0u &yacute; khi d&ugrave;ng tr&agrave; Dahatala<\\/p>\\r\\n\\r\\n<p>Tr&agrave; Dahatala c&oacute; hi\\u1ec7u qu\\u1ea3 cao trong h\\u1ed7 tr\\u1ee3 \\u0111i\\u1ec1u tr\\u1ecb: vi&ecirc;m lo&eacute;t d\\u1ea1 d&agrave;y &ndash; h&agrave;nh t&aacute; tr&agrave;ng, k&iacute;ch th&iacute;ch ti&ecirc;u h&oacute;a, b\\u1ec7nh \\u0111&aacute;i th&aacute;o \\u0111\\u01b0\\u1eddng v&agrave; n&acirc;ng cao s\\u1ee9c kh\\u1ecfe. S\\u1ea3n ph\\u1ea9m \\u0111\\u01b0\\u1ee3c \\u0111\\u0103ng k&yacute; d\\u01b0\\u1edbi d\\u1ea1ng th\\u1ef1c ph\\u1ea9m ch\\u1ee9c n\\u0103ng n&ecirc;n kh&ocirc;ng d&ugrave;ng thay th\\u1ebf thu\\u1ed1c ch\\u1eefa b\\u1ec7nh.<\\/p>\\r\\n\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `product` (`id`, `style`, `id_value`, `brand`, `name`, `code`, `alias`, `image`, `hot`, `home`, `focus`, `coupon`, `view`, `active`, `price`, `price_sale`, `description`, `description_seo`, `location`, `title_seo`, `keyword_seo`, `detail`, `note`, `like`, `order`, `category_id`, `caption_1`, `caption_2`, `locale`, `bought`, `dksudung`, `sort`, `quantity`, `counter`, `lang`, `destination`, `time`, `tags`, `pro_dir`, `multi_image`, `img_dir`, `status`, `quaranty`, `tinhtrang`, `group_attribute_id`, `color`, `size`, `user_id`, `option_id`, `button_color1`, `config_pro`, `config_pro_content`, `price_imp`, `writer`, `address`, `provinceid`, `order_qty`, `product_hangsx`, `hangsx_id`, `caption_3`, `downloaded`, `number`, `detric`, `coupun`, `content`) VALUES
(210, NULL, NULL, 0, 'Siro LAROXEN Học Viện Quân Y chuyên dùng cho bệnh nhân mất ngủ bằng thảo dược', 'Laroxen', 'siro-laroxen-hoc-vien-quan-y-chuyen-dung-cho-benh-nhan-mat-ngu-bang-thao-duoc', 'chua-mat-ngu211-copy.jpg', 1, 1, 1, NULL, 3, 1, 150000, 88000, '<p>Siro &ndash; LAROXEN do c&aacute;c chuy&ecirc;n gia tại Học Viện Qu&acirc;n Y Việt Nam nghi&ecirc;n cứu b&agrave;o chế từ c&aacute;c thảo dược tự nhi&ecirc;n, chữa khỏi c&aacute;c bệnh li&ecirc;n quan đến chứng mất ngủ, kh&oacute; ngủ.</p>\r\n\r\n<p>Sản phẩm l&agrave; sự kết tinh từ 3 loại thảo dược B&Igrave;NH V&Ocirc;I &ndash; V&Ocirc;NG NEM &ndash; LẠC TI&Ecirc;N&nbsp;<br />\r\nĐ&acirc;y ch&iacute;nh l&agrave; những thảo dược được d&acirc;n gian sử dụng từ l&acirc;u trong việc hỗ trợ điều trị chứng mất ngủ, kh&oacute; ngủ, Năm 2011 C&aacute;c chuy&ecirc;n gia Học Viện Qu&acirc;n Y đ&atilde; nghi&ecirc;n cứu th&agrave;nh c&ocirc;ng v&agrave; cho ra sản phẩm Siro &ndash; LAROSEN c&oacute; t&aacute;c dụng chữa khỏ dứt điểm chứng mất ngủ.</p>\r\n', '', NULL, '', '', NULL, NULL, 0, '0', 106, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 4, 0, NULL, 'vi', NULL, 1541343772, '', '16102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"<p>T&Igrave;M HI\\u1ec2U NGUY&Ecirc;N NH&Acirc;N G&Acirc;Y RA CH\\u1ee8NG M\\u1ea4T NG\\u1ee6<\\/p>\\r\\n\\r\\n<p>Nguy&ecirc;n nh&acirc;n 1, do c&aacute;c b\\u1ec7nh v\\u1ec1 n\\u1ed9i, ngo\\u1ea1i khoa nh\\u01b0 \\u0111au d\\u1ea1 d&agrave;y, sau ph\\u1eabu thu\\u1eadt, cao huy\\u1ebft &aacute;p, b\\u1ec7nh ti\\u1ec3u \\u0111\\u01b0\\u1eddng, b\\u1ec7nh \\u0111\\u01b0\\u1eddng h&ocirc; h\\u1ea5p&hellip;). \\u0110&acirc;y l&agrave; m\\u1ea5t ng\\u1ee7 nh\\u1ea5t th\\u1eddi, ch\\u1ec9 c\\u1ea7n u\\u1ed1ng thu\\u1ed1c an th\\u1ea7n t\\u1ea1i th\\u1eddi \\u0111i\\u1ec3m \\u0111&oacute;, khi b\\u1ec7nh \\u0111\\u01b0\\u1ee3c \\u0111i\\u1ec1u tr\\u1ecb kh\\u1ecfi th&igrave; gi\\u1ea5c ng\\u1ee7 s\\u1ebd tr\\u1edf l\\u1ea1i b&igrave;nh th\\u01b0\\u1eddng.<br \\/>\\r\\n\\u1ede nh\\u1eefng ng\\u01b0\\u1eddi cao tu\\u1ed5i, \\u0111au l&agrave; nguy&ecirc;n nh&acirc;n n\\u1ed5i b\\u1eadt g&acirc;y \\u1ea3nh h\\u01b0\\u1edfng \\u0111\\u1ebfn gi\\u1ea5c ng\\u1ee7 ph\\u1ed5 bi\\u1ebfn nh\\u1ea5t l&agrave; c&aacute;c b\\u1ec7nh c\\u01a1 x\\u01b0\\u01a1ng kh\\u1edbp nh\\u01b0 tho&aacute;i h&oacute;a kh\\u1edbp, lo&atilde;ng x\\u01b0\\u01a1ng&hellip; c&oacute; \\u0111\\u1eb7c \\u0111i\\u1ec3m l&agrave; \\u0111au t\\u0103ng l&ecirc;n v\\u1ec1 n\\u1eeda \\u0111&ecirc;m g\\u1ea7n s&aacute;ng, l&agrave;m cho b\\u1ec7nh nh&acirc;n b\\u1ecb t\\u1ec9nh gi\\u1ea5c v&agrave; sau \\u0111&oacute; r\\u1ea5t kh&oacute; ng\\u1ee7 ti\\u1ebfp. C&aacute;c b\\u1ec7nh l&yacute; kh&aacute;c bao g\\u1ed3m b\\u1ec7nh thi\\u1ebfu m&aacute;u c\\u01a1 tim g&acirc;y \\u0111au ng\\u1ef1c, hi\\u1ec7n t\\u01b0\\u1ee3ng hay ti\\u1ec3u \\u0111&ecirc;m (nh\\u01b0 u x\\u01a1 ti\\u1ec1n li\\u1ec7t tuy\\u1ebfn), ho\\u1eb7c kh&oacute; th\\u1edf (do suy tim, vi&ecirc;m ph\\u1ebf qu\\u1ea3n, hen ph\\u1ebf qu\\u1ea3n)&hellip;<\\/p>\\r\\n\\r\\n<p>Nguy&ecirc;n nh&acirc;n 2, do r\\u1ed1i lo\\u1ea1n t&acirc;m th\\u1ea7n nh\\u01b0 tr\\u1ea7m c\\u1ea3m, lo\\u1ea1n th\\u1ea7n, hoang t\\u01b0\\u1edfng, b\\u1ec7nh nh&acirc;n ph\\u1ea3i d&ugrave;ng thu\\u1ed1c an th\\u1ea7n kinh ch\\u1ed1ng tr\\u1ea7m c\\u1ea3m.<br \\/>\\r\\nNguy&ecirc;n nh&acirc;n th\\u1ee9 3 ph\\u1ed5 bi\\u1ebfn nh\\u1ea5t: Do &ldquo;stress&rdquo; &ndash; M\\u1ea5t ng\\u1ee7 do t&acirc;m sinh l&yacute; r\\u1ed1i lo\\u1ea1n.<br \\/>\\r\\nD\\u1ea1ng m\\u1ea5t ng\\u1ee7 n&agrave;y th\\u01b0\\u1eddng x\\u1ea3y ra do x&uacute;c c\\u1ea3m bu\\u1ed3n, ch&aacute;n, th\\u1ea5t v\\u1ecdng, th\\u1ea5t b\\u1ea1i trong c&ocirc;ng vi\\u1ec7c, c\\u0103ng th\\u1eb3ng, lo &acirc;u, xung \\u0111\\u1ed9t trong gia \\u0111&igrave;nh, x&atilde; h\\u1ed9i&hellip; Nhi\\u1ec1u b\\u1ec7nh nh&acirc;n m\\u1ea5t ng\\u1ee7 do t&acirc;m sinh l&yacute;, d&ugrave;ng thu\\u1ed1c ng\\u1ee7 l&uacute;c \\u0111\\u1ea7u c&oacute; hi\\u1ec7u qu\\u1ea3, nh\\u01b0ng sau \\u0111&oacute; g\\u1eb7p r\\u1eafc r\\u1ed1i v&igrave; nghi\\u1ec7n thu\\u1ed1c v&agrave; t\\u01b0\\u01a1ng t&aacute;c v\\u1edbi r\\u01b0\\u1ee3u. Khi b\\u1ec7nh tr\\u1edf th&agrave;nh m\\u1ea1n t&iacute;nh, d&ugrave; d&ugrave;ng thu\\u1ed1c h\\u1ecd c\\u0169ng &iacute;t khi ng\\u1ee7 \\u0111\\u01b0\\u1ee3c v&agrave; tr\\u1ea1ng th&aacute;i b\\u1ec7nh l&yacute; s\\u1ebd tr\\u1ea7m tr\\u1ecdng th&ecirc;m.<br \\/>\\r\\nNguy&ecirc;n nh&acirc;n 4: M\\u1ea5t ng\\u1ee7 do d&ugrave;ng m\\u1ed9t s\\u1ed1 thu\\u1ed1c \\u0111\\u1ec3 ch\\u1eefa b\\u1ec7nh nh\\u01b0: L\\u1ea1m d\\u1ee5ng thu\\u1ed1c ng\\u1ee7, thu\\u1ed1c an th\\u1ea7n n&ecirc;n h\\u1ec7 th\\u1ea7n kinh trung \\u01b0\\u01a1ng suy y\\u1ebfu, g&acirc;y h\\u1ed9i ch\\u1ee9ng m\\u1ea5t ng\\u1ee7. Lo\\u1ea1i thu\\u1ed1c th\\u01b0\\u1eddng g&acirc;y ra t&igrave;nh tr\\u1ea1ng n&agrave;y l&agrave; barbituric, benzodiazepin (Seduxen). Ngo&agrave;i ra m\\u1ed9t s\\u1ed1 thu\\u1ed1c kh&aacute;c c\\u0169ng g&acirc;y m\\u1ea5t ng\\u1ee7 nh\\u01b0 corticoid, n\\u1ed9i ti\\u1ebft t\\u1ed1 tuy\\u1ebfn gi&aacute;p, thu\\u1ed1c \\u0111i\\u1ec1u tr\\u1ecb t\\u0103ng huy\\u1ebft &aacute;p, b\\u1ec7nh th\\u1ea7n kinh v&agrave; ngay c\\u1ea3 m\\u1ed9t s\\u1ed1 thu\\u1ed1c d&ugrave;ng \\u0111\\u1ec3 \\u0111i\\u1ec1u tr\\u1ecb b\\u1ec7nh tr\\u1ea7m c\\u1ea3m.<br \\/>\\r\\nNguy&ecirc;n nh&acirc;n 5: M\\u1ed9t s\\u1ed1 ch\\u1ea5t tuy kh&ocirc;ng h\\u1eb3n l&agrave; thu\\u1ed1c nh\\u01b0ng m\\u1ecdi ng\\u01b0\\u1eddi l\\u1ea1i hay d&ugrave;ng v&agrave; r\\u1ea5t d\\u1ec5 g&acirc;y m\\u1ea5t ng\\u1ee7 nh\\u01b0 r\\u01b0\\u1ee3u, caffeine (c&oacute; trong ch&egrave;, c&agrave; ph&ecirc;), nicotine (c&oacute; trong thu\\u1ed1c l&aacute;). U\\u1ed1ng r\\u01b0\\u1ee3u nhi\\u1ec1u v&agrave; k&eacute;o d&agrave;i s\\u1ebd g&acirc;y r\\u1ed1i lo\\u1ea1n gi\\u1ea5c ng\\u1ee7 n\\u1eb7ng. Th\\u1eddi gian ng\\u1ee7 r&uacute;t ng\\u1eafn, \\u0111&ecirc;m th\\u01b0\\u1eddng th\\u1ee9c gi\\u1ea5c. Giai \\u0111o\\u1ea1n d\\u1ed7 gi\\u1ea5c ng\\u1ee7 kh&oacute; v&agrave; l&acirc;u. Khi \\u0111&atilde; ng\\u1ee7, th\\u01b0\\u1eddng xu\\u1ea5t hi\\u1ec7n c&aacute;c \\u0111\\u1ee3t gi\\u1eadt m&igrave;nh, c\\u1ea3m gi&aacute;c ho\\u1ea3ng s\\u1ee3, tim h\\u1ed3i h\\u1ed9p.<br \\/>\\r\\nNguy&ecirc;n nh&acirc;n 6: V&agrave;o tu\\u1ed5i m&atilde;n kinh, ph\\u1ee5 n\\u1eef b\\u1ecb b\\u1ec7nh m\\u1ea5t ng\\u1ee7 t\\u0103ng g\\u1ea5p 5 l\\u1ea7n (tri\\u1ec7u ch\\u1ee9ng l&agrave; n&oacute;ng nhi\\u1ec7t, kh&oacute; ch\\u1ecbu v&agrave; khi ng\\u1ee7 th\\u1edf kh&oacute; kh\\u0103n).<br \\/>\\r\\nNguy&ecirc;n nh&acirc;n 7: Sinh ho\\u1ea1t th\\u01b0\\u1eddng ng&agrave;y kh&ocirc;ng ch\\u1eebng m\\u1ef1c, l&agrave;m nhi\\u1ec1u vi\\u1ec7c, kh&ocirc;ng ho\\u1ea1t \\u0111\\u1ed9ng th\\u1ec3 d\\u1ee5c, c&oacute; th\\u1ec3 l&agrave;m ch\\u1ee9ng b\\u1ec7nh m\\u1ea5t ng\\u1ee7 n\\u1eb7ng h\\u01a1n.<br \\/>\\r\\nC&aacute;c chuy&ecirc;n gia v\\u1ec1 s\\u1ee9c kh\\u1ecfe khuy&ecirc;n r\\u1eb1ng, khi b\\u1ecb m\\u1ea5t ng\\u1ee7, b\\u1ec7nh nh&acirc;n \\u0111\\u1eebng v\\u1ed9i u\\u1ed1ng thu\\u1ed1c ng\\u1ee7 m&agrave; h&atilde;y \\u0111\\u1ebfn b&aacute;c s\\u0129 \\u0111\\u1ec3 t&igrave;m nguy&ecirc;n nh&acirc;n. V\\u1edbi m\\u1ed7i nguy&ecirc;n nh&acirc;n g&acirc;y b\\u1ec7nh, th\\u1ea7y thu\\u1ed1c s\\u1ebd c&oacute; c&aacute;ch \\u0111i\\u1ec1u tr\\u1ecb kh&aacute;c nhau.<br \\/>\\r\\nNguy&ecirc;n nh&acirc;n 8: M\\u1ea5t ng\\u1ee7 do m&ocirc;i tr\\u01b0\\u1eddng sinh s\\u1ed1ng: do sinh s\\u1ed1ng \\u1edf n\\u01a1i c&oacute; qu&aacute; nhi\\u1ec1u ti\\u1ebfng \\u1ed3n, nh&agrave; ch\\u1eadt ch\\u1ed9i, m\\u1ea5t v\\u1ec7 sinh, u\\u1ed1ng r\\u01b0\\u1ee3u bia say s\\u1ec9n, h&uacute;t thu\\u1ed1c l&aacute; nhi\\u1ec1u&hellip; \\u0111\\u1ec1u \\u1ea3nh h\\u01b0\\u1edfng \\u0111\\u1ebfn gi\\u1ea5c ng\\u1ee7 c\\u1ee7a ng\\u01b0\\u1eddi cao tu\\u1ed5i. Khi nh\\u1ecbp s\\u1ed1ng sinh h\\u1ecdc b\\u1ecb ph&aacute; v\\u1ee1 th&igrave; c&oacute; th\\u1ec3 d\\u1eabn \\u0111\\u1ebfn m\\u1ea5t ng\\u1ee7, s\\u1ee9c kh\\u1ecfe gi\\u1ea3m s&uacute;t, lu&ocirc;n bu\\u1ed3n phi\\u1ec1n m\\u1ec7t m\\u1ecfi, kh&oacute; t\\u1eadp trung, ch&aacute;n n\\u1ea3n, u\\u1ec3 o\\u1ea3i, tr&iacute; nh\\u1edb k&eacute;m&hellip; s\\u1ebd \\u1ea3nh h\\u01b0\\u1edfng \\u0111\\u1ebfn n\\u0103ng su\\u1ea5t lao \\u0111\\u1ed9ng v&agrave; ch\\u1ea5t l\\u01b0\\u1ee3ng h\\u1ecdc t\\u1eadp c\\u1ee7a m\\u1ecdi ng\\u01b0\\u1eddi.<\\/p>\\r\\n\\r\\n<p>NH\\u1eeeNG \\u1ea2NH H\\u01af\\u1edeNG NGHI&Ecirc;M TR\\u1eccNG DO M\\u1ea4T NG\\u1ee6<\\/p>\\r\\n\\r\\n<p>Tho&aacute;i h&oacute;a n&atilde;o.<\\/p>\\r\\n\\r\\n<p>Gi\\u1ea3m tr&iacute; nh\\u1edb, r\\u1ed1i lo\\u1ea1n t&acirc;m l&yacute;.<\\/p>\\r\\n\\r\\n<p>B\\u1ec7nh ti\\u1ec3u \\u0111\\u01b0\\u1eddng, b&eacute;o ph&igrave;.<\\/p>\\r\\n\\r\\n<p>M\\u1ea5t t\\u1eadp trung, t\\u0103ng huy\\u1ebft &aacute;p.<\\/p>\\r\\n\\r\\n<p>\\u1ea2nh h\\u01b0\\u1edfng nghi&ecirc;m tr\\u1ecdng \\u0111\\u1ebfn c&ocirc;ng vi\\u1ec7c v&agrave; cu\\u1ed9c s\\u1ed1ng.<\\/p>\\r\\n\\r\\n<p>C\\u01a1 th\\u1ec3 b\\u1ea1n s\\u1ebd r\\u01a1i v&agrave;o tr\\u1ea1ng th&aacute;i m\\u1ec7t m\\u1ecfi, c\\u0103ng th\\u1eb3ng.<\\/p>\\r\\n\\r\\n<p>B\\u1ec7nh tim m\\u1ea1ch, thi\\u1ebfu ng\\u1ee7 c&oacute; th\\u1ec3 do s\\u1ed1 gi\\u1edd ng\\u1ee7 &iacute;t ho\\u1eb7c ch\\u1ea5t l\\u01b0\\u1ee3ng s\\u1ebd t\\u0103ng &aacute;p l\\u1ef1c l&ecirc;n tim.<\\/p>\\r\\n\\r\\n<p>T\\u0103ng nguy c\\u01a1 h\\u1ea1i gan, th\\u1eadn v&agrave; l&agrave;m t\\u0103ng nguy c\\u01a1 g&acirc;y ung th\\u01b0.<\\/p>\\r\\n\\r\\n<p>TH&Ocirc;NG TIN CHI TI\\u1ebeT S\\u1ea2N PH\\u1ea8M Siro &ndash; LAROSEN:<\\/p>\\r\\n\\r\\n<p>Th&agrave;nh ph\\u1ea7n (100ml)<br \\/>\\r\\nB&igrave;nh v&ocirc;i: ....................................40g&nbsp;<br \\/>\\r\\nL\\u1ea1c ti&ecirc;n: ....................................40g&nbsp;<br \\/>\\r\\nV&ocirc;ng nem: ................................ 25g&nbsp;<br \\/>\\r\\nTh&agrave;nh ph\\u1ea7n kh&aacute;c: \\u0111\\u01b0\\u1eddng k&iacute;nh, n\\u01b0\\u1edbc tinh khi\\u1ebft v\\u1eeba \\u0111\\u1ee7 100ml<br \\/>\\r\\nC&ocirc;ng d\\u1ee5ng:<br \\/>\\r\\n&ndash; Cung c\\u1ea5p ho\\u1ea1t ch\\u1ea5t t\\u1eeb th\\u1ea3o m\\u1ed9c gi&uacute;p an th\\u1ea7n, ng\\u1ee7 ngon gi\\u1ea5c.<\\/p>\\r\\n\\r\\n<p>&ndash; H\\u1ed7 tr\\u1ee3 trong c&aacute;c tr\\u01b0\\u1eddng h\\u1ee3p suy nh\\u01b0\\u1ee3c th\\u1ea7n kinh,h\\u1ed3i h\\u1ed9p, lo &acirc;u m\\u1ea5t ng\\u1ee7, gi\\u1ea5c ng\\u1ee7 ch\\u1eadp ch\\u1eddn.<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed1i t\\u01b0\\u1ee3ng s\\u1eed d\\u1ee5ng:<br \\/>\\r\\n&ndash; Ng\\u01b0\\u1eddi m\\u1ea5t ng\\u1ee7 do suy nh\\u01b0\\u1ee3c th\\u1ea7n kinh, lo &acirc;u, h\\u1ed3i h\\u1ed9p<\\/p>\\r\\n\\r\\n<p>&ndash; Tr\\u1ebb em qu\\u1ea5y kh&oacute;c m\\u1ea5t ng\\u1ee7<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed1i t\\u01b0\\u1ee3ng kh&ocirc;ng n&ecirc;n d&ugrave;ng:<br \\/>\\r\\n&ndash; Tr\\u1ebb em d\\u01b0\\u1edbi 2 tu\\u1ed1i, ph\\u1ee5 n\\u1eef c&oacute; thai<\\/p>\\r\\n\\r\\n<p>&ndash; Ng\\u01b0\\u1eddi m\\u1eafc ch\\u1ee9ng tr\\u1ea7m c\\u1ea3m<\\/p>\\r\\n\\r\\n<p>C&aacute;ch d&ugrave;ng:&nbsp;<br \\/>\\r\\n&ndash; Ng\\u01b0\\u1eddi l\\u1edbn v&agrave; tr\\u1ebb em &gt; 12 tu\\u1ed5i u\\u1ed1ng 1 th&igrave;a canh (15ml) tr\\u01b0\\u1edbc khi \\u0111i ng\\u1ee7 30 ph&uacute;t.<\\/p>\\r\\n\\r\\n<p>&ndash; Tr\\u1ebb em 2 &ndash; 12 tu\\u1ed5i: u\\u1ed1ng 1-2 th&igrave;a cafe (5 &ndash; 10 ml) tr\\u01b0\\u1edbc khi \\u0111i ng\\u1ee7 30 ph&uacute;t.<\\/p>\\r\\n\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(211, NULL, NULL, 0, 'THANH ĐƯỜNG GAMOSA - Học viện Quân Y - Ổn định Tiểu Đường - Giảm biến chứng Tiểu Đường', 'Thanh đường Gamosa', 'thanh-duong-gamosa-hoc-vien-quan-y-on-dinh-tieu-duong-giam-bien-chung-tieu-duong', '0636305318675185584.jpg', 1, 1, 1, NULL, NULL, 1, 275000, 148000, '<p>Thanh đường GAMOSA được c&aacute;c gi&aacute;o sư y b&aacute;c sĩ v&agrave; c&aacute;c nh&agrave; khoa học thuộc trung t&acirc;m nghi&ecirc;n cứu ứng dụng của Học viện qu&acirc;n y b&agrave;o chế từ c&aacute;c dược liệu qu&yacute; c&oacute; t&aacute;c dụng giảm glucose m&aacute;u, giảm glucose niệu, tăng khả năng dung nạp glucose.</p>\r\n', 'Thanh đường Gamosa', NULL, 'Thanh đường Gamosa', 'Thanh đường Gamosa', NULL, NULL, 0, '0', 106, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 5, 0, NULL, 'vi', NULL, 1541996444, '', '21102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>1. Th&agrave;nh Phần Thanh Đường Gamosa Học Viện Qu&acirc;n Y.</p>\r\n\r\n<p>Cao kh&ocirc; 500mg hỗn hợp tương đương với :<br />\r\nD&acirc;y th&igrave;a canh &hellip;&hellip;&hellip;&hellip;&hellip;500mg<br />\r\nMướp đắng&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;2000mg<br />\r\nBạch truật&hellip;&hellip;&hellip;..&hellip;&hellip;&hellip;..100mg<br />\r\nCỏ ngọt &hellip;&hellip;&hellip;&hellip;.&hellip;&hellip;&hellip;&hellip;..200mg<br />\r\nGiảo cổ lam.&hellip;&hellip;&hellip;&hellip;..&hellip;250mg<br />\r\nThi&ecirc;n hoa phấn.&hellip;&hellip;&hellip;&hellip;&hellip;.300mg<br />\r\nPhụ liệu : tinh bột, bột talc vừa đủ 1 vi&ecirc;n.</p>\r\n\r\n<p><strong><em>Trước khi t&igrave;m hiểu chi tiết về sản phẩm ch&uacute;ng t&ocirc;i đưa ra một số kiến thức về bệnh tiểu đường cho qu&yacute; vị hiểu r&otilde; hơn về tầm quan trọng của việc duy tr&igrave; v&agrave; ổn định đườn huyết đối với bệnh nh&acirc;n tiểu đường&nbsp;</em></strong></p>\r\n\r\n<h2><img alt=\"\" src=\"/upload/images/thanh-phan-gamosa5.gif\" style=\"height:432px; width:800px\" /></h2>\r\n\r\n<h2><strong>2. Những Yếu Tố N&agrave;o Ảnh Hưởng Đến Đường Huyết?</strong></h2>\r\n\r\n<p>Ở người mắc bệnh tiểu đường, đường huyết dao động trong ng&agrave;y chịu ảnh hưởng bởi nhiều yếu tố:</p>\r\n\r\n<ul>\r\n	<li>Chế độ ăn: khi kh&ocirc;ng tu&acirc;n thủ chế độ ăn c&acirc;n bằng v&agrave; ph&ugrave; hợp. Sử dụng thực phẩm c&oacute; chỉ số đường huyết cao hoặc ăn ki&ecirc;ng khem kh&ocirc;ng đủ dinh dưỡng.</li>\r\n	<li>Căng thẳng t&acirc;m l&yacute;.</li>\r\n	<li>Mắc c&aacute;c bệnh kh&aacute;c phối hợp dẫn đến đường huyết l&ecirc;n cao.</li>\r\n	<li>Thuốc: thời gian uống thuốc, c&aacute;c loại thuốc điều trị đ&aacute;i th&aacute;o đường hoặc c&aacute;c thuốc kh&aacute;c c&oacute; thể c&oacute; hiệu ứng kh&aacute;c nhau đối với đường huyết của bạn.</li>\r\n	<li>Thể dục: tập thể dục với cường độ nhẹ hay nặng sẽ l&agrave;m giảm hoặc tăng đường huyết.</li>\r\n</ul>\r\n\r\n<p>Mỗi người bệnh đ&aacute;i th&aacute;o đường (tiểu đường) c&oacute; đ&aacute;p ứng kh&aacute;c nhau với c&aacute;c yếu tố n&ecirc;u tr&ecirc;n.</p>\r\n\r\n<h2>&ldquo;V&ugrave;ng Đường Huyết Nguy Hiểm&rdquo; Của Bệnh Đ&aacute;i Th&aacute;o Đường (Tiểu Đường) L&agrave; G&igrave;?</h2>\r\n\r\n<p>L&agrave; khi đường huyết qu&aacute; thấp hay qu&aacute; cao. Đường huyết được xem l&agrave; bất thường khi:</p>\r\n\r\n<ul>\r\n	<li>L&uacute;c đ&oacute;i đường huyết &lt;70 mg/dL (3,9mmol/L).</li>\r\n	<li>Sau ăn 2 giờ đường huyết &gt; 200mg/dL (11,1mmol/L).</li>\r\n</ul>\r\n\r\n<h2>Đường Huyết Trong &ldquo;V&ugrave;ng Nguy Hiểm&rdquo; G&acirc;y Ra Những Hậu Quả G&igrave;?</h2>\r\n\r\n<ul>\r\n	<li>Đường huyết hạ qu&aacute; mức, xuống thấp dưới 60mg/dL dễ dẫn đến h&ocirc;n m&ecirc; thậm ch&iacute; tử vong nếu kh&ocirc;ng điều trị kịp thời.</li>\r\n	<li>Đường huyết tăng cao tr&ecirc;n 180mg/dL g&acirc;y ra c&aacute;c biến chứng ở mắt, thận, thần kinh, mạch m&aacute;u, tim, n&atilde;o&hellip;</li>\r\n	<li>Đường huyết qu&aacute; cao g&acirc;y ra c&aacute;c biến chứng cấp như h&ocirc;n m&ecirc; nhiễm toan ceton, h&ocirc;n m&ecirc; tăng &aacute;p lực thẩm thấu&hellip;</li>\r\n	<li>Đường huyết dao động nhiều, l&uacute;c qu&aacute; cao, l&uacute;c qu&aacute; thấp cũng đưa đến c&aacute;c biến chứng, l&agrave;m giảm chất lượng cuộc sống.</li>\r\n</ul>\r\n\r\n<h2>V&ugrave;ng Đường Huyết Bao Nhi&ecirc;u L&agrave; An To&agrave;n?</h2>\r\n\r\n<p>Theo&nbsp;<strong><a href=\"http://www.ndei.org/ADA-diabetes-management-guidelines-diagnosis-A1C-testing.aspx.html\" target=\"_blank\">Hiệp hội Đ&aacute;i th&aacute;o đường Hoa Kỳ (ADA)</a></strong>, mức đường huyết sau đ&acirc;y l&agrave; an to&agrave;n đối với đa số người bệnh đ&aacute;i th&aacute;o đường:</p>\r\n\r\n<ul>\r\n	<li>Đường huyết l&uacute;c đ&oacute;i: 90-130mg/dL (5,0mmol/L &ndash; 7,2mmol/L).</li>\r\n	<li>Đường huyết sau ăn 1-2 giờ: dưới 180mg/dL (10mmol/L).</li>\r\n	<li>Đường huyết trước khi ngủ: 110mg/dL &ndash; 150mg/dL (6,0mmol/L-8,3mmol/L).</li>\r\n</ul>\r\n\r\n<p>Tuy nhi&ecirc;n, mức đường huyết an to&agrave;n, th&iacute;ch hợp c&ograve;n t&ugrave;y thuộc v&agrave;o tuổi t&aacute;c, độ nặng c&aacute;c biến chứng v&agrave; bệnh l&yacute; đi k&egrave;m. Bạn cần tham khảo &yacute; kiến b&aacute;c sĩ điều trị để được tư vấn cụ thể đối với t&igrave;nh trạng của bản th&acirc;n.</p>\r\n\r\n<h2><strong>3. Phương Ph&aacute;p Bạn Chọn Để Duy Tr&igrave; V&agrave; Ổn Định Đường Huyết L&agrave; G&igrave;?</strong></h2>\r\n\r\n<p><strong>D&ugrave;ng Thuốc T&acirc;y</strong>&nbsp;l&agrave; biện ph&aacute;p m&agrave; đa số c&aacute;c bệnh nh&acirc;n lựa chọn, v&igrave; thuốc t&acirc;y c&oacute; thể gi&uacute;p c&aacute;c bệnh nh&acirc;n &nbsp;ổn định đường huyết dễ d&agrave;ng v&agrave; thuận tiện, nhưng &iacute;t ai biết rằng đ&acirc;y l&agrave;&nbsp;&ldquo;<strong>con dao hai lưỡi&rdquo;&nbsp;</strong>&nbsp;nếu sử dụng trong thời gian d&agrave;i bệnh nh&acirc;n c&oacute; thể bị nhờn v&agrave; kh&aacute;ng thuốc, khi đ&oacute; uống thuốc kh&ocirc;ng c&ograve;n c&oacute; t&aacute;c dụng nữa m&agrave; chuyển sang giai đoạn ti&ecirc;m &nbsp;đ&acirc;y l&agrave; biện ph&aacute;p cuối c&ugrave;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/gamosa-hoc-vien-quan-y.jpg\" style=\"height:300px; width:800px\" /></p>\r\n\r\n<p>T&aacute;c dụng phụ bệnh tiểu đường</p>\r\n\r\n<p>Khi d&ugrave;ng thuốc t&acirc;y trong thời gian d&agrave;i c&ograve;n ảnh hưởng đến c&aacute;c cơ quan kh&aacute;c tr&ecirc;n cơ thể, điển h&igrave;nh như gan, thận, dạ d&agrave;y ,v..v.. t&aacute;c dụng phụ của thuốc sẽ dẫn đến suy giảm chức năng của cơ thể v&agrave; dễ g&acirc;y biến chứng.</p>\r\n\r\n<h2><strong>4. Vai Tr&ograve; Của Thanh Đường Gamosa Với Bệnh Nh&acirc;n Tiểu Đường.</strong></h2>\r\n\r\n<p><strong>&gt;&gt;</strong>&nbsp;Thanh Đường Gamosa gi&uacute;p&nbsp;duy tr&igrave; v&agrave; ổn định nhanh đường huyết gi&uacute;p c&aacute;c bệnh nh&acirc;n c&oacute; chỉ số đường cao nhanh ch&oacute;ng trở về mức an to&agrave;n.</p>\r\n\r\n<p><strong>&gt;&gt;</strong>&nbsp;Tăng cường chức năng gan, thận, tuyến tụy nội tiết tối giảm nguy cơ g&acirc;y biến chứng</p>\r\n\r\n<p><strong>&gt;&gt;</strong>&nbsp;Với ưu điểm b&agrave;o chế theo phương thuốc đ&ocirc;ng y th&agrave;nh phần từ thảo dược l&ecirc;n c&oacute; thể sử dụng trong thời gian d&agrave;i kho g&acirc;y t&aacute;c dụng phụ hay l&agrave;m suy giản chức năng của c&aacute;c cơ quan kh&aacute;c tr&ecirc;n cơ thể.</p>\r\n\r\n<p><strong><strong><strong><img alt=\"THANH ĐƯỜNG GAMOSA - Học viện Quân Y - Ổn định Tiểu Đường - Giảm biến chứng Tiểu Đường\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" /></strong></strong>&nbsp;Lưu &yacute; :</strong><br />\r\n- Biến chứng của tiểu đường thực sự rất nguy hiểm nhưng ch&uacute;ng ta ho&agrave;n to&agrave;n c&oacute; thể ngăn chặn c&aacute;c biến chứng tr&ecirc;n nếu kiểm so&aacute;t tốt h&agrave;m lượng đường trong m&aacute;u.</p>\r\n\r\n<p>- Sản phẩm n&agrave;y kh&ocirc;ng phải l&agrave; thuốc, kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh.</p>\r\n\r\n<p><strong>5. Tại Sao Bạn N&ecirc;n Chọn Thanh Đường Gamosa Để Duy Tr&igrave; V&agrave; Ổn Định Đường Huyết ?</strong></p>\r\n\r\n<p><strong>&gt;&gt; Thanh đường gamosa&nbsp;</strong>&nbsp;được &nbsp;c&aacute;c gi&aacute;o sư y b&aacute;c sĩ v&agrave; c&aacute;c nh&agrave; khoa học thuộc trung t&acirc;m nghi&ecirc;n cứu ứng dụng của&nbsp;<strong>Học viện qu&acirc;n y</strong>&nbsp;&nbsp;b&agrave;o chế từ c&aacute;c dược liệu qu&yacute;&nbsp;c&oacute; t&aacute;c dụng giảm glucose m&aacute;u, giảm glucose niệu, tăng khả năng dung nạp glucose. Sự kết hợp dược liệu &nbsp;trong&nbsp;Thanh Đường&nbsp;GAMOSA tạo th&agrave;nh một chế phẩm c&oacute; t&aacute;c dụng tốt đối với bệnh ĐTĐ tu&yacute;p 2.</p>\r\n\r\n<p><strong>&gt;&gt;</strong>&nbsp;Kết quả nghi&ecirc;n cứu được viện qu&acirc;n y 103 thử nghiệm v&agrave; theo d&otilde;i tr&ecirc;n bệnh nh&acirc;n mắc tiểu đường&nbsp;&nbsp;trong nhiều năm.</p>\r\n\r\n<p>Kết quả cho thấy Thanh Đường Gamosa c&oacute; t&aacute;c dụng&nbsp;rất r&otilde; rệt đ&oacute;i với bệnh nh&acirc;n ĐTĐ tu&yacute;p 2&nbsp;. Hầu hết c&aacute;c bệnh nh&acirc;n sau điều trị đều c&oacute; glucose niệu &acirc;m t&iacute;nh, glucose m&aacute;u được kiểm so&aacute;t ở mức tốt v&agrave; tối ưu. Thanh Đường&nbsp;GAMOSA kh&ocirc;ng g&acirc;y t&aacute;c dụng phụ tr&ecirc;n l&acirc;m s&agrave;ng v&agrave; kh&ocirc;ng l&agrave;m thay đổi c&aacute;c chỉ ti&ecirc;u huyết học v&agrave; sinh ho&aacute;.</p>\r\n\r\n<h2><strong>6. C&aacute;ch Sử Dụng Thanh Đường Gamosa Học Viện Qu&acirc;n&nbsp;Y.</strong></h2>\r\n\r\n<p><strong>Bệnh nh&acirc;n tiểu đường t&iacute;p I,II</strong>&nbsp;&ndash; Ng&agrave;y uống 4 vi&ecirc;n mỗi lần 2 vi&ecirc;n trước khi ăn 30 ph&uacute;t</p>\r\n\r\n<p><strong>Duy tr&igrave; v&agrave; ph&ograve;ng tr&aacute;nh tiểu đườn</strong>g &nbsp;&ndash;&nbsp;Ng&agrave;y uống 2 vi&ecirc;n mỗi lần 1 vi&ecirc;n trước khi ăn 30 ph&uacute;t</p>\r\n\r\n<p><strong>Bảo quản</strong>:&nbsp;Bảo quản ở nơi kh&ocirc; m&aacute;t, tr&aacute;nh &aacute;nh s&aacute;ng.- Để xa tầm tay trẻ em.</p>\r\n\r\n<h2><strong>7. Ch&uacute; &Yacute; Liệu Tr&igrave;nh Sử Dụng:</strong></h2>\r\n\r\n<p>- Qu&aacute; tr&igrave;nh điều trị v&agrave; ổn định tiểu đường đ&ograve;i hỏi một qu&aacute; tr&igrave;nh l&acirc;u d&agrave;i t&ugrave;y theo mức nặng hay nhẹ hay cơ địa của mỗi người&nbsp;m&agrave; lựa chọn cho m&igrave;nh liệu tr&igrave;nh ph&ugrave; hợp. Bởi v&igrave; ngo&agrave;i việc điều chỉnh cho chỉ số đường huyết về mức an to&agrave;n ch&uacute;ng ta cần&nbsp;duy tr&igrave; ổn định lượng đường tr&aacute;nh những biến chứng g&acirc;y nguy hiểm.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/IMG_0275.PNG\" style=\"height:853px; width:640px\" /><img alt=\"\" src=\"/upload/images/IMG_0263.PNG\" style=\"height:853px; width:640px\" /></p>\r\n'),
(217, NULL, NULL, 0, 'Tỏi đen học viện quân y - gói 500g - Quà tặng ý nghĩa cho người thân', 'tỏi đen', 'toi-den-hoc-vien-quan-y-goi-500g-qua-tang-y-nghia-cho-nguoi-than', '3-28-copy.jpg', 1, 1, 1, NULL, NULL, 1, 550000, 450000, '<p>Tỏi đen học viện qu&acirc;n y - chất lượng cao. C&oacute; t&aacute;c dụng ph&ograve;ng chống ung thư, ph&ograve;ng chống c&aacute;c bệnh về gan, bệnh đường huyết,...</p>\r\n', 'tỏi đen', NULL, 'tỏi đen ', 'tỏi đen', NULL, NULL, 0, '0', 103, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 11, 0, NULL, 'vi', NULL, 1541996483, '', '19102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Tại Việt Nam, Tỏi đen lần đầu ti&ecirc;n được Học Viện Qu&acirc;n Y nghi&ecirc;n cứu quy tr&igrave;nh l&ecirc;n men v&agrave; th&agrave;nh phần h&oacute;a học, t&aacute;c dụng sinh học của tỏi đen được tạo ra trong đề t&agrave;i cấp nh&agrave; nước số KC10.TN05/11-15. Theo kết quả nghi&ecirc;n cứu n&agrave;y cho thấy. Tỏi sau khi được l&ecirc;n men th&agrave;nh&nbsp;<a href=\"http://vienquany.com/shops/Ban-chay-nhat/Toi-den-hoc-vien-quan-y-goi-500g-Qua-tang-y-nghia-cho-nguoi-than-1295.html\"><strong>Tỏi đen</strong></a>, h&agrave;m lượng c&aacute;c nh&oacute;m hoạt chất tăng cao, đặc biệt l&agrave; h&agrave;m lượng hoạt chất S-allyl-L-Cystrin &ndash; đ&acirc;y l&agrave; hoạt chất được chứng minh l&agrave; c&oacute; t&aacute;c dụng gi&uacute;p ngăn ngừa sự ph&aacute;t triển của khối u gấp 5-6 lần so với tỏi th&ocirc;ng thường.<br />\r\n<br />\r\nỞ một số quốc gia như H&agrave;n Quốc v&agrave; Nhật Bản, tỏi đen được sử dụng kh&aacute; rộng r&atilde;i với vai tr&ograve; như một loại thực phẩm chức năng gi&uacute;p tăng cường sức khỏe v&agrave; bảo vệ cơ thể. Tỏi đen c&oacute; khả năng chống &ocirc; xy h&oacute;a rất cao v&agrave; n&oacute; thường được tin l&agrave; c&oacute; thể k&eacute;o d&agrave;i tuổi xu&acirc;n, hỗ trợ điều trị nhiều loại bệnh.</p>\r\n\r\n<p><strong>1. Th&agrave;nh phần của&nbsp;</strong><strong>tỏi đen học viện qu&acirc;n y</strong><br />\r\n<br />\r\n<img alt=\"Tỏi đen học viện quân y - gói 500g - Quà tặng ý nghĩa cho người thân\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;100% tỏi đen l&ecirc;n men tự nhi&ecirc;n.<br />\r\n<img alt=\"Tỏi đen học viện quân y - gói 500g - Quà tặng ý nghĩa cho người thân\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Kh&ocirc;ng chất phụ gia, kh&ocirc;ng chất bảo quản, kh&ocirc;ng m&agrave;u thực phẩm.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/thoi-gian-len-men-toi-den%20copy.jpg\" style=\"height:250px; width:700px\" /><strong>2. Đặc điểm nổi bật của&nbsp;</strong><strong>tỏi đen học viện qu&acirc;n y</strong><br />\r\n<img alt=\"Tỏi đen học viện quân y - gói 500g - Quà tặng ý nghĩa cho người thân\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Sản phẩm tỏi đen c&oacute; m&agrave;u đen, vị ngọt, dễ ăn, vị như &ocirc; mai, kh&ocirc;ng c&ograve;n m&ugrave;i cay hăng của tỏi thường v&agrave; c&oacute; t&aacute;c dụng gấp h&agrave;ng chục lần tỏi thường.<br />\r\n<img alt=\"Tỏi đen học viện quân y - gói 500g - Quà tặng ý nghĩa cho người thân\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Ở Việt Nam, lần đầu ti&ecirc;n tỏi đen được HỌC VIỆN QU&Acirc;N Y nghi&ecirc;n cứu quy tr&igrave;nh l&ecirc;n men cũng như th&agrave;nh phần h&oacute;a học v&agrave; t&aacute;c dụng sinh học của tỏi đen được tạo ra trong đề t&agrave;i cấp Nh&agrave; nước m&atilde; số KC10.TN05/11-15 v&agrave; KC.10.37/11-15.<br />\r\n<img alt=\"Tỏi đen học viện quân y - gói 500g - Quà tặng ý nghĩa cho người thân\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Sản phẩm trải qua quy tr&igrave;nh chế biến với những quy định khắt khe từ việc kiểm so&aacute;t nhiệt độ, &aacute;p suất, độ ẩm, hơi nước thường xuy&ecirc;n được kiểm tra v&agrave; điều chỉnh đạt theo đ&uacute;ng chuẩn quy tr&igrave;nh đ&atilde; nghi&ecirc;n cứu của c&aacute;c chuy&ecirc;n gia, gi&aacute;o sư học viện qu&acirc;n y.<br />\r\n<img alt=\"Tỏi đen học viện quân y - gói 500g - Quà tặng ý nghĩa cho người thân\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Nguy&ecirc;n liệu tỏi tươi được quy hoạch trồng ở c&aacute;c qu&acirc;n khu ở Hải Dương v&agrave; Phan Rang, L&yacute; Sơn - Quảng Ng&atilde;i c&oacute; chất lượng tinh chất dinh dưỡng tốt nhất.<br />\r\n<img alt=\"Tỏi đen học viện quân y - gói 500g - Quà tặng ý nghĩa cho người thân\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Kết quả nghi&ecirc;n cứu cho thấy sau khi l&ecirc;n men h&agrave;m lượng c&aacute;c nh&oacute;m hoạt chất tăng rất cao, như hợp chất sufur hữu cơ, polyphenol, flavonoid, h&agrave;m lượng fructose tăng khoảng 50 lần, điều n&agrave;y giải th&iacute;ch v&igrave; sao tỏi đen c&oacute; vị ngột như tr&aacute;i c&acirc;y ch&iacute;n. Đặc biệt h&agrave;m lượng S-allyl-L-Cystein (l&agrave; hoạt chất đ&atilde; được chứng minh t&aacute;c dụng ngăn ngừa sự ph&aacute;t sinh khối u) tăng 5-6 lần so với tỏi thường.<br />\r\n<strong>3.&nbsp;</strong><strong><u>T&aacute;c dụng của sản phẩm tỏi đen Học Viện Qu&acirc;n Y</u></strong><br />\r\n<img alt=\"Tỏi đen học viện quân y - gói 500g - Quà tặng ý nghĩa cho người thân\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Hoạt t&iacute;nh qu&eacute;t gốc tự do rất tốt, đ&acirc;y l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y ra h&agrave;ng loạt c&aacute;c bệnh hiểm ngh&egrave;o như: ung thư, tim mạch, tiểu đường...<br />\r\n<img alt=\"Tỏi đen học viện quân y - gói 500g - Quà tặng ý nghĩa cho người thân\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Gi&uacute;p bảo vệ tế b&agrave;o gan, d&ugrave;ng trong c&aacute;c trường hợp vi&ecirc;m gan, xơ gan, gan nhiễm mỡ.<br />\r\n<img alt=\"Tỏi đen học viện quân y - gói 500g - Quà tặng ý nghĩa cho người thân\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Tăng cường khả năng miễn dịch g&oacute;p phần t&iacute;ch cực trong việc điều trị ung thư, hạn chế t&aacute;i ph&aacute;t v&agrave; di căn trong điều trị ung thư, hạn chế bệnh tật.<br />\r\n<img alt=\"Tỏi đen học viện quân y - gói 500g - Quà tặng ý nghĩa cho người thân\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;T&aacute;c dụng bảo vệ c&aacute;c tế b&agrave;o, cơ quan tạo m&aacute;u, miễn dịch trước c&aacute;c tia xạ. G&oacute;p phần bảo vệ sức khỏe của người l&agrave;m việc trong m&ocirc;i trường độc hại c&oacute; nguy cơ mắc bệnh cao.<br />\r\n<img alt=\"Tỏi đen học viện quân y - gói 500g - Quà tặng ý nghĩa cho người thân\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Đ&aacute;nh gi&aacute; t&aacute;c dụng tr&ecirc;n một số d&ograve;ng tế b&agrave;o ung thư tr&ecirc;n m&ocirc; h&igrave;nh NudeMice cho thấy dịch chiết tỏi đen c&oacute; t&aacute;c dụng ức chế sự ph&aacute;t triền c&aacute;c d&ograve;ng tế b&agrave;o ung thư v&uacute;, ung thư phổi, ung thư dạ d&agrave;y , đặc biệt tốt với ung thư đại tr&agrave;ng.<br />\r\n<img alt=\"Tỏi đen học viện quân y - gói 500g - Quà tặng ý nghĩa cho người thân\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;C&oacute; t&aacute;c dụng n&acirc;ng cao thể trạng, bồi bổ cơ thể, k&iacute;ch th&iacute;ch ti&ecirc;u h&oacute;a, gi&uacute;p ăn ngủ tốt đặc biệt ở người cao tuổi.<br />\r\n<img alt=\"Tỏi đen học viện quân y - gói 500g - Quà tặng ý nghĩa cho người thân\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Ngo&agrave;i ra c&aacute;c nghi&ecirc;n cứu tr&ecirc;n thề giới c&ograve;n cho thấy tỏi đen c&oacute; t&aacute;c dụng hạ Cholesterol, giảm mỡ m&aacute;u, tăng HLD, l&agrave;m giảm đường huyết.</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng&nbsp;</strong><strong>tỏi đen của Học Viện Qu&acirc;n Y</strong><br />\r\n<img alt=\"Tỏi đen học viện quân y - gói 500g - Quà tặng ý nghĩa cho người thân\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Ăn trực tiếp hoặc c&oacute; thể d&ugrave;ng chế biến để ăn với c&aacute;c m&oacute;n ăn kh&aacute;c t&ugrave;y khẩu vị mỗi người.<br />\r\n<img alt=\"Tỏi đen học viện quân y - gói 500g - Quà tặng ý nghĩa cho người thân\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Mỗi ng&agrave;y n&ecirc;n sử dụng 1 đến 2 củ tỏi/ng&agrave;y</p>\r\n\r\n<p><strong>Lưu &yacute;</strong>&nbsp;: Người cao tuổi chỉ n&ecirc;n d&ugrave;ng 3-5 t&eacute;p/ng&agrave;y&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(218, NULL, NULL, 0, 'Tỏi đen một nhánh Học Viện Quân Y - Hộp 200g', 'Tỏi đen một nhánh Học Viện Quân Y - Hộp 200g', 'toi-den-mot-nhanh-hoc-vien-quan-y-hop-200g', 'combo-2-hop-toi-den-mot-nhanh-co-don-200g-copy.jpg', 1, 1, 1, NULL, 5, 1, 350000, 275000, '<p>C&ocirc;ng dụng Tỏi Đen Một Nh&aacute;nh Học Viện Qu&acirc;n Y::<br />\r\n- Gi&uacute;p giảm mỡ m&aacute;u, tốt cho người bị tim mạch<br />\r\n- Gi&uacute;p chống oxy h&oacute;a, tăng cường sức đề kh&aacute;ng<br />\r\n- K&iacute;ch th&iacute;ch ti&ecirc;u h&oacute;a, giảm chướng bụng, ăn kh&oacute; ti&ecirc;u</p>\r\n', 'Tỏi đen một nhánh Học Viện Quân Y - Hộp 200g', NULL, 'Tỏi đen một nhánh Học Viện Quân Y - Hộp 200g', 'Tỏi đen một nhánh Học Viện Quân Y - Hộp 200g', NULL, NULL, 0, '0', 103, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 12, 0, NULL, 'vi', NULL, 1541560657, '', '21102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Tại Việt Nam, Tỏi đen lần đầu ti&ecirc;n được Học Viện Qu&acirc;n Y nghi&ecirc;n cứu quy tr&igrave;nh l&ecirc;n men v&agrave; th&agrave;nh phần h&oacute;a học, t&aacute;c dụng sinh học của tỏi đen được tạo ra trong đề t&agrave;i cấp nh&agrave; nước số KC10.TN05/11-15. Theo kết quả nghi&ecirc;n cứu n&agrave;y cho thấy. Tỏi sau khi được l&ecirc;n men th&agrave;nh<strong>&nbsp;tỏi đen</strong>, h&agrave;m lượng c&aacute;c nh&oacute;m hoạt chất tăng cao, đặc biệt l&agrave; h&agrave;m lượng hoạt chất S-allyl-L-Cystrin &ndash; đ&acirc;y l&agrave; hoạt chất được chứng minh l&agrave; c&oacute; t&aacute;c dụng gi&uacute;p ngăn ngừa sự ph&aacute;t triển của khối u gấp 5-6 lần so với tỏi th&ocirc;ng thường.<br />\r\n<br />\r\nỞ một số quốc gia như H&agrave;n Quốc v&agrave; Nhật Bản, tỏi đen được sử dụng kh&aacute; rộng r&atilde;i với vai tr&ograve; như một loại thực phẩm chức năng gi&uacute;p tăng cường sức khỏe v&agrave; bảo vệ cơ thể. Tỏi đen c&oacute; khả năng chống &ocirc; xy h&oacute;a rất cao v&agrave; n&oacute; thường được tin l&agrave; c&oacute; thể k&eacute;o d&agrave;i tuổi xu&acirc;n, hỗ trợ điều trị nhiều loại bệnh.</p>\r\n\r\n<p><strong>TH&Ocirc;NG TIN CHI TIẾT SẢN PHẨM TỎI ĐEN MỘT NH&Aacute;NH HỌC VIỆN QU&Acirc;N Y</strong><br />\r\n<strong>1. Th&agrave;nh phần của&nbsp;</strong><strong>tỏi đen học viện qu&acirc;n y</strong><br />\r\n<br />\r\n<img alt=\"Tỏi đen một nhánh học viện quân y - gói 200g - Tỏi đen cô đơn HVQY\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;100% tỏi đen l&ecirc;n men tự nhi&ecirc;n.<br />\r\n<img alt=\"Tỏi đen một nhánh học viện quân y - gói 200g - Tỏi đen cô đơn HVQY\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Kh&ocirc;ng chất phụ gia, kh&ocirc;ng chất bảo quản, kh&ocirc;ng m&agrave;u thực phẩm.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/quy-trinh-san-xuat%20toi%201%20nhanh.jpg\" style=\"height:161px; width:300px\" /></p>\r\n\r\n<p><strong>2. Đặc điểm nổi bật của&nbsp;</strong><strong>tỏi đen học viện qu&acirc;n y</strong><br />\r\n<img alt=\"Tỏi đen một nhánh học viện quân y - gói 200g - Tỏi đen cô đơn HVQY\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Sản phẩm tỏi đen c&oacute; m&agrave;u đen, vị ngọt, dễ ăn, vị như &ocirc; mai, kh&ocirc;ng c&ograve;n m&ugrave;i cay hăng của tỏi thường v&agrave; c&oacute; t&aacute;c dụng gấp h&agrave;ng chục lần tỏi thường.<br />\r\n<img alt=\"Tỏi đen một nhánh học viện quân y - gói 200g - Tỏi đen cô đơn HVQY\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Ở Việt Nam, lần đầu ti&ecirc;n tỏi đen được HỌC VIỆN QU&Acirc;N Y nghi&ecirc;n cứu quy tr&igrave;nh l&ecirc;n men cũng như th&agrave;nh phần h&oacute;a học v&agrave; t&aacute;c dụng sinh học của tỏi đen được tạo ra trong đề t&agrave;i cấp Nh&agrave; nước m&atilde; số KC10.TN05/11-15 v&agrave; KC.10.37/11-15.<br />\r\n<img alt=\"Tỏi đen một nhánh học viện quân y - gói 200g - Tỏi đen cô đơn HVQY\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Sản phẩm trải qua quy tr&igrave;nh chế biến với những quy định khắt khe từ việc kiểm so&aacute;t nhiệt độ, &aacute;p suất, độ ẩm, hơi nước thường xuy&ecirc;n được kiểm tra v&agrave; điều chỉnh đạt theo đ&uacute;ng chuẩn quy tr&igrave;nh đ&atilde; nghi&ecirc;n cứu của c&aacute;c chuy&ecirc;n gia, gi&aacute;o sư học viện qu&acirc;n y.<br />\r\n<img alt=\"Tỏi đen một nhánh học viện quân y - gói 200g - Tỏi đen cô đơn HVQY\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Nguy&ecirc;n liệu tỏi tươi được quy hoạch trồng ở c&aacute;c qu&acirc;n khu ở Hải Dương v&agrave; Phan Rang, L&yacute; Sơn - Quảng Ng&atilde;i c&oacute; chất lượng tinh chất dinh dưỡng tốt nhất.<br />\r\n<img alt=\"Tỏi đen một nhánh học viện quân y - gói 200g - Tỏi đen cô đơn HVQY\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Kết quả nghi&ecirc;n cứu cho thấy sau khi l&ecirc;n men h&agrave;m lượng c&aacute;c nh&oacute;m hoạt chất tăng rất cao, như hợp chất sufur hữu cơ, polyphenol, flavonoid, h&agrave;m lượng fructose tăng khoảng 50 lần, điều n&agrave;y giải th&iacute;ch v&igrave; sao tỏi đen c&oacute; vị ngột như tr&aacute;i c&acirc;y ch&iacute;n. Đặc biệt h&agrave;m lượng S-allyl-L-Cystein (l&agrave; hoạt chất đ&atilde; được chứng minh t&aacute;c dụng ngăn ngừa sự ph&aacute;t sinh khối u) tăng 5-6 lần so với tỏi thường.<br />\r\n<br />\r\n<strong>3.&nbsp;</strong><strong><u>T&aacute;c dụng của sản phẩm tỏi đen Học Viện Qu&acirc;n Y</u></strong><br />\r\n<img alt=\"Tỏi đen một nhánh học viện quân y - gói 200g - Tỏi đen cô đơn HVQY\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Hoạt t&iacute;nh qu&eacute;t gốc tự do rất tốt, đ&acirc;y l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y ra h&agrave;ng loạt c&aacute;c bệnh hiểm ngh&egrave;o như: u bướu, tim mạch, tiểu đường...<br />\r\n<img alt=\"Tỏi đen một nhánh học viện quân y - gói 200g - Tỏi đen cô đơn HVQY\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Gi&uacute;p bảo vệ tế b&agrave;o gan, d&ugrave;ng trong c&aacute;c trường hợp vi&ecirc;m gan, xơ gan, gan nhiễm mỡ.<br />\r\n<img alt=\"Tỏi đen một nhánh học viện quân y - gói 200g - Tỏi đen cô đơn HVQY\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Tăng cường khả năng miễn dịch g&oacute;p phần t&iacute;ch trong việc hỗ trợ điều trị u bướu, hạn chế t&aacute;i ph&aacute;t v&agrave; di căn cho bệnh nh&acirc;n u bướu, hạn chế bệnh tật.<br />\r\n<img alt=\"Tỏi đen một nhánh học viện quân y - gói 200g - Tỏi đen cô đơn HVQY\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;T&aacute;c dụng bảo vệ c&aacute;c tế b&agrave;o, cơ quan tạo m&aacute;u, miễn dịch trước c&aacute;c tia xạ. G&oacute;p phần bảo vệ sức khỏe của người l&agrave;m việc trong m&ocirc;i trường độc hại c&oacute; nguy cơ mắc bệnh cao.<br />\r\n<img alt=\"Tỏi đen một nhánh học viện quân y - gói 200g - Tỏi đen cô đơn HVQY\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Đ&aacute;nh gi&aacute; t&aacute;c dụng tr&ecirc;n một số d&ograve;ng tế b&agrave;o u bướu tr&ecirc;n m&ocirc; h&igrave;nh NudeMice cho thấy dịch chiết tỏi đen c&oacute; t&aacute;c dụng ức chế sự ph&aacute;t triền c&aacute;c d&ograve;ng tế b&agrave;o u v&uacute;, u phổi, u dạ d&agrave;y , đặc biệt tốt với u đại tr&agrave;ng.<br />\r\n<img alt=\"Tỏi đen một nhánh học viện quân y - gói 200g - Tỏi đen cô đơn HVQY\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;C&oacute; t&aacute;c dụng n&acirc;ng cao thể trạng, bồi bổ cơ thể, k&iacute;ch th&iacute;ch ti&ecirc;u h&oacute;a, gi&uacute;p ăn ngủ tốt đặc biệt ở người cao tuổi.<br />\r\n<img alt=\"Tỏi đen một nhánh học viện quân y - gói 200g - Tỏi đen cô đơn HVQY\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Ngo&agrave;i ra c&aacute;c nghi&ecirc;n cứu tr&ecirc;n thề giới c&ograve;n cho thấy tỏi đen c&oacute; t&aacute;c dụng hạ Cholesterol, giảm mỡ m&aacute;u, tăng HLD, l&agrave;m giảm đường huyết.</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng&nbsp;</strong><strong>tỏi đen của Học Viện Qu&acirc;n Y</strong><br />\r\n<img alt=\"Tỏi đen một nhánh học viện quân y - gói 200g - Tỏi đen cô đơn HVQY\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Ăn trực tiếp hoặc c&oacute; thể d&ugrave;ng chế biến để ăn với c&aacute;c m&oacute;n ăn kh&aacute;c t&ugrave;y khẩu vị mỗi người.<br />\r\n<img alt=\"Tỏi đen một nhánh học viện quân y - gói 200g - Tỏi đen cô đơn HVQY\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Mỗi ng&agrave;y n&ecirc;n sử dụng 2 đến 3 củ/lần - 2 lần/ng&agrave;y</p>\r\n\r\n<p><img alt=\"Tỏi đen một nhánh học viện quân y - gói 200g - Tỏi đen cô đơn HVQY\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;D&ugrave;ng sau khi ăn.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/IMG_1034.jpg\" style=\"height:750px; width:1000px\" /></p>\r\n');
INSERT INTO `product` (`id`, `style`, `id_value`, `brand`, `name`, `code`, `alias`, `image`, `hot`, `home`, `focus`, `coupon`, `view`, `active`, `price`, `price_sale`, `description`, `description_seo`, `location`, `title_seo`, `keyword_seo`, `detail`, `note`, `like`, `order`, `category_id`, `caption_1`, `caption_2`, `locale`, `bought`, `dksudung`, `sort`, `quantity`, `counter`, `lang`, `destination`, `time`, `tags`, `pro_dir`, `multi_image`, `img_dir`, `status`, `quaranty`, `tinhtrang`, `group_attribute_id`, `color`, `size`, `user_id`, `option_id`, `button_color1`, `config_pro`, `config_pro_content`, `price_imp`, `writer`, `address`, `provinceid`, `order_qty`, `product_hangsx`, `hangsx_id`, `caption_3`, `downloaded`, `number`, `detric`, `coupun`, `content`) VALUES
(214, NULL, NULL, 0, 'Kiện Khớp Tiêu Thống Collagen HVQY - Chuyên biệt bệnh thoát vị đĩa đệm, xương khớp người già.', 'Kiện khớp tiêu thống Collagen', 'kien-khop-tieu-thong-collagen-hvqy-chuyen-biet-benh-thoat-vi-dia-dem-xuong-khop-nguoi-gia', 'img-1810.PNG', 1, 1, 1, NULL, NULL, 1, 199000, 120000, '<p><strong>Kiện khớp ti&ecirc;u thống Collagen HVQY - chuy&ecirc;n biệt bệnh xương khớp : </strong>chuy&ecirc;n trị&nbsp;Đau nhức xương khớp, thấp khớp, tho&aacute;i h&oacute;a khớp, đau vai g&aacute;y, tho&aacute;t vị đĩa đệm, t&ecirc; ch&acirc;n tay, đau mỏi cổ.</p>\r\n', 'kiện khớp tiêu thống', NULL, 'kiện khớp tiêu thống', 'kiện khớp tiêu thống', NULL, NULL, 0, '0', 106, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 8, 0, NULL, 'vi', NULL, 1541996458, '', '22102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Bệnh xương khớp kh&aacute; phổ biến ở nước ta hi&ecirc;n nay, thường xuất hiện ở những người ngo&agrave;i 30 tuổi. Một trong những bệnh l&yacute; phổ biến về xương khớp l&agrave;&nbsp;<strong>bệnh tho&aacute;t vị đĩa đệm</strong>&nbsp;g&acirc;y nhiều hậu quả nghi&ecirc;m trọng cho người bệnh.<br />\r\n<br />\r\n<strong>Bạn c&oacute; đang gặp vấn đề với xương khớp, nhất l&agrave; bệnh tho&aacute;t vị đĩa đệm hay kh&ocirc;ng</strong>? h&atilde;y c&ugrave;ng t&igrave;m hiểu những nguy&ecirc;n nh&acirc;n, biểu hiện v&agrave; hậu quả của bệnh tho&aacute;t vị đĩa đệm để c&oacute; giải ph&aacute;p điều trị dứt điểm căn bệnh qu&aacute;i &aacute;c n&agrave;y!!!</p>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><em><a href=\"http://vienquany.com/shops/xuong-khop/Thuoc-Kien-Khop-Tieu-Thong-Collagen-HVQY-Dieu-tri-dut-diem-benh-thoat-vi-dia-dem-xuong-khop-nguoi-gia-1312.html\"><strong>Tho&aacute;t vị đĩa đệm</strong></a>&nbsp;l&agrave; t&igrave;nh trạng nh&acirc;n nhầy đĩa đệm cột sống tho&aacute;t ra khỏi vị tr&iacute; b&igrave;nh thường trong v&ograve;ng sợi ch&egrave;n &eacute;p v&agrave;o ống sống hay c&aacute;c rễ thần kinh sống v&agrave; c&oacute; sự đứt r&aacute;ch v&ograve;ng sợi g&acirc;y n&ecirc;n hội chứng thắt lưng h&ocirc;ng điển h&igrave;nh</em>&quot;<br />\r\n<br />\r\n&quot;<em>Tho&aacute;t vị đĩa đệm thường tập trung ở c&aacute;c dạng ch&iacute;nh l&agrave; tho&aacute;t vị đĩa đệm đốt sống cổ, tho&aacute;t vị đĩa đệm đốt sống thắt lưng v&agrave; tho&aacute;t vị đĩa đệm mất nước</em>.&quot;</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/thuoc-Dieu-tri-benh-thoat-vi-dia-dem-1.jpg\" style=\"height:421px; width:382px\" /></p>\r\n\r\n<p><strong>2. Bạn c&oacute; nguy cơ hay đang bị bệnh tho&aacute;t vị đĩa đệm kh&ocirc;ng? Sau đ&acirc;y l&agrave; những triệu chứng thường gặp:</strong></p>\r\n\r\n<table align=\"right\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><a href=\"http://vienquany.com/shops/xuong-khop/Thuoc-Kien-Khop-Tieu-Thong-Collagen-HVQY-Dieu-tri-dut-diem-benh-thoat-vi-dia-dem-xuong-khop-nguoi-gia-1312.html\" target=\"_blank\"><img alt=\"Các triệu chứng thoát vị đĩa đệm\" src=\"/uploads/shops/2016_08/thuoc-dieu-tri-benh-thoat-vi-dia-dem-4.jpg\" /></a></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong><a href=\"http://vienquany.com/shops/xuong-khop/Thuoc-Kien-Khop-Tieu-Thong-Collagen-HVQY-Dieu-tri-dut-diem-benh-thoat-vi-dia-dem-xuong-khop-nguoi-gia-1312.html\" target=\"_blank\">C&aacute;c triệu chứng tho&aacute;t vị đĩa đệm</a></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><img alt=\"Thuốc Kiện Khớp Tiêu Thống Collagen HVQY - Điều trị dứt điểm bệnh thoát vị đĩa đệm, xương khớp người già.\" src=\"http://vienquany.com/uploads/shops/2016_07/tich-do.png\" style=\"height:19px; width:20px\" />Đau thắt lưng với c&aacute;c triệu chứng nhức, t&ecirc; lan dọc từ thắt lưng xuống m&ocirc;ng v&agrave; ch&acirc;n, hay đau từ v&ugrave;ng cổ &ndash; g&aacute;y lan ra hai vai v&agrave; xuống c&aacute;c c&aacute;nh tay, b&agrave;n tay, &hellip; khiến bạn cảm thấy rất kh&oacute; chịu, đau đớn.<br />\r\n<img alt=\"Thuốc Kiện Khớp Tiêu Thống Collagen HVQY - Điều trị dứt điểm bệnh thoát vị đĩa đệm, xương khớp người già.\" src=\"http://vienquany.com/uploads/shops/2016_07/tich-do.png\" style=\"height:19px; width:20px\" />Biểu hiện đau v&ugrave;ng g&aacute;y, vai. Đau, t&ecirc;, mất cảm gi&aacute;c từng v&ugrave;ng ở cả tay, cổ tay, b&agrave;n tay. Giảm cơ lực tay. C&aacute;c hiện tượng đau, nhức, t&ecirc; tăng l&ecirc;n hay giảm xuống theo cử động của cổ tay, &hellip;<br />\r\n<img alt=\"Thuốc Kiện Khớp Tiêu Thống Collagen HVQY - Điều trị dứt điểm bệnh thoát vị đĩa đệm, xương khớp người già.\" src=\"http://vienquany.com/uploads/shops/2016_07/tich-do.png\" style=\"height:19px; width:20px\" />Đau v&ugrave;ng thắt lưng v&agrave; đau thần kinh li&ecirc;n sườn: Cảm gi&aacute;c đau tăng khi nằm nghi&ecirc;ng, ho v&agrave; đại tiện, đau v&ugrave;ng cột sống lưng lan theo h&igrave;nh v&ograve;ng cung ra ph&iacute;a trước ngực dọc theo khoang li&ecirc;n sườn<br />\r\n<img alt=\"Thuốc Kiện Khớp Tiêu Thống Collagen HVQY - Điều trị dứt điểm bệnh thoát vị đĩa đệm, xương khớp người già.\" src=\"http://vienquany.com/uploads/shops/2016_07/tich-do.png\" style=\"height:19px; width:20px\" />Kh&ocirc;ng c&ograve;n khả năng ưỡn của thắt lưng, kh&ocirc;ng c&uacute;i được xuống thấp, &hellip; Bạn hay c&oacute; tư thế ngay lưng hoặc vẹo về một b&ecirc;n để chống đau, c&oacute; trường hợp đau rất dữ dội v&agrave; phải nằm bất động về b&ecirc;n đỡ đau<br />\r\n<img alt=\"Thuốc Kiện Khớp Tiêu Thống Collagen HVQY - Điều trị dứt điểm bệnh thoát vị đĩa đệm, xương khớp người già.\" src=\"http://vienquany.com/uploads/shops/2016_07/tich-do.png\" style=\"height:19px; width:20px\" />Đau thường t&aacute;i ph&aacute;t nhiều lần mỗi đợt k&eacute;o d&agrave;i khoảng 1 &ndash; 2 tuần sau đ&oacute; lại khỏi bệnh, dần dần đau trở n&ecirc;n thường xuy&ecirc;n hơn c&oacute; khi k&eacute;o d&agrave;i đến h&agrave;ng th&aacute;ng.<br />\r\n<br />\r\n<strong>3. Những nguy&ecirc;n nh&acirc;n ch&iacute;nh n&agrave;o dẫn đến bệnh tho&aacute;t vị đĩa đệm?</strong></p>\r\n\r\n<table align=\"right\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><a href=\"http://vienquany.com/shops/xuong-khop/Thuoc-Kien-Khop-Tieu-Thong-Collagen-HVQY-Dieu-tri-dut-diem-benh-thoat-vi-dia-dem-xuong-khop-nguoi-gia-1312.html\" target=\"_blank\"><img alt=\"Các nguyên nhân gây bệnh thoát vị đĩa đệm\" src=\"/uploads/shops/2016_08/thuoc-dieu-tri-benh-thoat-vi-dia-dem-3.jpg\" /></a></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong><a href=\"http://vienquany.com/shops/xuong-khop/Thuoc-Kien-Khop-Tieu-Thong-Collagen-HVQY-Dieu-tri-dut-diem-benh-thoat-vi-dia-dem-xuong-khop-nguoi-gia-1312.html\" target=\"_blank\">C&aacute;c nguy&ecirc;n nh&acirc;n g&acirc;y bệnh tho&aacute;t vị đĩa đệm</a></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><img alt=\"Thuốc Kiện Khớp Tiêu Thống Collagen HVQY - Điều trị dứt điểm bệnh thoát vị đĩa đệm, xương khớp người già.\" src=\"http://vienquany.com/uploads/shops/2016_07/tich-do.png\" style=\"height:19px; width:20px\" />Nguy&ecirc;n nh&acirc;n phổ biến dẫn đến&nbsp;<strong>tho&aacute;t vị đĩa đệm</strong>&nbsp;l&agrave; l&agrave; tư thế sai trong lao động, vận động v&agrave; hoạt động. Khi nhấc vật nặng ở tư thế kh&ocirc;ng ph&ugrave; hợp, tư thế ngồi l&acirc;u kh&ocirc;ng hợp l&yacute; cũng l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y tho&aacute;t vị đĩa đệm.<br />\r\n<img alt=\"Thuốc Kiện Khớp Tiêu Thống Collagen HVQY - Điều trị dứt điểm bệnh thoát vị đĩa đệm, xương khớp người già.\" src=\"http://vienquany.com/uploads/shops/2016_07/tich-do.png\" style=\"height:19px; width:20px\" />Nguy&ecirc;n nh&acirc;n do tho&aacute;i h&oacute;a tự nhi&ecirc;n: Tuổi t&aacute;c v&agrave; c&aacute;c bệnh l&yacute; cột sống bẩm sinh như gai cột sống, g&ugrave; vẹo, tho&aacute;i h&oacute;a cột sống cũng l&agrave; c&aacute;c yếu tố thuận lợi để g&acirc;y bệnh. Những người c&oacute; độ tuổi từ 30 đến 50 l&agrave; c&oacute; nguy cơ bị tho&aacute;t vị đĩa đệm cao nhất<br />\r\n<img alt=\"Thuốc Kiện Khớp Tiêu Thống Collagen HVQY - Điều trị dứt điểm bệnh thoát vị đĩa đệm, xương khớp người già.\" src=\"http://vienquany.com/uploads/shops/2016_07/tich-do.png\" style=\"height:19px; width:20px\" />Tổn thương đĩa đệm cũng c&oacute; thể do nguy&ecirc;n nh&acirc;n di truyền. Nếu bố mẹ c&oacute; đĩa đệm yếu do bất thường về cấu tr&uacute;c th&igrave; con c&aacute;i cũng dễ bị tho&aacute;t vị đĩa đệm.</p>\r\n\r\n<p><strong>4. Bệnh tho&aacute;t vị đĩa đệm thường g&acirc;y ra v&agrave; để lại c&aacute;c hậu quả sau đ&acirc;y</strong></p>\r\n\r\n<p><strong>Bệnh tho&aacute;t vị đĩa đệm</strong>&nbsp;l&agrave;m cho khả năng vận động bị giảm s&uacute;t r&otilde; rệt, kh&oacute; thực hiện c&aacute;c động t&aacute;c như c&uacute;i ngửa, nghi&ecirc;ng xoay, kh&oacute; vận động c&aacute;c chi khi rễ thần kinh bị tổn thương<br />\r\n<img alt=\"Thuốc Kiện Khớp Tiêu Thống Collagen HVQY - Điều trị dứt điểm bệnh thoát vị đĩa đệm, xương khớp người già.\" src=\"http://vienquany.com/uploads/shops/2016_07/tich-do.png\" style=\"height:19px; width:20px\" />Nếu tổn thương thần kinh c&aacute;nh tay th&igrave; c&oacute; thể kh&oacute; nhấc tay hay kh&oacute; gấp, duỗi c&aacute;nh tay<br />\r\n<img alt=\"Thuốc Kiện Khớp Tiêu Thống Collagen HVQY - Điều trị dứt điểm bệnh thoát vị đĩa đệm, xương khớp người già.\" src=\"http://vienquany.com/uploads/shops/2016_07/tich-do.png\" style=\"height:19px; width:20px\" />Nếu tổn thương thần kinh tọa th&igrave; bệnh nh&acirc;n c&oacute; thể kh&ocirc;ng nhấc đơợc g&oacute;t ch&acirc;n hay mũi ch&acirc;n. Dần dần xuất hiện teo cơ ch&acirc;n b&ecirc;n tổn thương<br />\r\n<img alt=\"Thuốc Kiện Khớp Tiêu Thống Collagen HVQY - Điều trị dứt điểm bệnh thoát vị đĩa đệm, xương khớp người già.\" src=\"http://vienquany.com/uploads/shops/2016_07/tich-do.png\" style=\"height:19px; width:20px\" />Khi bị nặng người bệnh c&oacute; thể thấy ch&acirc;n t&ecirc; b&igrave;, mất cảm gi&aacute;c ở ch&acirc;n đau, đại tiểu tiện kh&ocirc;ng kiểm so&aacute;t được<br />\r\n<img alt=\"Thuốc Kiện Khớp Tiêu Thống Collagen HVQY - Điều trị dứt điểm bệnh thoát vị đĩa đệm, xương khớp người già.\" src=\"http://vienquany.com/uploads/shops/2016_07/tich-do.png\" style=\"height:19px; width:20px\" />Bệnh nh&acirc;n c&oacute; thể bị t&agrave;n phế suốt đời do bị liệt trong trường hợp đĩa đệm tho&aacute;t vị ch&egrave;n &eacute;p tủy cổ<br />\r\n<img alt=\"Thuốc Kiện Khớp Tiêu Thống Collagen HVQY - Điều trị dứt điểm bệnh thoát vị đĩa đệm, xương khớp người già.\" src=\"http://vienquany.com/uploads/shops/2016_07/tich-do.png\" style=\"height:19px; width:20px\" />Bệnh nh&acirc;n c&oacute; thể teo cơ c&aacute;c chi nhanh ch&oacute;ng khiến sinh hoạt bị ảnh hưởng nghi&ecirc;m trọng<br />\r\n<img alt=\"Thuốc Kiện Khớp Tiêu Thống Collagen HVQY - Điều trị dứt điểm bệnh thoát vị đĩa đệm, xương khớp người già.\" src=\"http://vienquany.com/uploads/shops/2016_07/tich-do.png\" style=\"height:19px; width:20px\" />Ngo&agrave;i ra bệnh tho&aacute;t vị đĩa đệm c&ograve;n c&oacute; thể l&agrave; t&aacute;c nh&acirc;n g&acirc;y ra c&aacute;c bệnh kh&aacute;c như: Đau rễ thần kinh, rối loạn vận động, bại liệt cơ, hội chứng đu&ocirc;i ngựa dẫn đến liệt c&aacute;c chi v&agrave; bộ phận chi&hellip;..<br />\r\n<br />\r\nRất nhiều bệnh nh&acirc;n đang phải đối mặt với c&aacute;c hậu quả của căn bệnh tho&aacute;t vị đĩa đệm đang tăng l&ecirc;n từng ng&agrave;y, họ đ&atilde; d&ugrave;ng nhiều sản phẩm v&agrave; &aacute;p dụng nhiều biện ph&aacute;p nhưng vẫn kh&ocirc;ng giải quyết được triệt để v&agrave; họ vẫn đang phải chịu những đau đớn m&agrave; căn bệnh n&agrave;y g&acirc;y n&ecirc;n<br />\r\n<br />\r\nNhưng cũng rất nhiều bệnh nh&acirc;n đ&atilde; tho&aacute;t khỏi bệnh tho&aacute;t vị đĩa đệm một c&aacute;ch triệt để, họ kh&ocirc;ng c&ograve;n bị những cơn đau h&agrave;nh hạ v&agrave; kh&ocirc;ng c&ograve;n phải lo lắng về c&aacute;c hậu quả m&agrave; bệnh tho&aacute;t vị đĩa đệm g&acirc;y ra.</p>\r\n\r\n<p><strong>5. Vậy đ&acirc;u l&agrave; giải ph&aacute;p điều trị triệt để v&agrave; an to&agrave;n cho căn bệnh tho&aacute;t vị đĩa đệm??</strong><br />\r\n<br />\r\nQua nhiều qu&aacute; tr&igrave;nh nghi&ecirc;n cứu v&agrave; thử nghiệm l&acirc;m s&agrave;ng, c&aacute;c nh&agrave; khoa học của Học viện Qu&acirc;n y đ&atilde; cho ra đời sản phẩm độc đ&aacute;o giải quyết triệt để c&aacute;c vấn đề của bệnh xương khớp v&agrave; tho&aacute;t vị đĩa đệm đ&oacute; l&agrave; sản phẩm:&nbsp;</p>\r\n\r\n<p><strong>Kiện khớp ti&ecirc;u thống Collagen HVQY - chuy&ecirc;n biệt bệnh xương khớp</strong>&nbsp;- Đau nhức xương khớp, thấp khớp, tho&aacute;i h&oacute;a khớp, đau vai g&aacute;y, tho&aacute;t vị đĩa đệm, t&ecirc; ch&acirc;n tay, đau mỏi cổ.<br />\r\n<br />\r\n<strong><a href=\"http://vienquany.com/shops/xuong-khop/Thuoc-Kien-Khop-Tieu-Thong-Collagen-HVQY-Dieu-tri-dut-diem-benh-thoat-vi-dia-dem-xuong-khop-nguoi-gia-1312.html\">Th&agrave;nh phần chủ yếu của&nbsp;</a></strong><strong><a href=\"http://vienquany.com/shops/xuong-khop/Thuoc-Kien-Khop-Tieu-Thong-Collagen-HVQY-Dieu-tri-dut-diem-benh-thoat-vi-dia-dem-xuong-khop-nguoi-gia-1312.html\">kiện khớp ti&ecirc;u thống Collagen</a></strong><strong>&nbsp;gồm:&nbsp;</strong><br />\r\n<br />\r\n- Cốt to&aacute;i bổ:....................................... 600 mg<br />\r\n- Ngũ gia b&igrave;:........................................ 500 mg<br />\r\n- Mẫu lệ: ............................................ 1000 mg<br />\r\n- Can khương:.................................... 400 mg<br />\r\n- Hy thi&ecirc;m thảo:.................................. 500 mg<br />\r\n- Cẩu t&iacute;ch: ........................................... 500 mg<br />\r\n- D&acirc;y đau xương:................................ 500 mg<br />\r\n- Thổ phục linh:..................................&nbsp; 500 mg<br />\r\n- Thi&ecirc;n ni&ecirc;n kiện:...............................&nbsp; 500 mg<br />\r\n- Collagen: .......................................... 150 mg<br />\r\n- Một số dược liệu qu&yacute; kh&aacute;c, Lactose, talc vừa đủ 1 vi&ecirc;n.</p>\r\n\r\n<p><strong>6. C&ocirc;ng dụng ch&iacute;nh của kiện khớp ti&ecirc;u thống Collagen:&nbsp;</strong></p>\r\n\r\n<p>&nbsp;Gi&uacute;p tăng cường chức năng l&agrave;m việc cho xương v&agrave; khớp, ngăn ngừa tho&aacute;i h&oacute;a khớp.</p>\r\n\r\n<p>&nbsp;Tăng tiết dịch khớp, kh&aacute;ng vi&ecirc;m, ti&ecirc;u xưng</p>\r\n\r\n<p>&nbsp;Bổ can thận, kiện g&acirc;n, bổ xương&hellip;., gi&uacute;p giảm c&aacute;c triệu chứng đau xương khớp</p>\r\n\r\n<p>&nbsp;Hỗ trợ điều trị hiệu quả tho&aacute;i h&oacute;a xương khớp&hellip;.., thấp khớp&hellip;&hellip;&hellip;., kh&ocirc; khớp,</p>\r\n\r\n<p>&nbsp;Gai cột sống&hellip;&hellip;.., t&ecirc; ch&acirc;n tay&hellip;&hellip;&hellip;&hellip;.., đau vai g&aacute;y&hellip;.., đau mỏi cổ, &hellip;.tho&aacute;t vị đĩa đệm,</p>\r\n\r\n<p><strong>7. Đối tượng sử dụng Kiện khớp ti&ecirc;u thống collagen:&nbsp;</strong><br />\r\n&nbsp;Người bi đau nhức xương khớp, thấp khớp, tho&aacute;i h&oacute;a khớp,<br />\r\nNgười bị gai cột sống, người bị ch&acirc;n tay t&ecirc; bại, đau vai g&aacute;y, đau mỏi cổ,<br />\r\nNgười bị tho&aacute;t vị đĩa đệm, tổn thương m&ocirc; sụn,<br />\r\nNgười bị tho&aacute;i h&oacute;a xương khớp, chấn thương về xương khớp.<br />\r\n<strong>* Đối tượng ph&ograve;ng ngừa :</strong></p>\r\n\r\n<p>Người lao động nặng&hellip;&hellip;&hellip;Người l&agrave;m việc văn ph&ograve;ng &iacute;t vận động&hellip;&hellip;Người thừa c&acirc;n b&eacute;o ph&igrave;</p>\r\n\r\n<p>&nbsp;Người cao tuổi&hellip;&hellip;&hellip;&hellip;Vận động vi&ecirc;n thể thao.<br />\r\n<strong>8. Đối tượng kh&ocirc;ng n&ecirc;n sử dụng:</strong><br />\r\n<br />\r\n<img alt=\"Thuốc Kiện Khớp Tiêu Thống Collagen HVQY - Điều trị dứt điểm bệnh thoát vị đĩa đệm, xương khớp người già.\" src=\"http://vienquany.com/uploads/shops/2016_07/tich-do.png\" style=\"height:19px; width:20px\" />Người suy chức năng gan thận,<br />\r\n<img alt=\"Thuốc Kiện Khớp Tiêu Thống Collagen HVQY - Điều trị dứt điểm bệnh thoát vị đĩa đệm, xương khớp người già.\" src=\"http://vienquany.com/uploads/shops/2016_07/tich-do.png\" style=\"height:19px; width:20px\" />Người bị thấp tim, phụ nữ c&oacute; thai,<br />\r\n<img alt=\"Thuốc Kiện Khớp Tiêu Thống Collagen HVQY - Điều trị dứt điểm bệnh thoát vị đĩa đệm, xương khớp người già.\" src=\"http://vienquany.com/uploads/shops/2016_07/tich-do.png\" style=\"height:19px; width:20px\" />Người bị tiểu đường<br />\r\n<br />\r\n<strong>9. C&aacute;ch d&ugrave;ng v&agrave; liều d&ugrave;ng:</strong><br />\r\n<br />\r\n<img alt=\"Thuốc Kiện Khớp Tiêu Thống Collagen HVQY - Điều trị dứt điểm bệnh thoát vị đĩa đệm, xương khớp người già.\" src=\"http://vienquany.com/uploads/shops/2016_07/tich-xanh.png\" style=\"height:19px; width:20px\" />Ng&agrave;y uống 2 lần, mỗi lần 2 vi&ecirc;n sau ăn.<br />\r\n<img alt=\"Thuốc Kiện Khớp Tiêu Thống Collagen HVQY - Điều trị dứt điểm bệnh thoát vị đĩa đệm, xương khớp người già.\" src=\"http://vienquany.com/uploads/shops/2016_07/tich-xanh.png\" style=\"height:19px; width:20px\" />Để đạt được hiệu quả điều trị tốt nhất n&ecirc;n d&ugrave;ng thuốc từ 2-3 th&aacute;ng.</p>\r\n\r\n<p><strong>10. Quy c&aacute;ch đ&oacute;i g&oacute;i v&agrave; bảo quản sản phẩm:&nbsp;</strong><br />\r\nHộp 1 lọ 60 vi&ecirc;n<br />\r\nBảo quản nơi kh&ocirc; m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp<br />\r\nSố đăng k&yacute;: 1970/2015/ATTP-XNCB</p>\r\n'),
(215, NULL, NULL, 0, 'Tinh chất nghệ Học Viện Quân Y', 'Tinh chất nghệ HVQY', 'tinh-chat-nghe-hoc-vien-quan-y', 'hop-tinh-chat-nghe-giam-gia-5-copy.jpg', 1, 1, 1, NULL, 7, 1, 150000, 85000, '<p>- Bổ huyết, bồi bổ sức khoẻ, nhuận gan, lợi mật, tốt cho đường ti&ecirc;u ho&aacute;, gi&uacute;p l&agrave;m giảm vi&ecirc;m đau dạ d&agrave;y t&aacute; tr&agrave;ng, tốt cho phụ nữ sau khi sinh.<br />\r\n- Gi&uacute;p chống oxy ho&aacute;, giảm t&aacute;c dụng phụ của ho&aacute; trị, xạ trị.</p>\r\n', 'tinh chất nghệ', NULL, 'tinh chất nghệ', 'tinh chất nghệ', NULL, NULL, 0, '0', 103, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 9, 0, NULL, 'vi', NULL, 1541343633, '', '21102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>&nbsp;Đối tượng sử dụng:</p>\r\n\r\n<p>- Người bị đau dạ d&agrave;y, t&aacute; tr&agrave;ng, rối loạn ti&ecirc;u ho&aacute;, vi&ecirc;m gan<br />\r\n- Phụ nữ sau sinh, phụ nữ bị rối loạn kinh nguyệt<br />\r\n- Người suy nhược cơ thể, người trong v&agrave; sauy qu&aacute; tr&igrave;nh xạ trị, ho&aacute; trị<br />\r\n&nbsp;C&aacute;ch d&ugrave;ng: Uống 10g/lần x2- 3 lần/ng&agrave;y, pha với khoảng 100 ml nước ấm<br />\r\nQuy c&aacute;ch đ&oacute;ng g&oacute;i:<br />\r\n10g/g&oacute;i, Hộp/ 10 g&oacute;i</p>\r\n'),
(216, NULL, NULL, 0, 'Đơn thuốc số 12 chữa dạ dày của viện 103', 'Đơn số 12 chữa dạ dày của viện 103', 'don-thuoc-so-12-chua-da-day-cua-vien-103', 'thuoc-bot-don-so-12-hvqy-01-768x768.jpg', 1, 1, 1, NULL, 4, 1, 5500, 4500, '<p>Đơn thuốc số 12 l&agrave; một trong những sản phẩm rất hot hiện nay tr&ecirc;n thị trường thuốc vi&ecirc;m lo&eacute;t dạ d&agrave;y. Để hiểu r&otilde; về đơn thuốc n&agrave;y kh&ocirc;ng phải ai cũng biết.</p>\r\n\r\n<h2><strong>C&Ocirc;NG DỤNG KHI SỬ DỤNG THUỐC BỘT ĐƠN S&Oacute; 12</strong></h2>\r\n\r\n<p>Giảm c&aacute;c cơn đau hiệu quả do bệnh dạ d&agrave;y, vi&ecirc;m lo&eacute;t dạ d&agrave;y.</p>\r\n\r\n<p>Trung h&ograve;a dịch vị axit dạ d&agrave;y, giảm c&aacute;c triệu chứng ợ hơi, ợ chua, buồn n&ocirc;n kh&oacute; ti&ecirc;u.</p>\r\n\r\n<p>Chống vi&ecirc;m, kh&aacute;ng khuẩn, l&agrave;m giảm v&agrave; nhanh liền c&aacute;c vết lo&eacute;t ở dạ d&agrave;y, t&aacute;i tạo ni&ecirc;m mạc dạ d&agrave;y.</p>\r\n\r\n<p>Ức chế tạm thời vi khuẩn HP.&nbsp;</p>\r\n\r\n<p>Tăng cường sức đề kh&aacute;ng, bổ m&aacute;u, n&acirc;ng cao sức khỏe sau một thời gian d&agrave;i sử dụng.</p>\r\n\r\n<p>Sản phẩm kh&ocirc;ng g&acirc;y t&aacute;c dụng phụ, kh&ocirc;ng ảnh hưởng đến gan thận.</p>\r\n\r\n<h3>&nbsp;</h3>\r\n', 'đơn số 12 chữa dạ dày', NULL, 'đơn số 12 chữa dạ dày', 'đơn số 12 chữa dạ dày', NULL, NULL, 0, '0', 106, 'Viện 103', NULL, NULL, NULL, NULL, 10, 0, NULL, 'vi', NULL, 1540137845, '', '19102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><strong>BẠN BIẾT G&Igrave; VỀ THUỐC BỘT ĐƠN SỐ 12 HỌC VIỆN QU&Acirc;N Y ?</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Tr&ecirc;n thị trường hiện nay c&oacute; rất nhiều loại thuốc đặc trị đau dạ d&agrave;y. H&ocirc;m nay&nbsp;<strong>Sức khỏe mỗi ng&agrave;y c&ugrave;ng HCT</strong>&nbsp;sẽ giới thiệu tới bạn đọc&nbsp;<strong>Thuốc bột đơn&nbsp;số 12&nbsp;Học Vi&ecirc;n Qu&acirc;n Y&nbsp;</strong>một loại thuốc đặc trị đau dạ d&agrave;y, an to&agrave;n, hiệu quả. Sản phẩm n&agrave;y được nghi&ecirc;n cứu v&agrave; sản xuất tại Học Viện Qu&acirc;n Y. Với những th&agrave;nh phần thảo dược tốt cho hệ ti&ecirc;u h&oacute;a n&ecirc;n Thuốc bột đơn số 12 Học Vi&ecirc;n Qu&acirc;n Y được rất nhiều người biết đến v&agrave; tin tưởng sử dụng.&nbsp; &nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; Như mọi người đ&atilde; biết ng&agrave;y nay&nbsp;<a href=\"https://hct.com.vn/viem-loet-da-day-nen-ngung-ngay-nhung-do-an-nay-truoc-khi-qua-muon/\">bệnh đau dạ d&agrave;y</a>&nbsp;đang trở n&ecirc;n kh&aacute; phổ biến, c&oacute; thể gặp ở bất k&igrave; lứa tuổi v&agrave; đang dần trẻ h&oacute;a. Điều n&agrave;y kh&ocirc;ng chỉ ảnh hưởng tới sức khỏe m&agrave; c&ograve;n ảnh hưởng tới sinh hoạt của người bệnh. Bệnh ph&aacute;t triển rất nhanh ch&oacute;ng v&agrave; biến chứng v&agrave; t&aacute;c hại của n&oacute; rất kh&ocirc;n lường.</p>\r\n\r\n<p><strong>T&ecirc;n sản phẩm</strong>:&nbsp;Thuốc bột đơn số 12 Học Vi&ecirc;n Qu&acirc;n Y</p>\r\n\r\n<p><strong>Xuất sứ:</strong>&nbsp;Việt Nam</p>\r\n\r\n<p><strong>H&atilde;ng sản xuất:</strong>&nbsp;Học viện qu&acirc;n y</p>\r\n\r\n<p><strong>Quy c&aacute;ch:</strong>&nbsp;4gam/ G&oacute;i</p>\r\n\r\n<p><strong>TH&Agrave;NH PHẦN THUỐC BỘT ĐƠN SỐ 12 HỌC VIỆN QU&Acirc;N Y:</strong></p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Cao lỏng Belladon</strong></td>\r\n			<td>\r\n			<ul>\r\n				<li>C&oacute; th&agrave;nh phần chủ yếu l&agrave; alkaloid chứa atropine v&agrave; c&aacute;c dẫn chất</li>\r\n				<li>C&oacute; t&aacute;c dụng ức chế thần kinh ph&oacute; giao cảm g&acirc;y gải tiết acid dạ d&agrave;y</li>\r\n				<li>Gi&uacute;p giảm đau, giảm vi&ecirc;m lo&eacute;t.</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Mai mực</strong></td>\r\n			<td>\r\n			<ul>\r\n				<li>C&oacute; t&aacute;c dụng chỉ huyết, chống vi&ecirc;m, l&ecirc;n da non.</li>\r\n				<li>L&agrave;m l&agrave;nh vết thương d&ugrave;ng đối với bệnh vi&ecirc;m lo&eacute;t dạ d&agrave;y t&aacute; tr&agrave;ng, dạ d&agrave;y chảy m&aacute;u,</li>\r\n				<li>trung ho&agrave; acid dịch vị l&agrave;m ch&oacute;ng l&agrave;nh vết thương, vết lo&eacute;t.</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Ho&agrave;i sơn</strong></td>\r\n			<td>\r\n			<ul>\r\n				<li>Ho&agrave;i sơn c&oacute; chứa Tinh bột, chất nhầy, acid amin, chất b&eacute;o, bảo vệ ni&ecirc;m mạc dạ d&agrave;y</li>\r\n				<li>D&ugrave;ng l&agrave;m thuốc bổ ngũ tạng, chữa suy nhược cơ thể, tăng cường sức đề kh&aacute;ng, gi&uacute;p ti&ecirc;u h&oacute;a.</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Cam thảo</strong></td>\r\n			<td>\r\n			<ul>\r\n				<li>C&oacute; t&aacute;c dụng ho&atilde;n cấp chỉ thống, d&ugrave;ng trị đau dạ d&agrave;y, đau bụng, g&acirc;n mạch co r&uacute;t,</li>\r\n				<li>Ngo&agrave;i ra cam thảo c&ograve;n c&oacute; t&aacute;c dụng giảm vi&ecirc;m lo&eacute;t dạ d&agrave;y, bao vết vi&ecirc;m lo&eacute;t ni&ecirc;m mạc dạ d&agrave;y t&aacute; tr&agrave;ng.</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nghệ</strong></td>\r\n			<td>\r\n			<ul>\r\n				<li>C&oacute; t&aacute;c dụng ti&ecirc;u thực ti&ecirc;u đ&agrave;m, giải độc giảm đau.</li>\r\n				<li>Gi&uacute;p lợi mật d&ugrave;ng trong c&aacute;c trường hợp bệnh ti&ecirc;u h&oacute;a, ăn uống k&eacute;m, đầy bụng, ợ hơi, ợ chua, vi&ecirc;m gan v&agrave;ng da.</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Hương phụ</strong></td>\r\n			<td>\r\n			<ul>\r\n				<li>C&oacute; t&aacute;c dụng h&agrave;nh kh&iacute; giảm đau, kiện vị ti&ecirc;u thực d&ugrave;ng cho c&aacute;c trường hợp ăn uống kh&ocirc;ng ti&ecirc;u, đau v&ugrave;ng thượng vị, ngực đầy trướng, ợ hơi.</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2><strong>C&Ocirc;NG DỤNG THUỐC BỘT ĐƠN SỐ 12 HỌC VIỆN QU&Acirc;N Y:</strong></h2>\r\n\r\n<ul>\r\n	<li>Giảm c&aacute;c cơn đau hiệu quả do bệnh dạ d&agrave;y, vi&ecirc;m lo&eacute;t dạ d&agrave;y.</li>\r\n	<li>Trung h&ograve;a dịch vị axit dạ d&agrave;y, giảm c&aacute;c triệu chứng ợ hơi, ợ chua, buồn n&ocirc;n kh&oacute; ti&ecirc;u.</li>\r\n	<li>Chống vi&ecirc;m, kh&aacute;ng khuẩn, l&agrave;m giảm v&agrave; nhanh liền c&aacute;c vết lo&eacute;t ở dạ d&agrave;y, t&aacute;i tạo ni&ecirc;m mạc dạ d&agrave;y.</li>\r\n	<li>Ức chế tạm thời vi khuẩn HP.&nbsp;</li>\r\n	<li>Tăng cường sức đề kh&aacute;ng, bổ m&aacute;u, n&acirc;ng cao sức khỏe sau một thời gian d&agrave;i sử dụng.</li>\r\n	<li>Sản phẩm kh&ocirc;ng g&acirc;y t&aacute;c dụng phụ, kh&ocirc;ng ảnh hưởng đến gan thận</li>\r\n	<li><strong>C&Aacute;CH SỬ DỤNG:</strong></li>\r\n	<li>Uống 1 g&oacute;i/lần, 2-3 lần/ ng&agrave;y, pha v&agrave;o nước lọc.</li>\r\n	<li>Uống trước khi ăn 1-2 tiếng, hoặc l&uacute;c đau.</li>\r\n	<li><strong>TẠI SAO BẠN N&Ecirc;N LỰA CHỌN THUỐC BỘT ĐƠN SỐ 12 HỌC VIỆN QU&Acirc;N Y</strong></li>\r\n	<li>Nguy&ecirc;n liệu v&agrave; th&agrave;nh phẩm đều được kiểm so&aacute;t, kiểm nghiệm đạt ti&ecirc;u chuẩn n&ecirc;n chất lượng sản phẩm tương đối tốt, ổn định. Thuốc cũng đ&atilde; được Cục sở hữu tr&iacute; tuệ cấp bằng độc quyền về nh&atilde;n hiệu h&agrave;ng h&oacute;a</li>\r\n	<li>Được sản xuất theo quy tr&igrave;nh v&agrave; d&acirc;y chuyền với sản lượng tr&ecirc;n 1 triệu g&oacute;i/năm.</li>\r\n	<li>Qua nghi&ecirc;n cứu nhiều b&agrave;i thuốc y học cổ truyền c&oacute; t&aacute;c dụng hỗ trợ điều trị vi&ecirc;m lo&eacute;t d&agrave; d&agrave;y- t&aacute; tr&agrave;ng, ợ chua, ợ hơi, đầy bụng, rối loạn ti&ecirc;u ho&aacute;.</li>\r\n	<li>C&aacute;c b&aacute;c sĩ &ndash; nh&agrave; khoa học của viện 103 &ndash; Học viện Qu&acirc;n Y đ&atilde; nghi&ecirc;n cứu th&agrave;nh c&ocirc;ng ĐƠN THUỐC SỐ 12 HỌC VI&Ecirc;N QU&Acirc;N Y. Với đơn thuốc n&agrave;y sẽ gi&uacute;p đặc trị vi&ecirc;m lo&eacute;t dạ d&agrave;y t&aacute; tr&agrave;ng b&ecirc;n cạnh đ&oacute; hiệu quả cao cũng như&nbsp;<em><strong>hạn chế được nhiều t&aacute;c dụng phụ so với thuốc t&acirc;y y.</strong></em></li>\r\n	<li><strong>THUỐC BỘT ĐƠN SỐ 12 HỌC VI&Ecirc;N QU&Acirc;N Y&nbsp;</strong>cam kết&nbsp;<strong>KH&Ocirc;NG CHỨA&nbsp;</strong>th&agrave;nh phần corticoid. Hiện nay tr&ecirc;n thị trường c&oacute; rất nhiều loại thuốc đ&ocirc;ng, nam dược pha trộn corticoid v&agrave;o với t&aacute;c dụng giảm đau nhanh. Đặc biệt trong c&aacute;c bệnh vi&ecirc;m khớp. Tuy nhi&ecirc;n corticoid lại tăng th&ecirc;m t&igrave;nh trạng vi&ecirc;m lo&eacute;t, thậm ch&iacute; xuất huyết ti&ecirc;u h&oacute;a, thủng ổ lo&eacute;t do l&agrave;m tăng tiết acid dạ d&agrave;y. V&igrave; vậy l&agrave;m nặng th&ecirc;m t&igrave;nh trạng bệnh, ph&ugrave;, suy tuyến thượng thận&hellip;&nbsp;Bởi vậy&nbsp;<strong>THUỐC BỘT ĐƠN SỐ 12 HỌC VIỆN QU&Acirc;N Y&nbsp;</strong>l&agrave; một lựa chọn kh&ocirc;ng thể bỏ qua.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n'),
(219, NULL, NULL, 0, 'TỎI ĐEN ĐÔNG TRÙNG HẠ THẢO - Học Viện Quân Y', 'tỏi đen đông trùng hạ thảo', 'toi-den-dong-trung-ha-thao-hoc-vien-quan-y', 's-100025389-79946f3ddfdc3a4765be5837a5e14b0a-copy.jpg', 1, 1, 1, NULL, 2, 1, 300000, 180000, '<p>Gi&uacute;p bồi bổ cơ thể, n&acirc;ng cao thể lực, tốt cho người bị suy nhược, mệt mỏi, ốm yếu. Tăng cường sức khỏe, gi&uacute;p giảm cholesterol m&aacute;u, hạn chế xơ vữa mạch do cholesterol m&aacute;u. Bổ thận, tăng cường chức năng sinh l&yacute; nam giới.</p>\r\n', 'tỏi đen đông trùng hạ thảo', NULL, 'tỏi đen đông trùng hạ thảo', 'tỏi đen đông trùng hạ thảo', NULL, NULL, 0, '0', 103, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 13, 0, NULL, 'vi', NULL, 1541560626, '', '30102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><strong>1. TH&Agrave;NH PHẦN :</strong><br />\r\n&nbsp;&nbsp;&nbsp; Cao kh&ocirc; tỏi đen&hellip;&hellip;&hellip;&hellip;...&hellip;..200 mg<br />\r\n&nbsp;&nbsp;&nbsp; Cao đ&ocirc;ng tr&ugrave;ng hạ thảo&hellip;&hellip;&hellip;.100 mg<br />\r\n&nbsp;&nbsp;&nbsp; Vitamin B1&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;3,6 mg<br />\r\n&nbsp;&nbsp;&nbsp; Vitamin B2&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip; 2,8 mg<br />\r\n&nbsp;&nbsp;&nbsp; Vitamin B6&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;.3,6 mg<br />\r\n&nbsp;&nbsp;&nbsp; Vitamin C&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;...50 mg<br />\r\n&nbsp;&nbsp;&nbsp; Vitamin D&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;.100 IU<br />\r\n&nbsp;&nbsp;&nbsp; Vitamin A&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;.200 IU<br />\r\n&nbsp;&nbsp;&nbsp; Phụ liệu: dầu thực vật, gelatin vừa đủ 1 vi&ecirc;n</p>\r\n\r\n<p><strong>2. C&Ocirc;NG DỤNG :</strong></p>\r\n\r\n<p><img alt=\"Tỏi đen đông trùng hạ thảo\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:22px; width:24px\" />&nbsp;Gi&uacute;p bồi bổ cơ thể, n&acirc;ng cao thể lực, tốt cho người bị suy nhược, mệt mỏi, ốm yếu.</p>\r\n\r\n<p><img alt=\"Tỏi đen đông trùng hạ thảo\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:22px; width:24px\" />&nbsp;Chống oxi h&oacute;a, tăng sức đề kh&aacute;ng của cơ thể, ph&ograve;ng chống bệnh tật</p>\r\n\r\n<p><img alt=\"Tỏi đen đông trùng hạ thảo\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:22px; width:24px\" />&nbsp;Ức chế sự h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển của tế b&agrave;o ung thư, c&oacute; t&aacute;c dụng ph&ograve;ng chống ung thư&nbsp;</p>\r\n\r\n<p><img alt=\"Tỏi đen đông trùng hạ thảo\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:22px; width:24px\" />&nbsp;Tăng cường sức khỏe, gi&uacute;p giảm cholesterol m&aacute;u, hạn chế xơ vữa mạch do cholesterol m&aacute;u.</p>\r\n\r\n<p><img alt=\"Tỏi đen đông trùng hạ thảo\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:22px; width:24px\" />&nbsp;Bổ thận, tăng cường chức năng sinh l&yacute; nam giới.</p>\r\n\r\n<p>**Lưu ý:</p>\r\n\r\n<p>- Sản phẩm n&agrave;y kh&ocirc;ng phải l&agrave; thuốc, kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh.</p>\r\n\r\n<p><strong>3. ĐỐI TƯỢNG SỬ DỤNG</strong><br />\r\nNgười cần tăng cường sức khỏe, người ốm yếu, mệt mỏi, suy nhược cơ thể, giai đoạn phục hồi sau ốm, người trong hoặc sau h&oacute;a trị, xạ trị muốn n&acirc;ng cao sức khỏe.<br />\r\nC&aacute;c trường hợp cholesterol trong m&aacute;u cao, c&oacute; nguy cơ xơ vữa mạch m&aacute;u. Nam giới yếu sinh l&yacute;.</p>\r\n\r\n<p><strong>4. HƯỚNG DẪN SỬ DỤNG</strong><br />\r\nUống 2 vi&ecirc;n/ lần, trước khi ăn 30 ph&uacute;t. Ng&agrave;y 2 lần s&aacute;ng, tối.<br />\r\n<strong>5. BẢO QUẢN</strong><br />\r\nBảo quản nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh s&aacute;ng mặt trời.<br />\r\nĐể xa tầm tay trẻ em.</p>\r\n\r\n<p>Số XNCB: 2226/2016/ATTP-XNCB</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/toi-den-dong-trung-ha-thao-hvqy-co-tac-dung-gi%20copy.jpg\" style=\"height:800px; width:800px\" /></p>\r\n'),
(220, NULL, NULL, 0, ' Lipo white Mỹ phẩm chuyên biệt nám, tàn nhang - Học viện Quân Y', ' Lipo white Mỹ phẩm chuyên biệt nám, tàn nhang - H', 'lipo-white-my-pham-chuyen-biet-nam-tan-nhang-hoc-vien-quan-y', 'my-pham-chuyen-biet-nam-tan-nhang-lipo-white-hoc-vien-quan-y-61.png', 1, 1, 1, NULL, 3, 1, 490000, 245000, '<p>Kem trị nám Lipo White Được Học Viện Qu&acirc;n Y sản xuất tr&ecirc;n c&ocirc;ng nghệ Liposome &ndash; c&ocirc;ng nghệ sản xuất mỹ phẩm h&agrave;ng đầu H&agrave;n Quốc. Với cấu tr&uacute;c lipid k&eacute;p của hạt nano gi&uacute;p l&agrave;m tăng khả năng thẩm thấu s&acirc;u v&agrave;o trong da, L&agrave;m s&aacute;ng da, gi&uacute;p trắng da, l&agrave;m mờ sắc tố melanin tr&ecirc;n da.&nbsp;<br />\r\nL&agrave;m mờ c&aacute;c v&ugrave;ng da bị n&aacute;m, sạm, t&agrave;n nhang, nhi&ecirc;u đốm n&acirc;u, vết th&acirc;m do mụn để lại. Giữ ẩm, l&agrave;m da mềm mại, đem đến niềm vui, tự tin y&ecirc;u đời.</p>\r\n', ' Lipo white Mỹ phẩm chuyên biệt nám, tàn nhang - Học viện Quân Y', NULL, ' Lipo white Mỹ phẩm chuyên biệt nám, tàn nhang - Học viện Quân Y', ' Lipo white Mỹ phẩm chuyên biệt nám, tàn nhang - Học viện Quân Y', NULL, NULL, 0, '0', 110, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 14, 0, NULL, 'vi', NULL, 1541343560, '', '19102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Hiện nay tr&ecirc;n thị trường c&oacute; rất nhiều d&ograve;ng mỹ phẩm trị n&aacute;m. Tuy nhi&ecirc;n d&ograve;ng mỹ phẩm an to&agrave;n, hiệu quả&nbsp;kh&ocirc;ng chứa chất b&agrave;o m&ograve;n da th&igrave; rất&nbsp;&iacute;t. &nbsp;Với d&ograve;ng&nbsp;<strong>mỹ phẩm cao cấp Lipowhite do Học viện Qu&acirc;n Y</strong>&nbsp;sản xuất với &nbsp;c&ocirc;ng nghệ Liposome- c&ocirc;ng nghệ sản xuất mỹ phẩm h&agrave;ng đầu &nbsp;H&agrave;n Quốc ( cấu tr&uacute;c lipid k&eacute;p của hạt nano)&nbsp;gi&uacute;p&nbsp;l&agrave;m tăng khả năng thẩm thấu s&acirc;u v&agrave;o trong da, gi&uacute;p da loại bỏ c&aacute;c sắc tố g&acirc;y n&aacute;m da, t&agrave;n nhang, vết th&acirc;m,&nbsp;đốm n&acirc;u.</p>\r\n\r\n<p>Cấu tr&uacute;c lipid k&eacute;p của hạt nano ( liposome) trong sản phẩm n&agrave;y l&agrave;m tăng k khả năng hấp thu hoạt chất v&agrave;o trong da, gi&uacute;p da hấp thu tối&nbsp;ưu c&aacute;c acid kojic, alpha-tocoferol v&agrave; bổ sung ceramide gi&uacute;p c&acirc;n bằng c&aacute;c th&agrave;nh phần trong da, gi&uacute;p da khỏe mạnh.</p>\r\n\r\n<p><strong>Cấu tr&uacute;c hạt Liposome</strong></p>\r\n\r\n<p><em>Sản phẩm Smartcos LIPOWHITE</em>&nbsp;chứa c&aacute;c hạt si&ecirc;u nhỏ cỡ nano ( v&agrave;i triệu nano m&eacute;t). C&aacute;c hạt n&agrave;y c&oacute; t&ecirc;n l&agrave; Liposome. Cấu tr&uacute;c của Liposome l&agrave; tiểu ph&acirc;n h&igrave;nh cầu, c&oacute; lớp vỏ l&agrave; lớp phospholipid k&eacute;p, ch&iacute;nh v&igrave; cấu tạo lớp lipid k&eacute;p n&agrave;y n&ecirc;n liposome rất dễ thấm qua c&aacute;c lớp da của cơ thể. Nhờ vậy m&agrave; cơ thể hấp thu tối&nbsp;ưu hoạt chất v&agrave;o lớp da s&acirc;u b&ecirc;n trong,&nbsp;đưa&nbsp;được hoạt chất tới nơi&nbsp;để g&acirc;y ra t&aacute;c dụng</p>\r\n\r\n<p>Đối với c&aacute;c loại mỹ phẩm th&ocirc;ng thường, khi thoa l&ecirc;n da, phần lớn lượng hoạt chất bị giữ lại&nbsp;ở lớp sừng, một sốố&nbsp;&iacute;t thấm v&agrave;o lớp biểu b&igrave;, rất&nbsp;&iacute;t hoạt chất thấm&nbsp;tới lớp hạ b&igrave;. Do&nbsp;đ&oacute;, hầu như kh&ocirc;ng c&oacute; hoặc c&oacute; rất&nbsp;&iacute;t hoạt chất&nbsp;ức chế tổng hợp melanin&nbsp;được&nbsp;đưa tới c&aacute;c tế b&agrave;o melanocyte. V&igrave; vậy&nbsp;&iacute;t g&acirc;y&nbsp;được t&aacute;c dụng giảm n&aacute;m, t&agrave;n nhang, vết th&acirc;m&hellip;.</p>\r\n\r\n<p>Với chế phẩm Smartcos LIPO&nbsp;WHITE, do k&iacute;ch thước hạt si&ecirc;u nhỏ cỡ nano m&eacute;t v&agrave; do bản chất phospholipid k&eacute;p n&ecirc;n c&aacute;c hạt liposome c&oacute; khả năng thấm cực tốt qua c&aacute;c lớp biểu b&igrave;, trung b&igrave;, hạ b&igrave; v&agrave; tới&nbsp;được vị tr&iacute; t&aacute;c dụng, g&acirc;y cản trở qu&aacute; tr&igrave;nh tạo sắc tố n&aacute;m tr&ecirc;n da.&nbsp;Đồng thời&nbsp;đưa c&aacute;c ph&acirc;n tử ceramid v&agrave;o s&acirc;u trong da, t&igrave;m&nbsp;đến những v&ugrave;ng da hư tổn&nbsp;để bổ dung ceramid cho da, gi&uacute;p c&acirc;n bằng c&aacute;c th&agrave;nh phần cấu tr&uacute;c của da. Nhờ vậy m&agrave; hiệu quả của dạng mỹ phẩm nano n&agrave;y cao hơn gấp nhiều lần so với mỹ phẩm th&ocirc;ng thường.</p>\r\n\r\n<p><strong>Acid Kojic</strong></p>\r\n\r\n<p>Acid Kojic l&agrave; chất&nbsp;ức chế mạnh tyrosinase, ng&agrave;y c&agrave;ng&nbsp;được sử dụng rộng r&atilde;i trong c&ocirc;ng nghiệp mỹ phẩm do n&oacute; vừa c&oacute; khả năng&nbsp;điều trị tốt c&aacute;c chứng tăng sắc tố da v&agrave;&nbsp;độc t&iacute;nh thấp với tế b&agrave;o da khi sử dụng tại chỗ. Tuy nhi&ecirc;n&nbsp;ở dạng chế phẩm d&ugrave;ng ngo&agrave;i,&nbsp;để&nbsp;Acid Kojic ph&aacute;t huy&nbsp;được&nbsp;t&aacute;c dụng hiệu quả, cần quan t&acirc;m nghi&ecirc;n cứu kỹ thuật b&agrave;o chế&nbsp;để&nbsp;đảm bảo lượng hoạt chất n&agrave;u&nbsp;được&nbsp;đưa&nbsp;đủ&nbsp;đến vị tr&iacute; t&aacute;c dụng. Việc&nbsp;đưa&nbsp;Acid Kojic v&agrave;o&nbsp;đến lớp tế b&agrave;o melanocyt&nbsp;để g&acirc;y t&aacute;c dụng&nbsp;ức chế tổng hợp melanin l&agrave; vấn&nbsp;đề kh&ocirc;ng&nbsp;đơn giản do da l&agrave; h&agrave;ng r&agrave;o sinh học cản trở sự thấm v&agrave; hấp thu của c&aacute;c hoạt chất.</p>\r\n\r\n<p>Trong những năm gần&nbsp;đ&acirc;y, nhờ những tiến bộ của khoa học v&agrave; c&ocirc;ng nghệ b&agrave;o chế, c&aacute;c sản phẩm nanosome&nbsp;đ&atilde; ra&nbsp;đời&nbsp;để cải thiện khả năng thấm của hoạt chất qua h&agrave;ng r&agrave;o da của cơ thể. Việc phối hợp cấu tr&uacute;c liposome v&agrave; acid kojic trong chế phẩm&nbsp;Smartcos LIPOWHITE&nbsp;đ&atilde; giải quyết&nbsp;được vấn&nbsp;đề về t&iacute;nh thấm của&nbsp;acid kojic qua da gi&uacute;p cho &nbsp;nồng độ&nbsp;acid kojic&nbsp;đạt tới ngưỡng&nbsp;điều trị trong c&aacute;c tế b&agrave;o da.</p>\r\n\r\n<p><strong>Ceramid</strong></p>\r\n\r\n<p>Ceramid l&agrave; c&aacute;c lipid tự nhi&ecirc;n v&agrave; l&agrave; một th&agrave;nh phần ch&iacute;nh trong gian b&agrave;o của lớp sừng. Ceramid l&agrave; một nh&oacute;m phức hợp c&aacute;c dẫn xuất sphingolipid với một số acid b&eacute;o kh&aacute;c nhau về chiều d&agrave;i chuỗi, vị tr&iacute; v&agrave; sốố lượng nh&oacute;m hydroxyl. Về chức năng, c&aacute;c ceramid n&agrave;y gi&uacute;p duy tr&igrave;&nbsp;độ&nbsp;ẩm cho da v&agrave; gi&uacute;p h&igrave;nh th&agrave;nh cấu tr&uacute;c trật tự của lớp sừng.</p>\r\n\r\n<p>Chưa c&oacute; bằng chứng r&otilde; r&agrave;ng về mối quan hệ giữa c&aacute;c rối loạn của da với c&aacute;c thay&nbsp;đổi trong th&agrave;nh phần lớp h&agrave;ng r&agrave;o lipid,&nbsp;đặc biệt l&agrave; h&agrave;m lượng ceramid. Tuy nhi&ecirc;n, hầu hết c&aacute;c rối loạn của da m&agrave; c&oacute; sự giảm chức năng của lớp h&agrave;ng r&agrave;o da th&igrave;&nbsp;đều c&oacute; sự giảm về h&agrave;m lượng ceramid.</p>\r\n\r\n<p><strong>Ch&uacute;&nbsp;&yacute;:</strong></p>\r\n\r\n<p>Sản phẩm ho&agrave;n to&agrave;n kh&ocirc;ng chứa c&aacute;c AHA ( acid glycolic, acid lactic&hellip;.) BHA ( acid salicylic) n&ecirc;n kh&ocirc;ng g&acirc;y m&ograve;n da, kh&ocirc;ng l&agrave;m lột, tẩy da, kh&ocirc;ng l&agrave;m yếu da. Do&nbsp;đ&oacute; kh&ocirc;ng bắt buộc phải sử dụng c&aacute;c sản phẩm chống nắng k&egrave;m theo. Tuy nhi&ecirc;n&nbsp;để ngăn chặn c&aacute;c t&aacute;c hại của tia UV g&acirc;y n&aacute;m da, người d&ugrave;ng n&ecirc;n sử dụng sản phẩm chống nắng hoặc tr&aacute;nh tiếp x&uacute;c với&nbsp;&aacute;nh s&aacute;ng mặt trời.</p>\r\n\r\n<p>Với những người c&oacute; lớp da yếu do&nbsp;đ&atilde; từng sử dụng c&aacute;c d&ograve;ng sản phẩm l&agrave;m bong da, lột da, cẩn thận khi sử dụng&nbsp;để tr&aacute;nh da bị k&iacute;ch&nbsp;ứng, mẩn&nbsp;đỏ.</p>\r\n\r\n<p>Với những người c&oacute; da nhạy cảm, cần thận trọng khi sử dụng. Sản phẩm rất&nbsp;&iacute;t g&acirc;y k&iacute;ch&nbsp;ứng nhưng&nbsp;để&nbsp;đảm bảo an to&agrave;n người sử dụng c&oacute; thể sử dụng c&aacute;ch nhật&nbsp;để kiểm tra k&iacute;ch&nbsp;ứng trước khi sử dụng thường xuy&ecirc;n h&agrave;ng ng&agrave;y.</p>\r\n\r\n<p><em>Hiệu quả sau 4 tuần sử dụng. Tuy nhi&ecirc;n mức&nbsp;độ hiệu quả nhanh hoặc chậm phụ thuộc v&agrave;o t&igrave;nh trạng n&aacute;m, t&agrave;n nhang v&agrave; cơ&nbsp;địa của từng người.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><strong>Th&agrave;nh phần</strong></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\">Nước tinh khiết, glycerin, dầu olive, caprilic/capric triglyceride, hydrogenenated lecithin, phystosteryl/octyldodecyl lauroyl, ceramide NP, aloe vera extract, hyaluronic acid, kojic acid, alpha-tocoferol, 2-phenoxyethanol, xanthan gum, fragrance.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><strong>C&ocirc;ng dụng</strong></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\">L&agrave;m s&aacute;ng da, gi&uacute;p trắng da, l&agrave;m mờ sắc tố melanin tr&ecirc;n da.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\">L&agrave;m mờ c&aacute;c v&ugrave;ng da bị n&aacute;m, sạm, t&agrave;n nhang, nhi&ecirc;u đốm n&acirc;u, vết th&acirc;m do mụn để&nbsp; lại. Giữ ẩm, l&agrave;m da mềm mại.</span></span></span></span></p>\r\n');
INSERT INTO `product` (`id`, `style`, `id_value`, `brand`, `name`, `code`, `alias`, `image`, `hot`, `home`, `focus`, `coupon`, `view`, `active`, `price`, `price_sale`, `description`, `description_seo`, `location`, `title_seo`, `keyword_seo`, `detail`, `note`, `like`, `order`, `category_id`, `caption_1`, `caption_2`, `locale`, `bought`, `dksudung`, `sort`, `quantity`, `counter`, `lang`, `destination`, `time`, `tags`, `pro_dir`, `multi_image`, `img_dir`, `status`, `quaranty`, `tinhtrang`, `group_attribute_id`, `color`, `size`, `user_id`, `option_id`, `button_color1`, `config_pro`, `config_pro_content`, `price_imp`, `writer`, `address`, `provinceid`, `order_qty`, `product_hangsx`, `hangsx_id`, `caption_3`, `downloaded`, `number`, `detric`, `coupun`, `content`) VALUES
(221, NULL, NULL, 0, 'Cream SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hoá.', 'Cream SK Ginseng - Phục hồi, tái tạo lại các tế bà', 'cream-sk-ginseng-phuc-hoi-tai-tao-lai-cac-te-bao-da-bi-lao-hoa', 'my-pham-cream-smartcos-sk-ginseng-duong-da.jpg', 1, 1, 1, NULL, 4, 1, 450000, 168000, '<p>Phục hồi, t&aacute;i tạo c&aacute;c tế b&agrave;o da đ&atilde; bị l&atilde;o h&oacute;a, th&uacute;c đẩy qu&aacute; tr&igrave;nh t&aacute;i tạo cấu tr&uacute;c collagen trong da, X&oacute;a c&aacute;c nếp nhăn tr&ecirc;n da, giữ cho l&agrave;n da trở n&ecirc;n căng mịn. Sản phẩm gi&uacute;p hỗ trợ điều trị n&aacute;m, t&agrave;n nhang: mang lại l&agrave;n da trắng s&aacute;ng.</p>\r\n', 'Cream SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hoá.', NULL, 'Cream SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hoá.', 'Cream SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hoá.', NULL, NULL, 0, '0', 110, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 15, 0, NULL, 'vi', NULL, 1541343533, '', '21102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Sau một thời gian d&agrave;i nghi&ecirc;n cứu t&aacute;c dụng của S&acirc;m Ngọc Linh - Việt Nam. C&aacute;c nh&agrave; khoa học của Học Viện Qu&acirc;n Y đ&atilde; ph&aacute;t hiện ra c&aacute;c protein trong tế b&agrave;o sinh khối s&acirc;m Ngọc Linh c&oacute; khả năng tăng sinh lớp collagen sinh ra bởi c&aacute;c tế b&agrave;o fibroblast. C&aacute;c protein n&agrave;y đ&atilde; được c&aacute;c nh&agrave; khoa học của Học viện Qu&acirc;n Y chiết xuất, ứng dụng th&agrave;nh c&ocirc;ng trong b&agrave;o chế sản phẩm mỹ phẩm cream&nbsp;<a href=\"https://vienquany.com/233/cream-smartcos%C2%AE-sk-ginseng-phuc-hoi-tai-tao-lai-cac-te-bao-da-bi-lao-hoa.html\"><strong>SMARTCOS&nbsp;SKginseng</strong></a>.&nbsp;&nbsp;</p>\r\n\r\n<p><strong>1. TH&Agrave;NH PHẦN</strong><br />\r\n&nbsp;&nbsp;&nbsp; Nước tinh khiết<br />\r\n&nbsp;&nbsp;&nbsp; Dịch chiết tế b&agrave;o sinh khối S&acirc;m Ngọc linh<br />\r\n&nbsp;&nbsp;&nbsp; Dịch chiết tế b&agrave;o l&aacute; ch&egrave; Xanh<br />\r\n&nbsp;&nbsp;&nbsp; Cetea-ryl alcohol<br />\r\n&nbsp;&nbsp;&nbsp; Dầu &Ocirc; Lưu<br />\r\n&nbsp;&nbsp;&nbsp; Vitamin E<br />\r\n&nbsp;&nbsp;&nbsp; Hương thiệu thảo dược kh&aacute;c<br />\r\n<br />\r\n<strong>2. T&Aacute;C DỤNG</strong><br />\r\n<strong><strong><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;</strong></strong>Phục hồi, t&aacute;i tạo c&aacute;c tế b&agrave;o da đ&atilde; bị l&atilde;o h&oacute;a, th&uacute;c đẩy qu&aacute; tr&igrave;nh t&aacute;i tạo cấu tr&uacute;c collagen trong da.<br />\r\n<strong><strong><strong><strong><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;&nbsp;</strong></strong></strong></strong>X&oacute;a c&aacute;c nếp nhăn tr&ecirc;n da, giữ cho l&agrave;n da trở n&ecirc;n căng mịn<br />\r\n<strong><strong><strong><strong><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;&nbsp;</strong></strong></strong></strong>Sản phẩm gi&uacute;p hỗ trợ điều trị n&aacute;m, t&agrave;n nhang: mang lại l&agrave;n da trắng s&aacute;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/my-pham-cream-smartcos-sk-ginseng-duong-da.jpg\" style=\"height:900px; width:900px\" /></p>\r\n\r\n<p><strong>3. HƯỚNG DẪN SỬ DỤNG</strong><br />\r\n<strong><strong><strong><strong><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;&nbsp;</strong></strong></strong></strong>D&ugrave;ng kem h&agrave;ng ng&agrave;y, v&agrave;o buổi tối trước khi ngủ.<br />\r\n<strong><strong><strong><strong><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;&nbsp;</strong></strong></strong></strong>Rửa sạch da bằng nước sạch, sau đ&oacute; thoa một lớp kem vừa đủ, xoa đều.<br />\r\n<strong><strong><strong><strong><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;&nbsp;</strong></strong></strong></strong>Rửa lại bằng nước sạch buổi s&aacute;ng khi thức dậy<br />\r\n<strong><strong><strong><strong><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;&nbsp;</strong></strong></strong></strong>Kem d&ugrave;ng ngo&agrave;i. Để xa tầm tay của trẻ em. Kh&ocirc;ng thoa l&ecirc;n v&ugrave;ng da bị tổn thương.<br />\r\n<strong><strong><strong><strong><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;&nbsp;</strong></strong></strong></strong>Ngưng sử dụng nếu c&oacute; d&acirc;u hiệu của k&iacute;ch ứng hoặc ph&aacute;t ban tr&ecirc;n da.</p>\r\n\r\n<p><strong>4. HẠN SỬ DỤNG</strong>&nbsp;: Xem tr&ecirc;n hộp, kh&ocirc;ng sử dụng sau khi mở nắp 6 th&aacute;ng.<br />\r\n<strong>5. QUY C&Aacute;CH</strong>&nbsp; : HỘP 30 gram<br />\r\n<strong>6. BẢO QUẢN:</strong><br />\r\n&nbsp;&nbsp;&nbsp; -&nbsp; Nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh s&aacute;ng mặt trời.<br />\r\n&nbsp;&nbsp;&nbsp; -&nbsp; Để xa tầm tay trẻ em.</p>\r\n'),
(222, NULL, NULL, 0, 'Nano Curcumin tam thất xạ đen PLUS Sản phẩm mới, Hàm lượng cao', 'Nano Curcumin tam thất xạ đen Plus', 'nano-curcumin-tam-that-xa-den-plus-san-pham-moi-ham-luong-cao', '00017023-nanocurcumin-plus-tam-that-xa-den-hvqy-3x10-7882-5afd-large-copy.jpg', 1, 1, 1, NULL, NULL, 1, 310000, 195000, '<p>C&ocirc;ng dụng:</p>\r\n\r\n<p>- Hỗ trợ giảm triệu chứng vi&ecirc;m đau dạ d&agrave;y, t&aacute; tr&agrave;ng.<br />\r\n- Hỗ trợ tăng cường sức đề kh&aacute;ng Hỗ trợ giảm t&aacute;c dụng phụ h&oacute;a trị v&agrave; xạ trị.</p>\r\n\r\n<p>Đối tượng sử dụng:</p>\r\n\r\n<p>- Người vi&ecirc;m đau dạ d&agrave;y, h&agrave;nh t&aacute; tr&agrave;ng.<br />\r\n- Người đang hoặc sau qu&aacute; tr&igrave;nh xạ trị, h&oacute;a trị u bướu.<br />\r\n- Hỗ trợ giảm t&aacute;c dụng phụ h&oacute;a trị v&agrave; xạ trị.</p>\r\n', 'Nano Curcumin tam thất xạ đen PLUS Sản phẩm mới, Hàm lượng cao', NULL, 'Nano Curcumin tam thất xạ đen PLUS Sản phẩm mới, Hàm lượng cao', 'Nano Curcumin tam thất xạ đen PLUS Sản phẩm mới, Hàm lượng cao', NULL, NULL, 0, '0', 103, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 16, 0, NULL, 'vi', NULL, 1541998055, '', '21102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<div style=\"-webkit-text-stroke-width:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Roboto,sans-serif,Arial,Tahoma\"><span style=\"color:#ff6600\"><strong><span style=\"font-size:16px\">1. Nano curcumin Tam thất xạ đen PLUS C&oacute; g&igrave; Mới?</span></strong></span></span></span></span></span></div>\r\n\r\n<div style=\"-webkit-text-stroke-width:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px; text-align:left\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Roboto,sans-serif,Arial,Tahoma\"><span style=\"font-size:16px\">- H&agrave;m lượng nano curcumin cao vượt trội:........ 300mg</span></span><br />\r\n<span style=\"font-size:16px\"><span style=\"font-family:Roboto,sans-serif,Arial,Tahoma\">- Cao tam thất: .......................................................&nbsp; &nbsp;50mg</span></span><br />\r\n<span style=\"font-size:16px\"><span style=\"font-family:Roboto,sans-serif,Arial,Tahoma\">- Cao xạ đen: .........................................................&nbsp; &nbsp;50mg</span></span><br />\r\n<span style=\"font-size:16px\"><span style=\"font-family:Roboto,sans-serif,Arial,Tahoma\">- Collagen petide: ..................................................&nbsp; &nbsp;20mg</span></span><br />\r\n<span style=\"font-size:16px\"><span style=\"font-family:Roboto,sans-serif,Arial,Tahoma\">- Vitamin E: .............................................................&nbsp; &nbsp;06UI</span></span><br />\r\n<span style=\"font-size:16px\"><span style=\"font-family:Roboto,sans-serif,Arial,Tahoma\">- Bioperine: .............................................................&nbsp; 0,5mg</span></span><br />\r\n<span style=\"font-family:Roboto,sans-serif,Arial,Tahoma\"><span style=\"font-size:16px\">-&nbsp;<span style=\"color:#ff6600\"><strong>Bổ sung 2 thần phầm mới</strong></span>:</span></span><br />\r\n<span style=\"font-family:Roboto,sans-serif,Arial,Tahoma\"><span style=\"font-size:16px\">- Cao quả Nh&agrave;u: .......................................................40mg</span></span><br />\r\n<span style=\"font-family:Roboto,sans-serif,Arial,Tahoma\"><span style=\"font-size:16px\">- Chiết xuất tảo n&acirc;u (fucoidan): ................................20mg</span></span><br />\r\n<span style=\"font-family:Roboto,sans-serif,Arial,Tahoma\"><span style=\"font-size:16px\">- C&ocirc;ng nghệ nano chất lượng vượt trội.</span></span></span></span></span></div>\r\n\r\n<h3 style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:24px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Roboto,sans-serif,Arial,Tahoma\"><span style=\"font-size:16px\">- Phụ liệu: Talc,&nbsp;magnesi stearate, vỏ nang gelatin vđ 1 vi&ecirc;n.</span></span></span></span></span><br />\r\n<span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:16px\">2. C&ocirc;ng dụng Nano curcumin Tam thất xạ đen PLUS:</span></strong></span></span></span></h3>\r\n\r\n<h3 style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:24px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Roboto,sans-serif,Arial,Tahoma\"><span style=\"font-size:16px\">- Hỗ trợ mạnh hơn trong qu&aacute; tr&igrave;nh giảm vi&ecirc;m đau dạ d&agrave;y, t&aacute; tr&agrave;ng.<br />\r\n- Hỗ trợ tăng cường sức đề kh&aacute;ng.<br />\r\n- Hỗ trợ l&agrave;m giảm t&aacute;c dụng phụ của ho&aacute; trị xạ trị.</span></span></span></span></span></h3>\r\n\r\n<h3 style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:24px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Roboto,sans-serif,Arial,Tahoma\"><span style=\"font-size:16px\">- Th&agrave;nh phầm thảo dược thi&ecirc;n nhi&ecirc;n: h&agrave;m lượng nano curcumin 300mg cao vượt trội, bổ sung th&ecirc;m fucoidan chất xuất từ Tảo N&acirc;u, cao quả nhau để tăng hoạt chất mạnh hơn.</span></span></span></span></span></h3>\r\n\r\n<p><strong><span style=\"font-size:16px\">3. Đối tượng d&ugrave;ng Nano curcumin Tam thất xạ đen PLUS:</span></strong><br />\r\n<span style=\"font-size:16px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Roboto,sans-serif,Arial,Tahoma\">- Người vi&ecirc;m đau dạ d&agrave;y, h&agrave;nh t&aacute; tr&agrave;ng, đại tr&agrave;ng.</span></span></span></span><br />\r\n<span style=\"font-size:16px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Roboto,sans-serif,Arial,Tahoma\">- Người đang hoặc sau qu&aacute; tr&igrave;nh xạ trị, ho&aacute; trị u bướu.</span></span></span></span><br />\r\n<span style=\"font-size:16px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Roboto,sans-serif,Arial,Tahoma\">- Người muốn hỗ trợ tăng cường sức khoẻ hỗ trợ ph&ograve;ng ung bướu.</span></span></span></span><br />\r\n<br />\r\n<span style=\"font-size:16px\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Roboto,sans-serif,Arial,Tahoma\"><span style=\"color:#ff6600\"><strong>4. C&aacute;ch uống như thế n&agrave;o l&agrave; đ&uacute;ng? đợt d&ugrave;ng bao nhiều l&acirc;u l&agrave; hiệu quả?</strong></span></span></span></span><br />\r\n<span style=\"font-size:16px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Roboto,sans-serif,Arial,Tahoma\">- Uống 1 lần 2 vi&ecirc;n, một ng&agrave;y 2 lần.</span></span></span></span><br />\r\n<span style=\"font-size:16px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Roboto,sans-serif,Arial,Tahoma\">- N&ecirc;n uống trước bữa ăn 30 ph&uacute;t hoặc sau ăn 1 giờ.</span></span></span></span><br />\r\n<span style=\"font-size:16px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Roboto,sans-serif,Arial,Tahoma\">- Lời khuy&ecirc;n từ dược sỹ Học Viện Qu&acirc;n Y n&ecirc;n d&ugrave;ng từ 3 đến 6 th&aacute;ng.<br />\r\n<span style=\"font-family:Roboto,sans-serif,Arial,Tahoma\"><span style=\"font-size:16px\">- C&aacute;ch d&ugrave;ng đ&uacute;ng: Mỗi lần 2 vi&ecirc;n, ng&agrave;y uống 2 lần. Uống trước khi ăn 30 ph&uacute;t hoặc sau khi ăn 1h.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Roboto,sans-serif,Arial,Tahoma\"><span style=\"font-family:Roboto,sans-serif,Arial,Tahoma\"><span style=\"font-size:16px\"><img alt=\"\" src=\"/upload/images/nano-curcumin-tam-that-xa-den-plus-ung-thu%20copy.jpg\" style=\"height:862px; width:800px\" /></span></span></span></span></span></span></p>\r\n\r\n<p><em><strong>5. T&iacute;nh dược liệu trong thanh phần của Nano curcumin tam thất xạ đen Plus:</strong></em><br />\r\n<br />\r\n<img alt=\"nano curcumin\" src=\"https://vienquany.com/Images/image/nano-curcumin%20plus1.jpg\" style=\"float:left\" /><strong>Nano curcumin:</strong>&nbsp;Ưu điểm vượt trội của Nano Curcumin ch&iacute;nh l&agrave; tăng độ hấp thu tối ưu tinh chất nghệ v&agrave;ng v&agrave;o cơ thể l&ecirc;n tới hơn 40 lần so với curcumin th&ocirc;ng thường, nhằm hỗ trợ dự ph&ograve;ng v&agrave; điều trị hiệu quả nhiều bệnh m&atilde;n t&iacute;nh như vi&ecirc;m lo&eacute;t dạ d&agrave;y.<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<img alt=\"cao tam that\" src=\"https://vienquany.com/Images/image/nano-curcumin%20plus2.jpg\" style=\"float:left\" /><strong>Cao&nbsp;Tam Thất:</strong>&nbsp;Giảm sinh khối u, do đ&oacute; l&agrave;m giảm tốc độ ph&aacute;t triển u, hạn chế sự di căn của tế b&agrave;o ung thư, k&eacute;o d&agrave;i cuộc sống cho bệnh nh&acirc;n ung thư.<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<img alt=\"cao xa den\" src=\"https://vienquany.com/Images/image/nano-curcumin%20plus3.jpg\" style=\"float:left\" /><strong>Cao Xạ Đen:</strong>&nbsp;Đ&uacute;ng với c&aacute;i t&ecirc;n (&ldquo;xạ&rdquo; nghĩa l&agrave; &ldquo;gan&rdquo; trong tiếng Mường), xạ đen c&oacute; t&aacute;c dụng nổi bật trong việc hỗ trợ điều trị c&aacute;c bệnh về gan, đặc biệt l&agrave; ung thư, vi&ecirc;m gan, gan nhiễm mỡ, men gan cao. B&ecirc;n cạnh đ&oacute;, xạ đen c&ograve;n l&agrave; dược liệu qu&yacute; gi&uacute;p hỗ trợ điều trị c&aacute;c bệnh u xơ tử cung, u nang buồng trứng, u tuyến v&uacute; l&agrave;nh t&iacute;nh ở phụ nữ; ph&igrave; đại l&agrave;nh t&iacute;nh tuyến tiền liệt ở nam giới, tiểu đường, vi&ecirc;m nhiễm.<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<img alt=\"cao qua nhau\" src=\"https://vienquany.com/Images/image/nano-curcumin%20plus4.jpg\" style=\"float:left\" /><strong>Cao Quả Nh&agrave;u:</strong>&nbsp;Theo kết quả nghi&ecirc;n cứu của y học hiện đại, quả Nh&agrave;u c&oacute; chứa prosertonin nhiều gấp 40 lần so với quả Dứa. Khi chất n&agrave;y kết hợp với một enzym nội b&agrave;o sinh ra xeronin c&oacute; khả năng gi&uacute;p tế b&agrave;o tự sửa chữa v&agrave; t&aacute;i tạo cho cơ thể.<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<img alt=\"tảo nâu nano fucoidan\" longdesc=\"http://hvqy.vn/p137/undefined\" src=\"https://vienquany.com/Images/image/nano-curcumin%20plus5.jpg\" style=\"float:left\" /><strong>Chiết xuất tảo n&acirc;u (Fucoidan):</strong>&nbsp;Hoạt chất Fucoidan sulfate h&oacute;a cao (c&oacute; hoạt t&iacute;nh cao hơn gấp nhiều lần Fucoidan th&ocirc;ng thường) chiết xuất từ rong n&acirc;u đ&atilde; được c&aacute;c nh&agrave; khoa học nghi&ecirc;n cứu sản xuất th&agrave;nh c&ocirc;ng tr&ecirc;n cơ sở đề t&agrave;i khoa học cấp nh&agrave; nước &ldquo;Nghi&ecirc;n cứu Quy tr&igrave;nh c&ocirc;ng nghệ tạo nguy&ecirc;n liệu điều trị ung thư từ rong n&acirc;u Việt Nam&rdquo;. C&ocirc;ng tr&igrave;nh n&agrave;y thuộc Chương tr&igrave;nh nghi&ecirc;n cứu khoa học c&ocirc;ng nghệ trọng điểm quốc gia, ph&aacute;t triển c&ocirc;ng nghiệp h&oacute;a dược đến năm 2020.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/948f1385136d5b5046a2e91648ee43b5%20copy(1).jpg\" style=\"height:376px; width:600px\" /><img alt=\"\" src=\"/upload/images/nano-curcumin-voi-benh-ung-thu%20copy(1).jpg\" style=\"height:445px; width:875px\" />Mua nhiều h&atilde;y LH số hotline hoặc chat với nh&agrave; b&aacute;n h&agrave;ng để nhận được ưu đ&atilde;i</p>\r\n\r\n<p><br />\r\n<br />\r\n<br />\r\n&nbsp;</p>\r\n'),
(223, NULL, NULL, 0, 'TRÀ GIẢM CÂN SLIMUTEA- Hạ mỡ máu, hỗ trợ giảm béo', 'TRÀ GIẢM CÂN SLIMUTEA- Hạ mỡ máu, hỗ trợ giảm béo', 'tra-giam-can-slimutea-ha-mo-mau-ho-tro-giam-beo', 'tra-giam-can-slimutea-ha-mo-mau-ho-tro-giam-beo-2-copy.jpg', 1, 1, 1, NULL, NULL, 1, 50000, 39000, '<p>TR&Agrave; GIẢM C&Acirc;N SLIMUTEA Gi&uacute;p hạ mỡ m&aacute;u, hỗ trợ giảm b&eacute;o kết hợp với tập luyện v&agrave; ăn uống hợp l&yacute;, gi&uacute;p giảm hấp thu carbonhydrat v&agrave; chất b&eacute;o từ thức ăn, giảm t&iacute;ch tụ mỡ trong cơ thể. Hỗ trợ điều trị b&eacute;o ph&igrave; hiệu quả.</p>\r\n', 'TRÀ GIẢM CÂN SLIMUTEA- Hạ mỡ máu, hỗ trợ giảm béo', NULL, 'TRÀ GIẢM CÂN SLIMUTEA- Hạ mỡ máu, hỗ trợ giảm béo', 'TRÀ GIẢM CÂN SLIMUTEA- Hạ mỡ máu, hỗ trợ giảm béo', NULL, NULL, 0, '0', 83, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 17, 0, NULL, 'vi', NULL, 1541998071, '', '19102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><strong>C&ocirc;ng dụng:&nbsp;</strong>Gi&uacute;p hạ mỡ m&aacute;u, hỗ trợ giảm b&eacute;o kết hợp với tập luyện v&agrave; ăn uống hợp l&yacute;, gi&uacute;p giảm hấp thu carbonhydrat v&agrave; chất b&eacute;o từ thức ăn, giảm t&iacute;ch tụ mỡ trong cơ thể. Hỗ trợ điều trị b&eacute;o ph&igrave; hiệu quả.&nbsp;</p>\r\n\r\n<p>C&aacute;ch d&ugrave;ng&nbsp;: Nh&uacute;ng t&uacute;i tr&agrave; v&agrave;o trong cốc nước chứa khoảng 100 - 150 ml nước s&ocirc;i, chờ 3 - 5 ph&uacute;t. Ng&agrave;y d&ugrave;ng 3 - 5 t&uacute;i.&nbsp;</p>\r\n\r\n<p>**Lưu ý:</p>\r\n\r\n<p>- Sản phẩm n&agrave;y kh&ocirc;ng phải l&agrave; thuốc, kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh.</p>\r\n'),
(224, NULL, NULL, 0, 'TRÀ GIẢM CÂN SLIMOMAX HỌC VIỆN QUÂN Y HỖ TRỢ GIẢM BÉO', 'TRÀ GIẢM CÂN SLIMOMAX HỌC VIỆN QUÂN Y HỖ TRỢ GIẢM ', 'tra-giam-can-slimomax-hoc-vien-quan-y-ho-tro-giam-beo', 'tra-giam-can-slimomax-hoc-vien-quan-y-ho-tro-giam-beo-71-copy.jpg', 1, 1, 1, NULL, NULL, 1, 150000, 70000, '<p>Sản phẩm Tr&agrave; giảm b&eacute;o Slimomax l&agrave; c&ocirc;ng tr&igrave;nh nghi&ecirc;n cứu của c&aacute;c dược sỹ thuộc Học viện qu&acirc;n y, với th&agrave;nh phần từ 100% nguy&ecirc;n liệu tự nhi&ecirc;n,gi&uacute;p giảm c&acirc;n nhanh-an to&agrave;n- tiết kiệm. Gi&uacute;p hạ mỡ m&aacute;u, hỗ trợ giảm b&eacute;o kết hợp với tập luyện v&agrave; ăn uống hợp l&yacute;.</p>\r\n', 'TRÀ GIẢM CÂN SLIMOMAX HỌC VIỆN QUÂN Y HỖ TRỢ GIẢM BÉO', NULL, 'TRÀ GIẢM CÂN SLIMOMAX HỌC VIỆN QUÂN Y HỖ TRỢ GIẢM BÉO', 'TRÀ GIẢM CÂN SLIMOMAX HỌC VIỆN QUÂN Y HỖ TRỢ GIẢM BÉO', NULL, NULL, 0, '0', 83, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 18, 0, NULL, 'vi', NULL, 1541995071, '', '19102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><strong>TR&Agrave; GIẢM B&Eacute;O SLIMOMAX HỌC VIỆN QU&Acirc;N Y</strong></p>\r\n\r\n<p>Tr&agrave; giảm b&eacute;o Slimomax l&agrave; c&ocirc;ng tr&igrave;nh nghi&ecirc;n cứu của nh&agrave; khoa học thuộc Học viện Qu&acirc;n Y, l&agrave; sự kết hợp c&aacute;c dược liệu qu&yacute; gồm: l&aacute; sen, giảo cổ l&agrave;m, ch&egrave; xanh, nần nghệ, nấm linh chi, sơn tra gi&uacute;p giảm c&acirc;n an to&agrave;n hiệu quả, kinh tế</p>\r\n\r\n<p>Đặc biệt trong tr&agrave; giảm c&acirc;n Slimomax c&oacute; th&agrave;nh phần nấm linh chi, giảo cổ lam &ndash; đ&acirc;y l&agrave; những dược liệu qu&yacute; c&oacute; t&aacute;c dụng rất tốt trong qu&aacute; tr&igrave;nh giảm c&acirc;n, gi&uacute;p qu&aacute; tr&igrave;nh đốt ch&aacute;y mỡ thừa diễn ra nhanh hơn, từ đ&oacute; giảm được sự h&igrave;nh th&agrave;nh của tế b&agrave;o mỡ v&agrave; gi&uacute;p cơ thể thải độc tố ra ngo&agrave;i hiệu quả</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/tra-giam-can-slimomax.jpg\" style=\"height:436px; width:650px\" /></p>\r\n\r\n<p>&nbsp;C&aacute;c th&agrave;nh phần trong tr&agrave; giảm c&acirc;n&nbsp;<a href=\"http://vienquany.com/271/tra-giam-can-slimomax-hoc-vien-quan-y-ho-tro-giam-beo.html\" target=\"_blank\">Slimomax Học viện Qu&acirc;n Y</a></p>\r\n\r\n<p><strong>I. Th&agrave;nh phần:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>L&aacute; sen &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;.&hellip; 800mg</p>\r\n\r\n<p>Giảo cổ lam &hellip;&hellip;&hellip;&hellip;&hellip; 400mg</p>\r\n\r\n<p>Tr&agrave; xanh &hellip;&hellip;&hellip;&hellip;&hellip;.&hellip; 300mg</p>\r\n\r\n<p>Nần nghệ &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;. 200mg</p>\r\n\r\n<p>Nấm linh chi&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;..200mg</p>\r\n\r\n<p>Sơn tra &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip; 100mg</p>\r\n\r\n<p><br />\r\n<br />\r\n<strong>1.L&aacute; sen :</strong></p>\r\n\r\n<p>C&oacute; t&aacute;c dụng giảm b&eacute;o v&agrave; chống xơ vữa động mạch, do trong l&aacute; sen c&oacute; nhiều loại alkaloids v&agrave; flavonoid đặc biệt: tr&ecirc;n l&acirc;m s&agrave;ng hiện nay, l&aacute; sen c&ograve;n được sử dụng để ph&ograve;ng ngừa v&agrave; chữa trị b&eacute;o ph&igrave;, ph&ograve;ng trị cao huyết &aacute;p, cao mỡ m&aacute;u, xơ vữa động mạch, bệnh mạch v&agrave;nh tim v&agrave;o v&agrave; vi&ecirc;m t&uacute;i mật. Theo c&aacute;c chuy&ecirc;n gia, những người cao tuổi cơ thể đ&atilde; suy yếu, động mạch n&atilde;o đ&atilde; bị xơ cứng, hoặc từng bị liệt nửa người do tai biến mạch m&aacute;u n&atilde;o, n&ecirc;n thường xuy&ecirc;n sử dụng l&aacute; sen.</p>\r\n\r\n<p><strong>2. Nấm linh chi</strong></p>\r\n\r\n<p>Nấm linh chi c&oacute; t&aacute;c dụng giảm c&acirc;n th&ocirc;ng qua việc k&iacute;ch th&iacute;ch qu&aacute; tr&igrave;nh ti&ecirc;u h&oacute;a hoạt động tốt, từ đ&oacute; lượng chất b&eacute;o v&agrave; mỡ thừa trong cơ thể sẽ được đốt ch&aacute;y tối đa. Ngo&agrave;i ra, sử dụng nấm linh chi thường xuy&ecirc;n c&ograve;n gi&uacute;p hỗ trợ hệ b&agrave;i tiết l&agrave;m việc tốt, c&aacute;c chất b&eacute;o v&agrave; độc hại sẽ được loại bỏ ra khỏi cơ thể, mang đến cho bạn một cơ thể khỏe mạnh,nhẹ nh&agrave;ng</p>\r\n\r\n<p>Nấm linh chi gi&uacute;p tăng cường hoạt động trao đổi chất, gi&uacute;p k&iacute;ch th&iacute;ch qu&aacute; tr&igrave;nh đốt ch&aacute;y mỡ thừa diễn ra nhanh hơn, từ đ&oacute; giảm được sự h&igrave;nh th&agrave;nh của tế b&agrave;o mỡ v&agrave; gi&uacute;p cơ thể thải độc tố ra ngo&agrave;i hiệu quả, mang đến bạn một v&oacute;c d&aacute;ng thon gọn</p>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>3. Giảo cổ lam</strong></p>\r\n\r\n<p>Giảo cổ lam l&agrave; một trong những dược liệu cổ qu&yacute; hiếm được sử dụng với rất nhiều c&ocirc;ng dụng trong y học. Ch&iacute;nh v&igrave; vậy giảo cổ lam c&ograve;n được ưu &aacute;i đặt t&ecirc;n- cỏ trường thọ</p>\r\n\r\n<p>Giảo cổ lam gi&uacute;p l&agrave;m giảm cholesterol m&aacute;u, ngăn ngừa xơ vữa mạch: c&aacute;c chất saponin trong giảo cổ lam c&oacute; t&aacute;c dụng l&agrave;m b&igrave;nh thường h&oacute;a c&aacute;c hoạt động của tế b&agrave;o, dọn dẹp c&aacute;c gốc tự do tr&ecirc;n bề mặt m&agrave;ng tế b&agrave;o ( gốc tự do l&agrave; thủ phạm g&acirc;y biến dạng m&agrave;ng tế b&agrave;o dẫn đến c&aacute;c rối loạn chuyển h&oacute;a), khi c&aacute;c tế b&agrave;o hoạt động b&igrave;nh thường trở lại sẽ gi&uacute;p ti&ecirc;u thụ năng lượng dư thừa tốt hơn, cơ thể khỏe mạnh hơn. Đ&acirc;y l&agrave; l&yacute; do d&ugrave;ng giảo cổ lam thấy trẻ lại, người khỏe ra v&agrave; k&eacute;o d&agrave;i tuổi thọ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4. Tr&agrave; xanh</strong></p>\r\n\r\n<p>Tr&agrave; xanh chứa hầu hết c&aacute;c loại vitamin A, B1, B2, PP, C. Lượng vitamin C trong tr&agrave; xanh cao gấp 3-4 lần trong cam, chanh. C&aacute;c nh&agrave; khoa học t&igrave;m thấy 17 loại acid amin v&agrave; một lượng lớn chất kho&aacute;ng cần thiết cho cơ thể trong tr&agrave; xanh. Nhờ chứa lượng vitamin C cao, tr&agrave; xanh gi&uacute;p chống oxi h&oacute;a mạnh, gi&uacute;p ngăn ngừa qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a da, hạn chế nếp nhăn. Đối với người thừa c&acirc;n, b&eacute;o ph&igrave; tr&agrave; xanh l&agrave; một thức uống n&ecirc;n duy tr&igrave; h&agrave;ng ng&agrave;y. Tr&agrave; xanh c&oacute; t&aacute;c dụng đẩy nhanh qu&aacute; tr&igrave;nh trao đổi chất, ti&ecirc;u hoa năng lượng giảm lượng mỡ trong m&aacute;u, thanh lọc, đ&agrave;o thải độc tố trong cơ thể gi&uacute;p l&agrave;n da tươi s&aacute;ng v&agrave; một cơ thể khỏe mạnh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>5. Sơn tra ( t&aacute;o m&egrave;o)</strong></p>\r\n\r\n<p>Sơn tra c&oacute; t&aacute;c dụng l&agrave;m hạ lipid m&aacute;u r&otilde; rệt v&agrave; l&agrave;m giảm xơ vữa động mạch. Cơ chế chủ yếu do vị thuốc n&agrave;y c&oacute; t&aacute;c dụng tăng nhanh b&agrave;i tiết cholesterol l&agrave;m cơ thể kh&ocirc;ng kịp hấp thu chứ kh&ocirc;ng phải chống hấp thu cholesterol. Do đ&oacute;, sơn tra l&agrave; một vị thuốc rất tốt với bệnh nh&acirc;n b&eacute;o ph&igrave;, rối loạn lipid m&aacute;u</p>\r\n\r\n<p><strong>6. Nần nghệ</strong></p>\r\n\r\n<p>Hạ mỡ dư thừa trong m&aacute;u, mỡ trong gan, mỡ nội tạng ( cholestorol, triglycerid)</p>\r\n\r\n<p>Gi&uacute;p b&igrave;nh ổn huyết &aacute;p v&agrave; điều h&ograve;a nhịp tim</p>\r\n\r\n<p>Nần nghệ được sử dụng cho người c&oacute; rối loạn chuyển h&oacute;a lipid</p>\r\n\r\n<p><strong>II. C&ocirc;ng dụng:</strong></p>\r\n\r\n<p>- Gi&uacute;p hạ mỡ m&aacute;u, hỗ trợ giảm b&eacute;o kết hợp với tập luyện v&agrave; ăn uống hợp l&yacute;.</p>\r\n\r\n<p>**Lưu ý:</p>\r\n\r\n<p>- Sản phẩm n&agrave;y kh&ocirc;ng phải l&agrave; thuốc, kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh.</p>\r\n\r\n<p><strong>IV. Đối tượng sử dụng:</strong></p>\r\n\r\n<p>Người mỡ m&aacute;u cao, người bị b&eacute;o ph&igrave;</p>\r\n\r\n<p><strong>V. C&aacute;ch d&ugrave;ng:</strong></p>\r\n\r\n<p>Cho g&oacute;i tr&agrave; v&agrave;o cốc, ấm hoặc ph&iacute;ch pha tr&agrave;; h&atilde;m bằng nước đun s&ocirc;i, sau 2-3 ph&uacute;t hoặc nh&uacute;ng t&uacute;i tr&agrave; v&agrave;o trong cốc nước chứa khoảng 100-150ml nước s&ocirc;i, chờ 3-5ph&uacute;t. Ng&agrave;y d&ugrave;ng 4-6 t&uacute;i.</p>\r\n\r\n<p>Bảo quản: Nơi kh&ocirc; m&aacute;t, tr&aacute;nh &aacute;nh s&aacute;ng. Để xa tầm tay trẻ em.</p>\r\n\r\n<p>Số XNCB: 12941/2017/ATTP-XNCB</p>\r\n'),
(225, NULL, NULL, 0, 'Slimtosen Extra - Giảm cân an toàn và hiệu quả cao', 'Slimtosen Extra - Giảm cân an toàn và hiệu quả cao', 'slimtosen-extra-giam-can-an-toan-va-hieu-qua-cao', 'vien-uong-giam-can-giam-mo-mau-slimtosen-extra-100-vien-1.jpg', 1, 1, 1, NULL, 3, 1, 245000, 160000, '<p>C&ocirc;ng dụng: gi&uacute;p giảm hấp thu carbonhydrat v&agrave; chất b&eacute;o v&agrave;o cơ thể, giảm cholesterol, giảm mỡ m&aacute;u, giảm t&igrave;nh trạng b&eacute;o ph&igrave;, thừa c&acirc;n.<br />\r\nVi&ecirc;n Giảm C&acirc;n Slimtosen Extra l&agrave; loại thực phẩm chức năng mới dựa tr&ecirc;n c&ocirc;ng thức b&agrave;o chế của Slimtosen của Học Viện Qu&acirc;n Y gi&uacute;p giảm b&eacute;o An to&agrave;n &ndash; Hiệu Quả.</p>\r\n', 'Slimtosen Extra - Giảm cân an toàn và hiệu quả cao', NULL, 'Slimtosen Extra - Giảm cân an toàn và hiệu quả cao', 'Slimtosen Extra - Giảm cân an toàn và hiệu quả cao', NULL, NULL, 0, '0', 83, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 19, 0, NULL, 'vi', NULL, 1541758014, '', '21102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><strong>1. Giới thiệu về Slimtosen Extra giảm c&acirc;n</strong><br />\r\n<br />\r\nNguồn gốc vi&ecirc;n giảm c&acirc;n Slimtosen Extra học viện qu&acirc;n y:<br />\r\nSlimtosen Extra l&agrave; d&ograve;ng sản phẩm thuốc giảm c&acirc;n được nghi&ecirc;n cứu v&agrave; cho ra đời bởi những chuy&ecirc;n gia, b&aacute;c sĩ h&agrave;ng đầu trong lĩnh vực giảm mỡ, giảm c&acirc;n của Học viện Qu&acirc;n Y 103.<br />\r\n<br />\r\nC&aacute;c chuy&ecirc;n gia, b&aacute;c sĩ của Học viện Qu&acirc;n Y 103 đ&atilde; mất 5 năm t&acirc;m huyết nghi&ecirc;n cứu v&agrave; th&ecirc;m 2 năm thử nghiệm l&acirc;m s&agrave;ng sản phẩm nhằm đảm bảo kết quả tối ưu nhất sau đ&oacute; mới c&ocirc;ng bố sản phẩm rộng r&atilde;i tr&ecirc;n thị trường.</p>\r\n\r\n<p><strong>Xuất xứ th&agrave;nh phần Slimtosen Extra học viện qu&acirc;n y:</strong><br />\r\n<strong>Vi&ecirc;n Slimtosen Extra</strong>&nbsp;chiết xuất ho&agrave;n to&agrave;n từ c&aacute;c nguy&ecirc;n liệu tự nhi&ecirc;n c&oacute; t&aacute;c dụng giảm c&acirc;n hiệu quả v&agrave; đặc biệt an to&agrave;n, l&agrave;nh t&iacute;nh cho cơ thể. C&aacute;c nguy&ecirc;n liệu đ&oacute; bao gồm:<br />\r\n+&nbsp;<strong>L&aacute; sen</strong>: L&aacute; sen l&agrave; nguy&ecirc;n liệu d&acirc;n gian c&oacute; t&aacute;c dụng giảm c&acirc;n, l&agrave;m thon gọn v&ugrave;ng bụng hiệu quả, nhanh ch&oacute;ng.<br />\r\n+&nbsp;<strong>Trạch tả</strong>: Trạch tả hỗ trợ l&agrave;m tan mỡ m&aacute;u, điều chỉnh huyết &aacute;p, tr&aacute;nh t&igrave;nh trạng tụt huyết &aacute;p trong qu&aacute; tr&igrave;nh giảm c&acirc;n.<br />\r\n+&nbsp;<strong>Giảo cổ lam</strong>: Giảo cổ lam c&oacute; t&aacute;c dụng điều chỉnh lượng đường trong m&aacute;u.<br />\r\n+&nbsp;<strong>Thảo quyết minh</strong>: Thảo quyết minh c&oacute; t&aacute;c dụng l&agrave;m giảm căng thẳng, stress.</p>\r\n\r\n<p>B&ecirc;n cạnh những nguy&ecirc;n liệu tr&ecirc;n, vi&ecirc;n Slimtosen Extra c&ograve;n c&oacute; một số th&agrave;nh phần kh&aacute;c như l&aacute; sen, trạch tả, giảo c&ocirc; lam, thảo quyết minh&hellip; hỗ trợ giảm c&acirc;n hiệu quả.</p>\r\n\r\n<p><strong>2 .Giảm c&acirc;n Slimtosen Extra c&oacute; tốt kh&ocirc;ng ?</strong><br />\r\n<br />\r\nV&igrave; giảm c&acirc;n Slimtosen Extra được sản xuất từ c&aacute;c nguy&ecirc;n hiệu ho&agrave;n to&agrave;n từ tự nhi&ecirc;n được qua kiểm duyệt từ c&aacute;c cơ quan chuy&ecirc;n ngh&agrave;nh về đọ an to&agrave;n v&agrave; hiệu quả n&ecirc;n sản phẩm Slimtosen Extra được rất nhiều người tin d&ugrave;ng v&agrave; ủng hộ<br />\r\n<br />\r\nVới sự tư vấn nhiệt t&igrave;nh, chuy&ecirc;n nghiệp, hướng dẫn giảm c&acirc;n đ&uacute;ng c&aacute;ch n&ecirc;n c&aacute;c bạn ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về hiệu quả của vi&ecirc;n giảm c&acirc;n Slimtosen Extra .<br />\r\n<img alt=\"\" src=\"/upload/images/thuoc-giam-can-slimtosen-extra%20copy.jpg\" style=\"height:530px; width:900px\" /><br />\r\n<strong>3 . C&ocirc;ng dụng của vi&ecirc;n giảm c&acirc;n Slimtosen Extra</strong><br />\r\nSlimtosen Extra mang lại t&aacute;c dụng giảm c&acirc;n vượt trội cho mọi đối tượng kh&aacute;ch h&agrave;ng:<br />\r\n<br />\r\n&nbsp; &nbsp;&nbsp;<strong><img alt=\"Liệu trình giảm cân 1Slimtosen và 3 Slimutea hiệu quả cho người giảm ít\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" /></strong>&nbsp;Giảm hấp thu carbondydrat v&agrave; chất b&eacute;o, sẽ giảm 70 &ndash; 80% lượng mỡ dư thừa (tương đương 5 &ndash; 10 cm v&ograve;ng eo) sau thời gian ngắn sử dụng.<br />\r\n&nbsp; &nbsp;&nbsp;<strong><img alt=\"Liệu trình giảm cân 1Slimtosen và 3 Slimutea hiệu quả cho người giảm ít\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" /></strong>Giảm cholesterol gi&uacute;p ngăn nguy cơ mắc c&aacute;c bệnh huyết &aacute;p, tim mạch, tiểu đường&hellip;<br />\r\n&nbsp; &nbsp;&nbsp;<strong><img alt=\"Liệu trình giảm cân 1Slimtosen và 3 Slimutea hiệu quả cho người giảm ít\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" /></strong>&nbsp;Giảm mỡ m&aacute;u, giảm t&igrave;nh trạng b&eacute;o ph&igrave;, thừa c&acirc;n.<br />\r\n&nbsp; &nbsp;&nbsp;<strong><img alt=\"Liệu trình giảm cân 1Slimtosen và 3 Slimutea hiệu quả cho người giảm ít\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" /></strong>&nbsp;Đảm bảo an to&agrave;n, l&agrave;nh t&iacute;nh, kh&ocirc;ng g&acirc;y ra t&aacute;c dụng phụ do nguy&ecirc;n liệu chiết xuất ho&agrave;n to&agrave;n từ thi&ecirc;n nhi&ecirc;n. Sản phẩm đ&atilde; được cấp giấy chứng nhận về vệ sinh an to&agrave;n thực phẩm.<br />\r\n&nbsp; &nbsp;<strong><img alt=\"Liệu trình giảm cân 1Slimtosen và 3 Slimutea hiệu quả cho người giảm ít\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" /></strong>&nbsp;Ngăn chặn qu&aacute; tr&igrave;nh tăng c&acirc;n trở lại ngay cả khi kh&ocirc;ng sử dụng sản phẩm.</p>\r\n\r\n<p><strong>4. C&aacute;ch sử dụng thức phẩm chức năng vi&ecirc;n giảm c&acirc;n Slimtosen Extra hiệu quả nhất</strong><br />\r\n&nbsp; &nbsp;&nbsp;<img alt=\"Liệu trình giảm cân 1Slimtosen và 3 Slimutea hiệu quả cho người giảm ít\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Đối với dạng hộp vi&ecirc;n: Uống 4 vi&ecirc;n 1 ng&agrave;y chia 2 lần v&agrave;o s&aacute;ng tối. Uống trước bữa ăn 30 ph&uacute;t với nước ấm. (C&oacute; thể sử dụng v&agrave;o buổi s&aacute;ng v&agrave; trưa hoặc buổi s&aacute;ng v&agrave; buổi tối trước khi ăn khoảng 30 ph&uacute;t)<br />\r\nCh&uacute; &yacute;:<br />\r\n&nbsp;&nbsp;&nbsp;<img alt=\"Liệu trình giảm cân 1Slimtosen và 3 Slimutea hiệu quả cho người giảm ít\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;Uống đều đặn, đ&uacute;ng giờ, đ&uacute;ng hướng dẫn:<br />\r\nHy vọng với sản phẩm Slimtosen Extra, bạn sẽ nhanh ch&oacute;ng sở hữu v&oacute;c d&aacute;ng ho&agrave;n hảo như &yacute; muốn.</p>\r\n'),
(226, NULL, NULL, 0, 'Slim Body Sản Phẩm Giảm Cân Mới Học Viện Quân Y', 'Slim Body Sản Phẩm Giảm Cân Mới Học Viện Quân Y', 'slim-body-san-pham-giam-can-moi-hoc-vien-quan-y', 'vien-uong-giam-can-slim-body-chinh-hang-tu-hoc-vien-quan-y-anh-2-copy.jpg', 1, 1, 1, NULL, NULL, 1, 450000, 230000, '<p>- Giảm sự hấp thu chất b&eacute;o v&agrave;o cơ thể&nbsp;<br />\r\n- Giảm cholesterol, giảm mỡ m&aacute;u,<br />\r\n- Giảm t&igrave;nh trạng b&eacute;o ph&igrave;, thừa c&acirc;n.&nbsp;<br />\r\n- Giảm t&igrave;nh trạng b&eacute;o ph&igrave;, thừa c&acirc;n sau sinh hiệu quả.&nbsp;<br />\r\n- Giảm t&igrave;nh trạng b&eacute;o ph&igrave;, thừa c&acirc;n cho người c&oacute; cơ đia kh&oacute; giảm</p>\r\n', 'Slim Body Sản Phẩm Giảm Cân Mới Học Viện Quân Y', NULL, 'Slim Body Sản Phẩm Giảm Cân Mới Học Viện Quân Y', 'Slim Body Sản Phẩm Giảm Cân Mới Học Viện Quân Y', NULL, NULL, 0, '0', 83, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 20, 0, NULL, 'vi', NULL, 1541995005, '', '21102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Điểm kh&aacute;c biệt của&nbsp;<strong>Slim Body</strong>&nbsp;nằm ở th&agrave;nh phần, l&agrave; sự phối hợp c&aacute;c th&agrave;nh phần thảo dược đ&atilde; khẳng định được hiệu quả giảm c&acirc;n v&agrave; tối ưu hiệu quả khi sử dụng, việc tăng cường về h&agrave;m lượng sẽ gi&uacute;p<strong>&nbsp;Slim Body</strong>&nbsp;trở l&ecirc;n mạnh mẽ hơn. Vậy trong&nbsp;<strong>Slim Body</strong>&nbsp;c&oacute; gi?</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/slim-body.jpg\" style=\"height:530px; width:605px\" /></p>\r\n\r\n<p><strong>1. Th&agrave;nh phần Slimbody từ thảo dược thi&ecirc;n nhi&ecirc;n:</strong></p>\r\n\r\n<p>Cao kh&ocirc; dược liệu 170 mg tương đương với:</p>\r\n\r\n<p>L&aacute; sen &hellip;&hellip;&hellip;&hellip;.&hellip;.&hellip;&hellip;&hellip;&hellip;.......................&hellip;. 1300mg</p>\r\n\r\n<p>Bụp giấm &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;.....................&hellip;.&hellip;.&hellip;100mg</p>\r\n\r\n<p>Giảo cổ lam &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;.&hellip;&hellip;.....................100mg</p>\r\n\r\n<p>Sơn tra &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;...........&hellip;&hellip;&hellip;.&hellip;..........100mg</p>\r\n\r\n<p>Tr&agrave; vằng&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;.&hellip;&hellip;....................100mg</p>\r\n\r\n<p>Chitosan &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;...&hellip;..&hellip;..&hellip;.....200mg</p>\r\n\r\n<p>Sinetrol&reg;XPUR &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;...50mg</p>\r\n\r\n<p>L-Carnitine fumarat &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;....&hellip;&hellip;&hellip;&hellip;.....50mg</p>\r\n\r\n<p>Phụ liệu: (gelatin, talc, magnesi stearate) vừa đủ 01 vi&ecirc;n</p>\r\n\r\n<p><strong>T&aacute;c dụng của l&aacute; sen trong Slim body:</strong></p>\r\n\r\n<p>Trong l&aacute; sen c&oacute; c&aacute;c hoạt chất alcaluit v&agrave; Flabolit c&oacute; t&aacute;c dụng ức chế c&aacute;c men lipal, l&agrave; th&agrave;nh phần ch&iacute;nh chuyển h&oacute;a c&aacute;c thức ăn dạng tinh bột chuyển h&oacute;a đường. như vậy c&ocirc;ng dụng mạnh nhất của l&aacute; sen l&agrave; đặc t&iacute;nh chống hấp thu khi năng lượng được nạp v&agrave;o. Ngo&agrave;i ra việc tăng cường h&agrave;m lượng gi&uacute;p qu&aacute; tr&igrave;nh n&agrave;y được k&eacute;o d&agrave;i, &nbsp;qu&aacute; tr&igrave;nh chống hấp thu được triệt để.</p>\r\n\r\n<p><strong>T&aacute;c dụng của ch&egrave; vằng trong Slim body:</strong></p>\r\n\r\n<p>Khi tăng c&acirc;n, hay b&eacute;o ph&igrave; ngo&agrave;i c&aacute;c vị tr&iacute; ch&uacute;ng ta thường thấy tr&ecirc;n to&agrave;n cơ thể tăng về k&iacute;ch thước như: V&ugrave;ng bụng, v&ugrave;ng m&ocirc;ng, đ&ugrave;i&hellip; th&igrave; hiện tượng mỡ th&ugrave;a c&ograve;n đặc biệt trầm trọng hơn tại c&aacute;c vị tr&iacute; kh&aacute;c như trong nội tạng, hiện tượng gan nhiễm mỡ v&agrave; mỡ nội tạng rất phổ biến, ngo&agrave;i ra mỡ xuất hiện trong m&aacute;u c&oacute; thể g&acirc;y ra rất nhiều biến chứng, cho c&aacute;c bệnh l&yacute; kh&aacute;c. Bởi vậy khi giảm c&acirc;n, ch&uacute;ng ta cần giảm mỡ b&ecirc;n trong trước, đ&acirc;y cũng ch&iacute;nh l&agrave; mục ti&ecirc;u của sản phẩm&nbsp;<strong>Slim body</strong>. Qua qua tr&igrave;nh s&agrave;ng lọc v&agrave; thực nghiệm, sản phẩm đ&atilde; đ&atilde; được t&iacute;ch hợp th&ecirc;m th&agrave;nh phần thảo dược ch&egrave; vằng, c&oacute; t&aacute;c dụng rất lớn trong việc giảm mỡ m&aacute;u mỡ gan, mỡ nội tạng. Như vậy t&aacute;c dụng ch&iacute;nh của ch&egrave; vằng ở đ&acirc;y sẽ gi&uacute;p giảm mỡ nội tạng v&agrave; hạ mỡ m&aacute;u.</p>\r\n\r\n<p><strong>T&aacute;c dụng của Giảo cổ lam trong Slim body:</strong></p>\r\n\r\n<p>Giảo cổ lam c&oacute; t&aacute;c dụng&nbsp;gi&uacute;p l&agrave;m giảm cholesterol m&aacute;u to&agrave;n phần, ngăn ngừa xơ vữa mạch. L&agrave; một th&agrave;nh phần thảo dược t&iacute;ch cực trong việc ổn định đường huyết. Đối với những người c&oacute; triệu chứng cao huyết &aacute;p, việc c&oacute; mặt th&agrave;nh phần giảo cổ lam trong&nbsp;<strong>Slim body</strong>, c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m khi sử dụng.</p>\r\n\r\n<p><strong>T&aacute;c dụng của Bụp giấm trong Slim body:</strong></p>\r\n\r\n<p>Theo Đ&ocirc;ng y, Bụp giấm c&oacute; vị chua, t&iacute;nh m&aacute;t; c&oacute; t&aacute;c dụng thanh nhiệt, giải kh&aacute;t, lợi tiểu, lợi mật. C&ograve;n theo t&agrave;i liệu nước ngo&agrave;i, những nghi&ecirc;n cứu trong ph&ograve;ng th&iacute; nghiệm đ&atilde; chứng minh hoạt chất từ Bụp giấm c&oacute; t&iacute;nh kh&aacute;ng khuẩn, kh&aacute;ng nấm, chống vi&ecirc;m, chống &ocirc;xy h&oacute;a (sự gi&agrave; h&oacute;a của cơ thể), gi&uacute;p ngăn ngừa bệnh tim mạch, tăng cường chức năng ti&ecirc;u h&oacute;a, nhuận tr&agrave;ng, hạ huyết &aacute;p, l&agrave;m giảm cholesterol trong m&aacute;u, chống xơ vữa động mạch, giảm sự đọng lipid ở gan v&agrave; bảo vệ tế b&agrave;o gan. Như vậy bụp giấm c&oacute; trong&nbsp;<strong>Slim body</strong>&nbsp;sẽ gi&uacute;p c&acirc;n bằng c&aacute;c hoạt chất, đảm bảo cho hệ ti&ecirc;u h&oacute;a hoạt động tốt trong qu&aacute; tr&igrave;nh giảm c&acirc;n.</p>\r\n\r\n<p><strong>T&aacute;c dụng của Sơn tra trong Slim body:</strong></p>\r\n\r\n<p>Cơ chế chủ yếu l&agrave; c&oacute; t&aacute;c dụng&nbsp;<strong>tăng nhanh b&agrave;i tiết Cholesterol</strong>,&nbsp;T&aacute;c dụng an thần, l&agrave;m tăng t&iacute;nh thẩm thấu của mao mạch v&agrave; l&agrave;m co tử cung, gi&uacute;p điều h&ograve;a kh&iacute; huyết, giảm căng thẳng. Trong&nbsp;<strong>Slim body</strong>, Sơn tra c&oacute; t&aacute;c dụng chủ yếu đẩy nhanh qu&aacute; tr&igrave;nh giảm c&acirc;n, điều h&ograve;a cơ thể.</p>\r\n\r\n<p>Kết Luận: Việc kết hợp nhiều t&aacute;c dụng của c&aacute;c thảo dược tr&ecirc;n sẽ gi&uacute;p cho việc giảm c&acirc;n trở l&ecirc;n dễ d&agrave;ng hơn bao giờ hết. Phương ph&aacute;p giảm c&acirc;n to&agrave;n diện bao gồm giảm c&aacute;c th&agrave;nh phần mỡ từ b&ecirc;n trong nội tạng, trong gan trong m&aacute;u, qua đ&oacute; kết hợp chống hấp thu từ b&ecirc;n ngo&agrave;i. Qua tr&igrave;nh vận động của cơ thể diễn ra h&agrave;ng ng&agrave;y ch&iacute;nh l&agrave; qu&aacute; tr&igrave;nh giải ph&oacute;ng đốt ch&aacute;y mỡ thừa l&agrave;m năng lượng hoạt động, tiến tr&igrave;nh giảm c&acirc;n được đẩy nhanh hơn cơ thể trở l&ecirc;n khỏe mạnh, đảm bảo 1 hệ ti&ecirc;u h&oacute;a tốt ch&iacute;nh l&agrave; điều tuyệt vời m&agrave;&nbsp;<strong>Slim Body</strong>&nbsp;mang lại.</p>\r\n\r\n<h3><strong>2. Đối tượng sử dụng Slim body:</strong></h3>\r\n\r\n<p><strong><img alt=\"\" src=\"/upload/images/slim-body-hoc-vien-quan-y.jpg\" style=\"height:303px; width:605px\" /></strong></p>\r\n\r\n<p><strong>Slim body kh&ocirc;ng c&ograve;n chẩy xệ</strong></p>\r\n\r\n<p>- Người c&oacute; c&acirc;n nặng tăng cao, b&eacute;o ph&igrave;</p>\r\n\r\n<p>- Người c&oacute; mong muốn giảm c&acirc;n nhanh, kh&ocirc;ng t&aacute;c dụng phụ.</p>\r\n\r\n<p>- Người c&oacute; c&acirc;n nặng tăng nhẹ nhưng cơ thể bị chẩy xệ</p>\r\n\r\n<p>- Phụ nữ sau sinh, c&oacute; v&ograve;ng bụng lớn&hellip;</p>\r\n\r\n<p><strong>3. C&ocirc;ng dụng Slimbody Học Viện Qu&acirc;n Y:</strong></p>\r\n\r\n<p><img alt=\"Slim Body Sản Phẩm Giảm Cân Mới Học Viện Quân Y\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:23px; width:25px\" />&nbsp;&nbsp;Giảm sự hấp thu chất b&eacute;o v&agrave;o cơ thể</p>\r\n\r\n<p><img alt=\"Slim Body Sản Phẩm Giảm Cân Mới Học Viện Quân Y\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:23px; width:25px\" />&nbsp;&nbsp;Giảm cholesterol, giảm mỡ m&aacute;u</p>\r\n\r\n<p>&nbsp;<img alt=\"Slim Body Sản Phẩm Giảm Cân Mới Học Viện Quân Y\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:23px; width:25px\" />&nbsp;Giảm t&igrave;nh trạng b&eacute;o ph&igrave;, thừa c&acirc;n</p>\r\n\r\n<p>&nbsp;<img alt=\"Slim Body Sản Phẩm Giảm Cân Mới Học Viện Quân Y\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:23px; width:25px\" />&nbsp;Giảm t&igrave;nh trạng b&eacute;o ph&igrave;, thừa c&acirc;n sau sinh.</p>\r\n\r\n<p>&nbsp;<img alt=\"Slim Body Sản Phẩm Giảm Cân Mới Học Viện Quân Y\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:23px; width:25px\" />&nbsp;Giảm t&igrave;nh trạng b&eacute;o ph&igrave;, thừa c&acirc;n cho&nbsp;người c&oacute; cơ đia kh&oacute; giảm.</p>\r\n\r\n<p>**Lưu ý:</p>\r\n\r\n<p>- Sản phẩm n&agrave;y kh&ocirc;ng phải l&agrave; thuốc, kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh.</p>\r\n\r\n<h3><strong>4. C&aacute;ch d&ugrave;ng v&agrave; Liệu tr&igrave;nh Slim Body:</strong></h3>\r\n\r\n<p>Qua qu&aacute; tr&igrave;nh thực nghiệm tr&ecirc;n nhiều đối tượng kh&aacute;c nhau, qua phản hồi t&iacute;ch cự của kh&aacute;ch h&agrave;ng đ&atilde; sử dụng&nbsp;<strong>Slim body</strong>, c&aacute;c chuy&ecirc;n gia gợi &yacute; liệu tr&igrave;nh ph&ugrave; hợp cho kh&aacute;ch h&agrave;ng như sau.</p>\r\n\r\n<p><img alt=\"Slim Body Sản Phẩm Giảm Cân Mới Học Viện Quân Y\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:23px; width:25px\" />&nbsp;Uống 02 vi&ecirc;n/lần &times; 2 lần/ng&agrave;y. Uống trước bữa ăn 30 ph&uacute;t. Uống v&agrave;o bữa s&aacute;ng v&agrave; bữa trưa. Đợt d&ugrave;ng từ 1 đến 3 th&aacute;ng.<br />\r\n<img alt=\"Slim Body Sản Phẩm Giảm Cân Mới Học Viện Quân Y\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:23px; width:25px\" />&nbsp;Với đối tượng kh&oacute; giảm th&igrave; cần kết hợp uống th&ecirc;m tr&agrave; tăng cường.</p>\r\n\r\n<p><strong>Hạn sử dụng</strong>: 36 th&aacute;ng kể từ ng&agrave;y sản xuất. Hạn sử dụng in tr&ecirc;n bao b&igrave;.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/IMG_1039.JPG\" style=\"height:933px; width:700px\" /></p>\r\n');
INSERT INTO `product` (`id`, `style`, `id_value`, `brand`, `name`, `code`, `alias`, `image`, `hot`, `home`, `focus`, `coupon`, `view`, `active`, `price`, `price_sale`, `description`, `description_seo`, `location`, `title_seo`, `keyword_seo`, `detail`, `note`, `like`, `order`, `category_id`, `caption_1`, `caption_2`, `locale`, `bought`, `dksudung`, `sort`, `quantity`, `counter`, `lang`, `destination`, `time`, `tags`, `pro_dir`, `multi_image`, `img_dir`, `status`, `quaranty`, `tinhtrang`, `group_attribute_id`, `color`, `size`, `user_id`, `option_id`, `button_color1`, `config_pro`, `config_pro_content`, `price_imp`, `writer`, `address`, `provinceid`, `order_qty`, `product_hangsx`, `hangsx_id`, `caption_3`, `downloaded`, `number`, `detric`, `coupun`, `content`) VALUES
(227, NULL, NULL, 0, 'VIÊN UỐNG GIẢM CÂN ĐẸP DA NEWSLIM BEAUTY HỌC VIỆN QUÂN ', 'VIÊN UỐNG GIẢM CÂN ĐẸP DA NEWSLIM BEAUTY HỌC VIỆN ', 'vien-uong-giam-can-dep-da-newslim-beauty-hoc-vien-quan', 'f0d5e33b85d8b725b1055792728aa3c5.jpg', 1, 1, 1, NULL, NULL, 1, 275000, 118000, '<p>VI&Ecirc;N UỐNG GIẢM C&Acirc;N ĐẸP DA NEWSLIM BEAUTY HỌC VIỆN QU&Acirc;N Y l&agrave; đề t&agrave;i nghi&ecirc;n cứu của Học viện qu&acirc;n y, nguy&ecirc;n liệu 100% từ thi&ecirc;n nhi&ecirc;n: Gi&uacute;p giảm hấp thu chất b&eacute;o v&agrave;o cơ thể, giảm cholesterol, giảm mỡ m&aacute;u, giảm cảm gi&aacute;c th&egrave;m ăn, giảm t&igrave;nh trạng b&eacute;o ph&igrave;, thừa c&acirc;n, cung cấp collagen cho da, gi&uacute;p da căng mịn. Gi&uacute;p hạn chế tăng sắc tố tr&ecirc;n da dẫn đến t&agrave;n nhang, sạm nắng.</p>\r\n', 'VIÊN UỐNG GIẢM CÂN ĐẸP DA NEWSLIM BEAUTY HỌC VIỆN QUÂN ', NULL, 'VIÊN UỐNG GIẢM CÂN ĐẸP DA NEWSLIM BEAUTY HỌC VIỆN QUÂN ', 'VIÊN UỐNG GIẢM CÂN ĐẸP DA NEWSLIM BEAUTY HỌC VIỆN QUÂN ', NULL, NULL, 0, '0', 83, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 21, 0, NULL, 'vi', NULL, 1541994988, '', '21102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><strong><em>1. Th&agrave;nh phần:</em></strong></p>\r\n\r\n<p>L&aacute; sen (tương đương 100mg cao): &hellip;&hellip;&hellip;......&hellip;. 1.000mg</p>\r\n\r\n<p>L-Cystine: &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;......&hellip;&hellip;.............&hellip;&hellip;.. 100mg</p>\r\n\r\n<p>Tinh chất tr&agrave; xanh: &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;..&hellip;&hellip;...&hellip;.......&hellip;.. 100mg</p>\r\n\r\n<p>Collagen: &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;...&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;........&hellip;&hellip;.. 60mg</p>\r\n\r\n<p>Chitosan: &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;...&hellip;&hellip;..............&hellip;&hellip;. 60mg</p>\r\n\r\n<p>Mangastin extract (Chiết xuất măng cụt): .&hellip;. 20mg</p>\r\n\r\n<p>Pomegranate peel extract (Chiết xuất lựu): . 20mg</p>\r\n\r\n<p>L-Carnitine fumarat:&hellip;&hellip;&hellip;&hellip;.&hellip;&hellip;&hellip;...&hellip;&hellip;..&hellip;...&hellip; 20mg</p>\r\n\r\n<p>Phụ liệu: gelatin, talc, magnesi stearate vừa đủ 1 vi&ecirc;n</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/thanh-phan-newslim-beauty.jpg\" style=\"height:1200px; width:556px\" /></p>\r\n\r\n<p><strong><em>2. C&ocirc;ng dụng:&nbsp;</em></strong></p>\r\n\r\n<p>&minus; Gi&uacute;p giảm hấp thu chất b&eacute;o v&agrave;o cơ thể, giảm cholesterol, giảm mỡ m&aacute;u, giảm t&igrave;nh trạng b&eacute;o ph&igrave;, thừa c&acirc;n.</p>\r\n\r\n<p>&minus; Cung cấp collagen cho da. Gi&uacute;p hạn chế nhăn da do giảm c&acirc;n</p>\r\n\r\n<p><strong><em>3. Đối tượng sử dụng:&nbsp;</em></strong></p>\r\n\r\n<p>&ndash;&nbsp; Người thừa c&acirc;n, b&eacute;o ph&igrave;, người c&oacute; lượng mỡ thừa t&iacute;ch lũy ở v&ugrave;ng bụng, đ&ugrave;i, eo, h&ocirc;ng, người l&atilde;o h&oacute;a da, nhăn da.</p>\r\n\r\n<p>&ndash; Người muốn giảm c&acirc;n, người mỡ m&aacute;u cao.</p>\r\n\r\n<p><strong>4. C&aacute;ch sử dụng:</strong></p>\r\n\r\n<p>&ndash; Uống 2 vi&ecirc;n/Lần x 2 lần/ng&agrave;y.Uống trước bữa ăn 30 ph&uacute;t. Uống v&agrave;o bữa s&aacute;ng v&agrave; bữa trưa.</p>\r\n\r\n<p>&ndash; Để c&oacute; kết quả tốt nhất, n&ecirc;n kết hợp với chế độ ăn uống v&agrave; luyện tập hợp l&yacute;.</p>\r\n'),
(228, NULL, NULL, 0, 'Nano Fucomin Học Viện Quân Y', 'Nano Fucomin Học Viện Quân Y', 'nano-fucomin-hoc-vien-quan-y', 'nano-fucomin-hvqy5-copy.jpg', 1, 1, 1, NULL, NULL, 1, 350000, 280000, '<p>-&nbsp;<strong>Nano Fucomin Học Viện Qu&acirc;n Y&nbsp;</strong>Hỗ Trợ Điều Trị U Bướu<br />\r\n- Gi&uacute;p chống gốc tự do, tăng cường sức đề kh&aacute;ng;<br />\r\n- Hỗ trợ giảm t&aacute;c dụng phụ của h&oacute;a trị, xạ trị u bướu.</p>\r\n\r\n<p>Trong những năm gần đ&acirc;y, Fucoidan l&agrave; c&aacute;i t&ecirc;n được nhiều nh&agrave; khoa học quan t&acirc;m. Vậy Fucoidan l&agrave; g&igrave;? &nbsp;Fucoidan l&agrave; hoạt chất được ph&acirc;n t&aacute;ch từ một loại tảo n&acirc;u (rong biển). FUCOIDAN được ph&aacute;t hiện v&agrave;o năm 1913 bởi Gi&aacute;o sư Kylin của Đại học Uppsala ở Thụy Điển. C&aacute;c nghi&ecirc;n cứu khoa học v&agrave; b&aacute;o c&aacute;o l&acirc;m s&agrave;ng chỉ ra rằng FUCOIDAN c&oacute; c&ocirc;ng dụng hỗ trợ ngăn ngừa qu&aacute; tr&igrave;nh oxy h&oacute;a, hỗ trợ ph&ograve;ng ức chế tế b&agrave;o g&acirc;y ung bướu, giảm t&aacute;c dụng phụ của h&oacute;a trị xạ trị v&agrave; tăng cường sức đề kh&aacute;ng, tăng khả năng hồi phục của cơ thể.</p>\r\n', 'Nano Fucomin Học Viện Quân Y', NULL, 'Nano Fucomin Học Viện Quân Y', 'Nano Fucomin Học Viện Quân Y', NULL, NULL, 0, '0', 103, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 22, 0, NULL, 'vi', NULL, 1541994968, '', '19102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<div style=\"-webkit-text-stroke-width:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px; text-align:left\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"color:#ff6600\"><strong><span style=\"font-size:14px\"><span style=\"font-family:Helvetica,Arial,sans-serif\">1.&nbsp;<a href=\"https://vienquany.com/279/nano-fucomin-hoc-vien-quan-y.html\" style=\"text-decoration:none; padding:0px; margin:0px; box-sizing:border-box; color:#333333\" target=\"_blank\">NANO FUCOMIN HỌC VIỆN QU&Acirc;N Y</a>&nbsp;L&Agrave; G&Igrave; ?</span></span></strong></span><span style=\"font-size:14px\"><span style=\"color:#1d2129\"><span style=\"font-family:inherit\"><span style=\"font-size:0px\"><span style=\"font-family:inherit\">????</span></span></span></span></span></span></span></span></div>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"color:#1d2129\">&quot;U Bướu&quot; l&agrave; một trong những căn bệnh c&oacute; tỷ lệ tử vong cao nhất tr&ecirc;n thế giới, đặc biệt ở những nước ngh&egrave;o v&agrave; c&aacute;c nước đang ph&aacute;t triển, ch&iacute;nh v&igrave; thế m&agrave; c&ocirc;ng t&aacute;c ph&ograve;ng ngừa v&agrave; hỗ trợ điều trị &quot;U Bướu&quot; được xem l&agrave; v&ocirc; c&ugrave;ng cấp thiết ở mọi quốc gia đặc biệt l&agrave; ở c&aacute;c nước ch&acirc;u &Aacute;, ch&acirc;u Phi.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><br />\r\n<span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"color:#1d2129\">Nano Fucomin l&agrave; sản phẩm th&agrave;nh c&ocirc;ng nhất từ trước tới nay c&oacute; sự kết hợp của c&aacute;c thảo dược v&ocirc; c&ugrave;ng qu&yacute; như: Fucoidan c&oacute; trong rong biển, Nano curcumin, Bột tam thất, Cao Phylamin,... l&agrave; c&aacute;c dược liệu được sử dụng để b&agrave;o chế c&aacute;c sản phẩm sử dụng trọng qu&aacute; tr&igrave;nh hỗ trợ điều trị &quot;U Bướu&quot; tr&ecirc;n thế giới.</span></span></span></span><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"color:#1d2129\">&nbsp;</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"color:#1d2129\"><span style=\"color:#ff6600\"><strong>2. TH&Agrave;NH PHẦN NANO FUCOMIN: (Lọ 30 vi&ecirc;n)&nbsp;</strong></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"color:#1d2129\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"font-size:14px\">-&nbsp;<strong>Fucoidan</strong>: ..........................................200 mg</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"color:#1d2129\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"font-size:14px\">- Nano curcumin: .................................150 mg</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"color:#1d2129\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"font-size:14px\">- Bột tam thất: .....................................30 mg</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"color:#1d2129\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"font-size:14px\">- Cao Phylamin:................................... 30 mg</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"color:#1d2129\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"font-size:14px\">- Cao xạ đen:&nbsp; ......................................30 mg</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"color:#1d2129\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"font-size:14px\">- Cao Bạch hoa x&agrave; thiệt thảo:.............. 30 mg</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"color:#1d2129\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"font-size:14px\">- Cao b&aacute;n chi li&ecirc;n : ..............................20 mg</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"color:#1d2129\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"font-size:14px\">- Bioperine: .........................................0.5 mg</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"color:#1d2129\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"font-size:14px\">- Selen: ................................................10 mcg</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"color:#1d2129\">Phụ liệu: talc, magie stearat, vỏ nang gelatin vừa đủ 1 vi&ecirc;n.<br />\r\n<img alt=\"\" src=\"/upload/images/thanh-phan-nano-fucomin.jpg\" style=\"height:724px; width:1080px\" /><br />\r\n<strong>3. T&Aacute;C DỤNG NANO FUCOMIN:</strong><br />\r\n- Gi&uacute;p chống gốc tự do, ngăn ngừa sự ph&aacute;t triển của gốc tự do.<br />\r\n- Tăng cường sức đề kh&aacute;ng, n&acirc;ng cao thể trạng của người sử dụng.<br />\r\n- Hỗ trợ giảm t&aacute;c dụng phụ của h&oacute;a trị, xạ trị &quot;U Bướu&quot;.</span></span></span></span></p>\r\n\r\n<div style=\"-webkit-text-stroke-width:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">**Lưu ý:</span></span></span></div>\r\n\r\n<div style=\"-webkit-text-stroke-width:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px; text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">- Sản phẩm n&agrave;y kh&ocirc;ng phải l&agrave; thuốc, kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh.</span></span></span></div>\r\n\r\n<p>&nbsp;<strong>4. ĐỐI TƯỢNG SỬ DỤNG NANO FUCOMIN:</strong></p>\r\n\r\n<p>- Người bị &quot;U Bướu&quot;.<br />\r\n- Người đang v&agrave; sau qu&aacute; tr&igrave;nh h&oacute;a trị, xạ trị.<br />\r\n- Người thường xuy&ecirc;n l&agrave;m việc trong m&ocirc;i trường độc hại.</p>\r\n\r\n<p><strong>5. C&Aacute;CH SỬ DỤNG NANO FUCOMIN:</strong><br />\r\n- Uống mỗi lần 02 vi&ecirc;n, ng&agrave;y 02 lần. N&ecirc;n uống trước bữa ăn 30 ph&uacute;t hoặc sau ăn 1 giờ. Đợt d&ugrave;ng 3-6 th&aacute;ng.<br />\r\n- Bảo quản: Nơi kh&ocirc; m&aacute;t, tr&aacute;nh &aacute;nh s&aacute;ng. Để xa tầm tay trẻ em.</p>\r\n'),
(229, NULL, NULL, 0, 'NANO CURCUMIN Học viện Quân Y chuyên viêm loét dạ dày, viêm loét hành tá tràng', 'NANO CURCUMIN Học viện Quân Y chuyên viêm loét dạ ', 'nano-curcumin-hoc-vien-quan-y-chuyen-viem-loet-da-day-viem-loet-hanh-ta-trang', 'nano-curcumin-hoc-vien-quan-y-dac-tri-viem-loet-da-day-viem-loet-hanh-ta-trang-9-copy.jpg', 1, 1, 1, NULL, 2, 1, 265000, 140000, '<p>NANO CURCUMIN Học viện Qu&acirc;n Y chuy&ecirc;n vi&ecirc;m lo&eacute;t dạ d&agrave;y, vi&ecirc;m lo&eacute;t h&agrave;nh t&aacute; tr&agrave;ng</p>\r\n\r\n<p>- Gi&uacute;p giảm c&aacute;c triệu chứng đau dạ d&agrave;y, h&agrave;nh t&aacute; tr&agrave;ng,&nbsp;<br />\r\n- Hỗ trợ điều trị vi&ecirc;m lo&eacute;t dạ d&agrave;y, vi&ecirc;m lo&eacute;t h&agrave;nh t&aacute; tr&agrave;ng, &hellip;&nbsp;<br />\r\n- Tăng cường miễn dịch, giảm c&aacute;c t&aacute;c dụng phụ của h&oacute;a trị, xạ trị ung thư&nbsp;<br />\r\n- Hạn chế l&atilde;o h&oacute;a, giảm nhăn da, giảm vết th&acirc;m n&aacute;m, gi&uacute;p đẹp da.<br />\r\nChất c&oacute; t&aacute;c dụng trong Tinh bột nghệ l&agrave; CURCUMIN. C&aacute;c c&ocirc;ng tr&igrave;nh khoa học của c&aacute;c nh&agrave; khoa học tr&ecirc;n thế giới đ&atilde; chứng minh Curcumin trong tinh chất nghệ c&oacute; t&aacute;c dụng:</p>\r\n', 'NANO CURCUMIN Học viện Quân Y chuyên viêm loét dạ dày, viêm loét hành tá tràng', NULL, 'NANO CURCUMIN Học viện Quân Y chuyên viêm loét dạ dày, viêm loét hành tá tràng', 'NANO CURCUMIN Học viện Quân Y chuyên viêm loét dạ dày, viêm loét hành tá tràng', NULL, NULL, 0, '0', 103, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 23, 0, NULL, 'vi', NULL, 1541343295, '', '19102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>NANO CURCUMIN Học viện Qu&acirc;n Y chuy&ecirc;n vi&ecirc;m lo&eacute;t dạ d&agrave;y, vi&ecirc;m lo&eacute;t h&agrave;nh t&aacute; tr&agrave;ng</p>\r\n\r\n<p>- Gi&uacute;p giảm c&aacute;c triệu chứng đau dạ d&agrave;y, h&agrave;nh t&aacute; tr&agrave;ng,&nbsp;<br />\r\n- Hỗ trợ điều trị vi&ecirc;m lo&eacute;t dạ d&agrave;y, vi&ecirc;m lo&eacute;t h&agrave;nh t&aacute; tr&agrave;ng, &hellip;&nbsp;<br />\r\n- Tăng cường miễn dịch, giảm c&aacute;c t&aacute;c dụng phụ của h&oacute;a trị, xạ trị ung thư&nbsp;<br />\r\n- Hạn chế l&atilde;o h&oacute;a, giảm nhăn da, giảm vết th&acirc;m n&aacute;m, gi&uacute;p đẹp da.<br />\r\nChất c&oacute; t&aacute;c dụng trong Tinh bột nghệ l&agrave; CURCUMIN. C&aacute;c c&ocirc;ng tr&igrave;nh khoa học của c&aacute;c nh&agrave; khoa học tr&ecirc;n thế giới đ&atilde; chứng minh Curcumin trong tinh chất nghệ c&oacute; t&aacute;c dụng</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/muc%20tieu%20cua%20nano%20curcumin.jpg\" style=\"height:322px; width:500px\" /></p>\r\n'),
(232, NULL, NULL, 0, 'Men Sống Bạch Mai', 'Men Sống', 'men-song-bach-mai', 'img-1934.PNG', 1, 1, 1, NULL, 1, 1, 250000, 180000, '<p>Men sống Bạch Mai chứa c&aacute;c lợi khuẩn Bacillus gi&uacute;p c&acirc;n bằng hệ vi sinh đường ruột, ph&ograve;ng rối loạn ti&ecirc;u h&oacute;a hoặc do loạn khuẩn đường ruột hoặc do kh&aacute;ng sinh k&eacute;o d&agrave;i ng&agrave;y. Men được b&agrave;o chế dưới dạng ống, kh&ocirc;ng m&ugrave;i, kh&ocirc;ng vị, dễ uống</p>\r\n', 'Men Sống Bạch Mai', NULL, 'Men Sống Bạch Mai', 'Men Sống Bạch Mai', NULL, NULL, 0, '0', 110, 'Viện Bạch Mai', NULL, NULL, NULL, NULL, 26, 0, NULL, 'vi', NULL, 1541478721, '', '24102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2>1. T&aacute;c dụng của men sống Bạch Mai</h2>\r\n\r\n<p>►&nbsp;<strong>Men sống Bạch Mai</strong>&nbsp;bổ sung vi khuẩn c&oacute; lợi, gi&uacute;p lập lại c&acirc;n bằng hệ vi sinh đường ruột v&agrave; n&acirc;ng cao khả năng miễn dịch của cơ thể.</p>\r\n\r\n<p>► Tốt trong c&aacute;c trường hợp bị rối loạn ti&ecirc;u h&oacute;a như: Ph&acirc;n sống, t&aacute;o b&oacute;n ở trẻ em v&agrave; người lớn tuổi do d&ugrave;ng kh&aacute;ng sinh k&eacute;o d&agrave;i, do rối loạn khuẩn đường ruột.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/IMG_1936.PNG\" style=\"height:350px; width:900px\" /></p>\r\n\r\n<h2>2. Th&agrave;nh phần của men sống Bạch Mai</h2>\r\n\r\n<p>-&nbsp;<strong>Men sống Bạch Mai</strong>&nbsp;chứa 3 chủng vi khuẩn đặc hiệu bao gồm: Bacillus clausii, Bacillus subtillis, bacillus coagulans : 3 x 10^9 CFU ( khoảng 3 tỷ lợi khuẩn ) v&agrave; kẽm gluconat 5 mg .</p>\r\n\r\n<h2>3. Đối tượng sử dụng sản phẩm men sống Bạch Mai</h2>\r\n\r\n<p>►&nbsp;<strong>Men sống Bạch Mai</strong>&nbsp;d&ugrave;ng cho trẻ em bị rối loạn ti&ecirc;u h&oacute;a, suy dinh dưỡng, biếng ăn, chậm lớn, trẻ trong giai đoạn trưởng th&agrave;nh.</p>\r\n\r\n<p>► D&ugrave;ng cho người bị đầy bụng, kh&oacute; ti&ecirc;u, t&aacute;o b&oacute;n, ti&ecirc;u chảy, ph&acirc;n sống, loạn khuẩn đường ruột do d&ugrave;ng kh&aacute;ng sinh k&eacute;o d&agrave;i, người đang trong giai đoạn phục hồi bệnh.</p>\r\n\r\n<h2>4. Hướng dẫn sử dụng men sống Bạch Mai</h2>\r\n\r\n<p>- Trẻ em tr&ecirc;n 2 tuổi: 2 ống/ ng&agrave;y</p>\r\n\r\n<p>- Người lớn: 4 ống / ng&agrave;y</p>\r\n\r\n<p>- Trẻ dưới 2 tuổi d&ugrave;ng theo &yacute; kiến của b&aacute;c sỹ hoặc chuy&ecirc;n gia dinh dưỡng.</p>\r\n\r\n<p>- Khuyến c&aacute;o: Uống sau khi ăn no từ 5-10 ph&uacute;t để c&oacute; hiệu quả tốt nhất.</p>\r\n\r\n<h2>5. Giấy ph&eacute;p của men sống Bạch Mai</h2>\r\n\r\n<p>&diams;&nbsp;<strong>Men sống Bạch Mai</strong>&nbsp;được cấp giấy c&ocirc;ng bố Số XNCB:&nbsp; 22856/2017/ATTP-XNCB, do Cục an to&agrave;n thực phẩm - Bộ Y tế Việt Nam cấp ng&agrave;y 09 th&aacute;ng 06 năm 2017</p>\r\n\r\n<p>&diams; Bảo quản: Để trong ngăn m&aacute;t tủ lạnh</p>\r\n\r\n<p>&diams; Đ&oacute;ng g&oacute;i: Dạng vỉ chứa c&aacute;c ống bẻ 10 ml, trong đ&oacute; gồm th&ecirc;m nước cất v&agrave; m&ocirc;i trường nu&ocirc;i dưỡng lợi khuẩn<img alt=\"\" src=\"/upload/images/IMG_1935.PNG\" style=\"height:350px; width:900px\" /></p>\r\n'),
(231, NULL, NULL, 0, 'Cốm bổ Safical IQ', 'Safical IQ', 'com-bo-safical-iq', 'download-1-copy.jpg', 1, 1, 1, NULL, 5, 1, 120000, 75000, '<p>Bổ sung Canxi, DHA, acid amin v&agrave; vitamin cần thiết cho trẻ em gi&uacute;p ph&aacute;t triển chiều cao v&agrave; tr&iacute; n&atilde;o Tăng cường hấp thu c&aacute;c chất dinh dưỡng, ngăn ngừa c&ograve;i xương hỗ trợ sự ph&aacute;t triển to&agrave;n diện c&aacute;c tố chất sức khỏe v&agrave; tr&iacute; n&atilde;o N&acirc;ng cao sức đề kh&aacute;ng cho cơ thể</p>\r\n', 'Safical IQ', NULL, 'Safical IQ', 'Safical IQ', NULL, NULL, 0, '0', 110, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 25, 0, NULL, 'vi', NULL, 1540132206, '', '21102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><strong>1. TH&Agrave;NH PH&Acirc;N :</strong><br />\r\n<br />\r\nCanxi gluconat&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 100 mg&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kẽm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5 mg<br />\r\nVitamin D3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 250 mg&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; L.Lysin&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 40 mg<br />\r\nVitamin A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 250 UI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Taurine&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2 mg<br />\r\nDHA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10 mg&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vitamin B2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0,2 mg<br />\r\nAcid folic&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 50 mcg&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vitamin B3 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5 mg<br />\r\nVitamin B1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0,5 mg&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vitamin B6&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0,5 mg<br />\r\n<br />\r\nTinh chất men bia tươi (chứa 21 loại acid amin v&agrave; c&aacute;c nguy&ecirc;n tố vi lượng: iod, sắt, selen &hellip;)&nbsp;&nbsp;&nbsp; 1000 mg<br />\r\nĐường k&iacute;nh, lactose, hương sữa vđ &hellip;&hellip;&hellip;&hellip;&hellip; &hellip;&hellip;...&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3000 mg<br />\r\n<br />\r\n<strong>2. C&Ocirc;NG DỤNG :</strong><br />\r\nBổ sung&nbsp; Canxi, DHA, acid amin v&agrave; vitamin cần thiết&nbsp;cho trẻ em&nbsp;gi&uacute;p ph&aacute;t triển chiều cao v&agrave; tr&iacute; n&atilde;o<br />\r\nTăng cường hấp thu c&aacute;c chất dinh dưỡng, ngăn ngừa c&ograve;i xương hỗ trợ sự ph&aacute;t triển to&agrave;n diện c&aacute;c tố chất sức khỏe v&agrave; tr&iacute; n&atilde;o<br />\r\nN&acirc;ng cao sức đề kh&aacute;ng cho cơ thể</p>\r\n\r\n<p><br />\r\n<strong>3. ĐỐI TƯỢNG SỬ DỤNG :</strong><br />\r\nD&ugrave;ng cho trẻ em c&ograve;i xương, suy dinh dưỡng, chậm ph&aacute;t triển</p>\r\n\r\n<p><br />\r\n<strong>4. LIỀU LƯỢNG V&Agrave; C&Aacute;CH D&Ugrave;NG :&nbsp;</strong><br />\r\nTrẻ từ 7 th&aacute;ng đến 4 tuổi&nbsp;: ng&agrave;y d&ugrave;ng 1-2 g&oacute;i sau khi ăn.<br />\r\nTrẻ từ 4 tuổi trở l&ecirc;n&nbsp;: ng&agrave;y d&ugrave;ng 2-4 g&oacute;i chia 2 lần sau khi ăn<br />\r\nĐợt d&ugrave;ng 4-6 tuần, năm d&ugrave;ng 3-4 đợt.</p>\r\n\r\n<p>Nhai trực tiếp hoặc ho&agrave; với nước hay trộn với thức ăn.</p>\r\n\r\n<p><strong>5. BẢO QUẢN</strong><br />\r\nĐể nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh s&aacute;ng mặt trời.<br />\r\n<strong>SĐK&nbsp;: 30962014/ATTP - XNCB</strong><br />\r\n<em>Sản phẩm n&agrave;y kh&ocirc;ng phải l&agrave; thuốc, kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh</em></p>\r\n'),
(230, NULL, NULL, 0, 'Siro ăn ngon NAVIKID Học Viện Quân Y cho trẻ mau lớn', 'Navikid', 'siro-an-ngon-navikid-hoc-vien-quan-y-cho-tre-mau-lon', 'siro-an-ngon-navikid-hoc-vien-quan-y-cho-tre-mau-lon-83-copy.jpg', 1, 1, 1, NULL, NULL, 1, 175000, 98000, '<p>Siro ăn ngon NAVIKID &ndash; Bổ sung thymomodulin, kẽm gluconate gi&uacute;p tăng cường sức đề kh&aacute;ng cho cơ thể.&nbsp;<br />\r\n&ndash; Bổ sung c&aacute;c acid amin, vitamin v&agrave; kho&aacute;ng chất cần thiết cho cơ thể gi&uacute;p trẻ ăn ngon miệng, hỗ trợ ti&ecirc;u h&oacute;a, hỗ trợ phục hồi sức khỏe.&nbsp;<br />\r\n&ndash; Bổ sung L-Lysin HCl, Taurin gi&uacute;p tăng cường chuyển h&oacute;a dưỡng chất, hỗ trợ ph&aacute;t triển n&atilde;o bộ.</p>\r\n', 'Navikid', NULL, 'Navikid', 'Navikid', NULL, NULL, 0, '0', 110, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 24, 0, NULL, 'vi', NULL, 1541994953, '', '21102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><strong><a href=\"https://vienquany.com/283/siro-an-ngon-navikid-hoc-vien-quan-y-cho-tre-mau-lon.html\">Siro ăn ngon NAVIKID</a></strong><br />\r\n<br />\r\n<em>&ndash; Bổ sung thymomodulin, kẽm gluconate gi&uacute;p tăng cường sức đề kh&aacute;ng cho cơ thể.</em><br />\r\n<em>&ndash; Bổ sung c&aacute;c acid amin, vitamin v&agrave; kho&aacute;ng chất cần thiết cho cơ thể gi&uacute;p trẻ ăn ngon miệng, hỗ trợ ti&ecirc;u h&oacute;a, hỗ trợ phục hồi sức khỏe.</em><br />\r\n<em>&ndash; Bổ sung L-Lysin HCl, Taurin gi&uacute;p tăng cường chuyển h&oacute;a dưỡng chất, hỗ trợ ph&aacute;t triển n&atilde;o bộ.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1. TH&Agrave;NH PHẦN&nbsp;&nbsp;<strong>SIRO ĂN NGON NAVIKID</strong></strong><br />\r\n&nbsp;</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Th&agrave;nh phần</td>\r\n			<td>H&agrave;m lượng</td>\r\n			<td>Th&agrave;nh phần</td>\r\n			<td>H&agrave;m lượng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>L-Lysine HCl</td>\r\n			<td>550mg</td>\r\n			<td>Immune Path-IP</td>\r\n			<td>50mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Calci gluconate</td>\r\n			<td>20mg</td>\r\n			<td>Taurine</td>\r\n			<td>20mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thymomodulin</td>\r\n			<td>15mg</td>\r\n			<td>Mật ong</td>\r\n			<td>10mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Arginine As</td>\r\n			<td>5mg</td>\r\n			<td>&nbsp;Kẽm Gluconate</td>\r\n			<td>5mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin PP</td>\r\n			<td>2mg</td>\r\n			<td>Vitamin B1&nbsp;</td>\r\n			<td>1mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B5&nbsp;</td>\r\n			<td>1mg</td>\r\n			<td>Vitamin B6&nbsp;</td>\r\n			<td>1mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Acid folic&nbsp;</td>\r\n			<td>100mcg</td>\r\n			<td>Vitamin D3&nbsp;</td>\r\n			<td>50UI&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><br />\r\nPhụ liệu: sorbitol, nước cất vừa đủ 10ml.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/z774329791578_0b887afae3403569cbdb7007bea1dcf1.jpg\" style=\"height:536px; width:800px\" /><strong>2. C&Ocirc;NG DỤNG&nbsp;<strong><strong>SIRO ĂN NGON NAVIKID</strong></strong></strong><br />\r\n<br />\r\n1/ Bổ sung thymomodulin, kẽm gluconate gi&uacute;p tăng cường sức đề kh&aacute;ng cho cơ thể.<br />\r\n2/ Bổ sung c&aacute;c acid amin, vitamin v&agrave; kho&aacute;ng chất cần thiết cho cơ thể gi&uacute;p trẻ ăn ngon miệng, hỗ trợ ti&ecirc;u h&oacute;a, hỗ trợ phục hồi sức khỏe.<br />\r\n3/ Bổ sung L-Lysin HCl, Taurin gi&uacute;p tăng cường chuyển h&oacute;a dưỡng chất, hỗ trợ ph&aacute;t triển n&atilde;o bộ.<br />\r\n<strong>3. ĐỐI TƯỢNG SỬ DỤNG&nbsp;<strong><strong>SIRO ĂN NGON NAVIKID</strong></strong></strong><br />\r\n1/ Trẻ biếng ăn, chậm lớn, c&ograve;i xương, suy dinh dưỡng.<br />\r\n2/ Trẻ em đang trong giai đoạn ph&aacute;t triển chiều cao tăng nhu cầu sử dụng canxi v&agrave; kho&aacute;ng chất.</p>\r\n\r\n<p>3/ Người mới ốm dậy, sau phẫu thuật ăn uống kh&oacute; ti&ecirc;u hệ ti&ecirc;u h&oacute;a k&eacute;m hấp thu.</p>\r\n\r\n<p><strong>4. HƯỚNG DẪN SỬ DỤNG&nbsp;<strong><strong>SIRO ĂN NGON NAVIKID</strong></strong></strong><br />\r\n- Uống trước khi ăn, c&oacute; thể uống nguy&ecirc;n chất, h&ograve;a v&agrave;o nước hay trộn với thức ăn.</p>\r\n\r\n<ul>\r\n	<li>- Trẻ từ 2 &ndash; 6 tuổi: 1 ống/lần ng&agrave;y uống 1-2 lần.</li>\r\n	<li>- Trẻ từ 7- 9 tuổi: 1 ống/lần ng&agrave;y uống 2-3 lần.&nbsp;</li>\r\n	<li>- Trẻ từ 9 tuổi trở l&ecirc;n v&agrave; người lớn: 2 ống/lần ng&agrave;y uống 2-3 lần.</li>\r\n	<li>Trẻ em dưới 2 tuổi:&nbsp;<em>Trước khi sử dụng n&ecirc;n tham khảo &yacute; kiến của b&aacute;c sĩ v&agrave; dược sĩ.</em></li>\r\n</ul>\r\n\r\n<p><strong>5. THỜI HẠN SỬ DỤNG&nbsp;<strong><strong>SIRO ĂN NGON NAVIKID&nbsp;</strong></strong></strong><br />\r\n36 th&aacute;ng kể từ ng&agrave;y sản xuất. Hạn sử dụng in tr&ecirc;n bao b&igrave;.<br />\r\n<strong>6. BẢO QUẢN&nbsp;<strong><strong>SIRO ĂN NGON NAVIKID</strong></strong></strong><br />\r\nBảo quản nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh s&aacute;ng mặt trời.<br />\r\nĐể xa tầm tay trẻ em.<br />\r\n7. Số XNCB&nbsp;<strong><strong><strong>SIRO ĂN NGON NAVIKID&nbsp;</strong></strong></strong>: 32228/2017/ATTP-XNCB</p>\r\n'),
(239, NULL, NULL, 0, 'Dung dịch vệ sinh phụ nữ Nano Pro Extra của Học Viện Quân Y', 'Dung dịch vệ sinh phụ nữ Nano Pro Extra', 'dung-dich-ve-sinh-phu-nu-nano-pro-extra-cua-hoc-vien-quan-y', 'nano-pro-extra-600x553-copy.jpg', 1, 1, 1, NULL, 2, 1, 220000, 105000, '<p>Khử m&ugrave;i h&ocirc;i kh&oacute; chịu, bảo vệ v&ugrave;ng k&iacute;n, ngăn ngừa c&aacute;c loại nấm, vi tr&ugrave;ng g&acirc;y vi&ecirc;m nhiễm phụ khoa.<br />\r\nVệ sinh v&ugrave;ng &acirc;m hộ thời kỳ kinh nguyệt, thai ngh&eacute;n, hậu sản&hellip;mang lại cảm gi&aacute;c tự tin, thơm m&aacute;t, nhẹ nh&agrave;ng.<br />\r\nTh&iacute;ch hợp cho mọi lứa tuổi. D&ugrave;ng vệ sinh cho cả nam giới.</p>\r\n', 'Dung dịch vệ sinh phụ nữ Nano Pro Extra', NULL, 'Dung dịch vệ sinh phụ nữ Nano Pro Extra', 'Dung dịch vệ sinh phụ nữ Nano Pro Extra', NULL, NULL, 0, '0', 110, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 33, 0, NULL, 'vi', NULL, 1541343147, '', '30102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h3>1. Th&agrave;nh phần của&nbsp;<a href=\"https://vienquany.com/294/dung-dich-ve-sinh-phu-nu-nano-pro-extra-cua-hoc-vien-quan-y.html\" target=\"_blank\">dung dịch vệ sinh phụ nữ Nano Pro Extra</a>&nbsp;của Học Viện Qu&acirc;n Y</h3>\r\n\r\n<p>Trong mỗi lọ dung dịch vệ sinh phụ nữ Nano Pro Extra của Học Viện Qu&acirc;n Y c&oacute; chứa:</p>\r\n\r\n<p>Nano Bạc, Berberin clorid; Acid citric; menthol; Ethanol; Nipazin; Nipazol; Hương liệu; Nước cất</p>\r\n\r\n<h3>2. Những t&aacute;c dụng của dung dịch vệ sin phụ nữ&nbsp;<a href=\"https://vienquany.com/294/dung-dich-ve-sinh-phu-nu-nano-pro-extra-cua-hoc-vien-quan-y.html\" target=\"_blank\">Nano Pro Extra Học Viện Qu&acirc;n Y</a></h3>\r\n\r\n<p><em>Sản phẩm&nbsp;dung dịch vệ sinh phụ nữ Nano Pro Extra của Học Viện Qu&acirc;n Y&nbsp;c&oacute; t&aacute;c dụng gi&uacute;p:</em></p>\r\n\r\n<p>&ndash; Khử m&ugrave;i h&ocirc;i kh&oacute; chịu, bảo vệ v&ugrave;ng k&iacute;n, ngăn ngừa c&aacute;c loại nấm, vi tr&ugrave;ng g&acirc;y vi&ecirc;m nhiễm phụ khoa.</p>\r\n\r\n<p>&ndash; Vệ sinh v&ugrave;ng &acirc;m hộ thời kỳ kinh nguyệt, thai ngh&eacute;n, hậu sản&hellip;mang lại cảm gi&aacute;c tự tin, thơm m&aacute;t, nhẹ nh&agrave;ng.</p>\r\n\r\n<p>&ndash; Th&iacute;ch hợp cho mọi lứa tuổi.</p>\r\n\r\n<p>&ndash; D&ugrave;ng vệ sinh cho cả nam giới.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/Cong-dung-Nano-Pro-Extra.jpg\" style=\"height:399px; width:700px\" /></p>\r\n\r\n<h3>3. Hướng dẫn sử dụng sản phẩm dung dịch vệ sinh phụ nữ của Học Viện Qu&acirc;n Y</h3>\r\n\r\n<p>Vệ sinh v&ugrave;ng k&iacute;n bằng nước sạch, sau đ&oacute; lau kh&ocirc; rồi xịt&nbsp;<em>dung dịch vệ sinh phụ nữ Nano Pro Extra của Học Viện Qu&acirc;n Y</em>&nbsp;v&agrave;o v&ugrave;ng k&iacute;n, kh&ocirc;ng cần phải rửa lại.</p>\r\n\r\n<p>Nếu bạn chưa bị bệnh phụ khoa chỉ cần mỗi ng&agrave;y xịt 1 lần b&ecirc;n ngo&agrave;i, đối với chị em phụ nữ đ&atilde; bị mắc c&aacute;c bệnh phụ khoa rồi, cần phải xịt v&agrave;o trong 3 lần/ng&agrave;y.</p>\r\n\r\n<p>Nếu như trong những lần xịt đầu ti&ecirc;n m&agrave; cảm thấy hơi ngứa hoặc s&oacute;t, chắc chắn bạn đ&atilde; bị vi&ecirc;m rồi.<br />\r\n<em>Lưu &yacute;: Khi xịt kh&ocirc;ng được ch&uacute;c lọ xuống m&agrave; cầm hướng thẳng đứng hoặc hơi xi&ecirc;n trở l&ecirc;n.</em></p>\r\n\r\n<p>Quy c&aacute;ch:&nbsp;Hộp 60ml.</p>\r\n\r\n<p>Số CB:&nbsp;Số CB: 548/13/CBMP-HN</p>\r\n\r\n<p>Bảo quản:&nbsp;Để xa tầm tay trẻ em. Tr&aacute;nh &aacute;nh s&aacute;ng trực tiếp, để nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t.</p>\r\n\r\n<p>Sản phẩm của:&nbsp;Trung t&acirc;m Nghi&ecirc;n cứu Ứng dụng Sản xuất Thực phẩm chức năng, Học viện Qu&acirc;n Y</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/cach-dung-Nano-pro-extra.jpg\" style=\"height:530px; width:800px\" /></p>\r\n'),
(233, NULL, NULL, 0, 'ĐỊNH TÂM AN GIẤC HVQY chiết xuất hàm lượng cao', 'Định Tâm An Giấc', 'dinh-tam-an-giac-hvqy-chiet-xuat-ham-luong-cao', 'img-1972.PNG', 1, 1, 1, NULL, NULL, 1, 350000, 280000, '<p>L&agrave; sản phẩm ra đời sau của Laroxen. Định T&acirc;m An Giấc chứa nhiều c&aacute;c loại cao qu&yacute; chiết xuất h&agrave;m lượng cao mang đến hiệu quả vượt trội.</p>\r\n\r\n<p>C&ocirc;ng dụng:&nbsp;<br />\r\nHỗ trợ an Thần, ngủ ngon giấc.<br />\r\nHỗ trợ giảm t&igrave;nh trạng mệt mọi, Căng thẳng do mất ngủ, ngủ kh&ocirc;ng ngon giấc.<br />\r\nD&ugrave;ng cho người:<br />\r\nSản phẩm định t&acirc;m an giấc được khuy&ecirc;n d&ugrave;ng cho những người bị mất ngủ dẫn đến mệt mỏi, căng thẳng, người cao tuổi, người gi&agrave; bị mất ngủ, kh&oacute; ngủ, ngủ kh&ocirc;ng s&acirc;u giấc.</p>\r\n', 'Định Tâm An Giấc', NULL, 'Định Tâm An Giấc', 'Định Tâm An Giấc', NULL, NULL, 0, '0', 106, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 27, 0, NULL, 'vi', NULL, 1541994895, '', '27102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>&nbsp;1. Th&agrave;nh phần<br />\r\nMỗi vi&ecirc;n&nbsp;<em><a href=\"https://vienquany.com/2111/dinh-tam-an-giac-hoc-vien-quan-y.html\" target=\"_blank\">Định T&acirc;m An Giấc</a></em>&nbsp;c&oacute; chứa:<br />\r\n&ndash; Cao Nữ Lang &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;.115mg</p>\r\n\r\n<p>&ndash; Cao L&aacute; V&ocirc;ng&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;110mg</p>\r\n\r\n<p>&ndash; Cao B&igrave;nh V&ocirc;i&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;100mg</p>\r\n\r\n<p>&ndash; Cao Hắc T&aacute;o Nh&acirc;n&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;.50mg</p>\r\n\r\n<p>&ndash; Cao Phục Thần&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;.20mg</p>\r\n\r\n<p>&ndash; Cao Đương Quy&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;20mg</p>\r\n\r\n<p>&ndash; Cao Long Nh&atilde;n&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;.20mg</p>\r\n\r\n<p>&ndash; Cao Cam Thảo&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;..20mg</p>\r\n\r\n<p>Th&agrave;nh phần kh&aacute;c (talc, magie stearat) vừa đủ 1 vi&ecirc;n.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/IMG_1971.PNG\" style=\"height:586px; width:768px\" /></p>\r\n\r\n<p>2. C&ocirc;ng dụng&nbsp;:</p>\r\n\r\n<p>Hỗ trợ an Thần, ngủ ngon giấc.</p>\r\n\r\n<p>Hỗ trợ giảm t&igrave;nh trạng mệt mọi, Căng thẳng do&nbsp;mất ngủ, ngủ kh&ocirc;ng ngon giấc.</p>\r\n\r\n<p>3. Đối tượng sử dụng&nbsp;</p>\r\n\r\n<p><em><a href=\"https://vienquany.com/2111/dinh-tam-an-giac-hoc-vien-quan-y.html\" target=\"_blank\">Sản phẩm định t&acirc;m an giấc</a></em>&nbsp;được khuy&ecirc;n d&ugrave;ng cho những người bị mất ngủ dẫn đến mệt mỏi, căng thẳng, người cao tuổi, người&nbsp; gi&agrave; bị mất ngủ, kh&oacute; ngủ, ngủ kh&ocirc;ng s&acirc;u giấc.</p>\r\n\r\n<p>4. Đối tượng kh&ocirc;ng n&ecirc;n d&ugrave;ng</p>\r\n\r\n<p>Kh&ocirc;ng d&ugrave;ng cho người mẫn cảm với 1 trong c&aacute;c th&agrave;nh phần của sản phẩm.</p>\r\n\r\n<h3>5. Hướng dẫn sử dụng định t&acirc;m an giấc</h3>\r\n\r\n<ul>\r\n	<li>Uống 1-2 vi&ecirc;n/lần,&nbsp; ng&agrave;y uống 1 lần trước khi đi ngủ 30-60 ph&uacute;t</li>\r\n	<li>T&ugrave;y t&igrave;nh trạng mỗi người, c&oacute; thể uống theo chỉ dẫn của b&aacute;c sỹ để đạt hiệu quả cao nhất.</li>\r\n</ul>\r\n\r\n<p>6. Bảo quản</p>\r\n\r\n<ul>\r\n	<li>Bảo quản nơi kh&ocirc; m&aacute;t, tr&aacute;nh &aacute;nh s&aacute;ng.</li>\r\n	<li>Để xa tầm tay trẻ em.</li>\r\n</ul>\r\n\r\n<p>7. Nghi&ecirc;n cứu v&agrave; sản xuất bởi:</p>\r\n\r\n<ul>\r\n	<li>Trung t&acirc;m nghi&ecirc;n cứu ứng dụng sản xuất TPCN Học Viện Qu&acirc;n Y Việt Nam.<img alt=\"\" src=\"/upload/images/IMG_0273.PNG\" style=\"height:853px; width:640px\" /><img alt=\"\" src=\"/upload/images/IMG_0272.PNG\" style=\"height:853px; width:640px\" /></li>\r\n</ul>\r\n'),
(234, NULL, NULL, 0, 'Slimtosen Beauty Học Viện Quân Y Sản Phẩm Giảm Cân Mới Cho Người Khó Giảm', 'Slimtosen Beauty', 'slimtosen-beauty-hoc-vien-quan-y-san-pham-giam-can-moi-cho-nguoi-kho-giam', 'img-1962.PNG', 1, 1, 1, NULL, 9, 1, 300000, 265000, '<p>C&ocirc;ng dụng: Giảm hấp thu chất b&eacute;o v&agrave;o cơ thể, giảm cholesterol, giảm mỡ m&aacute;u, giảm t&igrave;nh trạng b&eacute;o ph&igrave;, thừa c&acirc;n, cung cấp collagen cho da, gi&uacute;p hạn chế nhăn da khi giảm c&acirc;n.<br />\r\nKhuy&ecirc;n d&ugrave;ng cho những người thừa c&acirc;n, b&eacute;o ph&igrave;, người l&atilde;o h&oacute;a da, nhăn da khi giảm c&acirc;n.</p>\r\n', 'Slimtosen Beauty', NULL, 'Slimtosen Beauty', 'Slimtosen Beauty', NULL, NULL, 0, '0', 83, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 28, 0, NULL, 'vi', NULL, 1540656521, '', '27102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, 'null', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><img alt=\"\" src=\"/upload/images/IMG_1966.PNG\" style=\"height:764px; width:768px\" /></p>\r\n\r\n<p><strong>1. Th&agrave;nh Phần Beauty Slimtosen:</strong><br />\r\n<br />\r\nL&aacute; sen (tương đương 100mg cao) &hellip;&hellip;.&hellip;&hellip;&hellip;. 1.000mg</p>\r\n\r\n<p>L-Cystine &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;. 200mg</p>\r\n\r\n<p>Collagen &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;.. 50mg</p>\r\n\r\n<p>Chitosan &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;.&hellip;&hellip;&hellip;. 50mg</p>\r\n\r\n<p>Mangastin extract (Chiết xuất măng cụt) &hellip;&hellip;.&hellip;. 30mg</p>\r\n\r\n<p>Pomegranate peel extract (Chiết xuất lựu) &hellip;&hellip;..&hellip;20mg</p>\r\n\r\n<p>L-Carnitine fumarat &hellip;&hellip;&hellip;&hellip;.&hellip;&hellip;&hellip;&hellip;&hellip;..&hellip;.&hellip; 30mg</p>\r\n\r\n<p>Phụ liệu: gelatin, talc, magnesi stearate vừa đủ 1 vi&ecirc;n<br />\r\n&nbsp;</p>\r\n\r\n<h3>2. T&aacute;c dụng của Slimtosen Beauty</h3>\r\n\r\n<p>Giảm hấp thu chất b&eacute;o v&agrave;o cơ thể, giảm cholesterol, giảm mỡ m&aacute;u, giảm t&igrave;nh trạng b&eacute;o ph&igrave;, thừa c&acirc;n, cung cấp collagen cho da, gi&uacute;p hạn chế nhăn da khi giảm c&acirc;n<br />\r\n&nbsp;</p>\r\n\r\n<h3>3. Đối tượng sử dụng Slimtosen Beauty</h3>\r\n\r\n<p><a href=\"https://vienquany.com/2118/beauty-slimtosen-hoc-vien-quan-y-san-pham-giam-can-moi-cho-nguoi-kho-giam.html\" target=\"_blank\">Vi&ecirc;n giảm c&acirc;n Slimtosen Beauty</a>&nbsp;được khuy&ecirc;n d&ugrave;ng cho những người thừa c&acirc;n, b&eacute;o ph&igrave;, người l&atilde;o h&oacute;a da, nhăn da khi giảm c&acirc;n.</p>\r\n\r\n<h3>4. Hướng dẫn sử dụng Slimtosen Beauty</h3>\r\n\r\n<p>Mỗi ng&agrave;y uống 2 lần &ndash; mỗi lần uống 2 vi&ecirc;n<br />\r\nN&ecirc;n uống trước bữa ăn 30 ph&uacute;t.<br />\r\nĐể c&oacute; kết quả tốt nhất, n&ecirc;n kết hợp với chế độ ăn uống v&agrave; luyện tập hợp l&yacute;.<br />\r\nLưu &yacute;: Sản phẩm n&agrave;y kh&ocirc;ng phải l&agrave; thuốc v&agrave; kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh.<br />\r\n&nbsp;</p>\r\n\r\n<p>5. Hạn sử dụng v&agrave; bảo quản</p>\r\n\r\n<p>36 th&aacute;ng kể từ ng&agrave;y sản xuất. Hạn sử dụng in tr&ecirc;n bao b&igrave;.<br />\r\nBảo quản nơi kh&ocirc; m&aacute;t, tr&aacute;nh &aacute;nh nắng mặt trời. Để xa tầm tay trẻ em.</p>\r\n\r\n<p>Sản phẩm được đ&oacute;ng trong bao b&igrave; đảm bảo vệ sinh, đạt y&ecirc;u cầu về vệ sinh an to&agrave;n thực phẩm theo quy định của Bộ Y tế.</p>\r\n\r\n<p>Quy c&aacute;ch:&nbsp;Hộp 60 vi&ecirc;n d&ugrave;ng 15 ng&agrave;y.</p>\r\n');
INSERT INTO `product` (`id`, `style`, `id_value`, `brand`, `name`, `code`, `alias`, `image`, `hot`, `home`, `focus`, `coupon`, `view`, `active`, `price`, `price_sale`, `description`, `description_seo`, `location`, `title_seo`, `keyword_seo`, `detail`, `note`, `like`, `order`, `category_id`, `caption_1`, `caption_2`, `locale`, `bought`, `dksudung`, `sort`, `quantity`, `counter`, `lang`, `destination`, `time`, `tags`, `pro_dir`, `multi_image`, `img_dir`, `status`, `quaranty`, `tinhtrang`, `group_attribute_id`, `color`, `size`, `user_id`, `option_id`, `button_color1`, `config_pro`, `config_pro_content`, `price_imp`, `writer`, `address`, `provinceid`, `order_qty`, `product_hangsx`, `hangsx_id`, `caption_3`, `downloaded`, `number`, `detric`, `coupun`, `content`) VALUES
(235, NULL, NULL, 0, 'Detoxic – Sản phẩm diệt ký sinh trùng và cải thiện tiêu hóa', 'Detoxic – Sản phẩm diệt ký sinh trùng và cải thiện', 'detoxic-san-pham-diet-ky-sinh-trung-va-cai-thien-tieu-hoa', 'detoxic-diet-ky-sinh-trung-hang-noi-dia-nga-30-vien-copy.jpg', 1, 1, 1, NULL, NULL, 1, 350000, 150000, '<p><em><strong>Detoxic l&agrave; sản phẩm c&oacute; nguồn gốc từ c&aacute;c thảo dược tự nhi&ecirc;n gi&uacute;p thanh lọc cơ thể, ph&ograve;ng tr&aacute;nh c&aacute;c bệnh do k&yacute; sinh tr&ugrave;ng l&agrave;m ảnh hưởng tới sức khỏe thường ng&agrave;y của bạn.</strong></em></p>\r\n', 'Detoxic – Sản phẩm diệt ký sinh trùng và cải thiện tiêu hóa', NULL, 'Detoxic – Sản phẩm diệt ký sinh trùng và cải thiện tiêu hóa', 'Detoxic – Sản phẩm diệt ký sinh trùng và cải thiện tiêu hóa', NULL, NULL, 0, '0', 106, 'Nga', NULL, NULL, NULL, NULL, 29, 0, NULL, 'vi', NULL, 1542006162, '', '28102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><strong>Hiệu quả của Detoxic mang lại</strong></p>\r\n\r\n<p>&bull;&nbsp;Gi&uacute;p tẩy giun, s&aacute;n, k&yacute; sinh tr&ugrave;ng:&nbsp;Sau khi sử dụng Detoxic c&aacute;c hoạt chất trong Detoxic sẽ gi&uacute;p tẩy giun đũa, giun t&oacute;c, giun m&oacute;c, giun kim, giun đũa ch&oacute; m&egrave;o, giun lươn, s&aacute;n ch&oacute;, s&aacute;n l&aacute; gan v&agrave; c&aacute;c k&yacute; sinh tr&ugrave;ng kh&aacute;c, hỗ trợ loại v&agrave; đ&agrave;o thải c&aacute;c k&yacute; sinh tr&ugrave;ng, giun, s&aacute;n trong m&aacute;u,&hellip;</p>\r\n\r\n<p>Detoxic c&ograve;n gi&uacute;p loại bỏ trứng của k&yacute; sinh tr&ugrave;ng khỏi cơ thể người. M&agrave; vẫn an to&agrave;n với sức khỏe con người, kh&ocirc;ng g&acirc;y mệt mỏi, kh&ocirc;ng g&acirc;y hại như c&aacute;c loại vi&ecirc;n uống tẩy giun kh&aacute;c.</p>\r\n\r\n<p>&bull;&nbsp;Gi&uacute;p loại bỏ chứng h&ocirc;i miệng:&nbsp;Detoxic gi&uacute;p loại bỏ c&aacute;c vi khuẩn ở khoang miệng, hỗ trợ loại bỏ c&aacute;c k&yacute; sinh tr&ugrave;ng g&acirc;y h&ocirc;i miệng từ đ&oacute; mang lại hơi thở tự nhi&ecirc;n cho bạn.</p>\r\n\r\n<p>&bull;&nbsp;Cải thiện chức năng c&aacute;c cơ quan của cơ thể:&nbsp;Phục hồi hệ ti&ecirc;u h&oacute;a, t&aacute;i tạo vi khuẩn tốt, gi&uacute;p loại bỏ vi khuẩn xấu, ph&ograve;ng chống nhiễm tr&ugrave;ng, bảo vệ th&agrave;nh mạch m&aacute;u v&agrave; c&aacute;c m&ocirc;. Quan trọng hơn l&agrave; Detoxic sẽ gi&uacute;p bạn ăn ngon miệng hơn do hệ ti&ecirc;u h&oacute;a được phục hồi.</p>\r\n\r\n<p>&bull;&nbsp;Detoxic tăng cường sức khỏe:&nbsp;Bảo vệ tim, gan, dạ d&agrave;y, phổi v&agrave; l&agrave;n da khỏi vi khuẩn, k&yacute; sinh tr&ugrave;ng. Mang lại cơ thể khỏe mạnh, tươi tắn.</p>\r\n\r\n<p>&bull;&nbsp;Detoxic gi&uacute;p tăng cường hệ miễn dịch:&nbsp;Hệ ti&ecirc;u h&oacute;a hoạt động b&igrave;nh thường, hệ tim mạch, c&aacute;c khớp v&agrave; cơ. Đồng thời cải thiện giấc ngủ v&agrave; l&agrave;m việc hiệu quả hơn.</p>\r\n\r\n<p>&bull;&nbsp;Cơ thể khỏe mạnh, l&agrave;n da đẹp:&nbsp;Detoxic gi&uacute;p bạn thanh lọc cơ thể, l&agrave;m sạch đại tr&agrave;ng, hỗ trợ ti&ecirc;u diệt k&yacute; sinh tr&ugrave;ng&hellip; trong cơ thể. Dấu hiệu đầu ti&ecirc;n sẽ thấy l&agrave; ăn uống ngon miệng hơn, tiếp theo l&agrave; chất thải được đ&agrave;o thải qua đường mồ h&ocirc;i, đại tiện. Sau 1 liệu tr&igrave;nh, chứng h&ocirc;i miệng sẽ dần hết, cơ thể khỏe mạnh v&agrave; l&agrave;n da mịn đẹp.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/IMG_2003.PNG\" style=\"height:708px; width:1266px\" /></p>\r\n\r\n<p><strong>Th&agrave;nh phần ch&iacute;nh của Detoxic:</strong></p>\r\n\r\n<p>Th&agrave;nh phần ch&iacute;nh của Detoxic l&agrave; c&aacute;c loại thảo dược trong tự nhi&ecirc;n được biết đến với những t&ecirc;n gọi sau: Cỏ thi, cỏ centaury, đinh hương, gelatine (d&ugrave;ng l&agrave;m vi&ecirc;n nang).</p>\r\n\r\n<p>&bull;&nbsp;C&acirc;y cỏ thi:&nbsp;C&acirc;y cỏ thi sẽ gi&uacute;p loại bỏ k&yacute; sinh tr&ugrave;ng trong mọi giai đoạn ph&aacute;t triển, tẩy k&yacute; sinh tr&ugrave;ng v&agrave; trứng của ch&uacute;ng ra khỏi cơ thể thanh lọc cơ thể, tốt cho sức khỏe.</p>\r\n\r\n<p>&bull;&nbsp;Cỏ Centaury:&nbsp;C&acirc;y th&ugrave;a gi&uacute;p l&agrave;m l&agrave;nh vết thương v&agrave; tăng cường kh&aacute;ng vi&ecirc;m v&agrave; hoạt động m&aacute;u, kh&ocirc;i phục c&aacute;c m&ocirc; v&agrave; cơ quan bị tổn thương.</p>\r\n\r\n<p>&bull;&nbsp;C&acirc;y đinh hương:&nbsp;C&acirc;y đinh hương gi&uacute;p phục hồi c&aacute;c vi sinh c&oacute; lợi trong đường ruột, tạo n&ecirc;n m&ocirc;i trường trong cơ thể gi&uacute;p bảo vệ khỏi sự ph&aacute;t triển của k&yacute; sinh tr&ugrave;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/IMG_2006.PNG\" /></p>\r\n\r\n<p><em>C&oacute; nguồn gốc từ c&aacute;c loại thảo dược thi&ecirc;n nhi&ecirc;n n&ecirc;n Detoxic an to&agrave;n khi sử dụng.</em></p>\r\n\r\n<p><strong>Những người n&ecirc;n sử dụng Detoxic:</strong></p>\r\n\r\n<p>&bull; Những người bị nhiễm giun s&aacute;n, cơ thể gầy g&ograve;, ốm yếu.</p>\r\n\r\n<p>&bull; Thảo dược qu&yacute; sẽ gi&uacute;p m&ugrave;i h&ocirc;i miệng dần hết.</p>\r\n\r\n<p>&bull; Người bị mắc c&aacute;c bệnh li&ecirc;n quan đến dạ d&agrave;y, đường ruột.</p>\r\n\r\n<p>&bull; Người hay ăn gỏi, tiết canh,&hellip; cần Detoxic đề ph&ograve;ng k&yacute; sinh tr&ugrave;ng v&agrave; c&aacute;c bệnh ti&ecirc;u h&oacute;a.</p>\r\n\r\n<p>&bull; K&iacute;ch th&iacute;ch ti&ecirc;u h&oacute;a, tạo cảm gi&aacute;c ngon miệng cho người suy nhược cơ thể, thiếu sức sống.</p>\r\n\r\n<p>&bull; Người c&oacute; hệ ti&ecirc;u h&oacute;a yếu, kh&oacute; ti&ecirc;u, đầy hơi, cứng bụng, t&aacute;o b&oacute;n, nổi mụn ph&aacute;t ban,&hellip; Bạn sẽ cần Detoxic thanh lọc thải độc cơ thể.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/hieu-qua-khi-su-dung-detoxic.png\" style=\"height:416px; width:952px\" /></p>\r\n\r\n<p><strong>Hướng dẫn sử dụng Detoxic:</strong></p>\r\n\r\n<p>Để ph&ograve;ng ngừa v&agrave; gi&uacute;p loại bỏ k&yacute; sinh tr&ugrave;ng v&agrave; thanh lọc cơ thể: Mỗi ng&agrave;y 2 lần, mỗi lần uống 1 vi&ecirc;n sau bữa ăn s&aacute;ng v&agrave; tối.</p>\r\n\r\n<p>&bull; Người lớn: Uống một liệu tr&igrave;nh 3 hộp.</p>\r\n\r\n<p>&bull; Trẻ em (dưới 18 tuổi): Uống 1 &ndash; 2 hộp.</p>\r\n\r\n<p><strong>Quy c&aacute;ch:</strong>&nbsp;Hộp 20 vi&ecirc;n.</p>\r\n\r\n<p><strong>Xuất xứ:</strong>&nbsp;Nga (Russia).</p>\r\n\r\n<p><strong>Hạn sử dụng:</strong>&nbsp;In tr&ecirc;n bao b&igrave; sản phẩm.</p>\r\n\r\n<p><strong>Bảo quản:</strong>&nbsp;Nơi kh&ocirc; r&aacute;o, th&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp.</p>\r\n\r\n<p><em><strong>Lưu &yacute;:</strong></em>&nbsp;Sản phẩm n&agrave;y kh&ocirc;ng phải l&agrave; thuốc, kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh. Hiệu quả sử dụng sản phẩm t&ugrave;y thuộc cơ địa của mỗi người.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/IMG_2004.PNG\" style=\"height:300px; width:750px\" /><img alt=\"\" src=\"/upload/images/detoxic-chinh-hang-06%20copy.jpg\" style=\"height:419px; width:498px\" /></p>\r\n\r\n<h3><strong>C&aacute;ch ph&acirc;n biệt Detoxic thật v&agrave; giả</strong></h3>\r\n\r\n<p>Tr&ecirc;n thị trường hiện nay c&oacute; song song 2 loại Detoxic vỏ m&agrave;u trắng v&agrave; m&agrave;u đen. C&oacute; một số th&ocirc;ng tin cho rằng một trong 2 loại l&agrave; giả. Tuy nhi&ecirc;n theo th&ocirc;ng tin của h&atilde;ng đưa ra rằng cả 2 sản phẩm đều l&agrave; thật, chỉ kh&aacute;c nơi sản xuất:</p>\r\n\r\n<p>- Detoxic vỏ m&agrave;u trắng, vi&ecirc;n con nhộng: được h&atilde;ng sản xuất tại London, d&agrave;nh cho thị trường c&aacute;c nước Ch&acirc;u &Acirc;u</p>\r\n\r\n<p>- Detoxic vỏ m&agrave;u đen, vi&ecirc;n n&eacute;n m&agrave;u trắng: được h&atilde;ng sản xuất tại Nga, d&agrave;nh cho thị trường Nga</p>\r\n\r\n<p>- Detoxic vỏ m&agrave;u đen, vi&ecirc;n con nhộng: l&agrave; h&agrave;ng d&agrave;nh cho thị trường nội địa Nga</p>\r\n\r\n<p>Cả 3 sản phẩm đều đảm bảo ti&ecirc;u chuẩn chất lương, c&ocirc;ng dụng do h&atilde;ng đưa ra</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/Capture%20copy.jpg\" style=\"height:561px; width:1200px\" /></p>\r\n'),
(236, NULL, NULL, 0, 'Nano Curcumin - Tam Thất - Xạ Đen - Học Viện Quân Y - Hỗ trợ điều trị ung thư hiệu quả cao', 'Nano', 'nano-curcumin-tam-that-xa-den-hoc-vien-quan-y-ho-tro-dieu-tri-ung-thu-hieu-qua-cao', '3-18-copy.jpg', 1, 1, 1, NULL, 13, 1, 280000, 155000, '<p>Vi&ecirc;n nang mềm&nbsp;<strong>Nano Curcumin - Tam Thất Xạ Đen - Học Viện Qu&acirc;n Y</strong>, c&oacute; t&aacute;c dụng l&agrave;m&nbsp;<strong>giảm c&aacute;c triệu chứng vi&ecirc;m đau dạ d&agrave;y, t&aacute; tr&agrave;ng</strong>, gi&uacute;p c&aacute;c vết thương nhanh liền sẹo.&nbsp;</p>\r\n\r\n<p>- Tăng cường miễn dịch,&nbsp;<strong>giảm t&aacute;c dụng phụ của h&oacute;a trị, xạ trị, gi&uacute;p tăng sức đề kh&aacute;ng</strong>.&nbsp;<br />\r\n- Gi&uacute;p l&agrave;m đẹp da, l&agrave;m mờ v&agrave; giảm vết th&acirc;m n&aacute;m.&nbsp;<br />\r\n- Giảm thiểu nguy cơ mắc khối u do c&aacute;c gốc oxy h&oacute;a g&acirc;y ra.</p>\r\n', 'Nano Curcumin - Tam Thất - Xạ Đen', NULL, 'Nano Curcumin - Tam Thất - Xạ Đen', 'Nano Curcumin - Tam Thất - Xạ Đen', NULL, NULL, 0, '0', 103, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 30, 0, NULL, 'vi', NULL, 1541086855, '', '30102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Nano Curcumin l&agrave; Curcumin (tinh chất Nghệ) được b&agrave;o chế với k&iacute;ch thước Nano si&ecirc;u nhỏ (30nm &ndash; 100 nm, trong đ&oacute; 1nm = 10-9m) để tăng độ hấp thu l&ecirc;n tới 95% v&agrave; do đ&oacute; gi&uacute;p tăng hiệu quả t&aacute;c dụng l&ecirc;n 50-55 lần so với tinh chất Nghệ &ndash; Curcumin th&ocirc;ng thường.<br />\r\n<br />\r\n<strong>1. Th&agrave;nh phần của&nbsp;</strong><strong><a href=\"https://vienquany.com/211/nanocurcumin-tam-that-xa-den-hoc-vien-quan-y-dieu-tri-ung-thu-hieu-qua-cao.html\" target=\"_blank\">Nano Curcumin - Tam Thất Xạ Đen</a></strong><strong>&nbsp;của Học Viện Qu&acirc;n Y</strong><br />\r\nTrong mỗi vi&ecirc;n Nano Curcumin - Tam thất Xạ Đen c&oacute; chứa:</p>\r\n\r\n<ul>\r\n	<li>Nano Curcumin.............................. 200 mg</li>\r\n	<li>Vitamin E .........................................&nbsp;&nbsp;&nbsp;&nbsp; 6 IU</li>\r\n	<li>Cao Xạ Đen ....................................&nbsp;&nbsp; 50 mg</li>\r\n	<li>Cao tam thất ..................................&nbsp; &nbsp; 50 mg</li>\r\n	<li>Collagen Peptide .......................... &nbsp;&nbsp; 50 mg</li>\r\n	<li>Bioperine ........................................&nbsp;&nbsp; 0,5 mg</li>\r\n	<li>Một số th&agrave;nh phần kh&aacute;c như: (gelatin, magnesi stearate) vừa đủ 01 vi&ecirc;n.</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>2. T&aacute;c dụng của&nbsp;</strong><strong><a href=\"https://vienquany.com/211/nanocurcumin-tam-that-xa-den-hoc-vien-quan-y-dieu-tri-ung-thu-hieu-qua-cao.html\" target=\"_blank\">Nano Curcumin - Tam Thất Xạ Đen</a></strong><br />\r\n<br />\r\nVi&ecirc;n nang mềm&nbsp;<a href=\"https://vienquany.com/211/nanocurcumin-tam-that-xa-den-hoc-vien-quan-y-dieu-tri-ung-thu-hieu-qua-cao.html\" target=\"_blank\"><strong>Nano Curcumin &ndash; Tam Thất Xạ Đen &ndash; học Viện Qu&acirc;n Y</strong></a>&nbsp;Việt nam, c&oacute; t&aacute;c dụng dụng:&nbsp;</p>\r\n\r\n<ul>\r\n	<li>- Gi&uacute;p l&agrave;m giảm c&aacute;c triệu chứng vi&ecirc;m đau dạ d&agrave;y, t&aacute; tr&agrave;ng, gi&uacute;p c&aacute;c vết thương nhanh liền sẹo.</li>\r\n	<li>- Tăng cường miễn dịch, giảm t&aacute;c dụng phụ của h&oacute;a trị, xạ trị, gi&uacute;p tăng cường sức đề kh&aacute;ng cho người bị ung thư.</li>\r\n	<li>- Hỗ trợ điều trị chứng vi&ecirc;m đau dạ d&agrave;y, t&aacute; tr&agrave;ng, đại tr&agrave;ng gi&uacute;p c&aacute;c vết lo&eacute;t nhanh liền sẹo.</li>\r\n	<li>- Giảm thiểu nguy cơ mắc khối u do c&aacute;c gốc Oxy h&oacute;a g&acirc;y ra.</li>\r\n</ul>\r\n\r\n<p><br />\r\nĐ&acirc;y l&agrave; sản phẩm đ&aacute;nh dấu bước khởi đầu cho m&ocirc; h&igrave;nh hợp t&aacute;c chuyển giao đề t&agrave;i nghi&ecirc;n cứu giữa c&aacute;c nh&agrave; khoa học v&agrave; c&aacute;c c&ocirc;ng ty dược phẩm, tạo ra bước đột ph&aacute; trong việc n&acirc;ng tầm gi&aacute; trị c&aacute;c thảo dược truyền thống để ứng dụng trong ph&ograve;ng v&agrave; chữa bệnh.</p>\r\n\r\n<p>**Lưu ý:</p>\r\n\r\n<p>- Sản phẩm n&agrave;y kh&ocirc;ng phải l&agrave; thuốc, kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh.</p>\r\n\r\n<p>- H&atilde;y gọi số hotline: 0988771616 để được tư vấn th&ecirc;m.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/thanh-phan-nano-curcumin-tam-that-xa-den%20copy.jpg\" style=\"height:500px; width:662px\" /><strong>3. T&aacute;c dụng của Nano Curcumin - Tam Thất Xạ Đen - Học Viện Qu&acirc;n Y với bệnh ung thư:</strong><br />\r\nSau 06 th&aacute;ng ra thị trường, Nano Cucurmin &ndash; Tam Thất Xạ Đen &ndash; HVQY Việt Nam đ&atilde; được h&agrave;ng trăm ngh&igrave;n bệnh nh&acirc;n tin tưởng sử dụng v&agrave; vinh dự lọt v&agrave;o top &nbsp;&ldquo;Thương hiệu Việt Nam tin d&ugrave;ng&rdquo; do người ti&ecirc;u d&ugrave;ng b&igrave;nh chọn.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/nano-curcumin-voi-benh-ung-thu%20copy.jpg\" style=\"height:445px; width:875px\" /></p>\r\n\r\n<p><strong>4. Nano Curcumin - Cao Xạ Đen - HVQY hỗ trợ tốt cho c&aacute;c bệnh nh&acirc;n:&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>- Ung thư đường ti&ecirc;u ho&aacute; ( Dạ d&agrave;y, gan, ruột non, đại tr&agrave;ng, trực tr&agrave;ng).</li>\r\n	<li>- Ung thư sinh dục nam nữ ( Cổ tử cung, buồng chứng, phụ khoa, tiền liệt tuyến, thận, b&agrave;ng quang)</li>\r\n	<li>- Ung thư v&uacute;, ung thư phổi</li>\r\n	<li>- Ung thư m&aacute;u, ung thư xương.</li>\r\n	<li>- Khối u n&atilde;o</li>\r\n	<li><img alt=\"\" src=\"/upload/images/948f1385136d5b5046a2e91648ee43b5%20copy.jpg\" style=\"height:376px; width:600px\" /><img alt=\"\" src=\"/upload/images/nano-curcumin-tam-that-xa-den2%20copy.jpg\" style=\"height:797px; width:976px\" />\r\n	<p><strong>5. Hướng dẫn sử dụng v&agrave; liệu tr&igrave;nh sử dụng:</strong>&nbsp;</p>\r\n\r\n	<table align=\"center\" border=\"1px solid rgb(12, 12, 12);\" cellpadding=\"0\" cellspacing=\"0\">\r\n		<tbody>\r\n			<tr>\r\n				<td><strong>Hướng dẫn sử dụng sản phẩm</strong></td>\r\n				<td>.&nbsp;&nbsp;&nbsp;&nbsp; .</td>\r\n				<td><strong>Liệu tr&igrave;nh sử dụng khuy&ecirc;n d&ugrave;ng</strong></td>\r\n			</tr>\r\n			<tr>\r\n				<td>- Sử dụng Nano Curcumin trước khi ăn 30 ph&uacute;t hoặc sau khi ăn 1 giờ</td>\r\n				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n				<td><strong>1. Người bệnh dạ d&agrave;y, t&aacute; tr&agrave;ng, vi&ecirc;m đại tr&agrave;ng</strong>: Sử dụng từ 4 - 12 hộp.</td>\r\n			</tr>\r\n			<tr>\r\n				<td>- Mỗi lần sử dụng 2 vi&ecirc;n, ng&agrave;y uống 2 lần.</td>\r\n				<td>&nbsp;</td>\r\n				<td><strong>2. Phục hồi sức khỏe cho phụ nữ sau sinh, l&agrave;m đẹp da, l&agrave;m l&agrave;nh vết thương</strong>,...: Từ 4 - 12 hộp</td>\r\n			</tr>\r\n			<tr>\r\n				<td>- N&ecirc;n sử dụng li&ecirc;n tục từ 3 - 6 th&aacute;ng để c&oacute; kết quả tốt nhất.</td>\r\n				<td>&nbsp;</td>\r\n				<td><strong>3. Chống Oxy h&oacute;a gốc tự do:</strong>&nbsp;2 vi&ecirc;n/lần x 2 lần/ng&agrave;y x 3-6 th&aacute;ng. Rồi d&ugrave;ng liều duy tr&igrave; 2 vi&ecirc;n/ng&agrave;y</td>\r\n			</tr>\r\n			<tr>\r\n				<td>- Mỗi th&aacute;ng sử dụng 4 hộp.</td>\r\n				<td>&nbsp;</td>\r\n				<td><strong>4. Phục hồi chức năng gan</strong>: 2 vi&ecirc;n /lần x2 lần/ng&agrave;y, n&ecirc;n sử dụng tối thiểu 3 th&aacute;ng.</td>\r\n			</tr>\r\n			<tr>\r\n				<td><strong>Lưu &yacute; khi sử dụng Nano Curcumin - Tam Thất Xạ Đen</strong><br />\r\n				- N&ecirc;n sử dụng đ&uacute;ng theo liệu tr&igrave;nh để đạt hiệu quả cao nhất.<br />\r\n				- C&oacute; thể sử dụng để ph&ograve;ng ngừa bệnh v&igrave; l&agrave; thực phẩm chức năng kh&ocirc;ng c&oacute; t&aacute;c dụng phụ</td>\r\n				<td>&nbsp;</td>\r\n				<td><strong>Ch&uacute; &yacute;</strong>:&nbsp;&nbsp;C&ocirc;ng dụng của sản ph&acirc;̉m có th&ecirc;̉ phải d&ugrave;ng trong thời gian ngắn hoặc d&agrave;i tùy theo đi&ecirc;̀u ki&ecirc;̣n sức khỏe/th&ecirc;̉</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n	<li><strong>6. Quy c&aacute;ch đ&oacute;ng g&oacute;i v&agrave; xuất xứ:</strong><br />\r\n	-&nbsp;<strong>Quy c&aacute;ch</strong>: 1 hộp 30 vi&ecirc;n sử dụng trong 7,5 ng&agrave;y.<br />\r\n	-&nbsp;<strong>Bảo quản</strong>: bảo quản nơi kh&ocirc; m&aacute;t, tr&aacute;nh &aacute;nh s&aacute;ng.<br />\r\n	-&nbsp;<strong>Số NXCB</strong>: 2680/2015/ATTP-NXCB<br />\r\n	-&nbsp;<strong>Số XNQC</strong>: 1631/2015/NXQC-ATTP<br />\r\n	-&nbsp;<strong>Sản xuất v&agrave; chịu tr&aacute;ch nhiệm về chất lượng sản phẩm</strong>: Trung t&acirc;m nghi&ecirc;n cứu ứng dụng sản xuất TPCN Học Viện Qu&acirc;n Y</li>\r\n</ul>\r\n\r\n<p>LH mua h&agrave;ng: 0966.82.09.79</p>\r\n'),
(237, NULL, NULL, 0, 'Unti-K Sản Phẩm Tốt Cho BN K Vú, K Tử Cung, K Tuyến Giáp', 'Unti-K', 'unti-k-san-pham-tot-cho-bn-k-vu-k-tu-cung-k-tuyen-giap', 'img-1902.PNG', 1, 1, 1, NULL, 3, 1, 350000, 250000, '<p>Gi&uacute;p chống oxy h&oacute;a, hạn chế gốc tự do, hỗ trợ giảm nguy cơ mắc bệnh u bướu, giảm t&aacute;c dụng phụ của h&oacute;a trị, xạ trị.<br />\r\nĐối Tượng: Người muốn giảm nguy cơ u bướu, người đang hoặc sau qu&aacute; tr&igrave;nh h&oacute;a trị, xạ trị. Người l&agrave;m việc trong m&ocirc;i trường độc hại, sức đề kh&aacute;ng k&eacute;m.</p>\r\n', 'Unti-K', NULL, 'Unti-K', 'Unti-K', NULL, NULL, 0, '0', 103, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 31, 0, NULL, 'vi', NULL, 1541343221, '', '30102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Được nghi&ecirc;n cứu v&agrave; b&agrave;o chế từ c&aacute;c dược liệu qu&yacute; Unti-k l&agrave; sản phẩm hỗ trợ điều trị ung thư mới nhất của Học Viện Qu&acirc;n Y, Sản phẩm đặc biệt d&agrave;nh cho bệnh nh&acirc;n đang Xạ Trị, H&oacute;a Trị muốn tăng sức đề kh&aacute;ng, giảm t&aacute;c dụng phụ, ngăn khối u v&agrave; tế b&agrave;o Ung thư ph&aacute;t triển.</p>\r\n\r\n<p><strong>1. Th&agrave;nh phần của Vi&ecirc;n nang Unti-k Học Viện Qu&acirc;n Y.</strong></p>\r\n\r\n<p>th&agrave;nh phần ch&iacute;nh trong <strong>Unti-K&nbsp;</strong>&nbsp;Do c&aacute;c gi&aacute;o sư y b&aacute;c sĩ của trung t&acirc;m nghi&ecirc;n cứu v&agrave; tuyển chọn rất kỹ, những th&agrave;nh phần n&agrave;y được khoa học chứng minh c&oacute; t&aacute;c dụng mạnh v&agrave; tốt trong ph&ograve;ng ngừa v&agrave; hỗ trợ điều trị ung thư.</p>\r\n\r\n<p><strong>Trong 01 vi&ecirc;n nang mềm Unti-K gồm c&oacute; :</strong></p>\r\n\r\n<p>Bột tam thất &hellip;&hellip;&hellip;&hellip;..100mg&nbsp;</p>\r\n\r\n<p>Cao kh&ocirc; Xạ Đen &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;..80mg</p>\r\n\r\n<p>Cao kh&ocirc; phylamin &hellip;&hellip;60mg&nbsp;</p>\r\n\r\n<p>Nano curcumin&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;100mg</p>\r\n\r\n<p>Cao kh&ocirc; Tỏi Đen &hellip;&hellip;&hellip;60mg&nbsp;</p>\r\n\r\n<p>Cao kh&ocirc; trinh nữ ho&agrave;ng cung &hellip;&hellip;..40mg</p>\r\n\r\n<p>Phụ liệu: Genlatin,Tale,Magie,Stearat Vừa Đủ 01 vi&ecirc;n.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/utik.jpg\" style=\"height:315px; width:794px\" /></p>\r\n\r\n<p><strong>2. C&ocirc;ng Dụng Của Unti-K&nbsp;</strong></p>\r\n\r\n<p><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:23px; width:25px\" />&nbsp;Hỗ trợ điều trị cho bệnh nh&acirc;n ung thư, u bướu.</p>\r\n\r\n<p><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:23px; width:25px\" />&nbsp;&nbsp;Chống Oxi H&oacute;a , hạn chế tế b&agrave;o gốc tự do</p>\r\n\r\n<p><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:23px; width:25px\" />&nbsp;&nbsp;Giảm t&aacute;c dụng phụ của h&oacute;a trị v&agrave; xạ trị .</p>\r\n\r\n<p><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:23px; width:25px\" />&nbsp;Tăng cường sức đề kh&aacute;ng hệ miễn dịch, n&acirc;ng cao thể trạng cho người bệnh.<br />\r\n&nbsp;<br />\r\n**Lưu ý:</p>\r\n\r\n<p>- Sản phẩm n&agrave;y kh&ocirc;ng phải l&agrave; thuốc, kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh.</p>\r\n\r\n<p><strong>3. Đối Tượng Sử Dụng Unti-K Học Viện Qu&acirc;n Y.</strong></p>\r\n\r\n<p>&nbsp;Bệnh nh&acirc;n bị Ung Thư, U Bướu đang trong qu&aacute; tr&igrave;nh điều trị.</p>\r\n\r\n<p>B&ecirc;nh nh&acirc;n đang trong qu&aacute; tr&igrave;nh điều trị bằng xạ trị &ndash; h&oacute;a trị.</p>\r\n\r\n<p>Người muốn ph&ograve;ng tr&aacute;nh c&aacute;c bệnh li&ecirc;n quan tới ung thư v&agrave; u bướu.</p>\r\n\r\n<p>NgườI l&agrave;m việc nặng nhọc trong m&ocirc;i trường độc hại.</p>\r\n\r\n<p><strong>4. Hướng Dẫn Sử Dụng</strong></p>\r\n\r\n<p><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:23px; width:25px\" />&nbsp;Unti-k loại vỉ, 30v/ hộp sử dụng trong 7,5 ng&agrave;y</p>\r\n\r\n<p><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:23px; width:25px\" />&nbsp;Ng&agrave;y d&ugrave;ng 2 Lần, mỗi lần 2 Vi&ecirc;n trước ăn 30 ph&uacute;t hoặc sau ăn 1H.</p>\r\n\r\n<p><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:23px; width:25px\" />&nbsp;Bảo quản nơi kh&ocirc; tho&aacute;ng tr&aacute;nh &aacute;nh s&aacute;ng trực tiếp.</p>\r\n\r\n<p><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:23px; width:25px\" />&nbsp;Để xa tầm tay Trẻ Em.</p>\r\n\r\n<p><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:23px; width:25px\" />&nbsp;Đợt d&ugrave;ng tốt nhất từ 3-6 th&aacute;ng.</p>\r\n\r\n<p><strong>5. Tại sao Unti-k Học Viện Qu&acirc;n Y lại hiệu quả trong hỗ trợ điều trị Ung Thư.</strong></p>\r\n\r\n<p>&gt;&gt; sản phẩm được c&aacute;c gi&aacute;o sư đầu ngh&agrave;nh của Học viện qu&acirc;n y nghi&ecirc;n cứu v&agrave; sản xuất tr&ecirc;n trang thiết bị m&aacute;y m&oacute;c đồng bộ được đầu tư từ nguồn ng&acirc;n s&aacute;ch c&uacute;a nh&agrave; nước. Đ&acirc;y l&agrave; c&ocirc;ng tr&igrave;nh khoa học c&oacute; gi&aacute; trị thực tiễn cao l&agrave; c&ocirc;ng sức nghi&ecirc;n cứu trong nhiều năm của trung t&acirc;m.</p>\r\n\r\n<p>Unti-K được Học Viện Qu&acirc;n Y thử nghiệm nhiều lần tr&ecirc;n l&acirc;m s&agrave;ng v&agrave; theo d&otilde;i tr&ecirc;n bệnh nh&acirc;n sử dụng trong nhiều năm. Kết quả cho thấy sản phẩm rất hiệu quả trong hỗ trợ Điều trị, kh&ocirc;ng g&acirc;y t&aacute;c dụng phụ, Rất an to&agrave;n khi sử dụng.</p>\r\n'),
(238, NULL, NULL, 0, 'Unti K Học Viện Quân Y - hỗ trợ Điều Trị bệnh Ung Thư hiệu quả cao', 'Unti K', 'unti-k-hoc-vien-quan-y-ho-tro-dieu-tri-benh-ung-thu-hieu-qua-cao', 'unti-k-copy.jpg', 1, 1, 1, NULL, 3, 1, 550000, 315000, '<p>Gi&uacute;p chống oxy h&oacute;a, hạn chế gốc tự do, hỗ trợ giảm nguy cơ mắc bệnh u bướu, giảm t&aacute;c dụng phụ của h&oacute;a trị, xạ trị.<br />\r\nĐối Tượng: Người muốn giảm nguy cơ u bướu, người đang hoặc sau qu&aacute; tr&igrave;nh h&oacute;a trị, xạ trị. Người l&agrave;m việc trong m&ocirc;i trường độc hại, sức đề kh&aacute;ng k&eacute;m.</p>\r\n', 'Unti K', NULL, 'Unti K', 'Unti K', NULL, NULL, 0, '0', 103, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 32, 0, NULL, 'vi', NULL, 1541343194, '', '30102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Được nghi&ecirc;n cứu v&agrave; b&agrave;o chế từ c&aacute;c dược liệu qu&yacute; Unti-k l&agrave; sản phẩm hỗ trợ điều trị ung thư mới nhất của Học Viện Qu&acirc;n Y, Sản phẩm đặc biệt d&agrave;nh cho bệnh nh&acirc;n đang Xạ Trị, H&oacute;a Trị muốn tăng sức đề kh&aacute;ng, giảm t&aacute;c dụng phụ, ngăn khối u v&agrave; tế b&agrave;o Ung thư ph&aacute;t triển.</p>\r\n\r\n<p><strong>1. Th&agrave;nh phần của Vi&ecirc;n nang Unti-k Học Viện Qu&acirc;n Y.</strong></p>\r\n\r\n<p>th&agrave;nh phần ch&iacute;nh trong <strong>Unti K</strong>&nbsp;Do c&aacute;c gi&aacute;o sư y b&aacute;c sĩ của trung t&acirc;m nghi&ecirc;n cứu v&agrave; tuyển chọn rất kỹ, những th&agrave;nh phần n&agrave;y được khoa học chứng minh c&oacute; t&aacute;c dụng mạnh v&agrave; tốt trong ph&ograve;ng ngừa v&agrave; hỗ trợ điều trị ung thư.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/Unti-K-1%20copy.jpg\" style=\"height:369px; width:900px\" /></p>\r\n\r\n<p><strong>Trong 01 vi&ecirc;n nang mềm Unti-K gồm c&oacute; :</strong></p>\r\n\r\n<p>Bột tam thất &hellip;&hellip;&hellip;&hellip;..100mg&nbsp;</p>\r\n\r\n<p>Cao kh&ocirc; Xạ Đen &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;..80mg</p>\r\n\r\n<p>Cao kh&ocirc; phylamin &hellip;&hellip;60mg&nbsp;</p>\r\n\r\n<p>Nano curcumin&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;100mg</p>\r\n\r\n<p>Cao kh&ocirc; Tỏi Đen &hellip;&hellip;&hellip;60mg</p>\r\n\r\n<p>Cao kh&ocirc; trinh nữ ho&agrave;ng cung &hellip;&hellip;..40mg</p>\r\n\r\n<p>Phụ liệu: Genlatin,Tale,Magie,Stearat Vừa Đủ 01 vi&ecirc;n.</p>\r\n\r\n<p><strong>2. C&ocirc;ng Dụng Của Unti K</strong></p>\r\n\r\n<p><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:23px; width:25px\" />&nbsp;Hỗ trợ điều trị ung thư, ung bướu, L&agrave;m giảm k&iacute;ch thước khối U.</p>\r\n\r\n<p><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:23px; width:25px\" />&nbsp;&nbsp;Ngăn chặn mạch m&aacute;u đến nu&ocirc;i tế b&agrave;o ung thư, kiềm chế sự tăng sinh của tế b&agrave;o.</p>\r\n\r\n<p><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:23px; width:25px\" />&nbsp;&nbsp;Chống Oxi H&oacute;a , hạn chế tế b&agrave;o gốc tự do</p>\r\n\r\n<p><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:23px; width:25px\" />&nbsp;&nbsp;Giảm độc t&iacute;nh, t&aacute;c dụng phụ của Xạ Trị v&agrave; H&oacute;a Trị .</p>\r\n\r\n<p><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:23px; width:25px\" />&nbsp;Tăng cường sức đề kh&aacute;ng Hệ miễn dịch, n&acirc;ng cao thể trạng cho người bệnh.<br />\r\n**Lưu ý:</p>\r\n\r\n<p>- Sản phẩm n&agrave;y kh&ocirc;ng phải l&agrave; thuốc, kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh.</p>\r\n\r\n<p><strong>3. Đối Tượng Sử Dụng Unti-K Học Viện Qu&acirc;n Y.</strong></p>\r\n\r\n<p>&nbsp;Bệnh nh&acirc;n bị Ung Thư, U Bướu đang trong qu&aacute; tr&igrave;nh điều trị.</p>\r\n\r\n<p>&nbsp;B&ecirc;nh nh&acirc;n đang trong qu&aacute; tr&igrave;nh điều trị bằng xạ trị &ndash; h&oacute;a trị.</p>\r\n\r\n<p>&nbsp;Người muốn ph&ograve;ng tr&aacute;nh c&aacute;c bệnh li&ecirc;n quan tới ung thư v&agrave; u bướu.</p>\r\n\r\n<p>&nbsp;NgườI l&agrave;m việc nặng nhọc trong m&ocirc;i trường độc hại.</p>\r\n\r\n<p>&nbsp;Người gi&agrave; yếu, mới ốm dậy muốn tăng sức đề kh&aacute;ng.</p>\r\n\r\n<p><strong>4. Hướng Dẫn Sử Dụng</strong></p>\r\n\r\n<p><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:23px; width:25px\" />&nbsp;Unti-k .1 hộp 60 Vi&ecirc;n sử dụng trong 15 ng&agrave;y</p>\r\n\r\n<p><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:23px; width:25px\" />&nbsp;Ng&agrave;y d&ugrave;ng 2 Lần, mỗi lần 2 Vi&ecirc;n trước ăn 30 ph&uacute;t hoặc sau ăn 1H.</p>\r\n\r\n<p><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:23px; width:25px\" />&nbsp;Bảo quản nơi kh&ocirc; tho&aacute;ng tr&aacute;nh &aacute;nh s&aacute;ng trực tiếp.</p>\r\n\r\n<p><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:23px; width:25px\" />&nbsp;Để xa tầm tay Trẻ Em.</p>\r\n\r\n<p><img alt=\"Cream SMARTCOS® SK Ginseng - Phục hồi, tái tạo lại các tế bào da bị lão hóa\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:23px; width:25px\" />&nbsp;Đợt d&ugrave;ng tốt nhất từ 3-6 th&aacute;ng.</p>\r\n\r\n<p><strong>5. Tại sao Unti-k Học Viện Qu&acirc;n Y lại hiệu quả trong hỗ trợ điều trị Ung Thư.</strong></p>\r\n\r\n<p>&nbsp;sản phẩm được c&aacute;c gi&aacute;o sư đầu ngh&agrave;nh của Học viện qu&acirc;n y nghi&ecirc;n cứu v&agrave; sản xuất tr&ecirc;n trang thiết bị m&aacute;y m&oacute;c đồng bộ được đầu tư từ nguồn ng&acirc;n s&aacute;ch c&uacute;a nh&agrave; nước. Đ&acirc;y l&agrave; c&ocirc;ng tr&igrave;nh khoa học c&oacute; gi&aacute; trị thực tiễn cao l&agrave; c&ocirc;ng sức nghi&ecirc;n cứu trong nhiều năm của trung t&acirc;m.</p>\r\n\r\n<p>Unti-K được Học Viện Qu&acirc;n Y thử nghiệm nhiều lần tr&ecirc;n l&acirc;m s&agrave;ng v&agrave; theo d&otilde;i tr&ecirc;n bệnh nh&acirc;n sử dụng trong nhiều năm. Kết quả cho thấy sản phẩm rất hiệu quả trong hỗ trợ Điều trị, kh&ocirc;ng g&acirc;y t&aacute;c dụng phụ, Rất an to&agrave;n khi sử dụng.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/unti-k%20congbo.jpg\" style=\"height:606px; width:900px\" /></p>\r\n'),
(240, NULL, NULL, 0, 'Cốm vi sinh Safikid Bio HVQY - kích thích ăn ngon, tăng cường hấp thu cho trẻ', 'Cốm vi sinh Safikid Bio', 'com-vi-sinh-safikid-bio-hvqy-kich-thich-an-ngon-tang-cuong-hap-thu-cho-tre', 'com-vi-sinh-safikid-bio-hvqy-kich-thich-an-ngon-tang-cuong-hap-thu-cho-tre-50.jpg', 1, 1, 1, NULL, 2, 1, 85000, 55000, '<p>Cốm Bio c&acirc;n bằng hệ vi sinh đường ruột, gi&uacute;p k&iacute;ch th&iacute;ch v&agrave; n&acirc;ng cao khả năng miễn dịch của cơ thể Hỗ trợ điều trị rối loạn ti&ecirc;u ho&aacute; do loạn khuẩn đường ruột hoặc dung thuốc kh&aacute;ng sinh d&agrave;i ng&agrave;y Bổ sung c&aacute;c acid amin v&agrave; c&aacute;c vitamin cần thiết cho cơ thể , gi&uacute;p k&iacute;ch th&iacute;ch ăn ngon v&agrave; tăng cường hấp thu c&aacute;c dưỡng chất, gi&uacute;p bổ bổ v&agrave; n&acirc;ng cao sức khoẻ.</p>\r\n', 'Cốm vi sinh Safikid Bio', NULL, 'Cốm vi sinh Safikid Bio', 'Cốm vi sinh Safikid Bio', NULL, NULL, 0, '0', 110, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 34, 0, NULL, 'vi', NULL, 1541560538, '', '30102018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><strong>1. TH&Agrave;NH PHẦN :</strong></p>\r\n\r\n<ol>\r\n	<li>&nbsp;</li>\r\n</ol>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"height:159px; width:725px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Lactobacillus acidophilus................</td>\r\n			<td>&nbsp;&ge;10<sup>8&nbsp;&nbsp;</sup>CFU/g&nbsp;&nbsp;</td>\r\n			<td>Vitamin B5.......................</td>\r\n			<td>&nbsp;0,7 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bifidobacterium longum..................</td>\r\n			<td>&nbsp;&ge;10<sup>8&nbsp;&nbsp;</sup>CFU/g&nbsp;</td>\r\n			<td>Vitamin C........................</td>\r\n			<td>5,0&nbsp; mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Streptococcus thermophilus...........</td>\r\n			<td>&nbsp;&ge;10<sup>8&nbsp;&nbsp;</sup>CFU/g&nbsp;</td>\r\n			<td>Men bia..........................</td>\r\n			<td>300 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B1 .....................................</td>\r\n			<td>&nbsp;&nbsp;&nbsp; &nbsp; 0,5&nbsp;&nbsp; mg</td>\r\n			<td>Canxi..............................</td>\r\n			<td>24&nbsp; mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B2......................................</td>\r\n			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0,2&nbsp; mg&nbsp;</td>\r\n			<td>Acid folic.........................</td>\r\n			<td>50&nbsp; &mu;g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin PP......................................</td>\r\n			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0,1&nbsp; mg&nbsp;</td>\r\n			<td>Kẽm................................</td>\r\n			<td>0,5 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B6......................................</td>\r\n			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0,3&nbsp; mg&nbsp;</td>\r\n			<td>Phospho.........................</td>\r\n			<td>16,8 mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<p><strong>2. C&Ocirc;NG DỤNG :</strong><br />\r\n			<br />\r\n			<strong><strong><img alt=\"Cốm vi sinh Safikid Bio HVQY - kích thích ăn ngon, tăng cường hấp thu cho trẻ\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;</strong></strong>C&acirc;n bằng hệ vi sinh đường ruột, gi&uacute;p k&iacute;ch th&iacute;ch v&agrave; n&acirc;ng cao khả năng miễn dịch của cơ thể<br />\r\n			<strong><strong><strong><img alt=\"Cốm vi sinh Safikid Bio HVQY - kích thích ăn ngon, tăng cường hấp thu cho trẻ\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" /></strong></strong><strong>&nbsp;</strong></strong>Hỗ trợ điều trị rối loạn ti&ecirc;u ho&aacute; do loạn khuẩn đường ruột hoặc dung thuốc kh&aacute;ng sinh d&agrave;i ng&agrave;y<br />\r\n			<strong><strong><strong><img alt=\"Cốm vi sinh Safikid Bio HVQY - kích thích ăn ngon, tăng cường hấp thu cho trẻ\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" /></strong></strong><strong>&nbsp;</strong></strong>Bổ sung c&aacute;c acid amin v&agrave; c&aacute;c vitamin cần thiết cho cơ thể , gi&uacute;p k&iacute;ch th&iacute;ch ăn ngon v&agrave; tăng cường hấp thu c&aacute;c dưỡng chất, gi&uacute;p bổ bổ v&agrave; n&acirc;ng cao sức khoẻ.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>**Lưu ý:</p>\r\n\r\n<p>- Sản phẩm n&agrave;y kh&ocirc;ng phải l&agrave; thuốc, kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh.</p>\r\n\r\n<p><strong>3. ĐỐI TƯỢNG SỬ DỤNG :</strong><br />\r\n<strong><strong><img alt=\"Cốm vi sinh Safikid Bio HVQY - kích thích ăn ngon, tăng cường hấp thu cho trẻ\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" />&nbsp;</strong></strong>D&ugrave;ng cho trẻ em rối loạn ti&ecirc;u h&oacute;a suy dinh dưỡng, biếng ăn, chậm lớn, trẻ trong giai đoạn trưởng th&agrave;nh.<br />\r\n<strong><strong><strong><img alt=\"Cốm vi sinh Safikid Bio HVQY - kích thích ăn ngon, tăng cường hấp thu cho trẻ\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" /></strong></strong><strong>&nbsp;</strong></strong>D&ugrave;ng cho người ăn kh&oacute; ti&ecirc;u, đầy bụng, t&aacute;o b&oacute;n, ti&ecirc;u chảy, ph&acirc;n sống, loạn khuẩn đường ruột do d&ugrave;ng kh&aacute;ng sinh k&eacute;o d&agrave;i, người đang trong giai đoạn phục hồi bệnh.<br />\r\n<strong>4. LIỀU D&Ugrave;NG :</strong><br />\r\n<strong><strong><strong><img alt=\"Cốm vi sinh Safikid Bio HVQY - kích thích ăn ngon, tăng cường hấp thu cho trẻ\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" /></strong></strong><strong>&nbsp;</strong></strong>Trẻ em&nbsp; suy dinh dưỡng biếng ăn gầy yếu uống 1g&oacute;i/lần x 2-3 lần/ng&agrave;y trong v&ograve;ng 30 ph&uacute;t sau ăn<br />\r\n<strong><strong><strong><img alt=\"Cốm vi sinh Safikid Bio HVQY - kích thích ăn ngon, tăng cường hấp thu cho trẻ\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" /></strong></strong><strong>&nbsp;</strong></strong>Trẻ bị ti&ecirc;u chảy, ph&acirc;n sống, loạn khuẩn đường ti&ecirc;u ho&aacute; do d&ugrave;ng thuốc kh&aacute;ng sinh, trẻ bị t&aacute;o b&oacute;n uống 1g&oacute;i/lần x 4 lần/ng&agrave;y c&aacute;ch nhau từ4-6 giờ&nbsp; dung 1 g&oacute;i<br />\r\n<strong><strong><strong><img alt=\"Cốm vi sinh Safikid Bio HVQY - kích thích ăn ngon, tăng cường hấp thu cho trẻ\" src=\"https://vienquany.com/Images/image/tich-xanh.png\" style=\"height:19px; width:20px\" /></strong></strong><strong>&nbsp;</strong></strong>Người lớn: đầy bụng kh&oacute; ti&ecirc;u, ti&ecirc;u chảy t&aacute;o b&oacute;n, loạn khuẩn đường ti&ecirc;u ho&aacute; do&nbsp; d&ugrave;ng thuốc kh&aacute;ng sinh uống 1-2g&oacute;i/lần x 2-3 lần/ng&agrave;y<br />\r\n<strong>5. C&Aacute;CH D&Ugrave;NG :</strong><br />\r\nPha g&oacute;i cốm với 20-30 ml nước, sữa hoặc trộn với thức ăn của trẻ. Kh&ocirc;ng pha với nước s&ocirc;i.</p>\r\n\r\n<p><strong>Bảo quản</strong><br />\r\nĐể nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh s&aacute;ng mặt trời.<br />\r\n<strong>SĐK: 96/2013/ATTP-XNCB</strong></p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/IMG_1035.JPG\" style=\"height:750px; width:1000px\" /></p>\r\n'),
(241, NULL, NULL, 0, 'VASELIN Viện bỏng - Kem trị nẻ cực tốt của Viện bỏng quốc gia', 'VASELIN Viện bỏng', 'vaselin-vien-bong-kem-tri-ne-cuc-tot-cua-vien-bong-quoc-gia', 'img-2026.PNG', 1, 1, 1, NULL, 8, 1, 80000, 60000, '<p>C&ocirc;ng dụng:&nbsp;<br />\r\nNgo&agrave;i c&ocirc;ng dụng l&agrave;m mềm dịu ngay c&aacute;c v&ugrave;ng da kh&ocirc; r&aacute;p nứt nẻ, kem c&ograve;n l&agrave;m mềm v&ugrave;ng da tổn thương đang l&ecirc;n vẩy, trầy xước, c&aacute;c vết bỏng....</p>\r\n', 'VASELIN Viện bỏng', NULL, 'VASELIN Viện bỏng', 'VASELIN Viện bỏng', NULL, NULL, 0, '0', 110, 'Viện Bỏng Quốc Gia', NULL, NULL, NULL, NULL, 35, 0, NULL, 'vi', NULL, 1541560517, '', '03112018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>M&ugrave;a thu đến rồi đ&atilde; ai thấy m&ocirc;i m&igrave;nh tự dưng kh&ocirc; se se chưa, m&igrave;nh th&igrave; thấy rồi đ&oacute;, những l&uacute;c như n&agrave;y m&igrave;nh d&ugrave;ng lu&ocirc;n kem trị nẻ cực tốt - vaseline của Viện bỏng. C&ograve;n m&ugrave;a đ&ocirc;ng khi m&ocirc;i, da ch&acirc;n tay kh&ocirc; nứt nẻ th&igrave; lọ kem n&agrave;y lu&ocirc;n đồng h&agrave;nh c&ugrave;ng m&igrave;nh. Từ khi biết đến kem nẻ n&agrave;y m&igrave;nh đ&atilde; bỏ hết c&aacute;c loại kem nẻ mua từ nước ngo&agrave;i, những ai đ&atilde; d&ugrave;ng qua rồi đều phải khen nh&eacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/IMG_2025.PNG\" style=\"height:400px; width:400px\" /></p>\r\n\r\n<p>C&ocirc;ng dụng:&nbsp;<br />\r\nNgo&agrave;i c&ocirc;ng dụng l&agrave;m mềm dịu ngay c&aacute;c v&ugrave;ng da kh&ocirc; r&aacute;p nứt nẻ, kem c&ograve;n l&agrave;m mềm v&ugrave;ng da tổn thương đang l&ecirc;n vẩy, trầy xước, c&aacute;c vết bỏng....</p>\r\n\r\n<p>????&nbsp;M&ugrave;a đ&ocirc;ng rồi da c&aacute;c b&eacute; thường bị nẻ, bị ch&agrave;m (nhất l&agrave; v&ugrave;ng 2 m&aacute;) khiến c&aacute;c b&eacute; rất kh&oacute; chịu , c&aacute;c mẹ cũng vậy m&ocirc;i kh&ocirc;,ch&acirc;n tay nứt nẻ kh&ocirc; r&aacute;p. C&aacute;c loại nẻ tr&ecirc;n thị trường giờ pha tạp nhiều, tuy c&oacute; m&ugrave;i thơm thật đấy nhưng đều l&agrave; h&oacute;a chất b&ocirc;i vừa kh&ocirc;ng đảm bảo lại kh&ocirc;ng an to&agrave;n cho b&eacute;.</p>\r\n\r\n<p>????&nbsp;Kem Vaseline của Viện Bỏng nguy&ecirc;n chất kh&ocirc;ng m&ugrave;i kh&ocirc;ng pha tạp n&ecirc;n c&aacute;c mẹ c&oacute; thể y&ecirc;n t&acirc;m d&ugrave;ng cho cả c&aacute;c b&eacute;.<br />\r\nTh&agrave;nh phần: Vaseline tinh khiết</p>\r\n\r\n<p>????&nbsp;Ngo&agrave;i ra Kem c&ograve;n c&oacute; c&ocirc;ng dụng l&agrave;m mềm c&aacute;c vết thương đang l&ecirc;n vẩy ... C&aacute;c vết trầy xước do ng&atilde;,hay va đập,thậm ch&iacute; cả c&aacute;c c&aacute;c vết bỏng, bỏng b&ocirc;, bỏng nước s&ocirc;i ... Chỉ cần đắp 1 lớp kem l&ecirc;n phần da bị thương ( đang l&ecirc;n vẩy hoặc chuẩn bi tr&oacute;c vẩy) để từ 20-30&#39; lớp vẩy đ&oacute; sẽ mềm v&agrave; tự bong ra ..&nbsp;<br />\r\nĐối với c&aacute;c vết bỏng b&ocirc; xe th&igrave; khi vừa bị bỏng lập tức đắp 1 lớp kem l&ecirc;n phần bị thương,để 5-10&#39; ... Sẽ l&agrave;m giảm khả năng g&acirc;y sẹo hay phồng rộp ngay lập tức,sẽ l&agrave;m m&aacute;t v&agrave; dịu da rất nhanh,kh&ocirc;ng g&acirc;y bỏng r&aacute;t ...<br />\r\nĐảm bảo h&agrave;ng của viện Bỏng 100%.</p>\r\n\r\n<p>HẠN Sử dụng: 03 năm từ ng&agrave;y sản xuất, hạn rất d&agrave;i n&ecirc;n 1 lọ d&ugrave;ng được rất l&acirc;u.</p>\r\n\r\n<p>????&nbsp;Đối tượng sử dụng:&nbsp;<br />\r\nMọi đối tượng, đặc biệt c&oacute; thể sử dụng được cho trẻ nhỏ sơ sinh.</p>\r\n\r\n<p>H&atilde;y chat với nh&agrave; b&aacute;n h&agrave;ng hoặc li&ecirc;n hệ Hotline zalo/viber để được tư vấn r&otilde; hơn 0966.82.09.79</p>\r\n');
INSERT INTO `product` (`id`, `style`, `id_value`, `brand`, `name`, `code`, `alias`, `image`, `hot`, `home`, `focus`, `coupon`, `view`, `active`, `price`, `price_sale`, `description`, `description_seo`, `location`, `title_seo`, `keyword_seo`, `detail`, `note`, `like`, `order`, `category_id`, `caption_1`, `caption_2`, `locale`, `bought`, `dksudung`, `sort`, `quantity`, `counter`, `lang`, `destination`, `time`, `tags`, `pro_dir`, `multi_image`, `img_dir`, `status`, `quaranty`, `tinhtrang`, `group_attribute_id`, `color`, `size`, `user_id`, `option_id`, `button_color1`, `config_pro`, `config_pro_content`, `price_imp`, `writer`, `address`, `provinceid`, `order_qty`, `product_hangsx`, `hangsx_id`, `caption_3`, `downloaded`, `number`, `detric`, `coupun`, `content`) VALUES
(242, NULL, NULL, 0, '1 liệu trình 4h Strong Hair - Học Viện Quân Y', 'Strong Hair', '1-lieu-trinh-4h-strong-hair-hoc-vien-quan-y', 'img-1800.PNG', 1, 1, 1, NULL, 5, 1, 1200000, 880000, '<h2>Strong Hair - Học Viện Qu&acirc;n Y</h2>\r\n\r\n<h2><strong>Strong Hair HVQY&nbsp;</strong>nghi&ecirc;n cứ v&agrave; b&agrave;o chế từ c&aacute;c th&agrave;nh phần dược liệu tự nhi&ecirc;n c&oacute; t&aacute;c dụng tăng cường nu&ocirc;i dưỡng t&oacute;c ngăn hư tổn, đẩy nhanh mọc t&oacute;c, ngăn chặn v&agrave; phục hồi t&oacute;c bạc sớm gi&uacute;p m&aacute;i t&oacute;c của bạn trở n&ecirc;n khỏe mạnh&nbsp; hơn.</h2>\r\n', 'Strong Hair', NULL, 'Strong Hair ', 'Strong Hair', NULL, NULL, 0, '0', 83, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 36, 0, NULL, 'vi', NULL, 1541560499, '', '03112018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>RỤNG T&Oacute;C - Nỗi &aacute;m ảnh kinh ho&agrave;ng<br />\r\n&nbsp;&ldquo; C&aacute;i răng c&aacute;i t&oacute;c l&agrave; gốc con người &rdquo; l&agrave; c&acirc;u n&oacute;i nổi tiếng của &ocirc;ng b&agrave; ch&uacute;ng ta từ xa xưa v&agrave; đ&uacute;ng vậy, ai trong số ch&uacute;ng ta cũng muốn sở hữu cho m&igrave;nh một m&aacute;i t&oacute;c đẹp, khỏe mạnh bồng bềnh, đặc biệt với chị em phụ nữ. Tuy nhi&ecirc;n, kh&ocirc;ng phải bất k&igrave; ai cũng may mắn c&oacute; được một m&aacute;i t&oacute;c như &yacute; muốn, nhiều người thường gặp phải vấn đề về rụng t&oacute;c, t&oacute;c yếu, h&oacute;i đầu hay bạc sớm l&agrave;m họ trở n&ecirc;n tự ti hơn trong giao tiếp v&agrave; cảm gi&aacute;c &aacute;m ảnh đeo b&aacute;m mỗi khi ra ngo&agrave;i.<br />\r\n&nbsp;Khoa học đ&atilde; chứng minh c&oacute; rất nhiều nguy&ecirc;n nh&acirc;n dẫn tới t&igrave;nh trạng tr&ecirc;n như căng thẳng k&eacute;o d&agrave;i, chế độ dinh dưỡng kh&ocirc;ng c&acirc;n đối, vi&ecirc;m da đầu hoặc mắc một số bệnh l&yacute; kh&aacute;c như cường gi&aacute;p, suy gi&aacute;p hay ung bướu.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/OK3.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/OK1(2).jpg\" /></p>\r\n\r\n<h2>V&igrave; sao n&ecirc;n sử dụng Vi&ecirc;n uống Stronghair</h2>\r\n\r\n<p>Tr&ecirc;n thị trường c&oacute; đến h&agrave;ng trăm sản phẩm được g&aacute;n với m&aacute;c &ldquo;điều trị rụng t&oacute;c, k&iacute;ch th&iacute;ch mọc t&oacute;c&rdquo; nhưng v&igrave; sao ch&uacute;ng t&ocirc;i khuy&ecirc;n người bệnh n&ecirc;n sử dụng <strong>Vi&ecirc;n uống Strong Hair HVQY</strong></p>\r\n\r\n<p><strong>1.&nbsp;</strong>L&agrave; b&agrave;i thuốc Y Học Cổ Truyền độc đ&aacute;o từ c&aacute;c thảo dược qu&yacute; của Việt Nam. Thừa hưởng v&agrave; ph&aacute;t huy tinh t&uacute;y những c&ocirc;ng thức cổ truyền ưu việt.</p>\r\n\r\n<p>2. Sản phẩm hội tụ những th&agrave;nh phần nguy&ecirc;n liệu đặc biệt t&aacute;c dụng chuy&ecirc;n s&acirc;u c&ugrave;ng c&ocirc;ng nghệ sản xuất hiện đại nhất.</p>\r\n\r\n<p>3. Đ&atilde; được thử nghiệm l&acirc;m s&agrave;ng v&agrave; theo d&otilde;i tr&ecirc;n bệnh nh&acirc;n nhiều năm cho thấy kết quả rất hiệu quả tr&ecirc;n bệnh nh&acirc;n tiểu đường, an to&agrave;n kh&ocirc;ng t&aacute;c dụng phụ.</p>\r\n\r\n<p>4. C&aacute;c dược liệu được nu&ocirc;i trồng theo ti&ecirc;u chuẩn GAP v&agrave; được xử l&iacute; sạch trước khi sản xuất. Sản xuất theo c&ocirc;ng nghệ ti&ecirc;n tiến đạt ti&ecirc;u chuẩn GMP- WHO.</p>\r\n\r\n<p>5. Được cấp ph&eacute;p của Bộ Y tế Việt Nam, được c&aacute;c chuy&ecirc;n gia, c&aacute;c nh&agrave; khoa học h&agrave;ng đầu Việt Nam đ&aacute;nh gi&aacute; cao hiệu quả v&agrave; khuy&ecirc;n d&ugrave;ng</p>\r\n\r\n<p>6. Stronghair l&agrave; th&agrave;nh quả của c&ocirc;ng tr&igrave;nh nghi&ecirc;n cứu khoa học hết sức c&ocirc;ng phu bởi c&aacute;c Gi&aacute;o sư đầu ng&agrave;nh của Học viện Qu&acirc;n Y theo ng&acirc;n s&aacute;ch nh&agrave; nước. Đ&acirc;y l&agrave; c&ocirc;ng tr&igrave;nh nghi&ecirc;n cứu khoa học c&oacute; gi&aacute; trị thực tiễn cao, l&agrave; c&ocirc;ng sức nghi&ecirc;n cứu nhiều năm.</p>\r\n\r\n<h2>Th&agrave;nh phần c&oacute; trong vi&ecirc;n uống Stronghair</h2>\r\n\r\n<p>Trong mỗi <strong>vi&ecirc;n uống Strong Hair</strong>&nbsp;k&iacute;ch th&iacute;ch mọc t&oacute;c được b&agrave;o chế bởi Học viện Qu&acirc;n Y l&agrave; sự kết hợp giữa c&aacute;c dược liệu qu&yacute; gi&uacute;p t&oacute;c mọc nhanh, chắc khỏe v&agrave; an to&agrave;n cho người sử dụng.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/IMG_1803.PNG\" /></p>\r\n\r\n<p>1. Cao H&agrave; thủ &ocirc; đỏ</p>\r\n\r\n<p><strong>Th&agrave;nh phần:&nbsp;</strong>150mg</p>\r\n\r\n<p><strong>C&ocirc;ng dụng:&nbsp;</strong>Theo Đ&ocirc;ng Y nghi&ecirc;n cứu, H&agrave; thủ &ocirc; c&oacute; t&aacute;c dụng li&ecirc;n quan mật thiết tới qu&aacute; tr&igrave;nh sinh huyết, tạng thận; khi tạng thận sung m&atilde;n, tinh huyết đầy đủ th&igrave; t&oacute;c sẽ đen, b&oacute;ng, l&acirc;u bạc, da dẻ hồng h&agrave;o, b&oacute;ng mịn. H&agrave; thủ &ocirc; c&oacute; c&ocirc;ng dụng bồi bổ can thận, dưỡng huyết tư &acirc;m l&agrave;m tăng độ đen b&oacute;ng của r&acirc;u t&oacute;c, đặc biệt khi được d&ugrave;ng với c&aacute;c vị dược liệu kh&aacute;c như sinh địa, m&egrave; đen&hellip;</p>\r\n\r\n<p>2.&nbsp;Cao m&egrave; đen</p>\r\n\r\n<p><strong>Th&agrave;nh phần:&nbsp;</strong>80mg</p>\r\n\r\n<p><strong>C&ocirc;ng dụng:&nbsp;</strong>Theo Đ&ocirc;ng Y hiện đại th&igrave; m&egrave; đen c&oacute; vị ngọt t&iacute;nh b&igrave;nh, c&oacute; t&aacute;c dụng bổ &iacute;ch can thận, dưỡng huyết, tăng kh&iacute; lực gi&uacute;p k&iacute;ch th&iacute;ch ph&aacute;t triển t&oacute;c, r&acirc;u; l&agrave;m cho t&oacute;c r&acirc;u trở n&ecirc;n d&agrave;y, khỏe v&agrave; b&oacute;ng mượt.</p>\r\n\r\n<p>3. Cao sinh địa</p>\r\n\r\n<p><strong>Th&agrave;nh phần:&nbsp;</strong>70mg</p>\r\n\r\n<p><strong>C&ocirc;ng dụng:&nbsp;</strong>Sinh địa c&oacute; vị ngọt đắng, t&iacute;nh lạnh, t&aacute;c dụng sinh huyết, bổ &acirc;m, l&agrave;m m&aacute;t m&aacute;u l&agrave;m tăng sinh dịch. Nhờ đ&oacute; gi&uacute;p t&oacute;c ph&aacute;t triển mạnh hơn, d&agrave;y hơn v&agrave; mềm mượt hơn.</p>\r\n\r\n<p>4. DHEA (dehydrepiandosterone)</p>\r\n\r\n<p><strong>Th&agrave;nh phần:&nbsp;</strong>15mg</p>\r\n\r\n<p><strong>C&ocirc;ng dụng:&nbsp;</strong>L-Carnitine gi&uacute;p vận chuyển c&aacute;c acid b&eacute;o v&agrave;o trong &ldquo;nh&agrave; m&aacute;y năng lượng&rdquo; của tế b&agrave;o. Chỉ tại nơi đ&acirc;y, c&aacute;c acid b&eacute;o mới được chuyển h&oacute;a v&agrave; tạo ra năng lượng gi&uacute;p cho cơ thể hoạt động. Nhờ đ&oacute; l&agrave;m tăng tuần ho&agrave;n, kh&iacute; huyết gi&uacute;p ph&aacute;t triển hệ thống protein dạng sợi&nbsp;</p>\r\n\r\n<p>5.&nbsp;L-carnitine-L-tartrate</p>\r\n\r\n<p><strong>Th&agrave;nh phần:&nbsp;</strong>200mg</p>\r\n\r\n<p><strong>C&ocirc;ng dụng:&nbsp;</strong>L-Carnitine gi&uacute;p vận chuyển c&aacute;c acid b&eacute;o v&agrave;o trong &ldquo;nh&agrave; m&aacute;y năng lượng&rdquo; của tế b&agrave;o. Chỉ tại nơi đ&acirc;y, c&aacute;c acid b&eacute;o mới được chuyển h&oacute;a v&agrave; tạo ra năng lượng gi&uacute;p cho cơ thể hoạt động. Nhờ đ&oacute; l&agrave;m tăng tuần ho&agrave;n, kh&iacute; huyết gi&uacute;p ph&aacute;t triển hệ thống protein dạng sợi như t&oacute;c, r&acirc;u.</p>\r\n\r\n<p>6.&nbsp;L-cystine : Vitamin A : Vitamin B5</p>\r\n\r\n<p><strong>Th&agrave;nh phần:&nbsp;</strong>50mg : 15IU : 3mg</p>\r\n\r\n<p><strong>C&ocirc;ng dụng:&nbsp;</strong>Bổ sung vi lượng thiếu hụt trong cơ thể, gi&uacute;p cơ thể khỏe mạnh to&agrave;n diện.</p>\r\n\r\n<h3>Đối tượng sử dụng</h3>\r\n\r\n<p>Người rụng t&oacute;c, h&oacute;i đầu, t&oacute;c kh&ocirc;, xơ v&agrave; chẻ ngọn.</p>\r\n\r\n<p>&nbsp;Người t&oacute;c bạc sớm.</p>\r\n\r\n<p>&nbsp;Người muốn chăm s&oacute;c t&oacute;c th&ecirc;m b&oacute;ng đẹp.</p>\r\n\r\n<p>D&ugrave;ng được cho cả nam v&agrave; nữ.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Hướng dẫn sử dụng</li>\r\n	<li>&nbsp;Buổi s&aacute;ng: 2 vi&ecirc;n</li>\r\n	<li>&nbsp;Buổi tối: 2 vi&ecirc;n</li>\r\n	<li><em>Trước khi ăn 30 ph&uacute;t hoặc sau khi ăn 01 giờ.</em></li>\r\n	<li>\r\n	<p><strong>&nbsp;Liệu tr&igrave;nh điều trị hiệu quả từ 3-4 th&aacute;ng.</strong></p>\r\n\r\n	<p>Hiệu quả đ&aacute;p ứng c&ograve;n phụ thuộc từng cơ địa người d&ugrave;ng!</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Gi&aacute; 1 liệu tr&igrave;nh 4h: 880.000 đ</p>\r\n\r\n<p>Freeship tr&ecirc;n to&agrave;n quốc</p>\r\n\r\n<p>LH: 0966.82.09.79</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/ok2.jpg\" /></p>\r\n'),
(243, NULL, NULL, 0, 'Tỏi đen học viện quân y 1KG - Quà tặng ý nghĩa cho người thân', 'Tỏi đen', 'toi-den-hoc-vien-quan-y-1kg-qua-tang-y-nghia-cho-nguoi-than', '3-29-copy.jpg', 1, 1, 1, NULL, 8, 1, 1050000, 850000, '<p>Tỏi đen học viện qu&acirc;n y - chất lượng cao. C&oacute; t&aacute;c dụng ph&ograve;ng chống ung thư, ph&ograve;ng chống c&aacute;c bệnh về gan, bệnh đường huyết,...</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Tỏi đen', NULL, 'Tỏi đen', 'Tỏi đen', NULL, NULL, 0, '0', 103, 'Học Viện Quân Y', NULL, NULL, NULL, NULL, 37, 0, NULL, 'vi', NULL, 1541561323, '', '04112018', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 645, NULL, 0, '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Tại Việt Nam, Tỏi đen lần đầu ti&ecirc;n được Học Viện Qu&acirc;n Y nghi&ecirc;n cứu quy tr&igrave;nh l&ecirc;n men v&agrave; th&agrave;nh phần h&oacute;a học, t&aacute;c dụng sinh học của tỏi đen được tạo ra trong đề t&agrave;i cấp nh&agrave; nước số KC10.TN05/11-15. Theo kết quả nghi&ecirc;n cứu n&agrave;y cho thấy. Tỏi sau khi được l&ecirc;n men th&agrave;nh&nbsp;<a href=\"http://vienquany.com/shops/Ban-chay-nhat/Toi-den-hoc-vien-quan-y-goi-500g-Qua-tang-y-nghia-cho-nguoi-than-1295.html\"><strong>Tỏi đen</strong></a>, h&agrave;m lượng c&aacute;c nh&oacute;m hoạt chất tăng cao, đặc biệt l&agrave; h&agrave;m lượng hoạt chất S-allyl-L-Cystrin &ndash; đ&acirc;y l&agrave; hoạt chất được chứng minh l&agrave; c&oacute; t&aacute;c dụng gi&uacute;p ngăn ngừa sự ph&aacute;t triển của khối u gấp 5-6 lần so với tỏi th&ocirc;ng thường.<br />\r\n<br />\r\nỞ một số quốc gia như H&agrave;n Quốc v&agrave; Nhật Bản, tỏi đen được sử dụng kh&aacute; rộng r&atilde;i với vai tr&ograve; như một loại thực phẩm chức năng gi&uacute;p tăng cường sức khỏe v&agrave; bảo vệ cơ thể. Tỏi đen c&oacute; khả năng chống &ocirc; xy h&oacute;a rất cao v&agrave; n&oacute; thường được tin l&agrave; c&oacute; thể k&eacute;o d&agrave;i tuổi xu&acirc;n, hỗ trợ điều trị nhiều loại bệnh.</p>\r\n\r\n<p><strong>1. Th&agrave;nh phần của&nbsp;</strong><strong>tỏi đen học viện qu&acirc;n y</strong><br />\r\n<br />\r\n&nbsp;100% tỏi đen l&ecirc;n men tự nhi&ecirc;n.<br />\r\n&nbsp;Kh&ocirc;ng chất phụ gia, kh&ocirc;ng chất bảo quản, kh&ocirc;ng m&agrave;u thực phẩm.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/thoi-gian-len-men-toi-den%20copy.jpg\" /><strong>2. Đặc điểm nổi bật của&nbsp;</strong><strong>tỏi đen học viện qu&acirc;n y</strong><br />\r\n&nbsp;Sản phẩm tỏi đen c&oacute; m&agrave;u đen, vị ngọt, dễ ăn, vị như &ocirc; mai, kh&ocirc;ng c&ograve;n m&ugrave;i cay hăng của tỏi thường v&agrave; c&oacute; t&aacute;c dụng gấp h&agrave;ng chục lần tỏi thường.<br />\r\n-&nbsp; Ở Việt Nam, lần đầu ti&ecirc;n tỏi đen được HỌC VIỆN QU&Acirc;N Y nghi&ecirc;n cứu quy tr&igrave;nh l&ecirc;n men cũng như th&agrave;nh phần h&oacute;a học v&agrave; t&aacute;c dụng sinh học của tỏi đen được tạo ra trong đề t&agrave;i cấp Nh&agrave; nước m&atilde; số KC10.TN05/11-15 v&agrave; KC.10.37/11-15.<br />\r\n- Sản phẩm trải qua quy tr&igrave;nh chế biến với những quy định khắt khe từ việc kiểm so&aacute;t nhiệt độ, &aacute;p suất, độ ẩm, hơi nước thường xuy&ecirc;n được kiểm tra v&agrave; điều chỉnh đạt theo đ&uacute;ng chuẩn quy tr&igrave;nh đ&atilde; nghi&ecirc;n cứu của c&aacute;c chuy&ecirc;n gia, gi&aacute;o sư học viện qu&acirc;n y.<br />\r\n- Nguy&ecirc;n liệu tỏi tươi được quy hoạch trồng ở c&aacute;c qu&acirc;n khu ở Hải Dương v&agrave; Phan Rang, L&yacute; Sơn - Quảng Ng&atilde;i c&oacute; chất lượng tinh chất dinh dưỡng tốt nhất.<br />\r\n- Kết quả nghi&ecirc;n cứu cho thấy sau khi l&ecirc;n men h&agrave;m lượng c&aacute;c nh&oacute;m hoạt chất tăng rất cao, như hợp chất sufur hữu cơ, polyphenol, flavonoid, h&agrave;m lượng fructose tăng khoảng 50 lần, điều n&agrave;y giải th&iacute;ch v&igrave; sao tỏi đen c&oacute; vị ngột như tr&aacute;i c&acirc;y ch&iacute;n. Đặc biệt h&agrave;m lượng S-allyl-L-Cystein (l&agrave; hoạt chất đ&atilde; được chứng minh t&aacute;c dụng ngăn ngừa sự ph&aacute;t sinh khối u) tăng 5-6 lần so với tỏi thường.<br />\r\n<strong>3.&nbsp;</strong><strong><u>T&aacute;c dụng của sản phẩm tỏi đen Học Viện Qu&acirc;n Y</u></strong><br />\r\n&nbsp;- Hoạt t&iacute;nh qu&eacute;t gốc tự do rất tốt, đ&acirc;y l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y ra h&agrave;ng loạt c&aacute;c bệnh hiểm ngh&egrave;o như: ung thư, tim mạch, tiểu đường...<br />\r\n- Gi&uacute;p bảo vệ tế b&agrave;o gan, d&ugrave;ng trong c&aacute;c trường hợp vi&ecirc;m gan, xơ gan, gan nhiễm mỡ.<br />\r\n-&nbsp;Tăng cường khả năng miễn dịch g&oacute;p phần t&iacute;ch cực trong việc điều trị ung thư, hạn chế t&aacute;i ph&aacute;t v&agrave; di căn trong điều trị ung thư, hạn chế bệnh tật.<br />\r\n- T&aacute;c dụng bảo vệ c&aacute;c tế b&agrave;o, cơ quan tạo m&aacute;u, miễn dịch trước c&aacute;c tia xạ. G&oacute;p phần bảo vệ sức khỏe của người l&agrave;m việc trong m&ocirc;i trường độc hại c&oacute; nguy cơ mắc bệnh cao.<br />\r\n- Đ&aacute;nh gi&aacute; t&aacute;c dụng tr&ecirc;n một số d&ograve;ng tế b&agrave;o ung thư tr&ecirc;n m&ocirc; h&igrave;nh NudeMice cho thấy dịch chiết tỏi đen c&oacute; t&aacute;c dụng ức chế sự ph&aacute;t triền c&aacute;c d&ograve;ng tế b&agrave;o ung thư v&uacute;, ung thư phổi, ung thư dạ d&agrave;y , đặc biệt tốt với ung thư đại tr&agrave;ng.<br />\r\n- C&oacute; t&aacute;c dụng n&acirc;ng cao thể trạng, bồi bổ cơ thể, k&iacute;ch th&iacute;ch ti&ecirc;u h&oacute;a, gi&uacute;p ăn ngủ tốt đặc biệt ở người cao tuổi.<br />\r\n<span style=\"font-size:8px\">-&nbsp;&nbsp;</span>Ngo&agrave;i ra c&aacute;c nghi&ecirc;n cứu tr&ecirc;n thề giới c&ograve;n cho thấy tỏi đen c&oacute; t&aacute;c dụng hạ Cholesterol, giảm mỡ m&aacute;u, tăng HLD, l&agrave;m giảm đường huyết.</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng&nbsp;</strong><strong>tỏi đen của Học Viện Qu&acirc;n Y</strong><br />\r\n- Ăn trực tiếp hoặc c&oacute; thể d&ugrave;ng chế biến để ăn với c&aacute;c m&oacute;n ăn kh&aacute;c t&ugrave;y khẩu vị mỗi người.<br />\r\n- Mỗi ng&agrave;y n&ecirc;n sử dụng 1 đến 2 củ tỏi/ng&agrave;y</p>\r\n\r\n<p><strong>Lưu &yacute;</strong>&nbsp;: Người cao tuổi chỉ n&ecirc;n d&ugrave;ng 3-5 t&eacute;p/ng&agrave;y&nbsp;&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/images/IMG_1232%20copy.jpg\" style=\"height:735px; width:1024px\" /></p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_brand`
--

CREATE TABLE `product_brand` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8,
  `women` tinyint(1) DEFAULT NULL,
  `men` tinyint(1) DEFAULT NULL,
  `focus` tinyint(1) DEFAULT NULL,
  `title_seo` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `description_seo` text CHARACTER SET utf8,
  `keyword` text CHARACTER SET utf8,
  `sort` int(11) DEFAULT NULL,
  `lang` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `gender` tinyint(1) DEFAULT '1',
  `view` tinyint(1) DEFAULT NULL,
  `home` tinyint(1) DEFAULT NULL,
  `hot` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `product_brand`
--

INSERT INTO `product_brand` (`id`, `parent_id`, `name`, `image`, `alias`, `description`, `women`, `men`, `focus`, `title_seo`, `description_seo`, `keyword`, `sort`, `lang`, `gender`, `view`, `home`, `hot`) VALUES
(39, NULL, 'Học Viện Quân Y', NULL, 'hoc-vien-quan-y', '', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'vi', 1, NULL, NULL, NULL),
(40, NULL, 'Xách tay Nga', NULL, 'xach-tay-nga', '', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'vi', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `title_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `keyword_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description_seo` text CHARACTER SET utf8,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `description` text CHARACTER SET utf8,
  `home` tinyint(1) DEFAULT NULL,
  `sort` int(3) DEFAULT NULL,
  `hot` tinyint(1) DEFAULT NULL,
  `coupon` tinyint(1) DEFAULT NULL,
  `focus` tinyint(1) DEFAULT NULL,
  `lang` char(10) CHARACTER SET utf8 DEFAULT '1',
  `gender` tinyint(1) DEFAULT NULL,
  `banner` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `product_category`
--

INSERT INTO `product_category` (`id`, `user`, `name`, `title_seo`, `keyword_seo`, `description_seo`, `image`, `alias`, `parent_id`, `description`, `home`, `sort`, `hot`, `coupon`, `focus`, `lang`, `gender`, `banner`) VALUES
(103, NULL, 'Chương trình đạo tạo', '', '', '', 'upload/img/category/img-intro3.png', 'chuong-trinh-dao-tao', 0, '<p>Với ch&uacute;ng t&ocirc;i, việc học Tiếng Anh kh&ocirc;ng chỉ dừng lại ở việc kh&aacute;m ph&aacute; một ng&ocirc;n ngữ m&agrave; c&ograve;n l&agrave; m&ocirc;i trường trau dồi kỹ năng sống v&agrave; gi&uacute;p bạn kết nối thế giới bằng phương ph&aacute;p học ngoại ngữ ho&agrave;n to&agrave;n mới chỉ c&oacute; tại EFA. đầu tốt đẹp cho tương lai</p>\r\n', 1, 10, NULL, NULL, NULL, 'vi', NULL, NULL),
(111, NULL, 'Tiếng anh mẫu giáo', '', '', '', 'upload/img/category/dv1.png', 'tieng-anh-mau-giao', 103, '<p>M&ocirc;i trường học tiếng Anh ho&agrave;n hảo theo nhu cầu v&agrave; khả năng tiếp thu của b&eacute; một c&aacute;ch tự nhi&ecirc;n: Học m&agrave; chơi, chơi m&agrave; học th&ocirc;ng qua c&acirc;u chuyện, tranh ảnh, b&agrave;i h&aacute;t v&agrave; những nh&acirc;n vật hoạt h&igrave;nh.</p>\r\n', 1, 11, NULL, NULL, NULL, 'vi', NULL, NULL),
(112, NULL, 'Tiếng anh thiếu nhi', '', '', '', 'upload/img/category/dv11.png', 'tieng-anh-thieu-nhi', 103, '<p>M&ocirc;i trường học tiếng Anh ho&agrave;n hảo theo nhu cầu v&agrave; khả năng tiếp thu của b&eacute; một c&aacute;ch tự nhi&ecirc;n: Học m&agrave; chơi, chơi m&agrave; học th&ocirc;ng qua c&acirc;u chuyện, tranh ảnh, b&agrave;i h&aacute;t v&agrave; những nh&acirc;n vật hoạt h&igrave;nh.</p>\r\n', 1, 12, NULL, NULL, NULL, 'vi', NULL, NULL),
(113, NULL, 'Tiếng anh thiếu niên', '', '', '', 'upload/img/category/dv12.png', 'tieng-anh-thieu-nien', 103, '<p>M&ocirc;i trường học tiếng Anh ho&agrave;n hảo theo nhu cầu v&agrave; khả năng tiếp thu của b&eacute; một c&aacute;ch tự nhi&ecirc;n: Học m&agrave; chơi, chơi m&agrave; học th&ocirc;ng qua c&acirc;u chuyện, tranh ảnh, b&agrave;i h&aacute;t v&agrave; những nh&acirc;n vật hoạt h&igrave;nh.</p>\r\n', 1, 13, NULL, NULL, NULL, 'vi', NULL, NULL),
(114, NULL, 'Tiếng anh giao tiếp', '', '', '', 'upload/img/category/dv13.png', 'tieng-anh-giao-tiep', 103, '<p>M&ocirc;i trường học tiếng Anh ho&agrave;n hảo theo nhu cầu v&agrave; khả năng tiếp thu của b&eacute; một c&aacute;ch tự nhi&ecirc;n: Học m&agrave; chơi, chơi m&agrave; học th&ocirc;ng qua c&acirc;u chuyện, tranh ảnh, b&agrave;i h&aacute;t v&agrave; những nh&acirc;n vật hoạt h&igrave;nh.</p>\r\n', 1, 14, NULL, NULL, NULL, 'vi', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

CREATE TABLE `product_color` (
  `id` int(11) NOT NULL,
  `color` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `lang` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_hangsx`
--

CREATE TABLE `product_hangsx` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `home` tinyint(1) DEFAULT NULL,
  `sort` int(3) DEFAULT NULL,
  `hot` tinyint(1) DEFAULT NULL,
  `focus` tinyint(1) DEFAULT NULL,
  `lang` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_hangsx`
--

INSERT INTO `product_hangsx` (`id`, `name`, `image`, `alias`, `parent_id`, `description`, `home`, `sort`, `hot`, `focus`, `lang`, `title_seo`, `description_seo`, `keyword`) VALUES
(170, 'Hàng tiêu dùng', 'upload/img/pn2.png', 'hang-tieu-dung', 0, '', NULL, 9, NULL, 0, 'vi', NULL, NULL, NULL),
(171, 'Tài chính', 'upload/img/pn_left1.png', 'tai-chinh', 0, '', NULL, 10, NULL, 0, 'vi', NULL, NULL, NULL),
(172, 'Sonny', 'upload/img/pn_left3.png', 'sonny', 0, '', NULL, 11, NULL, 0, 'vi', NULL, NULL, NULL),
(173, 'Hãng 3', 'upload/img/pn8.png', 'hang-3', 0, '', NULL, 12, NULL, 0, 'vi', NULL, NULL, NULL),
(174, 'Hãng 5', 'upload/img/pn_left7.png', 'hang-5', 0, '', NULL, 13, NULL, 0, 'vi', NULL, NULL, NULL),
(175, 'Hãng 6', 'upload/img/pn_left5.png', 'hang-6', 0, '', NULL, 14, NULL, 0, 'vi', NULL, NULL, NULL),
(176, 'Hãng 7', 'upload/img/pn_left6.png', 'hang-7', 0, '', NULL, 15, NULL, 0, 'vi', NULL, NULL, NULL),
(177, 'Hãng 8', 'upload/img/pn10.png', 'hang-8', 0, '', NULL, 16, NULL, 0, 'vi', NULL, NULL, NULL),
(178, 'Hãng 9', 'upload/img/pn9.png', 'hang-9', 0, '', NULL, 17, NULL, 0, 'vi', NULL, NULL, NULL),
(179, 'Hãng 10', 'upload/img/pn91.png', 'hang-10', 0, '', NULL, 18, NULL, 0, 'vi', NULL, NULL, NULL),
(180, 'Hãng 11', 'upload/img/pn4.png', 'hang-11', 0, '', NULL, 19, NULL, 0, 'vi', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_img`
--

CREATE TABLE `product_img` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `multi_image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img_dir` varchar(255) CHARACTER SET utf8 NOT NULL,
  `id_color` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_locale`
--

CREATE TABLE `product_locale` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(70) CHARACTER SET utf8 DEFAULT NULL,
  `sort` tinyint(1) DEFAULT NULL,
  `description` text CHARACTER SET utf8,
  `lang` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_old`
--

CREATE TABLE `product_old` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hot` tinyint(1) NOT NULL,
  `home` tinyint(1) NOT NULL,
  `focus` tinyint(1) NOT NULL,
  `coupon` tinyint(1) NOT NULL,
  `mostview` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `desc` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `description_seo` text COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `like` int(11) NOT NULL DEFAULT '0',
  `origin` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `color` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `size` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  `caption_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `caption_2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `caption_3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `caption_4` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_price`
--

CREATE TABLE `product_price` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `from_price` int(11) DEFAULT NULL,
  `to_price` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `lang` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `product_price`
--

INSERT INTO `product_price` (`id`, `name`, `from_price`, `to_price`, `sort`, `lang`) VALUES
(10, 'giá trung bình', 400000, 800000, 1, 'vi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_size`
--

CREATE TABLE `product_size` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `size` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sort` int(11) NOT NULL,
  `lang` varchar(100) CHARACTER SET utf8 NOT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_tag`
--

CREATE TABLE `product_tag` (
  `product_tag_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `lang` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tag` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `alias` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_to_brand`
--

CREATE TABLE `product_to_brand` (
  `brand_id` int(11) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=FIXED;

--
-- Đang đổ dữ liệu cho bảng `product_to_brand`
--

INSERT INTO `product_to_brand` (`brand_id`, `id_category`) VALUES
(39, 103);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_to_category`
--

CREATE TABLE `product_to_category` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=FIXED;

--
-- Đang đổ dữ liệu cho bảng `product_to_category`
--

INSERT INTO `product_to_category` (`id`, `id_product`, `id_category`) VALUES
(590, 188, 58),
(591, 189, 59),
(592, 190, 60),
(593, 191, 73),
(601, 192, 73),
(600, 193, 73),
(596, 194, 76),
(597, 195, 73),
(598, 196, 73),
(602, 197, 73),
(603, 197, 74),
(604, 197, 75),
(605, 197, 76),
(606, 197, 77),
(607, 197, 78),
(608, 197, 79),
(609, 197, 80),
(610, 197, 81),
(850, 210, 106),
(961, 214, 106),
(905, 218, 103),
(965, 222, 103),
(928, 225, 83),
(829, 229, 103),
(941, 228, 103),
(944, 227, 83),
(948, 226, 83),
(956, 224, 83),
(955, 224, 109),
(967, 223, 83),
(843, 221, 110),
(845, 220, 110),
(898, 219, 105),
(963, 217, 103),
(769, 216, 106),
(846, 215, 103),
(848, 213, 109),
(770, 212, 109),
(960, 211, 106),
(959, 206, 83),
(852, 208, 110),
(913, 209, 106),
(851, 208, 107),
(741, 231, 110),
(940, 230, 110),
(828, 229, 106),
(771, 212, 103),
(844, 220, 107),
(842, 221, 107),
(947, 226, 110),
(966, 223, 109),
(874, 232, 110),
(939, 233, 106),
(938, 233, 109),
(786, 234, 110),
(787, 234, 83),
(971, 235, 106),
(808, 236, 103),
(807, 236, 106),
(964, 222, 106),
(823, 237, 103),
(822, 238, 103),
(821, 239, 110),
(893, 240, 110),
(889, 241, 110),
(888, 241, 107),
(884, 242, 110),
(883, 242, 108),
(912, 209, 109),
(923, 243, 103),
(922, 243, 106),
(885, 242, 83),
(892, 240, 107),
(899, 219, 103),
(904, 218, 105),
(962, 217, 105),
(958, 206, 110),
(957, 206, 108);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_to_color`
--

CREATE TABLE `product_to_color` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_color` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_to_option`
--

CREATE TABLE `product_to_option` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_to_season`
--

CREATE TABLE `product_to_season` (
  `id` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `id_season` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_to_size`
--

CREATE TABLE `product_to_size` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_size` int(11) NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `lat` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `lng` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `districtid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `project`
--

INSERT INTO `project` (`id`, `name`, `lat`, `lng`, `districtid`) VALUES
(1, '13B Conic Phong Phú', '10.71240234375', '106.64177703857', 1),
(2, '13D Asia Phú Mỹ', '10.705533027649', '106.64806365967', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `sort` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `province`
--

INSERT INTO `province` (`id`, `name`, `code`, `price`, `sort`) VALUES
(1, 'Hồ Chí Minh', 'SG', 20000, NULL),
(2, 'Hà Nội', 'HN', 30000, NULL),
(3, 'Đà Nẵng', 'DDN', 0, NULL),
(4, 'Bình Dương', 'BD', 0, NULL),
(5, 'Đồng Nai', 'DNA', 0, NULL),
(6, 'Khánh Hòa', 'KH', 0, NULL),
(7, 'Hải Phòng', 'HP', 0, NULL),
(8, 'Long An', 'LA', 0, NULL),
(9, 'Quảng Nam', 'QNA', 0, NULL),
(10, 'Bà Rịa Vũng Tàu', 'VT', 0, NULL),
(11, 'Đắk Lắk', 'DDL', 0, NULL),
(12, 'Cần Thơ', 'CT', 0, NULL),
(13, 'Bình Thuận  ', 'BTH', 0, NULL),
(14, 'Lâm Đồng', 'LDD', 0, NULL),
(15, 'Thừa Thiên Huế', 'TTH', 0, NULL),
(16, 'Kiên Giang', 'KG', 0, NULL),
(17, 'Bắc Ninh', 'BN', 0, NULL),
(18, 'Quảng Ninh', 'QNI', 0, NULL),
(19, 'Thanh Hóa', 'TH', 0, NULL),
(20, 'Nghệ An', 'NA', 0, NULL),
(21, 'Hải Dương', 'HD', 0, NULL),
(22, 'Gia Lai', 'GL', 0, NULL),
(23, 'Bình Phước', 'BP', 0, NULL),
(24, 'Hưng Yên', 'HY', 0, NULL),
(25, 'Bình Định', 'BDD', 0, NULL),
(26, 'Tiền Giang', 'TG', 0, NULL),
(27, 'Thái Bình', 'TB', 0, NULL),
(28, 'Bắc Giang', 'BG', 0, NULL),
(29, 'Hòa Bình', 'HB', 0, NULL),
(30, 'An Giang', 'AG', 0, NULL),
(31, 'Vĩnh Phúc', 'VP', 0, NULL),
(32, 'Tây Ninh', 'TNI', 0, NULL),
(33, 'Thái Nguyên', 'TN', 0, NULL),
(34, 'Lào Cai', 'LCA', 0, NULL),
(35, 'Nam Định', 'NDD', 0, NULL),
(36, 'Quảng Ngãi', 'QNG', 0, NULL),
(37, 'Bến Tre', 'BTR', 0, NULL),
(38, 'Đắk Nông', 'DNO', 0, NULL),
(39, 'Cà Mau', 'CM', 120000, NULL),
(40, 'Vĩnh Long', 'VL', 3, NULL),
(41, 'Ninh Bình', 'NB', 320, NULL),
(42, 'Phú Thọ', 'PT', 25, NULL),
(43, 'Ninh Thuận', 'NT', 120000, NULL),
(44, 'Phú Yên', 'PY', 123456, NULL),
(45, 'Hà Nam', 'HNA', 40000, NULL),
(46, 'Hà Tĩnh', 'HT', 12000, NULL),
(47, 'Đồng Tháp', 'DDT', 0, NULL),
(48, 'Sóc Trăng', 'ST', 0, NULL),
(49, 'Kon Tum', 'KT', 0, NULL),
(50, 'Quảng Bình', 'QB', 0, NULL),
(51, 'Quảng Trị', 'QT', 0, NULL),
(52, 'Trà Vinh', 'TV', 0, NULL),
(53, 'Hậu Giang', 'HGI', 0, NULL),
(54, 'Sơn La', 'SL', 0, NULL),
(55, 'Bạc Liêu', 'BL', 0, NULL),
(56, 'Yên Bái', 'YB', 0, NULL),
(57, 'Tuyên Quang', 'TQ', 0, NULL),
(58, 'Điện Biên', 'DDB', 0, NULL),
(59, 'Lai Châu', 'LCH', 0, NULL),
(60, 'Lạng Sơn', 'LS', 0, NULL),
(61, 'Hà Giang', 'HG', 0, NULL),
(62, 'Bắc Kạn', 'BK', 0, NULL),
(63, 'Cao Bằng', 'CB', 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `province_copy`
--

CREATE TABLE `province_copy` (
  `provinceid` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `view` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `province_copy`
--

INSERT INTO `province_copy` (`provinceid`, `name`, `type`, `alias`, `view`) VALUES
('00', 'Toàn quốc', 'Tỉnh', 'toan-quoc', 1),
('01', 'Hà Nội', 'Thành Phố', 'ha-noi', 1),
('02', 'Hà Giang', 'Tỉnh', 'ha-giang', 0),
('04', 'Cao Bằng', 'Tỉnh', 'cao-bang', 0),
('06', 'Bắc Kạn', 'Tỉnh', 'bac-kan', 0),
('08', 'Tuyên Quang', 'Tỉnh', 'tuyen-quang', 0),
('10', 'Lào Cai', 'Tỉnh', 'lao-cai', 0),
('11', 'Điện Biên', 'Tỉnh', 'dien-bien', 0),
('12', 'Lai Châu', 'Tỉnh', 'lai-chau', 0),
('14', 'Sơn La', 'Tỉnh', 'son-la', 0),
('15', 'Yên Bái', 'Tỉnh', 'yen-bai', 0),
('17', 'Hòa Bình', 'Tỉnh', 'hoa-binh', 0),
('19', 'Thái Nguyên', 'Tỉnh', 'thai-nguyen', 0),
('20', 'Lạng Sơn', 'Tỉnh', 'lang-son', 0),
('22', 'Quảng Ninh', 'Tỉnh', 'quang-ninh', 0),
('24', 'Bắc Giang', 'Tỉnh', 'bac-giang', 0),
('25', 'Phú Thọ', 'Tỉnh', 'phu-tho', 0),
('26', 'Vĩnh Phúc', 'Tỉnh', 'vinh-phuc', 0),
('27', 'Bắc Ninh', 'Tỉnh', 'bac-ninh', 0),
('30', 'Hải Dương', 'Tỉnh', 'hai-duong', 0),
('31', 'Hải Phòng', 'Thành Phố', 'hai-phong', 0),
('33', 'Hưng Yên', 'Tỉnh', 'hung-yen', 0),
('34', 'Thái Bình', 'Tỉnh', 'thai-binh', 0),
('35', 'Hà Nam', 'Tỉnh', 'ha-nam', 0),
('36', 'Nam Định', 'Tỉnh', 'nam-dinh', 0),
('37', 'Ninh Bình', 'Tỉnh', 'ninh-binh', 0),
('38', 'Thanh Hóa', 'Tỉnh', 'thanh-hoa', 0),
('40', 'Nghệ An', 'Tỉnh', 'nghe-an', 0),
('42', 'Hà Tĩnh', 'Tỉnh', 'ha-tinh', 0),
('44', 'Quảng Bình', 'Tỉnh', 'quang-binh', 0),
('45', 'Quảng Trị', 'Tỉnh', 'quang-tri', 0),
('46', 'Thừa Thiên Huế', 'Tỉnh', 'thua-thien-hue', 0),
('48', 'Đà Nẵng', 'Thành Phố', 'da-nang', 0),
('49', 'Quảng Nam', 'Tỉnh', 'quang-nam', 0),
('51', 'Quảng Ngãi', 'Tỉnh', 'quang-ngai', 0),
('52', 'Bình Định', 'Tỉnh', 'binh-dinh', 0),
('54', 'Phú Yên', 'Tỉnh', 'phu-yen', 0),
('56', 'Khánh Hòa', 'Tỉnh', 'khanh-hoa', 0),
('58', 'Ninh Thuận', 'Tỉnh', 'ninh-thuan', 0),
('60', 'Bình Thuận', 'Tỉnh', 'binh-thuan', 0),
('62', 'Kon Tum', 'Tỉnh', 'kon-tum', 0),
('64', 'Gia Lai', 'Tỉnh', 'gia-lai', 0),
('66', 'Đắk Lắk', 'Tỉnh', 'dak-lak', 0),
('67', 'Đắk Nông', 'Tỉnh', 'dak-nong', 0),
('68', 'Lâm Đồng', 'Tỉnh', 'lam-dong', 0),
('70', 'Bình Phước', 'Tỉnh', 'binh-phuoc', 0),
('72', 'Tây Ninh', 'Tỉnh', 'tay-ninh', 0),
('74', 'Bình Dương', 'Tỉnh', 'binh-duong', 0),
('75', 'Đồng Nai', 'Tỉnh', 'dong-nai', 0),
('77', 'Bà Rịa - Vũng Tàu', 'Tỉnh', 'ba-ria-vung-tau', 0),
('79', 'Hồ Chí Minh', 'Thành Phố', 'ho-chi-minh', 1),
('80', 'Long An', 'Tỉnh', 'long-an', 0),
('82', 'Tiền Giang', 'Tỉnh', 'tien-giang', 0),
('83', 'Bến Tre', 'Tỉnh', 'ben-tre', 0),
('84', 'Trà Vinh', 'Tỉnh', 'tra-vinh', 0),
('86', 'Vĩnh Long', 'Tỉnh', 'vinh-long', 0),
('87', 'Đồng Tháp', 'Tỉnh', 'dong-thap', 0),
('89', 'An Giang', 'Tỉnh', 'an-giang', 0),
('91', 'Kiên Giang', 'Tỉnh', 'kien-giang', 0),
('92', 'Cần Thơ', 'Thành Phố', 'can-tho', 0),
('93', 'Hậu Giang', 'Tỉnh', 'hau-giang', 0),
('94', 'Sóc Trăng', 'Tỉnh', 'soc-trang', 0),
('95', 'Bạc Liêu', 'Tỉnh', 'bac-lieu', 0),
('96', 'Cà Mau', 'Tỉnh', 'ca-mau', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pro_size`
--

CREATE TABLE `pro_size` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `lang` char(10) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pro_values`
--

CREATE TABLE `pro_values` (
  `pro_id` int(11) DEFAULT NULL,
  `attr_id` int(11) DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pucharse`
--

CREATE TABLE `pucharse` (
  `id` int(11) NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date_time` int(11) DEFAULT NULL,
  `supplier` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `supplier_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `supplier_code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_pucharse` int(11) DEFAULT NULL,
  `user_create` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `pay_ncc` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `note` text CHARACTER SET utf8,
  `date` char(30) COLLATE utf8_bin DEFAULT NULL,
  `time` char(20) COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `total_pay` int(11) DEFAULT NULL,
  `type` tinyint(4) DEFAULT '0' COMMENT '0 : Hoá Đơn Nhập Hàng / 1 : hoá đơn Trả Hàng',
  `return_total` int(11) DEFAULT '0' COMMENT 'tổng số tiền NCC cần trả lại',
  `return_payted` int(11) DEFAULT '0' COMMENT 'Số tiền NCC đã trả ',
  `return_pucharse` int(11) DEFAULT '0' COMMENT 'mã đơn nhập hàng gốc',
  `return_sale` int(11) DEFAULT '0' COMMENT 'Số Tiền GIảm Giá ',
  `debt` float DEFAULT '0',
  `nkd` int(11) DEFAULT '0',
  `nkc` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pucharse_detail`
--

CREATE TABLE `pucharse_detail` (
  `id` int(11) NOT NULL,
  `pucharse_id` int(11) DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `price_imp` int(11) DEFAULT NULL,
  `price_return` int(11) DEFAULT NULL COMMENT 'Giá Sản Phẩm Khi Trả Lại',
  `sale` int(11) DEFAULT NULL COMMENT 'giảm giá sản phẩm khi trả hàng',
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT '0' COMMENT '0 : nhập hàng, 1 : trả hàng'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `p_images`
--

CREATE TABLE `p_images` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `url` char(200) CHARACTER SET utf8 DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `p_images`
--

INSERT INTO `p_images` (`id`, `name`, `id_item`, `image`, `url`, `link`, `sort`) VALUES
(9, '', 43, 'upload/img/products_multi/21.jpg', NULL, '', NULL),
(10, '', 43, 'upload/img/products_multi/22.jpg', NULL, '', NULL),
(11, 'anh so 1', 93, 'upload/img/products_multi/web.png', NULL, '', NULL),
(13, 'anh 2', 92, 'upload/img/products_multi/logo1.png', NULL, '', NULL),
(14, '', 92, 'upload/img/products_multi/logo-thep.jpg', NULL, '', NULL),
(16, 'anh so 2', NULL, 'upload/img/products_multi/logo-thep1.jpg', NULL, '', NULL),
(17, 'anh so 2', NULL, NULL, NULL, '', NULL),
(18, 'anh so 123', NULL, 'upload/img/products_multi/logo.png', NULL, '', NULL),
(19, 'anh cho 91', NULL, NULL, NULL, '', NULL),
(20, 'anh cho 91', NULL, 'upload/img/products_multi/logo1.png', NULL, '', NULL),
(22, 'anh so 1', 15, 'upload/img/products_multi/golf.png', NULL, '', NULL),
(23, NULL, 93, 'upload/img/products_multi/giay-bet-nu-cuc-dep-2017-1509779416-06321602-ba37482ac44d7060ec4383460d6cec49-catalog_233.jpg', NULL, NULL, NULL),
(25, NULL, 95, 'upload/img/products_multi/giay-luoi-nam-sport-sieu-nhe-1509089650-70808581-284822f8215510444727605b7be84b4c-catalog_233.jpg', NULL, NULL, NULL),
(27, NULL, 99, 'upload/img/products_multi/giay-luoi-nu-giay-slip-on-giay-de-bang-giay-nu-thoi-trang-nu-dodaco-ddc2026-mh-10-bac-ha-1511344819-92984812-44b464835378c3965f6d18074a1a105c-catalog_233.jpg', NULL, NULL, NULL),
(101, NULL, 208, 'upload/img/products_multi/3_40_copy.jpg', NULL, NULL, NULL),
(102, NULL, 210, 'upload/img/products_multi/thao-duoc-tri-mat-ngu-siro-laroxen-chinh-hang-hoc-vien-quan-y-1_copy.jpg', NULL, NULL, NULL),
(29, NULL, 101, 'upload/img/products_multi/giay-nam-dang-han-quoc-1516874863-94200433-25137f5aab9af751600b96ead0681c1c-catalog_233.jpg', NULL, NULL, NULL),
(30, NULL, 102, 'upload/img/products_multi/giay-nam-thoi-trang-nam-cao-cap-pettino-gv08-den-1506650409-0893705-00cf5b7c7df8d25f40d489e3ba02e82f-catalog_233.jpg', NULL, NULL, NULL),
(31, NULL, 103, 'upload/img/products_multi/giay-sneaker-nam-giay-the-thao-nam-mando-giay-thoi-trang-nam-gd07-trang-1514189407-25334751-c78be32e2bdd853b51c566ee202ad56a-catalog_233.jpg', NULL, NULL, NULL),
(32, NULL, 104, 'upload/img/products_multi/giay-sneaker-thoi-trang-nam-alami-gtt321-xam-1513074624-66186091-94b373b3bc515e12307b65cc3c60d3db-catalog_233.jpg', NULL, NULL, NULL),
(33, NULL, 105, 'upload/img/products_multi/giay-the-thao-chay-bo-sneaker-nam-sanh-dieu-tk-01-cam-1513150233-80544362-9f227ab1438b943881a05d6509f07592-catalog_233.jpg', NULL, NULL, NULL),
(34, NULL, 106, 'upload/img/products_multi/giay-the-thao-nam-nike-zoom-chat-xin-rat-em-chan-1516950304-06674533-e70562ef39f85034760ce7ce876b3d44-catalog_233.jpg', NULL, NULL, NULL),
(35, NULL, 107, 'upload/img/products_multi/giay-the-thao-nam-sieu-nhe-kieu-dang-cao-cap-1515741021-47413213-78602464cdf42e49fe137b15dfa7ca09-catalog_233.jpg', NULL, NULL, NULL),
(36, NULL, 108, 'upload/img/products_multi/giay-thoi-trang-nu-don-de-1510205418-92852612-9386c4c2154dc4fbb8aa88f82279ff69-catalog_233.jpg', NULL, NULL, NULL),
(37, NULL, 109, 'upload/img/products_multi/giay-vai-nam-1507300387-82479951-4b2ba103eceb24f1fd2de8d58eed98d0-catalog_233.jpg', NULL, NULL, NULL),
(38, NULL, 110, 'upload/img/products_multi/giay-vai-nam-cao-cap-1513740674-87769661-562da0b84934287f8e4b8b596b6db956-catalog_233.jpg', NULL, NULL, NULL),
(39, NULL, 99, 'upload/img/products_multi/giay-luoi-nu-giay-slip-on-giay-de-bang-giay-nu-thoi-trang-nu-dodaco-ddc2026-mh-9-xanh-ke-to-1511344821-35094812-f7067c37e62eb5c02305bc11f337a645-catalog_233.jpg', NULL, NULL, NULL),
(41, NULL, 97, 'upload/img/products_multi/giay-luoi-nu-giay-slip-on-giay-de-bang-giay-nu-thoi-trang-nu-dodaco-ddc1835-trang-1514403605-0324805-45b1f7bacf50b5c187550a72fe54e880-catalog_233.jpg', NULL, NULL, NULL),
(42, '1', 157, 'upload/img/products_multi/1.jpg', NULL, '', 0),
(43, '2', 157, 'upload/img/products_multi/3.jpg', NULL, '', 0),
(44, '3', 157, 'upload/img/products_multi/2.jpg', NULL, '', 0),
(49, NULL, 135, 'upload/img/products_multi/ao-phao-nu-07_2.jpg', NULL, NULL, NULL),
(50, NULL, 135, 'upload/img/products_multi/ao-phao-nu-07_3.jpg', NULL, NULL, NULL),
(51, NULL, 135, 'upload/img/products_multi/ao-phao-nu-07_1.jpg', NULL, NULL, NULL),
(52, NULL, 133, 'upload/img/products_multi/ao-phao-nu-13_1.jpg', NULL, NULL, NULL),
(53, NULL, 133, 'upload/img/products_multi/ao-phao-nu-13_2.jpg', NULL, NULL, NULL),
(54, NULL, 133, 'upload/img/products_multi/ao-phao-nu-13_3.jpg', NULL, NULL, NULL),
(55, '', 134, 'upload/img/products_multi/ao-phao-nu-17_1.jpg', NULL, NULL, NULL),
(62, '', 132, 'upload/img/products_multi/ao-phao-nu-15-1.jpg', NULL, '', 0),
(60, '', 134, 'upload/img/products_multi/ao-phao-nu-17.jpg', NULL, '', 0),
(63, '', 132, 'upload/img/products_multi/ao-phao-nu-15-2.jpg', NULL, '', 0),
(64, '', 132, 'upload/img/products_multi/ao-phao-nu-15-3.jpg', NULL, '', 0),
(65, '', 131, 'upload/img/products_multi/ao-phao-nu-09-1.jpg', NULL, '', 0),
(66, '', 131, 'upload/img/products_multi/ao-phao-nu-09-2.jpg', NULL, '', 0),
(67, '', 131, 'upload/img/products_multi/ao-phao-nu-09.jpg', NULL, '', 0),
(68, '', 130, 'upload/img/products_multi/ao-phao-nu-03-1.jpg', NULL, '', 0),
(69, '', 130, 'upload/img/products_multi/ao-phao-nu-03-2.jpg', NULL, '', 0),
(70, '', 130, 'upload/img/products_multi/ao-phao-nu-03-3.jpg', NULL, '', 0),
(71, NULL, 129, 'upload/img/products_multi/ao-phao-nu-01-1.jpg', NULL, NULL, NULL),
(72, '', 129, 'upload/img/products_multi/ao-phao-nu-01-2.jpg', NULL, '', 0),
(73, '', 129, 'upload/img/products_multi/ao-phao-nu-01-3.jpg', NULL, '', 0),
(74, NULL, 151, 'upload/img/products_multi/7_ao-ren-nu-2.jpg', NULL, NULL, NULL),
(75, '', 151, 'upload/img/products_multi/7-ao-ren-nu-1.jpg', NULL, '', 0),
(76, '', 151, 'upload/img/products_multi/7-ao-ren-nu-3.jpg', NULL, '', 0),
(77, '', 150, 'upload/img/products_multi/5-ao-ren-nu-1.jpg', NULL, '', 0),
(78, '', 150, 'upload/img/products_multi/5-ao-ren-nu-2.jpg', NULL, '', 0),
(79, '', 150, 'upload/img/products_multi/5-ao-ren-nu-3.jpg', NULL, '', 0),
(80, '', 149, 'upload/img/products_multi/4-ao-lot-nu-1.jpg', NULL, '', 0),
(81, '', 149, 'upload/img/products_multi/4-ao-lot-nu-2.jpg', NULL, '', 0),
(82, '', 149, 'upload/img/products_multi/4-ao-lot-nu-3.jpg', NULL, '', 0),
(83, '', 148, 'upload/img/products_multi/3-ao-lot-nu-1.jpg', NULL, '', 0),
(84, '', 148, 'upload/img/products_multi/3-ao-lot-nu-2.jpg', NULL, '', 0),
(85, '', 148, 'upload/img/products_multi/31.jpg', NULL, '', 0),
(86, '', 147, 'upload/img/products_multi/2-ao-lot-nu-1.jpg', NULL, '', 0),
(87, '', 147, 'upload/img/products_multi/2-ao-lot-nu-2.jpg', NULL, '', 0),
(88, '', 147, 'upload/img/products_multi/2-ao-lot-nu-3.jpg', NULL, '', 0),
(89, '', 146, 'upload/img/products_multi/1-ao-lot-nu-2.jpg', NULL, '', 0),
(90, '', 146, 'upload/img/products_multi/1-ao-lot-nu-1.jpg', NULL, '', 0),
(91, '', 146, 'upload/img/products_multi/1-ao-lot-nu-3.jpg', NULL, '', 0),
(92, '', 171, 'upload/img/products_multi/1-bo-do-ngu-1.jpg', NULL, '', 0),
(93, '', 171, 'upload/img/products_multi/1-bo-do-ngu-2.jpg', NULL, '', 0),
(94, NULL, 187, 'upload/img/products_multi/1-bo-do-ngu-21.jpg', NULL, NULL, NULL),
(95, '1', 206, 'upload/img/products_multi/OK1.jpg', NULL, NULL, NULL),
(96, '2', 206, 'upload/img/products_multi/ok2.jpg', NULL, NULL, NULL),
(97, '3', 206, 'upload/img/products_multi/OK3.jpg', NULL, NULL, NULL),
(98, '4', 206, 'upload/img/products_multi/OK4.JPG', NULL, NULL, NULL),
(99, '5', 206, 'upload/img/products_multi/OK5.jpg', NULL, NULL, NULL),
(100, NULL, 207, 'upload/img/products_multi/2.png', NULL, NULL, NULL),
(103, NULL, 211, 'upload/img/products_multi/0636305318675185584.jpg', NULL, NULL, NULL),
(104, NULL, 212, 'upload/img/products_multi/tam-that-xa-den-333974j18888.jpg', NULL, NULL, NULL),
(105, NULL, 214, 'upload/img/products_multi/418439af51f043f93233887117d27b71.jpg', NULL, NULL, NULL),
(106, NULL, 215, 'upload/img/products_multi/hop-tinh-chat-nghe-giam-gia-5_copy.jpg', NULL, NULL, NULL),
(107, NULL, 216, 'upload/img/products_multi/Thuoc-bot-don-so-12-hvqy-01-768x768.jpg', NULL, NULL, NULL),
(108, NULL, 217, 'upload/img/products_multi/3_28_copy.jpg', NULL, NULL, NULL),
(109, NULL, 220, 'upload/img/products_multi/my-pham-chuyen-biet-nam-tan-nhang-lipo-white-hoc-vien-quan-y_61.png', NULL, NULL, NULL),
(110, NULL, 221, 'upload/img/products_multi/my-pham-cream-smartcos-sk-ginseng-duong-da.jpg', NULL, NULL, NULL),
(111, NULL, 223, 'upload/img/products_multi/tra-giam-can-slimutea-ha-mo-mau-ho-tro-giam-beo_2_copy.jpg', NULL, NULL, NULL),
(112, NULL, 224, 'upload/img/products_multi/tra-giam-can-slimomax-hoc-vien-quan-y-ho-tro-giam-beo_71_copy.jpg', NULL, NULL, NULL),
(113, NULL, 226, 'upload/img/products_multi/slim-body-hoc-vien-quan-y4.jpg', NULL, NULL, NULL),
(114, NULL, 227, 'upload/img/products_multi/newslim.jpg', NULL, NULL, NULL),
(115, NULL, 228, 'upload/img/products_multi/nano-fucomin-hvqy5_copy.jpg', NULL, NULL, NULL),
(116, NULL, 229, 'upload/img/products_multi/nano-curcumin-hoc-vien-quan-y-dac-tri-viem-loet-da-day-viem-loet-hanh-ta-trang_9_copy.jpg', NULL, NULL, NULL),
(117, NULL, 230, 'upload/img/products_multi/siro-an-ngon-navikid-hoc-vien-quan-y-cho-tre-mau-lon_83_copy.jpg', NULL, NULL, NULL),
(118, NULL, 231, 'upload/img/products_multi/download_(1)_copy.jpg', NULL, NULL, NULL),
(119, NULL, 225, 'upload/img/products_multi/vien-uong-giam-can-giam-mo-mau-slimtosen-extra-100-vien_(1).jpg', NULL, NULL, NULL),
(120, NULL, 218, 'upload/img/products_multi/Toi_den_mot_nhanh_1631-2018-ATTP-XNCB_copy.jpg', NULL, NULL, NULL),
(121, NULL, 213, 'upload/img/products_multi/Tra-Tanaka-Hoc-Vien-Quan-Y-103-219f.jpg', NULL, NULL, NULL),
(122, NULL, 232, 'upload/img/products_multi/IMG_1934.PNG', NULL, NULL, NULL),
(123, NULL, 233, 'upload/img/products_multi/IMG_1972.PNG', NULL, NULL, NULL),
(124, NULL, 234, 'upload/img/products_multi/IMG_1965.PNG', NULL, NULL, NULL),
(125, NULL, 235, 'upload/img/products_multi/IMG_2005.PNG', NULL, NULL, NULL),
(126, NULL, 236, 'upload/img/products_multi/3_18_copy.jpg', NULL, NULL, NULL),
(127, NULL, 219, 'upload/img/products_multi/S-100025389-79946f3ddfdc3a4765be5837a5e14b0a_copy.jpg', NULL, NULL, NULL),
(128, NULL, 239, 'upload/img/products_multi/san-pham-nano-pro-extra_copy.jpg', NULL, NULL, NULL),
(129, NULL, 240, 'upload/img/products_multi/com-vi-sinh-safikid-bio-hvqy-kich-thich-an-ngon-tang-cuong-hap-thu-cho-tre_50.jpg', NULL, NULL, NULL),
(130, NULL, 241, 'upload/img/products_multi/IMG_2025.PNG', NULL, NULL, NULL),
(131, NULL, 242, 'upload/img/products_multi/IMG_1801.PNG', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `id_sanpham` int(11) DEFAULT NULL,
  `comment` text CHARACTER SET utf8,
  `flg` int(11) DEFAULT NULL,
  `reply` int(11) DEFAULT NULL,
  `review` tinyint(1) DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `questions`
--

INSERT INTO `questions` (`id`, `id_sanpham`, `comment`, `flg`, `reply`, `review`, `user_name`, `user_email`, `time`, `date`) VALUES
(13, 5, 'hhhhggg', NULL, 0, NULL, 'sieuwebqt', 'dangtranmanh@gmail.com', 1505724581, NULL),
(14, 5, 'hhhhggg', NULL, 0, NULL, 'sieuwebqt', 'dangtranmanh@gmail.com', 1505724675, NULL),
(15, 5, 'noi dung', NULL, 0, NULL, 'nguyen đát', 'dat@gmail.com', 1505725003, NULL),
(16, 5, 'noi dung câu hỏi', NULL, 0, NULL, 'tran manh', 'tranmanh@gmail.com', 1505725440, NULL),
(17, 5, 'noi dung cua toi', NULL, 0, NULL, 'khowebqts', 'tranmanh@gmail.com', 1505725631, NULL),
(18, 5, 'noi dung', NULL, 0, 1, 'tranmanh', 'tranmanh@gmail.com', 1505725689, NULL),
(19, 5, 'noi dung', NULL, 0, 1, 'sieuwebqt', 'tranmanh@gmail.com', 1505725843, NULL),
(20, 5, 'noi dung', NULL, 0, 1, 'sieuwebqt', 'tranmanh@gmail.com', 1505725878, NULL),
(21, 5, 'noi dung', NULL, 0, 1, 'sieuwebqt', 'tranmanh@gmail.com', 1505725928, NULL),
(22, 5, 'noi dung câu hỏi', NULL, 0, 1, 'tranmanh', 'dangtranmanh@gmail.com', 1505726276, NULL),
(23, 5, 'noi dung cau tra loi', NULL, 21, 1, 'van đạt', 'dat@gmail.com', 1505726568, NULL),
(24, 4, 'sâssa', NULL, 0, 1, 'Vân', 'buivananh.th@gmail.com', 1505981779, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `raovat`
--

CREATE TABLE `raovat` (
  `home` tinyint(1) DEFAULT NULL,
  `focus` tinyint(1) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `price` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `description_seo` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `note` text COLLATE utf8_unicode_ci,
  `category_id` int(11) DEFAULT NULL,
  `caption_1` text COLLATE utf8_unicode_ci,
  `caption_2` text COLLATE utf8_unicode_ci,
  `locale` int(11) DEFAULT NULL,
  `sort` int(10) DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `lang` char(10) COLLATE utf8_unicode_ci DEFAULT 'vi',
  `caption_3` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(8) DEFAULT NULL,
  `tags` text COLLATE utf8_unicode_ci,
  `raovat_dir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multi_image` text COLLATE utf8_unicode_ci,
  `img_dir` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `tinhtrang` tinyint(1) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `id` int(11) NOT NULL,
  `style` int(11) DEFAULT NULL,
  `id_value` int(11) DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hot` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `raovat`
--

INSERT INTO `raovat` (`home`, `focus`, `view`, `active`, `price`, `price_sale`, `description`, `description_seo`, `title_seo`, `keyword_seo`, `detail`, `note`, `category_id`, `caption_1`, `caption_2`, `locale`, `sort`, `quantity`, `lang`, `caption_3`, `time`, `tags`, `raovat_dir`, `multi_image`, `img_dir`, `status`, `tinhtrang`, `user_id`, `id`, `style`, `id_value`, `brand`, `name`, `code`, `alias`, `image`, `hot`) VALUES
(1, NULL, 0, 1, 0, 0, '<p>n&ocirc;i dung m&ocirc; ta</p>\r\n', '', '', '', '<p>noi dung chi tiet</p>\r\n', NULL, NULL, NULL, '<p>noi dung phu</p>\r\n', 0, 1, 0, 'vi', NULL, 1504065201, NULL, NULL, NULL, NULL, 0, NULL, 620, 1, NULL, NULL, 0, 'bán nhà tai hà nội', '', 'ban-nha-tai-ha-noi', NULL, NULL),
(1, NULL, 0, 1, 12424334, 12332342, '<p>n&ocirc;i dung m&ocirc; ta</p>\r\n', '', '', '', '<p>noi dung chi tiet</p>\r\n', NULL, 29, NULL, '<p>noi dung phu</p>\r\n', 6, 2, 0, 'vi', NULL, 1504068779, NULL, '30082017', NULL, NULL, 0, NULL, 620, 2, NULL, NULL, 14, 'bán nhà tai hà nội đường số 237', '', 'ban-nha-tai-ha-noi-duong-so-237', 'db652781fa07e94e75c9023c9de373cf.jpg', NULL),
(1, 1, 12, 1, 1234566, 1234333, '<p>n&ocirc;i dung m&ocirc; ta</p>\r\n', '', '', '', '<p>noi dung chi tiet</p>\r\n', NULL, 28, NULL, '<p>noi dung phu</p>\r\n', 5, 3, 0, 'vi', NULL, 1516353599, NULL, '30082017', NULL, NULL, 0, NULL, NULL, 3, NULL, NULL, 10, 'bán nhà tai hà nội viet nam', '', 'ban-nha-tai-ha-noi-viet-nam', '766564be313697c3bdae612b28a89d0a.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `raovat_category`
--

CREATE TABLE `raovat_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `home` tinyint(1) DEFAULT '0',
  `sort` int(3) DEFAULT '0',
  `hot` tinyint(1) DEFAULT '0',
  `focus` tinyint(1) DEFAULT '0',
  `lang` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `keyword_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description_seo` text CHARACTER SET utf8
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `raovat_category`
--

INSERT INTO `raovat_category` (`id`, `name`, `image`, `alias`, `parent_id`, `description`, `home`, `sort`, `hot`, `focus`, `lang`, `title_seo`, `keyword_seo`, `description_seo`) VALUES
(20, 'Điện thoại, viễn thông ', 'upload/img/phone.png', 'dien-thoai-vien-thong', 0, '                                                                                                                                                                                                            ', 0, 1, 0, 0, 'vi', NULL, NULL, NULL),
(27, 'Ô tô, xe máy, xe đạp', 'upload/img/oto.png', 'o-to-xe-may-xe-dap', 0, '', 0, 0, 0, 0, 'vi', NULL, NULL, NULL),
(28, 'Xây dựng, công nghiệp', 'upload/img/connghiep.png', 'xay-dung-cong-nghiep', 0, '                                                                                                                                        ', 0, 0, 0, 0, 'vi', NULL, NULL, NULL),
(29, 'Thời trang, phụ kiện', 'upload/img/thoitrang.png', 'thoi-trang-phu-kien', 0, '', 0, 0, 0, 0, 'vi', NULL, NULL, NULL),
(30, 'Mẹ & Bé', 'upload/img/me_be.png', 'me-be', 0, '', 0, 0, 0, 0, 'vi', NULL, NULL, NULL),
(31, 'Sức khỏe, sắc đẹp', 'upload/img/suckhoe.png', 'suc-khoe-sac-dep', 0, '', 0, 0, 0, 0, 'vi', NULL, NULL, NULL),
(33, 'Nội thất, ngoại thất', 'upload/img/noithat.png', 'noi-that-ngoai-that', 0, '', 0, 0, 0, 0, 'vi', NULL, NULL, NULL),
(34, 'Sách, đồ văn phòng', 'upload/img/sach.png', 'sach-do-van-phong', 0, '', 0, 0, 0, 0, 'vi', NULL, NULL, NULL),
(35, 'Hoa, quà tặng, đồ chơi', 'upload/img/qua_tang.png', 'hoa-qua-tang-do-choi', 0, '', 0, 0, 0, 0, 'vi', NULL, NULL, NULL),
(42, 'Khác', '', 'khac', 0, '', 0, 2, 1, 1, 'vi', '', NULL, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `raovat_images`
--

CREATE TABLE `raovat_images` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `url` char(200) CHARACTER SET utf8 DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `raovat_images`
--

INSERT INTO `raovat_images` (`id`, `name`, `id_item`, `image`, `url`, `link`, `sort`) VALUES
(1, NULL, 3, 'upload/img/raovats_multi/f46482c87ab814e5d5ea59819e568564.jpg', NULL, NULL, NULL),
(2, NULL, 3, 'upload/img/raovats_multi/f4b467b6d383eb5d6062b2fa9c9c0708.jpg', NULL, NULL, NULL),
(3, NULL, 3, 'upload/img/raovats_multi/e86f742e7d986de26413443600fa8535.jpg', NULL, NULL, NULL),
(4, NULL, 3, 'upload/img/raovats_multi/d640c2db815fbba330306bdbdc9e9326.jpg', NULL, NULL, NULL),
(5, NULL, 2, 'upload/img/raovats_multi/3915f302b19fa28fc4001d6a66238681.jpg', NULL, NULL, NULL),
(6, NULL, 2, 'upload/img/raovats_multi/866917b6bab0b8c3eeb0f52f45efd867.jpg', NULL, NULL, NULL),
(7, NULL, 2, 'upload/img/raovats_multi/a8f9dbaa6c627b3a47a0f442cbe0c1ab.jpg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `raovat_tag`
--

CREATE TABLE `raovat_tag` (
  `raovat_tag_id` int(11) NOT NULL,
  `raovat_id` int(11) NOT NULL,
  `lang` varchar(11) CHARACTER SET utf8 NOT NULL,
  `tag` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `alias` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `raovat_to_category`
--

CREATE TABLE `raovat_to_category` (
  `id` int(11) NOT NULL,
  `id_raovat` int(11) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=FIXED;

--
-- Đang đổ dữ liệu cho bảng `raovat_to_category`
--

INSERT INTO `raovat_to_category` (`id`, `id_raovat`, `id_category`) VALUES
(18, 3, 27),
(19, 3, 28),
(26, 2, 27),
(27, 2, 28),
(28, 2, 29);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `resources`
--

CREATE TABLE `resources` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `resource` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(11) DEFAULT '0',
  `icon` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `active` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `resources`
--

INSERT INTO `resources` (`id`, `parent_id`, `resource`, `name`, `description`, `sort`, `icon`, `alias`, `active`) VALUES
(10, 0, 'product', 'Quản lý sản phẩm', NULL, 3, 'fa-bars', '', 1),
(11, 10, 'products', 'Danh sách sản phẩm', NULL, 1, 'fa-files-o', 'vnsadmin/product/products', 1),
(13, 116, 'listColor', 'Màu sắc', NULL, 3, 'fa-circle-o', 'vnsadmin/attribute/listColor', 0),
(14, 116, 'listprice', 'Khoảng giá', NULL, 4, 'fa-circle-o', 'vnsadmin/attribute/listprice', 1),
(15, 116, 'listOption', 'Kích thước', NULL, 5, 'fa-circle-o', 'vnsadmin/attribute/listOption', 1),
(17, 0, 'menu', 'Quản lý menu', NULL, 7, 'fa-bars', 'vnsadmin/menu/menulist', 1),
(18, 10, 'category_pro', 'Danh mục sản phẩm', NULL, 2, 'fa-files-o', 'vnsadmin/product/categories', 1),
(19, 173, 'comments', 'Đánh giá bình luận', NULL, 3, 'fa-comments-o', 'vnsadmin/comment/comments', 0),
(20, 173, 'questions', 'Danh sách hỏi đáp', NULL, 4, 'fa-question-circle', 'vnsadmin/comment/questions', 0),
(22, 174, 'listpro', 'Thẻ tags sản phẩm', NULL, 5, 'fa-tag', 'vnsadmin/tag/listpro', 0),
(25, 0, 'news', 'Quản lý tin bài', NULL, 6, 'fa-newspaper-o', '', 1),
(26, 25, 'newslist', 'Danh sách tin', NULL, 1, 'fa-file-text-o', 'vnsadmin/news/newslist', 1),
(28, 25, 'tagsnews', 'Tags tin tức', NULL, 3, 'fa fa-tag', '', 0),
(29, 0, 'media', 'Quản lý media', NULL, 1, 'fa-picture-o', '', 0),
(30, 29, 'listAll', 'Danh sách media', NULL, 1, 'fa-file-image-o', 'vnsadmin/media/listAll', 0),
(31, 25, 'categories', 'Danh mục tin', NULL, 2, 'fa-newspaper-o', 'vnsadmin/news/categories', 1),
(32, 29, 'categories', 'Danh mục media', NULL, 2, 'fa-file-image-o', 'vnsadmin/media/categories', 0),
(33, 0, 'users', 'Quản lý thành viên', NULL, 16, 'fa-users', '', 1),
(34, 33, 'smslist', 'Tin Nhắn SMS', NULL, 6, 'fa-commenting-o', 'vnsadmin/users/smslist', 0),
(39, 0, 'pages', 'Quản lý nội dung', NULL, 9, 'fa-file-o', 'vnsadmin/pages/pagelist', 1),
(40, 0, 'video', 'Quản Lý Video', NULL, 2, 'fa-video-camera', '', 0),
(42, 40, 'listAll', 'Danh sách video', NULL, 1, 'fa-file-video-o', 'vnsadmin/video/listAll', 0),
(43, 40, 'category_video', 'Danh mục video', NULL, 2, 'fa-video-camera', 'vnsadmin/video/categories', 0),
(44, 107, 'listraovat', 'Danh sách rao vặt', NULL, 1, 'fa-files-o', 'vnsadmin/raovat/listraovat', 0),
(49, 107, 'categories', 'Danh mục rao vặt', NULL, 2, 'fa-files-o', 'vnsadmin/raovat/categories', 0),
(53, 0, 'imageupload', 'Quản lý banner', NULL, 8, 'fa-file-image-o', 'vnsadmin/imageupload/banners', 1),
(54, 162, 'listWard', 'Quản lý phường xã', NULL, 3, 'fa-map-signs', 'vnsadmin/province/listWard', 0),
(56, 162, 'listDistric', 'Quản lý quận huyện', NULL, 2, 'fa-map-marker', 'vnsadmin/province/listDistric', 0),
(57, 162, 'street', 'Quản lý đường phố', NULL, 4, 'fa-road', 'vnsadmin/province/listStreet', 0),
(58, 97, 'soldout', 'danh sách hết hàng', NULL, 1, 'fa-circle-o', 'vnsadmin/report/soldout', 0),
(63, 10, 'cat_add', 'Thêm - Sửa danh mục sp', NULL, 9, '', '', 0),
(64, 95, 'maps', 'Cấu hình bản đồ Maps', NULL, 1, ' fa-map-o', 'vnsadmin/admin/bando_map', 1),
(65, 10, 'add', 'Thêm -Sửa sản phẩm', NULL, 7, '', '', 0),
(66, 17, 'delete', 'Xóa menu', NULL, 2, '', '', 0),
(67, 10, 'delete_once', 'Xóa sản phẩm', NULL, 8, '', '', 0),
(95, 0, 'admin', 'Hệ thống', NULL, 17, 'fa-gears text-red', '', 1),
(96, 95, 'site_option', 'Cấu hình hệ thống', NULL, 0, 'fa-circle-o text-red', 'vnsadmin/admin/site_option', 1),
(97, 0, 'report', 'Báo cáo-Thống kê', NULL, 19, '', '', 0),
(98, 104, 'listProvince', 'Phí vận chuyển', NULL, 3, 'fa-truck', 'vnsadmin/order/listProvince', 0),
(99, 90, 'categories', 'Danh mục share', NULL, 0, NULL, NULL, NULL),
(100, 90, 'cat_add', 'Thêm danh mục share', NULL, 0, NULL, NULL, NULL),
(101, 90, 'cat_edit', 'Sửa danh mục share', NULL, 0, NULL, NULL, NULL),
(102, 90, 'delete_cat', 'Xóa danh mục share', NULL, 0, NULL, NULL, NULL),
(103, 97, 'bestsellers', 'Hàng bán chạy', NULL, 2, 'fa-circle-o', 'vnsadmin/report/bestsellers', 0),
(104, 0, 'order', 'Quản lý giỏ hàng', NULL, 4, 'fa-shopping-cart', '', 1),
(105, 104, 'orders', 'Danh sách đặt hàng', NULL, 1, 'fa-cart-arrow-down', 'vnsadmin/order/orders', 1),
(106, 104, 'listSale', 'Mã giảm giá', NULL, 2, 'fa-files-o', 'vnsadmin/order/listSale', 0),
(107, 0, 'raovat', 'Quản lý rao vặt', NULL, 13, 'fa-bars', '', 0),
(108, 0, 'inuser', 'Ý kiến khách hàng', NULL, 0, 'fa-user-plus', 'vnsadmin/inuser/categories', 0),
(109, 107, 'tagtinrao', 'Tags tin rao', NULL, 3, 'fa-tag', '', 0),
(110, 0, 'email', 'Quản lý email', NULL, 14, ' fa-envelope-o ', 'vnsadmin/email/emails', 0),
(111, 0, 'support', 'Hỗ trợ  trực tuyến', NULL, 15, 'fa-life-ring', 'vnsadmin/support/listSuport', 0),
(112, 95, 'store_shopping', 'Chuỗi cửa hàng', NULL, 5, 'fa-files-o', 'vnsadmin/store/Ds_shopping', 0),
(113, 116, 'listBrand', 'Thương hiệu', NULL, 1, 'fa-circle-o', 'vnsadmin/attribute/listBrand', 1),
(114, 116, 'listLocale', 'Xuất sứ', NULL, 2, 'fa-circle-o', 'vnsadmin/attribute/listLocale', 0),
(115, 0, 'contact', 'Quản lý liên hệ', NULL, 10, 'fa-bars', 'vnsadmin/contact/contacts', 1),
(116, 0, 'attribute', 'Thuộc tính sản phẩm', NULL, 5, 'fa-bars', '', 1),
(117, 108, 'cate_add', 'Thêm và Sửa', NULL, 2, '', '', 0),
(118, 108, 'delete_cat_once', 'Xóa', NULL, 3, '', '', 0),
(119, 108, 'categories', 'ý kiến khách hàng', NULL, 1, 'fa-files-o', 'vnsadmin/inuser/categories', 0),
(120, 17, 'addmenu', 'Thêm - Sửa menu', NULL, 0, '', '', 0),
(121, 10, 'del_cat_once', 'Xóa danh mục sp', NULL, 10, '', '', 0),
(122, 29, 'add', 'Thêm -Sửa media', NULL, 3, '', '', 0),
(123, 29, 'delete_once', 'Xóa media', NULL, 4, '', '', 0),
(124, 29, 'cat_add', 'Thêm - Sửa danh mục media', NULL, 5, '', '', 0),
(125, 29, 'del_cat_once', 'Xóa danh mục media', NULL, 6, '', '', 0),
(126, 40, 'add', 'Thêm sửa video', NULL, 3, '', '', 0),
(127, 40, 'delete_once', 'Xóa video', NULL, 4, '', '', 0),
(128, 40, 'cat_add', 'Thêm danh mục video', NULL, 5, '', '', 0),
(129, 40, 'del_cat_once', 'Xóa danh mục video', NULL, 6, '', '', 0),
(130, 10, 'delete_once_question', 'Xóa hỏi đáp', NULL, 12, '', '', 0),
(131, 10, 'delete_once_comment', 'Xóa bình luận', NULL, 11, '', '', 0),
(132, 104, 'delete_once_orders', 'Xóa đơn hàng', NULL, 4, '', '', 0),
(133, 104, 'addSale', 'Thêm - Sửa mã giảm giá', NULL, 5, '', '', 0),
(134, 104, 'del_once_sale', 'Xóa mã giảm giá', NULL, 6, '', '', 0),
(135, 116, 'addbrand', 'Thêm - Sửa thương hiệu', NULL, 6, '', '', 0),
(136, 116, 'delete_brand_once', 'Xóa thương hiệu', NULL, 7, '', '', 0),
(137, 116, 'addlocale', 'Thêm - Sửa xuất sứ', NULL, 7, '', '', 0),
(138, 116, 'delete_locale_once', 'Xóa xuất sứ', NULL, 8, '', '', 0),
(139, 116, 'addcolor', 'Thêm - Sửa màu sắc', NULL, 9, '', '', 0),
(140, 116, 'delete_color_once', 'Xóa màu sắc', NULL, 10, '', '', 0),
(141, 116, 'addprice', 'Thêm - Sửa khoản giá', NULL, 11, '', '', 0),
(142, 116, 'delete_price_once', 'Xóa khoảng giá', NULL, 12, '', '', 0),
(143, 116, 'addoption', 'Thêm - Sửa kích thước', NULL, 12, '', '', 0),
(144, 116, 'delete_option_once', 'Xóa kích thước', NULL, 13, '', '', 0),
(145, 25, 'addnews', 'Thêm - Sửa tin tức', NULL, 4, '', '', 0),
(146, 25, 'delete_once_news', 'Xóa tin tức', NULL, 5, '', '', 0),
(147, 25, 'cat_add_news', 'Thêm - Sửa danh mục tin', NULL, 6, '', '', 0),
(148, 25, 'del_catnews_once', 'Xóa danh mục tin', NULL, 7, '', '', 0),
(149, 53, 'addbanner', 'Thêm - Sửa banner', NULL, 1, '', '', 0),
(150, 53, 'delete_Banner_once', 'Xóa banner', NULL, 2, '', '', 0),
(151, 39, 'addpage', 'Thêm - Sửa nội dung', NULL, 1, '', '', 0),
(152, 39, 'delete_page_once', 'Xóa nội dung', NULL, 2, '', '', 0),
(153, 115, 'delete', 'Xóa liên hệ', NULL, 1, '', '', 0),
(154, 107, 'add', 'Thêm - Sửa rao vặt', NULL, 4, '', '', 0),
(155, 107, 'delete_raovat_once', 'Xóa tin rao', NULL, 5, '', '', 0),
(156, 107, 'cat_add', 'Thêm - Sửa danh mục tin rao', NULL, 6, '', '', 0),
(157, 107, 'del_cattinrao_once', 'Xóa danh mục tin rao', NULL, 7, '', '', 0),
(158, 110, 'delete', 'Xóa email', NULL, 1, '', '', 0),
(159, 111, 'add', 'Thêm - Sửa hỗ trợ trực tuyến', NULL, 1, '', '', 0),
(160, 111, 'delete_support_once', 'Xóa hỗ trợ trực tuyến', NULL, 2, '', '', 0),
(161, 33, 'delete_users_once', 'Xóa thành viên', NULL, 1, '', '', 0),
(162, 0, 'province', 'Danh sách quan huyện', NULL, 18, '', '', 0),
(163, 33, 'add_users', 'Thêm thành viên quan trị', NULL, 1, '', 'vnsadmin/users/add_users', 0),
(164, 33, 'delete_users_once', 'Xóa thành viên quản trị', NULL, 10, '', '', 0),
(165, 33, 'listuser_admin', 'Danh sách tài khoản quản trị', NULL, 0, '', 'vnsadmin/users/listuser_admin', 1),
(166, 33, 'listusers', 'Danh sách thành viên', NULL, 0, '', 'vnsadmin/users/listusers', 1),
(167, 17, 'menulist', 'Danh sách menu', NULL, 1, '', 'vnsadmin/menu/menulist', 0),
(168, 53, 'banners', 'Danh sách banner', NULL, 0, '', 'vnsadmin/imageupload/banners', 0),
(169, 39, 'pagelist', 'Danh sách nội dung', NULL, 0, '', 'vnsadmin/pages/pagelist', 0),
(170, 110, 'emails', 'Danh sách email', NULL, 0, '', 'vnsadmin/email/emails', 0),
(171, 115, 'contacts', 'Danh sách liên hệ', NULL, 0, '', 'vnsadmin/contact/contacts', 1),
(172, 111, 'listSuport', 'Danh sách support', NULL, 0, '', 'vnsadmin/support/listSuport', 0),
(173, 0, 'comment', 'Quản lý bình luận', NULL, 7, 'fa-comments-o', '', 0),
(174, 0, 'tag', 'Quản lý thẻ tag', NULL, 6, 'fa-tags', '', 0),
(175, 174, 'listnew', 'Thẻ tags tin tức', NULL, 2, 'fa-tag', 'vnsadmin/tag/listnew', 0),
(177, 95, 'setup_product', ' Cấu hình sản phẩm', NULL, 20, 'fa-gears', 'vnsadmin/admin/setup_product', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `search_data`
--

CREATE TABLE `search_data` (
  `id` int(11) NOT NULL,
  `name_search` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `search_data`
--

INSERT INTO `search_data` (`id`, `name_search`, `time`, `qty`, `user`) VALUES
(1, 'abc', 1541951789, 18, ''),
(2, 'chó', 1541991002, 13, ''),
(3, '	Nano Fucomin Học Viện Quân Y', 1540861274, 3, ''),
(4, 'Nano Fucomin Học Viện Quân Y', 1541928805, 13, ''),
(5, 'Tieu duong', 1541935777, 4, ''),
(6, 'Thanh duong gamosa', 1541935791, 4, ''),
(7, 'Đinh tâm  an  giấc ', 1541935808, 4, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipping`
--

CREATE TABLE `shipping` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sort` int(7) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `shipping`
--

INSERT INTO `shipping` (`id`, `name`, `price`, `sort`) VALUES
(4, 'Hà Nội', 0, 3),
(5, 'Hồ Chí Minh', 0, 4),
(6, 'Tỉnh khác', 30000, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `site_log`
--

CREATE TABLE `site_log` (
  `site_log_id` int(10) UNSIGNED NOT NULL,
  `no_of_visits` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `requested_url` tinytext CHARACTER SET utf8,
  `referer_page` tinytext CHARACTER SET utf8,
  `page_name` tinytext CHARACTER SET utf8,
  `query_string` tinytext CHARACTER SET utf8,
  `user_agent` tinytext CHARACTER SET utf8,
  `is_unique` tinyint(1) DEFAULT '0',
  `access_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `visits_count` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `site_log`
--

INSERT INTO `site_log` (`site_log_id`, `no_of_visits`, `ip_address`, `requested_url`, `referer_page`, `page_name`, `query_string`, `user_agent`, `is_unique`, `access_date`, `visits_count`) VALUES
(16744, 1, '123.16.13.3', '/vnsadmin', 'http://thaoduocquany103.com/vnsadmin', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:06:37', 0),
(16743, 1, '123.16.13.3', '/favicon.ico', 'http://thaoduocquany103.com/vnsadmin', 'favicon.ico/index', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:06:31', 0),
(16742, NULL, '123.16.13.3', '/vnsadmin', '', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:06:30', 1),
(16741, NULL, '173.252.87.10', '/nano-curcumin-tam-that-xa-den-plus-san-pham-moi-ham-luong-cao.html', '', 'nano-curcumin-tam-that-xa-den-plus-san-pham-moi-ham-luong-cao/index', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 0, '2018-11-12 00:49:05', 1),
(16740, NULL, '173.252.87.17', '/nano-curcumin-tam-that-xa-den-plus-san-pham-moi-ham-luong-cao.html', '', 'nano-curcumin-tam-that-xa-den-plus-san-pham-moi-ham-luong-cao/index', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 0, '2018-11-12 00:49:05', 1),
(16738, NULL, '173.252.87.15', '/nano-curcumin-tam-that-xa-den-plus-san-pham-moi-ham-luong-cao', '', 'nano-curcumin-tam-that-xa-den-plus-san-pham-moi-ham-luong-cao/index', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 0, '2018-11-12 00:49:04', 1),
(16739, NULL, '173.252.87.5', '/nano-curcumin-tam-that-xa-den-plus-san-pham-moi-ham-luong-cao', '', 'nano-curcumin-tam-that-xa-den-plus-san-pham-moi-ham-luong-cao/index', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 0, '2018-11-12 00:49:04', 1),
(16737, 1, '117.3.118.228', '/san-pham/glasscase.aspx/CheckRandomStateId', 'http://thaoduocquany103.com/san-pham/nano-curcumin-tam-that-xa-den-plus-san-pham-moi-ham-luong-cao', 'san-pham/glasscase.aspx', 'CheckRandomStateId', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 00:48:57', 0),
(16736, NULL, '117.3.118.228', '/san-pham/nano-curcumin-tam-that-xa-den-plus-san-pham-moi-ham-luong-cao', 'http://thaoduocquany103.com/', 'products/detail', 'rcumin-tam-that-xa-den-plus-san-pham-moi-ham-luong-cao', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 00:48:51', 1),
(16735, NULL, '173.252.87.8', '/slim-body-san-pham-giam-can-moi-hoc-vien-quan-y.html', '', 'slim-body-san-pham-giam-can-moi-hoc-vien-quan-y/index', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_0_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 15:07:44', 1),
(16734, NULL, '31.13.115.12', '/slim-body-san-pham-giam-can-moi-hoc-vien-quan-y', 'http://m.facebook.com', 'slim-body-san-pham-giam-can-moi-hoc-vien-quan-y/index', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 15:07:35', 1),
(16733, NULL, '66.220.149.3', '/slim-body-san-pham-giam-can-moi-hoc-vien-quan-y.html', '', 'slim-body-san-pham-giam-can-moi-hoc-vien-quan-y/index', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 0, '2018-11-11 15:07:19', 1),
(16732, NULL, '66.220.149.4', '/slim-body-san-pham-giam-can-moi-hoc-vien-quan-y.html', '', 'slim-body-san-pham-giam-can-moi-hoc-vien-quan-y/index', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 0, '2018-11-11 15:07:18', 1),
(16730, NULL, '66.220.149.4', '/slim-body-san-pham-giam-can-moi-hoc-vien-quan-y', '', 'slim-body-san-pham-giam-can-moi-hoc-vien-quan-y/index', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 0, '2018-11-11 15:07:18', 1),
(16731, NULL, '66.220.149.24', '/slim-body-san-pham-giam-can-moi-hoc-vien-quan-y', '', 'slim-body-san-pham-giam-can-moi-hoc-vien-quan-y/index', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 0, '2018-11-11 15:07:18', 1),
(16729, 1, '14.174.149.159', '/san-pham/glasscase.aspx/CheckRandomStateId', 'http://thaoduocquany103.com/san-pham/slim-body-san-pham-giam-can-moi-hoc-vien-quan-y', 'san-pham/glasscase.aspx', 'CheckRandomStateId', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 0, '2018-11-11 15:07:16', 0),
(16727, 1, '14.171.84.251', '/', 'http://www.thaoduocquany103.com/cart/cartEmpty', 'home/index', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:55:32', 0),
(16728, NULL, '14.174.149.159', '/san-pham/slim-body-san-pham-giam-can-moi-hoc-vien-quan-y', 'https://www.google.com.vn/', 'products/detail', 'dy-san-pham-giam-can-moi-hoc-vien-quan-y', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 0, '2018-11-11 15:07:07', 1),
(16725, 1, '14.171.84.251', '/shipping', 'http://www.thaoduocquany103.com/san-pham/strong-hair-hoc-vien-quan-y', 'cart/order', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:55:26', 0),
(16726, 1, '14.171.84.251', '/cart/cartEmpty', 'http://www.thaoduocquany103.com/san-pham/strong-hair-hoc-vien-quan-y', 'cart/cartEmpty', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:55:26', 0),
(16723, 1, '14.171.84.251', '/cart/sendOnpage', 'http://www.thaoduocquany103.com/shipping', 'cart/sendOnpage', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:55:02', 0),
(16724, 1, '14.171.84.251', '/dat-hang-thanh-cong.html', 'http://www.thaoduocquany103.com/shipping', 'cart/order_success', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:55:05', 0),
(16722, 1, '14.171.84.251', '/cart/tinhthanh', 'http://www.thaoduocquany103.com/shipping', 'cart/tinhthanh', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:52:59', 0),
(16721, 1, '14.171.84.251', '/assets/css/front_end/order/images/ui-bg_highlight-soft_100_eeeeee_1x100.png', 'http://www.thaoduocquany103.com/shipping', 'assets/css', 'front_end/order/images/ui-bg_highlight-soft_100_eeeeee_1x100.png', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:50:53', 0),
(16720, 1, '14.171.84.251', '/shipping', 'http://www.thaoduocquany103.com/san-pham/strong-hair-hoc-vien-quan-y', 'cart/order', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:50:53', 0),
(16719, 1, '14.171.84.251', '/cart/displayCart', 'http://www.thaoduocquany103.com/san-pham/strong-hair-hoc-vien-quan-y', 'cart/displayCart', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:50:27', 0),
(16717, 1, '14.171.84.251', '/cart/displayCart', 'http://www.thaoduocquany103.com/san-pham/strong-hair-hoc-vien-quan-y', 'cart/displayCart', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:50:23', 0),
(16718, 1, '14.171.84.251', '/cart/updateQuantityP', 'http://www.thaoduocquany103.com/san-pham/strong-hair-hoc-vien-quan-y', 'cart/updateQuantityP', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:50:26', 0),
(16716, 1, '14.171.84.251', '/cart/updateQuantityP', 'http://www.thaoduocquany103.com/san-pham/strong-hair-hoc-vien-quan-y', 'cart/updateQuantityP', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:50:22', 0),
(16715, 1, '14.171.84.251', '/cart/displayCart', 'http://www.thaoduocquany103.com/san-pham/strong-hair-hoc-vien-quan-y', 'cart/displayCart', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:49:01', 0),
(16714, 1, '14.171.84.251', '/cart/updateQuantityP', 'http://www.thaoduocquany103.com/san-pham/strong-hair-hoc-vien-quan-y', 'cart/updateQuantityP', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:49:00', 0),
(16713, 1, '14.171.84.251', '/cart/displayCart', 'http://www.thaoduocquany103.com/san-pham/strong-hair-hoc-vien-quan-y', 'cart/displayCart', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:49:00', 0),
(16712, 1, '14.171.84.251', '/cart/updateQuantityP', 'http://www.thaoduocquany103.com/san-pham/strong-hair-hoc-vien-quan-y', 'cart/updateQuantityP', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:48:59', 0),
(16711, 1, '14.171.84.251', '/cart/displayCart', 'http://www.thaoduocquany103.com/san-pham/strong-hair-hoc-vien-quan-y', 'cart/displayCart', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:48:59', 0),
(16710, 1, '14.171.84.251', '/cart/updateQuantityP', 'http://www.thaoduocquany103.com/san-pham/strong-hair-hoc-vien-quan-y', 'cart/updateQuantityP', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:48:57', 0),
(16709, 1, '14.171.84.251', '/cart/displayCart', 'http://www.thaoduocquany103.com/san-pham/strong-hair-hoc-vien-quan-y', 'cart/displayCart', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:48:57', 0),
(16708, 1, '14.171.84.251', '/cart/updateQuantityP', 'http://www.thaoduocquany103.com/san-pham/strong-hair-hoc-vien-quan-y', 'cart/updateQuantityP', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:48:56', 0),
(16707, 1, '14.171.84.251', '/assets/css/front_end/order/images/ui-bg_highlight-soft_100_eeeeee_1x100.png', 'http://www.thaoduocquany103.com/san-pham/strong-hair-hoc-vien-quan-y', 'assets/css', 'front_end/order/images/ui-bg_highlight-soft_100_eeeeee_1x100.png', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:48:43', 0),
(16706, 1, '14.171.84.251', '/cart/displayCart', 'http://www.thaoduocquany103.com/san-pham/strong-hair-hoc-vien-quan-y', 'cart/displayCart', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:48:43', 0),
(16705, 1, '14.171.84.251', '/assets/css/front_end/img/loader.gif', 'http://www.thaoduocquany103.com/san-pham/strong-hair-hoc-vien-quan-y', 'assets/css', 'front_end/img/loader.gif', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:48:42', 0),
(16704, 1, '14.171.84.251', '/cart/addCartItemSelect', 'http://www.thaoduocquany103.com/san-pham/strong-hair-hoc-vien-quan-y', 'cart/addCartItemSelect', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:48:41', 0),
(16703, NULL, '173.252.87.10', '/strong-hair-hoc-vien-quan-y.html', '', 'strong-hair-hoc-vien-quan-y/index', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 0, '2018-11-11 11:48:39', 1),
(16701, NULL, '173.252.87.4', '/strong-hair-hoc-vien-quan-y', '', 'strong-hair-hoc-vien-quan-y/index', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 0, '2018-11-11 11:48:39', 1),
(16702, NULL, '173.252.87.14', '/strong-hair-hoc-vien-quan-y.html', '', 'strong-hair-hoc-vien-quan-y/index', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 0, '2018-11-11 11:48:39', 1),
(16699, 1, '14.171.84.251', '/san-pham/glasscase.aspx/CheckRandomStateId', 'http://www.thaoduocquany103.com/san-pham/strong-hair-hoc-vien-quan-y', 'san-pham/glasscase.aspx', 'CheckRandomStateId', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:48:36', 0),
(16700, NULL, '173.252.87.14', '/strong-hair-hoc-vien-quan-y', '', 'strong-hair-hoc-vien-quan-y/index', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 0, '2018-11-11 11:48:38', 1),
(16698, 1, '14.171.84.251', '/san-pham/strong-hair-hoc-vien-quan-y', 'http://www.thaoduocquany103.com/', 'products/detail', 'hair-hoc-vien-quan-y', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:48:35', 0),
(16697, 1, '14.171.84.251', '/', 'http://www.thaoduocquany103.com/', 'home/index', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:48:30', 0),
(16696, 1, '14.171.84.251', '/danh-muc/xuong-khop-tieu-duong-da-day-thai-doc?sort=order_qty&order=desc', 'http://www.thaoduocquany103.com/', 'products/pro_bycategory', '-duong-da-day-thai-doc', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:48:19', 0),
(16695, 1, '14.171.84.251', '/', 'http://www.thaoduocquany103.com/', 'home/index', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:47:39', 0),
(16693, NULL, '14.171.84.251', '/', '', 'home/index', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:46:30', 1),
(16694, 1, '14.171.84.251', '/cart/quick_buy2/206', 'http://www.thaoduocquany103.com/', 'cart/quick_buy2', '206', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 0, '2018-11-11 11:47:39', 0),
(16692, NULL, '173.252.95.7', '/slim-body-san-pham-giam-can-moi-hoc-vien-quan-y.html', '', 'slim-body-san-pham-giam-can-moi-hoc-vien-quan-y/index', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 0, '2018-11-11 11:30:03', 1),
(16691, NULL, '173.252.95.10', '/slim-body-san-pham-giam-can-moi-hoc-vien-quan-y', '', 'slim-body-san-pham-giam-can-moi-hoc-vien-quan-y/index', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 0, '2018-11-11 11:30:02', 1),
(16689, NULL, '173.252.87.12', '/detoxic-san-pham-diet-ky-sinh-trung-va-cai-thien-tieu-hoa.html', '', 'detoxic-san-pham-diet-ky-sinh-trung-va-cai-thien-tieu-hoa/index', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 0, '2018-11-11 09:55:28', 1),
(16690, 1, '66.249.82.125', '/', '', 'home/index', '', 'Mozilla/5.0 (Linux; Android 7.1.1; CPH1725) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.80 Mobile Safari/537.36', 0, '2018-11-11 10:24:46', 0),
(16688, NULL, '173.252.87.15', '/detoxic-san-pham-diet-ky-sinh-trung-va-cai-thien-tieu-hoa.html', '', 'detoxic-san-pham-diet-ky-sinh-trung-va-cai-thien-tieu-hoa/index', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 0, '2018-11-11 09:55:27', 1),
(16687, NULL, '173.252.87.9', '/detoxic-san-pham-diet-ky-sinh-trung-va-cai-thien-tieu-hoa', '', 'detoxic-san-pham-diet-ky-sinh-trung-va-cai-thien-tieu-hoa/index', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 0, '2018-11-11 09:55:27', 1),
(16686, NULL, '173.252.87.10', '/detoxic-san-pham-diet-ky-sinh-trung-va-cai-thien-tieu-hoa', '', 'detoxic-san-pham-diet-ky-sinh-trung-va-cai-thien-tieu-hoa/index', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 0, '2018-11-11 09:55:27', 1),
(16685, 1, '116.96.248.231', '/san-pham/glasscase.aspx/CheckRandomStateId', 'http://www.thaoduocquany103.com/san-pham/detoxic-san-pham-diet-ky-sinh-trung-va-cai-thien-tieu-hoa', 'san-pham/glasscase.aspx', 'CheckRandomStateId', 'Mozilla/5.0 (Linux; Android 7.1.1; CPH1725) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.80 Mobile Safari/537.36', 0, '2018-11-11 09:55:25', 0),
(16683, 1, '116.96.248.231', '/load-view', 'http://www.thaoduocquany103.com/', 'products/laod_view', '', 'Mozilla/5.0 (Linux; Android 7.1.1; CPH1725) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.80 Mobile Safari/537.36', 0, '2018-11-11 09:54:46', 0),
(16684, 1, '66.249.82.125', '/san-pham/detoxic-san-pham-diet-ky-sinh-trung-va-cai-thien-tieu-hoa', 'http://www.thaoduocquany103.com/', 'products/detail', '-san-pham-diet-ky-sinh-trung-va-cai-thien-tieu-hoa', 'Mozilla/5.0 (Linux; Android 7.1.1; CPH1725) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.80 Mobile Safari/537.36', 0, '2018-11-11 09:55:22', 0),
(16682, NULL, '66.249.82.125', '/', '', 'home/index', '', 'Mozilla/5.0 (Linux; Android 7.1.1; CPH1725) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.80 Mobile Safari/537.36', 0, '2018-11-11 09:54:37', 1),
(16681, 1, '27.67.184.174', '/tim-kiem?key=Nano%20Fucomin%20H%E1%BB%8Dc%20Vi%E1%BB%87n%20Qu%C3%A2n%20Y', 'https://www.google.com/search?q=thao+duoc+vien+quan+y+103&hl=vi-VN&prmd=ivns&ei=7PbnW4zuLofO8wXh8Kr4BA&start=10&sa=N', 'search/searchPro', '', 'Mozilla/5.0 (BB10; Kbd) AppleWebKit/537.35+ (KHTML, like Gecko) Version/10.3.3.2205 Mobile Safari/537.35+', 0, '2018-11-11 09:33:25', 0),
(16680, 1, '27.67.184.174', '/nano-fucomin-hoc-vien-quan-y', 'http://thaoduocquany103.com/tim-kiem?key=Nano%20Fucomin%20H%E1%BB%8Dc%20Vi%E1%BB%87n%20Qu%C3%A2n%20Y', 'nano-fucomin-hoc-vien-quan-y/index', '', 'Mozilla/5.0 (BB10; Kbd) AppleWebKit/537.35+ (KHTML, like Gecko) Version/10.3.3.2205 Mobile Safari/537.35+', 0, '2018-11-11 09:33:20', 0),
(16679, 1, '27.67.184.174', '/tim-kiem?key=Nano%20Fucomin%20H%E1%BB%8Dc%20Vi%E1%BB%87n%20Qu%C3%A2n%20Y', 'https://www.google.com/search?q=thao+duoc+vien+quan+y+103&hl=vi-VN&prmd=ivns&ei=7PbnW4zuLofO8wXh8Kr4BA&start=10&sa=N', 'search/searchPro', '', 'Mozilla/5.0 (BB10; Kbd) AppleWebKit/537.35+ (KHTML, like Gecko) Version/10.3.3.2205 Mobile Safari/537.35+', 0, '2018-11-11 09:33:16', 0),
(16678, 1, '27.67.184.174', '/danh-muc/giam-can-lam-dep.html', 'http://thaoduocquany103.com/tim-kiem?key=Nano%20Fucomin%20H%E1%BB%8Dc%20Vi%E1%BB%87n%20Qu%C3%A2n%20Y', 'products/pro_bycategory', 'p', 'Mozilla/5.0 (BB10; Kbd) AppleWebKit/537.35+ (KHTML, like Gecko) Version/10.3.3.2205 Mobile Safari/537.35+', 0, '2018-11-11 09:33:11', 0),
(16677, 1, '27.67.184.174', '/favicon.ico', 'http://thaoduocquany103.com/danh-muc/giam-can-lam-dep.html', 'favicon.ico/index', '', 'Mozilla/5.0 (BB10; Kbd) AppleWebKit/537.35+ (KHTML, like Gecko) Version/10.3.3.2205 Mobile Safari/537.35+', 0, '2018-11-11 09:33:10', 0),
(16675, NULL, '27.67.184.174', '/tim-kiem?key=Nano%20Fucomin%20H%E1%BB%8Dc%20Vi%E1%BB%87n%20Qu%C3%A2n%20Y', 'https://www.google.com/search?q=thao+duoc+vien+quan+y+103&hl=vi-VN&prmd=ivns&ei=7PbnW4zuLofO8wXh8Kr4BA&start=10&sa=N', 'search/searchPro', '', 'Mozilla/5.0 (BB10; Kbd) AppleWebKit/537.35+ (KHTML, like Gecko) Version/10.3.3.2205 Mobile Safari/537.35+', 0, '2018-11-11 09:32:31', 1),
(16676, 1, '27.67.184.174', '/danh-muc/giam-can-lam-dep.html', 'http://thaoduocquany103.com/tim-kiem?key=Nano%20Fucomin%20H%E1%BB%8Dc%20Vi%E1%BB%87n%20Qu%C3%A2n%20Y', 'products/pro_bycategory', 'p', 'Mozilla/5.0 (BB10; Kbd) AppleWebKit/537.35+ (KHTML, like Gecko) Version/10.3.3.2205 Mobile Safari/537.35+', 0, '2018-11-11 09:33:07', 0),
(16674, NULL, '64.74.215.139', '/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.76 Safari/537.36', 0, '2018-11-11 04:09:26', 1),
(16672, 1, '113.20.98.240', '/apple-touch-icon.png', '', 'apple-touch-icon.png/index', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_0_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13A404', 0, '2018-11-11 02:42:24', 0),
(16673, NULL, '171.224.105.255', '/?utm_source=zalo&utm_medium=zalo&utm_campaign=zalo&zarsrc=30', '', 'home/index', '', 'Mozilla/5.0 (Linux; Android 7.0; SM-J730G Build/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/70.0.3538.80 Mobile Safari/537.36 Zalo/1.0', 0, '2018-11-11 02:48:00', 1),
(16670, NULL, '113.20.98.240', '/apple-touch-icon-120x120-precomposed.png', '', 'apple-touch-icon-120x120-precomposed.png/index', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_0_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13A404', 0, '2018-11-11 02:42:23', 1),
(16671, 1, '113.20.98.240', '/apple-touch-icon-120x120.png', '', 'apple-touch-icon-120x120.png/index', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_0_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13A404', 0, '2018-11-11 02:42:23', 0),
(16669, NULL, '113.20.98.240', '/', '', 'home/index', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_0_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13A404', 0, '2018-11-11 02:42:22', 1),
(17088, NULL, '188.72.95.56', '/', 'http://thaoduocquany103.com', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.57 Safari/537.36', 0, '2018-11-12 10:01:13', 1),
(17086, 1, '123.16.13.3', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/order/orders', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:07:16', 0),
(17087, NULL, '207.241.225.215', '/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:37:38', 1),
(17085, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/order/orders', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:07:16', 0),
(17084, 1, '123.16.13.3', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/order/orders', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:07:16', 0),
(17083, 1, '113.20.122.234', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/order/orders', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:07:16', 0),
(17082, 1, '113.20.122.234', '/vnsadmin/order/orders', 'http://thaoduocquany103.com/vnsadmin/admin/site_option', 'order/orders', 'r/orders', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:07:16', 0),
(17079, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/admin/site_option', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:06:27', 0),
(17080, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/admin/site_option', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:06:27', 0),
(17081, 1, '123.16.13.3', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/admin/site_option', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:06:28', 0),
(17076, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/imageupload/banners', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:06:07', 0),
(17077, 1, '123.16.13.3', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/imageupload/banners', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:06:07', 0),
(17078, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/admin/site_option', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:06:27', 0),
(17075, 1, '123.16.13.3', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/imageupload/banners', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:06:07', 0),
(17072, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/news/newslist', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:05:55', 0),
(17073, 1, '113.20.122.234', '/vnsadmin/imageupload/banners', 'http://thaoduocquany103.com/vnsadmin/news/newslist', 'imageupload/banners', '/banners', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:06:07', 0),
(17074, 1, '113.20.122.234', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/imageupload/banners', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:06:07', 0),
(17071, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/news/newslist', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:05:55', 0),
(17070, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/news/newslist', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:05:55', 0),
(17068, 1, '123.16.13.3', '/vnsadmin/news/newslist', 'http://thaoduocquany103.com/vnsadmin/news/categories', 'news/newslist', 'newslist', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:05:55', 0),
(17069, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/news/newslist', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:05:55', 0),
(17065, 1, '123.16.13.3', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/news/categories', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:05:42', 0),
(17066, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/news/categories', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:05:42', 0),
(17067, 1, '113.20.122.234', '/img/noimage.jpg', 'http://thaoduocquany103.com/vnsadmin/news/categories', 'img/noimage.jpg', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:05:42', 0),
(17064, 1, '123.16.13.3', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/news/categories', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:05:42', 0),
(17061, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/order/orders', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:03:38', 0),
(17062, 1, '113.20.122.234', '/vnsadmin/news/categories', 'http://thaoduocquany103.com/vnsadmin/order/orders', 'news/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:05:42', 0),
(17063, 1, '113.20.122.234', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/news/categories', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:05:42', 0),
(17060, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/order/orders', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:03:38', 0),
(17059, 1, '123.16.13.3', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/order/orders', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:03:38', 0),
(17057, 1, '113.20.122.234', '/vnsadmin/order/orders', 'http://thaoduocquany103.com/vnsadmin/product/categories', 'order/orders', 'r/orders', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:03:38', 0),
(17058, 1, '113.20.122.234', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/order/orders', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:03:38', 0),
(17056, 1, '123.16.13.3', '/ajax/ajax/update_fill', 'http://thaoduocquany103.com/vnsadmin/product/categories', 'ajax/update_fill', 'fill', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:03:02', 0),
(17055, 1, '123.16.13.3', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/categories', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:56', 0),
(17054, 1, '113.20.122.234', '/img/noimage.jpg', 'http://thaoduocquany103.com/vnsadmin/product/categories', 'img/noimage.jpg', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:56', 0),
(17052, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/categories', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:56', 0),
(17053, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/categories', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:56', 0),
(17050, 1, '113.20.122.234', '/vnsadmin/product/categories', 'http://thaoduocquany103.com/vnsadmin/product/products', 'product/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:56', 0),
(17051, 1, '113.20.122.234', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/categories', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:56', 0),
(17048, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:55', 0),
(17049, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:55', 0),
(17045, 1, '123.16.13.3', '/vnsadmin/product/products', 'http://thaoduocquany103.com/vnsadmin/product/edit/237', 'product/products', 'products', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:55', 0),
(17046, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:55', 0),
(17047, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:55', 0),
(17044, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/237', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:47', 0),
(17039, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:42', 0),
(17040, 1, '113.20.122.234', '/vnsadmin/product/edit/237', 'http://thaoduocquany103.com/vnsadmin/product/products', 'product/edit', 'uct/edit/237', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:47', 0),
(17041, 1, '113.20.122.234', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/237', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:47', 0),
(17043, 1, '123.16.13.3', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/237', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:47', 0),
(17042, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/237', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:47', 0),
(17038, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:42', 0),
(17037, 1, '123.16.13.3', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:42', 0),
(17035, 1, '123.16.13.3', '/vnsadmin/product/products', 'http://thaoduocquany103.com/vnsadmin/product/edit/235', 'product/products', 'products', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:42', 0),
(17036, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:42', 0),
(17034, 1, '113.20.122.234', '/vnsadmin/product/edit/235', 'http://thaoduocquany103.com/vnsadmin/product/edit/235', 'product/edit', 'uct/edit/235', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:41', 0),
(17033, 1, '123.16.13.3', '/vnsadmin/alias/checkEdit', 'http://thaoduocquany103.com/vnsadmin/product/edit/235', 'alias/checkEdit', 'heckEdit', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:40', 0),
(17032, 1, '113.20.122.234', '/vnsadmin/product/products', 'http://thaoduocquany103.com/vnsadmin/product/edit/235', 'product/products', 'products', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:39', 0),
(17030, 1, '123.16.13.3', '/vnsadmin/product/edit/235', 'http://thaoduocquany103.com/vnsadmin/product/edit/235', 'product/edit', 'uct/edit/235', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:38', 0),
(17031, 1, '123.16.13.3', '/vnsadmin/alias/checkEdit', 'http://thaoduocquany103.com/vnsadmin/product/edit/235', 'alias/checkEdit', 'heckEdit', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:39', 0),
(17026, 1, '123.16.13.3', '/vnsadmin/alias/checkEdit', 'http://thaoduocquany103.com/vnsadmin/product/edit/235', 'alias/checkEdit', 'heckEdit', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:33', 0),
(17027, 1, '123.16.13.3', '/vnsadmin/product/edit/235', 'http://thaoduocquany103.com/vnsadmin/product/edit/235', 'product/edit', 'uct/edit/235', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:35', 0),
(17028, 1, '123.16.13.3', '/vnsadmin/alias/checkEdit', 'http://thaoduocquany103.com/vnsadmin/product/edit/235', 'alias/checkEdit', 'heckEdit', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:36', 0),
(17029, 1, '123.16.13.3', '/vnsadmin/product/products', 'http://thaoduocquany103.com/vnsadmin/product/edit/235', 'product/products', 'products', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:36', 0),
(17025, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/235', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:14', 0),
(17023, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/235', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:14', 0),
(17024, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/235', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:14', 0),
(17022, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/235', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:14', 0),
(17021, 1, '123.16.13.3', '/vnsadmin/product/edit/235', 'http://thaoduocquany103.com/vnsadmin/product/products', 'product/edit', 'uct/edit/235', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:14', 0),
(17019, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:07', 0),
(17020, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:07', 0),
(17018, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:07', 0),
(17016, 1, '123.16.13.3', '/vnsadmin/product/products', 'http://thaoduocquany103.com/vnsadmin/news/newslist', 'product/products', 'products', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:07', 0),
(17017, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:02:07', 0),
(17015, 1, '123.16.13.3', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/news/newslist', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:01:56', 0),
(17014, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/news/newslist', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:01:56', 0),
(17012, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/news/newslist', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:01:55', 0),
(17013, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/news/newslist', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:01:56', 0),
(17010, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/contact/contacts', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:01:30', 0),
(17011, 1, '123.16.13.3', '/vnsadmin/news/newslist', 'http://thaoduocquany103.com/vnsadmin/contact/contacts', 'news/newslist', 'newslist', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:01:55', 0),
(17009, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/contact/contacts', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:01:30', 0),
(17008, 1, '123.16.13.3', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/contact/contacts', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:01:30', 0),
(17007, 1, '113.20.122.234', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/contact/contacts', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:01:30', 0),
(17006, 1, '113.20.122.234', '/vnsadmin/contact/contacts', 'http://thaoduocquany103.com/vnsadmin/contact/contacts', 'contact/contacts', 'contacts', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:01:30', 0),
(17005, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/contact/contacts', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:01:21', 0),
(17003, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/contact/contacts', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:01:21', 0),
(17004, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/contact/contacts', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:01:21', 0),
(17002, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/contact/contacts', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:01:21', 0),
(17001, 1, '123.16.13.3', '/vnsadmin/contact/contacts', 'http://thaoduocquany103.com/vnsadmin', 'contact/contacts', 'contacts', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:01:21', 0),
(17000, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:01:05', 0),
(16998, 1, '123.16.13.3', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:01:05', 0),
(16999, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:01:05', 0),
(16996, NULL, '113.20.122.234', '/vnsadmin', 'http://thaoduocquany103.com/vnsadmin/product/products', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:00:56', 1),
(16997, 1, '113.20.122.234', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 07:01:05', 0),
(16993, NULL, '119.81.196.46', '/xmlrpc.php', '', 'xmlrpc.php/index', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 0, '2018-11-12 05:28:57', 1),
(16994, NULL, '109.71.41.144', '/xmlrpc.php', '', 'xmlrpc.php/index', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 0, '2018-11-12 05:34:05', 1),
(16995, NULL, '212.85.137.211', '/xmlrpc.php', '', 'xmlrpc.php/index', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 0, '2018-11-12 05:39:15', 1),
(16991, 1, '123.16.13.3', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:52', 0);
INSERT INTO `site_log` (`site_log_id`, `no_of_visits`, `ip_address`, `requested_url`, `referer_page`, `page_name`, `query_string`, `user_agent`, `is_unique`, `access_date`, `visits_count`) VALUES
(16992, NULL, '213.251.182.115', '/xmlrpc.php', '', 'xmlrpc.php/index', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36', 0, '2018-11-12 05:22:44', 1),
(16989, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:52', 0),
(16990, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:52', 0),
(16988, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:52', 0),
(16985, 1, '123.16.13.3', '/vnsadmin/alias/checkEdit', 'http://thaoduocquany103.com/vnsadmin/product/edit/223', 'alias/checkEdit', 'heckEdit', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:50', 0),
(16986, 1, '123.16.13.3', '/vnsadmin/product/edit/223', 'http://thaoduocquany103.com/vnsadmin/product/edit/223', 'product/edit', 'uct/edit/223', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:51', 0),
(16987, 1, '123.16.13.3', '/vnsadmin/product/products', 'http://thaoduocquany103.com/vnsadmin/product/edit/223', 'product/products', 'products', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:51', 0),
(16984, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/223', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:42', 0),
(16983, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/223', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:42', 0),
(16981, 1, '113.20.122.234', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/223', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:42', 0),
(16982, 1, '123.16.13.3', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/223', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:42', 0),
(16980, 1, '113.20.122.234', '/vnsadmin/product/edit/223', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'product/edit', 'uct/edit/223', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:42', 0),
(16979, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:39', 0),
(16978, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:39', 0),
(16976, 1, '113.20.122.234', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:39', 0),
(16977, 1, '123.16.13.3', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:39', 0),
(16975, 1, '113.20.122.234', '/vnsadmin/product/products/20', 'http://thaoduocquany103.com/vnsadmin/product/products', 'product/products', 'products/20', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:39', 0),
(16974, 1, '123.16.13.3', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:35', 0),
(16973, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:35', 0),
(16972, 1, '123.16.13.3', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:35', 0),
(16969, 1, '113.20.122.234', '/vnsadmin/product/edit/222', 'http://thaoduocquany103.com/vnsadmin/product/edit/222', 'product/edit', 'uct/edit/222', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:35', 0),
(16970, 1, '113.20.122.234', '/vnsadmin/product/products', 'http://thaoduocquany103.com/vnsadmin/product/edit/222', 'product/products', 'products', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:35', 0),
(16971, 1, '113.20.122.234', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:35', 0),
(16968, 1, '123.16.13.3', '/vnsadmin/alias/checkEdit', 'http://thaoduocquany103.com/vnsadmin/product/edit/222', 'alias/checkEdit', 'heckEdit', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:34', 0),
(16967, 1, '123.16.13.3', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/222', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:25', 0),
(16966, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/222', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:25', 0),
(16962, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:19', 0),
(16963, 1, '123.16.13.3', '/vnsadmin/product/edit/222', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'product/edit', 'uct/edit/222', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:25', 0),
(16964, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/222', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:25', 0),
(16965, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/222', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:25', 0),
(16960, 1, '123.16.13.3', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:19', 0),
(16961, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:19', 0),
(16959, 1, '113.20.122.234', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:19', 0),
(16958, 1, '113.20.122.234', '/vnsadmin/product/products/20', 'http://thaoduocquany103.com/vnsadmin/product/products', 'product/products', 'products/20', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:19', 0),
(16957, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:10', 0),
(16954, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:10', 0),
(16955, 1, '123.16.13.3', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:10', 0),
(16956, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:10', 0),
(16952, 1, '123.16.13.3', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:21:23', 0),
(16953, 1, '123.16.13.3', '/vnsadmin/product/products', 'http://thaoduocquany103.com/vnsadmin/product/edit/217', 'product/products', 'products', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:47:10', 0),
(16951, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:21:23', 0),
(16948, 1, '113.20.122.234', '/vnsadmin/product/products', 'http://thaoduocquany103.com/vnsadmin/product/edit/217', 'product/products', 'products', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:21:23', 0),
(16949, 1, '123.16.13.3', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:21:23', 0),
(16950, 1, '113.20.122.234', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:21:23', 0),
(16947, 1, '113.20.122.234', '/vnsadmin/product/edit/217', 'http://thaoduocquany103.com/vnsadmin/product/edit/217', 'product/edit', 'uct/edit/217', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:21:23', 0),
(16945, 1, '123.16.13.3', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/217', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:21:14', 0),
(16946, 1, '113.20.122.234', '/vnsadmin/alias/checkEdit', 'http://thaoduocquany103.com/vnsadmin/product/edit/217', 'alias/checkEdit', 'heckEdit', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:21:21', 0),
(16943, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/217', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:21:14', 0),
(16944, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/217', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:21:14', 0),
(16942, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/217', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:21:14', 0),
(16939, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:21:01', 0),
(16941, 1, '123.16.13.3', '/vnsadmin/product/edit/217', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'product/edit', 'uct/edit/217', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:21:14', 0),
(16940, 1, '123.16.13.3', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:21:01', 0),
(16938, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:21:01', 0),
(16935, 1, '123.16.13.3', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:58', 0),
(16936, 1, '123.16.13.3', '/vnsadmin/product/products/20', 'http://thaoduocquany103.com/vnsadmin/product/products', 'product/products', 'products/20', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:21:01', 0),
(16937, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:21:01', 0),
(16934, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:58', 0),
(16933, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:58', 0),
(16932, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:58', 0),
(16931, 1, '123.16.13.3', '/vnsadmin/product/products', 'http://thaoduocquany103.com/vnsadmin/product/edit/214', 'product/products', 'products', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:58', 0),
(16930, 1, '123.16.13.3', '/vnsadmin/product/edit/214', 'http://thaoduocquany103.com/vnsadmin/product/edit/214', 'product/edit', 'uct/edit/214', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:58', 0),
(16929, 1, '123.16.13.3', '/vnsadmin/alias/checkEdit', 'http://thaoduocquany103.com/vnsadmin/product/edit/214', 'alias/checkEdit', 'heckEdit', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:57', 0),
(16928, 1, '113.20.122.234', '/uploads/shops/2016_08/thuoc-dieu-tri-benh-thoat-vi-dia-dem-3.jpg', 'http://thaoduocquany103.com/vnsadmin/product/edit/214', 'uploads/shops', '2016_08/thuoc-dieu-tri-benh-thoat-vi-dia-dem-3.jpg', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:51', 0),
(16927, 1, '123.16.13.3', '/uploads/shops/2016_08/thuoc-dieu-tri-benh-thoat-vi-dia-dem-4.jpg', 'http://thaoduocquany103.com/vnsadmin/product/edit/214', 'uploads/shops', '2016_08/thuoc-dieu-tri-benh-thoat-vi-dia-dem-4.jpg', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:51', 0),
(16923, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/214', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:50', 0),
(16924, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/214', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:50', 0),
(16925, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/214', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:50', 0),
(16926, 1, '123.16.13.3', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/214', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:50', 0),
(16922, 1, '123.16.13.3', '/vnsadmin/product/edit/214', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'product/edit', 'uct/edit/214', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:50', 0),
(16921, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:47', 0),
(16920, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:47', 0),
(16919, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:47', 0),
(16917, 1, '123.16.13.3', '/vnsadmin/product/products/20', 'http://thaoduocquany103.com/vnsadmin/product/products', 'product/products', 'products/20', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:47', 0),
(16918, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:47', 0),
(16916, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:44', 0),
(16915, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:44', 0),
(16914, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:44', 0),
(16913, 1, '113.20.122.234', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:44', 0),
(16912, 1, '113.20.122.234', '/vnsadmin/product/products', 'http://thaoduocquany103.com/vnsadmin/product/edit/211', 'product/products', 'products', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:44', 0),
(16911, 1, '113.20.122.234', '/vnsadmin/product/edit/211', 'http://thaoduocquany103.com/vnsadmin/product/edit/211', 'product/edit', 'uct/edit/211', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:44', 0),
(16909, 1, '123.16.13.3', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/211', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:33', 0),
(16910, 1, '113.20.122.234', '/vnsadmin/alias/checkEdit', 'http://thaoduocquany103.com/vnsadmin/product/edit/211', 'alias/checkEdit', 'heckEdit', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:43', 0),
(16908, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/211', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:33', 0),
(16907, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/211', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:33', 0),
(16906, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/211', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:33', 0),
(16905, 1, '123.16.13.3', '/vnsadmin/product/edit/211', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'product/edit', 'uct/edit/211', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:33', 0),
(16904, 1, '123.16.13.3', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:25', 0),
(16903, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:25', 0),
(16902, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:25', 0),
(16901, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:25', 0),
(16900, 1, '123.16.13.3', '/vnsadmin/product/products/20', 'http://thaoduocquany103.com/vnsadmin/product/products', 'product/products', 'products/20', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:25', 0),
(16899, 1, '123.16.13.3', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:22', 0),
(16898, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:22', 0),
(16897, 1, '123.16.13.3', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:22', 0),
(16896, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:21', 0),
(16895, 1, '123.16.13.3', '/vnsadmin/product/products', 'http://thaoduocquany103.com/vnsadmin/product/edit/206', 'product/products', 'products', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:21', 0),
(16894, 1, '123.16.13.3', '/vnsadmin/product/edit/206', 'http://thaoduocquany103.com/vnsadmin/product/edit/206', 'product/edit', 'uct/edit/206', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:21', 0),
(16893, 1, '123.16.13.3', '/vnsadmin/alias/checkEdit', 'http://thaoduocquany103.com/vnsadmin/product/edit/206', 'alias/checkEdit', 'heckEdit', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:20', 0),
(16892, 1, '123.16.13.3', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/206', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:11', 0),
(16891, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/206', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:11', 0),
(16888, 1, '113.20.122.234', '/vnsadmin/product/edit/206', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'product/edit', 'uct/edit/206', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:11', 0),
(16889, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/206', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:11', 0),
(16890, 1, '113.20.122.234', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/206', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:11', 0),
(16887, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:07', 0),
(16886, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:07', 0),
(16885, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:07', 0),
(16883, 1, '113.20.122.234', '/vnsadmin/product/products/20', 'http://thaoduocquany103.com/vnsadmin/product/products', 'product/products', 'products/20', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:07', 0),
(16884, 1, '113.20.122.234', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/products/20', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 04:20:07', 0),
(16882, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:57:52', 0),
(16880, 1, '123.16.13.3', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:57:52', 0),
(16881, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:57:52', 0),
(16879, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:57:52', 0),
(16875, 1, '123.16.13.3', '/vnsadmin/product/edit/224', 'http://thaoduocquany103.com/vnsadmin/product/edit/224', 'product/edit', 'uct/edit/224', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:57:47', 0),
(16876, 1, '123.16.13.3', '/vnsadmin/alias/checkEdit', 'http://thaoduocquany103.com/vnsadmin/product/edit/224', 'alias/checkEdit', 'heckEdit', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:57:49', 0),
(16877, 1, '123.16.13.3', '/vnsadmin/product/edit/224', 'http://thaoduocquany103.com/vnsadmin/product/edit/224', 'product/edit', 'uct/edit/224', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:57:50', 0),
(16878, 1, '123.16.13.3', '/vnsadmin/product/products', 'http://thaoduocquany103.com/vnsadmin/product/edit/224', 'product/products', 'products', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:57:51', 0),
(16873, 1, '123.16.13.3', '/vnsadmin/alias/checkEdit', 'http://thaoduocquany103.com/vnsadmin/product/edit/224', 'alias/checkEdit', 'heckEdit', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:57:46', 0),
(16874, 1, '123.16.13.3', '/vnsadmin/product/products', 'http://thaoduocquany103.com/vnsadmin/product/edit/224', 'product/products', 'products', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:57:46', 0),
(16872, 1, '123.16.13.3', '/vnsadmin/product/edit/224', 'http://thaoduocquany103.com/vnsadmin/product/edit/224', 'product/edit', 'uct/edit/224', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:57:45', 0),
(16870, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/224', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:57:35', 0),
(16871, 1, '123.16.13.3', '/vnsadmin/alias/checkEdit', 'http://thaoduocquany103.com/vnsadmin/product/edit/224', 'alias/checkEdit', 'heckEdit', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:57:43', 0),
(16869, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/224', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:57:35', 0),
(16868, 1, '123.16.13.3', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/224', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:57:35', 0),
(16866, 1, '113.20.122.234', '/vnsadmin/product/edit/224', 'http://thaoduocquany103.com/vnsadmin/product/products', 'product/edit', 'uct/edit/224', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:57:35', 0),
(16867, 1, '113.20.122.234', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/224', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:57:35', 0),
(16865, 1, '123.16.13.3', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:57:32', 0),
(16864, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:57:32', 0),
(16863, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:57:32', 0),
(16861, 1, '123.16.13.3', '/vnsadmin/product/products', 'http://thaoduocquany103.com/vnsadmin/product/edit/225', 'product/products', 'products', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:57:31', 0),
(16862, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:57:32', 0),
(16860, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/225', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:50', 0),
(16858, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/225', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:50', 0),
(16859, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/225', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:50', 0),
(16854, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:45', 0),
(16855, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:45', 0),
(16857, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/225', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:50', 0),
(16856, 1, '123.16.13.3', '/vnsadmin/product/edit/225', 'http://thaoduocquany103.com/vnsadmin/product/products', 'product/edit', 'uct/edit/225', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:50', 0),
(16853, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:45', 0),
(16852, 1, '113.20.122.234', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:45', 0),
(16851, 1, '113.20.122.234', '/vnsadmin/product/products', 'http://thaoduocquany103.com/vnsadmin/product/edit/226', 'product/products', 'products', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:45', 0),
(16850, 1, '113.20.122.234', '/vnsadmin/product/edit/226', 'http://thaoduocquany103.com/vnsadmin/product/edit/226', 'product/edit', 'uct/edit/226', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:45', 0),
(16848, 1, '113.20.122.234', '/vnsadmin/alias/checkEdit', 'http://thaoduocquany103.com/vnsadmin/product/edit/226', 'alias/checkEdit', 'heckEdit', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:44', 0),
(16849, 1, '123.16.13.3', '/vnsadmin/product/products', 'http://thaoduocquany103.com/vnsadmin/product/edit/226', 'product/products', 'products', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:44', 0),
(16845, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/226', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:32', 0),
(16846, 1, '123.16.13.3', '/vnsadmin/alias/checkEdit', 'http://thaoduocquany103.com/vnsadmin/product/edit/226', 'alias/checkEdit', 'heckEdit', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:41', 0),
(16847, 1, '123.16.13.3', '/vnsadmin/product/edit/226', 'http://thaoduocquany103.com/vnsadmin/product/edit/226', 'product/edit', 'uct/edit/226', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:43', 0),
(16844, 1, '123.16.13.3', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/226', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:32', 0),
(16843, 1, '123.16.13.3', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/226', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:32', 0),
(16842, 1, '113.20.122.234', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/226', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:32', 0),
(16839, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:28', 0),
(16841, 1, '113.20.122.234', '/vnsadmin/product/edit/226', 'http://thaoduocquany103.com/vnsadmin/product/products', 'product/edit', 'uct/edit/226', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:32', 0),
(16840, 1, '123.16.13.3', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:28', 0),
(16838, 1, '123.16.13.3', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:28', 0),
(16835, 1, '123.16.13.3', '/vnsadmin/product/edit/227', 'http://thaoduocquany103.com/vnsadmin/product/edit/227', 'product/edit', 'uct/edit/227', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:28', 0),
(16836, 1, '123.16.13.3', '/vnsadmin/product/products', 'http://thaoduocquany103.com/vnsadmin/product/edit/227', 'product/products', 'products', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:28', 0),
(16837, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:28', 0),
(16833, 1, '123.16.13.3', '/vnsadmin/alias/checkEdit', 'http://thaoduocquany103.com/vnsadmin/product/edit/227', 'alias/checkEdit', 'heckEdit', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:26', 0),
(16834, 1, '123.16.13.3', '/vnsadmin/product/products', 'http://thaoduocquany103.com/vnsadmin/product/edit/227', 'product/products', 'products', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:26', 0),
(16830, 1, '123.16.13.3', '/vnsadmin/product/products', 'http://thaoduocquany103.com/vnsadmin/product/edit/227', 'product/products', 'products', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:23', 0),
(16831, 1, '123.16.13.3', '/vnsadmin/alias/checkEdit', 'http://thaoduocquany103.com/vnsadmin/product/edit/227', 'alias/checkEdit', 'heckEdit', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:24', 0),
(16832, 1, '123.16.13.3', '/vnsadmin/product/edit/227', 'http://thaoduocquany103.com/vnsadmin/product/edit/227', 'product/edit', 'uct/edit/227', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:25', 0),
(16827, 1, '123.16.13.3', '/vnsadmin/alias/checkEdit', 'http://thaoduocquany103.com/vnsadmin/product/edit/227', 'alias/checkEdit', 'heckEdit', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:20', 0),
(16828, 1, '123.16.13.3', '/vnsadmin/product/edit/227', 'http://thaoduocquany103.com/vnsadmin/product/edit/227', 'product/edit', 'uct/edit/227', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:21', 0),
(16829, 1, '123.16.13.3', '/vnsadmin/alias/checkEdit', 'http://thaoduocquany103.com/vnsadmin/product/edit/227', 'alias/checkEdit', 'heckEdit', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:23', 0),
(16826, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/227', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:12', 0),
(16825, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/227', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:12', 0),
(16824, 1, '123.16.13.3', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/227', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:12', 0),
(16821, 1, '123.16.13.3', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:08', 0),
(16822, 1, '113.20.122.234', '/vnsadmin/product/edit/227', 'http://thaoduocquany103.com/vnsadmin/product/products', 'product/edit', 'uct/edit/227', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:12', 0),
(16823, 1, '113.20.122.234', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/227', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:12', 0),
(16820, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:08', 0);
INSERT INTO `site_log` (`site_log_id`, `no_of_visits`, `ip_address`, `requested_url`, `referer_page`, `page_name`, `query_string`, `user_agent`, `is_unique`, `access_date`, `visits_count`) VALUES
(16819, 1, '123.16.13.3', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:08', 0),
(16818, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:08', 0),
(16817, 1, '123.16.13.3', '/vnsadmin/product/products', 'http://thaoduocquany103.com/vnsadmin/product/edit/228', 'product/products', 'products', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:08', 0),
(16816, 1, '123.16.13.3', '/vnsadmin/product/edit/228', 'http://thaoduocquany103.com/vnsadmin/product/edit/228', 'product/edit', 'uct/edit/228', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:08', 0),
(16815, 1, '123.16.13.3', '/vnsadmin/alias/checkEdit', 'http://thaoduocquany103.com/vnsadmin/product/edit/228', 'alias/checkEdit', 'heckEdit', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:56:06', 0),
(16813, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/228', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:55:58', 0),
(16814, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/228', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:55:58', 0),
(16811, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/228', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:55:58', 0),
(16812, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/228', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:55:58', 0),
(16810, 1, '123.16.13.3', '/vnsadmin/product/edit/228', 'http://thaoduocquany103.com/vnsadmin/product/products', 'product/edit', 'uct/edit/228', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:55:58', 0),
(16809, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:55:53', 0),
(16807, 1, '123.16.13.3', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:55:53', 0),
(16805, 1, '123.16.13.3', '/vnsadmin/product/products', 'http://thaoduocquany103.com/vnsadmin/product/edit/230', 'product/products', 'products', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:55:53', 0),
(16806, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:55:53', 0),
(16808, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:55:53', 0),
(16804, 1, '123.16.13.3', '/vnsadmin/product/edit/230', 'http://thaoduocquany103.com/vnsadmin/product/edit/230', 'product/edit', 'uct/edit/230', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:55:53', 0),
(16801, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/230', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:55:44', 0),
(16802, 1, '123.16.13.3', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/230', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:55:44', 0),
(16803, 1, '123.16.13.3', '/vnsadmin/alias/checkEdit', 'http://thaoduocquany103.com/vnsadmin/product/edit/230', 'alias/checkEdit', 'heckEdit', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:55:52', 0),
(16800, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/230', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:55:44', 0),
(16799, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/230', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:55:44', 0),
(16798, 1, '123.16.13.3', '/vnsadmin/product/edit/230', 'http://thaoduocquany103.com/vnsadmin/product/products', 'product/edit', 'uct/edit/230', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:55:44', 0),
(16797, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:54:55', 0),
(16795, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:54:55', 0),
(16796, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:54:55', 0),
(16793, 1, '123.16.13.3', '/vnsadmin/product/products', 'http://thaoduocquany103.com/vnsadmin/product/edit/233', 'product/products', 'products', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:54:55', 0),
(16794, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:54:55', 0),
(16792, 1, '123.16.13.3', '/vnsadmin/product/edit/233', 'http://thaoduocquany103.com/vnsadmin/product/edit/233', 'product/edit', 'uct/edit/233', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:54:55', 0),
(16789, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/233', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:54:45', 0),
(16790, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/233', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:54:45', 0),
(16791, 1, '123.16.13.3', '/vnsadmin/alias/checkEdit', 'http://thaoduocquany103.com/vnsadmin/product/edit/233', 'alias/checkEdit', 'heckEdit', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:54:54', 0),
(16787, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/233', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:54:45', 0),
(16788, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/233', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:54:45', 0),
(16786, 1, '123.16.13.3', '/vnsadmin/product/edit/233', 'http://thaoduocquany103.com/vnsadmin/product/products', 'product/edit', 'uct/edit/233', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:54:45', 0),
(16783, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:53:37', 0),
(16784, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:53:37', 0),
(16785, 1, '123.16.13.3', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:53:37', 0),
(16782, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:53:37', 0),
(16781, 1, '123.16.13.3', '/vnsadmin/product/products', 'http://thaoduocquany103.com/vnsadmin/product/edit/242', 'product/products', 'products', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:53:37', 0),
(16778, 1, '113.20.122.234', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/242', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:52:57', 0),
(16779, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/242', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:52:57', 0),
(16780, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/242', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:52:57', 0),
(16777, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/242', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:52:57', 0),
(16775, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:52:55', 0),
(16776, 1, '113.20.122.234', '/vnsadmin/product/edit/242', 'http://thaoduocquany103.com/vnsadmin/product/products', 'product/edit', 'uct/edit/242', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:52:57', 0),
(16773, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:52:55', 0),
(16774, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:52:55', 0),
(16772, 1, '113.20.122.234', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:52:55', 0),
(16769, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/243', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:52:50', 0),
(16770, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/243', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:52:50', 0),
(16771, 1, '113.20.122.234', '/vnsadmin/product/products', 'http://thaoduocquany103.com/vnsadmin/product/edit/243', 'product/products', 'products', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:52:55', 0),
(16766, 1, '113.20.122.234', '/vnsadmin/product/edit/243', 'http://thaoduocquany103.com/vnsadmin/product/products', 'product/edit', 'uct/edit/243', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:52:49', 0),
(16767, 1, '113.20.122.234', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/243', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:52:49', 0),
(16768, 1, '123.16.13.3', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/edit/243', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:52:49', 0),
(16765, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:52:47', 0),
(16764, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:52:47', 0),
(16763, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:52:47', 0),
(16762, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/product/products', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:52:47', 0),
(16761, 1, '123.16.13.3', '/vnsadmin/product/products', 'http://thaoduocquany103.com/vnsadmin', 'product/products', 'products', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:52:47', 0),
(16758, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:52:34', 0),
(16759, 1, '113.20.122.234', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:52:34', 0),
(16760, 1, '113.20.122.234', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:52:34', 0),
(16757, 1, '113.20.122.234', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:52:34', 0),
(16756, 1, '113.20.122.234', '/vnsadmin', 'http://thaoduocquany103.com/vnsadmin/order/orders', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:52:34', 0),
(16755, 1, '113.20.122.234', '/admin/order/popupdata?id=21', 'http://thaoduocquany103.com/vnsadmin/order/orders', 'order/popupdata', 'pdata', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:22:40', 0),
(16754, 1, '123.16.13.3', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin/order/orders', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:21:11', 0),
(16753, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin/order/orders', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:21:11', 0),
(16751, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin/order/orders', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:21:11', 0),
(16752, 1, '113.20.122.234', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin/order/orders', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:21:11', 0),
(16750, 1, '113.20.122.234', '/vnsadmin/order/orders', 'http://thaoduocquany103.com/vnsadmin', 'order/orders', 'r/orders', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:21:11', 0),
(16749, 1, '113.20.122.234', '/admin/order/popupdata?id=23', 'http://thaoduocquany103.com/vnsadmin', 'order/popupdata', 'pdata', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:06:48', 0),
(16748, 1, '123.16.13.3', '/assets/css/front_end/img/ko.png', 'http://thaoduocquany103.com/vnsadmin', 'assets/css', 'front_end/img/ko.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:06:38', 0),
(16745, 1, '123.16.13.3', '/assets/css/front_end/img/vn.png', 'http://thaoduocquany103.com/vnsadmin', 'assets/css', 'front_end/img/vn.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:06:37', 0),
(16747, 1, '123.16.13.3', '/assets/css/front_end/img/ja.png', 'http://thaoduocquany103.com/vnsadmin', 'assets/css', 'front_end/img/ja.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:06:38', 0),
(16746, 1, '123.16.13.3', '/assets/css/front_end/img/en.png', 'http://thaoduocquany103.com/vnsadmin', 'assets/css', 'front_end/img/en.png', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 03:06:38', 0),
(17089, NULL, '::1', '/vnsoft_trungtamtienganh/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 14:08:21', 1),
(17090, 1, '::1', '/vnsoft_tienganh/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:31:23', 0),
(17091, 1, '::1', '/vnsoft_tienganh/vnsadmin', '', 'defaults/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:33:11', 0),
(17092, 1, '::1', '/vnsoft_tienganh/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:34:21', 0),
(17093, 1, '::1', '/vnsoft_tienganh/vnsadmin/imageupload/banners', 'http://localhost/vnsoft_tienganh/vnsadmin/admin/site_option', 'imageupload/banners', '/banners', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:40:43', 0),
(17094, 1, '::1', '/vnsoft_tienganh/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:41:21', 0),
(17095, 1, '::1', '/vnsoft_tienganh/vnsadmin/imageupload/edit/325', 'http://localhost/vnsoft_tienganh/vnsadmin/imageupload/banners', 'imageupload/edit', 'oad/edit/325', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:42:41', 0),
(17096, 1, '::1', '/vnsoft_tienganh/vnsadmin/imageupload/banners', 'http://localhost/vnsoft_tienganh/vnsadmin/imageupload/edit/325', 'imageupload/banners', '/banners', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:42:50', 0),
(17097, 1, '::1', '/vnsoft_tienganh/vnsadmin/imageupload/edit/324', 'http://localhost/vnsoft_tienganh/vnsadmin/imageupload/banners', 'imageupload/edit', 'oad/edit/324', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:42:52', 0),
(17098, 1, '::1', '/vnsoft_tienganh/vnsadmin/imageupload/banners', 'http://localhost/vnsoft_tienganh/vnsadmin/imageupload/edit/324', 'imageupload/banners', '/banners', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:42:56', 0),
(17099, 1, '::1', '/vnsoft_tienganh/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:44:01', 0),
(17100, 1, '::1', '/vnsoft_tienganh/vnsadmin/imageupload/banners', 'http://localhost/vnsoft_tienganh/vnsadmin/admin/site_option', 'imageupload/banners', '/banners', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:46:48', 0),
(17101, 1, '::1', '/vnsoft_tienganh/vnsadmin/imageupload/addbanner', 'http://localhost/vnsoft_tienganh/vnsadmin/imageupload/banners', 'imageupload/addbanner', 'ddbanner', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:47:10', 0),
(17102, 1, '::1', '/vnsoft_tienganh/vnsadmin/imageupload/banners', 'http://localhost/vnsoft_tienganh/vnsadmin/imageupload/addbanner', 'imageupload/banners', '/banners', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:47:19', 0),
(17103, 1, '::1', '/vnsoft_tienganh/', 'http://localhost/vnsoft_tienganh/vnsadmin/imageupload/banners', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:47:19', 0),
(17104, 1, '::1', '/vnsoft_tienganh/vnsadmin/imageupload/delete/326', 'http://localhost/vnsoft_tienganh/vnsadmin/imageupload/banners', 'imageupload/delete', 'd/delete/326', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:47:22', 0),
(17105, 1, '::1', '/vnsoft_tienganh/vnsadmin/imageupload/banners', 'http://localhost/vnsoft_tienganh/vnsadmin/imageupload/banners', 'imageupload/banners', '/banners', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:47:22', 0),
(17106, 1, '::1', '/vnsoft_tienganh/vnsadmin/imageupload/edit/325', 'http://localhost/vnsoft_tienganh/vnsadmin/imageupload/banners', 'imageupload/edit', 'oad/edit/325', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:47:38', 0),
(17107, 1, '::1', '/vnsoft_tienganh/vnsadmin/imageupload/banners', 'http://localhost/vnsoft_tienganh/vnsadmin/imageupload/edit/325', 'imageupload/banners', '/banners', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:47:42', 0),
(17108, 1, '::1', '/vnsoft_tienganh/vnsadmin/imageupload/edit/325', 'http://localhost/vnsoft_tienganh/vnsadmin/imageupload/banners', 'imageupload/edit', 'oad/edit/325', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:48:56', 0),
(17109, 1, '::1', '/vnsoft_tienganh/vnsadmin/imageupload/banners', 'http://localhost/vnsoft_tienganh/vnsadmin/imageupload/edit/325', 'imageupload/banners', '/banners', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:49:00', 0),
(17110, 1, '::1', '/vnsoft_tienganh/vnsadmin/imageupload/edit/325', 'http://localhost/vnsoft_tienganh/vnsadmin/imageupload/banners', 'imageupload/edit', 'oad/edit/325', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:49:28', 0),
(17111, 1, '::1', '/vnsoft_tienganh/vnsadmin/imageupload/banners', 'http://localhost/vnsoft_tienganh/vnsadmin/imageupload/edit/325', 'imageupload/banners', '/banners', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:49:32', 0),
(17112, 1, '::1', '/vnsoft_tienganh/vnsadmin/imageupload/edit/324', 'http://localhost/vnsoft_tienganh/vnsadmin/imageupload/banners', 'imageupload/edit', 'oad/edit/324', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:49:34', 0),
(17113, 1, '::1', '/vnsoft_tienganh/vnsadmin/imageupload/banners', 'http://localhost/vnsoft_tienganh/vnsadmin/imageupload/edit/324', 'imageupload/banners', '/banners', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:49:38', 0),
(17114, 1, '::1', '/vnsoft_tienganh/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:49:39', 0),
(17115, 1, '::1', '/vnsoft_tienganh/vnsadmin/imageupload/banners', 'http://localhost/vnsoft_tienganh/vnsadmin/imageupload/edit/324', 'imageupload/banners', '/banners', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:49:45', 0),
(17116, 1, '::1', '/vnsoft_tienganh/vnsadmin/imageupload/edit/324', 'http://localhost/vnsoft_tienganh/vnsadmin/imageupload/banners', 'imageupload/edit', 'oad/edit/324', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:49:48', 0),
(17117, 1, '::1', '/vnsoft_tienganh/vnsadmin/imageupload/banners', 'http://localhost/vnsoft_tienganh/vnsadmin/imageupload/edit/324', 'imageupload/banners', '/banners', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:49:53', 0),
(17118, 1, '::1', '/vnsoft_tienganh/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:49:55', 0),
(17119, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/imageupload/banners', 'product/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:52:23', 0),
(17120, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/deletecategory/108', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'product/deletecategory', 'category/108', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:52:27', 0),
(17121, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'product/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:52:27', 0),
(17122, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/deletecategory/107', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'product/deletecategory', 'category/107', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:52:29', 0),
(17123, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'product/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:52:29', 0),
(17124, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/deletecategory/105', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'product/deletecategory', 'category/105', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:52:30', 0),
(17125, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'product/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:52:30', 0),
(17126, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/deletecategory/109', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'product/deletecategory', 'category/109', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:52:31', 0),
(17127, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'product/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:52:31', 0),
(17128, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/deletecategory/110', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'product/deletecategory', 'category/110', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:52:31', 0),
(17129, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'product/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:52:31', 0),
(17130, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/deletecategory/106', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'product/deletecategory', 'category/106', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:52:32', 0),
(17131, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'product/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:52:32', 0),
(17132, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/deletecategory/83', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'product/deletecategory', 'category/83', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:52:33', 0),
(17133, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'product/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:52:33', 0),
(17134, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/cat_edit/103', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'product/cat_edit', 'cat_edit/103', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:52:35', 0),
(17135, 1, '::1', '/vnsoft_tienganh/vnsadmin/alias/checkCatEdit', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_edit/103', 'alias/checkCatEdit', 'kCatEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:53:48', 0),
(17136, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/cat_edit/103', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_edit/103', 'product/cat_edit', 'cat_edit/103', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:53:48', 0),
(17137, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_edit/103', 'product/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:53:48', 0),
(17138, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/cat_add', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'product/cat_add', '/cat_add', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:54:02', 0),
(17139, 1, '::1', '/vnsoft_tienganh/vnsadmin/alias/checkAdd', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_add', 'alias/checkAdd', 'checkAdd', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:54:45', 0),
(17140, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/cat_add', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_add', 'product/cat_add', '/cat_add', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:54:45', 0),
(17141, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_add', 'product/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:54:45', 0),
(17142, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/cat_edit/111', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'product/cat_edit', 'cat_edit/111', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:54:48', 0),
(17143, 1, '::1', '/vnsoft_tienganh/vnsadmin/alias/checkCatEdit', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_edit/111', 'alias/checkCatEdit', 'kCatEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:54:53', 0),
(17144, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/cat_edit/111', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_edit/111', 'product/cat_edit', 'cat_edit/111', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:54:53', 0),
(17145, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_edit/111', 'product/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:54:53', 0),
(17146, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/cat_add', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'product/cat_add', '/cat_add', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:55:08', 0),
(17147, 1, '::1', '/vnsoft_tienganh/vnsadmin/alias/checkAdd', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_add', 'alias/checkAdd', 'checkAdd', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:55:24', 0),
(17148, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/cat_add', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_add', 'product/cat_add', '/cat_add', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:55:24', 0),
(17149, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_add', 'product/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:55:24', 0),
(17150, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/cat_add', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'product/cat_add', '/cat_add', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:55:36', 0),
(17151, 1, '::1', '/vnsoft_tienganh/vnsadmin/alias/checkAdd', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_add', 'alias/checkAdd', 'checkAdd', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:55:46', 0),
(17152, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/cat_add', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_add', 'product/cat_add', '/cat_add', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:55:46', 0),
(17153, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_add', 'product/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:55:46', 0),
(17154, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/cat_edit/113', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'product/cat_edit', 'cat_edit/113', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:56:02', 0),
(17155, 1, '::1', '/vnsoft_tienganh/vnsadmin/alias/checkCatEdit', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_edit/113', 'alias/checkCatEdit', 'kCatEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:56:05', 0),
(17156, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/cat_edit/113', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_edit/113', 'product/cat_edit', 'cat_edit/113', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:56:05', 0),
(17157, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_edit/113', 'product/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:56:05', 0),
(17158, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/cat_add', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'product/cat_add', '/cat_add', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:56:08', 0),
(17159, 1, '::1', '/vnsoft_tienganh/vnsadmin/alias/checkAdd', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_add', 'alias/checkAdd', 'checkAdd', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:56:21', 0),
(17160, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/cat_add', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_add', 'product/cat_add', '/cat_add', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:56:21', 0),
(17161, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_add', 'product/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:56:21', 0),
(17162, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'news/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:56:33', 0),
(17163, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/deletecategory/17', 'http://localhost/vnsoft_tienganh/vnsadmin/news/categories', 'news/deletecategory', 'category/17', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:56:37', 0),
(17164, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/news/categories', 'news/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:56:37', 0),
(17165, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/deletecategory/19', 'http://localhost/vnsoft_tienganh/vnsadmin/news/categories', 'news/deletecategory', 'category/19', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:56:38', 0),
(17166, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/news/categories', 'news/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:56:38', 0),
(17167, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/deletecategory/20', 'http://localhost/vnsoft_tienganh/vnsadmin/news/categories', 'news/deletecategory', 'category/20', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:56:39', 0),
(17168, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/news/categories', 'news/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:56:39', 0),
(17169, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/deletecategory/21', 'http://localhost/vnsoft_tienganh/vnsadmin/news/categories', 'news/deletecategory', 'category/21', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:56:39', 0),
(17170, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/news/categories', 'news/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:56:39', 0),
(17171, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/deletecategory/14', 'http://localhost/vnsoft_tienganh/vnsadmin/news/categories', 'news/deletecategory', 'category/14', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:56:40', 0),
(17172, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/news/categories', 'news/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:56:40', 0),
(17173, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/cat_edit/15', 'http://localhost/vnsoft_tienganh/vnsadmin/news/categories', 'news/cat_edit', 'cat_edit/15', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:56:41', 0),
(17174, 1, '::1', '/vnsoft_tienganh/vnsadmin/alias/checkCatEdit', 'http://localhost/vnsoft_tienganh/vnsadmin/news/cat_edit/15', 'alias/checkCatEdit', 'kCatEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:56:44', 0),
(17175, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/cat_edit/15', 'http://localhost/vnsoft_tienganh/vnsadmin/news/cat_edit/15', 'news/cat_edit', 'cat_edit/15', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:56:45', 0),
(17176, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/news/cat_edit/15', 'news/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:56:45', 0),
(17177, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/newslist', 'http://localhost/vnsoft_tienganh/vnsadmin/news/categories', 'news/newslist', 'newslist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:56:54', 0),
(17178, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/delete/27', 'http://localhost/vnsoft_tienganh/vnsadmin/news/newslist', 'news/delete', 's/delete/27', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:56:59', 0),
(17179, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/newslist', 'http://localhost/vnsoft_tienganh/vnsadmin/news/newslist', 'news/newslist', 'newslist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:56:59', 0),
(17180, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/delete/32', 'http://localhost/vnsoft_tienganh/vnsadmin/news/newslist', 'news/delete', 's/delete/32', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:57:00', 0),
(17181, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/newslist', 'http://localhost/vnsoft_tienganh/vnsadmin/news/newslist', 'news/newslist', 'newslist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:57:00', 0),
(17182, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/edit/29', 'http://localhost/vnsoft_tienganh/vnsadmin/news/newslist', 'news/edit', 'ews/edit/29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:57:02', 0);
INSERT INTO `site_log` (`site_log_id`, `no_of_visits`, `ip_address`, `requested_url`, `referer_page`, `page_name`, `query_string`, `user_agent`, `is_unique`, `access_date`, `visits_count`) VALUES
(17183, 1, '::1', '/vnsoft_tienganh/vnsadmin/alias/checkEdit', 'http://localhost/vnsoft_tienganh/vnsadmin/news/edit/29', 'alias/checkEdit', 'heckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:57:15', 0),
(17184, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/edit/29', 'http://localhost/vnsoft_tienganh/vnsadmin/news/edit/29', 'news/edit', 'ews/edit/29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:57:16', 0),
(17185, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/newslist', 'http://localhost/vnsoft_tienganh/vnsadmin/news/edit/29', 'news/newslist', 'newslist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:57:16', 0),
(17186, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/edit/28', 'http://localhost/vnsoft_tienganh/vnsadmin/news/newslist', 'news/edit', 'ews/edit/28', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:57:20', 0),
(17187, 1, '::1', '/vnsoft_tienganh/vnsadmin/alias/checkEdit', 'http://localhost/vnsoft_tienganh/vnsadmin/news/edit/28', 'alias/checkEdit', 'heckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:57:27', 0),
(17188, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/edit/28', 'http://localhost/vnsoft_tienganh/vnsadmin/news/edit/28', 'news/edit', 'ews/edit/28', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:57:27', 0),
(17189, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/newslist', 'http://localhost/vnsoft_tienganh/vnsadmin/news/edit/28', 'news/newslist', 'newslist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:57:27', 0),
(17190, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/edit/30', 'http://localhost/vnsoft_tienganh/vnsadmin/news/newslist', 'news/edit', 'ews/edit/30', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:57:29', 0),
(17191, 1, '::1', '/vnsoft_tienganh/vnsadmin/alias/checkEdit', 'http://localhost/vnsoft_tienganh/vnsadmin/news/edit/30', 'alias/checkEdit', 'heckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:57:36', 0),
(17192, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/edit/30', 'http://localhost/vnsoft_tienganh/vnsadmin/news/edit/30', 'news/edit', 'ews/edit/30', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:57:36', 0),
(17193, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/newslist', 'http://localhost/vnsoft_tienganh/vnsadmin/news/edit/30', 'news/newslist', 'newslist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:57:36', 0),
(17194, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/edit/31', 'http://localhost/vnsoft_tienganh/vnsadmin/news/newslist', 'news/edit', 'ews/edit/31', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:57:39', 0),
(17195, 1, '::1', '/vnsoft_tienganh/vnsadmin/alias/checkEdit', 'http://localhost/vnsoft_tienganh/vnsadmin/news/edit/31', 'alias/checkEdit', 'heckEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:57:45', 0),
(17196, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/edit/31', 'http://localhost/vnsoft_tienganh/vnsadmin/news/edit/31', 'news/edit', 'ews/edit/31', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:57:45', 0),
(17197, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/newslist', 'http://localhost/vnsoft_tienganh/vnsadmin/news/edit/31', 'news/newslist', 'newslist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:57:45', 0),
(17198, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/news/newslist', 'product/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 15:59:36', 0),
(17199, 1, '::1', '/vnsoft_tienganh/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:03:10', 0),
(17200, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'product/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:03:27', 0),
(17201, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/cat_edit/114', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'product/cat_edit', 'cat_edit/114', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:03:33', 0),
(17202, 1, '::1', '/vnsoft_tienganh/vnsadmin/alias/checkCatEdit', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_edit/114', 'alias/checkCatEdit', 'kCatEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:04:47', 0),
(17203, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/cat_edit/114', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_edit/114', 'product/cat_edit', 'cat_edit/114', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:04:47', 0),
(17204, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_edit/114', 'product/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:04:47', 0),
(17205, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/cat_edit/113', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'product/cat_edit', 'cat_edit/113', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:04:49', 0),
(17206, 1, '::1', '/vnsoft_tienganh/vnsadmin/alias/checkCatEdit', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_edit/113', 'alias/checkCatEdit', 'kCatEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:04:51', 0),
(17207, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/cat_edit/113', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_edit/113', 'product/cat_edit', 'cat_edit/113', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:04:51', 0),
(17208, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_edit/113', 'product/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:04:51', 0),
(17209, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/cat_edit/112', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'product/cat_edit', 'cat_edit/112', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:04:53', 0),
(17210, 1, '::1', '/vnsoft_tienganh/vnsadmin/alias/checkCatEdit', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_edit/112', 'alias/checkCatEdit', 'kCatEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:04:54', 0),
(17211, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/cat_edit/112', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_edit/112', 'product/cat_edit', 'cat_edit/112', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:04:54', 0),
(17212, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_edit/112', 'product/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:04:54', 0),
(17213, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/cat_edit/111', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'product/cat_edit', 'cat_edit/111', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:04:56', 0),
(17214, 1, '::1', '/vnsoft_tienganh/vnsadmin/alias/checkCatEdit', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_edit/111', 'alias/checkCatEdit', 'kCatEdit', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:04:57', 0),
(17215, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/cat_edit/111', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_edit/111', 'product/cat_edit', 'cat_edit/111', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:04:57', 0),
(17216, 1, '::1', '/vnsoft_tienganh/vnsadmin/product/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/product/cat_edit/111', 'product/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:04:58', 0),
(17217, 1, '::1', '/vnsoft_tienganh/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:04:59', 0),
(17218, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'news/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:10:39', 0),
(17219, 1, '::1', '/vnsoft_tienganh/ajax/ajax/update_fill', 'http://localhost/vnsoft_tienganh/vnsadmin/news/categories', 'ajax/update_fill', 'fill', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:10:47', 0),
(17220, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/categories', 'http://localhost/vnsoft_tienganh/vnsadmin/product/categories', 'news/categories', 'tegories', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:10:48', 0),
(17221, 1, '::1', '/vnsoft_tienganh/vnsadmin/news/newslist', 'http://localhost/vnsoft_tienganh/vnsadmin/news/categories', 'news/newslist', 'newslist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:11:09', 0),
(17222, 1, '::1', '/vnsoft_tienganh/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:13:10', 0),
(17223, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/menulist', 'http://localhost/vnsoft_tienganh/vnsadmin/news/newslist', 'menu/menulist', 'menulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:18:35', 0),
(17224, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/savelist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/savelist', 'savelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:18:35', 0),
(17225, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/edit/116?p=main', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/edit', 'enu/edit/116', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:18:51', 0),
(17226, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/menulist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/edit/116?p=main', 'menu/menulist', 'menulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:19:09', 0),
(17227, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/savelist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/savelist', 'savelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:19:09', 0),
(17228, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/edit/117?p=main', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/edit', 'enu/edit/117', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:19:15', 0),
(17229, 1, '::1', '/vnsoft_tienganh/admin/menu/get_subcat', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/edit/117?p=main', 'menu/get_subcat', 'ubcat', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:19:25', 0),
(17230, 1, '::1', '/vnsoft_tienganh/admin/menu/cate_show/products/vi', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/edit/117?p=main', 'menu/cate_show', '_show/products/vi', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:19:25', 0),
(17231, 1, '::1', '/vnsoft_tienganh/admin/menu/get_iditem', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/edit/117?p=main', 'menu/get_iditem', 'ditem', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:19:25', 0),
(17232, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/edit/117?p=main', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/edit/117?p=main', 'menu/edit', 'enu/edit/117', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:19:27', 0),
(17233, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/menulist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/edit/117?p=main', 'menu/menulist', 'menulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:19:27', 0),
(17234, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/savelist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/savelist', 'savelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:19:27', 0),
(17235, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/delete/130', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/delete', 'u/delete/130', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:19:31', 0),
(17236, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/menulist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/menulist', 'menulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:19:31', 0),
(17237, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/savelist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/savelist', 'savelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:19:32', 0),
(17238, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/delete/129', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/delete', 'u/delete/129', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:19:33', 0),
(17239, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/menulist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/menulist', 'menulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:19:33', 0),
(17240, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/savelist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/savelist', 'savelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:19:34', 0),
(17241, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/delete/137', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/delete', 'u/delete/137', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:19:36', 0),
(17242, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/menulist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/menulist', 'menulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:19:37', 0),
(17243, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/savelist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/savelist', 'savelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:19:37', 0),
(17244, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/delete/136', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/delete', 'u/delete/136', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:19:38', 0),
(17245, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/menulist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/menulist', 'menulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:19:38', 0),
(17246, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/savelist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/savelist', 'savelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:19:39', 0),
(17247, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/delete/135', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/delete', 'u/delete/135', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:19:41', 0),
(17248, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/menulist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/menulist', 'menulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:19:41', 0),
(17249, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/savelist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/savelist', 'savelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:19:41', 0),
(17250, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/edit/134?p=main', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/edit', 'enu/edit/134', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:19:43', 0),
(17251, 1, '::1', '/vnsoft_tienganh/admin/menu/get_iditem', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/edit/134?p=main', 'menu/get_iditem', 'ditem', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:20:06', 0),
(17252, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/edit/134?p=main', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/edit/134?p=main', 'menu/edit', 'enu/edit/134', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:20:09', 0),
(17253, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/menulist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/edit/134?p=main', 'menu/menulist', 'menulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:20:09', 0),
(17254, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/savelist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/savelist', 'savelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:20:10', 0),
(17255, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/edit/133?p=main', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/edit', 'enu/edit/133', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:20:11', 0),
(17256, 1, '::1', '/vnsoft_tienganh/admin/menu/get_iditem', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/edit/133?p=main', 'menu/get_iditem', 'ditem', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:20:13', 0),
(17257, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/edit/133?p=main', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/edit/133?p=main', 'menu/edit', 'enu/edit/133', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:20:21', 0),
(17258, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/menulist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/edit/133?p=main', 'menu/menulist', 'menulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:20:21', 0),
(17259, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/savelist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/savelist', 'savelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:20:21', 0),
(17260, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/edit/132?p=main', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/edit', 'enu/edit/132', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:20:23', 0),
(17261, 1, '::1', '/vnsoft_tienganh/admin/menu/get_iditem', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/edit/132?p=main', 'menu/get_iditem', 'ditem', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:20:25', 0),
(17262, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/edit/132?p=main', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/edit/132?p=main', 'menu/edit', 'enu/edit/132', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:20:32', 0),
(17263, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/menulist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/edit/132?p=main', 'menu/menulist', 'menulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:20:32', 0),
(17264, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/savelist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/savelist', 'savelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:20:32', 0),
(17265, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/edit/131?p=main', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/edit', 'enu/edit/131', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:20:34', 0),
(17266, 1, '::1', '/vnsoft_tienganh/admin/menu/get_iditem', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/edit/131?p=main', 'menu/get_iditem', 'ditem', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:20:36', 0),
(17267, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/edit/131?p=main', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/edit/131?p=main', 'menu/edit', 'enu/edit/131', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:20:43', 0),
(17268, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/menulist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/edit/131?p=main', 'menu/menulist', 'menulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:20:43', 0),
(17269, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/savelist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/savelist', 'savelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:20:43', 0),
(17270, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/edit/118?p=main', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/edit', 'enu/edit/118', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:20:49', 0),
(17271, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/menulist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/edit/118?p=main', 'menu/menulist', 'menulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:20:54', 0),
(17272, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/savelist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/savelist', 'savelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:20:54', 0),
(17273, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/edit/120?p=main', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/edit', 'enu/edit/120', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:20:58', 0),
(17274, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/menulist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/edit/120?p=main', 'menu/menulist', 'menulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:21:06', 0),
(17275, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/savelist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/savelist', 'savelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:21:06', 0),
(17276, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/edit/121?p=main', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/edit', 'enu/edit/121', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:21:12', 0),
(17277, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/menulist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/edit/121?p=main', 'menu/menulist', 'menulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:21:21', 0),
(17278, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/savelist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/savelist', 'savelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:21:21', 0),
(17279, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/addmenu?p=main', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/addmenu', '/addmenu', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:21:24', 0),
(17280, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/menulist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/addmenu?p=main', 'menu/menulist', 'menulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:21:29', 0),
(17281, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/savelist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/savelist', 'savelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:21:29', 0),
(17282, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/menulist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/addmenu?p=main', 'menu/menulist', 'menulist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:21:39', 0),
(17283, 1, '::1', '/vnsoft_tienganh/vnsadmin/menu/savelist', 'http://localhost/vnsoft_tienganh/vnsadmin/menu/menulist', 'menu/savelist', 'savelist', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:21:39', 0),
(17284, 1, '::1', '/vnsoft_tienganh/', '', 'home/index', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 0, '2018-11-12 16:21:41', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `site_option`
--

CREATE TABLE `site_option` (
  `id` int(11) NOT NULL,
  `coppy_right` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `site_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `slogan` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `link_instagram` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `site_logo` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `site_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `site_title_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `site_keyword` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `site_keyword_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `site_description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `link_sky` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `link_printer` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `link_linkedin` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `site_email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `site_fanpage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `site_video` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `WM_text` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `WM_color` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `WM_size` int(10) DEFAULT NULL,
  `hotline1` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hotline2` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hotline3` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` text CHARACTER SET utf8,
  `link_tt` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `favicon` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `company_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `shipping` text CHARACTER SET utf8,
  `site_promo` text CHARACTER SET utf8,
  `thanhtoan_tienmat` text CHARACTER SET utf8,
  `thanhtoan_chuyenkhoan` text CHARACTER SET utf8,
  `hdfMap` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `map_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `map_adrdress` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `map_phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `dia_chi_timkiem` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `lang` char(10) CHARACTER SET utf8 DEFAULT '1',
  `link_gg` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_youtube` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `link_fb` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timeopen` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `chat` text CHARACTER SET utf8,
  `site_logo_footer` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `map_iframe` text CHARACTER SET utf8 NOT NULL,
  `input_text_1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `map_footer` text COLLATE utf8_unicode_ci NOT NULL,
  `config_pro` text COLLATE utf8_unicode_ci NOT NULL,
  `config_pro_content` text COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(3) UNSIGNED DEFAULT '1',
  `future` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hanoi` int(11) NOT NULL,
  `tinhle` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `site_option`
--

INSERT INTO `site_option` (`id`, `coppy_right`, `site_name`, `slogan`, `link_instagram`, `site_logo`, `site_title`, `site_title_en`, `site_keyword`, `site_keyword_en`, `site_description`, `link_sky`, `link_printer`, `link_linkedin`, `site_email`, `site_fanpage`, `site_video`, `WM_text`, `WM_color`, `WM_size`, `hotline1`, `hotline2`, `hotline3`, `address`, `link_tt`, `favicon`, `company_name`, `shipping`, `site_promo`, `thanhtoan_tienmat`, `thanhtoan_chuyenkhoan`, `hdfMap`, `map_title`, `map_adrdress`, `map_phone`, `dia_chi_timkiem`, `lang`, `link_gg`, `link_youtube`, `link_fb`, `timeopen`, `chat`, `site_logo_footer`, `map_iframe`, `input_text_1`, `domain`, `map_footer`, `config_pro`, `config_pro_content`, `active`, `future`, `hanoi`, `tinhle`) VALUES
(1, NULL, 'Thảo Dược Quân Y 103.', NULL, NULL, 'upload/img/logo/logo11.png', 'Thảo Dược Quân Y 103.', NULL, '', '0', '', NULL, '', '', 'ngocdung114@gmail.com', NULL, '', NULL, NULL, NULL, '0912 345 678', '0943 465 632', NULL, 'A12-TT9 Khu đô thị Văn Quán - Hà Đông - Hà Nội', '', 'upload/img/logo/logo13.png', NULL, '<p>Cơ sở 1: A12-TT9 Khu đ&ocirc; thị Văn Qu&aacute;n - H&agrave; Đ&ocirc;ng - H&agrave; Nội<br />\r\nHotline: 0243 3523 232 - 0943 465 632</p>\r\n\r\n<p>Cơ sở 2: LK319 DV7 Khu H&agrave;ng B&egrave; - Kiến Hưng - H&agrave; Đ&ocirc;ng - H&agrave; Nội<br />\r\nHotline: 0934 684 328 - 036 818 5887</p>\r\n', NULL, NULL, NULL, '(21.0137956, 105.76945469999998)', 'Công ty cổ phần dịch vụ & thương mại Thủ Đô', 'Số 58 Phố Duy Tân – Dịch Vọng Hậu – Cầu Giấy - HN', ' 0984086608', '42 Lê Quang đạo, Nam Từ Liêm', 'vi', '', 'https://www.youtube.com/embed/ErKJTNfvx88', 'https://www.facebook.com/vnsoft.net/', '', NULL, 'upload/img/logo/logo12.png', '', NULL, '', '', '[]', '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', 1, NULL, 22000, 30000),
(2, '', 'JSC polygon media', '', NULL, 'upload/img/logo/logo4.png', '', NULL, '', '0', '', NULL, NULL, NULL, 'hanhnh@polygonmedia.vn', NULL, 'uI2wcf05wq0', NULL, NULL, NULL, '', NULL, NULL, '', '', 'upload/img/logo/logo6.png', NULL, '', NULL, NULL, NULL, '(21.0218044, 105.79087200000004)', 'Công ty', '', '', 'Yên hòa', 'en', '', '', '', '', NULL, 'upload/img/logo/logo5.png', '', NULL, '', '', '', '', 1, '', 0, 0),
(3, '0', '1', '0', '', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '0', '1', '0', '0', 0, '1', '1', '0', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', 'config', '1', '1', '1', '1', '0', '1', '0', '0', '0', '0', '1', '1', 0, NULL, 0, 0),
(4, 'coppy right', 'tên đơn vị', 'slogan', 'Instagram', NULL, 'Tiêu đề website', NULL, NULL, NULL, NULL, 'link skype', 'link VKontakle', 'link vimeo', NULL, 'fanpage facebook', 'Video (Youtube)', 'Chữ Nổi Warter Mark', 'Màu Chữ (Hex Color VD : #ed1c2', 1, 'điện thoại', 'fax', 'điên thoại bàn', 'địa chỉ', 'link tweter', NULL, NULL, 'giao hàng', 'khuyến mại', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'conf_text', 'link google', 'Link youtube', 'Link facebook', 'thời gian mở cửa', 'mã chát online', 'logo chân trang', 'Mã nhúng bản đồ chân trang', 'mã số thuê', 'tên miền', 'mã nhúng javascript', '', '', 0, NULL, 0, 0),
(5, 'Bản quyền thuộc về Công ty TNHH gỗ Đại Long ', 'VNIT-GROUP', 'Thiết kế website chuyên nghiệp', '', 'upload/img/logo/logo.png', 'CÔNG TY CỔ PHẦN CÔNG NGHỆ QTS VIỆT NAMaaaaaa', '', '', '0', '', '', '', '', ' thudoct@gmail.com', '', 'uI2wcf05wq0', '', '', NULL, '0975 195 112', '', '', 'Địa chỉ, phố phường, quận, Hà Nội', '', 'upload/img/logo/logo1.png', '', '<p>Địa chỉ: : Số 8, Thi&ecirc;n Đức, Y&ecirc;n Vi&ecirc;n, Gia L&acirc;m, H&agrave; Nội.<br />\r\nĐiện thoại: 043 9611 911 - 0982 629 134 - 0979 701 999<br />\r\nEmail: <a href=\"\">Info@noithatphuan.com.vn</a> - <a href=\"\">Https://noithatphuan.com.vn</a><br />\r\nM&atilde; số thuế: 0106288684<br />\r\nNg&agrave;y cấp: 22/08/2013 Nơi cấp: Chi cục Thuế Huyện Gia L&acirc;m<br />\r\nNgười đại diện: &Ocirc;ng Tạ Tuấn Hiệp - Chức vụ: Gi&aacute;m đốc</p>\r\n', '', '', '', '(21.0137956, 105.76945469999998)', 'Công ty cổ phần dịch vụ & thương mại Thủ Đô', 'Số 58 Phố Duy Tân – Dịch Vọng Hậu – Cầu Giấy - HN', ' 0984086608', '42 Lê Quang đạo, Nam Từ Liêm', 'ja', '', 'https://www.youtube.com/channel/UCHXYopwqVJ9u4_EnUCmhkHQ', '', '8h:00 - 18h00 cả thứ 7 & CN', '', 'upload/img/logo/Logo_doctors1.png', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14896.112114794629!2d105.76454397273433!3d21.031564475947746!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454bab8c5e73b%3A0x15f3308da6ba66c4!2zTeG7uSDEkMOsbmggMiwgVOG7qyBMacOqbSwgSGFub2ksIFZpZXRuYW0!5e0!3m2!1sen!2s!4v1510635467740\" width=\"100%\" height=\"250\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '', 'websiteqts.com', '<div id=\"fb-root\"></div>\r\n\r\n<script>(function(d, s, id) {\r\n\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n\r\n  if (d.getElementById(id)) return;\r\n\r\n  js = d.createElement(s); js.id = id;\r\n\r\n  js.src = \"//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.10&appId=126821687974504\";\r\n\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '[]', '[{\"content\":\"\",\"name\":\"Chi ti\\u1ebft s\\u1ea3n ph\\u1ea9m\",\"type\":\"textarea\",\"sort\":\"\"},{\"content\":\"\",\"name\":\"th\\u00f4ng s\\u1ed1 k\\u1ef9 thu\\u1eadt\",\"type\":\"textarea\",\"sort\":\"2\"},{\"content\":\"\",\"name\":\"M\\u00e3 s\\u1ea3n ph\\u1ea9m\",\"type\":\"text\",\"sort\":\"\"}]', 1, '10000+ Website đã được thiết kế + Nhiều tính năng', 0, 0),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ko', 'Bản quyền thuộc về Công ty TNHH gỗ Đại Long ', 'VNIT-GROUP', 'Thiết kế website chuyên nghiệp', '', 'upload/img/logo/logo.png', 'CÔNG TY CỔ PHẦN CÔNG NGHỆ QTS VIỆT NAMaaaaaa', '', '', '0', '', '', '', NULL, ' thudoct@gmail.com', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `staticpage`
--

CREATE TABLE `staticpage` (
  `id` int(11) NOT NULL,
  `name` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` char(10) COLLATE utf8_unicode_ci DEFAULT '1',
  `home` tinyint(1) DEFAULT '0',
  `hot` tinyint(1) DEFAULT NULL,
  `focus` tinyint(1) DEFAULT NULL,
  `contact_page` tinyint(1) DEFAULT '0',
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `page_footer` int(11) NOT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `staticpage`
--

INSERT INTO `staticpage` (`id`, `name`, `alias`, `description`, `content`, `image`, `lang`, `home`, `hot`, `focus`, `contact_page`, `title_seo`, `keyword_seo`, `description_seo`, `parent_id`, `page_footer`, `time`) VALUES
(51, 'Chính sách bảo trì bảo dưỡng', 'chinh-sach-bao-tri-bao-duong', '', '', NULL, 'vi', 0, NULL, NULL, 0, '', '', '', 0, 0, 1538887152),
(52, 'Chính sách bán hàng', 'chinh-sach-ban-hang', '<p>Thảo Dược Qu&acirc;n Y lu&ocirc;n muốn đem đến cho kh&aacute;ch h&agrave;ng sự h&agrave;i l&ograve;ng nhất, y&ecirc;n t&acirc;m về sản phẩm cũng như chất lượng với gi&aacute; cả tốt nhất. To&agrave;n bộ h&agrave;ng của Thảo Dược Qu&acirc;n Y được lấy từ trung t&acirc;m nghi&ecirc;n cứu v&agrave; sản xuất của Học Viện Qu&acirc;n Y.</p>\r\n', '<p><span style=\"font-size:18px\">Tr&ecirc;n sản phẩm lu&ocirc;n c&oacute; tem chống h&agrave;ng giả, tem của Học Viện Qu&acirc;n Y.&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><em><strong>Thảo Dược Qu&acirc;n Y sẽ Freeship cho c&aacute;c đơn h&agrave;ng c&oacute; gi&aacute; trị từ 300.000 đ trở l&ecirc;n.</strong></em></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Lu&ocirc;n hỗ trợ việc đổi trả nếu kh&aacute;ch h&agrave;ng chưa ưng &yacute; !</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Với những kh&aacute;ch h&agrave;ng đặt số lượng nhiều từ 10 sản phẩm c&ugrave;ng loại trở l&ecirc;n h&atilde;y li&ecirc;n lạc với ch&uacute;ng t&ocirc;i để được gi&aacute; tốt !&nbsp;</span></p>\r\n', NULL, 'vi', 1, NULL, NULL, 0, '', '', '', 0, 0, 1541573448),
(53, 'Chính sách bảo mật thông tin KH', 'chinh-sach-bao-mat-thong-tin-kh', '<p>Nhập nội dung m&ocirc; tả&nbsp;v&agrave;o đ&acirc;y....&nbsp;</p>\r\n', '<p>Nhập nội dung chi tiết v&agrave;o đ&acirc;y....</p>\r\n', NULL, 'vi', NULL, NULL, NULL, 0, '', '', '', 0, 0, 1541083507),
(54, 'Chính sách dịch vụ', 'chinh-sach-dich-vu', '<p>Nhập nội dung m&ocirc; tả&nbsp;v&agrave;o đ&acirc;y....&nbsp;.</p>\r\n', '<p>Nhập nội dung chi tiết v&agrave;o đ&acirc;y....</p>\r\n', NULL, 'vi', NULL, NULL, NULL, 0, '', '', '', 0, 0, 1541083493),
(55, 'Chính sách thanh toán', 'chinh-sach-thanh-toan', '<p>Kh&aacute;ch mua h&agrave;ng c&oacute; thể Chuyển khoản trước hoặc thanh to&aacute;n sau khi nhận h&agrave;ng !&nbsp;</p>\r\n', '', NULL, 'vi', NULL, NULL, NULL, 0, '', '', '', 0, 0, 1541382756),
(56, 'Phương thức thanh toán', 'phuong-thuc-thanh-toan', '<h2>Phương thức thanh to&aacute;n của THẢO DƯỢC QU&Acirc;N Y 103 rất linh hoạt như sau:</h2>\r\n', '<p><span style=\"font-size:16px\">Kh&aacute;ch&nbsp;h&agrave;ng đặt h&agrave;ng qua website ch&iacute;nh thức của <strong>THẢO DƯỢC QU&Acirc;N Y 103</strong> hoặc qua Hotline đều được Freeship với đơn h&agrave;ng trị gi&aacute; từ 300.000 đ</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Gi&aacute; của sản phẩm cũng sẽ được giảm theo c&aacute;c chương tr&igrave;nh Sale sốc&nbsp;!</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Thanh to&aacute;n khi nhận h&agrave;ng , Ship Cod to&agrave;n quốc, nhận h&agrave;ng mới phải trả tiền.&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Nếu kh&aacute;ch h&agrave;ng nhận h&agrave;ng m&agrave; thấy kh&ocirc;ng đủ tem m&aacute;c, cảm thấy kh&ocirc;ng phải h&agrave;ng ch&iacute;nh h&atilde;ng Học Viện Qu&acirc;n Y đều c&oacute; thể gửi trả lại shop, ch&uacute;ng t&ocirc;i sẽ nhận lại h&agrave;ng v&agrave; Freeship khi kh&aacute;ch trả h&agrave;ng&nbsp;!&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Đối với đơn h&agrave;ng b&aacute;n sỉ gi&aacute; trị đơn h&agrave;ng lớn cần chuyển khoản trước !</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Đến với THẢO DƯỢC QU&Acirc;N Y 103 Kh&aacute;ch h&agrave;ng sẽ lu&ocirc;n cảm thấy h&agrave;i l&ograve;ng về chất lượng v&agrave; gi&aacute; cả cũng như th&aacute;i độ phục vụ hết l&ograve;ng v&igrave; kh&aacute;ch h&agrave;ng !&nbsp;</span></p>\r\n', NULL, 'vi', 1, NULL, NULL, 0, '', '', '', 0, 0, 1541573555),
(57, 'Chính sách giao hàng và vận chuyển', 'chinh-sach-giao-hang-va-van-chuyen', '<h2><strong>THẢO DƯỢC QU&Acirc;N Y 103</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n', '<p><span style=\"font-size:18px\">Freeship cho đơn h&agrave;ng c&oacute; tổng gi&aacute; trị từ 300.000 đ</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Giao h&agrave;ng Ship COD thu tiền, c&aacute;c đơn vị hỗ trợ giao h&agrave;ng : Viettel Post, Giao h&agrave;ng nhanh, Giao h&agrave;ng tiết kiệm....lu&ocirc;n đảm bảo giao h&agrave;ng sớm nhất cho kh&aacute;ch h&agrave;ng !</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng l&agrave; kim chỉ nam cho ch&uacute;ng t&ocirc;i ! H&atilde;y g&oacute;p &yacute; cho ch&uacute;ng t&ocirc;i nếu bạn chưa h&agrave;i l&ograve;ng !&nbsp;</span></p>\r\n', NULL, 'vi', 1, NULL, NULL, 0, '', '', '', 0, 0, 1541573599),
(58, 'Chính sách đổi\\trả và hoàn tiền', 'chinh-sach-doitra-va-hoan-tien', '', '', NULL, 'vi', 0, NULL, NULL, 0, '', '', '', 0, 0, 1538887728),
(59, 'Giới thiệu', 'gioi-thieu', '', '<p>Điền nội dung giới thiệu v&agrave;o đ&acirc;y...</p>\r\n', NULL, 'vi', NULL, NULL, NULL, 0, '', '', '', 0, 0, 1541510374);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stocks`
--

CREATE TABLE `stocks` (
  `id` int(11) UNSIGNED NOT NULL,
  `code` varchar(120) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `total_value` bigint(20) DEFAULT '0' COMMENT 'số lượng thực tế',
  `total_quantity` int(11) DEFAULT '0' COMMENT 'số lượng trên danh sách',
  `price_up` int(11) DEFAULT '0' COMMENT 'tổng tiền chênh lệch tăng',
  `price_down` int(11) DEFAULT '0' COMMENT 'Tổng tiền chênh lệch giảm',
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  `user_create` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stocks_detail`
--

CREATE TABLE `stocks_detail` (
  `id` int(11) NOT NULL,
  `pro_id` int(11) DEFAULT NULL COMMENT 'Mã Sản Phẩm',
  `stock_id` int(11) DEFAULT NULL COMMENT 'Mã Bảng Kiểm Kho',
  `quantity` int(11) DEFAULT NULL COMMENT 'Số lượng sản phẩm ',
  `quantity_store` int(11) DEFAULT NULL COMMENT 'số lượng sản phẩm thực tế',
  `quantity_difference` int(11) DEFAULT NULL COMMENT 'số lượng sp chênh lệch',
  `price_sale` int(11) DEFAULT NULL COMMENT 'giá bán ra của sản phẩm',
  `price_import` int(11) DEFAULT NULL COMMENT 'giá nhập của sản phẩm',
  `time` int(11) DEFAULT NULL COMMENT 'thời gian tạo',
  `active` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Bảng Báo Cáo Kiểm Kho' ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `street`
--

CREATE TABLE `street` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `pre` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `districtid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` char(100) CHARACTER SET utf8 DEFAULT NULL,
  `fax` char(100) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `province` int(11) UNSIGNED DEFAULT NULL,
  `district` int(11) UNSIGNED DEFAULT NULL,
  `ward` int(10) UNSIGNED DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `tax_code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `note` text CHARACTER SET utf8,
  `user_id` int(11) DEFAULT NULL,
  `payment` int(11) DEFAULT NULL,
  `date` char(30) COLLATE utf8_bin DEFAULT NULL,
  `time` char(20) COLLATE utf8_bin DEFAULT NULL,
  `date_time` int(11) DEFAULT NULL,
  `wallet` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `code`, `phone`, `fax`, `email`, `address`, `place`, `province`, `district`, `ward`, `company`, `tax_code`, `note`, `user_id`, `payment`, `date`, `time`, `date_time`, `wallet`) VALUES
(21, 'Công ty A.D.C', 'NCC21', '0986839102', '', '', '', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, '1521185291', 1521133200, NULL),
(22, 'CÔNG TY CỔ PHẦN QTS', 'NCC22', '0956546564', '', '', '', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, '1521185730', 1521133200, NULL),
(23, 'VN SOLUTION', 'NCC23', '0976586575', '', '', '', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, '1521187604', 1521133200, NULL),
(24, 'CÔNG TY CỔ PHẦN QTS', 'NCC24', '0965 647 543', '', '', '', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, '1523519688', 1523466000, NULL),
(25, 'GOOGLE COMPANY', 'NCC25', '0865544579', '', '', '', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, '1523519718', 1523466000, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplier_debt`
--

CREATE TABLE `supplier_debt` (
  `id` int(11) NOT NULL,
  `id_supplier` int(11) DEFAULT NULL,
  `id_create` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `nkd` float(22,0) DEFAULT NULL,
  `ghino` float(22,0) DEFAULT NULL,
  `ghico` float(22,0) DEFAULT NULL,
  `nkc` float(22,0) DEFAULT NULL,
  `type` tinyint(2) DEFAULT NULL,
  `date_time` int(11) DEFAULT NULL,
  `time_insert` int(11) DEFAULT NULL,
  `note` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `support_online`
--

CREATE TABLE `support_online` (
  `id` int(11) NOT NULL,
  `yahoo` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `skype` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `image` varchar(70) CHARACTER SET utf8 DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `support_online`
--

INSERT INTO `support_online` (`id`, `yahoo`, `phone`, `skype`, `email`, `name`, `active`, `image`, `type`, `address`) VALUES
(19, 'https://id.zalo.me/account/login?continue=https%3A', '0936236786', 'skype_trantrung', 'trunag123@gmail.com', 'Mr Trung', 1, NULL, 2, 'abc'),
(20, 'yahoo_tranmanh', '0977160509', 'https://www.facebook.com/', 'tranmanh@gmail.com', 'đặng trần mạnh', 1, NULL, 0, ''),
(21, 'https://id.zalo.me/account/login?continue=https%3A', '0936236786', 'skype_trantrung', 'trunag123@gmail.com', 'Mr Trung', 1, '', 2, 'abc'),
(22, 'yahoo_tranmanh', '0977160509', 'https://www.facebook.com/', 'tranmanh@gmail.com', 'đặng trần mạnh', 1, '', 0, ''),
(23, 'https://id.zalo.me/account/login?continue=https%3A', '0936236786', 'skype_trantrung', 'trunag123@gmail.com', 'Mr Trung', 1, '', 2, 'abc'),
(24, 'yahoo_tranmanh', '0977160509', 'https://www.facebook.com/', 'tranmanh@gmail.com', 'đặng trần mạnh', 1, '', 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags_news`
--

CREATE TABLE `tags_news` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags_to_news`
--

CREATE TABLE `tags_to_news` (
  `id` int(11) NOT NULL,
  `id_raovat` int(11) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags_to_product`
--

CREATE TABLE `tags_to_product` (
  `id` int(11) NOT NULL,
  `id_tags` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_xnt`
--

CREATE TABLE `tbl_xnt` (
  `id` int(11) NOT NULL,
  `date` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `date_time` int(11) DEFAULT NULL,
  `mahh` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sltd` int(11) DEFAULT NULL COMMENT 'Số lượng tồn đầu ngày',
  `sln` int(11) DEFAULT NULL COMMENT 'Số lượng hàng nhập trong ngày',
  `slx` int(11) DEFAULT NULL COMMENT 'Số lượng hàng xuất trong ngày',
  `sltc` int(11) DEFAULT NULL COMMENT 'Số lượng hàng tồn cuối ngày',
  `sltt` int(11) DEFAULT NULL COMMENT 'Số lượng hàng tồn tối thiểu',
  `product_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL COMMENT 'Giá Hiện Tại',
  `price_export` int(11) DEFAULT NULL COMMENT 'Giá Xuất Hàng',
  `price_import` int(11) DEFAULT NULL COMMENT 'Giá Nhập Hàng'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tbl_xnt`
--

INSERT INTO `tbl_xnt` (`id`, `date`, `date_time`, `mahh`, `sltd`, `sln`, `slx`, `sltc`, `sltt`, `product_id`, `price`, `price_export`, `price_import`) VALUES
(230, '1523552400', 1523603853, 'HH186', 33, 0, 2, 31, 1, 186, 450000, NULL, NULL),
(231, '1523552400', 1523603975, 'HH185', 15, 0, 5, 10, 1, 185, 400000, NULL, NULL),
(232, '1523552400', 1523606629, 'HH185', 10, 0, 1, 9, 1, 185, 400000, NULL, NULL),
(233, '1523552400', 1523607051, 'HH185', 9, 0, 1, 8, 1, 185, 400000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_ke_online`
--

CREATE TABLE `thong_ke_online` (
  `id` int(11) NOT NULL,
  `access_date` int(11) NOT NULL,
  `today` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=FIXED;

--
-- Đang đổ dữ liệu cho bảng `thong_ke_online`
--

INSERT INTO `thong_ke_online` (`id`, `access_date`, `today`) VALUES
(37, 1517850000, 0),
(38, 1517936400, 1),
(39, 1518022800, 29),
(40, 1518109200, 20),
(41, 1519578000, 9),
(42, 1519664400, 15),
(43, 1519750800, 5),
(44, 1521046800, 55),
(45, 1521133200, 9),
(46, 1521219600, 233),
(47, 1522256400, 765),
(48, 1522342800, 2933),
(49, 1522429200, 777),
(50, 1522774800, 561),
(51, 1522861200, 13),
(52, 1523034000, 378),
(53, 1523206800, 168),
(54, 1523293200, 41),
(55, 1523379600, 6),
(56, 1523466000, 147),
(57, 1523552400, 554),
(58, 1523638800, 17),
(59, 1523984400, 80),
(60, 1525107600, 96),
(61, 1525194000, 10),
(62, 1525539600, 53),
(63, 1526144400, 0),
(64, 1526662800, 186),
(65, 1527267600, 61),
(66, 1527354000, 0),
(67, 1527613200, 1),
(68, 1527699600, 22),
(69, 1527786000, 125),
(70, 1527872400, 1),
(71, 1527958800, 0),
(72, 1528045200, 1),
(73, 1528131600, 8),
(74, 1528304400, 0),
(75, 1528390800, 11),
(76, 1528477200, 67),
(77, 1528563600, 36),
(78, 1528736400, 3),
(79, 1529514000, 41),
(80, 1529600400, 5),
(81, 1530378000, 1),
(82, 1530810000, 0),
(83, 1531414800, 1),
(84, 1531501200, 42),
(85, 1531587600, 1),
(86, 1531760400, 16),
(87, 1534179600, 69),
(88, 1534266000, 229),
(89, 1534352400, 241),
(90, 1534438800, 28),
(91, 1534525200, 1),
(92, 1534611600, 1),
(93, 1534698000, 2),
(94, 1534784400, 2),
(95, 1535994000, 36),
(96, 1537030800, 190),
(97, 1537117200, 15),
(98, 1537203600, 28),
(99, 1537376400, 67),
(100, 1537462800, 1),
(101, 1537549200, 123),
(102, 1537635600, 182),
(103, 1538326800, 4),
(104, 1538758800, 146),
(105, 1538845200, 382),
(106, 1539018000, 4),
(107, 1539104400, 33),
(108, 1539190800, 4),
(109, 1539536400, 469),
(110, 1539622800, 363),
(111, 1539795600, 648),
(112, 1539882000, 1079),
(113, 1539968400, 632),
(114, 1540054800, 405),
(115, 1540141200, 7),
(116, 1540227600, 0),
(117, 1540314000, 2),
(118, 1540400400, 0),
(119, 1540573200, 50),
(120, 1540659600, 2),
(121, 1540832400, 199),
(122, 1541005200, 21),
(123, 1541091600, 5),
(124, 1541178000, 54),
(125, 1541264400, 63),
(126, 1541350800, 334),
(127, 1541437200, 429),
(128, 1541523600, 858),
(129, 1541696400, 7),
(130, 1541782800, 90),
(131, 1541955600, 342);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `md5_id` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `username` varchar(35) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(35) CHARACTER SET utf8 NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `use_salt` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `shop_name` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `avt_dir` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `avatar` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `use_logo` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `block` tinyint(3) UNSIGNED DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` int(1) UNSIGNED DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address_province` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `address_district` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `address_ward` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `use_mobile` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `use_face` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `use_yahoo` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `use_skype` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `use_group` int(3) UNSIGNED DEFAULT NULL,
  `active` int(1) UNSIGNED DEFAULT NULL,
  `use_key` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `smskey` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `token` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `deleted` tinyint(3) UNSIGNED DEFAULT NULL,
  `use_regisdate` int(11) UNSIGNED DEFAULT NULL,
  `use_enddate` int(11) UNSIGNED DEFAULT NULL,
  `lastest_login` int(11) UNSIGNED DEFAULT NULL,
  `signup_date` int(11) DEFAULT NULL,
  `lever` tinyint(1) DEFAULT '0',
  `oauth_provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `md5_id`, `username`, `phone`, `email`, `password`, `fullname`, `use_salt`, `shop_name`, `avt_dir`, `avatar`, `use_logo`, `block`, `birthday`, `sex`, `address`, `address_province`, `address_district`, `address_ward`, `use_mobile`, `use_face`, `use_yahoo`, `use_skype`, `use_group`, `active`, `use_key`, `smskey`, `token`, `deleted`, `use_regisdate`, `use_enddate`, `lastest_login`, `signup_date`, `lever`, `oauth_provider`) VALUES
(645, '5e9f92a01c986bafcabbafd145520b13', 'admin', '0963719570', 'vnsoftadmin@gmail.com', 'c26be8aaf53b15054896983b43eb6a65', 'vnsoft', '0bvW6de9', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '9671508f22c9982fbac60ffc130f9b7811ec2b4d7f6e9f253679a3b950a3f5c8', NULL, '448ca46e6f02780e000be81aeeca4041', NULL, 1537030800, 1537030800, 1542006063, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_sms`
--

CREATE TABLE `user_sms` (
  `id` int(11) NOT NULL,
  `smsid` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8,
  `result` int(11) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `error` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `comment` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `create_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `user_sms`
--

INSERT INTO `user_sms` (`id`, `smsid`, `userid`, `phone`, `content`, `result`, `count`, `error`, `comment`, `create_at`) VALUES
(5, '1130b1db-ffcb-477b-862b-040e60174a888', 76, '0974901590', 'Mã Kích Hoạt SMS : 5950ac70440c6', 100, 0, NULL, NULL, '2017-06-26 13:40:48'),
(6, '3141f19d-e25d-46fb-9cff-9c1cdd3371fb8', 76, '0974901590', 'abc test gửi lại', 100, 0, NULL, 'gửi lại', '2017-06-26 13:41:39'),
(7, NULL, 610, '0986839102', 'Mã Kích Hoạt SMS : 5954a8af5779f', 103, 0, 'Balance not enough to send message', NULL, '2017-06-29 14:13:53'),
(8, NULL, 611, '0986839102', 'Mã Kích Hoạt SMS : 5954a9ed7f497', 103, 0, 'Balance not enough to send message', NULL, '2017-06-29 14:19:09'),
(9, NULL, 612, '0965986385', 'Mã Kích Hoạt SMS : 5954b39739ebb', 103, 0, 'Balance not enough to send message', NULL, '2017-06-29 15:00:23'),
(10, NULL, 613, '01649962597', 'Mã Kích Hoạt SMS : 5955bbaedda8d', 103, 0, 'Balance not enough to send message', NULL, '2017-06-30 09:47:11'),
(11, NULL, 614, '987654321', 'Mã Kích Hoạt SMS : 595606e747183', 103, 0, 'Balance not enough to send message', NULL, '2017-06-30 15:08:07'),
(12, NULL, 615, '324234234', 'Mã Kích Hoạt SMS : 5956074367a46', 99, 0, 'Phone not valid:324234234', NULL, '2017-06-30 15:09:39'),
(13, NULL, 616, '0915460000', 'Mã Kích Hoạt SMS : 595a22e73caf4', 103, 0, 'Balance not enough to send message', NULL, '2017-07-03 17:56:39'),
(14, NULL, 617, '01649962597', 'Mã Kích Hoạt SMS : 595ae9294eb32', 103, 0, 'Balance not enough to send message', NULL, '2017-07-04 08:02:33'),
(15, NULL, 618, '0985088848', 'Mã Kích Hoạt SMS : 595b3b0287471', 103, 0, 'Balance not enough to send message', NULL, '2017-07-04 13:51:46'),
(16, NULL, 619, '0985088848', 'Mã Kích Hoạt SMS : 595c4381c1481', 103, 0, 'Balance not enough to send message', NULL, '2017-07-05 08:40:19'),
(17, NULL, 620, '0986126561', 'Mã Kích Hoạt SMS : 595f3520d9e2e', 103, 0, 'Balance not enough to send message', NULL, '2017-07-07 14:15:45'),
(18, NULL, 621, '0987999947', 'Mã Kích Hoạt SMS : 5960999273327', 103, 0, 'Balance not enough to send message', NULL, '2017-07-08 15:36:34'),
(19, NULL, 622, '0869118060', 'Mã Kích Hoạt SMS : 59638b308df68', 103, 0, 'Balance not enough to send message', NULL, '2017-07-10 21:12:00'),
(20, NULL, 623, '0983003484', 'Mã Kích Hoạt SMS : 59661988955c0', 103, 0, 'Balance not enough to send message', NULL, '2017-07-12 19:43:52'),
(21, NULL, 624, '01652724972', 'Mã Kích Hoạt SMS : 5966e56f21617', 103, 0, 'Balance not enough to send message', NULL, '2017-07-13 10:13:51'),
(22, NULL, 625, '09164278201', 'Mã Kích Hoạt SMS : 59697ab70dbfb', 99, 0, 'Phone not valid:09164278201', NULL, '2017-07-15 09:15:19'),
(23, NULL, 626, '0964278201', 'Mã Kích Hoạt SMS : 59697b7e356e4', 103, 0, 'Balance not enough to send message', NULL, '2017-07-15 09:18:38'),
(24, NULL, 627, '09642728201', 'Mã Kích Hoạt SMS : 59697cba3fe16', 99, 0, 'Phone not valid:09642728201', NULL, '2017-07-15 09:23:54'),
(25, NULL, 628, '0964278201', 'Mã Kích Hoạt SMS : 5969ae9b73f4e', 103, 0, 'Balance not enough to send message', NULL, '2017-07-15 12:56:43'),
(26, NULL, 629, '0975279573', 'Mã Kích Hoạt SMS : 5972f6b2ed53b', 103, 0, 'Balance not enough to send message', NULL, '2017-07-22 13:54:43'),
(27, NULL, 630, '01648464081', 'Mã Kích Hoạt SMS : 5974f19ddd13a', 103, 0, 'Balance not enough to send message', NULL, '2017-07-24 01:57:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `link_video` text CHARACTER SET utf8,
  `title_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `keyword_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `lang` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `home` tinyint(1) DEFAULT NULL,
  `hot` tinyint(1) DEFAULT NULL,
  `focus` tinyint(1) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `image` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `alias` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `view` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `video`
--

INSERT INTO `video` (`id`, `name`, `description`, `link_video`, `title_seo`, `description_seo`, `keyword_seo`, `lang`, `category_id`, `home`, `hot`, `focus`, `sort`, `image`, `active`, `alias`, `time`, `view`) VALUES
(3, 'Video chú chó trắng', '', 'https://www.youtube.com/embed/tqriertkuUo', '', '', '', 'vi', 6, 1, NULL, NULL, 1, 'upload/img/video/dv1.png', 1, 'video-chu-cho-trang', 2147483647, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video_category`
--

CREATE TABLE `video_category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `home` tinyint(1) DEFAULT NULL,
  `hot` tinyint(1) DEFAULT NULL,
  `focus` tinyint(1) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `title_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description_seo` text CHARACTER SET utf8,
  `keyword_seo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `lang` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8,
  `parent_id` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `video_category`
--

INSERT INTO `video_category` (`id`, `name`, `alias`, `sort`, `home`, `hot`, `focus`, `image`, `title_seo`, `description_seo`, `keyword_seo`, `lang`, `description`, `parent_id`, `time`) VALUES
(6, 'Video', 'video', 1, 1, NULL, NULL, NULL, '', '', NULL, 'vi', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ward`
--

CREATE TABLE `ward` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `pre` varchar(50) CHARACTER SET utf8 NOT NULL,
  `districtid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `pro_id` decimal(21,0) DEFAULT NULL,
  `user_id` decimal(21,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=FIXED;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `alias`
--
ALTER TABLE `alias`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `cashbook`
--
ALTER TABLE `cashbook`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `cashtype`
--
ALTER TABLE `cashtype`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `code_sale`
--
ALTER TABLE `code_sale`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `comments_binhluan`
--
ALTER TABLE `comments_binhluan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `config_banner`
--
ALTER TABLE `config_banner`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `config_checkpro`
--
ALTER TABLE `config_checkpro`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `config_class`
--
ALTER TABLE `config_class`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `config_icon`
--
ALTER TABLE `config_icon`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `config_menu`
--
ALTER TABLE `config_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `customer_debt`
--
ALTER TABLE `customer_debt`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `debt_supplier`
--
ALTER TABLE `debt_supplier`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `inuser`
--
ALTER TABLE `inuser`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `inuser_category`
--
ALTER TABLE `inuser_category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `inuser_to_category`
--
ALTER TABLE `inuser_to_category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `invoices_detail`
--
ALTER TABLE `invoices_detail`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `khoanggia`
--
ALTER TABLE `khoanggia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `map_shopping`
--
ALTER TABLE `map_shopping`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `media_category`
--
ALTER TABLE `media_category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `media_images`
--
ALTER TABLE `media_images`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `news_category`
--
ALTER TABLE `news_category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `news_to_category`
--
ALTER TABLE `news_to_category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `product_brand`
--
ALTER TABLE `product_brand`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `product_hangsx`
--
ALTER TABLE `product_hangsx`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_img`
--
ALTER TABLE `product_img`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `product_locale`
--
ALTER TABLE `product_locale`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `product_old`
--
ALTER TABLE `product_old`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `product_price`
--
ALTER TABLE `product_price`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`product_tag_id`) USING BTREE,
  ADD KEY `product_id` (`product_id`) USING BTREE,
  ADD KEY `language_id` (`lang`) USING BTREE,
  ADD KEY `tag` (`tag`) USING BTREE;

--
-- Chỉ mục cho bảng `product_to_category`
--
ALTER TABLE `product_to_category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `product_to_color`
--
ALTER TABLE `product_to_color`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `product_to_option`
--
ALTER TABLE `product_to_option`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `product_to_season`
--
ALTER TABLE `product_to_season`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `product_to_size`
--
ALTER TABLE `product_to_size`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `province_copy`
--
ALTER TABLE `province_copy`
  ADD PRIMARY KEY (`provinceid`);

--
-- Chỉ mục cho bảng `pro_size`
--
ALTER TABLE `pro_size`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `pucharse`
--
ALTER TABLE `pucharse`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `pucharse_detail`
--
ALTER TABLE `pucharse_detail`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `p_images`
--
ALTER TABLE `p_images`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `raovat`
--
ALTER TABLE `raovat`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `raovat_category`
--
ALTER TABLE `raovat_category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `raovat_images`
--
ALTER TABLE `raovat_images`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `raovat_tag`
--
ALTER TABLE `raovat_tag`
  ADD PRIMARY KEY (`raovat_tag_id`) USING BTREE;

--
-- Chỉ mục cho bảng `raovat_to_category`
--
ALTER TABLE `raovat_to_category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `search_data`
--
ALTER TABLE `search_data`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `site_log`
--
ALTER TABLE `site_log`
  ADD PRIMARY KEY (`site_log_id`) USING BTREE;

--
-- Chỉ mục cho bảng `site_option`
--
ALTER TABLE `site_option`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `staticpage`
--
ALTER TABLE `staticpage`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `stocks_detail`
--
ALTER TABLE `stocks_detail`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `street`
--
ALTER TABLE `street`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `supplier_debt`
--
ALTER TABLE `supplier_debt`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `support_online`
--
ALTER TABLE `support_online`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `tags_news`
--
ALTER TABLE `tags_news`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `tags_to_news`
--
ALTER TABLE `tags_to_news`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `tags_to_product`
--
ALTER TABLE `tags_to_product`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `tbl_xnt`
--
ALTER TABLE `tbl_xnt`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `thong_ke_online`
--
ALTER TABLE `thong_ke_online`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `user_sms`
--
ALTER TABLE `user_sms`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `video_category`
--
ALTER TABLE `video_category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `ward`
--
ALTER TABLE `ward`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `access`
--
ALTER TABLE `access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `alias`
--
ALTER TABLE `alias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=487;

--
-- AUTO_INCREMENT cho bảng `cashbook`
--
ALTER TABLE `cashbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cashtype`
--
ALTER TABLE `cashtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `code_sale`
--
ALTER TABLE `code_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `comments_binhluan`
--
ALTER TABLE `comments_binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `config_banner`
--
ALTER TABLE `config_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `config_checkpro`
--
ALTER TABLE `config_checkpro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `config_class`
--
ALTER TABLE `config_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `config_menu`
--
ALTER TABLE `config_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `customer_debt`
--
ALTER TABLE `customer_debt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `debt_supplier`
--
ALTER TABLE `debt_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=698;

--
-- AUTO_INCREMENT cho bảng `document`
--
ALTER TABLE `document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT cho bảng `inuser`
--
ALTER TABLE `inuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `inuser_category`
--
ALTER TABLE `inuser_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `inuser_to_category`
--
ALTER TABLE `inuser_to_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT cho bảng `invoices_detail`
--
ALTER TABLE `invoices_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;

--
-- AUTO_INCREMENT cho bảng `khoanggia`
--
ALTER TABLE `khoanggia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `map_shopping`
--
ALTER TABLE `map_shopping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `media_category`
--
ALTER TABLE `media_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `media_images`
--
ALTER TABLE `media_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `news_category`
--
ALTER TABLE `news_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `news_to_category`
--
ALTER TABLE `news_to_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT cho bảng `product_brand`
--
ALTER TABLE `product_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT cho bảng `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `product_hangsx`
--
ALTER TABLE `product_hangsx`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT cho bảng `product_img`
--
ALTER TABLE `product_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_locale`
--
ALTER TABLE `product_locale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `product_old`
--
ALTER TABLE `product_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_price`
--
ALTER TABLE `product_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `product_tag_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_to_category`
--
ALTER TABLE `product_to_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=972;

--
-- AUTO_INCREMENT cho bảng `product_to_color`
--
ALTER TABLE `product_to_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `product_to_option`
--
ALTER TABLE `product_to_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_to_season`
--
ALTER TABLE `product_to_season`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_to_size`
--
ALTER TABLE `product_to_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `pro_size`
--
ALTER TABLE `pro_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pucharse`
--
ALTER TABLE `pucharse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pucharse_detail`
--
ALTER TABLE `pucharse_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `p_images`
--
ALTER TABLE `p_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT cho bảng `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `raovat`
--
ALTER TABLE `raovat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `raovat_category`
--
ALTER TABLE `raovat_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `raovat_images`
--
ALTER TABLE `raovat_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `raovat_tag`
--
ALTER TABLE `raovat_tag`
  MODIFY `raovat_tag_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `raovat_to_category`
--
ALTER TABLE `raovat_to_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT cho bảng `search_data`
--
ALTER TABLE `search_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `site_log`
--
ALTER TABLE `site_log`
  MODIFY `site_log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17285;

--
-- AUTO_INCREMENT cho bảng `staticpage`
--
ALTER TABLE `staticpage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `stocks_detail`
--
ALTER TABLE `stocks_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `street`
--
ALTER TABLE `street`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `supplier_debt`
--
ALTER TABLE `supplier_debt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `support_online`
--
ALTER TABLE `support_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tags_news`
--
ALTER TABLE `tags_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tags_to_news`
--
ALTER TABLE `tags_to_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tags_to_product`
--
ALTER TABLE `tags_to_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_xnt`
--
ALTER TABLE `tbl_xnt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT cho bảng `thong_ke_online`
--
ALTER TABLE `thong_ke_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=646;

--
-- AUTO_INCREMENT cho bảng `user_sms`
--
ALTER TABLE `user_sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `video_category`
--
ALTER TABLE `video_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `ward`
--
ALTER TABLE `ward`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
