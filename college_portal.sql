-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 20 Nov 2020 pada 04.06
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college_portal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `announcements`
--

CREATE TABLE `announcements` (
  `id_announcement` int(11) NOT NULL,
  `announcement_title` varchar(255) NOT NULL,
  `announcement_text` text NOT NULL,
  `announcement_college_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `announcements`
--

INSERT INTO `announcements` (`id_announcement`, `announcement_title`, `announcement_text`, `announcement_college_id`) VALUES
(1, 'nasi', '<p>nasi goreng 12 k</p>', 1),
(2, 'bakwan', '<p>bakwan 10k</p>', 1),
(3, 'Announcement 1', '<h4>Hi there are announcement 1</h4><p>Welcome to Oxford university</p>', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `college_units`
--

CREATE TABLE `college_units` (
  `id_college` int(11) NOT NULL,
  `college_name` varchar(100) NOT NULL,
  `college_year` varchar(100) NOT NULL,
  `college_subject` text NOT NULL,
  `college_about` text NOT NULL,
  `college_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `college_units`
--

INSERT INTO `college_units` (`id_college`, `college_name`, `college_year`, `college_subject`, `college_about`, `college_image`) VALUES
(3, 'Harvard University', '1681', '<p>it will be subject&nbsp;</p>', '<p>Harvard University is a private Ivy League research university in Cambridge, Massachusetts. Established in 1636 and named for its first benefactor, clergyman John Harvard, Harvard is the oldest institution of higher learning in the United States and among the most prestigious in the world</p>', '20200739110319hardvard.jpeg'),
(4, 'University of Cambridge', '1209', 'Founded 1020', '<p>The University of Cambridge is a collegiate research university in Cambridge, United Kingdom. Founded in 1209 and granted a royal charter by King Henry III in 1231, Cambridge is the second-oldest university in the English-speaking world and the world\'s fourth-oldest surviving university</p>', '20200730110419cambridge.jpeg'),
(5, 'University of Oxford', '1096', '<p>Archaeology and Anthropology</p>', '<p>The University of Oxford is a collegiate research university in Oxford, Oxfordshire, England. There is evidence of teaching as early as 1096, making it the oldest university in the English-speaking world and the world\'s second-oldest university in continuous operation.</p>', '20200709110619oxford.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id_comment` int(11) NOT NULL,
  `comment_text` varchar(255) NOT NULL,
  `comment_user_id` int(11) NOT NULL,
  `comment_college_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`id_comment`, `comment_text`, `comment_user_id`, `comment_college_id`) VALUES
(1, 'love this collage', 2, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(222) NOT NULL,
  `user_phone` varchar(100) DEFAULT NULL,
  `user_sex` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_phone`, `user_sex`) VALUES
(1, 'adit', 'adit@mail.com', 'adit', NULL, NULL),
(2, 'Aditya Rizki Pratama', 'arizki717@gmail.com', '486b6c6b267bc61677367eb6b6458764', '089517542356', 'Male');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id_announcement`);

--
-- Indeks untuk tabel `college_units`
--
ALTER TABLE `college_units`
  ADD PRIMARY KEY (`id_college`);

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comment`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id_announcement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `college_units`
--
ALTER TABLE `college_units`
  MODIFY `id_college` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
