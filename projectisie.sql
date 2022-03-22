-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 05 juin 2021 à 00:31
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projectisie`
--

-- --------------------------------------------------------

--
-- Structure de la table `electeur`
--

CREATE TABLE `electeur` (
  `Id_electeur` int(11) NOT NULL,
  `Pseudo` varchar(20) NOT NULL,
  `mot_de_passe` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `dateinscription` date NOT NULL,
  `id_parti_elu` int(10) DEFAULT NULL,
  `id_gouvernerat` int(10) NOT NULL,
  `date_derniere_election` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `electeur`
--

INSERT INTO `electeur` (`Id_electeur`, `Pseudo`, `mot_de_passe`, `age`, `dateinscription`, `id_parti_elu`, `id_gouvernerat`, `date_derniere_election`) VALUES
(1, 'ameni', 'ameni', 21, '2021-05-03', NULL, 6, NULL),
(2, 'foulen', 'fleni', 19, '2021-06-01', 5, 7, '2021-06-08 17:21:00'),
(3, 'user', 'user', 26, '2021-06-02', NULL, 6, NULL),
(4, 'electeur', 'electeur', 24, '2021-06-02', 1, 1, '2021-06-02 17:21:15'),
(6, 'john', 'doe', 29, '0000-00-00', NULL, 17, NULL),
(7, 'jane', 'doe', 19, '0000-00-00', NULL, 5, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `gouvernerat`
--

CREATE TABLE `gouvernerat` (
  `id_gouvernerat` int(10) NOT NULL,
  `nom_gouvernerat` varchar(50) NOT NULL,
  `nbr_sieges` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `gouvernerat`
--

INSERT INTO `gouvernerat` (`id_gouvernerat`, `nom_gouvernerat`, `nbr_sieges`) VALUES
(1, 'Tunis', 15),
(2, 'Ariana', 12),
(3, 'Manouba', 10),
(4, 'Ben Arous', 9),
(5, 'Nabeul', 7),
(6, 'Sousse', 13),
(7, 'Monastir', 8),
(8, 'Mahdia', 8),
(9, 'Sfax', 14),
(10, 'Gabes', 10),
(11, 'Medenine', 9),
(12, 'Tataouine', 7),
(13, 'Gafsa', 7),
(14, 'Touzeur', 8),
(15, 'Kbili', 8),
(16, 'Kairaouan', 6),
(17, 'Tela', 10),
(18, 'Seliana', 9),
(19, 'Kef', 7),
(20, 'Jendouba', 7),
(21, 'Beja', 8),
(22, 'Kasserine', 8),
(23, 'Bizerte', 6),
(24, 'Zaghouan', 10);

-- --------------------------------------------------------

--
-- Structure de la table `partipolitique`
--

CREATE TABLE `partipolitique` (
  `id_parti` int(10) NOT NULL,
  `nom_parti` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `partipolitique`
--

INSERT INTO `partipolitique` (`id_parti`, `nom_parti`) VALUES
(1, 'Annahdha'),
(2, 'Ettaillar'),
(3, 'PDL'),
(4, 'Front populaire'),
(5, 'Ajjoumhouri'),
(6, 'PDM'),
(7, 'Afek Tunis');

-- --------------------------------------------------------

--
-- Structure de la table `voix`
--

CREATE TABLE `voix` (
  `id_voix` int(10) NOT NULL,
  `id_gouvernerat` int(10) NOT NULL,
  `id_parti` int(10) NOT NULL,
  `nombre_voix` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `voix`
--

INSERT INTO `voix` (`id_voix`, `id_gouvernerat`, `id_parti`, `nombre_voix`) VALUES
(1, 1, 1, 5113),
(2, 1, 2, 9298),
(3, 1, 3, 3036),
(4, 1, 4, 3070),
(5, 1, 5, 7793),
(6, 1, 6, 8019),
(7, 1, 7, 7830),
(8, 2, 1, 7501),
(9, 2, 2, 3314),
(10, 2, 3, 2097),
(11, 2, 4, 1482),
(12, 2, 5, 3774),
(13, 2, 6, 629),
(14, 2, 7, 3540),
(15, 3, 1, 959),
(16, 3, 2, 6956),
(17, 3, 3, 9918),
(18, 3, 4, 526),
(19, 3, 5, 8783),
(20, 3, 6, 8777),
(21, 3, 7, 7989),
(22, 4, 1, 6386),
(23, 4, 2, 9310),
(24, 4, 3, 9941),
(25, 4, 4, 1870),
(26, 4, 5, 3461),
(27, 4, 6, 1104),
(28, 4, 7, 1386),
(29, 5, 1, 9694),
(30, 5, 2, 9430),
(31, 5, 3, 3334),
(32, 5, 4, 6491),
(33, 5, 5, 5146),
(34, 5, 6, 4676),
(35, 5, 7, 4215),
(36, 6, 1, 9966),
(37, 6, 2, 1877),
(38, 6, 3, 5497),
(39, 6, 4, 750),
(40, 6, 5, 5820),
(41, 6, 6, 2827),
(42, 6, 7, 2839),
(43, 7, 1, 2414),
(44, 7, 2, 4674),
(45, 7, 3, 9433),
(46, 7, 4, 4605),
(47, 7, 5, 5274),
(48, 7, 6, 1718),
(49, 7, 7, 6961),
(50, 8, 1, 6994),
(51, 8, 2, 6153),
(52, 8, 3, 1207),
(53, 8, 4, 9296),
(54, 8, 5, 6041),
(55, 8, 6, 7230),
(56, 8, 7, 6515),
(57, 9, 1, 1613),
(58, 9, 2, 8783),
(59, 9, 3, 1547),
(60, 9, 4, 3781),
(61, 9, 5, 2088),
(62, 9, 6, 527),
(63, 9, 7, 8724),
(64, 10, 1, 1147),
(65, 10, 2, 1494),
(66, 10, 3, 3343),
(67, 10, 4, 2890),
(68, 10, 5, 949),
(69, 10, 6, 962),
(70, 10, 7, 532),
(71, 11, 1, 8470),
(72, 11, 2, 6024),
(73, 11, 3, 3182),
(74, 11, 4, 4415),
(75, 11, 5, 3163),
(76, 11, 6, 9454),
(77, 11, 7, 6014),
(78, 12, 1, 3099),
(79, 12, 2, 7403),
(80, 12, 3, 9969),
(81, 12, 4, 9017),
(82, 12, 5, 2231),
(83, 12, 6, 2071),
(84, 12, 7, 1736),
(85, 13, 1, 6706),
(86, 13, 2, 4018),
(87, 13, 3, 3787),
(88, 13, 4, 2498),
(89, 13, 5, 9504),
(90, 13, 6, 4271),
(91, 13, 7, 1181),
(92, 14, 1, 6655),
(93, 14, 2, 9737),
(94, 14, 3, 2432),
(95, 14, 4, 9940),
(96, 14, 5, 6670),
(97, 14, 6, 6283),
(98, 14, 7, 4417),
(99, 15, 1, 6606),
(100, 15, 2, 4599),
(101, 15, 3, 8640),
(102, 15, 4, 9630),
(103, 15, 5, 6790),
(104, 15, 6, 7830),
(105, 15, 7, 4683),
(106, 16, 1, 7092),
(107, 16, 2, 8067),
(108, 16, 3, 3851),
(109, 16, 4, 9704),
(110, 16, 5, 3379),
(111, 16, 6, 7062),
(112, 16, 7, 7551),
(113, 17, 1, 8634),
(114, 17, 2, 553),
(115, 17, 3, 7736),
(116, 17, 4, 5276),
(117, 17, 5, 3001),
(118, 17, 6, 6026),
(119, 17, 7, 9216),
(120, 18, 1, 7603),
(121, 18, 2, 4981),
(122, 18, 3, 6604),
(123, 18, 4, 3569),
(124, 18, 5, 6054),
(125, 18, 6, 7884),
(126, 18, 7, 7604),
(127, 19, 1, 7905),
(128, 19, 2, 6947),
(129, 19, 3, 6781),
(130, 19, 4, 626),
(131, 19, 5, 1958),
(132, 19, 6, 1066),
(133, 19, 7, 2424),
(134, 20, 1, 8254),
(135, 20, 2, 3270),
(136, 20, 3, 1139),
(137, 20, 4, 2536),
(138, 20, 5, 1389),
(139, 20, 6, 3650),
(140, 20, 7, 4132),
(141, 21, 1, 4003),
(142, 21, 2, 9272),
(143, 21, 3, 8535),
(144, 21, 4, 1443),
(145, 21, 5, 8157),
(146, 21, 6, 4092),
(147, 21, 7, 5914),
(148, 22, 1, 2569),
(149, 22, 2, 4283),
(150, 22, 3, 1056),
(151, 22, 4, 2208),
(152, 22, 5, 2963),
(153, 22, 6, 1370),
(154, 22, 7, 4442),
(155, 23, 1, 1930),
(156, 23, 2, 5686),
(157, 23, 3, 3756),
(158, 23, 4, 7983),
(159, 23, 5, 8786),
(160, 23, 6, 8309),
(161, 23, 7, 8640),
(162, 24, 1, 3432),
(163, 24, 2, 1943),
(164, 24, 3, 2649),
(165, 24, 4, 2797),
(166, 24, 5, 4935),
(167, 24, 6, 4559),
(168, 24, 7, 6369);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `electeur`
--
ALTER TABLE `electeur`
  ADD PRIMARY KEY (`Id_electeur`) KEY_BLOCK_SIZE=5 USING BTREE,
  ADD UNIQUE KEY `Id_electeur` (`Id_electeur`),
  ADD KEY `FK_idgouvernerat` (`id_gouvernerat`),
  ADD KEY `FK_idparti` (`id_parti_elu`);

--
-- Index pour la table `gouvernerat`
--
ALTER TABLE `gouvernerat`
  ADD PRIMARY KEY (`id_gouvernerat`);

--
-- Index pour la table `partipolitique`
--
ALTER TABLE `partipolitique`
  ADD PRIMARY KEY (`id_parti`);

--
-- Index pour la table `voix`
--
ALTER TABLE `voix`
  ADD PRIMARY KEY (`id_voix`),
  ADD KEY `FK_id_gouvernerat` (`id_gouvernerat`),
  ADD KEY `FK_id_parti` (`id_parti`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `electeur`
--
ALTER TABLE `electeur`
  MODIFY `Id_electeur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `gouvernerat`
--
ALTER TABLE `gouvernerat`
  MODIFY `id_gouvernerat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `partipolitique`
--
ALTER TABLE `partipolitique`
  MODIFY `id_parti` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `voix`
--
ALTER TABLE `voix`
  MODIFY `id_voix` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `electeur`
--
ALTER TABLE `electeur`
  ADD CONSTRAINT `FK_idgouvernerat` FOREIGN KEY (`id_gouvernerat`) REFERENCES `gouvernerat` (`id_gouvernerat`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_idparti` FOREIGN KEY (`id_parti_elu`) REFERENCES `partipolitique` (`id_parti`) ON DELETE CASCADE;

--
-- Contraintes pour la table `voix`
--
ALTER TABLE `voix`
  ADD CONSTRAINT `FK_id_gouvernerat` FOREIGN KEY (`id_gouvernerat`) REFERENCES `gouvernerat` (`id_gouvernerat`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_id_parti` FOREIGN KEY (`id_parti`) REFERENCES `partipolitique` (`id_parti`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
