-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-02-15 07:36:02
-- サーバのバージョン： 10.4.19-MariaDB
-- PHP のバージョン: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `db_sql_pcdt`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `hinmoku`
--

CREATE TABLE `hinmoku` (
  `pcnum` varchar(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sgroup` varchar(4) DEFAULT NULL,
  `price` int(6) DEFAULT NULL,
  `stock` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `hinmoku`
--

INSERT INTO `hinmoku` (`pcnum`, `name`, `sgroup`, `price`, `stock`) VALUES
('pc0001', 'NEWPASO', 'パソコン', 180000, 100),
('pc0002', 'PASO21', 'パソコン', 180000, 25),
('pc0003', 'PASO2001', 'パソコン', 210000, 20),
('ptr001', 'PRINTPRO', 'プリンタ', 50000, 80),
('ptr002', 'PRINTMASTER', 'プリンタ', 68000, 30),
('ptr003', 'PRTINTPRO2', 'プリンタ', 52000, 20),
('ptr004', 'MPRINT', 'プリンタ', 30000, NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `hokan`
--

CREATE TABLE `hokan` (
  `num` int(4) NOT NULL,
  `local` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `hokan`
--

INSERT INTO `hokan` (`num`, `local`) VALUES
(1001, '東京工場'),
(1002, '横浜工場'),
(1003, '大阪工場');

-- --------------------------------------------------------

--
-- テーブルの構造 `inr`
--

CREATE TABLE `inr` (
  `num` int(4) NOT NULL,
  `pcnum` varchar(10) NOT NULL,
  `kosu` int(3) DEFAULT NULL,
  `idate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `inr`
--

INSERT INTO `inr` (`num`, `pcnum`, `kosu`, `idate`) VALUES
(1001, 'pc0001', 30, '2003-09-01'),
(1002, 'pc0003', 10, '2003-09-04'),
(1003, 'pc0001', 20, '2003-09-10');

-- --------------------------------------------------------

--
-- テーブルの構造 `ordert`
--

CREATE TABLE `ordert` (
  `ornum` int(11) NOT NULL,
  `client` varchar(20) DEFAULT NULL,
  `pcnum` varchar(6) DEFAULT NULL,
  `kosu` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `ordert`
--

INSERT INTO `ordert` (`ornum`, `client`, `pcnum`, `kosu`) VALUES
(1, '横浜コンピュータ', 'pc0002', 5),
(2, '横浜コンピュータ', 'ptr002', 5),
(3, 'パソ東京', 'ptr001', 10),
(4, 'PC会館', 'ptr001', 3),
(5, '横浜コンピュータ', 'pc0001', 5),
(6, '横浜コンピュータ', 'ptr001', 5),
(7, 'PC会館', 'pc0001', 3),
(8, 'パソ東京', 'ptr001', 13);

-- --------------------------------------------------------

--
-- テーブルの構造 `outr`
--

CREATE TABLE `outr` (
  `num` int(11) NOT NULL,
  `pcnum` varchar(6) NOT NULL,
  `kosu` int(3) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `outr`
--

INSERT INTO `outr` (`num`, `pcnum`, `kosu`, `date`) VALUES
(1001, 'pc0001', 15, '2003-08-30'),
(1001, 'pc0002', 20, '2003-08-31'),
(1002, 'pc0003', 10, '2003-09-05');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `hinmoku`
--
ALTER TABLE `hinmoku`
  ADD PRIMARY KEY (`pcnum`);

--
-- テーブルのインデックス `hokan`
--
ALTER TABLE `hokan`
  ADD PRIMARY KEY (`num`);

--
-- テーブルのインデックス `inr`
--
ALTER TABLE `inr`
  ADD PRIMARY KEY (`num`,`pcnum`);

--
-- テーブルのインデックス `ordert`
--
ALTER TABLE `ordert`
  ADD PRIMARY KEY (`ornum`);

--
-- テーブルのインデックス `outr`
--
ALTER TABLE `outr`
  ADD PRIMARY KEY (`num`,`pcnum`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
