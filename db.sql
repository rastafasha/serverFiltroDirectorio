-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 17, 2021 at 08:59 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `api_rest_redclh`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'Technology'),
(2, 'Design'),
(3, 'Culture'),
(4, 'Business'),
(5, 'Politics'),
(6, 'Opinion'),
(7, 'Science'),
(8, 'Health'),
(9, 'Style'),
(10, 'Travel');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `informacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudades` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `user_id`, `code`, `informacion`, `ciudades`, `title`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 1, 'NO', '<p>ads</p>\n', '<p>ads</p>\n', 'Norway', 'isVisible', '2021-10-08 00:50:58', NULL),
(2, 1, 'US', '<p>dasdasda</p>\n', '<p>dsadas</p>\n', 'Estados Unidos', 'isVisible', '2021-10-08 01:11:51', NULL),
(3, 1, 'CA', '<p>das</p>\n', '<p>das</p>\n', 'Canadá', 'isVisible', '2021-10-08 01:13:31', NULL),
(4, 1, 'VE', '<p>informmacion acerca de venezuela</p>\n', '<p>informmacion acerca de venezuela</p>\n', 'Venezuela', 'isVisible', '2021-11-18 00:28:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crimeneslhs`
--

CREATE TABLE `crimeneslhs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pais_code` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `crimeneslh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clasificacionColectiva` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clasificacionIndividual` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lugar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `breveDescripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numCasosCPIAprobados` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numCasosCPIPendientes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numCasosNoCpiAprobado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numCasosNoCpiPendiente` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crimeneslhs`
--

INSERT INTO `crimeneslhs` (`id`, `pais_code`, `user_id`, `crimeneslh`, `clasificacionColectiva`, `clasificacionIndividual`, `lugar`, `breveDescripcion`, `numCasosCPIAprobados`, `numCasosCPIPendientes`, `numCasosNoCpiAprobado`, `numCasosNoCpiPendiente`, `created_at`, `updated_at`) VALUES
(1, 'NO', 1, 'das', 'da', 'da', 'das', '<p>dsa</p>\n', 'dsa', 'dsa', 'dsa', 'dsa', '2021-10-08 00:58:01', NULL),
(2, 'US', 1, 'das', 'da', 'das', 'dsa', '<p>dsa</p>\n', 'das', 'dsa', 'dsa', 'dsa', '2021-10-08 01:12:41', NULL),
(3, 'CA', 1, 'das', 'das', 'dsa', 'das', '<p>dsa</p>\n', 'dsa', 'dsa', 'adss', 'ads', '2021-10-08 01:14:29', '2021-10-08 01:15:20'),
(4, 'VE', 1, 'informmacion acerca de venezuela', 'informmacion acerca de venezuela', 'informmacion acerca de venezuela', 'informmacion acerca de venezuela', '<p>informmacion acerca de venezuela</p>\n', 'informmacion acerca de venezuela', 'informmacion acerca de venezuela', 'informmacion acerca de venezuela', 'informmacion acerca de venezuela', '2021-11-18 00:29:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `datosvictimas`
--

CREATE TABLE `datosvictimas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pais_code` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `numDatosvictimas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generoVictimasHombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generoVictimasMujer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edadVictimaNino` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edadVictimaJoven` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edadVictimaAdulto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edadVictimaOld` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estatusMigratorioRegular` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estatusMigratorioIrregular` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estatusConsulado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estadoIntegridad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `datosvictimas`
--

INSERT INTO `datosvictimas` (`id`, `pais_code`, `user_id`, `numDatosvictimas`, `generoVictimasHombre`, `generoVictimasMujer`, `edadVictimaNino`, `edadVictimaJoven`, `edadVictimaAdulto`, `edadVictimaOld`, `estatusMigratorioRegular`, `estatusMigratorioIrregular`, `estatusConsulado`, `estadoIntegridad`, `created_at`, `updated_at`) VALUES
(1, 'NO', 1, 'dsa', 'das', 'ads', 'das', 'das', 'dads', 'dsa', 'dsa', 'das', '<p>dsa</p>\n', 'das', '2021-10-08 00:57:42', NULL),
(2, 'US', 1, 'asdas', 'das', 'das', 'das', 'das', 'das', 'dasd', 'a', 'ads', '<p>da</p>\n', 'da', '2021-10-08 01:12:22', NULL),
(3, 'CA', 1, 'da', 'ads', 'dsa', 'das', 'das', 'das', 'dsa', 'das', 'das', '<p>das</p>\n', 'dass', '2021-10-08 01:14:01', '2021-10-08 01:15:13'),
(4, 'VE', 1, 'informmacion acerca de venezuela', 'informmacion acerca de venezuela', 'informmacion acerca de venezuela', 'informmacion acerca de venezuela', 'informmacion acerca de venezuela', 'informmacion acerca de venezuela', 'informmacion acerca de venezuela', 'informmacion acerca de venezuela', 'informmacion acerca de venezuela', '<p>informmacion acerca de venezuela</p>\n', 'informmacion acerca de venezuela', '2021-11-18 00:28:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2021_07_03_232958_create_datosvictimas_table', 1),
(4, '2021_07_03_233033_create_pais_table', 1),
(5, '2021_07_03_233047_create_crimeneslhs_table', 1),
(6, '2021_07_03_233113_create_violacionesddhhs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pais`
--

CREATE TABLE `pais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pais`
--

INSERT INTO `pais` (`id`, `code`, `title`) VALUES
(1, 'AD', 'Andorra'),
(2, 'AE', 'United Arab Emirates'),
(3, 'AF', 'Afghanistan'),
(4, 'AG', 'Antigua and Barbuda'),
(5, 'AI', 'Anguilla'),
(6, 'AL', 'Albania'),
(7, 'AM', 'Armenia'),
(8, 'AO', 'Angola'),
(9, 'AR', 'Argentina'),
(10, 'AS', 'American Samoa'),
(11, 'AT', 'Austria'),
(12, 'AU', 'Australia'),
(13, 'AW', 'Aruba'),
(14, 'AX', 'Aland Islands'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BA', 'Bosnia and Herzegovina'),
(17, 'BB', 'Barbados'),
(18, 'BD', 'Bangladesh'),
(19, 'BE', 'Belgium'),
(20, 'BF', 'Burkina Faso'),
(21, 'BG', 'Bulgaria'),
(22, 'BH', 'Bahrain'),
(23, 'BI', 'Burundi'),
(24, 'BJ', 'Benin'),
(25, 'BL', 'Saint Barthelemy'),
(26, 'BN', 'Brunei Darussalam'),
(27, 'BO', 'Bolivia'),
(28, 'BM', 'Bermuda'),
(29, 'BQ', 'Bonaire, Sint Eustatius and Saba'),
(30, 'BR', 'Brazil'),
(31, 'BS', 'Bahamas'),
(32, 'BT', 'Bhutan'),
(33, 'BV', 'Bouvet Island'),
(34, 'BW', 'Botswana'),
(35, 'BY', 'Belarus'),
(36, 'BZ', 'Belize'),
(37, 'CA', 'Canada'),
(38, 'CC', 'Cocos (Keeling) Islands'),
(39, 'CD', 'Democratic Republic of Congo'),
(40, 'CF', 'Central African Republic'),
(41, 'CG', 'Republic of Congo'),
(42, 'CH', 'Switzerland'),
(43, 'CI', 'Côte d\'Ivoire'),
(44, 'CK', 'Cook Islands'),
(45, 'CL', 'Chile'),
(46, 'CM', 'Cameroon'),
(47, 'CN', 'China'),
(48, 'CO', 'Colombia'),
(49, 'CR', 'Costa Rica'),
(50, 'CU', 'Cuba'),
(51, 'CV', 'Cape Verde'),
(52, 'CW', 'Curaçao'),
(53, 'CX', 'Christmas Island'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DE', 'Germany'),
(57, 'DJ', 'Djibouti'),
(58, 'DK', 'Denmark'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'DZ', 'Algeria'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'EE', 'Estonia'),
(65, 'EH', 'Western Sahara'),
(66, 'ER', 'Eritrea'),
(67, 'ES', 'Spain'),
(68, 'ET', 'Ethiopia'),
(69, 'FI', 'Finland'),
(70, 'ET', 'Ethiopia'),
(71, 'FJ', 'Fiji'),
(72, 'FK', 'Falkland Islands'),
(73, 'FM', 'Federated States of Micronesia'),
(74, 'FO', 'Faroe Islands'),
(75, 'FR', 'France'),
(76, 'GA', 'Gabon'),
(77, 'GB', 'United Kingdom'),
(78, 'GE', 'Georgia'),
(79, 'GD', 'Grenada'),
(80, 'GG', 'Guernsey'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GL', 'Greenland'),
(84, 'GM', 'Gambia'),
(85, 'GN', 'Guinea'),
(86, 'GO', 'Glorioso Islands'),
(87, 'GP', 'Guadeloupe'),
(88, 'GQ', 'Equatorial Guinea'),
(89, 'GR', 'Greece'),
(90, 'GS', 'South Georgia and South Sandwich Islands'),
(91, 'GT', 'Guatemala'),
(92, 'GU', 'Guam'),
(93, 'GW', 'Guinea-Bissau'),
(94, 'GY', 'Guyana'),
(95, 'HK', 'Hong Kong'),
(96, 'HM', 'Heard Island and McDonald Islands'),
(97, 'HN', 'Honduras'),
(98, 'HR', 'Croatia'),
(99, 'HT', 'Haiti'),
(100, 'HU', 'Hungary'),
(101, 'ID', 'Indonesia'),
(102, 'IE', 'Ireland'),
(103, 'IL', 'Israel'),
(104, 'IM', 'Isle of Man'),
(105, 'IN', 'India'),
(106, 'IO', 'British Indian Ocean Territory'),
(107, 'IQ', 'Iraq'),
(108, 'IR', 'Iran'),
(109, 'IS', 'Iceland'),
(110, 'IT', 'Italy'),
(111, 'JE', 'Jersey'),
(112, 'JM', 'Jamaica'),
(113, 'JO', 'Jordan'),
(114, 'JP', 'Japan'),
(115, 'JU', 'Juan De Nova Island'),
(116, 'KE', 'Kenya'),
(117, 'KG', 'Kyrgyzstan'),
(118, 'KH', 'Cambodia'),
(119, 'KI', 'Kiribati'),
(120, 'KM', 'Comoros'),
(121, 'KN', 'Saint Kitts and Nevis'),
(122, 'KP', 'North Korea'),
(123, 'KR', 'South Korea'),
(124, 'KR', 'South Korea'),
(125, 'XK', 'Kosovo'),
(126, 'KW', 'Kuwait'),
(127, 'KY', 'Cayman Islands'),
(128, 'KZ', 'Kazakhstan'),
(129, 'LA', 'Lao People\'s Democratic Republic'),
(130, 'LB', 'Lebanon'),
(131, 'LC', 'Saint Lucia'),
(132, 'LI', 'Liechtenstein'),
(133, 'LK', 'Sri Lanka'),
(134, 'LR', 'Liberia'),
(135, 'LS', 'Lesotho'),
(136, 'LT', 'Lithuania'),
(137, 'LU', 'Luxembourg'),
(138, 'LV', 'Latvia'),
(139, 'LY', 'Libya'),
(140, 'MA', 'Morocco'),
(141, 'MC', 'Monaco'),
(142, 'MD', 'Moldova'),
(143, 'MG', 'Madagascar'),
(144, 'ME', 'Montenegro'),
(145, 'MF', 'Saint Martin'),
(146, 'MH', 'Marshall Islands'),
(147, 'MK', 'Macedonia'),
(148, 'ML', 'Mali'),
(149, 'MO', 'Macau'),
(150, 'MM', 'Myanmar'),
(151, 'MN', 'Mongolia'),
(152, 'MP', 'Northern Mariana Islands'),
(153, 'MQ', 'Martinique'),
(154, 'MR', 'Mauritania'),
(155, 'MS', 'Montserrat'),
(156, 'MT', 'Malta'),
(157, 'MU', 'Mauritius'),
(158, 'MV', 'Maldives'),
(159, 'MW', 'Malawi'),
(160, 'MX', 'Mexico'),
(161, 'MY', 'Malaysia'),
(162, 'MZ', 'Mozambique'),
(163, 'NA', 'Namibia'),
(164, 'NC', 'New Caledonia'),
(165, 'NE', 'Niger'),
(166, 'NF', 'Norfolk Island'),
(167, 'NG', 'Nigeria'),
(168, 'NI', 'Nicaragua'),
(169, 'NL', 'Netherlands'),
(170, 'NO', 'Norway'),
(171, 'NP', 'Nepal'),
(172, 'NR', 'Nauru'),
(173, 'NU', 'Niue'),
(174, 'NZ', 'New Zealand'),
(175, 'OM', 'Oman'),
(176, 'PA', 'Panama'),
(177, 'OM', 'Oman'),
(178, 'PE', 'Peru'),
(179, 'PF', 'French Polynesia'),
(180, 'PG', 'Papua New Guinea'),
(181, 'PH', 'Philippines'),
(182, 'PK', 'Pakistan'),
(183, 'PL', 'Poland'),
(184, 'PM', 'Saint Pierre and Miquelon'),
(185, 'PN', 'Pitcairn Islands'),
(186, 'PR', 'Puerto Rico'),
(187, 'PS', 'Palestinian Territories'),
(188, 'PT', 'Portugal'),
(189, 'PW', 'Palau'),
(190, 'PY', 'Paraguay'),
(191, 'QA', 'Qatar'),
(192, 'RE', 'Reunion'),
(193, 'RO', 'Romania'),
(194, 'RS', 'Serbia'),
(195, 'RU', 'Russia'),
(196, 'RW', 'Rwanda'),
(197, 'SA', 'Saudi Arabia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SC', 'Seychelles'),
(200, 'SD', 'Sudan'),
(201, 'SE', 'Sweden'),
(202, 'SG', 'Singapore'),
(203, 'SH', 'Saint Helena'),
(204, 'SI', 'Slovenia'),
(205, 'SJ', 'Svalbard and Jan Mayen'),
(206, 'SK', 'Slovakia'),
(207, 'SL', 'Sierra Leone'),
(208, 'SM', 'San Marino'),
(209, 'SN', 'Senegal'),
(210, 'SO', 'Somalia'),
(211, 'SR', 'Suriname'),
(212, 'SS', 'South Sudan'),
(213, 'ST', 'Sao Tome and Principe'),
(214, 'SV', 'El Salvador'),
(215, 'SX', 'Sint Maarten'),
(216, 'SY', 'Syria'),
(217, 'SZ', 'Swaziland'),
(218, 'TC', 'Turks and Caicos Islands'),
(219, 'TD', 'Chad'),
(220, 'TF', 'French Southern and Antarctic Lands'),
(221, 'TG', 'Togo'),
(222, 'TH', 'Thailand'),
(223, 'TJ', 'Tajikistan'),
(224, 'TK', 'Tokelau'),
(225, 'TL', 'Timor-Leste'),
(226, 'TM', 'Turkmenistan'),
(227, 'TN', 'Tunisia'),
(228, 'TO', 'Tonga'),
(229, 'TR', 'Turkey'),
(230, 'TT', 'Trinidad and Tobago'),
(231, 'TV', 'Tuvalu'),
(232, 'TW', 'Taiwan'),
(233, 'TZ', 'Tanzania'),
(234, 'UA', 'Ukraine'),
(235, 'UG', 'Uganda'),
(236, 'UM-DQ', 'Jarvis Island'),
(237, 'UM-FQ', 'Baker Island'),
(238, 'UM-HQ', 'Howland Island'),
(239, 'UM-JQ', 'Johnston Atoll'),
(240, 'UM-MQ', 'Midway Islands'),
(241, 'UM-WQ', 'Wake Island'),
(242, 'US', 'United States'),
(243, 'UY', 'Uruguay'),
(244, 'UZ', 'Uzbekistan'),
(245, 'VA', 'Vatican City'),
(246, 'VC', 'Saint Vincent and the Grenadines'),
(247, 'VE', 'Venezuela'),
(248, 'VG', 'British Virgin Islands'),
(249, 'VI', 'US Virgin Islands'),
(250, 'VN', 'Vietnam'),
(251, 'VU', 'Vanuatu'),
(252, 'WF', 'Wallis and Futuna'),
(253, 'WS', 'Samoa'),
(254, 'YE', 'Yemen'),
(255, 'YT', 'Mayotte'),
(256, 'ZA', 'South Africa'),
(257, 'ZM', 'Zambia'),
(258, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `image` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `token`, `is_active`, `created_at`, `image`, `role`) VALUES
(1, 'admin', '6BA830073D9697D242F924BA98060AB6', 'Admin', 'redCLH', 'a1aed1a77c0916c43a4a67afe49af265', 1, '2018-10-27 05:25:13', 'logo.jpg', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `violacionesddhhs`
--

CREATE TABLE `violacionesddhhs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pais_code` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `violacionesDdhhTotal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clasificacionDCP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clasificacionDESCA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `calsificacionPueblos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lugar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `breveDescripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numCasosCorteInterDDHH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numCasosComDHNU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `casosNoAccionar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `violacionesddhhs`
--

INSERT INTO `violacionesddhhs` (`id`, `pais_code`, `user_id`, `violacionesDdhhTotal`, `clasificacionDCP`, `clasificacionDESCA`, `calsificacionPueblos`, `lugar`, `breveDescripcion`, `numCasosCorteInterDDHH`, `numCasosComDHNU`, `casosNoAccionar`, `created_at`, `updated_at`) VALUES
(1, 'NO', 1, 'das', 'dsa', 'ads', 'das', 'dsa', '<p>ddsa</p>\n', 'ads', 'das', 'ads', '2021-10-08 01:06:29', NULL),
(2, 'US', 1, 'dasads', 'das', 'das', 'das', 'das', '<p>da</p>\n', 'das', 'das', 'da', '2021-10-08 01:13:00', NULL),
(3, 'CA', 1, 'das', 'das', 'dsa', 'das', 'dsa', '<p>dsa</p>\n', 'dsa', 'das', 'dsa', '2021-10-08 01:14:50', NULL),
(4, 'VE', 1, 'informmacion acerca de venezuela', 'informmacion acerca de venezuela', 'informmacion acerca de venezuela', 'informmacion acerca de venezuela', 'informmacion acerca de venezuela', '<p>informmacion acerca de venezuela</p>\n', 'informmacion acerca de venezuela', 'informmacion acerca de venezuela', 'informmacion acerca de venezuela', '2021-11-18 00:29:26', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crimeneslhs`
--
ALTER TABLE `crimeneslhs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datosvictimas`
--
ALTER TABLE `datosvictimas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `violacionesddhhs`
--
ALTER TABLE `violacionesddhhs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `crimeneslhs`
--
ALTER TABLE `crimeneslhs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `datosvictimas`
--
ALTER TABLE `datosvictimas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pais`
--
ALTER TABLE `pais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `violacionesddhhs`
--
ALTER TABLE `violacionesddhhs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
