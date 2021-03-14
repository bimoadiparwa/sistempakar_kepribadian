-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2021 at 02:32 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sp_kepribadian`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Ciri-Ciri'),
(4, 'Kepribadian'),
(5, 'Pengetahuan'),
(6, 'Laporan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ciri`
--

CREATE TABLE `tbl_ciri` (
  `id_ciri` int(11) NOT NULL,
  `kode_ciri` char(3) NOT NULL,
  `nama_ciri` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ciri`
--

INSERT INTO `tbl_ciri` (`id_ciri`, `kode_ciri`, `nama_ciri`) VALUES
(1, 'C01', 'Anda seseorang yang mudah berpikir positif'),
(2, 'C02', 'Anda seseorang yang mudah berpikir negatif'),
(3, 'C03', 'Anda seseorang yang banyak bicara daripada mendengarkan'),
(4, 'C04', 'Anda seseorang yang mudah berteman dan mudah berbaur'),
(5, 'C05', 'Anda seseorang yang penuh semangat'),
(6, 'C06', 'Anda seseorang yang penuh rasa ingin tahu'),
(7, 'C07', 'Anda seseorang yang menyenangkan dan selalu terlihat ceria'),
(8, 'C08', 'Anda seseorang yang menyukai hiburan dan membuat orang lain terhibur'),
(9, 'C09', 'Anda seseorang yang mampu meyakinkan orang lain dengan logika dan fakta'),
(10, 'C10', 'Anda seseorang yang berkemauan tegas dan kuat'),
(11, 'C11', 'Anda seseorang yang sangat memerlukan perubahan'),
(12, 'C12', 'Anda seseorang yang berbakat memimpin'),
(13, 'C13', 'Anda seseorang yang melakukan sesuatu yang berorientasi tujuan'),
(14, 'C14', 'Anda seseorang yang mudah percaya diri dan mandiri'),
(15, 'C15', 'Anda seseorang yang mudah tersinggung dan sensitif'),
(16, 'C16', 'Anda seseorang yang penuh pikiran dan suka menganalisa'),
(17, 'C17', 'Anda seseorang yang suka embuat rencana dan terjadwal'),
(18, 'C18', 'Anda seseorang yang menuntut kesempurnaan (perfeksionis dan idealis)'),
(19, 'C19', 'Anda seseorang yang menyukai detil terhadap hal kecil maupun besar'),
(20, 'C20', 'Anda seseorang yang cerewet dan suka mengkritik'),
(21, 'C21', 'Anda seseorang yang cinta damai serta menghindari segala bentuk kekacauan'),
(22, 'C22', 'Anda seseorang yang rendah hati'),
(23, 'C23', 'Anda seseorang yang penurut dan toleran'),
(24, 'C24', 'Anda seseorang yang pemalu dan pendiam'),
(25, 'C25', 'Anda seseorang yang penakut'),
(26, 'C26', 'Anda seseorang yang sabar dan ramah');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hasil_diagnosa`
--

CREATE TABLE `tbl_hasil_diagnosa` (
  `id_hasil` int(11) NOT NULL,
  `hasil_probabilitas` float NOT NULL,
  `nama_kepribadian` varchar(100) NOT NULL,
  `nama_user` varchar(25) NOT NULL,
  `waktu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hasil_diagnosa`
--

INSERT INTO `tbl_hasil_diagnosa` (`id_hasil`, `hasil_probabilitas`, `nama_kepribadian`, `nama_user`, `waktu`) VALUES
(1, 33, 'Koleris', 'Member', 1609915947),
(2, 25, 'Sanguinis', 'Member', 1609916036),
(3, 25, 'Sanguinis', 'Member', 1609916542),
(4, 31, 'Koleris', 'Member', 1609919552),
(5, 25, 'Sanguinis', 'Member', 1610478738),
(6, 25, 'Sanguinis', 'Member', 1610478776),
(7, 25, 'Sanguinis', 'Member', 1610479146),
(8, 18, 'Sanguinis', 'Member', 1610479464),
(9, 25, 'Sanguinis', 'Member', 1610479478),
(10, 18, 'Sanguinis', 'Member', 1610479656),
(11, 78, 'Sanguinis', 'Member', 1610479958),
(12, 112, 'Koleris', 'Member', 1610480005),
(13, 100, 'Sanguinis', 'Member', 1610481527),
(14, 75, 'Sanguinis', 'Member', 1610481545),
(15, 75, 'Sanguinis', 'Member', 1610481620),
(16, 62, 'Sanguinis', 'Member', 1610481639),
(17, 79, 'Sanguinis', 'Member', 1610481661),
(18, 100, 'Sanguinis', 'Member', 1610481696),
(19, 100, 'Sanguinis', 'Member', 1610481703),
(20, 91, 'Sanguinis', 'Member', 1610481708),
(21, 72, 'Koleris', 'Member', 1610481732),
(22, 81, 'Sanguinis', 'Member', 1610481752),
(23, 65, 'Koleris', 'Member', 1610481781),
(24, 16, 'Sanguinis', 'Member', 1610481832),
(25, 87, 'Sanguinis', 'Member', 1610481871),
(26, 15, 'Sanguinis', 'Member', 1610483576),
(27, 91, 'Sanguinis', 'Member', 1610483620),
(28, 77, 'Sanguinis', 'Member', 1610483631),
(29, 25, 'Koleris', 'Member', 1610483680),
(30, 100, 'Sanguinis', 'Member', 1610483782),
(31, 100, 'Sanguinis', 'Member', 1610483792),
(32, 100, 'Sanguinis', 'Member', 1610483798),
(33, 2, 'Sanguinis', 'Member', 1610484283),
(34, 100, 'Sanguinis', 'Member', 1610484462),
(35, 100, 'Sanguinis', 'Member', 1610484486),
(36, 56, 'Melankolis', 'Member', 1610484538),
(37, 100, 'Sanguinis', 'Member', 1610484618),
(38, 100, 'Sanguinis', 'Member', 1610484631),
(39, 90, 'Koleris', 'Member', 1610484659),
(40, 53, 'Melankolis', 'Member', 1610484768),
(41, 48, 'Melankolis', 'Member', 1610484989),
(42, 0, 'Sanguinis', 'Member', 1610485529),
(43, 0, 'Sanguinis', 'Member', 1610485542),
(44, 100, 'Sanguinis', 'Member', 1610485557),
(45, 25, 'Sanguinis', 'Member', 1610485884),
(46, 18, 'Sanguinis', 'Member', 1610485898),
(47, 25, 'Sanguinis', 'Member', 1610485971),
(48, 25, 'Sanguinis', 'Member', 1610486051),
(49, 100, 'Sanguinis', 'Member', 1610486913),
(50, 57, 'Sanguinis', 'Member', 1610486951);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kepribadian`
--

CREATE TABLE `tbl_kepribadian` (
  `id_kepribadian` int(11) NOT NULL,
  `kode_kepribadian` char(3) NOT NULL,
  `nama_kepribadian` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `probabilitas` float NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kepribadian`
--

INSERT INTO `tbl_kepribadian` (`id_kepribadian`, `kode_kepribadian`, `nama_kepribadian`, `deskripsi`, `probabilitas`, `gambar`) VALUES
(1, 'K01', 'Sanguinis', '<p>Orang dengan tipe kepribadian <em>sanguinis</em> cenderung hidup, optimis, ringan, dan riang. Tipe ini juga menyukai petualangan dan memiliki toleransi tinggi akan risiko.<br>\r\n<br>\r\nSelain itu, tipe <em>sanguin</em> biasanya lemah dalam menoleransi kebosanan, serta akan mencari variasi dan hiburan. Secara alami, sifat ini kadang-kadang negatif dalam memengaruhi hubungan percintaan dan lainnya.<br>\r\n<br>\r\nKarena kepribadian ini berperilaku mencari kesenangan, banyak orang dengan kepribadian <em>sanguinis</em> cenderung berjuang dengan kecanduan (ingin suatu hal dengan terus-menerus).<br>\r\n<br>\r\nOrang <em>sanguin</em> juga dikenal sangat kreatif dan bisa menjadi seniman serta penghibur yang hebat dan akan berhasil jika memilih karier di industri hiburan.<br>\r\n<br>\r\nKemampuan alami orang <em>sanguinis</em> sangat cocok jika memilih pekerjaan yang berhubungan dengan <em>marketing, travel, fashion,</em> memasak/kuliner, atau olahraga.</p>\r\n\r\n<hr>\r\n<p><strong>Sumber : tirto.id</strong></p>\r\n', 0.25, 'S2.png'),
(2, 'K02', 'Koleris', '<p>Seseorang dengan kepribadian <em>koleris</em> biasanya orang yang sangat berorientasi pada tujuan.<br>\r\n<br>\r\nOrang yang <em>koleris</em> terkenal sangat cerdas, analitis, dan logis, sangat praktis dan langsung, tetapi tipe ini tidak harus menjadi teman baik atau orang yang ramah.<br>\r\n<br>\r\nSeorang <em>koleris</em> tidak menyukai pembicaraan singkat dan menikmati percakapan yang mendalam dan bermakna. Mereka lebih suka sendirian daripada di perusahaan dengan orang berkepribadian lemah.<br>\r\n<br>\r\nIdealnya, tipe ini suka menghabiskan waktu bersama orang-orang yang memiliki minat profesional yang serupa.<br>\r\n<br>\r\nPekerjaan ideal untuk seorang <em>koleris</em> terkait dengan industri tentang pengelolaan, teknologi, statistik, teknik, dan pemrograman</p>\r\n\r\n<hr>\r\n<p><strong>Sumber : tirto.id</strong></p>\r\n', 0.25, 'K2.png'),
(3, 'K03', 'Melankolis', '<p>Orang-orang dengan kepribadian <em>melankolis</em> menyukai tradisi. Misalnya wanita memasak untuk laki-laki, laki-laki membuka pintu bagi wanita.<br>\r\n<br>\r\nTipe <em>melankolis</em> rata-rata mencintai keluarga dan teman-temannya, tidak seperti orang-orang <em>sanguinis.</em> <em>Melankolis</em> tidak suka mencari hal-hal baru dan petualangan dan bahkan cenderung akan sangat menghindarinya.<br>\r\n<br>\r\nSeseorang dengan kepribadian <em>melankolis</em> tidak mungkin menikah dengan orang asing atau meninggalkan tanah airnya ke negara lain.<br>\r\n<br>\r\nOrang yang <em>melankolis</em> juga dikenal sangat sosial dan berupaya berkontribusi pada komunitas, sangat teliti dan akurat. Tipe ini adalah manajer yang fantastis dengan kepribadian yang baik.<br>\r\n<br>\r\nKarier yang sempurna untuk tipe kepribadian melankolis antara lain dalam bidang pengelolaan/ manajemen, akuntansi, pekerjaan social, atau bagian administrasi.</p>\r\n\r\n<hr>\r\n<p><strong>Sumber: tirto.id</strong></p>\r\n', 0.25, 'M2.png'),
(4, 'K04', 'Pleghmatis', '<p>Seseorang dengan kepribadian <em>plegmatis</em> biasanya adalah orang-orang yang cinta damai.<br>\r\n<br>\r\nTipe ini biasanya mencari keharmonisan antar-pribadi dan hubungan dekat yang membuat orang-orang <em>plegmatis</em> menjadi pasangan yang setia dan orang tua yang penuh kasih.<br>\r\n<br>\r\nOrang-orang <em>plegmatis</em> suka menjaga hubungan dengan teman-teman lama, anggota keluarga yang jauh, dan tetangga.<br>\r\n<br>\r\nDalam hal kepribadian, tipe <em>plegmatis</em> cenderung menghindari konflik dan selalu berusaha menengahi orang lain untuk memulihkan perdamaian dan harmoni.<br>\r\n<br>\r\n<em>Plegmatis </em>juga sangat suka beramal dan membantu orang lain. Karier yang ideal untuk tipe kepribadian<em> plegmatis</em> antara lain perawat, guru, psikolog, konseling, atau layanan sosial.</p>\r\n\r\n<hr>\r\n<p><strong>Sumber: tirto.id</strong></p>\r\n', 0.25, 'P2.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengetahuan`
--

CREATE TABLE `tbl_pengetahuan` (
  `id` int(11) NOT NULL,
  `id_kepribadian` int(11) NOT NULL,
  `id_ciri` int(11) NOT NULL,
  `probabilitas` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengetahuan`
--

INSERT INTO `tbl_pengetahuan` (`id`, `id_kepribadian`, `id_ciri`, `probabilitas`) VALUES
(1, 1, 1, 1),
(7, 1, 7, 0.67),
(8, 1, 8, 1),
(13, 1, 13, 0.17),
(19, 1, 19, 0.33),
(20, 1, 20, 0.83),
(23, 1, 23, 0.5),
(31, 2, 5, 0.67),
(35, 2, 9, 0.83),
(39, 2, 13, 1),
(40, 2, 14, 0.5),
(42, 2, 16, 0.17),
(45, 2, 19, 1),
(50, 2, 24, 0.33),
(54, 3, 2, 1),
(56, 3, 4, 0.67),
(62, 3, 10, 0.83),
(64, 3, 12, 0.5),
(67, 3, 15, 0.17),
(69, 3, 17, 0.33),
(77, 3, 25, 1),
(81, 4, 3, 1),
(89, 4, 11, 0.33),
(93, 4, 15, 0.17),
(96, 4, 18, 0.83),
(99, 4, 21, 1),
(100, 4, 22, 0.5),
(104, 4, 26, 0.67);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `image` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `username`, `image`, `password`, `role_id`, `date_created`) VALUES
(7, 'Member', 'Member', 'default.jpg', '$2y$10$gam52naGqUaHYPkQ49WDn.NtUmAUqZ5jdoMwKGAkw8DW8daCdLmoW', 2, 1575266061),
(11, 'Admin', 'admin', 'default.jpg', '$2y$10$7Fgm5Z8u.h6JAg5Jj2DVEeOkZkf12cR4qYKzTK1..GkmpNuGXhoe2', 1, 1609539548);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_ciri`
--

CREATE TABLE `tmp_ciri` (
  `id_user` int(11) NOT NULL,
  `id_ciri` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_ciri`
--

INSERT INTO `tmp_ciri` (`id_user`, `id_ciri`) VALUES
(7, 1),
(7, 7),
(7, 8),
(7, 16),
(7, 17);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_final`
--

CREATE TABLE `tmp_final` (
  `id` int(11) NOT NULL,
  `id_ciri` int(11) NOT NULL,
  `id_kepribadian` int(11) NOT NULL,
  `probabilitas` float NOT NULL,
  `hasil_probabilitas` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_final`
--

INSERT INTO `tmp_final` (`id`, `id_ciri`, `id_kepribadian`, `probabilitas`, `hasil_probabilitas`) VALUES
(1, 1, 1, 1, 0.57265),
(2, 7, 1, 0.67, 0.57265),
(3, 8, 1, 1, 0.57265),
(4, 16, 2, 0.17, 0.145299),
(5, 17, 3, 0.33, 0.282051);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(8, 1, 3),
(9, 1, 4),
(10, 1, 5),
(11, 1, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ciri`
--
ALTER TABLE `tbl_ciri`
  ADD PRIMARY KEY (`id_ciri`);

--
-- Indexes for table `tbl_hasil_diagnosa`
--
ALTER TABLE `tbl_hasil_diagnosa`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `tbl_kepribadian`
--
ALTER TABLE `tbl_kepribadian`
  ADD PRIMARY KEY (`id_kepribadian`);

--
-- Indexes for table `tbl_pengetahuan`
--
ALTER TABLE `tbl_pengetahuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_ciri` (`id_ciri`),
  ADD KEY `id_kepribadian` (`id_kepribadian`);

--
-- Indexes for table `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tmp_final`
--
ALTER TABLE `tmp_final`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_ciri`
--
ALTER TABLE `tbl_ciri`
  MODIFY `id_ciri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_hasil_diagnosa`
--
ALTER TABLE `tbl_hasil_diagnosa`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tbl_kepribadian`
--
ALTER TABLE `tbl_kepribadian`
  MODIFY `id_kepribadian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_pengetahuan`
--
ALTER TABLE `tbl_pengetahuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tmp_final`
--
ALTER TABLE `tmp_final`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_pengetahuan`
--
ALTER TABLE `tbl_pengetahuan`
  ADD CONSTRAINT `tbl_pengetahuan_ibfk_1` FOREIGN KEY (`id_kepribadian`) REFERENCES `tbl_kepribadian` (`id_kepribadian`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
