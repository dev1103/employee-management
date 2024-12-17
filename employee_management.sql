-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2024 at 12:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `iso`, `name`, `iso3`, `numcode`, `phonecode`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'Afghanistan', 'AFG', 4, 93, NULL, NULL),
(2, 'AL', 'Albania', 'ALB', 8, 355, NULL, NULL),
(3, 'DZ', 'Algeria', 'DZA', 12, 213, NULL, NULL),
(4, 'AS', 'American Samoa', 'ASM', 16, 1684, NULL, NULL),
(5, 'AD', 'Andorra', 'AND', 20, 376, NULL, NULL),
(6, 'AO', 'Angola', 'AGO', 24, 244, NULL, NULL),
(7, 'AI', 'Anguilla', 'AIA', 660, 1264, NULL, NULL),
(8, 'AQ', 'Antarctica', NULL, NULL, 0, NULL, NULL),
(9, 'AG', 'Antigua and Barbuda', 'ATG', 28, 1268, NULL, NULL),
(10, 'AR', 'Argentina', 'ARG', 32, 54, NULL, NULL),
(11, 'AM', 'Armenia', 'ARM', 51, 374, NULL, NULL),
(12, 'AW', 'Aruba', 'ABW', 533, 297, NULL, NULL),
(13, 'AU', 'Australia', 'AUS', 36, 61, NULL, NULL),
(14, 'AT', 'Austria', 'AUT', 40, 43, NULL, NULL),
(15, 'AZ', 'Azerbaijan', 'AZE', 31, 994, NULL, NULL),
(16, 'BS', 'Bahamas', 'BHS', 44, 1242, NULL, NULL),
(17, 'BH', 'Bahrain', 'BHR', 48, 973, NULL, NULL),
(18, 'BD', 'Bangladesh', 'BGD', 50, 880, NULL, NULL),
(19, 'BB', 'Barbados', 'BRB', 52, 1246, NULL, NULL),
(20, 'BY', 'Belarus', 'BLR', 112, 375, NULL, NULL),
(21, 'BE', 'Belgium', 'BEL', 56, 32, NULL, NULL),
(22, 'BZ', 'Belize', 'BLZ', 84, 501, NULL, NULL),
(23, 'BJ', 'Benin', 'BEN', 204, 229, NULL, NULL),
(24, 'BM', 'Bermuda', 'BMU', 60, 1441, NULL, NULL),
(25, 'BT', 'Bhutan', 'BTN', 64, 975, NULL, NULL),
(26, 'BO', 'Bolivia', 'BOL', 68, 591, NULL, NULL),
(27, 'BA', 'Bosnia and Herzegovina', 'BIH', 70, 387, NULL, NULL),
(28, 'BW', 'Botswana', 'BWA', 72, 267, NULL, NULL),
(29, 'BV', 'Bouvet Island', NULL, NULL, 0, NULL, NULL),
(30, 'BR', 'Brazil', 'BRA', 76, 55, NULL, NULL),
(31, 'IO', 'British Indian Ocean Territory', NULL, NULL, 246, NULL, NULL),
(32, 'BN', 'Brunei Darussalam', 'BRN', 96, 673, NULL, NULL),
(33, 'BG', 'Bulgaria', 'BGR', 100, 359, NULL, NULL),
(34, 'BF', 'Burkina Faso', 'BFA', 854, 226, NULL, NULL),
(35, 'BI', 'Burundi', 'BDI', 108, 257, NULL, NULL),
(36, 'KH', 'Cambodia', 'KHM', 116, 855, NULL, NULL),
(37, 'CM', 'Cameroon', 'CMR', 120, 237, NULL, NULL),
(38, 'CA', 'Canada', 'CAN', 124, 1, NULL, NULL),
(39, 'CV', 'Cape Verde', 'CPV', 132, 238, NULL, NULL),
(40, 'KY', 'Cayman Islands', 'CYM', 136, 1345, NULL, NULL),
(41, 'CF', 'Central African Republic', 'CAF', 140, 236, NULL, NULL),
(42, 'TD', 'Chad', 'TCD', 148, 235, NULL, NULL),
(43, 'CL', 'Chile', 'CHL', 152, 56, NULL, NULL),
(44, 'CN', 'China', 'CHN', 156, 86, NULL, NULL),
(45, 'CX', 'Christmas Island', NULL, NULL, 61, NULL, NULL),
(46, 'CC', 'Cocos (Keeling) Islands', NULL, NULL, 672, NULL, NULL),
(47, 'CO', 'Colombia', 'COL', 170, 57, NULL, NULL),
(48, 'KM', 'Comoros', 'COM', 174, 269, NULL, NULL),
(49, 'CG', 'Congo', 'COG', 178, 242, NULL, NULL),
(50, 'CD', 'Congo, the Democratic Republic of the', 'COD', 180, 242, NULL, NULL),
(51, 'CK', 'Cook Islands', 'COK', 184, 682, NULL, NULL),
(52, 'CR', 'Costa Rica', 'CRI', 188, 506, NULL, NULL),
(53, 'CI', 'Cote D\'Ivoire', 'CIV', 384, 225, NULL, NULL),
(54, 'HR', 'Croatia', 'HRV', 191, 385, NULL, NULL),
(55, 'CU', 'Cuba', 'CUB', 192, 53, NULL, NULL),
(56, 'CY', 'Cyprus', 'CYP', 196, 357, NULL, NULL),
(57, 'CZ', 'Czech Republic', 'CZE', 203, 420, NULL, NULL),
(58, 'DK', 'Denmark', 'DNK', 208, 45, NULL, NULL),
(59, 'DJ', 'Djibouti', 'DJI', 262, 253, NULL, NULL),
(60, 'DM', 'Dominica', 'DMA', 212, 1767, NULL, NULL),
(61, 'DO', 'Dominican Republic', 'DOM', 214, 1809, NULL, NULL),
(62, 'EC', 'Ecuador', 'ECU', 218, 593, NULL, NULL),
(63, 'EG', 'Egypt', 'EGY', 818, 20, NULL, NULL),
(64, 'SV', 'El Salvador', 'SLV', 222, 503, NULL, NULL),
(65, 'GQ', 'Equatorial Guinea', 'GNQ', 226, 240, NULL, NULL),
(66, 'ER', 'Eritrea', 'ERI', 232, 291, NULL, NULL),
(67, 'EE', 'Estonia', 'EST', 233, 372, NULL, NULL),
(68, 'ET', 'Ethiopia', 'ETH', 231, 251, NULL, NULL),
(69, 'FK', 'Falkland Islands (Malvinas)', 'FLK', 238, 500, NULL, NULL),
(70, 'FO', 'Faroe Islands', 'FRO', 234, 298, NULL, NULL),
(71, 'FJ', 'Fiji', 'FJI', 242, 679, NULL, NULL),
(72, 'FI', 'Finland', 'FIN', 246, 358, NULL, NULL),
(73, 'FR', 'France', 'FRA', 250, 33, NULL, NULL),
(74, 'GF', 'French Guiana', 'GUF', 254, 594, NULL, NULL),
(75, 'PF', 'French Polynesia', 'PYF', 258, 689, NULL, NULL),
(76, 'TF', 'French Southern Territories', NULL, NULL, 0, NULL, NULL),
(77, 'GA', 'Gabon', 'GAB', 266, 241, NULL, NULL),
(78, 'GM', 'Gambia', 'GMB', 270, 220, NULL, NULL),
(79, 'GE', 'Georgia', 'GEO', 268, 995, NULL, NULL),
(80, 'DE', 'Germany', 'DEU', 276, 49, NULL, NULL),
(81, 'GH', 'Ghana', 'GHA', 288, 233, NULL, NULL),
(82, 'GI', 'Gibraltar', 'GIB', 292, 350, NULL, NULL),
(83, 'GR', 'Greece', 'GRC', 300, 30, NULL, NULL),
(84, 'GL', 'Greenland', 'GRL', 304, 299, NULL, NULL),
(85, 'GD', 'Grenada', 'GRD', 308, 1473, NULL, NULL),
(86, 'GP', 'Guadeloupe', 'GLP', 312, 590, NULL, NULL),
(87, 'GU', 'Guam', 'GUM', 316, 1671, NULL, NULL),
(88, 'GT', 'Guatemala', 'GTM', 320, 502, NULL, NULL),
(89, 'GN', 'Guinea', 'GIN', 324, 224, NULL, NULL),
(90, 'GW', 'Guinea-Bissau', 'GNB', 624, 245, NULL, NULL),
(91, 'GY', 'Guyana', 'GUY', 328, 592, NULL, NULL),
(92, 'HT', 'Haiti', 'HTI', 332, 509, NULL, NULL),
(93, 'HM', 'Heard Island and Mcdonald Islands', NULL, NULL, 0, NULL, NULL),
(94, 'VA', 'Holy See (Vatican City State)', 'VAT', 336, 39, NULL, NULL),
(95, 'HN', 'Honduras', 'HND', 340, 504, NULL, NULL),
(96, 'HK', 'Hong Kong', 'HKG', 344, 852, NULL, NULL),
(97, 'HU', 'Hungary', 'HUN', 348, 36, NULL, NULL),
(98, 'IS', 'Iceland', 'ISL', 352, 354, NULL, NULL),
(99, 'IN', 'India', 'IND', 356, 91, NULL, NULL),
(100, 'ID', 'Indonesia', 'IDN', 360, 62, NULL, NULL),
(101, 'IR', 'Iran, Islamic Republic of', 'IRN', 364, 98, NULL, NULL),
(102, 'IQ', 'Iraq', 'IRQ', 368, 964, NULL, NULL),
(103, 'IE', 'Ireland', 'IRL', 372, 353, NULL, NULL),
(104, 'IL', 'Israel', 'ISR', 376, 972, NULL, NULL),
(105, 'IT', 'Italy', 'ITA', 380, 39, NULL, NULL),
(106, 'JM', 'Jamaica', 'JAM', 388, 1876, NULL, NULL),
(107, 'JP', 'Japan', 'JPN', 392, 81, NULL, NULL),
(108, 'JO', 'Jordan', 'JOR', 400, 962, NULL, NULL),
(109, 'KZ', 'Kazakhstan', 'KAZ', 398, 7, NULL, NULL),
(110, 'KE', 'Kenya', 'KEN', 404, 254, NULL, NULL),
(111, 'KI', 'Kiribati', 'KIR', 296, 686, NULL, NULL),
(112, 'KP', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850, NULL, NULL),
(113, 'KR', 'Korea, Republic of', 'KOR', 410, 82, NULL, NULL),
(114, 'KW', 'Kuwait', 'KWT', 414, 965, NULL, NULL),
(115, 'KG', 'Kyrgyzstan', 'KGZ', 417, 996, NULL, NULL),
(116, 'LA', 'Lao People\'s Democratic Republic', 'LAO', 418, 856, NULL, NULL),
(117, 'LV', 'Latvia', 'LVA', 428, 371, NULL, NULL),
(118, 'LB', 'Lebanon', 'LBN', 422, 961, NULL, NULL),
(119, 'LS', 'Lesotho', 'LSO', 426, 266, NULL, NULL),
(120, 'LR', 'Liberia', 'LBR', 430, 231, NULL, NULL),
(121, 'LY', 'Libyan Arab Jamahiriya', 'LBY', 434, 218, NULL, NULL),
(122, 'LI', 'Liechtenstein', 'LIE', 438, 423, NULL, NULL),
(123, 'LT', 'Lithuania', 'LTU', 440, 370, NULL, NULL),
(124, 'LU', 'Luxembourg', 'LUX', 442, 352, NULL, NULL),
(125, 'MO', 'Macao', 'MAC', 446, 853, NULL, NULL),
(126, 'MK', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389, NULL, NULL),
(127, 'MG', 'Madagascar', 'MDG', 450, 261, NULL, NULL),
(128, 'MW', 'Malawi', 'MWI', 454, 265, NULL, NULL),
(129, 'MY', 'Malaysia', 'MYS', 458, 60, NULL, NULL),
(130, 'MV', 'Maldives', 'MDV', 462, 960, NULL, NULL),
(131, 'ML', 'Mali', 'MLI', 466, 223, NULL, NULL),
(132, 'MT', 'Malta', 'MLT', 470, 356, NULL, NULL),
(133, 'MH', 'Marshall Islands', 'MHL', 584, 692, NULL, NULL),
(134, 'MQ', 'Martinique', 'MTQ', 474, 596, NULL, NULL),
(135, 'MR', 'Mauritania', 'MRT', 478, 222, NULL, NULL),
(136, 'MU', 'Mauritius', 'MUS', 480, 230, NULL, NULL),
(137, 'YT', 'Mayotte', NULL, NULL, 269, NULL, NULL),
(138, 'MX', 'Mexico', 'MEX', 484, 52, NULL, NULL),
(139, 'FM', 'Micronesia, Federated States of', 'FSM', 583, 691, NULL, NULL),
(140, 'MD', 'Moldova, Republic of', 'MDA', 498, 373, NULL, NULL),
(141, 'MC', 'Monaco', 'MCO', 492, 377, NULL, NULL),
(142, 'MN', 'Mongolia', 'MNG', 496, 976, NULL, NULL),
(143, 'MS', 'Montserrat', 'MSR', 500, 1664, NULL, NULL),
(144, 'MA', 'Morocco', 'MAR', 504, 212, NULL, NULL),
(145, 'MZ', 'Mozambique', 'MOZ', 508, 258, NULL, NULL),
(146, 'MM', 'Myanmar', 'MMR', 104, 95, NULL, NULL),
(147, 'NA', 'Namibia', 'NAM', 516, 264, NULL, NULL),
(148, 'NR', 'Nauru', 'NRU', 520, 674, NULL, NULL),
(149, 'NP', 'Nepal', 'NPL', 524, 977, NULL, NULL),
(150, 'NL', 'Netherlands', 'NLD', 528, 31, NULL, NULL),
(151, 'AN', 'Netherlands Antilles', 'ANT', 530, 599, NULL, NULL),
(152, 'NC', 'New Caledonia', 'NCL', 540, 687, NULL, NULL),
(153, 'NZ', 'New Zealand', 'NZL', 554, 64, NULL, NULL),
(154, 'NI', 'Nicaragua', 'NIC', 558, 505, NULL, NULL),
(155, 'NE', 'Niger', 'NER', 562, 227, NULL, NULL),
(156, 'NG', 'Nigeria', 'NGA', 566, 234, NULL, NULL),
(157, 'NU', 'Niue', 'NIU', 570, 683, NULL, NULL),
(158, 'NF', 'Norfolk Island', 'NFK', 574, 672, NULL, NULL),
(159, 'MP', 'Northern Mariana Islands', 'MNP', 580, 1670, NULL, NULL),
(160, 'NO', 'Norway', 'NOR', 578, 47, NULL, NULL),
(161, 'OM', 'Oman', 'OMN', 512, 968, NULL, NULL),
(162, 'PK', 'Pakistan', 'PAK', 586, 92, NULL, NULL),
(163, 'PW', 'Palau', 'PLW', 585, 680, NULL, NULL),
(164, 'PS', 'Palestinian Territory, Occupied', NULL, NULL, 970, NULL, NULL),
(165, 'PA', 'Panama', 'PAN', 591, 507, NULL, NULL),
(166, 'PG', 'Papua New Guinea', 'PNG', 598, 675, NULL, NULL),
(167, 'PY', 'Paraguay', 'PRY', 600, 595, NULL, NULL),
(168, 'PE', 'Peru', 'PER', 604, 51, NULL, NULL),
(169, 'PH', 'Philippines', 'PHL', 608, 63, NULL, NULL),
(170, 'PN', 'Pitcairn', 'PCN', 612, 0, NULL, NULL),
(171, 'PL', 'Poland', 'POL', 616, 48, NULL, NULL),
(172, 'PT', 'Portugal', 'PRT', 620, 351, NULL, NULL),
(173, 'PR', 'Puerto Rico', 'PRI', 630, 1787, NULL, NULL),
(174, 'QA', 'Qatar', 'QAT', 634, 974, NULL, NULL),
(175, 'RE', 'Reunion', 'REU', 638, 262, NULL, NULL),
(176, 'RO', 'Romania', 'ROM', 642, 40, NULL, NULL),
(177, 'RU', 'Russian Federation', 'RUS', 643, 70, NULL, NULL),
(178, 'RW', 'Rwanda', 'RWA', 646, 250, NULL, NULL),
(179, 'SH', 'Saint Helena', 'SHN', 654, 290, NULL, NULL),
(180, 'KN', 'Saint Kitts and Nevis', 'KNA', 659, 1869, NULL, NULL),
(181, 'LC', 'Saint Lucia', 'LCA', 662, 1758, NULL, NULL),
(182, 'PM', 'Saint Pierre and Miquelon', 'SPM', 666, 508, NULL, NULL),
(183, 'VC', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784, NULL, NULL),
(184, 'WS', 'Samoa', 'WSM', 882, 684, NULL, NULL),
(185, 'SM', 'San Marino', 'SMR', 674, 378, NULL, NULL),
(186, 'ST', 'Sao Tome and Principe', 'STP', 678, 239, NULL, NULL),
(187, 'SA', 'Saudi Arabia', 'SAU', 682, 966, NULL, NULL),
(188, 'SN', 'Senegal', 'SEN', 686, 221, NULL, NULL),
(189, 'CS', 'Serbia and Montenegro', NULL, NULL, 381, NULL, NULL),
(190, 'SC', 'Seychelles', 'SYC', 690, 248, NULL, NULL),
(191, 'SL', 'Sierra Leone', 'SLE', 694, 232, NULL, NULL),
(192, 'SG', 'Singapore', 'SGP', 702, 65, NULL, NULL),
(193, 'SK', 'Slovakia', 'SVK', 703, 421, NULL, NULL),
(194, 'SI', 'Slovenia', 'SVN', 705, 386, NULL, NULL),
(195, 'SB', 'Solomon Islands', 'SLB', 90, 677, NULL, NULL),
(196, 'SO', 'Somalia', 'SOM', 706, 252, NULL, NULL),
(197, 'ZA', 'South Africa', 'ZAF', 710, 27, NULL, NULL),
(198, 'GS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0, NULL, NULL),
(199, 'ES', 'Spain', 'ESP', 724, 34, NULL, NULL),
(200, 'LK', 'Sri Lanka', 'LKA', 144, 94, NULL, NULL),
(201, 'SD', 'Sudan', 'SDN', 736, 249, NULL, NULL),
(202, 'SR', 'Suriname', 'SUR', 740, 597, NULL, NULL),
(203, 'SJ', 'Svalbard and Jan Mayen', 'SJM', 744, 47, NULL, NULL),
(204, 'SZ', 'Swaziland', 'SWZ', 748, 268, NULL, NULL),
(205, 'SE', 'Sweden', 'SWE', 752, 46, NULL, NULL),
(206, 'CH', 'Switzerland', 'CHE', 756, 41, NULL, NULL),
(207, 'SY', 'Syrian Arab Republic', 'SYR', 760, 963, NULL, NULL),
(208, 'TW', 'Taiwan, Province of China', 'TWN', 158, 886, NULL, NULL),
(209, 'TJ', 'Tajikistan', 'TJK', 762, 992, NULL, NULL),
(210, 'TZ', 'Tanzania, United Republic of', 'TZA', 834, 255, NULL, NULL),
(211, 'TH', 'Thailand', 'THA', 764, 66, NULL, NULL),
(212, 'TL', 'Timor-Leste', NULL, NULL, 670, NULL, NULL),
(213, 'TG', 'Togo', 'TGO', 768, 228, NULL, NULL),
(214, 'TK', 'Tokelau', 'TKL', 772, 690, NULL, NULL),
(215, 'TO', 'Tonga', 'TON', 776, 676, NULL, NULL),
(216, 'TT', 'Trinidad and Tobago', 'TTO', 780, 1868, NULL, NULL),
(217, 'TN', 'Tunisia', 'TUN', 788, 216, NULL, NULL),
(218, 'TR', 'Turkey', 'TUR', 792, 90, NULL, NULL),
(219, 'TM', 'Turkmenistan', 'TKM', 795, 7370, NULL, NULL),
(220, 'TC', 'Turks and Caicos Islands', 'TCA', 796, 1649, NULL, NULL),
(221, 'TV', 'Tuvalu', 'TUV', 798, 688, NULL, NULL),
(222, 'UG', 'Uganda', 'UGA', 800, 256, NULL, NULL),
(223, 'UA', 'Ukraine', 'UKR', 804, 380, NULL, NULL),
(224, 'AE', 'United Arab Emirates', 'ARE', 784, 971, NULL, NULL),
(225, 'GB', 'United Kingdom', 'GBR', 826, 44, NULL, NULL),
(226, 'US', 'United States', 'USA', 840, 1, NULL, NULL),
(227, 'UM', 'United States Minor Outlying Islands', NULL, NULL, 1, NULL, NULL),
(228, 'UY', 'Uruguay', 'URY', 858, 598, NULL, NULL),
(229, 'UZ', 'Uzbekistan', 'UZB', 860, 998, NULL, NULL),
(230, 'VU', 'Vanuatu', 'VUT', 548, 678, NULL, NULL),
(231, 'VE', 'Venezuela', 'VEN', 862, 58, NULL, NULL),
(232, 'VN', 'Viet Nam', 'VNM', 704, 84, NULL, NULL),
(233, 'VG', 'Virgin Islands, British', 'VGB', 92, 1284, NULL, NULL),
(234, 'VI', 'Virgin Islands, U.S.', 'VIR', 850, 1340, NULL, NULL),
(235, 'WF', 'Wallis and Futuna', 'WLF', 876, 681, NULL, NULL),
(236, 'EH', 'Western Sahara', 'ESH', 732, 212, NULL, NULL),
(237, 'YE', 'Yemen', 'YEM', 887, 967, NULL, NULL),
(238, 'ZM', 'Zambia', 'ZMB', 894, 260, NULL, NULL),
(239, 'ZW', 'Zimbabwe', 'ZWE', 716, 263, NULL, NULL),
(240, 'RS', 'Serbia', 'SRB', 688, 381, NULL, NULL),
(241, 'AP', 'Asia / Pacific Region', '0', 0, 0, NULL, NULL),
(242, 'ME', 'Montenegro', 'MNE', 499, 382, NULL, NULL),
(243, 'AX', 'Aland Islands', 'ALA', 248, 358, NULL, NULL),
(244, 'BQ', 'Bonaire, Sint Eustatius and Saba', 'BES', 535, 599, NULL, NULL),
(245, 'CW', 'Curacao', 'CUW', 531, 599, NULL, NULL),
(246, 'GG', 'Guernsey', 'GGY', 831, 44, NULL, NULL),
(247, 'IM', 'Isle of Man', 'IMN', 833, 44, NULL, NULL),
(248, 'JE', 'Jersey', 'JEY', 832, 44, NULL, NULL),
(249, 'XK', 'Kosovo', '---', 0, 381, NULL, NULL),
(250, 'BL', 'Saint Barthelemy', 'BLM', 652, 590, NULL, NULL),
(251, 'MF', 'Saint Martin', 'MAF', 663, 590, NULL, NULL),
(252, 'SX', 'Sint Maarten', 'SXM', 534, 1, NULL, NULL),
(253, 'SS', 'South Sudan', 'SSD', 728, 211, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `gender` varchar(255) NOT NULL,
  `hobby` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `country_code`, `mobile`, `address`, `gender`, `hobby`, `photo`, `created_at`, `updated_at`) VALUES
(3, 'Divyang', 'Patel', 'divyangpatel404@gmail.com', '91', '1234568790', 'Maroli', 'Male', 'Cricket,Dance', 'uploaded-676157f1b6c9b4.44365013.jpg', '2024-12-17 05:22:33', '2024-12-17 05:22:33'),
(4, 'Dev', 'Patel', 'dev@gmail.com', '355', '1234567890', 'Surat', 'Male', 'Cricket,Dance', 'uploaded-67615d4c5f9c92.32470684.jpg', '2024-12-17 05:45:24', '2024-12-17 05:45:24'),
(5, 'Shiv', 'Patel', 'shiv@gmail.com', '375', '7458120369', 'Anand', 'Male', 'Cricket,Dance', 'uploaded-67615dbacd0308.37119648.jpeg', '2024-12-17 05:47:14', '2024-12-17 05:47:14'),
(6, 'Shivani', 'Patel', 'shivani@gmail.com', '1684', '8521479630', 'Maroli', 'Female', 'Swimming,Reading', 'uploaded-67615de712dfe5.50922043.jpg', '2024-12-17 05:47:59', '2024-12-17 05:47:59'),
(7, 'Tushar', 'Patel', 'tushar@gmail.com', '1684', '9658231470', 'Surat', 'Male', 'Cricket,Dance', 'uploaded-67615e10ac9166.08951204.jpg', '2024-12-17 05:48:40', '2024-12-17 05:48:40'),
(8, 'Piyu', 'Patel', 'piyu@gmail.com', '0', '8569741230', 'Surat', 'Female', 'Cricket,Dance', 'uploaded-67615e35640309.51268476.jpg', '2024-12-17 05:49:17', '2024-12-17 05:49:17'),
(9, 'Pooja', 'Desai', 'pooja@gmail.com', '1684', '7896541230', 'Navsari', 'Female', 'Cricket,Dance', 'uploaded-67615e5a847cb9.57733166.jpeg', '2024-12-17 05:49:54', '2024-12-17 05:49:54'),
(10, 'Smit', 'Tailar', 'smit@gmail.com', '1', '7458120369', 'Surat', 'Male', 'Cricket,Dance,Reading', 'uploaded-67615e7ee45166.33535622.jpg', '2024-12-17 05:50:30', '2024-12-17 05:50:30'),
(11, 'Deep', 'Patel', 'deep@gmail.com', '226', '8745120369', 'Surat', 'Male', 'Cricket,Dance', 'uploaded-67615ea96ce287.91747416.jpg', '2024-12-17 05:51:13', '2024-12-17 05:51:13'),
(12, 'Akash', 'Patel', 'akash@gmail.com', '1345', '7854120369', 'Bharuch', 'Male', 'Cricket,Writing', 'uploaded-67615ed9360107.15553521.jpg', '2024-12-17 05:52:01', '2024-12-17 05:52:01'),
(13, 'Hardik', 'Patel', 'hardik@gmail.com', '254', '0221365478', 'Kenya', 'Male', 'Swimming,Writing', 'uploaded-67615efb702160.35139915.jpg', '2024-12-17 05:52:35', '2024-12-17 05:52:35'),
(14, 'Surbhi', 'Patel', 'surbhi@gmail.com', '975', '8745123690', 'Bhutan', 'Female', 'Cricket,Writing', 'uploaded-6761601cb6aa16.60733410.jpg', '2024-12-17 05:57:24', '2024-12-17 05:57:24');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_12_17_072011_create_employees_table', 2),
(5, '2024_12_17_073012_create_countries_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('txFGF6cmPAIBl1C8G4D8k0uPzsV2dwvDubYwGP9z', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid25RVFVGa24ySjZxdG5XU0RadXFtOE53bnVyVFhzWlBWVkl0cWJFeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9lbXBsb3llZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1734435230);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
