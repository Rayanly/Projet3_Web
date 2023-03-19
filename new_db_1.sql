-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2023 at 02:48 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_db_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `candi`
--

CREATE TABLE `candi` (
  `Id` int(128) NOT NULL,
  `CNI` varchar(128) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Prenom` varchar(128) NOT NULL,
  `Genre` varchar(255) NOT NULL,
  `Pays` varchar(255) NOT NULL,
  `Email` varchar(128) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Diplome` varchar(255) NOT NULL,
  `Domaine` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candi`
--

INSERT INTO `candi` (`Id`, `CNI`, `Nom`, `Prenom`, `Genre`, `Pays`, `Email`, `Type`, `Diplome`, `Domaine`) VALUES
(1, 'bj123456///', 'dijon96', 'smart', 'Masculin', 'Maroc', 'bjjjkkkj55@gmail.com', '1', 'bac', 'Informatique - Web - Réseaux'),
(2, 'bj123456///', 'dijon96', 'smart', 'Masculin', 'Maroc', 'bjjjkkkj55@gmail.com', '1', 'bac', 'Informatique - Web - Réseaux'),
(3, 'bj123456//', 'roman', 'smart', 'Masculin', 'Maroc', 'bjjjkkkj55@gmail.com', '1', 'bac', 'Banque - Finance - Assurance'),
(4, 'bj123456///', 'dijon', 'smart', 'Masculin', 'Maroc', 'bjjjkkkj5\'5@gmail.com', '1', 'bac', 'Informatique - Web - Réseaux'),
(5, 'bj123456///', 'dijon', 'smart', 'Masculin', 'Maroc', 'bjjjkkkj5\'5@gmail.com', '1', 'bac', 'Informatique - Web - Réseaux'),
(6, 'bj123456///', 'dijon', 'smart', 'Masculin', 'Maroc', 'bjjjkkkj5\'5@gmail.com', '1', 'bac', 'Informatique - Web - Réseaux'),
(7, 'bj123456///', 'dfghjk', 'xcvbn,', 'Masculin', 'Maroc', 'bjjjkkkj55@gmail.com', '1', 'bac', 'Informatique - Web - Réseaux'),
(8, 'bj123456///', 'dfghjk', 'xcvbn,', 'Masculin', 'Maroc', 'bjjjkkkj55@gmail.com', '1', 'Choisir un Diplome', ''),
(9, 'bj123456&#34;&#34;&#34;', 'dijon', 'yeager12', 'Masculin', 'Maroc', 'bjjjkkkj5\'5@gmail.com', 'Candidat', 'bac', 'Informatique - Web - Réseaux'),
(10, 'bj123456///', 'dijon', 'smart6', 'Masculin', 'Maroc', 'bjjjkkkj5\'5@gmail.com', 'Candidat', 'bac', 'Informatique - Web - Réseaux'),
(11, 'bj123456', 'dijon', 'xcvbn,', 'Masculin', 'Maroc', 'kkkkkk@gmail.com', 'Candidat', 'bac', 'Informatique - Web - Réseaux'),
(12, 'bj123456', 'dijon', 'xcvbn,', 'Masculin', 'Maroc', 'kkkkkk@gmail.com', 'Candidat', 'bac', 'Informatique - Web - Réseaux'),
(13, 'bj123456', 'dijon', 'xcvbn,', 'Masculin', 'Maroc', 'kkkkkk@gmail.com', 'Candidat', 'bac', 'Informatique - Web - Réseaux'),
(14, 'bj123456kk', 'dijon', 'xcvbn,', 'Masculin', 'Maroc', 'kkkkkk@gmail.com', 'Candidat', 'bac', 'Informatique - Web - Réseaux'),
(15, 'bj123456kk4', 'dijon', 'xcvbn,', 'Masculin', 'Maroc', 'kkkkkk@gmail.com', 'Candidat', 'bac', 'Informatique - Web - Réseaux'),
(16, 'bm4422', 'hyper', 'smart', 'Masculin', 'Maroc', 'azert@gmai.com', 'Candidat', 'bac', 'Informatique - Web - Réseaux'),
(17, 'bm442252', 'hyperx', 'smart', 'Masculin', 'Maroc', 'azert@gmai.com', 'Candidat', 'bac', 'Informatique - Web - Réseaux'),
(18, 'bj123456ùùùù', 'dijon', 'smart', 'Masculin', 'Maroc', 'azerty45@gmail.com', 'Candidat', 'bac+2(DEUG, BTS, DUT, DEUST)', 'Banque - Finance - Assurance'),
(19, '456', 'dijon', 'smart', 'Masculin', 'Maroc', 'azerty45@gmail.com', 'Candidat', 'bac+2(DEUG, BTS, DUT, DEUST)', ''),
(20, 'vy22335', 'dijon', 'sdfghj', 'Feminin', 'Maroc', 'azerty45@gmail.com', 'Candidat', 'bac+2(DEUG, BTS, DUT, DEUST)', 'Banque - Finance - Assurance'),
(21, 'bj12345611', 'dijon', 'smart', 'Feminin', 'Maroc', 'azerty45@gmail.com', 'Candidat', 'bac+2(DEUG, BTS, DUT, DEUST)', 'Banque - Finance - Assurance'),
(22, 'bj12345611bb', 'dijonbb', 'smartbb', 'Feminin', 'Maroc', 'azerty45@gmail.com', 'Candidat', 'bac+2(DEUG, BTS, DUT, DEUST)', 'Banque - Finance - Assurance'),
(23, 'bj12345611bbv', 'dijonbb', 'smartbb', 'Feminin', 'Maroc', 'azerty45@gmail.com', 'Candidat', 'bac+2(DEUG, BTS, DUT, DEUST)', 'Banque - Finance - Assurance'),
(24, 'kl753211593', 'dijon', 'smart', 'Masculin', 'Maroc', 'azerty45@gmail.com', 'Candidat', 'bac+2(DEUG, BTS, DUT, DEUST)', 'Droit - Justice');

-- --------------------------------------------------------

--
-- Table structure for table `cv_cand`
--

CREATE TABLE `cv_cand` (
  `id` int(11) UNSIGNED NOT NULL,
  `typo` varchar(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `file_size` int(11) NOT NULL,
  `file_content` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recrut`
--

CREATE TABLE `recrut` (
  `Id` int(11) NOT NULL,
  `cmpname` varchar(128) NOT NULL,
  `adress` varchar(11) NOT NULL,
  `pays` varchar(11) NOT NULL,
  `website` varchar(11) NOT NULL,
  `city` varchar(11) NOT NULL,
  `Email` varchar(11) NOT NULL,
  `Type` varchar(11) NOT NULL,
  `position` varchar(11) NOT NULL,
  `category` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recrut`
--

INSERT INTO `recrut` (`Id`, `cmpname`, `adress`, `pays`, `website`, `city`, `Email`, `Type`, `position`, `category`) VALUES
(1, 'bj123456///', 'dfghjk', 'xcvbn,', 'Masculin', 'Maroc', 'bjjjkkkj55@', '2', 'ssssss', 'sssss'),
(2, 'bj123456&#34;&#34;&#34;', 'dijon', 'yeager12', 'Masculin', 'Maroc', 'bjjjkkkj5\'5', 'Recruteur', 'ssssss', 'sssss'),
(3, 'bj123456vvvvvv', 'gvvv', 'vbvbv', 'Feminin', 'Maroc', 'kkkkkk@gmai', 'Recruteur', 'vv', 'vvvvvvvv'),
(4, 'bj123456vvv', 'gvvv', 'vbvbv', 'Feminin', 'Maroc', 'kkkkkk@gmai', 'Recruteur', 'vv', 'vvvvvvvv'),
(5, 'ddddddd', 'sssssssss', 'hhhhhhhhhhh', 'hnhnnhhnnh', 'hhhhhhhhhhh', 'bjjjkkkj55@', 'Recruteur', 'jhggg', 'banking and'),
(6, 'ddddddd', 'sssssssss', 'hhhhhhhhhhh', 'hnhnnhhnnh', 'hhhhhhhhhhh', 'bjjjkkkj55@', 'Recruteur', 'jhggg', 'banking and'),
(7, 'ddddddd', 'sssssssss', 'hhhhhhhhhhh', 'hnhnnhhnnh', 'hhhhhhhhhhh', 'bjjjkkkj55@', 'Recruteur', 'jhggg', 'banking and'),
(8, 'hhhhhhhhhhhhhh123', 'sssssssss', 'ddddddddddd', '', 'hhhhhhhhhhh', 'kkkkkk@gmai', 'Recruteur', '', ''),
(9, 'carrefour', 'azer fdgvbb', 'maroc', 'lamiop.ma', 'settat', 'bjjjkkkj55@', 'Recruteur', 'full stack ', 'enginnering'),
(10, 'hhhhhhhhhhhhhh', 'sssssssss', 'hhhhhhhhhhh', 'hnhnnhhnnh', 'hhhhhhhhhhh', 'bjjjkkkj55@', 'Recruteur', 'full stack ', 'catering'),
(11, 'gggg', 'ggggggg', 'gggggggg', 'gggggggggg', 'gggggggg', 'azert@gmai.', 'Recruteur', 'full stack ', 'education a'),
(12, 'sdfghj', 'sssssssss', 'hhhhhhhhhhh', 'ddddddddddd', 'hhhhhhhhhhh', 'azerty45@gm', 'Recruteur', 'full stack ', 'catering');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candi`
--
ALTER TABLE `candi`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `cv_cand`
--
ALTER TABLE `cv_cand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recrut`
--
ALTER TABLE `recrut`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candi`
--
ALTER TABLE `candi`
  MODIFY `Id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `cv_cand`
--
ALTER TABLE `cv_cand`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `recrut`
--
ALTER TABLE `recrut`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
