-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Feb 2021 pada 16.37
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Struktur dari tabel `companies`
--

CREATE TABLE `companies` (
  `id_company` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `company_name` varchar(22) NOT NULL,
  `about` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `companies`
--

INSERT INTO `companies` (`id_company`, `image`, `company_name`, `about`) VALUES
(2, 'matras.jpg', 'Ion Natural', 'Ion Natural ini berupa matras terapi yang memiliki manfaat melancarkan aliran darah dan pembuluh darah'),
(3, 'susu kambing.jpg', 'AJMS GoatMilk', 'AJMS goatmilk ini berupa susu kambing asli yang memiliki manfaat tulang kalsium'),
(4, 'korset.jpg', 'Maigwaiterscare', 'Maigwaiterscare ini berupa korset atau ikat pinggang yang memiliki manfaat untuk saraf pinggang'),
(6, 'bantal pintar.jpg', 'Pillow Power', 'Pillow Power berupa bantal terapi atau sering disebut juga dengan bantal pintar yang mmemiliki manfaat untuk mencegah pusing kepala, sakit kepala dan otak'),
(7, 'alat terapii kaki.jpg', 'Insole', 'Insole ini berupa sandal terapi yang memiliki manfaat untuk melancarkan peredaran darah pada kaki');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail`
--

CREATE TABLE `detail` (
  `id_company` int(11) NOT NULL,
  `id_detail` int(11) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail`
--

INSERT INTO `detail` (`id_company`, `id_detail`, `tittle`, `desc`) VALUES
(2, 8, 'Produk', 'test'),
(4, 9, 'Sejarah', 'product ini terbentuk adanya suatu gejala yang terjadi pada customer'),
(4, 10, 'Visi', 'dengan adanya product ini dapat membantu customer hidup sehat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `email`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com'),
(9, 'sinta07', 'sinta', 'sintaoktapiyani.com'),
(13, 'SINTA', 'SINTA071099', 'sintaoktapiyani457@gmail.com'),
(14, 'widya', 'widyacantik', 'widya10@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id_company`);

--
-- Indeks untuk tabel `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_company` (`id_company`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `companies`
--
ALTER TABLE `companies`
  MODIFY `id_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `detail`
--
ALTER TABLE `detail`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail`
--
ALTER TABLE `detail`
  ADD CONSTRAINT `detail_ibfk_1` FOREIGN KEY (`id_company`) REFERENCES `companies` (`id_company`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
