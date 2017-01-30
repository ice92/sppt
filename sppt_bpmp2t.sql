-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2017 at 05:24 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sppt_bpmp2t`
--

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `regency_id` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `regency_id`, `name`) VALUES
('5201010', '5201', 'SEKOTONG'),
('5201011', '5201', 'LEMBAR'),
('5201020', '5201', 'GERUNG'),
('5201030', '5201', 'LABU API'),
('5201040', '5201', 'KEDIRI'),
('5201041', '5201', 'KURIPAN'),
('5201050', '5201', 'NARMADA'),
('5201051', '5201', 'LINGSAR'),
('5201060', '5201', 'GUNUNG SARI'),
('5201061', '5201', 'BATU LAYAR'),
('5202010', '5202', 'PRAYA BARAT'),
('5202011', '5202', 'PRAYA BARAT DAYA'),
('5202020', '5202', 'PUJUT'),
('5202030', '5202', 'PRAYA TIMUR'),
('5202040', '5202', 'JANAPRIA'),
('5202050', '5202', 'KOPANG'),
('5202060', '5202', 'PRAYA'),
('5202061', '5202', 'PRAYA TENGAH'),
('5202070', '5202', 'JONGGAT'),
('5202080', '5202', 'PRINGGARATA'),
('5202090', '5202', 'BATUKLIANG'),
('5202091', '5202', 'BATUKLIANG UTARA'),
('5203010', '5203', 'KERUAK'),
('5203011', '5203', 'JEROWARU'),
('5203020', '5203', 'SAKRA'),
('5203021', '5203', 'SAKRA BARAT'),
('5203022', '5203', 'SAKRA TIMUR'),
('5203030', '5203', 'TERARA'),
('5203031', '5203', 'MONTONG GADING'),
('5203040', '5203', 'SIKUR'),
('5203050', '5203', 'MASBAGIK'),
('5203051', '5203', 'PRINGGASELA'),
('5203060', '5203', 'SUKAMULIA'),
('5203061', '5203', 'SURALAGA'),
('5203070', '5203', 'SELONG'),
('5203071', '5203', 'LABUHAN HAJI'),
('5203080', '5203', 'PRINGGABAYA'),
('5203081', '5203', 'SUELA'),
('5203090', '5203', 'AIKMEL'),
('5203091', '5203', 'WANASABA'),
('5208010', '5208', 'PEMENANG'),
('5208020', '5208', 'TANJUNG'),
('5208030', '5208', 'GANGGA'),
('5208040', '5208', 'KAYANGAN'),
('5208050', '5208', 'BAYAN'),
('5271010', '5271', 'AMPENAN'),
('5271011', '5271', 'SEKARBELA'),
('5271020', '5271', 'MATARAM'),
('5271021', '5271', 'SELAPARANG'),
('5271030', '5271', 'CAKRANEGARA'),
('5271031', '5271', 'SANDUBAYA');

-- --------------------------------------------------------

--
-- Table structure for table `dp_akun`
--

CREATE TABLE `dp_akun` (
  `ap_ktp` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dp_akun`
--

INSERT INTO `dp_akun` (`ap_ktp`, `password`, `level`) VALUES
('5203040909930001', '5203040909930001', '0'),
('5203040909930002', '5203040909930002', '0'),
('5203040909930003', '5203040909930003', '0'),
('5203040909930004', '5203040909930004', '0'),
('5203040909930005', '5203040909930005', '0'),
('5203040909930006', '5203040909930006', '0'),
('admin', '123', '6'),
('kabad', '123', '5'),
('kabid', '123', '4'),
('kasubid', '778', '3'),
('petugas', '123', '2');

-- --------------------------------------------------------

--
-- Table structure for table `dp_datapemohon`
--

CREATE TABLE `dp_datapemohon` (
  `dp_ktp` varchar(25) NOT NULL,
  `dp_nama` varchar(100) NOT NULL,
  `dp_alamat` text NOT NULL,
  `dp_email` varchar(30) NOT NULL,
  `dp_hp` varchar(15) NOT NULL,
  `dp_poto` varchar(50) DEFAULT NULL,
  `sms` int(2) DEFAULT NULL,
  `email` int(2) DEFAULT NULL,
  `verifikasi` char(1) NOT NULL DEFAULT 'n',
  `provinsi` char(2) NOT NULL,
  `kabupaten` char(4) NOT NULL,
  `kecamatan` char(7) NOT NULL,
  `desa` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dp_datapemohon`
--

INSERT INTO `dp_datapemohon` (`dp_ktp`, `dp_nama`, `dp_alamat`, `dp_email`, `dp_hp`, `dp_poto`, `sms`, `email`, `verifikasi`, `provinsi`, `kabupaten`, `kecamatan`, `desa`) VALUES
('132', 'ely', 'hg', 'jk@f', 'kl', NULL, NULL, NULL, 'y', '52', '5201', '5201010', '5201010001'),
('5203040909930001', 'I Made Ramlie Suandha', 'Dusun Orong Bukal Desa Gili Gede Indah.', 'imade@gmail.com', '082340207784', NULL, NULL, NULL, 'y', '52', '5201', '5201010', '5201010008'),
('5203040909930002', 'H. Muh. Mahdi', 'Dusun Sayong Baru Desa Cendi Manik.', 'mahdi@gmail.com', '082340207781', NULL, NULL, NULL, 'y', '52', '5201', '5201010', '5201010007'),
('5203040909930003', 'Henri Paul Piere Vulcain', 'Dusun Labuan Cendik Desa Gili Gede Indah.', 'paul@gmail.com', '082340207782', NULL, NULL, NULL, 'y', '52', '5201', '5201010', '5201010008'),
('5203040909930004', 'Pengky Yupiter', 'Jl. Soekarno Hatta Lingkungan Montong Sari No 5, Kel. Gerung Utara', 'pengki@gmail.com', '082340207783', NULL, NULL, NULL, 'y', '52', '5201', '5201020', '5201020004'),
('5203040909930005', 'Hedar Ali', 'Komplek Pasar Keru, Desa Keru.', 'cahaya@gmail.com', '082340207785', NULL, NULL, NULL, 'y', '52', '5201', '5201050', '5201050006'),
('5203040909930006', 'Aripin', 'Dusun Suranadi Utara Desa Suranadi', 'aripin@gmail.com', '082340207786', NULL, NULL, NULL, 'y', '52', '5201', '5201050', '5201050010'),
('555', 'ely', 'jk', 'elyhumairoh@gmail.com', '213', NULL, NULL, NULL, 'y', '52', '5201', '5201041', '5201041005'),
('778', 'jk', 'kjk', 'elyhumairoh@gmail.com', '99893', NULL, NULL, NULL, 'y', '52', '5201', '5201030', '5201030004'),
('989898', 'ioio', 'ioio', 'elyhumairoh@gmail.com', '0988', NULL, NULL, NULL, 'y', '52', '5201', '5201020', '5201020003');

-- --------------------------------------------------------

--
-- Table structure for table `dp_datapermohonanizin`
--

CREATE TABLE `dp_datapermohonanizin` (
  `dpi_id` int(3) NOT NULL,
  `dpi_no_ident` varchar(25) NOT NULL,
  `dpi_jenisizin` char(5) NOT NULL,
  `dpi_jenispermohonan` int(2) NOT NULL,
  `dpi_namausaha` varchar(50) NOT NULL,
  `dpi_badanusaha` char(5) NOT NULL,
  `dpi_npwp` varchar(25) NOT NULL,
  `dpi_kecamatan` char(7) NOT NULL,
  `dpi_desa` char(10) NOT NULL,
  `dpi_lokasi` varchar(100) NOT NULL,
  `dpi_keterangan` text NOT NULL,
  `dpi_tanggal` varchar(30) NOT NULL,
  `dpi_dok_ktp` varchar(30) DEFAULT NULL,
  `dpi_dok_npwp` varchar(30) DEFAULT NULL,
  `dpi_valktp1` char(1) NOT NULL DEFAULT '0' COMMENT '0 tidak valid, 1 valid',
  `dpi_valktp2` char(1) NOT NULL DEFAULT '0' COMMENT '0 tidak valid, 1 valid',
  `dpi_valnpwp1` char(1) NOT NULL DEFAULT '0' COMMENT '0 tidak valid, 1 valid',
  `dpi_valnpwp2` char(1) NOT NULL DEFAULT '0' COMMENT '0 tidak valid, 1 valid',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0 masih proses verifikasi, 1 telah disetujui'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dp_datapermohonanizin`
--

INSERT INTO `dp_datapermohonanizin` (`dpi_id`, `dpi_no_ident`, `dpi_jenisizin`, `dpi_jenispermohonan`, `dpi_namausaha`, `dpi_badanusaha`, `dpi_npwp`, `dpi_kecamatan`, `dpi_desa`, `dpi_lokasi`, `dpi_keterangan`, `dpi_tanggal`, `dpi_dok_ktp`, `dpi_dok_npwp`, `dpi_valktp1`, `dpi_valktp2`, `dpi_valnpwp1`, `dpi_valnpwp2`, `status`) VALUES
(40, '52.03.04.09.93.0005', 'siup', 1, 'Kotaraja Komputer', 'vc', '2344466475454', '5201020', '5201020007', 'Jalan sudirman No. 3 Beleke', 'Menjual perangkat computer, laptop, dan aksesorisnya', 'Rabu, 01 Juni 2016', '7.PNG', '4.PNG', '1', '2', '1', '2', 1),
(41, '77.77.77.77.77.7777', 'siup', 1, 'dsc', 'cv', 'ws2w2e2', '5201011', '5201011001', 'sdsdws', 'ingin membuat', 'Kamis, 24 November 2016', NULL, NULL, '0', '0', '0', '0', 0),
(42, '77.77.77.77.77.7777', 'situ', 4, 'djdb', 'cv', '', '5201010', '5201010001', 'eded', 'dece', 'Rabu, 14 Desember 2016', NULL, NULL, '0', '0', '0', '0', 0),
(43, '77.77.77.77.77.7777', 'situ', 4, 'fiejf', 'cv', '', '5201010', '5201010001', 'fv', '', 'Jumat, 16 Desember 2016', NULL, NULL, '0', '0', '0', '0', 0),
(44, '77.77.77.77.77.7777', 'situ', 4, 'adj', 'cv', '', '5201011', '5201011002', 'ss', '', 'Senin, 19 Desember 2016', NULL, NULL, '0', '0', '0', '0', 0),
(45, '77.77.77.77.77.7777', 'situ', 4, 'adj', 'cv', '', '5201011', '5201011002', 'ss', '', 'Senin, 19 Desember 2016', NULL, NULL, '0', '0', '0', '0', 0),
(46, '77.77.77.77.77.7777', 'situ', 4, 'adj', 'cv', '', '5201011', '5201011002', 'ss', '', 'Senin, 19 Desember 2016', NULL, NULL, '0', '0', '0', '0', 0),
(47, '77.77.77.77.77.7777', 'situ', 4, 'adj', 'cv', '', '5201011', '5201011002', 'ss', '', 'Senin, 19 Desember 2016', NULL, NULL, '0', '0', '0', '0', 0),
(48, '77.77.77.77.77.7777', 'situ', 4, 'adj', 'cv', '', '5201011', '5201011002', 'ss', '', 'Senin, 19 Desember 2016', NULL, NULL, '0', '0', '0', '0', 0),
(49, '77.77.77.77.77.7777', 'situ', 4, 'adj', 'cv', '', '5201011', '5201011002', 'ss', '', 'Senin, 19 Desember 2016', NULL, NULL, '0', '0', '0', '0', 0),
(50, '77.77.77.77.77.7777', 'situ', 4, 'adj', 'cv', '', '5201011', '5201011002', 'ss', '', 'Senin, 19 Desember 2016', NULL, NULL, '0', '0', '0', '0', 0),
(51, '77.77.77.77.77.7777', 'situ', 4, 'ss', 'cv', '', '5201020', '5201020005', '', '', 'Selasa, 20 Desember 2016', NULL, NULL, '0', '0', '0', '0', 0),
(52, '77.77.77.77.77.7777', 'situ', 4, 'yyuuuuuuuuu', 'fa', '', '5201011', '5201011003', 'jjkkk', '', 'Selasa, 20 Desember 2016', NULL, NULL, '0', '0', '0', '0', 0),
(53, '77.77.77.77.77.7777', 'siup', 1, 'wre', 'cv', '', '5201010', '5201010002', 'dfcde', 'efe', 'Sabtu, 24 Desember 2016', NULL, NULL, '0', '0', '0', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dp_desa`
--

CREATE TABLE `dp_desa` (
  `ID_desa` int(11) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `ID_kecamatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dp_dokpermohonan`
--

CREATE TABLE `dp_dokpermohonan` (
  `dok_id` int(3) NOT NULL,
  `dok_dpi_id` int(3) NOT NULL,
  `dok_ktp` varchar(50) DEFAULT NULL,
  `dok_npwp` varchar(50) DEFAULT NULL,
  `dok_valid1ktp` tinyint(1) NOT NULL DEFAULT '0',
  `dok_valid2ktp` tinyint(1) NOT NULL DEFAULT '0',
  `dok_valid1npwp` tinyint(1) NOT NULL DEFAULT '0',
  `dok_valid2npwp` tinyint(1) DEFAULT '0',
  `dok_keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dp_doksiup`
--

CREATE TABLE `dp_doksiup` (
  `dokiup_id` varchar(15) NOT NULL,
  `dokiup_ktp` varchar(20) NOT NULL,
  `dokiup_akta` varchar(50) DEFAULT NULL,
  `dokiup_pbhk` varchar(50) DEFAULT NULL,
  `dokiup_situ` varchar(50) DEFAULT NULL,
  `dokiup_suplegalisir` varchar(50) DEFAULT NULL,
  `dokiup_ho` varchar(50) DEFAULT NULL,
  `dokiup_pbb` varchar(50) DEFAULT NULL,
  `dokiup_formulir` varchar(50) DEFAULT NULL,
  `dokiup_sk` varchar(50) DEFAULT NULL,
  `dokiup_iuranbpjs` varchar(50) DEFAULT NULL,
  `dokiup_idsiup` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dp_doksiup`
--

INSERT INTO `dp_doksiup` (`dokiup_id`, `dokiup_ktp`, `dokiup_akta`, `dokiup_pbhk`, `dokiup_situ`, `dokiup_suplegalisir`, `dokiup_ho`, `dokiup_pbb`, `dokiup_formulir`, `dokiup_sk`, `dokiup_iuranbpjs`, `dokiup_idsiup`) VALUES
('dok_iup_11', '5203040909930001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('dok_iup_12', '5203040909930002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('dok_iup_13', '5203040909930003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('dok_iup_14', '5203040909930004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('dok_iup_15', '555', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dp_doktdp`
--

CREATE TABLE `dp_doktdp` (
  `doktdp_id` varchar(15) NOT NULL,
  `doktdp_ktp` varchar(50) NOT NULL,
  `doktdp_aktapedirian` varchar(50) NOT NULL,
  `doktdp_npwp` varchar(50) NOT NULL,
  `doktdp_ijinusaha` varchar(50) NOT NULL,
  `doktdp_situ` varchar(50) NOT NULL,
  `doktdp_ho` varchar(50) NOT NULL,
  `doktdp_tdp` varchar(50) NOT NULL,
  `doktdp_sppc` varchar(50) NOT NULL,
  `doktdp_formulir` varchar(50) NOT NULL,
  `doktdp_iuranbpjs` varchar(50) NOT NULL,
  `doktdp_idtdp` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dp_doktdp`
--

INSERT INTO `dp_doktdp` (`doktdp_id`, `doktdp_ktp`, `doktdp_aktapedirian`, `doktdp_npwp`, `doktdp_ijinusaha`, `doktdp_situ`, `doktdp_ho`, `doktdp_tdp`, `doktdp_sppc`, `doktdp_formulir`, `doktdp_iuranbpjs`, `doktdp_idtdp`) VALUES
('dok_tdp_15', '5203040909930005', '', '', '', '', '', '', '', '', '', 0),
('dok_tdp_16', '5203040909930006', '', '', '', '', '', '', '', '', '', 0),
('dok_tdp_17', '555', '', '', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dp_izin`
--

CREATE TABLE `dp_izin` (
  `izin_id` int(5) NOT NULL,
  `izin_kode_izin` char(10) NOT NULL,
  `izin_kode_jenis` char(5) NOT NULL,
  `izin_tglterbit` date DEFAULT NULL,
  `izin_tglberakhir` date DEFAULT NULL,
  `izin_id_koordinat` varchar(15) DEFAULT NULL,
  `izin_kecamatan` int(2) DEFAULT '0',
  `izin_no_sk` varchar(20) DEFAULT NULL,
  `izin_gambar` text,
  `izin_status` tinyint(1) NOT NULL DEFAULT '0',
  `izin_ver_kasubid` tinyint(1) NOT NULL DEFAULT '0',
  `izin_ver_kabid` tinyint(1) NOT NULL DEFAULT '0',
  `izin_ver_kabad` tinyint(1) NOT NULL DEFAULT '0',
  `izin_ver_petugas` tinyint(1) NOT NULL DEFAULT '0',
  `izin_ktp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dp_izin`
--

INSERT INTO `dp_izin` (`izin_id`, `izin_kode_izin`, `izin_kode_jenis`, `izin_tglterbit`, `izin_tglberakhir`, `izin_id_koordinat`, `izin_kecamatan`, `izin_no_sk`, `izin_gambar`, `izin_status`, `izin_ver_kasubid`, `izin_ver_kabid`, `izin_ver_kabad`, `izin_ver_petugas`, `izin_ktp`) VALUES
(4, 'iup_11', 'siup', '2015-01-13', '2017-01-13', 'koor_iup_11', 5201010, NULL, NULL, 1, 0, 0, 0, 0, ''),
(5, 'iup_12', 'siup', '2015-03-16', '2016-03-16', 'koor_iup_12', 5201010, NULL, NULL, 1, 0, 0, 0, 0, ''),
(6, 'iup_13', 'siup', '2015-01-23', '2016-06-22', 'koor_iup_13', 5201010, NULL, NULL, 1, 0, 0, 0, 0, ''),
(7, 'iup_14', 'siup', '2015-10-10', '2016-08-16', 'koor_iup_14', 5201020, NULL, NULL, 1, 0, 0, 0, 0, ''),
(8, 'tdp_15', 'tdp', '2015-01-12', '2016-01-26', 'koor_tdp_15', 5201050, NULL, NULL, 1, 0, 0, 0, 0, ''),
(9, 'tdp_16', 'tdp', '2015-04-14', '2016-08-24', 'koor_tdp_16', 5201050, NULL, NULL, 1, 0, 0, 0, 0, ''),
(10, 'iup_15', 'siup', NULL, NULL, 'koor_iup_15', 5201040, NULL, NULL, 0, 0, 0, 0, 0, ''),
(11, 'tdp_17', 'tdp', NULL, NULL, 'koor_tdp_17', 5202040, NULL, NULL, 0, 0, 0, 0, 0, ''),
(12, 'tdp_18', 'tdp', NULL, NULL, NULL, 5201011, NULL, NULL, 0, 0, 0, 0, 0, ''),
(13, 'iup_16', 'siup', NULL, NULL, NULL, 5202061, NULL, NULL, 0, 0, 0, 0, 0, ''),
(14, 'iup_17', 'siup', NULL, NULL, NULL, 5201010, NULL, NULL, 0, 0, 0, 0, 0, ''),
(15, 'iup_18', 'siup', NULL, NULL, NULL, 5201010, NULL, NULL, 0, 0, 0, 0, 0, ''),
(16, 'iup_19', 'siup', NULL, NULL, NULL, 5202040, NULL, NULL, 0, 0, 0, 0, 0, ''),
(17, 'iup_20', 'siup', NULL, NULL, NULL, 5201010, NULL, NULL, 0, 0, 0, 0, 0, ''),
(18, 'tdp_19', 'tdp', NULL, NULL, NULL, 5201010, NULL, NULL, 0, 0, 0, 0, 0, ''),
(19, 'iup_21', 'siup', NULL, NULL, NULL, 5202040, NULL, NULL, 0, 0, 0, 0, 0, ''),
(20, 'iup_22', 'siup', NULL, NULL, NULL, 5201040, NULL, NULL, 0, 0, 0, 0, 0, ''),
(21, 'tdp_20', 'tdp', NULL, NULL, NULL, 5201010, NULL, NULL, 0, 0, 0, 0, 0, ''),
(22, 'tdp_21', 'tdp', NULL, NULL, NULL, 5201040, NULL, NULL, 0, 0, 0, 0, 0, ''),
(23, 'iup_23', 'siup', NULL, NULL, NULL, 5201010, NULL, NULL, 0, 0, 0, 0, 0, ''),
(24, 'iup_24', 'siup', NULL, NULL, NULL, 5201010, NULL, NULL, 0, 0, 0, 0, 0, ''),
(25, 'iup_25', 'siup', NULL, NULL, NULL, 5202011, NULL, NULL, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `dp_jenisbadanusaha`
--

CREATE TABLE `dp_jenisbadanusaha` (
  `jbu_id` char(5) NOT NULL,
  `jbu_nama` char(5) NOT NULL,
  `jbu_keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dp_jenisbadanusaha`
--

INSERT INTO `dp_jenisbadanusaha` (`jbu_id`, `jbu_nama`, `jbu_keterangan`) VALUES
('cv', 'VC', 'PERSEKUTUAN KOMANDITER'),
('fa', 'FA', 'FIRMA'),
('kop', 'KOP', 'KOPERASI'),
('po', 'PO', 'PERUSAHAAN PERORANGAN'),
('pt', 'PT', 'PERSEROAN TERBATAS');

-- --------------------------------------------------------

--
-- Table structure for table `dp_jenisizin`
--

CREATE TABLE `dp_jenisizin` (
  `ji_id` char(5) NOT NULL,
  `ji_nama` varchar(10) NOT NULL,
  `ji_keterangan` varchar(50) NOT NULL,
  `jenis_permohonan` varchar(20) NOT NULL COMMENT '1 baru, 2 perpanjang'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dp_jenisizin`
--

INSERT INTO `dp_jenisizin` (`ji_id`, `ji_nama`, `ji_keterangan`, `jenis_permohonan`) VALUES
('siup', 'SIUP', 'Surat Izin Usaha Perdagangan', '01,02,03'),
('tdp', 'TDP', 'Tanda Daftar Perusahaan', '01,02,03,04');

-- --------------------------------------------------------

--
-- Table structure for table `dp_jenispermohonan`
--

CREATE TABLE `dp_jenispermohonan` (
  `jp_id` int(2) NOT NULL,
  `id_jenisizin` char(5) NOT NULL,
  `jp_jenis` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dp_jenispermohonan`
--

INSERT INTO `dp_jenispermohonan` (`jp_id`, `id_jenisizin`, `jp_jenis`) VALUES
(1, 'siup', 'BARU'),
(2, 'siup', 'PERPANJANGAN'),
(3, 'siup', 'PERUBAHAN'),
(4, 'tdp', 'PERUBAHAN'),
(5, 'tdp', 'BARU'),
(6, 'tdp', 'PERPANJANGAN');

-- --------------------------------------------------------

--
-- Table structure for table `dp_kabupaten`
--

CREATE TABLE `dp_kabupaten` (
  `ID_kabupaten` int(11) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `ID_provinsi` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dp_kabupaten`
--

INSERT INTO `dp_kabupaten` (`ID_kabupaten`, `Nama`, `ID_provinsi`) VALUES
(54021, 'LOMBOK BARAT', '54020'),
(54123, 'LOMBOK TENGAH', '54020'),
(54260, 'LOMBOK TIMUR', '54020'),
(55026, 'LOMBOK UTARA', '54020');

-- --------------------------------------------------------

--
-- Table structure for table `dp_kecamatan`
--

CREATE TABLE `dp_kecamatan` (
  `ID_kecamatan` int(11) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `ID_kabupaten` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dp_kecamatan`
--

INSERT INTO `dp_kecamatan` (`ID_kecamatan`, `Nama`, `ID_kabupaten`) VALUES
(54022, 'GERUNG', 54021),
(54034, 'KEDIRI', 54021),
(54045, 'NARMADA', 54021),
(54062, 'SEKOTONG', 54021),
(54069, 'LABUAPI', 54021),
(54080, 'GUNUNGSARI', 54021),
(54094, 'LINGSAR', 54021),
(54105, 'LEMBAR', 54021),
(54111, 'BATU LAYAR', 54021),
(54118, 'KURIPAN', 54021);

-- --------------------------------------------------------

--
-- Table structure for table `dp_koordinat`
--

CREATE TABLE `dp_koordinat` (
  `kor_id` varchar(15) NOT NULL,
  `kor_lat` varchar(15) DEFAULT NULL,
  `kor_long` varchar(15) DEFAULT NULL,
  `kor_marker` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dp_koordinat`
--

INSERT INTO `dp_koordinat` (`kor_id`, `kor_lat`, `kor_long`, `kor_marker`) VALUES
('koor_iup_11', '-8.7412394', '115.9223213', NULL),
('koor_iup_12', '-8.8174237', '115.9647723', NULL),
('koor_iup_13', '-8.6975114', '115.1622407', NULL),
('koor_iup_14', '-8.6767977', '116.1416678', NULL),
('koor_iup_15', NULL, NULL, NULL),
('koor_tdp_15', '-8.5916801', '116.2481253', NULL),
('koor_tdp_16', '-8.5605527', '116.2359028', NULL),
('koor_tdp_17', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dp_pengaduan`
--

CREATE TABLE `dp_pengaduan` (
  `pengaduan_id` int(7) NOT NULL,
  `pengaduan_ktp` varchar(20) NOT NULL,
  `pengaduan_nama` varchar(30) NOT NULL,
  `pengaduan_desa` int(11) NOT NULL,
  `pengaduan_tanggal` int(11) NOT NULL,
  `pengaduan_pengaduan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dp_siup`
--

CREATE TABLE `dp_siup` (
  `iup_id` int(5) NOT NULL,
  `iup_kode` varchar(10) NOT NULL,
  `iup_ktp` varchar(20) NOT NULL,
  `iup_jenisizin` char(5) NOT NULL,
  `iup_jenispermohonan` int(2) NOT NULL,
  `iup_perusahaan` varchar(50) NOT NULL,
  `iup_pemilik` varchar(25) NOT NULL,
  `iup_alamatizin` text NOT NULL,
  `iup_kegiatanusaha` varchar(50) NOT NULL,
  `iup_kelembagaan` varchar(50) NOT NULL,
  `iup_barang` text NOT NULL,
  `iup_kekayaan` char(10) NOT NULL,
  `iup_tlp` varchar(16) NOT NULL,
  `iup_email` varchar(30) NOT NULL,
  `iup_website` varchar(30) DEFAULT NULL,
  `iup_kecamatan` int(11) DEFAULT NULL,
  `iup_desa` int(11) DEFAULT NULL,
  `iup_dokiup` varchar(15) DEFAULT NULL,
  `iup_keterangan` text NOT NULL,
  `iup_tanggal` int(11) NOT NULL,
  `iup_status` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dp_siup`
--

INSERT INTO `dp_siup` (`iup_id`, `iup_kode`, `iup_ktp`, `iup_jenisizin`, `iup_jenispermohonan`, `iup_perusahaan`, `iup_pemilik`, `iup_alamatizin`, `iup_kegiatanusaha`, `iup_kelembagaan`, `iup_barang`, `iup_kekayaan`, `iup_tlp`, `iup_email`, `iup_website`, `iup_kecamatan`, `iup_desa`, `iup_dokiup`, `iup_keterangan`, `iup_tanggal`, `iup_status`) VALUES
(11, 'iup_11', '5203040909930001', 'siup', 1, 'Kokomo Gili Gede Resort', 'I Made Ramlie Suandha', 'Jl Pantai Pelangan, Lombok, Kabupaten Lombok Barat, Nusa Tenggara barat', 'Perdagangan Dalam Negeri', 'Perdagangan Jasa', 'Penginapan, Hotel', '385000000', '082340207784', 'imade@gmail.com', 'www.kokomogili.com', 5201010, 2147483647, 'dok_iup_11', 'Kokomo Gili Gede Resort', 2017, NULL),
(12, 'iup_12', '5203040909930002', 'siup', 1, 'UD. Cendi Manik', 'H. Muh. Mahdi', 'Dusun Sayong Baru Desa Cendi Manik , kec. Sekotong', 'Perdagangan Dalam Negeri', 'Perdagangan Barang', 'Sembako', '100000000', '082340207784', 'mahdi@gmail.com', '-', 5201010, 2147483647, 'dok_iup_12', 'UD. Cendi Manik', 2017, NULL),
(13, 'iup_13', '5203040909930003', 'siup', 1, 'PT. Sing-Sing Beach', 'Henri Paul Piere Vulcain', 'Dusun Labuan Cendik Desa Gili Gede Indah.', 'Perdagangan Dalam Negeri', 'Perdagangan Jasa', 'Jasa Akomodasi', '200000000', '082340207783', 'paul@gmail.com', 'www.singsingbeach.com', 5201010, 2147483647, 'dok_iup_13', 'singsingbeach.com', 2017, NULL),
(14, 'iup_14', '5203040909930004', 'siup', 1, 'PT. Eka Wana Lestari', 'Pengky Yupiter', 'Jl. Soekarno Hatta Lingkungan Montong Sari No 5, Kel. Gerung Utara.', 'Perdagangan Dalam Negeri', 'Perdagangan Jasa', 'Jasa Penyedia Akomodasi', '200000000', '082340207783', 'pengki@gmail.com', '-', 5201020, 2147483647, 'dok_iup_14', 'Jasa Penyedia Akomodasi', 2017, NULL),
(15, 'iup_15', '555', 'siup', 1, 'kjkj', 'kl', 'kjk', 'kj', 'kj', 'kj', 'kj', 'kl', 'kj', 'kk', 5201040, 2147483647, 'dok_iup_15', 'jkkjkjk', 2017, NULL),
(16, 'iup_16', '5203040909930001', 'siup', 3, 'hjk', 'ioi', 'io', '', 'jkj', 'k', 'jk', 'oio', 'jk', 'jk', 5202061, 2147483647, NULL, 'jk', 2017, NULL),
(17, 'iup_17', '5203040909930002', 'siup', 1, 'jkj', 'lklkl', 'jhjh', '', 'kj', 'kjk', 'jk', '897', 'jkj', 'kjk', 5201010, 2147483647, NULL, 'kjkj', 2017, NULL),
(18, 'iup_18', '5203040909930002', 'siup', 3, 'iu', 'jhkiu', 'uiu', '', 'iui', 'ui', 'uiu', 'iuki', 'iu', 'iu', 5201010, 2147483647, NULL, 'iui', 2017, NULL),
(19, 'iup_19', '5203040909930002', 'siup', 2, 'jkj', 'jk', 'jk', '', 'kjk', 'j', 'kj', 'jkjk', 'kj', 'kj', 5202040, 2147483647, NULL, 'kjk', 2017, NULL),
(20, 'iup_20', '5203040909930002', 'siup', 2, 'iui', 'yu', 'yu', '', 'ui', 'ui', 'u', 'yu', 'iu', 'iu', 5201010, 2147483647, NULL, 'iuiu', 2017, NULL),
(21, 'iup_21', '5203040909930002', 'siup', 1, 'jkj', 'jkj', 'jk', '', 'kj', 'kjk', 'kj', 'kjk', 'k', 'jk', 5202040, 2147483647, NULL, 'jkj', 2017, NULL),
(22, 'iup_22', '5203040909930002', 'siup', 2, 'kjk', 'ely', 'kj', '', 'jk', 'j', 'kj', 'kj', 'k', 'jk', 5201040, 2147483647, NULL, 'jk', 2017, NULL),
(23, 'iup_23', '989898', 'siup', 1, 'kkl', 'koi', 'ioi', '', 'klkl', 'lklk', 'lkl', 'oio', 'klk', 'lkl', 5201010, 2147483647, NULL, 'klk', 2017, 0),
(24, 'iup_24', '132', 'siup', 1, 'hjh', 'fg', 'gfg', '', 'rtr', 'refre', 'gfg', 'gfgf', 'ghg@fgg', 'ghg', 5201010, 2147483647, NULL, 'gh', 2017, 0),
(25, 'iup_25', '132', 'siup', 1, 'ada', 'dilah', 'gsajas', '', 'sdf', 'dds', 'dfe', '1213', 'do@sd', 'dfa', 5202011, 2147483647, NULL, 'slausa', 2017, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dp_tdp`
--

CREATE TABLE `dp_tdp` (
  `tdp_id` int(5) NOT NULL,
  `tdp_kode` varchar(10) NOT NULL,
  `tdp_ktp` varchar(20) NOT NULL,
  `tdp_jenisizin` char(5) NOT NULL,
  `tdp_jenispermohonan` int(2) NOT NULL,
  `tdp_pemilik` varchar(25) NOT NULL,
  `tdp_perusahaan` varchar(50) NOT NULL,
  `tdp_status` varchar(25) NOT NULL,
  `tdp_tlp` varchar(16) NOT NULL,
  `tdp_alamat` text NOT NULL,
  `tdp_kegiatanusaha` text NOT NULL,
  `tdp_kelembagaan` varchar(50) NOT NULL,
  `tdp_kbli` varchar(10) NOT NULL,
  `tdp_doktdp` varchar(15) NOT NULL,
  `tdp_tanggal` int(11) NOT NULL,
  `tdp_kecamatan` int(11) DEFAULT NULL,
  `tdp_desa` int(11) DEFAULT NULL,
  `tdp_keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dp_tdp`
--

INSERT INTO `dp_tdp` (`tdp_id`, `tdp_kode`, `tdp_ktp`, `tdp_jenisizin`, `tdp_jenispermohonan`, `tdp_pemilik`, `tdp_perusahaan`, `tdp_status`, `tdp_tlp`, `tdp_alamat`, `tdp_kegiatanusaha`, `tdp_kelembagaan`, `tdp_kbli`, `tdp_doktdp`, `tdp_tanggal`, `tdp_kecamatan`, `tdp_desa`, `tdp_keterangan`) VALUES
(15, 'tdp_15', '5203040909930005', 'tdp', 1, 'Hedar Ali', 'Toko Cahaya', 'Kantor Pusat', '082340207785', 'Komplek Pasar Keru, Desa Keru.', 'Kelontong', 'Perdagangan Barang', '7785', 'dok_tdp_15', 2017, 5201050, NULL, ''),
(16, 'tdp_16', '5203040909930006', 'tdp', 1, 'Arpin', 'UD. Nidan Jaya', 'Kantor Pusat', '082340207786', 'Dusun Suranadi Utara Desa Suranadi.', 'Bibit & Usaha Pertanian', 'Perdagangan Barang', '7786', 'dok_tdp_16', 2017, 5201050, 2147483647, 'Perdagangan Barang'),
(17, 'tdp_17', '555', 'tdp', 2, 'hj', 'hjh', 'jh', 'jh', 'jh', 'jh', 'hj', 'j', 'dok_tdp_17', 2017, 5202040, 2147483647, 'h'),
(18, 'tdp_18', '5203040909930001', 'tdp', 2, 'iilk', 'jkj', 'kjk', 'lklkl', 'lklk', 'jk', 'kj', 'j', '', 2017, 5201011, NULL, ''),
(19, 'tdp_19', '5203040909930002', 'tdp', 2, 'ui', 'ki', 'i', 'ui', 'uiu', 'oi', 'oio', 'oi', '', 2017, 5201010, NULL, ''),
(20, 'tdp_20', '5203040909930002', 'tdp', 1, 'kuk', 'ioi', 'oi', 'uk', 'ukuk', 'oi', 'io', 'o', '', 2017, 5201010, NULL, ''),
(21, 'tdp_21', '5203040909930002', 'tdp', 2, 'jkj', 'klk', 'lkl', 'kjk', 'j', 'klk', 'lkl', 'lklk', '', 2017, 5201040, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `kelurahan`
--

CREATE TABLE `kelurahan` (
  `IDKelurahan` int(11) NOT NULL,
  `Nama` varchar(45) DEFAULT NULL,
  `JumlahTps` varchar(45) DEFAULT NULL,
  `IDKecamatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id` int(4) NOT NULL,
  `notif` text NOT NULL,
  `keterangan` text,
  `ktp` varchar(16) NOT NULL,
  `tgl` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`) VALUES
('11', 'ACEH'),
('12', 'SUMATERA UTARA'),
('13', 'SUMATERA BARAT'),
('14', 'RIAU'),
('15', 'JAMBI'),
('16', 'SUMATERA SELATAN'),
('17', 'BENGKULU'),
('18', 'LAMPUNG'),
('19', 'KEPULAUAN BANGKA BELITUNG'),
('21', 'KEPULAUAN RIAU'),
('31', 'DKI JAKARTA'),
('32', 'JAWA BARAT'),
('33', 'JAWA TENGAH'),
('34', 'DI YOGYAKARTA'),
('35', 'JAWA TIMUR'),
('36', 'BANTEN'),
('51', 'BALI'),
('52', 'NUSA TENGGARA BARAT'),
('53', 'NUSA TENGGARA TIMUR'),
('61', 'KALIMANTAN BARAT'),
('62', 'KALIMANTAN TENGAH'),
('63', 'KALIMANTAN SELATAN'),
('64', 'KALIMANTAN TIMUR'),
('65', 'KALIMANTAN UTARA'),
('71', 'SULAWESI UTARA'),
('72', 'SULAWESI TENGAH'),
('73', 'SULAWESI SELATAN'),
('74', 'SULAWESI TENGGARA'),
('75', 'GORONTALO'),
('76', 'SULAWESI BARAT'),
('81', 'MALUKU'),
('82', 'MALUKU UTARA'),
('91', 'PAPUA BARAT'),
('94', 'PAPUA');

-- --------------------------------------------------------

--
-- Table structure for table `regencies`
--

CREATE TABLE `regencies` (
  `id` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `province_id` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `regencies`
--

INSERT INTO `regencies` (`id`, `province_id`, `name`) VALUES
('5201', '52', 'KABUPATEN LOMBOK BARAT'),
('5202', '52', 'KABUPATEN LOMBOK TENGAH'),
('5203', '52', 'KABUPATEN LOMBOK TIMUR'),
('5208', '52', 'KABUPATEN LOMBOK UTARA'),
('5271', '52', 'KOTA MATARAM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis_izin`
--

CREATE TABLE `tbl_jenis_izin` (
  `ji_kode_jenis` char(5) NOT NULL,
  `ji_nama_jenis` varchar(40) NOT NULL,
  `ji_keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jenis_izin`
--

INSERT INTO `tbl_jenis_izin` (`ji_kode_jenis`, `ji_nama_jenis`, `ji_keterangan`) VALUES
('HO', 'Izin Gangguan', 'Izin Gangguan'),
('ILOK', 'Izin Lokasi', 'Izin Lokasi'),
('ITU', 'Izin Tempat Usaha', 'Izin Tempat Usaha'),
('IUI', 'Izin Usaha Industri', 'Izin Usaha Industri'),
('IUP', 'Izin Usaha Perdagangan', 'Izin Usaha Perdagangan'),
('REKLM', 'Izin Reklame', 'Izin Reklame'),
('TDI', 'Tanda Daftra Industri', 'Tanda Daftra Industri'),
('TDP', 'Tanda Daftar Perusahaan', 'Tanda Daftar Perusahaan');

-- --------------------------------------------------------

--
-- Table structure for table `villages`
--

CREATE TABLE `villages` (
  `id` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `villages`
--

INSERT INTO `villages` (`id`, `district_id`, `name`) VALUES
('5201010001', '5201010', 'PELANGAN'),
('5201010002', '5201010', 'SEKOTONG BARAT'),
('5201010003', '5201010', 'BUWUN MAS'),
('5201010004', '5201010', 'SEKOTONG TENGAH'),
('5201010005', '5201010', 'KEDARO'),
('5201010006', '5201010', 'BATU PUTIH'),
('5201010007', '5201010', 'CENDI MANIK'),
('5201010008', '5201010', 'GILI GEDE INDAH'),
('5201010011', '5201010', 'TAMAN BARU'),
('5201011001', '5201011', 'MAREJE'),
('5201011002', '5201011', 'SEKOTONG TIMUR'),
('5201011003', '5201011', 'LEMBAR'),
('5201011004', '5201011', 'JEMBATAN KEMBAR'),
('5201011005', '5201011', 'LABUAN TERENG'),
('5201011006', '5201011', 'MAREJE TIMUR'),
('5201011007', '5201011', 'LEMBAR SELATAN'),
('5201011008', '5201011', 'JEMBATAN GANTUNG'),
('5201011009', '5201011', 'JEMBATAN KEMBAR TIMUR'),
('5201011010', '5201011', 'EYAT MAYANG'),
('5201020003', '5201020', 'BANYU URIP'),
('5201020004', '5201020', 'DASAN GERES'),
('5201020005', '5201020', 'BABUSSALAM'),
('5201020006', '5201020', 'DASAN TAPEN'),
('5201020007', '5201020', 'BELEKE'),
('5201020009', '5201020', 'KEBUNAYU'),
('5201020010', '5201020', 'GAPUK'),
('5201020011', '5201020', 'SUKA MAKMUR'),
('5201020012', '5201020', 'TEMPOS'),
('5201020013', '5201020', 'GERUNG SELATAN'),
('5201020014', '5201020', 'GERUNG UTARA'),
('5201020015', '5201020', 'MESANGGOK'),
('5201020016', '5201020', 'GIRI TEMBESI'),
('5201020017', '5201020', 'TAMAN AYU'),
('5201030001', '5201030', 'KURANJI'),
('5201030002', '5201030', 'PERAMPUAN'),
('5201030003', '5201030', 'KARANG BONGKOT'),
('5201030004', '5201030', 'TERONG TAWAH'),
('5201030005', '5201030', 'BAJUR'),
('5201030006', '5201030', 'TELAGA WARU'),
('5201030007', '5201030', 'BAGIK POLAK'),
('5201030008', '5201030', 'BENGKEL'),
('5201030009', '5201030', 'MEREMBU'),
('5201030010', '5201030', 'LABU API'),
('5201030011', '5201030', 'KURANJI DALANG'),
('5201030012', '5201030', 'BAGIK POLAK BARAT'),
('5201040005', '5201040', 'JAGARAGA INDAH'),
('5201040006', '5201040', 'MONTONG ARE'),
('5201040007', '5201040', 'KEDIRI'),
('5201040008', '5201040', 'GELOGOR'),
('5201040009', '5201040', 'RUMAK'),
('5201040010', '5201040', 'BANYUMULEK'),
('5201040011', '5201040', 'OMBE BARU'),
('5201040012', '5201040', 'DASAN BARU'),
('5201040013', '5201040', 'KEDIRI SELATAN'),
('5201040014', '5201040', 'LELEDE'),
('5201041001', '5201041', 'KURIPAN SELATAN'),
('5201041002', '5201041', 'KURIPAN'),
('5201041003', '5201041', 'KURIPAN UTARA'),
('5201041004', '5201041', 'JAGARAGA'),
('5201041005', '5201041', 'GIRI SASAK'),
('5201041006', '5201041', 'KURIPAN TIMUR'),
('5201050001', '5201050', 'SEMBUNG'),
('5201050002', '5201050', 'BADRAIN'),
('5201050003', '5201050', 'BATU KUTA'),
('5201050004', '5201050', 'TANAK BEAK'),
('5201050005', '5201050', 'PERESAK'),
('5201050006', '5201050', 'KERU'),
('5201050007', '5201050', 'SEDAU'),
('5201050008', '5201050', 'LEBAH SEMPAGE'),
('5201050009', '5201050', 'SESAOT'),
('5201050010', '5201050', 'SURANADI'),
('5201050011', '5201050', 'SELAT'),
('5201050012', '5201050', 'NYUR LEMBANG'),
('5201050013', '5201050', 'LEMBUAK'),
('5201050014', '5201050', 'DASAN TERENG'),
('5201050015', '5201050', 'KRAMA JAYA'),
('5201050016', '5201050', 'GERIMAX INDAH'),
('5201050017', '5201050', 'NARMADA'),
('5201050018', '5201050', 'GOLONG'),
('5201050019', '5201050', 'PAKUAN'),
('5201050020', '5201050', 'BUWUN SEJATI'),
('5201050021', '5201050', 'MEKAR SARI'),
('5201051001', '5201051', 'PETELUAN INDAH'),
('5201051002', '5201051', 'LINGSAR'),
('5201051003', '5201051', 'BATU KUMBUNG'),
('5201051004', '5201051', 'BATU MEKAR'),
('5201051005', '5201051', 'KARANG BAYAN'),
('5201051006', '5201051', 'LANGKO'),
('5201051007', '5201051', 'SIGERONGAN'),
('5201051008', '5201051', 'DUMAN'),
('5201051009', '5201051', 'DASAN GERIA'),
('5201051010', '5201051', 'GEGERUNG'),
('5201051011', '5201051', 'GIRI MADIA'),
('5201051012', '5201051', 'GEGELANG'),
('5201051013', '5201051', 'GONTORAN'),
('5201051014', '5201051', 'SARIBAYE'),
('5201051015', '5201051', 'BUG-BUG'),
('5201060001', '5201060', 'JATI SELA'),
('5201060002', '5201060', 'SESELA'),
('5201060003', '5201060', 'MIDANG'),
('5201060004', '5201060', 'KEKERI'),
('5201060005', '5201060', 'PENIMBUNG'),
('5201060006', '5201060', 'MAMBALAN'),
('5201060007', '5201060', 'DOPANG'),
('5201060008', '5201060', 'TAMAN SARI'),
('5201060009', '5201060', 'GUNUNG SARI'),
('5201060014', '5201060', 'KEKAIT'),
('5201060015', '5201060', 'MEKAR SARI'),
('5201060016', '5201060', 'GUNTUR MACAN'),
('5201060017', '5201060', 'GELANGSAR'),
('5201060018', '5201060', 'RANJOK'),
('5201060019', '5201060', 'BUKIT TINGGI'),
('5201060020', '5201060', 'JERINGO'),
('5201061001', '5201061', 'SANDIK'),
('5201061002', '5201061', 'MENINTING'),
('5201061003', '5201061', 'BATU LAYAR'),
('5201061004', '5201061', 'LEMBAH SARI'),
('5201061005', '5201061', 'SENTELUK'),
('5201061006', '5201061', 'SENGGIGI'),
('5201061007', '5201061', 'BATU LAYAR BARAT'),
('5201061008', '5201061', 'BENGKAUNG'),
('5201061009', '5201061', 'PUSUK LESTARI'),
('5202010002', '5202010', 'SELONG BELANAK'),
('5202010003', '5202010', 'MEKAR SARI'),
('5202010004', '5202010', 'BANYU URIP'),
('5202010005', '5202010', 'KATENG'),
('5202010006', '5202010', 'MANGKUNG'),
('5202010007', '5202010', 'BONDIR'),
('5202010013', '5202010', 'SETANGGOR'),
('5202010014', '5202010', 'PENUJAK'),
('5202010015', '5202010', 'BATUJAI'),
('5202010016', '5202010', 'TANAK RARANG'),
('5202011001', '5202011', 'MONTONG SAPAH'),
('5202011002', '5202011', 'KABUL'),
('5202011003', '5202011', 'PELAMBIK'),
('5202011004', '5202011', 'RANGGAGATA'),
('5202011005', '5202011', 'UNGGA'),
('5202011006', '5202011', 'DAREK'),
('5202011007', '5202011', 'BATU JANGKIH'),
('5202011008', '5202011', 'MONTONG AJAN'),
('5202011009', '5202011', 'PANDAN INDAH'),
('5202011010', '5202011', 'SERAGE'),
('5202011011', '5202011', 'TEDUH'),
('5202020001', '5202020', 'TUMPAK'),
('5202020002', '5202020', 'PRABU'),
('5202020003', '5202020', 'KUTA'),
('5202020004', '5202020', 'REMBITAN'),
('5202020005', '5202020', 'SUKADANA'),
('5202020006', '5202020', 'MERTAK'),
('5202020007', '5202020', 'PENGENGAT'),
('5202020008', '5202020', 'TERUWAI'),
('5202020009', '5202020', 'GAPURA'),
('5202020010', '5202020', 'KAWO'),
('5202020011', '5202020', 'SEGALE ANYAR'),
('5202020012', '5202020', 'SENGKOL'),
('5202020013', '5202020', 'PENGEMBUR'),
('5202020014', '5202020', 'KETARA'),
('5202020015', '5202020', 'TANAK AWU'),
('5202020016', '5202020', 'BANGKET PARAK'),
('5202030001', '5202030', 'KIDANG'),
('5202030002', '5202030', 'BILELANDO'),
('5202030003', '5202030', 'SEMOYANG'),
('5202030004', '5202030', 'GANTI'),
('5202030005', '5202030', 'BELEKA'),
('5202030006', '5202030', 'SENGKERANG'),
('5202030007', '5202030', 'LANDAH'),
('5202030008', '5202030', 'MARONG'),
('5202030009', '5202030', 'MUJUR'),
('5202030010', '5202030', 'SUKARAJA'),
('5202040001', '5202040', 'LOANG MAKA'),
('5202040002', '5202040', 'LANGKO'),
('5202040003', '5202040', 'SELEBUNG REMBIGA'),
('5202040004', '5202040', 'BAKAN'),
('5202040005', '5202040', 'DURIAN'),
('5202040006', '5202040', 'PENDEM'),
('5202040007', '5202040', 'JANAPRIA'),
('5202040008', '5202040', 'SABA'),
('5202040009', '5202040', 'LEKOR'),
('5202040010', '5202040', 'KEREMBONG'),
('5202040011', '5202040', 'JANGO'),
('5202040012', '5202040', 'SETUTA'),
('5202050001', '5202050', 'MUNCAN'),
('5202050002', '5202050', 'MONGGAS'),
('5202050003', '5202050', 'DARMAJI'),
('5202050004', '5202050', 'DASAN BARU'),
('5202050005', '5202050', 'KOPANG REMBIGA'),
('5202050006', '5202050', 'MONTONG GAMANG'),
('5202050007', '5202050', 'LENDANG ARA'),
('5202050008', '5202050', 'BEBUAQ'),
('5202050009', '5202050', 'WAJA GESENG'),
('5202050010', '5202050', 'SEMPARU'),
('5202050011', '5202050', 'AIK BUAL'),
('5202060001', '5202060', 'PANJISARI'),
('5202060002', '5202060', 'LENENG'),
('5202060003', '5202060', 'RENTENG'),
('5202060004', '5202060', 'PRAYA'),
('5202060005', '5202060', 'PRAPEN'),
('5202060006', '5202060', 'TIWUGALIH'),
('5202060009', '5202060', 'SEMAYAN'),
('5202060018', '5202060', 'BUNUT BAOK'),
('5202060019', '5202060', 'GERUNUNG'),
('5202060020', '5202060', 'GONJAK'),
('5202060021', '5202060', 'JAGO'),
('5202060022', '5202060', 'AIK MUAL'),
('5202060023', '5202060', 'MERTAK TOMBOK'),
('5202060024', '5202060', 'MONTONG TEREP'),
('5202060025', '5202060', 'MEKAR DAMAI'),
('5202061001', '5202061', 'JONTLAK'),
('5202061002', '5202061', 'GERANTUNG'),
('5202061003', '5202061', 'SASAKE'),
('5202061004', '5202061', 'LAJUT'),
('5202061005', '5202061', 'BATUNYALA'),
('5202061006', '5202061', 'PEJANGGIK'),
('5202061007', '5202061', 'KELEBUH'),
('5202061008', '5202061', 'BERAIM'),
('5202061009', '5202061', 'PENGADANG'),
('5202061010', '5202061', 'JURANG JALER'),
('5202061011', '5202061', 'DAKUNG'),
('5202061012', '5202061', 'PRAI MEKE'),
('5202070001', '5202070', 'LABULIA'),
('5202070002', '5202070', 'SUKARARA'),
('5202070003', '5202070', 'PUYUNG'),
('5202070004', '5202070', 'GEMEL'),
('5202070005', '5202070', 'BAREJULAT'),
('5202070006', '5202070', 'BUNKATE'),
('5202070007', '5202070', 'NYEROT'),
('5202070008', '5202070', 'BATUTULIS'),
('5202070009', '5202070', 'JELANTIK'),
('5202070010', '5202070', 'UBUNG'),
('5202070011', '5202070', 'BONJERUK'),
('5202070012', '5202070', 'PERINA'),
('5202070013', '5202070', 'PENGENJEK'),
('5202080001', '5202080', 'BILEBANTE'),
('5202080002', '5202080', 'BAGU'),
('5202080003', '5202080', 'SINTUNG'),
('5202080004', '5202080', 'PRINGGARATA'),
('5202080005', '5202080', 'MURBAYA'),
('5202080006', '5202080', 'SEPAKEK'),
('5202080007', '5202080', 'PEMEPEK'),
('5202080008', '5202080', 'MENEMENG'),
('5202080009', '5202080', 'ARJANGKA'),
('5202080010', '5202080', 'TAMAN INDAH'),
('5202080011', '5202080', 'SISIK'),
('5202090001', '5202090', 'BEBER'),
('5202090002', '5202090', 'PAGUTAN'),
('5202090003', '5202090', 'BARABALI'),
('5202090004', '5202090', 'BUJAK'),
('5202090005', '5202090', 'PERESAK'),
('5202090006', '5202090', 'MANTANG'),
('5202090007', '5202090', 'AIK DAREQ'),
('5202090008', '5202090', 'SELEBUNG'),
('5202090009', '5202090', 'TAMPAK SIRING'),
('5202090010', '5202090', 'MEKAR BERSATU'),
('5202091001', '5202091', 'MAS-MAS'),
('5202091002', '5202091', 'AIK BUKAQ'),
('5202091003', '5202091', 'SETILING'),
('5202091004', '5202091', 'AIK BERIK'),
('5202091005', '5202091', 'TERATAK'),
('5202091006', '5202091', 'LANTAN'),
('5202091007', '5202091', 'TANAK BEAQ'),
('5202091008', '5202091', 'KARANG SIDEMEN'),
('5203010005', '5203010', 'TANJUNG LUAR'),
('5203010006', '5203010', 'PIJOT'),
('5203010007', '5203010', 'SELEBUNG KETANGGA'),
('5203010008', '5203010', 'SEPIT'),
('5203010009', '5203010', 'KERUAK'),
('5203010010', '5203010', 'BATU PUTIK'),
('5203010011', '5203010', 'SENYIUR'),
('5203010012', '5203010', 'KETAPANG RAYA'),
('5203010013', '5203010', 'PIJOT UTARA'),
('5203010014', '5203010', 'KETANGGA JERAING'),
('5203010015', '5203010', 'MENDANA RAYA'),
('5203010016', '5203010', 'SETUNGKEP LINGSAR'),
('5203010017', '5203010', 'DANERASE'),
('5203010018', '5203010', 'MONTONG BELAE'),
('5203010019', '5203010', 'PULAU MARINGKIK'),
('5203011001', '5203011', 'BATUNAMPAR'),
('5203011002', '5203011', 'SUKARAJA'),
('5203011003', '5203011', 'JEROWARU'),
('5203011004', '5203011', 'PEMONGKONG'),
('5203011005', '5203011', 'PANDAN WANGI'),
('5203011006', '5203011', 'SEKAROH'),
('5203011007', '5203011', 'WAKAN'),
('5203011008', '5203011', 'EKAS BUANA'),
('5203011009', '5203011', 'KWANG RUNDUN'),
('5203011010', '5203011', 'BATU NAMPAR SELATAN'),
('5203011011', '5203011', 'PENE'),
('5203011012', '5203011', 'SUKADAMAI'),
('5203011013', '5203011', 'SEPAPAN'),
('5203011014', '5203011', 'SERIWE'),
('5203011015', '5203011', 'PAREMAS'),
('5203020001', '5203020', 'SUANGI'),
('5203020012', '5203020', 'SAKRA'),
('5203020013', '5203020', 'KABAR'),
('5203020014', '5203020', 'RUMBUK'),
('5203020015', '5203020', 'KESELET'),
('5203020016', '5203020', 'SAKRA SELATAN'),
('5203020017', '5203020', 'RUMBUK TIMUR'),
('5203020018', '5203020', 'SUANGI TIMUR'),
('5203020019', '5203020', 'MOYOT'),
('5203020020', '5203020', 'SONGAK'),
('5203020021', '5203020', 'PERESAK'),
('5203020022', '5203020', 'KUANG BARU'),
('5203021001', '5203021', 'SUKARARA'),
('5203021002', '5203021', 'GUNUNG RAJAK'),
('5203021003', '5203021', 'RENSING'),
('5203021004', '5203021', 'BUNGTIANG'),
('5203021005', '5203021', 'PENGKELAKMAS'),
('5203021006', '5203021', 'BOROK TOYANG'),
('5203021007', '5203021', 'PEJARING'),
('5203021008', '5203021', 'MONTONG BETER'),
('5203021009', '5203021', 'MENGKURU'),
('5203021010', '5203021', 'RENSING RAYA'),
('5203021011', '5203021', 'PEMATUNG'),
('5203021012', '5203021', 'JERO GUNUNG'),
('5203021013', '5203021', 'BOYEMARE'),
('5203021014', '5203021', 'GADUNG MAS'),
('5203021015', '5203021', 'TANAK KAKEN'),
('5203021016', '5203021', 'RENSING BAT'),
('5203021017', '5203021', 'KEMBANG ARE SAMPAI'),
('5203021018', '5203021', 'GERISAK SEMANGGLENG'),
('5203022001', '5203022', 'GELANGGANG'),
('5203022002', '5203022', 'SURABAYA'),
('5203022003', '5203022', 'LEPAK'),
('5203022004', '5203022', 'GERENENG'),
('5203022005', '5203022', 'MONTONGTANGI'),
('5203022006', '5203022', 'MENCEH'),
('5203022007', '5203022', 'LEPAK TIMUR'),
('5203022008', '5203022', 'SURABAYA UTARA'),
('5203022009', '5203022', 'GERENENG TIMUR'),
('5203022010', '5203022', 'LENTING'),
('5203030001', '5203030', 'JENGGIK'),
('5203030002', '5203030', 'RARANG'),
('5203030003', '5203030', 'SURADADI'),
('5203030004', '5203030', 'SANTONG'),
('5203030005', '5203030', 'TERARA'),
('5203030006', '5203030', 'SUKADANA'),
('5203030007', '5203030', 'RARANG SELATAN'),
('5203030008', '5203030', 'LANDO'),
('5203030009', '5203030', 'RARANG TENGAH'),
('5203030010', '5203030', 'LEMING'),
('5203030011', '5203030', 'SELAGIK'),
('5203030012', '5203030', 'EMBUNG RAJA'),
('5203030013', '5203030', 'KALIANYAR'),
('5203030014', '5203030', 'EMBUNG KANDONG'),
('5203030015', '5203030', 'RARANG BATAS'),
('5203030016', '5203030', 'PANDAN DURI'),
('5203031002', '5203031', 'KILANG'),
('5203031003', '5203031', 'MONTONG BETOK'),
('5203031004', '5203031', 'PRINGGAJURANG'),
('5203031005', '5203031', 'PERIAN'),
('5203031006', '5203031', 'JENGGIK UTARA'),
('5203031007', '5203031', 'PESANGGRAHAN'),
('5203031008', '5203031', 'PRINGGAJURANG UTARA'),
('5203031009', '5203031', 'LENDANG BELO'),
('5203040001', '5203040', 'SEMAYA'),
('5203040002', '5203040', 'SIKUR'),
('5203040003', '5203040', 'MONTONGBAAN'),
('5203040004', '5203040', 'LOYOK'),
('5203040005', '5203040', 'KOTARAJA'),
('5203040006', '5203040', 'TETEBATU'),
('5203040007', '5203040', 'KEMBANG KUNING'),
('5203040008', '5203040', 'MONTONGBAAN SELATAN'),
('5203040009', '5203040', 'GELORA'),
('5203040010', '5203040', 'DARMA SARI'),
('5203040011', '5203040', 'TETEBATU SELATAN'),
('5203040012', '5203040', 'JERUK MANIS'),
('5203040013', '5203040', 'SIKUR SELATAN'),
('5203040014', '5203040', 'SIKUR BARAT'),
('5203050001', '5203050', 'KESIK'),
('5203050002', '5203050', 'PAOK MOTONG'),
('5203050003', '5203050', 'MASBAGIK SELATAN'),
('5203050004', '5203050', 'MASBAGIK TIMUR'),
('5203050007', '5203050', 'MASBAGIK UTARA'),
('5203050008', '5203050', 'DANGER'),
('5203050009', '5203050', 'LENDANG NANGKA'),
('5203050010', '5203050', 'MASBAGIK UTARA BARU'),
('5203050011', '5203050', 'LENDANG NANGKA UTARA'),
('5203050012', '5203050', 'KUMBANG'),
('5203051001', '5203051', 'REMPUNG'),
('5203051002', '5203051', 'PRINGGASELA'),
('5203051003', '5203051', 'JURIT'),
('5203051004', '5203051', 'PENGADANGAN'),
('5203051005', '5203051', 'AIKDEWA'),
('5203051006', '5203051', 'JURIT BARU'),
('5203051007', '5203051', 'PRINGGASELA SELATAN'),
('5203051008', '5203051', 'PENGADANGAN BARAT'),
('5203051009', '5203051', 'PRINGGASELA TIMUR'),
('5203051010', '5203051', 'TIMBANUH'),
('5203060001', '5203060', 'SETANGGOR'),
('5203060002', '5203060', 'JANTUK'),
('5203060003', '5203060', 'PADAMARA'),
('5203060004', '5203060', 'DASAN LEKONG'),
('5203060005', '5203060', 'SUKAMULIA'),
('5203060006', '5203060', 'SUKAMULIA TIMUR'),
('5203060007', '5203060', 'PAOK PAMPANG'),
('5203060008', '5203060', 'SETANGGOR SELATAN'),
('5203060009', '5203060', 'NYIUR TEBEL'),
('5203061001', '5203061', 'ANJANI'),
('5203061002', '5203061', 'TEBABAN'),
('5203061003', '5203061', 'KERONGKONG'),
('5203061004', '5203061', 'BAGIK PAYUNG'),
('5203061005', '5203061', 'SURALAGA'),
('5203061006', '5203061', 'BAGIK PAYUNG SELATAN'),
('5203061007', '5203061', 'GERUNG PERMAI'),
('5203061008', '5203061', 'DASAN BOROK'),
('5203061009', '5203061', 'TUMBUH MULIA'),
('5203061010', '5203061', 'GAPUK'),
('5203061011', '5203061', 'BINTANG RINJANI'),
('5203061012', '5203061', 'PAOK LOMBOK'),
('5203061013', '5203061', 'DAMES DAMAI'),
('5203061014', '5203061', 'WARINGIN'),
('5203061015', '5203061', 'BAGIKPAYUNG TIMUR'),
('5203070001', '5203070', 'DENGGEN'),
('5203070005', '5203070', 'KELAYU JORONG'),
('5203070006', '5203070', 'KEMBANG SARI'),
('5203070007', '5203070', 'MAJIDI'),
('5203070008', '5203070', 'RAKAM'),
('5203070009', '5203070', 'PANCOR'),
('5203070010', '5203070', 'SEKARTEJA'),
('5203070011', '5203070', 'SANDUBAYA'),
('5203070012', '5203070', 'KHUSUS KOTA SELONG'),
('5203070013', '5203070', 'KELAYU SELATAN'),
('5203070014', '5203070', 'KELAYU UTARA'),
('5203070015', '5203070', 'DENGGEN TIMUR'),
('5203071001', '5203071', 'PENEDAGANDOR'),
('5203071002', '5203071', 'LABUHAN HAJI'),
('5203071003', '5203071', 'TEROS'),
('5203071004', '5203071', 'TANJUNG'),
('5203071005', '5203071', 'SURYA WANGI'),
('5203071006', '5203071', 'IJOBALIT'),
('5203071007', '5203071', 'KORLEKO'),
('5203071008', '5203071', 'KERTA SARI'),
('5203071009', '5203071', 'BANJAR SARI'),
('5203071010', '5203071', 'TIRTANADI'),
('5203071011', '5203071', 'KORLEKO SELATAN'),
('5203071012', '5203071', 'GERES'),
('5203080001', '5203080', 'BAGIK PAPAN'),
('5203080002', '5203080', 'APITAIK'),
('5203080003', '5203080', 'KERUMUT'),
('5203080004', '5203080', 'POHGADING'),
('5203080005', '5203080', 'BATUYANG'),
('5203080006', '5203080', 'PRINGGABAYA'),
('5203080013', '5203080', 'LABUHAN LOMBOK'),
('5203080014', '5203080', 'TEKO'),
('5203080015', '5203080', 'POHGADING TIMUR'),
('5203080016', '5203080', 'PRINGGABAYA UTARA'),
('5203080017', '5203080', 'TANAK GADANG'),
('5203080018', '5203080', 'ANGGARAKSA'),
('5203080019', '5203080', 'GUNUNG MALANG'),
('5203080020', '5203080', 'SERUNI MUMBUL'),
('5203080021', '5203080', 'TELAGA WARU'),
('5203081001', '5203081', 'SUELA'),
('5203081002', '5203081', 'KETANGGA'),
('5203081003', '5203081', 'SELAPARANG'),
('5203081004', '5203081', 'SUNTALANGU'),
('5203081005', '5203081', 'SAPIT'),
('5203081006', '5203081', 'PERIGI'),
('5203081007', '5203081', 'MEKAR SARI'),
('5203081008', '5203081', 'PUNCAK JERINGO'),
('5203090001', '5203090', 'LENEK DAYA'),
('5203090002', '5203090', 'LENEK'),
('5203090003', '5203090', 'LENEK LAUQ'),
('5203090004', '5203090', 'KALIJAGA'),
('5203090008', '5203090', 'KEMBANG KERANG'),
('5203090009', '5203090', 'AIKMEL'),
('5203090010', '5203090', 'AIKMEL UTARA'),
('5203090011', '5203090', 'KALIJAGA SELATAN'),
('5203090012', '5203090', 'KALIJAGA TIMUR'),
('5203090013', '5203090', 'LENEK BARU'),
('5203090014', '5203090', 'KEMBANG KERANG DAYA'),
('5203090015', '5203090', 'AIKMEL BARAT'),
('5203090016', '5203090', 'LENEK PESIRAMAN'),
('5203090017', '5203090', 'TOYA'),
('5203090018', '5203090', 'LENEK RAMBAN BIAK'),
('5203090019', '5203090', 'LENEK KALI BAMBANG'),
('5203090020', '5203090', 'KALIJAGA TENGAH'),
('5203090021', '5203090', 'BAGIK NYAKA SANTRI'),
('5203090022', '5203090', 'AIK PRAPA'),
('5203090023', '5203090', 'SUKAREMA'),
('5203090024', '5203090', 'KALIJAGA BARU'),
('5203090025', '5203090', 'LENEK DUREN'),
('5203090026', '5203090', 'KEROYA'),
('5203090027', '5203090', 'AIKMEL TIMUR'),
('5203091001', '5203091', 'MAMBEN LAUQ'),
('5203091002', '5203091', 'MAMBEN DAYA'),
('5203091003', '5203091', 'WANASABA'),
('5203091004', '5203091', 'KARANG BARU'),
('5203091005', '5203091', 'BEBIDAS'),
('5203091006', '5203091', 'TEMBENG PUTIK'),
('5203091007', '5203091', 'WANASABA LAUK'),
('5203091008', '5203091', 'MAMBEN BARU'),
('5203091009', '5203091', 'BERIRI JARAK'),
('5203091010', '5203091', 'BANDOK'),
('5203091011', '5203091', 'WANASABA DAYA'),
('5203091012', '5203091', 'OTAK RARANGAN'),
('5203091013', '5203091', 'JINENG'),
('5203091014', '5203091', 'KARANG BARU TIMUR'),
('5208010001', '5208010', 'MALAKA'),
('5208010002', '5208010', 'PEMENANG BARAT'),
('5208010003', '5208010', 'PEMENANG TIMUR'),
('5208010004', '5208010', 'GILI INDAH'),
('5208020001', '5208020', 'SIGAR PENJALIN'),
('5208020002', '5208020', 'TENIGA'),
('5208020003', '5208020', 'TEGAL MAJA'),
('5208020004', '5208020', 'JENGGALA'),
('5208020005', '5208020', 'TANJUNG'),
('5208020006', '5208020', 'SOKONG'),
('5208020007', '5208020', 'MEDANA'),
('5208030001', '5208030', 'BENTEK'),
('5208030002', '5208030', 'GONDANG'),
('5208030003', '5208030', 'GENGGELANG'),
('5208030004', '5208030', 'REMPEK'),
('5208030005', '5208030', 'SAMBIK BANGKOL'),
('5208040001', '5208040', 'SANTONG'),
('5208040002', '5208040', 'PENDUA'),
('5208040003', '5208040', 'KAYANGAN'),
('5208040004', '5208040', 'DANGIANG'),
('5208040005', '5208040', 'SESAIT'),
('5208040006', '5208040', 'GUMANTAR'),
('5208040007', '5208040', 'SELENGEN'),
('5208040008', '5208040', 'SALUT'),
('5208050001', '5208050', 'MUMBUL SARI'),
('5208050002', '5208050', 'AKAR AKAR'),
('5208050003', '5208050', 'SUKADANA'),
('5208050004', '5208050', 'ANYAR'),
('5208050005', '5208050', 'SENARU'),
('5208050006', '5208050', 'BAYAN'),
('5208050007', '5208050', 'KARANG BAJO'),
('5208050008', '5208050', 'LOLOAN'),
('5208050009', '5208050', 'SAMBIK ELEN'),
('5271010004', '5271010', 'AMPENAN SELATAN'),
('5271010005', '5271010', 'AMPENAN TENGAH'),
('5271010006', '5271010', 'PEJERUK'),
('5271010007', '5271010', 'AMPENAN UTARA'),
('5271010008', '5271010', 'BANJAR'),
('5271010009', '5271010', 'TAMAN SARI'),
('5271010010', '5271010', 'KEBON SARI'),
('5271010011', '5271010', 'PEJARAKAN KARYA'),
('5271010012', '5271010', 'BINTARO'),
('5271010013', '5271010', 'DAYAN PEKEN'),
('5271011001', '5271011', 'JEMPONG BARU'),
('5271011002', '5271011', 'TANJUNG KARANG'),
('5271011003', '5271011', 'KARANG PULE'),
('5271011004', '5271011', 'TANJUNG KARANG PERMAI'),
('5271011005', '5271011', 'KEKALIK JAYA'),
('5271020001', '5271020', 'PAGESANGAN'),
('5271020002', '5271020', 'MATARAM TIMUR'),
('5271020003', '5271020', 'PAGESANGAN BARAT'),
('5271020004', '5271020', 'PAGESANGAN TIMUR'),
('5271020005', '5271020', 'PEJANGGIK'),
('5271020006', '5271020', 'PUNIA'),
('5271020007', '5271020', 'PAGUTAN'),
('5271020008', '5271020', 'PAGUTAN BARAT'),
('5271020009', '5271020', 'PAGUTAN TIMUR'),
('5271021001', '5271021', 'DASAN AGUNG BARU'),
('5271021002', '5271021', 'GOMONG'),
('5271021003', '5271021', 'DASAN AGUNG'),
('5271021004', '5271021', 'MATARAM BARAT'),
('5271021005', '5271021', 'MONJOK BARAT'),
('5271021006', '5271021', 'KARANG BARU'),
('5271021007', '5271021', 'REMBIGA'),
('5271021008', '5271021', 'MONJOK TIMUR'),
('5271021009', '5271021', 'MONJOK'),
('5271030004', '5271030', 'CAKRANEGARA SELATAN'),
('5271030005', '5271030', 'CAKRANEGARA BARAT'),
('5271030006', '5271030', 'CAKRANEGARA TIMUR'),
('5271030007', '5271030', 'CAKRANEGARA UTARA'),
('5271030009', '5271030', 'SAYANG SAYANG'),
('5271030010', '5271030', 'CAKRANEGARA SELATAN BARU'),
('5271030011', '5271030', 'CILINAYA'),
('5271030012', '5271030', 'SAPTA MARGA'),
('5271030013', '5271030', 'MAYURA'),
('5271030014', '5271030', 'KARANG TALIWANG'),
('5271031001', '5271031', 'DASAN CERMEN'),
('5271031002', '5271031', 'ABIAN TUBUH BARU'),
('5271031003', '5271031', 'BABAKAN'),
('5271031004', '5271031', 'TURIDA'),
('5271031005', '5271031', 'MANDALIKA'),
('5271031006', '5271031', 'BERTAIS'),
('5271031007', '5271031', 'SELAGALAS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_regency_id_index` (`regency_id`);

--
-- Indexes for table `dp_akun`
--
ALTER TABLE `dp_akun`
  ADD PRIMARY KEY (`ap_ktp`);

--
-- Indexes for table `dp_datapemohon`
--
ALTER TABLE `dp_datapemohon`
  ADD PRIMARY KEY (`dp_ktp`);

--
-- Indexes for table `dp_datapermohonanizin`
--
ALTER TABLE `dp_datapermohonanizin`
  ADD PRIMARY KEY (`dpi_id`);

--
-- Indexes for table `dp_desa`
--
ALTER TABLE `dp_desa`
  ADD PRIMARY KEY (`ID_desa`);

--
-- Indexes for table `dp_dokpermohonan`
--
ALTER TABLE `dp_dokpermohonan`
  ADD PRIMARY KEY (`dok_id`);

--
-- Indexes for table `dp_doksiup`
--
ALTER TABLE `dp_doksiup`
  ADD PRIMARY KEY (`dokiup_id`);

--
-- Indexes for table `dp_doktdp`
--
ALTER TABLE `dp_doktdp`
  ADD PRIMARY KEY (`doktdp_id`);

--
-- Indexes for table `dp_izin`
--
ALTER TABLE `dp_izin`
  ADD PRIMARY KEY (`izin_id`);

--
-- Indexes for table `dp_jenisbadanusaha`
--
ALTER TABLE `dp_jenisbadanusaha`
  ADD PRIMARY KEY (`jbu_id`);

--
-- Indexes for table `dp_jenisizin`
--
ALTER TABLE `dp_jenisizin`
  ADD PRIMARY KEY (`ji_id`);

--
-- Indexes for table `dp_jenispermohonan`
--
ALTER TABLE `dp_jenispermohonan`
  ADD PRIMARY KEY (`jp_id`);

--
-- Indexes for table `dp_kabupaten`
--
ALTER TABLE `dp_kabupaten`
  ADD PRIMARY KEY (`ID_kabupaten`);

--
-- Indexes for table `dp_kecamatan`
--
ALTER TABLE `dp_kecamatan`
  ADD PRIMARY KEY (`ID_kecamatan`);

--
-- Indexes for table `dp_koordinat`
--
ALTER TABLE `dp_koordinat`
  ADD PRIMARY KEY (`kor_id`);

--
-- Indexes for table `dp_pengaduan`
--
ALTER TABLE `dp_pengaduan`
  ADD PRIMARY KEY (`pengaduan_id`);

--
-- Indexes for table `dp_siup`
--
ALTER TABLE `dp_siup`
  ADD PRIMARY KEY (`iup_id`),
  ADD KEY `iup_kode` (`iup_kode`);

--
-- Indexes for table `dp_tdp`
--
ALTER TABLE `dp_tdp`
  ADD PRIMARY KEY (`tdp_id`),
  ADD KEY `tdp_kode` (`tdp_kode`);

--
-- Indexes for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`IDKelurahan`);

--
-- Indexes for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regencies`
--
ALTER TABLE `regencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regencies_province_id_index` (`province_id`);

--
-- Indexes for table `tbl_jenis_izin`
--
ALTER TABLE `tbl_jenis_izin`
  ADD PRIMARY KEY (`ji_kode_jenis`);

--
-- Indexes for table `villages`
--
ALTER TABLE `villages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `villages_district_id_index` (`district_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dp_datapermohonanizin`
--
ALTER TABLE `dp_datapermohonanizin`
  MODIFY `dpi_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `dp_dokpermohonan`
--
ALTER TABLE `dp_dokpermohonan`
  MODIFY `dok_id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dp_izin`
--
ALTER TABLE `dp_izin`
  MODIFY `izin_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `dp_siup`
--
ALTER TABLE `dp_siup`
  MODIFY `iup_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `dp_tdp`
--
ALTER TABLE `dp_tdp`
  MODIFY `tdp_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_regency_id_foreign` FOREIGN KEY (`regency_id`) REFERENCES `regencies` (`id`);

--
-- Constraints for table `regencies`
--
ALTER TABLE `regencies`
  ADD CONSTRAINT `regencies_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`);

--
-- Constraints for table `villages`
--
ALTER TABLE `villages`
  ADD CONSTRAINT `villages_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
