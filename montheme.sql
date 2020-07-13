-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 14 juil. 2020 à 01:29
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `montheme`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-06-27 20:21:33', '2020-06-27 19:21:33', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
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
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/montheme', 'yes'),
(2, 'home', 'http://localhost/montheme', 'yes'),
(3, 'blogname', 'les oridnateurs', 'yes'),
(4, 'blogdescription', '7anout', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'bra15226@gmail.Com', 'yes'),
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
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'echrini', 'yes'),
(41, 'stylesheet', 'echrini', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', 'Europe/London', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1608837686', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'en_GB', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:8:{i:1594686096;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1594711296;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1594754495;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1594754739;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1594754740;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1594760519;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1595186495;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1593286531;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(132, 'can_compress_scripts', '1', 'no'),
(146, 'current_theme', '', 'yes'),
(147, 'theme_mods_montheme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1593303011;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(148, 'theme_switched', '', 'yes'),
(149, 'category_children', 'a:0:{}', 'yes'),
(161, 'theme_mods_echrini', 'a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:14:\"menu_principal\";i:2;}}', 'yes'),
(165, 'new_admin_email', 'bra15226@gmail.Com', 'yes'),
(170, 'recently_activated', 'a:0:{}', 'yes'),
(190, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(195, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.9\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1593307877;s:7:\"version\";s:5:\"5.1.9\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(212, '_transient_health-check-site-status-result', '{\"good\":9,\"recommended\":8,\"critical\":0}', 'yes'),
(215, '_site_transient_timeout_theme_roots', '1594684408', 'no'),
(216, '_site_transient_theme_roots', 'a:5:{s:7:\"echrini\";s:7:\"/themes\";s:8:\"montheme\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(219, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"en_GB\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-5.4.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1594682616;s:15:\"version_checked\";s:5:\"5.4.2\";s:12:\"translations\";a:0:{}}', 'no'),
(220, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1594682618;s:7:\"checked\";a:5:{s:7:\"echrini\";s:0:\"\";s:8:\"montheme\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.2\";}s:8:\"response\";a:2:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.6.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(221, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1594682619;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.1.5\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.9\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"5.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.5.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(222, '_site_transient_timeout_php_check_90a84b80b2ae4bb2a14bb18a1c790012', '1595287422', 'no'),
(223, '_site_transient_php_check_90a84b80b2ae4bb2a14bb18a1c790012', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_edit_lock', '1593304120:1'),
(4, 5, '_edit_lock', '1593291623:1'),
(6, 5, '_encloseme', '1'),
(7, 2, '_edit_lock', '1593307637:1'),
(8, 5, '_wp_trash_meta_status', 'publish'),
(9, 5, '_wp_trash_meta_time', '1593304209'),
(10, 5, '_wp_desired_post_slug', 'mon-article-de-test'),
(11, 1, '_edit_last', '1'),
(13, 9, '_edit_last', '1'),
(14, 9, '_edit_lock', '1593305756:1'),
(16, 12, '_wp_attached_file', '2020/06/msi.jpg'),
(17, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:15:\"2020/06/msi.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"msi-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"msi-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(18, 12, '_wp_attachment_image_alt', 'Msi'),
(22, 17, '_edit_last', '1'),
(23, 17, '_edit_lock', '1593305927:1'),
(24, 18, '_wp_attached_file', '2020/06/asus.jpg'),
(25, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:450;s:4:\"file\";s:16:\"2020/06/asus.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"asus-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"asus-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 1, '_wp_trash_meta_status', 'publish'),
(30, 1, '_wp_trash_meta_time', '1593306077'),
(31, 1, '_wp_desired_post_slug', 'hello-world'),
(32, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(33, 23, '_menu_item_type', 'custom'),
(34, 23, '_menu_item_menu_item_parent', '0'),
(35, 23, '_menu_item_object_id', '23'),
(36, 23, '_menu_item_object', 'custom'),
(37, 23, '_menu_item_target', ''),
(38, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(39, 23, '_menu_item_xfn', ''),
(40, 23, '_menu_item_url', 'http://localhost/montheme/'),
(41, 23, '_menu_item_orphaned', '1593307559'),
(42, 24, '_menu_item_type', 'post_type'),
(43, 24, '_menu_item_menu_item_parent', '0'),
(44, 24, '_menu_item_object_id', '2'),
(45, 24, '_menu_item_object', 'page'),
(46, 24, '_menu_item_target', ''),
(47, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(48, 24, '_menu_item_xfn', ''),
(49, 24, '_menu_item_url', ''),
(50, 24, '_menu_item_orphaned', '1593307560'),
(51, 25, '_menu_item_type', 'custom'),
(52, 25, '_menu_item_menu_item_parent', '0'),
(53, 25, '_menu_item_object_id', '25'),
(54, 25, '_menu_item_object', 'custom'),
(55, 25, '_menu_item_target', ''),
(56, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(57, 25, '_menu_item_xfn', ''),
(58, 25, '_menu_item_url', 'http://localhost/montheme/'),
(60, 26, '_menu_item_type', 'post_type'),
(61, 26, '_menu_item_menu_item_parent', '0'),
(62, 26, '_menu_item_object_id', '2'),
(63, 26, '_menu_item_object', 'page'),
(64, 26, '_menu_item_target', ''),
(65, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(66, 26, '_menu_item_xfn', ''),
(67, 26, '_menu_item_url', ''),
(69, 27, '_edit_last', '1'),
(70, 27, '_edit_lock', '1593309388:1'),
(71, 2, '_edit_last', '1'),
(72, 30, '_menu_item_type', 'post_type'),
(73, 30, '_menu_item_menu_item_parent', '0'),
(74, 30, '_menu_item_object_id', '27'),
(75, 30, '_menu_item_object', 'page'),
(76, 30, '_menu_item_target', ''),
(77, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(78, 30, '_menu_item_xfn', ''),
(79, 30, '_menu_item_url', ''),
(81, 31, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(82, 31, '_mail', 'a:8:{s:7:\"subject\";s:32:\"les oridnateurs \"[your-subject]\"\";s:6:\"sender\";s:36:\"les oridnateurs <bra15226@gmail.Com>\";s:4:\"body\";s:179:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on les oridnateurs (http://localhost/montheme)\";s:9:\"recipient\";s:18:\"bra15226@gmail.Com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(83, 31, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:32:\"les oridnateurs \"[your-subject]\"\";s:6:\"sender\";s:36:\"les oridnateurs <bra15226@gmail.Com>\";s:4:\"body\";s:121:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on les oridnateurs (http://localhost/montheme)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:28:\"Reply-To: bra15226@gmail.Com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(84, 31, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(85, 31, '_additional_settings', NULL),
(86, 31, '_locale', 'en_GB'),
(87, 36, '_edit_last', '1'),
(88, 36, '_edit_lock', '1593310359:1'),
(89, 37, '_wp_attached_file', '2020/06/130-15IKB_g.jpg'),
(90, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2020/06/130-15IKB_g.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"130-15IKB_g-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"130-15IKB_g-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
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
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-06-27 20:21:33', '2020-06-27 19:21:33', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2020-06-28 02:01:17', '2020-06-28 01:01:17', '', 0, 'http://localhost/montheme/?p=1', 0, 'post', '', 1),
(2, 1, '2020-06-27 20:21:33', '2020-06-27 19:21:33', '<!-- wp:paragraph -->\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/montheme/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-06-28 02:29:31', '2020-06-28 01:29:31', '', 0, 'http://localhost/montheme/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-06-27 20:21:33', '2020-06-27 19:21:33', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/montheme.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service Privacy Policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-06-27 20:21:33', '2020-06-27 19:21:33', '', 0, 'http://localhost/montheme/?page_id=3', 0, 'page', '', 0),
(5, 1, '2020-06-27 22:02:15', '2020-06-27 21:02:15', '<!-- wp:paragraph -->\n<p>Mon text</p>\n<!-- /wp:paragraph -->', 'Mon article De test', '', 'trash', 'open', 'open', '', 'mon-article-de-test__trashed', '', '', '2020-06-28 01:30:09', '2020-06-28 00:30:09', '', 0, 'http://localhost/montheme/?p=5', 0, 'post', '', 0),
(6, 1, '2020-06-27 22:02:15', '2020-06-27 21:02:15', '', 'Mon article De test', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-06-27 22:02:15', '2020-06-27 21:02:15', '', 5, 'http://localhost/montheme/2020/06/27/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2020-06-27 22:02:35', '2020-06-27 21:02:35', '<!-- wp:paragraph -->\n<p>Mon text</p>\n<!-- /wp:paragraph -->', 'Mon article De test', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-06-27 22:02:35', '2020-06-27 21:02:35', '', 5, 'http://localhost/montheme/2020/06/27/5-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2020-06-28 01:30:57', '2020-06-28 00:30:57', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-06-28 01:30:57', '2020-06-28 00:30:57', '', 1, 'http://localhost/montheme/2020/06/28/1-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2020-06-28 01:38:49', '2020-06-28 00:38:49', 'La <strong>marque MSI</strong> est une marque d’ordinateur <strong>orientée gaming (jeux vidéo).</strong> MSI a été fondée en 1986 à Taïwan et propose une large gamme de <strong>PC portable</strong>, PC sous forme de <strong>tour</strong>, ou encore des ordinateurs <strong>tout en un</strong>. Mais ce constructeur ne développe exclusivement que des <strong>produits gaming</strong> très puissants.\r\n\r\n<em>Example :</em>\r\n\r\n<span class=\"titre_desc\"><a title=\"MSI GF63 Thin 9SC-480XFR\" href=\"https://www.scoopgaming.com.tn/1-11397-192-msi-gf63-thin-9sc-480xfr\">MSI GF63 THIN 9SC-480XFR</a>\r\n</span>\r\n\r\n<img class=\"alignnone wp-image-12 size-medium\" src=\"http://localhost/montheme/wp-content/uploads/2020/06/msi-300x300.jpg\" alt=\"Msi\" width=\"300\" height=\"300\" />\r\n\r\nINTEL CORE I5-9300H\r\nUP TO 4.1 GHZ - 8 MO CACHE\r\n8 GO DDR4\r\nDISQUE DUR 512 GO SSD\r\nLED FULL HD 15.6 POUCES\r\nNVIDIA GEFORCE GTX1650 MAX-Q\r\n4 GO DÉDIÉS GDDR5\r\nFREEDOS\r\n<p style=\"text-align: center;\"></p>', 'MSI', '', 'publish', 'open', 'open', '', 'msi', '', '', '2020-06-28 01:52:46', '2020-06-28 00:52:46', '', 0, 'http://localhost/montheme/?p=9', 0, 'post', '', 0),
(10, 1, '2020-06-28 01:38:49', '2020-06-28 00:38:49', 'La <strong>marque MSI</strong> est une marque d’ordinateur <strong>orientée gaming (jeux vidéo).</strong> MSI a été fondée en 1986 à Taïwan et propose une large gamme de <strong>PC portable</strong>, PC sous forme de <strong>tour</strong>, ou encore des ordinateurs <strong>tout en un</strong>. Mais ce constructeur ne développe exclusivement que des <strong>produits gaming</strong> très puissants.\r\nExample :\r\n\r\n<span class=\"titre_desc\"><a title=\"MSI GF63 Thin 9SC-480XFR\" href=\"https://www.scoopgaming.com.tn/1-11397-192-msi-gf63-thin-9sc-480xfr\">MSI GF63 THIN 9SC-480XFR</a>\r\n</span>\r\n\r\nINTEL CORE I5-9300H\r\nUP TO 4.1 GHZ - 8 MO CACHE\r\n8 GO DDR4\r\nDISQUE DUR 512 GO SSD\r\nLED FULL HD 15.6 POUCES\r\nNVIDIA GEFORCE GTX1650 MAX-Q\r\n4 GO DÉDIÉS GDDR5\r\nFREEDOS\r\n\r\n&nbsp;', 'MSI', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-28 01:38:49', '2020-06-28 00:38:49', '', 9, 'http://localhost/montheme/2020/06/28/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2020-06-28 01:44:57', '2020-06-28 00:44:57', 'La <strong>marque MSI</strong> est une marque d’ordinateur <strong>orientée gaming (jeux vidéo).</strong> MSI a été fondée en 1986 à Taïwan et propose une large gamme de <strong>PC portable</strong>, PC sous forme de <strong>tour</strong>, ou encore des ordinateurs <strong>tout en un</strong>. Mais ce constructeur ne développe exclusivement que des <strong>produits gaming</strong> très puissants.\n\n<em>Example :</em>\n\n<span class=\"titre_desc\"><a title=\"MSI GF63 Thin 9SC-480XFR\" href=\"https://www.scoopgaming.com.tn/1-11397-192-msi-gf63-thin-9sc-480xfr\">MSI GF63 THIN 9SC-480XFR</a>\n</span>\n\n<img class=\"wp-image-12 size-thumbnail alignnone\" src=\"http://localhost/montheme/wp-content/uploads/2020/06/msi-150x150.jpg\" alt=\"Msi\" width=\"150\" height=\"150\" />INTEL CORE I5-9300H\nUP TO 4.1 GHZ - 8 MO CACHE\n8 GO DDR4\nDISQUE DUR 512 GO SSD\nLED FULL HD 15.6 POUCES\nNVIDIA GEFORCE GTX1650 MAX-Q\n4 GO DÉDIÉS GDDR5\nFREEDOS\n<p style=\"text-align: center;\"></p>', 'MSI', '', 'inherit', 'closed', 'closed', '', '9-autosave-v1', '', '', '2020-06-28 01:44:57', '2020-06-28 00:44:57', '', 9, 'http://localhost/montheme/2020/06/28/9-autosave-v1/', 0, 'revision', '', 0),
(12, 1, '2020-06-28 01:40:51', '2020-06-28 00:40:51', '', 'msi', '', 'inherit', 'open', 'closed', '', 'msi-2', '', '', '2020-06-28 01:41:08', '2020-06-28 00:41:08', '', 9, 'http://localhost/montheme/wp-content/uploads/2020/06/msi.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2020-06-28 01:41:41', '2020-06-28 00:41:41', '<img class=\"alignnone size-medium wp-image-12\" src=\"http://localhost/montheme/wp-content/uploads/2020/06/msi-300x300.jpg\" alt=\"Msi\" width=\"300\" height=\"300\" />La <strong>marque MSI</strong> est une marque d’ordinateur <strong>orientée gaming (jeux vidéo).</strong> MSI a été fondée en 1986 à Taïwan et propose une large gamme de <strong>PC portable</strong>, PC sous forme de <strong>tour</strong>, ou encore des ordinateurs <strong>tout en un</strong>. Mais ce constructeur ne développe exclusivement que des <strong>produits gaming</strong> très puissants.\r\nExample :\r\n\r\n<span class=\"titre_desc\"><a title=\"MSI GF63 Thin 9SC-480XFR\" href=\"https://www.scoopgaming.com.tn/1-11397-192-msi-gf63-thin-9sc-480xfr\">MSI GF63 THIN 9SC-480XFR</a>\r\n</span>\r\n\r\nINTEL CORE I5-9300H\r\nUP TO 4.1 GHZ - 8 MO CACHE\r\n8 GO DDR4\r\nDISQUE DUR 512 GO SSD\r\nLED FULL HD 15.6 POUCES\r\nNVIDIA GEFORCE GTX1650 MAX-Q\r\n4 GO DÉDIÉS GDDR5\r\nFREEDOS\r\n\r\n&nbsp;', 'MSI', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-28 01:41:41', '2020-06-28 00:41:41', '', 9, 'http://localhost/montheme/2020/06/28/9-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2020-06-28 01:43:43', '2020-06-28 00:43:43', 'La <strong>marque MSI</strong> est une marque d’ordinateur <strong>orientée gaming (jeux vidéo).</strong> MSI a été fondée en 1986 à Taïwan et propose une large gamme de <strong>PC portable</strong>, PC sous forme de <strong>tour</strong>, ou encore des ordinateurs <strong>tout en un</strong>. Mais ce constructeur ne développe exclusivement que des <strong>produits gaming</strong> très puissants.\r\n\r\n<em>Example :</em>\r\n<p style=\"text-align: center;\"><span class=\"titre_desc\"><a title=\"MSI GF63 Thin 9SC-480XFR\" href=\"https://www.scoopgaming.com.tn/1-11397-192-msi-gf63-thin-9sc-480xfr\">MSI GF63 THIN 9SC-480XFR</a>\r\n</span></p>\r\n<img class=\"wp-image-12 size-thumbnail aligncenter\" src=\"http://localhost/montheme/wp-content/uploads/2020/06/msi-150x150.jpg\" alt=\"Msi\" width=\"150\" height=\"150\" />\r\n<p style=\"text-align: center;\">INTEL CORE I5-9300H\r\nUP TO 4.1 GHZ - 8 MO CACHE\r\n8 GO DDR4\r\nDISQUE DUR 512 GO SSD\r\nLED FULL HD 15.6 POUCES\r\nNVIDIA GEF</p>\r\n<p style=\"text-align: center;\">ORCE GTX1650 MAX-Q</p>\r\n<p style=\"text-align: center;\">4 GO DÉDIÉS GDDR5\r\nFREEDOS</p>\r\n<p style=\"text-align: center;\"></p>', 'MSI', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-28 01:43:43', '2020-06-28 00:43:43', '', 9, 'http://localhost/montheme/2020/06/28/9-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-06-28 01:45:02', '2020-06-28 00:45:02', 'La <strong>marque MSI</strong> est une marque d’ordinateur <strong>orientée gaming (jeux vidéo).</strong> MSI a été fondée en 1986 à Taïwan et propose une large gamme de <strong>PC portable</strong>, PC sous forme de <strong>tour</strong>, ou encore des ordinateurs <strong>tout en un</strong>. Mais ce constructeur ne développe exclusivement que des <strong>produits gaming</strong> très puissants.\r\n\r\n<em>Example :</em>\r\n\r\n<span class=\"titre_desc\"><a title=\"MSI GF63 Thin 9SC-480XFR\" href=\"https://www.scoopgaming.com.tn/1-11397-192-msi-gf63-thin-9sc-480xfr\">MSI GF63 THIN 9SC-480XFR</a>\r\n</span>\r\n\r\n<img class=\"wp-image-12 size-thumbnail alignnone\" src=\"http://localhost/montheme/wp-content/uploads/2020/06/msi-150x150.jpg\" alt=\"Msi\" width=\"150\" height=\"150\" />\r\n\r\nINTEL CORE I5-9300H\r\nUP TO 4.1 GHZ - 8 MO CACHE\r\n8 GO DDR4\r\nDISQUE DUR 512 GO SSD\r\nLED FULL HD 15.6 POUCES\r\nNVIDIA GEFORCE GTX1650 MAX-Q\r\n4 GO DÉDIÉS GDDR5\r\nFREEDOS\r\n<p style=\"text-align: center;\"></p>', 'MSI', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-28 01:45:02', '2020-06-28 00:45:02', '', 9, 'http://localhost/montheme/2020/06/28/9-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2020-06-28 01:52:07', '2020-06-28 00:52:07', '<b>AsusTeK Computer</b> abrégé <b>Asus</b> , pouvant aussi s\'écrire <b>ΛSUS</b>, est une entreprise taïwanaise qui produit descartes mères</a>, des cartes graphiques</a>, des lecteurs optiques</a>, des assistants personnels, des ordinateurs portables, des ordinateurs de bureau</a>, des périphériques réseau, des téléphones portables, des boîtiers et des systèmes de refroidissement d’ordinateurs.\r\n\r\nExample :\r\n\r\n<em><strong><span id=\"title\">Zephyrus G15 GA502DU-NR005T</span></strong></em>\r\n\r\n<img class=\"alignnone size-medium wp-image-18\" src=\"http://localhost/montheme/wp-content/uploads/2020/06/asus-300x225.jpg\" alt=\"\" width=\"300\" height=\"225\" />\r\n<div class=\"bloc_sous_desc\"><strong>Marque : </strong>Asus</div>\r\n<div class=\"bloc_sous_desc\"><strong>REF :</strong> <span id=\"ref\">90NR0213-M01970</span></div>\r\n<div class=\"description_article_single\">\r\n\r\nAMD Ryzen 7 3750H\r\nUp to 4 GHz - 6 Mo cache\r\n8 Go DDR4\r\nDisque Dur 512Go SSD PCI-E 3.0\r\nFULL HD 15.6 Pouces\r\nNVIDIA GeForce GTX 1660 Ti\r\n6 Go Dédiée GDDR6\r\nWindows 10 64 bits\r\n\r\n</div>', 'ASUS', '', 'publish', 'open', 'open', '', 'asus', '', '', '2020-06-28 02:00:36', '2020-06-28 01:00:36', '', 0, 'http://localhost/montheme/?p=17', 0, 'post', '', 0),
(18, 1, '2020-06-28 01:51:28', '2020-06-28 00:51:28', '', 'asus', '', 'inherit', 'open', 'closed', '', 'asus', '', '', '2020-06-28 01:51:28', '2020-06-28 00:51:28', '', 17, 'http://localhost/montheme/wp-content/uploads/2020/06/asus.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2020-06-28 01:52:07', '2020-06-28 00:52:07', '<b>AsusTeK Computer</b> abrégé <b>Asus</b> , pouvant aussi s\'écrire <b>ΛSUS</b>, est une <a title=\"Entreprise\" href=\"https://fr.wikipedia.org/wiki/Entreprise\">entreprise</a> <a title=\"Taïwan\" href=\"https://fr.wikipedia.org/wiki/Ta%C3%AFwan\">taïwanaise</a> qui produit des <a title=\"Carte mère\" href=\"https://fr.wikipedia.org/wiki/Carte_m%C3%A8re\">cartes mères</a>, des <a title=\"Carte graphique\" href=\"https://fr.wikipedia.org/wiki/Carte_graphique\">cartes graphiques</a>, des <a title=\"Lecteur de disque optique\" href=\"https://fr.wikipedia.org/wiki/Lecteur_de_disque_optique\">lecteurs optiques</a>, des <a class=\"mw-redirect\" title=\"Assistants personnels\" href=\"https://fr.wikipedia.org/wiki/Assistants_personnels\">assistants personnels</a>, des <a title=\"Ordinateur portable\" href=\"https://fr.wikipedia.org/wiki/Ordinateur_portable\">ordinateurs portables</a>, des <a title=\"Ordinateur de bureau\" href=\"https://fr.wikipedia.org/wiki/Ordinateur_de_bureau\">ordinateurs de bureau</a>, des périphériques réseau, des <a title=\"Téléphone mobile\" href=\"https://fr.wikipedia.org/wiki/T%C3%A9l%C3%A9phone_mobile\">téléphones portables</a>, des boîtiers et des systèmes de refroidissement d’ordinateurs.\r\n\r\nExample :\r\n\r\n<em><strong><span id=\"title\">Zephyrus G15 GA502DU-NR005T</span></strong></em>\r\n\r\n<img class=\"alignnone size-medium wp-image-18\" src=\"http://localhost/montheme/wp-content/uploads/2020/06/asus-300x225.jpg\" alt=\"\" width=\"300\" height=\"225\" />\r\n<div class=\"bloc_sous_desc\"><strong>Marque : </strong>Asus</div>\r\n<div class=\"bloc_sous_desc\"><strong>REF :</strong> <span id=\"ref\">90NR0213-M01970</span></div>\r\n<div class=\"description_article_single\">\r\n\r\nAMD Ryzen 7 3750H\r\nUp to 4 GHz - 6 Mo cache\r\n8 Go DDR4\r\nDisque Dur 512Go SSD PCI-E 3.0\r\nFULL HD 15.6 Pouces\r\nNVIDIA GeForce GTX 1660 Ti\r\n6 Go Dédiée GDDR6\r\nWindows 10 64 bits\r\n\r\n</div>', 'ASUS', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-06-28 01:52:07', '2020-06-28 00:52:07', '', 17, 'http://localhost/montheme/2020/06/28/17-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2020-06-28 01:52:46', '2020-06-28 00:52:46', 'La <strong>marque MSI</strong> est une marque d’ordinateur <strong>orientée gaming (jeux vidéo).</strong> MSI a été fondée en 1986 à Taïwan et propose une large gamme de <strong>PC portable</strong>, PC sous forme de <strong>tour</strong>, ou encore des ordinateurs <strong>tout en un</strong>. Mais ce constructeur ne développe exclusivement que des <strong>produits gaming</strong> très puissants.\r\n\r\n<em>Example :</em>\r\n\r\n<span class=\"titre_desc\"><a title=\"MSI GF63 Thin 9SC-480XFR\" href=\"https://www.scoopgaming.com.tn/1-11397-192-msi-gf63-thin-9sc-480xfr\">MSI GF63 THIN 9SC-480XFR</a>\r\n</span>\r\n\r\n<img class=\"alignnone wp-image-12 size-medium\" src=\"http://localhost/montheme/wp-content/uploads/2020/06/msi-300x300.jpg\" alt=\"Msi\" width=\"300\" height=\"300\" />\r\n\r\nINTEL CORE I5-9300H\r\nUP TO 4.1 GHZ - 8 MO CACHE\r\n8 GO DDR4\r\nDISQUE DUR 512 GO SSD\r\nLED FULL HD 15.6 POUCES\r\nNVIDIA GEFORCE GTX1650 MAX-Q\r\n4 GO DÉDIÉS GDDR5\r\nFREEDOS\r\n<p style=\"text-align: center;\"></p>', 'MSI', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-28 01:52:46', '2020-06-28 00:52:46', '', 9, 'http://localhost/montheme/2020/06/28/9-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2020-06-28 01:59:34', '2020-06-28 00:59:34', '<b>AsusTeK Computer</b> abrégé <b>Asus</b> , pouvant aussi s\'écrire <b>ΛSUS</b>, est une entreprise taïwanaise</a> qui produit des <a title=\"Carte mère\" href=\"https://fr.wikipedia.org/wiki/Carte_m%C3%A8re\">cartes mères</a>, des <a title=\"Carte graphique\" href=\"https://fr.wikipedia.org/wiki/Carte_graphique\">cartes graphiques</a>, des <a title=\"Lecteur de disque optique\" href=\"https://fr.wikipedia.org/wiki/Lecteur_de_disque_optique\">lecteurs optiques</a>, des assistants personnels, des <a title=\"Ordinateur portable\" href=\"https://fr.wikipedia.org/wiki/Ordinateur_portable\">ordinateurs portables</a>, des <a title=\"Ordinateur de bureau\" href=\"https://fr.wikipedia.org/wiki/Ordinateur_de_bureau\">ordinateurs de bureau</a>, des périphériques réseau, des <a title=\"Téléphone mobile\" href=\"https://fr.wikipedia.org/wiki/T%C3%A9l%C3%A9phone_mobile\">téléphones portables</a>, des boîtiers et des systèmes de refroidissement d’ordinateurs.\n\nExample :\n\n<em><strong><span id=\"title\">Zephyrus G15 GA502DU-NR005T</span></strong></em>\n\n<img class=\"alignnone size-medium wp-image-18\" src=\"http://localhost/montheme/wp-content/uploads/2020/06/asus-300x225.jpg\" alt=\"\" width=\"300\" height=\"225\" />\n<div class=\"bloc_sous_desc\"><strong>Marque : </strong>Asus</div>\n<div class=\"bloc_sous_desc\"><strong>REF :</strong> <span id=\"ref\">90NR0213-M01970</span></div>\n<div class=\"description_article_single\">\n\nAMD Ryzen 7 3750H\nUp to 4 GHz - 6 Mo cache\n8 Go DDR4\nDisque Dur 512Go SSD PCI-E 3.0\nFULL HD 15.6 Pouces\nNVIDIA GeForce GTX 1660 Ti\n6 Go Dédiée GDDR6\nWindows 10 64 bits\n\n</div>', 'ASUS', '', 'inherit', 'closed', 'closed', '', '17-autosave-v1', '', '', '2020-06-28 01:59:34', '2020-06-28 00:59:34', '', 17, 'http://localhost/montheme/2020/06/28/17-autosave-v1/', 0, 'revision', '', 0),
(22, 1, '2020-06-28 02:00:36', '2020-06-28 01:00:36', '<b>AsusTeK Computer</b> abrégé <b>Asus</b> , pouvant aussi s\'écrire <b>ΛSUS</b>, est une entreprise taïwanaise qui produit descartes mères</a>, des cartes graphiques</a>, des lecteurs optiques</a>, des assistants personnels, des ordinateurs portables, des ordinateurs de bureau</a>, des périphériques réseau, des téléphones portables, des boîtiers et des systèmes de refroidissement d’ordinateurs.\r\n\r\nExample :\r\n\r\n<em><strong><span id=\"title\">Zephyrus G15 GA502DU-NR005T</span></strong></em>\r\n\r\n<img class=\"alignnone size-medium wp-image-18\" src=\"http://localhost/montheme/wp-content/uploads/2020/06/asus-300x225.jpg\" alt=\"\" width=\"300\" height=\"225\" />\r\n<div class=\"bloc_sous_desc\"><strong>Marque : </strong>Asus</div>\r\n<div class=\"bloc_sous_desc\"><strong>REF :</strong> <span id=\"ref\">90NR0213-M01970</span></div>\r\n<div class=\"description_article_single\">\r\n\r\nAMD Ryzen 7 3750H\r\nUp to 4 GHz - 6 Mo cache\r\n8 Go DDR4\r\nDisque Dur 512Go SSD PCI-E 3.0\r\nFULL HD 15.6 Pouces\r\nNVIDIA GeForce GTX 1660 Ti\r\n6 Go Dédiée GDDR6\r\nWindows 10 64 bits\r\n\r\n</div>', 'ASUS', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-06-28 02:00:36', '2020-06-28 01:00:36', '', 17, 'http://localhost/montheme/2020/06/28/17-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2020-06-28 02:25:58', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-06-28 02:25:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/montheme/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2020-06-28 02:25:59', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-06-28 02:25:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/montheme/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2020-06-28 02:27:07', '2020-06-28 01:27:07', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-06-28 02:29:52', '2020-06-28 01:29:52', '', 0, 'http://localhost/montheme/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2020-06-28 02:27:07', '2020-06-28 01:27:07', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2020-06-28 02:29:52', '2020-06-28 01:29:52', '', 0, 'http://localhost/montheme/?p=26', 2, 'nav_menu_item', '', 0),
(27, 1, '2020-06-28 02:29:09', '2020-06-28 01:29:09', '[contact-form-7 id=\"31\" title=\"Contact form 1\"]\r\n\r\n&nbsp;', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-06-28 02:56:47', '2020-06-28 01:56:47', '', 0, 'http://localhost/montheme/?page_id=27', 0, 'page', '', 0),
(28, 1, '2020-06-28 02:29:09', '2020-06-28 01:29:09', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2020-06-28 02:29:09', '2020-06-28 01:29:09', '', 27, 'http://localhost/montheme/2020/06/28/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2020-06-28 02:29:31', '2020-06-28 01:29:31', '<!-- wp:paragraph -->\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/montheme/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-06-28 02:29:31', '2020-06-28 01:29:31', '', 2, 'http://localhost/montheme/2020/06/28/2-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2020-06-28 02:29:52', '2020-06-28 01:29:52', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2020-06-28 02:29:52', '2020-06-28 01:29:52', '', 0, 'http://localhost/montheme/?p=30', 3, 'nav_menu_item', '', 0),
(31, 1, '2020-06-28 02:31:16', '2020-06-28 01:31:16', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nles oridnateurs \"[your-subject]\"\nles oridnateurs <bra15226@gmail.Com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on les oridnateurs (http://localhost/montheme)\nbra15226@gmail.Com\nReply-To: [your-email]\n\n0\n0\n\nles oridnateurs \"[your-subject]\"\nles oridnateurs <bra15226@gmail.Com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on les oridnateurs (http://localhost/montheme)\n[your-email]\nReply-To: bra15226@gmail.Com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2020-06-28 02:31:16', '2020-06-28 01:31:16', '', 0, 'http://localhost/montheme/?post_type=wpcf7_contact_form&p=31', 0, 'wpcf7_contact_form', '', 0),
(32, 1, '2020-06-28 02:33:00', '2020-06-28 01:33:00', '[contact-form-7 id=\"31\" title=\"Contact form 1\"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2020-06-28 02:33:00', '2020-06-28 01:33:00', '', 27, 'http://localhost/montheme/2020/06/28/27-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2020-06-28 02:34:52', '2020-06-28 01:34:52', '[contact-form-7 id=\"31\" title=\"Contact form 1\"]\r\n\r\nffff', 'Contact', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2020-06-28 02:34:52', '2020-06-28 01:34:52', '', 27, 'http://localhost/montheme/2020/06/28/27-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2020-06-28 02:56:47', '2020-06-28 01:56:47', '[contact-form-7 id=\"31\" title=\"Contact form 1\"]\r\n\r\n&nbsp;', 'Contact', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2020-06-28 02:56:47', '2020-06-28 01:56:47', '', 27, 'http://localhost/montheme/2020/06/28/27-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2020-06-28 02:56:49', '2020-06-28 01:56:49', '[contact-form-7 id=\"31\" title=\"Contact form 1\"]\n\n&nbsp;', 'Contact', '', 'inherit', 'closed', 'closed', '', '27-autosave-v1', '', '', '2020-06-28 02:56:49', '2020-06-28 01:56:49', '', 27, 'http://localhost/montheme/2020/06/28/27-autosave-v1/', 0, 'revision', '', 0),
(36, 1, '2020-06-28 03:12:39', '2020-06-28 02:12:39', '<b>Lenovo</b> (联想) est une <a title=\"Entreprise\" href=\"https://fr.wikipedia.org/wiki/Entreprise\">entreprise</a> <a class=\"mw-redirect\" title=\"République populaire de Chine\" href=\"https://fr.wikipedia.org/wiki/R%C3%A9publique_populaire_de_Chine\">chinoise</a> fabriquant principalement des <a title=\"Ordinateur\" href=\"https://fr.wikipedia.org/wiki/Ordinateur\">ordinateurs</a>, <a class=\"mw-redirect\" title=\"Téléphones\" href=\"https://fr.wikipedia.org/wiki/T%C3%A9l%C3%A9phones\">téléphones</a>, <a class=\"mw-redirect\" title=\"Stations de travail\" href=\"https://fr.wikipedia.org/wiki/Stations_de_travail\">stations de travail</a>, <a title=\"Serveur informatique\" href=\"https://fr.wikipedia.org/wiki/Serveur_informatique\">serveurs informatiques</a> et <a class=\"mw-redirect\" title=\"Télévision connectée\" href=\"https://fr.wikipedia.org/wiki/T%C3%A9l%C3%A9vision_connect%C3%A9e\">télévisions connectées</a>. Fondée en 1984 par <a title=\"Liu Chuanzhi\" href=\"https://fr.wikipedia.org/wiki/Liu_Chuanzhi\">Liu Chuanzhi</a>,\r\n\r\nExample :\r\n\r\n<strong>PC PORTABLES LENOVO IDEAPAD 130 15IKB</strong>\r\n\r\n<img class=\"alignnone size-medium wp-image-37\" src=\"http://localhost/montheme/wp-content/uploads/2020/06/130-15IKB_g-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n<div class=\"bloc_sous_desc\"><span id=\"title\">IDEAPAD 130-15IKB</span></div>\r\n<div class=\"bloc_sous_desc\"><strong>Marque : </strong>Lenovo</div>\r\n<div class=\"bloc_sous_desc\"><strong>REF :</strong> <span id=\"ref\">81H700B6FG</span></div>\r\n<div class=\"description_article_single\">\r\n\r\nIntel Core i3-7020U\r\n2.30 GHz - 3 Mo cache\r\n4 Go DDR4\r\nDisque dur 1 To SATA\r\nHD LED 15.6 pouces\r\nNvidia GeForce MX110\r\n2 Go dédiés\r\n\r\n</div>', 'Lenovo', '', 'publish', 'open', 'open', '', 'lenovo', '', '', '2020-06-28 03:14:27', '2020-06-28 02:14:27', '', 0, 'http://localhost/montheme/?p=36', 0, 'post', '', 0),
(37, 1, '2020-06-28 03:12:31', '2020-06-28 02:12:31', '', '130-15IKB_g', '', 'inherit', 'open', 'closed', '', '130-15ikb_g', '', '', '2020-06-28 03:12:31', '2020-06-28 02:12:31', '', 36, 'http://localhost/montheme/wp-content/uploads/2020/06/130-15IKB_g.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2020-06-28 03:12:39', '2020-06-28 02:12:39', '<b>Lenovo</b> (联想) est une <a title=\"Entreprise\" href=\"https://fr.wikipedia.org/wiki/Entreprise\">entreprise</a> <a class=\"mw-redirect\" title=\"République populaire de Chine\" href=\"https://fr.wikipedia.org/wiki/R%C3%A9publique_populaire_de_Chine\">chinoise</a> fabriquant principalement des <a title=\"Ordinateur\" href=\"https://fr.wikipedia.org/wiki/Ordinateur\">ordinateurs</a>, <a class=\"mw-redirect\" title=\"Téléphones\" href=\"https://fr.wikipedia.org/wiki/T%C3%A9l%C3%A9phones\">téléphones</a>, <a class=\"mw-redirect\" title=\"Stations de travail\" href=\"https://fr.wikipedia.org/wiki/Stations_de_travail\">stations de travail</a>, <a title=\"Serveur informatique\" href=\"https://fr.wikipedia.org/wiki/Serveur_informatique\">serveurs informatiques</a> et <a class=\"mw-redirect\" title=\"Télévision connectée\" href=\"https://fr.wikipedia.org/wiki/T%C3%A9l%C3%A9vision_connect%C3%A9e\">télévisions connectées</a>. Fondée en 1984 par <a title=\"Liu Chuanzhi\" href=\"https://fr.wikipedia.org/wiki/Liu_Chuanzhi\">Liu Chuanzhi</a>, la marque s\'est fait connaître mondialement en <a title=\"2005\" href=\"https://fr.wikipedia.org/wiki/2005\">2005</a> lorsqu\'elle a racheté la division informatique personnelle d\'<a title=\"IBM\" href=\"https://fr.wikipedia.org/wiki/IBM\">IBM</a>, devenant ainsi le premier constructeur mondial de PC.\r\n\r\nExample :\r\n\r\nPC PORTABLES LENOVO IDEAPAD 130 15IKB\r\n\r\n<img class=\"alignnone size-medium wp-image-37\" src=\"http://localhost/montheme/wp-content/uploads/2020/06/130-15IKB_g-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n<div class=\"bloc_sous_desc\"><span id=\"title\">IDEAPAD 130-15IKB</span></div>\r\n<div class=\"bloc_sous_desc\"><strong>Marque : </strong>Lenovo</div>\r\n<div class=\"bloc_sous_desc\"><strong>REF :</strong> <span id=\"ref\">81H700B6FG</span></div>\r\n<div class=\"description_article_single\">\r\n\r\nIntel Core i3-7020U\r\n2.30 GHz - 3 Mo cache\r\n4 Go DDR4\r\nDisque dur 1 To SATA\r\nHD LED 15.6 pouces\r\nNvidia GeForce MX110\r\n2 Go dédiés\r\n\r\n</div>', 'Lenovo', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-06-28 03:12:39', '2020-06-28 02:12:39', '', 36, 'http://localhost/montheme/2020/06/28/36-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2020-06-28 03:13:08', '2020-06-28 02:13:08', '<b>Lenovo</b> (联想) est une <a title=\"Entreprise\" href=\"https://fr.wikipedia.org/wiki/Entreprise\">entreprise</a> <a class=\"mw-redirect\" title=\"République populaire de Chine\" href=\"https://fr.wikipedia.org/wiki/R%C3%A9publique_populaire_de_Chine\">chinoise</a> fabriquant principalement des <a title=\"Ordinateur\" href=\"https://fr.wikipedia.org/wiki/Ordinateur\">ordinateurs</a>, <a class=\"mw-redirect\" title=\"Téléphones\" href=\"https://fr.wikipedia.org/wiki/T%C3%A9l%C3%A9phones\">téléphones</a>, <a class=\"mw-redirect\" title=\"Stations de travail\" href=\"https://fr.wikipedia.org/wiki/Stations_de_travail\">stations de travail</a>, <a title=\"Serveur informatique\" href=\"https://fr.wikipedia.org/wiki/Serveur_informatique\">serveurs informatiques</a> et <a class=\"mw-redirect\" title=\"Télévision connectée\" href=\"https://fr.wikipedia.org/wiki/T%C3%A9l%C3%A9vision_connect%C3%A9e\">télévisions connectées</a>. Fondée en 1984 par <a title=\"Liu Chuanzhi\" href=\"https://fr.wikipedia.org/wiki/Liu_Chuanzhi\">Liu Chuanzhi</a>,\r\n\r\nExample :\r\n\r\nPC PORTABLES LENOVO IDEAPAD 130 15IKB\r\n\r\n<img class=\"alignnone size-medium wp-image-37\" src=\"http://localhost/montheme/wp-content/uploads/2020/06/130-15IKB_g-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n<div class=\"bloc_sous_desc\"><span id=\"title\">IDEAPAD 130-15IKB</span></div>\r\n<div class=\"bloc_sous_desc\"><strong>Marque : </strong>Lenovo</div>\r\n<div class=\"bloc_sous_desc\"><strong>REF :</strong> <span id=\"ref\">81H700B6FG</span></div>\r\n<div class=\"description_article_single\">\r\n\r\nIntel Core i3-7020U\r\n2.30 GHz - 3 Mo cache\r\n4 Go DDR4\r\nDisque dur 1 To SATA\r\nHD LED 15.6 pouces\r\nNvidia GeForce MX110\r\n2 Go dédiés\r\n\r\n</div>', 'Lenovo', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-06-28 03:13:08', '2020-06-28 02:13:08', '', 36, 'http://localhost/montheme/2020/06/28/36-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-06-28 03:14:02', '2020-06-28 02:14:02', '<b>Lenovo</b> (联想) est une <a title=\"Entreprise\" href=\"https://fr.wikipedia.org/wiki/Entreprise\">entreprise</a> <a class=\"mw-redirect\" title=\"République populaire de Chine\" href=\"https://fr.wikipedia.org/wiki/R%C3%A9publique_populaire_de_Chine\">chinoise</a> fabriquant principalement des <a title=\"Ordinateur\" href=\"https://fr.wikipedia.org/wiki/Ordinateur\">ordinateurs</a>, <a class=\"mw-redirect\" title=\"Téléphones\" href=\"https://fr.wikipedia.org/wiki/T%C3%A9l%C3%A9phones\">téléphones</a>, <a class=\"mw-redirect\" title=\"Stations de travail\" href=\"https://fr.wikipedia.org/wiki/Stations_de_travail\">stations de travail</a>, <a title=\"Serveur informatique\" href=\"https://fr.wikipedia.org/wiki/Serveur_informatique\">serveurs informatiques</a> et <a class=\"mw-redirect\" title=\"Télévision connectée\" href=\"https://fr.wikipedia.org/wiki/T%C3%A9l%C3%A9vision_connect%C3%A9e\">télévisions connectées</a>. Fondée en 1984 par <a title=\"Liu Chuanzhi\" href=\"https://fr.wikipedia.org/wiki/Liu_Chuanzhi\">Liu Chuanzhi</a>,\r\n\r\nExample :\r\n\r\n&nbsp;\r\n\r\n<strong>PC PORTABLES LENOVO IDEAPAD 130 15IKB</strong>\r\n\r\n<img class=\"alignnone size-medium wp-image-37\" src=\"http://localhost/montheme/wp-content/uploads/2020/06/130-15IKB_g-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n<div class=\"bloc_sous_desc\"><span id=\"title\">IDEAPAD 130-15IKB</span></div>\r\n<div class=\"bloc_sous_desc\"><strong>Marque : </strong>Lenovo</div>\r\n<div class=\"bloc_sous_desc\"><strong>REF :</strong> <span id=\"ref\">81H700B6FG</span></div>\r\n<div class=\"description_article_single\">\r\n\r\nIntel Core i3-7020U\r\n2.30 GHz - 3 Mo cache\r\n4 Go DDR4\r\nDisque dur 1 To SATA\r\nHD LED 15.6 pouces\r\nNvidia GeForce MX110\r\n2 Go dédiés\r\n\r\n</div>', 'Lenovo', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-06-28 03:14:02', '2020-06-28 02:14:02', '', 36, 'http://localhost/montheme/2020/06/28/36-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2020-06-28 03:14:27', '2020-06-28 02:14:27', '<b>Lenovo</b> (联想) est une <a title=\"Entreprise\" href=\"https://fr.wikipedia.org/wiki/Entreprise\">entreprise</a> <a class=\"mw-redirect\" title=\"République populaire de Chine\" href=\"https://fr.wikipedia.org/wiki/R%C3%A9publique_populaire_de_Chine\">chinoise</a> fabriquant principalement des <a title=\"Ordinateur\" href=\"https://fr.wikipedia.org/wiki/Ordinateur\">ordinateurs</a>, <a class=\"mw-redirect\" title=\"Téléphones\" href=\"https://fr.wikipedia.org/wiki/T%C3%A9l%C3%A9phones\">téléphones</a>, <a class=\"mw-redirect\" title=\"Stations de travail\" href=\"https://fr.wikipedia.org/wiki/Stations_de_travail\">stations de travail</a>, <a title=\"Serveur informatique\" href=\"https://fr.wikipedia.org/wiki/Serveur_informatique\">serveurs informatiques</a> et <a class=\"mw-redirect\" title=\"Télévision connectée\" href=\"https://fr.wikipedia.org/wiki/T%C3%A9l%C3%A9vision_connect%C3%A9e\">télévisions connectées</a>. Fondée en 1984 par <a title=\"Liu Chuanzhi\" href=\"https://fr.wikipedia.org/wiki/Liu_Chuanzhi\">Liu Chuanzhi</a>,\r\n\r\nExample :\r\n\r\n<strong>PC PORTABLES LENOVO IDEAPAD 130 15IKB</strong>\r\n\r\n<img class=\"alignnone size-medium wp-image-37\" src=\"http://localhost/montheme/wp-content/uploads/2020/06/130-15IKB_g-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n<div class=\"bloc_sous_desc\"><span id=\"title\">IDEAPAD 130-15IKB</span></div>\r\n<div class=\"bloc_sous_desc\"><strong>Marque : </strong>Lenovo</div>\r\n<div class=\"bloc_sous_desc\"><strong>REF :</strong> <span id=\"ref\">81H700B6FG</span></div>\r\n<div class=\"description_article_single\">\r\n\r\nIntel Core i3-7020U\r\n2.30 GHz - 3 Mo cache\r\n4 Go DDR4\r\nDisque dur 1 To SATA\r\nHD LED 15.6 pouces\r\nNvidia GeForce MX110\r\n2 Go dédiés\r\n\r\n</div>', 'Lenovo', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-06-28 03:14:27', '2020-06-28 02:14:27', '', 36, 'http://localhost/montheme/2020/06/28/36-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0),
(2, 'Menu', 'menu', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(9, 1, 0),
(17, 1, 0),
(25, 2, 0),
(26, 2, 0),
(30, 2, 0),
(36, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
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
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'amine12'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"c79d99f71743fef0056e172feb494146124d1d7774a0acbc1d94fe774e91827a\";a:4:{s:10:\"expiration\";i:1594495311;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36\";s:5:\"login\";i:1593285711;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'meta-box-order_post', 'a:3:{s:4:\"side\";s:38:\"submitdiv,categorydiv,tagsdiv-post_tag\";s:6:\"normal\";s:83:\"postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(19, 1, 'screen_layout_post', '2'),
(20, 1, 'closedpostboxes_post', 'a:2:{i:0;s:11:\"categorydiv\";i:1;s:16:\"tagsdiv-post_tag\";}'),
(21, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(23, 1, 'wp_user-settings-time', '1593308088'),
(24, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(25, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(26, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
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
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'amine12', '$P$BJtEmX2/j5PqYdO6RaYSqrXVQjSHJe1', 'amine12', 'bra15226@gmail.Com', 'http://localhost/montheme', '2020-06-27 19:21:32', '', 0, 'amine12');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
