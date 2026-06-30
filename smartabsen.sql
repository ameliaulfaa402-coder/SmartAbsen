-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2026 at 12:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartabsen`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absensi` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `status` enum('Hadir','Izin','Sakit','Alfa') NOT NULL,
  `kelas` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id_absensi`, `id_siswa`, `tanggal`, `status`, `kelas`) VALUES
(1, 1, '2026-06-01', 'Sakit', 'X IPA 1'),
(2, 2, '2026-06-01', 'Hadir', 'X IPA 1');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`) VALUES
(1, 'X IPA 1'),
(2, 'X IPA 2'),
(3, 'XI IPA 1'),
(4, 'XI IPA 2'),
(5, 'XII IPA 1'),
(6, 'XII IPA 2');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` text DEFAULT NULL,
  `kelas` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nis`, `nama`, `jenis_kelamin`, `alamat`, `kelas`) VALUES
(1, '1001', 'Tria Eka Ermanto', 'P', 'Jakarta', '1'),
(2, '1002', 'Wafik Nisah', 'P', 'Jakarta', 'X IPA 1'),
(3, '1003', 'Amelia', 'P', 'Jakarta', 'X IPA 1'),
(4, '1004', 'Ahmad Joko', 'L', 'Bogor', 'X IPA 1'),
(5, '1005', 'Siti Aisyah', 'P', 'Malang', 'X IPA 1'),
(6, '1006', 'Muhammad Malika', 'L', 'Malaysia', 'X IPA 1'),
(7, '1007', 'Yusuf Ali ', 'L', 'Arab', 'X IPA 1'),
(8, '1008', 'Marpuah', 'P', 'Bandung', 'XI IPA 1'),
(9, '1009', 'Anton Sekeleton', 'L', 'Bandung', 'XI IPA 1'),
(10, '1010', 'Andi Pratama', 'L', 'Bandung', 'XI IPA 1'),
(11, '1011', 'Muhammad Ahmad', 'L', 'Cikarang', 'XI IPA 1'),
(12, '1012', ' Siti Arabiyah', 'P', 'Madinah', 'XI IPA 1'),
(13, '1013', ' Citra Kirana', 'P', 'Subang', 'XI IPA 1'),
(14, '1014', ' Wardany', 'L', 'Subang', 'XI IPA 1'),
(15, '1015', ' Sayang', 'P', 'Jakarta', 'XII IPA 1'),
(19, '1016', 'Patrik', 'L', 'Lampung', 'XII IPA 1'),
(21, '1017', 'Doraemon', 'L', 'Badui', 'XII IPA 1'),
(22, '1018', 'Amelia Ulfa', 'P', 'Singapura', 'XII IPA 1'),
(23, '1019', 'Hilmilah', 'P', 'Bogor', 'XII IPA 1'),
(24, '1020', 'Mamluah', 'P', 'Madura', 'XII IPA 1'),
(25, '1021', 'Mirza', 'P', 'Madura', 'XII IPA 1'),
(26, '1022', 'Fina Rahmatika', 'P', 'Madura', 'X IPA 2'),
(27, '1023', 'Alya', 'P', 'Madura', 'X IPA 2'),
(28, '1024', 'Rifa', 'P', 'Surabaya', 'X IPA 2');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(20) DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `role`) VALUES
(1, 'TU', 'TU2026', 'adminTU');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absensi`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD UNIQUE KEY `nis` (`nis`),
  ADD KEY `id_kelas` (`kelas`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absensi`
--
ALTER TABLE `absensi`
  ADD CONSTRAINT `absensi_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
