-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Inang: localhost
-- Waktu pembuatan: 04 Jul 2015 pada 12.03
-- Versi Server: 5.5.40-0ubuntu0.14.04.1
-- Versi PHP: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `juhri`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE IF NOT EXISTS `guru` (
  `ID_GURU` varchar(10) NOT NULL,
  `NAMA` text NOT NULL,
  `JENIS_KELAMIN` text NOT NULL,
  `ALAMAT` text NOT NULL,
  `TEMPAT_LAHIR` text NOT NULL,
  `TANGGAL_LAHIR` date NOT NULL,
  PRIMARY KEY (`ID_GURU`),
  KEY `ID_GURU` (`ID_GURU`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`ID_GURU`, `NAMA`, `JENIS_KELAMIN`, `ALAMAT`, `TEMPAT_LAHIR`, `TANGGAL_LAHIR`) VALUES
('1', 'Jono', 'Laki-Laki', 'Jl Asia Afrika Bandung', 'Bandung', '1991-10-11'),
('121453', 'Ikbal', 'Laki-laki', 'Suci', 'Garut', '1992-12-22'),
('1231232131', 'Tetststsa', 'Laki-laki', 'Suci', 'Garut', '1992-12-09'),
('1245123451', 'Hari ini', 'Perempuan', 'Garut', 'Garut 2', '1992-12-26'),
('2', 'Rahmat', 'Laki-Laki', 'Jl Soekarno Hatta Bandung', 'Bandung', '1991-10-11'),
('3', 'Rini', 'Perempuan', 'Jl Tago Bandung', 'Bandung', '1991-10-11'),
('3121453', 'Ikbal', 'Laki-laki', 'Suci', 'Garut', '1992-12-22'),
('4', 'Michel', 'Laki-Laki', 'Jl Pembangunan Bandung', 'Bandung', '1991-10-11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas_extra`
--

CREATE TABLE IF NOT EXISTS `kelas_extra` (
  `ID_KELAS` varchar(10) NOT NULL,
  `NAMA_KELAS` varchar(20) NOT NULL,
  `ID_PEMBIMBING` varchar(10) NOT NULL,
  PRIMARY KEY (`ID_KELAS`),
  KEY `ID_PEMBIMBING` (`ID_PEMBIMBING`),
  KEY `ID_PEMBIMBING_2` (`ID_PEMBIMBING`),
  KEY `ID_KELAS` (`ID_KELAS`),
  KEY `NAMA_KELAS` (`NAMA_KELAS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas_extra`
--

INSERT INTO `kelas_extra` (`ID_KELAS`, `NAMA_KELAS`, `ID_PEMBIMBING`) VALUES
('1', 'Pramuka', '1'),
('2', 'Paskibra', '2'),
('3', 'KomTik', '3'),
('4', 'Palang Merah', '4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `santri`
--

CREATE TABLE IF NOT EXISTS `santri` (
  `ID_SANTRI` varchar(10) NOT NULL,
  `NIS` varchar(10) NOT NULL,
  `ID_KELAS` varchar(10) NOT NULL,
  `NAMA` text NOT NULL,
  `JENIS_KELAMIN` text NOT NULL,
  `TEMPAT_LAHIR` text NOT NULL,
  `TANGGAL_LAHIR` date NOT NULL,
  `TINGKAT` int(5) NOT NULL,
  PRIMARY KEY (`ID_SANTRI`),
  KEY `ID_SANTRI` (`ID_SANTRI`),
  KEY `ID_KELAS` (`ID_KELAS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `santri`
--

INSERT INTO `santri` (`ID_SANTRI`, `NIS`, `ID_KELAS`, `NAMA`, `JENIS_KELAMIN`, `TEMPAT_LAHIR`, `TANGGAL_LAHIR`, `TINGKAT`) VALUES
('1', '2013001', '1', 'Hendri', 'Laki-Laki', 'Garut', '1991-05-01', 2),
('10', '2013010', '4', 'Widiya', 'Laki-Laki', 'Pontianak', '1991-05-01', 1),
('2', '2013002', '1', 'Heni', 'Perempuan', 'Garut', '1990-05-01', 3),
('3', '2013003', '1', 'Rahadi', 'Laki-Laki', 'Garut', '1991-04-01', 1),
('4', '2013004', '2', 'Mukti', 'Laki-Laki', 'Garut', '1990-05-01', 2),
('5', '2013005', '2', 'Mohammad', 'Laki-Laki', 'Semarang', '1991-05-01', 3),
('6', '2013006', '3', 'Yudi', 'Laki-Laki', 'Bandung', '1990-05-01', 2),
('7', '2013007', '3', 'Zaenudin', 'Laki-Laki', 'Garut', '1991-05-01', 1),
('8', '2013008', '4', 'Wahyudin', 'Laki-Laki', 'Palembang', '1991-05-01', 1),
('9', '2013009', '4', 'Nasihudin', 'Laki-Laki', 'Garut', '1991-05-01', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nis` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nis` (`nis`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `nama`) VALUES
(1, '1234567891', 'Ikbal Mohammad'),
(2, '22', 'tes'),
(4, '1312322', 'tes'),
(5, '46', 'dsdg'),
(6, '123555', 'tes');

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kelas_extra`
--
ALTER TABLE `kelas_extra`
  ADD CONSTRAINT `kelas_extra_ibfk_1` FOREIGN KEY (`ID_PEMBIMBING`) REFERENCES `guru` (`ID_GURU`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `santri`
--
ALTER TABLE `santri`
  ADD CONSTRAINT `santri_ibfk_1` FOREIGN KEY (`ID_KELAS`) REFERENCES `kelas_extra` (`ID_KELAS`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
