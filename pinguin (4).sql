-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18 Feb 2015 pada 10.29
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pinguin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `block_word`
--

CREATE TABLE IF NOT EXISTS `block_word` (
`id` int(200) NOT NULL,
  `word` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_category`
--

CREATE TABLE IF NOT EXISTS `blog_category` (
`ID` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_comments`
--

CREATE TABLE IF NOT EXISTS `blog_comments` (
`comment_ID` bigint(20) NOT NULL,
  `comment_post_ID` bigint(20) NOT NULL,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL,
  `comment_author_url` varchar(255) NOT NULL,
  `comment_author_IP` varchar(255) NOT NULL,
  `comment_date` datetime NOT NULL,
  `comment_content` text NOT NULL,
  `comment_approved` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `blog_comments`
--

INSERT INTO `blog_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_content`, `comment_approved`) VALUES
(1, 6, 'Salman', 'squhart@gmail.com', 'http://squhart.web.id', '10.11.226.1', '2015-02-18 07:26:36', 'Hallooooooo', 1),
(2, 6, 'Salumun', 'm.salman.aq@gmail.com', 'http://m.salman.com', '10.11.225.1', '2015-02-26 05:12:20', 'Yooooooo', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_posts`
--

CREATE TABLE IF NOT EXISTS `blog_posts` (
`ID` bigint(20) NOT NULL,
  `post_author` bigint(20) NOT NULL,
  `post_date` datetime NOT NULL,
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_status` varchar(255) NOT NULL,
  `post_name` varchar(255) NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `post_modified` datetime NOT NULL,
  `post_type` varchar(255) NOT NULL,
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  `post_view` int(11) NOT NULL DEFAULT '0',
  `pinned` int(1) NOT NULL DEFAULT '0',
  `pin_priority` int(11) NOT NULL DEFAULT '99'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `blog_posts`
--

INSERT INTO `blog_posts` (`ID`, `post_author`, `post_date`, `post_content`, `post_title`, `post_status`, `post_name`, `comment_status`, `post_modified`, `post_type`, `comment_count`, `post_view`, `pinned`, `pin_priority`) VALUES
(2, 1, '2014-09-01 13:07:37', 'askdjwadasd', 'Percobaan', 'publish', 'Percobaan', 'open', '2014-09-01 13:07:37', 'blog', 0, 0, 0, 99),
(3, 1, '2014-09-01 13:09:52', '1. Roti bakar\n2. Roti panggang\n3. Roti isi', 'Percobaan kedua dan pasti berhasil', 'publish', 'Percobaan-kedua-dan-pasti-berhasil', 'open', '2014-09-01 13:09:52', 'blog', 0, 0, 0, 99),
(4, 1, '2014-09-01 13:11:36', 'ini adalah __bold__ atau ini juga **bold**  \nlalu ini adalah _miring_ atau ini juga *miring*', 'Percobaan kedua dan pasti berhasil', 'publish', 'Percobaan-kedua-dan-pasti-berhasil', 'open', '2014-09-01 13:11:36', 'blog', 0, 0, 0, 99),
(5, 1, '2014-09-01 13:13:52', 'garis\n___\ngaris lagi\n___\nIni berarti judul\n===\ndibawahnya tulisan biasa   \n\n#H1\n##H2\n###H3\n####H4\n#####H5\n######DST\n', 'Percobaan Ketiga, masih error', 'publish', 'Percobaan-Ketiga-masih-error', 'open', '2014-09-01 13:13:52', 'blog', 0, 0, 0, 99),
(6, 1, '2014-09-01 13:15:46', 'Ini cara nulis code :\n```php\necho "Hello bro!";\n```\natau ini kalau mau nulis code yang inline ```function(a) = 3;``` gitu cuuy', 'Percobaan keempat', 'publish', 'Percobaan-keempat', 'open', '2014-09-01 13:15:46', 'blog', 0, 0, 0, 99),
(7, 1, '2014-09-01 13:19:57', 'Kalau yang ini adalah cara bikin tabel :  \n\n| No | Nama | Utang |\n|:-----|:--------:|-----------:|\n| 1 | Salman | Rp. 0,00  |\n| 2 | Bhakti   | Rp. 10.000,00|\n| 3 | Rama   | Rp. 35.000,00 |', 'Percobaan keempat', 'publish', 'Percobaan-keempat', 'open', '2014-09-01 13:19:57', 'blog', 0, 0, 0, 99),
(8, 1, '2014-09-01 13:20:42', 'iiiih', 'satu dan dua', 'publish', 'satu-dan-dua', 'open', '2014-09-01 13:20:42', 'blog', 0, 0, 0, 99),
(9, 1, '2014-09-01 18:39:08', 'Berikut ini adalah contoh penggunaan markdown yang diterapkan pada blog   \r\n\r\nMarkdown\r\n===\r\n\r\nPada hari minggu ku turut ayah ke kota, naik __delman__ istimewa ku **duduk** di muka, ku duduk samping pak *kusir* yang sedang _bekerja _ .\r\n\r\nLalu, berikut ini adalah cara penulisan code, selain penulisan inline seperti ```writeln("Ahlan Dunya");``` code juga dapat ditulis terpisah seperti ini :\r\n\r\n```pascal\r\nvar a: integer\r\n\r\nbegin\r\n  a := 30;\r\n  writeln(a+5);\r\nend.\r\n```\r\n\r\nBerikut adalah tiga divisi yang ada di CNC :  \r\n1. Asisten Lab\r\n2. Asisten Praktikum\r\n3. Asisten Riset / Senior Member \r\n___\r\nNaah, sekarang sudah tahu kan? sekarang dibawah sini ada \r\n\r\n| No. | Nama | Hutang |\r\n|:-----|:-------:|----------:|\r\n| 1 | Si jangkar tukang baso tahu| Rp. 25.000.000|\r\n| 2 | Si Bajak tukang bajak langit| Rp. 50.000.000|\r\n| 3 | Laode M. Rayhan               | Rp. 200.000.000.000.000.000 |\r\n\r\nNah, itulah orang-orang yang belum bayar hutang sama saya, selain itu, ada juga si jangkar yang lagi pusing liatin matahari karena matanya gak kuateun :\r\n- Si Koplak\r\n- Si Tidak Koplak, dan\r\n- Si Kaplok.  \r\n\r\nOke mungkin segitu dulu ya tutorial dari saya, semoga bermanfaat\r\n>Sebuah masalah yang telah jelas digambarkan berarti telah terselesaikan sebagian.  \r\n>(C. F. Kettering)\r\n\r\n___\r\n[Sumber](http://squhart.web.id)\r\n\r\n![Gambar bullshit](http://localhost/pinguin/assets/img/balapa.jpg "Pakyu")\r\n', 'Contoh Markdown', 'publish', 'Contoh-Markdown', 'open', '2014-09-01 18:39:08', 'blog', 0, 0, 1, 2),
(10, 1, '2014-10-01 20:11:24', 'Halo, apa kabar?\r\n\r\n```php\r\nfunction(a){\r\n  echo "yeah";\r\n}\r\n```\r\n\r\nini __BOLD__ ini _MIRING_ kalo ini list :  \r\n1. aku\r\n2. adalah\r\n3. manusia\r\n\r\n', 'JUDULNYA DISINI', 'publish', 'JUDULNYA-DISINI', 'open', '2014-10-01 20:11:24', 'blog', 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `forum_category`
--

CREATE TABLE IF NOT EXISTS `forum_category` (
`id_cat` int(100) NOT NULL,
  `category` varchar(200) NOT NULL,
  `deskripsi` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `forum_category`
--

INSERT INTO `forum_category` (`id_cat`, `category`, `deskripsi`) VALUES
(1, '--Select Category--', ''),
(2, 'Web Devolepment', 'Devolempement website'),
(3, 'Linux', 'Seputar distro-distro linux'),
(4, 'Networking', 'Seputar masalah Jaringan'),
(5, 'Web Design', 'Mendesign sebuah web');

-- --------------------------------------------------------

--
-- Struktur dari tabel `forum_comment`
--

CREATE TABLE IF NOT EXISTS `forum_comment` (
`id_comment` int(100) NOT NULL,
  `id_thread` int(100) NOT NULL,
  `id` int(100) NOT NULL,
  `comment` varchar(10000) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `forum_comment`
--

INSERT INTO `forum_comment` (`id_comment`, `id_thread`, `id`, `comment`, `time`) VALUES
(1, 1, 7, 'joss', '2014-08-13 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `forum_thread`
--

CREATE TABLE IF NOT EXISTS `forum_thread` (
`id_thread` int(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `thread` text NOT NULL,
  `id_cat` int(100) NOT NULL,
  `time` datetime NOT NULL,
  `id_user` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `forum_thread`
--

INSERT INTO `forum_thread` (`id_thread`, `title`, `thread`, `id_cat`, `time`, `id_user`) VALUES
(1, 'Code Igniter', '', 1, '2014-08-14 00:00:00', 7),
(3, 'Coding Dengan Codeigniter', 'Hola Codeigniter', 2, '2014-08-13 00:00:00', 7),
(10, '$judul', '$thread', 2, '0000-00-00 00:00:00', 7),
(13, 'afsdfasd', 'asdfadsfasdf', 2, '2014-08-15 00:00:00', 8),
(14, 'asdfasdf', '<p>asdfasdfasdfasdf</p>', 2, '2026-08-14 00:00:00', 7),
(15, 'jaringan', '<p>jaringan berhubungan&nbsp;</p>', 3, '2026-08-14 00:00:00', 7),
(16, 'berhubungan dengan css', '<p>css jaringan jaringan&nbsp;</p>', 1, '2026-08-14 00:00:00', 7),
(17, 'asdfasdfasdf', '<p>maka dari itualah semua terjadi&nbsp;</p>', 1, '2027-08-14 00:00:00', 9),
(19, 'afsdfadsfa', '<p>semua bisa kita lakukan</p>', 1, '2031-08-14 00:00:00', 7),
(20, 'afsdfadsfa', '<p>semua bisa kita lakukan</p>', 3, '2031-08-14 00:00:00', 7),
(21, 'afsdfadsfa', '<p>semua bisa kita lakukan</p>', 1, '2031-08-14 00:00:00', 7),
(22, 'Kenapa harus aku', '<p>bujang</p>', 3, '2031-08-14 00:00:00', 7),
(24, 'Kenapa harus aku', '<p>coba testing</p>', 1, '2031-08-14 00:00:00', 7),
(26, 'asdfasdfasdf', '<p>asdfasdfasdfsdf</p>\r\n', 1, '2016-09-14 00:00:00', 7),
(28, 'asdfasdfasdf', '<p>asdfasdfasdfsdf</p>\r\n', 2, '2016-09-14 00:00:00', 7),
(29, 'asdfasdfasdf', '<p>asdfasdfasdfsdf</p>\r\n', 2, '0000-00-00 00:00:00', 7),
(30, 'JANCOK ', '<p >asdfasdfasdfasdf</p>\r\n', 1, '0000-00-00 00:00:00', 7),
(32, 'asdasd', '<p>SADasdASDasd</p>\r\n', 4, '0000-00-00 00:00:00', 7),
(34, 'asdasd', '<p>Ramaprakoso coba insert&nbsp;</p>\r\n', 3, '0000-00-00 00:00:00', 7),
(35, 'asdasd', '<p>Coba Lagi&nbsp;</p>\r\n', 3, '0000-00-00 00:00:00', 7),
(37, 'JANCOK ', '<p>dafsdfasdfasdfasdfasdf<strong>dfasdfasdfasdf</strong></p>\r\n', 1, '0000-00-00 00:00:00', 7),
(38, 'dfasdf', '<p>adsfasdfasdfasdf</p>\r\n', 1, '0000-00-00 00:00:00', 7),
(39, 'adsfasdfasdramaprakososss', '<p>gantengn seklaoo&nbsp;</p>\r\n', 3, '2014-09-21 00:00:00', 7),
(40, 'Bram Purba', '<p>adsfasdfasdfasdfasdfasdfsad</p>\r\n', 3, '2014-09-21 00:00:00', 7),
(42, 'Basic Router ', '<p>Basic router 1 2 3&nbsp;</p>\r\n', 3, '2014-09-22 00:00:00', 7),
(43, 'BITCH', '<p>yomamen</p>\r\n', 1, '2014-10-28 00:00:00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`ID` bigint(20) NOT NULL,
  `user_login` varchar(50) NOT NULL,
  `user_fullname` varchar(100) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_registered` datetime DEFAULT NULL,
  `user_last_login` datetime DEFAULT NULL,
  `user_level` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`ID`, `user_login`, `user_fullname`, `user_pass`, `user_email`, `user_registered`, `user_last_login`, `user_level`) VALUES
(1, 'squhart', 'Muhammad Salman Abdul Qohar', '831fff05cae77b6ca89a4d9807da881265570e8a', 'squhart@gmail.com', '2014-08-13 21:57:00', '0000-00-00 00:00:00', 1),
(7, 'salmaan', 'salman salman', 'de1d312533aba0907a8f8cebf8d3d91d4678ad06', 'salmaan@gmail.com', NULL, NULL, 3),
(8, 'salman', '', '831fff05cae77b6ca89a4d9807da881265570e8a', 'salman@gmail.com', NULL, NULL, 1),
(18, 'salmin', '', '831fff05cae77b6ca89a4d9807da881265570e8a', 'salmin@gmail.com', NULL, NULL, 1),
(19, 'unyu', '', '831fff05cae77b6ca89a4d9807da881265570e8a', 'unyu@gmail.com', NULL, NULL, 1),
(20, 'tai', '', '831fff05cae77b6ca89a4d9807da881265570e8a', 'tai@gmail.com', NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_level`
--

CREATE TABLE IF NOT EXISTS `user_level` (
`ID` int(11) NOT NULL,
  `level_name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_level`
--

INSERT INTO `user_level` (`ID`, `level_name`) VALUES
(1, 'superadmin'),
(2, 'admin'),
(3, 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `block_word`
--
ALTER TABLE `block_word`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `forum_category`
--
ALTER TABLE `forum_category`
 ADD PRIMARY KEY (`id_cat`);

--
-- Indexes for table `forum_comment`
--
ALTER TABLE `forum_comment`
 ADD PRIMARY KEY (`id_comment`), ADD KEY `id` (`id`), ADD KEY `id_thread` (`id_thread`);

--
-- Indexes for table `forum_thread`
--
ALTER TABLE `forum_thread`
 ADD PRIMARY KEY (`id_thread`), ADD KEY `id_cat` (`id_cat`), ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `user_login` (`user_login`), ADD UNIQUE KEY `user_email` (`user_email`), ADD KEY `ID` (`ID`), ADD KEY `user_level` (`user_level`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
 ADD PRIMARY KEY (`ID`), ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `block_word`
--
ALTER TABLE `block_word`
MODIFY `id` int(200) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
MODIFY `comment_ID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `forum_category`
--
ALTER TABLE `forum_category`
MODIFY `id_cat` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `forum_comment`
--
ALTER TABLE `forum_comment`
MODIFY `id_comment` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `forum_thread`
--
ALTER TABLE `forum_thread`
MODIFY `id_thread` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `user_level`
--
ALTER TABLE `user_level`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `blog_comments`
--
ALTER TABLE `blog_comments`
ADD CONSTRAINT `blog_comments_ibfk_1` FOREIGN KEY (`comment_post_ID`) REFERENCES `blog_posts` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `blog_posts`
--
ALTER TABLE `blog_posts`
ADD CONSTRAINT `blog_posts_ibfk_1` FOREIGN KEY (`post_author`) REFERENCES `users` (`ID`);

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_level`) REFERENCES `user_level` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
