-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 20 mai 2021 à 13:59
-- Version du serveur :  5.7.32
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données : `genesis`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://badminton.lan/api', 'yes'),
(2, 'home', 'http://badminton.lan/api', 'yes'),
(3, 'blogname', 'Ligue Hauts de France Badminton', 'yes'),
(4, 'blogdescription', 'Site internet de la Ligue de Badminton Hauts de France : Actualités clubs, Ligue, Compétitions, Clubs, arbitrage, Formation, etc.', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'hugo@test.fr', 'yes'),
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
(24, 'time_format', 'G\\hi', 'yes'),
(25, 'links_updated_date_format', 'd F Y G\\hi', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:213:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:32:\"news/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"news/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"news/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"news/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"news/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"news/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"news/([^/]+)/embed/?$\";s:37:\"index.php?news=$matches[1]&embed=true\";s:25:\"news/([^/]+)/trackback/?$\";s:31:\"index.php?news=$matches[1]&tb=1\";s:33:\"news/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?news=$matches[1]&paged=$matches[2]\";s:40:\"news/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?news=$matches[1]&cpage=$matches[2]\";s:29:\"news/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?news=$matches[1]&page=$matches[2]\";s:21:\"news/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"news/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"news/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"news/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"news/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"news/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"sponsor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"sponsor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"sponsor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"sponsor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"sponsor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"sponsor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"sponsor/([^/]+)/embed/?$\";s:40:\"index.php?sponsor=$matches[1]&embed=true\";s:28:\"sponsor/([^/]+)/trackback/?$\";s:34:\"index.php?sponsor=$matches[1]&tb=1\";s:36:\"sponsor/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?sponsor=$matches[1]&paged=$matches[2]\";s:43:\"sponsor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?sponsor=$matches[1]&cpage=$matches[2]\";s:32:\"sponsor/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?sponsor=$matches[1]&page=$matches[2]\";s:24:\"sponsor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"sponsor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"sponsor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"sponsor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"sponsor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"sponsor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"event/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"event/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"event/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"event/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"event/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"event/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"event/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:26:\"event/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:34:\"event/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:41:\"event/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:30:\"event/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:22:\"event/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"event/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"event/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"event/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"event/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"event/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"member/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"member/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"member/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"member/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"member/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"member/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"member/([^/]+)/embed/?$\";s:39:\"index.php?member=$matches[1]&embed=true\";s:27:\"member/([^/]+)/trackback/?$\";s:33:\"index.php?member=$matches[1]&tb=1\";s:35:\"member/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?member=$matches[1]&paged=$matches[2]\";s:42:\"member/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?member=$matches[1]&cpage=$matches[2]\";s:31:\"member/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?member=$matches[1]&page=$matches[2]\";s:23:\"member/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"member/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"member/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"member/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"member/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"member/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"documents/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"documents/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"documents/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"documents/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"documents/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"documents/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"documents/([^/]+)/embed/?$\";s:42:\"index.php?documents=$matches[1]&embed=true\";s:30:\"documents/([^/]+)/trackback/?$\";s:36:\"index.php?documents=$matches[1]&tb=1\";s:38:\"documents/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?documents=$matches[1]&paged=$matches[2]\";s:45:\"documents/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?documents=$matches[1]&cpage=$matches[2]\";s:34:\"documents/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?documents=$matches[1]&page=$matches[2]\";s:26:\"documents/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"documents/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"documents/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"documents/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"documents/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"documents/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"content/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"content/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"content/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"content/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"content/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"content/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"content/([^/]+)/embed/?$\";s:40:\"index.php?content=$matches[1]&embed=true\";s:28:\"content/([^/]+)/trackback/?$\";s:34:\"index.php?content=$matches[1]&tb=1\";s:36:\"content/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?content=$matches[1]&paged=$matches[2]\";s:43:\"content/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?content=$matches[1]&cpage=$matches[2]\";s:32:\"content/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?content=$matches[1]&page=$matches[2]\";s:24:\"content/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"content/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"content/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"content/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"content/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"content/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"interclubs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"interclubs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"interclubs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"interclubs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"interclubs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"interclubs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"interclubs/([^/]+)/embed/?$\";s:43:\"index.php?interclubs=$matches[1]&embed=true\";s:31:\"interclubs/([^/]+)/trackback/?$\";s:37:\"index.php?interclubs=$matches[1]&tb=1\";s:39:\"interclubs/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?interclubs=$matches[1]&paged=$matches[2]\";s:46:\"interclubs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?interclubs=$matches[1]&cpage=$matches[2]\";s:35:\"interclubs/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?interclubs=$matches[1]&page=$matches[2]\";s:27:\"interclubs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"interclubs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"interclubs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"interclubs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"interclubs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"interclubs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:41:\"acf-to-rest-api/class-acf-to-rest-api.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:96:\"/Applications/MAMP/htdocs/badminton/public/api/wp-content/plugins/advanced-custom-fields/acf.php\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'blankslate', 'yes'),
(41, 'stylesheet', 'blankslate', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
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
(76, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:45:\"custom-facebook-feed/custom-facebook-feed.php\";a:2:{i:0;s:39:\"CustomFacebookFeed\\Custom_Facebook_Feed\";i:1;s:13:\"cff_uninstall\";}}', 'no'),
(80, 'timezone_string', 'Europe/Paris', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1630498279', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', 'fr_FR', 'yes'),
(102, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"primary-widget-area\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(108, 'cron', 'a:8:{i:1621519879;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1621544248;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1621555879;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1621599079;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1621599086;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1621599088;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1621685479;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
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
(121, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1614952988;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(138, 'can_compress_scripts', '1', 'no'),
(155, 'finished_updating_comment_type', '1', 'yes'),
(160, 'new_admin_email', 'hugo@test.fr', 'yes'),
(173, 'current_theme', 'BlankSlate', 'yes'),
(174, 'theme_mods_blankslate', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(175, 'theme_switched', '', 'yes'),
(180, '_transient_health-check-site-status-result', '{\"good\":\"12\",\"recommended\":\"6\",\"critical\":\"2\"}', 'yes'),
(191, 'recently_activated', 'a:0:{}', 'yes'),
(200, 'acf_version', '5.9.5', 'yes'),
(203, 'cptui_new_install', 'false', 'yes'),
(221, 'cff_error_reporter', 'a:7:{s:10:\"connection\";a:0:{}s:8:\"resizing\";a:0:{}s:15:\"database_create\";a:0:{}s:10:\"upload_dir\";a:0:{}s:8:\"accounts\";a:0:{}s:9:\"error_log\";a:0:{}s:10:\"action_log\";a:5:{i:0;s:47:\"03-08 08:38:45 - Connection or updating account\";i:1;s:53:\"03-08 08:39:12 - Saved settings on the configure tab.\";i:2;s:47:\"03-08 08:39:12 - Connection or updating account\";i:3;s:53:\"03-08 08:39:53 - Saved settings on the configure tab.\";i:4;s:47:\"03-08 08:39:53 - Connection or updating account\";}}', 'no'),
(224, 'cff_connected_accounts', '{\\\"665108986987003\\\":{\\\"id\\\":\\\"665108986987003\\\",\\\"name\\\":\\\"Badminton%20Club%20Hersin%20Coupigny\\\",\\\"pagetype\\\":\\\"page\\\",\\\"accesstoken\\\":\\\"EAAS8LGISx9wBAN1PTIryqQAoY5kI3DNSJlcZB6ojJeYnDNXP3OI8TewyCckctLJKJvlimkZB3RnyNFeLj105nMydZCWgLqySTWLSeBCDrgZCjBhnkviYoXIIQNx7dAH4T0St7XxZC0Ynt8Xww7epueu00b3ApIlkRto62mPSyRcIGTifutvrx\\\",\\\"avatar\\\":\\\"\\\"}}', 'yes'),
(225, 'cff_page_type', 'page', 'yes'),
(236, '_transient_timeout_cff_ppca_admin_token_check', '1646728794', 'no'),
(237, '_transient_cff_ppca_admin_token_check', '1', 'no'),
(238, '_transient_timeout_cff_ppca_admin_check', '1646728798', 'no'),
(239, '_transient_cff_ppca_admin_check', '{\"data\":[{\"created_time\":\"2021-01-19T18:38:43+0000\",\"message\":\"Bonsoir \\u00e0 tous, concernant les entrainements jeunes, au regard des restrictions gouvernementales et de l\\u2019interdiction de pratiquer une activit\\u00e9 physique et sportive dans un espace clos, il n\\u2019y a plus d\\u2019entra\\u00eenement jusqu\\u2019\\u00e0 nouvel ordre du gouvernement. \\nCordialement, \\u00e0 tr\\u00e8s bient\\u00f4t nous esp\\u00e9rons.\\nL\\u2019\\u00e9quipe BCHC\",\"id\":\"665108986987003_1848385901992633\"}],\"paging\":{\"cursors\":{\"before\":\"QVFIUk43bFNLTHZA4akZAiYmRyN0stNWRmdWxsbDRONkVQN0c1UXRZAbTNhdEU3eUVrdlhySTBRMk5QaXl1ZAGlObWdNdzdxUTNvTVRTWkdsWVN0WWNjeG9GN2E4R0E3d2NPWGlWVHpVV2V2MVIyYkR2MXpDN0FDazZAQdjlXdzNuLTR3clRi\",\"after\":\"QVFIUk43bFNLTHZA4akZAiYmRyN0stNWRmdWxsbDRONkVQN0c1UXRZAbTNhdEU3eUVrdlhySTBRMk5QaXl1ZAGlObWdNdzdxUTNvTVRTWkdsWVN0WWNjeG9GN2E4R0E3d2NPWGlWVHpVV2V2MVIyYkR2MXpDN0FDazZAQdjlXdzNuLTR3clRi\"},\"next\":\"https:\\/\\/graph.facebook.com\\/v8.0\\/665108986987003\\/posts?access_token=EAAS8LGISx9wBAN1PTIryqQAoY5kI3DNSJlcZB6ojJeYnDNXP3OI8TewyCckctLJKJvlimkZB3RnyNFeLj105nMydZCWgLqySTWLSeBCDrgZCjBhnkviYoXIIQNx7dAH4T0St7XxZC0Ynt8Xww7epueu00b3ApIlkRto62mPSyRcIGTifutvrx&limit=1&after=QVFIUk43bFNLTHZA4akZAiYmRyN0stNWRmdWxsbDRONkVQN0c1UXRZAbTNhdEU3eUVrdlhySTBRMk5QaXl1ZAGlObWdNdzdxUTNvTVRTWkdsWVN0WWNjeG9GN2E4R0E3d2NPWGlWVHpVV2V2MVIyYkR2MXpDN0FDazZAQdjlXdzNuLTR3clRi\"}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(243, 'cptui_post_types', 'a:7:{s:4:\"news\";a:30:{s:4:\"name\";s:4:\"news\";s:5:\"label\";s:11:\"Actualités\";s:14:\"singular_label\";s:10:\"Actualité\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:2:{i:0;s:5:\"title\";i:1;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:1:{i:0;s:8:\"category\";}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:7:\"sponsor\";a:30:{s:4:\"name\";s:7:\"sponsor\";s:5:\"label\";s:11:\"Partenaires\";s:14:\"singular_label\";s:10:\"Partenaire\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:2:{i:0;s:5:\"title\";i:1;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:5:\"event\";a:30:{s:4:\"name\";s:5:\"event\";s:5:\"label\";s:12:\"Évènements\";s:14:\"singular_label\";s:11:\"Évènement\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:2:{i:0;s:5:\"title\";i:1;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:6:\"member\";a:30:{s:4:\"name\";s:6:\"member\";s:5:\"label\";s:9:\"Employés\";s:14:\"singular_label\";s:8:\"Employé\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:2:{i:0;s:5:\"title\";i:1;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:1:{i:0;s:8:\"category\";}s:6:\"labels\";a:30:{s:9:\"menu_name\";s:9:\"Employés\";s:9:\"all_items\";s:18:\"Tous les Employés\";s:7:\"add_new\";s:18:\"Ajouter un nouveau\";s:12:\"add_new_item\";s:27:\"Ajouter un nouveau Employé\";s:9:\"edit_item\";s:17:\"Modifier Employé\";s:8:\"new_item\";s:16:\"Nouveau Employé\";s:9:\"view_item\";s:13:\"Voir Employé\";s:10:\"view_items\";s:14:\"Voir Employés\";s:12:\"search_items\";s:22:\"Recherche de Employés\";s:9:\"not_found\";s:23:\"Aucun Employés trouvé\";s:18:\"not_found_in_trash\";s:41:\"Aucun Employés trouvé dans la corbeille\";s:6:\"parent\";s:17:\"Parent Employé :\";s:14:\"featured_image\";s:36:\"Image mise en avant pour ce Employé\";s:18:\"set_featured_image\";s:49:\"Définir l’image mise en avant pour ce Employé\";s:21:\"remove_featured_image\";s:48:\"Retirer l’image mise en avant pour ce Employé\";s:18:\"use_featured_image\";s:51:\"Utiliser comme image mise en avant pour ce Employé\";s:8:\"archives\";s:20:\"Archives de Employé\";s:16:\"insert_into_item\";s:22:\"Insérer dans Employé\";s:21:\"uploaded_to_this_item\";s:28:\"Téléverser sur ce Employé\";s:17:\"filter_items_list\";s:29:\"Filtrer la liste de Employés\";s:21:\"items_list_navigation\";s:32:\"Navigation de liste de Employés\";s:10:\"items_list\";s:18:\"Liste de Employés\";s:10:\"attributes\";s:22:\"Attributs de Employés\";s:14:\"name_admin_bar\";s:8:\"Employé\";s:14:\"item_published\";s:16:\"Employé publié\";s:24:\"item_published_privately\";s:27:\"Employé publié en privé.\";s:22:\"item_reverted_to_draft\";s:32:\"Employé repassés en brouillon.\";s:14:\"item_scheduled\";s:18:\"Employé planifié\";s:12:\"item_updated\";s:21:\"Employé mis à jour.\";s:17:\"parent_item_colon\";s:17:\"Parent Employé :\";}s:15:\"custom_supports\";s:0:\"\";}s:9:\"documents\";a:30:{s:4:\"name\";s:9:\"documents\";s:5:\"label\";s:9:\"Documents\";s:14:\"singular_label\";s:8:\"Document\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:1:{i:0;s:5:\"title\";}s:10:\"taxonomies\";a:1:{i:0;s:8:\"category\";}s:6:\"labels\";a:30:{s:9:\"menu_name\";s:9:\"Documents\";s:9:\"all_items\";s:18:\"Tous les Documents\";s:7:\"add_new\";s:18:\"Ajouter un nouveau\";s:12:\"add_new_item\";s:27:\"Ajouter un nouveau Document\";s:9:\"edit_item\";s:17:\"Modifier Document\";s:8:\"new_item\";s:16:\"Nouveau Document\";s:9:\"view_item\";s:13:\"Voir Document\";s:10:\"view_items\";s:14:\"Voir Documents\";s:12:\"search_items\";s:22:\"Recherche de Documents\";s:9:\"not_found\";s:23:\"Aucun Documents trouvé\";s:18:\"not_found_in_trash\";s:41:\"Aucun Documents trouvé dans la corbeille\";s:6:\"parent\";s:17:\"Parent Document :\";s:14:\"featured_image\";s:36:\"Image mise en avant pour ce Document\";s:18:\"set_featured_image\";s:49:\"Définir l’image mise en avant pour ce Document\";s:21:\"remove_featured_image\";s:48:\"Retirer l’image mise en avant pour ce Document\";s:18:\"use_featured_image\";s:51:\"Utiliser comme image mise en avant pour ce Document\";s:8:\"archives\";s:20:\"Archives de Document\";s:16:\"insert_into_item\";s:22:\"Insérer dans Document\";s:21:\"uploaded_to_this_item\";s:28:\"Téléverser sur ce Document\";s:17:\"filter_items_list\";s:29:\"Filtrer la liste de Documents\";s:21:\"items_list_navigation\";s:32:\"Navigation de liste de Documents\";s:10:\"items_list\";s:18:\"Liste de Documents\";s:10:\"attributes\";s:22:\"Attributs de Documents\";s:14:\"name_admin_bar\";s:8:\"Document\";s:14:\"item_published\";s:16:\"Document publié\";s:24:\"item_published_privately\";s:27:\"Document publié en privé.\";s:22:\"item_reverted_to_draft\";s:32:\"Document repassés en brouillon.\";s:14:\"item_scheduled\";s:18:\"Document planifié\";s:12:\"item_updated\";s:21:\"Document mis à jour.\";s:17:\"parent_item_colon\";s:17:\"Parent Document :\";}s:15:\"custom_supports\";s:0:\"\";}s:7:\"content\";a:30:{s:4:\"name\";s:7:\"content\";s:5:\"label\";s:8:\"Contenus\";s:14:\"singular_label\";s:7:\"Contenu\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:1:{i:0;s:5:\"title\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:30:{s:9:\"menu_name\";s:7:\"Contenu\";s:9:\"all_items\";s:17:\"Tous les Contenus\";s:7:\"add_new\";s:18:\"Ajouter un nouveau\";s:12:\"add_new_item\";s:26:\"Ajouter un nouveau Contenu\";s:9:\"edit_item\";s:16:\"Modifier Contenu\";s:8:\"new_item\";s:15:\"Nouveau Contenu\";s:9:\"view_item\";s:12:\"Voir Contenu\";s:10:\"view_items\";s:13:\"Voir Contenus\";s:12:\"search_items\";s:21:\"Recherche de Contenus\";s:9:\"not_found\";s:22:\"Aucun Contenus trouvé\";s:18:\"not_found_in_trash\";s:40:\"Aucun Contenus trouvé dans la corbeille\";s:6:\"parent\";s:16:\"Parent Contenu :\";s:14:\"featured_image\";s:35:\"Image mise en avant pour ce Contenu\";s:18:\"set_featured_image\";s:48:\"Définir l’image mise en avant pour ce Contenu\";s:21:\"remove_featured_image\";s:47:\"Retirer l’image mise en avant pour ce Contenu\";s:18:\"use_featured_image\";s:50:\"Utiliser comme image mise en avant pour ce Contenu\";s:8:\"archives\";s:19:\"Archives de Contenu\";s:16:\"insert_into_item\";s:21:\"Insérer dans Contenu\";s:21:\"uploaded_to_this_item\";s:27:\"Téléverser sur ce Contenu\";s:17:\"filter_items_list\";s:28:\"Filtrer la liste de Contenus\";s:21:\"items_list_navigation\";s:31:\"Navigation de liste de Contenus\";s:10:\"items_list\";s:17:\"Liste de Contenus\";s:10:\"attributes\";s:21:\"Attributs de Contenus\";s:14:\"name_admin_bar\";s:7:\"Contenu\";s:14:\"item_published\";s:15:\"Contenu publié\";s:24:\"item_published_privately\";s:26:\"Contenu publié en privé.\";s:22:\"item_reverted_to_draft\";s:31:\"Contenu repassés en brouillon.\";s:14:\"item_scheduled\";s:17:\"Contenu planifié\";s:12:\"item_updated\";s:20:\"Contenu mis à jour.\";s:17:\"parent_item_colon\";s:16:\"Parent Contenu :\";}s:15:\"custom_supports\";s:0:\"\";}s:10:\"interclubs\";a:30:{s:4:\"name\";s:10:\"interclubs\";s:5:\"label\";s:10:\"interclubs\";s:14:\"singular_label\";s:9:\"interclub\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:1:{i:0;s:5:\"title\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:30:{s:9:\"menu_name\";s:10:\"Interclubs\";s:9:\"all_items\";s:19:\"Tous les interclubs\";s:7:\"add_new\";s:18:\"Ajouter un nouveau\";s:12:\"add_new_item\";s:28:\"Ajouter un nouveau interclub\";s:9:\"edit_item\";s:18:\"Modifier interclub\";s:8:\"new_item\";s:17:\"Nouveau interclub\";s:9:\"view_item\";s:14:\"Voir interclub\";s:10:\"view_items\";s:15:\"Voir interclubs\";s:12:\"search_items\";s:23:\"Recherche de interclubs\";s:9:\"not_found\";s:24:\"Aucun interclubs trouvé\";s:18:\"not_found_in_trash\";s:42:\"Aucun interclubs trouvé dans la corbeille\";s:6:\"parent\";s:18:\"Parent interclub :\";s:14:\"featured_image\";s:37:\"Image mise en avant pour ce interclub\";s:18:\"set_featured_image\";s:50:\"Définir l’image mise en avant pour ce interclub\";s:21:\"remove_featured_image\";s:49:\"Retirer l’image mise en avant pour ce interclub\";s:18:\"use_featured_image\";s:52:\"Utiliser comme image mise en avant pour ce interclub\";s:8:\"archives\";s:21:\"Archives de interclub\";s:16:\"insert_into_item\";s:23:\"Insérer dans interclub\";s:21:\"uploaded_to_this_item\";s:29:\"Téléverser sur ce interclub\";s:17:\"filter_items_list\";s:30:\"Filtrer la liste de interclubs\";s:21:\"items_list_navigation\";s:33:\"Navigation de liste de interclubs\";s:10:\"items_list\";s:19:\"Liste de interclubs\";s:10:\"attributes\";s:23:\"Attributs de interclubs\";s:14:\"name_admin_bar\";s:9:\"interclub\";s:14:\"item_published\";s:17:\"interclub publié\";s:24:\"item_published_privately\";s:28:\"interclub publié en privé.\";s:22:\"item_reverted_to_draft\";s:33:\"interclub repassés en brouillon.\";s:14:\"item_scheduled\";s:19:\"interclub planifié\";s:12:\"item_updated\";s:22:\"interclub mis à jour.\";s:17:\"parent_item_colon\";s:18:\"Parent interclub :\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(294, 'widget_wpp', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(336, 'dismissed_update_core', 'a:1:{s:9:\"5.7|fr_FR\";b:1;}', 'no'),
(429, 'category_children', 'a:3:{i:7;a:2:{i:0;i:1;i:1;i:2;}i:8;a:3:{i:0;i:9;i:1;i:10;i:2;i:11;}i:12;a:2:{i:0;i:13;i:1;i:14;}}', 'yes'),
(437, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:28:\"La demande HTTPS a échoué.\";}}', 'yes'),
(438, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.7.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7.2-partial-0.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:3:\"5.7\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7.2-partial-0.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.2-rollback-0.zip\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:3:\"5.7\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1621518115;s:15:\"version_checked\";s:3:\"5.7\";s:12:\"translations\";a:0:{}}', 'no'),
(440, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1621518117;s:7:\"checked\";a:1:{s:10:\"blankslate\";s:6:\"2019.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:10:\"blankslate\";a:6:{s:5:\"theme\";s:10:\"blankslate\";s:11:\"new_version\";s:6:\"2019.1\";s:3:\"url\";s:40:\"https://wordpress.org/themes/blankslate/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/blankslate.2019.1.zip\";s:8:\"requires\";s:3:\"5.1\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}}', 'no'),
(457, '_site_transient_timeout_php_check_9dfe9c1407d8720f2aa82fbeb25ecdd3', '1622020228', 'no'),
(458, '_site_transient_php_check_9dfe9c1407d8720f2aa82fbeb25ecdd3', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(463, '_site_transient_timeout_theme_roots', '1621519916', 'no'),
(464, '_site_transient_theme_roots', 'a:1:{s:10:\"blankslate\";s:7:\"/themes\";}', 'no'),
(465, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1621518118;s:7:\"checked\";a:3:{s:41:\"acf-to-rest-api/class-acf-to-rest-api.php\";s:5:\"3.3.2\";s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.5\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.9.0\";}s:8:\"response\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.6\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.9.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.9.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.0\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:41:\"acf-to-rest-api/class-acf-to-rest-api.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/acf-to-rest-api\";s:4:\"slug\";s:15:\"acf-to-rest-api\";s:6:\"plugin\";s:41:\"acf-to-rest-api/class-acf-to-rest-api.php\";s:11:\"new_version\";s:5:\"3.3.2\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/acf-to-rest-api/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/acf-to-rest-api.3.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/acf-to-rest-api/assets/icon-256x256.jpg?rev=1752896\";s:2:\"1x\";s:68:\"https://ps.w.org/acf-to-rest-api/assets/icon-128x128.jpg?rev=1752896\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/acf-to-rest-api/assets/banner-1544x500.jpg?rev=1752896\";s:2:\"1x\";s:70:\"https://ps.w.org/acf-to-rest-api/assets/banner-772x250.jpg?rev=1752896\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(466, '_site_transient_timeout_browser_d4c1e920889548df46b87e9cbfe04e4a', '1622123026', 'no'),
(467, '_site_transient_browser_d4c1e920889548df46b87e9cbfe04e4a', 'a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:6:\"13.1.3\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.apple.com/safari/\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/safari.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/safari.png?1\";s:15:\"current_version\";s:2:\"11\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(4, 5, '_wp_attached_file', '2021/03/placeholder.jpg'),
(5, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:589;s:4:\"file\";s:23:\"2021/03/placeholder.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"placeholder-300x177.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"placeholder-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"placeholder-768x452.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:452;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(20, 5, '_cff_oembed_done_checking', '1'),
(58, 32, '_edit_lock', '1615289365:1'),
(59, 32, '_edit_last', '1'),
(60, 34, '_edit_lock', '1615226672:1'),
(61, 34, '_edit_last', '1'),
(65, 34, 'content', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(66, 34, '_content', 'field_6046133c10d24'),
(67, 34, '_cff_oembed_done_checking', '1'),
(69, 36, '_edit_lock', '1615226024:1'),
(70, 36, '_edit_last', '1'),
(71, 36, 'content', 'Lorem Elsass ipsum commodo yeuh. libero. Christkindelsmärik barapli risus, quam. nüdle jetz gehts los blottkopf, gravida wurscht id, gewurztraminer schpeck knepfle so ante schneck Richard Schirmeck hopla Chulien ch\'ai salu wie chambon sagittis elementum gal morbi mänele turpis tristique Chulia Roberstau habitant tchao bissame schnaps baeckeoffe  amet messti de Bischheim ornare dignissim Racing. tellus kartoffelsalad hop aliquam consectetur leo vielmols, leverwurscht vulputate rhoncus semper Strasbourg sed Pellentesque et sed rossbolla bissame Morbi varius knack non rucksack merci vielmols in, amet tellus purus geïz Heineken geht\'s Miss Dahlias Hans auctor, sit eget senectus ornare pellentesque ullamcorper Carola mamsell suspendisse flammekueche amet, und kougelhopf hopla Pfourtz ! '),
(72, 36, '_content', 'field_6046133c10d24'),
(73, 36, '_cff_oembed_done_checking', '1'),
(74, 36, '_thumbnail_id', '5'),
(77, 39, '_wp_attached_file', '2021/03/Capture-décran-2021-03-08-à-13.55.53.png'),
(78, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2736;s:6:\"height\";i:694;s:4:\"file\";s:52:\"2021/03/Capture-décran-2021-03-08-à-13.55.53.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"Capture-décran-2021-03-08-à-13.55.53-300x76.png\";s:5:\"width\";i:300;s:6:\"height\";i:76;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:53:\"Capture-décran-2021-03-08-à-13.55.53-1024x260.png\";s:5:\"width\";i:1024;s:6:\"height\";i:260;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"Capture-décran-2021-03-08-à-13.55.53-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:53:\"Capture-décran-2021-03-08-à-13.55.53-1536x390.png\";s:5:\"width\";i:1536;s:6:\"height\";i:390;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:53:\"Capture-décran-2021-03-08-à-13.55.53-2048x519.png\";s:5:\"width\";i:2048;s:6:\"height\";i:519;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(79, 40, '_wp_attached_file', '2021/03/logo_badmania_shaft.png'),
(80, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3112;s:6:\"height\";i:787;s:4:\"file\";s:31:\"2021/03/logo_badmania_shaft.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"logo_badmania_shaft-300x76.png\";s:5:\"width\";i:300;s:6:\"height\";i:76;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"logo_badmania_shaft-1024x259.png\";s:5:\"width\";i:1024;s:6:\"height\";i:259;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"logo_badmania_shaft-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"logo_badmania_shaft-1536x388.png\";s:5:\"width\";i:1536;s:6:\"height\";i:388;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:32:\"logo_badmania_shaft-2048x518.png\";s:5:\"width\";i:2048;s:6:\"height\";i:518;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81, 41, '_wp_attached_file', '2021/03/Logo-Yonex.svg_.png'),
(82, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:334;s:4:\"file\";s:27:\"2021/03/Logo-Yonex.svg_.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"Logo-Yonex.svg_-300x84.png\";s:5:\"width\";i:300;s:6:\"height\";i:84;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"Logo-Yonex.svg_-1024x285.png\";s:5:\"width\";i:1024;s:6:\"height\";i:285;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Logo-Yonex.svg_-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 43, '_edit_lock', '1615208144:1'),
(94, 43, '_edit_last', '1'),
(95, 43, '_thumbnail_id', '40'),
(96, 44, '_edit_lock', '1615208155:1'),
(97, 44, '_edit_last', '1'),
(98, 44, '_thumbnail_id', '39'),
(99, 45, '_edit_lock', '1615208574:1'),
(100, 45, '_edit_last', '1'),
(101, 45, '_thumbnail_id', '41'),
(102, 45, '_cff_oembed_done_checking', '1'),
(103, 44, '_cff_oembed_done_checking', '1'),
(104, 43, '_cff_oembed_done_checking', '1'),
(105, 41, '_cff_oembed_done_checking', '1'),
(106, 39, '_cff_oembed_done_checking', '1'),
(107, 40, '_cff_oembed_done_checking', '1'),
(114, 52, '_edit_lock', '1615289369:1'),
(115, 52, '_edit_last', '1'),
(117, 55, '_edit_lock', '1615226957:1'),
(118, 55, '_edit_last', '1'),
(119, 55, 'date', '20210325'),
(120, 55, '_date', 'field_604628f1b3b1c'),
(121, 55, 'resume', 'Salut tous le monde !'),
(122, 55, '_resume', 'field_60462a93e2730'),
(124, 58, '_edit_lock', '1617889067:1'),
(125, 58, '_edit_last', '1'),
(126, 58, '_thumbnail_id', '5'),
(127, 58, 'date', '20210328'),
(128, 58, '_date', 'field_604628f1b3b1c'),
(129, 58, 'resume', 'Participez à notre tout nouveau tournoi !'),
(130, 58, '_resume', 'field_60462a93e2730'),
(131, 59, '_edit_lock', '1615226019:1'),
(132, 59, '_edit_last', '1'),
(133, 59, '_thumbnail_id', '5'),
(134, 59, 'content', 'Lorem Elsass ipsum commodo yeuh. libero. Christkindelsmärik barapli risus, quam. nüdle jetz gehts los blottkopf, gravida wurscht id, gewurztraminer schpeck knepfle so ante schneck Richard Schirmeck hopla Chulien ch\'ai salu wie chambon sagittis elementum gal morbi mänele turpis tristique Chulia Roberstau habitant tchao bissame schnaps baeckeoffe  amet messti de Bischheim ornare dignissim Racing.\r\n\r\nTellus kartoffelsalad hop aliquam consectetur leo vielmols, leverwurscht vulputate rhoncus semper Strasbourg sed Pellentesque et sed rossbolla bissame Morbi varius knack non rucksack merci vielmols in, amet tellus purus geïz Heineken geht\'s Miss Dahlias Hans auctor, sit eget senectus ornare pellentesque ullamcorper Carola mamsell suspendisse flammekueche amet, und kougelhopf hopla Pfourtz ! '),
(135, 59, '_content', 'field_6046133c10d24'),
(146, 60, '_wp_attached_file', '2021/03/3aef3.jpg'),
(147, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:589;s:4:\"file\";s:17:\"2021/03/3aef3.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"3aef3-300x177.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"3aef3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(148, 34, '_thumbnail_id', '60'),
(149, 55, '_thumbnail_id', '60'),
(158, 72, '_edit_lock', '1617915394:1'),
(159, 72, '_edit_last', '1'),
(160, 73, '_edit_lock', '1617889366:1'),
(161, 73, '_edit_last', '1'),
(162, 75, '_wp_attached_file', '2021/04/apoev180600134.jpg'),
(163, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:367;s:6:\"height\";i:450;s:4:\"file\";s:26:\"2021/04/apoev180600134.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"apoev180600134-245x300.jpg\";s:5:\"width\";i:245;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"apoev180600134-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(164, 72, '_thumbnail_id', '75'),
(165, 72, 'fonction', 'Directeur Général'),
(166, 72, '_fonction', 'field_606f0804e7cb4'),
(167, 76, '_edit_lock', '1617915387:1'),
(168, 76, '_edit_last', '1'),
(169, 76, '_thumbnail_id', '75'),
(170, 76, 'fonction', 'Directeur Général'),
(171, 76, '_fonction', 'field_606f0804e7cb4'),
(172, 77, '_edit_lock', '1617915376:1'),
(173, 77, '_edit_last', '1'),
(174, 77, '_thumbnail_id', '75'),
(175, 77, 'fonction', 'Directeur Général'),
(176, 77, '_fonction', 'field_606f0804e7cb4'),
(182, 79, '_edit_lock', '1617892356:1'),
(183, 79, '_edit_last', '1'),
(184, 82, '_edit_lock', '1617892599:1'),
(185, 82, '_edit_last', '1'),
(186, 83, '_wp_attached_file', '2021/04/blank.pdf'),
(187, 82, 'fichier', '83'),
(188, 82, '_fichier', 'field_606f13dd44653'),
(189, 84, '_edit_lock', '1617893643:1'),
(190, 84, '_edit_last', '1'),
(191, 84, 'fichier', '83'),
(192, 84, '_fichier', 'field_606f13dd44653'),
(193, 85, '_edit_lock', '1617916322:1'),
(194, 85, '_edit_last', '1'),
(195, 89, '_edit_lock', '1617916482:1'),
(196, 89, '_edit_last', '1'),
(198, 95, '_edit_lock', '1617917544:1'),
(199, 95, '_edit_last', '1'),
(200, 96, '_wp_attached_file', '2021/04/banner.jpg'),
(201, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:805;s:4:\"file\";s:18:\"2021/04/banner.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"banner-300x236.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:236;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:28:\"Yohan Nonotte/Badmintonphoto\";s:6:\"camera\";s:22:\"Canon EOS-1D X Mark II\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1527062377\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"70\";s:3:\"iso\";s:4:\"5000\";s:13:\"shutter_speed\";s:5:\"0.001\";s:5:\"title\";s:20:\"Thomas Uber Cup 2018\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:6:{i:0;s:4:\"2018\";i:1;s:15:\"Thomas Uber Cup\";i:2;s:9:\"BWF Event\";i:3;s:6:\"France\";i:4;s:12:\"Emilie Lefel\";i:5;s:9:\"Anne Tran\";}}}'),
(202, 95, 'titre', 'Organigramme de la Ligue'),
(203, 95, '_titre', 'field_606f7010d4f86'),
(204, 95, 'description', 'La Ligue est administrée par un Conseil d’Administration qui a dans ses attributions toutes les questions se rapportant à l’organisation, à la coordination, au contrôle et au développement du Badminton. Il veille à la stricte application des règles du jeu, des règlements fédéraux et des décisions fédérales. \r\n\r\nIl organise les épreuves prévues par les règlements fédéraux et régionaux, les matches de sélection et toutes les épreuves et manifestations utiles à la diffusion et à la progression du Badminton. Il s’occupe des dossiers de demande de subvention, des relations avec le Comité Régional Olympique et Sportif.'),
(205, 95, '_description', 'field_606f701cd4f87'),
(206, 95, 'image', '96'),
(207, 95, '_image', 'field_606f702bd4f88'),
(208, 95, 'adresse', '367 Rue Jules Guesde\r\n59650 Villeneuve d’Ascq'),
(209, 95, '_adresse', 'field_606f7071aa868'),
(210, 95, 'telephone', '03 20 91 18 02'),
(211, 95, '_telephone', 'field_606f707daa869'),
(212, 95, 'email', 'jeanmarcloridant@badmintonhautsdefrance.fr'),
(213, 95, '_email', 'field_606f7095aa86a'),
(214, 95, 'email_2', 'delphinegarcia.etr@gmail.com'),
(215, 95, '_email_2', 'field_606f70b2aa86b'),
(216, 95, 'personne_e-mail_1', 'Jean-Marc Loridant'),
(217, 95, '_personne_e-mail_1', 'field_606f71e93ca3d'),
(218, 95, 'personne_e-mail_2', 'Delphine Garcia'),
(219, 95, '_personne_e-mail_2', 'field_606f71fe3ca3e'),
(220, 100, '_edit_lock', '1621518599:1'),
(221, 100, '_edit_last', '1'),
(222, 107, '_edit_lock', '1621518739:1'),
(223, 107, '_edit_last', '1'),
(224, 107, 'categorie', 'R1'),
(225, 107, '_categorie', 'field_60a668569e1e7'),
(226, 107, 'date', '20210522'),
(227, 107, '_date', 'field_60a6688a9e1e8'),
(228, 107, 'journee', '1'),
(229, 107, '_journee', 'field_60a668b59e1e9'),
(230, 107, 'clubs', 'BCHC, LVA, BBC'),
(231, 107, '_clubs', 'field_60a668ca9e1ea'),
(232, 107, 'lieu', 'Complexe Futura, Hersin-Coupigny 62530'),
(233, 107, '_lieu', 'field_60a668d99e1eb'),
(234, 107, 'convocation', '83'),
(235, 107, '_convocation', 'field_60a668df9e1ec'),
(236, 108, '_edit_lock', '1621519133:1'),
(237, 108, '_edit_last', '1'),
(238, 108, 'categorie', 'R3'),
(239, 108, '_categorie', 'field_60a668569e1e7'),
(240, 108, 'date', '20210520'),
(241, 108, '_date', 'field_60a6688a9e1e8'),
(242, 108, 'journee', '4'),
(243, 108, '_journee', 'field_60a668b59e1e9'),
(244, 108, 'clubs', 'LVA, BCA, SBV'),
(245, 108, '_clubs', 'field_60a668ca9e1ea'),
(246, 108, 'lieu', 'Stade dans Arras à Arras'),
(247, 108, '_lieu', 'field_60a668d99e1eb'),
(248, 108, 'convocation', ''),
(249, 108, '_convocation', 'field_60a668df9e1ec');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(5, 1, '2021-03-05 14:57:56', '2021-03-05 13:57:56', '', 'placeholder', '', 'inherit', 'open', 'closed', '', 'placeholder', '', '', '2021-03-05 14:57:56', '2021-03-05 13:57:56', '', 0, 'http://badminton.lan/api/wp-content/uploads/2021/03/placeholder.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2021-03-08 13:06:51', '2021-03-08 12:06:51', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"news\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Actualité', 'actualite', 'publish', 'closed', 'closed', '', 'group_6046133640bcc', '', '', '2021-03-08 13:06:51', '2021-03-08 12:06:51', '', 0, 'http://badminton.lan/api/?post_type=acf-field-group&#038;p=32', 0, 'acf-field-group', '', 0),
(33, 1, '2021-03-08 13:06:51', '2021-03-08 12:06:51', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:20;s:9:\"new_lines\";s:2:\"br\";}', 'Contenu', 'content', 'publish', 'closed', 'closed', '', 'field_6046133c10d24', '', '', '2021-03-08 13:06:51', '2021-03-08 12:06:51', '', 32, 'http://badminton.lan/api/?post_type=acf-field&p=33', 0, 'acf-field', '', 0),
(34, 1, '2021-03-08 13:25:45', '2021-03-08 12:25:45', '', 'Lorem ipsum dolor sit amet, consectetur', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit', '', '', '2021-03-08 18:56:19', '2021-03-08 17:56:19', '', 0, 'http://badminton.lan/api/?post_type=news&#038;p=34', 0, 'news', '', 61),
(36, 1, '2021-03-08 13:32:34', '2021-03-08 12:32:34', '', 'Lorem Elsass ipsum commodo yeuh. libero', '', 'publish', 'closed', 'closed', '', 'lorem-elsass-ipsum-commodo-yeuh-libero', '', '', '2021-03-08 13:35:05', '2021-03-08 12:35:05', '', 0, 'http://badminton.lan/api/?post_type=news&#038;p=36', 0, 'news', '', 5),
(39, 1, '2021-03-08 13:57:08', '2021-03-08 12:57:08', '', 'Capture d’écran 2021-03-08 à 13.55.53', '', 'inherit', 'open', 'closed', '', 'capture-decran-2021-03-08-a-13-55-53', '', '', '2021-03-08 13:57:08', '2021-03-08 12:57:08', '', 0, 'http://badminton.lan/api/wp-content/uploads/2021/03/Capture-décran-2021-03-08-à-13.55.53.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2021-03-08 13:57:10', '2021-03-08 12:57:10', '', 'logo_badmania_shaft', '', 'inherit', 'open', 'closed', '', 'logo_badmania_shaft', '', '', '2021-03-08 13:57:10', '2021-03-08 12:57:10', '', 0, 'http://badminton.lan/api/wp-content/uploads/2021/03/logo_badmania_shaft.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2021-03-08 13:57:11', '2021-03-08 12:57:11', '', 'Logo-Yonex.svg', '', 'inherit', 'open', 'closed', '', 'logo-yonex-svg', '', '', '2021-03-08 13:57:11', '2021-03-08 12:57:11', '', 0, 'http://badminton.lan/api/wp-content/uploads/2021/03/Logo-Yonex.svg_.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2021-03-08 13:58:06', '2021-03-08 12:58:06', '', 'Badmania', '', 'publish', 'closed', 'closed', '', 'badmania', '', '', '2021-03-08 13:58:06', '2021-03-08 12:58:06', '', 0, 'http://badminton.lan/api/?post_type=sponsor&#038;p=43', 0, 'sponsor', '', 0),
(44, 1, '2021-03-08 13:58:15', '2021-03-08 12:58:15', '', 'Badnet', '', 'publish', 'closed', 'closed', '', 'badnet', '', '', '2021-03-08 13:58:15', '2021-03-08 12:58:15', '', 0, 'http://badminton.lan/api/?post_type=sponsor&#038;p=44', 0, 'sponsor', '', 0),
(45, 1, '2021-03-08 13:58:27', '2021-03-08 12:58:27', '', 'Yonex', '', 'publish', 'closed', 'closed', '', 'yonex', '', '', '2021-03-08 13:58:27', '2021-03-08 12:58:27', '', 0, 'http://badminton.lan/api/?post_type=sponsor&#038;p=45', 0, 'sponsor', '', 0),
(52, 1, '2021-03-08 14:39:49', '2021-03-08 13:39:49', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Évènement', 'evenement', 'publish', 'closed', 'closed', '', 'group_604628ee7115a', '', '', '2021-03-08 18:16:31', '2021-03-08 17:16:31', '', 0, 'http://badminton.lan/api/?post_type=acf-field-group&#038;p=52', 0, 'acf-field-group', '', 0),
(53, 1, '2021-03-08 14:39:49', '2021-03-08 13:39:49', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"Y-m-d\";s:9:\"first_day\";i:1;}', 'Date', 'date', 'publish', 'closed', 'closed', '', 'field_604628f1b3b1c', '', '', '2021-03-08 14:49:32', '2021-03-08 13:49:32', '', 52, 'http://badminton.lan/api/?post_type=acf-field&#038;p=53', 0, 'acf-field', '', 0),
(55, 1, '2021-03-08 14:43:08', '2021-03-08 13:43:08', '', 'Tournoi des Gueules Noires', 'Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test \r\n\r\n\r\nTest Test Test Test Test Test Test Test Test Test Test Test Test Test Test ', 'publish', 'closed', 'closed', '', 'tournoi-des-gueules-noires', '', '', '2021-03-08 19:07:06', '2021-03-08 18:07:06', '', 0, 'http://badminton.lan/api/?post_type=event&#038;p=55', 0, 'event', '', 0),
(57, 1, '2021-03-08 14:46:30', '2021-03-08 13:46:30', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";i:108;}', 'Résumé', 'resume', 'publish', 'closed', 'closed', '', 'field_60462a93e2730', '', '', '2021-03-08 18:16:27', '2021-03-08 17:16:27', '', 52, 'http://badminton.lan/api/?post_type=acf-field&#038;p=57', 1, 'acf-field', '', 0),
(58, 1, '2021-03-08 14:53:03', '2021-03-08 13:53:03', '', 'Tournoi national de Béthune', '', 'publish', 'closed', 'closed', '', 'tournoi-de-bethune', '', '', '2021-04-08 15:37:00', '2021-04-08 13:37:00', '', 0, 'http://badminton.lan/api/?post_type=event&#038;p=58', 0, 'event', '', 0),
(59, 1, '2021-03-08 14:54:23', '2021-03-08 13:54:23', '', 'Tellus kartoffelsalad hop aliquam consectetur', '', 'publish', 'closed', 'closed', '', 'tellus-kartoffelsalad-hop-aliquam-consectetur-leo-vielmols', '', '', '2021-03-08 16:33:08', '2021-03-08 15:33:08', '', 0, 'http://badminton.lan/api/?post_type=news&#038;p=59', 0, 'news', '', 19),
(60, 1, '2021-03-08 18:55:54', '2021-03-08 17:55:54', '', '3aef3', '', 'inherit', 'open', 'closed', '', '3aef3', '', '', '2021-03-08 18:55:54', '2021-03-08 17:55:54', '', 0, 'http://badminton.lan/api/wp-content/uploads/2021/03/3aef3.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2021-04-08 15:44:34', '2021-04-08 13:44:34', '', 'Nick Surname', '', 'publish', 'closed', 'closed', '', 'nick-surname', '', '', '2021-04-08 22:56:34', '2021-04-08 20:56:34', '', 0, 'http://badminton.lan/api/?post_type=member&#038;p=72', 0, 'member', '', 0),
(73, 1, '2021-04-08 15:42:07', '2021-04-08 13:42:07', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"member\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Employés', 'employes', 'publish', 'closed', 'closed', '', 'group_606f07fd42fa0', '', '', '2021-04-08 15:42:45', '2021-04-08 13:42:45', '', 0, 'http://badminton.lan/api/?post_type=acf-field-group&#038;p=73', 0, 'acf-field-group', '', 0),
(74, 1, '2021-04-08 15:42:07', '2021-04-08 13:42:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Fonction, travail', 'fonction', 'publish', 'closed', 'closed', '', 'field_606f0804e7cb4', '', '', '2021-04-08 15:42:45', '2021-04-08 13:42:45', '', 73, 'http://badminton.lan/api/?post_type=acf-field&#038;p=74', 0, 'acf-field', '', 0),
(75, 1, '2021-04-08 15:44:20', '2021-04-08 13:44:20', '', 'apoev180600134', '', 'inherit', 'open', 'closed', '', 'apoev180600134', '', '', '2021-04-08 15:44:20', '2021-04-08 13:44:20', '', 72, 'http://badminton.lan/api/wp-content/uploads/2021/04/apoev180600134.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2021-04-08 16:02:34', '2021-04-08 14:02:34', '', 'Nick Surname', '', 'publish', 'closed', 'closed', '', 'nick-surname-2', '', '', '2021-04-08 22:56:27', '2021-04-08 20:56:27', '', 0, 'http://badminton.lan/api/?post_type=member&#038;p=76', 0, 'member', '', 0),
(77, 1, '2021-04-08 16:02:55', '2021-04-08 14:02:55', '', 'Nick Surname', '', 'publish', 'closed', 'closed', '', 'nick-surname-3', '', '', '2021-04-08 22:56:15', '2021-04-08 20:56:15', '', 0, 'http://badminton.lan/api/?post_type=member&#038;p=77', 0, 'member', '', 0),
(79, 1, '2021-04-08 16:32:28', '2021-04-08 14:32:28', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"documents\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Documents', 'documents', 'publish', 'closed', 'closed', '', 'group_606f13d3b8ff7', '', '', '2021-04-08 16:32:35', '2021-04-08 14:32:35', '', 0, 'http://badminton.lan/api/?post_type=acf-field-group&#038;p=79', 0, 'acf-field-group', '', 0),
(80, 1, '2021-04-08 16:32:28', '2021-04-08 14:32:28', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Fichier', 'fichier', 'publish', 'closed', 'closed', '', 'field_606f13dd44653', '', '', '2021-04-08 16:32:28', '2021-04-08 14:32:28', '', 79, 'http://badminton.lan/api/?post_type=acf-field&p=80', 0, 'acf-field', '', 0),
(82, 1, '2021-04-08 16:35:59', '2021-04-08 14:35:59', '', 'Réglementation arbitrage', '', 'publish', 'closed', 'closed', '', 'new-file', '', '', '2021-04-08 16:36:39', '2021-04-08 14:36:39', '', 0, 'http://badminton.lan/api/?post_type=documents&#038;p=82', 0, 'documents', '', 0),
(83, 1, '2021-04-08 16:35:48', '2021-04-08 14:35:48', '', 'blank', '', 'inherit', 'open', 'closed', '', 'blank', '', '', '2021-04-08 16:35:48', '2021-04-08 14:35:48', '', 82, 'http://badminton.lan/api/wp-content/uploads/2021/04/blank.pdf', 0, 'attachment', 'application/pdf', 0),
(84, 1, '2021-04-08 16:37:09', '2021-04-08 14:37:09', '', 'Réunion générale', '', 'publish', 'closed', 'closed', '', 'reunion-generale', '', '', '2021-04-08 16:37:09', '2021-04-08 14:37:09', '', 0, 'http://badminton.lan/api/?post_type=documents&#038;p=84', 0, 'documents', '', 0),
(85, 1, '2021-04-08 23:06:37', '2021-04-08 21:06:37', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"content\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Organigrame', 'organigrame', 'publish', 'closed', 'closed', '', 'group_606f6fec8075c', '', '', '2021-04-08 23:06:37', '2021-04-08 21:06:37', '', 0, 'http://badminton.lan/api/?post_type=acf-field-group&#038;p=85', 0, 'acf-field-group', '', 0),
(86, 1, '2021-04-08 23:06:37', '2021-04-08 21:06:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titre', 'titre', 'publish', 'closed', 'closed', '', 'field_606f7010d4f86', '', '', '2021-04-08 23:06:37', '2021-04-08 21:06:37', '', 85, 'http://badminton.lan/api/?post_type=acf-field&p=86', 0, 'acf-field', '', 0),
(87, 1, '2021-04-08 23:06:37', '2021-04-08 21:06:37', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_606f701cd4f87', '', '', '2021-04-08 23:06:37', '2021-04-08 21:06:37', '', 85, 'http://badminton.lan/api/?post_type=acf-field&p=87', 1, 'acf-field', '', 0),
(88, 1, '2021-04-08 23:06:37', '2021-04-08 21:06:37', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_606f702bd4f88', '', '', '2021-04-08 23:06:37', '2021-04-08 21:06:37', '', 85, 'http://badminton.lan/api/?post_type=acf-field&p=88', 2, 'acf-field', '', 0),
(89, 1, '2021-04-08 23:08:21', '2021-04-08 21:08:21', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"content\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Contact', 'contact', 'publish', 'closed', 'closed', '', 'group_606f706e934b1', '', '', '2021-04-08 23:14:41', '2021-04-08 21:14:41', '', 0, 'http://badminton.lan/api/?post_type=acf-field-group&#038;p=89', 0, 'acf-field-group', '', 0),
(90, 1, '2021-04-08 23:08:21', '2021-04-08 21:08:21', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:2;s:9:\"new_lines\";s:0:\"\";}', 'Adresse', 'adresse', 'publish', 'closed', 'closed', '', 'field_606f7071aa868', '', '', '2021-04-08 23:13:09', '2021-04-08 21:13:09', '', 89, 'http://badminton.lan/api/?post_type=acf-field&#038;p=90', 0, 'acf-field', '', 0),
(91, 1, '2021-04-08 23:08:21', '2021-04-08 21:08:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Téléphone', 'telephone', 'publish', 'closed', 'closed', '', 'field_606f707daa869', '', '', '2021-04-08 23:08:21', '2021-04-08 21:08:21', '', 89, 'http://badminton.lan/api/?post_type=acf-field&p=91', 1, 'acf-field', '', 0),
(92, 1, '2021-04-08 23:08:21', '2021-04-08 21:08:21', 'a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Adresse e-mail 1', 'email', 'publish', 'closed', 'closed', '', 'field_606f7095aa86a', '', '', '2021-04-08 23:14:41', '2021-04-08 21:14:41', '', 89, 'http://badminton.lan/api/?post_type=acf-field&#038;p=92', 3, 'acf-field', '', 0),
(93, 1, '2021-04-08 23:08:21', '2021-04-08 21:08:21', 'a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Adresse e-mail 2', 'email_2', 'publish', 'closed', 'closed', '', 'field_606f70b2aa86b', '', '', '2021-04-08 23:14:41', '2021-04-08 21:14:41', '', 89, 'http://badminton.lan/api/?post_type=acf-field&#038;p=93', 5, 'acf-field', '', 0),
(95, 1, '2021-04-08 23:11:46', '2021-04-08 21:11:46', '', 'Organigramme & Contact', '', 'publish', 'closed', 'closed', '', 'organigramme-contact', '', '', '2021-04-08 23:26:09', '2021-04-08 21:26:09', '', 0, 'http://badminton.lan/api/?post_type=content&#038;p=95', 0, 'content', '', 0),
(96, 1, '2021-04-08 23:10:47', '2021-04-08 21:10:47', '', 'Thomas Uber Cup 2018', '', 'inherit', 'open', 'closed', '', 'thomas-uber-cup-2018', '', '', '2021-04-08 23:10:47', '2021-04-08 21:10:47', '', 95, 'http://badminton.lan/api/wp-content/uploads/2021/04/banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2021-04-08 23:13:51', '2021-04-08 21:13:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Personne e-mail 1', 'personne_e-mail_1', 'publish', 'closed', 'closed', '', 'field_606f71e93ca3d', '', '', '2021-04-08 23:14:41', '2021-04-08 21:14:41', '', 89, 'http://badminton.lan/api/?post_type=acf-field&#038;p=97', 2, 'acf-field', '', 0),
(98, 1, '2021-04-08 23:13:51', '2021-04-08 21:13:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Personne e-mail 2', 'personne_e-mail_2', 'publish', 'closed', 'closed', '', 'field_606f71fe3ca3e', '', '', '2021-04-08 23:14:41', '2021-04-08 21:14:41', '', 89, 'http://badminton.lan/api/?post_type=acf-field&#038;p=98', 4, 'acf-field', '', 0),
(99, 1, '2021-05-20 15:43:46', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-05-20 15:43:46', '0000-00-00 00:00:00', '', 0, 'http://badminton.lan/api/?p=99', 0, 'post', '', 0),
(100, 1, '2021-05-20 15:49:58', '2021-05-20 13:49:58', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"interclubs\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Interclub', 'interclub', 'publish', 'closed', 'closed', '', 'group_60a6684dac8eb', '', '', '2021-05-20 15:49:58', '2021-05-20 13:49:58', '', 0, 'http://badminton.lan/api/?post_type=acf-field-group&#038;p=100', 0, 'acf-field-group', '', 0),
(101, 1, '2021-05-20 15:49:58', '2021-05-20 13:49:58', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:2:\"R1\";s:2:\"R1\";s:2:\"R2\";s:2:\"R2\";s:2:\"R3\";s:2:\"R3\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Categorie', 'categorie', 'publish', 'closed', 'closed', '', 'field_60a668569e1e7', '', '', '2021-05-20 15:49:58', '2021-05-20 13:49:58', '', 100, 'http://badminton.lan/api/?post_type=acf-field&p=101', 0, 'acf-field', '', 0),
(102, 1, '2021-05-20 15:49:58', '2021-05-20 13:49:58', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"Y-m-d\";s:13:\"return_format\";s:5:\"Y-m-d\";s:9:\"first_day\";i:1;}', 'Date', 'date', 'publish', 'closed', 'closed', '', 'field_60a6688a9e1e8', '', '', '2021-05-20 15:49:58', '2021-05-20 13:49:58', '', 100, 'http://badminton.lan/api/?post_type=acf-field&p=102', 1, 'acf-field', '', 0),
(103, 1, '2021-05-20 15:49:58', '2021-05-20 13:49:58', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Journée', 'journee', 'publish', 'closed', 'closed', '', 'field_60a668b59e1e9', '', '', '2021-05-20 15:49:58', '2021-05-20 13:49:58', '', 100, 'http://badminton.lan/api/?post_type=acf-field&p=103', 2, 'acf-field', '', 0),
(104, 1, '2021-05-20 15:49:58', '2021-05-20 13:49:58', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Clubs', 'clubs', 'publish', 'closed', 'closed', '', 'field_60a668ca9e1ea', '', '', '2021-05-20 15:49:58', '2021-05-20 13:49:58', '', 100, 'http://badminton.lan/api/?post_type=acf-field&p=104', 3, 'acf-field', '', 0),
(105, 1, '2021-05-20 15:49:58', '2021-05-20 13:49:58', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Lieu', 'lieu', 'publish', 'closed', 'closed', '', 'field_60a668d99e1eb', '', '', '2021-05-20 15:49:58', '2021-05-20 13:49:58', '', 100, 'http://badminton.lan/api/?post_type=acf-field&p=105', 4, 'acf-field', '', 0),
(106, 1, '2021-05-20 15:49:58', '2021-05-20 13:49:58', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Convocation', 'convocation', 'publish', 'closed', 'closed', '', 'field_60a668df9e1ec', '', '', '2021-05-20 15:49:58', '2021-05-20 13:49:58', '', 100, 'http://badminton.lan/api/?post_type=acf-field&p=106', 5, 'acf-field', '', 0),
(107, 1, '2021-05-20 15:51:11', '2021-05-20 13:51:11', '', 'R1 – J1 Hersin-Coupigny', '', 'publish', 'closed', 'closed', '', '107', '', '', '2021-05-20 15:52:18', '2021-05-20 13:52:18', '', 0, 'http://badminton.lan/api/?post_type=interclubs&#038;p=107', 0, 'interclubs', '', 0),
(108, 1, '2021-05-20 15:53:09', '2021-05-20 13:53:09', '', 'R3 – J4 Arras', '', 'publish', 'closed', 'closed', '', 'r3-j4-arras', '', '', '2021-05-20 15:53:27', '2021-05-20 13:53:27', '', 0, 'http://badminton.lan/api/?post_type=interclubs&#038;p=108', 0, 'interclubs', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Ligue', 'ligue', 0),
(2, 'Compétition', 'competition', 0),
(7, 'Actualités', 'actualites', 0),
(8, 'Employés', 'employes', 0),
(9, 'Bureau de la Ligue', 'bureau-de-la-ligue', 0),
(10, 'Conseil d\'administration', 'conseil-dadministration', 0),
(11, 'Salariés de la Ligue', 'salaries-de-la-ligue', 0),
(12, 'Documents', 'documents', 0),
(13, 'Arbitrage', 'arbitrage', 0),
(14, 'Compte rendu', 'compte-rendu', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(34, 1, 0),
(36, 2, 0),
(59, 1, 0),
(72, 11, 0),
(76, 10, 0),
(77, 9, 0),
(82, 13, 0),
(84, 14, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 7, 2),
(2, 2, 'category', '', 7, 1),
(7, 7, 'category', '', 0, 0),
(8, 8, 'category', '', 0, 0),
(9, 9, 'category', '', 8, 1),
(10, 10, 'category', '', 8, 1),
(11, 11, 'category', '', 8, 1),
(12, 12, 'category', '', 0, 0),
(13, 13, 'category', '', 12, 1),
(14, 14, 'category', '', 12, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'hugolgc'),
(2, 1, 'first_name', 'Hugo'),
(3, 1, 'last_name', 'Lagache'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'false'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'modern'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', 'fr_FR'),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"87f93b2f12dd7e458d43d3f4786336ddd5f8b44972e969d284e526c098616b56\";a:4:{s:10:\"expiration\";i:1621691025;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.3 Safari/605.1.15\";s:5:\"login\";i:1621518225;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '99'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o'),
(20, 1, 'wp_user-settings-time', '1615204899'),
(21, 2, 'nickname', 'nick'),
(22, 2, 'first_name', 'Nick'),
(23, 2, 'last_name', 'Name'),
(24, 2, 'description', ''),
(25, 2, 'rich_editing', 'true'),
(26, 2, 'syntax_highlighting', 'true'),
(27, 2, 'comment_shortcuts', 'false'),
(28, 2, 'admin_color', 'fresh'),
(29, 2, 'use_ssl', '0'),
(30, 2, 'show_admin_bar_front', 'true'),
(31, 2, 'locale', ''),
(32, 2, 'wp_capabilities', 'a:1:{s:11:\"contributor\";b:1;}'),
(33, 2, 'wp_user_level', '1'),
(34, 2, 'dismissed_wp_pointers', ''),
(35, 2, 'session_tokens', 'a:1:{s:64:\"ae5c6cbe473623b1b1bb8927f5f9ff9c2e94e19ae3d7fba26397c1ab0bbf571c\";a:4:{s:10:\"expiration\";i:1615125671;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.192 Safari/537.36\";s:5:\"login\";i:1614952871;}}'),
(36, 2, 'wp_dashboard_quick_press_last_post_id', '7'),
(37, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(38, 1, 'seen_more_plugins_page_1', 'true'),
(39, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(40, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(41, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(42, 1, 'metaboxhidden_dashboard', 'a:5:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}'),
(43, 1, 'acf_to_rest_api_donation_version', '3.3.2'),
(44, 1, '_new_email', 'a:2:{s:4:\"hash\";s:32:\"48867b8739ed32db7928e5f56174e5c4\";s:8:\"newemail\";s:23:\"lagache.hugo@hotmail.fr\";}'),
(45, 1, 'meta-box-order_content', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:55:\"acf-group_606f6fec8075c,acf-group_606f706e934b1,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(46, 1, 'screen_layout_content', '2');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'hugolgc', '$P$BOW5LdvVU.zUS9R6t132C4vkcdg3/k/', 'hugolgc', 'hugo@test.fr', 'http://badminton.lan/api', '2021-03-05 12:11:19', '', 0, 'Hugo Lagache'),
(2, 'nick', '$P$BqN.oYE.cmzHWmF/43r5fAytcx9Rug1', 'nick', 'nick@test.fr', '', '2021-03-05 14:00:58', '1614952858:$P$BzHVPEVqR8qGFCO2ZqGNWPkLWMnfX0/', 0, 'Nick Name');

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=472;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
