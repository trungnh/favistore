-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 28, 2021 lúc 02:41 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.4.21

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `favimart`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_config`
--

CREATE TABLE `admin_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `security` int(11) DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `detail` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_config`
--

INSERT INTO `admin_config` (`id`, `group`, `code`, `key`, `value`, `security`, `store_id`, `sort`, `detail`) VALUES
(1, 'Plugins', 'Payment', 'Cash', '1', 0, 0, 0, 'Plugins/Payment/Cash::lang.title'),
(2, 'Plugins', 'Shipping', 'ShippingStandard', '1', 0, 0, 0, 'Shipping Standard'),
(3, 'global', 'env_global', 'ADMIN_LOG', 'on', 0, 0, 0, 'admin.env.ADMIN_LOG'),
(4, 'global', 'env_global', 'ADMIN_FOOTER_OFF', '1', 0, 0, 0, 'admin.env.ADMIN_FOOTER_OFF'),
(5, 'global', 'seo_config', 'url_seo_lang', '0', 0, 0, 1, 'seo.url_seo_lang'),
(6, 'global', 'webhook_config', 'LOG_SLACK_WEBHOOK_URL', '', 0, 0, 0, 'admin.config.LOG_SLACK_WEBHOOK_URL'),
(7, 'global', 'webhook_config', 'GOOGLE_CHAT_WEBHOOK_URL', '', 0, 0, 0, 'admin.config.GOOGLE_CHAT_WEBHOOK_URL'),
(8, 'global', 'webhook_config', 'CHATWORK_CHAT_WEBHOOK_URL', '', 0, 0, 0, 'admin.config.CHATWORK_CHAT_WEBHOOK_URL'),
(9, 'global', 'api_config', 'api_connection_required', '1', 0, 0, 1, 'api_connection.api_connection_required'),
(10, 'global', 'cache', 'cache_status', '0', 0, 0, 0, 'admin.cache.cache_status'),
(11, 'global', 'cache', 'cache_time', '600', 0, 0, 0, 'admin.cache.cache_time'),
(12, 'global', 'cache', 'cache_category', '0', 0, 0, 3, 'admin.cache.cache_category'),
(13, 'global', 'cache', 'cache_product', '0', 0, 0, 4, 'admin.cache.cache_product'),
(14, 'global', 'cache', 'cache_news', '0', 0, 0, 5, 'admin.cache.cache_news'),
(15, 'global', 'cache', 'cache_category_cms', '0', 0, 0, 6, 'admin.cache.cache_category_cms'),
(16, 'global', 'cache', 'cache_content_cms', '0', 0, 0, 7, 'admin.cache.cache_content_cms'),
(17, 'global', 'cache', 'cache_page', '0', 0, 0, 8, 'admin.cache.cache_page'),
(18, 'global', 'cache', 'cache_country', '0', 0, 0, 10, 'admin.cache.cache_country'),
(19, 'global', 'env_mail', 'smtp_mode', '', 0, 0, 0, 'email.smtp_mode'),
(20, '', 'product_config_attribute', 'product_brand', '1', 0, 1, 0, 'product.config_manager.brand'),
(21, '', 'product_config_attribute_required', 'product_brand_required', '0', 0, 1, 0, ''),
(22, '', 'product_config_attribute', 'product_supplier', '1', 0, 1, 0, 'product.config_manager.supplier'),
(23, '', 'product_config_attribute_required', 'product_supplier_required', '0', 0, 1, 0, ''),
(24, '', 'product_config_attribute', 'product_price', '1', 0, 1, 0, 'product.config_manager.price'),
(25, '', 'product_config_attribute_required', 'product_price_required', '1', 0, 1, 0, ''),
(26, '', 'product_config_attribute', 'product_cost', '1', 0, 1, 0, 'product.config_manager.cost'),
(27, '', 'product_config_attribute_required', 'product_cost_required', '0', 0, 1, 0, ''),
(28, '', 'product_config_attribute', 'product_promotion', '1', 0, 1, 0, 'product.config_manager.promotion'),
(29, '', 'product_config_attribute_required', 'product_promotion_required', '0', 0, 1, 0, ''),
(30, '', 'product_config_attribute', 'product_stock', '1', 0, 1, 0, 'product.config_manager.stock'),
(31, '', 'product_config_attribute_required', 'product_stock_required', '0', 0, 1, 0, ''),
(32, '', 'product_config_attribute', 'product_kind', '1', 0, 1, 0, 'product.config_manager.kind'),
(33, '', 'product_config_attribute', 'product_property', '1', 0, 1, 0, 'product.config_manager.property'),
(34, '', 'product_config_attribute_required', 'product_property_required', '0', 0, 1, 0, ''),
(35, '', 'product_config_attribute', 'product_attribute', '1', 0, 1, 0, 'product.config_manager.attribute'),
(36, '', 'product_config_attribute_required', 'product_attribute_required', '0', 0, 1, 0, ''),
(37, '', 'product_config_attribute', 'product_available', '1', 0, 1, 0, 'product.config_manager.available'),
(38, '', 'product_config_attribute_required', 'product_available_required', '0', 0, 1, 0, ''),
(39, '', 'product_config_attribute', 'product_weight', '1', 0, 1, 0, 'product.config_manager.weight'),
(40, '', 'product_config_attribute_required', 'product_weight_required', '0', 0, 1, 0, ''),
(41, '', 'product_config_attribute', 'product_length', '1', 0, 1, 0, 'product.config_manager.length'),
(42, '', 'product_config_attribute_required', 'product_length_required', '0', 0, 1, 0, ''),
(43, '', 'product_config', 'product_display_out_of_stock', '1', 0, 1, 19, 'product.config_manager.product_display_out_of_stock'),
(44, '', 'product_config', 'show_date_available', '1', 0, 1, 21, 'product.config_manager.show_date_available'),
(45, '', 'product_config', 'product_tax', '1', 0, 1, 0, 'product.config_manager.tax'),
(46, '', 'customer_config_attribute', 'customer_lastname', '1', 0, 1, 1, 'customer.config_manager.lastname'),
(47, '', 'customer_config_attribute_required', 'customer_lastname_required', '1', 0, 1, 1, ''),
(48, '', 'customer_config_attribute', 'customer_address1', '1', 0, 1, 2, 'customer.config_manager.address1'),
(49, '', 'customer_config_attribute_required', 'customer_address1_required', '1', 0, 1, 2, ''),
(50, '', 'customer_config_attribute', 'customer_address2', '1', 0, 1, 2, 'customer.config_manager.address2'),
(51, '', 'customer_config_attribute_required', 'customer_address2_required', '1', 0, 1, 2, ''),
(52, '', 'customer_config_attribute', 'customer_address3', '0', 0, 1, 2, 'customer.config_manager.address3'),
(53, '', 'customer_config_attribute_required', 'customer_address3_required', '0', 0, 1, 2, ''),
(54, '', 'customer_config_attribute', 'customer_company', '0', 0, 1, 0, 'customer.config_manager.company'),
(55, '', 'customer_config_attribute_required', 'customer_company_required', '0', 0, 1, 0, ''),
(56, '', 'customer_config_attribute', 'customer_postcode', '0', 0, 1, 0, 'customer.config_manager.postcode'),
(57, '', 'customer_config_attribute_required', 'customer_postcode_required', '0', 0, 1, 0, ''),
(58, '', 'customer_config_attribute', 'customer_country', '1', 0, 1, 0, 'customer.config_manager.country'),
(59, '', 'customer_config_attribute_required', 'customer_country_required', '1', 0, 1, 0, ''),
(60, '', 'customer_config_attribute', 'customer_group', '0', 0, 1, 0, 'customer.config_manager.group'),
(61, '', 'customer_config_attribute_required', 'customer_group_required', '0', 0, 1, 0, ''),
(62, '', 'customer_config_attribute', 'customer_birthday', '0', 0, 1, 0, 'customer.config_manager.birthday'),
(63, '', 'customer_config_attribute_required', 'customer_birthday_required', '0', 0, 1, 0, ''),
(64, '', 'customer_config_attribute', 'customer_sex', '0', 0, 1, 0, 'customer.config_manager.sex'),
(65, '', 'customer_config_attribute_required', 'customer_sex_required', '0', 0, 1, 0, ''),
(66, '', 'customer_config_attribute', 'customer_phone', '1', 0, 1, 0, 'customer.config_manager.phone'),
(67, '', 'customer_config_attribute_required', 'customer_phone_required', '1', 0, 1, 1, ''),
(68, '', 'customer_config_attribute', 'customer_name_kana', '0', 0, 1, 0, 'customer.config_manager.name_kana'),
(69, '', 'customer_config_attribute_required', 'customer_name_kana_required', '0', 0, 1, 1, ''),
(70, '', 'admin_config', 'ADMIN_NAME', 'S-Cart System', 0, 1, 0, 'env.ADMIN_NAME'),
(71, '', 'admin_config', 'ADMIN_TITLE', 'S-Cart Admin', 0, 1, 0, 'env.ADMIN_TITLE'),
(72, '', 'admin_config', 'ADMIN_LOGO', 'S-Cart <span class=\"brand-text font-weight-light\">Admin</span>', 0, 1, 0, 'env.ADMIN_LOGO'),
(73, '', 'display_config', 'product_top', '8', 0, 1, 0, 'store.display.product_top'),
(74, '', 'display_config', 'product_list', '12', 0, 1, 0, 'store.display.list_product'),
(75, '', 'display_config', 'product_relation', '4', 0, 1, 0, 'store.display.relation_product'),
(76, '', 'display_config', 'product_viewed', '4', 0, 1, 0, 'store.display.viewed_product'),
(77, '', 'display_config', 'item_list', '12', 0, 1, 0, 'store.display.item_list'),
(78, '', 'display_config', 'item_top', '8', 0, 1, 0, 'store.display.item_top'),
(79, '', 'order_config', 'shop_allow_guest', '1', 0, 1, 11, 'order.admin.shop_allow_guest'),
(80, '', 'order_config', 'product_preorder', '1', 0, 1, 18, 'order.admin.product_preorder'),
(81, '', 'order_config', 'product_buy_out_of_stock', '1', 0, 1, 20, 'order.admin.product_buy_out_of_stock'),
(82, '', 'order_config', 'shipping_off', '0', 0, 1, 20, 'order.admin.shipping_off'),
(83, '', 'order_config', 'payment_off', '0', 0, 1, 20, 'order.admin.payment_off'),
(84, '', 'email_action', 'email_action_mode', '0', 0, 1, 0, 'email.email_action.email_action_mode'),
(85, '', 'email_action', 'email_action_queue', '0', 0, 1, 1, 'email.email_action.email_action_queue'),
(86, '', 'email_action', 'order_success_to_admin', '0', 0, 1, 1, 'email.email_action.order_success_to_admin'),
(87, '', 'email_action', 'order_success_to_customer', '0', 0, 1, 2, 'email.email_action.order_success_to_cutomer'),
(88, '', 'email_action', 'order_success_to_customer_pdf', '0', 0, 1, 3, 'email.email_action.order_success_to_cutomer_pdf'),
(89, '', 'email_action', 'customer_verify', '0', 0, 1, 4, 'email.email_action.customer_verify'),
(90, '', 'email_action', 'welcome_customer', '0', 0, 1, 4, 'email.email_action.welcome_customer'),
(91, '', 'email_action', 'contact_to_admin', '1', 0, 1, 6, 'email.email_action.contact_to_admin'),
(92, '', 'smtp_config', 'smtp_host', '', 0, 1, 1, 'email.config_smtp.smtp_host'),
(93, '', 'smtp_config', 'smtp_user', '', 0, 1, 2, 'email.config_smtp.smtp_user'),
(94, '', 'smtp_config', 'smtp_password', '', 0, 1, 3, 'email.config_smtp.smtp_password'),
(95, '', 'smtp_config', 'smtp_security', '', 0, 1, 4, 'email.config_smtp.smtp_security'),
(96, '', 'smtp_config', 'smtp_port', '', 0, 1, 5, 'email.config_smtp.smtp_port'),
(97, '', 'smtp_config', 'smtp_name', '', 0, 1, 6, 'email.config_smtp.smtp_name'),
(98, '', 'smtp_config', 'smtp_from', '', 0, 1, 7, 'email.config_smtp.smtp_from'),
(99, '', 'url_config', 'SUFFIX_URL', '.html', 0, 1, 0, 'admin.env.SUFFIX_URL'),
(100, '', 'url_config', 'PREFIX_SHOP', 'shop', 0, 1, 0, 'admin.env.PREFIX_SHOP'),
(101, '', 'url_config', 'PREFIX_BRAND', 'brand', 0, 1, 0, 'admin.env.PREFIX_BRAND'),
(102, '', 'url_config', 'PREFIX_CATEGORY', 'category', 0, 1, 0, 'admin.env.PREFIX_CATEGORY'),
(103, '', 'url_config', 'PREFIX_CATEGORY_VENDOR', 'category-vendor', 0, 1, 0, 'admin.env.PREFIX_CATEGORY_VENDOR'),
(104, '', 'url_config', 'PREFIX_SUB_CATEGORY', 'sub-category', 0, 1, 0, 'admin.env.PREFIX_SUB_CATEGORY'),
(105, '', 'url_config', 'PREFIX_PRODUCT', 'product', 0, 1, 0, 'admin.env.PREFIX_PRODUCT'),
(106, '', 'url_config', 'PREFIX_SEARCH', 'search', 0, 1, 0, 'admin.env.PREFIX_SEARCH'),
(107, '', 'url_config', 'PREFIX_CONTACT', 'contact', 0, 1, 0, 'admin.env.PREFIX_CONTACT'),
(108, '', 'url_config', 'PREFIX_NEWS', 'news', 0, 1, 0, 'admin.env.PREFIX_NEWS'),
(109, '', 'url_config', 'PREFIX_MEMBER', 'customer', 0, 1, 0, 'admin.env.PREFIX_MEMBER'),
(110, '', 'url_config', 'PREFIX_MEMBER_ORDER_LIST', 'order-list', 0, 1, 0, 'admin.env.PREFIX_MEMBER_ORDER_LIST'),
(111, '', 'url_config', 'PREFIX_MEMBER_CHANGE_PWD', 'change-password', 0, 1, 0, 'admin.env.PREFIX_MEMBER_CHANGE_PWD'),
(112, '', 'url_config', 'PREFIX_MEMBER_CHANGE_INFO', 'change-info', 0, 1, 0, 'admin.env.PREFIX_MEMBER_CHANGE_INFO'),
(113, '', 'url_config', 'PREFIX_CMS_CATEGORY', 'cms-category', 0, 1, 0, 'admin.env.PREFIX_CMS_CATEGORY'),
(114, '', 'url_config', 'PREFIX_CMS_ENTRY', 'entry', 0, 1, 0, 'admin.env.PREFIX_CMS_ENTRY'),
(115, '', 'url_config', 'PREFIX_CART_WISHLIST', 'wishlst', 0, 1, 0, 'admin.env.PREFIX_CART_WISHLIST'),
(116, '', 'url_config', 'PREFIX_CART_COMPARE', 'compare', 0, 1, 0, 'admin.env.PREFIX_CART_COMPARE'),
(117, '', 'url_config', 'PREFIX_CART_DEFAULT', 'cart', 0, 1, 0, 'admin.env.PREFIX_CART_DEFAULT'),
(118, '', 'url_config', 'PREFIX_CART_CHECKOUT', 'checkout', 0, 1, 0, 'admin.env.PREFIX_CART_CHECKOUT'),
(119, '', 'url_config', 'PREFIX_CART_CHECKOUT_CONFIRM', 'checkout-confirm', 0, 1, 0, 'admin.env.PREFIX_CART_CHECKOUT_CONFIRM'),
(120, '', 'url_config', 'PREFIX_ORDER_SUCCESS', 'order-success', 0, 1, 0, 'admin.env.PREFIX_ORDER_SUCCESS'),
(121, '', 'captcha_config', 'captcha_mode', '0', 0, 1, 20, 'admin.captcha.captcha_mode'),
(122, '', 'captcha_config', 'captcha_page', '[]', 0, 1, 10, 'captcha.captcha_page'),
(123, '', 'captcha_config', 'captcha_method', '', 0, 1, 0, 'admin.captcha.captcha_method');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_log`
--

CREATE TABLE `admin_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_log`
--

INSERT INTO `admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'backend', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:13:33', '2021-07-21 04:13:33'),
(2, 1, 'backend/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:14:01', '2021-07-21 04:14:01'),
(3, 1, 'backend/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:14:05', '2021-07-21 04:14:05'),
(4, 1, 'backend/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:15:45', '2021-07-21 04:15:45'),
(5, 1, 'backend/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:15:48', '2021-07-21 04:15:48'),
(6, 1, 'backend/news/edit/6', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:15:52', '2021-07-21 04:15:52'),
(7, 1, 'backend/store_maintain', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:15:57', '2021-07-21 04:15:57'),
(8, 1, 'backend/store_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:16:03', '2021-07-21 04:16:03'),
(9, 1, 'backend/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:16:17', '2021-07-21 04:16:17'),
(10, 1, 'backend/seo/config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:21:58', '2021-07-21 04:21:58'),
(11, 1, 'backend/config/update', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\",\"name\":\"url_seo_lang\",\"value\":\"1\"}', '2021-07-21 04:22:02', '2021-07-21 04:22:02'),
(12, 1, 'backend/config/update', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\",\"name\":\"url_seo_lang\",\"value\":\"0\"}', '2021-07-21 04:22:05', '2021-07-21 04:22:05'),
(13, 1, 'backend/env/config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:22:14', '2021-07-21 04:22:14'),
(14, 1, 'backend/order_status', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:22:24', '2021-07-21 04:22:24'),
(15, 1, 'backend/language', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:22:36', '2021-07-21 04:22:36'),
(16, 1, 'backend/language/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:22:40', '2021-07-21 04:22:40'),
(17, 1, 'backend/language/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"name\":\"English\",\"code\":\"en\",\"icon\":\"\\/data\\/language\\/flag_uk.png\",\"sort\":\"1\",\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\"}', '2021-07-21 04:22:59', '2021-07-21 04:22:59'),
(18, 1, 'backend/language/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:22:59', '2021-07-21 04:22:59'),
(19, 1, 'backend/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:23:07', '2021-07-21 04:23:07'),
(20, 1, 'backend/currency/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:23:10', '2021-07-21 04:23:10'),
(21, 1, 'backend/currency/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"name\":\"USD Dola\",\"code\":\"USD\",\"symbol\":\"$\",\"exchange_rate\":\"1\",\"precision\":\"0\",\"symbol_first\":\"1\",\"thousands\":\",\",\"sort\":\"0\",\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\"}', '2021-07-21 04:23:15', '2021-07-21 04:23:15'),
(22, 1, 'backend/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:23:16', '2021-07-21 04:23:16'),
(23, 1, 'backend/currency/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:23:18', '2021-07-21 04:23:18'),
(24, 1, 'backend/currency/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:23:39', '2021-07-21 04:23:39'),
(25, 1, 'backend/currency/edit/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"name\":\"VietNam Dong\",\"code\":\"VND\",\"symbol\":\"\\u20ab\",\"exchange_rate\":\"20\",\"precision\":\"0\",\"symbol_first\":\"0\",\"thousands\":\".\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\"}', '2021-07-21 04:23:51', '2021-07-21 04:23:51'),
(26, 1, 'backend/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:23:51', '2021-07-21 04:23:51'),
(27, 1, 'backend/api_connection', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:23:56', '2021-07-21 04:23:56'),
(28, 1, 'backend/store_block', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:24:11', '2021-07-21 04:24:11'),
(29, 1, 'backend/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:24:16', '2021-07-21 04:24:16'),
(30, 1, 'backend/store_block', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:24:32', '2021-07-21 04:24:32'),
(31, 1, 'backend/plugin/cms', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:24:40', '2021-07-21 04:24:40'),
(32, 1, 'backend/store_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:24:49', '2021-07-21 04:24:49'),
(33, 1, 'backend/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:26:40', '2021-07-21 04:26:40'),
(34, 1, 'backend/category/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"ids\":\"13,12,11,10,9,8,7,6,5,4,3,2,1\",\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\"}', '2021-07-21 04:26:59', '2021-07-21 04:26:59'),
(35, 1, 'backend/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-07-21 04:26:59', '2021-07-21 04:26:59'),
(36, 1, 'backend/category/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:29:05', '2021-07-21 04:29:05'),
(37, 1, 'backend/category/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"D\\u1ea7u g\\u1ed9i\",\"keyword\":\"dau goi, dau xa\",\"description\":\"D\\u1ea7u g\\u1ed9i\"}},\"parent\":\"0\",\"alias\":\"dau-goi\",\"image\":null,\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\"}', '2021-07-21 04:29:46', '2021-07-21 04:29:46'),
(38, 1, 'backend/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:29:47', '2021-07-21 04:29:47'),
(39, 1, 'backend/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:29:50', '2021-07-21 04:29:50'),
(40, 1, 'backend/product/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"ids\":\"16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1\",\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\"}', '2021-07-21 04:31:15', '2021-07-21 04:31:15'),
(41, 1, 'backend/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-07-21 04:31:16', '2021-07-21 04:31:16'),
(42, 1, 'backend/product/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"ids\":\"7,6,2,1\",\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\"}', '2021-07-21 04:31:28', '2021-07-21 04:31:28'),
(43, 1, 'backend/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-07-21 04:31:29', '2021-07-21 04:31:29'),
(44, 1, 'backend/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:31:31', '2021-07-21 04:31:31'),
(45, 1, 'backend/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"type\":\"product\"}', '2021-07-21 04:41:24', '2021-07-21 04:41:24'),
(46, 1, 'backend/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1626842485416\"}', '2021-07-21 04:41:25', '2021-07-21 04:41:25'),
(47, 1, 'backend/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1626842485415\"}', '2021-07-21 04:41:25', '2021-07-21 04:41:25'),
(48, 1, 'backend/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1626842485417\"}', '2021-07-21 04:41:26', '2021-07-21 04:41:26'),
(49, 1, 'backend/product/edit/17', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"C\\u1eb7p D\\u1ea7u G\\u1ed9i X\\u1ea3 Tigi \\u0110\\u1ecf 750mlx750ml\",\"keyword\":\"D\\u1ea7u g\\u1ed9i x\\u1ea3 tigi \\u0111\\u1ecf\",\"description\":\"B\\u1ed9 d\\u1ea7u g\\u1ed9i x\\u1ea3 Tigi Bed Head 250ml \\u0111ang \\u0111\\u01b0\\u1ee3c ch\\u1ecb em s\\u0103n l\\u00f9ng b\\u1edfi \\u0111\\u1ed9 ph\\u1ee5c h\\u1ed3i v\\u00e0 ch\\u0103m s\\u00f3c t\\u00f3c \\u201cth\\u1ea7n th\\u00e1nh\\u201d.\\r\\n\\r\\nD\\u01b0\\u1ee1ng ch\\u1ea5t c\\u00f3 trong d\\u1ea7u g\\u1ed9i x\\u1ea3 n\\u00e0y kh\\u00f4ng ch\\u1ec9 l\\u00e0m s\\u1ea1ch, nu\\u00f4i d\\u01b0\\u1ee1ng da \\u0111\\u1ea7u m\\u00e0 c\\u00f2n ph\\u1ee5c h\\u1ed3i s\\u1ef1 su\\u00f4n m\\u01b0\\u1ee3t ch\\u1eafc kh\\u1ecfe cho t\\u00f3c, ng\\u0103n ng\\u1eeba kh\\u00f4 x\\u01a1, g\\u00e3y r\\u1ee5ng, c\\u1ee7ng c\\u1ed1 \\u0111\\u1ed9 \\u1ea9m v\\u00e0 gia t\\u0103ng \\u0111\\u1ed9 b\\u00f3ng, t\\u00e1i t\\u1ea1o sinh l\\u1ef1c cho m\\u00e1i t\\u00f3c.\",\"content\":\"<p><strong>B\\u1ea1n \\u0111ang mu\\u1ed1n t&igrave;m ki\\u1ebfm m\\u1ed9t s\\u1ea3n ph\\u1ea9m d\\u1ea7u g\\u1ed9i, d\\u1ea7u x\\u1ea3 c&oacute; th\\u1ec3 gi&uacute;p b\\u1ea1n gi\\u1ea3i quy\\u1ebft \\u0111\\u01b0\\u1ee3c nh\\u1eefng v\\u1ea5n \\u0111\\u1ec1 sau:<\\/strong><br \\/>\\r\\n&rarr; Gi\\u1ea3m r\\u1ee5ng t&oacute;c.<br \\/>\\r\\n&rarr; Lo\\u1ea1i b\\u1ecf \\u0111\\u01b0\\u1ee3c g&agrave;u ng\\u1ee9a, kh&ocirc; x\\u01a1.<br \\/>\\r\\n&rarr; K&iacute;ch th&iacute;ch t&oacute;c m\\u1ecdc d&agrave;y v&agrave; ch\\u1eafc kho\\u1ebb h\\u01a1n.<br \\/>\\r\\n&rarr; Nu&ocirc;i d\\u01b0\\u1ee1ng t&oacute;c m\\u1ec1m m\\u1ea1i, su&ocirc;n m\\u01b0\\u1ee3t, b\\u1ed3ng b\\u1ec1nh t\\u1ef1 nhi&ecirc;n.<br \\/>\\r\\n&rarr; Ch\\u0103m s&oacute;c t&oacute;c an to&agrave;n, \\u0111&aacute;ng tin c\\u1eady.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i2.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/hinh-anh-bo-dau-goi-Tigi-Bed-Head-h1.jpg?w=500&amp;ssl=1\\\" style=\\\"width: 500px; height: 341px;\\\" \\/><\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><em>B\\u1ea1n c&oacute; \\u0111ang t&igrave;m ki\\u1ebfm cho m&igrave;nh s\\u1ea3n ph\\u1ea9m ch\\u0103m s&oacute;c t&oacute;c sao cho t\\u1ed1t nh\\u1ea5t kh&ocirc;ng?<\\/em><\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\ud83d\\udc49\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/1f449.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;V\\u1eady th&igrave;, b\\u1ed9 d\\u1ea7u g\\u1ed9i Tigi Bed Head ch&iacute;nh l&agrave; s\\u1ef1 l\\u1ef1a ch\\u1ecdn tuy\\u1ec7t v\\u1eddi m&agrave; b\\u1ea1n kh&ocirc;ng th\\u1ec3 b\\u1ecf qua \\u0111\\u1ec3 nhanh ch&oacute;ng s\\u1edf h\\u1eefu m&aacute;i t&oacute;c nh\\u01b0 &yacute; mu\\u1ed1n.<br \\/>\\r\\n&ndash; D\\u1ea7u g\\u1ed9i Tigi Bed Head \\u0111\\u1ecf \\u0111\\u01b0\\u1ee3c ch\\u1ee9ng minh l&agrave; c&oacute; hi\\u1ec7u qu\\u1ea3&nbsp;<strong>ph\\u1ee5c h\\u1ed3i t&oacute;c h\\u01b0 t\\u1ed5n, ng\\u0103n ch\\u1eb7n qu&aacute; tr&igrave;nh r\\u1ee5ng t&oacute;c v&agrave; k&iacute;ch th&iacute;ch m\\u1ecdc t&oacute;c<\\/strong>, d\\u01b0\\u1ee1ng t&oacute;c su&ocirc;n m\\u1ec1m, t\\u0103ng c\\u01b0\\u1eddng \\u0111\\u1ed9 \\u0111&agrave;n h\\u1ed3i cho t&oacute;c ch\\u1eafc kh\\u1ecfe sau 1-2 tu\\u1ea7n s\\u1eed d\\u1ee5ng.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i1.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/hinh-anh-bo-dau-goi-Tigi-Bed-Head-h2.jpg?w=500&amp;ssl=1\\\" style=\\\"width: 500px; height: 416px;\\\" \\/><\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><em>B\\u1ed9 d\\u1ea7u g\\u1ed9i Tigi Bed Head g\\u1ed3m 1 chai g\\u1ed9i 750ml + 1 chai x\\u1ea3 750ml<\\/em><\\/p>\\r\\n\\r\\n<table border=\\\"0\\\" cellpadding=\\\"1\\\" cellspacing=\\\"1\\\">\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<h2>C&ocirc;ng d\\u1ee5ng &ldquo;si&ecirc;u \\u0111\\u1ec9nh&rdquo; Tigi \\u0111em l\\u1ea1i cho m&aacute;i t&oacute;c:<\\/h2>\\r\\n\\r\\n\\t\\t\\t<p><img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;Lo\\u1ea1i b\\u1ecf m\\u1ecdi b\\u1ee5i b\\u1ea9n, b&atilde; nh\\u1eddn ho&agrave;n to&agrave;n gi&uacute;p da \\u0111\\u1ea7u s\\u1ea1ch s&acirc;u.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;Ng\\u0103n ng\\u1eeba t&igrave;nh tr\\u1ea1ng g&agrave;u, vi&ecirc;m ng\\u1ee9a v&agrave; c&aacute;c b\\u1ec7nh l&yacute; v\\u1ec1 da \\u0111\\u1ea7u.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;B\\u1ed5 sung d\\u01b0\\u1ee1ng ch\\u1ea5t nu&ocirc;i d\\u01b0\\u1ee1ng t&oacute;c ch\\u1eafc kh\\u1ecfe, b&oacute;ng m\\u01b0\\u1ee3t.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;T\\u0103ng c\\u01b0\\u1eddng \\u0111\\u1ed9 \\u0111&agrave;n h\\u1ed3i cho t&oacute;c, gi\\u1ea3m thi\\u1ec3u g&atilde;y r\\u1ee5ng v&agrave; kh&ocirc; x\\u01a1.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;B\\u1ea3o v\\u1ec7 t&oacute;c v\\u1edbi m&agrave;ng nano si&ecirc;u nh\\u1ecf ng\\u0103n ch\\u1eb7n t&aacute;c h\\u1ea1i c\\u1ee7a tia UV, t&aacute;c \\u0111\\u1ed9ng t\\u1eeb m&ocirc;i tr\\u01b0\\u1eddng b&ecirc;n ngo&agrave;i&hellip;<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;M&ugrave;i th\\u01a1m d\\u1ecbu nh\\u1eb9 \\u0111em l\\u1ea1i cho b\\u1ea1n c\\u1ea3m gi&aacute;c tho\\u1ea3i m&aacute;i, s\\u1ea3ng kho&aacute;i.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i1.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/toc-dai1.png\\\" style=\\\"height: 349px; width: 300px;\\\" \\/><\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i2.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/dau-goi-ti-gi-do-gia-dung-ninh-binh-combo-dau-goi-dau-xa-3-20210702093853.jpg?w=600&amp;ssl=1\\\" style=\\\"width: 300px; height: 300px;\\\" \\/><\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<h2>C\\u1ee9u Tinh Cho T&oacute;c H\\u01b0 T\\u1ed5n C\\u1ea5p \\u0110\\u1ed9 3<\\/h2>\\r\\n\\r\\n\\t\\t\\t<p><img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;Ph\\u1ee5c h\\u1ed3i t&oacute;c h\\u01b0 t\\u1ed5n do u\\u1ed1n &eacute;p, nhu\\u1ed9m<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;T\\u0103ng c\\u01b0\\u1eddng \\u0111\\u1ed9 \\u1ea9m cho t&oacute;c v&agrave; da \\u0111\\u1ea7u<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;C&ocirc;ng th\\u1ee9c \\u01b0u vi\\u1ec7t cung c\\u1ea5p vitamin nu&ocirc;i d\\u01b0\\u1ee1ng t&oacute;c t\\u1eeb g\\u1ed1c t\\u1edbi ng\\u1ecdn, gi&uacute;p t&oacute;c tr\\u1edf n&ecirc;n su&ocirc;n m\\u01b0\\u1ee3t, &oacute;ng \\u1ea3<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\"}},\"category\":[\"14\"],\"image\":\"\\/data\\/product\\/product-10.png\",\"sub_image\":[\"\\/data\\/product\\/product-12.png\",\"\\/data\\/product\\/product-6.png\",\"\\/data\\/product\\/product-2.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":\"dau-goi-xa-tigi-do-750ml\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"430000\",\"price\":\"850000\",\"tax_id\":\"0\",\"stock\":\"10000\",\"weight_class\":\"kg\",\"weight\":\"2\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"attribute\":{\"1\":{\"name\":[\"Blue\",\"White\"],\"add_price\":[\"50\",\"0\"]},\"2\":{\"name\":[\"S\",\"XL\"],\"add_price\":[\"20\",\"30\"]}},\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\"}', '2021-07-21 04:43:39', '2021-07-21 04:43:39'),
(50, 1, 'backend/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:43:39', '2021-07-21 04:43:39'),
(51, 1, 'backend/product/edit/17', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"C\\u1eb7p D\\u1ea7u G\\u1ed9i X\\u1ea3 Tigi \\u0110\\u1ecf 750mlx750ml\",\"keyword\":\"D\\u1ea7u g\\u1ed9i x\\u1ea3 tigi \\u0111\\u1ecf\",\"description\":\"D\\u01b0\\u1ee1ng ch\\u1ea5t c\\u00f3 trong d\\u1ea7u g\\u1ed9i x\\u1ea3 n\\u00e0y kh\\u00f4ng ch\\u1ec9 l\\u00e0m s\\u1ea1ch, nu\\u00f4i d\\u01b0\\u1ee1ng da \\u0111\\u1ea7u m\\u00e0 c\\u00f2n ph\\u1ee5c h\\u1ed3i s\\u1ef1 su\\u00f4n m\\u01b0\\u1ee3t ch\\u1eafc kh\\u1ecfe cho t\\u00f3c, ng\\u0103n ng\\u1eeba kh\\u00f4 x\\u01a1, g\\u00e3y r\\u1ee5ng, c\\u1ee7ng c\\u1ed1 \\u0111\\u1ed9 \\u1ea9m v\\u00e0 gia t\\u0103ng \\u0111\\u1ed9 b\\u00f3ng, t\\u00e1i t\\u1ea1o sinh l\\u1ef1c cho m\\u00e1i t\\u00f3c.\",\"content\":\"<p><strong>B\\u1ea1n \\u0111ang mu\\u1ed1n t&igrave;m ki\\u1ebfm m\\u1ed9t s\\u1ea3n ph\\u1ea9m d\\u1ea7u g\\u1ed9i, d\\u1ea7u x\\u1ea3 c&oacute; th\\u1ec3 gi&uacute;p b\\u1ea1n gi\\u1ea3i quy\\u1ebft \\u0111\\u01b0\\u1ee3c nh\\u1eefng v\\u1ea5n \\u0111\\u1ec1 sau:<\\/strong><br \\/>\\r\\n&rarr; Gi\\u1ea3m r\\u1ee5ng t&oacute;c.<br \\/>\\r\\n&rarr; Lo\\u1ea1i b\\u1ecf \\u0111\\u01b0\\u1ee3c g&agrave;u ng\\u1ee9a, kh&ocirc; x\\u01a1.<br \\/>\\r\\n&rarr; K&iacute;ch th&iacute;ch t&oacute;c m\\u1ecdc d&agrave;y v&agrave; ch\\u1eafc kho\\u1ebb h\\u01a1n.<br \\/>\\r\\n&rarr; Nu&ocirc;i d\\u01b0\\u1ee1ng t&oacute;c m\\u1ec1m m\\u1ea1i, su&ocirc;n m\\u01b0\\u1ee3t, b\\u1ed3ng b\\u1ec1nh t\\u1ef1 nhi&ecirc;n.<br \\/>\\r\\n&rarr; Ch\\u0103m s&oacute;c t&oacute;c an to&agrave;n, \\u0111&aacute;ng tin c\\u1eady.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i2.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/hinh-anh-bo-dau-goi-Tigi-Bed-Head-h1.jpg?w=500&amp;ssl=1\\\" style=\\\"width: 500px; height: 341px;\\\" \\/><\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><em>B\\u1ea1n c&oacute; \\u0111ang t&igrave;m ki\\u1ebfm cho m&igrave;nh s\\u1ea3n ph\\u1ea9m ch\\u0103m s&oacute;c t&oacute;c sao cho t\\u1ed1t nh\\u1ea5t kh&ocirc;ng?<\\/em><\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\ud83d\\udc49\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/1f449.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;V\\u1eady th&igrave;, b\\u1ed9 d\\u1ea7u g\\u1ed9i Tigi Bed Head ch&iacute;nh l&agrave; s\\u1ef1 l\\u1ef1a ch\\u1ecdn tuy\\u1ec7t v\\u1eddi m&agrave; b\\u1ea1n kh&ocirc;ng th\\u1ec3 b\\u1ecf qua \\u0111\\u1ec3 nhanh ch&oacute;ng s\\u1edf h\\u1eefu m&aacute;i t&oacute;c nh\\u01b0 &yacute; mu\\u1ed1n.<br \\/>\\r\\n&ndash; D\\u1ea7u g\\u1ed9i Tigi Bed Head \\u0111\\u1ecf \\u0111\\u01b0\\u1ee3c ch\\u1ee9ng minh l&agrave; c&oacute; hi\\u1ec7u qu\\u1ea3&nbsp;<strong>ph\\u1ee5c h\\u1ed3i t&oacute;c h\\u01b0 t\\u1ed5n, ng\\u0103n ch\\u1eb7n qu&aacute; tr&igrave;nh r\\u1ee5ng t&oacute;c v&agrave; k&iacute;ch th&iacute;ch m\\u1ecdc t&oacute;c<\\/strong>, d\\u01b0\\u1ee1ng t&oacute;c su&ocirc;n m\\u1ec1m, t\\u0103ng c\\u01b0\\u1eddng \\u0111\\u1ed9 \\u0111&agrave;n h\\u1ed3i cho t&oacute;c ch\\u1eafc kh\\u1ecfe sau 1-2 tu\\u1ea7n s\\u1eed d\\u1ee5ng.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i1.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/hinh-anh-bo-dau-goi-Tigi-Bed-Head-h2.jpg?w=500&amp;ssl=1\\\" style=\\\"width: 500px; height: 416px;\\\" \\/><\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><em>B\\u1ed9 d\\u1ea7u g\\u1ed9i Tigi Bed Head g\\u1ed3m 1 chai g\\u1ed9i 750ml + 1 chai x\\u1ea3 750ml<\\/em><\\/p>\\r\\n\\r\\n<table border=\\\"0\\\" cellpadding=\\\"1\\\" cellspacing=\\\"1\\\">\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<h2>C&ocirc;ng d\\u1ee5ng &ldquo;si&ecirc;u \\u0111\\u1ec9nh&rdquo; Tigi \\u0111em l\\u1ea1i cho m&aacute;i t&oacute;c:<\\/h2>\\r\\n\\r\\n\\t\\t\\t<p><img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;Lo\\u1ea1i b\\u1ecf m\\u1ecdi b\\u1ee5i b\\u1ea9n, b&atilde; nh\\u1eddn ho&agrave;n to&agrave;n gi&uacute;p da \\u0111\\u1ea7u s\\u1ea1ch s&acirc;u.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;Ng\\u0103n ng\\u1eeba t&igrave;nh tr\\u1ea1ng g&agrave;u, vi&ecirc;m ng\\u1ee9a v&agrave; c&aacute;c b\\u1ec7nh l&yacute; v\\u1ec1 da \\u0111\\u1ea7u.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;B\\u1ed5 sung d\\u01b0\\u1ee1ng ch\\u1ea5t nu&ocirc;i d\\u01b0\\u1ee1ng t&oacute;c ch\\u1eafc kh\\u1ecfe, b&oacute;ng m\\u01b0\\u1ee3t.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;T\\u0103ng c\\u01b0\\u1eddng \\u0111\\u1ed9 \\u0111&agrave;n h\\u1ed3i cho t&oacute;c, gi\\u1ea3m thi\\u1ec3u g&atilde;y r\\u1ee5ng v&agrave; kh&ocirc; x\\u01a1.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;B\\u1ea3o v\\u1ec7 t&oacute;c v\\u1edbi m&agrave;ng nano si&ecirc;u nh\\u1ecf ng\\u0103n ch\\u1eb7n t&aacute;c h\\u1ea1i c\\u1ee7a tia UV, t&aacute;c \\u0111\\u1ed9ng t\\u1eeb m&ocirc;i tr\\u01b0\\u1eddng b&ecirc;n ngo&agrave;i&hellip;<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;M&ugrave;i th\\u01a1m d\\u1ecbu nh\\u1eb9 \\u0111em l\\u1ea1i cho b\\u1ea1n c\\u1ea3m gi&aacute;c tho\\u1ea3i m&aacute;i, s\\u1ea3ng kho&aacute;i.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i1.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/toc-dai1.png\\\" style=\\\"height: 349px; width: 300px;\\\" \\/><\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i2.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/dau-goi-ti-gi-do-gia-dung-ninh-binh-combo-dau-goi-dau-xa-3-20210702093853.jpg?w=600&amp;ssl=1\\\" style=\\\"width: 300px; height: 300px;\\\" \\/><\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<h2>C\\u1ee9u Tinh Cho T&oacute;c H\\u01b0 T\\u1ed5n C\\u1ea5p \\u0110\\u1ed9 3<\\/h2>\\r\\n\\r\\n\\t\\t\\t<p><img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;Ph\\u1ee5c h\\u1ed3i t&oacute;c h\\u01b0 t\\u1ed5n do u\\u1ed1n &eacute;p, nhu\\u1ed9m<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;T\\u0103ng c\\u01b0\\u1eddng \\u0111\\u1ed9 \\u1ea9m cho t&oacute;c v&agrave; da \\u0111\\u1ea7u<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;C&ocirc;ng th\\u1ee9c \\u01b0u vi\\u1ec7t cung c\\u1ea5p vitamin nu&ocirc;i d\\u01b0\\u1ee1ng t&oacute;c t\\u1eeb g\\u1ed1c t\\u1edbi ng\\u1ecdn, gi&uacute;p t&oacute;c tr\\u1edf n&ecirc;n su&ocirc;n m\\u01b0\\u1ee3t, &oacute;ng \\u1ea3<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\"}},\"category\":[\"14\"],\"image\":\"\\/data\\/product\\/product-10.png\",\"sub_image\":[\"\\/data\\/product\\/product-12.png\",\"\\/data\\/product\\/product-6.png\",\"\\/data\\/product\\/product-2.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":\"dau-goi-xa-tigi-do-750ml\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"430000\",\"price\":\"850000\",\"tax_id\":\"0\",\"stock\":\"10000\",\"weight_class\":\"kg\",\"weight\":\"2\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"attribute\":{\"1\":{\"name\":[\"Blue\",\"White\"],\"add_price\":[\"50\",\"0\"]},\"2\":{\"name\":[\"S\",\"XL\"],\"add_price\":[\"20\",\"30\"]}},\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\"}', '2021-07-21 04:44:15', '2021-07-21 04:44:15'),
(52, 1, 'backend/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:44:15', '2021-07-21 04:44:15'),
(53, 1, 'backend/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 04:54:10', '2021-07-21 04:54:10'),
(54, 1, 'backend/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:05:03', '2021-07-21 05:05:03'),
(55, 1, 'backend/language_manager', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:05:10', '2021-07-21 05:05:10'),
(56, 1, 'backend/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:05:13', '2021-07-21 05:05:13'),
(57, 1, 'backend/currency/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:05:15', '2021-07-21 05:05:15'),
(58, 1, 'backend/currency/edit/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"name\":\"VietNam Dong\",\"code\":\"VND\",\"symbol\":\"\\u20ab\",\"exchange_rate\":\"1\",\"precision\":\"0\",\"symbol_first\":\"0\",\"thousands\":\".\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\"}', '2021-07-21 05:05:19', '2021-07-21 05:05:19'),
(59, 1, 'backend/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:05:19', '2021-07-21 05:05:19'),
(60, 1, 'backend/product/edit/17', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"C\\u1eb7p D\\u1ea7u G\\u1ed9i X\\u1ea3 Tigi \\u0110\\u1ecf 750mlx750ml\",\"keyword\":\"D\\u1ea7u g\\u1ed9i x\\u1ea3 tigi \\u0111\\u1ecf\",\"description\":\"D\\u01b0\\u1ee1ng ch\\u1ea5t c\\u00f3 trong d\\u1ea7u g\\u1ed9i x\\u1ea3 n\\u00e0y kh\\u00f4ng ch\\u1ec9 l\\u00e0m s\\u1ea1ch, nu\\u00f4i d\\u01b0\\u1ee1ng da \\u0111\\u1ea7u m\\u00e0 c\\u00f2n ph\\u1ee5c h\\u1ed3i s\\u1ef1 su\\u00f4n m\\u01b0\\u1ee3t ch\\u1eafc kh\\u1ecfe cho t\\u00f3c, ng\\u0103n ng\\u1eeba kh\\u00f4 x\\u01a1, g\\u00e3y r\\u1ee5ng, c\\u1ee7ng c\\u1ed1 \\u0111\\u1ed9 \\u1ea9m v\\u00e0 gia t\\u0103ng \\u0111\\u1ed9 b\\u00f3ng, t\\u00e1i t\\u1ea1o sinh l\\u1ef1c cho m\\u00e1i t\\u00f3c.\",\"content\":\"<p><strong>B\\u1ea1n \\u0111ang mu\\u1ed1n t&igrave;m ki\\u1ebfm m\\u1ed9t s\\u1ea3n ph\\u1ea9m d\\u1ea7u g\\u1ed9i, d\\u1ea7u x\\u1ea3 c&oacute; th\\u1ec3 gi&uacute;p b\\u1ea1n gi\\u1ea3i quy\\u1ebft \\u0111\\u01b0\\u1ee3c nh\\u1eefng v\\u1ea5n \\u0111\\u1ec1 sau:<\\/strong><br \\/>\\r\\n&rarr; Gi\\u1ea3m r\\u1ee5ng t&oacute;c.<br \\/>\\r\\n&rarr; Lo\\u1ea1i b\\u1ecf \\u0111\\u01b0\\u1ee3c g&agrave;u ng\\u1ee9a, kh&ocirc; x\\u01a1.<br \\/>\\r\\n&rarr; K&iacute;ch th&iacute;ch t&oacute;c m\\u1ecdc d&agrave;y v&agrave; ch\\u1eafc kho\\u1ebb h\\u01a1n.<br \\/>\\r\\n&rarr; Nu&ocirc;i d\\u01b0\\u1ee1ng t&oacute;c m\\u1ec1m m\\u1ea1i, su&ocirc;n m\\u01b0\\u1ee3t, b\\u1ed3ng b\\u1ec1nh t\\u1ef1 nhi&ecirc;n.<br \\/>\\r\\n&rarr; Ch\\u0103m s&oacute;c t&oacute;c an to&agrave;n, \\u0111&aacute;ng tin c\\u1eady.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i2.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/hinh-anh-bo-dau-goi-Tigi-Bed-Head-h1.jpg?w=500&amp;ssl=1\\\" style=\\\"width: 500px; height: 341px;\\\" \\/><\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><em>B\\u1ea1n c&oacute; \\u0111ang t&igrave;m ki\\u1ebfm cho m&igrave;nh s\\u1ea3n ph\\u1ea9m ch\\u0103m s&oacute;c t&oacute;c sao cho t\\u1ed1t nh\\u1ea5t kh&ocirc;ng?<\\/em><\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\ud83d\\udc49\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/1f449.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;V\\u1eady th&igrave;, b\\u1ed9 d\\u1ea7u g\\u1ed9i Tigi Bed Head ch&iacute;nh l&agrave; s\\u1ef1 l\\u1ef1a ch\\u1ecdn tuy\\u1ec7t v\\u1eddi m&agrave; b\\u1ea1n kh&ocirc;ng th\\u1ec3 b\\u1ecf qua \\u0111\\u1ec3 nhanh ch&oacute;ng s\\u1edf h\\u1eefu m&aacute;i t&oacute;c nh\\u01b0 &yacute; mu\\u1ed1n.<br \\/>\\r\\n&ndash; D\\u1ea7u g\\u1ed9i Tigi Bed Head \\u0111\\u1ecf \\u0111\\u01b0\\u1ee3c ch\\u1ee9ng minh l&agrave; c&oacute; hi\\u1ec7u qu\\u1ea3&nbsp;<strong>ph\\u1ee5c h\\u1ed3i t&oacute;c h\\u01b0 t\\u1ed5n, ng\\u0103n ch\\u1eb7n qu&aacute; tr&igrave;nh r\\u1ee5ng t&oacute;c v&agrave; k&iacute;ch th&iacute;ch m\\u1ecdc t&oacute;c<\\/strong>, d\\u01b0\\u1ee1ng t&oacute;c su&ocirc;n m\\u1ec1m, t\\u0103ng c\\u01b0\\u1eddng \\u0111\\u1ed9 \\u0111&agrave;n h\\u1ed3i cho t&oacute;c ch\\u1eafc kh\\u1ecfe sau 1-2 tu\\u1ea7n s\\u1eed d\\u1ee5ng.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i1.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/hinh-anh-bo-dau-goi-Tigi-Bed-Head-h2.jpg?w=500&amp;ssl=1\\\" style=\\\"width: 500px; height: 416px;\\\" \\/><\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><em>B\\u1ed9 d\\u1ea7u g\\u1ed9i Tigi Bed Head g\\u1ed3m 1 chai g\\u1ed9i 750ml + 1 chai x\\u1ea3 750ml<\\/em><\\/p>\\r\\n\\r\\n<table border=\\\"0\\\" cellpadding=\\\"1\\\" cellspacing=\\\"1\\\">\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<h2>C&ocirc;ng d\\u1ee5ng &ldquo;si&ecirc;u \\u0111\\u1ec9nh&rdquo; Tigi \\u0111em l\\u1ea1i cho m&aacute;i t&oacute;c:<\\/h2>\\r\\n\\r\\n\\t\\t\\t<p><img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;Lo\\u1ea1i b\\u1ecf m\\u1ecdi b\\u1ee5i b\\u1ea9n, b&atilde; nh\\u1eddn ho&agrave;n to&agrave;n gi&uacute;p da \\u0111\\u1ea7u s\\u1ea1ch s&acirc;u.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;Ng\\u0103n ng\\u1eeba t&igrave;nh tr\\u1ea1ng g&agrave;u, vi&ecirc;m ng\\u1ee9a v&agrave; c&aacute;c b\\u1ec7nh l&yacute; v\\u1ec1 da \\u0111\\u1ea7u.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;B\\u1ed5 sung d\\u01b0\\u1ee1ng ch\\u1ea5t nu&ocirc;i d\\u01b0\\u1ee1ng t&oacute;c ch\\u1eafc kh\\u1ecfe, b&oacute;ng m\\u01b0\\u1ee3t.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;T\\u0103ng c\\u01b0\\u1eddng \\u0111\\u1ed9 \\u0111&agrave;n h\\u1ed3i cho t&oacute;c, gi\\u1ea3m thi\\u1ec3u g&atilde;y r\\u1ee5ng v&agrave; kh&ocirc; x\\u01a1.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;B\\u1ea3o v\\u1ec7 t&oacute;c v\\u1edbi m&agrave;ng nano si&ecirc;u nh\\u1ecf ng\\u0103n ch\\u1eb7n t&aacute;c h\\u1ea1i c\\u1ee7a tia UV, t&aacute;c \\u0111\\u1ed9ng t\\u1eeb m&ocirc;i tr\\u01b0\\u1eddng b&ecirc;n ngo&agrave;i&hellip;<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;M&ugrave;i th\\u01a1m d\\u1ecbu nh\\u1eb9 \\u0111em l\\u1ea1i cho b\\u1ea1n c\\u1ea3m gi&aacute;c tho\\u1ea3i m&aacute;i, s\\u1ea3ng kho&aacute;i.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i1.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/toc-dai1.png\\\" style=\\\"height: 349px; width: 300px;\\\" \\/><\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i2.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/dau-goi-ti-gi-do-gia-dung-ninh-binh-combo-dau-goi-dau-xa-3-20210702093853.jpg?w=600&amp;ssl=1\\\" style=\\\"width: 300px; height: 300px;\\\" \\/><\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<h2>C\\u1ee9u Tinh Cho T&oacute;c H\\u01b0 T\\u1ed5n C\\u1ea5p \\u0110\\u1ed9 3<\\/h2>\\r\\n\\r\\n\\t\\t\\t<p><img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;Ph\\u1ee5c h\\u1ed3i t&oacute;c h\\u01b0 t\\u1ed5n do u\\u1ed1n &eacute;p, nhu\\u1ed9m<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;T\\u0103ng c\\u01b0\\u1eddng \\u0111\\u1ed9 \\u1ea9m cho t&oacute;c v&agrave; da \\u0111\\u1ea7u<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;C&ocirc;ng th\\u1ee9c \\u01b0u vi\\u1ec7t cung c\\u1ea5p vitamin nu&ocirc;i d\\u01b0\\u1ee1ng t&oacute;c t\\u1eeb g\\u1ed1c t\\u1edbi ng\\u1ecdn, gi&uacute;p t&oacute;c tr\\u1edf n&ecirc;n su&ocirc;n m\\u01b0\\u1ee3t, &oacute;ng \\u1ea3<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\"}},\"category\":[\"14\"],\"image\":\"\\/data\\/product\\/product-10.png\",\"sub_image\":[\"\\/data\\/product\\/product-12.png\",\"\\/data\\/product\\/product-6.png\",\"\\/data\\/product\\/product-2.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":\"dau-goi-xa-tigi-do-750ml\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"850000\",\"price\":\"430000\",\"tax_id\":\"0\",\"stock\":\"10000\",\"weight_class\":\"kg\",\"weight\":\"2\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"attribute\":{\"1\":{\"name\":[\"Blue\",\"White\"],\"add_price\":[\"50\",\"0\"]},\"2\":{\"name\":[\"S\",\"XL\"],\"add_price\":[\"20\",\"30\"]}},\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\"}', '2021-07-21 05:05:42', '2021-07-21 05:05:42'),
(61, 1, 'backend/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:05:42', '2021-07-21 05:05:42'),
(62, 1, 'backend/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:06:48', '2021-07-21 05:06:48');
INSERT INTO `admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(63, 1, 'backend/product/edit/17', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"C\\u1eb7p D\\u1ea7u G\\u1ed9i X\\u1ea3 Tigi \\u0110\\u1ecf 750mlx750ml\",\"keyword\":\"D\\u1ea7u g\\u1ed9i x\\u1ea3 tigi \\u0111\\u1ecf\",\"description\":\"D\\u01b0\\u1ee1ng ch\\u1ea5t c\\u00f3 trong d\\u1ea7u g\\u1ed9i x\\u1ea3 n\\u00e0y kh\\u00f4ng ch\\u1ec9 l\\u00e0m s\\u1ea1ch, nu\\u00f4i d\\u01b0\\u1ee1ng da \\u0111\\u1ea7u m\\u00e0 c\\u00f2n ph\\u1ee5c h\\u1ed3i s\\u1ef1 su\\u00f4n m\\u01b0\\u1ee3t ch\\u1eafc kh\\u1ecfe cho t\\u00f3c, ng\\u0103n ng\\u1eeba kh\\u00f4 x\\u01a1, g\\u00e3y r\\u1ee5ng, c\\u1ee7ng c\\u1ed1 \\u0111\\u1ed9 \\u1ea9m v\\u00e0 gia t\\u0103ng \\u0111\\u1ed9 b\\u00f3ng, t\\u00e1i t\\u1ea1o sinh l\\u1ef1c cho m\\u00e1i t\\u00f3c.\",\"content\":\"<p><strong>B\\u1ea1n \\u0111ang mu\\u1ed1n t&igrave;m ki\\u1ebfm m\\u1ed9t s\\u1ea3n ph\\u1ea9m d\\u1ea7u g\\u1ed9i, d\\u1ea7u x\\u1ea3 c&oacute; th\\u1ec3 gi&uacute;p b\\u1ea1n gi\\u1ea3i quy\\u1ebft \\u0111\\u01b0\\u1ee3c nh\\u1eefng v\\u1ea5n \\u0111\\u1ec1 sau:<\\/strong><br \\/>\\r\\n&rarr; Gi\\u1ea3m r\\u1ee5ng t&oacute;c.<br \\/>\\r\\n&rarr; Lo\\u1ea1i b\\u1ecf \\u0111\\u01b0\\u1ee3c g&agrave;u ng\\u1ee9a, kh&ocirc; x\\u01a1.<br \\/>\\r\\n&rarr; K&iacute;ch th&iacute;ch t&oacute;c m\\u1ecdc d&agrave;y v&agrave; ch\\u1eafc kho\\u1ebb h\\u01a1n.<br \\/>\\r\\n&rarr; Nu&ocirc;i d\\u01b0\\u1ee1ng t&oacute;c m\\u1ec1m m\\u1ea1i, su&ocirc;n m\\u01b0\\u1ee3t, b\\u1ed3ng b\\u1ec1nh t\\u1ef1 nhi&ecirc;n.<br \\/>\\r\\n&rarr; Ch\\u0103m s&oacute;c t&oacute;c an to&agrave;n, \\u0111&aacute;ng tin c\\u1eady.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i2.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/hinh-anh-bo-dau-goi-Tigi-Bed-Head-h1.jpg?w=500&amp;ssl=1\\\" style=\\\"width: 500px; height: 341px;\\\" \\/><\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><em>B\\u1ea1n c&oacute; \\u0111ang t&igrave;m ki\\u1ebfm cho m&igrave;nh s\\u1ea3n ph\\u1ea9m ch\\u0103m s&oacute;c t&oacute;c sao cho t\\u1ed1t nh\\u1ea5t kh&ocirc;ng?<\\/em><\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\ud83d\\udc49\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/1f449.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;V\\u1eady th&igrave;, b\\u1ed9 d\\u1ea7u g\\u1ed9i Tigi Bed Head ch&iacute;nh l&agrave; s\\u1ef1 l\\u1ef1a ch\\u1ecdn tuy\\u1ec7t v\\u1eddi m&agrave; b\\u1ea1n kh&ocirc;ng th\\u1ec3 b\\u1ecf qua \\u0111\\u1ec3 nhanh ch&oacute;ng s\\u1edf h\\u1eefu m&aacute;i t&oacute;c nh\\u01b0 &yacute; mu\\u1ed1n.<br \\/>\\r\\n&ndash; D\\u1ea7u g\\u1ed9i Tigi Bed Head \\u0111\\u1ecf \\u0111\\u01b0\\u1ee3c ch\\u1ee9ng minh l&agrave; c&oacute; hi\\u1ec7u qu\\u1ea3&nbsp;<strong>ph\\u1ee5c h\\u1ed3i t&oacute;c h\\u01b0 t\\u1ed5n, ng\\u0103n ch\\u1eb7n qu&aacute; tr&igrave;nh r\\u1ee5ng t&oacute;c v&agrave; k&iacute;ch th&iacute;ch m\\u1ecdc t&oacute;c<\\/strong>, d\\u01b0\\u1ee1ng t&oacute;c su&ocirc;n m\\u1ec1m, t\\u0103ng c\\u01b0\\u1eddng \\u0111\\u1ed9 \\u0111&agrave;n h\\u1ed3i cho t&oacute;c ch\\u1eafc kh\\u1ecfe sau 1-2 tu\\u1ea7n s\\u1eed d\\u1ee5ng.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i1.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/hinh-anh-bo-dau-goi-Tigi-Bed-Head-h2.jpg?w=500&amp;ssl=1\\\" style=\\\"width: 500px; height: 416px;\\\" \\/><\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><em>B\\u1ed9 d\\u1ea7u g\\u1ed9i Tigi Bed Head g\\u1ed3m 1 chai g\\u1ed9i 750ml + 1 chai x\\u1ea3 750ml<\\/em><\\/p>\\r\\n\\r\\n<table border=\\\"0\\\" cellpadding=\\\"1\\\" cellspacing=\\\"1\\\">\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<h2>C&ocirc;ng d\\u1ee5ng &ldquo;si&ecirc;u \\u0111\\u1ec9nh&rdquo; Tigi \\u0111em l\\u1ea1i cho m&aacute;i t&oacute;c:<\\/h2>\\r\\n\\r\\n\\t\\t\\t<p><img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;Lo\\u1ea1i b\\u1ecf m\\u1ecdi b\\u1ee5i b\\u1ea9n, b&atilde; nh\\u1eddn ho&agrave;n to&agrave;n gi&uacute;p da \\u0111\\u1ea7u s\\u1ea1ch s&acirc;u.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;Ng\\u0103n ng\\u1eeba t&igrave;nh tr\\u1ea1ng g&agrave;u, vi&ecirc;m ng\\u1ee9a v&agrave; c&aacute;c b\\u1ec7nh l&yacute; v\\u1ec1 da \\u0111\\u1ea7u.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;B\\u1ed5 sung d\\u01b0\\u1ee1ng ch\\u1ea5t nu&ocirc;i d\\u01b0\\u1ee1ng t&oacute;c ch\\u1eafc kh\\u1ecfe, b&oacute;ng m\\u01b0\\u1ee3t.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;T\\u0103ng c\\u01b0\\u1eddng \\u0111\\u1ed9 \\u0111&agrave;n h\\u1ed3i cho t&oacute;c, gi\\u1ea3m thi\\u1ec3u g&atilde;y r\\u1ee5ng v&agrave; kh&ocirc; x\\u01a1.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;B\\u1ea3o v\\u1ec7 t&oacute;c v\\u1edbi m&agrave;ng nano si&ecirc;u nh\\u1ecf ng\\u0103n ch\\u1eb7n t&aacute;c h\\u1ea1i c\\u1ee7a tia UV, t&aacute;c \\u0111\\u1ed9ng t\\u1eeb m&ocirc;i tr\\u01b0\\u1eddng b&ecirc;n ngo&agrave;i&hellip;<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;M&ugrave;i th\\u01a1m d\\u1ecbu nh\\u1eb9 \\u0111em l\\u1ea1i cho b\\u1ea1n c\\u1ea3m gi&aacute;c tho\\u1ea3i m&aacute;i, s\\u1ea3ng kho&aacute;i.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i1.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/toc-dai1.png\\\" style=\\\"height: 349px; width: 300px;\\\" \\/><\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i2.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/dau-goi-ti-gi-do-gia-dung-ninh-binh-combo-dau-goi-dau-xa-3-20210702093853.jpg?w=600&amp;ssl=1\\\" style=\\\"width: 300px; height: 300px;\\\" \\/><\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<h2>C\\u1ee9u Tinh Cho T&oacute;c H\\u01b0 T\\u1ed5n C\\u1ea5p \\u0110\\u1ed9 3<\\/h2>\\r\\n\\r\\n\\t\\t\\t<p><img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;Ph\\u1ee5c h\\u1ed3i t&oacute;c h\\u01b0 t\\u1ed5n do u\\u1ed1n &eacute;p, nhu\\u1ed9m<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;T\\u0103ng c\\u01b0\\u1eddng \\u0111\\u1ed9 \\u1ea9m cho t&oacute;c v&agrave; da \\u0111\\u1ea7u<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;C&ocirc;ng th\\u1ee9c \\u01b0u vi\\u1ec7t cung c\\u1ea5p vitamin nu&ocirc;i d\\u01b0\\u1ee1ng t&oacute;c t\\u1eeb g\\u1ed1c t\\u1edbi ng\\u1ecdn, gi&uacute;p t&oacute;c tr\\u1edf n&ecirc;n su&ocirc;n m\\u01b0\\u1ee3t, &oacute;ng \\u1ea3<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\"}},\"category\":[\"14\"],\"image\":\"\\/data\\/product\\/product-10.png\",\"sub_image\":[\"\\/data\\/product\\/product-12.png\",\"\\/data\\/product\\/product-6.png\",\"\\/data\\/product\\/product-2.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":\"dau-goi-xa-tigi-do-750ml\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"850000\",\"price\":\"850000\",\"tax_id\":\"0\",\"price_promotion\":\"430000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"10000\",\"weight_class\":\"kg\",\"weight\":\"2\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"attribute\":{\"1\":{\"name\":[\"Blue\",\"White\"],\"add_price\":[\"50\",\"0\"]},\"2\":{\"name\":[\"S\",\"XL\"],\"add_price\":[\"20\",\"30\"]}},\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\"}', '2021-07-21 05:08:00', '2021-07-21 05:08:00'),
(64, 1, 'backend/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:08:01', '2021-07-21 05:08:01'),
(65, 1, 'backend/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:13:32', '2021-07-21 05:13:32'),
(66, 1, 'backend/attribute_group', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:13:42', '2021-07-21 05:13:42'),
(67, 1, 'backend/attribute_group/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"name\":\"Checkout Landing\",\"type\":\"radio\",\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\"}', '2021-07-21 05:14:15', '2021-07-21 05:14:15'),
(68, 1, 'backend/attribute_group', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:14:15', '2021-07-21 05:14:15'),
(69, 1, 'backend/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:14:27', '2021-07-21 05:14:27'),
(70, 1, 'backend/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:14:30', '2021-07-21 05:14:30'),
(71, 1, 'backend/product/edit/17', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"C\\u1eb7p D\\u1ea7u G\\u1ed9i X\\u1ea3 Tigi \\u0110\\u1ecf 750mlx750ml\",\"keyword\":\"D\\u1ea7u g\\u1ed9i x\\u1ea3 tigi \\u0111\\u1ecf\",\"description\":\"D\\u01b0\\u1ee1ng ch\\u1ea5t c\\u00f3 trong d\\u1ea7u g\\u1ed9i x\\u1ea3 n\\u00e0y kh\\u00f4ng ch\\u1ec9 l\\u00e0m s\\u1ea1ch, nu\\u00f4i d\\u01b0\\u1ee1ng da \\u0111\\u1ea7u m\\u00e0 c\\u00f2n ph\\u1ee5c h\\u1ed3i s\\u1ef1 su\\u00f4n m\\u01b0\\u1ee3t ch\\u1eafc kh\\u1ecfe cho t\\u00f3c, ng\\u0103n ng\\u1eeba kh\\u00f4 x\\u01a1, g\\u00e3y r\\u1ee5ng, c\\u1ee7ng c\\u1ed1 \\u0111\\u1ed9 \\u1ea9m v\\u00e0 gia t\\u0103ng \\u0111\\u1ed9 b\\u00f3ng, t\\u00e1i t\\u1ea1o sinh l\\u1ef1c cho m\\u00e1i t\\u00f3c.\",\"content\":\"<p><strong>B\\u1ea1n \\u0111ang mu\\u1ed1n t&igrave;m ki\\u1ebfm m\\u1ed9t s\\u1ea3n ph\\u1ea9m d\\u1ea7u g\\u1ed9i, d\\u1ea7u x\\u1ea3 c&oacute; th\\u1ec3 gi&uacute;p b\\u1ea1n gi\\u1ea3i quy\\u1ebft \\u0111\\u01b0\\u1ee3c nh\\u1eefng v\\u1ea5n \\u0111\\u1ec1 sau:<\\/strong><br \\/>\\r\\n&rarr; Gi\\u1ea3m r\\u1ee5ng t&oacute;c.<br \\/>\\r\\n&rarr; Lo\\u1ea1i b\\u1ecf \\u0111\\u01b0\\u1ee3c g&agrave;u ng\\u1ee9a, kh&ocirc; x\\u01a1.<br \\/>\\r\\n&rarr; K&iacute;ch th&iacute;ch t&oacute;c m\\u1ecdc d&agrave;y v&agrave; ch\\u1eafc kho\\u1ebb h\\u01a1n.<br \\/>\\r\\n&rarr; Nu&ocirc;i d\\u01b0\\u1ee1ng t&oacute;c m\\u1ec1m m\\u1ea1i, su&ocirc;n m\\u01b0\\u1ee3t, b\\u1ed3ng b\\u1ec1nh t\\u1ef1 nhi&ecirc;n.<br \\/>\\r\\n&rarr; Ch\\u0103m s&oacute;c t&oacute;c an to&agrave;n, \\u0111&aacute;ng tin c\\u1eady.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i2.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/hinh-anh-bo-dau-goi-Tigi-Bed-Head-h1.jpg?w=500&amp;ssl=1\\\" style=\\\"width: 500px; height: 341px;\\\" \\/><\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><em>B\\u1ea1n c&oacute; \\u0111ang t&igrave;m ki\\u1ebfm cho m&igrave;nh s\\u1ea3n ph\\u1ea9m ch\\u0103m s&oacute;c t&oacute;c sao cho t\\u1ed1t nh\\u1ea5t kh&ocirc;ng?<\\/em><\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\ud83d\\udc49\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/1f449.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;V\\u1eady th&igrave;, b\\u1ed9 d\\u1ea7u g\\u1ed9i Tigi Bed Head ch&iacute;nh l&agrave; s\\u1ef1 l\\u1ef1a ch\\u1ecdn tuy\\u1ec7t v\\u1eddi m&agrave; b\\u1ea1n kh&ocirc;ng th\\u1ec3 b\\u1ecf qua \\u0111\\u1ec3 nhanh ch&oacute;ng s\\u1edf h\\u1eefu m&aacute;i t&oacute;c nh\\u01b0 &yacute; mu\\u1ed1n.<br \\/>\\r\\n&ndash; D\\u1ea7u g\\u1ed9i Tigi Bed Head \\u0111\\u1ecf \\u0111\\u01b0\\u1ee3c ch\\u1ee9ng minh l&agrave; c&oacute; hi\\u1ec7u qu\\u1ea3&nbsp;<strong>ph\\u1ee5c h\\u1ed3i t&oacute;c h\\u01b0 t\\u1ed5n, ng\\u0103n ch\\u1eb7n qu&aacute; tr&igrave;nh r\\u1ee5ng t&oacute;c v&agrave; k&iacute;ch th&iacute;ch m\\u1ecdc t&oacute;c<\\/strong>, d\\u01b0\\u1ee1ng t&oacute;c su&ocirc;n m\\u1ec1m, t\\u0103ng c\\u01b0\\u1eddng \\u0111\\u1ed9 \\u0111&agrave;n h\\u1ed3i cho t&oacute;c ch\\u1eafc kh\\u1ecfe sau 1-2 tu\\u1ea7n s\\u1eed d\\u1ee5ng.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i1.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/hinh-anh-bo-dau-goi-Tigi-Bed-Head-h2.jpg?w=500&amp;ssl=1\\\" style=\\\"width: 500px; height: 416px;\\\" \\/><\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><em>B\\u1ed9 d\\u1ea7u g\\u1ed9i Tigi Bed Head g\\u1ed3m 1 chai g\\u1ed9i 750ml + 1 chai x\\u1ea3 750ml<\\/em><\\/p>\\r\\n\\r\\n<table border=\\\"0\\\" cellpadding=\\\"1\\\" cellspacing=\\\"1\\\">\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<h2>C&ocirc;ng d\\u1ee5ng &ldquo;si&ecirc;u \\u0111\\u1ec9nh&rdquo; Tigi \\u0111em l\\u1ea1i cho m&aacute;i t&oacute;c:<\\/h2>\\r\\n\\r\\n\\t\\t\\t<p><img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;Lo\\u1ea1i b\\u1ecf m\\u1ecdi b\\u1ee5i b\\u1ea9n, b&atilde; nh\\u1eddn ho&agrave;n to&agrave;n gi&uacute;p da \\u0111\\u1ea7u s\\u1ea1ch s&acirc;u.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;Ng\\u0103n ng\\u1eeba t&igrave;nh tr\\u1ea1ng g&agrave;u, vi&ecirc;m ng\\u1ee9a v&agrave; c&aacute;c b\\u1ec7nh l&yacute; v\\u1ec1 da \\u0111\\u1ea7u.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;B\\u1ed5 sung d\\u01b0\\u1ee1ng ch\\u1ea5t nu&ocirc;i d\\u01b0\\u1ee1ng t&oacute;c ch\\u1eafc kh\\u1ecfe, b&oacute;ng m\\u01b0\\u1ee3t.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;T\\u0103ng c\\u01b0\\u1eddng \\u0111\\u1ed9 \\u0111&agrave;n h\\u1ed3i cho t&oacute;c, gi\\u1ea3m thi\\u1ec3u g&atilde;y r\\u1ee5ng v&agrave; kh&ocirc; x\\u01a1.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;B\\u1ea3o v\\u1ec7 t&oacute;c v\\u1edbi m&agrave;ng nano si&ecirc;u nh\\u1ecf ng\\u0103n ch\\u1eb7n t&aacute;c h\\u1ea1i c\\u1ee7a tia UV, t&aacute;c \\u0111\\u1ed9ng t\\u1eeb m&ocirc;i tr\\u01b0\\u1eddng b&ecirc;n ngo&agrave;i&hellip;<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;M&ugrave;i th\\u01a1m d\\u1ecbu nh\\u1eb9 \\u0111em l\\u1ea1i cho b\\u1ea1n c\\u1ea3m gi&aacute;c tho\\u1ea3i m&aacute;i, s\\u1ea3ng kho&aacute;i.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i1.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/toc-dai1.png\\\" style=\\\"height: 349px; width: 300px;\\\" \\/><\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i2.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/dau-goi-ti-gi-do-gia-dung-ninh-binh-combo-dau-goi-dau-xa-3-20210702093853.jpg?w=600&amp;ssl=1\\\" style=\\\"width: 300px; height: 300px;\\\" \\/><\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<h2>C\\u1ee9u Tinh Cho T&oacute;c H\\u01b0 T\\u1ed5n C\\u1ea5p \\u0110\\u1ed9 3<\\/h2>\\r\\n\\r\\n\\t\\t\\t<p><img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;Ph\\u1ee5c h\\u1ed3i t&oacute;c h\\u01b0 t\\u1ed5n do u\\u1ed1n &eacute;p, nhu\\u1ed9m<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;T\\u0103ng c\\u01b0\\u1eddng \\u0111\\u1ed9 \\u1ea9m cho t&oacute;c v&agrave; da \\u0111\\u1ea7u<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;C&ocirc;ng th\\u1ee9c \\u01b0u vi\\u1ec7t cung c\\u1ea5p vitamin nu&ocirc;i d\\u01b0\\u1ee1ng t&oacute;c t\\u1eeb g\\u1ed1c t\\u1edbi ng\\u1ecdn, gi&uacute;p t&oacute;c tr\\u1edf n&ecirc;n su&ocirc;n m\\u01b0\\u1ee3t, &oacute;ng \\u1ea3<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\"}},\"category\":[\"14\"],\"image\":\"\\/data\\/product\\/product-10.png\",\"sub_image\":[\"\\/data\\/product\\/product-12.png\",\"\\/data\\/product\\/product-6.png\",\"\\/data\\/product\\/product-2.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":\"dau-goi-xa-tigi-do-750ml\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"850000\",\"price\":\"850000\",\"tax_id\":\"0\",\"price_promotion\":\"430000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"10000\",\"weight_class\":\"kg\",\"weight\":\"2\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"attribute\":{\"1\":{\"name\":[\"Blue\",\"White\"],\"add_price\":[\"50\",\"0\"]},\"2\":{\"name\":[\"S\",\"XL\"],\"add_price\":[\"20\",\"30\"]},\"3\":{\"name\":[\"https:\\/\\/www.favimart.store\\/checkout-tigi\"],\"add_price\":[\"0\"]}},\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\"}', '2021-07-21 05:15:02', '2021-07-21 05:15:02'),
(72, 1, 'backend/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:15:02', '2021-07-21 05:15:02'),
(73, 1, 'backend/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:16:16', '2021-07-21 05:16:16'),
(74, 1, 'backend/attribute_group', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:16:21', '2021-07-21 05:16:21'),
(75, 1, 'backend/attribute_group/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"ids\":\"2\",\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\"}', '2021-07-21 05:16:31', '2021-07-21 05:16:31'),
(76, 1, 'backend/attribute_group', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:16:32', '2021-07-21 05:16:32'),
(77, 1, 'backend/attribute_group/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"ids\":\"1\",\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\"}', '2021-07-21 05:16:34', '2021-07-21 05:16:34'),
(78, 1, 'backend/attribute_group', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:16:35', '2021-07-21 05:16:35'),
(79, 1, 'backend/custom_field', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:16:51', '2021-07-21 05:16:51'),
(80, 1, 'backend/custom_field/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"name\":\"Checkout Landing\",\"code\":null,\"type\":\"product\",\"option\":\"input\",\"default\":\"https:\\/\\/\",\"required\":\"on\",\"status\":\"on\",\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\"}', '2021-07-21 05:17:27', '2021-07-21 05:17:27'),
(81, 1, 'backend/custom_field', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:17:28', '2021-07-21 05:17:28'),
(82, 1, 'backend/custom_field/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"name\":\"Checkout Landing\",\"code\":\"checkout_landing\",\"type\":\"product\",\"option\":\"input\",\"default\":\"https:\\/\\/\",\"required\":\"on\",\"status\":\"on\",\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\"}', '2021-07-21 05:17:41', '2021-07-21 05:17:41'),
(83, 1, 'backend/custom_field', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:17:41', '2021-07-21 05:17:41'),
(84, 1, 'backend/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:17:50', '2021-07-21 05:17:50'),
(85, 1, 'backend/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:17:54', '2021-07-21 05:17:54'),
(86, 1, 'backend/product/edit/17', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"C\\u1eb7p D\\u1ea7u G\\u1ed9i X\\u1ea3 Tigi \\u0110\\u1ecf 750mlx750ml\",\"keyword\":\"D\\u1ea7u g\\u1ed9i x\\u1ea3 tigi \\u0111\\u1ecf\",\"description\":\"D\\u01b0\\u1ee1ng ch\\u1ea5t c\\u00f3 trong d\\u1ea7u g\\u1ed9i x\\u1ea3 n\\u00e0y kh\\u00f4ng ch\\u1ec9 l\\u00e0m s\\u1ea1ch, nu\\u00f4i d\\u01b0\\u1ee1ng da \\u0111\\u1ea7u m\\u00e0 c\\u00f2n ph\\u1ee5c h\\u1ed3i s\\u1ef1 su\\u00f4n m\\u01b0\\u1ee3t ch\\u1eafc kh\\u1ecfe cho t\\u00f3c, ng\\u0103n ng\\u1eeba kh\\u00f4 x\\u01a1, g\\u00e3y r\\u1ee5ng, c\\u1ee7ng c\\u1ed1 \\u0111\\u1ed9 \\u1ea9m v\\u00e0 gia t\\u0103ng \\u0111\\u1ed9 b\\u00f3ng, t\\u00e1i t\\u1ea1o sinh l\\u1ef1c cho m\\u00e1i t\\u00f3c.\",\"content\":\"<p><strong>B\\u1ea1n \\u0111ang mu\\u1ed1n t&igrave;m ki\\u1ebfm m\\u1ed9t s\\u1ea3n ph\\u1ea9m d\\u1ea7u g\\u1ed9i, d\\u1ea7u x\\u1ea3 c&oacute; th\\u1ec3 gi&uacute;p b\\u1ea1n gi\\u1ea3i quy\\u1ebft \\u0111\\u01b0\\u1ee3c nh\\u1eefng v\\u1ea5n \\u0111\\u1ec1 sau:<\\/strong><br \\/>\\r\\n&rarr; Gi\\u1ea3m r\\u1ee5ng t&oacute;c.<br \\/>\\r\\n&rarr; Lo\\u1ea1i b\\u1ecf \\u0111\\u01b0\\u1ee3c g&agrave;u ng\\u1ee9a, kh&ocirc; x\\u01a1.<br \\/>\\r\\n&rarr; K&iacute;ch th&iacute;ch t&oacute;c m\\u1ecdc d&agrave;y v&agrave; ch\\u1eafc kho\\u1ebb h\\u01a1n.<br \\/>\\r\\n&rarr; Nu&ocirc;i d\\u01b0\\u1ee1ng t&oacute;c m\\u1ec1m m\\u1ea1i, su&ocirc;n m\\u01b0\\u1ee3t, b\\u1ed3ng b\\u1ec1nh t\\u1ef1 nhi&ecirc;n.<br \\/>\\r\\n&rarr; Ch\\u0103m s&oacute;c t&oacute;c an to&agrave;n, \\u0111&aacute;ng tin c\\u1eady.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i2.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/hinh-anh-bo-dau-goi-Tigi-Bed-Head-h1.jpg?w=500&amp;ssl=1\\\" style=\\\"width: 500px; height: 341px;\\\" \\/><\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><em>B\\u1ea1n c&oacute; \\u0111ang t&igrave;m ki\\u1ebfm cho m&igrave;nh s\\u1ea3n ph\\u1ea9m ch\\u0103m s&oacute;c t&oacute;c sao cho t\\u1ed1t nh\\u1ea5t kh&ocirc;ng?<\\/em><\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\ud83d\\udc49\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/1f449.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;V\\u1eady th&igrave;, b\\u1ed9 d\\u1ea7u g\\u1ed9i Tigi Bed Head ch&iacute;nh l&agrave; s\\u1ef1 l\\u1ef1a ch\\u1ecdn tuy\\u1ec7t v\\u1eddi m&agrave; b\\u1ea1n kh&ocirc;ng th\\u1ec3 b\\u1ecf qua \\u0111\\u1ec3 nhanh ch&oacute;ng s\\u1edf h\\u1eefu m&aacute;i t&oacute;c nh\\u01b0 &yacute; mu\\u1ed1n.<br \\/>\\r\\n&ndash; D\\u1ea7u g\\u1ed9i Tigi Bed Head \\u0111\\u1ecf \\u0111\\u01b0\\u1ee3c ch\\u1ee9ng minh l&agrave; c&oacute; hi\\u1ec7u qu\\u1ea3&nbsp;<strong>ph\\u1ee5c h\\u1ed3i t&oacute;c h\\u01b0 t\\u1ed5n, ng\\u0103n ch\\u1eb7n qu&aacute; tr&igrave;nh r\\u1ee5ng t&oacute;c v&agrave; k&iacute;ch th&iacute;ch m\\u1ecdc t&oacute;c<\\/strong>, d\\u01b0\\u1ee1ng t&oacute;c su&ocirc;n m\\u1ec1m, t\\u0103ng c\\u01b0\\u1eddng \\u0111\\u1ed9 \\u0111&agrave;n h\\u1ed3i cho t&oacute;c ch\\u1eafc kh\\u1ecfe sau 1-2 tu\\u1ea7n s\\u1eed d\\u1ee5ng.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i1.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/hinh-anh-bo-dau-goi-Tigi-Bed-Head-h2.jpg?w=500&amp;ssl=1\\\" style=\\\"width: 500px; height: 416px;\\\" \\/><\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><em>B\\u1ed9 d\\u1ea7u g\\u1ed9i Tigi Bed Head g\\u1ed3m 1 chai g\\u1ed9i 750ml + 1 chai x\\u1ea3 750ml<\\/em><\\/p>\\r\\n\\r\\n<table border=\\\"0\\\" cellpadding=\\\"1\\\" cellspacing=\\\"1\\\">\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<h2>C&ocirc;ng d\\u1ee5ng &ldquo;si&ecirc;u \\u0111\\u1ec9nh&rdquo; Tigi \\u0111em l\\u1ea1i cho m&aacute;i t&oacute;c:<\\/h2>\\r\\n\\r\\n\\t\\t\\t<p><img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;Lo\\u1ea1i b\\u1ecf m\\u1ecdi b\\u1ee5i b\\u1ea9n, b&atilde; nh\\u1eddn ho&agrave;n to&agrave;n gi&uacute;p da \\u0111\\u1ea7u s\\u1ea1ch s&acirc;u.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;Ng\\u0103n ng\\u1eeba t&igrave;nh tr\\u1ea1ng g&agrave;u, vi&ecirc;m ng\\u1ee9a v&agrave; c&aacute;c b\\u1ec7nh l&yacute; v\\u1ec1 da \\u0111\\u1ea7u.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;B\\u1ed5 sung d\\u01b0\\u1ee1ng ch\\u1ea5t nu&ocirc;i d\\u01b0\\u1ee1ng t&oacute;c ch\\u1eafc kh\\u1ecfe, b&oacute;ng m\\u01b0\\u1ee3t.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;T\\u0103ng c\\u01b0\\u1eddng \\u0111\\u1ed9 \\u0111&agrave;n h\\u1ed3i cho t&oacute;c, gi\\u1ea3m thi\\u1ec3u g&atilde;y r\\u1ee5ng v&agrave; kh&ocirc; x\\u01a1.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;B\\u1ea3o v\\u1ec7 t&oacute;c v\\u1edbi m&agrave;ng nano si&ecirc;u nh\\u1ecf ng\\u0103n ch\\u1eb7n t&aacute;c h\\u1ea1i c\\u1ee7a tia UV, t&aacute;c \\u0111\\u1ed9ng t\\u1eeb m&ocirc;i tr\\u01b0\\u1eddng b&ecirc;n ngo&agrave;i&hellip;<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;M&ugrave;i th\\u01a1m d\\u1ecbu nh\\u1eb9 \\u0111em l\\u1ea1i cho b\\u1ea1n c\\u1ea3m gi&aacute;c tho\\u1ea3i m&aacute;i, s\\u1ea3ng kho&aacute;i.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i1.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/toc-dai1.png\\\" style=\\\"height: 349px; width: 300px;\\\" \\/><\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i2.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/dau-goi-ti-gi-do-gia-dung-ninh-binh-combo-dau-goi-dau-xa-3-20210702093853.jpg?w=600&amp;ssl=1\\\" style=\\\"width: 300px; height: 300px;\\\" \\/><\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<h2>C\\u1ee9u Tinh Cho T&oacute;c H\\u01b0 T\\u1ed5n C\\u1ea5p \\u0110\\u1ed9 3<\\/h2>\\r\\n\\r\\n\\t\\t\\t<p><img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;Ph\\u1ee5c h\\u1ed3i t&oacute;c h\\u01b0 t\\u1ed5n do u\\u1ed1n &eacute;p, nhu\\u1ed9m<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;T\\u0103ng c\\u01b0\\u1eddng \\u0111\\u1ed9 \\u1ea9m cho t&oacute;c v&agrave; da \\u0111\\u1ea7u<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;C&ocirc;ng th\\u1ee9c \\u01b0u vi\\u1ec7t cung c\\u1ea5p vitamin nu&ocirc;i d\\u01b0\\u1ee1ng t&oacute;c t\\u1eeb g\\u1ed1c t\\u1edbi ng\\u1ecdn, gi&uacute;p t&oacute;c tr\\u1edf n&ecirc;n su&ocirc;n m\\u01b0\\u1ee3t, &oacute;ng \\u1ea3<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\"}},\"category\":[\"14\"],\"image\":\"\\/data\\/product\\/product-10.png\",\"sub_image\":[\"\\/data\\/product\\/product-12.png\",\"\\/data\\/product\\/product-6.png\",\"\\/data\\/product\\/product-2.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":\"dau-goi-xa-tigi-do-750ml\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"850000\",\"price\":\"850000\",\"tax_id\":\"0\",\"price_promotion\":\"430000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"10000\",\"weight_class\":\"kg\",\"weight\":\"2\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"attribute\":{\"3\":{\"name\":[\"https:\\/\\/www.favimart.store\\/checkout-tigi\"],\"add_price\":[\"0\"]}},\"fields\":{\"checkout_landing\":\"https:\\/\\/www.favimart.store\\/checkout-tigi\"},\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\"}', '2021-07-21 05:18:10', '2021-07-21 05:18:10'),
(87, 1, 'backend/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:18:10', '2021-07-21 05:18:10'),
(88, 1, 'backend/attribute_group', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:18:27', '2021-07-21 05:18:27'),
(89, 1, 'backend/attribute_group/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"ids\":\"3\",\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\"}', '2021-07-21 05:18:29', '2021-07-21 05:18:29'),
(90, 1, 'backend/attribute_group', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:18:30', '2021-07-21 05:18:30'),
(91, 1, 'backend/custom_field', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:18:39', '2021-07-21 05:18:39'),
(92, 1, 'backend/language_manager', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:30:42', '2021-07-21 05:30:42'),
(93, 1, 'backend/language_manager', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"position\":\"action\",\"lang\":\"vi\",\"keyword\":\"add_to_cart\"}', '2021-07-21 05:30:59', '2021-07-21 05:30:59'),
(94, 1, 'backend/language_manager/update', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"name\":\"action.add_to_cart\",\"value\":\"Mua Ngay\",\"pk\":null,\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\",\"lang\":\"vi\",\"position\":\"action\"}', '2021-07-21 05:31:12', '2021-07-21 05:31:12'),
(95, 1, 'backend/custom_field', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:35:19', '2021-07-21 05:35:19'),
(96, 1, 'backend/custom_field/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"name\":\"M\\u00f4 t\\u1ea3 ng\\u1eafn\",\"code\":\"short_description\",\"type\":\"product\",\"option\":\"input\",\"default\":null,\"status\":\"on\",\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\"}', '2021-07-21 05:37:27', '2021-07-21 05:37:27'),
(97, 1, 'backend/custom_field', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:37:27', '2021-07-21 05:37:27'),
(98, 1, 'backend/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:37:39', '2021-07-21 05:37:39'),
(99, 1, 'backend/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:37:42', '2021-07-21 05:37:42'),
(100, 1, 'backend/product/edit/17', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"C\\u1eb7p D\\u1ea7u G\\u1ed9i X\\u1ea3 Tigi \\u0110\\u1ecf 750mlx750ml\",\"keyword\":\"D\\u1ea7u g\\u1ed9i x\\u1ea3 tigi \\u0111\\u1ecf\",\"description\":\"D\\u01b0\\u1ee1ng ch\\u1ea5t c\\u00f3 trong d\\u1ea7u g\\u1ed9i x\\u1ea3 n\\u00e0y kh\\u00f4ng ch\\u1ec9 l\\u00e0m s\\u1ea1ch, nu\\u00f4i d\\u01b0\\u1ee1ng da \\u0111\\u1ea7u m\\u00e0 c\\u00f2n ph\\u1ee5c h\\u1ed3i s\\u1ef1 su\\u00f4n m\\u01b0\\u1ee3t ch\\u1eafc kh\\u1ecfe cho t\\u00f3c, ng\\u0103n ng\\u1eeba kh\\u00f4 x\\u01a1, g\\u00e3y r\\u1ee5ng, c\\u1ee7ng c\\u1ed1 \\u0111\\u1ed9 \\u1ea9m v\\u00e0 gia t\\u0103ng \\u0111\\u1ed9 b\\u00f3ng, t\\u00e1i t\\u1ea1o sinh l\\u1ef1c cho m\\u00e1i t\\u00f3c.\",\"content\":\"<p><strong>B\\u1ea1n \\u0111ang mu\\u1ed1n t&igrave;m ki\\u1ebfm m\\u1ed9t s\\u1ea3n ph\\u1ea9m d\\u1ea7u g\\u1ed9i, d\\u1ea7u x\\u1ea3 c&oacute; th\\u1ec3 gi&uacute;p b\\u1ea1n gi\\u1ea3i quy\\u1ebft \\u0111\\u01b0\\u1ee3c nh\\u1eefng v\\u1ea5n \\u0111\\u1ec1 sau:<\\/strong><br \\/>\\r\\n&rarr; Gi\\u1ea3m r\\u1ee5ng t&oacute;c.<br \\/>\\r\\n&rarr; Lo\\u1ea1i b\\u1ecf \\u0111\\u01b0\\u1ee3c g&agrave;u ng\\u1ee9a, kh&ocirc; x\\u01a1.<br \\/>\\r\\n&rarr; K&iacute;ch th&iacute;ch t&oacute;c m\\u1ecdc d&agrave;y v&agrave; ch\\u1eafc kho\\u1ebb h\\u01a1n.<br \\/>\\r\\n&rarr; Nu&ocirc;i d\\u01b0\\u1ee1ng t&oacute;c m\\u1ec1m m\\u1ea1i, su&ocirc;n m\\u01b0\\u1ee3t, b\\u1ed3ng b\\u1ec1nh t\\u1ef1 nhi&ecirc;n.<br \\/>\\r\\n&rarr; Ch\\u0103m s&oacute;c t&oacute;c an to&agrave;n, \\u0111&aacute;ng tin c\\u1eady.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i2.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/hinh-anh-bo-dau-goi-Tigi-Bed-Head-h1.jpg?w=500&amp;ssl=1\\\" style=\\\"width: 500px; height: 341px;\\\" \\/><\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><em>B\\u1ea1n c&oacute; \\u0111ang t&igrave;m ki\\u1ebfm cho m&igrave;nh s\\u1ea3n ph\\u1ea9m ch\\u0103m s&oacute;c t&oacute;c sao cho t\\u1ed1t nh\\u1ea5t kh&ocirc;ng?<\\/em><\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\ud83d\\udc49\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/1f449.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;V\\u1eady th&igrave;, b\\u1ed9 d\\u1ea7u g\\u1ed9i Tigi Bed Head ch&iacute;nh l&agrave; s\\u1ef1 l\\u1ef1a ch\\u1ecdn tuy\\u1ec7t v\\u1eddi m&agrave; b\\u1ea1n kh&ocirc;ng th\\u1ec3 b\\u1ecf qua \\u0111\\u1ec3 nhanh ch&oacute;ng s\\u1edf h\\u1eefu m&aacute;i t&oacute;c nh\\u01b0 &yacute; mu\\u1ed1n.<br \\/>\\r\\n&ndash; D\\u1ea7u g\\u1ed9i Tigi Bed Head \\u0111\\u1ecf \\u0111\\u01b0\\u1ee3c ch\\u1ee9ng minh l&agrave; c&oacute; hi\\u1ec7u qu\\u1ea3&nbsp;<strong>ph\\u1ee5c h\\u1ed3i t&oacute;c h\\u01b0 t\\u1ed5n, ng\\u0103n ch\\u1eb7n qu&aacute; tr&igrave;nh r\\u1ee5ng t&oacute;c v&agrave; k&iacute;ch th&iacute;ch m\\u1ecdc t&oacute;c<\\/strong>, d\\u01b0\\u1ee1ng t&oacute;c su&ocirc;n m\\u1ec1m, t\\u0103ng c\\u01b0\\u1eddng \\u0111\\u1ed9 \\u0111&agrave;n h\\u1ed3i cho t&oacute;c ch\\u1eafc kh\\u1ecfe sau 1-2 tu\\u1ea7n s\\u1eed d\\u1ee5ng.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i1.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/hinh-anh-bo-dau-goi-Tigi-Bed-Head-h2.jpg?w=500&amp;ssl=1\\\" style=\\\"width: 500px; height: 416px;\\\" \\/><\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><em>B\\u1ed9 d\\u1ea7u g\\u1ed9i Tigi Bed Head g\\u1ed3m 1 chai g\\u1ed9i 750ml + 1 chai x\\u1ea3 750ml<\\/em><\\/p>\\r\\n\\r\\n<table border=\\\"0\\\" cellpadding=\\\"1\\\" cellspacing=\\\"1\\\">\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<h2>C&ocirc;ng d\\u1ee5ng &ldquo;si&ecirc;u \\u0111\\u1ec9nh&rdquo; Tigi \\u0111em l\\u1ea1i cho m&aacute;i t&oacute;c:<\\/h2>\\r\\n\\r\\n\\t\\t\\t<p><img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;Lo\\u1ea1i b\\u1ecf m\\u1ecdi b\\u1ee5i b\\u1ea9n, b&atilde; nh\\u1eddn ho&agrave;n to&agrave;n gi&uacute;p da \\u0111\\u1ea7u s\\u1ea1ch s&acirc;u.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;Ng\\u0103n ng\\u1eeba t&igrave;nh tr\\u1ea1ng g&agrave;u, vi&ecirc;m ng\\u1ee9a v&agrave; c&aacute;c b\\u1ec7nh l&yacute; v\\u1ec1 da \\u0111\\u1ea7u.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;B\\u1ed5 sung d\\u01b0\\u1ee1ng ch\\u1ea5t nu&ocirc;i d\\u01b0\\u1ee1ng t&oacute;c ch\\u1eafc kh\\u1ecfe, b&oacute;ng m\\u01b0\\u1ee3t.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;T\\u0103ng c\\u01b0\\u1eddng \\u0111\\u1ed9 \\u0111&agrave;n h\\u1ed3i cho t&oacute;c, gi\\u1ea3m thi\\u1ec3u g&atilde;y r\\u1ee5ng v&agrave; kh&ocirc; x\\u01a1.<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;B\\u1ea3o v\\u1ec7 t&oacute;c v\\u1edbi m&agrave;ng nano si&ecirc;u nh\\u1ecf ng\\u0103n ch\\u1eb7n t&aacute;c h\\u1ea1i c\\u1ee7a tia UV, t&aacute;c \\u0111\\u1ed9ng t\\u1eeb m&ocirc;i tr\\u01b0\\u1eddng b&ecirc;n ngo&agrave;i&hellip;<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;M&ugrave;i th\\u01a1m d\\u1ecbu nh\\u1eb9 \\u0111em l\\u1ea1i cho b\\u1ea1n c\\u1ea3m gi&aacute;c tho\\u1ea3i m&aacute;i, s\\u1ea3ng kho&aacute;i.<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i1.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/toc-dai1.png\\\" style=\\\"height: 349px; width: 300px;\\\" \\/><\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"https:\\/\\/i2.wp.com\\/favimart.store\\/wp-content\\/uploads\\/2018\\/05\\/dau-goi-ti-gi-do-gia-dung-ninh-binh-combo-dau-goi-dau-xa-3-20210702093853.jpg?w=600&amp;ssl=1\\\" style=\\\"width: 300px; height: 300px;\\\" \\/><\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<h2>C\\u1ee9u Tinh Cho T&oacute;c H\\u01b0 T\\u1ed5n C\\u1ea5p \\u0110\\u1ed9 3<\\/h2>\\r\\n\\r\\n\\t\\t\\t<p><img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;Ph\\u1ee5c h\\u1ed3i t&oacute;c h\\u01b0 t\\u1ed5n do u\\u1ed1n &eacute;p, nhu\\u1ed9m<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;T\\u0103ng c\\u01b0\\u1eddng \\u0111\\u1ed9 \\u1ea9m cho t&oacute;c v&agrave; da \\u0111\\u1ea7u<br \\/>\\r\\n\\t\\t\\t<img alt=\\\"\\u2714\\\" draggable=\\\"false\\\" role=\\\"img\\\" src=\\\"https:\\/\\/s.w.org\\/images\\/core\\/emoji\\/13.0.1\\/svg\\/2714.svg\\\" style=\\\"height: 15px; width: 15px;\\\" \\/>&nbsp;C&ocirc;ng th\\u1ee9c \\u01b0u vi\\u1ec7t cung c\\u1ea5p vitamin nu&ocirc;i d\\u01b0\\u1ee1ng t&oacute;c t\\u1eeb g\\u1ed1c t\\u1edbi ng\\u1ecdn, gi&uacute;p t&oacute;c tr\\u1edf n&ecirc;n su&ocirc;n m\\u01b0\\u1ee3t, &oacute;ng \\u1ea3<\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\"}},\"category\":[\"14\"],\"image\":\"\\/data\\/product\\/product-10.png\",\"sub_image\":[\"\\/data\\/product\\/product-12.png\",\"\\/data\\/product\\/product-6.png\",\"\\/data\\/product\\/product-2.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":\"dau-goi-xa-tigi-do-750ml\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"850000\",\"price\":\"850000\",\"tax_id\":\"0\",\"price_promotion\":\"430000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"10000\",\"weight_class\":\"kg\",\"weight\":\"2\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"fields\":{\"checkout_landing\":\"https:\\/\\/www.favimart.store\\/checkout-tigi\",\"short_description\":\"B\\u1ed9 d\\u1ea7u g\\u1ed9i x\\u1ea3 Tigi Bed Head 250ml \\u0111ang \\u0111\\u01b0\\u1ee3c ch\\u1ecb em s\\u0103n l\\u00f9ng b\\u1edfi \\u0111\\u1ed9 ph\\u1ee5c h\\u1ed3i v\\u00e0 ch\\u0103m s\\u00f3c t\\u00f3c \\u201cth\\u1ea7n th\\u00e1nh\\u201d.\\r\\n\\r\\nD\\u01b0\\u1ee1ng ch\\u1ea5t c\\u00f3 trong d\\u1ea7u g\\u1ed9i x\\u1ea3 n\\u00e0y kh\\u00f4ng ch\\u1ec9 l\\u00e0m s\\u1ea1ch, nu\\u00f4i d\\u01b0\\u1ee1ng da \\u0111\\u1ea7u m\\u00e0 c\\u00f2n ph\\u1ee5c h\\u1ed3i s\\u1ef1 su\\u00f4n m\\u01b0\\u1ee3t ch\\u1eafc kh\\u1ecfe cho t\\u00f3c, ng\\u0103n ng\\u1eeba kh\\u00f4 x\\u01a1, g\\u00e3y r\\u1ee5ng, c\\u1ee7ng c\\u1ed1 \\u0111\\u1ed9 \\u1ea9m v\\u00e0 gia t\\u0103ng \\u0111\\u1ed9 b\\u00f3ng, t\\u00e1i t\\u1ea1o sinh l\\u1ef1c cho m\\u00e1i t\\u00f3c.\"},\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\"}', '2021-07-21 05:38:07', '2021-07-21 05:38:07'),
(101, 1, 'backend/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:38:07', '2021-07-21 05:38:07'),
(102, 1, 'backend/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:44:16', '2021-07-21 05:44:16'),
(103, 1, 'backend/store_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:44:22', '2021-07-21 05:44:22'),
(104, 1, 'backend/store_css', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:44:33', '2021-07-21 05:44:33');
INSERT INTO `admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(105, 1, 'backend/store_css', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"css\":\".sc-overlay {\\r\\n  position: fixed;\\r\\n  top: 50%;\\r\\n  left: 50%;\\r\\n  transform: translate(-50%, -50%);\\r\\n  transform: -webkit-translate(-50%, -50%);\\r\\n  transform: -moz-translate(-50%, -50%);\\r\\n  transform: -ms-translate(-50%, -50%);\\r\\n  color:#1f222b;\\r\\n  z-index: 9999;\\r\\n  background: rgba(255,255,255,0.7);\\r\\n}\\r\\n  \\r\\n#sc-loading{\\r\\n  display: none;\\r\\n  position: absolute;\\r\\n  top: 0;\\r\\n  left: 0;\\r\\n  width: 100%;\\r\\n  height: 100%;\\r\\n  z-index: 50;\\r\\n  background: rgba(255,255,255,0.7);\\r\\n}\\r\\n\\/*end loading *\\/\\r\\n  \\r\\n\\/*price*\\/\\r\\n.sc-new-price{\\r\\n  color:#FE980F;\\r\\n  font-size: 14px;\\r\\n  padding: 10px 5px;\\r\\n  font-weight:bold;\\r\\n  }\\r\\n  .sc-old-price {\\r\\n  text-decoration: line-through;\\r\\n  color: #a95d5d;\\r\\n  font-size: 13px;\\r\\n  padding: 10px;\\r\\n  }\\r\\n  \\/*end price*\\/\\r\\n.sc-product-build{\\r\\n  font-size: 20px;\\r\\n  font-weight: bold;\\r\\n}\\r\\n.sc-product-build img{\\r\\n  width: 50px;\\r\\n}\\r\\n.sc-product-group  img{\\r\\n  width: 100px;\\r\\n  cursor: pointer;\\r\\n  }\\r\\n.sc-product-group:hover{\\r\\n  box-shadow: 0px 0px 2px #999;\\r\\n}\\r\\n.sc-product-group:active{\\r\\n  box-shadow: 0px 0px 2px #ff00ff;\\r\\n}\\r\\n.sc-product-group.active{\\r\\n  box-shadow: 0px 0px 2px #ff00ff;\\r\\n}\\r\\n\\r\\n.sc-shipping-address td{\\r\\n  padding: 3px !important;\\r\\n}\\r\\n.sc-shipping-address textarea,\\r\\n.sc-shipping-address input[type=\\\"text\\\"],\\r\\n.sc-shipping-address option{\\r\\n  width: 100%;\\r\\n  padding: 7px !important;\\r\\n}\\r\\n.row_cart>td{\\r\\n  vertical-align: middle !important;\\r\\n}\\r\\ninput[type=\\\"number\\\"]{\\r\\n  text-align: center;\\r\\n  padding:2px;\\r\\n}\\r\\n.sc-notice{\\r\\n  clear: both;\\r\\n  clear: both;\\r\\n  font-size: 20px;\\r\\n  background: #f3f3f3;\\r\\n  width: 100%;\\r\\n}\\r\\nimg.new {\\r\\n  position: absolute;\\r\\n  right: 0px;\\r\\n  top: 0px;\\r\\n  padding: 0px !important;\\r\\n}\\r\\n.pointer {\\r\\n  cursor: pointer;\\r\\n}\\r\\n.add-to-cart-list {\\r\\n  padding: 5px 10px !important;\\r\\n  margin: 2px !important;\\r\\n  letter-spacing: 0px !important;\\r\\n  font-size: 12px !important;\\r\\n  border-radius: 5px;\\r\\n}\\r\\n.help-block {\\r\\n  font-size: 12px;\\r\\n  color: red;\\r\\n  font-style: italic;\\r\\n}\\r\\n.tab-content img{margin:0}\",\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\"}', '2021-07-21 05:44:57', '2021-07-21 05:44:57'),
(106, 1, 'backend/store_css', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:44:58', '2021-07-21 05:44:58'),
(107, 1, 'backend/config/webhook', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:46:05', '2021-07-21 05:46:05'),
(108, 1, 'backend/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '[]', '2021-07-21 05:46:12', '2021-07-21 05:46:12'),
(109, 1, 'backend/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"name\":\"title__vi\",\"value\":\"Ti\\u1ec7n \\u00edch cu\\u1ed9c s\\u1ed1ng\",\"pk\":null,\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\",\"storeId\":\"1\"}', '2021-07-21 05:47:17', '2021-07-21 05:47:17'),
(110, 1, 'backend/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"name\":\"description__vi\",\"value\":\"Favimart | Ti\\u1ec7n \\u00edch cu\\u1ed9c s\\u1ed1ng\",\"pk\":null,\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\",\"storeId\":\"1\"}', '2021-07-21 05:47:31', '2021-07-21 05:47:31'),
(111, 1, 'backend/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"name\":\"currency\",\"value\":\"VND\",\"pk\":null,\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\",\"storeId\":\"1\"}', '2021-07-21 05:47:54', '2021-07-21 05:47:54'),
(112, 1, 'backend/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"type\":\"logo\"}', '2021-07-21 05:48:03', '2021-07-21 05:48:03'),
(113, 1, 'backend/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1626846483840\"}', '2021-07-21 05:48:04', '2021-07-21 05:48:04'),
(114, 1, 'backend/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1626846483841\"}', '2021-07-21 05:48:04', '2021-07-21 05:48:04'),
(115, 1, 'backend/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1626846483842\"}', '2021-07-21 05:48:04', '2021-07-21 05:48:04'),
(116, 1, 'backend/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1626846483843\"}', '2021-07-21 05:48:09', '2021-07-21 05:48:09'),
(117, 1, 'backend/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"type\":\"logo\"}', '2021-07-21 05:48:28', '2021-07-21 05:48:28'),
(118, 1, 'backend/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1626846509064\"}', '2021-07-21 05:48:29', '2021-07-21 05:48:29'),
(119, 1, 'backend/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1626846509063\"}', '2021-07-21 05:48:29', '2021-07-21 05:48:29'),
(120, 1, 'backend/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1626846509065\"}', '2021-07-21 05:48:29', '2021-07-21 05:48:29'),
(121, 1, 'backend/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\"}', '2021-07-21 05:48:42', '2021-07-21 05:48:42'),
(122, 1, 'backend/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"_\":\"1626846509066\"}', '2021-07-21 05:48:42', '2021-07-21 05:48:42'),
(123, 1, 'backend/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1626846509067\"}', '2021-07-21 05:48:42', '2021-07-21 05:48:42'),
(124, 1, 'backend/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"name\":\"logo\",\"value\":\"\\/data\\/logo\\/capture-20210717075644.png\",\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\",\"storeId\":\"1\"}', '2021-07-21 05:48:53', '2021-07-21 05:48:53'),
(125, 1, 'backend/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"type\":\"logo\"}', '2021-07-21 05:48:55', '2021-07-21 05:48:55'),
(126, 1, 'backend/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1626846535583\"}', '2021-07-21 05:48:55', '2021-07-21 05:48:55'),
(127, 1, 'backend/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1626846535582\"}', '2021-07-21 05:48:55', '2021-07-21 05:48:55'),
(128, 1, 'backend/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1626846535584\"}', '2021-07-21 05:48:56', '2021-07-21 05:48:56'),
(129, 1, 'backend/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '{\"name\":\"icon\",\"value\":\"\\/data\\/logo\\/capture-20210717075644.png\",\"_token\":\"yK4jvLsbmjRr04bevx0WQzRZfk52LaYGULNouG36\",\"storeId\":\"1\"}', '2021-07-21 05:48:57', '2021-07-21 05:48:57'),
(130, 1, 'backend', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 10:35:24', '2021-07-28 10:35:24'),
(131, 1, 'backend/store_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 10:37:11', '2021-07-28 10:37:11'),
(132, 1, 'backend/store_config/update', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\",\"name\":\"payment_off\",\"storeId\":\"1\",\"value\":\"1\"}', '2021-07-28 10:37:17', '2021-07-28 10:37:17'),
(133, 1, 'backend/store_config/update', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\",\"name\":\"payment_off\",\"storeId\":\"1\",\"value\":\"0\"}', '2021-07-28 10:37:18', '2021-07-28 10:37:18'),
(134, 1, 'backend/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 10:38:37', '2021-07-28 10:38:37'),
(135, 1, 'backend/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 10:38:55', '2021-07-28 10:38:55'),
(136, 1, 'backend/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 10:39:33', '2021-07-28 10:39:33'),
(137, 1, 'backend/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 10:39:36', '2021-07-28 10:39:36'),
(138, 1, 'backend/language_manager', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:07:33', '2021-07-28 11:07:33'),
(139, 1, 'backend/language_manager', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"position\":\"product\",\"lang\":\"vi\",\"keyword\":\"stock_status\"}', '2021-07-28 11:08:25', '2021-07-28 11:08:25'),
(140, 1, 'backend/language_manager/update', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"name\":\"product.stock_status\",\"value\":\"Tr\\u1ea1ng th\\u00e1i kho\",\"pk\":null,\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\",\"lang\":\"vi\",\"position\":\"product\"}', '2021-07-28 11:08:38', '2021-07-28 11:08:38'),
(141, 1, 'backend/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:25:38', '2021-07-28 11:25:38'),
(142, 1, 'backend/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:25:41', '2021-07-28 11:25:41'),
(143, 1, 'backend/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:27:05', '2021-07-28 11:27:05'),
(144, 1, 'backend/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:27:09', '2021-07-28 11:27:09'),
(145, 1, 'backend/report/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:27:13', '2021-07-28 11:27:13'),
(146, 1, 'backend/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:27:17', '2021-07-28 11:27:17'),
(147, 1, 'backend/store_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:27:26', '2021-07-28 11:27:26'),
(148, 1, 'backend/menu', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:27:41', '2021-07-28 11:27:41'),
(149, 1, 'backend/menu/update_sort', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\",\"menu\":\"[{\\\"id\\\":6,\\\"children\\\":[{\\\"id\\\":1,\\\"children\\\":[{\\\"id\\\":12}]},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":15},{\\\"id\\\":16}]}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":33},{\\\"id\\\":10},{\\\"id\\\":52}]},{\\\"id\\\":25,\\\"children\\\":[{\\\"id\\\":29},{\\\"id\\\":3,\\\"children\\\":[{\\\"id\\\":20},{\\\"id\\\":21}]},{\\\"id\\\":45,\\\"children\\\":[{\\\"id\\\":51}]},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":54}]}]},{\\\"id\\\":65,\\\"children\\\":[{\\\"id\\\":26},{\\\"id\\\":57},{\\\"id\\\":60},{\\\"id\\\":67,\\\"children\\\":[{\\\"id\\\":22},{\\\"id\\\":23},{\\\"id\\\":44}]}]},{\\\"id\\\":9,\\\"children\\\":[{\\\"id\\\":38,\\\"children\\\":[{\\\"id\\\":46},{\\\"id\\\":47},{\\\"id\\\":48}]},{\\\"id\\\":5,\\\"children\\\":[{\\\"id\\\":49},{\\\"id\\\":53},{\\\"id\\\":34},{\\\"id\\\":58}]},{\\\"id\\\":27,\\\"children\\\":[{\\\"id\\\":13},{\\\"id\\\":11},{\\\"id\\\":14},{\\\"id\\\":17},{\\\"id\\\":18},{\\\"id\\\":68},{\\\"id\\\":62},{\\\"id\\\":63},{\\\"id\\\":19},{\\\"id\\\":61}]},{\\\"id\\\":28,\\\"children\\\":[{\\\"id\\\":50},{\\\"id\\\":36}]},{\\\"id\\\":30,\\\"children\\\":[{\\\"id\\\":31},{\\\"id\\\":69},{\\\"id\\\":32}]},{\\\"id\\\":59,\\\"children\\\":[{\\\"id\\\":66}]}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":4,\\\"children\\\":[{\\\"id\\\":24}]},{\\\"id\\\":35,\\\"children\\\":[{\\\"id\\\":39},{\\\"id\\\":40},{\\\"id\\\":41},{\\\"id\\\":43},{\\\"id\\\":42}]}]}]\"}', '2021-07-28 11:28:22', '2021-07-28 11:28:22'),
(150, 1, 'backend/menu', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:28:23', '2021-07-28 11:28:23'),
(151, 1, 'backend/env/config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:28:27', '2021-07-28 11:28:27'),
(152, 1, 'backend/config/update', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\",\"name\":\"ADMIN_FOOTER_OFF\",\"value\":\"1\"}', '2021-07-28 11:28:33', '2021-07-28 11:28:33'),
(153, 1, 'backend/order_status', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:28:38', '2021-07-28 11:28:38'),
(154, 1, 'backend/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:28:48', '2021-07-28 11:28:48'),
(155, 1, 'backend/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:28:51', '2021-07-28 11:28:51'),
(156, 1, 'backend/store_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:28:58', '2021-07-28 11:28:58'),
(157, 1, 'backend/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:29:00', '2021-07-28 11:29:00'),
(158, 1, 'backend/store_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:29:03', '2021-07-28 11:29:03'),
(159, 1, 'backend/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:29:35', '2021-07-28 11:29:35'),
(160, 1, 'backend/store_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:29:38', '2021-07-28 11:29:38'),
(161, 1, 'backend/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:29:42', '2021-07-28 11:29:42'),
(162, 1, 'backend/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:30:07', '2021-07-28 11:30:07'),
(163, 1, 'backend/store_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:38:15', '2021-07-28 11:38:15'),
(164, 1, 'backend/store_maintain', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:38:17', '2021-07-28 11:38:17'),
(165, 1, 'backend/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:38:23', '2021-07-28 11:38:23'),
(166, 1, 'backend/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:38:25', '2021-07-28 11:38:25'),
(167, 1, 'backend/email_template', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:38:40', '2021-07-28 11:38:40'),
(168, 1, 'backend/email_template', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:38:45', '2021-07-28 11:38:45'),
(169, 1, 'backend/store_block', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:40:40', '2021-07-28 11:40:40'),
(170, 1, 'backend/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:41:14', '2021-07-28 11:41:14'),
(171, 1, 'backend/store_css', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:41:20', '2021-07-28 11:41:20'),
(172, 1, 'backend/store_block', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:41:22', '2021-07-28 11:41:22'),
(173, 1, 'backend/store_block', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:42:06', '2021-07-28 11:42:06'),
(174, 1, 'backend/menu', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:42:19', '2021-07-28 11:42:19'),
(175, 1, 'backend/env/config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:42:42', '2021-07-28 11:42:42'),
(176, 1, 'backend/cache_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:42:50', '2021-07-28 11:42:50'),
(177, 1, 'backend/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:44:17', '2021-07-28 11:44:17'),
(178, 1, 'backend/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-07-28 11:44:38', '2021-07-28 11:44:38'),
(179, 1, 'backend/store_link/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"ids\":\"3\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 11:46:23', '2021-07-28 11:46:23'),
(180, 1, 'backend/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-07-28 11:46:23', '2021-07-28 11:46:23'),
(181, 1, 'backend/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:46:38', '2021-07-28 11:46:38'),
(182, 1, 'backend/page/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:46:40', '2021-07-28 11:46:40'),
(183, 1, 'backend/page/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"keyword\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"description\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"content\":\"<h3><strong>H\\u01b0\\u1edbng d\\u1eabn mua h&agrave;ng:<\\/strong><\\/h3>\\r\\n\\r\\n<p><strong>B\\u01b0\\u1edbc 1:<\\/strong>&nbsp;Truy c\\u1eadp website v&agrave; l\\u1ef1a ch\\u1ecdn s\\u1ea3n ph\\u1ea9m c\\u1ea7n mua \\u0111\\u1ec3 mua h&agrave;ng<\\/p>\\r\\n\\r\\n<p><strong>B\\u01b0\\u1edbc 2:<\\/strong>&nbsp;Click v&agrave;o n&uacute;t Mua ngay ho\\u1eb7c \\u0110\\u1eb7t h&agrave;ng ngay t\\u1ea1i Website<\\/p>\\r\\n\\r\\n<p><strong>B\\u01b0\\u1edbc 3:&nbsp;<\\/strong>\\u0110i\\u1ec1n \\u0111\\u1ea7y \\u0111\\u1ee7 th&ocirc;ng tin<br \\/>\\r\\n&ndash; H\\u1ecd t&ecirc;n<br \\/>\\r\\n&ndash; Ch\\u1ecdn t&ecirc;n s\\u1ea3n ph\\u1ea9m<br \\/>\\r\\n&ndash; Ch\\u1ecdn s\\u1ed1 l\\u01b0\\u1ee3ng mu\\u1ed1n \\u0111\\u1eb7t mua<br \\/>\\r\\n&ndash; \\u0110i\\u1ec1n s\\u1ed1 \\u0111i\\u1ec7n tho\\u1ea1i nh\\u1eadn h&agrave;ng<br \\/>\\r\\n&ndash; \\u0110i\\u1ec1n th&ocirc;ng tin \\u0111\\u1ecba ch\\u1ec9 nh\\u1eadn h&agrave;ng<br \\/>\\r\\n&ndash; Ghi ch&uacute; th&ecirc;m n\\u1ebfu c&oacute;<\\/p>\\r\\n\\r\\n<p><strong>B\\u01b0\\u1edbc 4:&nbsp;<\\/strong>Click ch\\u1ecdn &ldquo;<em>\\u0110\\u1eb7t Mua Ngay<\\/em>&rdquo;<\\/p>\\r\\n\\r\\n<p><strong>B\\u01b0\\u1edbc 5:<\\/strong>&nbsp;M\\u1ed9t trang th&ocirc;ng b&aacute;o \\u0111\\u1eb7t mua th&agrave;nh c&ocirc;ng s\\u1ebd xu\\u1ea5t hi\\u1ec7n. Q&uacute;y kh&aacute;ch ch\\u1edd \\u0111\\u1ee3i nh&acirc;n vi\\u1ec7n g\\u1ecdi \\u0111i\\u1ec7n x&aacute;c nh\\u1eadn \\u0111\\u01a1n h&agrave;ng tr\\u01b0\\u1edbc l&uacute;c v\\u1eadn chuy\\u1ec3n \\u0111\\u1ebfn cho qu&yacute; kh&aacute;ch<\\/p>\\r\\n\\r\\n<h3><strong>Quy \\u0111\\u1ecbnh \\u0111\\u1ed5i, tr\\u1ea3 h&agrave;ng:<\\/strong><\\/h3>\\r\\n\\r\\n<p>Th\\u1eddi gian \\u0111\\u1ed5i, tr\\u1ea3 trong v&ograve;ng 3 ng&agrave;y k\\u1ec3 t\\u1eeb khi nh\\u1eadn \\u0111\\u01b0\\u1ee3c h&agrave;ng<br \\/>\\r\\nC&aacute;ch th\\u1ee9c \\u0111\\u1ed5i tr\\u1ea3: Qu&yacute; kh&aacute;ch vui l&ograve;ng g\\u1ecdi \\u0111i\\u1ec7n, th&ocirc;ng b&aacute;o email v\\u1ec1 s\\u1ea3n ph\\u1ea9m c\\u1ea7n \\u0111\\u1ed5i, tr\\u1ea3.<br \\/>\\r\\n<span style=\\\"color:#e74c3c;\\\"><em><strong>L\\u01b0u &yacute;:<\\/strong>&nbsp;Qu&yacute; kh&aacute;ch n&ecirc;n ki\\u1ec3m tra s\\u1ea3n ph\\u1ea9m ngay khi nh&acirc;n vi&ecirc;n c\\u1ee7a trung t&acirc;m giao h&agrave;ng \\u0111\\u1ebfn t\\u1eadn nh&agrave;.<\\/em><\\/span><br \\/>\\r\\nNh\\u1eefng tr\\u01b0\\u1eddng h\\u1ee3p \\u0111\\u01b0\\u1ee3c \\u0111\\u1ed5i tr\\u1ea3:<\\/p>\\r\\n\\r\\n<ul contenteditable=\\\"true\\\">\\r\\n\\t<li>L\\u1ed7i t\\u1eeb ph&iacute;a nh&agrave; cung c\\u1ea5p s\\u1ea3n ph\\u1ea9m ho\\u1eb7c l\\u1ed7i b&ecirc;n chuy\\u1ec3n ph&aacute;t nh\\u01b0: S\\u1ea3n ph\\u1ea9m kh&ocirc;ng \\u0111&uacute;ng nh\\u01b0 m&ocirc; t\\u1ea3 khi \\u0111\\u1eb7t h&agrave;ng (m&agrave;u s\\u1eafc, tr\\u1ecdng l\\u01b0\\u1ee3ng, ki\\u1ec3u d&aacute;ng,&hellip;), s\\u1ea3n ph\\u1ea9m b\\u1ecb b\\u1ea9n, tr\\u1ea7y x\\u01b0\\u1edbc.<\\/li>\\r\\n\\t<li>S\\u1ea3n ph\\u1ea9m \\u0111&atilde; b\\u1ecb th&aacute;o g\\u1ee1 tr\\u01b0\\u1edbc \\u0111&oacute;, b\\u1ecb m&oacute;p, m&eacute;o.<\\/li>\\r\\n\\t<li>S\\u1ea3n ph\\u1ea9m b\\u1ecb h\\u1ecfng ho\\u1eb7c c&oacute; c&aacute;c hi\\u1ec7n t\\u01b0\\u1ee3ng l\\u1ea1, \\u0111&aacute;ng nghi.<\\/li>\\r\\n\\t<li>S\\u1ea3n ph\\u1ea9m h\\u1ebft h\\u1ea1n s\\u1eed d\\u1ee5ng<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>V\\u1edbi c&aacute;c tr\\u01b0\\u1eddng h\\u1ee3p tr&ecirc;n qu&yacute; kh&aacute;ch c&oacute; quy\\u1ec1n \\u0111\\u1ed5i tr\\u1ea3 s\\u1ea3n ph\\u1ea9m c&oacute; gi&aacute; tr\\u1ecb l\\u1edbn h\\u01a1n ho\\u1eb7c b\\u1eb1ng gi&aacute; tr\\u1ecb s\\u1ea3n ph\\u1ea9m \\u0111&atilde; mua tr\\u01b0\\u1edbc \\u0111&oacute;.<br \\/>\\r\\nS\\u1ea3n ph\\u1ea9m \\u0111\\u1ed5i tr\\u1ea3 ph\\u1ea3i c&ograve;n nguy&ecirc;n tem, ch\\u01b0a qua s\\u1eed d\\u1ee5ng, gi\\u1eb7t t\\u1ea9y, kh&ocirc;ng b\\u1ecb tr\\u1ea7y x\\u01b0\\u1edbc ho\\u1eb7c d\\u01a1 b\\u1ea9n.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><em>T\\u1ea5t c\\u1ea3 c&aacute;c khi\\u1ebfu n\\u1ea1i, th\\u1eafc m\\u1eafc ho\\u1eb7c \\u0111\\u1ed5i tr\\u1ea3 h&agrave;ng qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n h\\u1ec7 HOTLINE c\\u1ee7a ch&uacute;ng t&ocirc;i \\u1edf ph\\u1ea7n th&ocirc;ng tin li&ecirc;n h\\u1ec7<\\/em><\\/p>\"}},\"image\":null,\"alias\":null,\"status\":\"on\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 11:47:39', '2021-07-28 11:47:39'),
(184, 1, 'backend/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:47:39', '2021-07-28 11:47:39'),
(185, 1, 'backend/page/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:49:34', '2021-07-28 11:49:34'),
(186, 1, 'backend/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:50:45', '2021-07-28 11:50:45'),
(187, 1, 'backend/store_link/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:50:49', '2021-07-28 11:50:49'),
(188, 1, 'backend/store_link/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"name\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"url\":\"huong-dan-mua-hang\",\"target\":\"_self\",\"group\":\"menu\",\"sort\":\"0\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 11:51:18', '2021-07-28 11:51:18'),
(189, 1, 'backend/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:51:19', '2021-07-28 11:51:19'),
(190, 1, 'backend/store_link/edit/7', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:51:22', '2021-07-28 11:51:22'),
(191, 1, 'backend/store_link/edit/7', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"name\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"url\":\"huong-dan-mua-hang\",\"target\":\"_self\",\"group\":\"menu\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 11:51:25', '2021-07-28 11:51:25'),
(192, 1, 'backend/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:51:25', '2021-07-28 11:51:25'),
(193, 1, 'backend/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:52:17', '2021-07-28 11:52:17'),
(194, 1, 'backend/page/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:52:19', '2021-07-28 11:52:19'),
(195, 1, 'backend/page/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Ch\\u00ednh s\\u00e1ch v\\u1eadn chuy\\u1ec3n\",\"keyword\":\"Ch\\u00ednh s\\u00e1ch v\\u1eadn chuy\\u1ec3n\",\"description\":\"Ch\\u00ednh s\\u00e1ch v\\u1eadn chuy\\u1ec3n\",\"content\":\"<section data-element_type=\\\"section\\\" data-id=\\\"393e2a6b\\\">Sau khi qu&yacute; kh&aacute;ch&nbsp;\\u0111&atilde;&nbsp;<strong>\\u0111\\u1eb7t h&agrave;ng th&agrave;nh c&ocirc;ng<\\/strong>, \\u0111\\u1ed9i ng\\u0169 Ch\\u0103m s&oacute;c kh&aacute;ch h&agrave;ng c\\u1ee7a ch&uacute;ng t&ocirc;i s\\u1ebd ti\\u1ebfn h&agrave;nh li&ecirc;n h\\u1ec7 theo s\\u1ed1 \\u0111i\\u1ec7n tho\\u1ea1i b\\u1ea1n cung c\\u1ea5p \\u0111\\u1ec3 x&aacute;c minh \\u0111\\u01a1n h&agrave;ng, \\u0111\\u1ed3ng th\\u1eddi th&ocirc;ng b&aacute;o v\\u1ec1 th\\u1eddi gian b\\u1ea1n nh\\u1eadn \\u0111\\u01b0\\u1ee3c h&agrave;ng, k&egrave;m theo c&aacute;c th&ocirc;ng tin c\\u1ea7n thi\\u1ebft kh&aacute;c. Sau khi qu&aacute; tr&igrave;nh&nbsp;<strong>x&aacute;c minh th&agrave;nh c&ocirc;ng<\\/strong>. \\u0110\\u01a1n h&agrave;ng s\\u1ebd \\u0111\\u01b0\\u1ee3c giao \\u0111\\u1ebfn qu&yacute; kh&aacute;ch trong kho\\u1ea3ng th\\u1eddi gian sau \\u0111&acirc;y (C&aacute;c \\u0111\\u01a1n \\u0111\\u1eb7t h&agrave;ng ngo&agrave;i gi\\u1edd h&agrave;nh ch&iacute;nh s\\u1ebd t&iacute;nh th\\u1eddi gian b\\u1eaft \\u0111\\u1ea7u t\\u1eeb s&aacute;ng ng&agrave;y h&ocirc;m sau): &nbsp;\\r\\n<table border=\\\"0\\\" cellpadding=\\\"1\\\" cellspacing=\\\"1\\\" style=\\\"width:500px;\\\">\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td><strong>\\u0110\\u1ecba ch\\u1ec9 giao h&agrave;ng<\\/strong><\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><strong>Th\\u1eddi gian giao h&agrave;ng<\\/strong><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>&ndash; N\\u1ed9i th&agrave;nh H&agrave; N\\u1ed9i<br \\/>\\r\\n\\t\\t\\t&ndash; Ngo\\u1ea1i th&agrave;nh H&agrave; N\\u1ed9i<br \\/>\\r\\n\\t\\t\\t&ndash; N\\u1ed9i th&agrave;nh TP. H\\u1ed3 Ch&iacute; Minh<br \\/>\\r\\n\\t\\t\\t&ndash; Ngo\\u1ea1i th&agrave;nh TP H\\u1ed3 Ch&iacute; Minh<br \\/>\\r\\n\\t\\t\\t&ndash; Khu v\\u1ef1c tuy\\u1ebfn huy\\u1ec7n<\\/td>\\r\\n\\t\\t\\t<td>&ndash; 24h-48h sau khi \\u0111\\u1eb7t h&agrave;ng<br \\/>\\r\\n\\t\\t\\t&ndash; 48h-72h sau khi \\u0111\\u1eb7t h&agrave;ng<br \\/>\\r\\n\\t\\t\\t&ndash; 24h-48h sau khi \\u0111\\u1eb7t h&agrave;ng<br \\/>\\r\\n\\t\\t\\t&ndash; 48h-72h sau khi \\u0111\\u1eb7t h&agrave;ng<br \\/>\\r\\n\\t\\t\\t&ndash; 3-5 ng&agrave;y sau khi \\u0111\\u1eb7t h&agrave;ng<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/section>\\r\\n\\r\\n<section data-element_type=\\\"section\\\" data-id=\\\"4fc53be\\\">\\r\\n<p><em><strong>L\\u01b0u &yacute;:&nbsp;<\\/strong><\\/em><\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>C&aacute;c \\u0111\\u01a1n \\u0111\\u1eb7t h&agrave;ng trong ng&agrave;y Ch\\u1ee7 Nh\\u1eadt s\\u1ebd \\u0111\\u01b0\\u1ee3c b\\u1eaft \\u0111\\u1ea7u giao h&agrave;ng t\\u1eeb ng&agrave;y th\\u1ee9 2 tu\\u1ea7n k\\u1ebf ti\\u1ebfp.<\\/li>\\r\\n\\t<li>C&aacute;c \\u0111\\u01a1n \\u0111\\u1eb7t h&agrave;ng ngo&agrave;i gi\\u1edd h&agrave;nh ch&iacute;nh s\\u1ebd t&iacute;nh th\\u1eddi gian b\\u1eaft \\u0111\\u1ea7u t\\u1eeb 8:00 s&aacute;ng ng&agrave;y h&ocirc;m sau<\\/li>\\r\\n<\\/ul>\\r\\n<\\/section>\\r\\n\\r\\n<section data-element_type=\\\"section\\\" data-id=\\\"e45c211\\\">\\r\\n<p><em>T\\u1ea5t c\\u1ea3 c&aacute;c khi\\u1ebfu n\\u1ea1i, th\\u1eafc m\\u1eafc ho\\u1eb7c \\u0111\\u1ed5i tr\\u1ea3 h&agrave;ng qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n h\\u1ec7 HOTLINE \\u1edf ph\\u1ea7n th&ocirc;ng tin li&ecirc;n h\\u1ec7 c\\u1ee7a ch&uacute;ng t&ocirc;i<\\/em><\\/p>\\r\\n<\\/section>\"}},\"image\":null,\"alias\":null,\"status\":\"on\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 11:54:53', '2021-07-28 11:54:53'),
(196, 1, 'backend/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:54:53', '2021-07-28 11:54:53'),
(197, 1, 'backend/store_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:55:14', '2021-07-28 11:55:14'),
(198, 1, 'backend/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:55:16', '2021-07-28 11:55:16'),
(199, 1, 'backend/store_maintain', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:55:23', '2021-07-28 11:55:23'),
(200, 1, 'backend/store_block', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:55:27', '2021-07-28 11:55:27'),
(201, 1, 'backend/language_manager', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:56:53', '2021-07-28 11:56:53'),
(202, 1, 'backend/language_manager', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"position\":\"front\",\"lang\":\"vi\",\"keyword\":\"my_profile\"}', '2021-07-28 11:57:02', '2021-07-28 11:57:02'),
(203, 1, 'backend/language_manager/update', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"name\":\"front.my_profile\",\"value\":\"Kh\\u00e1ch h\\u00e0ng\",\"pk\":null,\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\",\"lang\":\"vi\",\"position\":\"front\"}', '2021-07-28 11:57:08', '2021-07-28 11:57:08'),
(204, 1, 'backend/brand', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:59:26', '2021-07-28 11:59:26'),
(205, 1, 'backend/brand/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"ids\":\"8\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 11:59:35', '2021-07-28 11:59:35'),
(206, 1, 'backend/brand', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:59:35', '2021-07-28 11:59:35'),
(207, 1, 'backend/brand/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"ids\":\"7\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 11:59:38', '2021-07-28 11:59:38'),
(208, 1, 'backend/brand', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:59:39', '2021-07-28 11:59:39'),
(209, 1, 'backend/brand/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"ids\":\"6\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 11:59:41', '2021-07-28 11:59:41'),
(210, 1, 'backend/brand', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:59:42', '2021-07-28 11:59:42'),
(211, 1, 'backend/brand/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"ids\":\"5\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 11:59:44', '2021-07-28 11:59:44'),
(212, 1, 'backend/brand', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:59:44', '2021-07-28 11:59:44'),
(213, 1, 'backend/brand/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"ids\":\"4\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 11:59:46', '2021-07-28 11:59:46'),
(214, 1, 'backend/brand', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:59:47', '2021-07-28 11:59:47'),
(215, 1, 'backend/brand/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"ids\":\"3\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 11:59:49', '2021-07-28 11:59:49'),
(216, 1, 'backend/brand', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:59:49', '2021-07-28 11:59:49'),
(217, 1, 'backend/brand/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"ids\":\"2\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 11:59:51', '2021-07-28 11:59:51'),
(218, 1, 'backend/brand', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:59:52', '2021-07-28 11:59:52'),
(219, 1, 'backend/brand/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 11:59:55', '2021-07-28 11:59:55'),
(220, 1, 'backend/brand/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"name\":\"Bed Head\",\"alias\":\"bed-head\",\"url\":null,\"image\":null,\"sort\":\"0\",\"status\":\"on\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 12:00:18', '2021-07-28 12:00:18'),
(221, 1, 'backend/brand/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:00:18', '2021-07-28 12:00:18'),
(222, 1, 'backend/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"brand\"}', '2021-07-28 12:00:22', '2021-07-28 12:00:22'),
(223, 1, 'backend/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"brand\",\"_\":\"1627473623731\"}', '2021-07-28 12:00:24', '2021-07-28 12:00:24'),
(224, 1, 'backend/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"brand\",\"_\":\"1627473623730\"}', '2021-07-28 12:00:24', '2021-07-28 12:00:24'),
(225, 1, 'backend/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"brand\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1627473623732\"}', '2021-07-28 12:00:24', '2021-07-28 12:00:24'),
(226, 1, 'backend/brand/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:00:27', '2021-07-28 12:00:27'),
(227, 1, 'backend/brand/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"name\":\"Bed Head\",\"alias\":\"bed-head\",\"url\":null,\"image\":\"\\/data\\/brand\\/01-181x52.png\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 12:00:40', '2021-07-28 12:00:40'),
(228, 1, 'backend/brand/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:00:41', '2021-07-28 12:00:41'),
(229, 1, 'backend/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:01:28', '2021-07-28 12:01:28'),
(230, 1, 'backend/page/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:01:32', '2021-07-28 12:01:32'),
(231, 1, 'backend/page/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Ch\\u00ednh s\\u00e1ch thanh to\\u00e1n\",\"keyword\":\"Ch\\u00ednh s\\u00e1ch thanh to\\u00e1n\",\"description\":\"Ch\\u00ednh s\\u00e1ch thanh to\\u00e1n\",\"content\":\"<p><span style=\\\"color:#000000;\\\"><strong>1. Ch&uacute;ng t&ocirc;i cung c\\u1ea5p cho kh&aacute;ch h&agrave;ng duy nh\\u1ea5t 1 h&igrave;nh th\\u1ee9c thanh to&aacute;n l&agrave; SHIP COD (Nh\\u1eadn h&agrave;ng &ndash; Thanh to&aacute;n)<\\/strong><\\/span><\\/p>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\">Ship COD l&agrave; h&igrave;nh th\\u1ee9c giao h&agrave;ng t\\u1edbi n\\u01a1i m\\u1edbi thu ti\\u1ec1n. Qu&yacute; kh&aacute;ch \\u0111\\u01b0\\u1ee3c c\\u1ea7m h&agrave;ng v&agrave; ki\\u1ec3m tra \\u0111&uacute;ng ch\\u1ea5t l\\u01b0\\u1ee3ng sau \\u0111&oacute; m\\u1edbi ph\\u1ea3i tr\\u1ea3 ti\\u1ec1n h&agrave;ng. Ti\\u1ec1n h&agrave;ng s\\u1ebd th&agrave;nh to&aacute;n cho nh&acirc;n vi&ecirc;n giao h&agrave;ng<\\/span><\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">Kh&aacute;ch h&agrave;ng \\u0111\\u1eb7t h&agrave;ng t\\u1ea1i website<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">Nh&acirc;n vi&ecirc;n ch&uacute;ng t&ocirc;i g\\u1ecdi x&aacute;c nh\\u1eadn \\u0111\\u1ecba ch\\u1ec9 v&agrave; th&ocirc;ng tin \\u0111\\u01a1n h&agrave;ng<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">Sau kho&agrave;ng th\\u1eddi gian 2-4 ng&agrave;y b\\u01b0u t&aacute; giao \\u0111\\u1ebfn \\u0111\\u1ecba ch\\u1ec9 c\\u1ee7a kh&aacute;ch h&agrave;ng<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">N\\u1ebfu \\u0111\\u1ed3ng &yacute; nh\\u1eadn h&agrave;ng, b\\u01b0u t&aacute; s\\u1ebd thu ti\\u1ec1n h&agrave;ng c\\u1ee7a kh&aacute;ch h&agrave;ng.<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">N\\u1ebfu t\\u1eeb ch\\u1ed1i nh\\u1eadn h&agrave;ng, b\\u01b0u t&aacute; s\\u1ebd chuy\\u1ec3n l\\u1ea1i h&agrave;ng cho ch&uacute;ng t&ocirc;i (Kh&aacute;ch h&agrave;ng kh&ocirc;ng m\\u1ea5t chi ph&iacute;)<\\/span><\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\">M\\u1ecdi \\u0111\\u01a1n h&agrave;ng \\u0111\\u1eb7t mua t\\u1ea1i webiste c\\u1ee7a chung t&ocirc;i s\\u1ebd \\u0111\\u01b0\\u1ee3c mi\\u1ec5n ph&iacute; v\\u1eadn chuy\\u1ec3n t\\u1ea1i Vi\\u1ec7t Nam<\\/span><\\/p>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\"><strong>2. H\\u01b0\\u1edbng d\\u1eabn thanh to&aacute;n<\\/strong><\\/span><\\/p>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\">Sau khi \\u0111\\u1eb7t mua h&agrave;ng v&agrave; \\u0111\\u01b0\\u1ee3c ch&uacute;ng t&ocirc;i x&aacute;c nh\\u1eadn, \\u0111\\u01a1n h&agrave;ng c\\u1ee7a qu&yacute; kh&aacute;ch s\\u1ebd \\u0111\\u01b0\\u1ee3c \\u0111&oacute;ng g&oacute;i v&agrave; chuy\\u1ec3n \\u0111i, m\\u1ecdi \\u0111\\u01a1n h&agrave;ng \\u0111\\u01b0\\u1ee3c mi\\u1ec5n ph&iacute; v\\u1eadn chuy\\u1ec3n v&agrave; t\\u1edbi qu&yacute; kh&aacute;ch t\\u1eeb 2-4 ng&agrave;y, b\\u1ed9 ph&acirc;n giao h&agrave;ng c\\u1ee7a ch&uacute;ng t&ocirc;i l&agrave;m vi\\u1ec7c c\\u1ea3 th\\u1ee9 7 v&agrave; ch\\u1ee7 nh\\u1eadt<br \\/>\\r\\nKhi nh\\u1eadn \\u0111\\u01b0\\u1ee3c h&agrave;ng qu&yacute; kh&aacute;ch \\u0111\\u01b0\\u1ee3c ki\\u1ec3m tra h&agrave;ng c\\u1ee7a m&igrave;nh v&agrave; thanh to&aacute;n cho nh&acirc;n vi&ecirc;n giao h&agrave;ng t\\u01b0\\u01a1ng \\u1ee9ng v\\u1edbi s\\u1ed1 ti\\u1ec1n \\u0111&atilde; \\u0111\\u1eb7t mua.<\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><span style=\\\"color:#000000;\\\"><em>T\\u1ea5t c\\u1ea3 c&aacute;c khi\\u1ebfu n\\u1ea1i, th\\u1eafc m\\u1eafc ho\\u1eb7c \\u0111\\u1ed5i tr\\u1ea3 h&agrave;ng qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n h\\u1ec7 HOTLINE \\u1edf ph\\u1ea7n th&ocirc;ng tin li&ecirc;n h\\u1ec7 c\\u1ee7a ch&uacute;ng t&ocirc;i<\\/em><\\/span><\\/p>\"}},\"image\":null,\"alias\":null,\"status\":\"on\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 12:02:54', '2021-07-28 12:02:54'),
(232, 1, 'backend/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:02:54', '2021-07-28 12:02:54'),
(233, 1, 'backend/page/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:02:57', '2021-07-28 12:02:57');
INSERT INTO `admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(234, 1, 'backend/page/edit/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"keyword\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"description\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"content\":\"<h3><span style=\\\"color:#000000;\\\"><strong>H\\u01b0\\u1edbng d\\u1eabn mua h&agrave;ng:<\\/strong><\\/span><\\/h3>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\"><strong>B\\u01b0\\u1edbc 1:<\\/strong>&nbsp;Truy c\\u1eadp website v&agrave; l\\u1ef1a ch\\u1ecdn s\\u1ea3n ph\\u1ea9m c\\u1ea7n mua \\u0111\\u1ec3 mua h&agrave;ng<\\/span><\\/p>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\"><strong>B\\u01b0\\u1edbc 2:<\\/strong>&nbsp;Click v&agrave;o n&uacute;t Mua ngay ho\\u1eb7c \\u0110\\u1eb7t h&agrave;ng ngay t\\u1ea1i Website<\\/span><\\/p>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\"><strong>B\\u01b0\\u1edbc 3:&nbsp;<\\/strong>\\u0110i\\u1ec1n \\u0111\\u1ea7y \\u0111\\u1ee7 th&ocirc;ng tin<br \\/>\\r\\n&ndash; H\\u1ecd t&ecirc;n<br \\/>\\r\\n&ndash; Ch\\u1ecdn t&ecirc;n s\\u1ea3n ph\\u1ea9m<br \\/>\\r\\n&ndash; Ch\\u1ecdn s\\u1ed1 l\\u01b0\\u1ee3ng mu\\u1ed1n \\u0111\\u1eb7t mua<br \\/>\\r\\n&ndash; \\u0110i\\u1ec1n s\\u1ed1 \\u0111i\\u1ec7n tho\\u1ea1i nh\\u1eadn h&agrave;ng<br \\/>\\r\\n&ndash; \\u0110i\\u1ec1n th&ocirc;ng tin \\u0111\\u1ecba ch\\u1ec9 nh\\u1eadn h&agrave;ng<br \\/>\\r\\n&ndash; Ghi ch&uacute; th&ecirc;m n\\u1ebfu c&oacute;<\\/span><\\/p>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\"><strong>B\\u01b0\\u1edbc 4:&nbsp;<\\/strong>Click ch\\u1ecdn &ldquo;<em>\\u0110\\u1eb7t Mua Ngay<\\/em>&rdquo;<\\/span><\\/p>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\"><strong>B\\u01b0\\u1edbc 5:<\\/strong>&nbsp;M\\u1ed9t trang th&ocirc;ng b&aacute;o \\u0111\\u1eb7t mua th&agrave;nh c&ocirc;ng s\\u1ebd xu\\u1ea5t hi\\u1ec7n. Q&uacute;y kh&aacute;ch ch\\u1edd \\u0111\\u1ee3i nh&acirc;n vi\\u1ec7n g\\u1ecdi \\u0111i\\u1ec7n x&aacute;c nh\\u1eadn \\u0111\\u01a1n h&agrave;ng tr\\u01b0\\u1edbc l&uacute;c v\\u1eadn chuy\\u1ec3n \\u0111\\u1ebfn cho qu&yacute; kh&aacute;ch<\\/span><\\/p>\\r\\n\\r\\n<h3><span style=\\\"color:#000000;\\\"><strong>Quy \\u0111\\u1ecbnh \\u0111\\u1ed5i, tr\\u1ea3 h&agrave;ng:<\\/strong><\\/span><\\/h3>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\">Th\\u1eddi gian \\u0111\\u1ed5i, tr\\u1ea3 trong v&ograve;ng 3 ng&agrave;y k\\u1ec3 t\\u1eeb khi nh\\u1eadn \\u0111\\u01b0\\u1ee3c h&agrave;ng<br \\/>\\r\\nC&aacute;ch th\\u1ee9c \\u0111\\u1ed5i tr\\u1ea3: Qu&yacute; kh&aacute;ch vui l&ograve;ng g\\u1ecdi \\u0111i\\u1ec7n, th&ocirc;ng b&aacute;o email v\\u1ec1 s\\u1ea3n ph\\u1ea9m c\\u1ea7n \\u0111\\u1ed5i, tr\\u1ea3.<br \\/>\\r\\n<em><strong>L\\u01b0u &yacute;:<\\/strong>&nbsp;Qu&yacute; kh&aacute;ch n&ecirc;n ki\\u1ec3m tra s\\u1ea3n ph\\u1ea9m ngay khi nh&acirc;n vi&ecirc;n c\\u1ee7a trung t&acirc;m giao h&agrave;ng \\u0111\\u1ebfn t\\u1eadn nh&agrave;.<\\/em><br \\/>\\r\\nNh\\u1eefng tr\\u01b0\\u1eddng h\\u1ee3p \\u0111\\u01b0\\u1ee3c \\u0111\\u1ed5i tr\\u1ea3:<\\/span><\\/p>\\r\\n\\r\\n<ul contenteditable=\\\"true\\\">\\r\\n\\t<li><span style=\\\"color:#000000;\\\">L\\u1ed7i t\\u1eeb ph&iacute;a nh&agrave; cung c\\u1ea5p s\\u1ea3n ph\\u1ea9m ho\\u1eb7c l\\u1ed7i b&ecirc;n chuy\\u1ec3n ph&aacute;t nh\\u01b0: S\\u1ea3n ph\\u1ea9m kh&ocirc;ng \\u0111&uacute;ng nh\\u01b0 m&ocirc; t\\u1ea3 khi \\u0111\\u1eb7t h&agrave;ng (m&agrave;u s\\u1eafc, tr\\u1ecdng l\\u01b0\\u1ee3ng, ki\\u1ec3u d&aacute;ng,&hellip;), s\\u1ea3n ph\\u1ea9m b\\u1ecb b\\u1ea9n, tr\\u1ea7y x\\u01b0\\u1edbc.<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">S\\u1ea3n ph\\u1ea9m \\u0111&atilde; b\\u1ecb th&aacute;o g\\u1ee1 tr\\u01b0\\u1edbc \\u0111&oacute;, b\\u1ecb m&oacute;p, m&eacute;o.<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">S\\u1ea3n ph\\u1ea9m b\\u1ecb h\\u1ecfng ho\\u1eb7c c&oacute; c&aacute;c hi\\u1ec7n t\\u01b0\\u1ee3ng l\\u1ea1, \\u0111&aacute;ng nghi.<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">S\\u1ea3n ph\\u1ea9m h\\u1ebft h\\u1ea1n s\\u1eed d\\u1ee5ng<\\/span><\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\">V\\u1edbi c&aacute;c tr\\u01b0\\u1eddng h\\u1ee3p tr&ecirc;n qu&yacute; kh&aacute;ch c&oacute; quy\\u1ec1n \\u0111\\u1ed5i tr\\u1ea3 s\\u1ea3n ph\\u1ea9m c&oacute; gi&aacute; tr\\u1ecb l\\u1edbn h\\u01a1n ho\\u1eb7c b\\u1eb1ng gi&aacute; tr\\u1ecb s\\u1ea3n ph\\u1ea9m \\u0111&atilde; mua tr\\u01b0\\u1edbc \\u0111&oacute;.<br \\/>\\r\\nS\\u1ea3n ph\\u1ea9m \\u0111\\u1ed5i tr\\u1ea3 ph\\u1ea3i c&ograve;n nguy&ecirc;n tem, ch\\u01b0a qua s\\u1eed d\\u1ee5ng, gi\\u1eb7t t\\u1ea9y, kh&ocirc;ng b\\u1ecb tr\\u1ea7y x\\u01b0\\u1edbc ho\\u1eb7c d\\u01a1 b\\u1ea9n.<\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><span style=\\\"color:#000000;\\\"><em>T\\u1ea5t c\\u1ea3 c&aacute;c khi\\u1ebfu n\\u1ea1i, th\\u1eafc m\\u1eafc ho\\u1eb7c \\u0111\\u1ed5i tr\\u1ea3 h&agrave;ng qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n h\\u1ec7 HOTLINE c\\u1ee7a ch&uacute;ng t&ocirc;i \\u1edf ph\\u1ea7n th&ocirc;ng tin li&ecirc;n h\\u1ec7<\\/em><\\/span><\\/p>\"}},\"image\":null,\"alias\":\"huong-dan-mua-hang\",\"status\":\"on\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 12:03:03', '2021-07-28 12:03:03'),
(235, 1, 'backend/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:03:03', '2021-07-28 12:03:03'),
(236, 1, 'backend/page/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:03:07', '2021-07-28 12:03:07'),
(237, 1, 'backend/page/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Ch\\u00ednh s\\u00e1ch v\\u1eadn chuy\\u1ec3n\",\"keyword\":\"Ch\\u00ednh s\\u00e1ch v\\u1eadn chuy\\u1ec3n\",\"description\":\"Ch\\u00ednh s\\u00e1ch v\\u1eadn chuy\\u1ec3n\",\"content\":\"<section data-element_type=\\\"section\\\" data-id=\\\"393e2a6b\\\"><span style=\\\"color:#000000;\\\">Sau khi qu&yacute; kh&aacute;ch&nbsp;\\u0111&atilde;&nbsp;<strong>\\u0111\\u1eb7t h&agrave;ng th&agrave;nh c&ocirc;ng<\\/strong>, \\u0111\\u1ed9i ng\\u0169 Ch\\u0103m s&oacute;c kh&aacute;ch h&agrave;ng c\\u1ee7a ch&uacute;ng t&ocirc;i s\\u1ebd ti\\u1ebfn h&agrave;nh li&ecirc;n h\\u1ec7 theo s\\u1ed1 \\u0111i\\u1ec7n tho\\u1ea1i b\\u1ea1n cung c\\u1ea5p \\u0111\\u1ec3 x&aacute;c minh \\u0111\\u01a1n h&agrave;ng, \\u0111\\u1ed3ng th\\u1eddi th&ocirc;ng b&aacute;o v\\u1ec1 th\\u1eddi gian b\\u1ea1n nh\\u1eadn \\u0111\\u01b0\\u1ee3c h&agrave;ng, k&egrave;m theo c&aacute;c th&ocirc;ng tin c\\u1ea7n thi\\u1ebft kh&aacute;c. Sau khi qu&aacute; tr&igrave;nh&nbsp;<strong>x&aacute;c minh th&agrave;nh c&ocirc;ng<\\/strong>. \\u0110\\u01a1n h&agrave;ng s\\u1ebd \\u0111\\u01b0\\u1ee3c giao \\u0111\\u1ebfn qu&yacute; kh&aacute;ch trong kho\\u1ea3ng th\\u1eddi gian sau \\u0111&acirc;y (C&aacute;c \\u0111\\u01a1n \\u0111\\u1eb7t h&agrave;ng ngo&agrave;i gi\\u1edd h&agrave;nh ch&iacute;nh s\\u1ebd t&iacute;nh th\\u1eddi gian b\\u1eaft \\u0111\\u1ea7u t\\u1eeb s&aacute;ng ng&agrave;y h&ocirc;m sau): &nbsp;<\\/span>\\r\\n<table border=\\\"0\\\" cellpadding=\\\"1\\\" cellspacing=\\\"1\\\" style=\\\"width:500px;\\\">\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td><span style=\\\"color:#000000;\\\"><strong>\\u0110\\u1ecba ch\\u1ec9 giao h&agrave;ng<\\/strong><\\/span><\\/td>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p><span style=\\\"color:#000000;\\\"><strong>Th\\u1eddi gian giao h&agrave;ng<\\/strong><\\/span><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td><span style=\\\"color:#000000;\\\">&ndash; N\\u1ed9i th&agrave;nh H&agrave; N\\u1ed9i<br \\/>\\r\\n\\t\\t\\t&ndash; Ngo\\u1ea1i th&agrave;nh H&agrave; N\\u1ed9i<br \\/>\\r\\n\\t\\t\\t&ndash; N\\u1ed9i th&agrave;nh TP. H\\u1ed3 Ch&iacute; Minh<br \\/>\\r\\n\\t\\t\\t&ndash; Ngo\\u1ea1i th&agrave;nh TP H\\u1ed3 Ch&iacute; Minh<br \\/>\\r\\n\\t\\t\\t&ndash; Khu v\\u1ef1c tuy\\u1ebfn huy\\u1ec7n<\\/span><\\/td>\\r\\n\\t\\t\\t<td><span style=\\\"color:#000000;\\\">&ndash; 24h-48h sau khi \\u0111\\u1eb7t h&agrave;ng<br \\/>\\r\\n\\t\\t\\t&ndash; 48h-72h sau khi \\u0111\\u1eb7t h&agrave;ng<br \\/>\\r\\n\\t\\t\\t&ndash; 24h-48h sau khi \\u0111\\u1eb7t h&agrave;ng<br \\/>\\r\\n\\t\\t\\t&ndash; 48h-72h sau khi \\u0111\\u1eb7t h&agrave;ng<br \\/>\\r\\n\\t\\t\\t&ndash; 3-5 ng&agrave;y sau khi \\u0111\\u1eb7t h&agrave;ng<\\/span><\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\\r\\n<\\/section>\\r\\n\\r\\n<section data-element_type=\\\"section\\\" data-id=\\\"4fc53be\\\">\\r\\n<p><span style=\\\"color:#000000;\\\"><em><strong>L\\u01b0u &yacute;:&nbsp;<\\/strong><\\/em><\\/span><\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">C&aacute;c \\u0111\\u01a1n \\u0111\\u1eb7t h&agrave;ng trong ng&agrave;y Ch\\u1ee7 Nh\\u1eadt s\\u1ebd \\u0111\\u01b0\\u1ee3c b\\u1eaft \\u0111\\u1ea7u giao h&agrave;ng t\\u1eeb ng&agrave;y th\\u1ee9 2 tu\\u1ea7n k\\u1ebf ti\\u1ebfp.<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">C&aacute;c \\u0111\\u01a1n \\u0111\\u1eb7t h&agrave;ng ngo&agrave;i gi\\u1edd h&agrave;nh ch&iacute;nh s\\u1ebd t&iacute;nh th\\u1eddi gian b\\u1eaft \\u0111\\u1ea7u t\\u1eeb 8:00 s&aacute;ng ng&agrave;y h&ocirc;m sau<\\/span><\\/li>\\r\\n<\\/ul>\\r\\n<\\/section>\\r\\n\\r\\n<section data-element_type=\\\"section\\\" data-id=\\\"e45c211\\\">\\r\\n<p><span style=\\\"color:#000000;\\\"><em>T\\u1ea5t c\\u1ea3 c&aacute;c khi\\u1ebfu n\\u1ea1i, th\\u1eafc m\\u1eafc ho\\u1eb7c \\u0111\\u1ed5i tr\\u1ea3 h&agrave;ng qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n h\\u1ec7 HOTLINE \\u1edf ph\\u1ea7n th&ocirc;ng tin li&ecirc;n h\\u1ec7 c\\u1ee7a ch&uacute;ng t&ocirc;i<\\/em><\\/span><\\/p>\\r\\n<\\/section>\"}},\"image\":null,\"alias\":\"chinh-sach-van-chuyen\",\"status\":\"on\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 12:03:13', '2021-07-28 12:03:13'),
(238, 1, 'backend/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:03:14', '2021-07-28 12:03:14'),
(239, 1, 'backend/page/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:03:20', '2021-07-28 12:03:20'),
(240, 1, 'backend/page/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Ch\\u00ednh s\\u00e1ch thanh to\\u00e1n\",\"keyword\":\"Ch\\u00ednh s\\u00e1ch thanh to\\u00e1n\",\"description\":\"Ch\\u00ednh s\\u00e1ch thanh to\\u00e1n\",\"content\":\"<p><strong>1. Ch&uacute;ng t&ocirc;i cung c\\u1ea5p cho kh&aacute;ch h&agrave;ng duy nh\\u1ea5t 1 h&igrave;nh th\\u1ee9c thanh to&aacute;n l&agrave; SHIP COD (Nh\\u1eadn h&agrave;ng &ndash; Thanh to&aacute;n)<\\/strong><\\/p>\\r\\n\\r\\n<p>Ship COD l&agrave; h&igrave;nh th\\u1ee9c giao h&agrave;ng t\\u1edbi n\\u01a1i m\\u1edbi thu ti\\u1ec1n. Qu&yacute; kh&aacute;ch \\u0111\\u01b0\\u1ee3c c\\u1ea7m h&agrave;ng v&agrave; ki\\u1ec3m tra \\u0111&uacute;ng ch\\u1ea5t l\\u01b0\\u1ee3ng sau \\u0111&oacute; m\\u1edbi ph\\u1ea3i tr\\u1ea3 ti\\u1ec1n h&agrave;ng. Ti\\u1ec1n h&agrave;ng s\\u1ebd th&agrave;nh to&aacute;n cho nh&acirc;n vi&ecirc;n giao h&agrave;ng<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Kh&aacute;ch h&agrave;ng \\u0111\\u1eb7t h&agrave;ng t\\u1ea1i website<\\/li>\\r\\n\\t<li>Nh&acirc;n vi&ecirc;n ch&uacute;ng t&ocirc;i g\\u1ecdi x&aacute;c nh\\u1eadn \\u0111\\u1ecba ch\\u1ec9 v&agrave; th&ocirc;ng tin \\u0111\\u01a1n h&agrave;ng<\\/li>\\r\\n\\t<li>Sau kho&agrave;ng th\\u1eddi gian 2-4 ng&agrave;y b\\u01b0u t&aacute; giao \\u0111\\u1ebfn \\u0111\\u1ecba ch\\u1ec9 c\\u1ee7a kh&aacute;ch h&agrave;ng<\\/li>\\r\\n\\t<li>N\\u1ebfu \\u0111\\u1ed3ng &yacute; nh\\u1eadn h&agrave;ng, b\\u01b0u t&aacute; s\\u1ebd thu ti\\u1ec1n h&agrave;ng c\\u1ee7a kh&aacute;ch h&agrave;ng.<\\/li>\\r\\n\\t<li>N\\u1ebfu t\\u1eeb ch\\u1ed1i nh\\u1eadn h&agrave;ng, b\\u01b0u t&aacute; s\\u1ebd chuy\\u1ec3n l\\u1ea1i h&agrave;ng cho ch&uacute;ng t&ocirc;i (Kh&aacute;ch h&agrave;ng kh&ocirc;ng m\\u1ea5t chi ph&iacute;)<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>M\\u1ecdi \\u0111\\u01a1n h&agrave;ng \\u0111\\u1eb7t mua t\\u1ea1i webiste c\\u1ee7a chung t&ocirc;i s\\u1ebd \\u0111\\u01b0\\u1ee3c mi\\u1ec5n ph&iacute; v\\u1eadn chuy\\u1ec3n t\\u1ea1i Vi\\u1ec7t Nam<\\/p>\\r\\n\\r\\n<p><strong>2. H\\u01b0\\u1edbng d\\u1eabn thanh to&aacute;n<\\/strong><\\/p>\\r\\n\\r\\n<p>Sau khi \\u0111\\u1eb7t mua h&agrave;ng v&agrave; \\u0111\\u01b0\\u1ee3c ch&uacute;ng t&ocirc;i x&aacute;c nh\\u1eadn, \\u0111\\u01a1n h&agrave;ng c\\u1ee7a qu&yacute; kh&aacute;ch s\\u1ebd \\u0111\\u01b0\\u1ee3c \\u0111&oacute;ng g&oacute;i v&agrave; chuy\\u1ec3n \\u0111i, m\\u1ecdi \\u0111\\u01a1n h&agrave;ng \\u0111\\u01b0\\u1ee3c mi\\u1ec5n ph&iacute; v\\u1eadn chuy\\u1ec3n v&agrave; t\\u1edbi qu&yacute; kh&aacute;ch t\\u1eeb 2-4 ng&agrave;y, b\\u1ed9 ph&acirc;n giao h&agrave;ng c\\u1ee7a ch&uacute;ng t&ocirc;i l&agrave;m vi\\u1ec7c c\\u1ea3 th\\u1ee9 7 v&agrave; ch\\u1ee7 nh\\u1eadt<br \\/>\\r\\nKhi nh\\u1eadn \\u0111\\u01b0\\u1ee3c h&agrave;ng qu&yacute; kh&aacute;ch \\u0111\\u01b0\\u1ee3c ki\\u1ec3m tra h&agrave;ng c\\u1ee7a m&igrave;nh v&agrave; thanh to&aacute;n cho nh&acirc;n vi&ecirc;n giao h&agrave;ng t\\u01b0\\u01a1ng \\u1ee9ng v\\u1edbi s\\u1ed1 ti\\u1ec1n \\u0111&atilde; \\u0111\\u1eb7t mua.<\\/p>\\r\\n\\r\\n<p><em>T\\u1ea5t c\\u1ea3 c&aacute;c khi\\u1ebfu n\\u1ea1i, th\\u1eafc m\\u1eafc ho\\u1eb7c \\u0111\\u1ed5i tr\\u1ea3 h&agrave;ng qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n h\\u1ec7 HOTLINE \\u1edf ph\\u1ea7n th&ocirc;ng tin li&ecirc;n h\\u1ec7 c\\u1ee7a ch&uacute;ng t&ocirc;i<\\/em><\\/p>\"}},\"image\":null,\"alias\":null,\"status\":\"on\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 12:03:46', '2021-07-28 12:03:46'),
(241, 1, 'backend/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:03:46', '2021-07-28 12:03:46'),
(242, 1, 'backend/page/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"ids\":\"5\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 12:03:53', '2021-07-28 12:03:53'),
(243, 1, 'backend/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-07-28 12:03:53', '2021-07-28 12:03:53'),
(244, 1, 'backend/page/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:04:07', '2021-07-28 12:04:07'),
(245, 1, 'backend/page/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Ch\\u00ednh s\\u00e1ch \\u0111\\u1ed5i tr\\u1ea3\",\"keyword\":\"Ch\\u00ednh s\\u00e1ch \\u0111\\u1ed5i tr\\u1ea3\",\"description\":\"Ch\\u00ednh s\\u00e1ch \\u0111\\u1ed5i tr\\u1ea3\",\"content\":\"<p><span style=\\\"color:#000000;\\\"><strong>1. Ch&uacute;ng t&ocirc;i cung c\\u1ea5p cho kh&aacute;ch h&agrave;ng duy nh\\u1ea5t 1 h&igrave;nh th\\u1ee9c thanh to&aacute;n l&agrave; SHIP COD<\\/strong><\\/span><\\/p>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\"><strong>N\\u1ed9i dung \\u0111\\u1ed5i s\\u1ea3n ph\\u1ea9m<\\/strong><br \\/>\\r\\n1. Qu&yacute; Kh&aacute;ch h&agrave;ng c&oacute; th\\u1ec3 \\u0111\\u1ed5i s\\u1ea3n ph\\u1ea9m mi\\u1ec5n ph&iacute; trong v&ograve;ng 07 ng&agrave;y k\\u1ec3 t\\u1eeb ng&agrave;y nh\\u1eadn \\u0111\\u01b0\\u1ee3c s\\u1ea3n ph\\u1ea9m.<br \\/>\\r\\n2. Qu&yacute; Kh&aacute;ch h&agrave;ng \\u0111\\u01b0\\u1ee3c \\u0111\\u1ed5i s\\u1ea3n ph\\u1ea9m ngang gi&aacute; ho\\u1eb7c cao h\\u01a1n (Qu&yacute; Kh&aacute;ch h&agrave;ng chi tr\\u1ea3 th&ecirc;m gi&aacute; ch&ecirc;nh l\\u1ec7ch n\\u1ebfu \\u0111\\u1ed5i s\\u1ea3n ph\\u1ea9m c&oacute; gi&aacute; cao h\\u01a1n). C&aacute;c chi ph&iacute; li&ecirc;n quan \\u0111\\u1ebfn v\\u1eadn chuy\\u1ec3n (n\\u1ebfu c&oacute;) s\\u1ebd do Qu&yacute; kh&aacute;ch chi tr\\u1ea3.<br \\/>\\r\\n3. S\\u1ed1 l\\u1ea7n \\u0111\\u1ed5i s\\u1ea3n ph\\u1ea9m t\\u1ed1i \\u0111a l&agrave; 01 l\\u1ea7n.<\\/span><\\/p>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\"><strong>C&aacute;c ti&ecirc;u ch&iacute; khi \\u0111\\u1ed5i s\\u1ea3n ph\\u1ea9m<\\/strong><br \\/>\\r\\n1. S\\u1ea3n ph\\u1ea9m khi \\u0111\\u1ed5i c&ograve;n nguy&ecirc;n v\\u1eb9n nh\\u01b0 ban \\u0111\\u1ea7u mua, \\u0111\\u1ea7y \\u0111\\u1ee7 h&oacute;a \\u0111\\u01a1n, h\\u1ed9p \\u0111\\u1ef1ng, c&aacute;c qu&agrave; t\\u1eb7ng k&egrave;m theo (n\\u1ebfu c&oacute;).<br \\/>\\r\\n2. Qu&agrave; t\\u1eb7ng \\u0111i k&egrave;m Qu&yacute; Kh&aacute;ch h&agrave;ng s\\u1ebd &aacute;p d\\u1ee5ng kh&ocirc;ng \\u0111\\u1ed5i tr\\u1ea3.<br \\/>\\r\\n3. Kh&aacute;ch h&agrave;ng ch\\u1ecbu ph&iacute; ship l&agrave; 30.000\\u0111 cho l\\u1ea7n \\u0111\\u1ed5i tr\\u1ea3, \\u0111\\u1ed5i size s\\u1ea3n ph\\u1ea9m<\\/span><\\/p>\\r\\n\\r\\n<h2><span style=\\\"color:#000000;\\\"><strong>CH&Iacute;NH S&Aacute;CH HO&Agrave;N TR\\u1ea2<\\/strong><\\/span><\\/h2>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\"><strong>\\u0110i\\u1ec1u ki\\u1ec7n ho&agrave;n tr\\u1ea3:<\\/strong><br \\/>\\r\\n1. Ng\\u01b0\\u1eddi mua \\u0111&atilde; thanh to&aacute;n nh\\u01b0ng kh&ocirc;ng nh\\u1eadn \\u0111\\u01b0\\u1ee3c s\\u1ea3n ph\\u1ea9m<br \\/>\\r\\n2. S\\u1ea3n ph\\u1ea9m b\\u1ecb l\\u1ed7i ho\\u1eb7c b\\u1ecb h\\u01b0 h\\u1ea1i trong qu&aacute; tr&igrave;nh v\\u1eadn chuy\\u1ec3n t\\u1edbi qu&yacute; kh&aacute;ch<br \\/>\\r\\n3. Giao s\\u1ea3n ph\\u1ea9m sai v\\u1edbi \\u0111\\u1eb7t h&agrave;ng (VD: sai k&iacute;ch c\\u1ee1, sai m&agrave;u s\\u1eafc&hellip;)<br \\/>\\r\\n4 Ho&agrave;n tr\\u1ea3 khi kh&aacute;ch h&agrave;ng nh\\u1eadn s\\u1ea3n ph\\u1ea9m kh&ocirc;ng qu&aacute; 7 ng&agrave;y<br \\/>\\r\\n5. S\\u1ea3n ph\\u1ea9m c&ograve;n nguy&ecirc;n v\\u1eb9n nh\\u01b0 ban \\u0111\\u1ea7u mua, \\u0111\\u1ea7y \\u0111\\u1ee7 h&oacute;a \\u0111\\u01a1n, h\\u1ed9p \\u0111\\u1ef1ng, c&aacute;c qu&agrave; t\\u1eb7ng k&egrave;m theo (n\\u1ebfu c&oacute;).<\\/span><\\/p>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\"><strong>C&aacute;c b\\u01b0\\u1edbc ho&agrave;n tr\\u1ea3 s\\u1ea3n ph\\u1ea9m:<\\/strong><\\/span><\\/p>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\">1. Li&ecirc;n h\\u1ec7 v\\u1edbi shop \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c x&aacute;c nh\\u1eadn<br \\/>\\r\\n2. Kh&aacute;ch h&agrave;ng kh&ocirc;ng b\\u1ecb m\\u1ea5t chi ph&iacute; v\\u1eadn chuy\\u1ec3n khi ho&agrave;n tr\\u1ea3 s\\u1ea3n ph\\u1ea9m<br \\/>\\r\\n3. M\\u1ecdi s\\u1ea3n ph\\u1ea9m ho&agrave;n tr\\u1ea3 h&agrave;ng \\u0111\\u01b0\\u1ee3c g\\u1eedi v\\u1ec1 \\u0111\\u1ecba ch\\u1ec9 c\\u1ee7a c&ocirc;ng ty d\\u01b0\\u1edbi ch&acirc;n trang<\\/span><\\/p>\\r\\n\\r\\n<h2><span style=\\\"color:#000000;\\\"><strong>CH&Iacute;NH S&Aacute;CH HO&Agrave;N TI\\u1ec0N<\\/strong><\\/span><\\/h2>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\">Shop ho&agrave;n ti\\u1ec1n cho ng\\u01b0\\u1eddi mua khi shop x&aacute;c nh\\u1eadn \\u0111&atilde; nh\\u1eadn \\u0111\\u01b0\\u1ee3c h&agrave;ng tr\\u1ea3 l\\u1ea1i. Ti\\u1ec1n ho&agrave;n tr\\u1ea3 s\\u1ebd \\u0111\\u01b0\\u1ee3c chuy\\u1ec3n v&agrave;o th\\u1ebb ng&acirc;n h&agrave;ng c\\u1ee7a kh&aacute;ch h&agrave;ng cung c\\u1ea5p cho shop<\\/span><br \\/>\\r\\n<span style=\\\"color:#e74c3c;\\\">L\\u01b0u &yacute;: Kh&aacute;ch h&agrave;ng c&oacute; tr&aacute;ch nhi\\u1ec7m ph\\u1ea3i cung c\\u1ea5p th&ocirc;ng tin t&agrave;i kho\\u1ea3n ng&acirc;n h&agrave;ng \\u0111\\u1ec3 nh\\u1eadn ti\\u1ec1n ho&agrave;n tr\\u1ea3.<\\/span><\\/p>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\"><\\/span><\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><span style=\\\"color:#000000;\\\"><em>T\\u1ea5t c\\u1ea3 c&aacute;c khi\\u1ebfu n\\u1ea1i, th\\u1eafc m\\u1eafc ho\\u1eb7c \\u0111\\u1ed5i tr\\u1ea3 h&agrave;ng qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n h\\u1ec7 HOTLINE \\u1edf ph\\u1ea7n li&ecirc;n h\\u1ec7 c\\u1ee7a ch&uacute;ng t&ocirc;i<\\/em><\\/span><\\/p>\"}},\"image\":null,\"alias\":null,\"status\":\"on\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 12:04:36', '2021-07-28 12:04:36'),
(246, 1, 'backend/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:04:36', '2021-07-28 12:04:36'),
(247, 1, 'backend/page/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:04:47', '2021-07-28 12:04:47'),
(248, 1, 'backend/page/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Ch\\u00ednh s\\u00e1ch b\\u1ea3o m\\u1eadt\",\"keyword\":\"Ch\\u00ednh s\\u00e1ch b\\u1ea3o m\\u1eadt\",\"description\":\"Ch\\u00ednh s\\u00e1ch b\\u1ea3o m\\u1eadt\",\"content\":\"<h2><span style=\\\"color:#000000;\\\">1. M\\u1ee5c \\u0111&iacute;ch v&agrave; ph\\u1ea1m vi thu th\\u1eadp<\\/span><\\/h2>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\">Vi\\u1ec7c thu th\\u1eadp d\\u1eef li\\u1ec7u ch\\u1ee7 y\\u1ebfu tr&ecirc;n Favimart bao g\\u1ed3m: email, \\u0111i\\u1ec7n tho\\u1ea1i, t&ecirc;n \\u0111\\u0103ng nh\\u1eadp, m\\u1eadt kh\\u1ea9u \\u0111\\u0103ng nh\\u1eadp, \\u0111\\u1ecba ch\\u1ec9 Kh&aacute;ch h&agrave;ng. \\u0110&acirc;y l&agrave; c&aacute;c th&ocirc;ng tin m&agrave; Favimart c\\u1ea7n Kh&aacute;ch h&agrave;ng cung c\\u1ea5p b\\u1eaft bu\\u1ed9c khi \\u0111\\u0103ng k&yacute; s\\u1eed d\\u1ee5ng d\\u1ecbch v\\u1ee5 v&agrave; Favimart s\\u1eed d\\u1ee5ng nh\\u1eb1m li&ecirc;n h\\u1ec7 x&aacute;c nh\\u1eadn khi Kh&aacute;ch h&agrave;ng \\u0111\\u0103ng k&yacute; s\\u1eed d\\u1ee5ng d\\u1ecbch v\\u1ee5 tr&ecirc;n Favimart, \\u0111\\u1ea3m b\\u1ea3o quy\\u1ec1n l\\u1ee3i cho Kh&aacute;ch h&agrave;ng.<\\/span><\\/p>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\">C&aacute;c Kh&aacute;ch h&agrave;ng s\\u1ebd t\\u1ef1 ch\\u1ecbu tr&aacute;ch nhi\\u1ec7m v\\u1ec1 b\\u1ea3o m\\u1eadt v&agrave; l\\u01b0u gi\\u1eef m\\u1ecdi ho\\u1ea1t \\u0111\\u1ed9ng s\\u1eed d\\u1ee5ng d\\u1ecbch v\\u1ee5 d\\u01b0\\u1edbi t&ecirc;n \\u0111\\u0103ng k&yacute;, m\\u1eadt kh\\u1ea9u v&agrave; h\\u1ed9p th\\u01b0 \\u0111i\\u1ec7n t\\u1eed c\\u1ee7a m&igrave;nh. Ngo&agrave;i ra, Kh&aacute;ch h&agrave;ng c&oacute; tr&aacute;ch nhi\\u1ec7m th&ocirc;ng b&aacute;o k\\u1ecbp th\\u1eddi cho Favimart v\\u1ec1 nh\\u1eefng h&agrave;nh vi s\\u1eed d\\u1ee5ng tr&aacute;i ph&eacute;p, l\\u1ea1m d\\u1ee5ng, vi ph\\u1ea1m b\\u1ea3o m\\u1eadt, l\\u01b0u gi\\u1eef t&ecirc;n \\u0111\\u0103ng k&yacute; v&agrave; m\\u1eadt kh\\u1ea9u c\\u1ee7a b&ecirc;n th\\u1ee9 ba \\u0111\\u1ec3 c&oacute; bi\\u1ec7n ph&aacute;p gi\\u1ea3i quy\\u1ebft ph&ugrave; h\\u1ee3p.<\\/span><\\/p>\\r\\n\\r\\n<h2><span style=\\\"color:#000000;\\\">2. Ph\\u1ea1m vi s\\u1eed d\\u1ee5ng th&ocirc;ng tin<\\/span><\\/h2>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\">Favimart s\\u1eed d\\u1ee5ng th&ocirc;ng tin Kh&aacute;ch h&agrave;ng cung c\\u1ea5p \\u0111\\u1ec3:<\\/span><\\/p>\\r\\n\\r\\n<ul contenteditable=\\\"true\\\">\\r\\n\\t<li><span style=\\\"color:#000000;\\\">Cung c\\u1ea5p c&aacute;c d\\u1ecbch v\\u1ee5 \\u0111\\u1ebfn Kh&aacute;ch h&agrave;ng.<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">G\\u1eedi c&aacute;c th&ocirc;ng b&aacute;o v\\u1ec1 c&aacute;c ho\\u1ea1t \\u0111\\u1ed9ng trao \\u0111\\u1ed5i th&ocirc;ng tin gi\\u1eefa Kh&aacute;ch h&agrave;ng v&agrave; S&agrave;n Shop.<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">Ng\\u0103n ng\\u1eeba c&aacute;c ho\\u1ea1t \\u0111\\u1ed9ng ph&aacute; h\\u1ee7y t&agrave;i kho\\u1ea3n ng\\u01b0\\u1eddi d&ugrave;ng c\\u1ee7a Kh&aacute;ch h&agrave;ng ho\\u1eb7c c&aacute;c ho\\u1ea1t \\u0111\\u1ed9ng gi\\u1ea3 m\\u1ea1o Kh&aacute;ch h&agrave;ng.<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">Li&ecirc;n l\\u1ea1c v&agrave; gi\\u1ea3i quy\\u1ebft v\\u1edbi kh&aacute;ch h&agrave;ng trong nh\\u1eefng tr\\u01b0\\u1eddng h\\u1ee3p \\u0111\\u1eb7c bi\\u1ec7t.<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">Kh&ocirc;ng s\\u1eed d\\u1ee5ng th&ocirc;ng tin c&aacute; nh&acirc;n c\\u1ee7a Kh&aacute;ch h&agrave;ng ngo&agrave;i m\\u1ee5c \\u0111&iacute;ch x&aacute;c nh\\u1eadn v&agrave; li&ecirc;n h\\u1ec7 c&oacute; li&ecirc;n quan \\u0111\\u1ebfn giao d\\u1ecbch t\\u1ea1i Favimart.<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">S&agrave;n Favimart c&oacute; tr&aacute;ch nhi\\u1ec7m h\\u1ee3p t&aacute;c cung c\\u1ea5p th&ocirc;ng tin c&aacute; nh&acirc;n Kh&aacute;ch h&agrave;ng khi c&oacute; y&ecirc;u c\\u1ea7u t\\u1eeb c\\u01a1 quan nh&agrave; n\\u01b0\\u1edbc c&oacute; th\\u1ea9m quy\\u1ec1n.<\\/span><\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h2><span style=\\\"color:#000000;\\\">3. Th\\u1eddi gian l\\u01b0u tr\\u1eef th&ocirc;ng tin<\\/span><\\/h2>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\">D\\u1eef li\\u1ec7u c&aacute; nh&acirc;n c\\u1ee7a Kh&aacute;ch h&agrave;ng s\\u1ebd \\u0111\\u01b0\\u1ee3c l\\u01b0u tr\\u1eef cho \\u0111\\u1ebfn khi c&oacute; y&ecirc;u c\\u1ea7u h\\u1ee7y b\\u1ecf ho\\u1eb7c t\\u1ef1 Kh&aacute;ch h&agrave;ng \\u0111\\u0103ng nh\\u1eadp v&agrave; th\\u1ef1c hi\\u1ec7n h\\u1ee7y b\\u1ecf. C&ograve;n l\\u1ea1i trong m\\u1ecdi tr\\u01b0\\u1eddng h\\u1ee3p th&ocirc;ng tin c&aacute; nh&acirc;n Kh&aacute;ch h&agrave;ng s\\u1ebd \\u0111\\u01b0\\u1ee3c b\\u1ea3o m\\u1eadt tr&ecirc;n m&aacute;y ch\\u1ee7 c\\u1ee7a Favimart<\\/span><\\/p>\\r\\n\\r\\n<h2><span style=\\\"color:#000000;\\\">4. \\u0110\\u1ecba ch\\u1ec9 c\\u1ee7a \\u0111\\u01a1n v\\u1ecb thu th\\u1eadp, qu\\u1ea3n l&yacute; th&ocirc;ng tin v&agrave; h\\u1ed7 tr\\u1ee3 Kh&aacute;ch h&agrave;ng<\\/span><\\/h2>\\r\\n\\r\\n<ul contenteditable=\\\"true\\\">\\r\\n\\t<li><span style=\\\"color:#000000;\\\">Favimart<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">\\u0110\\u1ecba ch\\u1ec9: P108, t\\u1ea7ng 10, Royal city, 234 Nguy\\u1ec5n Tr&atilde;i, \\u0110\\u1ed1ng \\u0110a, H&agrave; N\\u1ed9i<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">Hotline: 0338.716.078<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">Email: hotro@favimart.site<\\/span><\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h2><span style=\\\"color:#000000;\\\">5. Ph\\u01b0\\u01a1ng ti\\u1ec7n v&agrave; c&ocirc;ng c\\u1ee5 \\u0111\\u1ec3 Kh&aacute;ch h&agrave;ng ti\\u1ebfp c\\u1eadn v&agrave; ch\\u1ec9nh s\\u1eeda d\\u1eef li\\u1ec7u c\\u1ee7a m&igrave;nh<\\/span><\\/h2>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\">Kh&aacute;ch h&agrave;ng c&oacute; quy\\u1ec1n t\\u1ef1 ki\\u1ec3m tra, c\\u1eadp nh\\u1eadt, \\u0111i\\u1ec1u ch\\u1ec9nh th&ocirc;ng tin c&aacute; nh&acirc;n c\\u1ee7a m&igrave;nh b\\u1eb1ng c&aacute;ch \\u0111\\u0103ng nh\\u1eadp v&agrave;o t&agrave;i kho\\u1ea3n v&agrave; ch\\u1ec9nh s\\u1eeda th&ocirc;ng tin c&aacute; nh&acirc;n ho\\u1eb7c y&ecirc;u c\\u1ea7u Favimart th\\u1ef1c hi\\u1ec7n vi\\u1ec7c n&agrave;y.<br \\/>\\r\\n<br \\/>\\r\\nKh&aacute;ch h&agrave;ng c&oacute; quy\\u1ec1n g\\u1eedi khi\\u1ebfu n\\u1ea1i v\\u1ec1 vi\\u1ec7c l\\u1ed9 th&ocirc;ng tin c&aacute;c nh&acirc;n cho b&ecirc;n th\\u1ee9 ba \\u0111\\u1ebfn Ban qu\\u1ea3n tr\\u1ecb c\\u1ee7a Favimart. Khi ti\\u1ebfp nh\\u1eadn nh\\u1eefng ph\\u1ea3n h\\u1ed3i n&agrave;y, Favimart s\\u1ebd x&aacute;c nh\\u1eadn l\\u1ea1i th&ocirc;ng tin, ph\\u1ea3i c&oacute; tr&aacute;ch nhi\\u1ec7m tr\\u1ea3 l\\u1eddi l&yacute; do v&agrave; h\\u01b0\\u1edbng d\\u1eabn Kh&aacute;ch h&agrave;ng kh&ocirc;i ph\\u1ee5c v&agrave; b\\u1ea3o m\\u1eadt l\\u1ea1i th&ocirc;ng tin.<\\/span><\\/p>\\r\\n\\r\\n<h2><span style=\\\"color:#000000;\\\">6. Cam k\\u1ebft b\\u1ea3o m\\u1eadt th&ocirc;ng tin c&aacute; nh&acirc;n Kh&aacute;ch h&agrave;ng<\\/span><\\/h2>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\">Th&ocirc;ng tin c&aacute; nh&acirc;n c\\u1ee7a Kh&aacute;ch h&agrave;ng tr&ecirc;n Favimart \\u0111\\u01b0\\u1ee3c Favimart cam k\\u1ebft b\\u1ea3o m\\u1eadt tuy\\u1ec7t \\u0111\\u1ed1i theo ch&iacute;nh s&aacute;ch b\\u1ea3o v\\u1ec7 th&ocirc;ng tin c&aacute; nh&acirc;n c\\u1ee7a Favimart. Vi\\u1ec7c thu th\\u1eadp v&agrave; s\\u1eed d\\u1ee5ng th&ocirc;ng tin c\\u1ee7a m\\u1ed7i Kh&aacute;ch h&agrave;ng ch\\u1ec9 \\u0111\\u01b0\\u1ee3c th\\u1ef1c hi\\u1ec7n khi c&oacute; s\\u1ef1 \\u0111\\u1ed3ng &yacute; c\\u1ee7a Kh&aacute;ch h&agrave;ng \\u0111&oacute;, tr\\u1eeb nh\\u1eefng tr\\u01b0\\u1eddng h\\u1ee3p ph&aacute;p lu\\u1eadt c&oacute; quy \\u0111\\u1ecbnh kh&aacute;c. Favimart cam k\\u1ebft:<\\/span><\\/p>\\r\\n\\r\\n<ul contenteditable=\\\"true\\\">\\r\\n\\t<li><span style=\\\"color:#000000;\\\">Kh&ocirc;ng s\\u1eed d\\u1ee5ng, kh&ocirc;ng chuy\\u1ec3n giao, cung c\\u1ea5p hay ti\\u1ebft l\\u1ed9 cho b&ecirc;n th\\u1ee9 ba n&agrave;o v\\u1ec1 th&ocirc;ng tin c&aacute; nh&acirc;n c\\u1ee7a Kh&aacute;ch h&agrave;ng khi kh&ocirc;ng c&oacute; s\\u1ef1 cho ph&eacute;p ho\\u1eb7c \\u0111\\u1ed3ng &yacute; t\\u1eeb Kh&aacute;ch h&agrave;ng, tr\\u1eeb nh\\u1eefng tr\\u01b0\\u1eddng h\\u1ee3p ph&aacute;p lu\\u1eadt c&oacute; quy \\u0111\\u1ecbnh kh&aacute;c.<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">Trong tr\\u01b0\\u1eddng h\\u1ee3p m&aacute;y ch\\u1ee7 l\\u01b0u tr\\u1eef th&ocirc;ng tin b\\u1ecb hacker t\\u1ea5n c&ocirc;ng d\\u1eabn \\u0111\\u1ebfn m\\u1ea5t m&aacute;t d\\u1eef li\\u1ec7u c&aacute; nh&acirc;n Kh&aacute;ch h&agrave;ng, Favimart&nbsp; s\\u1ebd c&oacute; tr&aacute;ch nhi\\u1ec7m th&ocirc;ng b&aacute;o v\\u1ee5 vi\\u1ec7c cho c\\u01a1 quan ch\\u1ee9c n\\u0103ng \\u0111i\\u1ec1u tra x\\u1eed l&yacute; k\\u1ecbp th\\u1eddi v&agrave; th&ocirc;ng b&aacute;o cho Kh&aacute;ch h&agrave;ng \\u0111\\u01b0\\u1ee3c bi\\u1ebft.<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">B\\u1ea3o m\\u1eadt tuy\\u1ec7t \\u0111\\u1ed1i m\\u1ecdi th&ocirc;ng tin giao d\\u1ecbch tr\\u1ef1c tuy\\u1ebfn c\\u1ee7a Kh&aacute;ch h&agrave;ng bao g\\u1ed3m th&ocirc;ng tin h&oacute;a \\u0111\\u01a1n, ch\\u1ee9ng t\\u1eeb k\\u1ebf to&aacute;n s\\u1ed1 h&oacute;a t\\u1ea1i khu v\\u1ef1c d\\u1eef li\\u1ec7u trung t&acirc;m an to&agrave;n c\\u1ea5p 1 c\\u1ee7a Favimart.<\\/span><\\/li>\\r\\n<\\/ul>\\r\\n<span style=\\\"color:#000000;\\\"><\\/span>\"}},\"image\":null,\"alias\":null,\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 12:05:59', '2021-07-28 12:05:59'),
(249, 1, 'backend/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:05:59', '2021-07-28 12:05:59'),
(250, 1, 'backend/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:06:14', '2021-07-28 12:06:14'),
(251, 1, 'backend/store_link/edit/7', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:06:24', '2021-07-28 12:06:24'),
(252, 1, 'backend/store_link/edit/7', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"name\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"url\":\"huong-dan-mua-hang.html\",\"target\":\"_self\",\"group\":\"menu\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 12:06:29', '2021-07-28 12:06:29'),
(253, 1, 'backend/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:06:30', '2021-07-28 12:06:30'),
(254, 1, 'backend/store_link/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:06:42', '2021-07-28 12:06:42'),
(255, 1, 'backend/store_link/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"name\":\"front.blog\",\"url\":\"route::news\",\"target\":\"_self\",\"group\":\"menu\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 12:06:45', '2021-07-28 12:06:45'),
(256, 1, 'backend/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:06:45', '2021-07-28 12:06:45'),
(257, 1, 'backend/store_link/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:06:48', '2021-07-28 12:06:48'),
(258, 1, 'backend/store_link/edit/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"name\":\"front.contact\",\"url\":\"route::contact\",\"target\":\"_self\",\"group\":\"menu\",\"sort\":\"2\",\"status\":\"on\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 12:06:50', '2021-07-28 12:06:50'),
(259, 1, 'backend/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:06:51', '2021-07-28 12:06:51'),
(260, 1, 'backend/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:06:54', '2021-07-28 12:06:54'),
(261, 1, 'backend/store_link/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:07:17', '2021-07-28 12:07:17'),
(262, 1, 'backend/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:07:29', '2021-07-28 12:07:29'),
(263, 1, 'backend/page/edit/7', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:07:54', '2021-07-28 12:07:54'),
(264, 1, 'backend/page/edit/7', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Ch\\u00ednh s\\u00e1ch b\\u1ea3o m\\u1eadt\",\"keyword\":\"Ch\\u00ednh s\\u00e1ch b\\u1ea3o m\\u1eadt\",\"description\":\"Ch\\u00ednh s\\u00e1ch b\\u1ea3o m\\u1eadt\",\"content\":\"<h2><span style=\\\"color:#000000;\\\">1. M\\u1ee5c \\u0111&iacute;ch v&agrave; ph\\u1ea1m vi thu th\\u1eadp<\\/span><\\/h2>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\">Vi\\u1ec7c thu th\\u1eadp d\\u1eef li\\u1ec7u ch\\u1ee7 y\\u1ebfu tr&ecirc;n Favimart bao g\\u1ed3m: email, \\u0111i\\u1ec7n tho\\u1ea1i, t&ecirc;n \\u0111\\u0103ng nh\\u1eadp, m\\u1eadt kh\\u1ea9u \\u0111\\u0103ng nh\\u1eadp, \\u0111\\u1ecba ch\\u1ec9 Kh&aacute;ch h&agrave;ng. \\u0110&acirc;y l&agrave; c&aacute;c th&ocirc;ng tin m&agrave; Favimart c\\u1ea7n Kh&aacute;ch h&agrave;ng cung c\\u1ea5p b\\u1eaft bu\\u1ed9c khi \\u0111\\u0103ng k&yacute; s\\u1eed d\\u1ee5ng d\\u1ecbch v\\u1ee5 v&agrave; Favimart s\\u1eed d\\u1ee5ng nh\\u1eb1m li&ecirc;n h\\u1ec7 x&aacute;c nh\\u1eadn khi Kh&aacute;ch h&agrave;ng \\u0111\\u0103ng k&yacute; s\\u1eed d\\u1ee5ng d\\u1ecbch v\\u1ee5 tr&ecirc;n Favimart, \\u0111\\u1ea3m b\\u1ea3o quy\\u1ec1n l\\u1ee3i cho Kh&aacute;ch h&agrave;ng.<\\/span><\\/p>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\">C&aacute;c Kh&aacute;ch h&agrave;ng s\\u1ebd t\\u1ef1 ch\\u1ecbu tr&aacute;ch nhi\\u1ec7m v\\u1ec1 b\\u1ea3o m\\u1eadt v&agrave; l\\u01b0u gi\\u1eef m\\u1ecdi ho\\u1ea1t \\u0111\\u1ed9ng s\\u1eed d\\u1ee5ng d\\u1ecbch v\\u1ee5 d\\u01b0\\u1edbi t&ecirc;n \\u0111\\u0103ng k&yacute;, m\\u1eadt kh\\u1ea9u v&agrave; h\\u1ed9p th\\u01b0 \\u0111i\\u1ec7n t\\u1eed c\\u1ee7a m&igrave;nh. Ngo&agrave;i ra, Kh&aacute;ch h&agrave;ng c&oacute; tr&aacute;ch nhi\\u1ec7m th&ocirc;ng b&aacute;o k\\u1ecbp th\\u1eddi cho Favimart v\\u1ec1 nh\\u1eefng h&agrave;nh vi s\\u1eed d\\u1ee5ng tr&aacute;i ph&eacute;p, l\\u1ea1m d\\u1ee5ng, vi ph\\u1ea1m b\\u1ea3o m\\u1eadt, l\\u01b0u gi\\u1eef t&ecirc;n \\u0111\\u0103ng k&yacute; v&agrave; m\\u1eadt kh\\u1ea9u c\\u1ee7a b&ecirc;n th\\u1ee9 ba \\u0111\\u1ec3 c&oacute; bi\\u1ec7n ph&aacute;p gi\\u1ea3i quy\\u1ebft ph&ugrave; h\\u1ee3p.<\\/span><\\/p>\\r\\n\\r\\n<h2><span style=\\\"color:#000000;\\\">2. Ph\\u1ea1m vi s\\u1eed d\\u1ee5ng th&ocirc;ng tin<\\/span><\\/h2>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\">Favimart s\\u1eed d\\u1ee5ng th&ocirc;ng tin Kh&aacute;ch h&agrave;ng cung c\\u1ea5p \\u0111\\u1ec3:<\\/span><\\/p>\\r\\n\\r\\n<ul contenteditable=\\\"true\\\">\\r\\n\\t<li><span style=\\\"color:#000000;\\\">Cung c\\u1ea5p c&aacute;c d\\u1ecbch v\\u1ee5 \\u0111\\u1ebfn Kh&aacute;ch h&agrave;ng.<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">G\\u1eedi c&aacute;c th&ocirc;ng b&aacute;o v\\u1ec1 c&aacute;c ho\\u1ea1t \\u0111\\u1ed9ng trao \\u0111\\u1ed5i th&ocirc;ng tin gi\\u1eefa Kh&aacute;ch h&agrave;ng v&agrave; S&agrave;n Shop.<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">Ng\\u0103n ng\\u1eeba c&aacute;c ho\\u1ea1t \\u0111\\u1ed9ng ph&aacute; h\\u1ee7y t&agrave;i kho\\u1ea3n ng\\u01b0\\u1eddi d&ugrave;ng c\\u1ee7a Kh&aacute;ch h&agrave;ng ho\\u1eb7c c&aacute;c ho\\u1ea1t \\u0111\\u1ed9ng gi\\u1ea3 m\\u1ea1o Kh&aacute;ch h&agrave;ng.<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">Li&ecirc;n l\\u1ea1c v&agrave; gi\\u1ea3i quy\\u1ebft v\\u1edbi kh&aacute;ch h&agrave;ng trong nh\\u1eefng tr\\u01b0\\u1eddng h\\u1ee3p \\u0111\\u1eb7c bi\\u1ec7t.<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">Kh&ocirc;ng s\\u1eed d\\u1ee5ng th&ocirc;ng tin c&aacute; nh&acirc;n c\\u1ee7a Kh&aacute;ch h&agrave;ng ngo&agrave;i m\\u1ee5c \\u0111&iacute;ch x&aacute;c nh\\u1eadn v&agrave; li&ecirc;n h\\u1ec7 c&oacute; li&ecirc;n quan \\u0111\\u1ebfn giao d\\u1ecbch t\\u1ea1i Favimart.<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">S&agrave;n Favimart c&oacute; tr&aacute;ch nhi\\u1ec7m h\\u1ee3p t&aacute;c cung c\\u1ea5p th&ocirc;ng tin c&aacute; nh&acirc;n Kh&aacute;ch h&agrave;ng khi c&oacute; y&ecirc;u c\\u1ea7u t\\u1eeb c\\u01a1 quan nh&agrave; n\\u01b0\\u1edbc c&oacute; th\\u1ea9m quy\\u1ec1n.<\\/span><\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h2><span style=\\\"color:#000000;\\\">3. Th\\u1eddi gian l\\u01b0u tr\\u1eef th&ocirc;ng tin<\\/span><\\/h2>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\">D\\u1eef li\\u1ec7u c&aacute; nh&acirc;n c\\u1ee7a Kh&aacute;ch h&agrave;ng s\\u1ebd \\u0111\\u01b0\\u1ee3c l\\u01b0u tr\\u1eef cho \\u0111\\u1ebfn khi c&oacute; y&ecirc;u c\\u1ea7u h\\u1ee7y b\\u1ecf ho\\u1eb7c t\\u1ef1 Kh&aacute;ch h&agrave;ng \\u0111\\u0103ng nh\\u1eadp v&agrave; th\\u1ef1c hi\\u1ec7n h\\u1ee7y b\\u1ecf. C&ograve;n l\\u1ea1i trong m\\u1ecdi tr\\u01b0\\u1eddng h\\u1ee3p th&ocirc;ng tin c&aacute; nh&acirc;n Kh&aacute;ch h&agrave;ng s\\u1ebd \\u0111\\u01b0\\u1ee3c b\\u1ea3o m\\u1eadt tr&ecirc;n m&aacute;y ch\\u1ee7 c\\u1ee7a Favimart<\\/span><\\/p>\\r\\n\\r\\n<h2><span style=\\\"color:#000000;\\\">4. \\u0110\\u1ecba ch\\u1ec9 c\\u1ee7a \\u0111\\u01a1n v\\u1ecb thu th\\u1eadp, qu\\u1ea3n l&yacute; th&ocirc;ng tin v&agrave; h\\u1ed7 tr\\u1ee3 Kh&aacute;ch h&agrave;ng<\\/span><\\/h2>\\r\\n\\r\\n<ul contenteditable=\\\"true\\\">\\r\\n\\t<li><span style=\\\"color:#000000;\\\">Favimart<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">\\u0110\\u1ecba ch\\u1ec9: P108, t\\u1ea7ng 10, Royal city, 234 Nguy\\u1ec5n Tr&atilde;i, \\u0110\\u1ed1ng \\u0110a, H&agrave; N\\u1ed9i<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">Hotline: 0338.716.078<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">Email: hotro@favimart.site<\\/span><\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h2><span style=\\\"color:#000000;\\\">5. Ph\\u01b0\\u01a1ng ti\\u1ec7n v&agrave; c&ocirc;ng c\\u1ee5 \\u0111\\u1ec3 Kh&aacute;ch h&agrave;ng ti\\u1ebfp c\\u1eadn v&agrave; ch\\u1ec9nh s\\u1eeda d\\u1eef li\\u1ec7u c\\u1ee7a m&igrave;nh<\\/span><\\/h2>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\">Kh&aacute;ch h&agrave;ng c&oacute; quy\\u1ec1n t\\u1ef1 ki\\u1ec3m tra, c\\u1eadp nh\\u1eadt, \\u0111i\\u1ec1u ch\\u1ec9nh th&ocirc;ng tin c&aacute; nh&acirc;n c\\u1ee7a m&igrave;nh b\\u1eb1ng c&aacute;ch \\u0111\\u0103ng nh\\u1eadp v&agrave;o t&agrave;i kho\\u1ea3n v&agrave; ch\\u1ec9nh s\\u1eeda th&ocirc;ng tin c&aacute; nh&acirc;n ho\\u1eb7c y&ecirc;u c\\u1ea7u Favimart th\\u1ef1c hi\\u1ec7n vi\\u1ec7c n&agrave;y.<br \\/>\\r\\n<br \\/>\\r\\nKh&aacute;ch h&agrave;ng c&oacute; quy\\u1ec1n g\\u1eedi khi\\u1ebfu n\\u1ea1i v\\u1ec1 vi\\u1ec7c l\\u1ed9 th&ocirc;ng tin c&aacute;c nh&acirc;n cho b&ecirc;n th\\u1ee9 ba \\u0111\\u1ebfn Ban qu\\u1ea3n tr\\u1ecb c\\u1ee7a Favimart. Khi ti\\u1ebfp nh\\u1eadn nh\\u1eefng ph\\u1ea3n h\\u1ed3i n&agrave;y, Favimart s\\u1ebd x&aacute;c nh\\u1eadn l\\u1ea1i th&ocirc;ng tin, ph\\u1ea3i c&oacute; tr&aacute;ch nhi\\u1ec7m tr\\u1ea3 l\\u1eddi l&yacute; do v&agrave; h\\u01b0\\u1edbng d\\u1eabn Kh&aacute;ch h&agrave;ng kh&ocirc;i ph\\u1ee5c v&agrave; b\\u1ea3o m\\u1eadt l\\u1ea1i th&ocirc;ng tin.<\\/span><\\/p>\\r\\n\\r\\n<h2><span style=\\\"color:#000000;\\\">6. Cam k\\u1ebft b\\u1ea3o m\\u1eadt th&ocirc;ng tin c&aacute; nh&acirc;n Kh&aacute;ch h&agrave;ng<\\/span><\\/h2>\\r\\n\\r\\n<p><span style=\\\"color:#000000;\\\">Th&ocirc;ng tin c&aacute; nh&acirc;n c\\u1ee7a Kh&aacute;ch h&agrave;ng tr&ecirc;n Favimart \\u0111\\u01b0\\u1ee3c Favimart cam k\\u1ebft b\\u1ea3o m\\u1eadt tuy\\u1ec7t \\u0111\\u1ed1i theo ch&iacute;nh s&aacute;ch b\\u1ea3o v\\u1ec7 th&ocirc;ng tin c&aacute; nh&acirc;n c\\u1ee7a Favimart. Vi\\u1ec7c thu th\\u1eadp v&agrave; s\\u1eed d\\u1ee5ng th&ocirc;ng tin c\\u1ee7a m\\u1ed7i Kh&aacute;ch h&agrave;ng ch\\u1ec9 \\u0111\\u01b0\\u1ee3c th\\u1ef1c hi\\u1ec7n khi c&oacute; s\\u1ef1 \\u0111\\u1ed3ng &yacute; c\\u1ee7a Kh&aacute;ch h&agrave;ng \\u0111&oacute;, tr\\u1eeb nh\\u1eefng tr\\u01b0\\u1eddng h\\u1ee3p ph&aacute;p lu\\u1eadt c&oacute; quy \\u0111\\u1ecbnh kh&aacute;c. Favimart cam k\\u1ebft:<\\/span><\\/p>\\r\\n\\r\\n<ul contenteditable=\\\"true\\\">\\r\\n\\t<li><span style=\\\"color:#000000;\\\">Kh&ocirc;ng s\\u1eed d\\u1ee5ng, kh&ocirc;ng chuy\\u1ec3n giao, cung c\\u1ea5p hay ti\\u1ebft l\\u1ed9 cho b&ecirc;n th\\u1ee9 ba n&agrave;o v\\u1ec1 th&ocirc;ng tin c&aacute; nh&acirc;n c\\u1ee7a Kh&aacute;ch h&agrave;ng khi kh&ocirc;ng c&oacute; s\\u1ef1 cho ph&eacute;p ho\\u1eb7c \\u0111\\u1ed3ng &yacute; t\\u1eeb Kh&aacute;ch h&agrave;ng, tr\\u1eeb nh\\u1eefng tr\\u01b0\\u1eddng h\\u1ee3p ph&aacute;p lu\\u1eadt c&oacute; quy \\u0111\\u1ecbnh kh&aacute;c.<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">Trong tr\\u01b0\\u1eddng h\\u1ee3p m&aacute;y ch\\u1ee7 l\\u01b0u tr\\u1eef th&ocirc;ng tin b\\u1ecb hacker t\\u1ea5n c&ocirc;ng d\\u1eabn \\u0111\\u1ebfn m\\u1ea5t m&aacute;t d\\u1eef li\\u1ec7u c&aacute; nh&acirc;n Kh&aacute;ch h&agrave;ng, Favimart&nbsp; s\\u1ebd c&oacute; tr&aacute;ch nhi\\u1ec7m th&ocirc;ng b&aacute;o v\\u1ee5 vi\\u1ec7c cho c\\u01a1 quan ch\\u1ee9c n\\u0103ng \\u0111i\\u1ec1u tra x\\u1eed l&yacute; k\\u1ecbp th\\u1eddi v&agrave; th&ocirc;ng b&aacute;o cho Kh&aacute;ch h&agrave;ng \\u0111\\u01b0\\u1ee3c bi\\u1ebft.<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000;\\\">B\\u1ea3o m\\u1eadt tuy\\u1ec7t \\u0111\\u1ed1i m\\u1ecdi th&ocirc;ng tin giao d\\u1ecbch tr\\u1ef1c tuy\\u1ebfn c\\u1ee7a Kh&aacute;ch h&agrave;ng bao g\\u1ed3m th&ocirc;ng tin h&oacute;a \\u0111\\u01a1n, ch\\u1ee9ng t\\u1eeb k\\u1ebf to&aacute;n s\\u1ed1 h&oacute;a t\\u1ea1i khu v\\u1ef1c d\\u1eef li\\u1ec7u trung t&acirc;m an to&agrave;n c\\u1ea5p 1 c\\u1ee7a Favimart.<\\/span><\\/li>\\r\\n<\\/ul>\\r\\n<span style=\\\"color:#000000;\\\"><\\/span>\"}},\"image\":null,\"alias\":\"chinh-sach-bao-mat\",\"status\":\"on\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 12:07:57', '2021-07-28 12:07:57'),
(265, 1, 'backend/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:07:58', '2021-07-28 12:07:58'),
(266, 1, 'backend/store_link/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"name\":\"Ch\\u00ednh s\\u00e1ch b\\u1ea3o m\\u1eadt\",\"url\":\"chinh-sach-bao-mat.html\",\"target\":\"_self\",\"group\":\"footer\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 12:08:03', '2021-07-28 12:08:03'),
(267, 1, 'backend/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:08:03', '2021-07-28 12:08:03'),
(268, 1, 'backend/store_link/edit/4', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:08:24', '2021-07-28 12:08:24'),
(269, 1, 'backend/store_link/edit/4', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"name\":\"front.my_profile\",\"url\":\"route::login\",\"target\":\"_self\",\"group\":\"footer\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 12:08:27', '2021-07-28 12:08:27'),
(270, 1, 'backend/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:08:27', '2021-07-28 12:08:27'),
(271, 1, 'backend/store_link/edit/8', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:08:30', '2021-07-28 12:08:30'),
(272, 1, 'backend/store_link/edit/8', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"name\":\"Ch\\u00ednh s\\u00e1ch b\\u1ea3o m\\u1eadt\",\"url\":\"chinh-sach-bao-mat.html\",\"target\":\"_self\",\"group\":\"footer\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 12:08:33', '2021-07-28 12:08:33'),
(273, 1, 'backend/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:08:34', '2021-07-28 12:08:34'),
(274, 1, 'backend/store_link/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:08:45', '2021-07-28 12:08:45'),
(275, 1, 'backend/store_link/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"name\":\"H\\u01b0\\u1edbng d\\u1eabn mua h\\u00e0ng\",\"url\":\"huong-dan-mua-hang,html\",\"target\":\"_self\",\"group\":\"footer\",\"sort\":\"2\",\"status\":\"on\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 12:09:11', '2021-07-28 12:09:11'),
(276, 1, 'backend/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:09:12', '2021-07-28 12:09:12'),
(277, 1, 'backend/store_link/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:09:17', '2021-07-28 12:09:17'),
(278, 1, 'backend/store_link/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"name\":\"Ch\\u00ednh s\\u00e1ch thanh to\\u00e1n\",\"url\":\"chinh-sach-thanh-toan.html\",\"target\":\"_self\",\"group\":\"footer\",\"sort\":\"3\",\"status\":\"on\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 12:09:43', '2021-07-28 12:09:43'),
(279, 1, 'backend/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:09:43', '2021-07-28 12:09:43'),
(280, 1, 'backend/store_link/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:09:49', '2021-07-28 12:09:49');
INSERT INTO `admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(281, 1, 'backend/store_link/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"name\":\"Ch\\u00ednh s\\u00e1ch v\\u1eadn chuy\\u1ec3n\",\"url\":\"chinh-sach-van-chuyen.html\",\"target\":\"_self\",\"group\":\"footer\",\"sort\":\"4\",\"status\":\"on\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 12:10:04', '2021-07-28 12:10:04'),
(282, 1, 'backend/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:10:04', '2021-07-28 12:10:04'),
(283, 1, 'backend/store_link/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:10:07', '2021-07-28 12:10:07'),
(284, 1, 'backend/store_link/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"name\":\"Ch\\u00ednh s\\u00e1ch \\u0111\\u1ed5i tr\\u1ea3\",\"url\":\"chinh-sach-doi-tra.html\",\"target\":\"_self\",\"group\":\"footer\",\"sort\":\"5\",\"status\":\"on\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 12:10:26', '2021-07-28 12:10:26'),
(285, 1, 'backend/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2021-07-28 12:10:26', '2021-07-28 12:10:26'),
(286, 1, 'backend/store_link/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"ids\":\"6\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 12:11:25', '2021-07-28 12:11:25'),
(287, 1, 'backend/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-07-28 12:11:25', '2021-07-28 12:11:25'),
(288, 1, 'backend/store_link/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"ids\":\"5\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 12:11:31', '2021-07-28 12:11:31'),
(289, 1, 'backend/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-07-28 12:11:32', '2021-07-28 12:11:32'),
(290, 1, 'backend/store_link/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"ids\":\"4\",\"_token\":\"NaCrx4EIiy2qOPXJupDXQCb2ITjMeKeGw0AFYGUx\"}', '2021-07-28 12:11:38', '2021-07-28 12:11:38'),
(291, 1, 'backend/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2021-07-28 12:11:38', '2021-07-28 12:11:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `hidden` int(11) NOT NULL DEFAULT 0,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `sort`, `title`, `icon`, `uri`, `type`, `hidden`, `key`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 'admin.menu_titles.order_manager', 'fas fa-cart-arrow-down', '', 0, 0, 'ORDER_MANAGER', NULL, '2021-07-28 11:28:22'),
(2, 6, 2, 'admin.menu_titles.catalog_mamager', 'fas fa-folder-open', '', 0, 0, 'CATALOG_MANAGER', NULL, '2021-07-28 11:28:22'),
(3, 25, 2, 'admin.menu_titles.customer_manager', 'fas fa-users', '', 0, 0, 'CUSTOMER_MANAGER', NULL, '2021-07-28 11:28:22'),
(4, 8, 1, 'admin.menu_titles.template_layout', 'fab fa-windows', '', 0, 0, 'TEMPLATE', NULL, '2021-07-28 11:28:23'),
(5, 9, 2, 'admin.menu_titles.admin_global', 'fab fa-whmcs', '', 0, 0, 'CONFIG_SYSTEM', NULL, '2021-07-28 11:28:23'),
(6, 0, 1, 'admin.menu_titles.ADMIN_SHOP', 'fab fa-shopify', '', 0, 0, 'ADMIN_SHOP', NULL, '2021-07-28 11:28:22'),
(7, 0, 2, 'admin.menu_titles.ADMIN_CONTENT', 'fas fa-file-signature', '', 0, 0, 'ADMIN_CONTENT', NULL, '2021-07-28 11:28:22'),
(8, 0, 6, 'admin.menu_titles.ADMIN_EXTENSION', 'fas fa-th', '', 0, 0, 'ADMIN_EXTENSION', NULL, '2021-07-28 11:28:23'),
(9, 0, 5, 'admin.menu_titles.ADMIN_SYSTEM', 'fas fa-cogs', '', 0, 0, 'ADMIN_SYSTEM', NULL, '2021-07-28 11:28:23'),
(10, 7, 2, 'admin.menu_titles.page_manager', 'fas fa-clone', 'admin::page', 0, 0, NULL, NULL, '2021-07-28 11:28:22'),
(11, 27, 2, 'admin.menu_titles.shipping_status', 'fas fa-truck', 'admin::shipping_status', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(12, 1, 1, 'admin.menu_titles.order', 'fas fa-shopping-cart', 'admin::order', 0, 0, NULL, NULL, '2021-07-28 11:28:22'),
(13, 27, 1, 'admin.menu_titles.order_status', 'fas fa-asterisk', 'admin::order_status', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(14, 27, 3, 'admin.menu_titles.payment_status', 'fas fa-recycle', 'admin::payment_status', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(15, 2, 1, 'admin.menu_titles.product', 'far fa-file-image', 'admin::product', 0, 0, NULL, NULL, '2021-07-28 11:28:22'),
(16, 2, 2, 'admin.menu_titles.category', 'fas fa-folder-open', 'admin::category', 0, 0, NULL, NULL, '2021-07-28 11:28:22'),
(17, 27, 4, 'admin.menu_titles.supplier', 'fas fa-user-secret', 'admin::supplier', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(18, 27, 5, 'admin.menu_titles.brand', 'fas fa-university', 'admin::brand', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(19, 27, 9, 'admin.menu_titles.attribute_group', 'fas fa-bars', 'admin::attribute_group', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(20, 3, 1, 'admin.menu_titles.customer', 'fas fa-user', 'admin::customer', 0, 0, NULL, NULL, '2021-07-28 11:28:22'),
(21, 3, 2, 'admin.menu_titles.subscribe', 'fas fa-user-circle', 'admin::subscribe', 0, 0, NULL, NULL, '2021-07-28 11:28:22'),
(22, 67, 1, 'admin.menu_titles.block_content', 'far fa-newspaper', 'admin::store_block', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(23, 67, 2, 'admin.menu_titles.block_link', 'fab fa-chrome', 'admin::store_link', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(24, 4, 1, 'admin.menu_titles.template', 'fas fa-columns', 'admin::template', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(25, 0, 3, 'admin.menu_titles.ADMIN_MARKETING', 'fas fa-sort-amount-up', '', 0, 0, 'MARKETING', NULL, '2021-07-28 11:28:22'),
(26, 65, 1, 'admin.menu_titles.store_info', 'fas fa-h-square', 'admin::store_info', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(27, 9, 3, 'admin.menu_titles.setting_system', 'fas fa-tools', '', 0, 0, 'SETTING_SYSTEM', NULL, '2021-07-28 11:28:23'),
(28, 9, 4, 'admin.menu_titles.error_log', 'far fa-clone', '', 0, 0, '', NULL, '2021-07-28 11:28:23'),
(29, 25, 1, 'admin.menu_titles.email_template', 'fas fa-bars', 'admin::email_template', 0, 0, NULL, NULL, '2021-07-28 11:28:22'),
(30, 9, 5, 'admin.menu_titles.localisation', 'fab fa-shirtsinbulk', '', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(31, 30, 1, 'admin.menu_titles.language', 'fas fa-language', 'admin::language', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(32, 30, 3, 'admin.menu_titles.currency', 'far fa-money-bill-alt', 'admin::currency', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(33, 7, 1, 'admin.menu_titles.banner', 'fas fa-image', 'admin::banner', 0, 0, NULL, NULL, '2021-07-28 11:28:22'),
(34, 5, 3, 'admin.menu_titles.backup_restore', 'fas fa-save', 'admin::backup', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(35, 8, 2, 'admin.menu_titles.plugin', 'fas fa-puzzle-piece', '', 0, 0, 'PLUGIN', NULL, '2021-07-28 11:28:23'),
(36, 28, 2, 'admin.menu_titles.webhook', 'fab fa-diaspora', 'admin::config/webhook', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(37, 25, 4, 'admin.menu_titles.report_manager', 'fas fa-chart-pie', '', 0, 0, 'REPORT_MANAGER', NULL, '2021-07-28 11:28:22'),
(38, 9, 1, 'admin.menu_titles.user_permission', 'fas fa-users-cog', '', 0, 0, 'ADMIN', NULL, '2021-07-28 11:28:23'),
(39, 35, 1, 'admin.menu_titles.plugin_payment', 'far fa-money-bill-alt', 'admin::plugin/payment', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(40, 35, 2, 'admin.menu_titles.plugin_shipping', 'fas fa-ambulance', 'admin::plugin/shipping', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(41, 35, 3, 'admin.menu_titles.plugin_total', 'fas fa-cog', 'admin::plugin/total', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(42, 35, 5, 'admin.menu_titles.plugin_other', 'far fa-circle', 'admin::plugin/other', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(43, 35, 4, 'admin.menu_titles.plugin_cms', 'fab fa-modx', 'admin::plugin/cms', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(44, 67, 3, 'admin.menu_titles.css', 'far fa-file-code', 'admin::store_css', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(45, 25, 3, 'admin.menu_titles.seo_manager', 'fab fa-battle-net', '', 0, 0, 'SEO_MANAGER', NULL, '2021-07-28 11:28:22'),
(46, 38, 1, 'admin.menu_titles.users', 'fas fa-users', 'admin::user', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(47, 38, 2, 'admin.menu_titles.roles', 'fas fa-user-tag', 'admin::role', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(48, 38, 3, 'admin.menu_titles.permission', 'fas fa-ban', 'admin::permission', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(49, 5, 1, 'admin.menu_titles.menu', 'fas fa-bars', 'admin::menu', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(50, 28, 1, 'admin.menu_titles.operation_log', 'fas fa-history', 'admin::log', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(51, 45, 1, 'admin.menu_titles.seo_config', 'fas fa-bars', 'admin::seo/config', 0, 0, NULL, NULL, '2021-07-28 11:28:22'),
(52, 7, 3, 'admin.menu_titles.news', 'far fa-file-powerpoint', 'admin::news', 0, 0, NULL, NULL, '2021-07-28 11:28:22'),
(53, 5, 2, 'admin.menu_titles.env_config', 'fas fa-tasks', 'admin::env/config', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(54, 37, 1, 'admin.menu_titles.report_product', 'fas fa-bars', 'admin::report/product', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(57, 65, 2, 'admin.menu_titles.store_config', 'fas fa-cog', 'admin::store_config', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(58, 5, 4, 'admin.menu_titles.cache_manager', 'fab fa-tripadvisor', 'admin::cache_config', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(59, 9, 6, 'admin.menu_titles.api_manager', 'fas fa-plug', '', 0, 0, 'API_MANAGER', NULL, '2021-07-28 11:28:23'),
(60, 65, 3, 'admin.menu_titles.store_maintain', 'fas fa-wrench', 'admin::store_maintain', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(61, 27, 10, 'admin.menu_titles.tax', 'far fa-calendar-minus', 'admin::tax', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(62, 27, 7, 'admin.menu_titles.weight', 'fas fa-balance-scale', 'admin::weight_unit', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(63, 27, 8, 'admin.menu_titles.length', 'fas fa-minus', 'admin::length_unit', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(65, 0, 4, 'admin.menu_titles.ADMIN_SHOP_SETTING', 'fas fa-store-alt', '', 0, 0, 'ADMIN_SHOP_SETTING', NULL, '2021-07-28 11:28:23'),
(66, 59, 1, 'admin.menu_titles.api_config', 'fas fa fa-cog', 'admin::api_connection', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(67, 65, 4, 'admin.menu_titles.layout', 'far fa-object-group', '', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(68, 27, 6, 'admin.menu_titles.custom_field', 'fa fa-american-sign-language-interpreting', 'admin::custom_field', 0, 0, NULL, NULL, '2021-07-28 11:28:23'),
(69, 30, 2, 'admin.menu_titles.language_manager', 'fa fa-universal-access', 'admin::language_manager', 0, 0, NULL, NULL, '2021-07-28 11:28:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_permission`
--

CREATE TABLE `admin_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_uri` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_permission`
--

INSERT INTO `admin_permission` (`id`, `name`, `slug`, `http_uri`, `created_at`, `updated_at`) VALUES
(1, 'Auth manager', 'auth.full', 'ANY::backend/auth/*', '2021-07-21 04:13:23', NULL),
(2, 'Dashboard', 'dashboard', 'GET::backend', '2021-07-21 04:13:23', NULL),
(3, 'Base setting', 'base.setting', 'ANY::backend/order_status/*,ANY::backend/shipping_status/*,ANY::backend/payment_status/*,ANY::backend/supplier/*,ANY::backend/brand/*,ANY::backend/custom_field/*,ANY::backend/weight_unit/*,ANY::backend/length_unit/*,ANY::backend/attribute_group/*,ANY::backend/tax/*', '2021-07-21 04:13:23', NULL),
(4, 'Store manager', 'store.full', 'ANY::backend/store_info/*,ANY::backend/store_maintain/*,ANY::backend/store_config/*,ANY::backend/store_css/*,ANY::backend/store_block/*,ANY::backend/store_link/*', '2021-07-21 04:13:23', NULL),
(5, 'Product manager', 'product.full', 'ANY::backend/product/*,ANY::backend/product_property/*,ANY::backend/product_tag/*', '2021-07-21 04:13:23', NULL),
(6, 'Category manager', 'category.full', 'ANY::backend/category/*', '2021-07-21 04:13:23', NULL),
(7, 'Order manager', 'order.full', 'ANY::backend/order/*', '2021-07-21 04:13:23', NULL),
(8, 'Upload management', 'upload.full', 'ANY::backend/uploads/*', '2021-07-21 04:13:23', NULL),
(9, 'Extension manager', 'extension.full', 'ANY::backend/template/*,ANY::backend/plugin/*', '2021-07-21 04:13:23', NULL),
(10, 'Marketing manager', 'marketing.full', 'ANY::backend/shop_discount/*,ANY::backend/email_template/*,ANY::backend/customer/*,ANY::backend/subscribe/*,ANY::backend/seo/*', '2021-07-21 04:13:23', NULL),
(11, 'Report manager', 'report.full', 'ANY::backend/report/*', '2021-07-21 04:13:23', NULL),
(12, 'CMS manager', 'cms.full', 'ANY::backend/page/*,ANY::backend/banner/*,ANY::backend/banner_type/*, ANY::backend/cms_category/*,ANY::backend/cms_content/*,ANY::backend/news/*', '2021-07-21 04:13:23', NULL),
(13, 'Update config', 'change.config', 'POST::backend/store_config/update', '2021-07-21 04:13:23', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role`
--

CREATE TABLE `admin_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role`
--

INSERT INTO `admin_role` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2021-07-21 04:13:23', NULL),
(2, 'Group only View', 'view.all', '2021-07-21 04:13:23', NULL),
(3, 'Manager', 'manager', '2021-07-21 04:13:23', NULL),
(4, 'CMS', 'cms', '2021-07-21 04:13:23', NULL),
(5, 'Accountant', 'accountant', '2021-07-21 04:13:23', NULL),
(6, 'Marketing', 'maketing', '2021-07-21 04:13:23', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role_permission`
--

CREATE TABLE `admin_role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role_permission`
--

INSERT INTO `admin_role_permission` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(3, 1, '2021-07-21 04:13:23', NULL),
(3, 2, '2021-07-21 04:13:23', NULL),
(3, 3, '2021-07-21 04:13:23', NULL),
(3, 4, '2021-07-21 04:13:23', NULL),
(3, 5, '2021-07-21 04:13:23', NULL),
(3, 6, '2021-07-21 04:13:23', NULL),
(3, 7, '2021-07-21 04:13:23', NULL),
(3, 8, '2021-07-21 04:13:23', NULL),
(3, 9, '2021-07-21 04:13:23', NULL),
(3, 10, '2021-07-21 04:13:23', NULL),
(3, 11, '2021-07-21 04:13:23', NULL),
(3, 12, '2021-07-21 04:13:23', NULL),
(3, 13, '2021-07-21 04:13:23', NULL),
(4, 1, '2021-07-21 04:13:23', NULL),
(4, 12, '2021-07-21 04:13:23', NULL),
(5, 1, '2021-07-21 04:13:23', NULL),
(5, 2, '2021-07-21 04:13:23', NULL),
(5, 7, '2021-07-21 04:13:23', NULL),
(5, 11, '2021-07-21 04:13:23', NULL),
(6, 1, '2021-07-21 04:13:23', NULL),
(6, 2, '2021-07-21 04:13:23', NULL),
(6, 8, '2021-07-21 04:13:23', NULL),
(6, 10, '2021-07-21 04:13:23', NULL),
(6, 11, '2021-07-21 04:13:23', NULL),
(6, 12, '2021-07-21 04:13:23', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role_user`
--

CREATE TABLE `admin_role_user` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role_user`
--

INSERT INTO `admin_role_user` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_store`
--

CREATE TABLE `admin_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_active` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Use for multi-store, multi-vendor',
  `partner` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Use for multi-vendor',
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT 'Use for multi-store, multi-vendor',
  `active` int(11) NOT NULL DEFAULT 1 COMMENT '0:Maintain, 1: Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_store`
--

INSERT INTO `admin_store` (`id`, `logo`, `icon`, `phone`, `long_phone`, `email`, `time_active`, `address`, `office`, `warehouse`, `template`, `domain`, `partner`, `code`, `language`, `timezone`, `currency`, `status`, `active`) VALUES
(1, '/data/logo/capture-20210717075644.png', '/data/logo/capture-20210717075644.png', '0123456789', 'Support: 0987654321', 'trungnh28@gmail.com', '', '123st - abc - xyz', NULL, NULL, 's-cart-light', 'favistore.local', '0', 's-cart', 'vi', 'Asia/Ho_Chi_Minh', 'VND', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_store_description`
--

CREATE TABLE `admin_store_description` (
  `store_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintain_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintain_note` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_store_description`
--

INSERT INTO `admin_store_description` (`store_id`, `lang`, `title`, `description`, `keyword`, `maintain_content`, `maintain_note`) VALUES
(1, 'en', 'Demo S-Cart : Free Laravel eCommerce', 'Free website shopping cart for business', '', '<center><img src=\"/images/maintenance.png\" />\n<h3><span style=\"color:#e74c3c;\"><strong>Sorry! We are currently doing site maintenance!</strong></span></h3>\n</center>', 'Website is in maintenance mode!'),
(1, 'vi', 'Tiện ích cuộc sống', 'Favimart | Tiện ích cuộc sống', '', '<center><img src=\"/images/maintenance.png\" />\n<h3><span style=\"color:#e74c3c;\"><strong>Xin lỗi! Hiện tại website đang bảo trì!</strong></span></h3>\n</center>', 'Website đang trong chế độ bảo trì!');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_user`
--

CREATE TABLE `admin_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_user`
--

INSERT INTO `admin_user` (`id`, `username`, `password`, `name`, `email`, `avatar`, `remember_token`, `theme`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$FQoUHfR8xHI0BpfnOCIZmuoTrkF6cPs8wJoWzfVkgaH02Q/1pjGQq', 'Administrator', 'trungnh28@gmail.com', '/admin/avatar/user.jpg', NULL, NULL, '2021-07-21 04:13:23', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_user_permission`
--

CREATE TABLE `admin_user_permission` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `api_connection`
--

CREATE TABLE `api_connection` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apiconnection` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apikey` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire` date DEFAULT NULL,
  `last_active` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `api_connection`
--

INSERT INTO `api_connection` (`id`, `description`, `apiconnection`, `apikey`, `expire`, `last_active`, `status`) VALUES
(1, 'Demo api connection', 'appmobile', 'faef9189-e9d9-11eb-8d4d-2cfda16d4235', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`id`, `code`, `text`, `position`, `location`) VALUES
(1, 'action.edit', 'Edit', 'action', 'en'),
(2, 'action.edit', 'Chỉnh sửa', 'action', 'vi'),
(3, 'action.update', 'Update', 'action', 'en'),
(4, 'action.update', 'Cập nhật', 'action', 'vi'),
(5, 'action.add', 'Thêm mới', 'action', 'vi'),
(6, 'action.add', 'Add new', 'action', 'en'),
(7, 'action.create', 'Create new', 'action', 'en'),
(8, 'action.create', 'Tạo mới', 'action', 'vi'),
(9, 'action.create_success', 'Tạo mới thành công', 'action', 'vi'),
(10, 'action.create_success', 'Create success', 'action', 'en'),
(11, 'action.edit_success', 'Edit success', 'action', 'en'),
(12, 'action.edit_success', 'Tạo mới thành công', 'action', 'vi'),
(13, 'action.update_success', 'Update success', 'action', 'en'),
(14, 'action.update_success', 'Cập nhật thành công', 'action', 'vi'),
(15, 'action.add_success', 'Add new success', 'action', 'en'),
(16, 'action.add_success', 'Thêm mới thành công', 'action', 'vi'),
(17, 'action.remote_success', 'Remove success', 'action', 'en'),
(18, 'action.remote_success', 'Gỡ bỏ thành công', 'action', 'vi'),
(19, 'action.delete_success', 'Delete success', 'action', 'en'),
(20, 'action.delete_success', 'Xóa thành công', 'action', 'vi'),
(21, 'action.remote', 'Gỡ bỏ', 'action', 'vi'),
(22, 'action.remote', 'Remove', 'action', 'en'),
(23, 'action.delete', 'Xóa', 'action', 'vi'),
(24, 'action.delete', 'Delete', 'action', 'en'),
(25, 'action.uninstall', 'Delete', 'action', 'en'),
(26, 'action.uninstall', 'Gỡ cài đặt', 'action', 'vi'),
(27, 'action.install', 'Cài đặt', 'action', 'vi'),
(28, 'action.install', 'Install', 'action', 'en'),
(29, 'action.click', 'Click', 'action', 'en'),
(30, 'action.click', 'Bấm', 'action', 'vi'),
(31, 'action.click_here', 'Click here', 'action', 'en'),
(32, 'action.click_here', 'Bấm vào đây', 'action', 'vi'),
(33, 'action.view', 'Xem', 'action', 'vi'),
(34, 'action.view', 'View', 'action', 'en'),
(35, 'action.view_more', 'View more', 'action', 'en'),
(36, 'action.view_more', 'Xem thêm', 'action', 'vi'),
(37, 'action.detail', 'Chi tiết', 'action', 'vi'),
(38, 'action.detail', 'Detail', 'action', 'en'),
(39, 'action.hidden', 'Hidden', 'action', 'en'),
(40, 'action.hidden', 'Ẩn', 'action', 'vi'),
(41, 'action.show', 'Hiển thị', 'action', 'vi'),
(42, 'action.show', 'Show', 'action', 'en'),
(43, 'action.submit', 'Submit', 'action', 'en'),
(44, 'action.submit', 'Gửi', 'action', 'vi'),
(45, 'action.save', 'Save', 'action', 'en'),
(46, 'action.save', 'Lưu lại', 'action', 'vi'),
(47, 'action.reset', 'Làm lại', 'action', 'vi'),
(48, 'action.reset', 'Reset', 'action', 'en'),
(49, 'action.logout', 'Đăng xuất', 'action', 'vi'),
(50, 'action.logout', 'Logout', 'action', 'en'),
(51, 'action.login', 'Đăng nhập', 'action', 'vi'),
(52, 'action.login', 'Login', 'action', 'en'),
(53, 'action.refresh', 'Làm mới', 'action', 'vi'),
(54, 'action.refresh', 'Refresh', 'action', 'en'),
(55, 'action.confirm', 'Xác nhận', 'action', 'vi'),
(56, 'action.confirm', 'Confirmation', 'action', 'en'),
(57, 'action.add_to_cart', 'Add to cart', 'action', 'en'),
(58, 'action.add_to_cart', 'Mua Ngay', 'action', 'vi'),
(59, 'action.add_to_wishlist', 'Thêm yêu thích', 'action', 'vi'),
(60, 'action.add_to_wishlist', 'Add to wishlist', 'action', 'en'),
(61, 'action.add_to_compare', 'Add to compare', 'action', 'en'),
(62, 'action.add_to_compare', 'Thêm so sánh', 'action', 'vi'),
(63, 'action.buy_now', 'Mua ngay', 'action', 'vi'),
(64, 'action.buy_now', 'Buy now', 'action', 'en'),
(65, 'action.re_order', 'Re-order', 'action', 'en'),
(66, 'action.re_order', 'Mua lại', 'action', 'vi'),
(67, 'action.order', 'Đặt hàng', 'action', 'vi'),
(68, 'action.order', 'Order', 'action', 'en'),
(69, 'action.title', 'Action', 'action', 'en'),
(70, 'action.title', 'Thao tác', 'action', 'vi'),
(71, 'action.confirm_agree', 'Agree', 'action', 'en'),
(72, 'action.confirm_agree', 'Đồng ý', 'action', 'vi'),
(73, 'action.confirm_cancel', 'Hủy bỏ', 'action', 'vi'),
(74, 'action.confirm_cancel', 'Cancel', 'action', 'en'),
(75, 'action.confirm_yes', 'Yes', 'action', 'en'),
(76, 'action.confirm_yes', 'Có', 'action', 'vi'),
(77, 'action.confirm_no', 'Không', 'action', 'vi'),
(78, 'action.confirm_no', 'No', 'action', 'en'),
(79, 'action.delete_confirm', 'Are you sure to delete it?', 'action', 'en'),
(80, 'action.delete_confirm', 'Bạn có chắc chắn sẽ xóa nó?', 'action', 'vi'),
(81, 'action.delete_confirm_deleted', 'Deleted', 'action', 'en'),
(82, 'action.delete_confirm_deleted', 'Đã xóa', 'action', 'vi'),
(83, 'action.delete_confirm_deleted_msg', 'Item has deleted', 'action', 'en'),
(84, 'action.delete_confirm_deleted_msg', 'Item này đã được xóa.', 'action', 'vi'),
(85, 'action.remove_confirm', 'Are you sure to remove it?', 'action', 'en'),
(86, 'action.remove_confirm', 'Bạn có chắc chắn gỡ nó?', 'action', 'vi'),
(87, 'action.action_confirm', 'Bạn có chắc chắn thao tác này?', 'action', 'vi'),
(88, 'action.action_confirm', 'Are you sure you do this?', 'action', 'en'),
(89, 'action.action_confirm_warning', 'Hành động này sẽ không thể phục hồi', 'action', 'vi'),
(90, 'action.action_confirm_warning', 'This action will not be restore', 'action', 'en'),
(91, 'action.warning', 'Warning', 'action', 'en'),
(92, 'action.warning', 'Cảnh báo', 'action', 'vi'),
(93, 'action.notify', 'Thông báo', 'action', 'vi'),
(94, 'action.notify', 'Notify', 'action', 'en'),
(95, 'action.sort', 'Sort items', 'action', 'en'),
(96, 'action.sort', 'Sắp xếp', 'action', 'vi'),
(97, 'action.search', 'Tìm kiếm', 'action', 'vi'),
(98, 'action.search', 'Search', 'action', 'en'),
(99, 'action.copy', 'Sao chép', 'action', 'vi'),
(100, 'action.copy', 'Copy', 'action', 'en'),
(101, 'action.duplicate', 'Duplicate', 'action', 'en'),
(102, 'action.duplicate', 'Nhân bản', 'action', 'vi'),
(103, 'front.home', 'Trang chủ', 'front', 'vi'),
(104, 'front.home', 'Home', 'front', 'en'),
(105, 'front.shop', 'Cửa hàng', 'front', 'vi'),
(106, 'front.shop', 'Shop', 'front', 'en'),
(107, 'front.store', 'Cửa hàng', 'front', 'vi'),
(108, 'front.store', 'Store', 'front', 'en'),
(109, 'front.store_list', 'Danh sách cửa hàng', 'front', 'vi'),
(110, 'front.store_list', 'Store list', 'front', 'en'),
(111, 'front.link_useful', 'Liên kết hữu ích', 'front', 'vi'),
(112, 'front.link_useful', 'Link useful', 'front', 'en'),
(113, 'front.brands', 'Nhãn hàng', 'front', 'vi'),
(114, 'front.brands', 'Brands', 'front', 'en'),
(115, 'front.categories', 'Danh mục', 'front', 'vi'),
(116, 'front.categories', 'Categries', 'front', 'en'),
(117, 'front.sub_categories', 'Danh mục nhỏ', 'front', 'vi'),
(118, 'front.sub_categories', 'Subcategory', 'front', 'en'),
(119, 'front.blog', 'Blog', 'front', 'vi'),
(120, 'front.blog', 'Blogs', 'front', 'en'),
(121, 'front.news', 'Tin tức', 'front', 'vi'),
(122, 'front.news', 'News', 'front', 'en'),
(123, 'front.about', 'About us', 'front', 'en'),
(124, 'front.about', 'Giới thiệu', 'front', 'vi'),
(125, 'front.contact', 'Contact us', 'front', 'en'),
(126, 'front.contact', 'Liên hệ', 'front', 'vi'),
(127, 'front.cms_category', 'Danh mục CMS', 'front', 'vi'),
(128, 'front.cms_category', 'CMS category', 'front', 'en'),
(129, 'front.my_profile', 'Khách hàng', 'front', 'vi'),
(130, 'front.my_profile', 'My profile', 'front', 'en'),
(131, 'front.my_account', 'Tài khoản', 'front', 'vi'),
(132, 'front.my_account', 'My account', 'front', 'en'),
(133, 'front.account', 'Tài khoản', 'front', 'vi'),
(134, 'front.account', 'customer', 'front', 'en'),
(135, 'front.currency', 'Tiền tệ', 'front', 'vi'),
(136, 'front.currency', 'Currency', 'front', 'en'),
(137, 'front.language', 'Ngôn ngữ', 'front', 'vi'),
(138, 'front.language', 'Language', 'front', 'en'),
(139, 'front.cart', 'Giỏ hàng', 'front', 'vi'),
(140, 'front.cart', 'Cart', 'front', 'en'),
(141, 'front.compare', 'So sánh', 'front', 'vi'),
(142, 'front.compare', 'Compare', 'front', 'en'),
(143, 'front.compare_page', 'Sản phẩm so sánh', 'front', 'vi'),
(144, 'front.compare_page', 'Product compare', 'front', 'en'),
(145, 'front.wishlist', 'Yêu thích', 'front', 'vi'),
(146, 'front.wishlist', 'Wishlist', 'front', 'en'),
(147, 'front.wishlist_page', 'Sản phẩm yêu thich', 'front', 'vi'),
(148, 'front.wishlist_page', 'Product Wishlist', 'front', 'en'),
(149, 'front.login', 'Đăng nhập', 'front', 'vi'),
(150, 'front.login', 'Login', 'front', 'en'),
(151, 'front.logout', 'Đăng xuất', 'front', 'vi'),
(152, 'front.logout', 'Logout', 'front', 'en'),
(153, 'front.maintenace', 'Bảo trì', 'front', 'vi'),
(154, 'front.maintenace', 'Maintenace', 'front', 'en'),
(155, 'front.products_hot', 'Hot Products', 'front', 'en'),
(156, 'front.products_hot', 'Sản phẩm nổi bật', 'front', 'vi'),
(157, 'front.products_promotion', 'Promotion Products', 'front', 'en'),
(158, 'front.products_promotion', 'Sản phẩm khuyến mãi', 'front', 'vi'),
(159, 'front.products_special', 'Special products', 'front', 'en'),
(160, 'front.products_special', 'Sản phẩm đặc biệt', 'front', 'vi'),
(161, 'front.products_last_view', 'Last view products', 'front', 'en'),
(162, 'front.products_last_view', 'Sản phẩm mới xem', 'front', 'vi'),
(163, 'front.products_build', 'Product bundle', 'front', 'en'),
(164, 'front.products_build', 'Sản phẩm bộ', 'front', 'vi'),
(165, 'front.products_bundle', 'Product bundle', 'front', 'en'),
(166, 'front.products_bundle', 'Sản phẩm bộ', 'front', 'vi'),
(167, 'front.products_single', 'Product single', 'front', 'en'),
(168, 'front.products_single', 'Sản phẩm đơn', 'front', 'vi'),
(169, 'front.products_group', 'Product group', 'front', 'en'),
(170, 'front.products_group', 'Sản phẩm nhóm', 'front', 'vi'),
(171, 'front.products_new', 'New products', 'front', 'en'),
(172, 'front.products_new', 'Sản phẩm mới', 'front', 'vi'),
(173, 'front.products_recommend', 'Recommend products', 'front', 'en'),
(174, 'front.products_recommend', 'Sản phẩm đề xuất', 'front', 'vi'),
(175, 'front.product_detail', 'Product detail', 'front', 'en'),
(176, 'front.product_detail', 'Chi tiết sản phẩm', 'front', 'vi'),
(177, 'front.categories_store', 'Categories', 'front', 'en'),
(178, 'front.categories_store', 'Danh mục', 'front', 'vi'),
(179, 'front.result_item', 'Showing <b>:item_from</b>-<b>:item_to</b> of <b>:total</b> results</b>', 'front', 'en'),
(180, 'front.result_item', 'Hiển thị <b>:item_from</b>-<b>:item_to</b> của <b>:total</b> kết quả</b>', 'front', 'vi'),
(181, 'front.all_product', 'Tất cả sản phẩm', 'front', 'vi'),
(182, 'front.all_product', 'All products', 'front', 'en'),
(183, 'front.data_notfound', 'Không tìm thấy dữ liệu!', 'front', 'vi'),
(184, 'front.data_notfound', 'Data not found!', 'front', 'en'),
(185, 'front.data_not_found', 'Không tìm thấy dữ liệu!', 'front', 'vi'),
(186, 'front.data_not_found', 'Data not found!', 'front', 'en'),
(187, 'front.data_not_found_title', 'Không tìm thấy dữ liệu!', 'front', 'vi'),
(188, 'front.data_not_found_title', 'Data not found!', 'front', 'en'),
(189, 'front.page_notfound', 'Không tìm thấy trang!', 'front', 'vi'),
(190, 'front.page_notfound', 'Page not found!', 'front', 'en'),
(191, 'front.page_not_found', 'Không tìm thấy trang!', 'front', 'vi'),
(192, 'front.page_not_found', 'Page not found!', 'front', 'en'),
(193, 'front.flash_stock', 'Available', 'front', 'en'),
(194, 'front.flash_sold', 'Already Sold', 'front', 'en'),
(195, 'front.flash_title', 'Flash sale', 'front', 'en'),
(196, 'front.flash_stock', 'Còn lại', 'front', 'vi'),
(197, 'front.flash_sold', 'Đã bán', 'front', 'vi'),
(198, 'front.flash_title', 'Flash sale', 'front', 'vi'),
(199, 'front.products_best_seller', 'Sản phẩm thịnh hành', 'front', 'vi'),
(200, 'front.products_best_seller', 'Trending products', 'front', 'en'),
(201, 'front.products_trending', 'Sản phẩm bán chạy nhất', 'front', 'vi'),
(202, 'front.products_trending', 'Product best seller', 'front', 'en'),
(203, 'front.search_result', 'Kết quả tìm kiếm', 'front', 'vi'),
(204, 'front.search_result', 'Search result', 'front', 'en'),
(205, 'front.view_not_exist', 'Không có view :view', 'front', 'vi'),
(206, 'front.view_not_exist', 'View not found :view', 'front', 'en'),
(207, 'search.placeholder', 'Nhập từ khóa', 'search', 'vi'),
(208, 'search.placeholder', 'Input keyword', 'search', 'en'),
(209, 'store.deny_help_1', 'Sorry, this domain does not exist on the system!', 'store', 'en'),
(210, 'store.deny_help_1', 'Xin lỗi, tên miền này không có trên hệ thống!', 'store', 'vi'),
(211, 'store.deny_help_2', 'Return to home page', 'store', 'en'),
(212, 'store.deny_help_2', 'Trở về trang chủ', 'store', 'vi'),
(213, 'store.address', 'Address', 'store', 'en'),
(214, 'store.address', 'Địa chỉ', 'store', 'vi'),
(215, 'store.phone', 'Phone', 'store', 'en'),
(216, 'store.phone', 'Số điện thoại', 'store', 'vi'),
(217, 'store.hotline', 'Hotline', 'store', 'en'),
(218, 'store.hotline', 'Số điện thoại', 'store', 'vi'),
(219, 'store.email', 'Email', 'store', 'vi'),
(220, 'store.email', 'Email', 'store', 'en'),
(221, 'store.title', 'Tên cửa hàng', 'store', 'vi'),
(222, 'store.title', 'Store title', 'store', 'en'),
(223, 'store.keyword', 'Từ khóa', 'store', 'vi'),
(224, 'store.keyword', 'Keyword', 'store', 'en'),
(225, 'store.description', 'Mô tả', 'store', 'vi'),
(226, 'store.description', 'Description', 'store', 'en'),
(227, 'store.language', 'Ngôn ngữ', 'store', 'vi'),
(228, 'store.language', 'Language', 'store', 'en'),
(229, 'store.currency', 'Tiền tệ', 'store', 'vi'),
(230, 'store.currency', 'Currency', 'store', 'en'),
(231, 'store.timezone', 'Múi giờ', 'store', 'vi'),
(232, 'store.timezone', 'Timezone', 'store', 'en'),
(233, 'store.admin.template', 'Giao diện', 'store.admin', 'vi'),
(234, 'store.admin.template', 'Template', 'store.admin', 'en'),
(235, 'store.admin.domain', 'Tên miền', 'store.admin', 'vi'),
(236, 'store.admin.domain', 'Domain', 'store.admin', 'en'),
(237, 'store.admin.domain_help', 'Ví dụ: https://abc.com', 'store.admin', 'vi'),
(238, 'store.admin.domain_help', 'For example: https://abc.com', 'store.admin', 'en'),
(239, 'store.admin.domain_invalid', 'Tên miền không hợp lệ', 'store.admin', 'vi'),
(240, 'store.admin.domain_invalid', 'Domain invalid', 'store.admin', 'en'),
(241, 'store.warehouse', 'Nhà kho', 'store', 'vi'),
(242, 'store.warehouse', 'Warehouse', 'store', 'en'),
(243, 'store.office', 'Văn phòng', 'store', 'vi'),
(244, 'store.office', 'Office', 'store', 'en'),
(245, 'store.time_active', 'Thời gian làm việc', 'store', 'vi'),
(246, 'store.time_active', 'Time active', 'store', 'en'),
(247, 'store.long_phone', 'Số điện thoại', 'store', 'vi'),
(248, 'store.long_phone', 'Full phone', 'store', 'en'),
(249, 'store.logo', 'Logo', 'store', 'vi'),
(250, 'store.logo', 'Logo', 'store', 'en'),
(251, 'store.icon', 'Icon', 'store', 'vi'),
(252, 'store.icon', 'Icon', 'store', 'en'),
(253, 'store.maintenance', 'Bảo trì', 'store', 'vi'),
(254, 'store.maintenance', 'Maintenance', 'store', 'en'),
(255, 'store.admin.code', 'Store code', 'store.admin', 'en'),
(256, 'store.admin.code', 'Mã cửa hàng', 'store.admin', 'vi'),
(257, 'store.admin.css', 'Edit CSS', 'store.admin', 'en'),
(258, 'store.admin.css', 'Chỉnh sửa CSS', 'store.admin', 'vi'),
(259, 'store.admin.title', 'Thông tin cửa hàng', 'store.admin', 'vi'),
(260, 'store.admin.config_store', 'Cấu hình cửa hàng #:id', 'store.admin', 'vi'),
(261, 'store.admin.config_store_detail', 'Cấu hình cửa hàng', 'store.admin', 'vi'),
(262, 'store.admin.list', 'Danh sách cửa hàng', 'store.admin', 'vi'),
(263, 'store.admin.field', 'Các trường', 'store.admin', 'vi'),
(264, 'store.admin.value', 'Giá trị', 'store.admin', 'vi'),
(265, 'store.admin.config_mode', 'Cấu hình mode', 'store.admin', 'vi'),
(266, 'store.admin.config_display', 'Cấu hình hiển thị', 'store.admin', 'vi'),
(267, 'store.admin.config_customize', 'Cấu hình tùy chỉnh', 'store.admin', 'vi'),
(268, 'store.admin.status', 'Status', 'store.admin', 'vi'),
(269, 'store.admin.action', 'Hành động', 'store.admin', 'vi'),
(270, 'store.admin.add_new', 'Thêm mới', 'store.admin', 'vi'),
(271, 'store.admin.sort', 'Sắp xếp', 'store.admin', 'vi'),
(272, 'store.admin.search', 'Tìm kiếm', 'store.admin', 'vi'),
(273, 'store.admin.add_new_title', 'Tạo cửa hàng', 'store.admin', 'vi'),
(274, 'store.admin.add_new_des', 'Tạo mới một cửa hàng', 'store.admin', 'vi'),
(275, 'store.admin.config_info', 'Thông tin', 'store.admin', 'vi'),
(276, 'store.admin.config_product', 'Sản phẩm', 'store.admin', 'vi'),
(277, 'store.admin.config_customer', 'Khách hàng', 'store.admin', 'vi'),
(278, 'store.admin.config_email', 'Email', 'store.admin', 'vi'),
(279, 'store.admin.config_url', 'URL', 'store.admin', 'vi'),
(280, 'store.admin.config_api', 'API', 'store.admin', 'vi'),
(281, 'store.admin.config_order', 'Đơn hàng', 'store.admin', 'vi'),
(282, 'store.admin.config_other', 'Khác', 'store.admin', 'vi'),
(283, 'store.admin.switch_store', 'Chuyển đổi cửa hàng', 'store.admin', 'vi'),
(284, 'store.admin.config_admin_other', 'Cấu hình admin', 'store.admin', 'vi'),
(285, 'store.admin.active_strict', 'Kích hoạt chế độ kiểm tra tên miền', 'store.admin', 'vi'),
(286, 'store.admin.active_domain', 'Kích hoạt tên miền', 'store.admin', 'vi'),
(287, 'store.admin.active_maintain', 'Kích hoạt chế độ bảo trì', 'store.admin', 'vi'),
(288, 'store.admin.domain_exist', 'Tên miền đã có rồi', 'store.admin', 'vi'),
(289, 'store.admin.code_exist', 'Mã code đã có rồi', 'store.admin', 'vi'),
(290, 'store.admin.value_cannot_change', 'Giá trị này không thể thay đổi', 'store.admin', 'vi'),
(291, 'store.admin.title', 'Store infomation', 'store.admin', 'en'),
(292, 'store.admin.config_store', 'Config store #:id', 'store.admin', 'en'),
(293, 'store.admin.config_store_detail', 'Config store', 'store.admin', 'en'),
(294, 'store.admin.list', 'Store list', 'store.admin', 'en'),
(295, 'store.admin.field', 'Field', 'store.admin', 'en'),
(296, 'store.admin.value', 'Value', 'store.admin', 'en'),
(297, 'store.admin.config_mode', 'Store mode', 'store.admin', 'en'),
(298, 'store.admin.config_display', 'Store display', 'store.admin', 'en'),
(299, 'store.admin.config_customize', 'Config customize', 'store.admin', 'en'),
(300, 'store.admin.status', 'Status', 'store.admin', 'en'),
(301, 'store.admin.action', 'Action', 'store.admin', 'en'),
(302, 'store.admin.sort', 'Sort', 'store.admin', 'en'),
(303, 'store.admin.search', 'Search', 'store.admin', 'en'),
(304, 'store.admin.add_new', 'Add new', 'store.admin', 'en'),
(305, 'store.admin.add_new_title', 'Add new store', 'store.admin', 'en'),
(306, 'store.admin.add_new_des', 'Create a new store', 'store.admin', 'en'),
(307, 'store.admin.config_info', 'Infomation', 'store.admin', 'en'),
(308, 'store.admin.config_order', 'Order', 'store.admin', 'en'),
(309, 'store.admin.config_product', 'Product', 'store.admin', 'en'),
(310, 'store.admin.config_customer', 'Customer', 'store.admin', 'en'),
(311, 'store.admin.config_email', 'Email', 'store.admin', 'en'),
(312, 'store.admin.config_url', 'URL', 'store.admin', 'en'),
(313, 'store.admin.config_api', 'API', 'store.admin', 'en'),
(314, 'store.admin.config_other', 'Other', 'store.admin', 'en'),
(315, 'store.admin.switch_store', 'Switch store', 'store.admin', 'en'),
(316, 'store.admin.config_admin_other', 'Config admin', 'store.admin', 'en'),
(317, 'store.admin.active_strict', 'Activate domain check mode', 'store.admin', 'en'),
(318, 'store.admin.active_domain', 'Activate the domain name', 'store.admin', 'en'),
(319, 'store.admin.active_maintain', 'Activate maintenance mode', 'store.admin', 'en'),
(320, 'store.admin.domain_exist', 'Domain exist already', 'store.admin', 'en'),
(321, 'store.admin.code_exist', 'Code exist already', 'store.admin', 'en'),
(322, 'store.admin.value_cannot_change', 'This value cannot be changed', 'store.admin', 'en'),
(323, 'store.display.product_top', 'Top product', 'store.admin', 'en'),
(324, 'store.display.product_top', 'Top sản phẩm', 'store.admin', 'vi'),
(325, 'store.display.list_product', 'List product', 'store.admin', 'en'),
(326, 'store.display.list_product', 'Danh sách sản phẩm', 'store.admin', 'vi'),
(327, 'store.display.relation_product', 'Relation product', 'store.admin', 'en'),
(328, 'store.display.relation_product', 'Sản phẩm liên quan', 'store.admin', 'vi'),
(329, 'store.display.viewed_product', 'Product viewed', 'store.admin', 'en'),
(330, 'store.display.viewed_product', 'Sản phẩm đã xem', 'store.admin', 'vi'),
(331, 'store.display.item_list', 'List item', 'store.admin', 'en'),
(332, 'store.display.item_list', 'Danh sách item', 'store.admin', 'vi'),
(333, 'store.display.item_top', 'Top item', 'store.admin', 'en'),
(334, 'store.display.item_top', 'Top item', 'store.admin', 'vi'),
(335, 'cart.checkout', 'Checkout', 'cart', 'en'),
(336, 'cart.checkout', 'Thanh toán', 'cart', 'vi'),
(337, 'cart.back_to_cart', 'Back to cart', 'cart', 'en'),
(338, 'cart.back_to_cart', 'Trở lại giỏ hàng', 'cart', 'vi'),
(339, 'cart.confirm', 'Confirm', 'cart', 'en'),
(340, 'cart.confirm', 'Xác nhận', 'cart', 'vi'),
(341, 'cart.cart_title', 'Shopping cart', 'cart', 'en'),
(342, 'cart.cart_title', 'Trang giỏ hàng', 'cart', 'vi'),
(343, 'cart.page_title', 'Shopping cart', 'cart', 'en'),
(344, 'cart.page_title', 'Trang giỏ hàng', 'cart', 'vi'),
(345, 'cart.back_to_shop', 'Back to shop', 'cart', 'en'),
(346, 'cart.back_to_shop', 'Trở về của hàng', 'cart', 'vi'),
(347, 'cart.remove_all', 'Remove cart', 'cart', 'en'),
(348, 'cart.remove_all', 'Xóa giỏ hàng', 'cart', 'vi'),
(349, 'cart.minimum_value', 'Minimum :value items', 'cart', 'en'),
(350, 'cart.minimum_value', 'Tối thiểu :value item', 'cart', 'vi'),
(351, 'cart.note', 'Note', 'cart', 'en'),
(352, 'cart.note', 'Ghi chú', 'cart', 'vi'),
(353, 'cart.coupon', 'Coupon', 'cart', 'en'),
(354, 'cart.coupon', 'Mã giảm giá', 'cart', 'vi'),
(355, 'cart.remove_coupon', 'Remove coupon', 'cart', 'en'),
(356, 'cart.remove_coupon', 'Xóa mã giảm giá', 'cart', 'vi'),
(357, 'cart.coupon_empty', 'Coupon empty', 'cart', 'en'),
(358, 'cart.coupon_empty', 'Không có mã giảm giá', 'cart', 'vi'),
(359, 'cart.apply', 'Apply', 'cart', 'en'),
(360, 'cart.apply', 'Áp dụng', 'cart', 'vi'),
(361, 'cart.change_address', 'Change address', 'cart', 'en'),
(362, 'cart.change_address', 'Thay đổi địa chỉ', 'cart', 'vi'),
(363, 'cart.add_new_address', 'Add new address', 'cart', 'en'),
(364, 'cart.add_new_address', 'Thêm địa chỉ mới', 'cart', 'vi'),
(365, 'cart.page_wishlist_title', 'Page wishlist', 'cart', 'en'),
(366, 'cart.page_wishlist_title', 'Trang sản phẩm yêu thich', 'cart', 'vi'),
(367, 'cart.page_compare_title', 'Page compare', 'cart', 'en'),
(368, 'cart.page_compare_title', 'Trang so sánh sản phẩm', 'cart', 'vi'),
(369, 'cart.shipping_address', 'Shipping address', 'cart', 'en'),
(370, 'cart.shipping_address', 'Địa chỉ giao hàng', 'cart', 'vi'),
(371, 'cart.payment_address', 'Payment address', 'cart', 'en'),
(372, 'cart.payment_address', 'Địa chỉ thanh toán', 'cart', 'vi'),
(373, 'cart.payment_method', 'Phương thức thanh toán', 'cart', 'vi'),
(374, 'cart.payment_method', 'Payment method', 'cart', 'en'),
(375, 'cart.shipping_method', 'Phương thức vận chuyển', 'cart', 'vi'),
(376, 'cart.shipping_method', 'Shipping method', 'cart', 'en'),
(377, 'cart.country', 'Country', 'cart', 'en'),
(378, 'cart.country', 'Quốc gia', 'cart', 'vi'),
(379, 'cart.company', 'Công ty', 'cart', 'vi'),
(380, 'cart.company', 'Company', 'cart', 'en'),
(381, 'cart.address3', 'Địa chỉ nhà', 'cart', 'vi'),
(382, 'cart.address3', 'Address 3', 'cart', 'en'),
(383, 'cart.address2', 'Quận/Huyện', 'cart', 'vi'),
(384, 'cart.address2', 'Address 2', 'cart', 'en'),
(385, 'cart.address1', 'Tỉnh/Thành', 'cart', 'vi'),
(386, 'cart.address1', 'Address 1', 'cart', 'en'),
(387, 'cart.postcode', 'Mã bưu điện', 'cart', 'vi'),
(388, 'cart.postcode', 'Post code', 'cart', 'en'),
(389, 'cart.phone', 'Phone', 'cart', 'en'),
(390, 'cart.phone', 'Điện thoại', 'cart', 'vi'),
(391, 'cart.last_name_kana', 'Họ kana', 'cart', 'vi'),
(392, 'cart.last_name_kana', 'Last name kana', 'cart', 'en'),
(393, 'cart.first_name_kana', 'First name kana', 'cart', 'en'),
(394, 'cart.first_name_kana', 'Tên Kana', 'cart', 'vi'),
(395, 'cart.full_name', 'Full name', 'cart', 'en'),
(396, 'cart.full_name', 'Tên đầy đủ', 'cart', 'vi'),
(397, 'cart.name', 'Name', 'cart', 'en'),
(398, 'cart.name', 'Tên', 'cart', 'vi'),
(399, 'cart.midle_name', 'Tên đệm', 'cart', 'vi'),
(400, 'cart.midle_name', 'Midle name', 'cart', 'en'),
(401, 'cart.last_name', 'Họ', 'cart', 'vi'),
(402, 'cart.last_name', 'Last name', 'cart', 'en'),
(403, 'cart.first_name', 'Tên', 'cart', 'vi'),
(404, 'cart.first_name', 'First name', 'cart', 'en'),
(405, 'cart.email', 'Email', 'cart', 'vi'),
(406, 'cart.email', 'Email', 'cart', 'en'),
(407, 'cart.sex', 'Giới tính', 'cart', 'vi'),
(408, 'cart.sex', 'Sex', 'cart', 'en'),
(409, 'cart.birthday', 'Ngày sinh', 'cart', 'vi'),
(410, 'cart.birthday', 'Birthday', 'cart', 'en'),
(411, 'cart.validation.shippingMethod_required', 'Shipping method required', 'cart', 'en'),
(412, 'cart.validation.shippingMethod_required', 'Giao thức giao hàng là bắt buộc', 'cart', 'vi'),
(413, 'cart.validation.paymentMethod_required', 'Payment method required', 'cart', 'en'),
(414, 'cart.validation.paymentMethod_required', 'Phương thức thanh toán là bắt buộc', 'cart', 'vi'),
(415, 'cart.add_to_cart_success', 'Thêm vào :instance thành công', 'cart', 'vi'),
(416, 'cart.add_to_cart_success', 'Add to :instance success', 'cart', 'en'),
(417, 'cart.item_exist_in_cart', 'This item is already in stock in the :instance', 'cart', 'en'),
(418, 'cart.item_exist_in_cart', 'Item này đã có trong :instance rồi', 'cart', 'vi'),
(419, 'cart.item_over_qty', 'The number of :sku must not exceed :qty', 'cart', 'en'),
(420, 'cart.item_over_qty', 'Số lượng của :sku không được vượt quá :qty', 'cart', 'vi'),
(421, 'cart.have_error', 'Có lỗi xảy ra. Vui lòng kiểm tra lại.', 'cart', 'vi'),
(422, 'cart.have_error', 'Have an error. Please check again.', 'cart', 'en'),
(423, 'cart.cart_store_id_notfound', 'Không tìm thấy ID cửa hàng.', 'cart', 'vi'),
(424, 'cart.cart_store_id_notfound', 'Store ID not found', 'cart', 'en'),
(425, 'cart.cart_empty', 'Giỏ hàng rỗng.', 'cart', 'vi'),
(426, 'cart.cart_empty', 'The shopping cart is empty', 'cart', 'en'),
(427, 'cart.cart_store_empty', 'Giỏ hàng trong shop rỗng.', 'cart', 'vi'),
(428, 'cart.cart_store_empty', 'The shopping cart in the shop is empty', 'cart', 'en'),
(429, 'checkout.title', 'Checkout', 'checkout', 'en'),
(430, 'checkout.title', 'Xác nhận thanh toán', 'checkout', 'vi'),
(431, 'checkout.order_success_msg', 'Thank you for your purchase!', 'checkout', 'en'),
(432, 'checkout.order_success_msg', 'Cảm ơn vì đơn hàng của bạn!', 'checkout', 'vi'),
(433, 'checkout.order_success_order_info', 'Your order #:order_id', 'checkout', 'en'),
(434, 'checkout.order_success_order_info', 'Đơn hàng của bạn là #:order_id', 'checkout', 'vi'),
(435, 'checkout.page_title', 'Checkout page', 'checkout', 'en'),
(436, 'checkout.page_title', 'Xác nhận thanh toán', 'checkout', 'vi'),
(437, 'checkout.success_title', 'Order success', 'checkout', 'en'),
(438, 'checkout.success_title', 'Đặt hàng thành công', 'checkout', 'vi'),
(439, 'product.name', 'Name', 'product', 'en'),
(440, 'product.name', 'Tên', 'product', 'vi'),
(441, 'product.keyword', 'Keyword ', 'product', 'en'),
(442, 'product.keyword', 'Từ khóa', 'product', 'vi'),
(443, 'product.content', 'Main content', 'product', 'en'),
(444, 'product.content', 'Nội dung chính', 'product', 'vi'),
(445, 'product.sku', 'SKU code', 'product', 'en'),
(446, 'product.sku', 'Mã SKU', 'product', 'vi'),
(447, 'product.stock', 'Stock', 'product', 'en'),
(448, 'product.stock', 'Số lượng trong kho', 'product', 'vi'),
(449, 'product.cost', 'Price cost', 'product', 'en'),
(450, 'product.cost', 'Giá cost', 'product', 'vi'),
(451, 'product.price', 'Price', 'product', 'en'),
(452, 'product.price', 'Giá', 'product', 'vi'),
(453, 'product.image', 'Image', 'product', 'en'),
(454, 'product.image', 'Hình ảnh', 'product', 'vi'),
(455, 'product.view', 'Viewed', 'product', 'en'),
(456, 'product.view', 'Lượt xem', 'product', 'vi'),
(457, 'product.kind', 'Kind', 'product', 'en'),
(458, 'product.kind', 'Kiểu', 'product', 'vi'),
(459, 'product.sold', 'Sold', 'product', 'en'),
(460, 'product.sold', 'Đã bán', 'product', 'vi'),
(461, 'product.minimum', 'Minimum', 'product', 'en'),
(462, 'product.minimum', 'Tối thiểu', 'product', 'vi'),
(463, 'product.minimum_help', 'Minimum quantity to order', 'product', 'en'),
(464, 'product.minimum_help', 'Số lượng tối thiểu đề đặt hàng', 'product', 'vi'),
(465, 'product.width', 'Width', 'product', 'en'),
(466, 'product.width', 'Chiều rộng', 'product', 'vi'),
(467, 'product.status', 'Status', 'product', 'en'),
(468, 'product.status', 'Trạng thái', 'product', 'vi'),
(469, 'product.quantity', 'Quantity', 'product', 'en'),
(470, 'product.quantity', 'Số lượng', 'product', 'vi'),
(471, 'product.weight', 'Weight', 'product', 'en'),
(472, 'product.weight', 'Khối lượng', 'product', 'vi'),
(473, 'product.length', 'Length', 'product', 'en'),
(474, 'product.length', 'Kích thước', 'product', 'vi'),
(475, 'product.height', 'Height', 'product', 'en'),
(476, 'product.height', 'Chiều cao', 'product', 'vi'),
(477, 'product.property', 'Property', 'product', 'en'),
(478, 'product.property', 'Đặc tính', 'product', 'vi'),
(479, 'product.download_path', 'Url or path to file', 'product', 'en'),
(480, 'product.download_path', 'Liên kết hoặc đường dẫn tới tập tin', 'product', 'vi'),
(481, 'product.attribute', 'Attribute', 'product', 'en'),
(482, 'product.attribute', 'Thuộc tính', 'product', 'vi'),
(483, 'product.tax', 'Tax', 'product', 'en'),
(484, 'product.tax', 'Thuế', 'product', 'vi'),
(485, 'product.price_group', 'Click view price', 'product', 'en'),
(486, 'product.price_group', 'Bấm xem giá', 'product', 'vi'),
(487, 'product.price_group_chose', 'Click choose product', 'product', 'en'),
(488, 'product.price_group_chose', 'Bấm chọn sản phẩm', 'product', 'vi'),
(489, 'product.subtotal', 'Subtotal', 'product', 'en'),
(490, 'product.subtotal', 'Giá sản phẩm', 'product', 'vi'),
(491, 'product.sub_total', 'Subtotal', 'product', 'en'),
(492, 'product.sub_total', 'Giá sản phẩm', 'product', 'vi'),
(493, 'product.total_price', 'Total price', 'product', 'en'),
(494, 'product.total_price', 'Tổng tiền', 'product', 'vi'),
(495, 'product.stock_status', 'Stock status', 'product', 'en'),
(496, 'product.stock_status', 'Trạng thái kho', 'product', 'vi'),
(497, 'product.out_stock', 'Out of stock', 'product', 'en'),
(498, 'product.out_stock', 'Hết hàng', 'product', 'vi'),
(499, 'product.in_stock', 'In stock', 'product', 'en'),
(500, 'product.in_stock', 'Còn hàng', 'product', 'vi'),
(501, 'product.date_available', 'Date available', 'product', 'en'),
(502, 'product.date_available', 'Ngày bán', 'product', 'vi'),
(503, 'product.category', 'Category', 'product', 'en'),
(504, 'product.category', 'Danh mục', 'product', 'vi'),
(505, 'product.category_store', 'Category store', 'product', 'en'),
(506, 'product.category_store', 'Danh mục riêng', 'product', 'vi'),
(507, 'product.brand', 'Brand', 'product', 'en'),
(508, 'product.brand', 'Nhãn hàng', 'product', 'vi'),
(509, 'product.supplier', 'Supplier', 'product', 'en'),
(510, 'product.supplier', 'Nhà cung cấp', 'product', 'vi'),
(511, 'product.kind_group', 'Group', 'product', 'en'),
(512, 'product.kind_group', 'Sản phẩm nhóm', 'product', 'vi'),
(513, 'product.kind_bundle', 'Bundle', 'product', 'en'),
(514, 'product.kind_bundle', 'Sản phẩm bộ', 'product', 'vi'),
(515, 'product.kind_single', 'Single', 'product', 'en'),
(516, 'product.kind_single', 'Sản phẩm đơn', 'product', 'vi'),
(517, 'product.description', 'Description', 'product', 'en'),
(518, 'product.description', 'Mô tả', 'product', 'vi'),
(519, 'product.product_detail', 'Product detail', 'product', 'en'),
(520, 'product.product_detail', 'Chi tiết sản phẩm', 'product', 'vi'),
(521, 'product.dont_allow_sale', 'Product :sku dont allow for sale', 'product', 'en'),
(522, 'product.dont_allow_sale', 'Sản phẩm :sku không bán', 'product', 'vi'),
(523, 'product.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'product', 'en'),
(524, 'product.alias_validate', 'Tối đa 100 kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'product', 'vi'),
(525, 'product.sku_unique', 'SKU already exists', 'product', 'en'),
(526, 'product.sku_unique', 'SKU đã có rồi', 'product', 'vi'),
(527, 'product.product_specifications', 'Additional infomation', 'product', 'en'),
(528, 'product.product_specifications', 'Thông tin bổ sung', 'product', 'vi'),
(529, 'product.alias', 'Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'product', 'en'),
(530, 'product.alias', 'URL tùy chỉnh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'product', 'vi'),
(531, 'product.sku_validate', 'Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'product', 'en'),
(532, 'product.sku_validate', 'Chỉ sử dụng kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'product', 'vi'),
(533, 'product.price_promotion', 'Price promotion', 'product', 'en'),
(534, 'product.price_promotion', 'Giá khuyến mãi', 'product', 'vi'),
(535, 'product.price_promotion_start', 'Start date', 'product', 'en'),
(536, 'product.price_promotion_start', 'Ngày bắt đầu', 'product', 'vi'),
(537, 'product.price_promotion_end', 'End date', 'product', 'en'),
(538, 'product.price_promotion_end', 'Ngày kết thúc', 'product', 'vi'),
(539, 'product.edit_product', 'Edit product', 'product', 'en'),
(540, 'product.edit_product', 'Chỉnh sửa sản phẩm', 'product', 'vi'),
(541, 'product.admin.title', 'Quản lý sản phẩm', 'product.admin', 'vi'),
(542, 'product.admin.create_success', 'Tạo item thành công!', 'product.admin', 'vi'),
(543, 'product.admin.edit_success', 'chỉnh sửa item thành công!', 'product.admin', 'vi'),
(544, 'product.admin.list', 'Danh sách sản phẩm', 'product.admin', 'vi'),
(545, 'product.admin.action', 'Hành động', 'product.admin', 'vi'),
(546, 'product.admin.delete', 'Xóa', 'product.admin', 'vi'),
(547, 'product.admin.edit', 'Sửa', 'product.admin', 'vi'),
(548, 'product.admin.add_new', 'Thêm mới', 'product.admin', 'vi'),
(549, 'product.admin.add_new_title', 'Tạo sản phẩm', 'product.admin', 'vi'),
(550, 'product.admin.add_new_title_build', 'Tạo sản phẩm bộ', 'product.admin', 'vi'),
(551, 'product.admin.add_new_title_group', 'Tạo sản phẩm nhóm', 'product.admin', 'vi'),
(552, 'product.admin.add_new_des', 'Tạo mới một sản phẩm', 'product.admin', 'vi'),
(553, 'product.admin.export', 'Xuất', 'product.admin', 'vi'),
(554, 'product.admin.refresh', 'Làm mới', 'product.admin', 'vi'),
(555, 'product.admin.select_kind', 'Chọn loại sản phẩm', 'product.admin', 'vi'),
(556, 'product.admin.select_supplier', 'Chọn nhà cung cấp', 'product.admin', 'vi'),
(557, 'product.admin.sort', 'Thứ tự', 'product.admin', 'vi'),
(558, 'product.admin.select_category', 'Chọn danh mục', 'product.admin', 'vi'),
(559, 'product.admin.select_store', 'Chọn cửa hàng', 'product.admin', 'vi'),
(560, 'product.admin.select_product_in_group', 'Chọn sản phẩm trong nhóm', 'product.admin', 'vi'),
(561, 'product.admin.select_product_in_build', 'Chọn sản phẩm trong bộ', 'product.admin', 'vi'),
(562, 'product.admin.add_product', 'Thêm sản phẩm', 'product.admin', 'vi'),
(563, 'product.admin.add_attribute', 'Thêm thuộc tính', 'product.admin', 'vi'),
(564, 'product.admin.add_attribute_place', 'Nhập một thuộc tính', 'product.admin', 'vi'),
(565, 'product.admin.add_sub_image', 'Thêm ảnh', 'product.admin', 'vi'),
(566, 'product.admin.add_product_promotion', 'Thêm giá khuyến mãi', 'product.admin', 'vi'),
(567, 'product.admin.choose_image', 'Chọn hình', 'product.admin', 'vi'),
(568, 'product.admin.add_price_place', 'Thêm tiền', 'product.admin', 'vi'),
(569, 'product.admin.setting_info', 'Thiết lập sản phẩm', 'product.admin', 'vi'),
(570, 'product.admin.config_info', 'Cấu hình thông tin', 'product.admin', 'vi'),
(571, 'product.admin.title', 'Product manager', 'product.admin', 'en'),
(572, 'product.admin.create_success', 'Create new item success!', 'product.admin', 'en'),
(573, 'product.admin.edit_success', 'Edit item success!', 'product.admin', 'en'),
(574, 'product.admin.list', 'Product list', 'product.admin', 'en'),
(575, 'product.admin.action', 'Action', 'product.admin', 'en'),
(576, 'product.admin.delete', 'Delete', 'product.admin', 'en'),
(577, 'product.admin.edit', 'Edit', 'product.admin', 'en'),
(578, 'product.admin.add_new', 'Add new', 'product.admin', 'en'),
(579, 'product.admin.add_new_title', 'Add new product', 'product.admin', 'en'),
(580, 'product.admin.add_new_title_build', 'Add new product build', 'product.admin', 'en'),
(581, 'product.admin.add_new_title_group', 'Add new product group', 'product.admin', 'en'),
(582, 'product.admin.add_new_des', 'Create a new product', 'product.admin', 'en'),
(583, 'product.admin.export', 'Export', 'product.admin', 'en'),
(584, 'product.admin.refresh', 'Refresh', 'product.admin', 'en'),
(585, 'product.admin.select_kind', 'Select product kind', 'product.admin', 'en'),
(586, 'product.admin.select_supplier', 'Select supplier', 'product.admin', 'en'),
(587, 'product.admin.result_item', 'Showing <b>:item_from</b> to <b>:item_to</b> of <b>:total</b> items</b>', 'product.admin', 'en'),
(588, 'product.admin.sort', 'Sort', 'product.admin', 'en'),
(589, 'product.admin.select_category', 'Select category', 'product.admin', 'en'),
(590, 'product.admin.select_store', 'Select store', 'product.admin', 'en'),
(591, 'product.admin.select_product_in_group', 'Select products in group', 'product.admin', 'en'),
(592, 'product.admin.select_product_in_build', 'Select products build', 'product.admin', 'en'),
(593, 'product.admin.select_weight', 'Select weight class', 'product.admin', 'en'),
(594, 'product.admin.select_weight', 'Chọn đơn vị khối lượng', 'product.admin', 'vi'),
(595, 'product.admin.select_length', 'Select length class', 'product.admin', 'en'),
(596, 'product.admin.select_length', 'Chọn đơn vị kích thước', 'product.admin', 'vi'),
(597, 'product.admin.add_product', 'Add product', 'product.admin', 'en'),
(598, 'product.admin.add_attribute', 'Add attribute', 'product.admin', 'en'),
(599, 'product.admin.add_attribute_place', 'Add an attribute value', 'product.admin', 'en'),
(600, 'product.admin.add_sub_image', 'Add more images', 'product.admin', 'en'),
(601, 'product.admin.add_product_promotion', 'Add promotion price', 'product.admin', 'en'),
(602, 'product.admin.choose_image', 'Choose', 'product.admin', 'en'),
(603, 'product.admin.add_price_place', 'Add price', 'product.admin', 'en'),
(604, 'product.admin.setting_info', 'Setting product', 'product.admin', 'en'),
(605, 'product.admin.config_info', 'Config info product', 'product.admin', 'en'),
(606, 'product.admin.search_place', 'Search Name, SKU', 'product.admin', 'en'),
(607, 'product.admin.search_place', 'Tìm tên và SKU', 'product.admin', 'vi'),
(608, 'product.admin.length_class', 'Length class', 'product.admin', 'en'),
(609, 'product.admin.length_class', 'Đơn vị kích thước', 'product.admin', 'vi'),
(610, 'product.admin.weight_class', 'Weight class', 'product.admin', 'en'),
(611, 'product.admin.weight_class', 'Đơn vị khối lượng', 'product.admin', 'vi'),
(612, 'product.admin.cant_remove_child', 'Please delete product parent before remove this product', 'product.admin', 'en'),
(613, 'product.admin.cant_remove_child', 'Xóa các sản phẩm cha trước khi xóa sản phẩm này', 'product.admin', 'vi'),
(614, 'product.config_manager.title', 'Config product', 'product.admin', 'en'),
(615, 'product.config_manager.field', 'Field config', 'product.admin', 'en'),
(616, 'product.config_manager.value', 'Value', 'product.admin', 'en'),
(617, 'product.config_manager.brand', 'Use BRAND', 'product.admin', 'en'),
(618, 'product.config_manager.supplier', 'Use SUPPLIER', 'product.admin', 'en'),
(619, 'product.config_manager.price', 'Use PRICE', 'product.admin', 'en'),
(620, 'product.config_manager.stock', 'Use STOCK', 'product.admin', 'en'),
(621, 'product.config_manager.cost', 'Use COST PRICE', 'product.admin', 'en'),
(622, 'product.config_manager.type', 'Use TYPE (new, hot,...)', 'product.admin', 'en'),
(623, 'product.config_manager.kind', 'Use STRUCTURE TYPE (single, group, bundle)', 'product.admin', 'en'),
(624, 'product.config_manager.property', 'Use Product Property: download, property, physical', 'product.admin', 'en'),
(625, 'product.config_manager.attribute', 'Use ATTRIBUTE (color, size,...)', 'product.admin', 'en'),
(626, 'product.config_manager.promotion', 'Use PROMOTION PRICE', 'product.admin', 'en'),
(627, 'product.config_manager.available', 'Use Time to start selling', 'product.admin', 'en'),
(628, 'product.config_manager.tax', 'Tax configuration', 'product.admin', 'en'),
(629, 'product.config_manager.product_display_price_include_tax', 'Display price include tax', 'product.admin', 'en'),
(630, 'product.config_manager.weight', 'Use Weight', 'product.admin', 'en'),
(631, 'product.config_manager.length', 'Use Length', 'product.admin', 'en'),
(632, 'product.config_manager.required', 'Required', 'product.admin', 'en'),
(633, 'product.config_manager.title', ' Cấu hình sản phẩm', 'product.admin', 'vi'),
(634, 'product.config_manager.field', 'Trường cấu hình', 'product.admin', 'vi'),
(635, 'product.config_manager.value', 'Giá trị', 'product.admin', 'vi'),
(636, 'product.config_manager.brand', 'Sử dụng NHÃN HIỆU', 'product.admin', 'vi'),
(637, 'product.config_manager.supplier', 'Sử dụng NHÀ CUNG CẤP', 'product.admin', 'vi'),
(638, 'product.config_manager.price', 'Sử dụng GIÁ', 'product.admin', 'vi'),
(639, 'product.config_manager.cost', 'Sử dụng GIÁ GỐC', 'product.admin', 'vi'),
(640, 'product.config_manager.stock', 'Sử dụng SỐ LƯỢNG', 'product.admin', 'vi'),
(641, 'product.config_manager.type', 'Sử dụng PHÂN LOẠI TÌNH TRẠNG(mới, hot,...)', 'product.admin', 'vi'),
(642, 'product.config_manager.kind', 'Sử dụng PHÂN LOẠI THEO CẤU TRÚC (sản phẩm đơn, nhóm, bộ)', 'product.admin', 'vi'),
(643, 'product.config_manager.property', 'Sử dụng PHÂN LOẠI ĐẶC TÍNH: download, vật lý, dịch vụ,..', 'product.admin', 'vi'),
(644, 'product.config_manager.attribute', 'Sử dụng THUỘC TÍNH (màu sắc, kích thước,...)', 'product.admin', 'vi'),
(645, 'product.config_manager.promotion', 'Sử dụng GIÁ KHUYẾN MÃI', 'product.admin', 'vi'),
(646, 'product.config_manager.available', 'Sử dụng THỜI GIAN MỞ BÁN', 'product.admin', 'vi'),
(647, 'product.config_manager.tax', 'Cấu hình thuế', 'product.admin', 'vi'),
(648, 'product.config_manager.product_display_price_include_tax', 'Hiển thị giá bao gồm thuế', 'product.admin', 'vi'),
(649, 'product.config_manager.weight', 'Sử dụng Khối lượng', 'product.admin', 'vi'),
(650, 'product.config_manager.length', 'Sử dụng Kích thước', 'product.admin', 'vi'),
(651, 'product.config_manager.required', 'Bắt buộc', 'product.admin', 'vi'),
(652, 'product.config_manager.show_date_available', 'Hiện thời gian bán hàng', 'product.admin', 'vi'),
(653, 'product.config_manager.show_date_available', 'Display date available', 'product.admin', 'en'),
(654, 'product.config_manager.product_display_out_of_stock', 'Hiện sản phẩm hết hàng', 'product.admin', 'vi'),
(655, 'product.config_manager.product_display_out_of_stock', 'Display product out of stock', 'product.admin', 'en'),
(656, 'customer.my_account', 'My page', 'customer', 'en'),
(657, 'customer.my_account', 'Trang cá nhân', 'customer', 'vi'),
(658, 'customer.password', 'Password', 'customer', 'en'),
(659, 'customer.password', 'Mật khẩu', 'customer', 'vi'),
(660, 'customer.password_new', 'New password', 'customer', 'en'),
(661, 'customer.password_new', 'Mật khẩu mới', 'customer', 'vi'),
(662, 'customer.password_old', 'Old password', 'customer', 'en'),
(663, 'customer.password_old', 'Mật khẩu cũ', 'customer', 'vi'),
(664, 'customer.password_old_required', 'Old password required', 'customer', 'en'),
(665, 'customer.password_old_required', 'Mật khẩu cũ là bắt buộc', 'customer', 'vi'),
(666, 'customer.password_old_notcorrect', 'Old password incorrect', 'customer', 'en'),
(667, 'customer.password_old_notcorrect', 'Mật khẩu cũ chưa đúng', 'customer', 'vi'),
(668, 'customer.remember_me', 'Remember', 'customer', 'en'),
(669, 'customer.remember_me', 'Ghi nhớ', 'customer', 'vi'),
(670, 'customer.change_password', 'Change password', 'customer', 'en'),
(671, 'customer.change_password', 'Đổi mật khẩu', 'customer', 'vi'),
(672, 'customer.update_success', 'Update success', 'customer', 'en'),
(673, 'customer.update_success', 'Cập nhật thành công', 'customer', 'vi'),
(674, 'customer.update_infomation', 'Update infomation', 'customer', 'en'),
(675, 'customer.update_infomation', 'Cập nhật thông tin', 'customer', 'vi'),
(676, 'customer.change_infomation', 'Change infomation', 'customer', 'en'),
(677, 'customer.change_infomation', 'Thay đổi thông tin', 'customer', 'vi'),
(678, 'customer.order_history', 'Order history', 'customer', 'en'),
(679, 'customer.order_history', 'Lịch sử mua hàng', 'customer', 'vi'),
(680, 'customer.order_detail', 'Order detail', 'customer', 'en'),
(681, 'customer.order_detail', 'Chi tiết đơn hàng', 'customer', 'vi'),
(682, 'customer.address_list', 'Address list', 'customer', 'en'),
(683, 'customer.address_list', 'Danh sách địa chỉ', 'customer', 'vi'),
(684, 'customer.address_detail', 'Address detail', 'customer', 'en'),
(685, 'customer.address_detail', 'Danh sách địa chỉ', 'customer', 'vi'),
(686, 'customer.address_default', 'Address default', 'customer', 'en'),
(687, 'customer.address_default', 'Địa chỉ mặc định', 'customer', 'vi'),
(688, 'customer.address_set_default', 'Set address default', 'customer', 'en'),
(689, 'customer.address_set_default', 'Đặt địa chỉ mặc định', 'customer', 'vi'),
(690, 'customer.delete_address_success', 'Delete address success', 'customer', 'en'),
(691, 'customer.delete_address_success', 'Xóa địa chỉ thành công', 'customer', 'vi'),
(692, 'customer.verify_email.title_page', 'Email verification', 'customer', 'en'),
(693, 'customer.verify_email.title_page', 'Xác thực email', 'customer', 'vi'),
(694, 'customer.verify_email.link_invalid', 'Link invalid', 'customer', 'en'),
(695, 'customer.verify_email.link_invalid', 'Link không hợp lệ', 'customer', 'vi'),
(696, 'customer.verify_email.verify_success', 'Successful verification', 'customer', 'en'),
(697, 'customer.verify_email.verify_success', 'Xác thực thành công', 'customer', 'vi'),
(698, 'customer.verify_email.msg_sent', 'Verification link sent.', 'customer', 'en'),
(699, 'customer.verify_email.msg_sent', 'Đã gửi liên kết xác minh!', 'customer', 'vi'),
(700, 'customer.verify_email.msg_page_2', 'click here to request another.', 'customer', 'en'),
(701, 'customer.verify_email.msg_page_2', 'hãy nhấp vào đây để yêu cầu.', 'customer', 'vi'),
(702, 'customer.verify_email.msg_page_1', 'Before proceeding, please check your email for a verification link. If you did not receive the email,', 'customer', 'en'),
(703, 'customer.verify_email.msg_page_1', 'Trước khi tiếp tục, vui lòng kiểm tra email của bạn để biết liên kết xác minh. Nếu bạn không nhận được email,', 'customer', 'vi'),
(704, 'customer.verify_email.title_header', 'Successful verification', 'customer', 'en'),
(705, 'customer.verify_email.title_header', 'Xác thực thành công', 'customer', 'vi'),
(706, 'customer.password_forgot', 'Forgot password', 'customer', 'en'),
(707, 'customer.password_forgot', 'Quên mật khẩu', 'customer', 'vi'),
(708, 'customer.login_title', 'Login page', 'customer', 'en'),
(709, 'customer.login_title', 'Trang đăng nhập', 'customer', 'vi'),
(710, 'customer.register_success', 'Successful register', 'customer', 'en'),
(711, 'customer.register_success', 'Đăng ký thành công', 'customer', 'vi'),
(712, 'customer.signup', 'Signup', 'customer', 'en'),
(713, 'customer.signup', 'Đăng ký', 'customer', 'vi'),
(714, 'customer.title_register', 'Account register', 'customer', 'en'),
(715, 'customer.title_register', 'Đăng ký tài khoản', 'customer', 'vi'),
(716, 'customer.password_reset', 'Password reset', 'customer', 'en'),
(717, 'customer.password_reset', 'Reset mật khẩu', 'customer', 'vi'),
(718, 'customer.password_confirm', 'Password confirm', 'customer', 'en'),
(719, 'customer.password_confirm', 'Xác nhận mật khẩu', 'customer', 'vi'),
(720, 'customer.phone_regex', 'The phone format is not correct. Length 8-14, use only 0-9 and the \"-\" SIGN.', 'customer', 'en'),
(721, 'customer.phone_regex', 'Số điện thoại định dạng không đúng. Chiều dài 8-14, chỉ sử dụng số 0-9 và \"-\"', 'customer', 'vi'),
(722, 'customer.country', 'Country', 'customer', 'en'),
(723, 'customer.country', 'Quốc gia', 'customer', 'vi'),
(724, 'customer.company', 'Công ty', 'customer', 'vi'),
(725, 'customer.company', 'Company', 'customer', 'en'),
(726, 'customer.address3', 'Địa chỉ nhà', 'customer', 'vi'),
(727, 'customer.address3', 'Address 3', 'customer', 'en'),
(728, 'customer.address2', 'Quận/Huyện', 'customer', 'vi'),
(729, 'customer.address2', 'Address 2', 'customer', 'en'),
(730, 'customer.address1', 'Tỉnh/Thành', 'customer', 'vi'),
(731, 'customer.address1', 'Address 1', 'customer', 'en'),
(732, 'customer.postcode', 'Mã bưu điện', 'customer', 'vi'),
(733, 'customer.postcode', 'Post code', 'customer', 'en'),
(734, 'customer.phone', 'Phone', 'customer', 'en'),
(735, 'customer.phone', 'Điện thoại', 'customer', 'vi'),
(736, 'customer.last_name_kana', 'Họ kana', 'customer', 'vi'),
(737, 'customer.last_name_kana', 'Last name kana', 'customer', 'en'),
(738, 'customer.first_name_kana', 'First name kana', 'customer', 'en'),
(739, 'customer.first_name_kana', 'Tên Kana', 'customer', 'vi'),
(740, 'customer.full_name', 'Full name', 'customer', 'en'),
(741, 'customer.full_name', 'Tên đầy đủ', 'customer', 'vi'),
(742, 'customer.name', 'Name', 'customer', 'en'),
(743, 'customer.name', 'Tên', 'customer', 'vi'),
(744, 'customer.midle_name', 'Tên đệm', 'customer', 'vi'),
(745, 'customer.midle_name', 'Midle name', 'customer', 'en'),
(746, 'customer.last_name', 'Họ', 'customer', 'vi'),
(747, 'customer.last_name', 'Last name', 'customer', 'en'),
(748, 'customer.first_name', 'Tên', 'customer', 'vi'),
(749, 'customer.first_name', 'First name', 'customer', 'en'),
(750, 'customer.email', 'Email', 'customer', 'vi'),
(751, 'customer.email', 'Email', 'customer', 'en'),
(752, 'customer.sex', 'Giới tính', 'customer', 'vi'),
(753, 'customer.sex', 'Sex', 'customer', 'en'),
(754, 'customer.sex_women', 'Women', 'customer', 'en'),
(755, 'customer.sex_women', 'Nữ', 'customer', 'vi'),
(756, 'customer.sex_other', 'Other', 'customer', 'en'),
(757, 'customer.sex_other', 'Khác', 'customer', 'vi'),
(758, 'customer.sex_men', 'Men', 'customer', 'en'),
(759, 'customer.sex_men', 'Nam', 'customer', 'vi'),
(760, 'customer.birthday', 'Ngày sinh', 'customer', 'vi'),
(761, 'customer.birthday', 'Birthday', 'customer', 'en'),
(762, 'customer.title_login', 'Login account', 'customer', 'en'),
(763, 'customer.title_login', 'Đăng nhập', 'customer', 'vi'),
(764, 'customer.my_profile', 'Tài khoản', 'customer', 'vi'),
(765, 'customer.my_profile', 'My profile', 'customer', 'en'),
(766, 'customer.status', 'Trạng thái', 'customer', 'vi'),
(767, 'customer.status', 'Status', 'customer', 'en'),
(768, 'customer.group', 'Nhóm', 'customer', 'en'),
(769, 'customer.group', 'Group', 'customer', 'vi'),
(770, 'customer.admin.add_new_title', 'Thêm mới khách hàng', 'customer.admin', 'vi'),
(771, 'customer.admin.add_new_title', 'Add new customer', 'customer.admin', 'en'),
(772, 'customer.admin.add_new_des', 'Thêm mới', 'customer.admin', 'vi');
INSERT INTO `languages` (`id`, `code`, `text`, `position`, `location`) VALUES
(773, 'customer.admin.add_new_des', 'Add new', 'customer.admin', 'en'),
(774, 'customer.admin.provider', 'Provider', 'customer.admin', 'vi'),
(775, 'customer.admin.provider', 'Provider', 'customer.admin', 'en'),
(776, 'customer.admin.field', 'Trường dữ liệu', 'customer.admin', 'vi'),
(777, 'customer.admin.field', 'Field data', 'customer.admin', 'en'),
(778, 'customer.admin.value', 'Giá trị', 'customer.admin', 'vi'),
(779, 'customer.admin.value', 'Value', 'customer.admin', 'en'),
(780, 'customer.admin.required', 'Bắt buộc', 'customer.admin', 'vi'),
(781, 'customer.admin.required', 'Required', 'customer.admin', 'en'),
(782, 'customer.admin.keep_password', 'Giữ mật khẩu', 'customer.admin', 'vi'),
(783, 'customer.admin.keep_password', 'Keep password', 'customer.admin', 'en'),
(784, 'customer.admin.list', 'Danh sách khách hàng', 'customer.admin', 'vi'),
(785, 'customer.admin.list', 'Customer list', 'customer.admin', 'en'),
(786, 'customer.config_manager.title', ' Config customer', 'customer.admin', 'en'),
(787, 'customer.config_manager.field', 'Field config', 'customer.admin', 'en'),
(788, 'customer.config_manager.value', 'Value', 'customer.admin', 'en'),
(789, 'customer.config_manager.lastname', 'Use last name', 'customer.admin', 'en'),
(790, 'customer.config_manager.name_kana', 'Use name KANA', 'customer.admin', 'en'),
(791, 'customer.config_manager.firstname_kana', 'Use first name KANA', 'customer.admin', 'en'),
(792, 'customer.config_manager.lastname_kana', 'Use last name KANA', 'customer.admin', 'en'),
(793, 'customer.config_manager.address1', 'Use ADDRESS 1', 'customer.admin', 'en'),
(794, 'customer.config_manager.address2', 'Use ADDRESS 2', 'customer.admin', 'en'),
(795, 'customer.config_manager.address3', 'Use ADDRESS 3', 'customer.admin', 'en'),
(796, 'customer.config_manager.company', 'Use COMPANY', 'customer.admin', 'en'),
(797, 'customer.config_manager.postcode', 'Use POSTCODE', 'customer.admin', 'en'),
(798, 'customer.config_manager.country', 'Use COUNTRY', 'customer.admin', 'en'),
(799, 'customer.config_manager.group', 'Use GROUP', 'customer.admin', 'en'),
(800, 'customer.config_manager.birthday', 'Use BIRTHDAY', 'customer.admin', 'en'),
(801, 'customer.config_manager.sex', 'Use SEX', 'customer.admin', 'en'),
(802, 'customer.config_manager.phone', 'Use PHONE', 'customer.admin', 'en'),
(803, 'customer.config_manager.reqired', 'Required', 'customer.admin', 'en'),
(804, 'customer.config_manager.title', ' Cấu hình khách hàng', 'customer.admin', 'vi'),
(805, 'customer.config_manager.lastname', 'Sử dụng HỌ', 'customer.admin', 'vi'),
(806, 'customer.config_manager.name_kana', 'Sử dụng tên KANA', 'customer.admin', 'vi'),
(807, 'customer.config_manager.firstname_kana', 'Sử dụng tên KANA', 'customer.admin', 'vi'),
(808, 'customer.config_manager.lasttname_kana', 'Sử dụng họ KANA', 'customer.admin', 'vi'),
(809, 'customer.config_manager.address1', 'Sử dụng Tỉnh/Thành', 'customer.admin', 'vi'),
(810, 'customer.config_manager.address2', 'Sử dụng Quận/Huyện', 'customer.admin', 'vi'),
(811, 'customer.config_manager.address3', 'Địa chỉ nhà', 'customer.admin', 'vi'),
(812, 'customer.config_manager.company', 'Sử dụng Công Ty', 'customer.admin', 'vi'),
(813, 'customer.config_manager.postcode', 'Sử dụng Mã bưu chính', 'customer.admin', 'vi'),
(814, 'customer.config_manager.country', 'Sử dụng Quốc Gia', 'customer.admin', 'vi'),
(815, 'customer.config_manager.group', 'Sử dụng Nhóm', 'customer.admin', 'vi'),
(816, 'customer.config_manager.birthday', 'Sử dụng NGÀY SINH', 'customer.admin', 'vi'),
(817, 'customer.config_manager.sex', 'Sử dụng GIỚI TÍNH', 'customer.admin', 'vi'),
(818, 'customer.config_manager.phone', 'Sử dụng SỐ ĐIỆN THOẠI', 'customer.admin', 'vi'),
(819, 'customer.config_manager.required', 'Bắt buộc', 'customer.admin', 'vi'),
(820, 'order.order_status', 'Trạng thái đơn hàng', 'order', 'vi'),
(821, 'order.order_status', 'Order status', 'order', 'en'),
(822, 'order.shipping_status', 'Trạng thái vận chuyển', 'order', 'vi'),
(823, 'order.shipping_status', 'Shipping status', 'order', 'en'),
(824, 'order.payment_status', 'Trạng thái thanh toán', 'order', 'vi'),
(825, 'order.payment_status', 'Payment status', 'order', 'en'),
(826, 'order.payment_method', 'Phương thức thanh toán', 'order', 'vi'),
(827, 'order.payment_method', 'Payment method', 'order', 'en'),
(828, 'order.shipping_method', 'Phương thức vận chuyển', 'order', 'vi'),
(829, 'order.shipping_method', 'Shipping method', 'order', 'en'),
(830, 'order.currency', 'Tiền tệ', 'order', 'vi'),
(831, 'order.currency', 'Currency', 'order', 'en'),
(832, 'order.exchange_rate', 'Tỉ giá', 'order', 'vi'),
(833, 'order.exchange_rate', 'Exchange rate', 'order', 'en'),
(834, 'order.balance', 'Còn lại', 'order', 'vi'),
(835, 'order.balance', 'Balance', 'order', 'en'),
(836, 'order.total', 'Tổng tiền', 'order', 'vi'),
(837, 'order.total', 'Total', 'order', 'en'),
(838, 'order.sub_total', 'Tiền hàng', 'order', 'vi'),
(839, 'order.sub_total', 'SubTotal', 'order', 'en'),
(840, 'order.subtotal', 'Tiền hàng', 'order', 'vi'),
(841, 'order.subtotal', 'SubTotal', 'order', 'en'),
(842, 'order.tax', 'Thuế', 'order', 'vi'),
(843, 'order.tax', 'Tax', 'order', 'en'),
(844, 'order.shipping', 'Vận chuyển', 'order', 'vi'),
(845, 'order.shipping', 'Shipping', 'order', 'en'),
(846, 'order.received', 'Đã nhận', 'order', 'vi'),
(847, 'order.received', 'Received', 'order', 'en'),
(848, 'order.discount', 'Giảm giá', 'order', 'vi'),
(849, 'order.discount', 'Discount', 'order', 'en'),
(850, 'order.totals.total', 'Tổng tiền', 'order', 'vi'),
(851, 'order.totals.total', 'Total', 'order', 'en'),
(852, 'order.totals.sub_total', 'Tiền hàng', 'order', 'vi'),
(853, 'order.totals.sub_total', 'SubTotal', 'order', 'en'),
(854, 'order.totals.tax', 'Thuế', 'order', 'vi'),
(855, 'order.totals.tax', 'Tax', 'order', 'en'),
(856, 'order.totals.discount', 'Giảm giá', 'order', 'vi'),
(857, 'order.totals.discount', 'Discount', 'order', 'en'),
(858, 'order.totals.shipping', 'Vận chuyển', 'order', 'vi'),
(859, 'order.totals.shipping', 'Shipping', 'order', 'en'),
(860, 'order.totals.received', 'Đã nhận', 'order', 'vi'),
(861, 'order.totals.received', 'Received', 'order', 'en'),
(862, 'order.detail', 'Chi tiết', 'order', 'vi'),
(863, 'order.detail', 'Order detail', 'order', 'en'),
(864, 'order.phone_regex', 'The phone format is not correct. Length 8-14, use only 0-9 and the \"-\" SIGN.', 'order', 'en'),
(865, 'order.phone_regex', 'Số điện thoại định dạng không đúng. Chiều dài 8-14, chỉ sử dụng số 0-9 và \"-\"', 'order', 'vi'),
(866, 'order.country', 'Country', 'order', 'en'),
(867, 'order.country', 'Quốc gia', 'order', 'vi'),
(868, 'order.company', 'Công ty', 'order', 'vi'),
(869, 'order.company', 'Company', 'order', 'en'),
(870, 'order.address3', 'Địa chỉ nhà', 'order', 'vi'),
(871, 'order.address3', 'Address 3', 'order', 'en'),
(872, 'order.address2', 'Quận/Huyện', 'order', 'vi'),
(873, 'order.address2', 'Address 2', 'order', 'en'),
(874, 'order.address1', 'Tỉnh/Thành', 'order', 'vi'),
(875, 'order.address1', 'Address 1', 'order', 'en'),
(876, 'order.address', 'Địa chỉ', 'order', 'vi'),
(877, 'order.address', 'Address', 'order', 'en'),
(878, 'order.postcode', 'Mã bưu điện', 'order', 'vi'),
(879, 'order.postcode', 'Post code', 'order', 'en'),
(880, 'order.phone', 'Phone', 'order', 'en'),
(881, 'order.phone', 'Điện thoại', 'order', 'vi'),
(882, 'order.last_name_kana', 'Họ kana', 'order', 'vi'),
(883, 'order.last_name_kana', 'Last name kana', 'order', 'en'),
(884, 'order.first_name_kana', 'First name kana', 'order', 'en'),
(885, 'order.first_name_kana', 'Tên Kana', 'order', 'vi'),
(886, 'order.full_name', 'Full name', 'order', 'en'),
(887, 'order.full_name', 'Tên đầy đủ', 'order', 'vi'),
(888, 'order.name', 'Name', 'order', 'en'),
(889, 'order.name', 'Tên', 'order', 'vi'),
(890, 'order.midle_name', 'Tên đệm', 'order', 'vi'),
(891, 'order.midle_name', 'Midle name', 'order', 'en'),
(892, 'order.last_name', 'Họ', 'order', 'vi'),
(893, 'order.last_name', 'Last name', 'order', 'en'),
(894, 'order.first_name', 'Tên', 'order', 'vi'),
(895, 'order.first_name', 'First name', 'order', 'en'),
(896, 'order.email', 'Email', 'order', 'vi'),
(897, 'order.email', 'Email', 'order', 'en'),
(898, 'order.sex', 'Giới tính', 'order', 'vi'),
(899, 'order.sex', 'Sex', 'order', 'en'),
(900, 'order.sex_women', 'Women', 'order', 'en'),
(901, 'order.sex_women', 'Nữ', 'order', 'vi'),
(902, 'order.sex_other', 'Other', 'order', 'en'),
(903, 'order.sex_other', 'Khác', 'order', 'vi'),
(904, 'order.sex_men', 'Men', 'order', 'en'),
(905, 'order.sex_men', 'Nam', 'order', 'vi'),
(906, 'order.birthday', 'Ngày sinh', 'order', 'vi'),
(907, 'order.birthday', 'Birthday', 'order', 'en'),
(908, 'order.status', 'Trạng thái đơn hàng', 'order', 'vi'),
(909, 'order.status', 'Order status', 'order', 'en'),
(910, 'order.order_detail', 'Chi tiết đơn hàng', 'order', 'vi'),
(911, 'order.order_detail', 'Order detail', 'order', 'en'),
(912, 'order.note', 'Note', 'order', 'en'),
(913, 'order.note', 'Ghi chú', 'order', 'vi'),
(914, 'order.order_note', 'Note', 'order', 'en'),
(915, 'order.order_note', 'Ghi chú', 'order', 'vi'),
(916, 'order.domain', 'Domain', 'order', 'en'),
(917, 'order.domain', 'Tên miền', 'order', 'vi'),
(918, 'order.admin.order_history', 'Order history', 'order.admin', 'en'),
(919, 'order.admin.history_staff', 'Staff', 'order.admin', 'en'),
(920, 'order.admin.history_content', 'Content', 'order.admin', 'en'),
(921, 'order.admin.history_time', 'Time', 'order.admin', 'en'),
(922, 'order.admin.order_history', 'Lịch sử đơn hàng', 'order.admin', 'vi'),
(923, 'order.admin.history_staff', 'Nhân viên', 'order.admin', 'vi'),
(924, 'order.admin.history_content', 'Nội dung', 'order.admin', 'vi'),
(925, 'order.admin.history_time', 'Thời gian', 'order.admin', 'vi'),
(926, 'order.admin.title', 'Quản lý đơn hàng', 'order.admin', 'vi'),
(927, 'order.admin.config_title', 'Cấu hình đơn hàng', 'order.admin', 'vi'),
(928, 'order.admin.list', 'Danh sách đơn hàng', 'order.admin', 'vi'),
(929, 'order.admin.payment_method', 'Phương thức thanh toán', 'order.admin', 'vi'),
(930, 'order.admin.payment_method_short', 'Payment method', 'order.admin', 'vi'),
(931, 'order.admin.currency', 'Tiền tệ', 'order.admin', 'vi'),
(932, 'order.admin.exchange_rate', 'Tỉ giá', 'order.admin', 'vi'),
(933, 'order.admin.order_new', 'Thêm mới', 'order.admin', 'vi'),
(934, 'order.admin.add_new', 'Thêm mới', 'order.admin', 'vi'),
(935, 'order.admin.add_new_title', 'Tạo đơn hàng', 'order.admin', 'vi'),
(936, 'order.admin.add_new_des', 'Tạo mới một đơn hàng', 'order.admin', 'vi'),
(937, 'order.admin.export_batch', 'Xuất', 'order.admin', 'vi'),
(938, 'order.admin.config_info', 'Cấu hình đơn hàng', 'order.admin', 'vi'),
(939, 'order.admin.store', 'Cửa hàng', 'order.admin', 'vi'),
(940, 'order.admin.title', 'Order manager', 'order.admin', 'en'),
(941, 'order.admin.config_title', 'Config info order', 'order.admin', 'en'),
(942, 'order.admin.list', 'Order list', 'order.admin', 'en'),
(943, 'order.admin.payment_method', 'Payment method', 'order.admin', 'en'),
(944, 'order.admin.payment_method_short', 'Payment method', 'order.admin', 'en'),
(945, 'order.admin.currency', 'Currency', 'order.admin', 'en'),
(946, 'order.admin.exchange_rate', 'Exchange rate', 'order.admin', 'en'),
(947, 'order.admin.status', 'Status', 'order.admin', 'en'),
(948, 'order.admin.status', 'Trạng thái', 'order.admin', 'vi'),
(949, 'order.admin.created_at', 'Created at', 'order.admin', 'en'),
(950, 'order.admin.created_at', 'Tạo lúc', 'order.admin', 'vi'),
(951, 'order.admin.order_new', 'Add new', 'order.admin', 'en'),
(952, 'order.admin.add_new', 'Add new', 'order.admin', 'en'),
(953, 'order.admin.add_new_title', 'Add new order', 'order.admin', 'en'),
(954, 'order.admin.add_new_des', 'Create a new order', 'order.admin', 'en'),
(955, 'order.admin.export_batch', 'Export', 'order.admin', 'en'),
(956, 'order.admin.config_info', 'Config order', 'order.admin', 'en'),
(957, 'order.admin.store', 'Store', 'order.admin', 'en'),
(958, 'order.admin.search_order_status', 'Search order status', 'order.admin', 'en'),
(959, 'order.admin.search_order_status', 'Tìm trạng thái đơn hàng', 'order.admin', 'vi'),
(960, 'order.admin.search_email', 'Search email', 'order.admin', 'en'),
(961, 'order.admin.search_email', 'Tìm email', 'order.admin', 'vi'),
(962, 'order.admin.search_id', 'Search id', 'order.admin', 'en'),
(963, 'order.admin.search_id', 'Tìm ID', 'order.admin', 'vi'),
(964, 'order.admin.select_product', 'Select product', 'order.admin', 'en'),
(965, 'order.admin.select_product', 'Chọn sản phẩm', 'order.admin', 'vi'),
(966, 'order.admin.product_buy_out_of_stock', 'Allow buy out of stock', 'order.admin', 'en'),
(967, 'order.admin.product_buy_out_of_stock', 'Cho phép mua hàng đã hết', 'order.admin', 'vi'),
(968, 'order.admin.shipping_off', 'Dont use shipping method', 'order.admin', 'en'),
(969, 'order.admin.shipping_off', 'Không sử dụng phương thức vận chuyển', 'order.admin', 'vi'),
(970, 'order.admin.payment_off', 'Dont use payment method', 'order.admin', 'en'),
(971, 'order.admin.payment_off', 'Không sử dụng phương thức thanh toán', 'order.admin', 'vi'),
(972, 'order.admin.product_preorder', 'Allow pre-order', 'order.admin', 'en'),
(973, 'order.admin.product_preorder', 'Cho phép đặt hàng trước', 'order.admin', 'vi'),
(974, 'order.admin.shop_allow_guest', 'Allow buy no need login', 'order.admin', 'en'),
(975, 'order.admin.shop_allow_guest', 'Cho phép mua không cần đăng nhập', 'order.admin', 'vi'),
(976, 'order.admin.select_customer', 'Select customer', 'order.admin', 'en'),
(977, 'order.admin.select_customer', 'Chọn khách hàng', 'order.admin', 'vi'),
(978, 'contact.name', 'Tên', 'contact', 'vi'),
(979, 'contact.name', 'Name', 'contact', 'en'),
(980, 'contact.email', 'Email', 'contact', 'vi'),
(981, 'contact.email', 'Email', 'contact', 'en'),
(982, 'contact.phone', 'Điện thoại', 'contact', 'vi'),
(983, 'contact.phone', 'Phone', 'contact', 'en'),
(984, 'contact.subject', 'Tiêu đề', 'contact', 'vi'),
(985, 'contact.subject', 'Subject', 'contact', 'en'),
(986, 'contact.content', 'Nội dung', 'contact', 'vi'),
(987, 'contact.content', 'content', 'contact', 'en'),
(988, 'contact.page_title', 'Liên hệ', 'contact', 'vi'),
(989, 'contact.page_title', 'Contact page', 'contact', 'en'),
(990, 'contact.thank_contact', 'Cảm ơn vì bạn đã liên hệ', 'contact', 'vi'),
(991, 'contact.thank_contact', 'Thank you for your contact', 'contact', 'en'),
(992, 'filter_sort.sort', 'Thứ tự', 'filter_sort', 'vi'),
(993, 'filter_sort.sort', 'Sort', 'filter_sort', 'en'),
(994, 'filter_sort.price_asc', 'Giá tăng dần', 'filter_sort', 'vi'),
(995, 'filter_sort.price_asc', 'Price ascending', 'filter_sort', 'en'),
(996, 'filter_sort.price_desc', 'Giá giảm dần', 'filter_sort', 'vi'),
(997, 'filter_sort.price_desc', 'Price descending', 'filter_sort', 'en'),
(998, 'filter_sort.sort_asc', 'Sort tăng dần', 'filter_sort', 'vi'),
(999, 'filter_sort.sort_asc', 'Sort ascending', 'filter_sort', 'en'),
(1000, 'filter_sort.sort_desc', 'Sort giảm dần', 'filter_sort', 'vi'),
(1001, 'filter_sort.sort_desc', 'Sort descending', 'filter_sort', 'en'),
(1002, 'filter_sort.id_asc', 'ID tăng dần', 'filter_sort', 'vi'),
(1003, 'filter_sort.id_asc', 'ID ascending', 'filter_sort', 'en'),
(1004, 'filter_sort.id_desc', 'ID giảm dần', 'filter_sort', 'vi'),
(1005, 'filter_sort.id_desc', 'ID descending', 'filter_sort', 'en'),
(1006, 'filter_sort.name_desc', 'Tên theo thứ tự z-a', 'filter_sort', 'vi'),
(1007, 'filter_sort.name_desc', 'Name in z-a order', 'filter_sort', 'en'),
(1008, 'filter_sort.name_asc', 'Tên theo thứ tự a-z', 'filter_sort', 'vi'),
(1009, 'filter_sort.name_asc', 'Name in a-z order', 'filter_sort', 'en'),
(1010, 'filter_sort.first_name_desc', 'Tên theo thứ tự z-a', 'filter_sort', 'vi'),
(1011, 'filter_sort.first_name_desc', 'First name in z-a order', 'filter_sort', 'en'),
(1012, 'filter_sort.first_name_asc', 'Tên theo thứ tự a-z', 'filter_sort', 'vi'),
(1013, 'filter_sort.first_name_asc', 'First name in a-z order', 'filter_sort', 'en'),
(1014, 'filter_sort.last_name_desc', 'Họ theo thứ tự z-a', 'filter_sort', 'vi'),
(1015, 'filter_sort.last_name_desc', 'Last name in z-a order', 'filter_sort', 'en'),
(1016, 'filter_sort.last_name_asc', 'Họ theo thứ tự a-z', 'filter_sort', 'vi'),
(1017, 'filter_sort.last_name_asc', 'Last name in a-z order', 'filter_sort', 'en'),
(1018, 'filter_sort.title_desc', 'Tiêu đề theo thứ tự z-a', 'filter_sort', 'vi'),
(1019, 'filter_sort.title_desc', 'Title in z-a order', 'filter_sort', 'en'),
(1020, 'filter_sort.title_asc', 'Tiêu đề theo thứ tự a-z', 'filter_sort', 'vi'),
(1021, 'filter_sort.title_asc', 'Title in a-z order', 'filter_sort', 'en'),
(1022, 'filter_sort.sold_asc', 'Bán ra tăng dần', 'filter_sort', 'vi'),
(1023, 'filter_sort.sold_asc', 'Sold ascending', 'filter_sort', 'en'),
(1024, 'filter_sort.sold_desc', 'Bán ra giảm dần', 'filter_sort', 'vi'),
(1025, 'filter_sort.sold_desc', 'Sold descending', 'filter_sort', 'en'),
(1026, 'filter_sort.view_desc', 'Lượt xem giảm dần', 'filter_sort', 'vi'),
(1027, 'filter_sort.view_desc', 'View descending', 'filter_sort', 'en'),
(1028, 'filter_sort.view_asc', 'Lượt xem tăng dần', 'filter_sort', 'vi'),
(1029, 'filter_sort.view_asc', 'View ascending', 'filter_sort', 'en'),
(1030, 'filter_sort.alpha_desc', ':alpha theo thứ tự z-a', 'filter_sort', 'vi'),
(1031, 'filter_sort.alpha_desc', ':alpha in z-a order', 'filter_sort', 'en'),
(1032, 'filter_sort.alpha_asc', ':alpha theo thứ tự a-z', 'filter_sort', 'vi'),
(1033, 'filter_sort.alpha_asc', ':alpha in a-z order', 'filter_sort', 'en'),
(1034, 'filter_sort.value_asc', ':value tăng dần', 'filter_sort', 'vi'),
(1035, 'filter_sort.value_asc', ':value ascending', 'filter_sort', 'en'),
(1036, 'filter_sort.value_desc', ':value giảm dần', 'filter_sort', 'vi'),
(1037, 'filter_sort.value_desc', ':value descending', 'filter_sort', 'en'),
(1038, 'subscribe.email', 'Email', 'subscribe', 'en'),
(1039, 'subscribe.action', 'Subscribe', 'subscribe', 'en'),
(1040, 'subscribe.title', 'Subscribe email', 'subscribe', 'en'),
(1041, 'subscribe.subscribe_des', 'Get the most recent updates from us', 'subscribe', 'en'),
(1042, 'subscribe.subscribe_email', 'Your email', 'subscribe', 'en'),
(1043, 'subscribe.subscribe_success', 'Subscribe email successful!', 'subscribe', 'en'),
(1044, 'subscribe.email', 'Email', 'subscribe', 'vi'),
(1045, 'subscribe.action', 'Đăng ký', 'subscribe', 'vi'),
(1046, 'subscribe.title', 'Đăng ký email', 'subscribe', 'vi'),
(1047, 'subscribe.subscribe_des', 'Nhận cập nhật mới nhất', 'subscribe', 'vi'),
(1048, 'subscribe.subscribe_email', 'Email của bạn', 'subscribe', 'vi'),
(1049, 'subscribe.subscribe_success', 'Đăng ký email thành công!', 'subscribe', 'vi'),
(1050, 'subscribe.admin.email', 'Email', 'subscribe.admin', 'vi'),
(1051, 'subscribe.admin.email', 'Email', 'subscribe.admin', 'en'),
(1052, 'subscribe.admin.list', 'Danh sách đang ký', 'subscribe.admin', 'vi'),
(1053, 'subscribe.admin.list', 'Subscribe list', 'subscribe.admin', 'en'),
(1054, 'subscribe.admin.status', 'Trạng thái', 'subscribe.admin', 'vi'),
(1055, 'subscribe.admin.status', 'Status', 'subscribe.admin', 'en'),
(1056, 'subscribe.admin.add_new_title', 'Thêm đăng ký', 'subscribe.admin', 'vi'),
(1057, 'subscribe.admin.add_new_title', 'Add subscribe', 'subscribe.admin', 'en'),
(1058, 'subscribe.admin.add_new_des', 'Thêm tài khoản đăng ký', 'subscribe.admin', 'vi'),
(1059, 'subscribe.admin.add_new_des', 'Add a new subscribe', 'subscribe.admin', 'en'),
(1060, 'subscribe.admin.search_place', 'Search ID or email', 'subscribe.admin', 'en'),
(1061, 'subscribe.admin.search_place', 'Tìm ID hoặc email', 'admin.subscribe', 'vi'),
(1062, 'about.page_title', 'About us', 'about', 'en'),
(1063, 'about.page_title', 'Giới thiệu', 'about', 'vi'),
(1064, 'admin.user.setting', 'Setting', 'admin.user', 'en'),
(1065, 'admin.user.setting', 'Cài đặt', 'admin.user', 'vi'),
(1066, 'admin.user.logout', 'Logout', 'admin.user', 'en'),
(1067, 'admin.user.logout', 'Đăng xuất', 'admin.user', 'vi'),
(1068, 'admin.user.username', 'User name', 'admin.user', 'en'),
(1069, 'admin.user.username', 'Tên đăng nhập', 'admin.user', 'vi'),
(1070, 'admin.user.password', 'Password', 'admin.user', 'en'),
(1071, 'admin.user.password', 'Mật khẩu', 'admin.user', 'vi'),
(1072, 'admin.user.remember_me', 'Remember', 'admin.user', 'en'),
(1073, 'admin.user.remember_me', 'Ghi nhớ', 'admin.user', 'vi'),
(1074, 'admin.user.login', 'Login', 'admin.user', 'en'),
(1075, 'admin.user.login', 'Đăng nhập', 'admin.user', 'vi'),
(1076, 'admin.user.keep_password', 'Để trống nếu không muốn thay đổi mật khẩu', 'admin.user', 'vi'),
(1077, 'admin.user.select_roles', 'Chọn vai trò', 'admin.user', 'vi'),
(1078, 'admin.user.select_permission', 'Chọn quyền hạn', 'admin.user', 'vi'),
(1079, 'admin.user.add_permission', 'Thêm quyền hạn', 'admin.user', 'vi'),
(1080, 'admin.user.select_store', 'Chọn cửa hàng', 'admin.user', 'vi'),
(1081, 'admin.user.name', 'Tên đầy đủ', 'admin.user', 'vi'),
(1082, 'admin.user.user_name', 'Tên đăng nhập', 'admin.user', 'vi'),
(1083, 'admin.user.email', 'Email', 'admin.user', 'vi'),
(1084, 'admin.user.avatar', 'Hình đại diện', 'admin.user', 'vi'),
(1085, 'admin.user.roles', 'vai trò', 'admin.user', 'vi'),
(1086, 'admin.user.permission', 'Quyền hạn', 'admin.user', 'vi'),
(1087, 'admin.user.created_at', 'Tạo lúc', 'admin.user', 'vi'),
(1088, 'admin.user.updated_at', 'Cập nhật', 'admin.user', 'vi'),
(1089, 'admin.user.member_since', 'Tham gia từ', 'admin.user', 'vi'),
(1090, 'admin.user.password_confirmation', 'Xác nhận mật khẩu', 'admin.user', 'vi'),
(1091, 'admin.user.username_validate', 'Chỉ sử dụng kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \".@_\" ', 'admin.user', 'vi'),
(1092, 'admin.user.title', 'Quản lý người dùng', 'admin.user', 'vi'),
(1093, 'admin.user.list', 'Danh sách người dùng', 'admin.user', 'vi'),
(1094, 'admin.user.add_new', 'Thêm mới', 'admin.user', 'vi'),
(1095, 'admin.user.add_new_title', 'Tạo người dùng', 'admin.user', 'vi'),
(1096, 'admin.user.add_new_des', 'Tạo mới người dùng', 'admin.user', 'vi'),
(1097, 'admin.user.name', 'Full name', 'admin.user', 'en'),
(1098, 'admin.user.user_name', 'User name', 'admin.user', 'en'),
(1099, 'admin.user.email', 'Email', 'admin.user', 'en'),
(1100, 'admin.user.avatar', 'Avatar', 'admin.user', 'en'),
(1101, 'admin.user.roles', 'Roles', 'admin.user', 'en'),
(1102, 'admin.user.permission', 'Permission', 'admin.user', 'en'),
(1103, 'admin.user.created_at', 'Created at', 'admin.user', 'en'),
(1104, 'admin.user.updated_at', 'Updated at', 'admin.user', 'en'),
(1105, 'admin.user.member_since', 'Member since', 'admin.user', 'en'),
(1106, 'admin.user.password_confirmation', 'Confirmation', 'admin.user', 'en'),
(1107, 'admin.user.username_validate', 'Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \".@_\" ', 'admin.user', 'en'),
(1108, 'admin.user.keep_password', 'Leave blank if you dont want to change the password', 'admin.user', 'en'),
(1109, 'admin.user.select_roles', 'Select roles', 'admin.user', 'en'),
(1110, 'admin.user.select_permission', 'Select permission', 'admin.user', 'en'),
(1111, 'admin.user.add_permission', 'Add permission', 'admin.user', 'en'),
(1112, 'admin.user.select_store', 'Select store', 'admin.user', 'en'),
(1113, 'admin.user.add_new', 'Add new', 'admin.user', 'en'),
(1114, 'admin.user.add_new_title', 'Add new user', 'admin.user', 'en'),
(1115, 'admin.user.add_new_des', 'Create a new user', 'admin.user', 'en'),
(1116, 'admin.user.list', 'User list', 'admin.user', 'en'),
(1117, 'admin.user.title', 'User manager', 'admin.user', 'en'),
(1118, 'admin.user.search_place', 'Search name', 'admin.user', 'en'),
(1119, 'admin.user.search_place', 'Tìm tên', 'admin.user', 'vi'),
(1120, 'admin.menu_titles.order_manager', 'Quản lý đơn hàng', 'admin.menu_titles', 'vi'),
(1121, 'admin.menu_titles.order_manager', 'Order manager', 'admin.menu_titles', 'en'),
(1122, 'admin.menu_titles.catalog_mamager', 'Sản phẩm & danh mục', 'admin.menu_titles', 'vi'),
(1123, 'admin.menu_titles.catalog_mamager', 'Product & category', 'admin.menu_titles', 'en'),
(1124, 'admin.menu_titles.customer_manager', 'Quản lý khách hàng', 'admin.menu_titles', 'vi'),
(1125, 'admin.menu_titles.customer_manager', 'Customer manager', 'admin.menu_titles', 'en'),
(1126, 'admin.menu_titles.admin_global', 'Quản lý chung', 'admin.menu_titles', 'vi'),
(1127, 'admin.menu_titles.admin_global', 'Admin global', 'admin.menu_titles', 'en'),
(1128, 'admin.menu_titles.ADMIN_SHOP', 'Cửa hàng', 'admin.menu_titles', 'vi'),
(1129, 'admin.menu_titles.ADMIN_SHOP', 'Admin shop', 'admin.menu_titles', 'en'),
(1130, 'admin.menu_titles.ADMIN_CONTENT', 'Nội dung', 'admin.menu_titles', 'vi'),
(1131, 'admin.menu_titles.ADMIN_CONTENT', 'Content', 'admin.menu_titles', 'en'),
(1132, 'admin.menu_titles.ADMIN_EXTENSION', 'Phần mở rộng', 'admin.menu_titles', 'vi'),
(1133, 'admin.menu_titles.ADMIN_EXTENSION', 'Extension', 'admin.menu_titles', 'en'),
(1134, 'admin.menu_titles.ADMIN_SYSTEM', 'Cấu hình hệ thống', 'admin.menu_titles', 'vi'),
(1135, 'admin.menu_titles.ADMIN_SYSTEM', 'System config', 'admin.menu_titles', 'en'),
(1136, 'admin.menu_titles.page_manager', 'Quản lý trang', 'admin.menu_titles', 'vi'),
(1137, 'admin.menu_titles.page_manager', 'Page manager', 'admin.menu_titles', 'en'),
(1138, 'admin.menu_titles.order', 'Đơn hàng', 'admin.menu_titles', 'vi'),
(1139, 'admin.menu_titles.order', 'Order', 'admin.menu_titles', 'en'),
(1140, 'admin.menu_titles.order_status', 'Trạng thái đơn hàng', 'admin.menu_titles', 'vi'),
(1141, 'admin.menu_titles.order_status', 'Order status', 'admin.menu_titles', 'en'),
(1142, 'admin.menu_titles.payment_status', 'Trạng thái thanh toán', 'admin.menu_titles', 'vi'),
(1143, 'admin.menu_titles.payment_status', 'Payment status', 'admin.menu_titles', 'en'),
(1144, 'admin.menu_titles.shipping_status', 'Trạng thái vận chuyển', 'admin.menu_titles', 'vi'),
(1145, 'admin.menu_titles.shipping_status', 'Shipping status', 'admin.menu_titles', 'en'),
(1146, 'admin.menu_titles.product', 'Sản phẩm', 'admin.menu_titles', 'vi'),
(1147, 'admin.menu_titles.product', 'Products', 'admin.menu_titles', 'en'),
(1148, 'admin.menu_titles.category', 'Danh mục', 'admin.menu_titles', 'vi'),
(1149, 'admin.menu_titles.category', 'Categories', 'admin.menu_titles', 'en'),
(1150, 'admin.menu_titles.supplier', 'Nhà cung cấp', 'admin.menu_titles', 'vi'),
(1151, 'admin.menu_titles.supplier', 'Suppliers', 'admin.menu_titles', 'en'),
(1152, 'admin.menu_titles.brand', 'Nhãn hiệu', 'admin.menu_titles', 'vi'),
(1153, 'admin.menu_titles.brand', 'Brands', 'admin.menu_titles', 'en'),
(1154, 'admin.menu_titles.attribute_group', 'Nhóm thuộc tính', 'admin.menu_titles', 'vi'),
(1155, 'admin.menu_titles.attribute_group', 'Attribute group', 'admin.menu_titles', 'en'),
(1156, 'admin.menu_titles.customer', 'Khách hàng', 'admin.menu_titles', 'vi'),
(1157, 'admin.menu_titles.customer', 'Customers', 'admin.menu_titles', 'en'),
(1158, 'admin.menu_titles.subscribe', 'Đăng ký', 'admin.menu_titles', 'vi'),
(1159, 'admin.menu_titles.subscribe', 'Subscribe', 'admin.menu_titles', 'en'),
(1160, 'admin.menu_titles.block_content', 'Khối nội dung', 'admin.menu_titles', 'vi'),
(1161, 'admin.menu_titles.block_content', 'Block content', 'admin.menu_titles', 'en'),
(1162, 'admin.menu_titles.block_link', 'Quản lý liên kết', 'admin.menu_titles', 'vi'),
(1163, 'admin.menu_titles.block_link', 'Link manager', 'admin.menu_titles', 'en'),
(1164, 'admin.menu_titles.template_layout', 'Quản lý giao diện', 'admin.menu_titles', 'vi'),
(1165, 'admin.menu_titles.template_layout', 'Template manager', 'admin.menu_titles', 'en'),
(1166, 'admin.menu_titles.template', 'Giao diện', 'admin.menu_titles', 'vi'),
(1167, 'admin.menu_titles.template', 'Template', 'admin.menu_titles', 'en'),
(1168, 'admin.menu_titles.ADMIN_MARKETING', 'Marketing', 'admin.menu_titles', 'vi'),
(1169, 'admin.menu_titles.ADMIN_MARKETING', 'Marketing', 'admin.menu_titles', 'en'),
(1170, 'admin.menu_titles.store_info', 'Thông tin cửa hàng', 'admin.menu_titles', 'vi'),
(1171, 'admin.menu_titles.store_info', 'Store infomation', 'admin.menu_titles', 'en'),
(1172, 'admin.menu_titles.setting_system', 'Thiết lập hệ thống', 'admin.menu_titles', 'vi'),
(1173, 'admin.menu_titles.setting_system', 'Setting system', 'admin.menu_titles', 'en'),
(1174, 'admin.menu_titles.error_log', 'Lỗi & Nhật ký', 'admin.menu_titles', 'vi'),
(1175, 'admin.menu_titles.error_log', 'Error & Logs', 'admin.menu_titles', 'en'),
(1176, 'admin.menu_titles.email_template', 'Mẫu email', 'admin.menu_titles', 'vi'),
(1177, 'admin.menu_titles.email_template', 'Email template', 'admin.menu_titles', 'en'),
(1178, 'admin.menu_titles.language', 'Ngôn ngữ', 'admin.menu_titles', 'vi'),
(1179, 'admin.menu_titles.language', 'Languages', 'admin.menu_titles', 'en'),
(1180, 'admin.menu_titles.language_manager', 'Quản lý ngôn ngữ', 'admin.menu_titles', 'vi'),
(1181, 'admin.menu_titles.language_manager', 'Language manager', 'admin.menu_titles', 'en'),
(1182, 'admin.menu_titles.currency', 'Tiền tệ', 'admin.menu_titles', 'vi'),
(1183, 'admin.menu_titles.currency', 'Currencies', 'admin.menu_titles', 'en'),
(1184, 'admin.menu_titles.banner', 'Banner', 'admin.menu_titles', 'vi'),
(1185, 'admin.menu_titles.banner', 'Banners', 'admin.menu_titles', 'en'),
(1186, 'admin.menu_titles.backup_restore', 'Sao lưu & Phục hồi', 'admin.menu_titles', 'vi'),
(1187, 'admin.menu_titles.backup_restore', 'Backup & Restore', 'admin.menu_titles', 'en'),
(1188, 'admin.menu_titles.plugin', 'Tiện ích', 'admin.menu_titles', 'vi'),
(1189, 'admin.menu_titles.plugin', 'Plugins', 'admin.menu_titles', 'en'),
(1190, 'admin.menu_titles.webhook', 'Webhook', 'admin.menu_titles', 'vi'),
(1191, 'admin.menu_titles.webhook', 'Webhook', 'admin.menu_titles', 'en'),
(1192, 'admin.menu_titles.report_manager', 'Quản lý báo cáo', 'admin.menu_titles', 'vi'),
(1193, 'admin.menu_titles.report_manager', 'Report manager', 'admin.menu_titles', 'en'),
(1194, 'admin.menu_titles.user_permission', 'Quyền hạn người dùng', 'admin.menu_titles', 'vi'),
(1195, 'admin.menu_titles.user_permission', 'User permission', 'admin.menu_titles', 'en'),
(1196, 'admin.menu_titles.css', 'Chỉnh sửa CSS', 'admin.menu_titles', 'vi'),
(1197, 'admin.menu_titles.css', 'CSS style', 'admin.menu_titles', 'en'),
(1198, 'admin.menu_titles.seo_manager', 'Quản lý SEO', 'admin.menu_titles', 'vi'),
(1199, 'admin.menu_titles.seo_manager', 'SEO manager', 'admin.menu_titles', 'en'),
(1200, 'admin.menu_titles.users', 'Người dùng', 'admin.menu_titles', 'vi'),
(1201, 'admin.menu_titles.users', 'Users', 'admin.menu_titles', 'en'),
(1202, 'admin.menu_titles.roles', 'Nhóm quyền', 'admin.menu_titles', 'vi'),
(1203, 'admin.menu_titles.roles', 'Roles', 'admin.menu_titles', 'en'),
(1204, 'admin.menu_titles.permission', 'Quyền hạn', 'admin.menu_titles', 'vi'),
(1205, 'admin.menu_titles.permission', 'Permission', 'admin.menu_titles', 'en'),
(1206, 'admin.menu_titles.operation_log', 'Nhật ký truy cập', 'admin.menu_titles', 'vi'),
(1207, 'admin.menu_titles.operation_log', 'Log access', 'admin.menu_titles', 'en'),
(1208, 'admin.menu_titles.seo_config', 'Cấu hình SEO', 'admin.menu_titles', 'vi'),
(1209, 'admin.menu_titles.seo_config', 'SEO config', 'admin.menu_titles', 'en'),
(1210, 'admin.menu_titles.news', 'Tin tức', 'admin.menu_titles', 'vi'),
(1211, 'admin.menu_titles.news', 'News', 'admin.menu_titles', 'en'),
(1212, 'admin.menu_titles.env_config', 'Cấu hình môi trường', 'admin.menu_titles', 'vi'),
(1213, 'admin.menu_titles.env_config', 'Environment Config', 'admin.menu_titles', 'en'),
(1214, 'admin.menu_titles.report_product', 'Báo cáo sản phẩm', 'admin.menu_titles', 'vi'),
(1215, 'admin.menu_titles.report_product', 'Report product', 'admin.menu_titles', 'en'),
(1216, 'admin.menu_titles.store_config', 'Cấu hình cửa hàng', 'admin.menu_titles', 'vi'),
(1217, 'admin.menu_titles.store_config', 'Store config', 'admin.menu_titles', 'en'),
(1218, 'admin.menu_titles.cache_manager', 'Bộ nhớ đệm', 'admin.menu_titles', 'vi'),
(1219, 'admin.menu_titles.cache_manager', 'Cache', 'admin.menu_titles', 'en'),
(1220, 'admin.menu_titles.api_manager', 'Quản lý API', 'admin.menu_titles', 'vi'),
(1221, 'admin.menu_titles.api_manager', 'API manager', 'admin.menu_titles', 'en'),
(1222, 'admin.menu_titles.store_maintain', 'Bảo trì website', 'admin.menu_titles', 'vi'),
(1223, 'admin.menu_titles.store_maintain', 'Website maintain', 'admin.menu_titles', 'en'),
(1224, 'admin.menu_titles.tax', 'Thuế', 'admin.menu_titles', 'vi'),
(1225, 'admin.menu_titles.tax', 'Tax', 'admin.menu_titles', 'en'),
(1226, 'admin.menu_titles.weight', 'Khối lượng', 'admin.menu_titles', 'vi'),
(1227, 'admin.menu_titles.weight', 'Weight', 'admin.menu_titles', 'en'),
(1228, 'admin.menu_titles.length', 'Kích thước', 'admin.menu_titles', 'vi'),
(1229, 'admin.menu_titles.length', 'Length', 'admin.menu_titles', 'en'),
(1230, 'admin.menu_titles.ADMIN_SHOP_SETTING', 'Thiết lập cửa hàng', 'admin.menu_titles', 'vi'),
(1231, 'admin.menu_titles.ADMIN_SHOP_SETTING', 'Shop setting', 'admin.menu_titles', 'en'),
(1232, 'admin.menu_titles.api_config', 'Cấu hình API', 'admin.menu_titles', 'vi'),
(1233, 'admin.menu_titles.api_config', 'API config', 'admin.menu_titles', 'en'),
(1234, 'admin.menu_titles.layout', 'Bố cục', 'admin.menu_titles', 'vi'),
(1235, 'admin.menu_titles.layout', 'Layout', 'admin.menu_titles', 'en'),
(1236, 'admin.menu_titles.custom_field', 'Tùy chỉnh dữ liệu', 'admin.menu_titles', 'vi'),
(1237, 'admin.menu_titles.custom_field', 'Custom field data', 'admin.menu_titles', 'en'),
(1238, 'admin.menu_titles.localisation', 'Địa phương hóa', 'admin.menu_titles', 'vi'),
(1239, 'admin.menu_titles.localisation', 'Localisation', 'admin.menu_titles', 'en'),
(1240, 'admin.menu_titles.menu', 'Menu', 'admin.menu_titles', 'vi'),
(1241, 'admin.menu_titles.menu', 'Menu', 'admin.menu_titles', 'en'),
(1242, 'admin.menu_titles.config_store_default', 'Cấu hình mặc định', 'admin.menu_titles', 'vi'),
(1243, 'admin.menu_titles.config_store_default', 'Config default', 'admin.menu_titles', 'en'),
(1244, 'admin.login_success', 'Login success!', 'admin', 'en'),
(1245, 'admin.login_success', 'Đăng nhập thành công', 'admin', 'vi'),
(1246, 'admin.access_denied', 'Access denied!', 'admin', 'en'),
(1247, 'admin.access_denied', 'Truy cập bị từ chối', 'admin', 'vi'),
(1248, 'admin.max_c', 'Maximum :max characters', 'admin', 'en'),
(1249, 'admin.min_c', 'Minimum :min characters', 'admin', 'en'),
(1250, 'admin.min_v', 'Greater than :value', 'admin', 'en'),
(1251, 'admin.max_v', 'Less than :value', 'admin', 'en'),
(1252, 'admin.max_c', 'Tối đa :max kí tự', 'admin', 'vi'),
(1253, 'admin.min_c', 'Tối thiểu :min kí tự', 'admin', 'vi'),
(1254, 'admin.min_v', 'Lớn hơn :value', 'admin', 'vi'),
(1255, 'admin.max_v', 'Nhỏ hơn :value', 'admin', 'vi'),
(1256, 'admin.data_not_found_detail', 'Dữ liệu không tồn tại :msg', 'admin', 'vi'),
(1257, 'admin.data_not_found_detail', 'Data not found :msg', 'admin', 'en'),
(1258, 'admin.login_successful', 'Đăng nhập thành công', 'admin', 'vi'),
(1259, 'admin.login_successful', 'Login success', 'admin', 'en'),
(1260, 'admin.add_new', 'Add new', 'admin', 'en'),
(1261, 'admin.add_new', 'Thêm mới', 'admin', 'vi'),
(1262, 'admin.not_empty', 'Not empty', 'admin', 'en'),
(1263, 'admin.not_empty', 'Không được rỗng', 'admin', 'vi'),
(1264, 'admin.only_numeric', 'Enly numeric', 'admin', 'en'),
(1265, 'admin.only_numeric', 'Chỉ dùng số', 'admin', 'vi'),
(1266, 'admin.store_swicth_success', 'Switch store success!', 'admin', 'en'),
(1267, 'admin.store_swicth_success', 'Chuyển cửa hàng thành công!', 'admin', 'vi'),
(1268, 'admin.dashboard', 'Dashboard', 'admin', 'en'),
(1269, 'admin.dashboard', 'Tổng hợp', 'admin', 'vi'),
(1270, 'admin.data_not_found', 'Data not found!', 'admin', 'en'),
(1271, 'admin.data_not_found', 'Không có dữ liệu!', 'admin', 'vi'),
(1272, 'admin.data_not_found_msg', 'The data you are accessing does not exist.', 'admin', 'en'),
(1273, 'admin.data_not_found_msg', 'Dữ liệu bạn đang truy cập không tồn tại.', 'admin', 'vi'),
(1274, 'admin.deny', 'Access denied!', 'admin', 'en'),
(1275, 'admin.deny', 'Truy cập từ chối!', 'admin', 'vi'),
(1276, 'admin.setting_account', 'Setting account', 'admin', 'en'),
(1277, 'admin.setting_account', 'Thiết lập tài khoản', 'admin', 'vi'),
(1278, 'admin.failed', 'Auth failed', 'admin', 'en'),
(1279, 'admin.failed', 'Chứng thực thất bại', 'admin', 'vi'),
(1280, 'admin.maintain_enable', 'Active ', 'admin', 'en'),
(1281, 'admin.maintain_enable', 'Hoạt động', 'admin', 'vi'),
(1282, 'admin.maintain_disable', 'Maintenance ', 'admin', 'en'),
(1283, 'admin.maintain_disable', 'Bảo trì', 'admin', 'vi'),
(1284, 'admin.position_all', 'All pages', 'admin', 'en'),
(1285, 'admin.position_all', 'Tất cả các trang', 'admin', 'vi'),
(1286, 'admin.theme', 'Theme', 'admin', 'en'),
(1287, 'admin.theme', 'Mẫu', 'admin', 'vi'),
(1288, 'admin.select_store', 'Select store', 'admin', 'en'),
(1289, 'admin.select_store', 'Chọn cửa hàng', 'admin', 'vi'),
(1290, 'admin.welcome_dasdboard', 'Welcome to admin system!', 'admin', 'en'),
(1291, 'admin.welcome_dasdboard', 'Chào mừng đến với hệ thống!', 'admin', 'vi'),
(1292, 'admin.deny_msg', 'You need permission to access the system!', 'admin', 'en'),
(1293, 'admin.deny_content', 'Permission denied!', 'admin', 'en'),
(1294, 'admin.deny_msg', 'Bạn cần thêm quyền hạn để truy cập hệ thống!', 'admin', 'vi'),
(1295, 'admin.deny_content', 'Bạn không có đủ quyền hạn!', 'admin', 'vi'),
(1296, 'admin.home', 'Trang chủ', 'admin', 'vi'),
(1297, 'admin.home', 'Home', 'admin', 'en'),
(1298, 'admin.choose_icon', 'Chọn icon', 'admin', 'vi'),
(1299, 'admin.choose_icon', 'Chose icon', 'admin', 'en'),
(1300, 'admin.file_manager', 'Quản lý file', 'admin', 'vi'),
(1301, 'admin.file_manager', 'File manager', 'admin', 'en'),
(1302, 'admin.notice_new_order', 'Bạn có :total đơn hàng mới', 'admin', 'vi'),
(1303, 'admin.notice_new_order', 'You have :total new orders', 'admin', 'en'),
(1304, 'admin.gt_numeric_0', 'Giá trị  phải lớn hơn 0!', 'admin', 'vi'),
(1305, 'admin.gt_numeric_0', 'Value must greater zero!', 'admin', 'en'),
(1306, 'admin.api_connection.list', 'API connection list', 'admin.api_connection', 'en'),
(1307, 'admin.api_connection.list', 'Danh sách API connection', 'admin.api_connection', 'vi'),
(1308, 'admin.api_connection.description', 'Mô tả', 'admin.api_connection', 'vi'),
(1309, 'admin.api_connection.description', 'Description', 'admin.api_connection', 'en'),
(1310, 'admin.api_connection.apikey', 'Api key', 'admin.api_connection', 'vi'),
(1311, 'admin.api_connection.apikey', 'Api key', 'admin.api_connection', 'en'),
(1312, 'admin.api_connection.connection', 'Api connection', 'admin.api_connection', 'vi'),
(1313, 'admin.api_connection.connection', 'Api connection', 'admin.api_connection', 'en'),
(1314, 'admin.api_connection.expire', 'Hết hạn', 'admin.api_connection', 'vi'),
(1315, 'admin.api_connection.expire', 'Expire', 'admin.api_connection', 'en'),
(1316, 'admin.api_connection.last_active', 'Lần cuối truy cập', 'admin.api_connection', 'vi'),
(1317, 'admin.api_connection.last_active', 'Last active', 'admin.api_connection', 'en'),
(1318, 'admin.api_connection.status', 'Trạng thái', 'admin.api_connection', 'vi'),
(1319, 'admin.api_connection.status', 'Status', 'admin.api_connection', 'en'),
(1320, 'admin.api_connection.validate_regex', 'Chỉ sử dụng các kí tự : a-z0-9', 'admin.api_connection', 'vi'),
(1321, 'admin.api_connection.validate_regex', 'Only use characters : a-z0-9', 'admin.api_connection', 'en'),
(1322, 'admin.api_connection.api_connection_required_help', '<i class=\"fa fa-warning text-red\" aria-hidden=\"true\"></i> Phải có tài khoản connection để kết nối API.<br>\n    <a href=\"https://s-cart.org/vi/docs/master/api-shop-info.html\" target=\"_new\"><i class=\"fa fa-info-circle\" aria-hidden=\"true\">Xem chi tiết ở đây</i></a>\n    <hr>\n    <b>Danh sách API hỗ trợ:</b><br>\n    <i>\n    your-domain.com/api/auth/login<br>\n    your-domain.com/api/auth/create<br>\n    your-domain.com/api/auth/logout<br>\n    your-domain.com/api/auth/user<br>\n    your-domain.com/api/auth/orders<br>\n    your-domain.com/api/auth/orders/{id}<br>\n    your-domain.com/api/categories<br>\n    your-domain.com/api/categories/{id}<br>\n    your-domain.com/api/products<br>\n    your-domain.com/api/products/{id}<br>\n    your-domain.com/api/brands<br>\n    your-domain.com/api/brands/{id}<br>\n    your-domain.com/api/supplieres<br>\n    your-domain.com/api/supplieres/{id}<br>\n    </i>', 'admin.api_connection', 'vi'),
(1323, 'admin.api_connection.api_connection_required_help', '<i class=\"fa fa-warning text-red\" aria-hidden=\"true\"></i> Connection account is required to use the API<br>\n    <a href=\"https://s-cart.org/docs/master/api-shop-info.html\" target=\"_new\"><i class=\"fa fa-info-circle\" aria-hidden=\"true\"></i>See full infomation</a>\n    <hr>\n    <b>API list support:</b><br>\n    <i>\n    your-domain.com/api/auth/login<br>\n    your-domain.com/api/auth/create<br>\n    your-domain.com/api/auth/logout<br>\n    your-domain.com/api/auth/user<br>\n    your-domain.com/api/auth/orders<br>\n    your-domain.com/api/auth/orders/{id}<br>\n    your-domain.com/api/categories<br>\n    your-domain.com/api/categories/{id}<br>\n    your-domain.com/api/products<br>\n    your-domain.com/api/products/{id}<br>\n    your-domain.com/api/brands<br>\n    your-domain.com/api/brands/{id}<br>\n    your-domain.com/api/supplieres<br>\n    your-domain.com/api/supplieres/{id}<br>\n    </i>', 'admin.api_connection', 'en'),
(1324, 'admin.result_item', 'Showing <b>:item_from</b>-<b>:item_to</b> of <b>:total</b> results</b>', 'admin', 'en'),
(1325, 'admin.result_item', 'Hiển thị <b>:item_from</b>-<b>:item_to</b> của <b>:total</b> kết quả</b>', 'admin', 'vi'),
(1326, 'admin.method_not_allow', 'Method not allow', 'admin', 'en'),
(1327, 'admin.method_not_allow', 'Phương thức không được phép', 'admin', 'vi'),
(1328, 'admin.back_list', 'Back list', 'admin', 'en'),
(1329, 'admin.back_list', 'Trở lại danh sách', 'admin', 'vi'),
(1330, 'admin.msg_change_success', 'All changes have been updated', 'admin', 'en'),
(1331, 'admin.msg_change_success', 'Thay đổi đã được cập nhật', 'admin', 'vi'),
(1332, 'admin.updated_at', 'Updated at', 'admin', 'en'),
(1333, 'admin.updated_at', 'Cập nhật lúc', 'admin', 'vi'),
(1334, 'admin.created_at', 'Created at', 'admin', 'en'),
(1335, 'admin.created_at', 'Tạo lúc', 'admin', 'vi'),
(1336, 'admin.remove_dont_permisison', 'Dont permission remove ', 'admin', 'en'),
(1337, 'admin.remove_dont_permisison', 'Không có quyền gỡ bỏ', 'admin', 'vi'),
(1338, 'admin.delete_dont_permisison', 'Dont permission delete ', 'admin', 'en'),
(1339, 'admin.delete_dont_permisison', 'Không có quyền xóa', 'admin', 'vi'),
(1340, 'admin.attribute_group.list', 'Danh sách nhóm thuộc tính', 'admin.attribute_group', 'vi'),
(1341, 'admin.attribute_group.list', 'Attribute group list', 'admin.attribute_group', 'en'),
(1342, 'admin.attribute_group.name', 'Tên', 'admin.attribute_group', 'vi'),
(1343, 'admin.attribute_group.name', 'Name', 'admin.attribute_group', 'en'),
(1344, 'admin.attribute_group.type', 'Loại', 'admin.attribute_group', 'vi'),
(1345, 'admin.attribute_group.type', 'Type', 'admin.attribute_group', 'en'),
(1346, 'admin.order.search', 'Tìm đơn hàng', 'admin.order', 'vi'),
(1347, 'admin.order.search', 'Search order', 'admin.order', 'en'),
(1348, 'admin.permission.name', 'Tên', 'admin.permission', 'vi'),
(1349, 'admin.permission.name', 'Name', 'admin.permission', 'en'),
(1350, 'admin.permission.list', 'Dánh sách quyền', 'admin.permission', 'vi'),
(1351, 'admin.permission.list', 'Permission list', 'admin.permission', 'en'),
(1352, 'admin.permission.slug', 'Slug', 'admin.permission', 'vi'),
(1353, 'admin.permission.slug', 'Slug', 'admin.permission', 'en'),
(1354, 'admin.permission.select_http_uri', 'Chọn http uri', 'admin.permission', 'vi'),
(1355, 'admin.permission.select_http_uri', 'Select http uri', 'admin.permission', 'en'),
(1356, 'admin.permission.method_placeholder', 'Các quyền', 'admin.permission', 'vi'),
(1357, 'admin.permission.method_placeholder', 'Permission detail', 'admin.permission', 'en'),
(1358, 'admin.permission.http_path', 'Http path', 'admin.permission', 'vi'),
(1359, 'admin.permission.http_path', 'Http path', 'admin.permission', 'en'),
(1360, 'admin.permission.slug_validate', 'Chỉ sử dụng kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"._-\"', 'admin.permission', 'vi'),
(1361, 'admin.permission.slug_validate', 'Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"._-\"', 'admin.permission', 'en'),
(1362, 'admin.permission.add_new_des', 'Tạo mới một quyền', 'admin.permission', 'vi'),
(1363, 'admin.permission.add_new_des', 'Create new permission', 'admin.permission', 'en'),
(1364, 'admin.permission.add_new_title', 'Tạo quyền', 'admin.permission', 'vi'),
(1365, 'admin.permission.add_new_title', 'Create permission', 'admin.permission', 'en'),
(1366, 'admin.backup.title', 'Danh sách sao lưu', 'admin.backup', 'vi'),
(1367, 'admin.backup.title', 'Backup list', 'admin.backup', 'en'),
(1368, 'admin.backup.processing', 'Đang xử lý...', 'admin.backup', 'vi'),
(1369, 'admin.backup.processing', 'Processing...', 'admin.backup', 'en'),
(1370, 'admin.backup.guide', '<span class=\"text-danger\">Chú ý: Bạn cần phải cài đặt đường dẫn hệ thống chính xác. Xem hướng dẫn <a target=_new href=\"https://s-cart.org/guide/backup.html?lang=vi\">TẠI ĐÂY</a></span>', 'admin.backup', 'vi'),
(1371, 'admin.backup.generate_now', 'Tạo một backup ngay', 'admin.backup', 'vi'),
(1372, 'admin.backup.manager', 'Quản lý sao lưu', 'admin.backup', 'vi'),
(1373, 'admin.backup.name', 'Tên file', 'admin.backup', 'vi'),
(1374, 'admin.backup.sort', 'Thứ tự', 'admin.backup', 'vi'),
(1375, 'admin.backup.date', 'Thời gian', 'admin.backup', 'vi'),
(1376, 'admin.backup.size', 'Kích thước', 'admin.backup', 'vi'),
(1377, 'admin.backup.download', 'Tải về', 'admin.backup', 'vi'),
(1378, 'admin.backup.remove', 'Gỡ bỏ', 'admin.backup', 'vi'),
(1379, 'admin.backup.restore', 'Phục hồi', 'admin.backup', 'vi'),
(1380, 'admin.backup.remove_success', 'Xóa file thành công!', 'admin.backup', 'vi'),
(1381, 'admin.backup.restore_success', 'Phục hồi dữ liệu thành công!', 'admin.backup', 'vi'),
(1382, 'admin.backup.generate_success', 'Tạo file backup thành công!', 'admin.backup', 'vi'),
(1383, 'admin.backup.limit_backup', 'Bạn chỉ được tạo tối đa 10 bản sao lưu!', 'admin.backup', 'vi'),
(1384, 'admin.backup.guide', '<span class=\"text-danger\">NOTE: To use MySQL server on the command line, you must have the correct system path. This is usually done automatically. Read document in <a target=_new href=\"https://s-cart.org/guide/backup.html\">HERE</a></span>', 'admin.backup', 'en'),
(1385, 'admin.backup.generate_now', 'Gererate a backup now', 'admin.backup', 'en'),
(1386, 'admin.backup.manager', 'Backup management', 'admin.backup', 'en'),
(1387, 'admin.backup.name', 'File name', 'admin.backup', 'en'),
(1388, 'admin.backup.sort', 'Sort', 'admin.backup', 'en'),
(1389, 'admin.backup.date', 'Date', 'admin.backup', 'en'),
(1390, 'admin.backup.size', 'Size', 'admin.backup', 'en'),
(1391, 'admin.backup.download', 'Download', 'admin.backup', 'en'),
(1392, 'admin.backup.remove', 'Remove', 'admin.backup', 'en'),
(1393, 'admin.backup.restore', 'Restore', 'admin.backup', 'en'),
(1394, 'admin.backup.remove_success', 'Remove successful!', 'admin.backup', 'en'),
(1395, 'admin.backup.restore_success', 'Restore successful!', 'admin.backup', 'en'),
(1396, 'admin.backup.generate_success', 'Create successful backup file!', 'admin.backup', 'en'),
(1397, 'admin.backup.limit_backup', 'You cannot create more than 10 copies', 'admin.backup', 'en'),
(1398, 'admin.banner.type', 'Loại', 'admin.banner', 'vi'),
(1399, 'admin.banner.type', 'Type', 'admin.banner', 'en'),
(1400, 'admin.banner.add_new', 'Thêm mới banner', 'admin.banner', 'vi'),
(1401, 'admin.banner.add_new', 'Add new banner', 'admin.banner', 'en'),
(1402, 'admin.banner.image', 'Hình ảnh', 'admin.banner', 'vi'),
(1403, 'admin.banner.image', 'Image', 'admin.banner', 'en'),
(1404, 'admin.banner.title', 'Tiêu đề', 'admin.banner', 'vi'),
(1405, 'admin.banner.title', 'Title', 'admin.banner', 'en'),
(1406, 'admin.banner.url', 'URL', 'admin.banner', 'vi'),
(1407, 'admin.banner.url', 'URL', 'admin.banner', 'en'),
(1408, 'admin.banner.sort', 'Thứ tự', 'admin.banner', 'vi'),
(1409, 'admin.banner.sort', 'Sort', 'admin.banner', 'en'),
(1410, 'admin.banner.status', 'Trạng thái', 'admin.banner', 'vi'),
(1411, 'admin.banner.status', 'Status', 'admin.banner', 'en'),
(1412, 'admin.banner.click', 'Bấm chuột', 'admin.banner', 'vi'),
(1413, 'admin.banner.click', 'Click', 'admin.banner', 'en'),
(1414, 'admin.banner.target', 'Target', 'admin.banner', 'vi'),
(1415, 'admin.banner.target', 'Target', 'admin.banner', 'en'),
(1416, 'admin.banner.select_target', 'Chọn target', 'admin.banner', 'vi'),
(1417, 'admin.banner.select_target', 'Select target', 'admin.banner', 'en'),
(1418, 'admin.banner.list', 'Danh sách banner', 'admin.banner', 'vi'),
(1419, 'admin.banner.list', 'Banner list', 'admin.banner', 'en'),
(1420, 'admin.banner_type.list', 'Loại banner', 'admin.banner', 'vi'),
(1421, 'admin.banner_type.list', 'Banner type list', 'admin.banner', 'en'),
(1422, 'admin.banner_type.add_new_title', 'Thêm loại mới', 'admin.banner', 'vi'),
(1423, 'admin.banner_type.add_new_title', 'Add new type', 'admin.banner', 'en'),
(1424, 'admin.banner_type.code', 'Mã', 'admin.banner', 'vi'),
(1425, 'admin.banner_type.code', 'Code', 'admin.banner', 'en'),
(1426, 'admin.banner_type.name', 'Tên', 'admin.banner', 'vi'),
(1427, 'admin.banner_type.name', 'Name', 'admin.banner', 'en'),
(1428, 'admin.brand.list', 'Danh sách nhãn hiệu', 'admin.brand', 'vi'),
(1429, 'admin.brand.list', 'Brand list', 'admin.brand', 'en'),
(1430, 'admin.brand.add_new_title', 'Thêm mới nhãn hiệu', 'admin.brand', 'vi'),
(1431, 'admin.brand.add_new_title', 'Add new brand', 'admin.brand', 'en'),
(1432, 'admin.brand.image', 'Hình ảnh', 'admin.brand', 'vi'),
(1433, 'admin.brand.image', 'Image', 'admin.brand', 'en'),
(1434, 'admin.brand.name', 'Tên', 'admin.brand', 'vi'),
(1435, 'admin.brand.name', 'Name', 'admin.brand', 'en'),
(1436, 'admin.brand.sort', 'Thứ tự', 'admin.brand', 'vi'),
(1437, 'admin.brand.sort', 'Sort', 'admin.brand', 'en'),
(1438, 'admin.brand.status', 'Trạng thái', 'admin.brand', 'vi'),
(1439, 'admin.brand.status', 'Status', 'admin.brand', 'en'),
(1440, 'admin.brand.alias', 'Alias', 'admin.brand', 'vi'),
(1441, 'admin.brand.alias', 'Alias', 'admin.brand', 'en'),
(1442, 'admin.brand.url', 'Url', 'admin.brand', 'vi'),
(1443, 'admin.brand.url', 'Url', 'admin.brand', 'en'),
(1444, 'admin.brand.alias_validate', 'Tối đa 100 kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'admin.brand', 'vi'),
(1445, 'admin.brand.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'admin.brand', 'en'),
(1446, 'admin.cache.title', 'Cấu hình bộ nhớ Cache', 'admin.cache', 'vi'),
(1447, 'admin.cache.title', 'config cache manager', 'admin.cache', 'en'),
(1448, 'admin.cache.cache_clear_processing', 'Đang xóa Cache', 'admin.cache', 'vi');
INSERT INTO `languages` (`id`, `code`, `text`, `position`, `location`) VALUES
(1449, 'admin.cache.cache_clear_processing', 'Cache clearing', 'admin.cache', 'en'),
(1450, 'admin.cache.cache_status', 'Trạng thái', 'admin.cache', 'vi'),
(1451, 'admin.cache.cache_status', 'Status', 'admin.cache', 'en'),
(1452, 'admin.cache.cache_clear_all', 'Xóa tất cả Cache', 'admin.cache', 'vi'),
(1453, 'admin.cache.cache_clear_all', 'Clear all cache', 'admin.cache', 'en'),
(1454, 'admin.cache.cache_clear_success', 'Đã xóa cache xong', 'admin.cache', 'vi'),
(1455, 'admin.cache.cache_clear_success', 'Clear cache success', 'admin.cache', 'en'),
(1456, 'admin.cache.cache_refresh', 'Làm mới cache', 'admin.cache', 'vi'),
(1457, 'admin.cache.cache_refresh', 'Cache refresh', 'admin.cache', 'en'),
(1458, 'admin.cache.cache_clear', 'Xóa cache', 'admin.cache', 'vi'),
(1459, 'admin.cache.cache_clear', 'Clear cache', 'admin.cache', 'en'),
(1460, 'admin.cache.cache_all', 'Cache tất cả', 'admin.cache', 'vi'),
(1461, 'admin.cache.cache_all', 'Cache all', 'admin.cache', 'en'),
(1462, 'admin.cache.cache_time', 'Thời gian cache (giây)', 'admin.cache', 'vi'),
(1463, 'admin.cache.cache_time', 'Cache time (s)', 'admin.cache', 'en'),
(1464, 'admin.cache.value', 'Giá trị', 'admin.cache', 'vi'),
(1465, 'admin.cache.value', 'Value', 'admin.cache', 'en'),
(1466, 'admin.cache.field', 'Trường', 'admin.cache', 'vi'),
(1467, 'admin.cache.field', 'Field', 'admin.cache', 'en'),
(1468, 'admin.cache.cache_category', 'Cache Danh mục sản phẩm', 'admin.cache', 'vi'),
(1469, 'admin.cache.cache_product', 'Cache Sản phẩm', 'admin.cache', 'vi'),
(1470, 'admin.cache.cache_news', 'Cache Tin tức/Blog', 'admin.cache', 'vi'),
(1471, 'admin.cache.cache_category_cms', 'Cache Danh mục CMS', 'admin.cache', 'vi'),
(1472, 'admin.cache.cache_content_cms', 'Cache Nội dung CMS', 'admin.cache', 'vi'),
(1473, 'admin.cache.cache_page', 'Cache Trang viết', 'admin.cache', 'vi'),
(1474, 'admin.cache.cache_store', 'Cache Cửa hàng', 'admin.cache', 'vi'),
(1475, 'admin.cache.cache_country', 'Cache Quốc gia', 'admin.cache', 'vi'),
(1476, 'admin.cache.cache_category', 'Cache categoty', 'admin.cache', 'en'),
(1477, 'admin.cache.cache_product', 'Cache product', 'admin.cache', 'en'),
(1478, 'admin.cache.cache_news', 'Cache News/Blog', 'admin.cache', 'en'),
(1479, 'admin.cache.cache_category_cms', 'Cache Category CMS', 'admin.cache', 'en'),
(1480, 'admin.cache.cache_content_cms', 'Cache CMS content', 'admin.cache', 'en'),
(1481, 'admin.cache.cache_page', 'Cache page', 'admin.cache', 'en'),
(1482, 'admin.cache.cache_store', 'Cache Store', 'admin.cache', 'en'),
(1483, 'admin.cache.cache_country', 'Cache country', 'admin.cache', 'en'),
(1484, 'admin.category.list', 'Danh sách danh mục', 'admin.category', 'vi'),
(1485, 'admin.category.list', 'Category list', 'admin.category', 'en'),
(1486, 'admin.category.add_new_title', 'Thêm mới danh mục', 'admin.category', 'vi'),
(1487, 'admin.category.add_new_title', 'Add new category', 'admin.category', 'en'),
(1488, 'admin.category.add_new_des', 'Thêm mới', 'admin.category', 'vi'),
(1489, 'admin.category.add_new_des', 'Add new', 'admin.category', 'en'),
(1490, 'admin.category.image', 'Hình ảnh', 'admin.category', 'vi'),
(1491, 'admin.category.image', 'Image', 'admin.category', 'en'),
(1492, 'admin.category.title', 'Tên', 'admin.category', 'vi'),
(1493, 'admin.category.title', 'Name', 'admin.category', 'en'),
(1494, 'admin.category.alias', 'URL tùy chỉnh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.category', 'vi'),
(1495, 'admin.category.alias_validate', 'Tối đa 100 kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.category', 'vi'),
(1496, 'admin.category.alias', 'Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.category', 'en'),
(1497, 'admin.category.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.category', 'en'),
(1498, 'admin.category.keyword', 'Từ khóa', 'admin.category', 'vi'),
(1499, 'admin.category.keyword', 'Keyword', 'admin.category', 'en'),
(1500, 'admin.category.description', 'Mô tả', 'admin.category', 'vi'),
(1501, 'admin.category.description', 'Description', 'admin.category', 'en'),
(1502, 'admin.category.top', 'Công cộng', 'admin.category', 'vi'),
(1503, 'admin.category.top', 'Public', 'admin.category', 'en'),
(1504, 'admin.category.parent', 'Cấp cha', 'admin.category', 'vi'),
(1505, 'admin.category.parent', 'Parent', 'admin.category', 'en'),
(1506, 'admin.category.sort', 'Thứ tự', 'admin.category', 'vi'),
(1507, 'admin.category.sort', 'Sort', 'admin.category', 'en'),
(1508, 'admin.category.status', 'Trạng thái', 'admin.category', 'vi'),
(1509, 'admin.category.status', 'Status', 'admin.category', 'en'),
(1510, 'admin.category.select_category', 'Chọn danh mục', 'admin.category', 'vi'),
(1511, 'admin.category.select_category', 'Select category', 'admin.category', 'en'),
(1512, 'admin.category.top_help', 'Danh mục này sẽ hiển thị ra ngoài trang chủ. Mặc định chỉ dành cho những danh mục Root.', 'admin.category', 'vi'),
(1513, 'admin.category.top_help', 'This category will display outside the homepage. The default is for Root items only.', 'admin.category', 'en'),
(1514, 'admin.config.webhook', 'Webhook', 'admin.config', 'vi'),
(1515, 'admin.config.webhook', 'Webhook', 'admin.config', 'en'),
(1516, 'admin.config.setting_website', 'Cài đặt website', 'admin.config', 'vi'),
(1517, 'admin.config.setting_website', 'Setting website', 'admin.config', 'en'),
(1518, 'admin.config.LOG_SLACK_WEBHOOK_URL', 'Gửi tới Slack webhook', 'admin.config', 'vi'),
(1519, 'admin.config.LOG_SLACK_WEBHOOK_URL', 'Report error to Slack webhook', 'admin.config', 'en'),
(1520, 'admin.config.GOOGLE_CHAT_WEBHOOK_URL', 'Gửi tới Google webhook', 'admin.config', 'vi'),
(1521, 'admin.config.GOOGLE_CHAT_WEBHOOK_URL', 'Report error to Google webhook', 'admin.config', 'en'),
(1522, 'admin.config.CHATWORK_CHAT_WEBHOOK_URL', 'Gửi tới Chatword webhook', 'admin.config', 'vi'),
(1523, 'admin.config.CHATWORK_CHAT_WEBHOOK_URL', 'Report error to Chatword webhook', 'admin.config', 'en'),
(1524, 'admin.config.LOG_SLACK_WEBHOOK_URL_help', 'Link https: //hooks.slack.com/services/...', 'admin.config', 'vi'),
(1525, 'admin.config.LOG_SLACK_WEBHOOK_URL_help', 'Link https: //hooks.slack.com/services/...', 'admin.config', 'en'),
(1526, 'admin.currency.list', 'Danh sách tiền tệ', 'admin.currency', 'vi'),
(1527, 'admin.currency.list', 'Currencies list', 'admin.currency', 'en'),
(1528, 'admin.currency.name', 'Tên', 'admin.currency', 'vi'),
(1529, 'admin.currency.name', 'Name', 'admin.currency', 'en'),
(1530, 'admin.currency.code', 'Mã', 'admin.currency', 'vi'),
(1531, 'admin.currency.code', 'Code', 'admin.currency', 'en'),
(1532, 'admin.currency.symbol', 'Ký hiệu', 'admin.currency', 'vi'),
(1533, 'admin.currency.symbol', 'Symbol', 'admin.currency', 'en'),
(1534, 'admin.currency.exchange_rate', 'Tỉ giá', 'admin.currency', 'vi'),
(1535, 'admin.currency.exchange_rate', 'Exchange rate', 'admin.currency', 'en'),
(1536, 'admin.currency.precision', 'Số chữ số thập phân', 'admin.currency', 'vi'),
(1537, 'admin.currency.precision', 'Precision', 'admin.currency', 'en'),
(1538, 'admin.currency.symbol_first', 'Hiện kí hiệu đầu tiên', 'admin.currency', 'vi'),
(1539, 'admin.currency.symbol_first', 'Symbol first', 'admin.currency', 'en'),
(1540, 'admin.currency.thousands', 'Ngăn cách phần nghìn', 'admin.currency', 'vi'),
(1541, 'admin.currency.thousands', 'Thousands separator', 'admin.currency', 'en'),
(1542, 'admin.currency.status', 'Trạng thái', 'admin.currency', 'vi'),
(1543, 'admin.currency.status', 'Status', 'admin.currency', 'en'),
(1544, 'admin.currency.sort', 'Thứ tự', 'admin.currency', 'vi'),
(1545, 'admin.currency.sort', 'Sort', 'admin.currency', 'en'),
(1546, 'admin.currency.add_new_title', 'Thêm mới tiền tệ', 'admin.currency', 'vi'),
(1547, 'admin.currency.add_new_title', 'Add new currency', 'admin.currency', 'en'),
(1548, 'admin.currency.add_new_des', 'Thêm mới', 'admin.currency', 'vi'),
(1549, 'admin.currency.add_new_des', 'Add new', 'admin.currency', 'en'),
(1550, 'admin.custom_field.title', 'Field dữ liệu tùy chỉnh', 'admin.custom_field', 'vi'),
(1551, 'admin.custom_field.title', 'Custom field', 'admin.custom_field', 'en'),
(1552, 'admin.custom_field.list', 'Danh sách field tùy chỉnh', 'admin.custom_field', 'vi'),
(1553, 'admin.custom_field.list', 'Custom field list', 'admin.custom_field', 'en'),
(1554, 'admin.custom_field.status', 'Trạng thái', 'admin.custom_field', 'vi'),
(1555, 'admin.custom_field.status', 'Status', 'admin.custom_field', 'en'),
(1556, 'admin.custom_field.sort', 'Thứ tự', 'admin.custom_field', 'vi'),
(1557, 'admin.custom_field.sort', 'Sort', 'admin.custom_field', 'en'),
(1558, 'admin.custom_field.add_new_title', 'Thêm mới field', 'admin.custom_field', 'vi'),
(1559, 'admin.custom_field.add_new_title', 'Add new field', 'admin.custom_field', 'en'),
(1560, 'admin.custom_field.add_new_des', 'Thêm mới', 'admin.custom_field', 'vi'),
(1561, 'admin.custom_field.add_new_des', 'Add new', 'admin.custom_field', 'en'),
(1562, 'admin.custom_field.name', 'Tên', 'admin.custom_field', 'vi'),
(1563, 'admin.custom_field.name', 'Name', 'admin.custom_field', 'en'),
(1564, 'admin.custom_field.code', 'Mã', 'admin.custom_field', 'vi'),
(1565, 'admin.custom_field.code', 'Code', 'admin.custom_field', 'en'),
(1566, 'admin.custom_field.type', 'Loại', 'admin.custom_field', 'vi'),
(1567, 'admin.custom_field.type', 'Type', 'admin.custom_field', 'en'),
(1568, 'admin.custom_field.required', 'Bắt buộc', 'admin.custom_field', 'vi'),
(1569, 'admin.custom_field.required', 'Required', 'admin.custom_field', 'en'),
(1570, 'admin.custom_field.option', 'Tùy chọn', 'admin.custom_field', 'vi'),
(1571, 'admin.custom_field.option', 'Option', 'admin.custom_field', 'en'),
(1572, 'admin.custom_field.default', 'Mặc định', 'admin.custom_field', 'vi'),
(1573, 'admin.custom_field.default', 'Default', 'admin.custom_field', 'en'),
(1574, 'admin.custom_field.default_help', 'Định dạng cho \"Tùy chọn\" là Radio hoặc Select:<br>{\"value1\": \"Name 1\", \"value2\":\"Name 2\"}', 'admin.custom_field', 'vi'),
(1575, 'admin.custom_field.default_help', 'Format for \"Option\" is Radio or Select:<br>{\"value1\": \"Name 1\", \"value2\":\"Name 2\"}', 'admin.custom_field', 'en'),
(1576, 'admin.env.APP_DEBUG', 'DEBUG mode', 'admin.env', 'en'),
(1577, 'admin.env.APP_URL', 'URL app', 'admin.env', 'en'),
(1578, 'admin.env.APP_ENV', 'Environment mode', 'admin.env', 'en'),
(1579, 'admin.env.ADMIN_PREFIX', 'Admin prefix', 'admin.env', 'en'),
(1580, 'admin.env.ADMIN_NAME', 'Admin name', 'admin.env', 'en'),
(1581, 'admin.env.ADMIN_LOGO', 'Admin logo', 'admin.env', 'en'),
(1582, 'admin.env.ADMIN_LOGO_MINI', 'Admin logo mini', 'admin.env', 'en'),
(1583, 'admin.env.ADMIN_TITLE', 'Admin title', 'admin.env', 'en'),
(1584, 'admin.env.ADMIN_LOG', 'Admin log', 'admin.env', 'en'),
(1585, 'admin.env.field', 'Field', 'admin.env', 'en'),
(1586, 'admin.env.value', 'Value', 'admin.env', 'en'),
(1587, 'admin.env.title', 'Config environment', 'admin.env', 'en'),
(1588, 'admin.env.SUFFIX_URL', 'Suffix URL', 'admin.env', 'en'),
(1589, 'admin.env.PREFIX_BRAND', 'Prefix url BRAND', 'admin.env', 'en'),
(1590, 'admin.env.PREFIX_SUPPLIER', 'Prefix url SUPPLIER', 'admin.env', 'en'),
(1591, 'admin.env.PREFIX_CATEGORY', 'Prefix url CATEGORY ', 'admin.env', 'en'),
(1592, 'admin.env.PREFIX_SUB_CATEGORY', 'Prefix url sub CATEGORY', 'admin.env', 'en'),
(1593, 'admin.env.PREFIX_PRODUCT', 'Prefix url PRODUCT', 'admin.env', 'en'),
(1594, 'admin.env.PREFIX_SEARCH', 'Prefix url SEARCH', 'admin.env', 'en'),
(1595, 'admin.env.PREFIX_CONTACT', 'Prefix url CONTACT', 'admin.env', 'en'),
(1596, 'admin.env.PREFIX_NEWS', 'Prefix url NEWS', 'admin.env', 'en'),
(1597, 'admin.env.PREFIX_MEMBER', 'Prefix url CUSTOMER', 'admin.env', 'en'),
(1598, 'admin.env.PREFIX_MEMBER_ORDER_LIST', 'Prefix url CUSTOMER ORDER', 'admin.env', 'en'),
(1599, 'admin.env.PREFIX_MEMBER_CHANGE_PWD', 'Prefix url CHANGE PASSWOD', 'admin.env', 'en'),
(1600, 'admin.env.PREFIX_MEMBER_CHANGE_INFO', 'Prefix url CHANGE INFO', 'admin.env', 'en'),
(1601, 'admin.env.PREFIX_CMS_CATEGORY', 'Prefix url CMS CATEGORY', 'admin.env', 'en'),
(1602, 'admin.env.PREFIX_CMS_ENTRY', 'Prefix url CMS ENTRY', 'admin.env', 'en'),
(1603, 'admin.env.PREFIX_CART_WISHLIST', 'Prefix url WISHLIST', 'admin.env', 'en'),
(1604, 'admin.env.PREFIX_CART_COMPARE', 'Prefix url COMPARE', 'admin.env', 'en'),
(1605, 'admin.env.PREFIX_CART_DEFAULT', 'Prefix url CART', 'admin.env', 'en'),
(1606, 'admin.env.PREFIX_CART_CHECKOUT', 'Prefix url CHECKOUT', 'admin.env', 'en'),
(1607, 'admin.env.PREFIX_CART_CHECKOUT_CONFIRM', 'Prefix url CHECKOUT CONFIRM', 'admin.env', 'en'),
(1608, 'admin.env.PREFIX_ORDER_SUCCESS', 'Prefix url ORDER SUCCESS', 'admin.env', 'en'),
(1609, 'admin.env.PREFIX_SHOP', 'Link shop', 'admin.env', 'en'),
(1610, 'admin.env.ADMIN_FOOTER_OFF', 'Hidden footer of page admin', 'admin.env', 'en'),
(1611, 'admin.env.ADMIN_CUSTOMIZE_TEMPLATE', 'Customize template admin', 'admin.env', 'en'),
(1612, 'admin.env.APP_DEBUG', 'Chế độ sửa lỗi', 'admin.env', 'vi'),
(1613, 'admin.env.APP_URL', 'URL website', 'admin.env', 'vi'),
(1614, 'admin.env.APP_ENV', 'Môi trường', 'admin.env', 'vi'),
(1615, 'admin.env.ADMIN_PREFIX', 'Tiền tố admin', 'admin.env', 'vi'),
(1616, 'admin.env.ADMIN_NAME', 'Tên trang admin', 'admin.env', 'vi'),
(1617, 'admin.env.ADMIN_LOGO', 'Logo admin', 'admin.env', 'vi'),
(1618, 'admin.env.ADMIN_LOGO_MINI', 'Logo nhỏ', 'admin.env', 'vi'),
(1619, 'admin.env.ADMIN_TITLE', 'Tiêu đề admin', 'admin.env', 'vi'),
(1620, 'admin.env.ADMIN_LOG', 'Lịch sử truy cập admin', 'admin.env', 'vi'),
(1621, 'admin.env.field', 'Trường dữ liệu', 'admin.env', 'vi'),
(1622, 'admin.env.value', 'Giá trị', 'admin.env', 'vi'),
(1623, 'admin.env.title', 'Cấu hình môi trường', 'admin.env', 'vi'),
(1624, 'admin.env.SUFFIX_URL', 'Hậu tố URL', 'admin.env', 'vi'),
(1625, 'admin.env.PREFIX_BRAND', 'Tiền tố trang BRAND', 'admin.env', 'vi'),
(1626, 'admin.env.PREFIX_SUPPLIER', 'Tiền tố trang SUPPLIER', 'admin.env', 'vi'),
(1627, 'admin.env.PREFIX_CATEGORY', 'Tiền tố trang CATEGORY ', 'admin.env', 'vi'),
(1628, 'admin.env.PREFIX_SUB_CATEGORY', 'Tiền tố trang CATEGORY nhỏ', 'admin.env', 'vi'),
(1629, 'admin.env.PREFIX_PRODUCT', 'Tiền tố trang PRODUCT', 'admin.env', 'vi'),
(1630, 'admin.env.PREFIX_SEARCH', 'Tiền tố trang SEARCH', 'admin.env', 'vi'),
(1631, 'admin.env.PREFIX_CONTACT', 'Tiền tố trang CONTACT', 'admin.env', 'vi'),
(1632, 'admin.env.PREFIX_NEWS', 'Tiền tố trang NEWS', 'admin.env', 'vi'),
(1633, 'admin.env.PREFIX_MEMBER', 'Tiền tố trang CUSTOMER', 'admin.env', 'vi'),
(1634, 'admin.env.PREFIX_MEMBER_ORDER_LIST', 'Tiền tố trang CUSTOMER ORDER', 'admin.env', 'vi'),
(1635, 'admin.env.PREFIX_MEMBER_CHANGE_PWD', 'Tiền tố trang CHANGE PASSWOD', 'admin.env', 'vi'),
(1636, 'admin.env.PREFIX_MEMBER_CHANGE_INFO', 'Tiền tố trang CHANGE INFO', 'admin.env', 'vi'),
(1637, 'admin.env.PREFIX_CMS_CATEGORY', 'Tiền tố trang CMS CATEGORY', 'admin.env', 'vi'),
(1638, 'admin.env.PREFIX_CMS_ENTRY', 'Tiền tố trang CMS ENTRY', 'admin.env', 'vi'),
(1639, 'admin.env.PREFIX_CART_WISHLIST', 'Tiền tố trang WISHLIST', 'admin.env', 'vi'),
(1640, 'admin.env.PREFIX_CART_COMPARE', 'Tiền tố trang COMPARE', 'admin.env', 'vi'),
(1641, 'admin.env.PREFIX_CART_DEFAULT', 'Tiền tố trang CART', 'admin.env', 'vi'),
(1642, 'admin.env.PREFIX_CART_CHECKOUT', 'Tiền tố trang CHECKOUT', 'admin.env', 'vi'),
(1643, 'admin.env.PREFIX_CART_CHECKOUT_CONFIRM', 'Tiền tố trang CHECKOUT CONFIRM', 'admin.env', 'vi'),
(1644, 'admin.env.PREFIX_ORDER_SUCCESS', 'Tiền tố trang ORDER SUCCESS', 'admin.env', 'vi'),
(1645, 'admin.env.PREFIX_SHOP', 'Link Cửa hàng', 'admin.env', 'vi'),
(1646, 'admin.env.ADMIN_FOOTER_OFF', 'Ẩn footer của trang admin', 'admin.env', 'vi'),
(1647, 'admin.env.ADMIN_CUSTOMIZE_TEMPLATE', 'Tùy chỉnh giao diện Admin', 'admin.env', 'vi'),
(1648, 'admin.email_template.name', 'Tên', 'admin.email_template', 'vi'),
(1649, 'admin.email_template.list', 'Danh sách mẫu email', 'admin.email_template', 'vi'),
(1650, 'admin.email_template.list', 'Email template list', 'admin.email_template', 'en'),
(1651, 'admin.email_template.status', 'Trạng thái', 'admin.email_template', 'vi'),
(1652, 'admin.email_template.group', 'Nhóm', 'admin.email_template', 'vi'),
(1653, 'admin.email_template.html', 'HTML', 'admin.email_template', 'vi'),
(1654, 'admin.email_template.text', 'Nội dung', 'admin.email_template', 'vi'),
(1655, 'admin.email_template.name', 'Name', 'admin.email_template', 'en'),
(1656, 'admin.email_template.lits', 'Email template list', 'admin.email_template', 'en'),
(1657, 'admin.email_template.group', 'Group', 'admin.email_template', 'en'),
(1658, 'admin.email_template.text', 'Content', 'admin.email_template', 'en'),
(1659, 'admin.email_template.html', 'HTML', 'admin.email_template', 'en'),
(1660, 'admin.email_template.status', 'Status', 'admin.email_template', 'en'),
(1661, 'admin.email_template.add_new_title', 'Add template', 'admin.email_template', 'en'),
(1662, 'admin.email_template.add_new_des', 'Create a new template', 'admin.email_template', 'en'),
(1663, 'admin.email_template.variable_support', 'Variables support:', 'admin.email_template', 'en'),
(1664, 'admin.email_template.add_new_title', 'Tạo template', 'admin.email_template', 'vi'),
(1665, 'admin.email_template.add_new_des', 'Tạo mới template', 'admin.email_template', 'vi'),
(1666, 'admin.email_template.variable_support', 'Các biến hỗ trợ', 'admin.email_template', 'vi'),
(1667, 'admin.language.list', 'Language list', 'admin.language', 'en'),
(1668, 'admin.language.list', 'Danh sách ngôn ngữ', 'admin.language', 'vi'),
(1669, 'admin.language.select_lang', 'Select language', 'admin.language', 'en'),
(1670, 'admin.language.select_lang', 'Chọn ngôn ngữ', 'admin.language', 'vi'),
(1671, 'admin.language.select_position', 'Select position', 'admin.language', 'en'),
(1672, 'admin.language.select_position', 'Chọn vị trí ngôn ngữ', 'admin.language', 'vi'),
(1673, 'admin.language.name', 'Name', 'admin.language', 'en'),
(1674, 'admin.language.icon', 'Icon', 'admin.language', 'en'),
(1675, 'admin.language.code', 'Code', 'admin.language', 'en'),
(1676, 'admin.language.sort', 'Sort', 'admin.language', 'en'),
(1677, 'admin.language.status', 'Status', 'admin.language', 'en'),
(1678, 'admin.language.layout_rtl', 'Layout RTL', 'admin.language', 'en'),
(1679, 'admin.language.add_new_title', 'Add language', 'admin.language', 'en'),
(1680, 'admin.language.add_new_des', 'Create a new language', 'admin.language', 'en'),
(1681, 'admin.language.name', 'Tên ngôn ngữ', 'admin.language', 'vi'),
(1682, 'admin.language.icon', 'Icon', 'admin.language', 'vi'),
(1683, 'admin.language.code', 'Code', 'admin.language', 'vi'),
(1684, 'admin.language.sort', 'Thứ tự', 'admin.language', 'vi'),
(1685, 'admin.language.status', 'Status', 'admin.language', 'vi'),
(1686, 'admin.language.layout_rtl', 'Giao diện RTL', 'admin.language', 'vi'),
(1687, 'admin.language.add_new_title', 'Tạo ngôn ngữ', 'admin.language', 'vi'),
(1688, 'admin.language.add_new_des', 'Tạo mới ngôn ngữ', 'admin.language', 'vi'),
(1689, 'admin.language_manager.title', 'Quản lý ngôn ngữ', 'admin.language', 'vi'),
(1690, 'admin.language_manager.title', 'Language manager', 'admin.language', 'en'),
(1691, 'admin.language_manager.add', 'Thêm giá trị mới', 'admin.language', 'vi'),
(1692, 'admin.language_manager.add', 'Add new record language', 'admin.language', 'en'),
(1693, 'admin.language_manager.position', 'Vị trí mới ngôn ngữ', 'admin.language', 'vi'),
(1694, 'admin.language_manager.position', 'Position language', 'admin.language', 'en'),
(1695, 'admin.language_manager.new_position', 'Hoặc thêm vị trí mới', 'admin.language', 'vi'),
(1696, 'admin.language_manager.new_position', 'Or add new position', 'admin.language', 'en'),
(1697, 'admin.language_manager.code', 'Mã code', 'admin.language', 'vi'),
(1698, 'admin.language_manager.code', 'Code', 'admin.language', 'en'),
(1699, 'admin.language_manager.text', 'Nội dung ngôn ngữ', 'admin.language', 'vi'),
(1700, 'admin.language_manager.text', 'Language content', 'admin.language', 'en'),
(1701, 'admin.language_manager.text_help', 'Mặc định, giá trị mới chỉ được thêm cho tiếng Anh. <br>Để cập nhật cho ngôn ngữ khác, tìm giá trị mới thêm và chỉnh sửa <a href=\":link\">Ở ĐÂY</a>', 'admin.language', 'vi'),
(1702, 'admin.language_manager.text_help', 'By default, the new value is only added for English. <br>To update for other languages, find the newly added value and edit <a href=\":link\">HERE</a>', 'admin.language', 'en'),
(1703, 'admin.language_manager.select_position', 'Chọn vị trí ngôn ngữ', 'admin.language', 'vi'),
(1704, 'admin.language_manager.select_position', 'Select position of language', 'admin.language', 'en'),
(1705, 'admin.menu.list', 'Quản lý menu', 'admin.emnu', 'vi'),
(1706, 'admin.menu.create', 'Tạo mới menu', 'admin.emnu', 'vi'),
(1707, 'admin.menu.edit', 'Chỉnh sửa menu', 'admin.emnu', 'vi'),
(1708, 'admin.menu.error_have_child', 'Cần xóa các menu bên trong trước khi làm điều này!', 'admin.emnu', 'vi'),
(1709, 'admin.menu.parent', 'Cha', 'admin.emnu', 'vi'),
(1710, 'admin.menu.title', 'Tiêu đề', 'admin.emnu', 'vi'),
(1711, 'admin.menu.icon', 'Icon', 'admin.emnu', 'vi'),
(1712, 'admin.menu.uri', 'URI', 'admin.emnu', 'vi'),
(1713, 'admin.menu.roles', 'Vai trò', 'admin.emnu', 'vi'),
(1714, 'admin.menu.permissions', 'Quyền', 'admin.emnu', 'vi'),
(1715, 'admin.menu.create_success', 'Tạo mới thành công!', 'admin.emnu', 'vi'),
(1716, 'admin.menu.edit_success', 'Cập nhật thành công!', 'admin.emnu', 'vi'),
(1717, 'admin.menu.sort', 'Thứ tự', 'admin.emnu', 'vi'),
(1718, 'admin.menu.list', 'Menu manager', 'admin.emnu', 'en'),
(1719, 'admin.menu.create', 'Create new menu', 'admin.emnu', 'en'),
(1720, 'admin.menu.edit', 'Edit menu', 'admin.emnu', 'en'),
(1721, 'admin.menu.error_have_child', 'Need to delete the internal menus before doing this!', 'admin.emnu', 'en'),
(1722, 'admin.menu.parent', 'Parent', 'admin.emnu', 'en'),
(1723, 'admin.menu.title', 'Title', 'admin.emnu', 'en'),
(1724, 'admin.menu.icon', 'Icon', 'admin.emnu', 'en'),
(1725, 'admin.menu.uri', 'URI', 'admin.emnu', 'en'),
(1726, 'admin.menu.roles', 'Roles', 'admin.emnu', 'en'),
(1727, 'admin.menu.permissions', 'Permissions', 'admin.emnu', 'en'),
(1728, 'admin.menu.create_success', 'Create new item success!', 'admin.emnu', 'en'),
(1729, 'admin.menu.edit_success', 'Edit item success!', 'admin.emnu', 'en'),
(1730, 'admin.menu.sort', 'Sort', 'admin.emnu', 'en'),
(1731, 'email.admin.order_success_to_admin', 'Send order success to admin', 'email.admin', 'en'),
(1732, 'email.admin.order_success_to_cutomer', 'Send order success to customer', 'email.admin', 'en'),
(1733, 'email.admin.order_success_to_cutomer_pdf', 'Send order success to customer with pdf invoice', 'email.admin', 'en'),
(1734, 'email.admin.forgot_password', 'Send email forgot', 'email.admin', 'en'),
(1735, 'email.admin.welcome_customer', 'Send email welcome', 'email.admin', 'en'),
(1736, 'email.admin.contact_to_customer', 'Send email contact to customer', 'email.admin', 'en'),
(1737, 'email.admin.contact_to_admin', 'Send email contact to admin', 'email.admin', 'en'),
(1738, 'email.email_action_queue', 'Use send mail queue <span class=\"text-red\">(*)</span>', 'email.admin', 'en'),
(1739, 'email.admin.other', 'Other', 'email.admin', 'en'),
(1740, 'email.admin.customer_verify', 'Send account verification email', 'email.admin', 'en'),
(1741, 'email.admin.order_success_to_admin', 'Gửi đơn hàng thành công cho admin', 'email.admin', 'vi'),
(1742, 'email.admin.order_success_to_cutomer_pdf', 'Gửi đơn hàng thành công cho khách kèm PDF', 'email.admin', 'vi'),
(1743, 'email.admin.order_success_to_cutomer', 'Gửi đơn hàng thành công cho khách', 'email.admin', 'vi'),
(1744, 'email.admin.forgot_password', 'Gửi mail quên mật khẩu', 'email.admin', 'vi'),
(1745, 'email.admin.welcome_customer', 'Gửi mail chào mừng', 'email.admin', 'vi'),
(1746, 'email.admin.contact_to_customer', 'Gửi mail form liên hệ cho khách', 'email.admin', 'vi'),
(1747, 'email.admin.contact_to_admin', 'Gửi mail form liên hệ cho admin', 'email.admin', 'vi'),
(1748, 'email.email_action_queue', 'Gửi mail qua hàng đợi <span class=\"text-red\">(*)</span>', 'email.admin', 'vi'),
(1749, 'email.admin.config_smtp', 'Cấu hình SMTP', 'email.admin', 'vi'),
(1750, 'email.admin.other', 'Loại khác', 'email.admin', 'vi'),
(1751, 'email.admin.customer_verify', 'Gửi email xác thực tài khoản', 'email.admin', 'vi'),
(1752, 'email.admin.config_mode', 'Config mode', 'email.admin', 'en'),
(1753, 'email.admin.config_smtp', 'Config SMTP', 'email.admin', 'en'),
(1754, 'email.admin.config_mode', 'Cấu hình mode', 'email.admin', 'vi'),
(1755, 'email.email_action.type', 'Action type', 'email.admin', 'en'),
(1756, 'email.email_action.mode', 'Action mode', 'email.admin', 'en'),
(1757, 'email.email_action.sort', 'Action sort', 'email.admin', 'en'),
(1758, 'email.email_action.order_success_to_admin', 'Send order success to admin', 'email.admin', 'en'),
(1759, 'email.email_action.order_success_to_cutomer', 'Send order success to customer', 'email.admin', 'en'),
(1760, 'email.email_action.order_success_to_cutomer_pdf', 'Send order success to customer with pdf invoice', 'email.admin', 'en'),
(1761, 'email.email_action.forgot_password', 'Send email forgot', 'email.admin', 'en'),
(1762, 'email.email_action.customer_verify', 'Customer verification', 'email.admin', 'en'),
(1763, 'email.email_action.welcome_customer', 'Send email welcome', 'email.admin', 'en'),
(1764, 'email.email_action.contact_to_customer', 'Send email contact to customer', 'email.admin', 'en'),
(1765, 'email.email_action.contact_to_admin', 'Send email contact to admin', 'email.admin', 'en'),
(1766, 'email.email_action.email_action_mode', 'ON/OFF send mail', 'email.admin', 'en'),
(1767, 'email.email_action.email_action_queue', 'Use send mail queue <span class=\"text-red\">(*)</span>', 'email.admin', 'en'),
(1768, 'email.email_action.email_action_smtp_mode', 'SMTP mode', 'email.admin', 'en'),
(1769, 'email.email_action.config_smtp', 'Config SMTP', 'email.admin', 'en'),
(1770, 'email.email_action.type', 'Loại gửi mail', 'email.admin', 'vi'),
(1771, 'email.email_action.mode', 'Chế độ', 'email.admin', 'vi'),
(1772, 'email.email_action.sort', 'Sắp xếp', 'email.admin', 'vi'),
(1773, 'email.email_action.order_success_to_admin', 'Gửi đơn hàng thành công cho admin', 'email.admin', 'vi'),
(1774, 'email.email_action.order_success_to_cutomer_pdf', 'Gửi đơn hàng thành công cho khách kèm PDF', 'email.admin', 'vi'),
(1775, 'email.email_action.order_success_to_cutomer', 'Gửi đơn hàng thành công cho khách', 'email.admin', 'vi'),
(1776, 'email.email_action.forgot_password', 'Gửi mail quên mật khẩu', 'email.admin', 'vi'),
(1777, 'email.email_action.welcome_customer', 'Gửi mail chào mừng', 'email.admin', 'vi'),
(1778, 'email.email_action.contact_to_customer', 'Gửi mail form liên hệ cho khách', 'email.admin', 'vi'),
(1779, 'email.email_action.contact_to_admin', 'Gửi mail form liên hệ cho admin', 'email.admin', 'vi'),
(1780, 'email.email_action.email_action_mode', 'Tắt/Mở chức năng gửi mail', 'email.admin', 'vi'),
(1781, 'email.email_action.email_action_queue', 'Gửi mail qua hàng đợi <span class=\"text-red\">(*)</span>', 'email.admin', 'vi'),
(1782, 'email.email_action.email_action_smtp_mode', 'Sử dụng SMTP', 'email.admin', 'vi'),
(1783, 'email.email_action.config_smtp', 'Cấu hình SMTP', 'email.admin', 'vi'),
(1784, 'email.email_action.customer_verify', 'Gửi email xác thực tài khoản', 'email.admin', 'vi'),
(1785, 'email.email_action.smtp_mode', 'Sử dụng cấu hình SMTP', 'email.admin', 'vi'),
(1786, 'email.email_action.smtp_mode', 'Use SMTP config', 'email.admin', 'en'),
(1787, 'email.email_action.help_note', '<span class=\"text-red\">(*)</span>: Email sẽ không được gửi trực tiếp, mà thông qua hàng đợi. Bạn cần phải cài đặt \"artisan schedule:run\" trước,  chi tiết <a href=\"https://s-cart.org/docs/master/email.html\">TẠI ĐÂY</a>', 'email.admin', 'vi'),
(1788, 'email.email_action.help_note', '<span class=\"text-red\">(*)</span>: Emails will not be sent directly, but through a queue. You need to set up \"artisan schedule: run\" first, details <a href=\"https://s-cart.org/docs/master/email.html\">HERE</a>', 'email.admin', 'en'),
(1789, 'email.config_smtp.smtp_host', 'SMTP host', 'email.admin', 'en'),
(1790, 'email.config_smtp.smtp_user', 'SMTP user', 'email.admin', 'en'),
(1791, 'email.config_smtp.smtp_password', 'SMTP password', 'email.admin', 'en'),
(1792, 'email.config_smtp.smtp_security', 'SMTP security', 'email.admin', 'en'),
(1793, 'email.config_smtp.smtp_port', 'SMTP port', 'email.admin', 'en'),
(1794, 'email.config_smtp.smtp_name', 'Email name', 'email.admin', 'en'),
(1795, 'email.config_smtp.smtp_from', 'Send mail from', 'email.admin', 'en'),
(1796, 'email.config_smtp.smtp_host', 'Server SMTP', 'email.admin', 'vi'),
(1797, 'email.config_smtp.smtp_user', 'Tài khoản SMTP', 'email.admin', 'vi'),
(1798, 'email.config_smtp.smtp_password', 'Mật khẩu SMTP', 'email.admin', 'vi'),
(1799, 'email.config_smtp.smtp_security', 'Bảo mật SMTP', 'email.admin', 'vi'),
(1800, 'email.config_smtp.smtp_port', 'Cổng kết nối SMTP', 'email.admin', 'vi'),
(1801, 'email.config_smtp.smtp_name', 'Tên gửi mail', 'email.admin', 'vi'),
(1802, 'email.config_smtp.smtp_from', 'Địa chỉ email gửi', 'email.admin', 'vi'),
(1803, 'email.welcome', 'Chào mừng!', 'email', 'vi'),
(1804, 'email.welcome', 'Welcome!', 'email', 'en'),
(1805, 'email.msg_goodbye', 'Trân trọng!', 'email', 'vi'),
(1806, 'email.msg_goodbye', 'Best regards!', 'email', 'en'),
(1807, 'email.forgot_password.title', 'Hello!', 'email.forgot_password', 'en'),
(1808, 'email.forgot_password.reset_button', 'Reset password', 'email.forgot_password', 'en'),
(1809, 'email.forgot_password.reason_sendmail', 'You are receiving this email because we received a password reset request for your account.', 'email.forgot_password', 'en'),
(1810, 'email.forgot_password.note_sendmail', 'This password reset link will expire in :count minutes.<br><br>If you did not request a password reset, no further action is required.', 'email.forgot_password', 'en'),
(1811, 'email.forgot_password.note_access_link', 'If you’re having trouble clicking the \":reset_button\" button, copy and paste the URL below into your web browser :url', 'email.forgot_password', 'en'),
(1812, 'email.forgot_password.title', 'Xin chào!', 'email.forgot_password', 'vi'),
(1813, 'email.forgot_password.reset_button', 'Tạo lại mật khẩu', 'email.forgot_password', 'vi'),
(1814, 'email.forgot_password.reason_sendmail', 'Bạn đang nhận email này vì chúng tôi nhận được yêu cầu thiết lập lại mật khẩu cho tài khoản của bạn.', 'email.forgot_password', 'vi'),
(1815, 'email.forgot_password.note_sendmail', 'Liên kết mật khẩu này sẽ hết hạn trong vòng :count phút.<br><br>Nếu bạn không yêu cầu một thiết lập lại mật khẩu, bạn không cần làm gì cả.<br>', 'email.forgot_password', 'vi'),
(1816, 'email.forgot_password.note_access_link', 'Nếu bạn gặp sự cố cách nhấn vào nút \":reset_button\", sao chép và dán URL dưới đây vào trình duyệt web của bạn :url', 'email.forgot_password', 'vi'),
(1817, 'email.verification_content.title', 'Hello!', 'email.verification_content', 'en'),
(1818, 'email.verification_content.button', 'Verify Email Address', 'email.verification_content', 'en'),
(1819, 'email.verification_content.reason_sendmail', 'Please click the button below to verify your email address.', 'email.verification_content', 'en'),
(1820, 'email.verification_content.note_sendmail', 'This password reset link will expire in :count minutes.<br><br>If you did not create an account, no further action is required.', 'email.verification_content', 'en'),
(1821, 'email.verification_content.note_access_link', 'If you’re having trouble clicking the \":button\" button, copy and paste the URL below into your web browser :url', 'email.verification_content', 'en'),
(1822, 'email.verification_content.title', 'Xin chào!', 'email.verification_content', 'vi'),
(1823, 'email.verification_content.button', 'Xác nhận địa chỉ email', 'email.verification_content', 'vi'),
(1824, 'email.verification_content.reason_sendmail', 'Vui lòng nhấp vào nút bên dưới để xác minh địa chỉ email của bạn.', 'email.verification_content', 'vi'),
(1825, 'email.verification_content.note_sendmail', 'Liên kết mật khẩu này sẽ hết hạn trong vòng :count phút.<br><br>Nếu bạn chưa tạo tài khoản, bạn không cần thực hiện thêm hành động nào.', 'email.verification_content', 'vi'),
(1826, 'email.verification_content.note_access_link', 'Nếu bạn gặp sự cố khi nhấp vào button \":button\", sao chép và dán URL bên dưới vào trình duyệt web của bạn :url', 'email.verification_content', 'vi'),
(1827, 'email.order.title_1', 'Hi! Website :website has new order!', 'email.order', 'en'),
(1828, 'email.order.order_id', 'Order ID', 'email.order', 'en'),
(1829, 'email.order.toname', 'Customer name', 'email.order', 'en'),
(1830, 'email.order.address', 'Address', 'email.order', 'en'),
(1831, 'email.order.phone', 'Phone', 'email.order', 'en'),
(1832, 'email.order.note', 'Note', 'email.order', 'en'),
(1833, 'email.order.order_detail', 'Order detail', 'email.order', 'en'),
(1834, 'email.order.sort', 'No.', 'email.order', 'en'),
(1835, 'email.order.sku', 'SKU', 'email.order', 'en'),
(1836, 'email.order.price', 'Price', 'email.order', 'en'),
(1837, 'email.order.name', 'Name', 'email.order', 'en'),
(1838, 'email.order.qty', 'Qty', 'email.order', 'en'),
(1839, 'email.order.total', 'Total', 'email.order', 'en'),
(1840, 'email.order.sub_total', 'Sub total', 'email.order', 'en'),
(1841, 'email.order.shipping_fee', 'Shipping fee', 'email.order', 'en'),
(1842, 'email.order.discount', 'Discount', 'email.order', 'en'),
(1843, 'email.order.order_total', 'Order total', 'email.order', 'en'),
(1844, 'email.order.title_1', 'Xin chào! :website trang web có đơn hàng mới!', 'email.order', 'vi'),
(1845, 'email.order.order_id', 'Mã đơn hàng', 'email.order', 'vi'),
(1846, 'email.order.toname', 'Tên khách hàng', 'email.order', 'vi'),
(1847, 'email.order.address', 'Địa chỉ', 'email.order', 'vi'),
(1848, 'email.order.phone', 'Điện thoại', 'email.order', 'vi'),
(1849, 'email.order.note', 'Ghi chú', 'email.order', 'vi'),
(1850, 'email.order.order_detail', 'Chi tiết đặt hàng', 'email.order', 'vi'),
(1851, 'email.order.sort', 'Thứ tự', 'email.order', 'vi'),
(1852, 'email.order.sku', 'SKU', 'email.order', 'vi'),
(1853, 'email.order.price', 'Giá', 'email.order', 'vi'),
(1854, 'email.order.name', 'Tên', 'email.order', 'vi'),
(1855, 'email.order.qty', 'Số lượng', 'email.order', 'vi'),
(1856, 'email.order.total', 'Tổng', 'email.order', 'vi'),
(1857, 'email.order.sub_total', 'Tiền hàng', 'email.order', 'vi'),
(1858, 'email.order.shipping_fee', 'Phí vận chuyển', 'email.order', 'vi'),
(1859, 'email.order.discount', 'Giảm giá', 'email.order', 'vi'),
(1860, 'email.order.order_total', 'Tổng số đơn hàng', 'email.order', 'vi'),
(1861, 'email.order.email_subject_customer', 'Có đơn hàng mới', 'email.order', 'vi'),
(1862, 'email.order.email_subject_customer', 'Have a new order', 'email.order', 'en'),
(1863, 'admin.store_block.list', 'Danh sách block', 'admin.store_block', 'vi'),
(1864, 'admin.store_block.list', 'Block list', 'admin.store_block', 'en'),
(1865, 'admin.store_block.name', 'Tên', 'admin.store_block', 'vi'),
(1866, 'admin.store_block.position', 'Vị trí', 'admin.store_block', 'vi'),
(1867, 'admin.store_block.page', 'Trang', 'admin.store_block', 'vi'),
(1868, 'admin.store_block.type', 'Loại', 'admin.store_block', 'vi'),
(1869, 'admin.store_block.text', 'Nội dung', 'admin.store_block', 'vi'),
(1870, 'admin.store_block.status', 'Trạng thái', 'admin.store_block', 'vi'),
(1871, 'admin.store_block.name', 'Name', 'admin.store_block', 'en'),
(1872, 'admin.store_block.position', 'Position', 'admin.store_block', 'en'),
(1873, 'admin.store_block.page', 'Page', 'admin.store_block', 'en'),
(1874, 'admin.store_block.type', 'Type', 'admin.store_block', 'en'),
(1875, 'admin.store_block.text', 'Text', 'admin.store_block', 'en'),
(1876, 'admin.store_block.status', 'Status', 'admin.store_block', 'en'),
(1877, 'admin.store_block.sort', 'Sort', 'admin.store_block', 'en'),
(1878, 'admin.store_block.sort', 'Sắp xếp', 'admin.store_block', 'vi'),
(1879, 'admin.store_block.add_new_title', 'Add layout', 'admin.store_block', 'en'),
(1880, 'admin.store_block.add_new_des', 'Create a new layout', 'admin.store_block', 'en'),
(1881, 'admin.store_block.select_position', 'Select position', 'admin.store_block', 'en'),
(1882, 'admin.store_block.select_page', 'Select page', 'admin.store_block', 'en'),
(1883, 'admin.store_block.helper_html', 'Basic HTML content.', 'admin.store_block', 'en'),
(1884, 'admin.store_block.helper_view', 'View files are in \"resources/views/templates/:template/block\" directory.', 'admin.store_block', 'en'),
(1885, 'admin.store_block.helper_module', 'File in \"app/Plugins/Block\". Module must have render() method available to display content.', 'admin.store_block', 'en'),
(1886, 'admin.store_block.add_new_title', 'Tạo bố cục', 'admin.store_block', 'vi'),
(1887, 'admin.store_block.add_new_des', 'Tạo mới bố cục', 'admin.store_block', 'vi'),
(1888, 'admin.store_block.select_position', 'Chọn vị trí', 'admin.store_block', 'vi'),
(1889, 'admin.store_block.select_page', 'Chọn trang', 'admin.store_block', 'vi'),
(1890, 'admin.store_block.helper_html', 'Basic HTML content.', 'admin.store_block', 'vi'),
(1891, 'admin.store_block.helper_view', 'File trong thư mục \"resources/views/templates/:template/block\".', 'admin.store_block', 'vi'),
(1892, 'admin.store_block.helper_module', 'File trong \"app/Plugins/Block\". Module phải có hàm render().', 'admin.store_block', 'vi'),
(1893, 'admin.log.list', 'Danh sách nhật ký', 'admin.log', 'vi'),
(1894, 'admin.log.list', 'Logs list', 'admin.log', 'en'),
(1895, 'admin.log.user', 'Người dùng', 'admin.log', 'vi'),
(1896, 'admin.log.user', 'User', 'admin.log', 'en'),
(1897, 'admin.log.method', 'Phương thức', 'admin.log', 'vi'),
(1898, 'admin.log.path', 'Path', 'admin.log', 'vi'),
(1899, 'admin.log.ip', 'IP', 'admin.log', 'vi'),
(1900, 'admin.log.user_agent', 'User agent', 'admin.log', 'vi'),
(1901, 'admin.log.input', 'Input', 'admin.log', 'vi'),
(1902, 'admin.log.created_at', 'Thời gian', 'admin.log', 'vi'),
(1903, 'admin.log.method', 'Method', 'admin.log', 'en'),
(1904, 'admin.log.path', 'Path', 'admin.log', 'en'),
(1905, 'admin.log.ip', 'IP', 'admin.log', 'en'),
(1906, 'admin.log.user_agent', 'User agent', 'admin.log', 'en'),
(1907, 'admin.log.input', 'Input', 'admin.log', 'en'),
(1908, 'admin.log.created_at', 'Time', 'admin.log', 'en'),
(1909, 'admin.page.title', 'Tiêu đề', 'admin.page', 'vi'),
(1910, 'admin.page.image', 'Hình ảnh', 'admin.page', 'vi'),
(1911, 'admin.page.alias', 'URL tùy chỉnh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.page', 'vi'),
(1912, 'admin.page.alias_validate', 'Tối đa 100 kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.page', 'vi'),
(1913, 'admin.page.key_validate', 'Chỉ sử dụng kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \".-_\" ', 'admin.page', 'vi'),
(1914, 'admin.page.status', 'Trạng thái', 'admin.page', 'vi'),
(1915, 'admin.page.keyword', 'Từ khóa', 'admin.page', 'vi'),
(1916, 'admin.page.description', 'Mô tả', 'admin.page', 'vi'),
(1917, 'admin.page.content', 'Nội dung', 'admin.page', 'vi'),
(1918, 'admin.page.title', 'Title', 'admin.page', 'en'),
(1919, 'admin.page.image', 'Image', 'admin.page', 'en'),
(1920, 'admin.page.alias', 'Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.page', 'en'),
(1921, 'admin.page.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.page', 'en'),
(1922, 'admin.page.status', 'Status', 'admin.page', 'en'),
(1923, 'admin.page.keyword', 'Keyword', 'admin.page', 'en'),
(1924, 'admin.page.description', 'Description', 'admin.page', 'en'),
(1925, 'admin.page.content', 'Content', 'admin.page', 'en'),
(1926, 'admin.page.key_validate', 'Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \".-_\" ', 'admin.page', 'en'),
(1927, 'admin.page.add_new', 'Add new', 'admin.page', 'en'),
(1928, 'admin.page.add_new_title', 'Add page', 'admin.page', 'en'),
(1929, 'admin.page.add_new_des', 'Create a new page', 'admin.page', 'en'),
(1930, 'admin.page.add_new_title', 'Tạo trang', 'admin.page', 'vi'),
(1931, 'admin.page.add_new_des', 'Tạo mới trang', 'admin.page', 'vi'),
(1932, 'admin.page.choose_image', 'Chọn ảnh', 'admin.page', 'vi'),
(1933, 'admin.page.choose_image', 'Chose image', 'admin.page', 'en'),
(1934, 'admin.page.list', 'Danh sách trang', 'admin.page', 'vi'),
(1935, 'admin.page.list', 'Page list', 'admin.page', 'en'),
(1936, 'admin.page.search_place', 'Tìm tên', 'admin.page', 'vi'),
(1937, 'admin.page.search_place', 'Search name', 'admin.page', 'en'),
(1938, 'admin.news.add_new_title', 'Add new blog', 'admin.news', 'en'),
(1939, 'admin.news.add_new_des', 'Create a new blog', 'admin.news', 'en'),
(1940, 'admin.news.title', 'Title', 'admin.news', 'en'),
(1941, 'admin.news.alias', 'Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.news', 'en'),
(1942, 'admin.news.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.news', 'en'),
(1943, 'admin.news.keyword', 'Keyword', 'admin.news', 'en'),
(1944, 'admin.news.description', 'Description', 'admin.news', 'en'),
(1945, 'admin.news.content', 'Content', 'admin.news', 'en'),
(1946, 'admin.news.image', 'Image', 'admin.news', 'en'),
(1947, 'admin.news.status', 'Status', 'admin.news', 'en'),
(1948, 'admin.news.sort', 'Sort', 'admin.news', 'en'),
(1949, 'admin.news.list', 'Blog/News manager', 'admin.news', 'en'),
(1950, 'admin.news.edit', 'Edit', 'admin.news', 'en'),
(1951, 'admin.news.search_place', 'Search title', 'admin.news', 'en'),
(1952, 'admin.news.title', 'Tiêu đề', 'admin.news', 'vi'),
(1953, 'admin.news.alias', 'URL tùy chỉnh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.news', 'vi'),
(1954, 'admin.news.alias_validate', 'Tối đa 100 kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.news', 'vi'),
(1955, 'admin.news.keyword', 'Từ khóa', 'admin.news', 'vi'),
(1956, 'admin.news.description', 'Mô tả', 'admin.news', 'vi'),
(1957, 'admin.news.content', 'Nội dung', 'admin.news', 'vi'),
(1958, 'admin.news.image', 'Hình ảnh', 'admin.news', 'vi'),
(1959, 'admin.news.parent', 'Danh mục cha', 'admin.news', 'vi'),
(1960, 'admin.news.top', 'Hiển thị ưu tiên', 'admin.news', 'vi'),
(1961, 'admin.news.status', 'Trạng thái', 'admin.news', 'vi'),
(1962, 'admin.news.sort', 'Sắp xếp', 'admin.news', 'vi'),
(1963, 'admin.news.list', 'Danh sách', 'admin.news', 'vi'),
(1964, 'admin.news.add_new_title', 'Tạo Blog/News', 'admin.news', 'vi'),
(1965, 'admin.news.add_new_des', 'Tạo mới một Blog/News', 'admin.news', 'vi'),
(1966, 'admin.news.search_place', 'Tìm tiêu đề', 'admin.news', 'vi'),
(1967, 'admin.length.name', 'Tên', 'admin.length', 'vi'),
(1968, 'admin.length.name', 'Name', 'admin.length', 'en'),
(1969, 'admin.length.description', 'Mô tả', 'admin.length', 'vi'),
(1970, 'admin.length.description', 'Description', 'admin.length', 'en'),
(1971, 'admin.length.list', 'Danh sách kích thước', 'admin.length', 'vi'),
(1972, 'admin.length.list', 'Length list', 'admin.length', 'en'),
(1973, 'admin.length.add_new_title', 'Thêm kích thước', 'admin.length', 'vi'),
(1974, 'admin.length.add_new_title', 'Add Length', 'admin.length', 'en'),
(1975, 'admin.weight.name', 'Tên', 'admin.weight', 'vi'),
(1976, 'admin.weight.name', 'Name', 'admin.weight', 'en'),
(1977, 'admin.weight.description', 'Mô tả', 'admin.weight', 'vi'),
(1978, 'admin.weight.description', 'Description', 'admin.weight', 'en'),
(1979, 'admin.weight.list', 'Danh sách khối lượng', 'admin.weight', 'vi'),
(1980, 'admin.weight.list', 'Weight list', 'admin.weight', 'en'),
(1981, 'admin.weight.add_new_title', 'Thêm khối lượng', 'admin.weight', 'vi'),
(1982, 'admin.weight.add_new_title', 'Add weight', 'admin.weight', 'en'),
(1983, 'admin.product_property.name', 'Tên', 'admin.product_property', 'vi'),
(1984, 'admin.product_property.name', 'Name', 'admin.product_property', 'en'),
(1985, 'admin.product_property.list', 'Danh sách thuộc tính', 'admin.product_property', 'vi'),
(1986, 'admin.product_property.list', 'Product property list', 'admin.product_property', 'en'),
(1987, 'admin.product_property.status', 'Trạng thái', 'admin.product_property', 'vi'),
(1988, 'admin.product_property.status', 'Status', 'admin.product_property', 'en'),
(1989, 'admin.product_property.add_new_title', 'Thêm thuộc tính', 'admin.product_property', 'vi'),
(1990, 'admin.product_property.add_new_title', 'Add product property', 'admin.product_property', 'en'),
(1991, 'admin.order_status.name', 'Tên', 'admin.order_status', 'vi'),
(1992, 'admin.order_status.name', 'Name', 'admin.order_status', 'en'),
(1993, 'admin.order_status.list', 'Danh sách trạng thái', 'admin.order_status', 'vi'),
(1994, 'admin.order_status.list', 'Order status list', 'admin.order_status', 'en'),
(1995, 'admin.order_status.status', 'Trạng thái', 'admin.order_status', 'vi'),
(1996, 'admin.order_status.status', 'Status', 'admin.order_status', 'en'),
(1997, 'admin.order_status.add_new_title', 'Thêm trạng thái', 'admin.order_status', 'vi'),
(1998, 'admin.order_status.add_new_title', 'Add status', 'admin.order_status', 'en'),
(1999, 'admin.payment_status.name', 'Tên', 'admin.payment_status', 'vi'),
(2000, 'admin.payment_status.name', 'Name', 'admin.payment_status', 'en'),
(2001, 'admin.payment_status.list', 'Danh sách trạng thái', 'admin.payment_status', 'vi'),
(2002, 'admin.payment_status.list', 'Payment status list', 'admin.payment_status', 'en'),
(2003, 'admin.payment_status.status', 'Trạng thái', 'admin.payment_status', 'vi'),
(2004, 'admin.payment_status.status', 'Status', 'admin.payment_status', 'en'),
(2005, 'admin.payment_status.add_new_title', 'Thêm trạng thái', 'admin.payment_status', 'vi'),
(2006, 'admin.payment_status.add_new_title', 'Add status', 'admin.payment_status', 'en'),
(2007, 'admin.shipping_status.name', 'Tên', 'admin.shipping_status', 'vi'),
(2008, 'admin.shipping_status.name', 'Name', 'admin.shipping_status', 'en'),
(2009, 'admin.shipping_status.list', 'Danh sách trạng thái', 'admin.shipping_status', 'vi'),
(2010, 'admin.shipping_status.list', 'Shipping status list', 'admin.shipping_status', 'en'),
(2011, 'admin.shipping_status.status', 'Trạng thái', 'admin.shipping_status', 'vi'),
(2012, 'admin.shipping_status.status', 'Status', 'admin.shipping_status', 'en'),
(2013, 'admin.shipping_status.add_new_title', 'Thêm trạng thái', 'admin.shipping_status', 'vi'),
(2014, 'admin.shipping_status.add_new_title', 'Add status', 'admin.shipping_status', 'en'),
(2015, 'admin.tax.name', 'Tên', 'admin.tax', 'vi'),
(2016, 'admin.tax.name', 'Name', 'admin.tax', 'en'),
(2017, 'admin.tax.value', 'Giá trị', 'admin.tax', 'vi'),
(2018, 'admin.tax.value', 'Value', 'admin.tax', 'en'),
(2019, 'admin.tax.non_tax', 'Không thuế', 'admin.tax', 'vi'),
(2020, 'admin.tax.non_tax', 'None tax', 'admin.tax', 'en'),
(2021, 'admin.tax.auto', 'Tự động', 'admin.tax', 'vi'),
(2022, 'admin.tax.auto', 'Auto', 'admin.tax', 'en'),
(2023, 'admin.tax.list', 'Danh sách thuế', 'admin.tax', 'vi'),
(2024, 'admin.tax.list', 'Tax list', 'admin.tax', 'en'),
(2025, 'admin.tax.status', 'Trạng thái', 'admin.tax', 'vi'),
(2026, 'admin.tax.status', 'Status', 'admin.tax', 'en'),
(2027, 'admin.tax.add_new_title', 'Thêm thuế', 'admin.tax', 'vi'),
(2028, 'admin.tax.add_new_title', 'Add tax', 'admin.tax', 'en'),
(2029, 'admin.captcha.captcha_title', 'Captcha', 'admin.captcha', 'en'),
(2030, 'admin.captcha.captcha_mode', 'Use Captcha', 'admin.captcha', 'en'),
(2031, 'admin.captcha.captcha_method', 'Captcha method', 'admin.captcha', 'en'),
(2032, 'admin.captcha.captcha_method_help', 'Select method Captcha', 'admin.captcha', 'en'),
(2033, 'admin.captcha.captcha_page', 'Captcha', 'admin.captcha', 'en'),
(2034, 'admin.captcha.captcha_page_help', 'Select page use Captcha', 'admin.captcha', 'en'),
(2035, 'admin.captcha.captcha_page_contact', 'Contact', 'admin.captcha', 'en'),
(2036, 'admin.captcha.captcha_page_register', 'Register', 'admin.captcha', 'en'),
(2037, 'admin.captcha.captcha_page_forgot_password', 'Forgot pasword', 'admin.captcha', 'en'),
(2038, 'admin.captcha.captcha_page_checkout', 'Checkout', 'admin.captcha', 'en'),
(2039, 'admin.captcha.captcha_page_review', 'Review product', 'admin.captcha', 'en'),
(2040, 'admin.captcha.captcha_title', 'Captcha', 'admin.captcha', 'vi'),
(2041, 'admin.captcha.captcha_mode', 'Sử dụng Captcha', 'admin.captcha', 'vi'),
(2042, 'admin.captcha.captcha_method', 'Loại Captcha', 'admin.captcha', 'vi'),
(2043, 'admin.captcha.captcha_method_help', 'Chọn loại Captcha', 'admin.captcha', 'vi'),
(2044, 'admin.captcha.captcha_page', 'Trang sử dụng captcha', 'admin.captcha', 'vi'),
(2045, 'admin.captcha.captcha_page_help', 'Chọn trang sử dụng Captcha', 'admin.captcha', 'vi'),
(2046, 'admin.captcha.captcha_page_contact', 'Liên hệ', 'admin.captcha', 'vi'),
(2047, 'admin.captcha.captcha_page_register', 'Đăng ký', 'admin.captcha', 'vi'),
(2048, 'admin.captcha.captcha_page_forgot_password', 'Quên mật khẩu', 'admin.captcha', 'vi'),
(2049, 'admin.captcha.captcha_page_checkout', 'Đặt hàng', 'admin.captcha', 'vi'),
(2050, 'admin.captcha.captcha_page_review', 'Đánh giá sản phẩm', 'admin.captcha', 'vi'),
(2051, 'admin.link.list', 'Danh sách liên kết', 'admin.link', 'vi'),
(2052, 'admin.link.list', 'Link list', 'admin.link', 'en'),
(2053, 'admin.link.name', 'Tên', 'admin.link', 'vi'),
(2054, 'admin.link.url', 'Đường dẫn', 'admin.link', 'vi'),
(2055, 'admin.link.target', 'Target', 'admin.link', 'vi'),
(2056, 'admin.link.group', 'Nhóm', 'admin.link', 'vi'),
(2057, 'admin.link.sort', 'Thứ tự', 'admin.link', 'vi'),
(2058, 'admin.link.status', 'Trạng thái', 'admin.link', 'vi'),
(2059, 'admin.link.add_new', 'Thêm mới', 'admin.link', 'vi'),
(2060, 'admin.link.add_new_title', 'Tạo url', 'admin.link', 'vi'),
(2061, 'admin.link.add_new_des', 'Tạo mới url', 'admin.link', 'vi'),
(2062, 'admin.link.select_group', 'Chọn nhóm', 'admin.link', 'vi'),
(2063, 'admin.link.select_target', 'Chọn target', 'admin.link', 'vi'),
(2064, 'admin.link.helper_url', 'Ví dụ: url, path, hoặc route::name', 'admin.link', 'vi'),
(2065, 'admin.link.name', 'Name', 'admin.link', 'en'),
(2066, 'admin.link.url', 'Url', 'admin.link', 'en'),
(2067, 'admin.link.target', 'Target', 'admin.link', 'en'),
(2068, 'admin.link.group', 'Group', 'admin.link', 'en'),
(2069, 'admin.link.status', 'Status', 'admin.link', 'en'),
(2070, 'admin.link.sort', 'Sort', 'admin.link', 'en'),
(2071, 'admin.link.add_new', 'Add new', 'admin.link', 'en'),
(2072, 'admin.link.add_new_title', 'Add layout url', 'admin.link', 'en'),
(2073, 'admin.link.add_new_des', 'Create a new layout url', 'admin.link', 'en');
INSERT INTO `languages` (`id`, `code`, `text`, `position`, `location`) VALUES
(2074, 'admin.link.select_group', 'Select group', 'admin.link', 'en'),
(2075, 'admin.link.select_target', 'Select target', 'admin.link', 'en'),
(2076, 'admin.link.helper_url', 'Ex: url, path, or route::name', 'admin.link', 'en'),
(2077, 'admin.link_position.menu', 'Menu', 'admin.link', 'vi'),
(2078, 'admin.link_position.menu_left', 'Menu trái', 'admin.link', 'vi'),
(2079, 'admin.link_position.menu_right', 'Menu phải', 'admin.link', 'vi'),
(2080, 'admin.link_position.footer', 'Footer', 'admin.link', 'vi'),
(2081, 'admin.link_position.footer_left', 'Footer trái', 'admin.link', 'vi'),
(2082, 'admin.link_position.footer_right', 'Footer phải', 'admin.link', 'vi'),
(2083, 'admin.link_position.sidebar', 'Thanh bên', 'admin.link', 'vi'),
(2084, 'admin.link_position.menu', 'Menu', 'admin.link', 'en'),
(2085, 'admin.link_position.menu_left', 'Menu left', 'admin.link', 'en'),
(2086, 'admin.link_position.menu_right', 'Menu right', 'admin.link', 'en'),
(2087, 'admin.link_position.footer', 'Footer', 'admin.link', 'en'),
(2088, 'admin.link_position.footer_left', 'Footer left', 'admin.link', 'en'),
(2089, 'admin.link_position.footer_right', 'Footer right', 'admin.link', 'en'),
(2090, 'admin.link_position.sidebar', 'Sidebar', 'admin.link', 'en'),
(2091, 'admin.supplier.name', 'Name', 'admin.supplier', 'en'),
(2092, 'admin.supplier.alias', 'Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.supplier', 'en'),
(2093, 'admin.supplier.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.supplier', 'en'),
(2094, 'admin.supplier.email', 'Email', 'admin.supplier', 'en'),
(2095, 'admin.supplier.phone', 'Phone', 'admin.supplier', 'en'),
(2096, 'admin.supplier.address', 'Address', 'admin.supplier', 'en'),
(2097, 'admin.supplier.image', 'Image', 'admin.supplier', 'en'),
(2098, 'admin.supplier.url', 'Website', 'admin.supplier', 'en'),
(2099, 'admin.supplier.sort', 'Sort', 'admin.supplier', 'en'),
(2100, 'admin.supplier.status', 'Status', 'admin.supplier', 'en'),
(2101, 'admin.supplier.add_new', 'Add new', 'admin.supplier', 'en'),
(2102, 'admin.supplier.add_new_title', 'Add supplier', 'admin.supplier', 'en'),
(2103, 'admin.supplier.add_new_des', 'Create a new supplier', 'admin.supplier', 'en'),
(2104, 'admin.supplier.list', 'Suppliers list', 'admin.supplier', 'en'),
(2105, 'admin.supplier.name', 'Tên nhà cung cấp', 'admin.supplier', 'vi'),
(2106, 'admin.supplier.alias', 'URL tùy chỉnh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.supplier', 'vi'),
(2107, 'admin.supplier.alias_validate', 'Tối đa 100 kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.supplier', 'vi'),
(2108, 'admin.supplier.email', 'Email', 'admin.supplier', 'vi'),
(2109, 'admin.supplier.phone', 'Số điện thoại', 'admin.supplier', 'vi'),
(2110, 'admin.supplier.address', 'Địa chỉ', 'admin.supplier', 'vi'),
(2111, 'admin.supplier.image', 'Hình ảnh', 'admin.supplier', 'vi'),
(2112, 'admin.supplier.url', 'Website', 'admin.supplier', 'vi'),
(2113, 'admin.supplier.sort', 'Sắp xếp', 'admin.supplier', 'vi'),
(2114, 'admin.supplier.status', 'Status', 'admin.supplier', 'vi'),
(2115, 'admin.supplier.add_new_title', 'Tạo nhà cung cấp', 'admin.supplier', 'vi'),
(2116, 'admin.supplier.add_new_des', 'Tạo mới nhà cung cấp', 'admin.supplier', 'vi'),
(2117, 'admin.supplier.list', 'Danh sách nhà cung cấp', 'admin.supplier', 'vi'),
(2118, 'admin.supplier.search_place', 'Tìm tên hoặc email', 'admin.supplier', 'vi'),
(2119, 'admin.supplier.search_place', 'Search name or email', 'admin.supplier', 'en'),
(2120, 'admin.role.name', 'Name', 'admin.role', 'en'),
(2121, 'admin.role.slug', 'Slug', 'admin.role', 'en'),
(2122, 'admin.role.permission', 'Permission', 'admin.role', 'en'),
(2123, 'admin.role.http_path', 'HTTP path', 'admin.role', 'en'),
(2124, 'admin.role.http_method', 'HTTP method', 'admin.role', 'en'),
(2125, 'admin.role.created_at', 'Created at', 'admin.role', 'en'),
(2126, 'admin.role.updated_at', 'Updated at', 'admin.role', 'en'),
(2127, 'admin.role.password_confirmation', 'Confirmation', 'admin.role', 'en'),
(2128, 'admin.role.slug_validate', 'Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"._-\" ', 'admin.role', 'en'),
(2129, 'admin.role.list', 'Role manager', 'admin.role', 'en'),
(2130, 'admin.role.edit', 'Edit', 'admin.role', 'en'),
(2131, 'admin.role.add_new', 'Add new', 'admin.role', 'en'),
(2132, 'admin.role.add_new_title', 'Add new role', 'admin.role', 'en'),
(2133, 'admin.role.add_new_des', 'Create a new role', 'admin.role', 'en'),
(2134, 'admin.role.select_http_method', 'Select method', 'admin.role', 'en'),
(2135, 'admin.role.select_permission', 'Select permission', 'admin.role', 'en'),
(2136, 'admin.role.select_user', 'Select user', 'admin.role', 'en'),
(2137, 'admin.role.slug', 'Slug', 'admin.role', 'vi'),
(2138, 'admin.role.name', 'Tên', 'admin.role', 'vi'),
(2139, 'admin.role.roles', 'vai trò', 'admin.role', 'vi'),
(2140, 'admin.role.permission', 'Quyền hạn', 'admin.role', 'vi'),
(2141, 'admin.role.http_path', 'HTTP path', 'admin.role', 'vi'),
(2142, 'admin.role.http_method', 'HTTP method', 'admin.role', 'vi'),
(2143, 'admin.role.created_at', 'Tạo lúc', 'admin.role', 'vi'),
(2144, 'admin.role.updated_at', 'Cập nhật', 'admin.role', 'vi'),
(2145, 'admin.role.slug_validate', 'Chỉ sử dụng kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"._-\" ', 'admin.role', 'vi'),
(2146, 'admin.role.add_new', 'Thêm mới', 'admin.role', 'vi'),
(2147, 'admin.role.add_new_title', 'Tạo quyền', 'admin.role', 'vi'),
(2148, 'admin.role.add_new_des', 'Tạo mới một quyền', 'admin.role', 'vi'),
(2149, 'admin.role.select_permission', 'Chọn quyền hạn', 'admin.role', 'vi'),
(2150, 'admin.role.select_user', 'Chọn người dùng', 'admin.role', 'vi'),
(2151, 'admin.template.import', 'Import Template', 'admin.template', 'en'),
(2152, 'admin.template.file_format', 'File format', 'admin.template', 'en'),
(2153, 'admin.template.choose_file', 'Choose File', 'admin.template', 'en'),
(2154, 'admin.template.import_submit', 'Import', 'admin.template', 'en'),
(2155, 'admin.template.import_note', 'File <span style=\"color:red\">.zip</span>, max size is <span style=\"color:red\">50MB</span>', 'admin.template', 'en'),
(2156, 'admin.template.error_unzip', 'Error while unzip', 'admin.template', 'en'),
(2157, 'admin.template.error_upload', 'Error while uploading file', 'admin.template', 'en'),
(2158, 'admin.template.error_check_config', 'Cannot find config file', 'admin.template', 'en'),
(2159, 'admin.template.error_config_format', 'The config file is not in the right format', 'admin.template', 'en'),
(2160, 'admin.template.import_success', 'Import success!', 'admin.template', 'en'),
(2161, 'admin.template.error_exist', 'Template exist!', 'admin.template', 'en'),
(2162, 'admin.template.template_import', '<a href=\"import\" target=_new><span class=\"btn btn-success btn-flat\"><i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i> Import Template</span></a>', 'admin.template', 'en'),
(2163, 'admin.template.template_more', '<a href=\"https://s-cart.org/en/template.html\" target=_new><i class=\"fa fa-download\" aria-hidden=\"true\"></i> Download more HERE</a>', 'admin.template', 'en'),
(2164, 'admin.template.manager', 'Template management', 'admin.template', 'en'),
(2165, 'admin.template.title', 'Template list', 'admin.template', 'en'),
(2166, 'admin.template.name', 'Template name', 'admin.template', 'en'),
(2167, 'admin.template.auth', 'Author', 'admin.template', 'en'),
(2168, 'admin.template.email', 'Email', 'admin.template', 'en'),
(2169, 'admin.template.website', 'Website', 'admin.template', 'en'),
(2170, 'admin.template.activated', 'Activated', 'admin.template', 'en'),
(2171, 'admin.template.inactive', 'Inactive', 'admin.template', 'en'),
(2172, 'admin.template.download', 'Download', 'admin.template', 'en'),
(2173, 'admin.template.remove', 'Remove', 'admin.template', 'en'),
(2174, 'admin.template.status', 'Status', 'admin.template', 'en'),
(2175, 'admin.template.action', 'Action', 'admin.template', 'en'),
(2176, 'admin.template.installing', 'Installing', 'admin.template', 'en'),
(2177, 'admin.template.local', 'Save local', 'admin.template', 'en'),
(2178, 'admin.template.online', 'From library', 'admin.template', 'en'),
(2179, 'admin.template.version', 'Version', 'admin.template', 'en'),
(2180, 'admin.template.link', 'Link', 'admin.template', 'en'),
(2181, 'admin.template.image', 'Image', 'admin.template', 'en'),
(2182, 'admin.template.empty', 'Empty template!', 'admin.template', 'en'),
(2183, 'admin.template.downloaded', 'Downloaded', 'admin.template', 'en'),
(2184, 'admin.template.rated', 'Rated', 'admin.template', 'en'),
(2185, 'admin.template.price', 'Price', 'admin.template', 'en'),
(2186, 'admin.template.free', 'Free', 'admin.template', 'en'),
(2187, 'admin.template.date', 'Date', 'admin.template', 'en'),
(2188, 'admin.template.click_here', 'Click here', 'admin.template', 'en'),
(2189, 'admin.template.located', 'Located', 'admin.template', 'en'),
(2190, 'admin.template.code', 'Code', 'admin.template', 'en'),
(2191, 'admin.template.image_demo', 'Image demo', 'admin.template', 'en'),
(2192, 'admin.template.only_version_current', 'Only this version', 'admin.template', 'en'),
(2193, 'admin.template.compatible', 'Compatible', 'admin.template', 'en'),
(2194, 'admin.template.used', 'Template used', 'admin.template', 'en'),
(2195, 'admin.template.list', 'Template list', 'admin.template', 'en'),
(2196, 'admin.template.import', 'Import Giao diện', 'admin.template', 'vi'),
(2197, 'admin.template.file_format', 'File mẫu', 'admin.template', 'vi'),
(2198, 'admin.template.choose_file', 'Chọn file', 'admin.template', 'vi'),
(2199, 'admin.template.import_submit', 'Import', 'admin.template', 'vi'),
(2200, 'admin.template.import_note', 'Là file <span style=\"color:red\">.zip</span>, dung lượng tối đa <span style=\"color:red\">50MB</span>', 'admin.template', 'vi'),
(2201, 'admin.template.error_unzip', 'Lỗi trong khi unzip', 'admin.template', 'vi'),
(2202, 'admin.template.error_upload', 'Lỗi trong khi upload file', 'admin.template', 'vi'),
(2203, 'admin.template.error_check_config', 'Không tìm thấy hoặc không thể đọc file config', 'admin.template', 'vi'),
(2204, 'admin.template.error_config_format', 'File config không đúng định dạng', 'admin.template', 'vi'),
(2205, 'admin.template.import_success', 'Import thành công!', 'admin.template', 'vi'),
(2206, 'admin.template.error_exist', 'Giao diện đã tồn tại!', 'admin.template', 'vi'),
(2207, 'admin.template.template_import', '<a href=\"import\" target=_new><span class=\"btn btn-success btn-flat\"><i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i> Import Plugin</span></a>', 'admin.template', 'vi'),
(2208, 'admin.template.template_more', '<a href=\"https://s-cart.org/vi/template.html\" target=_new><i class=\"fa fa-download\" aria-hidden=\"true\"></i> Download đầy đủ Ở ĐÂY</a>', 'admin.template', 'vi'),
(2209, 'admin.template.manager', 'Quản lý giao diện', 'admin.template', 'vi'),
(2210, 'admin.template.title', 'Danh sách giao diện', 'admin.template', 'vi'),
(2211, 'admin.template.name', 'Tên giao diện', 'admin.template', 'vi'),
(2212, 'admin.template.email', 'Email', 'admin.template', 'vi'),
(2213, 'admin.template.website', 'Website', 'admin.template', 'vi'),
(2214, 'admin.template.activated', 'Đang hoạt động', 'admin.template', 'vi'),
(2215, 'admin.template.inactive', 'Đang ẩn', 'admin.template', 'vi'),
(2216, 'admin.template.download', 'Tải về', 'admin.template', 'vi'),
(2217, 'admin.template.remove', 'Gỡ bỏ', 'admin.template', 'vi'),
(2218, 'admin.template.status', 'Trạng thái', 'admin.template', 'vi'),
(2219, 'admin.template.action', 'Hành động', 'admin.template', 'vi'),
(2220, 'admin.template.installing', 'Đang cài đặt', 'admin.template', 'vi'),
(2221, 'admin.template.local', 'Đã lưu trên máy', 'admin.template', 'vi'),
(2222, 'admin.template.online', 'Tải từ thư viện', 'admin.template', 'vi'),
(2223, 'admin.template.auth', 'Tác giả', 'admin.template', 'vi'),
(2224, 'admin.template.version', 'Phiên bản', 'admin.template', 'vi'),
(2225, 'admin.template.link', 'Liên kết', 'admin.template', 'vi'),
(2226, 'admin.template.image', 'Hình ảnh', 'admin.template', 'vi'),
(2227, 'admin.template.empty', 'Chưa có template nào!', 'admin.template', 'vi'),
(2228, 'admin.template.downloaded', 'Số lần tải', 'admin.template', 'vi'),
(2229, 'admin.template.rated', 'Đánh giá', 'admin.template', 'vi'),
(2230, 'admin.template.price', 'Giá', 'admin.template', 'vi'),
(2231, 'admin.template.free', 'Miễn phí', 'admin.template', 'vi'),
(2232, 'admin.template.date', 'Ngày tạo', 'admin.template', 'vi'),
(2233, 'admin.template.located', 'Đã tải về', 'admin.template', 'vi'),
(2234, 'admin.template.code', 'Mã code', 'admin.template', 'vi'),
(2235, 'admin.template.click_here', 'Bấm vào đây', 'admin.template', 'vi'),
(2236, 'admin.template.image_demo', 'Hình mẫu', 'admin.template', 'vi'),
(2237, 'admin.template.only_version_current', 'Chỉ phiên bản này', 'admin.template', 'vi'),
(2238, 'admin.template.compatible', 'Tương thích', 'admin.template', 'vi'),
(2239, 'admin.template.used', 'Đang sử dụng', 'admin.template', 'vi'),
(2240, 'admin.template.list', 'Danh sách giao diện', 'admin.template', 'vi'),
(2241, 'admin.plugin.compatible', 'Tương thích', 'admin.plugin', 'vi'),
(2242, 'admin.plugin.code', 'Mã code', 'admin.plugin', 'vi'),
(2243, 'admin.plugin.name', 'Tên chức năng', 'admin.plugin', 'vi'),
(2244, 'admin.plugin.sort', 'Thứ tự', 'admin.plugin', 'vi'),
(2245, 'admin.plugin.action', 'Hành động', 'admin.plugin', 'vi'),
(2246, 'admin.plugin.status', 'Trạng thái', 'admin.plugin', 'vi'),
(2247, 'admin.plugin.enable', 'Kích hoạt', 'admin.plugin', 'vi'),
(2248, 'admin.plugin.disable', 'Tắt', 'admin.plugin', 'vi'),
(2249, 'admin.plugin.remove', 'Gỡ bỏ', 'admin.plugin', 'vi'),
(2250, 'admin.plugin.only_delete_data', 'Chỉ xóa dữ liệu', 'admin.plugin', 'vi'),
(2251, 'admin.plugin.install', 'Cài đặt', 'admin.plugin', 'vi'),
(2252, 'admin.plugin.config', 'Cấu hình', 'admin.plugin', 'vi'),
(2253, 'admin.plugin.actived', 'Hoạt động', 'admin.plugin', 'vi'),
(2254, 'admin.plugin.disabled', 'Bị tắt', 'admin.plugin', 'vi'),
(2255, 'admin.plugin.not_install', 'Chưa cài đặt', 'admin.plugin', 'vi'),
(2256, 'admin.plugin.auth', 'Tác giả', 'admin.plugin', 'vi'),
(2257, 'admin.plugin.version', 'Phiên bản', 'admin.plugin', 'vi'),
(2258, 'admin.plugin.link', 'Liên kết', 'admin.plugin', 'vi'),
(2259, 'admin.plugin.image', 'Hình ảnh', 'admin.plugin', 'vi'),
(2260, 'admin.plugin.empty', 'Chưa có extension nào!', 'admin.plugin', 'vi'),
(2261, 'admin.plugin.local', 'Đã lưu trên máy', 'admin.plugin', 'vi'),
(2262, 'admin.plugin.online', 'Tải từ thư viện', 'admin.plugin', 'vi'),
(2263, 'admin.plugin.downloaded', 'Số lần tải', 'admin.plugin', 'vi'),
(2264, 'admin.plugin.rated', 'Đánh giá', 'admin.plugin', 'vi'),
(2265, 'admin.plugin.price', 'Giá', 'admin.plugin', 'vi'),
(2266, 'admin.plugin.free', 'Miễn phí', 'admin.plugin', 'vi'),
(2267, 'admin.plugin.date', 'Ngày tạo', 'admin.plugin', 'vi'),
(2268, 'admin.plugin.located', 'Đã tải về', 'admin.plugin', 'vi'),
(2269, 'admin.plugin.only_free', 'Là miễn phí', 'admin.plugin', 'vi'),
(2270, 'admin.plugin.only_version', 'Cùng phiên bản', 'admin.plugin', 'vi'),
(2271, 'admin.plugin.all_version', 'Tất cả phiên bản', 'admin.plugin', 'vi'),
(2272, 'admin.plugin.sort_price_asc', 'Giá tăng', 'admin.plugin', 'vi'),
(2273, 'admin.plugin.sort_price_desc', 'Giá giảm', 'admin.plugin', 'vi'),
(2274, 'admin.plugin.sort_rating', 'Bình chọn', 'admin.plugin', 'vi'),
(2275, 'admin.plugin.sort_download', 'Lượt tải', 'admin.plugin', 'vi'),
(2276, 'admin.plugin.search_keyword', 'Từ khóa', 'admin.plugin', 'vi'),
(2277, 'admin.plugin.enter_search_keyword', 'Nhập từ khóa', 'admin.plugin', 'vi'),
(2278, 'admin.plugin.search_submit', 'Lọc kết quả', 'admin.plugin', 'vi'),
(2279, 'admin.plugin.import', 'Import Plugin', 'admin.plugin', 'vi'),
(2280, 'admin.plugin.file_format', 'File mẫu', 'admin.plugin', 'vi'),
(2281, 'admin.plugin.choose_file', 'Chọn file', 'admin.plugin', 'vi'),
(2282, 'admin.plugin.import_submit', 'Import', 'admin.plugin', 'vi'),
(2283, 'admin.plugin.import_data', 'Import :data', 'admin.plugin', 'vi'),
(2284, 'admin.plugin.import_note', 'Là file <span style=\"color:red\">.zip</span>, dung lượng tối đa <span style=\"color:red\">50MB</span>', 'admin.plugin', 'vi'),
(2285, 'admin.plugin.error_unzip', 'Lỗi trong khi unzip', 'admin.plugin', 'vi'),
(2286, 'admin.plugin.error_upload', 'Lỗi trong khi upload file', 'admin.plugin', 'vi'),
(2287, 'admin.plugin.error_check_config', 'Không tìm thấy hoặc không thể đọc file config', 'admin.plugin', 'vi'),
(2288, 'admin.plugin.error_config_format', 'File config không đúng định dạng', 'admin.plugin', 'vi'),
(2289, 'admin.plugin.import_success', 'Import thành công!', 'admin.plugin', 'vi'),
(2290, 'admin.plugin.error_exist', 'Plugin đã tồn tại!', 'admin.plugin', 'vi'),
(2291, 'admin.plugin.plugin_import', '<a href=\"import\" target=_new><span class=\"btn btn-success btn-flat\"><i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i> Import Plugin</span></a>', 'admin.plugin', 'vi'),
(2292, 'admin.plugin.plugin_more', '<a href=\"https://s-cart.org/vi/plugin.html\" target=_new><i class=\"fa fa-download\" aria-hidden=\"true\"></i> Download đầy đủ Ở ĐÂY</a>', 'admin.plugin', 'vi'),
(2293, 'admin.plugin.Shipping_plugin', 'Shipping extension', 'admin.plugin', 'en'),
(2294, 'admin.plugin.Payment_plugin', 'Payment extension', 'admin.plugin', 'en'),
(2295, 'admin.plugin.Total_plugin', 'Total extension', 'admin.plugin', 'en'),
(2296, 'admin.plugin.Other_plugin', 'Other plugin', 'admin.plugin', 'en'),
(2297, 'admin.plugin.Api_plugin', 'Module Api', 'admin.plugin', 'en'),
(2298, 'admin.plugin.Cms_plugin', 'Cms plugins', 'admin.plugin', 'en'),
(2299, 'admin.plugin.Block_plugin', 'Block plugins', 'admin.plugin', 'en'),
(2300, 'admin.plugin.Shipping_plugin', 'Chức năng vận chuyển', 'admin.plugin', 'vi'),
(2301, 'admin.plugin.Payment_plugin', 'Chức năng thanh toán', 'admin.plugin', 'vi'),
(2302, 'admin.plugin.Total_plugin', 'Chức năng giá trị đơn hàng', 'admin.plugin', 'vi'),
(2303, 'admin.plugin.Other_plugin', 'Chức năng khác', 'admin.plugin', 'vi'),
(2304, 'admin.plugin.Cms_plugin', 'Module CMS', 'admin.plugin', 'vi'),
(2305, 'admin.plugin.Api_plugin', 'Module Api', 'admin.plugin', 'vi'),
(2306, 'admin.plugin.Block_plugin', 'Module Block', 'admin.plugin', 'vi'),
(2307, 'admin.plugin.compatible', 'Compatible', 'admin.plugin', 'en'),
(2308, 'admin.plugin.code', 'Code', 'admin.plugin', 'en'),
(2309, 'admin.plugin.name', 'Name', 'admin.plugin', 'en'),
(2310, 'admin.plugin.sort', 'Sort', 'admin.plugin', 'en'),
(2311, 'admin.plugin.action', 'Action', 'admin.plugin', 'en'),
(2312, 'admin.plugin.status', 'Status', 'admin.plugin', 'en'),
(2313, 'admin.plugin.enable', 'Enable', 'admin.plugin', 'en'),
(2314, 'admin.plugin.disable', 'Disable', 'admin.plugin', 'en'),
(2315, 'admin.plugin.remove', 'Remove', 'admin.plugin', 'en'),
(2316, 'admin.plugin.only_delete_data', 'Only remove data', 'admin.plugin', 'en'),
(2317, 'admin.plugin.install', 'Install', 'admin.plugin', 'en'),
(2318, 'admin.plugin.config', 'Config', 'admin.plugin', 'en'),
(2319, 'admin.plugin.actived', 'Actived', 'admin.plugin', 'en'),
(2320, 'admin.plugin.disabled', 'Disabled', 'admin.plugin', 'en'),
(2321, 'admin.plugin.not_install', 'Not install', 'admin.plugin', 'en'),
(2322, 'admin.plugin.auth', 'Auth', 'admin.plugin', 'en'),
(2323, 'admin.plugin.version', 'Version', 'admin.plugin', 'en'),
(2324, 'admin.plugin.link', 'Link', 'admin.plugin', 'en'),
(2325, 'admin.plugin.image', 'Image', 'admin.plugin', 'en'),
(2326, 'admin.plugin.empty', 'Empty extension!', 'admin.plugin', 'en'),
(2327, 'admin.plugin.local', 'Save local', 'admin.plugin', 'en'),
(2328, 'admin.plugin.online', 'From library', 'admin.plugin', 'en'),
(2329, 'admin.plugin.downloaded', 'Downloaded', 'admin.plugin', 'en'),
(2330, 'admin.plugin.rated', 'Rated', 'admin.plugin', 'en'),
(2331, 'admin.plugin.price', 'Price', 'admin.plugin', 'en'),
(2332, 'admin.plugin.free', 'Free', 'admin.plugin', 'en'),
(2333, 'admin.plugin.date', 'Date', 'admin.plugin', 'en'),
(2334, 'admin.plugin.located', 'Located', 'admin.plugin', 'en'),
(2335, 'admin.plugin.only_free', 'Is free', 'admin.plugin', 'en'),
(2336, 'admin.plugin.only_version', 'Only version', 'admin.plugin', 'en'),
(2337, 'admin.plugin.all_version', 'All version', 'admin.plugin', 'en'),
(2338, 'admin.plugin.sort_price_asc', 'Price asc', 'admin.plugin', 'en'),
(2339, 'admin.plugin.sort_price_desc', 'Price desc', 'admin.plugin', 'en'),
(2340, 'admin.plugin.sort_rating', 'Rating', 'admin.plugin', 'en'),
(2341, 'admin.plugin.sort_download', 'Download', 'admin.plugin', 'en'),
(2342, 'admin.plugin.search_keyword', 'Keyword', 'admin.plugin', 'en'),
(2343, 'admin.plugin.enter_search_keyword', 'Enter keyword', 'admin.plugin', 'en'),
(2344, 'admin.plugin.search_submit', 'Filter result', 'admin.plugin', 'en'),
(2345, 'admin.plugin.import', 'Import Plugin', 'admin.plugin', 'en'),
(2346, 'admin.plugin.file_format', 'File format', 'admin.plugin', 'en'),
(2347, 'admin.plugin.choose_file', 'Choose File', 'admin.plugin', 'en'),
(2348, 'admin.plugin.import_submit', 'Import', 'admin.plugin', 'en'),
(2349, 'admin.plugin.import_data', 'Import :data', 'admin.plugin', 'en'),
(2350, 'admin.plugin.import_note', 'File <span style=\"color:red\">.zip</span>, max size is <span style=\"color:red\">50MB</span>', 'admin.plugin', 'en'),
(2351, 'admin.plugin.error_unzip', 'Error while unzip', 'admin.plugin', 'en'),
(2352, 'admin.plugin.error_upload', 'Error while uploading file', 'admin.plugin', 'en'),
(2353, 'admin.plugin.error_check_config', 'Cannot find config file', 'admin.plugin', 'en'),
(2354, 'admin.plugin.error_config_format', 'The config file is not in the right format', 'admin.plugin', 'en'),
(2355, 'admin.plugin.import_success', 'Import success!', 'admin.plugin', 'en'),
(2356, 'admin.plugin.error_exist', 'Plugin exist!', 'admin.plugin', 'en'),
(2357, 'admin.plugin.plugin_import', '<a href=\"import\" target=_new><span class=\"btn btn-success btn-flat\"><i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i> Import Plugin</span></a>', 'admin.plugin', 'en'),
(2358, 'admin.plugin.plugin_more', '<a href=\"https://s-cart.org/en/plugin.html\" target=_new><i class=\"fa fa-download\" aria-hidden=\"true\"></i> Download more HERE</a>', 'admin.plugin', 'en'),
(2359, 'admin.plugin.install_success', 'Installed successfully', 'admin.plugin', 'en'),
(2360, 'admin.plugin.install_faild', 'Installation failed', 'admin.plugin', 'en'),
(2361, 'admin.plugin.table_exist', 'Table :table already exists', 'admin.plugin', 'en'),
(2362, 'admin.plugin.plugin_exist', 'This plugin already exists', 'admin.plugin', 'en'),
(2363, 'admin.plugin.action_error', 'There was an error while :action', 'admin.plugin', 'en'),
(2364, 'admin.plugin.install_success', 'Cài đặt thành công', 'admin.plugin', 'vi'),
(2365, 'admin.plugin.install_faild', 'Cài đặt thất bại', 'admin.plugin', 'vi'),
(2366, 'admin.plugin.table_exist', 'Bảng :table đã tồn tại rồi', 'admin.plugin', 'vi'),
(2367, 'admin.plugin.plugin_exist', 'Plugin này đã tồn tại rồi', 'admin.plugin', 'vi'),
(2368, 'admin.plugin.action_error', 'Có lỗi trong khi :action', 'admin.plugin', 'vi'),
(2369, 'admin.chart.static_month', 'Thống kê trong 12 tháng', 'admin.chart', 'vi'),
(2370, 'admin.chart.static_30_day', 'Thống kê trong 1 tháng', 'admin.chart', 'vi'),
(2371, 'admin.chart.static_month_help', 'Dữ liệu so sánh bằng tổng số tiền của đơn hàng, đơn vị Bit', 'admin.chart', 'vi'),
(2372, 'admin.chart.amount', 'Tổng số tiền (Bit)', 'admin.chart', 'vi'),
(2373, 'admin.chart.order', 'Tổng đơn hàng', 'admin.chart', 'vi'),
(2374, 'admin.chart.static_country', 'Đơn hàng theo quốc gia', 'admin.chart', 'vi'),
(2375, 'admin.chart.country', 'Quốc gia', 'admin.chart', 'vi'),
(2376, 'admin.chart.static_month', 'Statistics for 12 months', 'admin.chart', 'en'),
(2377, 'admin.chart.static_30_day', 'Statistics for 30 days', 'admin.chart', 'en'),
(2378, 'admin.chart.static_month_help', 'The comparison data is equal to the total amount of the order and the Bit units', 'admin.chart', 'en'),
(2379, 'admin.chart.amount', 'Total amount (Bit)', 'admin.chart', 'en'),
(2380, 'admin.chart.order', 'Total order', 'admin.chart', 'en'),
(2381, 'admin.chart.static_country', 'Statistics of orders by country', 'admin.chart', 'en'),
(2382, 'admin.chart.country', 'Country', 'admin.chart', 'en'),
(2383, 'admin.chart.static_device', 'Statistics of orders by device', 'admin.chart', 'en'),
(2384, 'admin.chart.static_device', 'Thống kê đơn hàng theo thiết bị', 'admin.chart', 'vi'),
(2385, 'admin.chart.device', 'Device type', 'admin.chart', 'en'),
(2386, 'admin.chart.device', 'Loại thiết bị', 'admin.chart', 'vi'),
(2387, 'admin.maintain.title', 'Maintenance page', 'admin.maintain', 'en'),
(2388, 'admin.maintain.content', 'Maintenance content of the store', 'admin.maintain', 'en'),
(2389, 'admin.maintain.description', 'Description', 'admin.maintain', 'en'),
(2390, 'admin.maintain.description_note', 'Maintenance note', 'admin.maintain', 'en'),
(2391, 'admin.maintain.title', 'Trang bảo trì', 'admin.maintain', 'vi'),
(2392, 'admin.maintain.content', 'Nội dung bảo trì của cửa hàng', 'admin.maintain', 'vi'),
(2393, 'admin.maintain.description', 'Nội dung', 'admin.maintain', 'vi'),
(2394, 'admin.maintain.description_note', 'Ghi chú bảo trì', 'admin.maintain', 'vi'),
(2395, 'admin.seo.config', 'Cấu hình SEO', 'admin.seo', 'vi'),
(2396, 'admin.seo.config', 'SEO config', 'admin.seo', 'en'),
(2397, 'admin.seo.url_seo_lang', 'Thêm ngôn ngữ trên URL', 'admin.seo', 'vi'),
(2398, 'admin.seo.url_seo_lang', 'Add language on URL', 'admin.seo', 'en'),
(2399, 'admin.dashboard.total_order', 'Tổng đơn hàng', 'admin.dashboard', 'vi'),
(2400, 'admin.dashboard.total_order', 'Order total', 'admin.dashboard', 'en'),
(2401, 'admin.dashboard.total_product', 'Tổng sản phẩm', 'admin.dashboard', 'vi'),
(2402, 'admin.dashboard.total_product', 'Product total', 'admin.dashboard', 'en'),
(2403, 'admin.dashboard.total_customer', 'Tổng khách hàng', 'admin.dashboard', 'vi'),
(2404, 'admin.dashboard.total_customer', 'Customer total', 'admin.dashboard', 'en'),
(2405, 'admin.dashboard.total_blog', 'Tổng blog', 'admin.dashboard', 'vi'),
(2406, 'admin.dashboard.total_blog', 'Blog total', 'admin.dashboard', 'en'),
(2407, 'admin.dashboard.order_month', 'Đơn hàng trong tháng', 'admin.dashboard', 'vi'),
(2408, 'admin.dashboard.order_month', 'Order in month', 'admin.dashboard', 'en'),
(2409, 'admin.dashboard.order_year', 'Đơn hàng trong năm', 'admin.dashboard', 'vi'),
(2410, 'admin.dashboard.order_year', 'Order in year', 'admin.dashboard', 'en'),
(2411, 'admin.dashboard.top_order_new', 'Đơn hàng mới', 'admin.dashboard', 'vi'),
(2412, 'admin.dashboard.top_order_new', 'New orders', 'admin.dashboard', 'en'),
(2413, 'admin.dashboard.top_customer_new', 'Khách hàng mới mới', 'admin.dashboard', 'vi'),
(2414, 'admin.dashboard.top_customer_new', 'New customers', 'admin.dashboard', 'en'),
(2415, 'admin.layout_page_position.all', 'All Page', 'admin.layout_page_position', 'en'),
(2416, 'admin.layout_page_position.home', 'Home page', 'admin.layout_page_position', 'en'),
(2417, 'admin.layout_page_position.shop_home', 'Home shop', 'admin.layout_page_position', 'en'),
(2418, 'admin.layout_page_position.store_home', 'Store: home', 'admin.layout_page_position', 'en'),
(2419, 'admin.layout_page_position.store_product_list', 'Store: product list', 'admin.layout_page_position', 'en'),
(2420, 'admin.layout_page_position.product_list', 'List: product', 'admin.layout_page_position', 'en'),
(2421, 'admin.layout_page_position.product_detail', 'Detail: product', 'admin.layout_page_position', 'en'),
(2422, 'admin.layout_page_position.shop_cart', 'Cart: cart, wishlist, compare, checkout', 'admin.layout_page_position', 'en'),
(2423, 'admin.layout_page_position.shop_auth', 'Auth: login, forgot, register', 'admin.layout_page_position', 'en'),
(2424, 'admin.layout_page_position.shop_profile', 'Customer profile', 'admin.layout_page_position', 'en'),
(2425, 'admin.layout_page_position.item_list', 'List: category, brand, supplier', 'admin.layout_page_position', 'en'),
(2426, 'admin.layout_page_position.item_detail', 'Detail: item', 'admin.layout_page_position', 'en'),
(2427, 'admin.layout_page_position.news_list', 'List:  Blog/news', 'admin.layout_page_position', 'en'),
(2428, 'admin.layout_page_position.news_detail', 'Detail: entry Blog', 'admin.layout_page_position', 'en'),
(2429, 'admin.layout_page_position.content_list', 'List: content CMS', 'admin.layout_page_position', 'en'),
(2430, 'admin.layout_page_position.content_detail', 'Detail: entry CMS', 'admin.layout_page_position', 'en'),
(2431, 'admin.layout_page_position.shop_contact', 'Page contact', 'admin.layout_page_position', 'en'),
(2432, 'admin.layout_page_position.shop_page', 'Other page: about...', 'admin.layout_page_position', 'en'),
(2433, 'admin.layout_page_position.all', 'Tất cả trang', 'admin.layout_page_position', 'vi'),
(2434, 'admin.layout_page_position.home', 'Trang chủ', 'admin.layout_page_position', 'vi'),
(2435, 'admin.layout_page_position.shop_home', 'Trang chủ Shop', 'admin.layout_page_position', 'vi'),
(2436, 'admin.layout_page_position.store_home', 'Cửa hàng: trang chủ', 'admin.layout_page_position', 'vi'),
(2437, 'admin.layout_page_position.store_product_list', 'Cửa hàng: danh sách sản phẩm', 'admin.layout_page_position', 'vi'),
(2438, 'admin.layout_page_position.product_list', 'Danh sách: sản phẩm', 'admin.layout_page_position', 'vi'),
(2439, 'admin.layout_page_position.product_detail', 'Chi tiết: sản phẩm', 'admin.layout_page_position', 'vi'),
(2440, 'admin.layout_page_position.shop_cart', 'Giỏ hàng: giỏ hàng, wishlist, compare, checkout', 'admin.layout_page_position', 'vi'),
(2441, 'admin.layout_page_position.shop_auth', 'Chứng thực: đăng nhập, đăng ký, quên mật khẩu', 'admin.layout_page_position', 'vi'),
(2442, 'admin.layout_page_position.shop_profile', 'Tài khoản khách hàng', 'admin.layout_page_position', 'vi'),
(2443, 'admin.layout_page_position.item_list', 'Danh sách item: danh mục, nhãn hiệu, nhà cung cấp', 'admin.layout_page_position', 'vi'),
(2444, 'admin.layout_page_position.item_detail', 'Chi tiết: item', 'admin.layout_page_position', 'vi'),
(2445, 'admin.layout_page_position.news_list', 'Danh sách: bài viết Blog', 'admin.layout_page_position', 'vi'),
(2446, 'admin.layout_page_position.news_detail', 'Chi tiết: bài viết Blog', 'admin.layout_page_position', 'vi'),
(2447, 'admin.layout_page_position.content_list', 'Danh sách: bài viết CMS', 'admin.layout_page_position', 'vi'),
(2448, 'admin.layout_page_position.content_detail', 'Chi tiết: bài viết CMS', 'admin.layout_page_position', 'vi'),
(2449, 'admin.layout_page_position.shop_contact', 'Trang liên hệ', 'admin.layout_page_position', 'vi'),
(2450, 'admin.layout_page_position.shop_page', 'Các trang viết: giới thiệu...', 'admin.layout_page_position', 'vi'),
(2451, 'admin.layout_page_block.header', 'Header - Phía trên </header> :meta, css, javascript,...', 'admin.layout_page_block', 'vi'),
(2452, 'admin.layout_page_block.top', 'Top - Phía dưới thẻ <body>', 'admin.layout_page_block', 'vi'),
(2453, 'admin.layout_page_block.bottom', 'Bottom - Phía trên <footer>', 'admin.layout_page_block', 'vi'),
(2454, 'admin.layout_page_block.left', 'Left - Cột trái', 'admin.layout_page_block', 'vi'),
(2455, 'admin.layout_page_block.right', 'Right - Cột phải', 'admin.layout_page_block', 'vi'),
(2456, 'admin.layout_page_block.banner_top', 'Top banner - Ngay phía dưới <body>', 'admin.layout_page_block', 'vi'),
(2457, 'admin.layout_page_block.header', 'Header - Above </header>: meta, css, javascript, ...', 'admin.layout_page_block', 'en'),
(2458, 'admin.layout_page_block.top', 'Top - Below the <body> tag', 'admin.layout_page_block', 'en'),
(2459, 'admin.layout_page_block.bottom', 'Bottom - Above <footer>', 'admin.layout_page_block', 'en'),
(2460, 'admin.layout_page_block.left', 'Left - Left column', 'admin.layout_page_block', 'en'),
(2461, 'admin.layout_page_block.right', 'Right - Right column', 'admin.layout_page_block', 'en'),
(2462, 'admin.layout_page_block.banner_top', 'Top banner - Right below <body>', 'admin.layout_page_block', 'en');

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
(1, '00_00_00_step1_create_tables_admin', 1),
(2, '00_00_00_step2_create_tables_shop', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'SCart Personal Access Client', 'IjhpXYy5m1HZ0rWFi8PnzCC4eGShMJjLVv80JH8k', NULL, 'http://localhost', 1, 0, 0, '2021-07-21 04:13:25', '2021-07-21 04:13:25'),
(2, NULL, 'SCart Password Grant Client', '0FlsBeR0XZqLhU9mlV04KSQ68fjAZgnjok6VlMJZ', 'users', 'http://localhost', 0, 1, 0, '2021-07-21 04:13:25', '2021-07-21 04:13:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-07-21 04:13:25', '2021-07-21 04:13:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_attribute_group`
--

CREATE TABLE `shop_attribute_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'radio,select,checkbox'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_banner`
--

CREATE TABLE `shop_banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `click` int(11) NOT NULL DEFAULT 0,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_banner`
--

INSERT INTO `shop_banner` (`id`, `title`, `image`, `url`, `target`, `html`, `status`, `sort`, `click`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Banner 1', '/data/banner/Main-banner-1-1903x600.jpg', NULL, '_self', '<h1 class=\"swiper-title-1\" data-caption-animate=\"fadeScale\" data-caption-delay=\"100\">Top-notch Furniture</h1><p class=\"biggest text-white-70\" data-caption-animate=\"fadeScale\" data-caption-delay=\"200\">Sofa Store provides the best furniture and accessories for homes and offices.</p><div class=\"button-wrap\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"300\"> <span class=\"button button-zachem-tak-delat button-white button-zakaria\"> Shop now</span> </div>', 1, 0, 0, 'banner', NULL, NULL),
(2, 'Banner 2', '/data/banner/Main-banner-3-1903x600.jpg', NULL, '_self', '<h1 class=\"swiper-title-1\" data-caption-animate=\"fadeScale\" data-caption-delay=\"100\">Top-notch Furniture</h1><p class=\"biggest text-white-70\" data-caption-animate=\"fadeScale\" data-caption-delay=\"200\">Sofa Store provides the best furniture and accessories for homes and offices.</p><div class=\"button-wrap\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"300\"> <span class=\"button button-zachem-tak-delat button-white button-zakaria\"> Shop now</span> </div>', 1, 0, 0, 'banner', NULL, NULL),
(3, 'Banner 3', '/data/banner/bgbr.jpg', NULL, '_self', '', 1, 0, 0, 'breadcrumb', NULL, NULL),
(4, 'Banner 4', '/data/banner/store-1.jpg', NULL, '_self', '', 1, 0, 0, 'banner-store', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_banner_store`
--

CREATE TABLE `shop_banner_store` (
  `banner_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_banner_store`
--

INSERT INTO `shop_banner_store` (`banner_id`, `store_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_banner_type`
--

CREATE TABLE `shop_banner_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_banner_type`
--

INSERT INTO `shop_banner_type` (`id`, `code`, `name`) VALUES
(1, 'banner', 'Banner website'),
(2, 'background', 'Background website'),
(3, 'breadcrumb', 'Breadcrumb website'),
(4, 'banner-store', 'Banner store'),
(5, 'other', 'Other');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_brand`
--

CREATE TABLE `shop_brand` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_brand`
--

INSERT INTO `shop_brand` (`id`, `name`, `alias`, `image`, `url`, `status`, `sort`) VALUES
(1, 'Bed Head', 'bed-head', '/data/brand/01-181x52.png', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_brand_store`
--

CREATE TABLE `shop_brand_store` (
  `brand_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_brand_store`
--

INSERT INTO `shop_brand_store` (`brand_id`, `store_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_category`
--

CREATE TABLE `shop_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `top` int(11) DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_category`
--

INSERT INTO `shop_category` (`id`, `image`, `alias`, `parent`, `top`, `status`, `sort`) VALUES
(14, NULL, 'dau-goi', 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_category_description`
--

CREATE TABLE `shop_category_description` (
  `category_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_category_description`
--

INSERT INTO `shop_category_description` (`category_id`, `lang`, `title`, `keyword`, `description`) VALUES
(14, 'vi', 'Dầu gội', 'dau goi, dau xa', 'Dầu gội');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_category_store`
--

CREATE TABLE `shop_category_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_country`
--

CREATE TABLE `shop_country` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_country`
--

INSERT INTO `shop_country` (`id`, `code`, `name`) VALUES
(1, 'AL', 'Albania'),
(2, 'DZ', 'Algeria'),
(3, 'DS', 'American Samoa'),
(4, 'AD', 'Andorra'),
(5, 'AO', 'Angola'),
(6, 'AI', 'Anguilla'),
(7, 'AQ', 'Antarctica'),
(8, 'AG', 'Antigua and Barbuda'),
(9, 'AR', 'Argentina'),
(10, 'AM', 'Armenia'),
(11, 'AW', 'Aruba'),
(12, 'AU', 'Australia'),
(13, 'AT', 'Austria'),
(14, 'AZ', 'Azerbaijan'),
(15, 'BS', 'Bahamas'),
(16, 'BH', 'Bahrain'),
(17, 'BD', 'Bangladesh'),
(18, 'BB', 'Barbados'),
(19, 'BY', 'Belarus'),
(20, 'BE', 'Belgium'),
(21, 'BZ', 'Belize'),
(22, 'BJ', 'Benin'),
(23, 'BM', 'Bermuda'),
(24, 'BT', 'Bhutan'),
(25, 'BO', 'Bolivia'),
(26, 'BA', 'Bosnia and Herzegovina'),
(27, 'BW', 'Botswana'),
(28, 'BV', 'Bouvet Island'),
(29, 'BR', 'Brazil'),
(30, 'IO', 'British Indian Ocean Territory'),
(31, 'BN', 'Brunei Darussalam'),
(32, 'BG', 'Bulgaria'),
(33, 'BF', 'Burkina Faso'),
(34, 'BI', 'Burundi'),
(35, 'KH', 'Cambodia'),
(36, 'CM', 'Cameroon'),
(37, 'CA', 'Canada'),
(38, 'CV', 'Cape Verde'),
(39, 'KY', 'Cayman Islands'),
(40, 'CF', 'Central African Republic'),
(41, 'TD', 'Chad'),
(42, 'CL', 'Chile'),
(43, 'CN', 'China'),
(44, 'CX', 'Christmas Island'),
(45, 'CC', 'Cocos (Keeling) Islands'),
(46, 'CO', 'Colombia'),
(47, 'KM', 'Comoros'),
(48, 'CG', 'Congo'),
(49, 'CK', 'Cook Islands'),
(50, 'CR', 'Costa Rica'),
(51, 'HR', 'Croatia (Hrvatska)'),
(52, 'CU', 'Cuba'),
(53, 'CY', 'Cyprus'),
(54, 'CZ', 'Czech Republic'),
(55, 'DK', 'Denmark'),
(56, 'DJ', 'Djibouti'),
(57, 'DM', 'Dominica'),
(58, 'DO', 'Dominican Republic'),
(59, 'TP', 'East Timor'),
(60, 'EC', 'Ecuador'),
(61, 'EG', 'Egypt'),
(62, 'SV', 'El Salvador'),
(63, 'GQ', 'Equatorial Guinea'),
(64, 'ER', 'Eritrea'),
(65, 'EE', 'Estonia'),
(66, 'ET', 'Ethiopia'),
(67, 'FK', 'Falkland Islands (Malvinas)'),
(68, 'FO', 'Faroe Islands'),
(69, 'FJ', 'Fiji'),
(70, 'FI', 'Finland'),
(71, 'FR', 'France'),
(72, 'FX', 'France, Metropolitan'),
(73, 'GF', 'French Guiana'),
(74, 'PF', 'French Polynesia'),
(75, 'TF', 'French Southern Territories'),
(76, 'GA', 'Gabon'),
(77, 'GM', 'Gambia'),
(78, 'GE', 'Georgia'),
(79, 'DE', 'Germany'),
(80, 'GH', 'Ghana'),
(81, 'GI', 'Gibraltar'),
(82, 'GK', 'Guernsey'),
(83, 'GR', 'Greece'),
(84, 'GL', 'Greenland'),
(85, 'GD', 'Grenada'),
(86, 'GP', 'Guadeloupe'),
(87, 'GU', 'Guam'),
(88, 'GT', 'Guatemala'),
(89, 'GN', 'Guinea'),
(90, 'GW', 'Guinea-Bissau'),
(91, 'GY', 'Guyana'),
(92, 'HT', 'Haiti'),
(93, 'HM', 'Heard and Mc Donald Islands'),
(94, 'HN', 'Honduras'),
(95, 'HK', 'Hong Kong'),
(96, 'HU', 'Hungary'),
(97, 'IS', 'Iceland'),
(98, 'IN', 'India'),
(99, 'IM', 'Isle of Man'),
(100, 'ID', 'Indonesia'),
(101, 'IR', 'Iran (Islamic Republic of)'),
(102, 'IQ', 'Iraq'),
(103, 'IE', 'Ireland'),
(104, 'IL', 'Israel'),
(105, 'IT', 'Italy'),
(106, 'CI', 'Ivory Coast'),
(107, 'JE', 'Jersey'),
(108, 'JM', 'Jamaica'),
(109, 'JP', 'Japan'),
(110, 'JO', 'Jordan'),
(111, 'KZ', 'Kazakhstan'),
(112, 'KE', 'Kenya'),
(113, 'KI', 'Kiribati'),
(114, 'KP', 'Korea,Democratic Peoples Republic of'),
(115, 'KR', 'Korea, Republic of'),
(116, 'XK', 'Kosovo'),
(117, 'KW', 'Kuwait'),
(118, 'KG', 'Kyrgyzstan'),
(119, 'LA', 'Lao Peoples Democratic Republic'),
(120, 'LV', 'Latvia'),
(121, 'LB', 'Lebanon'),
(122, 'LS', 'Lesotho'),
(123, 'LR', 'Liberia'),
(124, 'LY', 'Libyan Arab Jamahiriya'),
(125, 'LI', 'Liechtenstein'),
(126, 'LT', 'Lithuania'),
(127, 'LU', 'Luxembourg'),
(128, 'MO', 'Macau'),
(129, 'MK', 'Macedonia'),
(130, 'MG', 'Madagascar'),
(131, 'MW', 'Malawi'),
(132, 'MY', 'Malaysia'),
(133, 'MV', 'Maldives'),
(134, 'ML', 'Mali'),
(135, 'MT', 'Malta'),
(136, 'MH', 'Marshall Islands'),
(137, 'MQ', 'Martinique'),
(138, 'MR', 'Mauritania'),
(139, 'MU', 'Mauritius'),
(140, 'TY', 'Mayotte'),
(141, 'MX', 'Mexico'),
(142, 'FM', 'Micronesia, Federated States of'),
(143, 'MD', 'Moldova, Republic of'),
(144, 'MC', 'Monaco'),
(145, 'MN', 'Mongolia'),
(146, 'ME', 'Montenegro'),
(147, 'MS', 'Montserrat'),
(148, 'MA', 'Morocco'),
(149, 'MZ', 'Mozambique'),
(150, 'MM', 'Myanmar'),
(151, 'NA', 'Namibia'),
(152, 'NR', 'Nauru'),
(153, 'NP', 'Nepal'),
(154, 'NL', 'Netherlands'),
(155, 'AN', 'Netherlands Antilles'),
(156, 'NC', 'New Caledonia'),
(157, 'NZ', 'New Zealand'),
(158, 'NI', 'Nicaragua'),
(159, 'NE', 'Niger'),
(160, 'NG', 'Nigeria'),
(161, 'NU', 'Niue'),
(162, 'NF', 'Norfolk Island'),
(163, 'MP', 'Northern Mariana Islands'),
(164, 'NO', 'Norway'),
(165, 'OM', 'Oman'),
(166, 'PK', 'Pakistan'),
(167, 'PW', 'Palau'),
(168, 'PS', 'Palestine'),
(169, 'PA', 'Panama'),
(170, 'PG', 'Papua New Guinea'),
(171, 'PY', 'Paraguay'),
(172, 'PE', 'Peru'),
(173, 'PH', 'Philippines'),
(174, 'PN', 'Pitcairn'),
(175, 'PL', 'Poland'),
(176, 'PT', 'Portugal'),
(177, 'PR', 'Puerto Rico'),
(178, 'QA', 'Qatar'),
(179, 'RE', 'Reunion'),
(180, 'RO', 'Romania'),
(181, 'RU', 'Russian Federation'),
(182, 'RW', 'Rwanda'),
(183, 'KN', 'Saint Kitts and Nevis'),
(184, 'LC', 'Saint Lucia'),
(185, 'VC', 'Saint Vincent and the Grenadines'),
(186, 'WS', 'Samoa'),
(187, 'SM', 'San Marino'),
(188, 'ST', 'Sao Tome and Principe'),
(189, 'SA', 'Saudi Arabia'),
(190, 'SN', 'Senegal'),
(191, 'RS', 'Serbia'),
(192, 'SC', 'Seychelles'),
(193, 'SL', 'Sierra Leone'),
(194, 'SG', 'Singapore'),
(195, 'SK', 'Slovakia'),
(196, 'SI', 'Slovenia'),
(197, 'SB', 'Solomon Islands'),
(198, 'SO', 'Somalia'),
(199, 'ZA', 'South Africa'),
(200, 'GS', 'South Georgia South Sandwich Islands'),
(201, 'SS', 'South Sudan'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_currency`
--

CREATE TABLE `shop_currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) NOT NULL,
  `precision` tinyint(4) NOT NULL DEFAULT 2,
  `symbol_first` tinyint(4) NOT NULL DEFAULT 0,
  `thousands` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ',',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_currency`
--

INSERT INTO `shop_currency` (`id`, `name`, `code`, `symbol`, `exchange_rate`, `precision`, `symbol_first`, `thousands`, `status`, `sort`) VALUES
(1, 'USD Dola', 'USD', '$', 1.00, 0, 1, ',', 0, 0),
(2, 'VietNam Dong', 'VND', '₫', 1.00, 0, 0, '.', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_customer`
--

CREATE TABLE `shop_customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL COMMENT '0:women, 1:men',
  `birthday` date DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `group` tinyint(4) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_customer_address`
--

CREATE TABLE `shop_customer_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_custom_field`
--

CREATE TABLE `shop_custom_field` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'product, customer',
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `option` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'radio, select, input',
  `default` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '{"value1":"name1", "value2":"name2"}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_custom_field`
--

INSERT INTO `shop_custom_field` (`id`, `type`, `code`, `name`, `required`, `status`, `option`, `default`) VALUES
(1, 'product', 'checkout_landing', 'Checkout Landing', 1, 1, 'input', 'https://'),
(2, 'product', 'short_description', 'Mô tả ngắn', 0, 1, 'input', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_custom_field_detail`
--

CREATE TABLE `shop_custom_field_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_custom_field_detail`
--

INSERT INTO `shop_custom_field_detail` (`id`, `custom_field_id`, `rel_id`, `text`) VALUES
(2, 1, 17, 'https://www.favimart.store/checkout-tigi'),
(3, 2, 17, 'Bộ dầu gội xả Tigi Bed Head 250ml đang được chị em săn lùng bởi độ phục hồi và chăm sóc tóc “thần thánh”.\r\n\r\nDưỡng chất có trong dầu gội xả này không chỉ làm sạch, nuôi dưỡng da đầu mà còn phục hồi sự suôn mượt chắc khỏe cho tóc, ngăn ngừa khô xơ, gãy rụng, củng cố độ ẩm và gia tăng độ bóng, tái tạo sinh lực cho mái tóc.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_email_template`
--

CREATE TABLE `shop_email_template` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_email_template`
--

INSERT INTO `shop_email_template` (`id`, `name`, `group`, `text`, `store_id`, `status`) VALUES
(1, 'Reset password', 'forgot_password', '<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\n<tbody><tr>\n  <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n  <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n      <tbody><tr>\n      <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n          <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n          <tbody><tr>\n              <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n              <a href=\"{{$reset_link}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$reset_button}}</a>\n              </td>\n          </tr>\n          </tbody>\n      </table>\n      </td>\n      </tr>\n  </tbody>\n  </table>\n  </td>\n</tr>\n</tbody>\n</table>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\n{{$note_sendmail}}\n</p>\n<table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\n<tbody><tr>\n<td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n  <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}</p>\n  </td>\n  </tr>\n</tbody>\n</table>', 1, 1),
(2, 'Customer verification', 'customer_verify', '<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\n<tbody><tr>\n  <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n  <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n      <tbody><tr>\n      <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n          <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n          <tbody><tr>\n              <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n              <a href=\"{{$url_verify}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$button}}</a>\n              </td>\n          </tr>\n          </tbody>\n      </table>\n      </td>\n      </tr>\n  </tbody>\n  </table>\n  </td>\n</tr>\n</tbody>\n</table>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\n{{$note_sendmail}}\n</p>\n<table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\n<tbody><tr>\n<td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n  <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}</p>\n  </td>\n  </tr>\n</tbody>\n</table>', 1, 1),
(3, 'Welcome new customer', 'welcome_customer', '<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:center\">{{$title}}</h1>\n<p style=\"text-align:center;\">Welcome to my site!</p>', 1, 1),
(4, 'Send form contact to admin', 'contact_to_admin', '<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n<td>\n<b>Name</b>: {{$name}}<br>\n<b>Email</b>: {{$email}}<br>\n<b>Phone</b>: {{$phone}}<br>\n</td>\n</tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Content:<br>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n<tr>\n<td>{{$content}}</td>\n</tr>\n</table>', 1, 1),
(5, 'New order to admin', 'order_success_to_admin', '<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n  <tr>\n      <td>\n          <b>Order ID</b>: {{$orderID}}<br>\n          <b>Customer name</b>: {{$toname}}<br>\n          <b>Email</b>: {{$email}}<br>\n          <b>Address</b>: {{$address}}<br>\n          <b>Phone</b>: {{$phone}}<br>\n          <b>Order note</b>: {{$comment}}\n      </td>\n  </tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Order detail:<br>\n===================================<br></p>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\n  {{$orderDetail}}\n  <tr>\n      <td colspan=\"2\"></td>\n      <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\n      <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\n  </tr>\n  <tr>\n      <td colspan=\"2\"></td>\n      <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\n      <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\n  </tr>\n  <tr>\n      <td colspan=\"2\"></td>\n      <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\n      <td colspan=\"2\" align=\"right\">{{$discount}}</td>\n  </tr>\n  <tr>\n      <td colspan=\"2\"></td>\n      <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\n      <td colspan=\"2\" align=\"right\">{{$total}}</td>\n  </tr>\n</table>', 1, 1),
(6, 'New order to customr', 'order_success_to_customer', '<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n  <td>\n      <b>Order ID</b>: {{$orderID}}<br>\n      <b>Customer name</b>: {{$toname}}<br>\n      <b>Address</b>: {{$address}}<br>\n      <b>Phone</b>: {{$phone}}<br>\n      <b>Order note</b>: {{$comment}}\n  </td>\n</tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Order detail:<br>\n===================================<br></p>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\n{{$orderDetail}}\n<tr>\n  <td colspan=\"2\"></td>\n  <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\n  <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\n</tr>\n<tr>\n  <td colspan=\"2\"></td>\n  <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\n  <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\n</tr>\n<tr>\n  <td colspan=\"2\"></td>\n  <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\n  <td colspan=\"2\" align=\"right\">{{$discount}}</td>\n</tr>\n<tr>\n  <td colspan=\"2\"></td>\n  <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\n  <td colspan=\"2\" align=\"right\">{{$total}}</td>\n</tr>\n</table>', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_language`
--

CREATE TABLE `shop_language` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) DEFAULT 0 COMMENT 'Layout RTL',
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_language`
--

INSERT INTO `shop_language` (`id`, `name`, `code`, `icon`, `status`, `rtl`, `sort`) VALUES
(1, 'English', 'en', '/data/language/flag_uk.png', 0, 0, 1),
(2, 'Tiếng Việt', 'vi', '/data/language/flag_vn.png', 1, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_layout_page`
--

CREATE TABLE `shop_layout_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_layout_page`
--

INSERT INTO `shop_layout_page` (`id`, `key`, `name`) VALUES
(1, 'home', 'admin.layout_page_position.home'),
(2, 'shop_home', 'admin.layout_page_position.shop_home'),
(3, 'shop_product_list', 'admin.layout_page_position.product_list'),
(4, 'product_detail', 'admin.layout_page_position.product_detail'),
(5, 'shop_cart', 'admin.layout_page_position.shop_cart'),
(6, 'shop_item_list', 'admin.layout_page_position.item_list'),
(7, 'shop_item_detail', 'admin.layout_page_position.item_detail'),
(8, 'shop_news', 'admin.layout_page_position.news_list'),
(9, 'shop_news_detail', 'admin.layout_page_position.news_detail'),
(10, 'shop_auth', 'admin.layout_page_position.shop_auth'),
(11, 'shop_profile', 'admin.layout_page_position.shop_profile'),
(12, 'shop_page', 'admin.layout_page_position.shop_page'),
(13, 'shop_contact', 'admin.layout_page_position.shop_contact'),
(14, 'content_list', 'admin.layout_page_position.content_list'),
(15, 'content_detail', 'admin.layout_page_position.content_detail'),
(16, 'store_home', 'admin.layout_page_position.store_home'),
(17, 'store_product_list', 'admin.layout_page_position.store_product_list');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_layout_position`
--

CREATE TABLE `shop_layout_position` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_layout_position`
--

INSERT INTO `shop_layout_position` (`id`, `key`, `name`) VALUES
(1, 'header', 'admin.layout_page_block.header'),
(2, 'top', 'admin.layout_page_block.top'),
(3, 'bottom', 'admin.layout_page_block.bottom'),
(4, 'left', 'admin.layout_page_block.left'),
(5, 'right', 'admin.layout_page_block.right'),
(6, 'banner_top', 'admin.layout_page_block.banner_top');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_length`
--

CREATE TABLE `shop_length` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_length`
--

INSERT INTO `shop_length` (`id`, `name`, `description`) VALUES
(1, 'mm', 'Millimeter'),
(2, 'cm', 'Centimeter'),
(3, 'm', 'Meter'),
(4, 'in', 'Inch');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_link`
--

CREATE TABLE `shop_link` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_link`
--

INSERT INTO `shop_link` (`id`, `name`, `url`, `target`, `group`, `module`, `status`, `sort`) VALUES
(1, 'front.blog', 'route::news', '_self', 'menu', '', 1, 1),
(2, 'front.contact', 'route::contact', '_self', 'menu', '', 1, 2),
(7, 'Hướng dẫn mua hàng', 'huong-dan-mua-hang.html', '_self', 'menu', NULL, 1, 0),
(8, 'Chính sách bảo mật', 'chinh-sach-bao-mat.html', '_self', 'footer', NULL, 1, 1),
(9, 'Hướng dẫn mua hàng', 'huong-dan-mua-hang,html', '_self', 'footer', NULL, 1, 2),
(10, 'Chính sách thanh toán', 'chinh-sach-thanh-toan.html', '_self', 'footer', NULL, 1, 3),
(11, 'Chính sách vận chuyển', 'chinh-sach-van-chuyen.html', '_self', 'footer', NULL, 1, 4),
(12, 'Chính sách đổi trả', 'chinh-sach-doi-tra.html', '_self', 'footer', NULL, 1, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_link_store`
--

CREATE TABLE `shop_link_store` (
  `link_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_link_store`
--

INSERT INTO `shop_link_store` (`link_id`, `store_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_news`
--

CREATE TABLE `shop_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_news`
--

INSERT INTO `shop_news` (`id`, `image`, `alias`, `sort`, `status`, `created_at`, `updated_at`) VALUES
(1, '/data/content/blog-1.jpg', 'demo-alias-blog-1', 0, 1, '2021-07-21 04:13:24', NULL),
(2, '/data/content/blog-2.jpg', 'demo-alias-blog-2', 0, 1, '2021-07-21 04:13:24', NULL),
(3, '/data/content/blog-3.jpg', 'demo-alias-blog-3', 0, 1, '2021-07-21 04:13:24', NULL),
(4, '/data/content/blog-4.jpg', 'demo-alias-blog-4', 0, 1, '2021-07-21 04:13:24', NULL),
(5, '/data/content/blog-5.jpg', 'demo-alias-blog-5', 0, 1, '2021-07-21 04:13:24', NULL),
(6, '/data/content/blog-6.jpg', 'demo-alias-blog-6', 0, 1, '2021-07-21 04:13:24', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_news_description`
--

CREATE TABLE `shop_news_description` (
  `news_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_news_description`
--

INSERT INTO `shop_news_description` (`news_id`, `lang`, `title`, `keyword`, `description`, `content`) VALUES
(1, 'en', 'Easy Polo Black Edition 1', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(1, 'vi', 'Easy Polo Black Edition 1', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(2, 'en', 'Easy Polo Black Edition 2', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(2, 'vi', 'Easy Polo Black Edition 2', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(3, 'en', 'Easy Polo Black Edition 3', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(3, 'vi', 'Easy Polo Black Edition 3', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(4, 'en', 'Easy Polo Black Edition 4', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(4, 'vi', 'Easy Polo Black Edition 4', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(5, 'en', 'Easy Polo Black Edition 5', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(5, 'vi', 'Easy Polo Black Edition 5', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(6, 'en', 'Easy Polo Black Edition 6', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(6, 'vi', 'Easy Polo Black Edition 6', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_news_store`
--

CREATE TABLE `shop_news_store` (
  `news_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_news_store`
--

INSERT INTO `shop_news_store` (`news_id`, `store_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_order`
--

CREATE TABLE `shop_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` int(11) DEFAULT 0,
  `shipping` int(11) DEFAULT 0,
  `discount` int(11) DEFAULT 0,
  `payment_status` int(11) NOT NULL DEFAULT 1,
  `shipping_status` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 0,
  `tax` int(11) DEFAULT 0,
  `total` int(11) DEFAULT 0,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) DEFAULT NULL,
  `received` int(11) DEFAULT 0,
  `balance` int(11) DEFAULT 0,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'other',
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_order_detail`
--

CREATE TABLE `shop_order_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `qty` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `total_price` int(11) NOT NULL DEFAULT 0,
  `tax` int(11) NOT NULL DEFAULT 0,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) DEFAULT NULL,
  `attribute` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_order_history`
--

CREATE TABLE `shop_order_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `content` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `order_status_id` int(11) NOT NULL DEFAULT 0,
  `add_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_order_status`
--

CREATE TABLE `shop_order_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_order_status`
--

INSERT INTO `shop_order_status` (`id`, `name`) VALUES
(1, 'New'),
(2, 'Processing'),
(3, 'Hold'),
(4, 'Canceled'),
(5, 'Done'),
(6, 'Failed');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_order_total`
--

CREATE TABLE `shop_order_total` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL DEFAULT 0,
  `text` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_page`
--

CREATE TABLE `shop_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_page`
--

INSERT INTO `shop_page` (`id`, `image`, `alias`, `status`) VALUES
(1, '', 'about', 1),
(2, NULL, 'huong-dan-mua-hang', 1),
(3, NULL, 'chinh-sach-van-chuyen', 1),
(4, NULL, 'chinh-sach-thanh-toan', 1),
(6, NULL, 'chinh-sach-doi-tra', 1),
(7, NULL, 'chinh-sach-bao-mat', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_page_description`
--

CREATE TABLE `shop_page_description` (
  `page_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_page_description`
--

INSERT INTO `shop_page_description` (`page_id`, `lang`, `title`, `keyword`, `description`, `content`) VALUES
(1, 'en', 'About', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-2.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(1, 'vi', 'Giới thiệu', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-2.png\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(2, 'vi', 'Hướng dẫn mua hàng', 'Hướng dẫn mua hàng', 'Hướng dẫn mua hàng', '<h3><span style=\"color:#000000;\"><strong>Hướng dẫn mua h&agrave;ng:</strong></span></h3>\r\n\r\n<p><span style=\"color:#000000;\"><strong>Bước 1:</strong>&nbsp;Truy cập website v&agrave; lựa chọn sản phẩm cần mua để mua h&agrave;ng</span></p>\r\n\r\n<p><span style=\"color:#000000;\"><strong>Bước 2:</strong>&nbsp;Click v&agrave;o n&uacute;t Mua ngay hoặc Đặt h&agrave;ng ngay tại Website</span></p>\r\n\r\n<p><span style=\"color:#000000;\"><strong>Bước 3:&nbsp;</strong>Điền đầy đủ th&ocirc;ng tin<br />\r\n&ndash; Họ t&ecirc;n<br />\r\n&ndash; Chọn t&ecirc;n sản phẩm<br />\r\n&ndash; Chọn số lượng muốn đặt mua<br />\r\n&ndash; Điền số điện thoại nhận h&agrave;ng<br />\r\n&ndash; Điền th&ocirc;ng tin địa chỉ nhận h&agrave;ng<br />\r\n&ndash; Ghi ch&uacute; th&ecirc;m nếu c&oacute;</span></p>\r\n\r\n<p><span style=\"color:#000000;\"><strong>Bước 4:&nbsp;</strong>Click chọn &ldquo;<em>Đặt Mua Ngay</em>&rdquo;</span></p>\r\n\r\n<p><span style=\"color:#000000;\"><strong>Bước 5:</strong>&nbsp;Một trang th&ocirc;ng b&aacute;o đặt mua th&agrave;nh c&ocirc;ng sẽ xuất hiện. Q&uacute;y kh&aacute;ch chờ đợi nh&acirc;n viện gọi điện x&aacute;c nhận đơn h&agrave;ng trước l&uacute;c vận chuyển đến cho qu&yacute; kh&aacute;ch</span></p>\r\n\r\n<h3><span style=\"color:#000000;\"><strong>Quy định đổi, trả h&agrave;ng:</strong></span></h3>\r\n\r\n<p><span style=\"color:#000000;\">Thời gian đổi, trả trong v&ograve;ng 3 ng&agrave;y kể từ khi nhận được h&agrave;ng<br />\r\nC&aacute;ch thức đổi trả: Qu&yacute; kh&aacute;ch vui l&ograve;ng gọi điện, th&ocirc;ng b&aacute;o email về sản phẩm cần đổi, trả.<br />\r\n<em><strong>Lưu &yacute;:</strong>&nbsp;Qu&yacute; kh&aacute;ch n&ecirc;n kiểm tra sản phẩm ngay khi nh&acirc;n vi&ecirc;n của trung t&acirc;m giao h&agrave;ng đến tận nh&agrave;.</em><br />\r\nNhững trường hợp được đổi trả:</span></p>\r\n\r\n<ul contenteditable=\"true\">\r\n	<li><span style=\"color:#000000;\">Lỗi từ ph&iacute;a nh&agrave; cung cấp sản phẩm hoặc lỗi b&ecirc;n chuyển ph&aacute;t như: Sản phẩm kh&ocirc;ng đ&uacute;ng như m&ocirc; tả khi đặt h&agrave;ng (m&agrave;u sắc, trọng lượng, kiểu d&aacute;ng,&hellip;), sản phẩm bị bẩn, trầy xước.</span></li>\r\n	<li><span style=\"color:#000000;\">Sản phẩm đ&atilde; bị th&aacute;o gỡ trước đ&oacute;, bị m&oacute;p, m&eacute;o.</span></li>\r\n	<li><span style=\"color:#000000;\">Sản phẩm bị hỏng hoặc c&oacute; c&aacute;c hiện tượng lạ, đ&aacute;ng nghi.</span></li>\r\n	<li><span style=\"color:#000000;\">Sản phẩm hết hạn sử dụng</span></li>\r\n</ul>\r\n\r\n<p><span style=\"color:#000000;\">Với c&aacute;c trường hợp tr&ecirc;n qu&yacute; kh&aacute;ch c&oacute; quyền đổi trả sản phẩm c&oacute; gi&aacute; trị lớn hơn hoặc bằng gi&aacute; trị sản phẩm đ&atilde; mua trước đ&oacute;.<br />\r\nSản phẩm đổi trả phải c&ograve;n nguy&ecirc;n tem, chưa qua sử dụng, giặt tẩy, kh&ocirc;ng bị trầy xước hoặc dơ bẩn.</span></p>\r\n\r\n<p style=\"text-align: center;\"><span style=\"color:#000000;\"><em>Tất cả c&aacute;c khiếu nại, thắc mắc hoặc đổi trả h&agrave;ng qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ HOTLINE của ch&uacute;ng t&ocirc;i ở phần th&ocirc;ng tin li&ecirc;n hệ</em></span></p>'),
(3, 'vi', 'Chính sách vận chuyển', 'Chính sách vận chuyển', 'Chính sách vận chuyển', '<section data-element_type=\"section\" data-id=\"393e2a6b\"><span style=\"color:#000000;\">Sau khi qu&yacute; kh&aacute;ch&nbsp;đ&atilde;&nbsp;<strong>đặt h&agrave;ng th&agrave;nh c&ocirc;ng</strong>, đội ngũ Chăm s&oacute;c kh&aacute;ch h&agrave;ng của ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh li&ecirc;n hệ theo số điện thoại bạn cung cấp để x&aacute;c minh đơn h&agrave;ng, đồng thời th&ocirc;ng b&aacute;o về thời gian bạn nhận được h&agrave;ng, k&egrave;m theo c&aacute;c th&ocirc;ng tin cần thiết kh&aacute;c. Sau khi qu&aacute; tr&igrave;nh&nbsp;<strong>x&aacute;c minh th&agrave;nh c&ocirc;ng</strong>. Đơn h&agrave;ng sẽ được giao đến qu&yacute; kh&aacute;ch trong khoảng thời gian sau đ&acirc;y (C&aacute;c đơn đặt h&agrave;ng ngo&agrave;i giờ h&agrave;nh ch&iacute;nh sẽ t&iacute;nh thời gian bắt đầu từ s&aacute;ng ng&agrave;y h&ocirc;m sau): &nbsp;</span>\r\n<table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px;\">\r\n	<tbody>\r\n		<tr>\r\n			<td><span style=\"color:#000000;\"><strong>Địa chỉ giao h&agrave;ng</strong></span></td>\r\n			<td>\r\n			<p><span style=\"color:#000000;\"><strong>Thời gian giao h&agrave;ng</strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"color:#000000;\">&ndash; Nội th&agrave;nh H&agrave; Nội<br />\r\n			&ndash; Ngoại th&agrave;nh H&agrave; Nội<br />\r\n			&ndash; Nội th&agrave;nh TP. Hồ Ch&iacute; Minh<br />\r\n			&ndash; Ngoại th&agrave;nh TP Hồ Ch&iacute; Minh<br />\r\n			&ndash; Khu vực tuyến huyện</span></td>\r\n			<td><span style=\"color:#000000;\">&ndash; 24h-48h sau khi đặt h&agrave;ng<br />\r\n			&ndash; 48h-72h sau khi đặt h&agrave;ng<br />\r\n			&ndash; 24h-48h sau khi đặt h&agrave;ng<br />\r\n			&ndash; 48h-72h sau khi đặt h&agrave;ng<br />\r\n			&ndash; 3-5 ng&agrave;y sau khi đặt h&agrave;ng</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</section>\r\n\r\n<section data-element_type=\"section\" data-id=\"4fc53be\">\r\n<p><span style=\"color:#000000;\"><em><strong>Lưu &yacute;:&nbsp;</strong></em></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"color:#000000;\">C&aacute;c đơn đặt h&agrave;ng trong ng&agrave;y Chủ Nhật sẽ được bắt đầu giao h&agrave;ng từ ng&agrave;y thứ 2 tuần kế tiếp.</span></li>\r\n	<li><span style=\"color:#000000;\">C&aacute;c đơn đặt h&agrave;ng ngo&agrave;i giờ h&agrave;nh ch&iacute;nh sẽ t&iacute;nh thời gian bắt đầu từ 8:00 s&aacute;ng ng&agrave;y h&ocirc;m sau</span></li>\r\n</ul>\r\n</section>\r\n\r\n<section data-element_type=\"section\" data-id=\"e45c211\">\r\n<p><span style=\"color:#000000;\"><em>Tất cả c&aacute;c khiếu nại, thắc mắc hoặc đổi trả h&agrave;ng qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ HOTLINE ở phần th&ocirc;ng tin li&ecirc;n hệ của ch&uacute;ng t&ocirc;i</em></span></p>\r\n</section>'),
(4, 'vi', 'Chính sách thanh toán', 'Chính sách thanh toán', 'Chính sách thanh toán', '<p><span style=\"color:#000000;\"><strong>1. Ch&uacute;ng t&ocirc;i cung cấp cho kh&aacute;ch h&agrave;ng duy nhất 1 h&igrave;nh thức thanh to&aacute;n l&agrave; SHIP COD (Nhận h&agrave;ng &ndash; Thanh to&aacute;n)</strong></span></p>\r\n\r\n<p><span style=\"color:#000000;\">Ship COD l&agrave; h&igrave;nh thức giao h&agrave;ng tới nơi mới thu tiền. Qu&yacute; kh&aacute;ch được cầm h&agrave;ng v&agrave; kiểm tra đ&uacute;ng chất lượng sau đ&oacute; mới phải trả tiền h&agrave;ng. Tiền h&agrave;ng sẽ th&agrave;nh to&aacute;n cho nh&acirc;n vi&ecirc;n giao h&agrave;ng</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"color:#000000;\">Kh&aacute;ch h&agrave;ng đặt h&agrave;ng tại website</span></li>\r\n	<li><span style=\"color:#000000;\">Nh&acirc;n vi&ecirc;n ch&uacute;ng t&ocirc;i gọi x&aacute;c nhận địa chỉ v&agrave; th&ocirc;ng tin đơn h&agrave;ng</span></li>\r\n	<li><span style=\"color:#000000;\">Sau kho&agrave;ng thời gian 2-4 ng&agrave;y bưu t&aacute; giao đến địa chỉ của kh&aacute;ch h&agrave;ng</span></li>\r\n	<li><span style=\"color:#000000;\">Nếu đồng &yacute; nhận h&agrave;ng, bưu t&aacute; sẽ thu tiền h&agrave;ng của kh&aacute;ch h&agrave;ng.</span></li>\r\n	<li><span style=\"color:#000000;\">Nếu từ chối nhận h&agrave;ng, bưu t&aacute; sẽ chuyển lại h&agrave;ng cho ch&uacute;ng t&ocirc;i (Kh&aacute;ch h&agrave;ng kh&ocirc;ng mất chi ph&iacute;)</span></li>\r\n</ul>\r\n\r\n<p><span style=\"color:#000000;\">Mọi đơn h&agrave;ng đặt mua tại webiste của chung t&ocirc;i sẽ được miễn ph&iacute; vận chuyển tại Việt Nam</span></p>\r\n\r\n<p><span style=\"color:#000000;\"><strong>2. Hướng dẫn thanh to&aacute;n</strong></span></p>\r\n\r\n<p><span style=\"color:#000000;\">Sau khi đặt mua h&agrave;ng v&agrave; được ch&uacute;ng t&ocirc;i x&aacute;c nhận, đơn h&agrave;ng của qu&yacute; kh&aacute;ch sẽ được đ&oacute;ng g&oacute;i v&agrave; chuyển đi, mọi đơn h&agrave;ng được miễn ph&iacute; vận chuyển v&agrave; tới qu&yacute; kh&aacute;ch từ 2-4 ng&agrave;y, bộ ph&acirc;n giao h&agrave;ng của ch&uacute;ng t&ocirc;i l&agrave;m việc cả thứ 7 v&agrave; chủ nhật<br />\r\nKhi nhận được h&agrave;ng qu&yacute; kh&aacute;ch được kiểm tra h&agrave;ng của m&igrave;nh v&agrave; thanh to&aacute;n cho nh&acirc;n vi&ecirc;n giao h&agrave;ng tương ứng với số tiền đ&atilde; đặt mua.</span></p>\r\n\r\n<p style=\"text-align: center;\"><span style=\"color:#000000;\"><em>Tất cả c&aacute;c khiếu nại, thắc mắc hoặc đổi trả h&agrave;ng qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ HOTLINE ở phần th&ocirc;ng tin li&ecirc;n hệ của ch&uacute;ng t&ocirc;i</em></span></p>'),
(6, 'vi', 'Chính sách đổi trả', 'Chính sách đổi trả', 'Chính sách đổi trả', '<p><span style=\"color:#000000;\"><strong>1. Ch&uacute;ng t&ocirc;i cung cấp cho kh&aacute;ch h&agrave;ng duy nhất 1 h&igrave;nh thức thanh to&aacute;n l&agrave; SHIP COD</strong></span></p>\r\n\r\n<p><span style=\"color:#000000;\"><strong>Nội dung đổi sản phẩm</strong><br />\r\n1. Qu&yacute; Kh&aacute;ch h&agrave;ng c&oacute; thể đổi sản phẩm miễn ph&iacute; trong v&ograve;ng 07 ng&agrave;y kể từ ng&agrave;y nhận được sản phẩm.<br />\r\n2. Qu&yacute; Kh&aacute;ch h&agrave;ng được đổi sản phẩm ngang gi&aacute; hoặc cao hơn (Qu&yacute; Kh&aacute;ch h&agrave;ng chi trả th&ecirc;m gi&aacute; ch&ecirc;nh lệch nếu đổi sản phẩm c&oacute; gi&aacute; cao hơn). C&aacute;c chi ph&iacute; li&ecirc;n quan đến vận chuyển (nếu c&oacute;) sẽ do Qu&yacute; kh&aacute;ch chi trả.<br />\r\n3. Số lần đổi sản phẩm tối đa l&agrave; 01 lần.</span></p>\r\n\r\n<p><span style=\"color:#000000;\"><strong>C&aacute;c ti&ecirc;u ch&iacute; khi đổi sản phẩm</strong><br />\r\n1. Sản phẩm khi đổi c&ograve;n nguy&ecirc;n vẹn như ban đầu mua, đầy đủ h&oacute;a đơn, hộp đựng, c&aacute;c qu&agrave; tặng k&egrave;m theo (nếu c&oacute;).<br />\r\n2. Qu&agrave; tặng đi k&egrave;m Qu&yacute; Kh&aacute;ch h&agrave;ng sẽ &aacute;p dụng kh&ocirc;ng đổi trả.<br />\r\n3. Kh&aacute;ch h&agrave;ng chịu ph&iacute; ship l&agrave; 30.000đ cho lần đổi trả, đổi size sản phẩm</span></p>\r\n\r\n<h2><span style=\"color:#000000;\"><strong>CH&Iacute;NH S&Aacute;CH HO&Agrave;N TRẢ</strong></span></h2>\r\n\r\n<p><span style=\"color:#000000;\"><strong>Điều kiện ho&agrave;n trả:</strong><br />\r\n1. Người mua đ&atilde; thanh to&aacute;n nhưng kh&ocirc;ng nhận được sản phẩm<br />\r\n2. Sản phẩm bị lỗi hoặc bị hư hại trong qu&aacute; tr&igrave;nh vận chuyển tới qu&yacute; kh&aacute;ch<br />\r\n3. Giao sản phẩm sai với đặt h&agrave;ng (VD: sai k&iacute;ch cỡ, sai m&agrave;u sắc&hellip;)<br />\r\n4 Ho&agrave;n trả khi kh&aacute;ch h&agrave;ng nhận sản phẩm kh&ocirc;ng qu&aacute; 7 ng&agrave;y<br />\r\n5. Sản phẩm c&ograve;n nguy&ecirc;n vẹn như ban đầu mua, đầy đủ h&oacute;a đơn, hộp đựng, c&aacute;c qu&agrave; tặng k&egrave;m theo (nếu c&oacute;).</span></p>\r\n\r\n<p><span style=\"color:#000000;\"><strong>C&aacute;c bước ho&agrave;n trả sản phẩm:</strong></span></p>\r\n\r\n<p><span style=\"color:#000000;\">1. Li&ecirc;n hệ với shop để được x&aacute;c nhận<br />\r\n2. Kh&aacute;ch h&agrave;ng kh&ocirc;ng bị mất chi ph&iacute; vận chuyển khi ho&agrave;n trả sản phẩm<br />\r\n3. Mọi sản phẩm ho&agrave;n trả h&agrave;ng được gửi về địa chỉ của c&ocirc;ng ty dưới ch&acirc;n trang</span></p>\r\n\r\n<h2><span style=\"color:#000000;\"><strong>CH&Iacute;NH S&Aacute;CH HO&Agrave;N TIỀN</strong></span></h2>\r\n\r\n<p><span style=\"color:#000000;\">Shop ho&agrave;n tiền cho người mua khi shop x&aacute;c nhận đ&atilde; nhận được h&agrave;ng trả lại. Tiền ho&agrave;n trả sẽ được chuyển v&agrave;o thẻ ng&acirc;n h&agrave;ng của kh&aacute;ch h&agrave;ng cung cấp cho shop</span><br />\r\n<span style=\"color:#e74c3c;\">Lưu &yacute;: Kh&aacute;ch h&agrave;ng c&oacute; tr&aacute;ch nhiệm phải cung cấp th&ocirc;ng tin t&agrave;i khoản ng&acirc;n h&agrave;ng để nhận tiền ho&agrave;n trả.</span></p>\r\n\r\n<p><span style=\"color:#000000;\"></span></p>\r\n\r\n<p style=\"text-align: center;\"><span style=\"color:#000000;\"><em>Tất cả c&aacute;c khiếu nại, thắc mắc hoặc đổi trả h&agrave;ng qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ HOTLINE ở phần li&ecirc;n hệ của ch&uacute;ng t&ocirc;i</em></span></p>'),
(7, 'vi', 'Chính sách bảo mật', 'Chính sách bảo mật', 'Chính sách bảo mật', '<h2><span style=\"color:#000000;\">1. Mục đ&iacute;ch v&agrave; phạm vi thu thập</span></h2>\r\n\r\n<p><span style=\"color:#000000;\">Việc thu thập dữ liệu chủ yếu tr&ecirc;n Favimart bao gồm: email, điện thoại, t&ecirc;n đăng nhập, mật khẩu đăng nhập, địa chỉ Kh&aacute;ch h&agrave;ng. Đ&acirc;y l&agrave; c&aacute;c th&ocirc;ng tin m&agrave; Favimart cần Kh&aacute;ch h&agrave;ng cung cấp bắt buộc khi đăng k&yacute; sử dụng dịch vụ v&agrave; Favimart sử dụng nhằm li&ecirc;n hệ x&aacute;c nhận khi Kh&aacute;ch h&agrave;ng đăng k&yacute; sử dụng dịch vụ tr&ecirc;n Favimart, đảm bảo quyền lợi cho Kh&aacute;ch h&agrave;ng.</span></p>\r\n\r\n<p><span style=\"color:#000000;\">C&aacute;c Kh&aacute;ch h&agrave;ng sẽ tự chịu tr&aacute;ch nhiệm về bảo mật v&agrave; lưu giữ mọi hoạt động sử dụng dịch vụ dưới t&ecirc;n đăng k&yacute;, mật khẩu v&agrave; hộp thư điện tử của m&igrave;nh. Ngo&agrave;i ra, Kh&aacute;ch h&agrave;ng c&oacute; tr&aacute;ch nhiệm th&ocirc;ng b&aacute;o kịp thời cho Favimart về những h&agrave;nh vi sử dụng tr&aacute;i ph&eacute;p, lạm dụng, vi phạm bảo mật, lưu giữ t&ecirc;n đăng k&yacute; v&agrave; mật khẩu của b&ecirc;n thứ ba để c&oacute; biện ph&aacute;p giải quyết ph&ugrave; hợp.</span></p>\r\n\r\n<h2><span style=\"color:#000000;\">2. Phạm vi sử dụng th&ocirc;ng tin</span></h2>\r\n\r\n<p><span style=\"color:#000000;\">Favimart sử dụng th&ocirc;ng tin Kh&aacute;ch h&agrave;ng cung cấp để:</span></p>\r\n\r\n<ul contenteditable=\"true\">\r\n	<li><span style=\"color:#000000;\">Cung cấp c&aacute;c dịch vụ đến Kh&aacute;ch h&agrave;ng.</span></li>\r\n	<li><span style=\"color:#000000;\">Gửi c&aacute;c th&ocirc;ng b&aacute;o về c&aacute;c hoạt động trao đổi th&ocirc;ng tin giữa Kh&aacute;ch h&agrave;ng v&agrave; S&agrave;n Shop.</span></li>\r\n	<li><span style=\"color:#000000;\">Ngăn ngừa c&aacute;c hoạt động ph&aacute; hủy t&agrave;i khoản người d&ugrave;ng của Kh&aacute;ch h&agrave;ng hoặc c&aacute;c hoạt động giả mạo Kh&aacute;ch h&agrave;ng.</span></li>\r\n	<li><span style=\"color:#000000;\">Li&ecirc;n lạc v&agrave; giải quyết với kh&aacute;ch h&agrave;ng trong những trường hợp đặc biệt.</span></li>\r\n	<li><span style=\"color:#000000;\">Kh&ocirc;ng sử dụng th&ocirc;ng tin c&aacute; nh&acirc;n của Kh&aacute;ch h&agrave;ng ngo&agrave;i mục đ&iacute;ch x&aacute;c nhận v&agrave; li&ecirc;n hệ c&oacute; li&ecirc;n quan đến giao dịch tại Favimart.</span></li>\r\n	<li><span style=\"color:#000000;\">S&agrave;n Favimart c&oacute; tr&aacute;ch nhiệm hợp t&aacute;c cung cấp th&ocirc;ng tin c&aacute; nh&acirc;n Kh&aacute;ch h&agrave;ng khi c&oacute; y&ecirc;u cầu từ cơ quan nh&agrave; nước c&oacute; thẩm quyền.</span></li>\r\n</ul>\r\n\r\n<h2><span style=\"color:#000000;\">3. Thời gian lưu trữ th&ocirc;ng tin</span></h2>\r\n\r\n<p><span style=\"color:#000000;\">Dữ liệu c&aacute; nh&acirc;n của Kh&aacute;ch h&agrave;ng sẽ được lưu trữ cho đến khi c&oacute; y&ecirc;u cầu hủy bỏ hoặc tự Kh&aacute;ch h&agrave;ng đăng nhập v&agrave; thực hiện hủy bỏ. C&ograve;n lại trong mọi trường hợp th&ocirc;ng tin c&aacute; nh&acirc;n Kh&aacute;ch h&agrave;ng sẽ được bảo mật tr&ecirc;n m&aacute;y chủ của Favimart</span></p>\r\n\r\n<h2><span style=\"color:#000000;\">4. Địa chỉ của đơn vị thu thập, quản l&yacute; th&ocirc;ng tin v&agrave; hỗ trợ Kh&aacute;ch h&agrave;ng</span></h2>\r\n\r\n<ul contenteditable=\"true\">\r\n	<li><span style=\"color:#000000;\">Favimart</span></li>\r\n	<li><span style=\"color:#000000;\">Địa chỉ: P108, tầng 10, Royal city, 234 Nguyễn Tr&atilde;i, Đống Đa, H&agrave; Nội</span></li>\r\n	<li><span style=\"color:#000000;\">Hotline: 0338.716.078</span></li>\r\n	<li><span style=\"color:#000000;\">Email: hotro@favimart.site</span></li>\r\n</ul>\r\n\r\n<h2><span style=\"color:#000000;\">5. Phương tiện v&agrave; c&ocirc;ng cụ để Kh&aacute;ch h&agrave;ng tiếp cận v&agrave; chỉnh sửa dữ liệu của m&igrave;nh</span></h2>\r\n\r\n<p><span style=\"color:#000000;\">Kh&aacute;ch h&agrave;ng c&oacute; quyền tự kiểm tra, cập nhật, điều chỉnh th&ocirc;ng tin c&aacute; nh&acirc;n của m&igrave;nh bằng c&aacute;ch đăng nhập v&agrave;o t&agrave;i khoản v&agrave; chỉnh sửa th&ocirc;ng tin c&aacute; nh&acirc;n hoặc y&ecirc;u cầu Favimart thực hiện việc n&agrave;y.<br />\r\n<br />\r\nKh&aacute;ch h&agrave;ng c&oacute; quyền gửi khiếu nại về việc lộ th&ocirc;ng tin c&aacute;c nh&acirc;n cho b&ecirc;n thứ ba đến Ban quản trị của Favimart. Khi tiếp nhận những phản hồi n&agrave;y, Favimart sẽ x&aacute;c nhận lại th&ocirc;ng tin, phải c&oacute; tr&aacute;ch nhiệm trả lời l&yacute; do v&agrave; hướng dẫn Kh&aacute;ch h&agrave;ng kh&ocirc;i phục v&agrave; bảo mật lại th&ocirc;ng tin.</span></p>\r\n\r\n<h2><span style=\"color:#000000;\">6. Cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n Kh&aacute;ch h&agrave;ng</span></h2>\r\n\r\n<p><span style=\"color:#000000;\">Th&ocirc;ng tin c&aacute; nh&acirc;n của Kh&aacute;ch h&agrave;ng tr&ecirc;n Favimart được Favimart cam kết bảo mật tuyệt đối theo ch&iacute;nh s&aacute;ch bảo vệ th&ocirc;ng tin c&aacute; nh&acirc;n của Favimart. Việc thu thập v&agrave; sử dụng th&ocirc;ng tin của mỗi Kh&aacute;ch h&agrave;ng chỉ được thực hiện khi c&oacute; sự đồng &yacute; của Kh&aacute;ch h&agrave;ng đ&oacute;, trừ những trường hợp ph&aacute;p luật c&oacute; quy định kh&aacute;c. Favimart cam kết:</span></p>\r\n\r\n<ul contenteditable=\"true\">\r\n	<li><span style=\"color:#000000;\">Kh&ocirc;ng sử dụng, kh&ocirc;ng chuyển giao, cung cấp hay tiết lộ cho b&ecirc;n thứ ba n&agrave;o về th&ocirc;ng tin c&aacute; nh&acirc;n của Kh&aacute;ch h&agrave;ng khi kh&ocirc;ng c&oacute; sự cho ph&eacute;p hoặc đồng &yacute; từ Kh&aacute;ch h&agrave;ng, trừ những trường hợp ph&aacute;p luật c&oacute; quy định kh&aacute;c.</span></li>\r\n	<li><span style=\"color:#000000;\">Trong trường hợp m&aacute;y chủ lưu trữ th&ocirc;ng tin bị hacker tấn c&ocirc;ng dẫn đến mất m&aacute;t dữ liệu c&aacute; nh&acirc;n Kh&aacute;ch h&agrave;ng, Favimart&nbsp; sẽ c&oacute; tr&aacute;ch nhiệm th&ocirc;ng b&aacute;o vụ việc cho cơ quan chức năng điều tra xử l&yacute; kịp thời v&agrave; th&ocirc;ng b&aacute;o cho Kh&aacute;ch h&agrave;ng được biết.</span></li>\r\n	<li><span style=\"color:#000000;\">Bảo mật tuyệt đối mọi th&ocirc;ng tin giao dịch trực tuyến của Kh&aacute;ch h&agrave;ng bao gồm th&ocirc;ng tin h&oacute;a đơn, chứng từ kế to&aacute;n số h&oacute;a tại khu vực dữ liệu trung t&acirc;m an to&agrave;n cấp 1 của Favimart.</span></li>\r\n</ul>\r\n<span style=\"color:#000000;\"></span>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_page_store`
--

CREATE TABLE `shop_page_store` (
  `page_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_page_store`
--

INSERT INTO `shop_page_store` (`page_id`, `store_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_password_resets`
--

CREATE TABLE `shop_password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_payment_status`
--

CREATE TABLE `shop_payment_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_payment_status`
--

INSERT INTO `shop_payment_status` (`id`, `name`) VALUES
(1, 'Unpaid'),
(2, 'Partial payment'),
(3, 'Paid'),
(4, 'Refurn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_product`
--

CREATE TABLE `shop_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upc` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'upc code',
  `ean` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ean code',
  `jan` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'jan code',
  `isbn` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'isbn code',
  `mpn` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'mpn code',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(11) DEFAULT 0,
  `supplier_id` int(11) DEFAULT 0,
  `price` int(11) DEFAULT 0,
  `cost` int(11) DEFAULT 0,
  `stock` int(11) DEFAULT 0,
  `sold` int(11) DEFAULT 0,
  `minimum` int(11) DEFAULT 0,
  `weight_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT 0,
  `length_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length` int(11) DEFAULT 0,
  `width` int(11) DEFAULT 0,
  `height` int(11) DEFAULT 0,
  `kind` tinyint(4) DEFAULT 0 COMMENT '0:single, 1:bundle, 2:group',
  `property` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `tax_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '0:No-tax, auto: Use tax default',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `view` int(11) NOT NULL DEFAULT 0,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_lastview` datetime DEFAULT NULL,
  `date_available` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_product`
--

INSERT INTO `shop_product` (`id`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `image`, `brand_id`, `supplier_id`, `price`, `cost`, `stock`, `sold`, `minimum`, `weight_class`, `weight`, `length_class`, `length`, `width`, `height`, `kind`, `property`, `tax_id`, `status`, `sort`, `view`, `alias`, `date_lastview`, `date_available`, `created_at`, `updated_at`) VALUES
(17, 'ALOKK1-AY', NULL, NULL, NULL, NULL, NULL, '/data/product/product-10.png', 3, 1, 850000, 850000, 10000, 0, 0, 'kg', 2, '', 0, 0, 0, 0, 'physical', '0', 1, 0, 121, 'dau-goi-xa-tigi-do-750ml', '2021-07-28 18:37:56', NULL, NULL, '2021-07-28 11:37:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_product_attribute`
--

CREATE TABLE `shop_product_attribute` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `add_price` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_product_build`
--

CREATE TABLE `shop_product_build` (
  `build_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_product_category`
--

CREATE TABLE `shop_product_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_product_category`
--

INSERT INTO `shop_product_category` (`product_id`, `category_id`) VALUES
(17, 14);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_product_description`
--

CREATE TABLE `shop_product_description` (
  `product_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_product_description`
--

INSERT INTO `shop_product_description` (`product_id`, `lang`, `name`, `keyword`, `description`, `content`) VALUES
(17, 'vi', 'Cặp Dầu Gội Xả Tigi Đỏ 750mlx750ml', 'Dầu gội xả tigi đỏ', 'Dưỡng chất có trong dầu gội xả này không chỉ làm sạch, nuôi dưỡng da đầu mà còn phục hồi sự suôn mượt chắc khỏe cho tóc, ngăn ngừa khô xơ, gãy rụng, củng cố độ ẩm và gia tăng độ bóng, tái tạo sinh lực cho mái tóc.', '<p><strong>Bạn đang muốn t&igrave;m kiếm một sản phẩm dầu gội, dầu xả c&oacute; thể gi&uacute;p bạn giải quyết được những vấn đề sau:</strong><br />\r\n&rarr; Giảm rụng t&oacute;c.<br />\r\n&rarr; Loại bỏ được g&agrave;u ngứa, kh&ocirc; xơ.<br />\r\n&rarr; K&iacute;ch th&iacute;ch t&oacute;c mọc d&agrave;y v&agrave; chắc khoẻ hơn.<br />\r\n&rarr; Nu&ocirc;i dưỡng t&oacute;c mềm mại, su&ocirc;n mượt, bồng bềnh tự nhi&ecirc;n.<br />\r\n&rarr; Chăm s&oacute;c t&oacute;c an to&agrave;n, đ&aacute;ng tin cậy.</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"\" src=\"https://i2.wp.com/favimart.store/wp-content/uploads/2018/05/hinh-anh-bo-dau-goi-Tigi-Bed-Head-h1.jpg?w=500&amp;ssl=1\" style=\"width: 500px; height: 341px;\" /></p>\r\n\r\n<p style=\"text-align: center;\"><em>Bạn c&oacute; đang t&igrave;m kiếm cho m&igrave;nh sản phẩm chăm s&oacute;c t&oacute;c sao cho tốt nhất kh&ocirc;ng?</em></p>\r\n\r\n<p><img alt=\"👉\" draggable=\"false\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.0.1/svg/1f449.svg\" style=\"height: 15px; width: 15px;\" />&nbsp;Vậy th&igrave;, bộ dầu gội Tigi Bed Head ch&iacute;nh l&agrave; sự lựa chọn tuyệt vời m&agrave; bạn kh&ocirc;ng thể bỏ qua để nhanh ch&oacute;ng sở hữu m&aacute;i t&oacute;c như &yacute; muốn.<br />\r\n&ndash; Dầu gội Tigi Bed Head đỏ được chứng minh l&agrave; c&oacute; hiệu quả&nbsp;<strong>phục hồi t&oacute;c hư tổn, ngăn chặn qu&aacute; tr&igrave;nh rụng t&oacute;c v&agrave; k&iacute;ch th&iacute;ch mọc t&oacute;c</strong>, dưỡng t&oacute;c su&ocirc;n mềm, tăng cường độ đ&agrave;n hồi cho t&oacute;c chắc khỏe sau 1-2 tuần sử dụng.</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"\" src=\"https://i1.wp.com/favimart.store/wp-content/uploads/2018/05/hinh-anh-bo-dau-goi-Tigi-Bed-Head-h2.jpg?w=500&amp;ssl=1\" style=\"width: 500px; height: 416px;\" /></p>\r\n\r\n<p style=\"text-align: center;\"><em>Bộ dầu gội Tigi Bed Head gồm 1 chai gội 750ml + 1 chai xả 750ml</em></p>\r\n\r\n<table border=\"0\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h2>C&ocirc;ng dụng &ldquo;si&ecirc;u đỉnh&rdquo; Tigi đem lại cho m&aacute;i t&oacute;c:</h2>\r\n\r\n			<p><img alt=\"✔\" draggable=\"false\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.0.1/svg/2714.svg\" style=\"height: 15px; width: 15px;\" />&nbsp;Loại bỏ mọi bụi bẩn, b&atilde; nhờn ho&agrave;n to&agrave;n gi&uacute;p da đầu sạch s&acirc;u.<br />\r\n			<img alt=\"✔\" draggable=\"false\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.0.1/svg/2714.svg\" style=\"height: 15px; width: 15px;\" />&nbsp;Ngăn ngừa t&igrave;nh trạng g&agrave;u, vi&ecirc;m ngứa v&agrave; c&aacute;c bệnh l&yacute; về da đầu.<br />\r\n			<img alt=\"✔\" draggable=\"false\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.0.1/svg/2714.svg\" style=\"height: 15px; width: 15px;\" />&nbsp;Bổ sung dưỡng chất nu&ocirc;i dưỡng t&oacute;c chắc khỏe, b&oacute;ng mượt.<br />\r\n			<img alt=\"✔\" draggable=\"false\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.0.1/svg/2714.svg\" style=\"height: 15px; width: 15px;\" />&nbsp;Tăng cường độ đ&agrave;n hồi cho t&oacute;c, giảm thiểu g&atilde;y rụng v&agrave; kh&ocirc; xơ.<br />\r\n			<img alt=\"✔\" draggable=\"false\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.0.1/svg/2714.svg\" style=\"height: 15px; width: 15px;\" />&nbsp;Bảo vệ t&oacute;c với m&agrave;ng nano si&ecirc;u nhỏ ngăn chặn t&aacute;c hại của tia UV, t&aacute;c động từ m&ocirc;i trường b&ecirc;n ngo&agrave;i&hellip;<br />\r\n			<img alt=\"✔\" draggable=\"false\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.0.1/svg/2714.svg\" style=\"height: 15px; width: 15px;\" />&nbsp;M&ugrave;i thơm dịu nhẹ đem lại cho bạn cảm gi&aacute;c thoải m&aacute;i, sảng kho&aacute;i.</p>\r\n			</td>\r\n			<td style=\"text-align: center;\"><img alt=\"\" src=\"https://i1.wp.com/favimart.store/wp-content/uploads/2018/05/toc-dai1.png\" style=\"height: 349px; width: 300px;\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\"><img alt=\"\" src=\"https://i2.wp.com/favimart.store/wp-content/uploads/2018/05/dau-goi-ti-gi-do-gia-dung-ninh-binh-combo-dau-goi-dau-xa-3-20210702093853.jpg?w=600&amp;ssl=1\" style=\"width: 300px; height: 300px;\" /></td>\r\n			<td>\r\n			<h2>Cứu Tinh Cho T&oacute;c Hư Tổn Cấp Độ 3</h2>\r\n\r\n			<p><img alt=\"✔\" draggable=\"false\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.0.1/svg/2714.svg\" style=\"height: 15px; width: 15px;\" />&nbsp;Phục hồi t&oacute;c hư tổn do uốn &eacute;p, nhuộm<br />\r\n			<img alt=\"✔\" draggable=\"false\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.0.1/svg/2714.svg\" style=\"height: 15px; width: 15px;\" />&nbsp;Tăng cường độ ẩm cho t&oacute;c v&agrave; da đầu<br />\r\n			<img alt=\"✔\" draggable=\"false\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.0.1/svg/2714.svg\" style=\"height: 15px; width: 15px;\" />&nbsp;C&ocirc;ng thức ưu việt cung cấp vitamin nu&ocirc;i dưỡng t&oacute;c từ gốc tới ngọn, gi&uacute;p t&oacute;c trở n&ecirc;n su&ocirc;n mượt, &oacute;ng ả</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_product_download`
--

CREATE TABLE `shop_product_download` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_product_group`
--

CREATE TABLE `shop_product_group` (
  `group_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_product_image`
--

CREATE TABLE `shop_product_image` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_product_image`
--

INSERT INTO `shop_product_image` (`id`, `image`, `product_id`) VALUES
(36, '/data/product/product-12.png', 17),
(37, '/data/product/product-6.png', 17),
(38, '/data/product/product-2.png', 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_product_promotion`
--

CREATE TABLE `shop_product_promotion` (
  `product_id` int(11) NOT NULL,
  `price_promotion` int(11) NOT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `status_promotion` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_product_promotion`
--

INSERT INTO `shop_product_promotion` (`product_id`, `price_promotion`, `date_start`, `date_end`, `status_promotion`, `created_at`, `updated_at`) VALUES
(17, 430000, NULL, NULL, 1, '2021-07-21 05:38:07', '2021-07-21 05:38:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_product_property`
--

CREATE TABLE `shop_product_property` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_product_property`
--

INSERT INTO `shop_product_property` (`id`, `code`, `name`) VALUES
(1, 'physical', 'Product physical'),
(2, 'download', 'Product download');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_product_store`
--

CREATE TABLE `shop_product_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_product_store`
--

INSERT INTO `shop_product_store` (`product_id`, `store_id`) VALUES
(17, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_sessions`
--

CREATE TABLE `shop_sessions` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_shipping_standard`
--

CREATE TABLE `shop_shipping_standard` (
  `id` int(10) UNSIGNED NOT NULL,
  `fee` int(11) NOT NULL,
  `shipping_free` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_shipping_standard`
--

INSERT INTO `shop_shipping_standard` (`id`, `fee`, `shipping_free`) VALUES
(1, 20, 10000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_shipping_status`
--

CREATE TABLE `shop_shipping_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_shipping_status`
--

INSERT INTO `shop_shipping_status` (`id`, `name`) VALUES
(1, 'Not sent'),
(2, 'Sending'),
(3, 'Shipping done');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_shoppingcart`
--

CREATE TABLE `shop_shoppingcart` (
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_store_block`
--

CREATE TABLE `shop_store_block` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_store_block`
--

INSERT INTO `shop_store_block` (`id`, `name`, `position`, `page`, `type`, `text`, `status`, `sort`, `store_id`) VALUES
(1, 'Facebook code', 'top', '*', 'html', '\n<div id=\"fb-root\"></div>\n<script>(function(d, s, id) {\nvar js, fjs = d.getElementsByTagName(s)[0];\nif (d.getElementById(id)) return;\njs = d.createElement(s); js.id = id;\njs.src = \"//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8&appId=934208239994473\";\nfjs.parentNode.insertBefore(js, fjs);\n}(document, \"script\", \"facebook-jssdk\"));\n</script>', 1, 0, 1),
(2, 'Google Analytics', 'header', '*', 'html', '\n<!-- Global site tag (gtag.js) - Google Analytics -->\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-128658138-1\"></script>\n<script>\nwindow.dataLayer = window.dataLayer || [];\nfunction gtag(){dataLayer.push(arguments);}\ngtag(\"js\", new Date());\ngtag(\"config\", \"UA-128658138-1\");\n</script>', 1, 0, 1),
(3, 'Product special', 'left', '*', 'view', 'product_special', 1, 1, 1),
(4, 'Brands', 'left', '*', 'view', 'brands_left', 1, 3, 1),
(5, 'Banner home', 'banner_top', 'home', 'view', 'banner_image', 1, 0, 1),
(6, 'Categories', 'left', 'home,shop_home', 'view', 'categories', 1, 0, 1),
(7, 'Product last view', 'left', '*', 'view', 'product_lastview', 1, 0, 1),
(8, 'Products new', 'bottom', 'home', 'view', 'product_new', 1, 9, 1),
(9, 'Top news', 'bottom', 'home', 'view', 'top_news', 1, 999, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_store_css`
--

CREATE TABLE `shop_store_css` (
  `css` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_store_css`
--

INSERT INTO `shop_store_css` (`css`, `store_id`) VALUES
('.sc-overlay {\r\n  position: fixed;\r\n  top: 50%;\r\n  left: 50%;\r\n  transform: translate(-50%, -50%);\r\n  transform: -webkit-translate(-50%, -50%);\r\n  transform: -moz-translate(-50%, -50%);\r\n  transform: -ms-translate(-50%, -50%);\r\n  color:#1f222b;\r\n  z-index: 9999;\r\n  background: rgba(255,255,255,0.7);\r\n}\r\n  \r\n#sc-loading{\r\n  display: none;\r\n  position: absolute;\r\n  top: 0;\r\n  left: 0;\r\n  width: 100%;\r\n  height: 100%;\r\n  z-index: 50;\r\n  background: rgba(255,255,255,0.7);\r\n}\r\n/*end loading */\r\n  \r\n/*price*/\r\n.sc-new-price{\r\n  color:#FE980F;\r\n  font-size: 14px;\r\n  padding: 10px 5px;\r\n  font-weight:bold;\r\n  }\r\n  .sc-old-price {\r\n  text-decoration: line-through;\r\n  color: #a95d5d;\r\n  font-size: 13px;\r\n  padding: 10px;\r\n  }\r\n  /*end price*/\r\n.sc-product-build{\r\n  font-size: 20px;\r\n  font-weight: bold;\r\n}\r\n.sc-product-build img{\r\n  width: 50px;\r\n}\r\n.sc-product-group  img{\r\n  width: 100px;\r\n  cursor: pointer;\r\n  }\r\n.sc-product-group:hover{\r\n  box-shadow: 0px 0px 2px #999;\r\n}\r\n.sc-product-group:active{\r\n  box-shadow: 0px 0px 2px #ff00ff;\r\n}\r\n.sc-product-group.active{\r\n  box-shadow: 0px 0px 2px #ff00ff;\r\n}\r\n\r\n.sc-shipping-address td{\r\n  padding: 3px !important;\r\n}\r\n.sc-shipping-address textarea,\r\n.sc-shipping-address input[type=\"text\"],\r\n.sc-shipping-address option{\r\n  width: 100%;\r\n  padding: 7px !important;\r\n}\r\n.row_cart>td{\r\n  vertical-align: middle !important;\r\n}\r\ninput[type=\"number\"]{\r\n  text-align: center;\r\n  padding:2px;\r\n}\r\n.sc-notice{\r\n  clear: both;\r\n  clear: both;\r\n  font-size: 20px;\r\n  background: #f3f3f3;\r\n  width: 100%;\r\n}\r\nimg.new {\r\n  position: absolute;\r\n  right: 0px;\r\n  top: 0px;\r\n  padding: 0px !important;\r\n}\r\n.pointer {\r\n  cursor: pointer;\r\n}\r\n.add-to-cart-list {\r\n  padding: 5px 10px !important;\r\n  margin: 2px !important;\r\n  letter-spacing: 0px !important;\r\n  font-size: 12px !important;\r\n  border-radius: 5px;\r\n}\r\n.help-block {\r\n  font-size: 12px;\r\n  color: red;\r\n  font-style: italic;\r\n}\r\n.tab-content img{margin:0}', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_subscribe`
--

CREATE TABLE `shop_subscribe` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_subscribe`
--

INSERT INTO `shop_subscribe` (`id`, `email`, `phone`, `content`, `status`, `store_id`, `created_at`, `updated_at`) VALUES
(1, 'tesst@gmail.com', NULL, NULL, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_supplier`
--

CREATE TABLE `shop_supplier` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_supplier`
--

INSERT INTO `shop_supplier` (`id`, `name`, `alias`, `email`, `phone`, `image`, `address`, `url`, `status`, `store_id`, `sort`) VALUES
(1, 'ABC distributor', 'abc-distributor', 'abc@abc.com', '012496657567', '/data/supplier/supplier.png', '', '', 1, 1, 0),
(2, 'XYZ distributor', 'xyz-distributor', 'xyz@xyz.com', '012496657567', '/data/supplier/supplier.png', '', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_tax`
--

CREATE TABLE `shop_tax` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_tax`
--

INSERT INTO `shop_tax` (`id`, `name`, `value`) VALUES
(1, 'Tax default (10%)', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_weight`
--

CREATE TABLE `shop_weight` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_weight`
--

INSERT INTO `shop_weight` (`id`, `name`, `description`) VALUES
(1, 'g', 'Gram'),
(2, 'kg', 'Kilogram'),
(3, 'lb', 'Pound '),
(4, 'oz', 'Ounce ');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_config`
--
ALTER TABLE `admin_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_config_key_store_id_unique` (`key`,`store_id`),
  ADD KEY `admin_config_code_index` (`code`);

--
-- Chỉ mục cho bảng `admin_log`
--
ALTER TABLE `admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_log_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_menu_key_unique` (`key`);

--
-- Chỉ mục cho bảng `admin_permission`
--
ALTER TABLE `admin_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permission_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permission_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_role_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `admin_role_permission`
--
ALTER TABLE `admin_role_permission`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `admin_role_permission_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Chỉ mục cho bảng `admin_role_user`
--
ALTER TABLE `admin_role_user`
  ADD KEY `admin_role_user_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Chỉ mục cho bảng `admin_store`
--
ALTER TABLE `admin_store`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_store_code_unique` (`code`),
  ADD KEY `admin_store_domain_index` (`domain`),
  ADD KEY `admin_store_partner_index` (`partner`);

--
-- Chỉ mục cho bảng `admin_store_description`
--
ALTER TABLE `admin_store_description`
  ADD PRIMARY KEY (`store_id`,`lang`),
  ADD KEY `admin_store_description_lang_index` (`lang`);

--
-- Chỉ mục cho bảng `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_user_username_unique` (`username`),
  ADD UNIQUE KEY `admin_user_email_unique` (`email`);

--
-- Chỉ mục cho bảng `admin_user_permission`
--
ALTER TABLE `admin_user_permission`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `admin_user_permission_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Chỉ mục cho bảng `api_connection`
--
ALTER TABLE `api_connection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `api_connection_apiconnection_unique` (`apiconnection`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_code_location_unique` (`code`,`location`),
  ADD KEY `languages_code_index` (`code`),
  ADD KEY `languages_position_index` (`position`),
  ADD KEY `languages_location_index` (`location`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Chỉ mục cho bảng `shop_attribute_group`
--
ALTER TABLE `shop_attribute_group`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_banner`
--
ALTER TABLE `shop_banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_banner_type_index` (`type`);

--
-- Chỉ mục cho bảng `shop_banner_store`
--
ALTER TABLE `shop_banner_store`
  ADD PRIMARY KEY (`banner_id`,`store_id`);

--
-- Chỉ mục cho bảng `shop_banner_type`
--
ALTER TABLE `shop_banner_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_banner_type_code_unique` (`code`);

--
-- Chỉ mục cho bảng `shop_brand`
--
ALTER TABLE `shop_brand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_brand_alias_index` (`alias`);

--
-- Chỉ mục cho bảng `shop_brand_store`
--
ALTER TABLE `shop_brand_store`
  ADD PRIMARY KEY (`brand_id`,`store_id`);

--
-- Chỉ mục cho bảng `shop_category`
--
ALTER TABLE `shop_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_category_alias_index` (`alias`);

--
-- Chỉ mục cho bảng `shop_category_description`
--
ALTER TABLE `shop_category_description`
  ADD UNIQUE KEY `shop_category_description_category_id_lang_unique` (`category_id`,`lang`),
  ADD KEY `shop_category_description_lang_index` (`lang`);

--
-- Chỉ mục cho bảng `shop_category_store`
--
ALTER TABLE `shop_category_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Chỉ mục cho bảng `shop_country`
--
ALTER TABLE `shop_country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_country_code_unique` (`code`);

--
-- Chỉ mục cho bảng `shop_currency`
--
ALTER TABLE `shop_currency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_currency_code_unique` (`code`);

--
-- Chỉ mục cho bảng `shop_customer`
--
ALTER TABLE `shop_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_customer_email_provider_provider_id_unique` (`email`,`provider`,`provider_id`),
  ADD KEY `shop_customer_address_id_index` (`address_id`),
  ADD KEY `shop_customer_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `shop_customer_address`
--
ALTER TABLE `shop_customer_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_customer_address_customer_id_index` (`customer_id`);

--
-- Chỉ mục cho bảng `shop_custom_field`
--
ALTER TABLE `shop_custom_field`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_custom_field_type_index` (`type`),
  ADD KEY `shop_custom_field_code_index` (`code`);

--
-- Chỉ mục cho bảng `shop_custom_field_detail`
--
ALTER TABLE `shop_custom_field_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_custom_field_detail_custom_field_id_index` (`custom_field_id`),
  ADD KEY `shop_custom_field_detail_rel_id_index` (`rel_id`);

--
-- Chỉ mục cho bảng `shop_email_template`
--
ALTER TABLE `shop_email_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_email_template_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `shop_language`
--
ALTER TABLE `shop_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_language_code_unique` (`code`);

--
-- Chỉ mục cho bảng `shop_layout_page`
--
ALTER TABLE `shop_layout_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_layout_page_key_unique` (`key`);

--
-- Chỉ mục cho bảng `shop_layout_position`
--
ALTER TABLE `shop_layout_position`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_layout_position_key_unique` (`key`);

--
-- Chỉ mục cho bảng `shop_length`
--
ALTER TABLE `shop_length`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_length_name_unique` (`name`);

--
-- Chỉ mục cho bảng `shop_link`
--
ALTER TABLE `shop_link`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_link_store`
--
ALTER TABLE `shop_link_store`
  ADD PRIMARY KEY (`link_id`,`store_id`);

--
-- Chỉ mục cho bảng `shop_news`
--
ALTER TABLE `shop_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_news_alias_index` (`alias`);

--
-- Chỉ mục cho bảng `shop_news_description`
--
ALTER TABLE `shop_news_description`
  ADD UNIQUE KEY `shop_news_description_news_id_lang_unique` (`news_id`,`lang`);

--
-- Chỉ mục cho bảng `shop_news_store`
--
ALTER TABLE `shop_news_store`
  ADD PRIMARY KEY (`news_id`,`store_id`);

--
-- Chỉ mục cho bảng `shop_order`
--
ALTER TABLE `shop_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_order_customer_id_index` (`customer_id`),
  ADD KEY `shop_order_device_type_index` (`device_type`),
  ADD KEY `shop_order_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `shop_order_detail`
--
ALTER TABLE `shop_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_order_history`
--
ALTER TABLE `shop_order_history`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_order_status`
--
ALTER TABLE `shop_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_order_total`
--
ALTER TABLE `shop_order_total`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_page`
--
ALTER TABLE `shop_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_page_alias_index` (`alias`);

--
-- Chỉ mục cho bảng `shop_page_description`
--
ALTER TABLE `shop_page_description`
  ADD UNIQUE KEY `shop_page_description_page_id_lang_unique` (`page_id`,`lang`),
  ADD KEY `shop_page_description_lang_index` (`lang`);

--
-- Chỉ mục cho bảng `shop_page_store`
--
ALTER TABLE `shop_page_store`
  ADD PRIMARY KEY (`page_id`,`store_id`);

--
-- Chỉ mục cho bảng `shop_password_resets`
--
ALTER TABLE `shop_password_resets`
  ADD KEY `shop_password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `shop_payment_status`
--
ALTER TABLE `shop_payment_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_product`
--
ALTER TABLE `shop_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_product_sku_index` (`sku`),
  ADD KEY `shop_product_brand_id_index` (`brand_id`),
  ADD KEY `shop_product_supplier_id_index` (`supplier_id`),
  ADD KEY `shop_product_kind_index` (`kind`),
  ADD KEY `shop_product_property_index` (`property`),
  ADD KEY `shop_product_tax_id_index` (`tax_id`),
  ADD KEY `shop_product_status_index` (`status`),
  ADD KEY `shop_product_alias_index` (`alias`);

--
-- Chỉ mục cho bảng `shop_product_attribute`
--
ALTER TABLE `shop_product_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_product_attribute_product_id_attribute_group_id_index` (`product_id`,`attribute_group_id`);

--
-- Chỉ mục cho bảng `shop_product_build`
--
ALTER TABLE `shop_product_build`
  ADD PRIMARY KEY (`build_id`,`product_id`);

--
-- Chỉ mục cho bảng `shop_product_category`
--
ALTER TABLE `shop_product_category`
  ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Chỉ mục cho bảng `shop_product_description`
--
ALTER TABLE `shop_product_description`
  ADD UNIQUE KEY `shop_product_description_product_id_lang_unique` (`product_id`,`lang`),
  ADD KEY `shop_product_description_lang_index` (`lang`);

--
-- Chỉ mục cho bảng `shop_product_download`
--
ALTER TABLE `shop_product_download`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_product_group`
--
ALTER TABLE `shop_product_group`
  ADD PRIMARY KEY (`group_id`,`product_id`);

--
-- Chỉ mục cho bảng `shop_product_image`
--
ALTER TABLE `shop_product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_product_image_product_id_index` (`product_id`);

--
-- Chỉ mục cho bảng `shop_product_promotion`
--
ALTER TABLE `shop_product_promotion`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `shop_product_property`
--
ALTER TABLE `shop_product_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_product_property_code_unique` (`code`);

--
-- Chỉ mục cho bảng `shop_product_store`
--
ALTER TABLE `shop_product_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Chỉ mục cho bảng `shop_sessions`
--
ALTER TABLE `shop_sessions`
  ADD UNIQUE KEY `shop_sessions_id_unique` (`id`);

--
-- Chỉ mục cho bảng `shop_shipping_standard`
--
ALTER TABLE `shop_shipping_standard`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_shipping_status`
--
ALTER TABLE `shop_shipping_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_shoppingcart`
--
ALTER TABLE `shop_shoppingcart`
  ADD KEY `shop_shoppingcart_identifier_instance_index` (`identifier`,`instance`),
  ADD KEY `shop_shoppingcart_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `shop_store_block`
--
ALTER TABLE `shop_store_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_store_block_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `shop_store_css`
--
ALTER TABLE `shop_store_css`
  ADD UNIQUE KEY `shop_store_css_store_id_unique` (`store_id`);

--
-- Chỉ mục cho bảng `shop_subscribe`
--
ALTER TABLE `shop_subscribe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_subscribe_email_index` (`email`),
  ADD KEY `shop_subscribe_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `shop_supplier`
--
ALTER TABLE `shop_supplier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_supplier_alias_index` (`alias`),
  ADD KEY `shop_supplier_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `shop_tax`
--
ALTER TABLE `shop_tax`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_weight`
--
ALTER TABLE `shop_weight`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_weight_name_unique` (`name`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_config`
--
ALTER TABLE `admin_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT cho bảng `admin_log`
--
ALTER TABLE `admin_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT cho bảng `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `admin_permission`
--
ALTER TABLE `admin_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `admin_store`
--
ALTER TABLE `admin_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `api_connection`
--
ALTER TABLE `api_connection`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2463;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `shop_attribute_group`
--
ALTER TABLE `shop_attribute_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `shop_banner`
--
ALTER TABLE `shop_banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `shop_banner_type`
--
ALTER TABLE `shop_banner_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `shop_brand`
--
ALTER TABLE `shop_brand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `shop_category`
--
ALTER TABLE `shop_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `shop_country`
--
ALTER TABLE `shop_country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT cho bảng `shop_currency`
--
ALTER TABLE `shop_currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `shop_customer`
--
ALTER TABLE `shop_customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `shop_customer_address`
--
ALTER TABLE `shop_customer_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `shop_custom_field`
--
ALTER TABLE `shop_custom_field`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `shop_custom_field_detail`
--
ALTER TABLE `shop_custom_field_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `shop_email_template`
--
ALTER TABLE `shop_email_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `shop_language`
--
ALTER TABLE `shop_language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `shop_layout_page`
--
ALTER TABLE `shop_layout_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `shop_layout_position`
--
ALTER TABLE `shop_layout_position`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `shop_length`
--
ALTER TABLE `shop_length`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `shop_link`
--
ALTER TABLE `shop_link`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `shop_news`
--
ALTER TABLE `shop_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `shop_order`
--
ALTER TABLE `shop_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `shop_order_detail`
--
ALTER TABLE `shop_order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `shop_order_history`
--
ALTER TABLE `shop_order_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `shop_order_status`
--
ALTER TABLE `shop_order_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `shop_order_total`
--
ALTER TABLE `shop_order_total`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `shop_page`
--
ALTER TABLE `shop_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `shop_payment_status`
--
ALTER TABLE `shop_payment_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `shop_product`
--
ALTER TABLE `shop_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `shop_product_attribute`
--
ALTER TABLE `shop_product_attribute`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `shop_product_download`
--
ALTER TABLE `shop_product_download`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `shop_product_image`
--
ALTER TABLE `shop_product_image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `shop_product_property`
--
ALTER TABLE `shop_product_property`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `shop_shipping_standard`
--
ALTER TABLE `shop_shipping_standard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `shop_shipping_status`
--
ALTER TABLE `shop_shipping_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `shop_store_block`
--
ALTER TABLE `shop_store_block`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `shop_subscribe`
--
ALTER TABLE `shop_subscribe`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `shop_supplier`
--
ALTER TABLE `shop_supplier`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `shop_tax`
--
ALTER TABLE `shop_tax`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `shop_weight`
--
ALTER TABLE `shop_weight`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
