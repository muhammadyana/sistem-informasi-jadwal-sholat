-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2017 at 12:49 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `simajid`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_rooms`
--

CREATE TABLE IF NOT EXISTS `chat_rooms` (
`chat_room_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_rooms`
--

INSERT INTO `chat_rooms` (`chat_room_id`, `name`, `created_at`) VALUES
(1, 'Kajian', '2016-10-06 06:57:40'),
(2, 'Zakat', '2016-10-06 06:57:40'),
(3, 'Evaluasi', '2016-10-06 06:57:40'),
(4, 'Khutbah Jum''at', '2016-10-06 06:57:40'),
(5, 'Jadwal Sholat', '2016-10-06 06:57:40'),
(6, 'Imam & Khatib', '2016-10-06 06:57:40'),
(7, 'Muadzin', '2016-10-06 06:57:40'),
(9, 'B.Arab', '2016-10-05 19:04:19'),
(10, 'Fiqih', '2016-10-04 20:08:24');

-- --------------------------------------------------------

--
-- Table structure for table `data_mosque`
--

CREATE TABLE IF NOT EXISTS `data_mosque` (
`id` int(11) NOT NULL,
  `manager` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `city` text NOT NULL,
  `id_city` int(20) NOT NULL,
  `address` text NOT NULL,
  `name_of_mosque` varchar(50) NOT NULL,
  `lat` varchar(50) NOT NULL,
  `lng` varchar(50) NOT NULL,
  `iqomah` varchar(20) NOT NULL,
  `khotib` varchar(100) NOT NULL,
  `tgl_khotib` varchar(50) NOT NULL,
  `video` text NOT NULL,
  `reminder1` varchar(20) NOT NULL,
  `reminder2` varchar(20) NOT NULL,
  `reminder3` varchar(20) NOT NULL,
  `reminder4` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_mosque`
--

INSERT INTO `data_mosque` (`id`, `manager`, `user_id`, `city`, `id_city`, `address`, `name_of_mosque`, `lat`, `lng`, `iqomah`, `khotib`, `tgl_khotib`, `video`, `reminder1`, `reminder2`, `reminder3`, `reminder4`) VALUES
(6, 'Keke Pohan', 10, 'Jayanti Tangerang', 413, 'Jayan Tangerang', 'Masjid Jami Jayanti', '-6.2053549', '106.3993658', '300', 'Muhammad Yana Mulyana', '13/01/2017', 'https://www.youtube.com/embed/A-lebYNcgBk', '', '', '', ''),
(9, 'Admin Masjid Salman', 11, 'Bandung', 1, 'Gedung Kayu Lt. 1, Jl. Ganesha No. 7, Lebak Siliwangi, Coblong, Lb. Siliwangi, Coblong,', 'Masjid Salman ITB', '-6.9174639', '107.6191228', '240', '', '', '', '', '', '', ''),
(13, 'Muhammad Yana Mulyana', 7, 'Bandung', 1, 'Jl Puyuh Dalam No 151 A Kec Coblong Kelurahan Sadang Serang Dago Bandung', 'Muhammad Yana Mulyana', '-6.9174639', '107.6191228', '300', '27/01/2017', '300', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kajian`
--

CREATE TABLE IF NOT EXISTS `kajian` (
`id` int(11) NOT NULL,
  `id_mosque` int(11) NOT NULL,
  `nama_1` varchar(100) NOT NULL,
  `size_1` int(11) NOT NULL,
  `type_1` varchar(20) NOT NULL,
  `tagline_pertama_1` text NOT NULL,
  `tagline_kedua_1` text NOT NULL,
  `nama_2` varchar(100) NOT NULL,
  `size_2` int(11) NOT NULL,
  `type_2` varchar(20) NOT NULL,
  `tagline_pertama_2` text NOT NULL,
  `tagline_kedua_2` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kajian`
--

INSERT INTO `kajian` (`id`, `id_mosque`, `nama_1`, `size_1`, `type_1`, `tagline_pertama_1`, `tagline_kedua_1`, `nama_2`, `size_2`, `type_2`, `tagline_pertama_2`, `tagline_kedua_2`) VALUES
(1, 13, 'flowchart.png', 126893, 'image/png', '', '', '', 0, '', '', ''),
(2, 13, 'flowchart.jpg', 633604, 'image/jpeg', 'sadsad', 'sadsad', '', 0, '', '', ''),
(3, 13, 'flowchart kedua.jpg', 708547, 'image/jpeg', 'sadsadsa', 'sadsadsa', '', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE IF NOT EXISTS `kota` (
  `tgl` text NOT NULL,
`id` int(3) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `detail_kota` text NOT NULL,
  `lat` text NOT NULL,
  `lng` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=416 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`tgl`, `id`, `kota`, `detail_kota`, `lat`, `lng`) VALUES
('Selasa, 25 Oktober 2016 | 20:24 WIB', 1, 'Bandung', 'Bandung, Bandung City, West Java, Indonesia', '-6.9174639', '107.6191228'),
('Selasa, 25 Oktober 2016 | 20:32 WIB', 2, 'Jakarta', 'Jakarta, Special Capital Region of Jakarta, Indonesia', '-6.2087634', '106.845599'),
('Selasa, 25 Oktober 2016 | 20:41 WIB', 3, 'Bukittinggi', 'Bukittinggi, Bukittinggi City, West Sumatra, Indonesia', '-0.3039178', '100.383479'),
('Selasa, 25 Oktober 2016 | 20:42 WIB', 4, 'Medan', 'Medan, Medan City, North Sumatra, Indonesia', '3.5951956', '98.6722227'),
('Selasa, 25 Oktober 2016 | 20:43 WIB', 5, 'Jatihandap', 'Jatihandap, Mandalajati, Bandung City, West Java, Indonesia', '-6.8965422', '107.6644471'),
('Selasa, 25 Oktober 2016 | 20:43 WIB', 6, 'Cinambo', 'Cinambo, Bandung City, West Java, Indonesia', '-6.9328971', '107.6896073'),
('Selasa, 25 Oktober 2016 | 20:43 WIB', 7, 'Kopo', 'Kopo, Kutawaringin, Bandung, West Java, Indonesia', '-6.9954519', '107.5357224'),
('Selasa, 25 Oktober 2016 | 20:45 WIB', 8, 'Cikajang', 'Cikajang, Garut Regency, West Java, Indonesia', '-7.3856497', '107.7991545'),
('Selasa, 25 Oktober 2016 | 20:45 WIB', 9, 'Jelekong', 'Jelekong, Baleendah, Bandung, West Java, Indonesia', '-7.0267716', '107.6600073'),
('Selasa, 25 Oktober 2016 | 20:45 WIB', 10, 'Aceh', 'Aceh, Indonesia', '4.695135', '96.7493993'),
('Selasa, 25 Oktober 2016 | 20:46 WIB', 11, 'Kalimantan', 'Kalimantan', '0.9618834', '114.5548495'),
('Selasa, 25 Oktober 2016 | 20:46 WIB', 12, 'Balik Papan', 'Balikpapan, Balikpapan City, East Kalimantan, Indonesia', '-1.2379274', '116.8528526'),
('Selasa, 25 Oktober 2016 | 20:47 WIB', 13, 'Bandung Barat', 'West Bandung Regency, West Java, Indonesia', '-6.8652214', '107.4919767'),
('Selasa, 25 Oktober 2016 | 20:48 WIB', 14, 'Aek Kanopan', 'Aek Kanopan, Kualuh Hulu, North Labuhanbatu Regency, North Sumatra, Indonesia', '2.5674938', '99.6174332'),
('Selasa, 25 Oktober 2016 | 20:48 WIB', 15, 'Kendari', 'Kendari, Kendari City, South East Sulawesi, Indonesia', '-3.9984597', '122.5129742'),
('Selasa, 25 Oktober 2016 | 20:48 WIB', 16, 'Palembang', 'Palembang, Palembang City, South Sumatra, Indonesia', '-2.9760735', '104.7754307'),
('Selasa, 25 Oktober 2016 | 20:48 WIB', 17, 'Pontianak', 'Pontianak, West Kalimantan, Indonesia', '-0.0263303', '109.3425039'),
('Selasa, 25 Oktober 2016 | 20:49 WIB', 18, 'Padang', 'Padang, Padang City, West Sumatra, Indonesia', '-0.9470832', '100.417181'),
('Selasa, 25 Oktober 2016 | 20:49 WIB', 19, 'Ambon', 'Teluk Ambon, Kota Ambon, Maluku, Indonesia', '-3.6553932', '128.1907723'),
('Selasa, 25 Oktober 2016 | 20:49 WIB', 20, 'Surabaya', 'Surabaya, Surabaya City, East Java, Indonesia', '-7.2574719', '112.7520883'),
('Selasa, 25 Oktober 2016 | 20:50 WIB', 21, 'Banten', 'Banten, Indonesia', '-6.4058172', '106.0640179'),
('Selasa, 25 Oktober 2016 | 20:50 WIB', 22, 'Indramayu', 'Indramayu, Indramayu Sub-District, Indramayu Regency, West Java, Indonesia', '-6.3373097', '108.3258198'),
('Selasa, 25 Oktober 2016 | 20:50 WIB', 23, 'Karawang', 'Karawang, East Karawang, Karawang Regency, West Java, Indonesia', '-6.3054002', '107.3202333'),
('Selasa, 25 Oktober 2016 | 20:51 WIB', 25, 'Cimahi', 'Cimahi, Central Cimahi, Cimahi City, West Java, Indonesia', '-6.8840816', '107.5413039'),
('Selasa, 25 Oktober 2016 | 20:51 WIB', 26, 'Garut', 'Kota Garut, Kota Kulon, Garut Kota, Kabupaten Garut, Jawa Barat, Indonesia', '-7.227906', '107.908699'),
('Selasa, 25 Oktober 2016 | 20:51 WIB', 27, 'Madiun', 'Madiun, Madiun City, East Java, Indonesia', '-7.6310587', '111.5300159'),
('Selasa, 25 Oktober 2016 | 20:51 WIB', 28, 'Bogor', 'Bogor, Kp. Parung Jambu, Bogor City, West Java, Indonesia', '-6.5971469', '106.8060388'),
('Selasa, 25 Oktober 2016 | 20:52 WIB', 29, 'Yogyakarta', 'Yogyakarta, Yogyakarta City, Special Region of Yogyakarta, Indonesia', '-7.7955798', '110.3694896'),
('Selasa, 25 Oktober 2016 | 20:54 WIB', 30, 'Tanggerabg', 'Tangerang, Tangerang City, Banten, Indonesia', '-6.2023936', '106.6527099'),
('Selasa, 25 Oktober 2016 | 20:54 WIB', 31, 'Lamongan', 'Lamongan, Lamongan Sub-District, Lamongan Regency, East Java, Indonesia', '-7.1181109', '112.4149811'),
('Selasa, 25 Oktober 2016 | 20:55 WIB', 32, 'Toraja', 'North Toraja Regency, South Sulawesi, Indonesia', '-2.8621942', '119.8352303'),
('Selasa, 25 Oktober 2016 | 20:55 WIB', 33, 'Samarinda', 'Samarinda, Samarinda City, East Kalimantan, Indonesia', '-0.4948232', '117.1436154'),
('Selasa, 25 Oktober 2016 | 20:55 WIB', 34, 'Kupang', 'Kupang, Kupang City, East Nusa Tenggara, Indonesia', '-10.1771997', '123.6070329'),
('Selasa, 25 Oktober 2016 | 20:57 WIB', 35, 'Probolinggo', 'Probolinggo, Probolinggo City, East Java, Indonesia', '-7.7764226', '113.2037131'),
('Selasa, 25 Oktober 2016 | 20:58 WIB', 36, 'Denpasar', 'Denpasar, Denpasar City, Bali, Indonesia', '-8.6704582', '115.2126293'),
('Selasa, 25 Oktober 2016 | 20:58 WIB', 37, 'Bengkulu', 'Bengkulu, Bengkulu City, Bengkulu, Indonesia', '-3.7928451', '102.2607641'),
('Selasa, 25 Oktober 2016 | 20:58 WIB', 38, 'Makasar', 'Makassar, Makassar City, South Sulawesi, Indonesia', '-5.1476651', '119.4327314'),
('Selasa, 25 Oktober 2016 | 20:58 WIB', 39, 'Rangkasbittung', 'Rangkasbitung, Rangkasbitung Bar., Rangkasbitung, Kabupaten Lebak, Banten, Indonesia', '-6.3656499', '106.246399'),
('Selasa, 25 Oktober 2016 | 21:01 WIB', 41, 'Kediri', 'Kediri, East Java, Indonesia', '-7.8480156', '112.0178286'),
('Selasa, 25 Oktober 2016 | 21:02 WIB', 42, 'Suabng', 'Subang, Subang Sub-District, Subang Regency, West Java, Indonesia', '-6.5622888', '107.7607951'),
('Selasa, 25 Oktober 2016 | 21:02 WIB', 43, 'Sumedang', 'Semedang, Kuala Behe, Landak Regency, West Kalimantan, Indonesia', '0.6095949', '110.0330554'),
('Selasa, 25 Oktober 2016 | 21:03 WIB', 44, 'Sumesang West Java', 'Sumedang Regency, West Java, Indonesia', '-6.832858', '107.9531836'),
('Selasa, 25 Oktober 2016 | 21:03 WIB', 45, 'Palu', 'Palu, Palu City, Central Sulawesi, Indonesia', '-0.9002915', '119.8779987'),
('Selasa, 25 Oktober 2016 | 21:03 WIB', 46, 'Watapome', 'Watampone, Tanete Riattang, Kabupaten Bone, Sulawesi Selatan, Indonesia', '-4.538772', '120.324997'),
('Selasa, 25 Oktober 2016 | 21:04 WIB', 47, 'Jayapura', 'Jayapura, Jayapura City, Papua, Indonesia', '-2.5916025', '140.6689995'),
('Selasa, 25 Oktober 2016 | 21:04 WIB', 48, 'Malang', 'Malang, Malang City, East Java, Indonesia', '-7.9666204', '112.6326321'),
('Selasa, 25 Oktober 2016 | 21:04 WIB', 49, 'Semarang', 'Semarang, Semarang City, Central Java, Indonesia', '-7.0051453', '110.4381254'),
('Selasa, 25 Oktober 2016 | 21:04 WIB', 50, 'Boyolali', 'Boyolali, Boyolali Sub-District, Boyolali Regency, Central Java, Indonesia', '-7.52053', '110.595023'),
('Selasa, 25 Oktober 2016 | 21:06 WIB', 51, 'Lebak', 'Lebak, Sultan Kudarat, Philippines', '6.632811', '124.1976882'),
('Selasa, 25 Oktober 2016 | 21:07 WIB', 52, 'Batam', 'Batam, Batam City, Riau Islands, Indonesia', '1.0456264', '104.0304535'),
('Selasa, 25 Oktober 2016 | 21:07 WIB', 53, 'Jakarta Utara', 'North Jakarta, North Jakarta City, Special Capital Region of Jakarta, Indonesia', '-6.1384145', '106.863956'),
('Selasa, 25 Oktober 2016 | 21:07 WIB', 54, 'Makassar', 'Makassar, Makassar City, South Sulawesi, Indonesia', '-5.1476651', '119.4327314'),
('Selasa, 25 Oktober 2016 | 21:08 WIB', 55, 'Sidoardjo', 'Sidoarjo, Sidoarjo Sub-Distrcit, Sidoarjo Regency, East Java, Indonesia', '-7.4497718', '112.7015495'),
('Selasa, 25 Oktober 2016 | 21:08 WIB', 56, 'Mojokerto', 'Mojokerto, East Java, Indonesia', '-7.563831', '112.4768287'),
('Selasa, 25 Oktober 2016 | 21:10 WIB', 57, 'Pekanbaru', 'Pekanbaru, Pekanbaru City, Riau, Indonesia', '0.5070677', '101.4477793'),
('Selasa, 25 Oktober 2016 | 21:10 WIB', 58, 'Rangkas Bitung', 'Rangkasbitung, Rangkasbitung Bar., Rangkasbitung, Kabupaten Lebak, Banten, Indonesia', '-6.3656499', '106.246399'),
('Selasa, 25 Oktober 2016 | 21:10 WIB', 59, 'Sabang', 'Sabang, Sukajaya, Sabang City, Aceh, Indonesia', '5.880241', '95.336574'),
('Selasa, 25 Oktober 2016 | 21:10 WIB', 60, 'Merauke', 'Merauke, Merauke Sub-District, Merauke Regency, Papua, Indonesia', '-8.4991117', '140.4049814'),
('Selasa, 25 Oktober 2016 | 21:18 WIB', 61, 'Pandglang', 'Pandeglang, Pandeglang Sub-District, Pandeglang Regency, Banten, Indonesia', '-6.3270611', '106.1169299'),
('Selasa, 25 Oktober 2016 | 21:19 WIB', 62, 'Ternate', 'Ternate, Ternate City, North Maluku, Indonesia', '0.7898868', '127.3753792'),
('Selasa, 25 Oktober 2016 | 21:20 WIB', 63, 'Maluku', 'Maluku, Indonesia', '-3.2384616', '130.1452734'),
('Selasa, 25 Oktober 2016 | 21:20 WIB', 64, 'Sidoarjo', 'Sidoarjo, Sidoarjo Sub-Distrcit, Sidoarjo Regency, East Java, Indonesia', '-7.4497718', '112.7015495'),
('Selasa, 25 Oktober 2016 | 21:20 WIB', 65, 'Lombok Barat', 'West Lombok Regency, West Nusa Tenggara, Indonesia', '-8.6464599', '116.1123078'),
('Selasa, 25 Oktober 2016 | 21:20 WIB', 66, 'MALANG', 'Malang, Malang City, East Java, Indonesia', '-7.9666204', '112.6326321'),
('Selasa, 25 Oktober 2016 | 21:21 WIB', 67, 'Banyu Wangi', 'Banyuwangi, Banyuwangi Sub-District, Banyuwangi Regency, East Java, Indonesia', '-8.2192335', '114.3692267'),
('Selasa, 25 Oktober 2016 | 21:22 WIB', 68, 'Papua', 'Papua, Indonesia', '-4.269928', '138.0803529'),
('Selasa, 25 Oktober 2016 | 21:22 WIB', 69, 'Jakarta Barat', 'West Jakarta, West Jakarta City, Special Capital Region of Jakarta, Indonesia', '-6.1683295', '106.7588494'),
('Selasa, 25 Oktober 2016 | 21:22 WIB', 70, 'Jakarta Selatan', 'South Jakarta, South Jakarta City, Special Capital Region of Jakarta, Indonesia', '-6.2614927', '106.8105998'),
('Selasa, 25 Oktober 2016 | 21:23 WIB', 71, 'Palopo', 'Palopo, Palopo City, South Sulawesi, Indonesia', '-3.0108458', '120.2022239'),
('Selasa, 25 Oktober 2016 | 21:23 WIB', 72, 'Banjar', 'Banjar, South Kalimantan, Indonesia', '-3.3200228', '114.9991464'),
('Selasa, 25 Oktober 2016 | 21:24 WIB', 73, 'Nusa Tenggara Barat', 'West Nusa Tenggara, Indonesia', '-8.6529334', '117.3616476'),
('Selasa, 25 Oktober 2016 | 21:24 WIB', 74, 'Pangandaran', 'Pangandaran, West Java, Indonesia', '-7.6150611', '108.4988269'),
('Selasa, 25 Oktober 2016 | 21:24 WIB', 75, 'Batu Sangkar', 'Batusangkar, Limo Kaum, Lima Kaum, Tanah Datar Regency, West Sumatra, Indonesia', '-0.45964', '100.590599'),
('Selasa, 25 Oktober 2016 | 21:24 WIB', 76, 'Timika', 'Timika, Koperapoka, Mimika Baru, Mimika Regency, Papua, Indonesia', '-4.546759', '136.8837207'),
('Selasa, 25 Oktober 2016 | 21:24 WIB', 77, 'Klaten', 'Klaten, Klaten Regency, Central Java, Indonesia', '-7.739967', '110.6645683'),
('Selasa, 25 Oktober 2016 | 21:25 WIB', 78, 'Cilacap', 'Cilacap, Cilacap Regency, Central Java, Indonesia', '-7.6982991', '109.023521'),
('Selasa, 25 Oktober 2016 | 21:25 WIB', 79, 'Bukit Tinggi', 'Bukit Tinggi, 28750 Bentong, Pahang, Malaysia', '3.400997', '101.846822'),
('Selasa, 25 Oktober 2016 | 21:25 WIB', 80, 'Tanjungpinang', 'Tanjung Pinang, Tanjung Pinang City, Riau Islands, Indonesia', '0.9185504', '104.4665072'),
('Selasa, 25 Oktober 2016 | 21:25 WIB', 81, 'Tendean', 'Jl. Tendean, Kabupaten Sragen, Jawa Tengah, Indonesia', '-7.3599792', '111.0601433'),
('Selasa, 25 Oktober 2016 | 21:26 WIB', 82, 'Nusa Tenggara Timur', 'East Nusa Tenggara, Indonesia', '-8.6573819', '121.0793705'),
('Selasa, 25 Oktober 2016 | 21:28 WIB', 83, 'Banjarmasin', 'Banjarmasin, Banjarmasin City, South Kalimantan, Indonesia', '-3.3186067', '114.5943784'),
('Selasa, 25 Oktober 2016 | 21:29 WIB', 84, 'Sleman', 'Sleman, Sumberadi, Mlati, Sleman Regency, Special Region of Yogyakarta, Indonesia', '-7.716165', '110.335403'),
('Selasa, 25 Oktober 2016 | 21:29 WIB', 85, 'Maluku Utara', 'North Maluku, Indonesia', '1.5709993', '127.8087693'),
('Selasa, 25 Oktober 2016 | 21:29 WIB', 86, 'Sumba', 'Sumba, East Nusa Tenggara, Indonesia', '-9.6993439', '119.9740534'),
('Selasa, 25 Oktober 2016 | 21:31 WIB', 87, 'Tasikmalaya', 'Tasikmalaya, West Java, Indonesia', '-7.3505808', '108.2171633'),
('Selasa, 25 Oktober 2016 | 21:31 WIB', 88, 'Kresek', 'Kresek, Tangerang, Banten, Indonesia', '-6.143977', '106.3993658'),
('Selasa, 25 Oktober 2016 | 21:33 WIB', 89, 'Depok', 'Depok, Depok City, West Java, Indonesia', '-6.4024844', '106.7942405'),
('Selasa, 25 Oktober 2016 | 21:33 WIB', 90, 'Cikampek', 'Cikampek, Karawang Regency, West Java, Indonesia', '-6.3958742', '107.4381106'),
('Selasa, 25 Oktober 2016 | 21:34 WIB', 91, 'Cikarang', 'Cikarang, Bekasi, Jawa Barat, Indonesia', '-6.3079232', '107.172085'),
('Selasa, 25 Oktober 2016 | 21:34 WIB', 92, 'Subang', 'Subang, Subang Sub-District, Subang Regency, West Java, Indonesia', '-6.5622888', '107.7607951'),
('Selasa, 25 Oktober 2016 | 21:34 WIB', 93, 'Cirebon', 'Cirebon, Cirebon City, West Java, Indonesia', '-6.7320229', '108.5523164'),
('Selasa, 25 Oktober 2016 | 21:35 WIB', 94, 'Cilegon', 'Cilegon, Cilegon City, Banten, Indonesia', '-6.0025343', '106.0111203'),
('Selasa, 25 Oktober 2016 | 21:36 WIB', 95, 'Buah Batu', 'Jl. Buah Batu, Lengkong, Kota Bandung, Jawa Barat, Indonesia', '-6.9386241', '107.6243193'),
('Selasa, 25 Oktober 2016 | 21:36 WIB', 96, 'Deli Serdang', 'Deli Serdang Regency, North Sumatra, Indonesia', '3.4201802', '98.704075'),
('Selasa, 25 Oktober 2016 | 21:37 WIB', 97, 'Tg.priok', 'Jl. K. TG. Priok, Pd. Bambu, Duren Sawit, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13430, Indonesia', '-6.2353114', '106.8985598'),
('Selasa, 25 Oktober 2016 | 21:37 WIB', 98, 'Samosir', 'Samosir, Samosir Regency, North Sumatra, Indonesia', '2.6273112', '98.7922018'),
('Selasa, 25 Oktober 2016 | 21:37 WIB', 99, 'Sibuhuan', 'Sibuhuan Jae, Barumun, Padang Lawas Regency, North Sumatra, Indonesia', '1.0634343', '99.735809'),
('Selasa, 25 Oktober 2016 | 21:38 WIB', 100, 'Mandailing', 'Mandailing, Tebing Tinggi Kota, Tebing Tinggi City, North Sumatra, Indonesia', '3.3245228', '99.1563471'),
('Selasa, 25 Oktober 2016 | 21:38 WIB', 101, 'Panyabungan', 'Panyabungan, Mandailing Natal Regency, North Sumatra, Indonesia', '0.874139', '99.6118667'),
('Selasa, 25 Oktober 2016 | 21:38 WIB', 102, 'Padang Lawas', 'Padang Lawas Regency, North Sumatra, Indonesia', '1.1186977', '99.8124935'),
('Selasa, 25 Oktober 2016 | 21:38 WIB', 103, 'Gerung', 'Gerung, West Lombok Regency, West Nusa Tenggara, Indonesia', '-8.6958656', '116.1241257'),
('Selasa, 25 Oktober 2016 | 21:38 WIB', 104, 'Tabanan', 'Tabanan, Tabanan Sub-District, Tabanan Regency, Bali, Indonesia', '-8.5375566', '115.1246918'),
('Selasa, 25 Oktober 2016 | 21:39 WIB', 105, 'Lampung', 'Lampung, Indonesia', '-4.5585849', '105.4068079'),
('Selasa, 25 Oktober 2016 | 21:39 WIB', 106, 'Banyuasin', 'Banyu Asin Regency, South Sumatra, Indonesia', '-2.6095639', '104.7520939'),
('Selasa, 25 Oktober 2016 | 21:40 WIB', 107, 'Wakatobi', 'Wakatobi Regency, South East Sulawesi, Indonesia', '-5.3264442', '123.5951925'),
('Selasa, 25 Oktober 2016 | 21:40 WIB', 108, 'Padang Pariaman', 'Padang Pariaman Regency, West Sumatra, Indonesia', '-0.5546757', '100.2151578'),
('Selasa, 25 Oktober 2016 | 21:40 WIB', 109, 'Padang Panjang', 'Padang Panjang, Padang Panjang City, West Sumatra, Indonesia', '-0.4652798', '100.3992289'),
('Selasa, 25 Oktober 2016 | 21:40 WIB', 110, 'Muara Sipongi', 'Muara Sipongi, Mandailing Natal Regency, North Sumatra, Indonesia', '0.6112169', '99.8794744'),
('Selasa, 25 Oktober 2016 | 21:41 WIB', 111, 'Barumun', 'Barumun, Padang Lawas Regency, North Sumatra, Indonesia', '0.996338', '99.6898316'),
('Selasa, 25 Oktober 2016 | 21:41 WIB', 112, 'Padang Sidempuan', 'Padang Sidempuan, Padang Sidempuan City, North Sumatra, Indonesia', '1.3721801', '99.2730146'),
('Selasa, 25 Oktober 2016 | 21:41 WIB', 113, 'Gunung Tua', 'Gn. Tua, Gunungtua, Cijambe, Kabupaten Subang, Jawa Barat, Indonesia', '-6.6211111', '107.7197222'),
('Selasa, 25 Oktober 2016 | 21:41 WIB', 114, 'Jember', 'Jember, Jember Regency, East Java, Indonesia', '-8.1733118', '113.7009312'),
('Selasa, 25 Oktober 2016 | 21:42 WIB', 115, 'Gontor', 'Gontor, Mlarak, Ponorogo Regency, East Java, Indonesia', '-7.9213944', '111.5013692'),
('Selasa, 25 Oktober 2016 | 21:42 WIB', 116, 'Sipirok', 'Sipirok, Silangge, Sipirok, Kabupaten Tapanuli Selatan, Sumatera Utara, Indonesia', '1.612708', '99.26152'),
('Selasa, 25 Oktober 2016 | 21:42 WIB', 117, 'Tarutung', 'Tarutung, North Tapanuli Regency, North Sumatra, Indonesia', '2.0121688', '98.9797467'),
('Selasa, 25 Oktober 2016 | 21:42 WIB', 118, 'Pematang Siantar', 'Pematangsiantar, Pematang Siantar City, North Sumatra, Indonesia', '2.965147', '99.0626377'),
('Selasa, 25 Oktober 2016 | 21:42 WIB', 119, 'Kota Pinang', 'Pinang City, South Labuhan batu Regency, North Sumatra, Indonesia', '1.8998349', '100.0583451'),
('Selasa, 25 Oktober 2016 | 21:43 WIB', 120, 'Binanga', 'Binanga, Siboris Lombang, Barumun Tengah, Kabupaten Padang Lawas, Sumatera Utara, Indonesia', '1.393363', '99.768204'),
('Selasa, 25 Oktober 2016 | 21:43 WIB', 121, 'Batang Toru', 'Batang Toru, South Tapanuli Regency, North Sumatra, Indonesia', '1.5592261', '99.0792263'),
('Selasa, 25 Oktober 2016 | 21:43 WIB', 122, 'Sibolga', 'Sibolga, Sibolga City, North Sumatra, Indonesia', '1.7368371', '98.7851121'),
('Selasa, 25 Oktober 2016 | 21:44 WIB', 123, 'Kuala Simpang', 'Kuala Simpang, Dolok Sigompulon, North Padang Lawas Regency, North Sumatra, Indonesia', '1.9090456', '99.7149071'),
('Selasa, 25 Oktober 2016 | 21:44 WIB', 124, 'Binjai', 'Binjai, Binjai City, North Sumatra, Indonesia', '3.6135482', '98.5025286'),
('Selasa, 25 Oktober 2016 | 21:44 WIB', 125, 'Sidikalang', 'Sidikalang, Dairi Regency, North Sumatra, Indonesia', '2.7439024', '98.3143192'),
('Selasa, 25 Oktober 2016 | 21:44 WIB', 126, 'Parapat', 'Parapat, Pardamean Ajibata, Ajibata, Kabupaten Toba Samosir, Sumatera Utara, Indonesia', '2.656846', '98.939178'),
('Selasa, 25 Oktober 2016 | 21:45 WIB', 127, 'Barus', 'Barus, Padang Masiang, Barus, Kabupaten Tapanuli Tengah, Sumatera Utara, Indonesia', '2.012441', '98.399406'),
('Selasa, 25 Oktober 2016 | 21:45 WIB', 128, 'Pijor Koling', 'Pijarkoling, Padangsidimpuan Tenggara, Padang Sidempuan City, North Sumatra, Indonesia', '1.3232501', '99.3076688'),
('Selasa, 25 Oktober 2016 | 21:46 WIB', 129, 'Sipagimbar', 'Sipagimbar, Ps. Sipagimbar, Saipar Dolok Hole, Kabupaten Tapanuli Selatan, Sumatera Utara, Indonesia', '1.836285', '99.361267'),
('Selasa, 25 Oktober 2016 | 21:46 WIB', 130, 'Simanosor', 'Simanosor, Dolok, North Padang Lawas Regency, North Sumatra, Indonesia', '1.8182903', '99.586822'),
('Selasa, 25 Oktober 2016 | 21:46 WIB', 131, 'Simanosor Julu', 'Simanosor Julu, Saipar Dolok Hole, South Tapanuli Regency, North Sumatra, Indonesia', '1.7990823', '99.3520476'),
('Selasa, 25 Oktober 2016 | 21:47 WIB', 132, 'Lubuk Sikaping', 'Lubuk Sikaping, Durian Tinggi, Lubuk Sikaping, Kabupaten Pasaman, Sumatera Barat, Indonesia', '0.126017', '100.170502'),
('Selasa, 25 Oktober 2016 | 21:47 WIB', 133, 'Bonjol', 'Bonjol, Pasaman Regency, West Sumatra, Indonesia', '0.0183585', '100.2375823'),
('Selasa, 25 Oktober 2016 | 21:50 WIB', 134, 'Pargarutan', 'Pargarutan, Sipirok, South Tapanuli Regency, North Sumatra, Indonesia', '1.5887397', '99.4367116'),
('Selasa, 25 Oktober 2016 | 21:50 WIB', 135, 'Sosopan', 'Sosopan, Huta Baru Sosopan, Sosopan, Kabupaten Padang Lawas, Sumatera Utara, Indonesia', '1.233333', '99.483333'),
('Selasa, 25 Oktober 2016 | 21:50 WIB', 136, 'Pasir', 'Pasir, Ayah, Kebumen Regency, Central Java, Indonesia', '-7.7610306', '109.4407844'),
('Selasa, 25 Oktober 2016 | 21:51 WIB', 137, 'Tegal', 'Tegal, Tegal City, Central Java, Indonesia', '-6.8797041', '109.1255917'),
('Selasa, 25 Oktober 2016 | 21:51 WIB', 138, 'Banjaran', 'Banjaran, Bandung, West Java, Indonesia', '-7.0555388', '107.5767035'),
('Selasa, 25 Oktober 2016 | 21:51 WIB', 139, 'Ciamis', 'Ciamis, Ciamis Sub-District, Ciamis Regency, West Java, Indonesia', '-7.3298676', '108.3322547'),
('Selasa, 25 Oktober 2016 | 21:52 WIB', 140, 'Cibabat', 'Cibabat, North Cimahi, Cimahi City, West Java, Indonesia', '-6.8760688', '107.5593913'),
('Selasa, 25 Oktober 2016 | 21:52 WIB', 141, 'Cijerah', 'Cijerah, Bandung Kulon, Bandung City, West Java, Indonesia', '-6.9208358', '107.5667883'),
('Selasa, 25 Oktober 2016 | 21:52 WIB', 142, 'Cikutra', 'Cikutra, Cibeunying Kidul, Bandung City, West Java, Indonesia', '-6.9015937', '107.6394332'),
('Selasa, 25 Oktober 2016 | 21:52 WIB', 143, 'Ujung Berung', 'Ujung Berung, Bandung City, West Java, Indonesia', '-6.9064866', '107.7073688'),
('Selasa, 25 Oktober 2016 | 21:52 WIB', 144, 'Cikini', 'Cikini, Menteng, Central Jakarta City, Special Capital Region of Jakarta, Indonesia', '-6.192515', '106.8399623'),
('Selasa, 25 Oktober 2016 | 21:53 WIB', 145, 'Ujung Batu', 'Ujung Batu, Rokan Hulu Regency, Riau, Indonesia', '0.6845114', '100.5521142'),
('Selasa, 25 Oktober 2016 | 21:54 WIB', 146, 'Pasir Pangaraian', 'Pasir Pengaraian, Pematang Berangan, Rambah, Kabupaten Rokan Hulu, Riau, Indonesia', '0.8935804', '100.3030572'),
('Selasa, 25 Oktober 2016 | 21:54 WIB', 147, 'Ujung Batu Sosa', 'Ujung Batu, Sosa, Padang Lawas Regency, North Sumatra, Indonesia', '1.1513137', '99.9520961'),
('Selasa, 25 Oktober 2016 | 21:54 WIB', 148, 'Pasar Sibuhuan', 'Psr Sibuhuan, Barumun, Padang Lawas Regency, North Sumatra, Indonesia', '1.0516485', '99.7302347'),
('Selasa, 25 Oktober 2016 | 21:55 WIB', 149, 'Panti', 'Panti, Kabupaten Pasaman, Sumatera Barat, Indonesia', '0.357689', '100.058502'),
('Selasa, 25 Oktober 2016 | 21:55 WIB', 150, 'Purba Baru', 'Purba Baru, Lembah Sorik Marapi, Mandailing Natal Regency, North Sumatra, Indonesia', '0.7591811', '99.5812575'),
('Selasa, 25 Oktober 2016 | 21:55 WIB', 151, 'Wamena', 'Wamena, Jayawijaya Regency, Papua, Indonesia', '-4.0991845', '138.9253206'),
('Selasa, 25 Oktober 2016 | 21:56 WIB', 152, 'Lombok', 'Lombok, West Nusa Tenggara, Indonesia', '-8.650979', '116.3249438'),
('Selasa, 25 Oktober 2016 | 21:57 WIB', 153, 'Hr Subrantas', 'Jl. HR Soebrantas, Bunguran Tim., Kabupaten Natuna, Kepulauan Riau 29783, Indonesia', '3.9321216', '108.3649233'),
('Selasa, 25 Oktober 2016 | 21:57 WIB', 154, 'Batam Center', 'Batam Centre, Teluk Tering, Batam City, Riau Islands, Indonesia', '1.1307223', '104.0551943'),
('Selasa, 25 Oktober 2016 | 21:58 WIB', 155, 'Pangkal Pinang', 'Pangkal Pinang, Pangkal Pinang City, Bangka Belitung Islands, Indonesia', '-2.1316266', '106.1169299'),
('Selasa, 25 Oktober 2016 | 21:58 WIB', 156, 'Tanjung Pinang', 'Tanjung Pinang, Tanjung Pinang City, Riau Islands, Indonesia', '0.9185504', '104.4665072'),
('Selasa, 25 Oktober 2016 | 21:58 WIB', 157, 'Marpoyan', 'Marpoyan Damai, Pekanbaru City, Riau, Indonesia', '0.4736702', '101.4395931'),
('Selasa, 25 Oktober 2016 | 21:58 WIB', 158, 'Rumbai', 'Rumbai, Pekanbaru City, Riau, Indonesia', '0.6453205', '101.4112049'),
('Selasa, 25 Oktober 2016 | 21:58 WIB', 159, 'Garuda Sakti ', 'Garuda Sakti, Jl. Raya Beringin Kulon No.201, Trosobo, Taman, Sidoarjo Regency, East Java 61257, Indonesia', '-7.3727114', '112.644784'),
('Selasa, 25 Oktober 2016 | 21:59 WIB', 160, 'Trenggalek', 'Trenggalek, Trenggalek Regency, East Java, Indonesia', '-8.0864098', '111.7131286'),
('Selasa, 25 Oktober 2016 | 21:59 WIB', 161, 'Tebu Ireng', 'Jl. Tebu Ireng, Purbayan, Kotagede, Kota Yogyakarta, Daerah Istimewa Yogyakarta, Indonesia', '-7.8200549', '110.4021625'),
('Selasa, 25 Oktober 2016 | 21:59 WIB', 162, 'Kasihan', 'Kasihan, Bantul Regency, Special Region of Yogyakarta, Indonesia', '-7.8341286', '110.3249238'),
('Selasa, 25 Oktober 2016 | 22:05 WIB', 163, 'Kasikan', 'Kasikan, Tapung Hulu, Kampar Regency, Riau, Indonesia', '0.6841069', '100.7323332'),
('Selasa, 25 Oktober 2016 | 22:05 WIB', 164, 'Duri', 'Duri, Talang Mandi, Mandau, Kabupaten Bengkalis, Riau, Indonesia', '1.259619', '101.213097'),
('Selasa, 25 Oktober 2016 | 22:05 WIB', 165, 'Dumai', 'Dumai, Dumai City, Riau, Indonesia', '1.6666349', '101.4001855'),
('Selasa, 25 Oktober 2016 | 22:05 WIB', 166, 'Kandis', 'Kandy, Sri Lanka', '7.2905715', '80.6337262'),
('Selasa, 25 Oktober 2016 | 22:06 WIB', 167, 'Bagan Siapiapi', 'Bagansiapiapi, Bagan Timur, Bangko, Rokan Hilir Regency, Riau, Indonesia', '2.157713', '100.8162'),
('Selasa, 25 Oktober 2016 | 22:06 WIB', 168, 'Tapung Hilir', 'Tapung Hilir, Kampar Regency, Riau, Indonesia', '0.851239', '101.1164452'),
('Selasa, 25 Oktober 2016 | 22:06 WIB', 169, 'Bangkinang', 'Bangkinang, Kampar Regency, Riau, Indonesia', '0.3413567', '101.0279545'),
('Selasa, 25 Oktober 2016 | 22:07 WIB', 170, 'Cilandak', 'Cilandak, South Jakarta City, Special Capital Region of Jakarta, Indonesia', '-6.2845276', '106.8001396'),
('Selasa, 25 Oktober 2016 | 22:07 WIB', 171, 'Kebayoran', 'St. Kebayoran, Kby. Lama Utara, Kby. Lama, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12220, Indonesia', '-6.2372134', '106.7825254'),
('Selasa, 25 Oktober 2016 | 22:08 WIB', 172, 'Tuban ', 'Tuban, Tuban Sub-District, Tuban Regency, East Java, Indonesia', '-6.8949099', '112.0416754'),
('Selasa, 25 Oktober 2016 | 22:08 WIB', 173, 'Gresik', 'Gresik, Gresik Sub-District, Gresik Regency, East Java, Indonesia', '-7.1652437', '112.6519882'),
('Selasa, 25 Oktober 2016 | 22:08 WIB', 174, 'Kota Cilegon', 'Cilegon, Cilegon City, Banten, Indonesia', '-6.0025343', '106.0111203'),
('Selasa, 25 Oktober 2016 | 22:08 WIB', 175, 'Kadipaten', 'Kadipaten, Majalengka Regency, West Java, Indonesia', '-6.7676998', '108.1676607'),
('Selasa, 25 Oktober 2016 | 22:09 WIB', 176, 'Rancabali', 'Rancabali, Alamendah, Rancabali, Bandung, West Java, Indonesia', '-7.1245497', '107.4240957'),
('Selasa, 25 Oktober 2016 | 22:09 WIB', 177, 'Tanatoraja', 'Tana Toraja Regency, South Sulawesi, Indonesia', '-3.0753003', '119.742604'),
('Selasa, 25 Oktober 2016 | 22:09 WIB', 178, 'Balige', 'Balige, Sibola Hotangsas, Balige, Kabupaten Toba Samosir, Sumatera Utara, Indonesia', '2.3337119', '99.083252'),
('Selasa, 25 Oktober 2016 | 22:10 WIB', 179, 'Dolok Sanggul', 'Dolok Sanggul, Lumban Tobing, Dolok sanggul, Kabupaten Humbang Hasundutan, Sumatera Utara, Indonesia', '2.251991', '98.7485729'),
('Selasa, 25 Oktober 2016 | 22:10 WIB', 180, 'Brastagi', 'Berastagi, Gundaling II, Berastagi, Kabupaten Karo, Sumatera Utara, Indonesia', '3.185291', '98.504913'),
('Selasa, 25 Oktober 2016 | 22:10 WIB', 181, 'BAnten', 'Banten, Indonesia', '-6.4058172', '106.0640179'),
('Selasa, 25 Oktober 2016 | 22:11 WIB', 182, 'Pidie', 'Pidie, Pidie Regency, Aceh, Indonesia', '5.3704132', '95.9356872'),
('Selasa, 25 Oktober 2016 | 22:11 WIB', 183, 'Aceh Gayo', 'Gayo Lues Regency, Aceh, Indonesia', '3.955165', '97.3516558'),
('Selasa, 25 Oktober 2016 | 22:11 WIB', 184, 'Leuser', 'Mount Leuser, Cike, Kutapanjang, Gayo Lues Regency, Aceh, Indonesia', '3.7975', '97.155'),
('Selasa, 25 Oktober 2016 | 22:12 WIB', 185, 'Banda Aceh', 'Banda Aceh, Banda Aceh City, Aceh, Indonesia', '5.5482904', '95.3237559'),
('Selasa, 25 Oktober 2016 | 22:12 WIB', 186, 'Aceh Tamiang', 'Aceh Tamiang Regency, Aceh, Indonesia', '4.2328871', '98.0028892'),
('Selasa, 25 Oktober 2016 | 22:12 WIB', 187, 'Aceh Kuala', 'Kuala, Bireuen Regency, Aceh, Indonesia', '5.2272338', '96.722641'),
('Selasa, 25 Oktober 2016 | 22:13 WIB', 188, 'Limapuluh', 'LimaPuluh, Pekanbaru City, Riau, Indonesia', '0.5361508', '101.4594696'),
('Selasa, 25 Oktober 2016 | 22:13 WIB', 189, 'Bojonegoro', 'Bojonegoro, Bojonegoro Sub-District, Bojonegoro Regency, East Java, Indonesia', '-7.1524786', '111.8869293'),
('Selasa, 25 Oktober 2016 | 22:13 WIB', 190, 'Lemahabang', 'Lemahabang, Cirebon, West Java, Indonesia', '-6.8327841', '108.6116249'),
('Selasa, 25 Oktober 2016 | 22:14 WIB', 191, 'Padalarang', 'Padalarang, West Bandung Regency, West Java, Indonesia', '-6.8436457', '107.4783823'),
('Selasa, 25 Oktober 2016 | 22:15 WIB', 192, 'Purwukerto', 'Purwokerto, Banyumas Regency, Central Java, Indonesia', '-7.4242782', '109.2396366'),
('Selasa, 25 Oktober 2016 | 22:15 WIB', 193, 'Paiton', 'Paiton, Probolinggo, East Java, Indonesia', '-7.719529', '113.4895156'),
('Selasa, 25 Oktober 2016 | 22:15 WIB', 194, 'Brebes', 'Brebes, Brebes Sub-District, Brebes Regency, Central Java, Indonesia', '-6.8564212', '109.0393759'),
('Selasa, 25 Oktober 2016 | 22:16 WIB', 195, 'Porong', 'Porong, Sidoarjo Regency, East Java, Indonesia', '-7.5265902', '112.6973355'),
('Selasa, 25 Oktober 2016 | 22:16 WIB', 196, 'Serang,banten Indonesia', 'Serang, Serang Sub-District, Serang City, Banten, Indonesia', '-6.1103661', '106.1639749'),
('Selasa, 25 Oktober 2016 | 22:17 WIB', 197, 'Lebak Bulus ', 'Lebak Bulus, Cilandak, South Jakarta City, Special Capital Region of Jakarta, Indonesia', '-6.3031123', '106.7794935'),
('Selasa, 25 Oktober 2016 | 22:18 WIB', 198, 'Cengkareng', 'Cengkareng, West Jakarta City, Special Capital Region of Jakarta, Indonesia', '-6.1486651', '106.7352584'),
('Selasa, 25 Oktober 2016 | 22:19 WIB', 199, 'Jambi', 'Jambi, Jambi City, Jambi, Indonesia', '-1.6101229', '103.6131203'),
('Selasa, 25 Oktober 2016 | 22:19 WIB', 200, 'Metro Lampung', 'Metro, Metro City, Lampung, Indonesia', '-5.1178394', '105.3072646'),
('Selasa, 25 Oktober 2016 | 22:20 WIB', 201, 'Wonosobo', 'Wonosobo, Wonosobo Sub-District, Wonosobo Regency, Central Java, Indonesia', '-7.3555775', '109.9139594'),
('Selasa, 25 Oktober 2016 | 22:20 WIB', 202, 'Dieng', 'Dieng, Kejajar, Wonosobo Regency, Central Java, Indonesia', '-7.2031258', '109.9184251'),
('Selasa, 25 Oktober 2016 | 22:20 WIB', 203, 'Semeru', 'Semeru, Pasrujambe, Lumajang Regency, East Java, Indonesia', '-8.1077172', '112.9224075'),
('Selasa, 25 Oktober 2016 | 22:20 WIB', 204, 'Batu', 'Batu, Batu Sub-District, Batu City, East Java, Indonesia', '-7.8830648', '112.5334492'),
('Selasa, 25 Oktober 2016 | 22:21 WIB', 205, 'Yogya', 'Yogyakarta, Yogyakarta City, Special Region of Yogyakarta, Indonesia', '-7.7955798', '110.3694896'),
('Selasa, 25 Oktober 2016 | 22:21 WIB', 206, 'Demak', 'Demak, Demak Sub-District, Demak Regency, Central Java, Indonesia', '-6.8921607', '110.6377502'),
('Selasa, 25 Oktober 2016 | 22:21 WIB', 207, 'Mataram', 'Mataram, Mataram City, West Nusa Tenggara, Indonesia', '-8.5769951', '116.1004894'),
('Selasa, 25 Oktober 2016 | 22:22 WIB', 208, 'Gili Perawangan', 'Gili Trawangan, Gili Indah, Pemenang, North Lombok Regency, West Nusa Tenggara, Indonesia', '-8.3482917', '116.0384335'),
('Selasa, 25 Oktober 2016 | 22:22 WIB', 209, 'Gili Air', 'Gili Air, Gili Indah, Pemenang, North Lombok Regency, West Nusa Tenggara, Indonesia', '-8.3590452', '116.0812832'),
('Selasa, 25 Oktober 2016 | 22:22 WIB', 210, 'Gili Manuk', 'Gilimanuk, Melaya, Kabupaten Jembrana, Bali, Indonesia', '-8.169761', '114.4338'),
('Selasa, 25 Oktober 2016 | 22:23 WIB', 211, 'Jimbaran', 'Jimbaran, South Kuta, Badung Regency, Bali, Indonesia', '-8.7906945', '115.1592718'),
('Selasa, 25 Oktober 2016 | 22:23 WIB', 212, 'Pacitan', 'Pacitan, Pacitan Sub-District, Pacitan Regency, East Java, Indonesia', '-8.1797818', '111.1056539'),
('Selasa, 25 Oktober 2016 | 22:23 WIB', 213, 'Banyuwangi', 'Banyuwangi, Banyuwangi Sub-District, Banyuwangi Regency, East Java, Indonesia', '-8.2192335', '114.3692267'),
('Selasa, 25 Oktober 2016 | 22:23 WIB', 214, 'Madura', 'Madura Island, East Java, Indonesia', '-7.0777326', '113.287085'),
('Selasa, 25 Oktober 2016 | 22:24 WIB', 215, 'Tomang', 'Tomang, Grogol petamburan, West Jakarta City, Special Capital Region of Jakarta, Indonesia', '-6.1747751', '106.7999513'),
('Selasa, 25 Oktober 2016 | 22:24 WIB', 216, 'Cikudapateh', 'Cikudapateuh, Samoja, Batununggal, Kota Bandung, Jawa Barat 40273, Indonesia', '-6.918843', '107.6259079'),
('Selasa, 25 Oktober 2016 | 22:24 WIB', 217, 'Manado', 'Manado, Manado City, North Sulawesi, Indonesia', '1.4748305', '124.8420794'),
('Selasa, 25 Oktober 2016 | 22:25 WIB', 218, 'Soreang', 'Soreang, Bandung, West Java, Indonesia', '-7.025202', '107.5259078'),
('Selasa, 25 Oktober 2016 | 22:25 WIB', 219, 'Bandar Lampung', 'Bandar Lampung, Bandar Lampung City, Lampung, Indonesia', '-5.3971396', '105.2667887'),
('Selasa, 25 Oktober 2016 | 22:25 WIB', 220, 'Cijambe', 'Cijambe, Jatiendah, Cilengkrang, Bandung, Jawa Barat, Indonesia', '-6.8974978', '107.6941504'),
('Selasa, 25 Oktober 2016 | 22:26 WIB', 221, 'Jatinangor', 'Jatinangor, Sumedang Regency, West Java, Indonesia', '-6.9370992', '107.7813872'),
('Selasa, 25 Oktober 2016 | 22:26 WIB', 222, 'Cibiru', 'Cibiru, Bandung City, West Java, Indonesia', '-6.9163257', '107.7192104'),
('Selasa, 25 Oktober 2016 | 22:26 WIB', 223, 'Arcamanik', 'Arcamanik, Bandung City, West Java, Indonesia', '-6.9179069', '107.6777669'),
('Selasa, 25 Oktober 2016 | 22:27 WIB', 224, 'Siabu', 'Siabu, Kabupaten Mandailing Natal, Sumatera Utara, Indonesia', '1.0160849', '99.491051'),
('Selasa, 25 Oktober 2016 | 22:29 WIB', 225, 'Pandeglang ', 'Pandeglang, Pandeglang Sub-District, Pandeglang Regency, Banten, Indonesia', '-6.3270611', '106.1169299'),
('Selasa, 25 Oktober 2016 | 22:29 WIB', 226, 'Palmerah', 'Palmerah, West Jakarta City, Special Capital Region of Jakarta, Indonesia', '-6.1900714', '106.79719'),
('Selasa, 25 Oktober 2016 | 22:30 WIB', 227, 'Puncak', 'Puncak, Ciloto, Cipanas, Cianjur Regency, West Java, Indonesia', '-6.7028188', '106.9990215'),
('Selasa, 25 Oktober 2016 | 22:31 WIB', 228, 'Tangerang', 'Tangerang, Tangerang City, Banten, Indonesia', '-6.2023936', '106.6527099'),
('Selasa, 25 Oktober 2016 | 22:32 WIB', 229, 'Kudus', 'Kudus, Kudus City, Kudus Regency, Central Java, Indonesia', '-6.8072603', '110.8413706'),
('Selasa, 25 Oktober 2016 | 22:32 WIB', 230, 'Ampel', 'Ampel, Boyolali Regency, Central Java, Indonesia', '-7.4504158', '110.5096283'),
('Selasa, 25 Oktober 2016 | 22:57 WIB', 231, 'Ambarawa', 'Ambarawa, Semarang, Central Java, Indonesia', '-7.262294', '110.403477'),
('Selasa, 25 Oktober 2016 | 22:58 WIB', 232, 'Argamakmur', 'Arga Makmur, North Bengkulu Regency, Bengkulu, Indonesia', '-3.4013167', '102.2319048'),
('Selasa, 25 Oktober 2016 | 22:58 WIB', 233, 'Amuntai', 'Amuntai, Sungai Malang, Amuntai Tengah, Kabupaten Hulu Sungai Utara, Kalimantan Selatan, Indonesia', '-2.416604', '115.239098'),
('Selasa, 25 Oktober 2016 | 23:01 WIB', 234, 'Bangkalan', 'Bangkalan, Bangkalan Sub-District, Bangkalan Regency, East Java, Indonesia', '-7.0252822', '112.7519821'),
('Selasa, 25 Oktober 2016 | 23:01 WIB', 235, 'Blitar', 'Blitar, Blitar City, East Java, Indonesia', '-8.0954627', '112.1609056'),
('Selasa, 25 Oktober 2016 | 23:03 WIB', 236, 'Kota Kediri', 'Kediri, East Java, Indonesia', '-7.8480156', '112.0178286'),
('Selasa, 25 Oktober 2016 | 23:04 WIB', 237, 'Bondowoso', 'Bondowoso, Bondowoso Sub-District, Bondowoso Regency, East Java, Indonesia', '-7.9187585', '113.8206415'),
('Selasa, 25 Oktober 2016 | 23:04 WIB', 238, 'Jombang', 'Jombang Regency, East Java, Indonesia', '-7.5740867', '112.28609'),
('Selasa, 25 Oktober 2016 | 23:09 WIB', 239, 'Serang', 'Serang, Serang Sub-District, Serang City, Banten, Indonesia', '-6.1103661', '106.1639749'),
('Selasa, 25 Oktober 2016 | 23:16 WIB', 240, 'Lebak Banten', 'Lebak Regency, Banten, Indonesia', '-6.5643956', '106.2522143'),
('Selasa, 25 Oktober 2016 | 23:16 WIB', 241, 'Lampung Selatan, Lampung', 'South Lampung Regency, Lampung, Indonesia', '-5.5622614', '105.5474373'),
('Selasa, 25 Oktober 2016 | 23:17 WIB', 242, 'Kota Serang', 'Serang, Serang Sub-District, Serang City, Banten, Indonesia', '-6.1103661', '106.1639749'),
('Selasa, 25 Oktober 2016 | 23:18 WIB', 243, 'Kabupaten Serang', 'Serang, Banten, Indonesia', '-6.1397339', '106.040506'),
('Selasa, 25 Oktober 2016 | 23:18 WIB', 244, 'Sumenenp', 'Sumenep, Bangselok, Kotasumenep, Kabupaten Sumenep, Jawa Timur, Indonesia', '-7.009557', '113.858299'),
('Selasa, 25 Oktober 2016 | 23:18 WIB', 245, 'Tangerang Selatan', 'South Tangerang, South Tangerang City, Banten, Indonesia', '-6.2835218', '106.7112933'),
('Selasa, 25 Oktober 2016 | 23:20 WIB', 246, 'Tuban', 'Tuban, Tuban Sub-District, Tuban Regency, East Java, Indonesia', '-6.8949099', '112.0416754'),
('Selasa, 25 Oktober 2016 | 23:20 WIB', 247, 'Tulung Agung', 'Tulungagung, Tulungagung Regency, East Java, Indonesia', '-8.091221', '111.9641728'),
('Selasa, 25 Oktober 2016 | 23:20 WIB', 248, 'Sungai Penuh', 'Sungai Penuh, Sungai Penuh City, Jambi, Indonesia', '-2.0689345', '101.4168819'),
('Selasa, 25 Oktober 2016 | 23:21 WIB', 249, 'Cikedal', 'Cikedal, Pandeglang Regency, Banten, Indonesia', '-6.3858717', '105.8818766'),
('Selasa, 25 Oktober 2016 | 23:21 WIB', 250, 'Muaro Jambi', 'Muaro Jambi Regency, Jambi, Indonesia', '-1.552136', '103.8216261'),
('Selasa, 25 Oktober 2016 | 23:21 WIB', 251, 'Batanghari', 'Batang Hari Regency, Jambi, Indonesia', '-1.7083922', '103.0817903'),
('Selasa, 25 Oktober 2016 | 23:22 WIB', 252, 'Sarolangun', 'Sarolangun Regency, Jambi, Indonesia', '-2.3230422', '102.7135121'),
('Selasa, 25 Oktober 2016 | 23:22 WIB', 253, 'Merangin', 'Merangin Regency, Jambi, Indonesia', '-2.1752789', '101.9804613'),
('Selasa, 25 Oktober 2016 | 23:22 WIB', 254, 'Kerinci', 'Kerinci Regency, Jambi, Indonesia', '-1.8720467', '101.4339148'),
('Selasa, 25 Oktober 2016 | 23:23 WIB', 255, 'Riau', 'Riau, Indonesia', '0.2933469', '101.7068294'),
('Selasa, 25 Oktober 2016 | 23:24 WIB', 256, 'Tanjung Jabung Timur', 'East Tanjung Jabung Regency, Jambi, Indonesia', '-1.1024367', '103.8216261'),
('Selasa, 25 Oktober 2016 | 23:25 WIB', 257, 'Tanjung Jabung Barat', 'West Tanjung Jabung Regency, Jambi, Indonesia', '-1.105846', '103.0817903'),
('Selasa, 25 Oktober 2016 | 23:26 WIB', 258, 'Metro', 'Metro, Metro City, Lampung, Indonesia', '-5.1178394', '105.3072646'),
('Selasa, 25 Oktober 2016 | 23:26 WIB', 259, 'Wonogiri', 'Wonogiri, Wonogiri Sub-District, Wonogiri Regency, Central Java, Indonesia', '-7.7978518', '110.9387418'),
('Selasa, 25 Oktober 2016 | 23:26 WIB', 260, 'Tulang Bawang', 'Tulang Bawang, Bahuga, Way Kanan Regency, Lampung, Indonesia', '-4.3303072', '104.6296338'),
('Selasa, 25 Oktober 2016 | 23:26 WIB', 261, 'Pare-pare', 'Pare, Kediri, Jawa Timur, Indonesia', '-7.765512', '112.197899'),
('Selasa, 25 Oktober 2016 | 23:27 WIB', 262, 'Jepara', 'Jepara, Jepara Sub-District, Jepara Regency, Central Java, Indonesia', '-6.5804981', '110.6789833'),
('Selasa, 25 Oktober 2016 | 23:27 WIB', 263, 'Musi Rawas', 'Musi Rawas Regency, South Sumatra, Indonesia', '-3.0956537', '103.0817903'),
('Selasa, 25 Oktober 2016 | 23:28 WIB', 264, 'Lubuk Linggau', 'Lubuklinggau, Lubuklinggau City, South Sumatra, Indonesia', '-3.2995858', '102.857236'),
('Selasa, 25 Oktober 2016 | 23:28 WIB', 265, 'Pati', 'Pati, Pati Sub-District, Pati Regency, Central Java, Indonesia', '-6.7486733', '111.0379232'),
('Selasa, 25 Oktober 2016 | 23:28 WIB', 266, 'Muara Enim', 'Muara Enim Regency, South Sumatra, Indonesia', '-3.7114163', '104.0072348'),
('Selasa, 25 Oktober 2016 | 23:28 WIB', 267, 'Magelang', 'Magelang, Magelang City, Central Java, Indonesia', '-7.4797342', '110.2176941'),
('Selasa, 25 Oktober 2016 | 23:28 WIB', 268, 'Lahat', 'Lahat, Lahat Sub-District, Lahat Regency, South Sumatra, Indonesia', '-3.7856268', '103.5407993'),
('Selasa, 25 Oktober 2016 | 23:29 WIB', 269, 'Ogan Ilir', 'Ogan Ilir Regency, South Sumatra, Indonesia', '-3.426544', '104.6121475'),
('Selasa, 25 Oktober 2016 | 23:29 WIB', 270, 'Ogan Ulu', 'Ulu Ogan, Ogan Komering Ulu Regency, South Sumatra, Indonesia', '-4.2129495', '103.7057493'),
('Selasa, 25 Oktober 2016 | 23:29 WIB', 271, 'Ogan Komering Ilir', 'Ogan Komering Ilir Regency, South Sumatra, Indonesia', '-3.4559744', '105.2194808'),
('Selasa, 25 Oktober 2016 | 23:35 WIB', 272, 'Sragen', 'Sragen, Sragen Sub-District, Sragen Regency, Central Java, Indonesia', '-7.419408', '111.022491'),
('Selasa, 25 Oktober 2016 | 23:36 WIB', 273, 'Pekalongan', 'Pekalongan, Pekalongan City, Central Java, Indonesia', '-6.8898362', '109.6745916'),
('Selasa, 25 Oktober 2016 | 23:36 WIB', 274, 'Blora', 'Blora Regency, Central Java, Indonesia', '-7.012244', '111.3798928'),
('Selasa, 25 Oktober 2016 | 23:37 WIB', 275, 'Rembang', 'Rembang, Rembang Sub-District, Rembang Regency, Central Java, Indonesia', '-6.7065551', '111.3372855'),
('Selasa, 25 Oktober 2016 | 23:37 WIB', 276, 'Banjarnegara', 'Banjarnegara, Central Java, Indonesia', '-7.4473901', '109.5538573'),
('Selasa, 25 Oktober 2016 | 23:41 WIB', 277, 'Kendal Jawa Tengah', 'Kendal, Kendal Regency, Central Java, Indonesia', '-6.9318012', '110.2028022'),
('Selasa, 25 Oktober 2016 | 23:41 WIB', 278, 'Dago', 'Coblong, Bandung City, West Java, Indonesia', '-6.8919604', '107.6156133'),
('Selasa, 25 Oktober 2016 | 23:43 WIB', 279, 'Bantul', 'Bantul, Bantul Sub-District, Bantul Regency, Special Region of Yogyakarta, Indonesia', '-7.8748176', '110.3255365'),
('Selasa, 25 Oktober 2016 | 23:44 WIB', 280, 'Bali', 'Bali, Indonesia', '-8.4095178', '115.188916'),
('Selasa, 25 Oktober 2016 | 23:44 WIB', 281, 'Bangka Belitung', 'Bangka Belitung Islands, Indonesia', '-2.7410513', '106.4405872'),
('Rabu, 26 Oktober 2016 | 05:52 WIB', 282, 'Flores', 'Flores, East Nusa Tenggara, Indonesia', '-8.6573819', '121.0793705'),
('Rabu, 26 Oktober 2016 | 08:05 WIB', 283, 'Rangkasbitung', 'Rangkasbitung, Rangkasbitung Bar., Rangkasbitung, Kabupaten Lebak, Banten, Indonesia', '-6.3656499', '106.246399'),
('Rabu, 26 Oktober 2016 | 11:30 WIB', 284, 'Bengkulu Selatan', 'South Bengkulu Regency, Bengkulu, Indonesia', '-4.3248409', '103.035694'),
('Rabu, 26 Oktober 2016 | 12:08 WIB', 285, 'Padangpariaman', 'Padang Pariaman Regency, West Sumatra, Indonesia', '-0.5546757', '100.2151578'),
('Rabu, 26 Oktober 2016 | 12:09 WIB', 286, 'Dhamasraya', 'Dharmasraya Regency, West Sumatra, Indonesia', '-1.1120568', '101.6157773'),
('Rabu, 26 Oktober 2016 | 12:09 WIB', 287, 'Sijunjung', 'Sijunjung, Sijunjung Sub-District, Sijunjung Regency, West Sumatra, Indonesia', '-0.6881586', '100.997658'),
('Rabu, 26 Oktober 2016 | 12:10 WIB', 288, 'Agam', 'Agam Regency, West Sumatra, Indonesia', '-0.2209392', '100.1703257'),
('Rabu, 26 Oktober 2016 | 12:11 WIB', 289, 'Sawahlunto', 'Sawah Lunto, Talawi Hilir, Talawi, Sawah Lunto City, West Sumatra, Indonesia', '-0.5966493', '100.7356108'),
('Rabu, 26 Oktober 2016 | 12:11 WIB', 290, 'Sungai Sariak', 'Sariak River, VII Koto Sungai Sariak, Padang Pariaman Regency, West Sumatra, Indonesia', '-0.5872682', '100.2207634'),
('Rabu, 26 Oktober 2016 | 12:12 WIB', 291, 'Pesisir Selatan', 'South Pesisir Regency, West Sumatra, Indonesia', '-1.7223147', '100.8903099'),
('Rabu, 26 Oktober 2016 | 12:12 WIB', 292, 'Pasaman Barat', 'West Pasaman Regency, West Sumatra, Indonesia', '0.2213005', '99.634135'),
('Rabu, 26 Oktober 2016 | 12:12 WIB', 293, 'Pasaman', 'Pasaman, West Pasaman Regency, West Sumatra, Indonesia', '0.1288752', '99.7901781'),
('Rabu, 26 Oktober 2016 | 12:13 WIB', 294, 'Pariaman', 'Pariaman, Pariaman City, West Sumatra, Indonesia', '-0.6115939', '100.1336713'),
('Rabu, 26 Oktober 2016 | 12:13 WIB', 295, 'Lima Puluh Kota', 'Lima Puluh Kota Regency, West Sumatra, Indonesia', '0.0734192', '100.5296115'),
('Rabu, 26 Oktober 2016 | 12:13 WIB', 296, 'Tanah Datar', 'Tanah Datar Regency, West Sumatra, Indonesia', '-0.4797043', '100.5746224'),
('Rabu, 26 Oktober 2016 | 12:15 WIB', 297, 'Solok', 'Solok, West Sumatra, Indonesia', '-0.9643838', '100.8903099'),
('Kamis, 27 Oktober 2016 | 14:42 WIB', 300, 'Pandeglang', 'Pandeglang, Pandeglang Sub-District, Pandeglang Regency, Banten, Indonesia', '-6.3270611', '106.1169299'),
('Jumat, 28 Oktober 2016 | 09:32 WIB', 301, 'Banjar Negara', 'Banjarnegara, Central Java, Indonesia', '-7.4473901', '109.5538573'),
('Jumat, 28 Oktober 2016 | 09:34 WIB', 302, 'Banyumas', 'Banyumas Regency, Central Java, Indonesia', '-7.4832133', '109.140438'),
('Jumat, 28 Oktober 2016 | 09:34 WIB', 303, 'Batang', 'Batang, Batang Sub-District, Batang Regency, Central Java, Indonesia', '-6.9080448', '109.7326796'),
('Jumat, 28 Oktober 2016 | 09:37 WIB', 304, 'Grobogan', 'Grobogan Sub-District, Grobogan Regency, Central Java, Indonesia', '-7.0217194', '110.9625854'),
('Jumat, 28 Oktober 2016 | 09:37 WIB', 305, 'Karanganyar', 'Karanganyar, Kec. Karanganyar, Kabupaten Karanganyar, Jawa Tengah, Indonesia', '-7.6070727', '110.9866942'),
('Jumat, 28 Oktober 2016 | 09:37 WIB', 306, 'Kebumen', 'Kebumen, Kebumen Sub-District, Kebumen Regency, Central Java, Indonesia', '-7.6761901', '109.6636993'),
('Jumat, 28 Oktober 2016 | 09:41 WIB', 307, 'Salatiga', 'Salatiga, Salatiga City, Central Java, Indonesia', '-7.3305234', '110.5084366'),
('Jumat, 28 Oktober 2016 | 09:41 WIB', 308, 'Surakarta', 'Surakarta, Surakarta City, Central Java, Indonesia', '-7.5754887', '110.8243272'),
('Jumat, 28 Oktober 2016 | 09:43 WIB', 309, 'Pemalang', 'Pemalang, Pemalang Sub-District, Pemalang Regency, Central Java, Indonesia', '-6.9201316', '109.370576'),
('Jumat, 28 Oktober 2016 | 09:43 WIB', 310, 'Purbalingga', 'Purbalingga, Purbalingga Sub-District, Purbalingga Regency, Central Java, Indonesia', '-7.385735', '109.3604296'),
('Jumat, 28 Oktober 2016 | 09:43 WIB', 311, 'Purworejo', 'Purworejo, Purworejo Sub-District, Purworejo Regency, Central Java, Indonesia', '-7.7135818', '110.0078331'),
('Jumat, 28 Oktober 2016 | 09:45 WIB', 312, 'Sukoharjo', 'Sukoharjo, Sukoharjo Sub-District, Sukoharjo Regency, Central Java, Indonesia', '-7.6830294', '110.8147329'),
('Jumat, 28 Oktober 2016 | 09:46 WIB', 313, 'Temanggung', 'Temanggung, Temanggung Sub-District, Temanggung Regency, Central Java, Indonesia', '-7.3178564', '110.1779144'),
('Jumat, 28 Oktober 2016 | 09:51 WIB', 314, 'Lumajang', 'Lumajang Regency, East Java, Indonesia', '-8.0943571', '113.1441558'),
('Jumat, 28 Oktober 2016 | 09:52 WIB', 315, 'Magetan', 'Magetan, Magetan Sub-District, Magetan Regency, East Java, Indonesia', '-7.6493413', '111.3381593'),
('Jumat, 28 Oktober 2016 | 09:53 WIB', 316, 'Nganjuk', 'Nganjuk, Nganjuk Sub-District, Nganjuk Regency, East Java, Indonesia', '-7.6043721', '111.8993478'),
('Jumat, 28 Oktober 2016 | 09:54 WIB', 317, 'Ngawi', 'Ngawi, Ngawi Sub-District, Ngawi Regency, East Java, Indonesia', '-7.4190726', '111.4573989'),
('Jumat, 28 Oktober 2016 | 09:54 WIB', 318, 'Pamekasan', 'Pamekasan, Pamekasan Sub-District, Pamekasan Regency, East Java, Indonesia', '-7.154249', '113.4739105'),
('Jumat, 28 Oktober 2016 | 09:55 WIB', 319, 'Pasuruan', 'Pasuruan, Pasuruan City, East Java, Indonesia', '-7.6469193', '112.8999225'),
('Jumat, 28 Oktober 2016 | 09:55 WIB', 320, 'Ponorogo', 'Ponorogo, Ponorogo Sub-District, Ponorogo Regency, East Java, Indonesia', '-7.8666877', '111.4666099'),
('Jumat, 28 Oktober 2016 | 09:56 WIB', 321, 'Sampang', 'Sampang, Sampang Sub-District, Sampang Regency, East Java, Indonesia', '-7.1939017', '113.2467007'),
('Jumat, 28 Oktober 2016 | 09:57 WIB', 322, 'Situbondo', 'Situbondo, Situbondo Sub-District, Situbondo Regency, East Java, Indonesia', '-7.7050532', '113.9952789'),
('Jumat, 28 Oktober 2016 | 09:57 WIB', 323, 'Sumenep', 'Sumenep, Bangselok, Kotasumenep, Kabupaten Sumenep, Jawa Timur, Indonesia', '-7.009557', '113.858299'),
('Jumat, 28 Oktober 2016 | 09:59 WIB', 324, 'Tuban', 'Tuban, Tuban Sub-District, Tuban Regency, East Java, Indonesia', '-6.8949099', '112.0416754'),
('Jumat, 28 Oktober 2016 | 09:59 WIB', 325, 'Tulungagung', 'Tulungagung, Tulungagung Regency, East Java, Indonesia', '-8.091221', '111.9641728'),
('Jumat, 28 Oktober 2016 | 10:04 WIB', 326, 'Bengkayang', 'Bengkayang Regency, West Kalimantan, Indonesia', '1.06911', '109.6639309'),
('Jumat, 28 Oktober 2016 | 10:04 WIB', 327, 'Kapuas Hulu', 'Kapuas Hulu Regency, West Kalimantan, Indonesia', '0.8336697', '113.0011989'),
('Jumat, 28 Oktober 2016 | 10:05 WIB', 328, 'Kayong Utara', 'North Kayong Regency, West Kalimantan, Indonesia', '-0.9225877', '110.0449662'),
('Jumat, 28 Oktober 2016 | 10:05 WIB', 329, 'Ketapang', 'Ketapang Regency, West Kalimantan, Indonesia', '-1.5697615', '110.5215459'),
('Jumat, 28 Oktober 2016 | 10:05 WIB', 330, 'Singkawang', 'Singkawang, Singkawang City, West Kalimantan, Indonesia', '0.9060204', '108.9872049'),
('Jumat, 28 Oktober 2016 | 10:06 WIB', 331, 'Kuburaya', 'Kubu Raya Regency, West Kalimantan, Indonesia', '-0.3533938', '109.4735066'),
('Jumat, 28 Oktober 2016 | 10:06 WIB', 332, 'Landak', 'Landak Regency, West Kalimantan, Indonesia', '0.4237287', '109.7591675'),
('Jumat, 28 Oktober 2016 | 10:06 WIB', 333, 'Melawi', 'Melawi, Menia Governorate, Egypt', '27.7788099', '30.7809676'),
('Jumat, 28 Oktober 2016 | 10:06 WIB', 334, 'Sambas', 'Sambas, Sambas Sub-District, Sambas Regency, West Kalimantan, Indonesia', '1.3486888', '109.3009955'),
('Jumat, 28 Oktober 2016 | 10:07 WIB', 335, 'Sanggau', 'Sanggau, Ilir Kota, Kapuas, Sanggau Regency, West Kalimantan, Indonesia', '0.119275', '110.597298'),
('Jumat, 28 Oktober 2016 | 10:07 WIB', 336, 'Sekadau', 'Sekadau, Mungguk, Sekadau Hilir, Kabupaten Sekadau, Kalimantan Barat, Indonesia', '0.015637', '110.888603'),
('Jumat, 28 Oktober 2016 | 10:07 WIB', 337, 'Sintang', 'Sintang, Sintang Sub-District, Sintang Regency, West Kalimantan, Indonesia', '0.0632612', '111.4862054'),
('Jumat, 28 Oktober 2016 | 10:08 WIB', 338, 'Balangan', 'Balangan Regency, South Kalimantan, Indonesia', '-2.3260425', '115.6154732'),
('Jumat, 28 Oktober 2016 | 10:08 WIB', 339, 'Baritokuala', 'Barito Kuala Regency, South Kalimantan, Indonesia', '-3.0714738', '114.6667939'),
('Jumat, 28 Oktober 2016 | 10:09 WIB', 340, 'Hulusungai Selatan', 'South Hulu Sungai Regency, South Kalimantan, Indonesia', '-2.7662681', '115.2363408'),
('Jumat, 28 Oktober 2016 | 10:09 WIB', 341, 'Hulusungai Tengah', 'Central Hulu Sungai Regency, South Kalimantan, Indonesia', '-2.6153162', '115.5207358'),
('Jumat, 28 Oktober 2016 | 10:09 WIB', 342, 'Hulusungai Utara', 'North Hulu Sungai Regency, South Kalimantan, Indonesia', '-2.4421225', '115.188916'),
('Jumat, 28 Oktober 2016 | 10:10 WIB', 343, 'Banjar Baru', 'Banjarbaru, Banjarbaru City, South Kalimantan, Indonesia', '-3.4572422', '114.8103181'),
('Jumat, 28 Oktober 2016 | 10:10 WIB', 344, 'Kotabaru', 'Kotabaru, Gondokusuman, Yogyakarta City, Special Region of Yogyakarta, Indonesia', '-7.786636', '110.3740754'),
('Jumat, 28 Oktober 2016 | 10:11 WIB', 345, 'Tabalong', 'Tabalong Regency, South Kalimantan, Indonesia', '-1.864302', '115.5681084'),
('Jumat, 28 Oktober 2016 | 10:11 WIB', 346, 'Tanahbumbu', 'Tanah Bumbu Regency, South Kalimantan, Indonesia', '-3.4512244', '115.5681084'),
('Jumat, 28 Oktober 2016 | 10:11 WIB', 347, 'Tanahlaut', 'Tanah Laut Regency, South Kalimantan, Indonesia', '-3.7694047', '114.8092691'),
('Jumat, 28 Oktober 2016 | 10:11 WIB', 348, 'Tapin', 'Tapin, Poland', '49.906961', '22.6805493'),
('Jumat, 28 Oktober 2016 | 13:30 WIB', 349, 'Tapin Indonesia', 'Tapin Regency, South Kalimantan, Indonesia', '-2.9160746', '115.0465991'),
('Jumat, 28 Oktober 2016 | 13:33 WIB', 350, 'Barito Selatan', 'South Barito Regency, Central Kalimantan, Indonesia', '-1.875943', '114.8092691');
INSERT INTO `kota` (`tgl`, `id`, `kota`, `detail_kota`, `lat`, `lng`) VALUES
('Jumat, 28 Oktober 2016 | 13:34 WIB', 351, 'Barito Timur', 'East Barito Regency, Central Kalimantan, Indonesia', '-2.0123999', '115.188916'),
('Jumat, 28 Oktober 2016 | 13:35 WIB', 352, 'Barito Utara', 'North Barito Regency, Central Kalimantan, Indonesia', '-0.9587136', '115.094045'),
('Jumat, 28 Oktober 2016 | 13:36 WIB', 353, 'Gunungmas', 'Gunung MAS Regency, Central Kalimantan, Indonesia', '-1.2522464', '113.5728501'),
('Jumat, 28 Oktober 2016 | 13:36 WIB', 354, 'Kapuas', 'Kapuas Regency, Central Kalimantan, Indonesia', '-1.8116445', '114.3341432'),
('Jumat, 28 Oktober 2016 | 13:37 WIB', 355, 'Katingan', 'Katingan Regency, Central Kalimantan, Indonesia', '-0.9758379', '112.8105512'),
('Jumat, 28 Oktober 2016 | 13:37 WIB', 356, 'Palangkaraya', 'Palangkaraya, Jekan Raya, Palangka Raya City, Central Kalimantan, Indonesia', '-2.2161048', '113.913977'),
('Jumat, 28 Oktober 2016 | 13:38 WIB', 357, 'Kotawaringin Barat', 'West Kotawaringin Regency, Central Kalimantan, Indonesia', '-2.5063419', '111.7614661'),
('Jumat, 28 Oktober 2016 | 13:38 WIB', 358, 'Kotawaringin Timur', 'East Kotawaringin Regency, Central Kalimantan, Indonesia', '-2.1225475', '112.8105512'),
('Jumat, 28 Oktober 2016 | 13:39 WIB', 359, 'Lamandau', 'Lamandau Regency, Central Kalimantan, Indonesia', '-1.8526377', '111.2845025'),
('Jumat, 28 Oktober 2016 | 13:39 WIB', 360, 'Murungraya', 'Murung Raya Regency, Central Kalimantan, Indonesia', '-0.1362171', '114.3341432'),
('Jumat, 28 Oktober 2016 | 13:39 WIB', 361, 'Pulangpisau', 'Pulang Pisau Regency, Central Kalimantan, Indonesia', '-2.6849607', '113.9536466'),
('Jumat, 28 Oktober 2016 | 13:39 WIB', 362, 'Seruyan', 'Seruyan Regency, Central Kalimantan, Indonesia', '-3.0123467', '112.4291464'),
('Jumat, 28 Oktober 2016 | 13:40 WIB', 363, 'Sukamara', 'Sukamara Regency, Central Kalimantan, Indonesia', '-2.6267517', '111.2368084'),
('Jumat, 28 Oktober 2016 | 13:42 WIB', 364, 'Berau', 'Berau Regency, East Kalimantan, Indonesia', '2.0450883', '117.3616476'),
('Jumat, 28 Oktober 2016 | 13:43 WIB', 365, 'Bulungan', 'Bulungan Regency, North Kalimantan, Indonesia', '2.9042476', '116.9852422'),
('Jumat, 28 Oktober 2016 | 13:43 WIB', 366, 'Balikpapan', 'Balikpapan, Balikpapan City, East Kalimantan, Indonesia', '-1.2379274', '116.8528526'),
('Jumat, 28 Oktober 2016 | 13:44 WIB', 367, 'Bontang', 'Bontang, Bontang City, East Kalimantan, Indonesia', '0.120863', '117.4800445'),
('Jumat, 28 Oktober 2016 | 13:44 WIB', 368, 'Tarakan', 'Tarakan, Tarakan City, East Kalimantan, Indonesia', '3.3273599', '117.5785049'),
('Jumat, 28 Oktober 2016 | 13:44 WIB', 369, 'Kutai Barat', 'West Kutai Regency, East Kalimantan, Indonesia', '-0.4051796', '115.8521764'),
('Jumat, 28 Oktober 2016 | 13:45 WIB', 370, 'Kutai Kartanegara', 'Kutai Kartanegara Regency, East Kalimantan, Indonesia', '-0.1336655', '116.6081653'),
('Jumat, 28 Oktober 2016 | 13:45 WIB', 371, 'Kutai Timur', 'East Kutai Regency, East Kalimantan, Indonesia', '0.9433774', '116.9852422'),
('Jumat, 28 Oktober 2016 | 13:45 WIB', 372, 'Mahakam Ulu', 'Mahakam Ulu, Kalimantan Timur, Indonesia', '0.9616678', '114.7142918'),
('Jumat, 28 Oktober 2016 | 13:45 WIB', 373, 'Paser', 'Paser Regency, East Kalimantan, Indonesia', '-1.7175266', '115.9467997'),
('Jumat, 28 Oktober 2016 | 13:46 WIB', 374, 'Penajam Paser Utara', 'North Penajam Paser Regency, East Kalimantan, Indonesia', '-1.2917094', '116.5137964'),
('Jumat, 28 Oktober 2016 | 13:46 WIB', 375, 'Malinau', 'Malinau Regency, North Kalimantan, Indonesia', '3.0730929', '116.0413889'),
('Jumat, 28 Oktober 2016 | 13:46 WIB', 376, 'Nunukan', 'Nunukan Regency, North Kalimantan, Indonesia', '4.0809649', '116.6081653'),
('Jumat, 28 Oktober 2016 | 13:47 WIB', 377, 'Tana Tidung', 'Tana Tidung Regency, North Kalimantan, Indonesia', '3.551869', '117.0794082'),
('Jumat, 28 Oktober 2016 | 13:47 WIB', 378, 'Bintan', 'Bintan Island, Riau Islands, Indonesia', '1.1367041', '104.4257533'),
('Jumat, 28 Oktober 2016 | 13:47 WIB', 379, 'Karimun', 'Karimun Regency, Riau Islands, Indonesia', '0.7697665', '103.4049445'),
('Jumat, 28 Oktober 2016 | 13:48 WIB', 380, 'Kepulauan Anambas', 'Kepulauan Anambas, Jemaja, Kabupaten Kepulauan Anambas, Kepulauan Riau, Indonesia', '3.1055459', '105.6537231'),
('Jumat, 28 Oktober 2016 | 13:48 WIB', 381, 'Lingga', 'Lingga Island, Lingga Regency, Riau Islands, Indonesia', '-0.1627686', '104.6354631'),
('Jumat, 28 Oktober 2016 | 13:49 WIB', 382, 'Natuna', 'Natuna Regency, Riau Islands, Indonesia', '3.9456514', '108.1428669'),
('Jumat, 28 Oktober 2016 | 13:52 WIB', 383, 'Pulau Serasan', 'Serasan Island, Natuna Regency, Riau Islands, Indonesia', '2.5179058', '109.0512643'),
('Jumat, 28 Oktober 2016 | 13:52 WIB', 384, 'Pulau Midai', 'Mida Island, Midai, Natuna Regency, Riau Islands, Indonesia', '2.9978546', '107.775465'),
('Jumat, 28 Oktober 2016 | 13:53 WIB', 385, 'Bandarlampung', 'Bandar Lampung, Bandar Lampung City, Lampung, Indonesia', '-5.3971396', '105.2667887'),
('Jumat, 28 Oktober 2016 | 13:53 WIB', 386, 'Lampung Barat', 'West Lampung Regency, Lampung, Indonesia', '-5.1095293', '104.1466046'),
('Jumat, 28 Oktober 2016 | 13:54 WIB', 387, 'Lampung Selatan', 'South Lampung Regency, Lampung, Indonesia', '-5.5622614', '105.5474373'),
('Jumat, 28 Oktober 2016 | 13:54 WIB', 388, 'Lampung Tengah', 'Central Lampung Regency, Lampung, Indonesia', '-4.8008086', '105.3131185'),
('Jumat, 28 Oktober 2016 | 13:54 WIB', 389, 'Lampung Timur', 'East Lampung Regency, Lampung, Indonesia', '-5.1134995', '105.6881788'),
('Jumat, 28 Oktober 2016 | 13:55 WIB', 390, 'Lampung Utara', 'North Lampung Regency, Lampung, Indonesia', '-4.8133905', '104.7520939'),
('Jumat, 28 Oktober 2016 | 13:55 WIB', 391, 'Mesuji', 'Mesuji Regency, Lampung, Indonesia', '-4.0044783', '105.3131185'),
('Jumat, 28 Oktober 2016 | 13:55 WIB', 392, 'Pesawaran', 'Pesawaran Regency, Lampung, Indonesia', '-5.493245', '105.0791228'),
('Jumat, 28 Oktober 2016 | 13:55 WIB', 393, 'Pesisir Barat', 'Pesisir Bar., Lampung, Indonesia', '-5.2928191', '104.1233667'),
('Jumat, 28 Oktober 2016 | 13:56 WIB', 394, 'Pringsewu', 'Pringsewu Regency, Lampung, Indonesia', '-5.3331186', '104.9856176'),
('Jumat, 28 Oktober 2016 | 13:56 WIB', 395, 'Tanggamus', 'Tanggamus Regency, Lampung, Indonesia', '-5.3027489', '104.5655273'),
('Jumat, 28 Oktober 2016 | 13:56 WIB', 396, 'Tulangbawang', 'Tulangbawang Regency, Lampung, Indonesia', '-4.3176576', '105.5005483'),
('Jumat, 28 Oktober 2016 | 13:57 WIB', 397, 'Tulangbawang Barat', 'West Tulangbawang Regency, Lampung, Indonesia', '-4.5256967', '105.0791228'),
('Jumat, 28 Oktober 2016 | 13:57 WIB', 398, 'Waykanan', 'Way Kanan Regency, Lampung, Indonesia', '-4.4963689', '104.5655273'),
('Jumat, 28 Oktober 2016 | 13:58 WIB', 399, 'Buru Indonesia', 'Buru, Maluku, Indonesia', '-3.3927754', '126.7819505'),
('Jumat, 28 Oktober 2016 | 13:58 WIB', 400, 'Buru Selatan', 'South Buru Regency, Maluku, Indonesia', '-3.7273972', '126.6957216'),
('Jumat, 28 Oktober 2016 | 13:58 WIB', 401, 'Kepulauan Aru', 'Aru islands, Kepulauan Aru Regency, Maluku, Indonesia', '-6.1946502', '134.5501935'),
('Jumat, 28 Oktober 2016 | 13:59 WIB', 402, 'Tual', 'Tual, Tual City, Maluku, Indonesia', '-5.626563', '132.7520867'),
('Jumat, 28 Oktober 2016 | 13:59 WIB', 403, 'Maluku Barat Daya', 'Maluku Barat Daya Regency, Maluku, Indonesia', '-7.7851588', '126.3498097'),
('Jumat, 28 Oktober 2016 | 14:00 WIB', 404, 'Maluku Tengah', 'Central Maluku Regency, Maluku, Indonesia', '-3.0166501', '129.4864411'),
('Jumat, 28 Oktober 2016 | 14:00 WIB', 405, 'Maluku Tenggara', 'Sotheast Maluku Regency, Maluku, Indonesia', '-5.7512455', '132.7271587'),
('Jumat, 28 Oktober 2016 | 14:00 WIB', 406, 'Maluku Tenggara Barat', 'West Maluku Tenggara Regency, Maluku, Indonesia', '-7.5322642', '131.3611121'),
('Jumat, 28 Oktober 2016 | 14:01 WIB', 407, 'Seram Bagian Barat', 'West Seram Bagian Regency, Maluku, Indonesia', '-3.1271575', '128.4008357'),
('Jumat, 28 Oktober 2016 | 14:02 WIB', 408, 'Seram Bagian Timur', 'East Seram Bagian Regency, Maluku, Indonesia', '-3.4233267', '130.2271243'),
('', 409, 'Menes', 'MiniÈ™ 317137, Romania', '46.1378615', '21.6048233'),
('', 410, 'Menes Pandeglang', 'Menes, Pandeglang Regency, Banten, Indonesia', '-6.3819128', '105.9259271'),
('', 411, 'Purwaraja Pandeglang', 'Purwaraja, Menes, Pandeglang Regency, Banten, Indonesia', '-6.3718119', '105.9200531'),
('', 412, 'Narimbang Rangkasbitung', 'Narimbang Mulia, Rangkasbitung, Lebak Regency, Banten, Indonesia', '-6.3552718', '106.2786937'),
('', 413, 'Jayanti Tangerang', 'Jayanti, Tangerang, Banten, Indonesia', '-6.2053549', '106.3993658'),
('', 415, 'Purwakarta', 'Purwakarta, Purwakarta Sub-District, Purwakarta Regency, West Java, Indonesia', '-6.5406665', '107.4462717');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
`message_id` int(11) NOT NULL,
  `chat_room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengurus_dkm`
--

CREATE TABLE IF NOT EXISTS `pengurus_dkm` (
`id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `token` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengurus_dkm`
--

INSERT INTO `pengurus_dkm` (`id`, `nama`, `password`, `email`, `username`, `no_hp`, `token`) VALUES
(7, 'Muhammad yana Mulyana', '70485b067b642154ab4a585b89bf97e6', 'yanatamfan@gmail.com', 'muhammadyana', '+62-857-1475-7247', '2f28b576d2a9e591db2eebb3b9dc66c46e6d98e5'),
(8, 'Gafari Yusuf', '70485b067b642154ab4a585b89bf97e6', 'gafarybyh@gmail.com', '10212201', '+62-874-6584-5454', 'd7f87dde0197e363a73283e6b5c7acf345831719'),
(9, 'wisnu adi perdana', 'e10adc3949ba59abbe56e057f20f883e', 'wisnuadiperdana@gmail.com', 'wisnu', '+62-243-3434-3434', '8aad481666f6a4d97cb0fcf1f12c8ceeddfcb165'),
(10, 'Keke Pohan', '100d1e385a6c09fa2957c339e00de68c', 'kekepohan@gmail.com', 'kekepohan', '+62-857-1475-7247', '81d1524c4370a60b78f9ab05693a5e7f691b0c2f'),
(11, 'Admin Masjid Salman', 'e10adc3949ba59abbe56e057f20f883e', 'ardiyansahpermana56@gmail.com', 'aslab', '+62-857-1475-7247', '19e1516de83d84dd3c7c2462adb4e34638d19eda');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gcm_registration_id` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `gcm_registration_id`, `created_at`) VALUES
(33, 'Admin Simajid', 'admin@simajid.com', '', '2016-10-06 03:38:18'),
(35, 'yana', 'yana@tamfan.com', 'dfwWZfoPBwc:APA91bHVYBpBr-gyh552REBH25i5ympCK6ztZLPpyBC8cOSnOVocr6rdiC4fmZVhQsY55cJpKYV9Eqp0Ateoa758PU3ordqGxVATHPVeIXUKNqQcOo3ZPmBxwRVx1iGdR1cfug5aU6vq', '2016-10-06 03:45:33'),
(36, 'Admin Simajid', 'admin@simajid.id', '', '2016-10-06 03:47:52'),
(37, 'Simajid', 'admin@androidhive.info', '', '2016-10-06 03:49:42'),
(38, 'teing', 'teingatuh@gmail.com', 'dfwWZfoPBwc:APA91bHVYBpBr-gyh552REBH25i5ympCK6ztZLPpyBC8cOSnOVocr6rdiC4fmZVhQsY55cJpKYV9Eqp0Ateoa758PU3ordqGxVATHPVeIXUKNqQcOo3ZPmBxwRVx1iGdR1cfug5aU6vq', '2016-10-06 04:22:37'),
(39, 'rafi', 'rafi@yana.com', 'f86OvLljya0:APA91bFGIHfN6KySlrX2lSSkgVsrRUNE4fFmIg6T02d6590JxfTp8N4YiTrHvipf-VZ3_8n9icQmo2Ilb734zZd9EOYh9VUkQPv3D8-HowJ4qAzCLjq_Lh9sWSY9fGHK37k7TSz4OB83', '2016-10-06 04:30:41'),
(40, 'ahmad', 'ahmad@simajid.com', 'doqptv3v0kg:APA91bHFrFe4E4PXJXgSWCr-rqdgjdvCVhdMEuUQP9MqotJipDWAqs7Mr43PaRW5hBrH2Y9LTXBT7r8FuxXmznd3YfAwWXcRpT9kP3tEWsBhAUihHrQnrhkMm3rRGf0A9eKgo18KzfvA', '2016-10-07 06:47:37'),
(41, 'Yana PC', 'yana@admindkm.com', 'eX6DlOngHe8:APA91bHbuY-2gOzvw5jcCAjvNmWDBCEXE1Qfu7A0z7xvymdg8wO5z1bL7ZgKGnoWSbkq3mmYkVdXMtnr2oGDJP3RnZSP_j2r7FwOMEq6_wdOkJqpUoHaC8DFq301FdUwEWTRYKF3SRM6', '2016-11-08 08:22:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_rooms`
--
ALTER TABLE `chat_rooms`
 ADD PRIMARY KEY (`chat_room_id`);

--
-- Indexes for table `data_mosque`
--
ALTER TABLE `data_mosque`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`), ADD KEY `user_id` (`user_id`), ADD KEY `id_city` (`id_city`), ADD KEY `manager` (`manager`);

--
-- Indexes for table `kajian`
--
ALTER TABLE `kajian`
 ADD PRIMARY KEY (`id`), ADD KEY `id_mosque` (`id_mosque`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
 ADD PRIMARY KEY (`message_id`), ADD KEY `chat_room_id` (`chat_room_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pengurus_dkm`
--
ALTER TABLE `pengurus_dkm`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_rooms`
--
ALTER TABLE `chat_rooms`
MODIFY `chat_room_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `data_mosque`
--
ALTER TABLE `data_mosque`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `kajian`
--
ALTER TABLE `kajian`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=416;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `pengurus_dkm`
--
ALTER TABLE `pengurus_dkm`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_mosque`
--
ALTER TABLE `data_mosque`
ADD CONSTRAINT `data_mosque_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `pengurus_dkm` (`id`),
ADD CONSTRAINT `data_mosque_ibfk_2` FOREIGN KEY (`id_city`) REFERENCES `kota` (`id`);

--
-- Constraints for table `kajian`
--
ALTER TABLE `kajian`
ADD CONSTRAINT `kajian_ibfk_1` FOREIGN KEY (`id_mosque`) REFERENCES `data_mosque` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `messages_ibfk_3` FOREIGN KEY (`chat_room_id`) REFERENCES `chat_rooms` (`chat_room_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
