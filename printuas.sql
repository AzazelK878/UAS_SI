-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2024 at 05:17 AM
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
-- Database: `print`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `foto` varchar(100) DEFAULT 'assets/img/no-pic.png',
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `foto`, `username`, `password`) VALUES
(1, 'Administrator', 'assets/img/foto_profil/1560931285.png', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail` int(11) NOT NULL,
  `jml_pesan` int(11) NOT NULL,
  `desain` tinyint(1) NOT NULL,
  `file` varchar(100) NOT NULL,
  `catatan` varchar(255) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail`, `jml_pesan`, `desain`, `file`, `catatan`, `id_produk`, `id_transaksi`) VALUES
(1, 2, 1, 'upload/adi_purnomo/1560844817.png', 'papapapapa', 1, 1),
(2, 1, 1, 'upload/adi_purnomo/1560844839.png', 'kakakakakak', 2, 1),
(3, 1, 1, 'upload/alessa_diandra/1561172946.png', 'Tolong dibuat secepatnya\r\n', 2, 2),
(4, 7, 0, '', '33', 1, 3),
(5, 5, 0, 'upload/rafi/1717427598.png', '123456789', 1, 4),
(6, 8, 0, 'upload/naufal_rafi_hanifan/1717467535.png', 'ttette', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `info_toko`
--

CREATE TABLE `info_toko` (
  `alamat` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `bank` varchar(20) NOT NULL,
  `atas_nama` varchar(50) NOT NULL,
  `rek` varchar(20) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `instagram` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `info_toko`
--

INSERT INTO `info_toko` (`alamat`, `email`, `telp`, `fax`, `bank`, `atas_nama`, `rek`, `facebook`, `twitter`, `instagram`) VALUES
('Jl. Raya Cikoneng No.263, Cikoneng, Kec. Cikoneng, Kabupaten Ciamis, Jawa Barat 46261, Indonesia', 'cvinternusa@jasacetak.com', '(0265) 774636', '1234567', 'BCA', 'Naufal Rafi Hanifan', '12345678', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `gambar` varchar(100) DEFAULT 'assets/img/no-pic.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `gambar`) VALUES
(1, 'Uncategorized', ''),
(5, 'Indoor', 'assets/img/produk/Indoor/kat-icon.png'),
(6, 'Outdoor', 'assets/img/produk/Outdoor/kat-icon.png'),
(7, 'Display', 'assets/img/produk/Display/kat-icon.png'),
(8, 'Digital A3', 'assets/img/produk/Digital A3/kat-icon.png'),
(9, 'T-Shirt', 'assets/img/produk/T-Shirt/kat-icon.png');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `jml_pesan` int(11) NOT NULL,
  `desain` tinyint(1) NOT NULL DEFAULT 0,
  `file` varchar(100) NOT NULL,
  `catatan` varchar(255) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi_pembayaran`
--

CREATE TABLE `konfirmasi_pembayaran` (
  `id_konfirmasi` int(11) NOT NULL,
  `nama_bank` varchar(20) NOT NULL,
  `nama_akun` varchar(50) NOT NULL,
  `no_rek` varchar(20) NOT NULL,
  `file_bukti` varchar(100) NOT NULL,
  `id_transaksi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `konfirmasi_pembayaran`
--

INSERT INTO `konfirmasi_pembayaran` (`id_konfirmasi`, `nama_bank`, `nama_akun`, `no_rek`, `file_bukti`, `id_transaksi`) VALUES
(1, 'Mandiri', 'Adi Purnomo', '0124151212612', 'upload/bukti/pembayaran/1560852370.png', 1),
(2, 'DKI', 'Alessa Sandra', '51210512012', 'upload/bukti/pembayaran/1561173009.png', 2),
(3, 'wwww', '122', '22', 'upload/bukti/pembayaran/1717425980.png', 3),
(4, 'wwww', '122', '22', 'upload/bukti/pembayaran/1717427719.png', 4),
(5, 'sanjdaj', 'jdajsjda', 'jdaj', 'upload/bukti/pembayaran/1717467567.png', 5);

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pesan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `nama`, `email`, `pesan`) VALUES
(1, 'Naufal Rafi Hanifan', 'rafi@gmail.com', 'Eee');

-- --------------------------------------------------------

--
-- Table structure for table `ongkir`
--

CREATE TABLE `ongkir` (
  `id_ongkir` int(11) NOT NULL,
  `nama_prov` varchar(100) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `nama_kec` varchar(100) NOT NULL,
  `metode` enum('JNE REG','JNE YES') NOT NULL,
  `harga` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ongkir`
--

INSERT INTO `ongkir` (`id_ongkir`, `nama_prov`, `nama_kota`, `nama_kec`, `metode`, `harga`) VALUES
(5, 'Jawa Barat', 'Tasikmalaya', 'Tawang', 'JNE REG', 11000),
(7, 'Jawa Barat', 'Tasikmalaya', 'Bungursari', 'JNE REG', 11000),
(9, 'Jawa Barat', 'Tasikmalaya', 'Purbaratu', 'JNE REG', 15000),
(10, 'Jawa Barat', 'Tasikmalaya', 'Kahuripan', 'JNE YES', 18000),
(11, 'Jawa Barat', 'Tasikmalaya', 'Cipedes', 'JNE REG', 13000),
(12, 'Jawa Barat', 'Tasikmalaya', 'Kawalu', 'JNE YES', 16000),
(13, 'Jawa Barat', 'Tasikmalaya', 'Indihiang', 'JNE REG', 13000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL DEFAULT 'assets/img/no-pic.png',
  `harga` decimal(10,0) NOT NULL,
  `keterangan` text NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `gambar`, `harga`, `keterangan`, `id_kategori`) VALUES
(4, 'Buku Yasin', 'assets/img/produk/Indoor/produk-1.jpg.jpg', 5000, 'Meyediakan pemesanan yasin secara bacth maupun satuan', 5),
(5, 'Cover Map Perusahaan', 'assets/img/produk/Indoor/produk-2.jpg.jpg', 10000, 'Meyediakan kebutuhan customisasi berbagai jenis kebutuhan cover map perusahaan', 5),
(6, 'Nota Pembelian Custom', 'assets/img/produk//produk-3.jpg.jpg', 20000, 'Menyediakan customisasi nota pembelian sesuai kebutuhan', 0),
(7, 'Customisasi Form Intansi', 'assets/img/produk/Indoor/produk-4.jpg.jpg', 50000, 'Customisasi Form Sesuai Dengan Kebutuhan', 5),
(8, 'Berbagai Kebutuhan Labelisasi', 'assets/img/produk/Digital A3/produk-5.jpg.jpg', 700000, 'Customisasi label sesuai dengan kebutuhan perusahaan', 8),
(9, 'Cover Surat Perusahaan', 'assets/img/produk/Display/produk-7.jpg.jpg', 6000, 'Menyediakan Berbagai kebutuhan surat menyurat perusahaan', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tentang`
--

CREATE TABLE `tentang` (
  `tgl` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tentang`
--

INSERT INTO `tentang` (`tgl`, `text`) VALUES
('2019-06-21 21:28:33', 'PGgxIHN0eWxlPSJ0ZXh0LWFsaWduOiBjZW50ZXI7Ij48c3Ryb25nPkluaSBIZWFkaW5nIFRlbnRhbmc8L3N0cm9uZz48L2gxPg0KPHA+Jm5ic3A7PC9wPg0KPHRhYmxlIHN0eWxlPSJ3aWR0aDogMTAwJTsgYm9yZGVyLWNvbGxhcHNlOiBjb2xsYXBzZTsiIGJvcmRlcj0iMCI+DQo8dGJvZHk+DQo8dHI+DQo8dGQgc3R5bGU9IndpZHRoOiAzNy4zNjk0JTsiPjxpbWcgc3JjPSJodHRwOi8vbG9jYWxob3N0L3Byb2plY3QvcHJpbnQvYXNzZXRzL3BsdWdpbnMvc291cmNlL3Bob3RvMi5wbmciIGFsdD0iIiB3aWR0aD0iMzc3IiBoZWlnaHQ9IjI1MSIgLz48L3RkPg0KPHRkIHN0eWxlPSJ3aWR0aDogNjIuNjMwNiU7Ij4NCjxkaXY+DQo8ZGl2PkxvcmVtIGlwc3VtIGRvbG9yIHNpdCwgYW1ldCBjb25zZWN0ZXR1ciBhZGlwaXNpY2luZyBlbGl0LiBDdW1xdWUsIGxpYmVybyBxdWFlcmF0IGlwc3VtIGJsYW5kaXRpaXMgY29uc2VxdWF0dXIgc2l0IHNlcXVpIGF0cXVlIHN1c2NpcGl0IG5pc2kgZW9zIGlwc2EgcXVhbSBkZWxlbml0aSBpbGx1bSBtYWlvcmVzLCBhc3BlcmlvcmVzIHJlcnVtIHF1YXNpIHJlcGVsbGF0IGV2ZW5pZXQuIExvcmVtLCBpcHN1bSBkb2xvciBzaXQgYW1ldCBjb25zZWN0ZXR1ciBhZGlwaXNpY2luZyBlbGl0LiBFbGlnZW5kaSBpcHNhIGlwc3VtIGFjY3VzYW11cyBibGFuZGl0aWlzIGRvbG9yIHRlbXBvcmlidXMgcG9ycm8sIG9kaXQgY3VscGEgYSBhbGlxdWFtIGF0cXVlLCB2ZW5pYW0gZG9sb3JlcyBhdXQuIFNpdCBzaW50IG5pc2kgcXVhZXJhdCB2ZXJpdGF0aXMgZXhlcmNpdGF0aW9uZW0uPC9kaXY+DQo8ZGl2PiZuYnNwOzwvZGl2Pg0KPGRpdj4NCjxkaXY+DQo8ZGl2PkxvcmVtIGlwc3VtIGRvbG9yIHNpdCBhbWV0IGNvbnNlY3RldHVyIGFkaXBpc2ljaW5nIGVsaXQuIFJlcnVtIGxhYm9ydW0gdG90YW0gcXVpcyB2b2x1cHRhdGVtIGN1bXF1ZSBtYXhpbWUgaXBzdW0hIFF1b2QgbnVsbGEgdXQgaXRhcXVlLCBleGNlcHR1cmkgbmVjZXNzaXRhdGlidXMgbGF1ZGFudGl1bSBpbGx1bSBhZGlwaXNjaT8gTWludXMgc2ltaWxpcXVlIGEgc29sdXRhIHJlcHJlaGVuZGVyaXQuJm5ic3A7DQo8ZGl2Pg0KPGRpdj5Mb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCBjb25zZWN0ZXR1ciBhZGlwaXNpY2luZyBlbGl0LiBRdWlhIGRvbG9ydW0gZGVsZW5pdGkgbW9kaSBhYiwgaXBzdW0gbW9sZXN0aWFlIGV4cGVkaXRhIG5paGlsIGJlYXRhZSBpbmNpZHVudC4gQWQgZGVsZWN0dXMgcXVpYnVzZGFtIHRlbmV0dXIgbGFib3JlIHNhZXBlIHF1aXNxdWFtIGRvbG9yZXMgaXBzYW0gZmFjaWxpcyBsYWJvcnVtLjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvdGQ+DQo8L3RyPg0KPC90Ym9keT4NCjwvdGFibGU+DQo8cD4mbmJzcDs8L3A+DQo8cD5Mb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCBjb25zZWN0ZXR1ciBhZGlwaXNpY2luZyBlbGl0LiBUZW1wb3JlIGVycm9yIGl0YXF1ZSBldW0sIGVuaW0gZWFydW0gaGljIGRlbGVjdHVzIGRvbG9yZXMgaWxsbyBwb3NzaW11cyBjb25zZXF1YXR1ciBxdWlzLCBibGFuZGl0aWlzIHJlcGVsbGVuZHVzIG5lcXVlIG1hZ25pIHNhcGllbnRlIGFjY3VzYW11cyBwbGFjZWF0IGlzdGUgbWFnbmFtLiBMb3JlbSwgaXBzdW0gZG9sb3Igc2l0IGFtZXQgY29uc2VjdGV0dXIgYWRpcGlzaWNpbmcgZWxpdC4gU2FlcGUgY29tbW9kaSBxdW8gbnVtcXVhbSByZWljaWVuZGlzIHZpdGFlIHNpbWlsaXF1ZSBxdWlidXNkYW0gZW9zIGVsaWdlbmRpIGF0IGl1c3RvIHZlcm8sIHF1aWEgZG9sb3IgY3VtIHBvc3NpbXVzIG9mZmljaWEuIEluY2lkdW50IHV0IHZvbHVwdGFzIGRlc2VydW50ISBMb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCBjb25zZWN0ZXR1ciBhZGlwaXNpY2luZyBlbGl0LiBRdW9kIGEgc2VkIGRvbG9yaWJ1cyBhcmNoaXRlY3RvIGV4cGVkaXRhIHRlbmV0dXIsIHRlbXBvcmlidXMgYmVhdGFlIHNpbnQgZG9sb3JlcyBvZmZpY2lpcyBhdCBpbmNpZHVudCBpZCBpdXJlIHRlbXBvcmUgY29uc2VxdXVudHVyIGVvcyBoYXJ1bSB2b2x1cHRhdHVtIGVsaWdlbmRpLjwvcD4NCjxkaXY+TG9yZW0gaXBzdW0gZG9sb3Igc2l0IGFtZXQgY29uc2VjdGV0dXIgYWRpcGlzaWNpbmcgZWxpdC4gSXBzYSBhc3N1bWVuZGEgdmVyaXRhdGlzIHF1YWVyYXQgZmFjaWxpcyBuZWNlc3NpdGF0aWJ1cywgaXRhcXVlIGRvbG9yIHZvbHVwdGF0aWJ1cywgYXV0ZW0gbmVzY2l1bnQgZG9sb3JpYnVzIGxpYmVybyBsYWJvcmUgZnVnaWF0IGV4cGxpY2Fiby4gRXNzZSBpcHNhIHRlbmV0dXIgZGlnbmlzc2ltb3MgZXQgbGFib3JlISBMb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCBjb25zZWN0ZXR1ciBhZGlwaXNpY2luZyBlbGl0LiBNYWduYW0sIGVzc2UgZGVzZXJ1bnQgb2ZmaWNpaXMgbGFib3Jpb3NhbSBjdW0sIGFkaXBpc2NpIHNvbHV0YSBzdW50IGNvcnBvcmlzIG1vbGVzdGlhcyBwb3JybyBwbGFjZWF0IG5hbS4gTmVxdWUgYXBlcmlhbSwgbmVtbyBjdXBpZGl0YXRlIGVsaWdlbmRpIGFsaWFzIGV4ZXJjaXRhdGlvbmVtIHZvbHVwdGFzITwvZGl2Pg==');

-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE `testimoni` (
  `id_testi` int(11) NOT NULL,
  `tgl` datetime NOT NULL,
  `pesan` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `testimoni`
--

INSERT INTO `testimoni` (`id_testi`, `tgl`, `pesan`, `status`, `id_user`) VALUES
(1, '2019-06-21 04:12:48', 'Hasil bagus, desain juga keren, thanks ya percetakan Internusa.', 1, 3),
(2, '2019-06-26 11:53:59', 'Aku suka hasil cetaknya, bersih, mengkilap dan awet. Terima kasih jasacetak', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `kode_transaksi` varchar(10) NOT NULL,
  `tgl` datetime NOT NULL DEFAULT current_timestamp(),
  `metode_pengiriman` varchar(10) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `resi` varchar(20) DEFAULT NULL,
  `bukti_kirim` varchar(100) DEFAULT NULL,
  `total` decimal(10,0) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `kode_transaksi`, `tgl`, `metode_pengiriman`, `alamat`, `resi`, `bukti_kirim`, `total`, `status`, `id_user`) VALUES
(1, '#TRK-0001', '2019-06-18 15:02:32', '1', 'Jl. Raya Petir, No. 14 - Serang, Curug, Kota Serang, Banten 42171', '21093530075131', 'upload/bukti/kirim/1560855563.png', 2624800, 4, 1),
(2, '#TRK-0002', '2019-06-22 10:09:12', '9', 'Jl. Raya Petir, No. 14 - Serang, Curug, Kota Serang, Banten 42171', '2130201923012', 'upload/bukti/kirim/1561544030.png', 2145000, 4, 2),
(3, '#TRK-0003', '2024-06-03 21:45:43', '5', 'JL. Cikoneng RT/RW 004/003, Sukamaju Kaler, Indihiang, Tasikmalaya', NULL, NULL, 1501300, 1, 3),
(4, '#TRK-0004', '2024-06-03 22:14:17', '5', 'JL. Cikoneng RT/RW 004/003, Sukamaju Kaler, Indihiang, Tasikmalaya', NULL, NULL, 1075500, 1, 3),
(5, '#TRK-0005', '2024-06-04 09:19:09', '13', 'jjsjsj', NULL, NULL, 1716200, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL DEFAULT 'no-foto.png',
  `email` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `foto`, `email`, `telp`, `provinsi`, `kota`, `kecamatan`, `alamat`, `keterangan`, `password`) VALUES
(3, 'Naufal Rafi Hanifan', 'foto-rafi.jpg', 'rafi@gmail.com', '09812345678', '', '', '', '', '', '139c4e89cdbedaf144d05ca54a12a57b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD PRIMARY KEY (`id_konfirmasi`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `ongkir`
--
ALTER TABLE `ongkir`
  ADD PRIMARY KEY (`id_ongkir`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id_testi`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  MODIFY `id_konfirmasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ongkir`
--
ALTER TABLE `ongkir`
  MODIFY `id_ongkir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id_testi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
