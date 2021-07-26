-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jul 2021 pada 04.07
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resto`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `resto_akses`
--

CREATE TABLE `resto_akses` (
  `akses_id` int(2) NOT NULL,
  `user_username` varchar(30) NOT NULL,
  `kategori_id` int(2) NOT NULL,
  `akses_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `resto_akses`
--

INSERT INTO `resto_akses` (`akses_id`, `user_username`, `kategori_id`, `akses_update`) VALUES
(2, 'dapur', 2, '2019-03-22 22:14:32'),
(4, 'dapur', 3, '2019-03-22 22:15:00'),
(5, 'dapur', 1, '2019-03-22 22:15:03'),
(6, 'kasir', 1, '2019-03-23 13:04:54'),
(7, 'kasir', 2, '2019-03-23 13:04:57'),
(8, 'kasir', 3, '2019-03-23 13:05:01'),
(9, 'kasir', 4, '2019-03-23 13:05:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resto_contact`
--

CREATE TABLE `resto_contact` (
  `contact_id` int(2) NOT NULL,
  `contact_name` varchar(100) NOT NULL,
  `contact_address` text NOT NULL,
  `contact_phone` varchar(15) DEFAULT NULL,
  `contact_email` varchar(50) DEFAULT NULL,
  `contact_web` varchar(50) DEFAULT NULL,
  `contact_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `resto_contact`
--

INSERT INTO `resto_contact` (`contact_id`, `contact_name`, `contact_address`, `contact_phone`, `contact_email`, `contact_web`, `contact_update`) VALUES
(1, 'Ayame dr.R', 'Jln. Jaksa Agung no 20 Ponorogo', '0838-4900-8978', 'ayamedr.R@gmail.com', '', '2021-07-18 10:51:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resto_kategori`
--

CREATE TABLE `resto_kategori` (
  `kategori_id` int(2) NOT NULL,
  `kategori_nama` varchar(50) NOT NULL,
  `kategori_seo` text NOT NULL,
  `kategori_icon` varchar(50) NOT NULL,
  `kategori_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `resto_kategori`
--

INSERT INTO `resto_kategori` (`kategori_id`, `kategori_nama`, `kategori_seo`, `kategori_icon`, `kategori_update`) VALUES
(5, 'MAKANAN', 'makanan', 'po po-burger', '2021-07-21 09:57:51'),
(6, 'MINUMAN', 'minuman', 'po po-drinks', '2021-07-21 09:58:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resto_meja`
--

CREATE TABLE `resto_meja` (
  `meja_id` int(2) NOT NULL,
  `meja_nama` varchar(50) NOT NULL,
  `meja_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `resto_meja`
--

INSERT INTO `resto_meja` (`meja_id`, `meja_nama`, `meja_update`) VALUES
(1, '1', '2019-03-09 21:49:24'),
(2, '2', '2019-03-09 21:49:27'),
(3, '3', '2019-03-09 21:49:31'),
(4, '4', '2019-04-29 21:58:04'),
(5, '5', '2019-04-30 11:11:19'),
(6, '6', '2019-04-30 11:11:28'),
(7, '7', '2019-04-30 11:11:37'),
(8, '8', '2019-04-30 11:11:45'),
(9, '9', '2019-04-30 11:11:53'),
(10, '2', '2019-04-30 11:12:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resto_menu`
--

CREATE TABLE `resto_menu` (
  `menu_id` int(10) NOT NULL,
  `kategori_id` int(2) NOT NULL,
  `menu_kode` varchar(5) NOT NULL,
  `menu_nama` varchar(50) NOT NULL,
  `menu_seo` text NOT NULL,
  `menu_deskripsi` text NOT NULL,
  `menu_harga` int(10) NOT NULL DEFAULT 0 COMMENT 'Harga',
  `menu_waktu` int(2) NOT NULL DEFAULT 0 COMMENT 'Waktu Masak',
  `menu_foto` varchar(100) DEFAULT NULL COMMENT 'Foto Masakan',
  `menu_jual` int(10) NOT NULL DEFAULT 0,
  `menu_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `resto_menu`
--

INSERT INTO `resto_menu` (`menu_id`, `kategori_id`, `menu_kode`, `menu_nama`, `menu_seo`, `menu_deskripsi`, `menu_harga`, `menu_waktu`, `menu_foto`, `menu_jual`, `menu_update`) VALUES
(18, 5, '00001', 'AYAM GEPREK BAKAR', 'ayam-geprek-bakar', 'Makanan', 17000, 10, 'Menu_makanan_ayam-geprek-bakar_1626887376.jpg', 0, '2021-07-22 00:09:36'),
(19, 5, '00002', 'AYAM GEPREK', 'ayam-geprek', 'Makanan', 15000, 10, 'Menu_makanan_ayam-geprek_1626887447.jpg', 0, '2021-07-22 00:10:47'),
(20, 5, '00003', 'AYAM CRISPY DADA', 'ayam-crispy-dada', 'Makanan', 17500, 5, 'Menu_makanan_ayam-crispy-dada_1626887533.jpg', 0, '2021-07-22 00:12:14'),
(21, 5, '00004', 'AYAM CRISPY SAYAP', 'ayam-crispy-sayap', 'Makanan', 13500, 5, 'Menu_makanan_ayam-crispy-sayap_1626887582.jpg', 0, '2021-07-22 00:13:02'),
(22, 5, '00005', 'AYAM CRISPY PAHA ATAS', 'ayam-crispy-paha-atas', 'Makanan', 17500, 5, 'Menu_makanan_ayam-crispy-paha-atas_1626887618.jpg', 0, '2021-07-22 00:13:38'),
(23, 5, '00006', 'AYAM CRISPY PAHA BAWAH', 'ayam-crispy-paha-bawah', 'Makanan', 13500, 5, 'Menu_makanan_ayam-crispy-paha-bawah_1626887650.jpg', 0, '2021-07-22 00:14:10'),
(24, 5, '00007', 'AYAM SAUS DADA', 'ayam-saus-dada', 'Makanan', 22500, 10, 'Menu_makanan_ayam-saus-dada_1626887755.jpg', 0, '2021-07-22 00:15:55'),
(25, 5, '00008', 'AYAM SAUS SAYAP', 'ayam-saus-sayap', 'Makanan', 18000, 10, 'Menu_makanan_ayam-saus-sayap_1626887800.jpg', 0, '2021-07-22 00:16:40'),
(26, 5, '00009', 'AYAM SAUS PAHA ATAS', 'ayam-saus-paha-atas', 'Makanan', 22500, 10, 'Menu_makanan_ayam-saus-paha-atas_1626887858.jpg', 0, '2021-07-22 00:17:38'),
(27, 5, '00010', 'AYAM SAUS PAHA BAWAH', 'ayam-saus-paha-bawah', 'Makanan', 20000, 10, 'Menu_makanan_ayam-saus-paha-bawah_1626887902.jpg', 0, '2021-07-22 00:18:22'),
(28, 6, '00011', 'AIR MINERAL', 'air-mineral', 'Minuman', 5000, 5, 'Menu_makanan_air-mineral_1626918755.jpg', 0, '2021-07-22 08:52:36'),
(29, 6, '00012', 'ES MILO', 'es-milo', 'Minuman', 8000, 5, 'Menu_makanan_es-milo_1626918805.jpg', 0, '2021-07-22 08:53:25'),
(30, 6, '00013', 'LEMON TEA', 'lemon-tea', 'Minuman', 6000, 5, 'Menu_makanan_lemon-tea_1626918843.jpg', 0, '2021-07-22 08:54:03'),
(31, 6, '00014', 'ES TEH', 'es-teh', 'Minuman', 4000, 5, 'Menu_makanan_es-teh_1626918873.jpg', 0, '2021-07-22 08:54:33'),
(32, 6, '00015', 'ES CAPPUCINO', 'es-cappucino', 'Minuman', 7500, 5, 'Menu_makanan_es-cappucino_1626918909.jpg', 0, '2021-07-22 08:55:09'),
(33, 6, '00016', 'TEH TARIK', 'teh-tarik', 'Minuman', 7500, 5, 'Menu_makanan_teh-tarik_1626918947.jpg', 0, '2021-07-22 08:55:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resto_meta`
--

CREATE TABLE `resto_meta` (
  `meta_id` int(2) NOT NULL,
  `meta_name` varchar(50) NOT NULL COMMENT 'Nama Website',
  `meta_desc` text DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `meta_author` varchar(100) DEFAULT NULL,
  `meta_developer` varchar(50) DEFAULT NULL,
  `meta_robots` varchar(50) DEFAULT NULL,
  `meta_googlebots` varchar(50) DEFAULT NULL,
  `meta_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `resto_meta`
--

INSERT INTO `resto_meta` (`meta_id`, `meta_name`, `meta_desc`, `meta_keyword`, `meta_author`, `meta_developer`, `meta_robots`, `meta_googlebots`, `meta_update`) VALUES
(1, 'Ayame dr.R', 'Warung Makan Ajib', 'resto', 'NOKENCODE', 'NOKENCODE', 'index, follow', 'index, follow', '2021-07-18 10:50:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resto_order`
--

CREATE TABLE `resto_order` (
  `order_id` int(10) NOT NULL,
  `meja_id` int(2) NOT NULL,
  `order_nama` varchar(50) NOT NULL,
  `order_tanggal` date DEFAULT NULL,
  `order_catatan` text DEFAULT NULL,
  `order_qty` int(5) NOT NULL,
  `order_waktu` int(10) NOT NULL DEFAULT 0,
  `order_diskon` int(10) NOT NULL DEFAULT 0,
  `order_total` int(10) NOT NULL DEFAULT 0,
  `order_bayar` int(10) NOT NULL DEFAULT 0,
  `order_kembali` int(10) DEFAULT 0,
  `order_tgl_bayar` date DEFAULT NULL,
  `order_status` int(1) NOT NULL DEFAULT 1 COMMENT '1=Blm Bayar,2=Bayar',
  `user_username` varchar(30) DEFAULT NULL COMMENT 'User Bayar',
  `order_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `resto_order`
--

INSERT INTO `resto_order` (`order_id`, `meja_id`, `order_nama`, `order_tanggal`, `order_catatan`, `order_qty`, `order_waktu`, `order_diskon`, `order_total`, `order_bayar`, `order_kembali`, `order_tgl_bayar`, `order_status`, `user_username`, `order_update`) VALUES
(10, 2, 'BUDI', '2021-07-22', '', 1, 5, 0, 17500, 0, 0, NULL, 2, NULL, '2021-07-22 00:23:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resto_order_detail`
--

CREATE TABLE `resto_order_detail` (
  `order_detail_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `menu_id` int(10) NOT NULL,
  `order_detail_harga` int(10) NOT NULL DEFAULT 0,
  `order_detail_waktu` int(5) NOT NULL DEFAULT 0,
  `order_detail_qty` int(5) NOT NULL DEFAULT 0,
  `order_detail_subtotal` int(10) NOT NULL DEFAULT 0,
  `order_detail_status` int(1) NOT NULL DEFAULT 1 COMMENT '1=Baru, 2=Selesai',
  `order_detail_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `resto_order_detail`
--

INSERT INTO `resto_order_detail` (`order_detail_id`, `order_id`, `menu_id`, `order_detail_harga`, `order_detail_waktu`, `order_detail_qty`, `order_detail_subtotal`, `order_detail_status`, `order_detail_update`) VALUES
(27, 10, 20, 17500, 5, 1, 17500, 1, '2021-07-22 00:22:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resto_slider`
--

CREATE TABLE `resto_slider` (
  `slider_id` int(2) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `slider_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `resto_slider`
--

INSERT INTO `resto_slider` (`slider_id`, `slider_image`, `slider_update`) VALUES
(3, 'Slider_1626885207.jpg', '2021-07-21 23:33:27'),
(4, 'Slider_1626885244.jpg', '2021-07-21 23:34:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resto_social`
--

CREATE TABLE `resto_social` (
  `social_id` int(2) NOT NULL,
  `social_name` varchar(50) NOT NULL,
  `social_class` varchar(50) NOT NULL,
  `social_url` varchar(100) NOT NULL,
  `social_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `resto_social`
--

INSERT INTO `resto_social` (`social_id`, `social_name`, `social_class`, `social_url`, `social_update`) VALUES
(1, 'Facebook', 'facebook', 'https://facebook.com/', '2020-11-19 11:00:28'),
(3, 'Instagram', 'instagram', 'https://instagram.com/', '2020-11-19 11:00:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resto_users`
--

CREATE TABLE `resto_users` (
  `user_username` varchar(30) NOT NULL,
  `user_password` text NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_avatar` varchar(100) DEFAULT NULL,
  `user_status` enum('Aktif','Tidak Aktif') NOT NULL DEFAULT 'Aktif',
  `user_level` enum('Admin','Bar','Dapur','Kasir','-') NOT NULL DEFAULT '-',
  `user_date_create` datetime NOT NULL,
  `user_date_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `resto_users`
--

INSERT INTO `resto_users` (`user_username`, `user_password`, `user_name`, `user_email`, `user_avatar`, `user_status`, `user_level`, `user_date_create`, `user_date_update`) VALUES
('admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'ADMINISTRATOR', 'dansdmedia@gmail.com', 'Avatar_admin_1542355052.jpg', 'Aktif', 'Admin', '0000-00-00 00:00:00', '2020-11-19 10:58:31'),
('dapur', '7c11a6cf40cff2ad6cf71aa10dfc092167320a90', 'DAPUR', 'dapur@gmail.com', NULL, 'Aktif', 'Dapur', '2019-03-09 21:52:27', '2019-07-09 19:24:44'),
('kasir', '8691e4fc53b99da544ce86e22acba62d13352eff', 'KASIR', 'kasir@gmail.com', NULL, 'Aktif', 'Kasir', '2019-03-09 21:52:14', '2019-07-09 19:25:01');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_akses`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_akses` (
`akses_id` int(2)
,`user_username` varchar(30)
,`kategori_id` int(2)
,`akses_update` datetime
,`kategori_nama` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_menu`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_menu` (
`menu_id` int(10)
,`kategori_id` int(2)
,`menu_kode` varchar(5)
,`menu_nama` varchar(50)
,`menu_seo` text
,`menu_deskripsi` text
,`menu_harga` int(10)
,`menu_waktu` int(2)
,`menu_foto` varchar(100)
,`menu_jual` int(10)
,`menu_update` datetime
,`kategori_nama` varchar(50)
,`kategori_seo` text
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_order`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_order` (
`order_id` int(10)
,`meja_id` int(2)
,`order_nama` varchar(50)
,`order_tanggal` date
,`order_catatan` text
,`order_qty` int(5)
,`order_waktu` int(10)
,`order_diskon` int(10)
,`order_total` int(10)
,`order_bayar` int(10)
,`order_kembali` int(10)
,`order_tgl_bayar` date
,`order_status` int(1)
,`user_username` varchar(30)
,`order_update` datetime
,`meja_nama` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_order_detail`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_order_detail` (
`order_detail_id` int(10)
,`order_id` int(10)
,`menu_id` int(10)
,`order_detail_harga` int(10)
,`order_detail_waktu` int(5)
,`order_detail_qty` int(5)
,`order_detail_subtotal` int(10)
,`order_detail_status` int(1)
,`order_detail_update` datetime
,`menu_kode` varchar(5)
,`menu_nama` varchar(50)
,`menu_seo` text
,`kategori_id` int(2)
,`order_status` int(1)
,`order_tanggal` date
,`meja_id` int(2)
,`meja_nama` varchar(50)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `v_akses`
--
DROP TABLE IF EXISTS `v_akses`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_akses`  AS   (select `a`.`akses_id` AS `akses_id`,`a`.`user_username` AS `user_username`,`a`.`kategori_id` AS `kategori_id`,`a`.`akses_update` AS `akses_update`,`k`.`kategori_nama` AS `kategori_nama` from (`resto_akses` `a` join `resto_kategori` `k` on(`a`.`kategori_id` = `k`.`kategori_id`)))  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_menu`
--
DROP TABLE IF EXISTS `v_menu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_menu`  AS   (select `m`.`menu_id` AS `menu_id`,`m`.`kategori_id` AS `kategori_id`,`m`.`menu_kode` AS `menu_kode`,`m`.`menu_nama` AS `menu_nama`,`m`.`menu_seo` AS `menu_seo`,`m`.`menu_deskripsi` AS `menu_deskripsi`,`m`.`menu_harga` AS `menu_harga`,`m`.`menu_waktu` AS `menu_waktu`,`m`.`menu_foto` AS `menu_foto`,`m`.`menu_jual` AS `menu_jual`,`m`.`menu_update` AS `menu_update`,`k`.`kategori_nama` AS `kategori_nama`,`k`.`kategori_seo` AS `kategori_seo` from (`resto_menu` `m` join `resto_kategori` `k` on(`m`.`kategori_id` = `k`.`kategori_id`)))  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_order`
--
DROP TABLE IF EXISTS `v_order`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_order`  AS   (select `o`.`order_id` AS `order_id`,`o`.`meja_id` AS `meja_id`,`o`.`order_nama` AS `order_nama`,`o`.`order_tanggal` AS `order_tanggal`,`o`.`order_catatan` AS `order_catatan`,`o`.`order_qty` AS `order_qty`,`o`.`order_waktu` AS `order_waktu`,`o`.`order_diskon` AS `order_diskon`,`o`.`order_total` AS `order_total`,`o`.`order_bayar` AS `order_bayar`,`o`.`order_kembali` AS `order_kembali`,`o`.`order_tgl_bayar` AS `order_tgl_bayar`,`o`.`order_status` AS `order_status`,`o`.`user_username` AS `user_username`,`o`.`order_update` AS `order_update`,`m`.`meja_nama` AS `meja_nama` from (`resto_order` `o` join `resto_meja` `m` on(`o`.`meja_id` = `m`.`meja_id`)))  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_order_detail`
--
DROP TABLE IF EXISTS `v_order_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_order_detail`  AS   (select `d`.`order_detail_id` AS `order_detail_id`,`d`.`order_id` AS `order_id`,`d`.`menu_id` AS `menu_id`,`d`.`order_detail_harga` AS `order_detail_harga`,`d`.`order_detail_waktu` AS `order_detail_waktu`,`d`.`order_detail_qty` AS `order_detail_qty`,`d`.`order_detail_subtotal` AS `order_detail_subtotal`,`d`.`order_detail_status` AS `order_detail_status`,`d`.`order_detail_update` AS `order_detail_update`,`m`.`menu_kode` AS `menu_kode`,`m`.`menu_nama` AS `menu_nama`,`m`.`menu_seo` AS `menu_seo`,`m`.`kategori_id` AS `kategori_id`,`o`.`order_status` AS `order_status`,`o`.`order_tanggal` AS `order_tanggal`,`o`.`meja_id` AS `meja_id`,`j`.`meja_nama` AS `meja_nama` from (((`resto_order_detail` `d` join `resto_order` `o` on(`d`.`order_id` = `o`.`order_id`)) join `resto_menu` `m` on(`d`.`menu_id` = `m`.`menu_id`)) join `resto_meja` `j` on(`o`.`meja_id` = `j`.`meja_id`)))  ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `resto_akses`
--
ALTER TABLE `resto_akses`
  ADD PRIMARY KEY (`akses_id`),
  ADD KEY `user_username` (`user_username`);

--
-- Indeks untuk tabel `resto_contact`
--
ALTER TABLE `resto_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indeks untuk tabel `resto_kategori`
--
ALTER TABLE `resto_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `resto_meja`
--
ALTER TABLE `resto_meja`
  ADD PRIMARY KEY (`meja_id`);

--
-- Indeks untuk tabel `resto_menu`
--
ALTER TABLE `resto_menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indeks untuk tabel `resto_meta`
--
ALTER TABLE `resto_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indeks untuk tabel `resto_order`
--
ALTER TABLE `resto_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `resto_order_ibfk_1` (`meja_id`);

--
-- Indeks untuk tabel `resto_order_detail`
--
ALTER TABLE `resto_order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `resto_order_detail_ibfk_1` (`order_id`),
  ADD KEY `resto_order_detail_ibfk_2` (`menu_id`);

--
-- Indeks untuk tabel `resto_slider`
--
ALTER TABLE `resto_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indeks untuk tabel `resto_social`
--
ALTER TABLE `resto_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indeks untuk tabel `resto_users`
--
ALTER TABLE `resto_users`
  ADD PRIMARY KEY (`user_username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `resto_akses`
--
ALTER TABLE `resto_akses`
  MODIFY `akses_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `resto_contact`
--
ALTER TABLE `resto_contact`
  MODIFY `contact_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `resto_kategori`
--
ALTER TABLE `resto_kategori`
  MODIFY `kategori_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `resto_meja`
--
ALTER TABLE `resto_meja`
  MODIFY `meja_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `resto_menu`
--
ALTER TABLE `resto_menu`
  MODIFY `menu_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `resto_meta`
--
ALTER TABLE `resto_meta`
  MODIFY `meta_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `resto_order`
--
ALTER TABLE `resto_order`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `resto_order_detail`
--
ALTER TABLE `resto_order_detail`
  MODIFY `order_detail_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `resto_slider`
--
ALTER TABLE `resto_slider`
  MODIFY `slider_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `resto_social`
--
ALTER TABLE `resto_social`
  MODIFY `social_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `resto_akses`
--
ALTER TABLE `resto_akses`
  ADD CONSTRAINT `resto_akses_ibfk_1` FOREIGN KEY (`user_username`) REFERENCES `resto_users` (`user_username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `resto_menu`
--
ALTER TABLE `resto_menu`
  ADD CONSTRAINT `resto_menu_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `resto_kategori` (`kategori_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `resto_order`
--
ALTER TABLE `resto_order`
  ADD CONSTRAINT `resto_order_ibfk_1` FOREIGN KEY (`meja_id`) REFERENCES `resto_meja` (`meja_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `resto_order_detail`
--
ALTER TABLE `resto_order_detail`
  ADD CONSTRAINT `resto_order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `resto_order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `resto_order_detail_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `resto_menu` (`menu_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
