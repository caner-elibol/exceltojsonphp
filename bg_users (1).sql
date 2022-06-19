-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 19 Haz 2022, 20:47:27
-- Sunucu sürümü: 5.7.33
-- PHP Sürümü: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `exceltojson`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bg_users`
--

CREATE TABLE `bg_users` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_name` varchar(30) NOT NULL DEFAULT '',
  `user_algo` varchar(10) NOT NULL DEFAULT 'md5',
  `user_salt` varchar(40) DEFAULT '',
  `user_password` varchar(64) NOT NULL DEFAULT '',
  `user_admin_algo` varchar(10) NOT NULL DEFAULT 'sha256',
  `user_admin_salt` varchar(40) NOT NULL DEFAULT '',
  `user_admin_password` varchar(64) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_aim` varchar(20) NOT NULL,
  `user_hide_email` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_offset` char(5) NOT NULL DEFAULT '0',
  `user_avatar` varchar(100) DEFAULT '',
  `user_posts` smallint(5) UNSIGNED DEFAULT '0',
  `user_threads` text,
  `user_joined` int(10) UNSIGNED NOT NULL DEFAULT '1655242462',
  `user_lastvisit` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_ip` varchar(45) NOT NULL DEFAULT '0.0.0.0',
  `user_ip_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '4',
  `user_rights` text,
  `user_groups` text,
  `user_level` tinyint(3) UNSIGNED NOT NULL DEFAULT '101',
  `user_datestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_start` varchar(12) NOT NULL DEFAULT '',
  `user_end` varchar(12) NOT NULL DEFAULT '',
  `user_day` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `user_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_actiontime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_theme` varchar(100) NOT NULL DEFAULT 'Default',
  `user_location` varchar(50) DEFAULT '',
  `user_birthdate` date NOT NULL DEFAULT '2000-01-01',
  `user_icq` varchar(15) NOT NULL DEFAULT '',
  `user_msn` varchar(100) NOT NULL DEFAULT '',
  `user_yahoo` varchar(100) NOT NULL DEFAULT '',
  `user_web` varchar(200) NOT NULL DEFAULT '',
  `user_sig` text,
  `user_oauth_uid` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `bg_users`
--
ALTER TABLE `bg_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_name` (`user_name`),
  ADD KEY `user_joined` (`user_joined`),
  ADD KEY `user_lastvisit` (`user_lastvisit`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `bg_users`
--
ALTER TABLE `bg_users`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
