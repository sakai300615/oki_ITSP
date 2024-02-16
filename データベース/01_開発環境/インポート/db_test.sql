-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-08-15 11:13:35
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `db_updtest`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `phone`
--

CREATE TABLE `phone` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `phone`
--

INSERT INTO `phone` (`id`, `name`, `number`) VALUES
(0, '中島くん', '070-1234-5678'),
(1, '花沢さん', '080-2345-6781'),
(2, 'やずや', '0120-828-828'),
(3, '早川さん', '090-3456-7812'),
(4, 'リーブ21', '0120-783-640');

-- --------------------------------------------------------

--
-- テーブルの構造 `upd`
--

CREATE TABLE `upd` (
  `prnum` int(11) NOT NULL,
  `日付` timestamp NOT NULL DEFAULT current_timestamp(),
  `入金額` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `upd`
--

INSERT INTO `upd` (`prnum`, `日付`, `入金額`) VALUES
(1, '2022-08-03 02:00:00', 1000),
(2, '2022-08-08 02:03:24', 243000),
(3, '2022-08-15 02:04:22', 150000),
(4, '2022-08-17 02:02:06', 200000);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `phone`
--
ALTER TABLE `phone`
  ADD UNIQUE KEY `id` (`id`);

--
-- テーブルのインデックス `upd`
--
ALTER TABLE `upd`
  ADD PRIMARY KEY (`prnum`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
