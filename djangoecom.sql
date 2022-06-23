-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2022 at 10:23 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `djangoecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add cart', 9, 'add_cart'),
(34, 'Can change cart', 9, 'change_cart'),
(35, 'Can delete cart', 9, 'delete_cart'),
(36, 'Can view cart', 9, 'view_cart'),
(37, 'Can add wishlist', 10, 'add_wishlist'),
(38, 'Can change wishlist', 10, 'change_wishlist'),
(39, 'Can delete wishlist', 10, 'delete_wishlist'),
(40, 'Can view wishlist', 10, 'view_wishlist'),
(41, 'Can add order', 11, 'add_order'),
(42, 'Can change order', 11, 'change_order'),
(43, 'Can delete order', 11, 'delete_order'),
(44, 'Can view order', 11, 'view_order'),
(45, 'Can add order item', 12, 'add_orderitem'),
(46, 'Can change order item', 12, 'change_orderitem'),
(47, 'Can delete order item', 12, 'delete_orderitem'),
(48, 'Can view order item', 12, 'view_orderitem'),
(49, 'Can add profile', 13, 'add_profile'),
(50, 'Can change profile', 13, 'change_profile'),
(51, 'Can delete profile', 13, 'delete_profile'),
(52, 'Can view profile', 13, 'view_profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$WlDQeDFR8wVsfbLfm7YDOv$XRp3JFlFBixNzuIMGTJlA6GZLGVCy6YlO92Asp2CyCU=', '2022-03-14 09:03:11.144307', 1, 'om', 'Om', 'Prakash N', 'om@gmail.com', 1, 1, '2021-09-10 15:08:01.504775'),
(2, 'pbkdf2_sha256$216000$9YGlcMk0t9Js$+aFJOEj41fxWDFl9jA9tqtT21Sg9ifuNhz28KQAD/x4=', '2021-11-06 08:31:14.850510', 0, 'sharma', '', '', 'sharma@gmail.com', 0, 1, '2021-10-26 14:28:18.446616'),
(3, 'pbkdf2_sha256$320000$fRUGjjmnkdG0wOaLVo1Wsu$qtipBIctU77htadFsx42j0VUDqYcB//DMPoz0reqCjw=', '2022-03-13 14:42:52.303115', 0, 'dev', '', '', 'dev@gmail.com', 0, 1, '2022-03-13 14:42:40.168241');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-09-10 15:15:29.989074', '1', 'Laptops', 1, '[{\"added\": {}}]', 7, 1),
(2, '2021-09-10 15:17:46.157447', '1', 'HP Laptop aiuo8 4gb', 1, '[{\"added\": {}}]', 8, 1),
(3, '2021-09-10 15:24:01.032270', '2', 'Mobiles', 1, '[{\"added\": {}}]', 7, 1),
(4, '2021-09-10 15:27:43.238793', '3', 'Fashion', 1, '[{\"added\": {}}]', 7, 1),
(5, '2021-09-10 15:39:48.406260', '4', 'Footwear', 1, '[{\"added\": {}}]', 7, 1),
(6, '2021-09-10 15:44:21.143323', '2', 'Dell Laptop Aio3', 1, '[{\"added\": {}}]', 8, 1),
(7, '2021-09-10 15:46:34.530798', '3', 'Red Mi Note 7 Pro', 1, '[{\"added\": {}}]', 8, 1),
(8, '2021-09-10 15:47:49.635759', '4', 'Redmi K20 pro', 1, '[{\"added\": {}}]', 8, 1),
(9, '2021-09-10 15:48:55.368856', '5', 'Red Mi Note 8', 1, '[{\"added\": {}}]', 8, 1),
(10, '2021-09-10 15:50:04.765415', '6', 'Tshirt For Men', 1, '[{\"added\": {}}]', 8, 1),
(11, '2021-09-10 15:51:59.042161', '7', 'Cotton Shirt for Men', 1, '[{\"added\": {}}]', 8, 1),
(12, '2021-09-10 15:52:58.909654', '8', 'Sport shoes', 1, '[{\"added\": {}}]', 8, 1),
(13, '2021-09-14 15:41:04.408352', '6', 'Tshirt For Men', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(14, '2021-09-14 15:41:27.725054', '6', 'Tshirt For Men', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(15, '2021-09-14 15:41:38.573472', '7', 'Cotton Shirt for Men', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(16, '2021-10-03 03:42:57.093074', '1', 'HP Laptop pso', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 8, 1),
(17, '2021-11-06 07:38:32.160148', '2', 'sharma', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(9, 'store', 'cart'),
(7, 'store', 'category'),
(11, 'store', 'order'),
(12, 'store', 'orderitem'),
(8, 'store', 'product'),
(13, 'store', 'profile'),
(10, 'store', 'wishlist');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-09-10 15:06:22.463792'),
(2, 'auth', '0001_initial', '2021-09-10 15:06:23.160812'),
(3, 'admin', '0001_initial', '2021-09-10 15:06:24.583030'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-09-10 15:06:24.899276'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-09-10 15:06:25.006281'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-09-10 15:06:25.362754'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-09-10 15:06:25.573774'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-09-10 15:06:25.679783'),
(9, 'auth', '0004_alter_user_username_opts', '2021-09-10 15:06:25.778786'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-09-10 15:06:26.089803'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-09-10 15:06:26.095803'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-09-10 15:06:26.124809'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-09-10 15:06:26.262815'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-09-10 15:06:26.397822'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-09-10 15:06:26.533632'),
(16, 'auth', '0011_update_proxy_permissions', '2021-09-10 15:06:26.612635'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-09-10 15:06:26.763863'),
(18, 'sessions', '0001_initial', '2021-09-10 15:06:26.954866'),
(19, 'store', '0001_initial', '2021-09-10 15:06:27.334892'),
(20, 'store', '0002_cart', '2021-11-06 07:57:33.601937'),
(21, 'store', '0003_wishlist', '2021-11-26 17:46:39.038782'),
(22, 'store', '0004_order_orderitem', '2021-12-11 09:11:33.713483'),
(23, 'store', '0005_profile', '2021-12-17 03:34:46.398397');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('003c4ik1ozjxjbc1a0yxuxsidi6xrfob', '.eJxVjM0OwiAQhN-FsyFUfnb16L3PQBYWpGpoUtqT8d2lSQ96nPm-mbfwtK3Fby0tfmJxFYM4_XaB4jPVHfCD6n2Wca7rMgW5K_KgTY4zp9ftcP8OCrXS15ZM1glVMpfEBA4VxXMA3TMgacxk2ECkAI4hY8yWB9dVpy0qzVp8vvgNOE4:1n8kwH:609oSym0JEOSa-J4cYvq0vOhLRkEJnLzof_uaPlq8i4', '2022-01-29 15:25:57.044211'),
('3ue4jit191h29532ndxwdxsha8eikj51', '.eJxVjMsOgjAUBf-la9O0tLcUl-75hua-FNRAQmFl_HclYaHbMzPnZQpu61C2qksZxZxNY06_GyE_dNqB3HG6zZbnaV1GsrtiD1ptP4s-L4f7dzBgHb519C34JKEjJQ0CSIgeO3YEFEmBG8guRCcsLSWla-Yu5QBeoxImNu8P_xM44Q:1mjH6Y:xyMoTPPrlQMMW4zK9tJPhUA8Dw-u3BrmaAAvg9YA1fE', '2021-11-20 08:31:14.857510'),
('9ms0o9ytv10c05sk0lmmgqd2ghmx2ham', '.eJxVjDsOwjAQBe_iGlmsWX-Wkp4zWPaugwPIkeKkQtwdIqWA9s3Me6mY1qXGtZc5jqLOCtThd8uJH6VtQO6p3SbNU1vmMetN0Tvt-jpJeV529--gpl6_dQBxSGiHTINxDEIe2GRGK8gsZFwGwqOcnHHoBX2xofiQjVAg8Fa9P9aENzg:1n6pM1:60pP_LsCoSn2TZuHj6ACPRgFJxK0kjaBRq8and1EIB4', '2022-01-24 07:44:33.171949'),
('mmv33vb8e9lz4qd1aryp0yevvtftwyok', '.eJxVjDsOwjAQBe_iGlmsWX-Wkp4zWPaugwPIkeKkQtwdIqWA9s3Me6mY1qXGtZc5jqLOCtThd8uJH6VtQO6p3SbNU1vmMetN0Tvt-jpJeV529--gpl6_dQBxSGiHTINxDEIe2GRGK8gsZFwGwqOcnHHoBX2xofiQjVAg8Fa9P9aENzg:1mqfP6:9IEyekyyD9ZsFP5azppsCf5ZIDwUgBYMYlVpM56epIo', '2021-12-10 17:52:56.711664'),
('nbbjuc4datxys48rff7dnuc1shx9b7ws', '.eJxVjDsOwjAQBe_iGlmsWX-Wkp4zWPaugwPIkeKkQtwdIqWA9s3Me6mY1qXGtZc5jqLOCtThd8uJH6VtQO6p3SbNU1vmMetN0Tvt-jpJeV529--gpl6_dQBxSGiHTINxDEIe2GRGK8gsZFwGwqOcnHHoBX2xofiQjVAg8Fa9P9aENzg:1mvxY0:T_cLH8Q8ViLkA5eUtSEtMcI_4ZW-GdTfb0UYJcv2F7c', '2021-12-25 08:16:00.055508'),
('u7s1muwdecncicxxfktvxf2n1q9rt0qr', '.eJxVjDsOwjAQBe_iGlmsWX-Wkp4zWPaugwPIkeKkQtwdIqWA9s3Me6mY1qXGtZc5jqLOCtThd8uJH6VtQO6p3SbNU1vmMetN0Tvt-jpJeV529--gpl6_dQBxSGiHTINxDEIe2GRGK8gsZFwGwqOcnHHoBX2xofiQjVAg8Fa9P9aENzg:1mQAXu:_p8PHwtRhZMsXsGDc3WI_qOZ4h5I_qsbj0WeL7ltRxQ', '2021-09-28 15:40:30.473990'),
('x0seueyre28vo8jhu2o6ty0tb9ew3ihc', '.eJxVjDsOwjAQBe_iGlmsWX-Wkp4zWPaugwPIkeKkQtwdIqWA9s3Me6mY1qXGtZc5jqLOCtThd8uJH6VtQO6p3SbNU1vmMetN0Tvt-jpJeV529--gpl6_dQBxSGiHTINxDEIe2GRGK8gsZFwGwqOcnHHoBX2xofiQjVAg8Fa9P9aENzg:1n2Q5K:wFYRw1SpBnfMUVAlN8xRCLkr1JKyZl3k_DISy6rbxSI', '2022-01-12 03:57:06.655758');

-- --------------------------------------------------------

--
-- Table structure for table `store_cart`
--

CREATE TABLE `store_cart` (
  `id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_cart`
--

INSERT INTO `store_cart` (`id`, `product_qty`, `created_at`, `product_id`, `user_id`) VALUES
(1, 2, '2021-11-06 08:31:23.185269', 4, 2),
(2, 2, '2021-11-06 08:32:59.755016', 3, 2),
(3, 2, '2021-11-06 09:07:36.684099', 5, 2),
(23, 1, '2022-01-10 13:18:17.880357', 7, 1),
(25, 3, '2022-01-15 15:34:56.253467', 2, 1),
(29, 1, '2022-03-13 16:23:14.567166', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `store_category`
--

CREATE TABLE `store_category` (
  `id` int(11) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `trending` tinyint(1) NOT NULL,
  `meta_title` varchar(150) NOT NULL,
  `meta_keywords` varchar(150) NOT NULL,
  `meta_description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_category`
--

INSERT INTO `store_category` (`id`, `slug`, `name`, `image`, `description`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`) VALUES
(1, 'laptops', 'Laptops', 'uploads/20210910204529hp-laptop.jpg', 'All kinds of laptops and accessories available, All kinds of laptops and accessories available,All kinds of laptops and accessories available', 0, 0, 'Laptops', 'laptops, new laptops,', 'laptops, new laptops, laptops, new laptops,laptops, new laptops,', '2021-09-10 15:15:29.976070'),
(2, 'mobiles', 'Mobiles', 'uploads/20210910205401red-mi-K20.jpg', 'All kinds of mobiles and great deals on latest mobiles', 0, 1, 'Mobiles', 'mobiles, latest mobiles', 'All kinds of mobiles and great deals on latest mobiles', '2021-09-10 15:24:01.024242'),
(3, 'fashion', 'Fashion', 'uploads/20210910205743casual_shirt.jpg', 'All kinds of clothing and fashion with great deals and big brands', 0, 1, 'Fashion', 'Fashion, shirts, pants', 'All kinds of clothing and fashion with great deals and big brands, All kinds of clothing and fashion with great deals and big brands', '2021-09-10 15:27:43.230768'),
(4, 'footwear', 'Footwear', 'uploads/20210910210948sports-shoe.jpg', 'All kinds of footwear for men, women and kids, All kinds of footwear for men, women and kids', 0, 0, 'Footwear', 'footwear, shoes, sandals', 'All kinds of footwear for men, women and kids', '2021-09-10 15:39:48.396251');

-- --------------------------------------------------------

--
-- Table structure for table `store_order`
--

CREATE TABLE `store_order` (
  `id` int(11) NOT NULL,
  `fname` varchar(150) NOT NULL,
  `lname` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `country` varchar(150) NOT NULL,
  `pincode` varchar(150) NOT NULL,
  `total_price` double NOT NULL,
  `payment_mode` varchar(150) NOT NULL,
  `payment_id` varchar(250) DEFAULT NULL,
  `status` varchar(150) NOT NULL,
  `message` longtext DEFAULT NULL,
  `tracking_no` varchar(150) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_order`
--

INSERT INTO `store_order` (`id`, `fname`, `lname`, `email`, `phone`, `address`, `city`, `state`, `country`, `pincode`, `total_price`, `payment_mode`, `payment_id`, `status`, `message`, `tracking_no`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'om', 'prks', 'om@gmail.com', '6362565656', 'india', 'blore', 'ktaka', 'india', '560077', 20997, 'COD', NULL, 'Pending', NULL, 'sharma7273855', '2021-12-11 09:12:06.011871', '2021-12-11 09:12:06.011871', 1),
(2, 'Om', 'Prakash N', 'om@gmail.com', '6362565656', 'bangalore india', 'blore', 'karnataka', 'india', '560077', 1099, 'COD', NULL, 'Pending', NULL, 'sharma3457348', '2021-12-17 03:53:26.605584', '2021-12-17 03:53:26.605584', 1),
(3, 'Om', 'Prakash N', 'om@gmail.com', '6362565656', 'testing differnet address bangalore india', 'blore', 'karnataka', 'india', '560077', 1099, 'COD', NULL, 'Pending', NULL, 'sharma3004997', '2021-12-17 03:55:56.103787', '2021-12-17 03:55:56.104787', 1),
(4, 'Om', 'Prakash N', 'om@gmail.com', '6362565656', 'bangalore india', 'blore', 'karnataka', 'india', '560077', 25997, 'Paid by Razorpay', 'pay_IdkcwIhsDFXrcX', 'Pending', NULL, 'sharma3691328', '2021-12-30 16:23:58.073210', '2021-12-30 16:23:58.073210', 1),
(5, 'Om', 'Prakash N', 'om@gmail.com', '6362565656', 'bangalore india', 'blore', 'karnataka', 'india', '560077', 65998, 'Paid by PayPal', '1S0922647A2449609', 'Pending', NULL, 'sharma3206639', '2022-01-02 08:52:15.543255', '2022-01-02 08:52:15.543255', 1),
(6, 'Om', 'Prakash N', 'om@gmail.com', '6362565656', 'bangalore india', 'blore', 'karnataka', 'india', '560077', 65998, 'Paid by PayPal', '2YC315046U132480H', 'Pending', NULL, 'sharma5652733', '2022-01-02 09:01:28.371133', '2022-01-02 09:01:28.371133', 1),
(7, 'Om', 'Prakash N', 'om@gmail.com', '6362565656', 'bangalore india', 'blore', 'karnataka', 'india', '560077', 32999, 'Paid by PayPal', '71T99229V5833845B', 'Pending', NULL, 'sharma8294245', '2022-01-02 09:03:46.872427', '2022-01-02 09:03:46.872427', 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_orderitem`
--

CREATE TABLE `store_orderitem` (
  `id` int(11) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_orderitem`
--

INSERT INTO `store_orderitem` (`id`, `price`, `quantity`, `order_id`, `product_id`) VALUES
(1, 2499, 2, 1, 8),
(2, 15999, 1, 1, 5),
(3, 1099, 1, 2, 7),
(4, 1099, 1, 3, 7),
(5, 20999, 1, 4, 4),
(6, 2499, 2, 4, 8),
(7, 32999, 2, 5, 1),
(8, 32999, 2, 6, 1),
(9, 32999, 1, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_product`
--

CREATE TABLE `store_product` (
  `id` int(11) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `small_description` varchar(250) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `original_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `trending` tinyint(1) NOT NULL,
  `tag` varchar(150) NOT NULL,
  `meta_title` varchar(150) NOT NULL,
  `meta_keywords` varchar(150) NOT NULL,
  `meta_description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_product`
--

INSERT INTO `store_product` (`id`, `slug`, `name`, `product_image`, `small_description`, `quantity`, `description`, `original_price`, `selling_price`, `status`, `trending`, `tag`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `category_id`) VALUES
(1, 'hp-laptop', 'HP Laptop pso', 'uploads/20210910204746hp-laptop.jpg', 'Hp laptop with 4 gb ram 500 gb ssd with integrated graphics', 5, 'Hp laptop with 4 gb ram 500 gb ssd with integrated graphics, Hp laptop with 4 gb ram 500 gb ssd with integrated graphics,Hp laptop with 4 gb ram 500 gb ssd with integrated graphics,Hp laptop with 4 gb ram 500 gb ssd with integrated graphics', 36999, 32999, 0, 1, 'New', 'HP Laptop', 'hp laptops, best laptops, hp laptops, best laptops', 'hp laptops, best laptops, hp laptops, best laptops, hp laptops, best laptops', '2021-09-10 15:17:46.145446', 1),
(2, 'dell-laptop', 'Dell Laptop Aio3', 'uploads/20210910211421dell_lap_top.jpg', 'Dell Laptop with 8gb ram and 256 gb ssd with 4 gb integrated graphics', 23, 'Dell Laptop with 8gb ram and 256 gb ssd with 4 gb integrated graphics, Dell Laptop with 8gb ram and 256 gb ssd with 4 gb integrated graphics, Dell Laptop with 8gb ram and 256 gb ssd with 4 gb integrated graphics', 46999, 40999, 0, 1, 'Hot', 'Dell Laptop Aio3', 'Dell Laptop, laptops, 8gb ram laptops', 'Dell Laptop with 8gb ram and 256 gb ssd with 4 gb integrated graphics, Dell Laptop with 8gb ram and 256 gb ssd with 4 gb integrated graphics, Dell Laptop with 8gb ram and 256 gb ssd with 4 gb integrated graphics', '2021-09-10 15:44:21.131297', 1),
(3, 'redmi-note-7-pro', 'Red Mi Note 7 Pro', 'uploads/20210910211634red-mi-y2.jpg', 'RedMi Note 7 pro 4+64 Gb Metallic blue', 0, 'RedMi Note 7 pro 4+64 Gb Metallic blue, RedMi Note 7 pro 4+64 Gb Metallic blue, RedMi Note 7 pro 4+64 Gb Metallic blue', 18999, 13999, 0, 1, 'New', 'Redmi Note 7 pro', 'Redmi Note 7 pro', 'Redmi Note 7 pro, Redmi phones', '2021-09-10 15:46:34.521796', 2),
(4, 'redmi-k20-pro', 'Redmi K20 pro', 'uploads/20210910211749red-mi-K20.jpg', 'RedMi K20 pro 8+128 Gb Night Dark', 1, 'RedMi K20 pro 8+128 Gb Night Dark with some extra ordinary features', 23999, 20999, 0, 1, 'Hot', 'Redmi K20 pro', 'Redmi K20 proRedmi K20 pro', 'RedMi K20 pro 8+128 Gb Night Dark, RedMi K20 pro 8+128 Gb Night Dark', '2021-09-10 15:47:49.627786', 2),
(5, 'redmi-note-8', 'Red Mi Note 8', 'uploads/20210910211855mobile-redmi-note-8.jpg', 'RedMi Note 8 4+64 Gb Metallic blue', 14, 'RedMi K20 pro 8+128 Gb Night Dark with some extra ordinary features', 18999, 15999, 0, 1, 'New arrival', 'Redmi Note 8', 'RedMi K20 pro 8+128 Gb Night Dark', 'RedMi K20 pro 8+128 Gb Night Dark, RedMi K20 pro 8+128 Gb Night Dark', '2021-09-10 15:48:55.363828', 2),
(6, 'tshirt-for-men', 'Tshirt For Men', 'uploads/20210914211127men.jpg', 'Tshirt for men', 50, 'Cotton t shirt for men wiht good build quality', 799, 599, 0, 0, 'New', 'Tshirt', 'Tshirt', 'TshirtTshirtTshirt', '2021-09-10 15:50:04.756423', 3),
(7, 'cotton-shirt-for-men', 'Cotton Shirt for Men', 'uploads/20210914211138formal-shirt.jpg', 'cotton shirt for men, cotton shirt for mencotton shirt for men', 10, 'cotton shirt for mencotton shirt for mencotton shirt for mencotton shirt for men cotton shirt for mencotton shirt for men', 1299, 1099, 0, 0, 'New', 'cotton shirt for men', 'cotton shirt for men', 'cotton shirt for mencotton shirt for men', '2021-09-10 15:51:59.037158', 3),
(8, 'sport-shoes', 'Sport shoes', 'uploads/20210910212258sports-shoe.jpg', 'XYZ brand sport shoes with comfort and blah balh XYZ brand sport shoes', 51, 'XYZ brand sport shoes with comfort and blah balh XYZ brand sport shoes , XYZ brand sport shoes with comfort and blah balh XYZ brand sport shoes', 3599, 2499, 0, 1, 'New', 'XYZ brand sport shoes', 'XYZ brand sport shoes with comfort and blah balh XYZ brand sport shoes', 'XYZ brand sport shoes with comfort and blah balh XYZ brand sport shoesXYZ brand sport shoes with comfort and blah balh XYZ brand sport shoes', '2021-09-10 15:52:58.904634', 4);

-- --------------------------------------------------------

--
-- Table structure for table `store_profile`
--

CREATE TABLE `store_profile` (
  `id` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `country` varchar(150) NOT NULL,
  `pincode` varchar(150) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_profile`
--

INSERT INTO `store_profile` (`id`, `phone`, `address`, `city`, `state`, `country`, `pincode`, `created_at`, `user_id`) VALUES
(1, '6362565656', 'bangalore india', 'blore', 'karnataka', 'india', '560077', '2021-12-17 03:53:26.589577', 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_wishlist`
--

CREATE TABLE `store_wishlist` (
  `id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `store_cart`
--
ALTER TABLE `store_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_cart_product_id_b219c080_fk_store_product_id` (`product_id`),
  ADD KEY `store_cart_user_id_99e99107_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `store_category`
--
ALTER TABLE `store_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_order`
--
ALTER TABLE `store_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_order_user_id_ae5f7a5f_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `store_orderitem`
--
ALTER TABLE `store_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_orderitem_order_id_acf8722d_fk_store_order_id` (`order_id`),
  ADD KEY `store_orderitem_product_id_f2b098d4_fk_store_product_id` (`product_id`);

--
-- Indexes for table `store_product`
--
ALTER TABLE `store_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_product_category_id_574bae65_fk_store_category_id` (`category_id`);

--
-- Indexes for table `store_profile`
--
ALTER TABLE `store_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `store_wishlist`
--
ALTER TABLE `store_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_wishlist_product_id_8af1333d_fk_store_product_id` (`product_id`),
  ADD KEY `store_wishlist_user_id_afcc4e88_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `store_cart`
--
ALTER TABLE `store_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `store_category`
--
ALTER TABLE `store_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `store_order`
--
ALTER TABLE `store_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `store_orderitem`
--
ALTER TABLE `store_orderitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `store_product`
--
ALTER TABLE `store_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `store_profile`
--
ALTER TABLE `store_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_wishlist`
--
ALTER TABLE `store_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_cart`
--
ALTER TABLE `store_cart`
  ADD CONSTRAINT `store_cart_product_id_b219c080_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `store_cart_user_id_99e99107_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_order`
--
ALTER TABLE `store_order`
  ADD CONSTRAINT `store_order_user_id_ae5f7a5f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_orderitem`
--
ALTER TABLE `store_orderitem`
  ADD CONSTRAINT `store_orderitem_order_id_acf8722d_fk_store_order_id` FOREIGN KEY (`order_id`) REFERENCES `store_order` (`id`),
  ADD CONSTRAINT `store_orderitem_product_id_f2b098d4_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`);

--
-- Constraints for table `store_product`
--
ALTER TABLE `store_product`
  ADD CONSTRAINT `store_product_category_id_574bae65_fk_store_category_id` FOREIGN KEY (`category_id`) REFERENCES `store_category` (`id`);

--
-- Constraints for table `store_profile`
--
ALTER TABLE `store_profile`
  ADD CONSTRAINT `store_profile_user_id_d67604a1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_wishlist`
--
ALTER TABLE `store_wishlist`
  ADD CONSTRAINT `store_wishlist_product_id_8af1333d_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `store_wishlist_user_id_afcc4e88_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
