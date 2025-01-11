-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2024 年 12 月 19 日 15:01
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
-- データベース: `gs_php_dev16`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `sakebuzz`
--

CREATE TABLE `sakebuzz` (
  `id` int(18) NOT NULL,
  `product_name` varchar(128) NOT NULL,
  `flavor` varchar(256) NOT NULL,
  `restaurant` varchar(128) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `sakebuzz`
--

INSERT INTO `sakebuzz` (`id`, `product_name`, `flavor`, `restaurant`, `updated_at`) VALUES
(1, '大地特別純米', '芳醇', '薬院かんすけ', '2024-12-14 19:19:08'),
(2, '綾花', 'キレと旨み', '店屋町蕎麦の酒はかりめ', '2024-12-19 20:54:52'),
(3, '純米６号', '旨味が強く。', '居酒屋まさき', '2024-12-19 21:31:57'),
(4, '大地特別純米', 'キレがあって旨みもある。燗酒にしてなおよし', 'なかむた', '2024-12-19 21:37:52'),
(5, '生酛純米', '重たい', '食と酒なかむた', '2024-12-19 22:55:47'),
(6, 'WINS', 'キレがある', 'なかむた', '2024-12-19 22:56:22'),
(7, '綾花', '飲みやすい。フルーティ', 'なかむた', '2024-12-19 22:57:28'),
(8, '純米吟醸麗', 'うっすらとはなやかな香り', 'なかむた', '2024-12-19 22:59:06'),
(9, '大地純米吟醸', '華やかな香りと香ばしさ。', 'なかむた', '2024-12-19 23:00:11'),
(10, '綾花', '香り高い、キレがある', 'はかりめ', '2024-12-19 23:00:48');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `sakebuzz`
--
ALTER TABLE `sakebuzz`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `sakebuzz`
--
ALTER TABLE `sakebuzz`
  MODIFY `id` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
