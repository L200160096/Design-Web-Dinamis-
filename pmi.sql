-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Des 2018 pada 03.13
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pmi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `message`
--

CREATE TABLE `message` (
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `message`
--

INSERT INTO `message` (`nama`, `email`, `subject`, `message`) VALUES
('inops', 'anggitapuspaningrum@gmail.com', 'ffafafaf', 'hahhah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `persediaandiweb`
--

CREATE TABLE `persediaandiweb` (
  `jenisDarah` varchar(100) NOT NULL,
  `stockDarah` int(11) NOT NULL,
  `lokasiDarah` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `persediaandiweb`
--

INSERT INTO `persediaandiweb` (`jenisDarah`, `stockDarah`, `lokasiDarah`) VALUES
('A', 12, 'Jambi'),
('AB', 66, 'Palembang'),
('B', 877, 'Jakarta\r\n'),
('O', 122344, 'Jakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `username` varchar(100) NOT NULL,
  `namaPemesan` varchar(100) NOT NULL,
  `alamatPemesan` varchar(100) NOT NULL,
  `jenisDarahBth` varchar(100) NOT NULL,
  `stockDarahBth` int(11) NOT NULL,
  `tanggalPesan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`username`, `namaPemesan`, `alamatPemesan`, `jenisDarahBth`, `stockDarahBth`, `tanggalPesan`) VALUES
('adm', 'Angg', 'jambi', 'AB', 10, '2018-12-06'),
('adm2', 'Angg', 'Semarang', 'AB', 12, '2018-11-06'),
('admin1', 'Anggita', 'Semarang', 'O', 10, '2018-12-06'),
('admin1hhhh', 'hhhhh', 'hhhh', 'ggg', 881, '2018-12-06'),
('Anggita', 'Anggita', 'Semarang', 'B', 10, '2018-12-06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `password`, `nama`, `status`) VALUES
('adm1', '1111', 'Anggita', 'adm'),
('adm2', '1111', 'Hariya', 'adm'),
('adm3', '1111', 'Ino', 'adm'),
('adm4', '1111', 'admin', 'adm'),
('admbaru', '1111', 'hai', 'adm'),
('membaru', '2222', '', 'adm'),
('member', '2222', 'Member Baru', 'member'),
('tata', '2222', 'Anggita Puspa', 'member');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`nama`);

--
-- Indeks untuk tabel `persediaandiweb`
--
ALTER TABLE `persediaandiweb`
  ADD PRIMARY KEY (`jenisDarah`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
