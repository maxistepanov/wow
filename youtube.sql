-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Янв 18 2018 г., 23:03
-- Версия сервера: 5.7.20-0ubuntu0.16.04.1
-- Версия PHP: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `youtube`
--

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_01_11_205342_create_wow_videos_table', 2),
(4, '2018_01_13_142346_create_playlists_table', 3),
(5, '2018_01_13_143121_addConstraintToVideos', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `playlists`
--

CREATE TABLE `playlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `playlist_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `playlists`
--

INSERT INTO `playlists` (`id`, `playlist_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'PL6vb-TccfA0VqTUMFKvLFUP1bSH9nkzno', 'Colored Whiteboard', '2018-01-13 13:01:38', '2018-01-13 13:01:38'),
(2, 'PL6vb-TccfA0XPeyNxkvgl-cSfwaYYqmQF', 'portfolio', '2018-01-13 13:01:38', '2018-01-13 13:01:38'),
(3, 'PL6vb-TccfA0XV5ih15QLBV7ZvHMhUsVJ-', 'Showreels', '2018-01-13 13:01:38', '2018-01-13 13:01:38'),
(4, 'PL6vb-TccfA0Wq8_AYH5MYwGHwSH4ayt5U', 'Cool', '2018-01-13 13:01:38', '2018-01-13 13:01:38'),
(5, 'PL6vb-TccfA0XKc_8c0IsVk1iolr_yDbDP', 'Promo', '2018-01-13 13:01:38', '2018-01-13 13:01:38'),
(6, 'PL6vb-TccfA0VN8-BjRpuKsgI9zwGdo_Iv', 'Reclama', '2018-01-13 13:01:38', '2018-01-13 13:01:38'),
(7, 'PL6vb-TccfA0V2G3dZjx4de7qa8aT5ma6n', 'WhiteBoard', '2018-01-13 13:01:38', '2018-01-13 13:01:38'),
(8, 'PL6vb-TccfA0W0_0nuYUTZER9xn70aw7Hz', 'Infographic', '2018-01-13 13:01:38', '2018-01-13 13:01:38'),
(9, 'PL6vb-TccfA0VRdHzdWwGkdFaYMOVLv_tG', 'Intro Logo', '2018-01-13 13:01:38', '2018-01-13 13:01:38'),
(10, 'PL6vb-TccfA0W4WnSob16e2w4fxjlvwNgq', '3D', '2018-01-13 13:01:38', '2018-01-13 13:01:38'),
(11, 'PL6vb-TccfA0WLg80C8cFzRzhp4MethW9D', 'Presentation', '2018-01-13 13:01:38', '2018-01-13 13:01:38'),
(12, 'PL6vb-TccfA0XEGRGsAgQ-IyrI3NEBe14D', 'WOW-HOW', '2018-01-13 13:01:38', '2018-01-13 13:01:38'),
(13, 'PL6vb-TccfA0UbWCKvJmGI9jl7HdYZoBwH', 'Explainer Video', '2018-01-13 13:01:38', '2018-01-13 13:01:38'),
(14, 'PL6vb-TccfA0Vqn_1mHTBuhfzA30qz28Hv', 'Video Editing', '2018-01-13 13:01:38', '2018-01-13 13:01:38'),
(15, 'PL6vb-TccfA0ULKcCo5ByTdnaAcBSwBFIT', 'Animation', '2018-01-13 13:01:38', '2018-01-13 13:01:38');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'bogdg', 'bogdg@gmail.com', '$2y$10$E6wvDXNmCtUf2T1A5wiw9e9hM02unNG6LV/HLj7hwspjHY3A9vvU.', NULL, '2018-01-11 17:27:36', '2018-01-11 17:27:36');

-- --------------------------------------------------------

--
-- Структура таблицы `wow_videos`
--

CREATE TABLE `wow_videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` int(11) NOT NULL,
  `like` int(11) NOT NULL,
  `dislike` int(11) NOT NULL,
  `favorite` int(11) NOT NULL,
  `comment` int(11) NOT NULL,
  `date_upload` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `playlist_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wow_videos`
--

INSERT INTO `wow_videos` (`id`, `id_video`, `title`, `view`, `like`, `dislike`, `favorite`, `comment`, `date_upload`, `created_at`, `updated_at`, `playlist_id`) VALUES
(53, 'DRzb3NiT5eA', 'Animation HR', 55, 1, 0, 3, 3, '2018-01-11', '2018-01-11 19:53:13', '2018-01-16 17:28:22', 'PL6vb-TccfA0ULKcCo5ByTdnaAcBSwBFIT'),
(54, '3wKoW7H_ZfI', 'SnagShout Explainer Infographics', 36, 0, 0, 0, 0, '2018-01-11', '2018-01-11 19:53:13', '2018-01-16 17:28:25', NULL),
(55, '9gQryPMdGRA', 'HotSpot game video', 35, 1, 0, 0, 0, '2018-01-09', '2018-01-11 19:53:13', '2018-01-16 17:28:21', NULL),
(56, '7ws1gnORBhg', 'Mannequin challenge in Wow-How Studio', 1507, 37, 0, 2, 2, '2016-12-20', '2018-01-11 19:53:17', '2018-01-16 17:27:57', 'PL6vb-TccfA0XEGRGsAgQ-IyrI3NEBe14D'),
(57, 'km9IShdeQlE', 'Team International promo video', 443, 3, 0, 0, 0, '2016-10-10', '2018-01-11 19:53:17', '2018-01-16 17:27:57', 'PL6vb-TccfA0WLg80C8cFzRzhp4MethW9D'),
(58, 'rRWgi73MPQs', 'Hopsulator video', 1372, 3, 0, 0, 0, '2017-05-19', '2018-01-11 19:53:17', '2018-01-16 17:27:58', 'PL6vb-TccfA0W4WnSob16e2w4fxjlvwNgq'),
(59, 'jc-mR56P3UA', 'What if you are an asshole? Whiteboard video by Wow-How Studio', 359, 5, 0, 0, 0, '2017-10-18', '2018-01-11 19:53:18', '2018-01-16 17:27:57', NULL),
(60, '0d3WocYCGcU', 'Study In promo video RPL', 955, 4, 0, 0, 0, '2017-07-25', '2018-01-11 19:53:18', '2018-01-16 17:27:58', 'PL6vb-TccfA0ULKcCo5ByTdnaAcBSwBFIT'),
(61, 'fnnWriGWN2c', '3D promo for LitsLink', 312, 3, 0, 0, 0, '2017-09-14', '2018-01-11 19:53:18', '2018-01-16 17:27:58', NULL),
(62, 'PzhWnrW0IsI', 'Wow-How Studio 3D showreel 2017', 2806, 18, 1, 1, 1, '2017-06-27', '2018-01-11 19:53:19', '2018-01-16 17:27:59', 'PL6vb-TccfA0W4WnSob16e2w4fxjlvwNgq'),
(63, 'KYzv51-SR04', 'Hopsulator video', 313, 1, 0, 0, 0, '2017-08-03', '2018-01-11 19:53:19', '2018-01-16 17:27:59', 'PL6vb-TccfA0W4WnSob16e2w4fxjlvwNgq'),
(64, '3R-UZLVngi0', 'WOW-HOW Whiteboard animation showreel', 1304, 1, 0, 0, 0, '2016-06-16', '2018-01-11 19:53:19', '2018-01-16 17:27:59', 'PL6vb-TccfA0V2G3dZjx4de7qa8aT5ma6n'),
(65, 'iRdTnjWileA', 'EndoCare Explainer Video', 195, 0, 0, 0, 0, '2017-08-15', '2018-01-11 19:53:20', '2018-01-16 17:27:59', NULL),
(66, 's4InQNvTtCs', 'Onyx Pro ERP 3D infographic video', 380, 1, 0, 0, 0, '2017-05-17', '2018-01-11 20:00:18', '2018-01-16 17:28:00', NULL),
(67, '4liWmL-e-HE', 'Wow-How Studio Showreel', 3093, 12, 0, 0, 0, '2016-11-23', '2018-01-11 20:00:18', '2018-01-16 17:28:00', 'PL6vb-TccfA0ULKcCo5ByTdnaAcBSwBFIT'),
(68, 'gABnPH2Q5LM', 'Downkicker explainer video', 771, 0, 0, 0, 0, '2017-05-18', '2018-01-11 20:00:19', '2018-01-16 17:28:00', 'PL6vb-TccfA0UbWCKvJmGI9jl7HdYZoBwH'),
(69, 'SfKd5wpRzHA', '3D Smartphone animation for "Weimei we"', 875, 2, 0, 0, 0, '2016-06-17', '2018-01-11 20:00:20', '2018-01-16 17:28:01', 'PL6vb-TccfA0W4WnSob16e2w4fxjlvwNgq'),
(70, 'qrVO-pBvtrU', 'Cartoon style animation about Historical Medieval Battle Championship "Fight and Travel"', 444, 0, 0, 0, 0, '2015-01-22', '2018-01-11 20:00:20', '2018-01-16 17:28:01', 'PL6vb-TccfA0ULKcCo5ByTdnaAcBSwBFIT'),
(71, '2pNIhOJTqSY', 'MBS advertising video', 643, 6, 0, 0, 0, '2017-06-29', '2018-01-11 20:00:21', '2018-01-16 17:28:01', 'PL6vb-TccfA0ULKcCo5ByTdnaAcBSwBFIT'),
(72, '8xB1gUo9lE4', '3D smartphone advertising for "Weimei we"', 989, 6, 0, 0, 0, '2017-01-27', '2018-01-11 20:00:21', '2018-01-16 17:28:02', 'PL6vb-TccfA0ULKcCo5ByTdnaAcBSwBFIT'),
(73, 'Yo_wvsD2GH0', 'Happy Thanksgiving Day!', 567, 21, 0, 1, 1, '2016-11-24', '2018-01-11 20:00:22', '2018-01-16 17:28:02', 'PL6vb-TccfA0XEGRGsAgQ-IyrI3NEBe14D'),
(74, 'JzfKlL7aip4', 'Promo for the Historical Medieval Battle World Сhampionship “Battle of the Nations” 2015', 1611, 1, 0, 0, 0, '2015-01-21', '2018-01-11 20:00:22', '2018-01-16 17:28:02', 'PL6vb-TccfA0Vqn_1mHTBuhfzA30qz28Hv'),
(75, 'bfecLE-hWLc', '2D showreel from Wow-How Studio', 2140, 6, 0, 0, 0, '2017-07-13', '2018-01-11 20:00:22', '2018-01-16 17:28:02', 'PL6vb-TccfA0XV5ih15QLBV7ZvHMhUsVJ-'),
(76, 'z3p-AZ_er4c', 'Tamara Nazirova`s portfolio. Graphic designer, 2D artist and Illustrator in Wow-How Studio', 799, 7, 0, 0, 0, '2017-01-03', '2018-01-11 20:00:23', '2018-01-16 17:28:03', 'PL6vb-TccfA0XPeyNxkvgl-cSfwaYYqmQF'),
(77, '6UmlPqL7UHo', 'Victor`s portfolio (concept and illustration artist)', 487, 7, 0, 0, 0, '2017-01-30', '2018-01-11 20:00:23', '2018-01-16 17:28:03', 'PL6vb-TccfA0XPeyNxkvgl-cSfwaYYqmQF'),
(78, 'OSe1KWYsB_Y', 'Wow-How Studio Showreel', 1631, 4, 0, 0, 0, '2016-06-17', '2018-01-11 20:00:23', '2018-01-16 17:28:11', 'PL6vb-TccfA0XEGRGsAgQ-IyrI3NEBe14D'),
(79, '5ug2yFMhKHg', 'AV Studio 3D Intro Logo', 1180, 3, 0, 0, 0, '2016-10-07', '2018-01-11 20:00:24', '2018-01-16 17:28:04', 'PL6vb-TccfA0W4WnSob16e2w4fxjlvwNgq'),
(80, 'mYUQ0ydUh_w', 'Wow-How Videoreel', 859, 3, 0, 0, 0, '2016-06-17', '2018-01-11 20:00:24', '2018-01-16 17:28:04', 'PL6vb-TccfA0Vqn_1mHTBuhfzA30qz28Hv'),
(81, 'KjnTeAh4wWs', '3D modeling and animation for “Redmond”', 1588, 2, 0, 0, 0, '2015-06-04', '2018-01-11 20:00:24', '2018-01-16 17:28:04', 'PL6vb-TccfA0W4WnSob16e2w4fxjlvwNgq'),
(82, 'soxsTTZALGk', 'Advertising video for MBS pocket spray', 276, 2, 0, 0, 0, '2017-11-13', '2018-01-11 20:00:25', '2018-01-16 17:28:05', 'PL6vb-TccfA0ULKcCo5ByTdnaAcBSwBFIT'),
(83, 'eZmTP0H8d5E', 'Clients video for Music Gateway', 1135, 2, 0, 1, 1, '2017-02-17', '2018-01-11 20:00:25', '2018-01-16 17:28:05', 'PL6vb-TccfA0UbWCKvJmGI9jl7HdYZoBwH'),
(84, '4VkYwZkECq4', 'Explainer video for Mongoo App', 1139, 2, 0, 0, 0, '2016-12-16', '2018-01-11 20:00:25', '2018-01-16 17:28:05', 'PL6vb-TccfA0UbWCKvJmGI9jl7HdYZoBwH'),
(85, 'AIhX3fV8myA', 'Post Production Showreel', 1137, 2, 0, 0, 0, '2016-07-08', '2018-01-11 20:00:26', '2018-01-16 17:28:05', 'PL6vb-TccfA0Vqn_1mHTBuhfzA30qz28Hv'),
(86, '_xvHLNfkqQU', 'Cartoon explainer video', 2557, 1, 0, 0, 0, '2016-06-17', '2018-01-11 20:00:26', '2018-01-16 17:28:06', 'PL6vb-TccfA0UbWCKvJmGI9jl7HdYZoBwH'),
(87, '3ou-zNv3EMk', 'WOW-HOW Info', 1013, 2, 0, 0, 0, '2015-01-20', '2018-01-11 20:00:26', '2018-01-16 17:28:06', 'PL6vb-TccfA0XEGRGsAgQ-IyrI3NEBe14D'),
(88, 'yPPPf8DXgFo', 'Your idea is worth realizing with Wow-How Studio', 939, 2, 0, 0, 0, '2016-09-22', '2018-01-11 20:00:27', '2018-01-16 17:28:06', 'PL6vb-TccfA0ULKcCo5ByTdnaAcBSwBFIT'),
(89, 'm3Yq-Qj9xeE', 'CareLine logo outro', 408, 3, 0, 0, 0, '2016-10-06', '2018-01-11 20:00:27', '2018-01-16 17:28:07', 'PL6vb-TccfA0W4WnSob16e2w4fxjlvwNgq'),
(90, 'u8ntxAoxDAg', 'Wow-How Studio: make your business visible!', 655, 0, 0, 0, 0, '2017-05-18', '2018-01-11 20:00:27', '2018-01-16 17:28:07', NULL),
(91, 'tq8Nq5RRAsY', '3D intro  video for the game', 356, 3, 0, 0, 0, '2017-02-02', '2018-01-11 20:00:28', '2018-01-16 17:28:08', 'PL6vb-TccfA0W4WnSob16e2w4fxjlvwNgq'),
(92, 'iRhN0mFSKcY', 'WOW-HOW: Happy New Year 2016!', 166, 5, 0, 0, 0, '2015-12-30', '2018-01-11 20:00:28', '2018-01-16 17:28:08', 'PL6vb-TccfA0ULKcCo5ByTdnaAcBSwBFIT'),
(93, 'tgoQyekUPt4', 'WOW-HOW Studio. One-stop-shop for your design needs', 1061, 1, 0, 0, 0, '2016-06-16', '2018-01-11 20:00:29', '2018-01-16 17:28:08', 'PL6vb-TccfA0XEGRGsAgQ-IyrI3NEBe14D'),
(94, 'qJbXVNfMtuA', 'Cartoon style animation "Sword experience is a must-have"', 1025, 1, 0, 0, 0, '2015-01-22', '2018-01-11 20:00:29', '2018-01-16 17:28:07', 'PL6vb-TccfA0ULKcCo5ByTdnaAcBSwBFIT'),
(95, 'YKaObHv9fnk', 'Explainer video for PrezLab', 1459, 0, 0, 0, 0, '2017-05-18', '2018-01-11 20:00:29', '2018-01-16 17:28:08', 'PL6vb-TccfA0UbWCKvJmGI9jl7HdYZoBwH'),
(96, 'T2todAgSfy8', '2D Logo-animation by Wow-How Studio', 1035, 1, 0, 0, 0, '2016-06-20', '2018-01-11 20:00:30', '2018-01-16 17:28:09', 'PL6vb-TccfA0VRdHzdWwGkdFaYMOVLv_tG'),
(97, 'nmvD_O_1PwE', 'Promo video for the new App - DocLink', 949, 1, 0, 0, 0, '2016-06-21', '2018-01-11 20:00:30', '2018-01-16 17:28:09', 'PL6vb-TccfA0ULKcCo5ByTdnaAcBSwBFIT'),
(98, 't-OySH26IGY', 'Eugene Mosienko`s video portfolio', 399, 2, 0, 0, 0, '2017-04-11', '2018-01-11 20:00:30', '2018-01-16 17:28:09', 'PL6vb-TccfA0XPeyNxkvgl-cSfwaYYqmQF'),
(99, 'liCAdeycF64', 'WOW-HOW Whiteboard LOGO', 777, 1, 0, 0, 0, '2015-06-02', '2018-01-11 20:00:31', '2018-01-16 17:28:10', 'PL6vb-TccfA0XEGRGsAgQ-IyrI3NEBe14D'),
(100, 'xrEf-vY4yrg', '8Exchange video for an app', 763, 1, 0, 0, 0, '2017-09-29', '2018-01-11 20:00:31', '2018-01-16 17:28:10', 'PL6vb-TccfA0UbWCKvJmGI9jl7HdYZoBwH'),
(101, 'yipv-xx1g1c', 'Corporate video for UKAD', 358, 2, 0, 0, 0, '2017-07-20', '2018-01-11 20:00:31', '2018-01-16 17:28:11', 'PL6vb-TccfA0WLg80C8cFzRzhp4MethW9D'),
(102, 'aDiYKzFH-y4', 'Recruit Direct marketing video', 527, 1, 0, 0, 0, '2017-05-19', '2018-01-11 20:00:32', '2018-01-16 17:28:10', 'PL6vb-TccfA0UbWCKvJmGI9jl7HdYZoBwH'),
(103, 'iu3qqSMOh_0', 'Wow-How logo intro', 249, 2, 0, 0, 0, '2016-10-06', '2018-01-11 20:00:32', '2018-01-16 17:28:11', 'PL6vb-TccfA0W4WnSob16e2w4fxjlvwNgq'),
(104, '7k-lDJylLKA', 'Cartoon style animation "Fancy Octopus"', 467, 0, 0, 0, 0, '2015-09-15', '2018-01-11 20:00:32', '2018-01-16 17:28:12', 'PL6vb-TccfA0ULKcCo5ByTdnaAcBSwBFIT'),
(105, 'f-H8cy3FfSI', 'Intro for Highway Games', 422, 1, 0, 0, 0, '2016-09-06', '2018-01-11 20:00:33', '2018-01-16 17:28:12', 'PL6vb-TccfA0W4WnSob16e2w4fxjlvwNgq'),
(106, 'w92_1Du7C6k', 'Wow-How Studio. Choose your character!', 1134, 0, 0, 0, 0, '2016-06-17', '2018-01-11 20:00:33', '2018-01-16 17:28:12', 'PL6vb-TccfA0XV5ih15QLBV7ZvHMhUsVJ-'),
(107, 'xAFvKtpvcQI', 'Diet book for Kickstarter campaign', 339, 1, 0, 0, 0, '2016-12-16', '2018-01-11 20:00:33', '2018-01-16 17:28:11', 'PL6vb-TccfA0UbWCKvJmGI9jl7HdYZoBwH'),
(108, '0mgy9xW01xU', '3D promo Double Bond Pharmaceuticals', 318, 1, 0, 0, 0, '2016-06-16', '2018-01-11 20:00:33', '2018-01-16 17:28:13', 'PL6vb-TccfA0W4WnSob16e2w4fxjlvwNgq'),
(109, 'ZjPkItvu7UM', 'Christmas greeting video by Wow-How', 80, 4, 0, 0, 0, '2016-12-26', '2018-01-11 20:00:34', '2018-01-16 17:28:13', 'PL6vb-TccfA0XEGRGsAgQ-IyrI3NEBe14D'),
(110, 'YfUkyu7Gm1w', 'Kanap Infographics', 721, 0, 0, 0, 0, '2017-08-25', '2018-01-11 20:00:34', '2018-01-16 17:28:13', 'PL6vb-TccfA0UbWCKvJmGI9jl7HdYZoBwH'),
(111, 'HVG-qEM8t3o', 'WOW-FOTO short promo', 240, 1, 0, 0, 0, '2016-06-16', '2018-01-11 20:00:35', '2018-01-16 17:28:14', 'PL6vb-TccfA0XKc_8c0IsVk1iolr_yDbDP'),
(112, 'nbXnaIaAq_M', 'Datagonia Web Solutions 3D logo animation', 225, 1, 0, 0, 0, '2017-02-17', '2018-01-11 20:00:35', '2018-01-16 17:28:14', 'PL6vb-TccfA0W4WnSob16e2w4fxjlvwNgq'),
(113, '7SCFXY-3tJ4', 'Cartoon style animation "Your way to be hot"', 492, 0, 0, 0, 0, '2015-01-22', '2018-01-11 20:00:35', '2018-01-16 17:28:15', 'PL6vb-TccfA0ULKcCo5ByTdnaAcBSwBFIT'),
(114, 'FjVxkkJWi50', 'Magic of the project creation with Wow-How (text adds)', 95, 3, 0, 0, 0, '2017-11-07', '2018-01-11 20:00:36', '2018-01-16 17:28:14', NULL),
(115, 'thMGmV_m8xo', 'Promo for Historical Medieval Battle tournament "Copa First Class" in Argentina', 464, 0, 0, 0, 0, '2015-08-20', '2018-01-11 20:00:36', '2018-01-16 17:28:15', 'PL6vb-TccfA0Vqn_1mHTBuhfzA30qz28Hv'),
(116, 'dWiKdheWXIA', 'Animated video for TV Commercial', 458, 0, 0, 0, 0, '2016-01-28', '2018-01-11 20:00:37', '2018-01-16 17:28:16', 'PL6vb-TccfA0ULKcCo5ByTdnaAcBSwBFIT'),
(117, 'yTcmpJNKuI4', 'Explainer video for Allergy Checked app', 443, 0, 0, 0, 0, '2017-02-17', '2018-01-11 20:00:37', '2018-01-16 17:28:14', 'PL6vb-TccfA0ULKcCo5ByTdnaAcBSwBFIT'),
(118, 'QTL_0eVwl2U', 'Cartoon style explainer video for “Webitech”', 431, 0, 0, 0, 0, '2015-08-14', '2018-01-11 20:00:37', '2018-01-16 17:28:16', 'PL6vb-TccfA0UbWCKvJmGI9jl7HdYZoBwH'),
(119, 'pviT5WZmQYg', 'WOW-HOW Showreel', 1195, 0, 1, 0, 0, '2015-01-20', '2018-01-11 20:00:38', '2018-01-16 17:28:16', NULL),
(120, 'LPCLaSPSVik', 'Cartoon style explainer video for “Motoserv-UK”', 974, 0, 1, 0, 0, '2016-06-17', '2018-01-11 20:00:38', '2018-01-16 17:28:17', 'PL6vb-TccfA0UbWCKvJmGI9jl7HdYZoBwH'),
(121, 'Hk0qlK4gOus', 'Advisors Tech Explainer video', 330, 0, 0, 0, 0, '2017-05-17', '2018-01-11 20:00:39', '2018-01-16 17:28:17', 'PL6vb-TccfA0W0_0nuYUTZER9xn70aw7Hz'),
(122, 'PfhOhnjMK4g', 'Explainer video for Pear', 347, 0, 0, 0, 0, '2017-05-11', '2018-01-11 20:00:39', '2018-01-16 17:28:17', 'PL6vb-TccfA0UbWCKvJmGI9jl7HdYZoBwH'),
(123, 'kZ9KoJaroSw', 'Iron Clash Tournament First Class France', 301, 0, 0, 0, 0, '2015-08-20', '2018-01-11 20:00:39', '2018-01-16 17:28:17', 'PL6vb-TccfA0Vqn_1mHTBuhfzA30qz28Hv'),
(124, '4r2Kfya1zpQ', 'Intro logo animation', 77, 2, 0, 0, 0, '2016-11-28', '2018-01-11 20:00:39', '2018-01-16 17:28:18', NULL),
(125, 'dfXYDskLPn0', 'Property Webmasters Explainer Video', 291, 0, 0, 0, 0, '2017-05-19', '2018-01-11 20:00:40', '2018-01-16 17:28:18', 'PL6vb-TccfA0UbWCKvJmGI9jl7HdYZoBwH'),
(126, '0--uyUg0XbE', 'Explainer video for Chk-In', 273, 0, 0, 0, 0, '2016-06-16', '2018-01-11 20:00:40', '2018-01-16 17:28:18', 'PL6vb-TccfA0UbWCKvJmGI9jl7HdYZoBwH'),
(127, 'n3mdltY9zAk', 'Infographic animation for “GC Mail”', 737, 1, 0, 0, 0, '2016-06-17', '2018-01-11 20:00:40', '2018-01-16 17:28:19', 'PL6vb-TccfA0W0_0nuYUTZER9xn70aw7Hz'),
(128, '7TLSK5PmTPc', 'WOW-FOTO logo animation', 772, 2, 0, 0, 0, '2016-06-16', '2018-01-11 20:00:41', '2018-01-16 17:28:20', NULL),
(129, 'LScPnQTft6Q', 'Theeb Game Video', 217, 0, 0, 0, 0, '2017-06-02', '2018-01-11 20:00:41', '2018-01-16 17:28:19', 'PL6vb-TccfA0ULKcCo5ByTdnaAcBSwBFIT'),
(130, 'AeOkZ4xw55A', 'Magic of the project creation with Wow-How', 110, 1, 0, 0, 0, '2017-10-30', '2018-01-11 20:00:41', '2018-01-16 17:28:19', NULL),
(131, 'CYIOWkvq2GM', 'WOW-HOW 3D Showreel', 1939, 4, 0, 0, 0, '2016-06-16', '2018-01-11 20:00:42', '2018-01-16 17:28:20', 'PL6vb-TccfA0W4WnSob16e2w4fxjlvwNgq'),
(132, '4UQfAQ5ePiw', 'NeoTank - InSinkErator', 161, 0, 0, 0, 0, '2017-08-01', '2018-01-11 20:00:42', '2018-01-16 17:28:20', 'PL6vb-TccfA0W4WnSob16e2w4fxjlvwNgq'),
(133, 'xHHbUGMMjr4', 'Promo video for Historical medieval championship "Battle of the Nations" 2016', 138, 0, 0, 0, 0, '2016-06-17', '2018-01-11 20:00:43', '2018-01-16 17:28:20', 'PL6vb-TccfA0XKc_8c0IsVk1iolr_yDbDP'),
(134, 'qs2MBCOQIrI', 'Vytalize Health infographic video', 145, 0, 0, 0, 0, '2017-10-30', '2018-01-11 20:00:43', '2018-01-16 17:28:21', NULL),
(135, '7v87sZCAzpg', 'Explainer video for South West Plumbing', 221, 1, 1, 0, 0, '2017-05-11', '2018-01-11 20:00:43', '2018-01-16 17:28:21', 'PL6vb-TccfA0UbWCKvJmGI9jl7HdYZoBwH'),
(136, 'jw5BmJOEKTs', 'GreekXperience explainer video', 145, 0, 0, 0, 0, '2017-11-01', '2018-01-11 20:00:44', '2018-01-16 17:28:22', 'PL6vb-TccfA0W0_0nuYUTZER9xn70aw7Hz'),
(137, 'ngePePbbDY8', 'SCARPA: discover the region', 105, 0, 0, 0, 0, '2016-06-16', '2018-01-11 20:00:45', '2018-01-16 17:28:22', 'PL6vb-TccfA0Vqn_1mHTBuhfzA30qz28Hv'),
(138, 'TH_gP5_Km0U', 'Intro for "Seeking Love" movie', 273, 2, 0, 0, 0, '2017-10-30', '2018-01-11 20:00:45', '2018-01-16 17:28:23', 'PL6vb-TccfA0ULKcCo5ByTdnaAcBSwBFIT'),
(139, 'UkCTQjsy6ZI', 'Explainer video for Vesa', 79, 0, 0, 0, 0, '2017-12-27', '2018-01-11 20:00:45', '2018-01-16 17:28:23', NULL),
(140, 'DcO0ELqzvGA', 'FTP Solutions - Intro A', 52, 0, 0, 0, 0, '2017-12-26', '2018-01-11 20:00:46', '2018-01-16 17:28:24', 'PL6vb-TccfA0Vqn_1mHTBuhfzA30qz28Hv'),
(141, 'H83fOuixrvw', 'Solitaire Pro advertising', 81, 0, 0, 0, 0, '2017-12-06', '2018-01-11 20:00:46', '2018-01-16 17:28:24', NULL),
(142, 'mHiXgm4jom0', 'MacWare Explainer video', 73, 0, 0, 0, 0, '2018-01-04', '2018-01-11 20:00:47', '2018-01-16 17:28:15', NULL),
(143, 'kLzlTkZvtdk', 'HotspotShield video: What is VPN?', 169, 0, 0, 0, 0, '2017-12-06', '2018-01-11 20:00:47', '2018-01-16 17:28:25', NULL),
(144, 'h3pOAVud_u0', 'Optimize Your Airbnb', 103, 7, 0, 2, 2, '2017-12-27', '2018-01-11 20:00:48', '2018-01-16 17:28:03', 'PL6vb-TccfA0UbWCKvJmGI9jl7HdYZoBwH'),
(145, 'HROYHxs2QNQ', 'Infographic animation for “InTouch”', 2035, 0, 0, 0, 0, '2015-06-04', '2018-01-11 20:00:48', '2018-01-16 17:28:26', 'PL6vb-TccfA0W0_0nuYUTZER9xn70aw7Hz'),
(146, 'V7Xa7dvdc74', '3D animation for Pikadot', 753, 1, 0, 0, 0, '2017-02-17', '2018-01-11 20:00:48', '2018-01-16 17:28:26', 'PL6vb-TccfA0W4WnSob16e2w4fxjlvwNgq'),
(147, 'TXch1eeb_kg', 'SunRyse explainer video', 138, 0, 0, 0, 0, '2017-09-13', '2018-01-11 20:00:49', '2018-01-16 17:28:26', NULL),
(148, 'Do4PdXkg0C0', 'Solar station animation', 1, 0, 0, 0, 0, '2018-01-16', '2018-01-16 17:28:23', '2018-01-16 17:28:23', NULL),
(149, 'TEdpNuInMZc', '2D intro for board game', 4, 0, 0, 0, 0, '2018-01-16', '2018-01-16 17:28:23', '2018-01-16 17:28:23', NULL),
(150, 'fGr1SSkkQIo', 'Air Rewards explainer', 19, 0, 0, 0, 0, '2018-01-15', '2018-01-16 17:28:24', '2018-01-16 17:28:24', NULL),
(151, 'QP7qD5fx-N0', 'Macware Antivirus screencast video', 43, 0, 0, 0, 0, '2018-01-16', '2018-01-16 17:28:25', '2018-01-16 17:28:25', NULL),
(152, 'nnWZyniyL2A', 'Zombie fairytale', 14, 0, 0, 0, 0, '2018-01-15', '2018-01-16 17:28:25', '2018-01-16 17:28:25', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `wow_videos`
--
ALTER TABLE `wow_videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wow_videos`
--
ALTER TABLE `wow_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
