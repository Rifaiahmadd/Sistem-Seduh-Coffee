-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Des 2019 pada 07.06
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seduhcoffe`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `addcart`
--

CREATE TABLE `addcart` (
  `id` int(11) NOT NULL,
  `produk_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quatity` int(13) NOT NULL,
  `harga` int(13) NOT NULL,
  `harga_total` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `addcart`
--

INSERT INTO `addcart` (`id`, `produk_name`, `image`, `quatity`, `harga`, `harga_total`) VALUES
(0, 'Toraja Natural Proses', 'images.jfif', 1, 100000, 100000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `rolle` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama`, `email`, `password`, `rolle`) VALUES
(1, 'Hapnan Arsad Riski', 'hapnanarsad@gmail.com', 'snaiper123', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `prodak_name` varchar(255) NOT NULL,
  `harga` int(13) NOT NULL,
  `image` varchar(255) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `altitude` varchar(255) NOT NULL,
  `varietas` varchar(255) NOT NULL,
  `prosesing` varchar(255) NOT NULL,
  `roasting` varchar(255) NOT NULL,
  `cupping` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `prodak_name`, `harga`, `image`, `origin`, `region`, `altitude`, `varietas`, `prosesing`, `roasting`, `cupping`) VALUES
(0, 'Toraja Natural Proses', 100000, 'images.jfif', '-', 'Atu Lintang', '1500', 'Ateng/Catimor', 'Natural', 'Medium Roast', 'Scrupy Boat,Low Acidity with Chocolate'),
(1, 'Gayo Natural Proses', 120000, 'image2.jpg', '-', 'Atu Lintang', '1500', 'Ateng?Citamor', 'Natural', 'Medium Roast', 'Scrupy Boat,Low Acidity with Chocolate');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `alamat` text NOT NULL,
  `rt` text NOT NULL,
  `rw` text NOT NULL,
  `kota` text NOT NULL,
  `kabupaten` text NOT NULL,
  `kode_pos` text NOT NULL,
  `rolle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `alamat`, `rt`, `rw`, `kota`, `kabupaten`, `kode_pos`, `rolle`) VALUES
(1, 'Hapnan Arsad Riski', 'hapnanarsad@gmail.com', 'snaiper123', '', '', '', 'Rembang', '', '', 'user'),
(2, 'Amalina Farikha', 'myfuturewife@gmail.com', 'sayangku', '', '', '', 'Rembang', '', '', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_history`
--

CREATE TABLE `user_history` (
  `no_transaksi` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `harga_total` int(11) NOT NULL,
  `ekspedisi` varchar(255) NOT NULL,
  `resi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_history`
--

INSERT INTO `user_history` (`no_transaksi`, `user_id`, `product_id`, `quantity`, `harga`, `harga_total`, `ekspedisi`, `resi`) VALUES
(1, 1, 1, 100, 100000, 10000000, 'jne', 'AsASasASaasd'),
(2, 2, 1, 100, 1000000, 10000000, 'jne', 'asdfghjkl');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `addcart`
--
ALTER TABLE `addcart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_history`
--
ALTER TABLE `user_history`
  ADD PRIMARY KEY (`no_transaksi`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `user_history`
--
ALTER TABLE `user_history`
  ADD CONSTRAINT `user_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `user_history_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `produk` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
