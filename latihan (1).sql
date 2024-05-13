-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Feb 2023 pada 01.24
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latihan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_biografi`
--

CREATE TABLE `t_biografi` (
  `id_buku` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `tahun_terbit` varchar(50) NOT NULL,
  `deskripsi` varchar(300) NOT NULL,
  `kategori` varchar(35) NOT NULL,
  `foto` varchar(355) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_biografi`
--

INSERT INTO `t_biografi` (`id_buku`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `deskripsi`, `kategori`, `foto`) VALUES
(4, 'Nadiem Makarim', 'steven', 'Harpercollins Pub Ltd, Bentang', '111', '12', 'biografi', ''),
(28, 'safsafsa', 'afasfasf', 'afafasf', 'afasfsa', 'afafs', '', 'Screenshot (12).png'),
(29, 'Nadiem Makarim', 'faiz', 'haha', '2005', 'ss', 'biografiff', 'Screenshot (6).png'),
(30, 'Nadiem Makarim', 'faiz', 'haha', '2005', 'ss', 'biografiff', 'Screenshot (6).png'),
(31, 'Nadiem Makarim', 'faiz', 'haha', '2005', 'ss', 'biografiff', 'Screenshot (6).png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_fiksi`
--

CREATE TABLE `t_fiksi` (
  `id_buku` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `tahun_terbit` varchar(50) NOT NULL,
  `deskripsi` varchar(355) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `foto` varchar(355) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_fiksi`
--

INSERT INTO `t_fiksi` (`id_buku`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `deskripsi`, `kategori`, `foto`) VALUES
(1, 'fiksi', 'mosss', 'faiz', '20050631', 'safafsa', 'fiksi', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pelajaran`
--

CREATE TABLE `t_pelajaran` (
  `id_buku` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `tahun_terbit` varchar(50) NOT NULL,
  `deskripsi` varchar(300) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `foto` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_pelajaran`
--

INSERT INTO `t_pelajaran` (`id_buku`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `deskripsi`, `kategori`, `foto`) VALUES
(1, 'steven', '12', 'Harpercollins Pub Ltd, Bentang', '2005', 'HAHAH', 'pelajaran', 'Screenshot (5).png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_peminjam`
--

CREATE TABLE `t_peminjam` (
  `id_buku` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `tahun_terbit` varchar(50) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_peminjam`
--

INSERT INTO `t_peminjam` (`id_buku`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `deskripsi`, `kategori`, `nama`) VALUES
(1, 'Nadiem Makarim', 'steven', 'Harpercollins Pub Ltd, Bentang', '111', '12', 'biografi', 'Steven'),
(2, 'fiksi', 'mosss', 'faiz', '20050631', 'safafsa', '', 'refa fiksi'),
(3, 'fiksi', 'mosss', 'faiz', '20050631', 'safafsa', 'fiksi', 'Steven Christian '),
(4, 'Nadiem Makarim', 'faiz', 'haha', '2005', 'ss', 'biografiff', 'steven'),
(5, 'Nadiem Makarim', 'faiz', 'haha', '2005', 'ss', 'biografiff', 'zidan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_user`
--

CREATE TABLE `t_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_user`
--

INSERT INTO `t_user` (`id_user`, `nama`, `username`, `password`, `level`) VALUES
(1, 'siswa', 'steven', '2005', 'siswa'),
(2, 'guru', 'guru', '123456', 'guru'),
(3, 'administrator', 'administrator', '123456', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `t_biografi`
--
ALTER TABLE `t_biografi`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `t_fiksi`
--
ALTER TABLE `t_fiksi`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `t_pelajaran`
--
ALTER TABLE `t_pelajaran`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `t_peminjam`
--
ALTER TABLE `t_peminjam`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `t_biografi`
--
ALTER TABLE `t_biografi`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `t_fiksi`
--
ALTER TABLE `t_fiksi`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `t_pelajaran`
--
ALTER TABLE `t_pelajaran`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `t_peminjam`
--
ALTER TABLE `t_peminjam`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `t_user`
--
ALTER TABLE `t_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
