-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2024 at 10:24 PM
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
-- Database: `ogrenci`
--

CREATE DATABASE `ogrenci`;
USE `ogrenci`;

-- --------------------------------------------------------

--
-- Table structure for table `ogrencidevamsizlik`
--

CREATE TABLE `ogrencidevamsizlik` (
  `tc` bigint(20) NOT NULL,
  `ogrenciAd` varchar(50) NOT NULL,
  `ogrenciSoyad` varchar(50) NOT NULL,
  `devamsizlikTuru` varchar(50) NOT NULL,
  `devamsizlikTarihi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ogrencidevamsizlik`
--

INSERT INTO `ogrencidevamsizlik` (`tc`, `ogrenciAd`, `ogrenciSoyad`, `devamsizlikTuru`, `devamsizlikTarihi`) VALUES
(12345678901, 'AHMET', 'YALDIZOĞLU', 'Özürsüz', '2024-05-05'),
(12345678901, 'AHMET', 'YALDIZOĞLU', 'Özürsüz', '2024-05-06');

-- --------------------------------------------------------

--
-- Table structure for table `ogrenciler`
--

CREATE TABLE `ogrenciler` (
  `tc` bigint(11) NOT NULL,
  `ad` varchar(50) NOT NULL,
  `soyad` varchar(50) NOT NULL,
  `dogum` date NOT NULL,
  `baba` varchar(50) NOT NULL,
  `anne` varchar(50) NOT NULL,
  `il` varchar(20) NOT NULL,
  `ilce` varchar(30) NOT NULL,
  `sinif` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ogrenciler`
--

INSERT INTO `ogrenciler` (`tc`, `ad`, `soyad`, `dogum`, `baba`, `anne`, `il`, `ilce`, `sinif`) VALUES
(12345678901, 'AHMET', 'YALDIZOĞLU', '2008-05-03', 'ALİ', 'AYŞE', 'KOCAELİ', 'ÇAYIROVA', '10/BA'),
(12512612361, 'BILL', 'GATES', '2006-05-19', '', '', '', '', '12/A'),
(41234567890, 'FURKAN', 'YEŞİL', '2008-02-03', 'AHMET', 'RAHİME', 'KOCAELİ', 'ÇAYIROVA', '10/A'),
(78669671237, 'ARDA ONUR', 'GÖNÜLTUĞ', '2007-02-20', 'UFUK', 'RABİA', 'KOCAELİ', 'ÇAYIROVA', '10/A');

-- --------------------------------------------------------

--
-- Table structure for table `ogrencinot`
--

CREATE TABLE `ogrencinot` (
  `ogrenciTc` bigint(20) NOT NULL,
  `ogrenciAdi` varchar(50) NOT NULL,
  `dersAdi` varchar(100) NOT NULL,
  `dersNot` int(11) DEFAULT NULL,
  `ogrSinif` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ogrencinot`
--

INSERT INTO `ogrencinot` (`ogrenciTc`, `ogrenciAdi`, `dersAdi`, `dersNot`, `ogrSinif`) VALUES
(12345678901, 'AHMET', 'Matematik', 0, '10/B'),
(12345678901, 'AHMET', 'Türkçe', 0, '10/B'),
(12345678901, 'AHMET', 'Din Kültürü ve Ahlak Bilgisi', 0, '10/B'),
(12345678901, 'AHMET', 'Beden Eğitimi', 55, '10/B'),
(12345678901, 'AHMET', 'Fen Bilimi', 0, '10/B'),
(12345678901, 'AHMET', 'İnkılap Tarihi ve Atatürkçülük', 0, '10/B'),
(12345678901, 'AHMET', 'Görsel', 0, '10/B'),
(12345678901, 'AHMET', 'Müzik', 99, '10/B'),
(41234567890, 'FURKAN', 'Matematik', 0, '10/A'),
(41234567890, 'FURKAN', 'Türkçe', 0, '10/A'),
(41234567890, 'FURKAN', 'Din Kültürü ve Ahlak Bilgisi', 0, '10/A'),
(41234567890, 'FURKAN', 'Beden Eğitimi', 50, '10/A'),
(41234567890, 'FURKAN', 'Fen Bilimi', 0, '10/A'),
(41234567890, 'FURKAN', 'İnkılap Tarihi ve Atatürkçülük', 0, '10/A'),
(41234567890, 'FURKAN', 'Görsel', 0, '10/A'),
(41234567890, 'FURKAN', 'Müzik', 0, '10/A'),
(12512612361, 'BILL', 'Matematik', 0, '12/A'),
(12512612361, 'BILL', 'Türkçe', 0, '12/A'),
(12512612361, 'BILL', 'Din Kültürü ve Ahlak Bilgisi', 0, '12/A'),
(12512612361, 'BILL', 'Beden Eğitimi', 99, '12/A'),
(12512612361, 'BILL', 'Fen Bilimi', 0, '12/A'),
(12512612361, 'BILL', 'İnkılap Tarihi ve Atatürkçülük', 0, '12/A'),
(12512612361, 'BILL', 'Görsel', 0, '12/A'),
(12512612361, 'BILL', 'Müzik', 0, '12/A'),
(78669671237, 'ARDA ONUR', 'Matematik', 0, '10/A'),
(78669671237, 'ARDA ONUR', 'Türkçe', 0, '10/A'),
(78669671237, 'ARDA ONUR', 'Din Kültürü ve Ahlak Bilgisi', 0, '10/A'),
(78669671237, 'ARDA ONUR', 'Beden Eğitimi', 89, '10/A'),
(78669671237, 'ARDA ONUR', 'Fen Bilimi', 0, '10/A'),
(78669671237, 'ARDA ONUR', 'İnkılap Tarihi ve Atatürkçülük', 0, '10/A'),
(78669671237, 'ARDA ONUR', 'Görsel', 0, '10/A'),
(78669671237, 'ARDA ONUR', 'Müzik', 0, '10/A');

-- --------------------------------------------------------

--
-- Table structure for table `yetkiligiris`
--

CREATE TABLE `yetkiligiris` (
  `tc` bigint(11) NOT NULL,
  `yetkiliAd` varchar(50) NOT NULL,
  `yetkiliSoyad` varchar(50) NOT NULL,
  `sifre` varchar(50) NOT NULL,
  `sonGiris` datetime NOT NULL,
  `yetki` varchar(10) NOT NULL,
  `ders` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `yetkiligiris`
--

INSERT INTO `yetkiligiris` (`tc`, `yetkiliAd`, `yetkiliSoyad`, `sifre`, `sonGiris`, `yetki`, `ders`) VALUES
(11111111110, 'AHMET', 'AHMETOĞLU', '1234', '2024-05-06 22:59:37', 'Öğretmen', 'Türkçe'),
(12234567890, 'FATİH', 'USLU', '1234', '2024-05-06 22:59:37', 'Öğretmen', 'Matematik'),
(12345678900, 'AHMET', 'GENÇ', '1234', '2024-05-06 23:17:23', 'Müdür', ''),
(13245678901, 'MUHAMMET UMUT', 'ALTUN', '1234', '2024-05-06 23:14:40', 'Müdür', ''),
(13532678901, 'FURKAN', 'KIRMIZIOĞLU', '1234', '2024-05-06 22:59:37', 'Öğretmen', 'Din Kültürü ve Ahlak Bilgisi'),
(14532678901, 'NURULLAH', 'BEKTAŞ', '1234', '2024-05-06 22:59:37', 'Öğretmen', 'İnkılap Tarihi ve Atatürkçülük'),
(19909245671, 'ÜSTÜN', 'KISA', '1234', '2024-05-06 22:59:37', 'Öğretmen', 'Görsel'),
(41235678901, 'FURKAN TALHA', 'YAVER', '1234', '2024-05-06 23:22:53', 'Öğretmen', 'Beden Eğitimi'),
(52335678901, 'YUNUS', 'ÖZYAVUZ', '1234', '2024-05-06 23:08:27', 'Öğretmen', 'Müzik'),
(55551234567, 'ÇİĞDEM', 'BATUR', '1234', '2024-05-06 23:08:27', 'Öğretmen', 'Fen Bilimi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ogrenciler`
--
ALTER TABLE `ogrenciler`
  ADD PRIMARY KEY (`tc`);

--
-- Indexes for table `yetkiligiris`
--
ALTER TABLE `yetkiligiris`
  ADD PRIMARY KEY (`tc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
