-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 02:59 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoolmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_akses_seluler`
--

CREATE TABLE `tabel_akses_seluler` (
  `id_akses_seluler` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `tanggal_akses` datetime NOT NULL,
  `perangkat_info` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_akses_seluler`
--

INSERT INTO `tabel_akses_seluler` (`id_akses_seluler`, `id_pengguna`, `tanggal_akses`, `perangkat_info`) VALUES
(1, 1, '2023-10-16 14:45:00', 'Samsung Galaxy S21'),
(2, 2, '2023-10-16 15:00:00', 'iPhone13'),
(3, 3, '2023-10-16 15:30:00', 'OnePlus 9'),
(4, 4, '2023-10-16 16:00:00', 'Google Pixel'),
(5, 5, '2023-10-16 16:30:00', 'Xiaomi Mi 11');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_barang`
--

CREATE TABLE `tabel_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `jenis_barang` varchar(50) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `jumlah_stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_barang`
--

INSERT INTO `tabel_barang` (`id_barang`, `nama_barang`, `jenis_barang`, `harga`, `jumlah_stok`) VALUES
(1, 'Pensil HB#2', 'Alat Tulis', 500.00, 100),
(2, 'Buku Catatan A5', 'Buku', 3500.00, 50),
(3, 'Tas Laptop 15 inch', 'Tas', 25000.00, 20),
(4, 'Mouse Wirleess', 'Aksesoris Komputer', 15000.00, 30),
(5, 'Kertas Foto Glossy', 'Fotografi', 8990.00, 40);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_keamanan`
--

CREATE TABLE `tabel_keamanan` (
  `id_keamanan` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `hak_akses` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_keamanan`
--

INSERT INTO `tabel_keamanan` (`id_keamanan`, `id_pengguna`, `hak_akses`) VALUES
(1, 1, 'Admin'),
(2, 2, 'User'),
(3, 3, 'User'),
(4, 4, 'User'),
(5, 5, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_keuangan`
--

CREATE TABLE `tabel_keuangan` (
  `id_keuangan` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `uang_masuk` decimal(10,2) NOT NULL,
  `tanggal_penerimaan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_keuangan`
--

INSERT INTO `tabel_keuangan` (`id_keuangan`, `id_transaksi`, `uang_masuk`, `tanggal_penerimaan`) VALUES
(1, 1, 5000.00, '2023-10-16'),
(2, 2, 50000.00, '2023-10-16'),
(3, 3, 17500.00, '2023-10-16'),
(4, 4, 45000.00, '2023-10-16'),
(5, 5, 71920.00, '2023-10-16');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_laporan`
--

CREATE TABLE `tabel_laporan` (
  `id_laporan` int(11) NOT NULL,
  `tanggal_laporan` date NOT NULL,
  `jenis_laporan` varchar(20) NOT NULL,
  `isi_laporan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_laporan`
--

INSERT INTO `tabel_laporan` (`id_laporan`, `tanggal_laporan`, `jenis_laporan`, `isi_laporan`) VALUES
(1, '2023-10-16', 'Harian', 'Detail transaksi dan keuangan harian.\r\n'),
(2, '2023-10-15', 'Harian', 'Detail transaksi dan keuangan harian.\r\n'),
(3, '2023-10-10', 'Mingguan', 'Ringkasan transaksi dan keuangan minggu ini\r\n'),
(4, '2023-09-30', 'Bulanan', 'Analisis transaksi dan keuangan bulan lalu.\r\n'),
(5, '2023-09-01', 'Bulanan', 'Rangkuman kinerja bulan lalu.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pembayaran_online`
--

CREATE TABLE `tabel_pembayaran_online` (
  `id_pembayaran` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `metode_pembayaran` varchar(50) NOT NULL,
  `status_pembayaran` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_pembayaran_online`
--

INSERT INTO `tabel_pembayaran_online` (`id_pembayaran`, `id_transaksi`, `metode_pembayaran`, `status_pembayaran`) VALUES
(1, 1, 'Kartu kredit', 'Berhasil'),
(2, 2, 'Transfer Bank', 'Tertunda'),
(3, 3, 'PayPal', 'Berhasil'),
(4, 4, 'Kartu Debit', 'Gagal'),
(5, 5, 'UPI', 'Berhasil');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pencarian_cepat`
--

CREATE TABLE `tabel_pencarian_cepat` (
  `id_pencarian` int(11) NOT NULL,
  `kata_kunci` varchar(20) NOT NULL,
  `hasil_pencarian` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_pencarian_cepat`
--

INSERT INTO `tabel_pencarian_cepat` (`id_pencarian`, `kata_kunci`, `hasil_pencarian`) VALUES
(1, 'Alat Tulis', 'Menampilkan pensil, buku catatan, dll.\r\n'),
(2, 'Laptop', 'Menampilkan tas laptop dan aksesoris komputer.\r\n'),
(3, 'Mouse', 'Menampilkan mouse wireless.\r\n'),
(4, 'Fotografi', 'Menampilkan kertas foto glossy.\r\n'),
(5, 'Pegawai', 'Menampilkan informasi pengguna dengan peran pegawai.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pengguna`
--

CREATE TABLE `tabel_pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_pengguna` varchar(50) NOT NULL,
  `kata_sandi` varchar(255) NOT NULL,
  `peran_pengguna` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_pengguna`
--

INSERT INTO `tabel_pengguna` (`id_pengguna`, `nama_pengguna`, `kata_sandi`, `peran_pengguna`) VALUES
(1, 'owner123', '12345', 'Pemilik'),
(2, 'staff456', '11111', 'Pegawai'),
(3, 'cashier789', '11111', 'Pegawai'),
(4, 'manager101', '11111', 'Pegawai'),
(5, 'assistant', '11111', 'Pegawai');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_transaksi`
--

CREATE TABLE `tabel_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `total harga` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_transaksi`
--

INSERT INTO `tabel_transaksi` (`id_transaksi`, `id_barang`, `tanggal_transaksi`, `jumlah_beli`, `total harga`) VALUES
(1, 1, '2023-10-16 14:30:00', 10, 5000.00),
(2, 2, '2023-10-16 15:45:00', 2, 50000.00),
(3, 3, '2023-10-16 16:20:00', 5, 17500.00),
(4, 4, '2023-10-16 17:00:00', 3, 45000.00),
(5, 5, '2023-10-16 17:30:00', 8, 71920.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_akses_seluler`
--
ALTER TABLE `tabel_akses_seluler`
  ADD PRIMARY KEY (`id_akses_seluler`),
  ADD UNIQUE KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `tabel_barang`
--
ALTER TABLE `tabel_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tabel_keamanan`
--
ALTER TABLE `tabel_keamanan`
  ADD PRIMARY KEY (`id_keamanan`),
  ADD UNIQUE KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `tabel_keuangan`
--
ALTER TABLE `tabel_keuangan`
  ADD PRIMARY KEY (`id_keuangan`),
  ADD UNIQUE KEY `id_transaksi` (`id_transaksi`);

--
-- Indexes for table `tabel_laporan`
--
ALTER TABLE `tabel_laporan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indexes for table `tabel_pembayaran_online`
--
ALTER TABLE `tabel_pembayaran_online`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD UNIQUE KEY `id_transaksi` (`id_transaksi`);

--
-- Indexes for table `tabel_pencarian_cepat`
--
ALTER TABLE `tabel_pencarian_cepat`
  ADD PRIMARY KEY (`id_pencarian`);

--
-- Indexes for table `tabel_pengguna`
--
ALTER TABLE `tabel_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD UNIQUE KEY `id_barang` (`id_barang`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tabel_akses_seluler`
--
ALTER TABLE `tabel_akses_seluler`
  ADD CONSTRAINT `tabel_akses_seluler_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `tabel_pengguna` (`id_pengguna`);

--
-- Constraints for table `tabel_keamanan`
--
ALTER TABLE `tabel_keamanan`
  ADD CONSTRAINT `tabel_keamanan_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `tabel_pengguna` (`id_pengguna`);

--
-- Constraints for table `tabel_keuangan`
--
ALTER TABLE `tabel_keuangan`
  ADD CONSTRAINT `tabel_keuangan_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `tabel_transaksi` (`id_transaksi`);

--
-- Constraints for table `tabel_pembayaran_online`
--
ALTER TABLE `tabel_pembayaran_online`
  ADD CONSTRAINT `tabel_pembayaran_online_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `tabel_transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  ADD CONSTRAINT `tabel_transaksi_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tabel_barang` (`id_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
