-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2021 at 10:11 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stockbarang`
--

-- --------------------------------------------------------

--
-- Table structure for table `keluar`
--

CREATE TABLE `keluar` (
  `idkeluar` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `kuantitas` int(11) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keluar`
--

INSERT INTO `keluar` (`idkeluar`, `idbarang`, `tanggal`, `kuantitas`, `keterangan`) VALUES
(1, 2, '2021-04-03 17:34:29', 4, ''),
(2, 1, '2021-04-03 17:41:37', 7, ''),
(3, 1, '2021-04-03 18:04:37', 2, ''),
(4, 2, '2021-04-04 09:56:57', 6, ''),
(5, 3, '2021-04-04 09:59:58', 3, ''),
(6, 1, '2021-04-04 10:40:56', 2, ''),
(7, 4, '2021-04-04 10:49:59', 1, 'Gojek Instant'),
(8, 5, '2021-04-04 11:32:10', 3, ''),
(11, 5, '2021-04-05 15:30:43', 5, ''),
(12, 7, '2021-04-07 07:28:08', 5, ''),
(13, 8, '2021-04-08 06:09:42', 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `masuk`
--

CREATE TABLE `masuk` (
  `idmasuk` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `kuantitas` int(11) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masuk`
--

INSERT INTO `masuk` (`idmasuk`, `idbarang`, `tanggal`, `kuantitas`, `keterangan`) VALUES
(3, 1, '2021-04-03 17:18:37', 2, ''),
(4, 2, '2021-04-03 17:19:51', 3, ''),
(5, 1, '2021-04-03 17:41:10', 6, ''),
(6, 1, '2021-04-03 18:10:28', 1, ''),
(7, 1, '2021-04-04 08:01:00', 4, ''),
(8, 2, '2021-04-04 09:58:33', 7, ''),
(9, 3, '2021-04-04 10:00:16', 5, ''),
(10, 2, '2021-04-04 10:24:16', 2, ''),
(11, 2, '2021-04-04 10:27:13', 5, ''),
(13, 1, '2021-04-04 10:34:53', 5, ''),
(14, 3, '2021-04-04 10:36:42', 1, ''),
(15, 4, '2021-04-04 10:51:22', 5, ''),
(18, 4, '2021-04-05 15:26:54', 4, ''),
(19, 5, '2021-04-05 15:29:27', 10, ''),
(20, 5, '2021-04-05 15:29:42', 3, ''),
(21, 7, '2021-04-07 07:28:34', 3, ''),
(22, 8, '2021-04-08 06:10:26', 6, ''),
(23, 5, '2021-04-08 06:47:12', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `returbeli`
--

CREATE TABLE `returbeli` (
  `idreturbeli` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `kuantitas` int(11) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `returbeli`
--

INSERT INTO `returbeli` (`idreturbeli`, `idbarang`, `tanggal`, `kuantitas`, `keterangan`) VALUES
(2, 8, '2021-04-08 13:24:27', 2, 'Box damage');

-- --------------------------------------------------------

--
-- Table structure for table `returjual`
--

CREATE TABLE `returjual` (
  `idreturjual` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `kuantitas` int(11) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `returjual`
--

INSERT INTO `returjual` (`idreturjual`, `idbarang`, `tanggal`, `kuantitas`, `keterangan`) VALUES
(3, 8, '2021-04-08 12:28:29', 1, 'Wah LCDnya kena mas'),
(4, 1, '2021-04-08 12:30:02', 1, 'Yellowing'),
(6, 8, '2021-04-08 12:48:05', 1, 'Matot'),
(7, 8, '2021-04-08 12:50:02', 1, 'IC circuit'),
(10, 8, '2021-04-29 09:28:13', 1, 'Matot');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `idbarang` int(11) NOT NULL,
  `namabarang` varchar(50) NOT NULL,
  `kdbarang` varchar(50) NOT NULL,
  `kuantitas` int(11) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`idbarang`, `namabarang`, `kdbarang`, `kuantitas`, `keterangan`) VALUES
(1, 'Samsung Galaxy S21+', 'SM-G3S31', 17, ''),
(2, 'Samsung Galaxy Note 20 Ultra', 'SM-GN20U', 14, ''),
(3, 'Oppo Find X2 Pro', 'OP-FX2P', 7, ''),
(4, 'Huawei P40 Pro', 'HW-P40P', 9, 'Two color only'),
(5, 'iPhone Xs', 'IP-X58S', 10, 'Space gray only'),
(7, 'Vivo X60 Pro', 'VO-X60P', 8, ''),
(8, 'Xiaomi Mi 10', 'XA-M10', 10, ''),
(10, 'iPhone Xr', 'IP-X61R', 13, '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iduser`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$LHPVKCnpp4//E9BgrTE18ODr0oS697J0fjArVsuh8JCBmPwXkmzjO'),
(2, 'admin2', '$2y$10$gI5gXYBySKKox2I39XnK0.W3bJNugm7yDh8CTLRymKK9nLg9y1JnC'),
(3, 'admin3', '$2y$10$Me90yPbafsSUIb8ZonK1AOxRKyC4md9ApueOJpWFaOEmVPSQTgn0a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keluar`
--
ALTER TABLE `keluar`
  ADD PRIMARY KEY (`idkeluar`);

--
-- Indexes for table `masuk`
--
ALTER TABLE `masuk`
  ADD PRIMARY KEY (`idmasuk`);

--
-- Indexes for table `returbeli`
--
ALTER TABLE `returbeli`
  ADD PRIMARY KEY (`idreturbeli`);

--
-- Indexes for table `returjual`
--
ALTER TABLE `returjual`
  ADD PRIMARY KEY (`idreturjual`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`idbarang`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keluar`
--
ALTER TABLE `keluar`
  MODIFY `idkeluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `masuk`
--
ALTER TABLE `masuk`
  MODIFY `idmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `returbeli`
--
ALTER TABLE `returbeli`
  MODIFY `idreturbeli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `returjual`
--
ALTER TABLE `returjual`
  MODIFY `idreturjual` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `idbarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
