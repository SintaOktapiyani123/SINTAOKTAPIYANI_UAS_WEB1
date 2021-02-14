-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2021 at 05:11 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id_company` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `company_name` varchar(22) NOT NULL,
  `about` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id_company`, `image`, `company_name`, `about`) VALUES
(2, 'adidas.jpg', 'Adidas', 'Perusahaan sepatu yang sangat edan'),
(3, 'puma.jpg', 'PUMA', 'perusaah n puma yang emnggiurkan'),
(4, 'supreme.jpg', 'Supreme', 'barang nya sangat mahal seklai boss'),
(6, 'rolex.jpg', 'ROLEX', 'PERUSAHAAN JAM TANGAN'),
(7, 'Wallpaper-Windows-10_2.jpg', 'test', 'qwe'),
(8, 'Overview_of_the_mobile_app_development_process__Infographic_.png', 'kintil', 'kintil sekali'),
(9, 'Wallpaper-Windows-10_2.jpg', 'NIKE', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE `detail` (
  `id_company` int(11) NOT NULL,
  `id_detail` int(11) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail`
--

INSERT INTO `detail` (`id_company`, `id_detail`, `tittle`, `desc`) VALUES
(2, 8, 'Produk', 'test'),
(4, 9, 'Sejarah', 'karna kaum kaum yang banyak duit makanya supreme cepet kaya'),
(4, 10, 'Visi', 'Menjadikan Perusahaan Kapitalis'),
(7, 15, '123', 'qwe'),
(8, 16, 'asd', 'zxc');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `email`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com'),
(9, 'eww', 'qwe', 'qwe@gmail.com'),
(10, 'Taufik Barokah Nur', '123', 'taufikbarokahnur@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id_company`);

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_company` (`id_company`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `detail`
--
ALTER TABLE `detail`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail`
--
ALTER TABLE `detail`
  ADD CONSTRAINT `detail_ibfk_1` FOREIGN KEY (`id_company`) REFERENCES `companies` (`id_company`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
