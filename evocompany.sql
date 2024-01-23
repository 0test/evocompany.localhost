-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 23 2024 г., 18:54
-- Версия сервера: 10.8.4-MariaDB
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `evocompany`
--

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_active_users`
--

CREATE TABLE `jdz6_active_users` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(11) NOT NULL DEFAULT 0,
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(11) NOT NULL DEFAULT 0,
  `action` varchar(10) NOT NULL DEFAULT '',
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `jdz6_active_users`
--

INSERT INTO `jdz6_active_users` (`sid`, `internalKey`, `username`, `lasthit`, `action`, `id`) VALUES
('p8o4lqp1jakkqs9vlvvgjp9skcd4tr5g', 1, 'admin', 1706025124, '67', 13);

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_active_user_locks`
--

CREATE TABLE `jdz6_active_user_locks` (
  `id` int(11) NOT NULL,
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(11) NOT NULL DEFAULT 0,
  `elementType` int(11) NOT NULL DEFAULT 0,
  `elementId` int(11) NOT NULL DEFAULT 0,
  `lasthit` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_active_user_sessions`
--

CREATE TABLE `jdz6_active_user_sessions` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(11) NOT NULL DEFAULT 0,
  `lasthit` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `jdz6_active_user_sessions`
--

INSERT INTO `jdz6_active_user_sessions` (`sid`, `internalKey`, `lasthit`, `ip`) VALUES
('p8o4lqp1jakkqs9vlvvgjp9skcd4tr5g', 1, 1706025124, '127.0.0.1');

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_categories`
--

CREATE TABLE `jdz6_categories` (
  `id` int(11) NOT NULL,
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `jdz6_categories`
--

INSERT INTO `jdz6_categories` (`id`, `category`, `rank`) VALUES
(1, 'Manager and Admin', 2),
(2, 'Content', 1),
(3, 'Navigation', 3),
(4, 'Шаблоны', 5),
(5, 'SEO', 6),
(6, 'Контент', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_documentgroup_names`
--

CREATE TABLE `jdz6_documentgroup_names` (
  `id` int(11) NOT NULL,
  `name` varchar(245) NOT NULL DEFAULT '',
  `private_memgroup` int(11) DEFAULT 0 COMMENT 'determine whether the document group is private to manager users',
  `private_webgroup` int(11) DEFAULT 0 COMMENT 'determines whether the document is private to web users'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_document_groups`
--

CREATE TABLE `jdz6_document_groups` (
  `id` int(11) NOT NULL,
  `document_group` int(11) NOT NULL DEFAULT 0,
  `document` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_event_log`
--

CREATE TABLE `jdz6_event_log` (
  `id` int(11) NOT NULL,
  `eventid` int(11) DEFAULT 0,
  `createdon` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '1- information, 2 - warning, 3- error',
  `user` int(11) NOT NULL DEFAULT 0 COMMENT 'link to user table',
  `usertype` int(11) NOT NULL DEFAULT 0 COMMENT '0 - manager, 1 - web',
  `source` varchar(50) NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `jdz6_event_log`
--

INSERT INTO `jdz6_event_log` (`id`, `eventid`, `createdon`, `type`, `user`, `usertype`, `source`, `description`) VALUES
(25, 0, 1706024730, 3, 1, 0, 'Parser / count(): Argument #1 ($value) must be of ', '<h2 style=\"color:red\">&laquo; Evolution CMS Parse Error &raquo;</h2><h3 style=\"color:red\">count(): Argument #1 ($value) must be of type Countable|array, string given</h3>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>File</td>\n		<td>C:\\OSP\\domains\\evocompany.localhost\\manager\\media\\browser\\mcpuk\\lib\\class_image_gd.php</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Line</td>\n		<td>381</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://evocompany.localhost/manager/media/browser/mcpuk/browse.php?type=images&amp;lng=ru&amp;act=upload&amp;fileapi17060247037368</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Referer</td>\n		<td>http://evocompany.localhost/manager/media/browser/mcpuk/browse.php?type=images&amp;amp;field_id=&amp;amp;popup=1&amp;amp;relative_url=1</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 YaBrowser/23.11.0.0 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Current time</td>\n		<td>2024-01-23 18:45:30</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0000 s (0 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.8585 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.8585 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>85.581192016602 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>browser->action</strong>()<br />manager/media/browser/mcpuk/browse.php on line 27</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>browser->act_upload</strong>()<br />manager/media/browser/mcpuk/core/browser.php on line 134</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>browser->moveUploadFile</strong>()<br />manager/media/browser/mcpuk/core/browser.php on line 379</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>uploader->checkUploadedFile</strong>()<br />manager/media/browser/mcpuk/core/browser.php on line 872</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>uploader->imageResize</strong>()<br />manager/media/browser/mcpuk/core/uploader.php on line 424</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>image_gd->rotate</strong>()<br />manager/media/browser/mcpuk/core/uploader.php on line 593</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>image_gd->gdColor</strong>()<br />manager/media/browser/mcpuk/lib/class_image_gd.php on line 146</td>\n	</tr>\n</table>\n'),
(26, 0, 1706024747, 3, 1, 0, 'Parser / count(): Argument #1 ($value) must be of ', '<h2 style=\"color:red\">&laquo; Evolution CMS Parse Error &raquo;</h2><h3 style=\"color:red\">count(): Argument #1 ($value) must be of type Countable|array, string given</h3>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>File</td>\n		<td>C:\\OSP\\domains\\evocompany.localhost\\manager\\media\\browser\\mcpuk\\lib\\class_image_gd.php</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Line</td>\n		<td>381</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://evocompany.localhost/manager/media/browser/mcpuk/browse.php?type=images&amp;lng=ru&amp;act=upload&amp;fileapi170602470373613</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Referer</td>\n		<td>http://evocompany.localhost/manager/media/browser/mcpuk/browse.php?type=images&amp;amp;field_id=&amp;amp;popup=1&amp;amp;relative_url=1</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 YaBrowser/23.11.0.0 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Current time</td>\n		<td>2024-01-23 18:45:47</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0000 s (0 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.8076 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.8076 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>85.581192016602 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>browser->action</strong>()<br />manager/media/browser/mcpuk/browse.php on line 27</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>browser->act_upload</strong>()<br />manager/media/browser/mcpuk/core/browser.php on line 134</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>browser->moveUploadFile</strong>()<br />manager/media/browser/mcpuk/core/browser.php on line 379</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>uploader->checkUploadedFile</strong>()<br />manager/media/browser/mcpuk/core/browser.php on line 872</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>uploader->imageResize</strong>()<br />manager/media/browser/mcpuk/core/uploader.php on line 424</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>image_gd->rotate</strong>()<br />manager/media/browser/mcpuk/core/uploader.php on line 593</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>image_gd->gdColor</strong>()<br />manager/media/browser/mcpuk/lib/class_image_gd.php on line 146</td>\n	</tr>\n</table>\n'),
(27, 0, 1706024874, 3, 1, 0, 'Parser / count(): Argument #1 ($value) must be of ', '<h2 style=\"color:red\">&laquo; Evolution CMS Parse Error &raquo;</h2><h3 style=\"color:red\">count(): Argument #1 ($value) must be of type Countable|array, string given</h3>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>File</td>\n		<td>C:\\OSP\\domains\\evocompany.localhost\\manager\\media\\browser\\mcpuk\\lib\\class_image_gd.php</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Line</td>\n		<td>381</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://evocompany.localhost/manager/media/browser/mcpuk/browse.php?type=images&amp;lng=ru&amp;act=upload&amp;fileapi17060248706048</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Referer</td>\n		<td>http://evocompany.localhost/manager/media/browser/mcpuk/browse.php?type=images&amp;amp;field_id=&amp;amp;popup=1&amp;amp;relative_url=1</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 YaBrowser/23.11.0.0 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Current time</td>\n		<td>2024-01-23 18:47:54</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0000 s (0 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.8317 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.8317 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>85.581192016602 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>browser->action</strong>()<br />manager/media/browser/mcpuk/browse.php on line 27</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>browser->act_upload</strong>()<br />manager/media/browser/mcpuk/core/browser.php on line 134</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>browser->moveUploadFile</strong>()<br />manager/media/browser/mcpuk/core/browser.php on line 379</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>uploader->checkUploadedFile</strong>()<br />manager/media/browser/mcpuk/core/browser.php on line 872</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>uploader->imageResize</strong>()<br />manager/media/browser/mcpuk/core/uploader.php on line 424</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>image_gd->rotate</strong>()<br />manager/media/browser/mcpuk/core/uploader.php on line 593</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>image_gd->gdColor</strong>()<br />manager/media/browser/mcpuk/lib/class_image_gd.php on line 146</td>\n	</tr>\n</table>\n');

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_manager_log`
--

CREATE TABLE `jdz6_manager_log` (
  `id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  `internalKey` int(11) NOT NULL DEFAULT 0,
  `username` varchar(255) DEFAULT NULL,
  `action` int(11) NOT NULL DEFAULT 0,
  `itemid` varchar(10) DEFAULT '0',
  `itemname` varchar(255) DEFAULT NULL,
  `message` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(45) DEFAULT NULL,
  `useragent` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `jdz6_manager_log`
--

INSERT INTO `jdz6_manager_log` (`id`, `timestamp`, `internalKey`, `username`, `action`, `itemid`, `itemname`, `message`, `ip`, `useragent`) VALUES
(1, 1705595122, 1, 'admin', 13, '', '-', 'Viewing logging', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 YaBrowser/23.11.0.0 Safari/537.36'),
(2, 1705595130, 1, 'admin', 114, '', '-', 'View event log', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 YaBrowser/23.11.0.0 Safari/537.36'),
(3, 1705596414, 1, 'admin', 27, '4', 'О компании', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 YaBrowser/23.11.0.0 Safari/537.36'),
(4, 1706024697, 1, 'admin', 27, '4', 'О компании', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 YaBrowser/23.11.0.0 Safari/537.36'),
(5, 1706024866, 1, 'admin', 27, '4', 'О компании', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 YaBrowser/23.11.0.0 Safari/537.36'),
(6, 1706024924, 1, 'admin', 13, '', '-', 'Viewing logging', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 YaBrowser/23.11.0.0 Safari/537.36'),
(7, 1706024928, 1, 'admin', 114, '', '-', 'View event log', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 YaBrowser/23.11.0.0 Safari/537.36'),
(8, 1706024929, 1, 'admin', 115, '27', '-', 'View event log details', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 YaBrowser/23.11.0.0 Safari/537.36'),
(9, 1706024972, 1, 'admin', 115, '27', '-', 'View event log details', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 YaBrowser/23.11.0.0 Safari/537.36'),
(10, 1706024975, 1, 'admin', 27, '28', 'sitemap.xml', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 YaBrowser/23.11.0.0 Safari/537.36'),
(11, 1706024986, 1, 'admin', 16, '13', 'xmlsitemap', 'Editing template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 YaBrowser/23.11.0.0 Safari/537.36'),
(12, 1706024993, 1, 'admin', 20, '13', 'sitemap', 'Saving template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 YaBrowser/23.11.0.0 Safari/537.36'),
(13, 1706024994, 1, 'admin', 16, '13', 'sitemap', 'Editing template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 YaBrowser/23.11.0.0 Safari/537.36'),
(14, 1706024997, 1, 'admin', 27, '28', 'sitemap.xml', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 YaBrowser/23.11.0.0 Safari/537.36');

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_membergroup_access`
--

CREATE TABLE `jdz6_membergroup_access` (
  `id` int(11) NOT NULL,
  `membergroup` int(11) NOT NULL DEFAULT 0,
  `documentgroup` int(11) NOT NULL DEFAULT 0,
  `context` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_membergroup_names`
--

CREATE TABLE `jdz6_membergroup_names` (
  `id` int(11) NOT NULL,
  `name` varchar(245) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_member_groups`
--

CREATE TABLE `jdz6_member_groups` (
  `id` int(11) NOT NULL,
  `user_group` int(11) NOT NULL DEFAULT 0,
  `member` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_migrations_install`
--

CREATE TABLE `jdz6_migrations_install` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `jdz6_migrations_install`
--

INSERT INTO `jdz6_migrations_install` (`id`, `migration`, `batch`) VALUES
(1, '2018_06_29_182342_create_active_user_locks_table', 1),
(2, '2018_06_29_182342_create_active_user_sessions_table', 1),
(3, '2018_06_29_182342_create_active_users_table', 1),
(4, '2018_06_29_182342_create_categories_table', 1),
(5, '2018_06_29_182342_create_document_groups_table', 1),
(6, '2018_06_29_182342_create_documentgroup_names_table', 1),
(7, '2018_06_29_182342_create_event_log_table', 1),
(8, '2018_06_29_182342_create_manager_log_table', 1),
(9, '2018_06_29_182342_create_manager_users_table', 1),
(10, '2018_06_29_182342_create_member_groups_table', 1),
(11, '2018_06_29_182342_create_membergroup_access_table', 1),
(12, '2018_06_29_182342_create_membergroup_names_table', 1),
(13, '2018_06_29_182342_create_permissions_groups_table', 1),
(14, '2018_06_29_182342_create_permissions_table', 1),
(15, '2018_06_29_182342_create_role_permissions_table', 1),
(16, '2018_06_29_182342_create_site_content_table', 1),
(17, '2018_06_29_182342_create_site_htmlsnippets_table', 1),
(18, '2018_06_29_182342_create_site_module_access_table', 1),
(19, '2018_06_29_182342_create_site_module_depobj_table', 1),
(20, '2018_06_29_182342_create_site_modules_table', 1),
(21, '2018_06_29_182342_create_site_plugin_events_table', 1),
(22, '2018_06_29_182342_create_site_plugins_table', 1),
(23, '2018_06_29_182342_create_site_snippets_table', 1),
(24, '2018_06_29_182342_create_site_templates_table', 1),
(25, '2018_06_29_182342_create_site_tmplvar_access_table', 1),
(26, '2018_06_29_182342_create_site_tmplvar_contentvalues_table', 1),
(27, '2018_06_29_182342_create_site_tmplvar_templates_table', 1),
(28, '2018_06_29_182342_create_site_tmplvars_table', 1),
(29, '2018_06_29_182342_create_system_eventnames_table', 1),
(30, '2018_06_29_182342_create_system_settings_table', 1),
(31, '2018_06_29_182342_create_user_attributes_table', 1),
(32, '2018_06_29_182342_create_user_roles_table', 1),
(33, '2018_06_29_182342_create_user_settings_table', 1),
(34, '2018_06_29_182342_create_web_groups_table', 1),
(35, '2018_06_29_182342_create_web_user_attributes_table', 1),
(36, '2018_06_29_182342_create_web_user_settings_table', 1),
(37, '2018_06_29_182342_create_web_users_table', 1),
(38, '2018_06_29_182342_create_webgroup_access_table', 1),
(39, '2018_06_29_182342_create_webgroup_names_table', 1),
(40, '2020_09_12_110820_create_site_content_closure', 1),
(41, '2020_09_16_110820_update_web_user_attributes_table', 1),
(42, '2020_10_05_124820_second_update_web_user_attributes_table', 1),
(43, '2020_10_05_154230_drop_manager_user_tables', 1),
(44, '2020_10_05_162325_rename_web_user_tables', 1),
(45, '2020_10_08_112342_remove_column_from_role_table', 1),
(46, '2020_10_12_065655_make_guid_nullable_in_modules', 1),
(47, '2020_10_12_065655_make_moduleguid_nullable_in_plugins', 1),
(48, '2020_10_28_154230_drop_webuser_group_tables', 1),
(49, '2020_10_30_065655_make_dob_nullable_in_userattributes', 1),
(50, '2020_11_02_100555_add_token_columns_to_user_table', 1),
(51, '2020_11_10_110555_add_verified_columns_to_user_table', 1),
(52, '2020_11_22_114803_create_user_role_vars', 1),
(53, '2020_11_22_114809_create_user_values', 1),
(54, '2020_12_23_065655_make_display_nullable_in_tmplvars', 1),
(55, '2021_02_05_121655_add_index_to_pubdate_column_content_table', 1),
(56, '2021_02_10_060454_add_properties_column_to_site_tmplvars', 1),
(57, '2021_02_17_102610_rename_donthit_column_in_site_content_table', 1),
(58, '2022_04_17_133922_add_context_column_to_membergroup_access', 1),
(59, '2022_09_07_130522_resize_ip_column_in_manager_log', 1),
(60, '2022_12_03_183200_add_unique_index_to_name_col_in_system_eventnames_table', 1),
(61, '2023_01_06_191600_add_indexes_to_fields_in_manager_log_table', 1),
(62, '2018_06_29_182342_create_permissions_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_pagebuilder`
--

CREATE TABLE `jdz6_pagebuilder` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` int(10) UNSIGNED NOT NULL,
  `container` varchar(255) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 DEFAULT NULL,
  `config` varchar(255) NOT NULL,
  `values` mediumtext NOT NULL,
  `visible` tinyint(1) UNSIGNED DEFAULT 1,
  `index` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `jdz6_pagebuilder`
--

INSERT INTO `jdz6_pagebuilder` (`id`, `document_id`, `container`, `title`, `config`, `values`, `visible`, `index`) VALUES
(2, 4, 'landing', '', 'landing_slider', '{\"slides\":[{\"image\":\"assets/images/content_28_metizy_iz_kalibrovannogo_sortovogo_prokata.jpg\",\"title\":\"Мы лучше всех крутим гайки\"},{\"image\":\"assets/images/5d64922c8ab64c472d80a9431e249110(1).jpg\",\"title\":\"Мы быстрее всех доставляем гайки и болты\"}]}', 1, 0),
(3, 4, 'landing', '', 'landing_photo_text', '{\"title\":\"Молодая и амбициозная компания\",\"content\":\"Мы гордимся тем, что уже завоевали доверие среди наших клиентов благодаря нашим конкурентоспособным ценам и внимательному обслуживанию.\",\"image\":\"assets/images/doc76ncd3jiwpfmb0x3jd6.jpg\"}', 1, 1),
(4, 4, 'landing', '', 'landing_cards', '{\"slides\":[{\"image\":\"assets/images/bez-imeni-1.png\",\"title\":\"Выточим гайки и болтики\",\"content\":\"Качественно, быстро и в срок наши специалисты изготовят что вам там нужно было\"},{\"image\":\"assets/images/3549391_640_640.png\",\"title\":\"Привезем куда скажете\",\"content\":\"Гайки и болтики тяжёлые, а у нас крепкие парни, смогут привезти и притащить куда скажете\"},{\"image\":\"assets/images/b88c0864818c7d2ae28687a0efbedf07-640x857.jpg\",\"title\":\"Поможем с монтажом\",\"content\":\"Если есть желание, всегда сможем придти и прикрутить что-то к чему-то\"}]}', 1, 2),
(5, 4, 'landing', '', 'landing_humans', '{\"humans\":[{\"image\":\"assets/images/noimage.jpg\",\"title\":\"Иван Иванов\",\"position\":\"Отец & Основатель\"},{\"image\":\"assets/images/noimage.jpg\",\"title\":\"Сергей Сергеев\",\"position\":\"Директор\"},{\"image\":\"assets/images/bez-imeni-1.png\",\"title\":\"Елена Наседкина\",\"position\":\"Сижу на ресепшене\"},{\"image\":\"assets/images/noimage.jpg\",\"title\":\"Андрей Казунин\",\"position\":\"Делал сайт\"}]}', 1, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_permissions`
--

CREATE TABLE `jdz6_permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `lang_key` varchar(255) NOT NULL DEFAULT '',
  `group_id` int(11) DEFAULT NULL,
  `disabled` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `jdz6_permissions`
--

INSERT INTO `jdz6_permissions` (`id`, `name`, `key`, `lang_key`, `group_id`, `disabled`, `created_at`, `updated_at`) VALUES
(1, 'Request manager frames', 'frames', 'role_frames', 1, 1, NULL, NULL),
(2, 'Request manager intro page', 'home', 'role_home', 1, 1, NULL, NULL),
(3, 'Log out of the manager', 'logout', 'role_logout', 1, 1, NULL, NULL),
(4, 'View help pages', 'help', 'role_help', 1, 0, NULL, NULL),
(5, 'View action completed screen', 'action_ok', 'role_actionok', 1, 1, NULL, NULL),
(6, 'View error dialog', 'error_dialog', 'role_errors', 1, 1, NULL, NULL),
(7, 'View the about page', 'about', 'role_about', 1, 1, NULL, NULL),
(8, 'View credits', 'credits', 'role_credits', 1, 1, NULL, NULL),
(9, 'Change password', 'change_password', 'role_change_password', 1, 0, NULL, NULL),
(10, 'Save password', 'save_password', 'role_save_password', 1, 0, NULL, NULL),
(11, 'View a Resource\'s data', 'view_document', 'role_view_docdata', 2, 1, NULL, NULL),
(12, 'Create new Resources', 'new_document', 'role_create_doc', 2, 0, NULL, NULL),
(13, 'Edit a Resource', 'edit_document', 'role_edit_doc', 2, 0, NULL, NULL),
(14, 'Change Resource-Type', 'change_resourcetype', 'role_change_resourcetype', 2, 0, NULL, NULL),
(15, 'Save Resources', 'save_document', 'role_save_doc', 2, 0, NULL, NULL),
(16, 'Publish Resources', 'publish_document', 'role_publish_doc', 2, 0, NULL, NULL),
(17, 'Delete Resources', 'delete_document', 'role_delete_doc', 2, 0, NULL, NULL),
(18, 'Permanently purge deleted Resources', 'empty_trash', 'role_empty_trash', 2, 0, NULL, NULL),
(19, 'Empty the site\'s cache', 'empty_cache', 'role_cache_refresh', 2, 0, NULL, NULL),
(20, 'View Unpublished Resources', 'view_unpublished', 'role_view_unpublished', 2, 0, NULL, NULL),
(21, 'Use the file manager (full root access)', 'file_manager', 'role_file_manager', 3, 0, NULL, NULL),
(22, 'Manage assets/files', 'assets_files', 'role_assets_files', 3, 0, NULL, NULL),
(23, 'Manage assets/images', 'assets_images', 'role_assets_images', 3, 0, NULL, NULL),
(24, 'Use the Category Manager', 'category_manager', 'role_category_manager', 4, 0, NULL, NULL),
(25, 'Create new Module', 'new_module', 'role_new_module', 5, 0, NULL, NULL),
(26, 'Edit Module', 'edit_module', 'role_edit_module', 5, 0, NULL, NULL),
(27, 'Save Module', 'save_module', 'role_save_module', 5, 0, NULL, NULL),
(28, 'Delete Module', 'delete_module', 'role_delete_module', 5, 0, NULL, NULL),
(29, 'Run Module', 'exec_module', 'role_run_module', 5, 0, NULL, NULL),
(30, 'List Module', 'list_module', 'role_list_module', 5, 0, NULL, NULL),
(31, 'Create new site Templates', 'new_template', 'role_create_template', 6, 0, NULL, NULL),
(32, 'Edit site Templates', 'edit_template', 'role_edit_template', 6, 0, NULL, NULL),
(33, 'Save Templates', 'save_template', 'role_save_template', 6, 0, NULL, NULL),
(34, 'Delete Templates', 'delete_template', 'role_delete_template', 6, 0, NULL, NULL),
(35, 'Create new Snippets', 'new_snippet', 'role_create_snippet', 7, 0, NULL, NULL),
(36, 'Edit Snippets', 'edit_snippet', 'role_edit_snippet', 7, 0, NULL, NULL),
(37, 'Save Snippets', 'save_snippet', 'role_save_snippet', 7, 0, NULL, NULL),
(38, 'Delete Snippets', 'delete_snippet', 'role_delete_snippet', 7, 0, NULL, NULL),
(39, 'Create new Chunks', 'new_chunk', 'role_create_chunk', 8, 0, NULL, NULL),
(40, 'Edit Chunks', 'edit_chunk', 'role_edit_chunk', 8, 0, NULL, NULL),
(41, 'Save Chunks', 'save_chunk', 'role_save_chunk', 8, 0, NULL, NULL),
(42, 'Delete Chunks', 'delete_chunk', 'role_delete_chunk', 8, 0, NULL, NULL),
(43, 'Create new Plugins', 'new_plugin', 'role_create_plugin', 9, 0, NULL, NULL),
(44, 'Edit Plugins', 'edit_plugin', 'role_edit_plugin', 9, 0, NULL, NULL),
(45, 'Save Plugins', 'save_plugin', 'role_save_plugin', 9, 0, NULL, NULL),
(46, 'Delete Plugins', 'delete_plugin', 'role_delete_plugin', 9, 0, NULL, NULL),
(47, 'Create new users', 'new_user', 'role_new_user', 10, 0, NULL, NULL),
(48, 'Edit users', 'edit_user', 'role_edit_user', 10, 0, NULL, NULL),
(49, 'Save users', 'save_user', 'role_save_user', 10, 0, NULL, NULL),
(50, 'Delete users', 'delete_user', 'role_delete_user', 10, 0, NULL, NULL),
(51, 'Manager access permissions', 'access_permissions', 'manager_access_permissions', 11, 0, NULL, NULL),
(52, 'Manage document and user groups', 'manage_groups', 'manage_groups', 11, 0, NULL, NULL),
(53, 'Manage document permissions', 'manage_document_permissions', 'manage_document_permissions', 11, 0, NULL, NULL),
(54, 'Manage module permissions', 'manage_module_permissions', 'manage_module_permissions', 11, 0, NULL, NULL),
(55, 'Manage TV permissions', 'manage_tv_permissions', 'manage_tv_permissions', 11, 0, NULL, NULL),
(56, 'Create new roles', 'new_role', 'role_new_role', 12, 0, NULL, NULL),
(57, 'Edit roles', 'edit_role', 'role_edit_role', 12, 0, NULL, NULL),
(58, 'Save roles', 'save_role', 'role_save_role', 12, 0, NULL, NULL),
(59, 'Delete roles', 'delete_role', 'role_delete_role', 12, 0, NULL, NULL),
(60, 'View event log', 'view_eventlog', 'role_view_eventlog', 13, 0, NULL, NULL),
(61, 'Delete event log', 'delete_eventlog', 'role_delete_eventlog', 13, 0, NULL, NULL),
(62, 'View system logs', 'logs', 'role_view_logs', 14, 0, NULL, NULL),
(63, 'Change site settings', 'settings', 'role_edit_settings', 14, 0, NULL, NULL),
(64, 'Use the Backup Manager', 'bk_manager', 'role_bk_manager', 14, 0, NULL, NULL),
(65, 'Remove Locks', 'remove_locks', 'role_remove_locks', 14, 0, NULL, NULL),
(66, 'Display Locks', 'display_locks', 'role_display_locks', 14, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_permissions_groups`
--

CREATE TABLE `jdz6_permissions_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lang_key` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `jdz6_permissions_groups`
--

INSERT INTO `jdz6_permissions_groups` (`id`, `name`, `lang_key`, `created_at`, `updated_at`) VALUES
(1, 'General', 'page_data_general', NULL, NULL),
(2, 'Content Management', 'role_content_management', NULL, NULL),
(3, 'File Management', 'role_file_management', NULL, NULL),
(4, 'Category Management', 'category_management', NULL, NULL),
(5, 'Module Management', 'role_module_management', NULL, NULL),
(6, 'Template Management', 'role_template_management', NULL, NULL),
(7, 'Snippet Management', 'role_snippet_management', NULL, NULL),
(8, 'Chunk Management', 'role_chunk_management', NULL, NULL),
(9, 'Plugin Management', 'role_plugin_management', NULL, NULL),
(10, 'User Management', 'role_user_management', NULL, NULL),
(11, 'Permissions', 'role_udperms', NULL, NULL),
(12, 'Role Management', 'role_role_management', NULL, NULL),
(13, 'Events Log Management', 'role_eventlog_management', NULL, NULL),
(14, 'Config Management', 'role_config_management', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_role_permissions`
--

CREATE TABLE `jdz6_role_permissions` (
  `id` int(11) NOT NULL,
  `permission` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `jdz6_role_permissions`
--

INSERT INTO `jdz6_role_permissions` (`id`, `permission`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'frames', 1, NULL, NULL),
(2, 'home', 1, NULL, NULL),
(3, 'logout', 1, NULL, NULL),
(4, 'help', 1, NULL, NULL),
(5, 'role_actionok', 1, NULL, NULL),
(6, 'error_dialog', 1, NULL, NULL),
(7, 'about', 1, NULL, NULL),
(8, 'credits', 1, NULL, NULL),
(9, 'change_password', 1, NULL, NULL),
(10, 'save_password', 1, NULL, NULL),
(11, 'view_document', 1, NULL, NULL),
(12, 'new_document', 1, NULL, NULL),
(13, 'edit_document', 1, NULL, NULL),
(14, 'change_resourcetype', 1, NULL, NULL),
(15, 'save_document', 1, NULL, NULL),
(16, 'publish_document', 1, NULL, NULL),
(17, 'delete_document', 1, NULL, NULL),
(18, 'empty_trash', 1, NULL, NULL),
(19, 'empty_cache', 1, NULL, NULL),
(20, 'view_unpublished', 1, NULL, NULL),
(21, 'file_manager', 1, NULL, NULL),
(22, 'assets_files', 1, NULL, NULL),
(23, 'assets_images', 1, NULL, NULL),
(24, 'category_manager', 1, NULL, NULL),
(25, 'new_module', 1, NULL, NULL),
(26, 'edit_module', 1, NULL, NULL),
(27, 'save_module', 1, NULL, NULL),
(28, 'delete_module', 1, NULL, NULL),
(29, 'exec_module', 1, NULL, NULL),
(30, 'list_module', 1, NULL, NULL),
(31, 'new_template', 1, NULL, NULL),
(32, 'edit_template', 1, NULL, NULL),
(33, 'save_template', 1, NULL, NULL),
(34, 'delete_template', 1, NULL, NULL),
(35, 'new_snippet', 1, NULL, NULL),
(36, 'edit_snippet', 1, NULL, NULL),
(37, 'save_snippet', 1, NULL, NULL),
(38, 'delete_snippet', 1, NULL, NULL),
(39, 'new_chunk', 1, NULL, NULL),
(40, 'edit_chunk', 1, NULL, NULL),
(41, 'save_chunk', 1, NULL, NULL),
(42, 'delete_chunk', 1, NULL, NULL),
(43, 'new_plugin', 1, NULL, NULL),
(44, 'edit_plugin', 1, NULL, NULL),
(45, 'save_plugin', 1, NULL, NULL),
(46, 'delete_plugin', 1, NULL, NULL),
(47, 'new_user', 1, NULL, NULL),
(48, 'edit_user', 1, NULL, NULL),
(49, 'save_user', 1, NULL, NULL),
(50, 'delete_user', 1, NULL, NULL),
(51, 'access_permissions', 1, NULL, NULL),
(52, 'manage_groups', 1, NULL, NULL),
(53, 'manage_document_permissions', 1, NULL, NULL),
(54, 'manage_module_permissions', 1, NULL, NULL),
(55, 'manage_tv_permissions', 1, NULL, NULL),
(56, 'new_role', 1, NULL, NULL),
(57, 'edit_role', 1, NULL, NULL),
(58, 'save_role', 1, NULL, NULL),
(59, 'delete_role', 1, NULL, NULL),
(60, 'view_eventlog', 1, NULL, NULL),
(61, 'delete_eventlog', 1, NULL, NULL),
(62, 'logs', 1, NULL, NULL),
(63, 'settings', 1, NULL, NULL),
(64, 'bk_manager', 1, NULL, NULL),
(65, 'remove_locks', 1, NULL, NULL),
(66, 'display_locks', 1, NULL, NULL),
(67, 'frames', 2, NULL, NULL),
(68, 'home', 2, NULL, NULL),
(69, 'logout', 2, NULL, NULL),
(70, 'help', 2, NULL, NULL),
(71, 'role_actionok', 2, NULL, NULL),
(72, 'error_dialog', 2, NULL, NULL),
(73, 'about', 2, NULL, NULL),
(74, 'credits', 2, NULL, NULL),
(75, 'change_password', 2, NULL, NULL),
(76, 'save_password', 2, NULL, NULL),
(77, 'view_document', 2, NULL, NULL),
(78, 'new_document', 2, NULL, NULL),
(79, 'edit_document', 2, NULL, NULL),
(80, 'change_resourcetype', 2, NULL, NULL),
(81, 'save_document', 2, NULL, NULL),
(82, 'publish_document', 2, NULL, NULL),
(83, 'delete_document', 2, NULL, NULL),
(84, 'empty_cache', 2, NULL, NULL),
(85, 'view_unpublished', 2, NULL, NULL),
(86, 'file_manager', 2, NULL, NULL),
(87, 'assets_files', 2, NULL, NULL),
(88, 'assets_images', 2, NULL, NULL),
(89, 'exec_module', 2, NULL, NULL),
(90, 'list_module', 2, NULL, NULL),
(91, 'edit_chunk', 2, NULL, NULL),
(92, 'save_chunk', 2, NULL, NULL),
(93, 'remove_locks', 2, NULL, NULL),
(94, 'display_locks', 2, NULL, NULL),
(95, 'access_permissions', 2, NULL, NULL),
(96, 'manage_document_permissions', 2, NULL, NULL),
(97, 'frames', 3, NULL, NULL),
(98, 'home', 3, NULL, NULL),
(99, 'logout', 3, NULL, NULL),
(100, 'help', 3, NULL, NULL),
(101, 'role_actionok', 3, NULL, NULL),
(102, 'error_dialog', 3, NULL, NULL),
(103, 'about', 3, NULL, NULL),
(104, 'credits', 3, NULL, NULL),
(105, 'change_password', 3, NULL, NULL),
(106, 'save_password', 3, NULL, NULL),
(107, 'view_document', 3, NULL, NULL),
(108, 'new_document', 3, NULL, NULL),
(109, 'edit_document', 3, NULL, NULL),
(110, 'change_resourcetype', 3, NULL, NULL),
(111, 'save_document', 3, NULL, NULL),
(112, 'publish_document', 3, NULL, NULL),
(113, 'delete_document', 3, NULL, NULL),
(114, 'empty_trash', 3, NULL, NULL),
(115, 'empty_cache', 3, NULL, NULL),
(116, 'view_unpublished', 3, NULL, NULL),
(117, 'file_manager', 3, NULL, NULL),
(118, 'assets_files', 3, NULL, NULL),
(119, 'assets_images', 3, NULL, NULL),
(120, 'exec_module', 3, NULL, NULL),
(121, 'list_module', 3, NULL, NULL),
(122, 'new_template', 3, NULL, NULL),
(123, 'edit_template', 3, NULL, NULL),
(124, 'save_template', 3, NULL, NULL),
(125, 'delete_template', 3, NULL, NULL),
(126, 'new_chunk', 3, NULL, NULL),
(127, 'edit_chunk', 3, NULL, NULL),
(128, 'save_chunk', 3, NULL, NULL),
(129, 'delete_chunk', 3, NULL, NULL),
(130, 'new_user', 3, NULL, NULL),
(131, 'edit_user', 3, NULL, NULL),
(132, 'save_user', 3, NULL, NULL),
(133, 'delete_user', 3, NULL, NULL),
(134, 'logs', 3, NULL, NULL),
(135, 'settings', 3, NULL, NULL),
(136, 'bk_manager', 3, NULL, NULL),
(137, 'remove_locks', 3, NULL, NULL),
(138, 'display_locks', 3, NULL, NULL),
(139, 'access_permissions', 3, NULL, NULL),
(140, 'manage_document_permissions', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_site_content`
--

CREATE TABLE `jdz6_site_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(255) NOT NULL DEFAULT '',
  `longtitle` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(245) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '' COMMENT 'Link attriubtes',
  `published` int(11) NOT NULL DEFAULT 0,
  `pub_date` int(11) NOT NULL DEFAULT 0,
  `unpub_date` int(11) NOT NULL DEFAULT 0,
  `parent` int(11) NOT NULL DEFAULT 0,
  `isfolder` int(11) NOT NULL DEFAULT 0,
  `introtext` text DEFAULT NULL COMMENT 'Used to provide quick summary of the document',
  `content` longtext DEFAULT NULL,
  `richtext` tinyint(1) NOT NULL DEFAULT 1,
  `template` int(11) NOT NULL DEFAULT 0,
  `menuindex` int(11) NOT NULL DEFAULT 0,
  `searchable` int(11) NOT NULL DEFAULT 1,
  `cacheable` int(11) NOT NULL DEFAULT 1,
  `createdby` int(11) NOT NULL DEFAULT 0,
  `createdon` int(11) NOT NULL DEFAULT 0,
  `editedby` int(11) NOT NULL DEFAULT 0,
  `editedon` int(11) NOT NULL DEFAULT 0,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `deletedon` int(11) NOT NULL DEFAULT 0,
  `deletedby` int(11) NOT NULL DEFAULT 0,
  `publishedon` int(11) NOT NULL DEFAULT 0 COMMENT 'Date the document was published',
  `publishedby` int(11) NOT NULL DEFAULT 0 COMMENT 'ID of user who published the document',
  `menutitle` varchar(255) NOT NULL DEFAULT '' COMMENT 'Menu title',
  `hide_from_tree` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Disable page hit count',
  `privateweb` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Private web document',
  `privatemgr` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Private manager document',
  `content_dispo` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-inline, 1-attachment',
  `hidemenu` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Hide document from menu',
  `alias_visible` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `jdz6_site_content`
--

INSERT INTO `jdz6_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `hide_from_tree`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `alias_visible`) VALUES
(1, 'document', 'text/html', 'Главная', '', '', 'index', '', 1, 0, 0, 0, 0, '', '<h3>Install Successful!</h3>\r\n<p>You have successfully installed Evolution CMS.</p>\r\n<h3>Getting Help</h3>\r\n<p>The <a href=\"http://evo.im/\" target=\"_blank\" rel=\"noopener\">Evolution CMS Community</a> provides a great starting point to learn all things Evolution CMS, or you can also <a href=\"http://evo.im/\">see some great learning resources</a> (books, tutorials, blogs and screencasts).</p>\r\n<p>Welcome to Evolution CMS!</p>', 1, 2, 0, 1, 1, 0, 1130304721, 1, 1705401836, 0, 0, 0, 1130304721, 1, '', 0, 0, 0, 0, 0, 1),
(2, 'document', 'text/html', 'Каталог', '', '', 'catalog', '', 1, 0, 0, 0, 1, '', '', 1, 3, 1, 1, 1, 1, 1686833672, 0, 1704876355, 0, 0, 0, 1686833672, 1, '', 0, 0, 0, 0, 0, 1),
(3, 'document', 'text/html', 'Новости', '', '', 'news', '', 1, 0, 0, 0, 1, '', '', 1, 6, 2, 1, 1, 1, 1686833696, 0, 1704876355, 0, 0, 0, 1686833696, 1, '', 0, 0, 0, 0, 0, 1),
(4, 'document', 'text/html', 'О компании', '', '', 'about', '', 1, 0, 0, 0, 0, '', '<p>Наша компания предлагает вам предложения, которые вам понравятся и смогут решить вот такие вот проблемы быстро и качественно.</p>\r\n<p>Ведь не может быть, чтобы тот, кто прочитал это, не вдохновился покупкой нашего уникального предложения. Оно настолько уникально, что его предлагают из каждого утюга. Значит, есть спрос.&nbsp;</p>\r\n<p>Покупайте сейчас. А то скоро опять страна начнёт клеить танчики и закручивать гайки, и всё будет как всегда дороже.</p>\r\n<p>А мы пока держим цены, вот такие мы хорошие и не обманываем ни разу.</p>', 1, 12, 4, 1, 1, 1, 1686833716, 1, 1705583185, 0, 0, 0, 1686833716, 1, '', 0, 0, 0, 0, 0, 1),
(5, 'document', 'text/html', 'Контакты', '', '', 'contacts', '', 1, 0, 0, 0, 0, '', '<h1 class=\"h1\">Контактная информация</h1>\r\n<p>Сайт сделан в рамках уроков по системе управления Evoluiton CMS. Компания выдумана, весь контент сгенерировала Алиса в соавторстве с Чатжпт. Картинки взяты первые попавшиеся.</p>\r\n<p>Уроки, в которых используется этот шаблон находятся на&nbsp;<a href=\"https://github.com/0test/lessons-evolution-company\">моём гитхабе</a>&nbsp;, сам я нахожусь&nbsp;<a href=\"https://kazunin.ru/\">тут</a>&nbsp;.</p>', 1, 9, 5, 1, 1, 1, 1686833733, 1, 1705409460, 0, 0, 0, 1686833732, 1, '', 0, 0, 0, 0, 0, 1),
(6, 'document', 'text/html', 'Мы открылись', '', '', 'my-otkrylis', '', 1, 0, 0, 3, 0, 'Обеспечим население доступными и качественными болтиками и гаечками', '<p>Мы рады сообщить о нашем открытии и начале нашей миссии по обеспечению доступности качественных болтиков и гаечек для всех, кто в них нуждается.</p>\r\n<p>С момента нашей идеи, мы стремились предложить нашим клиентам самый широкий ассортимент крепежных изделий и инструментов, который бы отвечал высоким стандартам качества и предпочтениям различных потребителей. Мы гордимся тем, что уже завоевали доверие среди наших клиентов благодаря нашим конкурентоспособным ценам и внимательному обслуживанию.</p>\r\n<p>Мы с нетерпением ждем продолжения нашего роста и развития на благо нашего сообщества и в поддержку местной экономики.</p>', 1, 7, 0, 1, 1, 1, 1686833938, 1, 1704967116, 0, 0, 0, 1686833938, 1, '', 0, 0, 0, 0, 1, 1),
(7, 'document', 'text/html', 'Мы немного поработали', '', '', 'my-nemnogo-porabotali', '', 1, 0, 0, 3, 0, 'Успешная работа компании по продаже болтиков и гаечек способствует развитию местной экономики', '<p>С момента своего открытия, компания по продаже болтиков и гаечек активно работает над расширением своего ассортимента и клиентской базы. Всё больше местных предприятий и частных лиц обращаются к нам за качественными крепежными изделиями.</p>\r\n<p>Фирма также активно сотрудничает с другими поставщиками, чтобы предложить своим клиентам самый широкий выбор товаров. Это включает в себя не только обычные болтики и гаечки, но и специализированные крепежи для различных отраслей промышленности.</p>\r\n<p>Успешная работа этой компании уже оказала положительное влияние на местную экономику, создавая новые рабочие места и увеличивая налоговые поступления. Мы с нетерпением ждем дальнейшего роста и успеха нашей молодой, но перспективной компании.</p>', 1, 7, 1, 1, 1, 1, 1686833956, 1, 1704967192, 0, 0, 0, 1686833956, 1, '', 0, 0, 0, 0, 1, 1),
(8, 'document', 'text/html', 'У директора был день рождения', '', '', 'u-direktora-byl-den-rozhdeniya', '', 1, 0, 0, 3, 0, 'Празднование Дня Рождения основателя компании по продаже болтиков и гаечек', '<p>Недавно основатель и директор компании, занимающейся продажей болтиков и гаечек, отпраздновал свой день рождения. В честь этого события компания организовала специальное мероприятие, на котором присутствовали многие клиенты и партнеры компании.</p>\r\n<p>На празднике директор получил множество поздравлений и благодарностей за свою работу. Гости также отметили, что компания внесла значительный вклад в развитие местной экономики и улучшение качества жизни людей.</p>\r\n<p>Директор компании выразил свою благодарность всем присутствующим и отметил, что успех его предприятия был бы невозможен без поддержки клиентов и партнеров. Он также пообещал продолжать работать на благо общества и развивать свою компанию.</p>', 1, 7, 2, 1, 1, 1, 1686833974, 1, 1704967309, 0, 0, 0, 1686833974, 1, '', 0, 0, 0, 0, 1, 1),
(9, 'document', 'text/html', 'У нас выходной', '', '', 'u-nas-vyhodnoj', '', 1, 0, 0, 3, 0, 'Новогодние праздники в компании по продаже болтиков и гаечек', '<p>С 31 декабря по 10 января включительно, компания не будет работать.</p>\r\n<p>Сотрудники компании благодарят своих клиентов за поддержку и желают им счастливых праздников. Они также обещают вернуться к работе 11 января и быть готовыми к новым заказам.</p>', 1, 7, 3, 1, 1, 1, 1686833998, 1, 1704967362, 0, 0, 0, 1686833998, 1, '', 0, 0, 0, 0, 1, 1),
(11, 'document', 'text/html', 'Мы закрылись', '', '', 'my-zakrylis', '', 1, 0, 0, 3, 0, 'Гудит, как улей, родной завод.', '<p>С сожалением сообщаем, что наша компания закрывается.&nbsp;</p>\r\n<p>Последний день работы - 31 нулебря 2024 года. До этого дня у вас есть возможность сделать последние покупки по выгодным ценам.</p>\r\n<p>Если вы ищете альтернативные варианты для покупок, рекомендуем обратить внимание на наших партнеров: магазины &laquo;Компания 2&raquo; и &laquo;Компания 3&raquo;. Они предлагают широкий ассортимент болтиков и гаечек.</p>\r\n<p>Спасибо всем клиентам за лояльность и поддержку нашего магазина. Ваши покупки были для нас очень важны, и мы ценим ваше доверие.</p>', 1, 7, 5, 1, 1, 1, 1686834022, 1, 1704968983, 0, 0, 0, 1686834021, 1, '', 0, 0, 0, 0, 1, 1),
(12, 'document', 'text/html', 'Разное', '', '', 'any', '', 1, 0, 0, 2, 1, '', '', 1, 4, 2, 1, 1, 1, 1686834484, 0, 1686906317, 0, 0, 0, 1686834483, 1, '', 0, 0, 0, 0, 0, 1),
(13, 'document', 'text/html', 'Гайки', '', '', 'screws', '', 1, 0, 0, 2, 1, '', '', 1, 4, 0, 1, 1, 1, 1686905865, 1, 1704878159, 0, 0, 0, 1686905865, 1, '', 0, 0, 0, 0, 0, 1),
(14, 'document', 'text/html', 'Болты', '', '', 'bolt', '', 1, 0, 0, 2, 1, '', '', 1, 4, 1, 1, 1, 1, 1686905903, 1, 1704878256, 0, 0, 0, 1686905903, 1, '', 0, 0, 0, 0, 0, 1),
(15, 'document', 'text/html', 'Гайка М6', '', '', 'gajka-m6', '', 1, 0, 0, 13, 0, '', '<p>Тип гайка</p>\r\n<p>Материал сталь</p>\r\n<p>Тип гайки обыкновенная</p>\r\n<p>Шаг резьбы 2</p>\r\n<p>DIN стандарт 934</p>\r\n<p>Количество штук в упаковке 20 шт.</p>', 1, 5, 0, 1, 1, 1, 1686905970, 1, 1704974169, 0, 0, 0, 1686905970, 1, '', 0, 0, 0, 0, 1, 1),
(16, 'document', 'text/html', 'Болт М6', '', '', 'bolt-m6', '', 1, 0, 0, 14, 0, '', '<p>Болт М6 с внутренним шестигранником и цилиндрической головкой. Применяется для соединения элементов конструкций в машиностроении, приборостроении и прочих промышленно-производственных и строительных отраслях совместно с гайками, шайбами соответствующих размеров. Класс прочности 8.8. Винты изготовлены из оцинкованной стали.</p>', 1, 5, 0, 1, 1, 1, 1686906192, 1, 1704973581, 0, 0, 0, 1686906191, 1, '', 0, 0, 0, 0, 1, 1),
(17, 'document', 'text/html', 'Коробка для гаек', '', '', 'korobka-dlya-gaek', '', 1, 0, 0, 12, 0, '', '', 1, 5, 0, 1, 1, 1, 1686906217, 1, 1704878430, 0, 0, 0, 1686906216, 1, '', 0, 0, 0, 0, 1, 1),
(18, 'document', 'text/html', 'Гайка М8', '', '', 'gajka-m8', '', 1, 0, 0, 13, 0, '', '<p>Тип гайка</p>\r\n<p>Материал сталь</p>\r\n<p>Тип гайки обыкновенная</p>\r\n<p>Шаг резьбы 2</p>\r\n<p>DIN стандарт 934</p>\r\n<p>Количество штук в упаковке 20 шт.</p>', 1, 5, 1, 1, 1, 1, 1686906252, 1, 1704974185, 0, 0, 0, 1686906252, 1, '', 0, 0, 0, 0, 1, 1),
(19, 'document', 'text/html', 'Болт М8', '', '', 'bolt-m8', '', 1, 0, 0, 14, 0, '', '<p>Болт М8 с внутренним шестигранником и цилиндрической головкой. Применяется для соединения элементов конструкций в машиностроении, приборостроении и прочих промышленно-производственных и строительных отраслях совместно с гайками, шайбами соответствующих размеров.</p>\r\n<p>Класс прочности 8.8. Винты изготовлены из оцинкованной стали.</p>', 1, 5, 1, 1, 1, 1, 1686906274, 1, 1704973610, 0, 0, 0, 1686906274, 1, '', 0, 0, 0, 0, 1, 1),
(20, 'document', 'text/html', 'Коробка для болтов', '', '', 'korobka-dlya-boltov', '', 1, 0, 0, 12, 0, '', '', 1, 5, 1, 1, 1, 1, 1686906289, 1, 1704878285, 0, 0, 0, 1686906289, 1, '', 0, 0, 0, 0, 1, 1),
(21, 'document', 'text/html', 'Ключ М8-М10', '', '', 'klyuch-m8-m10', '', 1, 0, 0, 12, 0, '', '', 1, 5, 2, 1, 1, 1, 1686906303, 1, 1704878309, 0, 0, 0, 1686906302, 1, '', 0, 0, 0, 0, 1, 1),
(22, 'document', 'text/html', 'Ключ М6-М8', '', '', 'klyuch-m6-m8', '', 1, 0, 0, 12, 0, '', '', 1, 5, 3, 1, 1, 1, 1686906317, 1, 1704878327, 0, 0, 0, 1686906317, 1, '', 0, 0, 0, 0, 1, 1),
(23, 'document', 'text/html', 'Наши работы', '', 'portfolio_all', 'portfolio_all', '', 1, 0, 0, 0, 1, '', '', 1, 10, 3, 1, 1, 1, 1704876348, 1, 1705061762, 0, 0, 0, 1704876348, 1, '', 0, 0, 0, 0, 0, 1),
(24, 'document', 'text/html', 'Установили что-то', '', '', 'ustanovili-chto-to', '', 1, 0, 0, 23, 0, 'Мы очень круто установили какое-то сложное оборудование, прикрутив его гайками и болтиками из нашего ассортимента', '<p>Мы рады сообщить о недавнем успешном проекте, в котором мы приняли активное участие. Наш клиент, крупная международная компания, столкнулся с необходимостью установки сложного высокотехнологичного оборудования.</p>\r\n<p>В рамках проекта мы не только предоставили высококачественные гайки и болты из нашего ассортимента, но и приняли непосредственное участие в процессе установки оборудования. Наша команда специалистов провела тщательное планирование и подготовительные работы, что позволило нам установить оборудование быстро, аккуратно и без ошибок.</p>\r\n<p>Оборудование, которое мы устанавливали, имеет важное значение для клиента и его деятельности. Благодаря использованию наших гаек и болтов, установка оборудования прошла без каких-либо проблем и затруднений. Мы были особенно горды тем, что смогли внести свой вклад в этот проект и обеспечить надежное крепление оборудования.</p>\r\n<p>Сотрудничество с клиентом началось с обсуждения его требований и пожеланий, а также уточнения всех деталей и особенностей проекта. На основе полученных данных, мы разработали план установки оборудования, который учитывал все аспекты и обеспечивал наилучший результат.</p>', 1, 11, 0, 1, 1, 1, 1704876387, 1, 1705316287, 0, 0, 0, 1704876387, 1, '', 0, 0, 0, 0, 1, 1),
(25, 'document', 'text/html', 'Подключили где-то', '', '', 'podklyuchili-gde-to', '', 1, 0, 0, 23, 0, '', '', 1, 11, 1, 1, 1, 1, 1704876403, 1, 1704876468, 0, 0, 0, 1704876403, 1, '', 0, 0, 0, 0, 1, 1),
(26, 'document', 'text/html', 'Гайка М10', '', '', 'gajka-m10', '', 1, 0, 0, 13, 0, '', '<p>Тип гайка</p>\r\n<p>Материал сталь</p>\r\n<p>Тип гайки обыкновенная</p>\r\n<p>Шаг резьбы 2</p>\r\n<p>DIN стандарт 934</p>\r\n<p>Количество штук в упаковке 20 шт.</p>', 1, 5, 1, 1, 1, 1, 1704878211, 1, 1704974152, 0, 0, 0, 1704878225, 1, '', 0, 0, 0, 0, 1, 1),
(27, 'document', 'text/html', 'Болт М10', '', '', 'bolt-m10', '', 1, 0, 0, 14, 0, '', '<p>Болт М10 с внутренним шестигранником и цилиндрической головкой. Применяется для соединения элементов конструкций в машиностроении, приборостроении и прочих промышленно-производственных и строительных отраслях совместно с гайками, шайбами соответствующих размеров. Класс прочности 8.8. Винты изготовлены из оцинкованной стали.</p>', 1, 5, 2, 1, 1, 1, 1704878256, 1, 1704973596, 0, 0, 0, 1704878256, 1, '', 0, 0, 0, 0, 1, 1),
(28, 'document', 'text/xml', 'sitemap.xml', '', '', 'sitemap.xml', '', 1, 0, 0, 0, 0, '', '', 0, 13, 6, 1, 1, 1, 1705584590, 0, 1705584590, 0, 0, 0, 1705584589, 1, '', 0, 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_site_content_closure`
--

CREATE TABLE `jdz6_site_content_closure` (
  `closure_id` int(10) UNSIGNED NOT NULL,
  `ancestor` int(10) UNSIGNED NOT NULL,
  `descendant` int(10) UNSIGNED NOT NULL,
  `depth` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `jdz6_site_content_closure`
--

INSERT INTO `jdz6_site_content_closure` (`closure_id`, `ancestor`, `descendant`, `depth`) VALUES
(1, 1, 1, 0),
(2, 2, 2, 0),
(3, 3, 3, 0),
(4, 4, 4, 0),
(5, 5, 5, 0),
(7, 6, 6, 0),
(8, 3, 6, 1),
(10, 7, 7, 0),
(11, 3, 7, 1),
(13, 8, 8, 0),
(14, 3, 8, 1),
(16, 9, 9, 0),
(17, 3, 9, 1),
(19, 10, 10, 0),
(20, 3, 10, 1),
(22, 11, 11, 0),
(23, 3, 11, 1),
(25, 12, 12, 0),
(26, 2, 12, 1),
(28, 13, 13, 0),
(29, 2, 13, 1),
(31, 14, 14, 0),
(32, 2, 14, 1),
(35, 15, 15, 0),
(36, 13, 15, 1),
(37, 2, 15, 2),
(41, 16, 16, 0),
(42, 14, 16, 1),
(43, 2, 16, 2),
(47, 17, 17, 0),
(48, 12, 17, 1),
(49, 2, 17, 2),
(53, 18, 18, 0),
(54, 13, 18, 1),
(55, 2, 18, 2),
(59, 19, 19, 0),
(60, 14, 19, 1),
(61, 2, 19, 2),
(65, 20, 20, 0),
(66, 12, 20, 1),
(67, 2, 20, 2),
(71, 21, 21, 0),
(72, 12, 21, 1),
(73, 2, 21, 2),
(77, 22, 22, 0),
(78, 12, 22, 1),
(79, 2, 22, 2),
(80, 23, 23, 0),
(81, 23, 24, 1),
(82, 24, 24, 0),
(83, 23, 25, 1),
(84, 25, 25, 0),
(85, 13, 26, 1),
(86, 2, 26, 2),
(87, 26, 26, 0),
(88, 14, 27, 1),
(89, 2, 27, 2),
(90, 27, 27, 0),
(91, 28, 28, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_site_htmlsnippets`
--

CREATE TABLE `jdz6_site_htmlsnippets` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT 0 COMMENT '0-plain text,1-rich text,2-code editor',
  `editor_name` varchar(50) NOT NULL DEFAULT 'none',
  `category` int(11) NOT NULL DEFAULT 0 COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Cache option',
  `snippet` mediumtext DEFAULT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `createdon` int(11) NOT NULL DEFAULT 0,
  `editedon` int(11) NOT NULL DEFAULT 0,
  `disabled` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Disables the snippet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_site_modules`
--

CREATE TABLE `jdz6_site_modules` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `editor_type` int(11) NOT NULL DEFAULT 0 COMMENT '0-plain text,1-rich text,2-code editor',
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0 COMMENT 'category id',
  `wrap` tinyint(1) NOT NULL DEFAULT 0,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to module icon',
  `enable_resource` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'enables the resource file feature',
  `resourcefile` varchar(255) NOT NULL DEFAULT '' COMMENT 'a physical link to a resource file',
  `createdon` int(11) NOT NULL DEFAULT 0,
  `editedon` int(11) NOT NULL DEFAULT 0,
  `guid` varchar(32) DEFAULT '' COMMENT 'globally unique identifier',
  `enable_sharedparams` tinyint(1) NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL,
  `modulecode` mediumtext DEFAULT NULL COMMENT 'module boot up code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `jdz6_site_modules`
--

INSERT INTO `jdz6_site_modules` (`id`, `name`, `description`, `editor_type`, `disabled`, `category`, `wrap`, `locked`, `icon`, `enable_resource`, `resourcefile`, `createdon`, `editedon`, `guid`, `enable_sharedparams`, `properties`, `modulecode`) VALUES
(1, 'Extras', '<strong>0.1.3</strong> first repository for Evolution CMS', 0, 0, 1, 0, 0, '', 0, '', 1686310760, 1686310760, 'store435243542tf542t5t', 1, '', ' \r\n/**\r\n * Extras\r\n * \r\n * first repository for Evolution CMS\r\n * \r\n * @category	module\r\n * @version 	0.1.3\r\n * @internal	@properties\r\n * @internal	@guid store435243542tf542t5t	\r\n * @internal	@shareparams 1\r\n * @internal	@dependencies requires files located at /assets/modules/store/\r\n * @internal	@modx_category Manager and Admin\r\n * @internal    @installset base, sample\r\n * @lastupdate  25/11/2016\r\n */\r\n\r\n//AUTHORS: Bumkaka & Dmi3yy \r\ninclude_once(\'../assets/modules/store/core.php\');'),
(2, 'ClientSettings', '<strong>2.2.0</strong> Customizable set of fields for user settings', 0, 0, 1, 0, 0, '', 0, '', 1686312458, 1686312458, 'clsee234523g354f542t5t', 1, '{\"prefix\":[{\"label\":\"Prefix for settings\",\"type\":\"text\",\"value\":\"client_\",\"default\":\"client_\",\"desc\":\"\"}],\"config_path\":[{\"label\":\"Path to configuration files\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}', '\n\nrequire_once MODX_BASE_PATH . \'assets/modules/clientsettings/core/src/ClientSettings.php\';\n\nif (!$modx->hasPermission(\'exec_module\')) {\n    $modx->sendRedirect(\'index.php?a=106\');\n}\n\nif (!is_array($modx->event->params)) {\n    $modx->event->params = [];\n}\n\nif (!function_exists(\'renderFormElement\')) {\n    include_once MODX_MANAGER_PATH . \'includes/tmplvars.commands.inc.php\';\n    include_once MODX_MANAGER_PATH . \'includes/tmplvars.inc.php\';\n}\n\nif (isset($_REQUEST[\'stay\'])) {\n    $_SESSION[\'stay\'] = $_REQUEST[\'stay\'];\n} else if (isset($_SESSION[\'stay\'])) {\n    $_REQUEST[\'stay\'] = $_SESSION[\'stay\'];\n}\n\n(new ClientSettings($params))->processRequest();\n');

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_site_module_access`
--

CREATE TABLE `jdz6_site_module_access` (
  `id` int(10) UNSIGNED NOT NULL,
  `module` int(11) NOT NULL DEFAULT 0,
  `usergroup` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_site_module_depobj`
--

CREATE TABLE `jdz6_site_module_depobj` (
  `id` int(11) NOT NULL,
  `module` int(11) NOT NULL DEFAULT 0,
  `resource` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '10-chunks, 20-docs, 30-plugins, 40-snips, 50-tpls, 60-tvs'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `jdz6_site_module_depobj`
--

INSERT INTO `jdz6_site_module_depobj` (`id`, `module`, `resource`, `type`) VALUES
(1, 2, 8, 30);

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_site_plugins`
--

CREATE TABLE `jdz6_site_plugins` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Plugin',
  `editor_type` int(11) NOT NULL DEFAULT 0 COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT 0 COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Cache option',
  `plugincode` mediumtext DEFAULT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL COMMENT 'Default Properties',
  `disabled` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Disables the plugin',
  `moduleguid` varchar(32) DEFAULT '' COMMENT 'GUID of module from which to import shared parameters',
  `createdon` int(11) NOT NULL DEFAULT 0,
  `editedon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `jdz6_site_plugins`
--

INSERT INTO `jdz6_site_plugins` (`id`, `name`, `description`, `editor_type`, `category`, `cache_type`, `plugincode`, `locked`, `properties`, `disabled`, `moduleguid`, `createdon`, `editedon`) VALUES
(1, 'AboutEvoWidget', '<strong>1.0.0</strong> displays useful links at the dashboardn', 0, 1, 0, 'require MODX_BASE_PATH.\'assets/plugins/aboutevo/plugin.aboutevo.php\';\r\n', 0, '', 0, '', 1686310760, 1686310760),
(2, 'CodeMirror', '<strong>1.7</strong> JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.33 (released on 21-12-2017)', 0, 1, 0, '\r\n/**\r\n * CodeMirror\r\n *\r\n * JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.33 (released on 21-12-2017)\r\n *\r\n * @category    plugin\r\n * @version     1.7\r\n * @license     http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\r\n * @package     evo\r\n * @internal    @events OnDocFormRender,OnChunkFormRender,OnModFormRender,OnPluginFormRender,OnSnipFormRender,OnTempFormRender,OnRichTextEditorInit,OnTVFormRender\r\n * @internal    @modx_category Manager and Admin\r\n * @internal    @properties &theme=Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;default &darktheme=Dark Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;one-dark &fontSize=Font-size;list;10,11,12,13,14,15,16,17,18;14 &lineHeight=Line-height;list;1,1.1,1.2,1.3,1.4,1.5;1.3 &indentUnit=Indent unit;int;4 &tabSize=The width of a tab character;int;4 &lineWrapping=lineWrapping;list;true,false;true &matchBrackets=matchBrackets;list;true,false;true &activeLine=activeLine;list;true,false;false &emmet=emmet;list;true,false;true &search=search;list;true,false;true &indentWithTabs=indentWithTabs;list;true,false;true &undoDepth=undoDepth;int;200 &historyEventDelay=historyEventDelay;int;1250\r\n * @internal    @installset base\r\n * @reportissues https://github.com/evolution-cms/evolution/issues/\r\n * @documentation Official docs https://codemirror.net/doc/manual.html\r\n * @author      hansek from http://www.modxcms.cz\r\n * @author      update Mihanik71\r\n * @author      update Deesen\r\n * @author      update 64j\r\n * @lastupdate  08-01-2018\r\n */\r\n\r\n$_CM_BASE = \'assets/plugins/codemirror/\';\r\n\r\n$_CM_URL = MODX_SITE_URL . $_CM_BASE;\r\n\r\nrequire(MODX_BASE_PATH. $_CM_BASE .\'codemirror.plugin.php\');\r\n', 0, '{\"theme\":[{\"label\":\"Theme\",\"type\":\"list\",\"value\":\"default\",\"options\":\"default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light\",\"default\":\"default\",\"desc\":\"\"}],\"darktheme\":[{\"label\":\"Dark Theme\",\"type\":\"list\",\"value\":\"one-dark\",\"options\":\"default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light\",\"default\":\"one-dark\",\"desc\":\"\"}],\"fontSize\":[{\"label\":\"Font-size\",\"type\":\"list\",\"value\":\"14\",\"options\":\"10,11,12,13,14,15,16,17,18\",\"default\":\"14\",\"desc\":\"\"}],\"lineHeight\":[{\"label\":\"Line-height\",\"type\":\"list\",\"value\":\"1.3\",\"options\":\"1,1.1,1.2,1.3,1.4,1.5\",\"default\":\"1.3\",\"desc\":\"\"}],\"indentUnit\":[{\"label\":\"Indent unit\",\"type\":\"int\",\"value\":\"4\",\"default\":\"4\",\"desc\":\"\"}],\"tabSize\":[{\"label\":\"The width of a tab character\",\"type\":\"int\",\"value\":\"4\",\"default\":\"4\",\"desc\":\"\"}],\"lineWrapping\":[{\"label\":\"lineWrapping\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"matchBrackets\":[{\"label\":\"matchBrackets\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"activeLine\":[{\"label\":\"activeLine\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"emmet\":[{\"label\":\"emmet\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"search\":[{\"label\":\"search\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"indentWithTabs\":[{\"label\":\"indentWithTabs\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"undoDepth\":[{\"label\":\"undoDepth\",\"type\":\"int\",\"value\":\"200\",\"default\":\"200\",\"desc\":\"\"}],\"historyEventDelay\":[{\"label\":\"historyEventDelay\",\"type\":\"int\",\"value\":\"1250\",\"default\":\"1250\",\"desc\":\"\"}]}', 0, '', 1686310760, 1686310760),
(3, 'OutdatedExtrasCheck', '<strong>1.4.6</strong> Check for Outdated critical extras not compatible with EVO 1.4.6', 0, 1, 0, '/**\r\n * OutdatedExtrasCheck\r\n *\r\n * Check for Outdated critical extras not compatible with EVO 1.4.6\r\n *\r\n * @category	plugin\r\n * @version     1.4.6\r\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\r\n * @package     evo\r\n * @author      Author: Nicola Lambathakis\r\n * @internal    @events OnManagerWelcomeHome\r\n * @internal    @properties &wdgVisibility=Show widget for:;menu;All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly;AdminOnly &ThisRole=Run only for this role:;string;;;(role id) &ThisUser=Run only for this user:;string;;;(username)\r\n * @internal    @modx_category Manager and Admin\r\n * @internal    @installset base\r\n * @internal    @disabled 0\r\n */\r\n\r\nrequire MODX_BASE_PATH . \'assets/plugins/extrascheck/OutdatedExtrasCheck.plugin.php\';\r\n', 0, '{\"wdgVisibility\":[{\"label\":\"Show widget for:\",\"type\":\"menu\",\"value\":\"AdminOnly\",\"options\":\"All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly\",\"default\":\"AdminOnly\",\"desc\":\"\"}],\"ThisRole\":[{\"label\":\"Run only for this role:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ThisUser\":[{\"label\":\"Run only for this user:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}', 0, '', 1686310761, 1686310761),
(4, 'TransAlias', '<strong>1.0.4</strong> Human readible URL translation supporting multiple languages and overrides', 0, 1, 0, 'require MODX_BASE_PATH.\'assets/plugins/transalias/plugin.transalias.php\';', 0, '{\"table_name\":[{\"label\":\"Trans table\",\"type\":\"list\",\"value\":\"russian\",\"options\":\"common,russian,dutch,german,czech,utf8,utf8lowercase\",\"default\":\"russian\",\"desc\":\"\"}],\"char_restrict\":[{\"label\":\"Restrict alias to\",\"type\":\"list\",\"value\":\"lowercase alphanumeric\",\"options\":\"lowercase alphanumeric,alphanumeric,legal characters\",\"default\":\"lowercase alphanumeric\",\"desc\":\"\"}],\"remove_periods\":[{\"label\":\"Remove Periods\",\"type\":\"list\",\"value\":\"No\",\"options\":\"Yes,No\",\"default\":\"No\",\"desc\":\"\"}],\"word_separator\":[{\"label\":\"Word Separator\",\"type\":\"list\",\"value\":\"dash\",\"options\":\"dash,underscore,none\",\"default\":\"dash\",\"desc\":\"\"}],\"override_tv\":[{\"label\":\"Override TV name\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}', 0, '', 1686310761, 1686310761),
(5, 'Updater', '<strong>0.8.8</strong> show message about outdated CMS version', 0, 1, 0, 'require MODX_BASE_PATH.\'assets/plugins/updater/plugin.updater.php\';\r\n', 0, '{\"version\":[{\"label\":\"Version:\",\"type\":\"text\",\"value\":\"evocms-community\\/evolution\",\"default\":\"evocms-community\\/evolution\",\"desc\":\"\"}],\"wdgVisibility\":[{\"label\":\"Show widget for:\",\"type\":\"menu\",\"value\":\"All\",\"options\":\"All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly\",\"default\":\"All\",\"desc\":\"\"}],\"ThisRole\":[{\"label\":\"Show only to this role id:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ThisUser\":[{\"label\":\"Show only to this username:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"showButton\":[{\"label\":\"Show Update Button:\",\"type\":\"menu\",\"value\":\"AdminOnly\",\"options\":\"show,hide,AdminOnly\",\"default\":\"AdminOnly\",\"desc\":\"\"}],\"type\":[{\"label\":\"Type:\",\"type\":\"menu\",\"value\":\"tags\",\"options\":\"tags,releases,commits\",\"default\":\"tags\",\"desc\":\"\"}],\"branch\":[{\"label\":\"Commit branch:\",\"type\":\"text\",\"value\":\"develop\",\"default\":\"develop\",\"desc\":\"\"}],\"stableOnly\":[{\"label\":\"Offer upgrade to stable version only:\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}]}', 0, '', 1686310761, 1686310761),
(6, 'userHelper', '<strong>1.19.10</strong> addition to FormLister', 0, 2, 0, 'require MODX_BASE_PATH.\'assets/snippets/FormLister/plugin.userHelper.php\';\n', 0, '{\"model\":[{\"label\":\"Model\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"logoutKey\":[{\"label\":\"Request key\",\"type\":\"text\",\"value\":\"logout\",\"default\":\"logout\",\"desc\":\"\"}],\"cookieName\":[{\"label\":\"Cookie Name\",\"type\":\"text\",\"value\":\"WebLoginPE\",\"default\":\"WebLoginPE\",\"desc\":\"\"}],\"cookieLifetime\":[{\"label\":\"Cookie Lifetime, seconds\",\"type\":\"text\",\"value\":\"157680000\",\"default\":\"157680000\",\"desc\":\"\"}],\"maxFails\":[{\"label\":\"Max failed logins\",\"type\":\"text\",\"value\":\"3\",\"default\":\"3\",\"desc\":\"\"}],\"blockTime\":[{\"label\":\"Block for, seconds\",\"type\":\"text\",\"value\":\"3600\",\"default\":\"3600\",\"desc\":\"\"}],\"trackWebUserActivity\":[{\"label\":\"Track web user activity\",\"type\":\"list\",\"value\":\"No\",\"options\":\"No,Yes\",\"default\":\"No\",\"desc\":\"\"}]}', 1, '', 1686312437, 1686312437),
(7, 'TinyMCE4', '<strong>4.9.11</strong> Javascript rich text editor', 0, 1, 0, 'if (!defined(\'MODX_BASE_PATH\')) { die(\'What are you doing? Get out of here!\'); }\n\nrequire(MODX_BASE_PATH.\"assets/plugins/tinymce4/plugin.tinymce.inc.php\");', 0, '{\"styleFormats\":[{\"label\":\"Custom Style Formats <b>RAW<\\/b><br\\/><br\\/><ul><li>leave empty to use below block\\/inline formats<\\/li><li>allows simple-format: <i>Title,cssClass|Title2,cssClass2<\\/i><\\/li><li>Also accepts full JSON-config as per TinyMCE4 docs \\/ configure \\/ content-formating \\/ style_formats<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"styleFormats_inline\":[{\"label\":\"Custom Style Formats <b>INLINE<\\/b><br\\/><br\\/><ul><li>will wrap selected text with span-tag + css-class<\\/li><li>simple-format only<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"InlineTitle,cssClass1|InlineTitle2,cssClass2\",\"default\":\"InlineTitle,cssClass1|InlineTitle2,cssClass2\",\"desc\":\"\"}],\"styleFormats_block\":[{\"label\":\"Custom Style Formats <b>BLOCK<\\/b><br\\/><br\\/><ul><li>will add css-class to selected block-element<\\/li><li>simple-format only<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"BlockTitle,cssClass3|BlockTitle2,cssClass4\",\"default\":\"BlockTitle,cssClass3|BlockTitle2,cssClass4\",\"desc\":\"\"}],\"customParams\":[{\"label\":\"Custom Parameters<br\\/><b>(Be careful or leave empty!)<\\/b>\",\"type\":\"textarea\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"entityEncoding\":[{\"label\":\"Entity Encoding\",\"type\":\"list\",\"value\":\"named\",\"options\":\"named,numeric,raw\",\"default\":\"named\",\"desc\":\"\"}],\"entities\":[{\"label\":\"Entities\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"pathOptions\":[{\"label\":\"Path Options\",\"type\":\"list\",\"value\":\"Site config\",\"options\":\"Site config,Absolute path,Root relative,URL,No convert\",\"default\":\"Site config\",\"desc\":\"\"}],\"resizing\":[{\"label\":\"Advanced Resizing\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"disabledButtons\":[{\"label\":\"Disabled Buttons\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webTheme\":[{\"label\":\"Web Theme\",\"type\":\"test\",\"value\":\"webuser\",\"default\":\"webuser\",\"desc\":\"\"}],\"webPlugins\":[{\"label\":\"Web Plugins\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webButtons1\":[{\"label\":\"Web Buttons 1\",\"type\":\"text\",\"value\":\"bold italic underline strikethrough removeformat alignleft aligncenter alignright\",\"default\":\"bold italic underline strikethrough removeformat alignleft aligncenter alignright\",\"desc\":\"\"}],\"webButtons2\":[{\"label\":\"Web Buttons 2\",\"type\":\"text\",\"value\":\"link unlink image undo redo\",\"default\":\"link unlink image undo redo\",\"desc\":\"\"}],\"webButtons3\":[{\"label\":\"Web Buttons 3\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webButtons4\":[{\"label\":\"Web Buttons 4\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webAlign\":[{\"label\":\"Web Toolbar Alignment\",\"type\":\"list\",\"value\":\"ltr\",\"options\":\"ltr,rtl\",\"default\":\"ltr\",\"desc\":\"\"}],\"width\":[{\"label\":\"Width\",\"type\":\"text\",\"value\":\"100%\",\"default\":\"100%\",\"desc\":\"\"}],\"height\":[{\"label\":\"Height\",\"type\":\"text\",\"value\":\"400px\",\"default\":\"400px\",\"desc\":\"\"}],\"introtextRte\":[{\"label\":\"<b>Introtext RTE<\\/b><br\\/>add richtext-features to \\\"introtext\\\"\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}],\"inlineMode\":[{\"label\":\"<b>Inline-Mode<\\/b>\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}],\"inlineTheme\":[{\"label\":\"<b>Inline-Mode<\\/b><br\\/>Theme\",\"type\":\"text\",\"value\":\"inline\",\"default\":\"inline\",\"desc\":\"\"}],\"browser_spellcheck\":[{\"label\":\"<b>Browser Spellcheck<\\/b><br\\/>At least one dictionary must be installed inside your browser\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}],\"paste_as_text\":[{\"label\":\"<b>Force Paste as Text<\\/b>\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}]}', 0, '', 1686312453, 1686312453),
(8, 'ClientSettings', '<strong>2.2.0</strong> Creates menu item for user module ClientSettings', 0, 1, 0, '\n\nif ($modx->event->name == \'OnManagerMenuPrerender\') {\n    require_once MODX_BASE_PATH . \'assets/modules/clientsettings/core/src/ClientSettings.php\';\n\n    $cs   = new ClientSettings($params);\n    $mid  = $cs->getModuleId();\n    $lang = $cs->loadLang();\n    $tabs = $cs->loadStructure();\n\n    if (!empty($tabs)) {\n        $menuparams = [\'client_settings\', \'main\', \'<i class=\"fa fa-cog\"></i>\' . $lang[\'cs.module_title\'], \'index.php?a=112&id=\' . $mid . \'&type=default\', $lang[\'cs.module_title\'], \'\', \'\', \'main\', 0, 100, \'\'];\n\n        if (count($tabs) > 1) {\n            $menuparams[3] = \'javscript:;\';\n            $menuparams[5] = \'return false;\';\n            $sort = 0;\n\n            $params[\'menu\'][\'client_settings_main\'] = [\'client_settings_main\', \'client_settings\', \'<i class=\"fa fa-cog\"></i>\' . $lang[\'cs.module_title\'], \'index.php?a=112&id=\' . $mid . \'&type=default\', $lang[\'cs.module_title\'], \'\', \'\', \'main\', 0, $sort, \'\'];\n\n            foreach ($tabs as $alias => $item) {\n                if ($alias != \'default\') {\n                    $params[\'menu\'][\'client_settings_\' . $alias] = [\'client_settings_\' . $alias, \'client_settings\', \'<i class=\"fa \' . (isset($item[\'menu\'][\'icon\']) ? $item[\'menu\'][\'icon\'] : \'fa-cog\') . \'\"></i>\' . $item[\'menu\'][\'caption\'], \'index.php?a=112&id=\' . $mid . \'&type=\' . $alias, $item[\'menu\'][\'caption\'], \'\', \'\', \'main\', 0, $sort += 10, \'\'];\n                }\n            }\n        }\n\n        $params[\'menu\'][\'client_settings\'] = $menuparams;\n        $modx->event->output(serialize($params[\'menu\']));\n    }\n\n    return;\n}\n\n', 0, '', 0, 'clsee234523g354f542t5t', 1686312458, 1686312458),
(10, 'PageBuilder', '<strong>1.3.16</strong> Creates form for manage content sections', 0, 1, 0, 'include_once MODX_BASE_PATH . \'assets/plugins/pagebuilder/pagebuilder.php\';\r\n\r\n$e = &$modx->event;\r\n\r\nswitch ($e->name) {\r\n    case \'OnWebPageInit\':\r\n    case \'OnManagerPageInit\': {\r\n        $modx->db->query(\"DELETE FROM \" . $modx->getFullTableName(\'site_plugin_events\') . \"\r\n            WHERE pluginid IN (\r\n               SELECT id\r\n               FROM \" . $modx->getFullTableName(\'site_plugins\') . \"\r\n               WHERE name = \'\" . $e->activePlugin . \"\'\r\n               AND disabled = 0\r\n            )\r\n            AND evtid IN (\r\n               SELECT id\r\n               FROM \" . $modx->getFullTableName(\'system_eventnames\') . \"\r\n               WHERE name IN (\'OnWebPageInit\', \'OnManagerPageInit\')\r\n            )\");\r\n\r\n        $modx->clearCache(\'full\');\r\n\r\n        (new PageBuilder($modx))->install();\r\n\r\n        return;\r\n    }\r\n\r\n    case \'OnDocFormRender\': {\r\n        $e->output((new PageBuilder($modx))->renderForm());\r\n        return;\r\n    }\r\n\r\n    case \'OnDocFormSave\': {\r\n        (new PageBuilder($modx))->save();\r\n        return;\r\n    }\r\n\r\n    case \'OnBeforeEmptyTrash\': {\r\n        (new PageBuilder($modx))->delete();\r\n        return;\r\n    }\r\n\r\n    case \'OnDocDuplicate\': {\r\n        (new PageBuilder($modx))->duplicate();\r\n        return;\r\n    }\r\n}\r\n\r\n\r\n', 0, '{\r\n  \"tabName\": [\r\n    {\r\n      \"label\": \"Tab name\",\r\n      \"type\": \"text\",\r\n      \"value\": \"Конструктор страниц\",\r\n      \"default\": \"Page Builder\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"addType\": [\r\n    {\r\n      \"label\": \"Add type\",\r\n      \"type\": \"menu\",\r\n      \"value\": \"images\",\r\n      \"options\": \"dropdown,icons,images\",\r\n      \"default\": \"dropdown\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"placement\": [\r\n    {\r\n      \"label\": \"Placement\",\r\n      \"type\": \"menu\",\r\n      \"value\": \"content\",\r\n      \"options\": \"content,tab\",\r\n      \"default\": \"tab\",\r\n      \"desc\": \"\"\r\n    }\r\n  ],\r\n  \"order\": [\r\n    {\r\n      \"label\": \"Default container ordering\",\r\n      \"type\": \"text\",\r\n      \"value\": \"0\",\r\n      \"default\": \"0\",\r\n      \"desc\": \"\"\r\n    }\r\n  ]\r\n}', 0, '', 1705491637, 1705492543),
(11, 'templatesEdit 3', '<strong>3.1.10</strong> Кастомизация полей при редактировании документов', 0, 1, 0, 'require MODX_BASE_PATH.\'assets/plugins/templatesedit/plugin.templatesedit.php\';\n', 0, '{\"showTvImage\":[{\"label\":\"Show TV thumbnail\",\"type\":\"list\",\"value\":\"no\",\"options\":\"yes,no\",\"default\":\"no\",\"desc\":\"\"}],\"showTvName\":[{\"label\":\"Show TV titles\",\"type\":\"list\",\"value\":\"no\",\"options\":\"yes,no\",\"default\":\"no\",\"desc\":\"\"}],\"excludeTvCategory\":[{\"label\":\"Exclude TV from categories\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}', 0, '', 1705585947, 1705585947);

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_site_plugin_events`
--

CREATE TABLE `jdz6_site_plugin_events` (
  `pluginid` int(11) NOT NULL,
  `evtid` int(11) NOT NULL DEFAULT 0,
  `priority` int(11) NOT NULL DEFAULT 0 COMMENT 'determines plugin run order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `jdz6_site_plugin_events`
--

INSERT INTO `jdz6_site_plugin_events` (`pluginid`, `evtid`, `priority`) VALUES
(1, 83, 0),
(2, 39, 0),
(2, 45, 0),
(2, 89, 0),
(2, 97, 0),
(2, 99, 0),
(2, 106, 0),
(2, 111, 0),
(2, 115, 0),
(3, 83, 1),
(4, 108, 0),
(5, 83, 2),
(5, 91, 0),
(5, 102, 0),
(6, 91, 1),
(6, 117, 0),
(6, 123, 0),
(6, 125, 0),
(6, 128, 0),
(7, 61, 0),
(7, 64, 0),
(7, 65, 0),
(7, 93, 0),
(7, 99, 1),
(7, 100, 0),
(7, 129, 0),
(8, 74, 0),
(10, 9, 0),
(10, 42, 0),
(10, 45, 1),
(10, 46, 0),
(11, 45, 2),
(11, 46, 1),
(11, 47, 0),
(11, 109, 0),
(11, 111, 1),
(11, 112, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_site_snippets`
--

CREATE TABLE `jdz6_site_snippets` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Snippet',
  `editor_type` int(11) NOT NULL DEFAULT 0 COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT 0 COMMENT 'category id',
  `cache_type` int(11) NOT NULL DEFAULT 0 COMMENT 'Cache option',
  `snippet` mediumtext DEFAULT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL COMMENT 'Default Properties',
  `moduleguid` varchar(32) NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters',
  `createdon` int(11) NOT NULL DEFAULT 0,
  `editedon` int(11) NOT NULL DEFAULT 0,
  `disabled` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Disables the snippet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `jdz6_site_snippets`
--

INSERT INTO `jdz6_site_snippets` (`id`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `createdon`, `editedon`, `disabled`) VALUES
(1, 'DDocInfo', '<strong>1</strong> DDocInfo', 0, 2, 0, '$id = isset($id) ? (int)$id : $modx->documentObject[\'id\'];\n$field = isset($field) ? (string)$field : \'id\';\nif($field == \'id\'){\n    $out = $id;\n}else{\n    if($modx->documentObject[\'id\'] == $id){\n        $out = isset($modx->documentObject[$field]) ? $modx->documentObject[$field] : \'\';\n        if(is_array($out)){\n           $out = isset($out[1]) ? $out[1] : \'\';\n        }\n    }else{\n        $out = $modx->doc->edit($id)->get($field);\n    }\n}\nreturn (string)$out;', 0, '', '', 0, 0, 0),
(2, 'DLBeforeAfter', '<strong>1</strong> Navigation between post and upcoming events relative to the current date.', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLBeforeAfter.php\';', 0, '', '', 0, 0, 0),
(3, 'DLCrumbs', '<strong>1.2</strong> DLCrumbs', 0, 3, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLCrumbs.php\';\n', 0, '', '', 0, 0, 0),
(4, 'DLGlossary', '<strong>0.1</strong> Filtering documents by the first character', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLGlossary.php\';', 0, '', '', 0, 0, 0),
(5, 'DLMenu', '<strong>1.4.0</strong> Snippet to build menu with DocLister', 0, 3, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLMenu.php\';\n', 0, '', '', 0, 0, 0),
(6, 'DLPrevNext', '<strong>1.1</strong> DLPrevNext', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLPrevNext.php\';', 0, '', '', 0, 0, 0),
(7, 'DLReflect', '<strong>2</strong> Building a list of dates to filter documents', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLReflect.php\';', 0, '', '', 0, 0, 0),
(8, 'DLReflectFilter', '<strong>2</strong> Filtering documents by dates provided by DLReflect snippet', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLReflectFilter.php\';', 0, '', '', 0, 0, 0),
(9, 'DLSitemap', '<strong>1.0.2</strong> Snippet to build XML sitemap', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLSitemap.php\';\n', 0, '', '', 0, 0, 0),
(10, 'DLTemplate', '<strong>1</strong> DLTemplate', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLTemplate.php\';', 0, '', '', 0, 0, 0),
(11, 'DLValuelist', '<strong>1.1</strong> DLValuelist', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLValuelist.php\';', 0, '', '', 0, 0, 0),
(12, 'DocLister', '<strong>2.7.5</strong> Snippet to display the information of the tables by the description rules. The main goal - replacing Ditto and CatalogView', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DocLister.php\';\n', 0, '', '', 0, 0, 0),
(13, 'summary', '<strong>2.0.2</strong> Truncates the string to the specified length', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/summary/snippet.summary.php\';', 0, '', '', 0, 0, 0),
(14, 'FormLister', '<strong>1.19.10</strong> Form processor', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/FormLister/snippet.FormLister.php\';\n', 0, '', '', 0, 0, 0),
(15, 'multiTV', '<strong>2.0.16</strong> Custom Template Variabe containing a sortable multi item list or a datatable', 0, 2, 0, 'return require MODX_BASE_PATH . \'assets/tvs/multitv/multitv.snippet.php\';\n', 0, '', '', 0, 0, 0),
(16, 'phpthumb', '<strong>1.4.4</strong> PHPThumb creates thumbnails and altered images on the fly and caches them', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/phpthumb/snippet.phpthumb.php\';\r\n', 0, '', '', 0, 0, 0),
(17, 'PageBuilder', '<strong>1.3.16</strong> output content sections for current page', 0, 2, 0, 'include_once MODX_BASE_PATH . \'assets/plugins/pagebuilder/pagebuilder.php\';\nreturn (new PageBuilder($modx))->render($params);\n\n', 0, '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_site_templates`
--

CREATE TABLE `jdz6_site_templates` (
  `id` int(11) NOT NULL,
  `templatename` varchar(100) NOT NULL DEFAULT '',
  `templatealias` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT 0 COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT 0 COMMENT 'category id',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to icon file',
  `template_type` int(11) NOT NULL DEFAULT 0 COMMENT '0-page,1-content',
  `content` mediumtext DEFAULT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `selectable` tinyint(1) NOT NULL DEFAULT 1,
  `createdon` int(11) NOT NULL DEFAULT 0,
  `editedon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `jdz6_site_templates`
--

INSERT INTO `jdz6_site_templates` (`id`, `templatename`, `templatealias`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `selectable`, `createdon`, `editedon`) VALUES
(1, 'Minimal Template', '', 'Default minimal empty template (content returned only)', 0, 0, '', 0, '[*content*]', 0, 1, 0, 0),
(2, 'Главная страница', 'main', 'Стартовая', 0, 4, '', 0, '', 0, 1, 1686313693, 1686832870),
(3, 'Каталог товаров', 'catalog', 'Каталог', 0, 4, '', 0, '', 0, 1, 1686832891, 1686832891),
(4, 'Раздел каталога', 'catalog_group', 'Раздел в каталоге', 0, 4, '', 0, '', 0, 1, 1686832913, 1686832913),
(5, 'Товар', 'catalog_item', 'Один товар', 0, 4, '', 0, '', 0, 1, 1686832930, 1686832930),
(6, 'Новости', 'news_all', 'Все новости', 0, 4, '', 0, '', 0, 1, 1686832948, 1686832948),
(7, 'Новость', 'news_one', 'Одна новость', 0, 4, '', 0, '', 0, 1, 1686832965, 1686832965),
(8, 'Текст', 'textpage', 'Для текстовых страниц', 0, 4, '', 0, '', 0, 1, 1686832981, 1686832981),
(9, 'Контакты', 'contacts', 'Контакты', 0, 4, '', 0, '', 0, 1, 1686832996, 1686832996),
(10, 'Наши работы', 'portfolio_all', 'Всё портфолио', 0, 4, '', 0, '', 0, 1, 1704876097, 1704876185),
(11, 'Работа', 'portfolio_one', 'Одна работа в портфолио', 0, 4, '', 0, '', 0, 1, 1704876126, 1704876197),
(12, 'О компании', 'about', '', 0, 4, '', 0, '', 0, 1, 1705491731, 1705491731),
(13, 'sitemap', 'sitemap', '', 0, 5, '', 0, '', 0, 1, 1705584509, 1706024993);

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_site_tmplvars`
--

CREATE TABLE `jdz6_site_tmplvars` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT 0 COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT 0 COMMENT 'category id',
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `elements` text DEFAULT NULL,
  `rank` int(11) NOT NULL DEFAULT 0,
  `display` varchar(32) DEFAULT '' COMMENT 'Display Control',
  `display_params` text DEFAULT NULL COMMENT 'Display Control Properties',
  `default_text` text DEFAULT NULL,
  `createdon` int(11) NOT NULL DEFAULT 0,
  `editedon` int(11) NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `jdz6_site_tmplvars`
--

INSERT INTO `jdz6_site_tmplvars` (`id`, `type`, `name`, `caption`, `description`, `editor_type`, `category`, `locked`, `elements`, `rank`, `display`, `display_params`, `default_text`, `createdon`, `editedon`, `properties`) VALUES
(1, 'text', 'metatitle', 'Meta title	', 'Содержимое тега title', 0, 5, 0, '', 0, '', '', '', 1688388991, 1688388991, '[]'),
(2, 'text', 'metadescription', 'Meta description', 'Содержимое description', 0, 5, 0, '', 0, '', '', '', 1688388995, 1688389011, '[]'),
(3, 'image', 'news_photo', 'Главное фото', 'Главное фото к новости', 0, 6, 0, '', 0, '', '', '', 1688389051, 1688389051, '[]'),
(4, 'text', 'item_price', 'Цена', 'Цена товара', 0, 6, 0, '', 0, '', '', '', 1688389097, 1688389097, '[]'),
(5, 'image', 'item_photo', 'Фото товара', 'Фото товара', 0, 6, 0, '', 0, '', '', '', 1688389126, 1688389126, '[]'),
(6, 'text', 'item_article', 'Артикул', '', 0, 6, 0, '', 0, '', '', '', 1704973890, 1704973890, '[]'),
(7, 'image', 'portfolio_mainphoto', 'Главное фото', 'Фото работы', 0, 6, 0, '', 0, '', '', '', 1705061960, 1705061960, '[]'),
(8, 'custom_tv:multitv', 'portfolio_photos', 'Дополнительные фотографии', 'Выберите несколько лучших фото работы', 0, 6, 0, '', 0, '', '', '', 1705062013, 1705062013, '[]'),
(9, 'text', 'mainpage_header', 'Главный заголовок', 'Самый первый большой заголовок на главной странице', 0, 6, 0, '', 0, '', '', '', 1705400793, 1705400936, '[]'),
(10, 'textareamini', 'mainpage_intro', 'Подпись под главным заголовком', 'Текст под большим заголовком', 0, 6, 0, '', 0, '', '', '', 1705400847, 1705400917, '[]'),
(11, 'image', 'mainpage_topimage', 'Изображение сверху', 'Расположено на самом верху у большого заголовка', 0, 6, 0, '', 0, '', '', '', 1705400901, 1705400901, '[]'),
(12, 'custom_tv:multitv', 'mainpage_servicelist', 'Блок услуг на главной', 'Выберите фотографии и введите тексты для услуг', 0, 6, 0, '', 0, '', '', '', 1705405119, 1705405119, '[]'),
(13, 'text', 'contacts_address', 'Адрес', '', 0, 6, 0, '', 0, '', '', '', 1705409393, 1705409393, '[]'),
(14, 'textareamini', 'contacts_mapcode', 'Код карты', '', 0, 6, 0, '', 0, '', '', '', 1705409396, 1705409414, '[]'),
(15, 'custom_tv:pagebuilder', 'landing', 'Конструктор страницы', '', 0, 6, 0, '', 0, '', '', '', 1705493004, 1705493004, '[]'),
(16, 'dropdown', 'sitemap_changefreq', 'Период обновления', '', 0, 5, 0, 'always||hourly||daily||weekly||monthly||yearly||never', 0, '', '', 'weekly', 1705584237, 1705584237, '[]'),
(17, 'checkbox', 'sitemap_exclude', 'Отображение в sitemap', '', 0, 5, 0, 'Скрыть==1', 0, '', '', '0', 1705584240, 1705584262, '[]'),
(18, 'dropdown', 'sitemap_priority', 'Приоритет страницы', '', 0, 5, 0, '0.1||0.2||0.3||0.4||0.5||0.6||0.7||0.8||0.9||1', 0, '', '', '0.5', 1705584265, 1705584288, '[]');

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_site_tmplvar_access`
--

CREATE TABLE `jdz6_site_tmplvar_access` (
  `id` int(11) NOT NULL,
  `tmplvarid` int(11) NOT NULL DEFAULT 0,
  `documentgroup` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_site_tmplvar_contentvalues`
--

CREATE TABLE `jdz6_site_tmplvar_contentvalues` (
  `id` int(11) NOT NULL,
  `tmplvarid` int(11) NOT NULL DEFAULT 0 COMMENT 'Template Variable id',
  `contentid` int(11) NOT NULL DEFAULT 0 COMMENT 'Site Content Id',
  `value` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `jdz6_site_tmplvar_contentvalues`
--

INSERT INTO `jdz6_site_tmplvar_contentvalues` (`id`, `tmplvarid`, `contentid`, `value`) VALUES
(1, 3, 6, 'assets/images/100-34.jpg'),
(6, 1, 15, 'Купить гайку М6 в городе'),
(7, 2, 15, 'Гайки М6 в наличии и на заказ, оптовые цены и скидки'),
(8, 4, 15, '500'),
(9, 5, 15, 'assets/images/d3a3faeb_a39e_46a0_ab36_e7265d918d8b_22eba30d_4dc2_11ed_908e_000c299773cc.png'),
(10, 1, 18, 'Купить гайку М8 в городе'),
(11, 2, 18, 'Гайки М8 в наличии и на заказ, оптовые цены и скидки'),
(12, 4, 18, '800'),
(13, 5, 18, 'assets/images/d3a3faeb_a39e_46a0_ab36_e7265d918d8b_22eba30d_4dc2_11ed_908e_000c299773cc.png'),
(14, 1, 26, 'Купить гайку М10 в городе'),
(15, 2, 26, 'Гайки М10 в наличии и на заказ, оптовые цены и скидки'),
(16, 4, 26, '1000'),
(17, 5, 26, 'assets/images/d3a3faeb_a39e_46a0_ab36_e7265d918d8b_22eba30d_4dc2_11ed_908e_000c299773cc.png'),
(18, 1, 16, 'Купить болт М6 в городе'),
(19, 2, 16, 'Болты М6 в наличии и на заказ, оптовые цены и скидки'),
(20, 4, 16, '300'),
(21, 5, 16, 'assets/images/snimok_138.jpg'),
(22, 1, 19, 'Купить болт М8 в городе'),
(23, 2, 19, 'Болты М8 в наличии и на заказ, оптовые цены и скидки'),
(24, 4, 19, '400'),
(25, 5, 19, 'assets/images/snimok_138.jpg'),
(26, 1, 27, 'Купить болт М10 в городе'),
(27, 2, 27, 'Болты М10 в наличии и на заказ, оптовые цены и скидки'),
(28, 4, 27, '700'),
(29, 5, 27, 'assets/images/snimok_138.jpg'),
(30, 1, 7, 'Мы немного поработали'),
(31, 2, 7, 'Успешная работа компании по продаже болтиков и гаечек способствует развитию местной экономики'),
(32, 1, 6, 'Мы открылись'),
(33, 2, 6, 'Обеспечим население доступными и качественными болтиками и гаечками'),
(34, 1, 8, 'У директора был день рождения'),
(35, 2, 8, 'Директор компании выразил свою благодарность всем присутствующим и отметил, что успех его предприятия был бы невозможен без поддержки клиентов и партнеров'),
(36, 1, 9, 'У нас выходной'),
(37, 2, 9, 'С 31 декабря по 10 января включительно, компания не будет работать.'),
(38, 3, 8, 'assets/images/65856_original-1.jpg'),
(39, 3, 7, 'assets/images/cropped_a_nu-ka_vzyali__1925._serebryannyj_i._bumaga__tirazhnaya_grafika._59_5h87_5.jpg'),
(40, 3, 9, 'assets/images/1a14ab889878010be3390e9fa667abcb_xl.jpg'),
(41, 1, 11, 'Мы закрылись'),
(42, 2, 11, 'Компания решила закрыться'),
(43, 3, 11, 'assets/images/doc76ncd3jiwpfmb0x3jd6.jpg'),
(44, 6, 27, 'Б-10-0001'),
(45, 6, 19, 'Б-08-0001'),
(46, 6, 16, 'Б-06-0001'),
(47, 6, 15, 'Г-06-0001'),
(48, 6, 18, 'Г-08-0001'),
(49, 6, 26, 'Г-10-0001'),
(50, 1, 17, 'Коробка для гаек'),
(51, 2, 17, 'Коробка для гаек'),
(52, 4, 17, '230'),
(53, 5, 17, 'assets/images/ice_screenshot_20191014-140427.jpeg.jpg'),
(54, 5, 20, 'assets/images/ice_screenshot_20191014-140427.jpeg.jpg'),
(55, 4, 20, '300'),
(56, 4, 22, '1000'),
(57, 5, 22, 'assets/images/6158809007.jpg'),
(58, 4, 21, '998'),
(59, 5, 21, 'assets/images/6158809007.jpg'),
(60, 7, 24, 'assets/images/doc76ncd3jiwpfmb0x3jd6.jpg'),
(61, 8, 24, '{\"fieldValue\":[{\"image\":\"assets/images/cropped_a_nu-ka_vzyali__1925._serebryannyj_i._bumaga__tirazhnaya_grafika._59_5h87_5.jpg\",\"thumb\":\"\"},{\"image\":\"assets/images/65856_original-1.jpg\",\"thumb\":\"\"}],\"fieldSettings\":{\"autoincrement\":1}}'),
(62, 7, 25, 'assets/images/1a14ab889878010be3390e9fa667abcb_xl.jpg'),
(63, 8, 25, '{\"fieldValue\":[{\"image\":\"assets/images/ice_screenshot_20191014-140427.jpeg.jpg\",\"thumb\":\"\"},{\"image\":\"assets/images/cropped_a_nu-ka_vzyali__1925._serebryannyj_i._bumaga__tirazhnaya_grafika._59_5h87_5.jpg\",\"thumb\":\"\"}],\"fieldSettings\":{\"autoincrement\":1}}'),
(64, 9, 1, 'Сайт компании по продаже болтиков'),
(65, 10, 1, 'Продадим вам нужные болтики и гаечки. А если надо, то приедем и прикрутим их куда там надо'),
(66, 11, 1, 'assets/images/pinup_girls_057.png'),
(67, 12, 1, '{\"fieldValue\":[{\"image\":\"assets/images/bez-imeni-1.png\",\"thumb\":\"\",\"title\":\"Выточим гайки и болтики\"},{\"image\":\"assets/images/3549391_640_640.png\",\"thumb\":\"\",\"title\":\"Привезем куда скажете\"},{\"image\":\"assets/images/b88c0864818c7d2ae28687a0efbedf07-640x857.jpg\",\"thumb\":\"\",\"title\":\"Поможем с монтажом\"}],\"fieldSettings\":{\"autoincrement\":1}}'),
(68, 13, 5, 'Адрес: город Вологда, улица Добрых Строителей, строение 5'),
(69, 14, 5, '<script type=\"text/javascript\" charset=\"utf-8\" async\r\n                                src=\"https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A65946ea648b913e9a26631d832814832839608dfd97f0d84960c17b4dbf88085&amp;width=100%25&amp;height=300&amp;lang=ru_RU&amp;scroll=true\">\r\n </script>'),
(70, 15, 4, NULL),
(71, 17, 28, '1');

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_site_tmplvar_templates`
--

CREATE TABLE `jdz6_site_tmplvar_templates` (
  `tmplvarid` int(11) NOT NULL DEFAULT 0 COMMENT 'Template Variable id',
  `templateid` int(11) NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `jdz6_site_tmplvar_templates`
--

INSERT INTO `jdz6_site_tmplvar_templates` (`tmplvarid`, `templateid`, `rank`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(1, 7, 0),
(1, 8, 0),
(1, 9, 0),
(1, 10, 2),
(1, 11, 2),
(1, 12, 2),
(2, 1, 0),
(2, 2, 0),
(2, 3, 0),
(2, 4, 0),
(2, 5, 0),
(2, 6, 0),
(2, 7, 0),
(2, 8, 0),
(2, 9, 0),
(2, 10, 1),
(2, 11, 1),
(2, 12, 1),
(3, 7, 0),
(4, 5, 0),
(5, 5, 0),
(6, 5, 0),
(7, 11, 0),
(8, 11, 0),
(9, 2, 0),
(10, 2, 0),
(11, 2, 0),
(12, 2, 0),
(13, 9, 0),
(14, 9, 0),
(15, 12, 0),
(16, 1, 0),
(16, 2, 0),
(16, 3, 0),
(16, 4, 0),
(16, 5, 0),
(16, 6, 0),
(16, 7, 0),
(16, 8, 0),
(16, 9, 0),
(16, 10, 0),
(16, 11, 0),
(16, 12, 0),
(17, 1, 0),
(17, 2, 0),
(17, 3, 0),
(17, 4, 0),
(17, 5, 0),
(17, 6, 0),
(17, 7, 0),
(17, 8, 0),
(17, 9, 0),
(17, 10, 0),
(17, 11, 0),
(17, 12, 0),
(17, 13, 1),
(18, 1, 0),
(18, 2, 0),
(18, 3, 0),
(18, 4, 0),
(18, 5, 0),
(18, 6, 0),
(18, 7, 0),
(18, 8, 0),
(18, 9, 0),
(18, 10, 0),
(18, 11, 0),
(18, 12, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_system_eventnames`
--

CREATE TABLE `jdz6_system_eventnames` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `service` int(11) NOT NULL DEFAULT 0 COMMENT 'System Service number',
  `groupname` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `jdz6_system_eventnames`
--

INSERT INTO `jdz6_system_eventnames` (`id`, `name`, `service`, `groupname`) VALUES
(1, 'OnAfterLoadDocumentObject', 5, ''),
(2, 'OnAfterMoveDocument', 1, 'Documents'),
(3, 'OnBeforeCacheUpdate', 4, ''),
(4, 'OnBeforeChunkFormDelete', 1, 'Chunks'),
(5, 'OnBeforeChunkFormSave', 1, 'Chunks'),
(6, 'OnBeforeDocDuplicate', 1, 'Documents'),
(7, 'OnBeforeDocFormDelete', 1, 'Documents'),
(8, 'OnBeforeDocFormSave', 1, 'Documents'),
(9, 'OnBeforeEmptyTrash', 1, 'Documents'),
(10, 'OnBeforeFileBrowserCopy', 1, 'File Browser Events'),
(11, 'OnBeforeFileBrowserDelete', 1, 'File Browser Events'),
(12, 'OnBeforeFileBrowserMove', 1, 'File Browser Events'),
(13, 'OnBeforeFileBrowserRename', 1, 'File Browser Events'),
(14, 'OnBeforeFileBrowserUpload', 1, 'File Browser Events'),
(15, 'OnBeforeLoadDocumentObject', 5, ''),
(16, 'OnBeforeLoadExtension', 5, ''),
(17, 'OnBeforeManagerPageInit', 2, ''),
(18, 'OnBeforeMinifyCss', 1, ''),
(19, 'OnBeforeModFormDelete', 1, 'Modules'),
(20, 'OnBeforeModFormSave', 1, 'Modules'),
(21, 'OnBeforeMoveDocument', 1, 'Documents'),
(22, 'OnBeforeParseParams', 5, ''),
(23, 'OnBeforePluginFormDelete', 1, 'Plugins'),
(24, 'OnBeforePluginFormSave', 1, 'Plugins'),
(25, 'OnBeforeSaveWebPageCache', 4, ''),
(26, 'OnBeforeSnipFormDelete', 1, 'Snippets'),
(27, 'OnBeforeSnipFormSave', 1, 'Snippets'),
(28, 'OnBeforeTempFormDelete', 1, 'Templates'),
(29, 'OnBeforeTempFormSave', 1, 'Templates'),
(30, 'OnBeforeTVFormDelete', 1, 'Template Variables'),
(31, 'OnBeforeTVFormSave', 1, 'Template Variables'),
(32, 'OnBeforeUserDelete', 1, 'Users'),
(33, 'OnBeforeUserLogin', 1, 'Users'),
(34, 'OnBeforeUserLogout', 1, 'Users'),
(35, 'OnBeforeUserSave', 1, 'Users'),
(36, 'OnCacheUpdate', 4, ''),
(37, 'OnChunkFormDelete', 1, 'Chunks'),
(38, 'OnChunkFormPrerender', 1, 'Chunks'),
(39, 'OnChunkFormRender', 1, 'Chunks'),
(40, 'OnChunkFormSave', 1, 'Chunks'),
(41, 'OnCreateDocGroup', 1, 'Documents'),
(42, 'OnDocDuplicate', 1, 'Documents'),
(43, 'OnDocFormDelete', 1, 'Documents'),
(44, 'OnDocFormPrerender', 1, 'Documents'),
(45, 'OnDocFormRender', 1, 'Documents'),
(46, 'OnDocFormSave', 1, 'Documents'),
(47, 'OnDocFormTemplateRender', 1, 'Documents'),
(48, 'OnDocFormUnDelete', 1, 'Documents'),
(49, 'OnDocPublished', 5, ''),
(50, 'OnDocUnPublished', 5, ''),
(51, 'OnEmptyTrash', 1, 'Documents'),
(52, 'OnFileBrowserCopy', 1, 'File Browser Events'),
(53, 'OnFileBrowserDelete', 1, 'File Browser Events'),
(54, 'OnFileBrowserInit', 1, 'File Browser Events'),
(55, 'OnFileBrowserMove', 1, 'File Browser Events'),
(56, 'OnFileBrowserRename', 1, 'File Browser Events'),
(57, 'OnFileBrowserUpload', 1, 'File Browser Events'),
(58, 'OnFileManagerSettingsRender', 1, 'System Settings'),
(59, 'OnFileManagerUpload', 1, ''),
(60, 'OnFriendlyURLSettingsRender', 1, 'System Settings'),
(61, 'OnInterfaceSettingsRender', 1, 'System Settings'),
(62, 'OnLoadDocumentObject', 5, ''),
(63, 'OnLoadSettings', 1, 'System Settings'),
(64, 'OnLoadWebDocument', 5, ''),
(65, 'OnLoadWebPageCache', 4, ''),
(66, 'OnLogEvent', 1, 'Log Event'),
(67, 'OnLogPageHit', 5, ''),
(68, 'OnMakeDocUrl', 5, ''),
(69, 'OnMakePageCacheKey', 4, ''),
(70, 'OnManagerFrameLoader', 2, ''),
(71, 'OnManagerLoginFormPrerender', 2, ''),
(72, 'OnManagerLoginFormRender', 2, ''),
(73, 'OnManagerMainFrameHeaderHTMLBlock', 2, ''),
(74, 'OnManagerMenuPrerender', 2, ''),
(75, 'OnManagerNodePrerender', 2, ''),
(76, 'OnManagerNodeRender', 2, ''),
(77, 'OnManagerPageInit', 2, ''),
(78, 'OnManagerPreFrameLoader', 2, ''),
(79, 'OnManagerTopPrerender', 2, ''),
(80, 'OnManagerTreeInit', 2, ''),
(81, 'OnManagerTreePrerender', 2, ''),
(82, 'OnManagerTreeRender', 2, ''),
(83, 'OnManagerWelcomeHome', 2, ''),
(84, 'OnManagerWelcomePrerender', 2, ''),
(85, 'OnManagerWelcomeRender', 2, ''),
(86, 'OnMiscSettingsRender', 1, 'System Settings'),
(87, 'OnModFormDelete', 1, 'Modules'),
(88, 'OnModFormPrerender', 1, 'Modules'),
(89, 'OnModFormRender', 1, 'Modules'),
(90, 'OnModFormSave', 1, 'Modules'),
(91, 'OnPageNotFound', 1, ''),
(92, 'OnPageUnauthorized', 1, ''),
(93, 'OnParseDocument', 5, ''),
(94, 'OnParseProperties', 5, ''),
(95, 'OnPluginFormDelete', 1, 'Plugins'),
(96, 'OnPluginFormPrerender', 1, 'Plugins'),
(97, 'OnPluginFormRender', 1, 'Plugins'),
(98, 'OnPluginFormSave', 1, 'Plugins'),
(99, 'OnRichTextEditorInit', 1, 'RichText Editor'),
(100, 'OnRichTextEditorRegister', 1, 'RichText Editor'),
(101, 'OnSecuritySettingsRender', 1, 'System Settings'),
(102, 'OnSiteRefresh', 1, ''),
(103, 'OnSiteSettingsRender', 1, 'System Settings'),
(104, 'OnSnipFormDelete', 1, 'Snippets'),
(105, 'OnSnipFormPrerender', 1, 'Snippets'),
(106, 'OnSnipFormRender', 1, 'Snippets'),
(107, 'OnSnipFormSave', 1, 'Snippets'),
(108, 'OnStripAlias', 1, 'Documents'),
(109, 'OnTempFormDelete', 1, 'Templates'),
(110, 'OnTempFormPrerender', 1, 'Templates'),
(111, 'OnTempFormRender', 1, 'Templates'),
(112, 'OnTempFormSave', 1, 'Templates'),
(113, 'OnTVFormDelete', 1, 'Template Variables'),
(114, 'OnTVFormPrerender', 1, 'Template Variables'),
(115, 'OnTVFormRender', 1, 'Template Variables'),
(116, 'OnTVFormSave', 1, 'Template Variables'),
(117, 'OnUserAuthentication', 1, 'Users'),
(118, 'OnUserChangePassword', 1, 'Users'),
(119, 'OnUserCreateGroup', 1, 'Users'),
(120, 'OnUserDelete', 1, 'Users'),
(121, 'OnUserFormPrerender', 1, 'Users'),
(122, 'OnUserFormRender', 1, 'Users'),
(123, 'OnUserLogin', 1, 'Users'),
(124, 'OnUserLogout', 1, 'Users'),
(125, 'OnUserSave', 1, 'Users'),
(126, 'OnUserSettingsRender', 1, 'System Settings'),
(127, 'OnWebPageComplete', 5, ''),
(128, 'OnWebPageInit', 5, ''),
(129, 'OnWebPagePrerender', 5, ''),
(130, 'OnBeforeMailSend', 1, ''),
(131, 'OnBeforeClientSettingsSave', 6, 'ClientSettings'),
(132, 'OnClientSettingsSave', 6, 'ClientSettings'),
(134, 'OnPBContainerRender', 6, 'PageBuilder'),
(135, 'OnPBFieldRender', 6, 'PageBuilder');

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_system_settings`
--

CREATE TABLE `jdz6_system_settings` (
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `jdz6_system_settings`
--

INSERT INTO `jdz6_system_settings` (`setting_name`, `setting_value`) VALUES
('a', '30'),
('alias_listing', '1'),
('allow_duplicate_alias', '0'),
('allow_eval', 'with_scan'),
('allow_multiple_emails', '0'),
('automatic_alias', '1'),
('auto_menuindex', '1'),
('auto_template_logic', 'sibling'),
('blocked_minutes', '60'),
('cache_default', '1'),
('cache_type', '2'),
('captcha_words', 'EVO,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote'),
('captcha_words_default', 'EVO,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote'),
('check_files_onlogin', 'index.php\r\n.htaccess\r\nmanager/index.php\r\n/core/config/database/connections/default.php'),
('chunk_processor', 'DLTemplate'),
('clean_uploaded_filename', '1'),
('clientResize', '0'),
('client_footer_codes', '<!-- my custom code 2 -->\r\n'),
('client_header_codes', '<!-- my custom code 1 -->\r\n'),
('ControllerNamespace', ''),
('custom_contenttype', 'application/rss+xml,application/pdf,application/vnd.ms-word,application/vnd.ms-excel,text/html,text/css,text/xml,text/javascript,text/plain,application/json'),
('datepicker_offset', '-10'),
('datetime_format', 'dd-mm-YYYY'),
('default_template', '1'),
('denyExtensionRename', '0'),
('denyZipDownload', '0'),
('disable_chunk_cache', '0'),
('disable_plugins_cache', '0'),
('disable_snippet_cache', '0'),
('editor_css_path', ''),
('editor_css_selectors', ''),
('emailsender', 'admin@evocompany.localhost'),
('emailsubject', 'Данные для авторизации'),
('emailsubject_default', 'Данные для авторизации'),
('email_method', 'mail'),
('email_sender_method', '1'),
('enable_bindings', '1'),
('enable_cache', '2'),
('error_page', '1'),
('error_reporting', '1'),
('failed_login_attempts', '3'),
('fck_editor_autolang', '0'),
('fck_editor_toolbar', 'standard'),
('fe_editor_lang', 'ru'),
('filemanager_path', 'D:/OSP/domains/evocompany.localhost/'),
('friendly_alias_urls', '1'),
('friendly_urls', '1'),
('friendly_url_prefix', ''),
('friendly_url_suffix', ''),
('global_tabs', '1'),
('group_tvs', '1'),
('jpegQuality', '90'),
('lang_code', 'ru'),
('login_bg', ''),
('login_form_position', 'left'),
('login_form_style', 'dark'),
('login_logo', ''),
('make_folders', '1'),
('manager_direction', 'ltr'),
('manager_language', 'ru'),
('manager_layout', '4'),
('manager_menu_position', 'top'),
('manager_theme', 'default'),
('manager_theme_mode', '3'),
('maxImageHeight', '2200'),
('maxImageWidth', '2600'),
('minifyphp_incache', '0'),
('modx_charset', 'UTF-8'),
('new_file_permissions', '0644'),
('new_folder_permissions', '0755'),
('noThumbnailsRecreation', '0'),
('number_of_logs', '100'),
('number_of_results', '30'),
('old_template', '1'),
('publish_default', '1'),
('rb_base_dir', 'D:/OSP/domains/evocompany.localhost/assets/'),
('rb_base_url', 'assets/'),
('rb_webuser', '0'),
('reload_captcha_words', ''),
('reload_emailsubject', ''),
('reload_site_unavailable', ''),
('reload_system_email_webreminder_message', ''),
('reload_websignupemail_message', ''),
('remember_last_tab', '1'),
('resource_tree_node_name', 'pagetitle'),
('rss_url_news', 'https://github.com/evocms-community/evolution/releases.atom'),
('rss_url_security', 'https://github.com/extras-evolution/security-fix/releases.atom'),
('safe_functions_at_eval', 'time,date,strtotime,strftime'),
('search_default', '1'),
('send_errormail', '0'),
('seostrict', '1'),
('server_offset_time', '0'),
('server_protocol', 'http'),
('session.cookie.lifetime', '604800'),
('session_timeout', '15'),
('settings_version', '3.1.24'),
('showHiddenFiles', '0'),
('show_fullscreen_btn', '0'),
('show_newresource_btn', '0'),
('show_picker', '0'),
('siteunavailable_message_default', 'ru'),
('site_id', '64830f68bf649'),
('site_name', 'ООО \"Компания\"'),
('site_start', '1'),
('site_status', '1'),
('site_unavailable_message', 'В настоящее время сайт недоступен.'),
('site_unavailable_page', ''),
('smtp_auth', '0'),
('smtp_autotls', '0'),
('smtp_host', 'smtp.example.com'),
('smtp_port', '25'),
('smtp_secure', 'none'),
('smtp_username', 'emailsender'),
('strip_image_paths', '1'),
('system_email_webreminder_default', 'Здравствуйте, [+uid+]!\r\n\r\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\r\n\r\n[+surl+]\r\n\r\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\r\n\r\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\r\n\r\nС уважением, Администрация'),
('system_email_websignup_default', 'Здравствуйте, [+uid+]!\r\n\r\nВаши данные для авторизации на [+sname+]:\r\n\r\nИмя пользователя: [+uid+]\r\nПароль: [+pwd+]\r\n\r\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\r\n\r\nС уважением, Администрация'),
('sys_files_checksum', 'a:4:{s:45:\"C:/OSP/domains/evocompany.localhost/index.php\";s:32:\"50d517851587d6e6cc08436daeeb32ca\";s:45:\"C:/OSP/domains/evocompany.localhost/.htaccess\";s:32:\"1e5b1b3aece48a59068d544e9142d61e\";s:53:\"C:/OSP/domains/evocompany.localhost/manager/index.php\";s:32:\"2a9f68da5b69c7236c2987e97e7eabc5\";s:81:\"C:/OSP/domains/evocompany.localhost//core/config/database/connections/default.php\";s:32:\"d20a2440deaa2c454640222af9943a82\";}'),
('theme_refresher', ''),
('thumbHeight', '150'),
('thumbsDir', '.thumbs'),
('thumbWidth', '150'),
('tinymce4_blockFormats', 'Paragraph=p;Header 1=h1;Header 2=h2;Header 3=h3'),
('tinymce4_custom_buttons1', 'undo redo | cut copy paste | searchreplace | bold italic underline strikethrough | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent blockquote | styleselect'),
('tinymce4_custom_buttons2', 'link unlink anchor image media codesample table | hr removeformat | subscript superscript charmap | nonbreaking | visualchars visualblocks print preview fullscreen code formatselect'),
('tinymce4_custom_buttons3', ''),
('tinymce4_custom_buttons4', ''),
('tinymce4_custom_plugins', 'advlist autolink lists link image charmap print preview hr anchor pagebreak searchreplace wordcount visualblocks visualchars code fullscreen spellchecker insertdatetime media nonbreaking save table contextmenu directionality emoticons template paste textcolor codesample colorpicker textpattern imagetools paste modxlink youtube'),
('tinymce4_element_format', 'xhtml'),
('tinymce4_entermode', 'p'),
('tinymce4_schema', 'html5'),
('tinymce4_skin', 'lightgray'),
('tinymce4_skintheme', 'inlite'),
('tinymce4_template_chunks', ''),
('tinymce4_template_docs', ''),
('tinymce4_theme', 'custom'),
('tinymce5_theme', 'custom'),
('track_visitors', '0'),
('tree_page_click', '27'),
('tree_show_protected', '0'),
('udperms_allowroot', '0'),
('unauthorized_page', '1'),
('UpgradeRepository', ''),
('upload_files', 'bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff,fla,flv,swf,aac,au,avi,css,cache,doc,docx,gz,gzip,htaccess,htm,html,js,mp3,mp4,mpeg,mpg,ods,odp,odt,pdf,ppt,pptx,rar,tar,tgz,txt,wav,wmv,xls,xlsx,xml,z,zip,JPG,JPEG,PNG,GIF,svg,webp,tpl'),
('upload_images', 'bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff,svg,webp'),
('upload_maxsize', '10485760'),
('upload_media', 'au,avi,mp3,mp4,mpeg,mpg,wav,wmv'),
('use_alias_path', '1'),
('use_breadcrumbs', '1'),
('use_browser', '1'),
('use_captcha', '0'),
('use_editor', '1'),
('use_udperms', '1'),
('validate_referer', '1'),
('warning_visibility', '0'),
('webpwdreminder_message', 'Здравствуйте, [+uid+]!\r\n\r\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\r\n\r\n[+surl+]\r\n\r\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\r\n\r\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\r\n\r\nС уважением, Администрация'),
('websignupemail_message', 'Здравствуйте, [+uid+]!\r\n\r\nВаши данные для авторизации на [+sname+]:\r\n\r\nИмя пользователя: [+uid+]\r\nПароль: [+pwd+]\r\n\r\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\r\n\r\nС уважением, Администрация'),
('which_browser', 'mcpuk'),
('which_editor', 'none'),
('xhtml_urls', '0'),
('_token', 'CvCWJpsD6G0raKQbgHR6UWCawIFEqL4WPMxCWirb');

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_users`
--

CREATE TABLE `jdz6_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '' COMMENT 'Store new unconfirmed password',
  `refresh_token` varchar(255) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `valid_to` timestamp NULL DEFAULT NULL,
  `verified_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `jdz6_users`
--

INSERT INTO `jdz6_users` (`id`, `username`, `password`, `cachepwd`, `refresh_token`, `access_token`, `valid_to`, `verified_key`) VALUES
(1, 'admin', '$P$BavT70dVjMsClHETgRnau2gb8yZ.jE/', '', 'cd0913a4b90f52966c16565dde8722ca5b37d4b7396ad0e67e7f7ed7140cc710', '519701d4fe7dbf02d3336e42f209501efae7d6942627ba633ed01e91c0c6bdc6', '2024-01-19 03:24:33', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_user_attributes`
--

CREATE TABLE `jdz6_user_attributes` (
  `id` int(11) NOT NULL,
  `internalKey` int(11) NOT NULL DEFAULT 0,
  `fullname` varchar(100) NOT NULL DEFAULT '1',
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` int(11) NOT NULL DEFAULT 0,
  `blockeduntil` int(11) NOT NULL DEFAULT 0,
  `blockedafter` int(11) NOT NULL DEFAULT 0,
  `logincount` int(11) NOT NULL DEFAULT 0,
  `lastlogin` int(11) NOT NULL DEFAULT 0,
  `thislogin` int(11) NOT NULL DEFAULT 0,
  `failedlogincount` int(11) NOT NULL DEFAULT 0,
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(11) DEFAULT 0,
  `gender` int(11) NOT NULL DEFAULT 0 COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(25) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text DEFAULT NULL,
  `createdon` int(11) NOT NULL DEFAULT 0,
  `editedon` int(11) NOT NULL DEFAULT 0,
  `verified` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `jdz6_user_attributes`
--

INSERT INTO `jdz6_user_attributes` (`id`, `internalKey`, `fullname`, `first_name`, `last_name`, `middle_name`, `role`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `country`, `street`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `createdon`, `editedon`, `verified`) VALUES
(1, 1, '1', NULL, NULL, NULL, 1, 'admin@evocompany.localhost', '', '', 0, 1705595002, 0, 7, 1705595073, 1705595073, 0, '1', 0, 0, '', '', '', '', '', '', '', NULL, 1686310760, 1705595073, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_user_roles`
--

CREATE TABLE `jdz6_user_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `jdz6_user_roles`
--

INSERT INTO `jdz6_user_roles` (`id`, `name`, `description`) VALUES
(1, 'Administrator', 'Site administrators have full access to all functions'),
(2, 'Editor', 'Limited to managing content'),
(3, 'Publisher', 'Editor with expanded permissions including manage users, update Elements and site settings');

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_user_role_vars`
--

CREATE TABLE `jdz6_user_role_vars` (
  `tmplvarid` int(11) NOT NULL DEFAULT 0,
  `roleid` int(11) NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_user_settings`
--

CREATE TABLE `jdz6_user_settings` (
  `user` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `jdz6_user_values`
--

CREATE TABLE `jdz6_user_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tmplvarid` int(11) NOT NULL DEFAULT 0,
  `userid` int(11) NOT NULL DEFAULT 0,
  `value` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `jdz6_active_users`
--
ALTER TABLE `jdz6_active_users`
  ADD PRIMARY KEY (`sid`);

--
-- Индексы таблицы `jdz6_active_user_locks`
--
ALTER TABLE `jdz6_active_user_locks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_element_id` (`elementType`,`elementId`,`sid`);

--
-- Индексы таблицы `jdz6_active_user_sessions`
--
ALTER TABLE `jdz6_active_user_sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Индексы таблицы `jdz6_categories`
--
ALTER TABLE `jdz6_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jdz6_documentgroup_names`
--
ALTER TABLE `jdz6_documentgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `jdz6_document_groups`
--
ALTER TABLE `jdz6_document_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_dg_id` (`document_group`,`document`),
  ADD KEY `document_group` (`document_group`),
  ADD KEY `document` (`document`);

--
-- Индексы таблицы `jdz6_event_log`
--
ALTER TABLE `jdz6_event_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_log_user_index` (`user`);

--
-- Индексы таблицы `jdz6_manager_log`
--
ALTER TABLE `jdz6_manager_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manager_log_internalkey_index` (`internalKey`),
  ADD KEY `manager_log_action_index` (`action`),
  ADD KEY `manager_log_itemid_index` (`itemid`),
  ADD KEY `manager_log_itemname_index` (`itemname`),
  ADD KEY `manager_log_message_index` (`message`),
  ADD KEY `manager_log_timestamp_index` (`timestamp`);

--
-- Индексы таблицы `jdz6_membergroup_access`
--
ALTER TABLE `jdz6_membergroup_access`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jdz6_membergroup_names`
--
ALTER TABLE `jdz6_membergroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `membergroup_names_name_unique` (`name`);

--
-- Индексы таблицы `jdz6_member_groups`
--
ALTER TABLE `jdz6_member_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_group_member` (`user_group`,`member`);

--
-- Индексы таблицы `jdz6_migrations_install`
--
ALTER TABLE `jdz6_migrations_install`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jdz6_pagebuilder`
--
ALTER TABLE `jdz6_pagebuilder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_id` (`document_id`,`container`);

--
-- Индексы таблицы `jdz6_permissions`
--
ALTER TABLE `jdz6_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jdz6_permissions_groups`
--
ALTER TABLE `jdz6_permissions_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jdz6_role_permissions`
--
ALTER TABLE `jdz6_role_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jdz6_site_content`
--
ALTER TABLE `jdz6_site_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `typeidx` (`type`),
  ADD KEY `aliasidx` (`alias`),
  ADD KEY `parent` (`parent`),
  ADD KEY `pub_unpub_published` (`pub_date`,`unpub_date`,`published`),
  ADD KEY `pub_unpub` (`pub_date`,`unpub_date`),
  ADD KEY `unpub` (`unpub_date`),
  ADD KEY `pub` (`pub_date`);
ALTER TABLE `jdz6_site_content` ADD FULLTEXT KEY `content_ft_idx` (`pagetitle`,`description`,`content`);

--
-- Индексы таблицы `jdz6_site_content_closure`
--
ALTER TABLE `jdz6_site_content_closure`
  ADD PRIMARY KEY (`closure_id`);

--
-- Индексы таблицы `jdz6_site_htmlsnippets`
--
ALTER TABLE `jdz6_site_htmlsnippets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jdz6_site_modules`
--
ALTER TABLE `jdz6_site_modules`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jdz6_site_module_access`
--
ALTER TABLE `jdz6_site_module_access`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jdz6_site_module_depobj`
--
ALTER TABLE `jdz6_site_module_depobj`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jdz6_site_plugins`
--
ALTER TABLE `jdz6_site_plugins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jdz6_site_plugin_events`
--
ALTER TABLE `jdz6_site_plugin_events`
  ADD PRIMARY KEY (`pluginid`,`evtid`);

--
-- Индексы таблицы `jdz6_site_snippets`
--
ALTER TABLE `jdz6_site_snippets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jdz6_site_templates`
--
ALTER TABLE `jdz6_site_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jdz6_site_tmplvars`
--
ALTER TABLE `jdz6_site_tmplvars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indx_rank` (`rank`);

--
-- Индексы таблицы `jdz6_site_tmplvar_access`
--
ALTER TABLE `jdz6_site_tmplvar_access`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jdz6_site_tmplvar_contentvalues`
--
ALTER TABLE `jdz6_site_tmplvar_contentvalues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_tvid_contentid` (`tmplvarid`,`contentid`),
  ADD KEY `idx_tmplvarid` (`tmplvarid`),
  ADD KEY `idx_id` (`contentid`);
ALTER TABLE `jdz6_site_tmplvar_contentvalues` ADD FULLTEXT KEY `content_ft_idx` (`value`);

--
-- Индексы таблицы `jdz6_site_tmplvar_templates`
--
ALTER TABLE `jdz6_site_tmplvar_templates`
  ADD PRIMARY KEY (`tmplvarid`,`templateid`);

--
-- Индексы таблицы `jdz6_system_eventnames`
--
ALTER TABLE `jdz6_system_eventnames`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `system_eventnames_name_unique` (`name`);

--
-- Индексы таблицы `jdz6_system_settings`
--
ALTER TABLE `jdz6_system_settings`
  ADD PRIMARY KEY (`setting_name`);

--
-- Индексы таблицы `jdz6_users`
--
ALTER TABLE `jdz6_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_users_username_unique` (`username`);

--
-- Индексы таблицы `jdz6_user_attributes`
--
ALTER TABLE `jdz6_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `web_user_attributes_internalkey_index` (`internalKey`);

--
-- Индексы таблицы `jdz6_user_roles`
--
ALTER TABLE `jdz6_user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jdz6_user_role_vars`
--
ALTER TABLE `jdz6_user_role_vars`
  ADD PRIMARY KEY (`tmplvarid`,`roleid`);

--
-- Индексы таблицы `jdz6_user_settings`
--
ALTER TABLE `jdz6_user_settings`
  ADD PRIMARY KEY (`user`,`setting_name`),
  ADD KEY `user_settings_user_index` (`user`),
  ADD KEY `setting_name` (`setting_name`);

--
-- Индексы таблицы `jdz6_user_values`
--
ALTER TABLE `jdz6_user_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_values_tmplvarid_userid_unique` (`tmplvarid`,`userid`),
  ADD KEY `user_values_tmplvarid_index` (`tmplvarid`),
  ADD KEY `user_values_userid_index` (`userid`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `jdz6_active_user_locks`
--
ALTER TABLE `jdz6_active_user_locks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `jdz6_categories`
--
ALTER TABLE `jdz6_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `jdz6_documentgroup_names`
--
ALTER TABLE `jdz6_documentgroup_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `jdz6_document_groups`
--
ALTER TABLE `jdz6_document_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `jdz6_event_log`
--
ALTER TABLE `jdz6_event_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `jdz6_manager_log`
--
ALTER TABLE `jdz6_manager_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `jdz6_membergroup_access`
--
ALTER TABLE `jdz6_membergroup_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `jdz6_membergroup_names`
--
ALTER TABLE `jdz6_membergroup_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `jdz6_member_groups`
--
ALTER TABLE `jdz6_member_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `jdz6_migrations_install`
--
ALTER TABLE `jdz6_migrations_install`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT для таблицы `jdz6_pagebuilder`
--
ALTER TABLE `jdz6_pagebuilder`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `jdz6_permissions`
--
ALTER TABLE `jdz6_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT для таблицы `jdz6_permissions_groups`
--
ALTER TABLE `jdz6_permissions_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `jdz6_role_permissions`
--
ALTER TABLE `jdz6_role_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT для таблицы `jdz6_site_content`
--
ALTER TABLE `jdz6_site_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `jdz6_site_content_closure`
--
ALTER TABLE `jdz6_site_content_closure`
  MODIFY `closure_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT для таблицы `jdz6_site_htmlsnippets`
--
ALTER TABLE `jdz6_site_htmlsnippets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `jdz6_site_modules`
--
ALTER TABLE `jdz6_site_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `jdz6_site_module_access`
--
ALTER TABLE `jdz6_site_module_access`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `jdz6_site_module_depobj`
--
ALTER TABLE `jdz6_site_module_depobj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `jdz6_site_plugins`
--
ALTER TABLE `jdz6_site_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `jdz6_site_snippets`
--
ALTER TABLE `jdz6_site_snippets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `jdz6_site_templates`
--
ALTER TABLE `jdz6_site_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `jdz6_site_tmplvars`
--
ALTER TABLE `jdz6_site_tmplvars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `jdz6_site_tmplvar_access`
--
ALTER TABLE `jdz6_site_tmplvar_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `jdz6_site_tmplvar_contentvalues`
--
ALTER TABLE `jdz6_site_tmplvar_contentvalues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT для таблицы `jdz6_system_eventnames`
--
ALTER TABLE `jdz6_system_eventnames`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT для таблицы `jdz6_users`
--
ALTER TABLE `jdz6_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `jdz6_user_attributes`
--
ALTER TABLE `jdz6_user_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `jdz6_user_roles`
--
ALTER TABLE `jdz6_user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `jdz6_user_values`
--
ALTER TABLE `jdz6_user_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
