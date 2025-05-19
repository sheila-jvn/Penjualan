-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2025 at 02:19 PM
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
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kdBrg` varchar(6) NOT NULL,
  `nmBrg` varchar(25) NOT NULL,
  `jenisBrg` varchar(20) NOT NULL,
  `hrgBeli` int(11) NOT NULL,
  `hrgJual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kdBrg`, `nmBrg`, `jenisBrg`, `hrgBeli`, `hrgJual`) VALUES
('B001', 'Bakso', 'Makanan', 10000, 20000),
('B002', 'Es Jeruk', 'Minuman', 5000, 7000);

-- --------------------------------------------------------

--
-- Table structure for table `isi`
--

CREATE TABLE `isi` (
  `id_nota` varchar(255) NOT NULL,
  `kdBrg` varchar(255) NOT NULL,
  `hrgBeli` int(11) NOT NULL,
  `hrgJual` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `isi`
--

INSERT INTO `isi` (`id_nota`, `kdBrg`, `hrgBeli`, `hrgJual`, `qty`) VALUES
('IN0001', 'B001', 10000, 20000, 2),
('IN0001', 'B002', 5000, 7000, 1),
('IN0002', 'B001', 10000, 20000, 2),
('IN0002', 'B002', 5000, 7000, 2),
('IN0003', 'B001', 10000, 20000, 2),
('IN0003', 'B002', 5000, 7000, 2),
('IN0004', 'B001', 10000, 20000, 5),
('IN0005', 'B002', 5000, 7000, 3),
('IN0006', 'B002', 5000, 7000, 2),
('IN0007', 'B001', 10000, 20000, 1),
('IN0007', 'B002', 5000, 7000, 1),
('IN0008', 'B002', 5000, 7000, 1),
('IN0009', 'B002', 5000, 7000, 1),
('IN0010', 'B002', 5000, 7000, 1),
('IN0011', 'B002', 5000, 7000, 1),
('IN0012', 'B002', 5000, 7000, 1),
('IN0013', 'B001', 10000, 20000, 1),
('IN0014', 'B002', 5000, 7000, 9);

-- --------------------------------------------------------

--
-- Table structure for table `kasir`
--

CREATE TABLE `kasir` (
  `id_kasir` varchar(6) NOT NULL,
  `nama_kasir` varchar(25) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kasir`
--

INSERT INTO `kasir` (`id_kasir`, `nama_kasir`, `jenis`, `telepon`, `agama`, `alamat`, `password`) VALUES
('K001', 'Sheila', 'Perempuan', '0834089289', 'Islam', 'Bogor', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` varchar(255) NOT NULL,
  `tgl_nota` date NOT NULL,
  `id_plgn` varchar(255) NOT NULL,
  `kd_kasir` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `tgl_nota`, `id_plgn`, `kd_kasir`) VALUES
('IN0001', '2025-05-14', '3', 'K001'),
('IN0002', '2025-05-19', '2', 'K001'),
('IN0003', '2025-05-19', '2', 'K001'),
('IN0004', '2025-05-19', '2', 'K001'),
('IN0005', '2025-05-19', '2', 'K001'),
('IN0006', '2025-05-19', '4', 'K001'),
('IN0007', '2025-05-19', '4', 'K001'),
('IN0008', '2025-05-19', '3', 'K001'),
('IN0009', '2025-05-19', '3', 'K001'),
('IN0010', '2025-05-19', '3', 'K001'),
('IN0011', '2025-05-19', '3', 'K001'),
('IN0012', '2025-05-19', '3', 'K001'),
('IN0013', '2025-05-19', '3', 'K001'),
('IN0014', '2025-05-19', '4', 'K001');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` varchar(6) NOT NULL,
  `nmplg` varchar(25) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nmplg`, `jenis`, `telepon`, `alamat`) VALUES
('2', 'Sheila', 'Perempuan', '085272270727', 'Indonesia'),
('3', 'Erick', 'Laki-Laki', '0849759384', 'Singapura'),
('4', 'Anin', 'Perempuan', '08435783924', 'Indonesia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kdBrg`);

--
-- Indexes for table `isi`
--
ALTER TABLE `isi`
  ADD PRIMARY KEY (`id_nota`,`kdBrg`);

--
-- Indexes for table `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
