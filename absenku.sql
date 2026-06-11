-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2026 at 09:13 AM
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
-- Database: `absenku`
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
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id_absensi`, `id_siswa`, `tanggal`, `status`, `keterangan`) VALUES
(1, 1, '2026-06-11', 'Hadir', '-'),
(2, 2, '2026-06-11', 'Izin', 'Acara keluarga'),
(3, 3, '2026-06-11', 'Sakit', 'Demam'),
(4, 4, '2026-06-11', 'Alfa', 'Tanpa keterangan');

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
  `id_kelas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nis`, `nama`, `jenis_kelamin`, `alamat`, `id_kelas`) VALUES
(1, '1001', 'Ahmad Fauzi', 'L', 'Bandung', 1),
(2, '1002', 'Siti Aisyah', 'P', 'Bogor', 1),
(3, '1003', 'Muhammad Rizki', 'L', 'Yogyakarta', 1),
(4, '1004', 'Nabila Putri', 'P', 'Jakarta', 1),
(5, '1005', 'Andi Saputra', 'L', 'Lampung', 2),
(6, '1006', 'Dewi Lestari', 'P', 'Jakarta', 2),
(7, '1007', 'Fajar Ramadhan', 'L', 'Jakarta', 2),
(8, '1008', 'Nurul Hidayah', 'P', 'Jakarta', 2),
(9, '1009', 'Budi Santoso', 'L', 'Jakarta', 3),
(10, '1010', 'Rina Oktavia', 'P', 'Sumatra', 3),
(11, '1011', 'Yoga Pratama', 'L', 'Jakarta', 3),
(12, '1012', 'Aulia Rahma', 'P', 'Jakarta', 3),
(13, '1013', 'Iqbal Maulana', 'L', 'Jakarta', 4),
(14, '1014', 'Putri Amelia', 'P', 'Bogor', 4),
(15, '1015', 'Reza Akbar', 'L', 'Bogor', 4),
(16, '1016', 'Annisa Zahra', 'P', 'Jakarta', 4),
(17, '1017', 'Dimas Nugraha', 'L', 'Jakarta', 5),
(18, '1018', 'Citra Maharani', 'P', 'Surabaya', 5),
(19, '1019', 'Arif Setiawan', 'L', 'Lampung', 5),
(20, '1020', 'Nadya Safitri', 'P', 'Jakarta', 5),
(21, '1021', 'Rafi Hidayat', 'L', 'Jakarta', 6),
(22, '1022', 'Laila Fitriani', 'P', 'Surabaya', 6),
(23, '1023', 'Galang Prakoso', 'L', 'Malang', 6),
(24, '1024', 'Maya Salsabila', 'P', 'Jakarta', 6),
(25, '1025', 'Alvin Saputra', 'L', 'Jakarta', 6);

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
(1, 'TU', 'TU26', 'adminTU');

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
  ADD KEY `id_kelas` (`id_kelas`);

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
  MODIFY `id_absensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
