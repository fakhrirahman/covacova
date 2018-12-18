-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2018 at 08:23 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitoshoes`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `ukuran` varchar(3) NOT NULL,
  `harga` int(12) NOT NULL,
  `username` varchar(12) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `link` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`ukuran`, `harga`, `username`, `nama`, `link`) VALUES
('37', 0, '', '', ''),
('37', 3250000, '', 'Jordan 1 Retro High ', 'https://stockx-360.imgix.net/Air-Jordan-1-Retro-High-Gatorade-Blue-Lagoon/Images/Air-Jordan-1-Retro-High-Gatorade-Blue-Lagoon/Lv2/img01.jpg?auto=format,compress'),
('37', 3250000, 'test', 'Jordan 1 Retro High ', 'https://stockx-360.imgix.net/Air-Jordan-1-Retro-High-Gatorade-Blue-Lagoon/Images/Air-Jordan-1-Retro-High-Gatorade-Blue-Lagoon/Lv2/img01.jpg?auto=format,compress'),
('37', 3250000, 'test', 'Jordan 1 Retro High ', 'https://stockx-360.imgix.net/Air-Jordan-1-Retro-High-Gatorade-Blue-Lagoon/Images/Air-Jordan-1-Retro-High-Gatorade-Blue-Lagoon/Lv2/img01.jpg?auto=format,compress'),
('37', 3250000, 'test', 'Jordan 1 Retro High ', 'https://stockx-360.imgix.net/Air-Jordan-1-Retro-High-Gatorade-Blue-Lagoon/Images/Air-Jordan-1-Retro-High-Gatorade-Blue-Lagoon/Lv2/img01.jpg?auto=format,compress'),
('37', 3250000, 'test', 'Jordan 1 Retro High ', 'https://stockx-360.imgix.net/Air-Jordan-1-Retro-High-Gatorade-Blue-Lagoon/Images/Air-Jordan-1-Retro-High-Gatorade-Blue-Lagoon/Lv2/img01.jpg?auto=format,compress'),
('37', 3250000, 'test', 'Jordan 1 Retro High ', 'https://stockx-360.imgix.net/Air-Jordan-1-Retro-High-Gatorade-Blue-Lagoon/Images/Air-Jordan-1-Retro-High-Gatorade-Blue-Lagoon/Lv2/img01.jpg?auto=format,compress'),
('37', 10950000, 'test', 'Jordan 11 Retro Conc', 'https://stockx-360.imgix.net/air-jordan-11-retro-concord-2011_TruView/Images/air-jordan-11-retro-concord-2011_TruView/Lv2/img01.jpg?auto=format,compress'),
('37', 3250000, 'ambro', 'Jordan 1 Retro High ', 'https://stockx-360.imgix.net/Air-Jordan-1-Retro-High-Gatorade-Blue-Lagoon/Images/Air-Jordan-1-Retro-High-Gatorade-Blue-Lagoon/Lv2/img01.jpg?auto=format,compress'),
('37', 3250000, 'test', 'Jordan 1 Retro High ', 'https://stockx-360.imgix.net/Air-Jordan-1-Retro-High-Gatorade-Blue-Lagoon/Images/Air-Jordan-1-Retro-High-Gatorade-Blue-Lagoon/Lv2/img01.jpg?auto=format,compress'),
('37', 1200000, 'test', 'Yeezy Powerphase Cal', 'https://stockx-360.imgix.net/adidas-yeezy-powerphase-calabasas-grey_TruView/Images/adidas-yeezy-powerphase-calabasas-grey_TruView/Lv2/img01.jpg?auto=format,compress'),
('37', 10950000, 'test', 'Jordan 11 Retro Conc', 'https://stockx-360.imgix.net/air-jordan-11-retro-concord-2011_TruView/Images/air-jordan-11-retro-concord-2011_TruView/Lv2/img01.jpg?auto=format,compress'),
('37', 3250000, 'test', 'Jordan 1 Retro High ', 'https://stockx-360.imgix.net/Air-Jordan-1-Retro-High-Gatorade-Blue-Lagoon/Images/Air-Jordan-1-Retro-High-Gatorade-Blue-Lagoon/Lv2/img01.jpg?auto=format,compress'),
('37', 3250000, 'test', 'Jordan 1 Retro High ', 'https://stockx-360.imgix.net/Air-Jordan-1-Retro-High-Gatorade-Blue-Lagoon/Images/Air-Jordan-1-Retro-High-Gatorade-Blue-Lagoon/Lv2/img01.jpg?auto=format,compress'),
('37', 1200000, 'test', 'Yeezy Powerphase Cal', 'https://stockx-360.imgix.net/adidas-yeezy-powerphase-calabasas-grey_TruView/Images/adidas-yeezy-powerphase-calabasas-grey_TruView/Lv2/img01.jpg?auto=format,compress');

-- --------------------------------------------------------

--
-- Table structure for table `sepatu`
--

CREATE TABLE `sepatu` (
  `id_sepatu` varchar(2) NOT NULL,
  `link` varchar(1000) NOT NULL,
  `harga` int(50) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `brand` varchar(15) NOT NULL,
  `jenis` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sepatu`
--

INSERT INTO `sepatu` (`id_sepatu`, `link`, `harga`, `nama`, `brand`, `jenis`) VALUES
('01', 'https://stockx-360.imgix.net/Adidas-Yeezy-Boost-350-V2-Zebra/Images/Adidas-Yeezy-Boost-350-V2-Zebra/Lv2/img01.jpg?auto=format,compress&w=1117&q=90&updated_at=1538080256', 3070000, 'Yeezy Boost 350 V2 Z', 'Adidas', 'Casual'),
('02', 'https://stockx.imgix.net/Adidas-Yeezy-Wave-Runner-700-Solid-Grey-Product.jpg?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2&updated_at=1538080256', 4200000, 'Yeezy Wave Runner 70', 'Adidas', 'Running'),
('03', 'https://stockx-360.imgix.net/Air-Jordan-1-Retro-High-Alternate-Black-Royal/Images/Air-Jordan-1-Retro-High-Alternate-Black-Royal/Lv2/img01.jpg?auto=format,compress&w=1117&q=90&updated_at=1538080256', 1600000, 'Jordan 1 Retro High ', 'Air Jordan', 'Sport'),
('04', 'https://stockx-360.imgix.net/adidas-yeezy-powerphase-calabasas-grey_TruView/Images/adidas-yeezy-powerphase-calabasas-grey_TruView/Lv2/img01.jpg?auto=format,compress&w=1117&q=90&updated_at=1538080256', 1200000, 'Yeezy Powerphase Cal', 'Adidas', 'Casual'),
('05', 'https://stockx-360.imgix.net/air-jordan-11-retro-concord-2011_TruView/Images/air-jordan-11-retro-concord-2011_TruView/Lv2/img01.jpg?auto=format,compress&w=1117&q=90&updated_at=1538080256', 10950000, 'Jordan 11 Retro Conc', 'Air Jordan', 'Sport'),
('06', 'https://stockx-360.imgix.net/Air-Jordan-1-Retro-High-Gatorade-Blue-Lagoon/Images/Air-Jordan-1-Retro-High-Gatorade-Blue-Lagoon/Lv2/img01.jpg?auto=format,compress&w=1117&q=90&updated_at=1538080256', 3250000, 'Jordan 1 Retro High ', 'Air Jordan', 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(12) NOT NULL,
  `password` varchar(12) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `firstname`, `lastname`, `email`) VALUES
('ambro', 'ambro', 'Ambro', 'Syong', 'abcdef@gmail.com'),
('fasdfsad', '', 'fsadfdsffsfasd', 'fsadfdas', 'ghemaallan@gmail.com'),
('test', 'test', 'test', 'test', 'test@test.com'),
('test1', 'test1', 'test', 'teest', 'test@test.com'),
('test2', 'test2', 'test2', 'test2', 'test2@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sepatu`
--
ALTER TABLE `sepatu`
  ADD PRIMARY KEY (`id_sepatu`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
