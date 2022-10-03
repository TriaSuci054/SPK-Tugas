-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2022 at 04:41 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spfuzzymamdani1`
--

-- --------------------------------------------------------

--
-- Table structure for table `analisa_hasil`
--

CREATE TABLE `analisa_hasil` (
  `id` int(4) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelamin` char(10) NOT NULL,
  `umur` varchar(3) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kd_penyakit` char(4) NOT NULL,
  `tanggal` datetime NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analisa_hasil`
--

INSERT INTO `analisa_hasil` (`id`, `nama`, `kelamin`, `umur`, `alamat`, `kd_penyakit`, `tanggal`, `email`) VALUES
(492, 'Rahmi', 'Wanita', '22', 'Lhokseumawe', 'P001', '2012-10-04 03:09:45', 'rahmiana@gmail.com'),
(536, 'Cut Maria Aini', 'Wanita', '23', 'langkahan', 'P002', '2013-07-28 18:08:23', 'cutmaria@yahoo.com'),
(560, 'Mutiara', 'Wanita', '26', 'Lhok bintanng hu lhoksukon', 'P003', '2015-12-28 02:47:33', 'mutiarz@yahoo.com'),
(535, 'Cut Ulvatul jannah', 'Wanita', '28', 'Geudong', 'P006', '2013-07-28 18:08:23', 'ulva19@gmail.com'),
(572, 'Mutiara', 'Wanita', '26', 'Lhok bintanng hu lhoksukon', 'P004', '2015-12-28 02:47:33', 'mutiaraindah@gmail.c'),
(558, 'Dewi Ratna', 'Wanita', '22', 'Simpang Kramat', 'P005', '2015-01-22 10:11:27', 'ratnadewi12@gmail.co'),
(569, 'Misbahul Jannah', 'Wanita', '26', 'Lhok bintanng hu lhoksukon', 'P001', '2015-12-28 02:47:33', 'misbah22@gmail.com'),
(557, 'Dewi Mustika', 'Wanita', '31', 'Mane Kareung', 'P003', '2015-01-22 10:11:27', 'mustikaindah@gmail.c'),
(580, 'Faisal', 'Laki-laki', '22', 'Lhokseumawe', 'P003', '2016-01-29 12:23:49', 'arongan@gmail.com'),
(581, 'Mardiya', 'Laki-laki', '22', 'geudong', 'P003', '2016-12-19 09:53:40', 'martunis@gmail.com'),
(545, 'Cut Yunita', 'Wanita', '22', 'Buloh Raya', 'P001', '2013-08-22 09:26:35', 'cuticut@yahoo.com'),
(546, 'Maisura', 'Wanita', '26', 'Buloh Raya', 'P004', '2013-08-21 09:26:35', 'maisura@gmail.com'),
(602, 'Tafa', 'Laki-laki', '18', 'Gresik', 'P005', '2022-10-02 19:48:20', ''),
(603, 'Tafa', 'Laki-laki', '18', 'Gresik', 'P002', '2022-10-02 19:48:20', '');

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `kd_gejala` char(4) NOT NULL,
  `gejala` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`kd_gejala`, `gejala`) VALUES
('G001', 'Mual'),
('G002', 'Muntah'),
('G003', 'Muntah agak asam'),
('G004', 'Muntah darah'),
('G005', 'Panas'),
('G006', 'Sakit perut'),
('G007', 'Buang air besar terus-menerus'),
('G008', 'Mulut luka'),
('G009', 'Demam'),
('G010', 'Bibir pecah-pecah'),
('G011', 'Badan lesu atau lemah'),
('G012', 'Pusing'),
('G013', 'Kehilangan nafsu makan'),
('G014', 'Perut terasa nyeri, pedih, kembung, dan sesak (sebak) pada bagian atas perut'),
('G015', 'Mulut kering'),
('G016', 'Sering sendawa terutama bila dalam keadaan lapar'),
('G017', 'Sulit tidur karena gangguan rasa sakit pada daerah perut sebelah atas (ulu hati) '),
('G018', 'Bengkak di kedua rahang/pipi'),
('G019', 'Bau nafas tidak sedap'),
('G020', 'Darah dan lendir dalam kotoran'),
('G021', 'Tidak buang air besar lebih dari 3 hari');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit_solusi`
--

CREATE TABLE `penyakit_solusi` (
  `kd_penyakit` char(4) NOT NULL,
  `nama_penyakit` varchar(30) DEFAULT NULL,
  `definisi` text DEFAULT NULL,
  `solusi` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit_solusi`
--

INSERT INTO `penyakit_solusi` (`kd_penyakit`, `nama_penyakit`, `definisi`, `solusi`) VALUES
('P001', 'Gastritis', 'Gastritis adalah peradangan pada lapisan lambung. Penyebab gastritis adalah terlalu banyak minum-minuman beralkohol, penggunaan jangka panjang obat aspirin dan ibuprofen, dll. Gastritis juga dapat muncul setelah operasi, luka trauma, luka bakar, atau infeksi berat. Penyebab kronisnya adalah infeksi bakteri Heliobacter pylori, refluks empedu, dan stress. Gejala gastritis adalah gangguan pencernaan, perut kembung, mual, dan muntah. Cara mencegah gastritis adalah dengan menghindari makanan pedas atau panas.', 'Istirahat di tempat tidur selama masih demam dan pembengkakan kelenjar parotis masih ada. Simtomatik diberikan kompres demam atau dingin serta dapat diberikan analgetik. Diet makanan cair atau lunak tergantung dari kemampuan menelan. Kortikosteroid diberikan selama 2-4 hari dan globulin gama dipikirkan apabila terdapat orkitis.'),
('P002', 'Maag', 'Maag atau tukak lambung adalah peradangan pada dinding lambung yang disebabkan oleh pengeluaran asam lambung (asam klorida) yang berlebihan. Asam lambung secara rutin keluar untuk membantu menghancurkan makanan. Namun jika tidak ada makanan dalam jangka waktu tertentu, maka asam lambung akan tetap keluar dan mengikis dinding lambung. Ketika asam lambung tersebut mengenai saraf, terjadilah rasa sakit yang luar biasa yang biasa kita kenal sebagai maag. Cara mencegah maag adalah dengan makan teratur dan menghindari makanan yang terlalu pedas. Cara mengobati penyakit maag adalah dengan meminum obat antasida.', '1.Tidur dengan mulut terbuka menyebabkan mulut kering di pagi hari. Sebisa mungkin bernapaslah dengan hidung ketika tidur.\r\n\r\n2. Menggunakan produk pencegah mulut kering. Untuk lebih aman, konsultasikan dengan dokter mengenai produk yang paling tepat.\r\n\r\n3. Menjaga kebersihan mulut. Sikat gigi dan berkumur secara teratur. Gunakan pula benang gigi (dental floss).\r\n\r\n4. Minum air sedikitnya 8 gelas per hari.\r\n\r\n5. Hindari konsumsi kafein dan alkohol'),
('P003', 'Kanker Lambung', 'Kanker lambung adalah kanker yang berkembang di area lambung. Gejala awal kanker lambung adalah mulas, nyeri pada perut bagian atas, mual, dan kehilangan nafsu makan. Gejala selanjutnya adalah penurunan berat badan, kulit kuning, muntah, kesulitan menelan, dan terdapat darah dalam tinja. Kanker dapat menyebar dari lambung ke bagian lain seperti hati, paru-paru, tulang, lapisan perut, dan kelenjar getah bening. Penyebab utama kanker lambung adalah infeksi bakteri Helicobacter pylori. Penyebab lainnya adalah merokok.', 'Makan secara teratur sangat dianjurkan untuk mengurangi resiko  timbulnya tukak lambung.'),
('P004', 'Tumor Lambung / Polip Lambung', 'Tumor lambung adalah tumor yang ditandai dengan tumbuhnya polip (bintil-bintil) pada lambung. Tumor lambung masih bisa diangkat dan tidak berbahaya karena tidak menyebar ke organ tubuh lain. Salah satu penyebab tumor lambung adalah terlalu sering mengkonsumsi makanan bernitrat. Nitrat adalah zat pengawet yang biasa terdapat di makanan dan minuman dalam kemasan. Mengonsumsi terlalu banyak makanan yang diasinkan dan diasap serta merokok juga beresiko terjadinya tumor lambung. Tumor lambung akan menjadi kanker lambung jika polip berukuran lebih dari 2 cm, terdapat selglandular, dan terdapat banyak polip di dalam lambung.', 'segera lakukan pembedahan untuk mencegah terjadinya ruptur (peca)dan Pembedahan yang segera dilakukan bisa mengurangi angka kematian pada apendisitis.'),
('P005', 'Dispepsia', 'Dispepsia\r\nDispepsia adalah gangguan pencernaan yang ditandai dengan nyeri dan perih di bagian atas perut serta perut terasa penuh padahal belum makan. Terkadang disertai dengan perut kembung, bersendawa, mual, dan maag. Dispepsia sering terjadi pada penderita GERD dan gastritis.', '1. Menerapkan perilaku hidup sehat dengan mencuci tangan memakai sabun terutama setelah kontak dengan benda-benda kotor. \r\n2. Meningkatkan kebersihan lingkungan dan pemberian gizi yang seimbang. \r\n3. Menjaga kebersihan dari makanan atau minuman yang Anda makan.\r\n4. untuk pengobatannya pun anda dapat menkonsumsi obat-obat tradisional seperti jus kulit mangis, dan daun sirsak. Atau anda langsung berobat ke dokter.'),
('P006', 'GERD (Gastro-Esophageal Reflux', 'GERD adalah kerusakan kronis pada mukosa lambung yang disebabkan oleh asam lambung yang terus mengikis dinding lambung. Banyak orang yang mengira penyakit ini mirip maag. Namun ada beberapa gejala khusus antara lain sakit saat menelan, rasa asam di mulut, sering bersendawa, dan sering terserang radang tenggorokan. Penyebab penyakit ini adalah kecemasan, depresi, langsung tidur setelah makan, makan makanan yang terlalu pedas atau asam, jarang olahraga, dan kebiasaan merokok.', 'Untuk  mencegah sembelit dianjurkan untuk perbanyak mengkonsumsi makanan yang berserat, kurangi makan daging, buang air besar secara teratur setiap hari dan perbanyak makan sayur dan buah-buahan serta minum air putih.');

-- --------------------------------------------------------

--
-- Table structure for table `relasi`
--

CREATE TABLE `relasi` (
  `id_relasi` int(4) NOT NULL,
  `kd_gejala` char(4) NOT NULL,
  `kd_penyakit` char(4) NOT NULL,
  `bobot` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relasi`
--

INSERT INTO `relasi` (`id_relasi`, `kd_gejala`, `kd_penyakit`, `bobot`) VALUES
(1, 'G008', 'P002', 5),
(2, 'G018', 'P001', 5),
(3, 'G013', 'P001', 1),
(4, 'G009', 'P001', 3),
(5, 'G010', 'P002', 3),
(6, 'G015', 'P002', 5),
(7, 'G019', 'P002', 1),
(8, 'G001', 'P003', 1),
(9, 'G002', 'P003', 1),
(10, 'G003', 'P003', 5),
(11, 'G004', 'P003', 5),
(12, 'G006', 'P003', 1),
(13, 'G013', 'P003', 3),
(14, 'G014', 'P003', 5),
(15, 'G016', 'P003', 5),
(16, 'G017', 'P003', 5),
(17, 'G019', 'P003', 1),
(18, 'G005', 'P004', 1),
(19, 'G006', 'P004', 5),
(20, 'G009', 'P004', 1),
(21, 'G007', 'P005', 5),
(22, 'G020', 'P005', 5),
(23, 'G011', 'P005', 1),
(24, 'G012', 'P005', 1),
(25, 'G013', 'P005', 1),
(26, 'G021', 'P006', 5),
(36, 'G005', 'P006', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_analisa`
--

CREATE TABLE `tmp_analisa` (
  `noip` varchar(30) NOT NULL,
  `kd_penyakit` char(4) NOT NULL,
  `kd_gejala` char(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_gejala`
--

CREATE TABLE `tmp_gejala` (
  `noip` int(3) NOT NULL,
  `kd_gejala` char(4) NOT NULL,
  `bobot` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_gejala`
--

INSERT INTO `tmp_gejala` (`noip`, `kd_gejala`, `bobot`) VALUES
(130824, 'G001', 0),
(130825, 'G002', 0),
(130826, 'G011', 0),
(130827, 'G015', 0),
(130828, 'G019', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_pasien`
--

CREATE TABLE `tmp_pasien` (
  `id` int(4) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelamin` char(10) NOT NULL,
  `umur` varchar(3) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `noip` varchar(30) NOT NULL,
  `tanggal` datetime NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_pasien`
--

INSERT INTO `tmp_pasien` (`id`, `nama`, `kelamin`, `umur`, `alamat`, `noip`, `tanggal`, `email`) VALUES
(86, 'Mardiya', 'Laki-laki', '22', 'geudong', '127.0.0.1', '2016-12-19 09:53:40', 'martunis@gmail.com'),
(89, 'Tafa', 'Laki-laki', '18', 'Gresik', '::1', '2022-10-02 19:48:20', 'tafa123@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_penyakit`
--

CREATE TABLE `tmp_penyakit` (
  `noip` varchar(30) NOT NULL,
  `kd_penyakit` char(4) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_penyakit`
--

INSERT INTO `tmp_penyakit` (`noip`, `kd_penyakit`, `nilai`) VALUES
('', 'P001', 0),
('', 'P002', 0.071428571428571),
('', 'P003', 0.03125),
('', 'P004', 0),
('', 'P005', 0.076923076923077),
('', 'P006', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analisa_hasil`
--
ALTER TABLE `analisa_hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kd_gejala`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `penyakit_solusi`
--
ALTER TABLE `penyakit_solusi`
  ADD PRIMARY KEY (`kd_penyakit`);

--
-- Indexes for table `relasi`
--
ALTER TABLE `relasi`
  ADD PRIMARY KEY (`id_relasi`);

--
-- Indexes for table `tmp_analisa`
--
ALTER TABLE `tmp_analisa`
  ADD PRIMARY KEY (`noip`);

--
-- Indexes for table `tmp_gejala`
--
ALTER TABLE `tmp_gejala`
  ADD PRIMARY KEY (`noip`);

--
-- Indexes for table `tmp_pasien`
--
ALTER TABLE `tmp_pasien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `analisa_hasil`
--
ALTER TABLE `analisa_hasil`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;

--
-- AUTO_INCREMENT for table `relasi`
--
ALTER TABLE `relasi`
  MODIFY `id_relasi` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tmp_gejala`
--
ALTER TABLE `tmp_gejala`
  MODIFY `noip` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130829;

--
-- AUTO_INCREMENT for table `tmp_pasien`
--
ALTER TABLE `tmp_pasien`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
