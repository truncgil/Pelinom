-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 22 May 2021, 08:16:57
-- Sunucu sürümü: 10.3.28-MariaDB
-- PHP Sürümü: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `fenbili1_enhancer`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `atribute`
--

CREATE TABLE `atribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `html` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `pic` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `galeri` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kid` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tkid` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `s` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `y` int(11) DEFAULT 0,
  `style` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `datals` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `code` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `alt_resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `json` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `bag` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `pic2` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `lat` float(255,20) DEFAULT NULL,
  `lng` float(255,20) DEFAULT NULL,
  `yer` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `date2` datetime DEFAULT NULL,
  `fiyat` float(255,2) DEFAULT NULL,
  `kdv` float(255,2) DEFAULT NULL,
  `isk` float(255,2) DEFAULT NULL,
  `tfiyat` float(255,2) DEFAULT NULL,
  `efiyat` float(255,2) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `taksit` float(255,0) DEFAULT 0,
  `view` int(255) DEFAULT NULL,
  `comment` int(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `description`
--

CREATE TABLE `description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `tag` text NOT NULL,
  `custom_alt` varchar(255) DEFAULT '',
  `custom_h1` varchar(255) DEFAULT '',
  `custom_title` varchar(255) DEFAULT '',
  `alt_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `diller`
--

CREATE TABLE `diller` (
  `id` int(11) NOT NULL,
  `isim` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kisa` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `feeds`
--

CREATE TABLE `feeds` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `link` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `pubDate` datetime DEFAULT NULL,
  `encoded` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `img` text COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `follow`
--

CREATE TABLE `follow` (
  `id` int(11) NOT NULL,
  `u1` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `u2` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `il`
--

CREATE TABLE `il` (
  `id` bigint(20) NOT NULL,
  `il_adi` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `slug` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategoriler`
--

CREATE TABLE `kategoriler` (
  `category_id` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `custom_title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `alt_text` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title_text` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kid` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `parent_id` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `text` text COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesaj`
--

CREATE TABLE `mesaj` (
  `id` int(11) NOT NULL,
  `u1` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `u2` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `mesaj` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `durum` int(255) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `other`
--

CREATE TABLE `other` (
  `id` int(11) NOT NULL,
  `cid` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `alan` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `deger` text COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `resimler`
--

CREATE TABLE `resimler` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sablon`
--

CREATE TABLE `sablon` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `deger` text COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sablon_deger`
--

CREATE TABLE `sablon_deger` (
  `id` int(11) NOT NULL,
  `ozellik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `deger` text COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sablon_type`
--

CREATE TABLE `sablon_type` (
  `id` int(11) NOT NULL,
  `deger` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `translate`
--

CREATE TABLE `translate` (
  `id` int(11) NOT NULL,
  `dil` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `i` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `t` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `md5` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `tip_ad` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

CREATE TABLE `uyeler` (
  `id` int(11) NOT NULL,
  `user` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `sifre` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `soyadi` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `seviye` varchar(11) COLLATE utf8_turkish_ci DEFAULT 'Okuyucu',
  `mail` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `y` int(11) DEFAULT 0,
  `s` int(11) DEFAULT NULL,
  `resim` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `altbilgi` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `ustbilgi` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `biyografi` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `brans` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `cover` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `adresler` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `ilk_sifre` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yetkiler`
--

CREATE TABLE `yetkiler` (
  `id` int(11) NOT NULL,
  `fid` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `atribute`
--
ALTER TABLE `atribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Tablo için indeksler `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `description`
--
ALTER TABLE `description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`) USING BTREE;

--
-- Tablo için indeksler `diller`
--
ALTER TABLE `diller`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `feeds`
--
ALTER TABLE `feeds`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `il`
--
ALTER TABLE `il`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `mesaj`
--
ALTER TABLE `mesaj`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `other`
--
ALTER TABLE `other`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `resimler`
--
ALTER TABLE `resimler`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`) USING BTREE;

--
-- Tablo için indeksler `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`) USING BTREE;

--
-- Tablo için indeksler `sablon`
--
ALTER TABLE `sablon`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sablon_deger`
--
ALTER TABLE `sablon_deger`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sablon_type`
--
ALTER TABLE `sablon_type`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `translate`
--
ALTER TABLE `translate`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yetkiler`
--
ALTER TABLE `yetkiler`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `diller`
--
ALTER TABLE `diller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `feeds`
--
ALTER TABLE `feeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `follow`
--
ALTER TABLE `follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `mesaj`
--
ALTER TABLE `mesaj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `other`
--
ALTER TABLE `other`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `resimler`
--
ALTER TABLE `resimler`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `sablon`
--
ALTER TABLE `sablon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `sablon_deger`
--
ALTER TABLE `sablon_deger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `sablon_type`
--
ALTER TABLE `sablon_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `translate`
--
ALTER TABLE `translate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `uyeler`
--
ALTER TABLE `uyeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `yetkiler`
--
ALTER TABLE `yetkiler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
