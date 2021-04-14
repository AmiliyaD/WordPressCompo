-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 14, 2021 at 10:53 AM
-- Server version: 10.4.12-MariaDB-log
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-03-25 20:24:13', '2021-03-25 17:24:13', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://wordpresscompo/wordpress', 'yes'),
(2, 'home', 'http://wordpresscompo/wordpress', 'yes'),
(3, 'blogname', 'SportIsland', 'yes'),
(4, 'blogdescription', 'лучший спорт-клуб', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'zhidkova18@bk.ru', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '4', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:204:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:11:\"services/?$\";s:28:\"index.php?post_type=services\";s:41:\"services/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:36:\"services/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:28:\"services/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=services&paged=$matches[1]\";s:11:\"trainers/?$\";s:28:\"index.php?post_type=trainers\";s:41:\"trainers/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=trainers&feed=$matches[1]\";s:36:\"trainers/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=trainers&feed=$matches[1]\";s:28:\"trainers/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=trainers&paged=$matches[1]\";s:11:\"schedule/?$\";s:28:\"index.php?post_type=schedule\";s:41:\"schedule/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=schedule&feed=$matches[1]\";s:36:\"schedule/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=schedule&feed=$matches[1]\";s:28:\"schedule/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=schedule&paged=$matches[1]\";s:9:\"prices/?$\";s:26:\"index.php?post_type=prices\";s:39:\"prices/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=prices&feed=$matches[1]\";s:34:\"prices/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=prices&feed=$matches[1]\";s:26:\"prices/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=prices&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"services/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"services/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"services/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"services/([^/]+)/embed/?$\";s:41:\"index.php?services=$matches[1]&embed=true\";s:29:\"services/([^/]+)/trackback/?$\";s:35:\"index.php?services=$matches[1]&tb=1\";s:49:\"services/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:44:\"services/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:37:\"services/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&paged=$matches[2]\";s:44:\"services/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&cpage=$matches[2]\";s:33:\"services/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?services=$matches[1]&page=$matches[2]\";s:25:\"services/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"services/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"services/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"trainers/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"trainers/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"trainers/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"trainers/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"trainers/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"trainers/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"trainers/([^/]+)/embed/?$\";s:41:\"index.php?trainers=$matches[1]&embed=true\";s:29:\"trainers/([^/]+)/trackback/?$\";s:35:\"index.php?trainers=$matches[1]&tb=1\";s:49:\"trainers/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?trainers=$matches[1]&feed=$matches[2]\";s:44:\"trainers/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?trainers=$matches[1]&feed=$matches[2]\";s:37:\"trainers/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?trainers=$matches[1]&paged=$matches[2]\";s:44:\"trainers/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?trainers=$matches[1]&cpage=$matches[2]\";s:33:\"trainers/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?trainers=$matches[1]&page=$matches[2]\";s:25:\"trainers/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"trainers/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"trainers/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"trainers/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"trainers/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"trainers/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"schedule/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"schedule/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"schedule/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"schedule/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"schedule/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"schedule/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"schedule/([^/]+)/embed/?$\";s:41:\"index.php?schedule=$matches[1]&embed=true\";s:29:\"schedule/([^/]+)/trackback/?$\";s:35:\"index.php?schedule=$matches[1]&tb=1\";s:49:\"schedule/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?schedule=$matches[1]&feed=$matches[2]\";s:44:\"schedule/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?schedule=$matches[1]&feed=$matches[2]\";s:37:\"schedule/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?schedule=$matches[1]&paged=$matches[2]\";s:44:\"schedule/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?schedule=$matches[1]&cpage=$matches[2]\";s:33:\"schedule/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?schedule=$matches[1]&page=$matches[2]\";s:25:\"schedule/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"schedule/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"schedule/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"schedule/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"schedule/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"schedule/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"prices/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"prices/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"prices/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"prices/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"prices/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"prices/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"prices/([^/]+)/embed/?$\";s:39:\"index.php?prices=$matches[1]&embed=true\";s:27:\"prices/([^/]+)/trackback/?$\";s:33:\"index.php?prices=$matches[1]&tb=1\";s:47:\"prices/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?prices=$matches[1]&feed=$matches[2]\";s:42:\"prices/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?prices=$matches[1]&feed=$matches[2]\";s:35:\"prices/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?prices=$matches[1]&paged=$matches[2]\";s:42:\"prices/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?prices=$matches[1]&cpage=$matches[2]\";s:31:\"prices/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?prices=$matches[1]&page=$matches[2]\";s:23:\"prices/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"prices/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"prices/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"prices/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"prices/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"prices/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"cards/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"cards/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"cards/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"cards/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"cards/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"cards/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"cards/([^/]+)/embed/?$\";s:38:\"index.php?cards=$matches[1]&embed=true\";s:26:\"cards/([^/]+)/trackback/?$\";s:32:\"index.php?cards=$matches[1]&tb=1\";s:34:\"cards/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?cards=$matches[1]&paged=$matches[2]\";s:41:\"cards/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?cards=$matches[1]&cpage=$matches[2]\";s:30:\"cards/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?cards=$matches[1]&page=$matches[2]\";s:22:\"cards/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"cards/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"cards/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"cards/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"cards/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"cards/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:35:\"rus-to-lat-advanced/ru-translit.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'my-own', 'yes'),
(41, 'stylesheet', 'my-own', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '0', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:3:{i:1;a:0:{}i:7;a:4:{s:5:\"title\";s:14:\"ваапавп\";s:4:\"text\";s:0:\"\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '8', 'yes'),
(82, 'page_on_front', '5', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '51', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1632245045', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', 'ru_RU', 'yes'),
(102, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'sidebars_widgets', 'a:10:{s:19:\"wp_inactive_widgets\";a:15:{i:0;s:16:\"si_widget_text-8\";i:1;s:16:\"si_widget_text-7\";i:2;s:16:\"si_widget_info-4\";i:3;s:16:\"si_widget_info-3\";i:4;s:16:\"si_widget_info-2\";i:5;s:18:\"si_widget_iframe-4\";i:6;s:6:\"text-7\";i:7;s:16:\"si_widget_text-6\";i:8;s:18:\"si_widget_iframe-3\";i:9;s:8:\"search-2\";i:10;s:14:\"recent-posts-2\";i:11;s:17:\"recent-comments-2\";i:12;s:10:\"archives-2\";i:13;s:12:\"categories-2\";i:14;s:6:\"meta-2\";}s:9:\"si_header\";a:1:{i:0;s:19:\"si_widget_contact-2\";}s:8:\"si-cart2\";a:4:{i:0;s:16:\"si_widget_info-5\";i:1;s:16:\"si_widget_info-6\";i:2;s:16:\"si_widget_info-7\";i:3;s:16:\"si_widget_info-8\";}s:9:\"si_footer\";a:1:{i:0;s:19:\"si_widget_contact-3\";}s:7:\"si-col1\";a:1:{i:0;s:16:\"si_widget_text-3\";}s:7:\"si-col2\";a:1:{i:0;s:16:\"si_widget_text-5\";}s:7:\"si-col3\";a:4:{i:0;s:18:\"si_widget_social-2\";i:1;s:18:\"si_widget_social-8\";i:2;s:18:\"si_widget_social-7\";i:3;s:18:\"si_widget_social-6\";}s:7:\"si-cart\";a:1:{i:0;s:18:\"si_widget_iframe-2\";}s:12:\"si-underCart\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(108, 'cron', 'a:7:{i:1618388656;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1618421054;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1618421056;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1618421070;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1618421073;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1618593854;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"footer\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1617715950;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(122, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:38:\"Проверка SSL неудачна.\";}}', 'yes'),
(141, 'can_compress_scripts', '1', 'no'),
(152, 'finished_updating_comment_type', '1', 'yes'),
(176, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(183, 'new_admin_email', 'zhidkova18@bk.ru', 'yes'),
(188, 'recently_activated', 'a:0:{}', 'yes'),
(195, '_transient_health-check-site-status-result', '{\"good\":\"14\",\"recommended\":\"5\",\"critical\":\"1\"}', 'yes'),
(239, 'wpcf7', 'a:2:{s:7:\"version\";s:3:\"5.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1617715553;s:7:\"version\";s:3:\"5.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(243, 'current_theme', 'MyOwnTheme', 'yes'),
(244, 'theme_mods_my-inherit', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1617718464;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";a:0:{}s:9:\"sidebar-5\";a:0:{}}}}', 'yes'),
(245, 'theme_switched', '', 'yes'),
(250, 'theme_mods_my-own', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"menu-footer\";i:5;s:11:\"menu-header\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1617723507;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:49;}', 'yes'),
(312, 'widget_si_widget_text', 'a:6:{i:3;a:1:{s:7:\"si_text\";s:40:\"@2021 Все права защищены\";}i:5;a:1:{s:7:\"si_text\";s:141:\" Если у вас возникли вопросы, пожалуйста свяжитесь с нами по почте sportisland@gmail.ru\";}i:6;a:1:{s:7:\"si_text\";s:4:\" eee\";}i:7;a:1:{s:7:\"si_text\";s:3:\" fd\";}i:8;a:1:{s:7:\"si_text\";s:7:\" cfgdfd\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(332, 'widget_si_widget_contact', 'a:3:{i:2;a:2:{s:10:\"si_contact\";s:16:\" 8 800 700 30 30\";s:10:\"si_address\";s:27:\" ул. Причречная\";}i:3;a:2:{s:10:\"si_contact\";s:17:\"  8 800 700 30 30\";s:10:\"si_address\";s:28:\"  ул. Причречная\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(341, 'widget_si_widget_social', 'a:5:{i:2;a:2:{s:7:\"si_link\";s:11:\"vk.com     \";s:7:\"si_slug\";s:2:\"vk\";}i:6;a:2:{s:7:\"si_link\";s:21:\"         facebook.com\";s:7:\"si_slug\";s:7:\"youtube\";}i:7;a:2:{s:7:\"si_link\";s:12:\"facebook.com\";s:7:\"si_slug\";s:2:\"fb\";}i:8;a:2:{s:7:\"si_link\";s:13:\"instagram.com\";s:7:\"si_slug\";s:5:\"insta\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(355, 'recovery_mode_email_last_sent', '1618142041', 'yes'),
(357, 'widget_si_widget_iframe', 'a:4:{i:2;a:1:{s:7:\"si_code\";s:257:\"  <iframe src=\"https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d20309.075323923767!2d30.4721233!3d50.4851493!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sru!2sua!4v1578565396276!5m2!1sru!2sua\" width=\"800\" height=\"600\" style=\"border:0;\" allowfullscreen=\"\"></iframe>\";}i:3;a:1:{s:7:\"si_code\";s:46:\" г. Москва, ул. Приречная 11\";}i:4;a:2:{s:7:\"si_text\";s:20:\"                 dfd\";s:6:\"si_var\";s:8:\"position\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(378, 'widget_si_widget_info', 'a:8:{i:2;a:2:{s:7:\"si_text\";s:27:\"                 вапва\";s:6:\"si_var\";s:8:\"position\";}i:3;a:2:{s:7:\"si_text\";s:6:\"dfdfdf\";s:6:\"si_var\";s:4:\"time\";}i:4;a:2:{s:7:\"si_text\";s:0:\"\";s:6:\"si_var\";s:8:\"position\";}i:5;a:2:{s:7:\"si_text\";s:53:\" г. Москва, ул. Приречная 11       \";s:6:\"si_var\";s:8:\"position\";}i:6;a:2:{s:7:\"si_text\";s:54:\"              Работаем с 09:00 до 20:00    \";s:6:\"si_var\";s:4:\"time\";}i:7;a:2:{s:7:\"si_text\";s:32:\"                 8 800 700 30 30\";s:6:\"si_var\";s:5:\"phone\";}i:8;a:2:{s:7:\"si_text\";s:23:\"sportisland@gmail.ru   \";s:6:\"si_var\";s:5:\"email\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(395, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.7.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1618381821;s:15:\"version_checked\";s:3:\"5.7\";s:12:\"translations\";a:0:{}}', 'no'),
(396, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1618381822;s:7:\"checked\";a:13:{s:10:\"my-inherit\";s:0:\"\";s:6:\"my-own\";s:0:\"\";s:12:\"twentyeleven\";s:3:\"3.7\";s:13:\"twentyfifteen\";s:3:\"2.9\";s:14:\"twentyfourteen\";s:3:\"3.1\";s:14:\"twentynineteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"2.6\";s:13:\"twentysixteen\";s:3:\"2.4\";s:9:\"twentyten\";s:3:\"3.3\";s:14:\"twentythirteen\";s:3:\"3.3\";s:12:\"twentytwelve\";s:3:\"3.4\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:11:{s:12:\"twentyeleven\";a:6:{s:5:\"theme\";s:12:\"twentyeleven\";s:11:\"new_version\";s:3:\"3.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentyeleven/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentyeleven.3.7.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentyfifteen\";a:6:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.9\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.9.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:5:\"5.2.4\";}s:14:\"twentyfourteen\";a:6:{s:5:\"theme\";s:14:\"twentyfourteen\";s:11:\"new_version\";s:3:\"3.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentyfourteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentyfourteen.3.1.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:5:\"5.2.4\";}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.6.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.4.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:9:\"twentyten\";a:6:{s:5:\"theme\";s:9:\"twentyten\";s:11:\"new_version\";s:3:\"3.3\";s:3:\"url\";s:39:\"https://wordpress.org/themes/twentyten/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/theme/twentyten.3.3.zip\";s:8:\"requires\";s:3:\"3.0\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:14:\"twentythirteen\";a:6:{s:5:\"theme\";s:14:\"twentythirteen\";s:11:\"new_version\";s:3:\"3.3\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentythirteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentythirteen.3.3.zip\";s:8:\"requires\";s:3:\"3.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwelve\";a:6:{s:5:\"theme\";s:12:\"twentytwelve\";s:11:\"new_version\";s:3:\"3.3\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwelve/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwelve.3.3.zip\";s:8:\"requires\";s:3:\"3.5\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.2.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:11:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:12:\"twentyeleven\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"3.7\";s:7:\"updated\";s:19:\"2020-12-10 15:22:41\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentyeleven/3.7/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:13:\"twentyfifteen\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"2.9\";s:7:\"updated\";s:19:\"2020-03-31 20:40:58\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/translation/theme/twentyfifteen/2.9/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentyfourteen\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"3.1\";s:7:\"updated\";s:19:\"2020-03-31 20:44:14\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentyfourteen/3.1/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"2.0\";s:7:\"updated\";s:19:\"2020-12-10 15:15:50\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/2.0/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:4;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"2.6\";s:7:\"updated\";s:19:\"2020-12-10 15:17:13\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/2.6/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:5;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:13:\"twentysixteen\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"2.4\";s:7:\"updated\";s:19:\"2020-12-10 15:17:44\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/translation/theme/twentysixteen/2.4/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:6;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:9:\"twentyten\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"3.3\";s:7:\"updated\";s:19:\"2020-12-10 15:23:23\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/twentyten/3.3/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:7;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentythirteen\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"3.3\";s:7:\"updated\";s:19:\"2020-12-10 15:19:23\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentythirteen/3.3/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:8;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:12:\"twentytwelve\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"3.3\";s:7:\"updated\";s:19:\"2020-12-10 15:21:47\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentytwelve/3.3/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:9;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:12:\"twentytwenty\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"1.7\";s:7:\"updated\";s:19:\"2020-12-10 15:14:23\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentytwenty/1.7/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:10;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentytwentyone\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:19:\"2020-12-22 20:22:07\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentytwentyone/1.0/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(397, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1618381821;s:7:\"checked\";a:3:{s:36:\"contact-form-7/wp-contact-form-7.php\";s:3:\"5.4\";s:9:\"hello.php\";s:5:\"1.7.2\";s:35:\"rus-to-lat-advanced/ru-translit.php\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"contact-form-7\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"5.4\";s:7:\"updated\";s:19:\"2020-03-08 18:19:01\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/contact-form-7/5.4/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2018-06-04 21:57:16\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:3:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"5.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.5.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"rus-to-lat-advanced/ru-translit.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/rus-to-lat-advanced\";s:4:\"slug\";s:19:\"rus-to-lat-advanced\";s:6:\"plugin\";s:35:\"rus-to-lat-advanced/ru-translit.php\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/rus-to-lat-advanced/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/rus-to-lat-advanced.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://s.w.org/plugins/geopattern-icon/rus-to-lat-advanced.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(421, 'category_children', 'a:0:{}', 'yes'),
(424, '_site_transient_timeout_browser_83f75fe8d5c2f40c243760c04f60cc4e', '1618927361', 'no'),
(425, '_site_transient_browser_83f75fe8d5c2f40c243760c04f60cc4e', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"89.0.4389.114\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(426, '_site_transient_timeout_php_check_787617df3522cd9d9182823c87ee367d', '1618927362', 'no'),
(427, '_site_transient_php_check_787617df3522cd9d9182823c87ee367d', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(430, '_site_transient_timeout_theme_roots', '1618383622', 'no'),
(431, '_site_transient_theme_roots', 'a:13:{s:10:\"my-inherit\";s:7:\"/themes\";s:6:\"my-own\";s:7:\"/themes\";s:12:\"twentyeleven\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentyfourteen\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:9:\"twentyten\";s:7:\"/themes\";s:14:\"twentythirteen\";s:7:\"/themes\";s:12:\"twentytwelve\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(432, '_transient_timeout_dash_v2_f69de0bbfe7eaa113146875f40c02000', '1618425673', 'no'),
(433, '_transient_dash_v2_f69de0bbfe7eaa113146875f40c02000', '<div class=\"rss-widget\"><p><strong>Ошибка RSS:</strong> WP HTTP Error: Предоставлен неверный URL.</p></div><div class=\"rss-widget\"><p><strong>Ошибка RSS:</strong> WP HTTP Error: Предоставлен неверный URL.</p></div>', 'no'),
(435, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1618428634', 'no'),
(436, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:2:{i:0;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:23:\"WordCamp Centroamérica\";s:3:\"url\";s:40:\"https://centroamerica.wordcamp.org/2021/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2021-04-15 08:00:00\";s:8:\"end_date\";s:19:\"2021-04-17 00:00:00\";s:20:\"start_unix_timestamp\";i:1618495200;s:18:\"end_unix_timestamp\";i:1618639200;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"NI\";s:8:\"latitude\";d:12.1149926;s:9:\"longitude\";d:-86.2361744;}}i:1;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Europe\";s:3:\"url\";s:33:\"https://europe.wordcamp.org/2021/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2021-06-07 00:00:00\";s:8:\"end_date\";s:19:\"2021-06-10 00:00:00\";s:20:\"start_unix_timestamp\";i:1623020400;s:18:\"end_unix_timestamp\";i:1623279600;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"PT\";s:8:\"latitude\";d:41.1622022;s:9:\"longitude\";d:-8.6570588;}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(4, 5, '_customize_changeset_uuid', '802cb0bd-bf9a-46f2-a986-0322e7f1fe5e'),
(6, 6, '_customize_changeset_uuid', '802cb0bd-bf9a-46f2-a986-0322e7f1fe5e'),
(8, 7, '_customize_changeset_uuid', '802cb0bd-bf9a-46f2-a986-0322e7f1fe5e'),
(10, 8, '_customize_changeset_uuid', '802cb0bd-bf9a-46f2-a986-0322e7f1fe5e'),
(35, 17, '_menu_item_type', 'post_type'),
(36, 17, '_menu_item_menu_item_parent', '0'),
(37, 17, '_menu_item_object_id', '7'),
(38, 17, '_menu_item_object', 'page'),
(39, 17, '_menu_item_target', ''),
(40, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(41, 17, '_menu_item_xfn', ''),
(42, 17, '_menu_item_url', ''),
(43, 18, '_menu_item_type', 'custom'),
(44, 18, '_menu_item_menu_item_parent', '0'),
(45, 18, '_menu_item_object_id', '18'),
(46, 18, '_menu_item_object', 'custom'),
(47, 18, '_menu_item_target', ''),
(48, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(49, 18, '_menu_item_xfn', ''),
(50, 18, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(51, 19, '_menu_item_type', 'custom'),
(52, 19, '_menu_item_menu_item_parent', '0'),
(53, 19, '_menu_item_object_id', '19'),
(54, 19, '_menu_item_object', 'custom'),
(55, 19, '_menu_item_target', ''),
(56, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(57, 19, '_menu_item_xfn', ''),
(58, 19, '_menu_item_url', 'https://twitter.com/wordpress'),
(59, 20, '_menu_item_type', 'custom'),
(60, 20, '_menu_item_menu_item_parent', '0'),
(61, 20, '_menu_item_object_id', '20'),
(62, 20, '_menu_item_object', 'custom'),
(63, 20, '_menu_item_target', ''),
(64, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(65, 20, '_menu_item_xfn', ''),
(66, 20, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(67, 21, '_menu_item_type', 'custom'),
(68, 21, '_menu_item_menu_item_parent', '0'),
(69, 21, '_menu_item_object_id', '21'),
(70, 21, '_menu_item_object', 'custom'),
(71, 21, '_menu_item_target', ''),
(72, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(73, 21, '_menu_item_xfn', ''),
(74, 21, '_menu_item_url', 'mailto:wordpress@example.com'),
(75, 9, '_wp_trash_meta_status', 'publish'),
(76, 9, '_wp_trash_meta_time', '1616744095'),
(77, 1, '_edit_lock', '1618302143:1'),
(79, 5, '_edit_lock', '1618045107:1'),
(82, 28, '_edit_lock', '1616746471:1'),
(83, 30, '_edit_lock', '1616746455:1'),
(84, 32, '_edit_lock', '1616746506:1'),
(85, 34, '_edit_lock', '1616747613:1'),
(87, 3, '_wp_trash_meta_status', 'draft'),
(88, 3, '_wp_trash_meta_time', '1617679844'),
(89, 3, '_wp_desired_post_slug', 'privacy-policy'),
(90, 6, '_wp_trash_meta_status', 'publish'),
(91, 6, '_wp_trash_meta_time', '1617679860'),
(92, 6, '_wp_desired_post_slug', '%d0%be-%d0%bd%d0%b0%d1%81'),
(93, 2, '_wp_trash_meta_status', 'publish'),
(94, 2, '_wp_trash_meta_time', '1617679861'),
(95, 2, '_wp_desired_post_slug', 'sample-page'),
(96, 5, '_edit_last', '1'),
(97, 41, '_form', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(98, 41, '_mail', 'a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <wordpress@wordpresscompo>\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(99, 41, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <wordpress@wordpresscompo>\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(100, 41, '_messages', 'a:12:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";}'),
(101, 41, '_additional_settings', NULL),
(102, 41, '_locale', 'ru_RU'),
(103, 5, '_wp_page_template', 'page-main.php'),
(104, 7, '_edit_lock', '1618301242:1'),
(105, 7, '_wp_page_template', 'page-contacts.php'),
(106, 8, '_edit_lock', '1618235483:1'),
(107, 8, '_edit_last', '1'),
(108, 42, '_edit_lock', '1617975622:1'),
(113, 17, '_wp_old_date', '2021-03-26'),
(150, 32, '_wp_trash_meta_status', 'publish'),
(151, 32, '_wp_trash_meta_time', '1617898648'),
(152, 32, '_wp_desired_post_slug', 'militaru-museum'),
(153, 34, '_wp_trash_meta_status', 'publish'),
(154, 34, '_wp_trash_meta_time', '1617898648'),
(155, 34, '_wp_desired_post_slug', 'gold-museum'),
(156, 30, '_wp_trash_meta_status', 'publish'),
(157, 30, '_wp_trash_meta_time', '1617898648'),
(158, 30, '_wp_desired_post_slug', 'first-president-museum'),
(159, 28, '_wp_trash_meta_status', 'publish'),
(160, 28, '_wp_trash_meta_time', '1617898648'),
(161, 28, '_wp_desired_post_slug', 'nationa-kz-museum'),
(162, 48, '_edit_lock', '1617898735:1'),
(163, 49, '_wp_attached_file', '2021/04/logo.png'),
(164, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:182;s:6:\"height\";i:17;s:4:\"file\";s:16:\"2021/04/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x17.png\";s:5:\"width\";i:150;s:6:\"height\";i:17;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(165, 50, '_wp_attached_file', '2021/04/logo-1.png'),
(166, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:182;s:6:\"height\";i:17;s:4:\"file\";s:18:\"2021/04/logo-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logo-1-150x17.png\";s:5:\"width\";i:150;s:6:\"height\";i:17;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(167, 51, '_wp_attached_file', '2021/04/cropped-logo-1.png'),
(168, 51, '_wp_attachment_context', 'site-icon'),
(169, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:26:\"2021/04/cropped-logo-1.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:24:\"cropped-logo-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(170, 52, '_edit_lock', '1617899663:1'),
(171, 52, '_wp_trash_meta_status', 'publish'),
(172, 52, '_wp_trash_meta_time', '1617899664'),
(178, 17, '_wp_old_date', '2021-04-08'),
(179, 53, '_edit_lock', '1617956567:1'),
(180, 53, '_wp_trash_meta_status', 'publish'),
(181, 53, '_wp_trash_meta_time', '1617956581'),
(182, 42, '_edit_last', '1'),
(183, 42, '_wp_page_template', 'archive-trainers.php'),
(184, 54, '_edit_lock', '1618298958:1'),
(185, 54, '_edit_last', '1'),
(186, 54, '_wp_page_template', 'archive-schedule.php'),
(187, 56, '_edit_lock', '1617976071:1'),
(188, 56, '_wp_page_template', 'archive-prices.php'),
(189, 58, '_edit_lock', '1617976112:1'),
(190, 58, '_wp_page_template', 'archive-sevices.php'),
(227, 64, '_menu_item_type', 'post_type'),
(228, 64, '_menu_item_menu_item_parent', '0'),
(229, 64, '_menu_item_object_id', '8'),
(230, 64, '_menu_item_object', 'page'),
(231, 64, '_menu_item_target', ''),
(232, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(233, 64, '_menu_item_xfn', ''),
(234, 64, '_menu_item_url', ''),
(238, 17, '_wp_old_date', '2021-04-09'),
(241, 8, '_wp_page_template', 'default'),
(242, 50, '_wp_attachment_image_alt', 'logggoo'),
(244, 1, '_wp_old_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(245, 1, '_thumbnail_id', '67'),
(247, 67, '_wp_attached_file', '2021/03/blog__article_thmb2.jpg'),
(248, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:293;s:6:\"height\";i:216;s:4:\"file\";s:31:\"2021/03/blog__article_thmb2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"blog__article_thmb2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(249, 67, '_wp_attachment_image_alt', 'беег'),
(251, 70, '_edit_lock', '1618300192:1'),
(255, 17, '_wp_old_date', '2021-04-12'),
(257, 64, '_wp_old_date', '2021-04-12'),
(276, 77, '_menu_item_type', 'post_type'),
(277, 77, '_menu_item_menu_item_parent', '0'),
(278, 77, '_menu_item_object_id', '8'),
(279, 77, '_menu_item_object', 'page'),
(280, 77, '_menu_item_target', ''),
(281, 77, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(282, 77, '_menu_item_xfn', ''),
(283, 77, '_menu_item_url', ''),
(285, 78, '_menu_item_type', 'post_type'),
(286, 78, '_menu_item_menu_item_parent', '0'),
(287, 78, '_menu_item_object_id', '7'),
(288, 78, '_menu_item_object', 'page'),
(289, 78, '_menu_item_target', ''),
(290, 78, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(291, 78, '_menu_item_xfn', ''),
(292, 78, '_menu_item_url', ''),
(294, 81, '_edit_last', '1'),
(295, 81, '_edit_lock', '1618383960:1'),
(314, 84, '_menu_item_type', 'post_type_archive'),
(315, 84, '_menu_item_menu_item_parent', '0'),
(316, 84, '_menu_item_object_id', '-18'),
(317, 84, '_menu_item_object', 'services'),
(318, 84, '_menu_item_target', ''),
(319, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(320, 84, '_menu_item_xfn', ''),
(321, 84, '_menu_item_url', ''),
(323, 86, '_edit_last', '1'),
(324, 86, '_edit_lock', '1618386245:1'),
(325, 88, '_edit_last', '1'),
(326, 88, '_edit_lock', '1618386293:1'),
(327, 90, '_edit_last', '1'),
(328, 90, '_edit_lock', '1618386315:1'),
(329, 91, '_menu_item_type', 'post_type_archive'),
(330, 91, '_menu_item_menu_item_parent', '0'),
(331, 91, '_menu_item_object_id', '-22'),
(332, 91, '_menu_item_object', 'trainers'),
(333, 91, '_menu_item_target', ''),
(334, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(335, 91, '_menu_item_xfn', ''),
(336, 91, '_menu_item_url', ''),
(338, 92, '_menu_item_type', 'post_type_archive'),
(339, 92, '_menu_item_menu_item_parent', '0'),
(340, 92, '_menu_item_object_id', '-26'),
(341, 92, '_menu_item_object', 'schedule'),
(342, 92, '_menu_item_target', ''),
(343, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(344, 92, '_menu_item_xfn', ''),
(345, 92, '_menu_item_url', ''),
(347, 94, '_edit_last', '1'),
(348, 94, '_edit_lock', '1618386374:1'),
(349, 95, '_menu_item_type', 'post_type_archive'),
(350, 95, '_menu_item_menu_item_parent', '0'),
(351, 95, '_menu_item_object_id', '-30'),
(352, 95, '_menu_item_object', 'prices'),
(353, 95, '_menu_item_target', ''),
(354, 95, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(355, 95, '_menu_item_xfn', ''),
(356, 95, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-03-25 20:24:13', '2021-03-25 17:24:13', '<!-- wp:paragraph -->\n<p>Сайт&nbsp;рыбатекст&nbsp;поможет&nbsp;дизайнеру,&nbsp;верстальщику,&nbsp;вебмастеру&nbsp;сгенерировать&nbsp;несколько&nbsp;абзацев&nbsp;более&nbsp;менее&nbsp;осмысленного&nbsp;текста&nbsp;рыбы&nbsp;на&nbsp;русском&nbsp;языке,&nbsp;а&nbsp;начинающему&nbsp;оратору&nbsp;отточить&nbsp;навык&nbsp;публичных&nbsp;выступлений&nbsp;в&nbsp;домашних&nbsp;условиях.</p>\n<!-- /wp:paragraph -->', 'Бег помогает похудеть', '', 'publish', 'open', 'open', '', 'privet-mir', '', '', '2021-04-12 17:06:14', '2021-04-12 14:06:14', '', 0, 'http://wordpresscompo/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2021-03-25 20:24:13', '2021-03-25 17:24:13', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://wordpresscompo/wordpress/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2021-04-06 06:31:01', '2021-04-06 03:31:01', '', 0, 'http://wordpresscompo/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-03-25 20:24:13', '2021-03-25 17:24:13', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://wordpresscompo/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Комментарии</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медиафайлы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куки</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Встраиваемое содержимое других вебсайтов</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2021-04-06 06:30:45', '2021-04-06 03:30:45', '', 0, 'http://wordpresscompo/wordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-03-26 10:34:48', '2021-03-26 07:34:48', '<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\"}},\"className\":\"has-text-align-wide\",\"fontSize\":\"gigantic\"} -->\n<h2 class=\"alignwide has-text-align-wide has-gigantic-font-size\" style=\"line-height:1.1\">Большой выбор музеев для посещения</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image alignfull size-large\"><img src=\"http://wordpresscompo/wordpress/wp-content/themes/twentytwentyone/assets/images/roses-tremieres-hollyhocks-1884.jpg\" alt=\"“Roses Trémières” by Berthe Morisot\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\",\"className\":\"is-style-twentytwentyone-image-frame\"} -->\n<figure class=\"wp-block-image alignfull size-large is-style-twentytwentyone-image-frame\"><img src=\"http://wordpresscompo/wordpress/wp-content/themes/twentytwentyone/assets/images/in-the-bois-de-boulogne.jpg\" alt=\"“In the Bois de Boulogne” by Berthe Morisot\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"className\":\"alignfull size-full is-style-twentytwentyone-border\"} -->\n<figure class=\"wp-block-image size-large alignfull size-full is-style-twentytwentyone-border\"><img src=\"http://wordpresscompo/wordpress/wp-content/themes/twentytwentyone/assets/images/young-woman-in-mauve.jpg\" alt=\"“Young Woman in Mauve” by Berthe Morisot\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Add block patterns</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Block patterns are pre-designed groups of blocks. To add one, select the Add Block button [+] in the toolbar at the top of the editor. Switch to the Patterns tab underneath the search bar, and choose a pattern.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Frame your images</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Twenty Twenty-One includes stylish borders for your content. With an Image block selected, open the \"Styles\" panel within the Editor sidebar. Select the \"Frame\" block style to activate it.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Overlap columns</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Twenty Twenty-One also includes an overlap style for column blocks. With a Columns block selected, open the \"Styles\" panel within the Editor sidebar. Choose the \"Overlap\" block style to try it out.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\n<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\n<p class=\"has-huge-font-size\">Need help?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":75} -->\n<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Read the Theme Documentation</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Check out the Support Forums</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover -->', 'Главная', '', 'publish', 'closed', 'closed', '', 'glavnaya', '', '', '2021-04-06 18:39:13', '2021-04-06 15:39:13', '', 0, 'http://wordpresscompo/wordpress/?page_id=5', 0, 'page', '', 0),
(6, 1, '2021-03-26 10:34:48', '2021-03-26 07:34:48', '<!-- wp:paragraph -->\n<p>Вы можете быть художником, который желает здесь представить себя и свои работы или представителем бизнеса с описанием миссии.</p>\n<!-- /wp:paragraph -->', 'О нас', '', 'trash', 'closed', 'closed', '', '%d0%be-%d0%bd%d0%b0%d1%81__trashed', '', '', '2021-04-06 06:31:00', '2021-04-06 03:31:00', '', 0, 'http://wordpresscompo/wordpress/?page_id=6', 0, 'page', '', 0),
(7, 1, '2021-03-26 10:34:48', '2021-03-26 07:34:48', '<!-- wp:heading {\"className\":\"page-heading contacts__h_form\"} -->\n<h2 class=\"page-heading contacts__h_form\">Форма</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Контакты', '', 'publish', 'closed', 'closed', '', 'kontakty', '', '', '2021-04-13 11:09:46', '2021-04-13 08:09:46', '', 0, 'http://wordpresscompo/wordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2021-03-26 10:34:48', '2021-03-26 07:34:48', '', 'Блог', '', 'publish', 'closed', 'closed', '', 'index', '', '', '2021-04-12 16:51:22', '2021-04-12 13:51:22', '', 0, 'http://wordpresscompo/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2021-03-26 10:34:46', '2021-03-26 07:34:46', '{\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-26 07:30:49\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"Primary menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-26 07:34:46\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\n            \"url\": \"http://wordpresscompo/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-26 07:34:46\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 6,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041e \\u043d\\u0430\\u0441\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041e \\u043d\\u0430\\u0441\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-26 07:34:46\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0411\\u043b\\u043e\\u0433\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0411\\u043b\\u043e\\u0433\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-26 07:34:46\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-26 07:34:46\"\n    },\n    \"twentytwentyone::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-26 07:30:49\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"Secondary menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-26 07:34:46\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-26 07:34:46\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-26 07:34:46\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-26 07:34:46\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-26 07:34:46\"\n    },\n    \"twentytwentyone::nav_menu_locations[footer]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-26 07:30:49\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-26 07:30:49\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 5,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-26 07:30:49\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-26 07:30:49\"\n    },\n    \"blogname\": {\n        \"value\": \"\\u041c\\u0443\\u0437\\u0435\\u0438 \\u041d\\u0443\\u0440-\\u0421\\u0443\\u043b\\u0442\\u0430\\u043d\\u0430\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-26 07:34:46\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-26 07:34:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '802cb0bd-bf9a-46f2-a986-0322e7f1fe5e', '', '', '2021-03-26 10:34:46', '2021-03-26 07:34:46', '', 0, 'http://wordpresscompo/wordpress/?p=9', 0, 'customize_changeset', '', 0),
(10, 1, '2021-03-26 10:34:48', '2021-03-26 07:34:48', '\n					<!-- wp:heading {\"align\":\"wide\",\"fontSize\":\"gigantic\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\"}}} -->\n					<h2 class=\"alignwide has-text-align-wide has-gigantic-font-size\" style=\"line-height:1.1\">Create your website with blocks</h2>\n					<!-- /wp:heading -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\"} -->\n					<figure class=\"wp-block-image alignfull size-large\"><img src=\"http://wordpresscompo/wordpress/wp-content/themes/twentytwentyone/assets/images/roses-tremieres-hollyhocks-1884.jpg\" alt=\"&#8220;Roses Trémières&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\",\"className\":\"is-style-twentytwentyone-image-frame\"} -->\n					<figure class=\"wp-block-image alignfull size-large is-style-twentytwentyone-image-frame\"><img src=\"http://wordpresscompo/wordpress/wp-content/themes/twentytwentyone/assets/images/in-the-bois-de-boulogne.jpg\" alt=\"&#8220;In the Bois de Boulogne&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"sizeSlug\":\"large\",\"className\":\"alignfull size-full is-style-twentytwentyone-border\"} -->\n					<figure class=\"wp-block-image size-large alignfull size-full is-style-twentytwentyone-border\"><img src=\"http://wordpresscompo/wordpress/wp-content/themes/twentytwentyone/assets/images/young-woman-in-mauve.jpg\" alt=\"&#8220;Young Woman in Mauve&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":50} -->\n					<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Add block patterns</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Block patterns are pre-designed groups of blocks. To add one, select the Add Block button [+] in the toolbar at the top of the editor. Switch to the Patterns tab underneath the search bar, and choose a pattern.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Frame your images</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One includes stylish borders for your content. With an Image block selected, open the &quot;Styles&quot; panel within the Editor sidebar. Select the &quot;Frame&quot; block style to activate it.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Overlap columns</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One also includes an overlap style for column blocks. With a Columns block selected, open the &quot;Styles&quot; panel within the Editor sidebar. Choose the &quot;Overlap&quot; block style to try it out.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\n					<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\n					<p class=\"has-huge-font-size\">Need help?</p>\n					<!-- /wp:paragraph -->\n\n					<!-- wp:spacer {\"height\":75} -->\n					<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns -->\n					<div class=\"wp-block-columns\"><!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Read the Theme Documentation</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Check out the Support Forums</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer --></div></div>\n					<!-- /wp:cover -->', 'Create your website with blocks', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-03-26 10:34:48', '2021-03-26 07:34:48', '', 5, 'http://wordpresscompo/wordpress/?p=10', 0, 'revision', '', 0),
(11, 1, '2021-03-26 10:34:48', '2021-03-26 07:34:48', '<!-- wp:paragraph -->\n<p>Вы можете быть художником, который желает здесь представить себя и свои работы или представителем бизнеса с описанием миссии.</p>\n<!-- /wp:paragraph -->', 'О нас', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-03-26 10:34:48', '2021-03-26 07:34:48', '', 6, 'http://wordpresscompo/wordpress/?p=11', 0, 'revision', '', 0),
(12, 1, '2021-03-26 10:34:48', '2021-03-26 07:34:48', '<!-- wp:paragraph -->\n<p>Это страница с основной контактной информацией, такой как адрес и номер телефона. Вы также можете попробовать добавить форму контактов с помощью плагина.</p>\n<!-- /wp:paragraph -->', 'Контакты', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-03-26 10:34:48', '2021-03-26 07:34:48', '', 7, 'http://wordpresscompo/wordpress/?p=12', 0, 'revision', '', 0),
(13, 1, '2021-03-26 10:34:48', '2021-03-26 07:34:48', '', 'Блог', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-03-26 10:34:48', '2021-03-26 07:34:48', '', 8, 'http://wordpresscompo/wordpress/?p=13', 0, 'revision', '', 0),
(17, 1, '2021-04-14 10:48:50', '2021-03-26 07:34:51', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2021-04-14 10:48:50', '2021-04-14 07:48:50', '', 0, 'http://wordpresscompo/wordpress/2021/03/26/17/', 1, 'nav_menu_item', '', 0),
(18, 1, '2021-03-26 10:34:52', '2021-03-26 07:34:52', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2021-03-26 10:34:52', '2021-03-26 07:34:52', '', 0, 'http://wordpresscompo/wordpress/2021/03/26/facebook/', 0, 'nav_menu_item', '', 0),
(19, 1, '2021-03-26 10:34:52', '2021-03-26 07:34:52', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2021-03-26 10:34:52', '2021-03-26 07:34:52', '', 0, 'http://wordpresscompo/wordpress/2021/03/26/twitter/', 1, 'nav_menu_item', '', 0),
(20, 1, '2021-03-26 10:34:54', '2021-03-26 07:34:54', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2021-03-26 10:34:54', '2021-03-26 07:34:54', '', 0, 'http://wordpresscompo/wordpress/2021/03/26/instagram/', 2, 'nav_menu_item', '', 0),
(21, 1, '2021-03-26 10:34:55', '2021-03-26 07:34:55', '', 'Email', '', 'publish', 'closed', 'closed', '', 'email', '', '', '2021-03-26 10:34:55', '2021-03-26 07:34:55', '', 0, 'http://wordpresscompo/wordpress/2021/03/26/email/', 3, 'nav_menu_item', '', 0),
(23, 1, '2021-03-26 10:43:00', '2021-03-26 07:43:00', '', 'Самые красивые музей г. Нур-Султан', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-03-26 10:43:00', '2021-03-26 07:43:00', '', 1, 'http://wordpresscompo/wordpress/?p=23', 0, 'revision', '', 0),
(24, 1, '2021-03-26 10:43:40', '2021-03-26 07:43:40', '<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\"}},\"className\":\"has-text-align-wide\",\"fontSize\":\"gigantic\"} -->\n<h2 class=\"alignwide has-text-align-wide has-gigantic-font-size\" style=\"line-height:1.1\">Create your website with blocks</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image alignfull size-large\"><img src=\"http://wordpresscompo/wordpress/wp-content/themes/twentytwentyone/assets/images/roses-tremieres-hollyhocks-1884.jpg\" alt=\"“Roses Trémières” by Berthe Morisot\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\",\"className\":\"is-style-twentytwentyone-image-frame\"} -->\n<figure class=\"wp-block-image alignfull size-large is-style-twentytwentyone-image-frame\"><img src=\"http://wordpresscompo/wordpress/wp-content/themes/twentytwentyone/assets/images/in-the-bois-de-boulogne.jpg\" alt=\"“In the Bois de Boulogne” by Berthe Morisot\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"className\":\"alignfull size-full is-style-twentytwentyone-border\"} -->\n<figure class=\"wp-block-image size-large alignfull size-full is-style-twentytwentyone-border\"><img src=\"http://wordpresscompo/wordpress/wp-content/themes/twentytwentyone/assets/images/young-woman-in-mauve.jpg\" alt=\"“Young Woman in Mauve” by Berthe Morisot\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Add block patterns</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Block patterns are pre-designed groups of blocks. To add one, select the Add Block button [+] in the toolbar at the top of the editor. Switch to the Patterns tab underneath the search bar, and choose a pattern.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Frame your images</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Twenty Twenty-One includes stylish borders for your content. With an Image block selected, open the \"Styles\" panel within the Editor sidebar. Select the \"Frame\" block style to activate it.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Overlap columns</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Twenty Twenty-One also includes an overlap style for column blocks. With a Columns block selected, open the \"Styles\" panel within the Editor sidebar. Choose the \"Overlap\" block style to try it out.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\n<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\n<p class=\"has-huge-font-size\">Need help?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":75} -->\n<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Read the Theme Documentation</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Check out the Support Forums</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover -->', 'Самые красивые музеи г.Нур-Султан', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-03-26 10:43:40', '2021-03-26 07:43:40', '', 5, 'http://wordpresscompo/wordpress/?p=24', 0, 'revision', '', 0),
(25, 1, '2021-03-26 10:44:57', '2021-03-26 07:44:57', '<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\"}},\"className\":\"has-text-align-wide\",\"fontSize\":\"gigantic\"} -->\n<h2 class=\"alignwide has-text-align-wide has-gigantic-font-size\" style=\"line-height:1.1\">Большой выбор музеев для посещения</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image alignfull size-large\"><img src=\"http://wordpresscompo/wordpress/wp-content/themes/twentytwentyone/assets/images/roses-tremieres-hollyhocks-1884.jpg\" alt=\"“Roses Trémières” by Berthe Morisot\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\",\"className\":\"is-style-twentytwentyone-image-frame\"} -->\n<figure class=\"wp-block-image alignfull size-large is-style-twentytwentyone-image-frame\"><img src=\"http://wordpresscompo/wordpress/wp-content/themes/twentytwentyone/assets/images/in-the-bois-de-boulogne.jpg\" alt=\"“In the Bois de Boulogne” by Berthe Morisot\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"className\":\"alignfull size-full is-style-twentytwentyone-border\"} -->\n<figure class=\"wp-block-image size-large alignfull size-full is-style-twentytwentyone-border\"><img src=\"http://wordpresscompo/wordpress/wp-content/themes/twentytwentyone/assets/images/young-woman-in-mauve.jpg\" alt=\"“Young Woman in Mauve” by Berthe Morisot\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Add block patterns</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Block patterns are pre-designed groups of blocks. To add one, select the Add Block button [+] in the toolbar at the top of the editor. Switch to the Patterns tab underneath the search bar, and choose a pattern.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Frame your images</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Twenty Twenty-One includes stylish borders for your content. With an Image block selected, open the \"Styles\" panel within the Editor sidebar. Select the \"Frame\" block style to activate it.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Overlap columns</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Twenty Twenty-One also includes an overlap style for column blocks. With a Columns block selected, open the \"Styles\" panel within the Editor sidebar. Choose the \"Overlap\" block style to try it out.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\n<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\n<p class=\"has-huge-font-size\">Need help?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":75} -->\n<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Read the Theme Documentation</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Check out the Support Forums</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover -->', 'Самые красивые музеи г.Нур-Султан', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-03-26 10:44:57', '2021-03-26 07:44:57', '', 5, 'http://wordpresscompo/wordpress/?p=25', 0, 'revision', '', 0),
(28, 1, '2021-03-26 11:14:15', '2021-03-26 08:14:15', '', 'Национальный музей Казахстана', '', 'trash', 'closed', 'closed', '', 'nationa-kz-museum__trashed', '', '', '2021-04-08 19:17:28', '2021-04-08 16:17:28', '', 0, 'http://wordpresscompo/wordpress/?page_id=28', 0, 'page', '', 0),
(29, 1, '2021-03-26 11:14:15', '2021-03-26 08:14:15', '', 'Национальный музей Казахстана', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2021-03-26 11:14:15', '2021-03-26 08:14:15', '', 28, 'http://wordpresscompo/wordpress/?p=29', 0, 'revision', '', 0),
(30, 1, '2021-03-26 11:15:59', '2021-03-26 08:15:59', '', 'Музей первого президента Республики Казахстан', '', 'trash', 'closed', 'closed', '', 'first-president-museum__trashed', '', '', '2021-04-08 19:17:28', '2021-04-08 16:17:28', '', 0, 'http://wordpresscompo/wordpress/?page_id=30', 0, 'page', '', 0),
(31, 1, '2021-03-26 11:15:59', '2021-03-26 08:15:59', '', 'Музей первого президента Республики Казахстан', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2021-03-26 11:15:59', '2021-03-26 08:15:59', '', 30, 'http://wordpresscompo/wordpress/?p=31', 0, 'revision', '', 0),
(32, 1, '2021-03-26 11:17:20', '2021-03-26 08:17:20', '', 'Военно-исторический музей Казахстана', '', 'trash', 'closed', 'closed', '', 'militaru-museum__trashed', '', '', '2021-04-08 19:17:28', '2021-04-08 16:17:28', '', 0, 'http://wordpresscompo/wordpress/?page_id=32', 0, 'page', '', 0),
(33, 1, '2021-03-26 11:17:20', '2021-03-26 08:17:20', '', 'Военно-исторический музей Казахстана', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2021-03-26 11:17:20', '2021-03-26 08:17:20', '', 32, 'http://wordpresscompo/wordpress/?p=33', 0, 'revision', '', 0),
(34, 1, '2021-03-26 11:17:45', '2021-03-26 08:17:45', '', 'Музей золота и драгоценных металлов', '', 'trash', 'closed', 'closed', '', 'gold-museum__trashed', '', '', '2021-04-08 19:17:28', '2021-04-08 16:17:28', '', 0, 'http://wordpresscompo/wordpress/?page_id=34', 0, 'page', '', 0),
(35, 1, '2021-03-26 11:17:45', '2021-03-26 08:17:45', '', 'Музей золота и драгоценных металлов', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2021-03-26 11:17:45', '2021-03-26 08:17:45', '', 34, 'http://wordpresscompo/wordpress/?p=35', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(38, 1, '2021-04-06 06:30:45', '2021-04-06 03:30:45', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://wordpresscompo/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Комментарии</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медиафайлы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куки</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Встраиваемое содержимое других вебсайтов</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-04-06 06:30:45', '2021-04-06 03:30:45', '', 3, 'http://wordpresscompo/wordpress/?p=38', 0, 'revision', '', 0),
(39, 1, '2021-04-06 06:31:01', '2021-04-06 03:31:01', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://wordpresscompo/wordpress/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-04-06 06:31:01', '2021-04-06 03:31:01', '', 2, 'http://wordpresscompo/wordpress/?p=39', 0, 'revision', '', 0),
(40, 1, '2021-04-06 06:32:25', '2021-04-06 03:32:25', '<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\"}},\"className\":\"has-text-align-wide\",\"fontSize\":\"gigantic\"} -->\n<h2 class=\"alignwide has-text-align-wide has-gigantic-font-size\" style=\"line-height:1.1\">Большой выбор музеев для посещения</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image alignfull size-large\"><img src=\"http://wordpresscompo/wordpress/wp-content/themes/twentytwentyone/assets/images/roses-tremieres-hollyhocks-1884.jpg\" alt=\"“Roses Trémières” by Berthe Morisot\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\",\"className\":\"is-style-twentytwentyone-image-frame\"} -->\n<figure class=\"wp-block-image alignfull size-large is-style-twentytwentyone-image-frame\"><img src=\"http://wordpresscompo/wordpress/wp-content/themes/twentytwentyone/assets/images/in-the-bois-de-boulogne.jpg\" alt=\"“In the Bois de Boulogne” by Berthe Morisot\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"className\":\"alignfull size-full is-style-twentytwentyone-border\"} -->\n<figure class=\"wp-block-image size-large alignfull size-full is-style-twentytwentyone-border\"><img src=\"http://wordpresscompo/wordpress/wp-content/themes/twentytwentyone/assets/images/young-woman-in-mauve.jpg\" alt=\"“Young Woman in Mauve” by Berthe Morisot\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Add block patterns</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Block patterns are pre-designed groups of blocks. To add one, select the Add Block button [+] in the toolbar at the top of the editor. Switch to the Patterns tab underneath the search bar, and choose a pattern.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Frame your images</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Twenty Twenty-One includes stylish borders for your content. With an Image block selected, open the \"Styles\" panel within the Editor sidebar. Select the \"Frame\" block style to activate it.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Overlap columns</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Twenty Twenty-One also includes an overlap style for column blocks. With a Columns block selected, open the \"Styles\" panel within the Editor sidebar. Choose the \"Overlap\" block style to try it out.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\n<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\n<p class=\"has-huge-font-size\">Need help?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":75} -->\n<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Read the Theme Documentation</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Check out the Support Forums</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover -->', 'Главная', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-04-06 06:32:25', '2021-04-06 03:32:25', '', 5, 'http://wordpresscompo/wordpress/?p=40', 0, 'revision', '', 0),
(41, 1, '2021-04-06 16:25:53', '2021-04-06 13:25:53', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@wordpresscompo>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@wordpresscompo>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2021-04-06 16:25:53', '2021-04-06 13:25:53', '', 0, 'http://wordpresscompo/wordpress/?post_type=wpcf7_contact_form&p=41', 0, 'wpcf7_contact_form', '', 0),
(42, 1, '2021-04-08 10:07:51', '2021-04-08 07:07:51', '', 'Тренеры', '', 'publish', 'closed', 'closed', '', 'archive-trainers-php', '', '', '2021-04-09 16:42:43', '2021-04-09 13:42:43', '', 0, 'http://wordpresscompo/wordpress/?page_id=42', 0, 'page', '', 0),
(43, 1, '2021-04-08 10:07:51', '2021-04-08 07:07:51', '', 'Тренеры', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2021-04-08 10:07:51', '2021-04-08 07:07:51', '', 42, 'http://wordpresscompo/wordpress/?p=43', 0, 'revision', '', 0),
(48, 1, '2021-04-08 19:17:53', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-04-08 19:17:53', '0000-00-00 00:00:00', '', 0, 'http://wordpresscompo/wordpress/?page_id=48', 0, 'page', '', 0),
(49, 1, '2021-04-08 19:31:49', '2021-04-08 16:31:49', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2021-04-08 19:31:49', '2021-04-08 16:31:49', '', 0, 'http://wordpresscompo/wordpress/wp-content/uploads/2021/04/logo.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2021-04-08 19:33:03', '2021-04-08 16:33:03', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2021-04-12 16:54:17', '2021-04-12 13:54:17', '', 0, 'http://wordpresscompo/wordpress/wp-content/uploads/2021/04/logo-1.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2021-04-08 19:33:22', '2021-04-08 16:33:22', 'http://wordpresscompo/wordpress/wp-content/uploads/2021/04/cropped-logo-1.png', 'cropped-logo-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-1-png', '', '', '2021-04-08 19:33:22', '2021-04-08 16:33:22', '', 0, 'http://wordpresscompo/wordpress/wp-content/uploads/2021/04/cropped-logo-1.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2021-04-08 19:34:24', '2021-04-08 16:34:24', '{\n    \"site_icon\": {\n        \"value\": 51,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-08 16:34:23\"\n    },\n    \"nav_menu_item[45]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 45,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\",\n            \"title\": \"\\u0423\\u0441\\u043b\\u0443\\u0433\\u0438\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-08 16:34:23\"\n    },\n    \"nav_menu_item[44]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 42,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\n            \"url\": \"http://wordpresscompo/wordpress/archive-trainers/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0422\\u0440\\u0435\\u043d\\u0435\\u0440\\u044b\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-08 16:34:23\"\n    },\n    \"nav_menu_item[46]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 46,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\",\n            \"title\": \"\\u0420\\u0430\\u0441\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-08 16:34:23\"\n    },\n    \"nav_menu_item[14]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 14,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\",\n            \"title\": \"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\n            \"url\": \"http://wordpresscompo/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-08 16:34:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b5a44fad-2e32-44fd-aa03-4cc2e2085d48', '', '', '2021-04-08 19:34:24', '2021-04-08 16:34:24', '', 0, 'http://wordpresscompo/wordpress/?p=52', 0, 'customize_changeset', '', 0),
(53, 1, '2021-04-09 11:23:00', '2021-04-09 08:23:00', '{\n    \"my-own::custom_logo\": {\n        \"value\": 49,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-09 08:22:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9f3d3105-069a-47f8-bba5-cd9a232e3aaa', '', '', '2021-04-09 11:23:00', '2021-04-09 08:23:00', '', 0, 'http://wordpresscompo/wordpress/?p=53', 0, 'customize_changeset', '', 0),
(54, 1, '2021-04-09 11:35:05', '2021-04-09 08:35:05', '', 'Расписание', '', 'publish', 'closed', 'closed', '', 'archive-schedule', '', '', '2021-04-13 10:31:40', '2021-04-13 07:31:40', '', 0, 'http://wordpresscompo/wordpress/?page_id=54', 0, 'page', '', 0),
(55, 1, '2021-04-09 11:35:05', '2021-04-09 08:35:05', '', 'Расписание', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2021-04-09 11:35:05', '2021-04-09 08:35:05', '', 54, 'http://wordpresscompo/wordpress/?p=55', 0, 'revision', '', 0),
(56, 1, '2021-04-09 16:50:13', '2021-04-09 13:50:13', '', 'Цены', '', 'publish', 'closed', 'closed', '', 'prices', '', '', '2021-04-09 16:50:13', '2021-04-09 13:50:13', '', 0, 'http://wordpresscompo/wordpress/?page_id=56', 0, 'page', '', 0),
(57, 1, '2021-04-09 16:50:13', '2021-04-09 13:50:13', '', 'Цены', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2021-04-09 16:50:13', '2021-04-09 13:50:13', '', 56, 'http://wordpresscompo/wordpress/?p=57', 0, 'revision', '', 0),
(58, 1, '2021-04-09 16:50:54', '2021-04-09 13:50:54', '', 'Услуги', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2021-04-09 16:50:54', '2021-04-09 13:50:54', '', 0, 'http://wordpresscompo/wordpress/?page_id=58', 0, 'page', '', 0),
(59, 1, '2021-04-09 16:50:54', '2021-04-09 13:50:54', '', 'Услуги', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2021-04-09 16:50:54', '2021-04-09 13:50:54', '', 58, 'http://wordpresscompo/wordpress/?p=59', 0, 'revision', '', 0),
(64, 1, '2021-04-14 10:48:51', '2021-04-12 13:25:33', ' ', '', '', 'publish', 'closed', 'closed', '', '64', '', '', '2021-04-14 10:48:51', '2021-04-14 07:48:51', '', 0, 'http://wordpresscompo/wordpress/?p=64', 2, 'nav_menu_item', '', 0),
(65, 1, '2021-04-12 16:54:30', '2021-04-12 13:54:30', '', 'Качаем пресс', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-04-12 16:54:30', '2021-04-12 13:54:30', '', 1, 'http://wordpresscompo/wordpress/?p=65', 0, 'revision', '', 0),
(66, 1, '2021-04-12 17:00:43', '2021-04-12 14:00:43', '<!-- wp:paragraph -->\n<p>Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях.</p>\n<!-- /wp:paragraph -->', 'Качаем пресс', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-04-12 17:00:43', '2021-04-12 14:00:43', '', 1, 'http://wordpresscompo/wordpress/?p=66', 0, 'revision', '', 0),
(67, 1, '2021-04-12 17:06:01', '2021-04-12 14:06:01', '', 'blog__article_thmb2', '', 'inherit', 'open', 'closed', '', 'blog__article_thmb2', '', '', '2021-04-12 17:06:13', '2021-04-12 14:06:13', '', 1, 'http://wordpresscompo/wordpress/wp-content/uploads/2021/03/blog__article_thmb2.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2021-04-12 17:06:14', '2021-04-12 14:06:14', '<!-- wp:paragraph -->\n<p>Сайт&nbsp;рыбатекст&nbsp;поможет&nbsp;дизайнеру,&nbsp;верстальщику,&nbsp;вебмастеру&nbsp;сгенерировать&nbsp;несколько&nbsp;абзацев&nbsp;более&nbsp;менее&nbsp;осмысленного&nbsp;текста&nbsp;рыбы&nbsp;на&nbsp;русском&nbsp;языке,&nbsp;а&nbsp;начинающему&nbsp;оратору&nbsp;отточить&nbsp;навык&nbsp;публичных&nbsp;выступлений&nbsp;в&nbsp;домашних&nbsp;условиях.</p>\n<!-- /wp:paragraph -->', 'Бег помогает похудеть', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-04-12 17:06:14', '2021-04-12 14:06:14', '', 1, 'http://wordpresscompo/wordpress/?p=68', 0, 'revision', '', 0),
(69, 1, '2021-04-13 10:31:21', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-04-13 10:31:21', '0000-00-00 00:00:00', '', 0, 'http://wordpresscompo/wordpress/?p=69', 0, 'post', '', 0),
(70, 1, '2021-04-13 10:52:15', '2021-04-13 07:52:15', '<!-- wp:paragraph -->\n<p>dgdfgdg</p>\n<!-- /wp:paragraph -->', 'НОВАЯ ЗАПИСЬ', '', 'publish', 'open', 'open', '', 'novaya-zapis', '', '', '2021-04-13 10:52:15', '2021-04-13 07:52:15', '', 0, 'http://wordpresscompo/wordpress/?p=70', 0, 'post', '', 0),
(71, 1, '2021-04-13 10:52:15', '2021-04-13 07:52:15', '<!-- wp:paragraph -->\n<p>dgdfgdg</p>\n<!-- /wp:paragraph -->', 'НОВАЯ ЗАПИСЬ', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2021-04-13 10:52:15', '2021-04-13 07:52:15', '', 70, 'http://wordpresscompo/wordpress/?p=71', 0, 'revision', '', 0),
(73, 1, '2021-04-13 11:07:52', '2021-04-13 08:07:52', '<!-- wp:heading -->\n<h2>Форма</h2>\n<!-- /wp:heading -->', 'Контакты', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-04-13 11:07:52', '2021-04-13 08:07:52', '', 7, 'http://wordpresscompo/wordpress/?p=73', 0, 'revision', '', 0),
(74, 1, '2021-04-13 11:09:46', '2021-04-13 08:09:46', '<!-- wp:heading {\"className\":\"page-heading contacts__h_form\"} -->\n<h2 class=\"page-heading contacts__h_form\">Форма</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Контакты', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-04-13 11:09:46', '2021-04-13 08:09:46', '', 7, 'http://wordpresscompo/wordpress/?p=74', 0, 'revision', '', 0),
(77, 1, '2021-04-14 09:44:23', '2021-04-14 06:44:23', ' ', '', '', 'publish', 'closed', 'closed', '', '77', '', '', '2021-04-14 09:44:23', '2021-04-14 06:44:23', '', 0, 'http://wordpresscompo/wordpress/?p=77', 1, 'nav_menu_item', '', 0),
(78, 1, '2021-04-14 09:44:23', '2021-04-14 06:44:23', ' ', '', '', 'publish', 'closed', 'closed', '', '78', '', '', '2021-04-14 09:44:23', '2021-04-14 06:44:23', '', 0, 'http://wordpresscompo/wordpress/?p=78', 2, 'nav_menu_item', '', 0),
(79, 1, '2021-04-14 10:05:01', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-04-14 10:05:01', '0000-00-00 00:00:00', '', 0, 'http://wordpresscompo/wordpress/?post_type=services&p=79', 0, 'services', '', 0),
(80, 1, '2021-04-14 10:05:11', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-04-14 10:05:11', '0000-00-00 00:00:00', '', 0, 'http://wordpresscompo/wordpress/?post_type=services&p=80', 0, 'services', '', 0),
(81, 1, '2021-04-14 10:08:13', '2021-04-14 07:08:13', '', 'Тренажерный зал', '', 'publish', 'closed', 'closed', '', 'trenazhernyy-zal', '', '', '2021-04-14 10:08:13', '2021-04-14 07:08:13', '', 0, 'http://wordpresscompo/wordpress/?post_type=services&#038;p=81', 0, 'services', '', 0),
(84, 1, '2021-04-14 10:48:51', '2021-04-14 07:17:25', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2021-04-14 10:48:51', '2021-04-14 07:48:51', '', 0, 'http://wordpresscompo/wordpress/?p=84', 3, 'nav_menu_item', '', 0),
(85, 1, '2021-04-14 10:45:17', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-04-14 10:45:17', '0000-00-00 00:00:00', '', 0, 'http://wordpresscompo/wordpress/?post_type=trainers&p=85', 0, 'trainers', '', 0),
(86, 1, '2021-04-14 10:45:44', '2021-04-14 07:45:44', '', 'Кузимова Ольга', '', 'publish', 'closed', 'closed', '', 'kuzimova-olga', '', '', '2021-04-14 10:45:44', '2021-04-14 07:45:44', '', 0, 'http://wordpresscompo/wordpress/?post_type=trainers&#038;p=86', 0, 'trainers', '', 0),
(87, 1, '2021-04-14 10:46:28', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-04-14 10:46:28', '0000-00-00 00:00:00', '', 0, 'http://wordpresscompo/wordpress/?post_type=schedule&p=87', 0, 'schedule', '', 0),
(88, 1, '2021-04-14 10:46:49', '2021-04-14 07:46:49', '', 'Фитнесс', '', 'publish', 'closed', 'closed', '', 'fitness', '', '', '2021-04-14 10:46:49', '2021-04-14 07:46:49', '', 0, 'http://wordpresscompo/wordpress/?post_type=schedule&#038;p=88', 0, 'schedule', '', 0),
(89, 1, '2021-04-14 10:47:17', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-04-14 10:47:17', '0000-00-00 00:00:00', '', 0, 'http://wordpresscompo/wordpress/?post_type=cards&p=89', 0, 'cards', '', 0),
(90, 1, '2021-04-14 10:47:33', '2021-04-14 07:47:33', '', 'Полный день', '', 'publish', 'closed', 'closed', '', 'polnyy-den', '', '', '2021-04-14 10:47:33', '2021-04-14 07:47:33', '', 0, 'http://wordpresscompo/wordpress/?post_type=cards&#038;p=90', 0, 'cards', '', 0),
(91, 1, '2021-04-14 10:48:51', '2021-04-14 07:48:12', ' ', '', '', 'publish', 'closed', 'closed', '', '91', '', '', '2021-04-14 10:48:51', '2021-04-14 07:48:51', '', 0, 'http://wordpresscompo/wordpress/?p=91', 4, 'nav_menu_item', '', 0),
(92, 1, '2021-04-14 10:48:52', '2021-04-14 07:48:13', ' ', '', '', 'publish', 'closed', 'closed', '', '92', '', '', '2021-04-14 10:48:52', '2021-04-14 07:48:52', '', 0, 'http://wordpresscompo/wordpress/?p=92', 5, 'nav_menu_item', '', 0),
(93, 1, '2021-04-14 10:48:17', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-04-14 10:48:17', '0000-00-00 00:00:00', '', 0, 'http://wordpresscompo/wordpress/?post_type=prices&p=93', 0, 'prices', '', 0),
(94, 1, '2021-04-14 10:48:34', '2021-04-14 07:48:34', '', 'Бассейн 100', '', 'publish', 'closed', 'closed', '', 'basseyn-100', '', '', '2021-04-14 10:48:34', '2021-04-14 07:48:34', '', 0, 'http://wordpresscompo/wordpress/?post_type=prices&#038;p=94', 0, 'prices', '', 0),
(95, 1, '2021-04-14 10:48:53', '2021-04-14 07:48:53', ' ', '', '', 'publish', 'closed', 'closed', '', '95', '', '', '2021-04-14 10:48:53', '2021-04-14 07:48:53', '', 0, 'http://wordpresscompo/wordpress/?p=95', 6, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(2, 'Подвал', 'podval', 0),
(3, 'Secondary menu', 'secondary-menu', 0),
(4, 'Лента', 'feed', 0),
(5, 'подвал1', 'podval1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 4, 0),
(17, 2, 0),
(18, 3, 0),
(19, 3, 0),
(20, 3, 0),
(21, 3, 0),
(64, 2, 0),
(70, 4, 0),
(77, 5, 0),
(78, 5, 0),
(84, 2, 0),
(91, 2, 0),
(92, 2, 0),
(95, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'category', '', 0, 2),
(5, 5, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Amiliya'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"e993ccfbad5ef50d05dad36d3699d4361643d3a24dfa8332f1606d97735b75e6\";a:4:{s:10:\"expiration\";i:1618033685;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36\";s:5:\"login\";i:1617860885;}s:64:\"dcfbf66943faa08720150ad3e0ef7a0d1693217e8e6be5855f513d3d9a35dedd\";a:4:{s:10:\"expiration\";i:1619165584;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36\";s:5:\"login\";i:1617955984;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '69'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'nav_menu_recently_edited', '2'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(23, 1, 'wp_user-settings-time', '1617977919'),
(24, 1, 'closedpostboxes_page', 'a:0:{}'),
(25, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Amiliya', '$P$BBlUnCzo3WoYZCgsifNKES5qXUE8P41', 'amiliya', 'zhidkova18@bk.ru', 'http://wordpresscompo/wordpress', '2021-03-25 17:24:12', '', 0, 'Amiliya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=439;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
