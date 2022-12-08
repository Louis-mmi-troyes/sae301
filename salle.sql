-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : jeu. 08 déc. 2022 à 21:45
-- Version du serveur : 10.8.5-MariaDB-1:10.8.5+maria~ubu2204
-- Version de PHP : 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE `salle` (
  `id` int(11) NOT NULL,
  `lieu_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lieu_adresse` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `lieu_capaciter` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lieu_nom` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `salle`
--

INSERT INTO `salle` (`id`, `lieu_id`, `lieu_adresse`, `lieu_capaciter`, `lieu_nom`) VALUES
(1, '1', '3 rue de beauregard', '55', 'cienema3d'),
(2, '2', '91 boulevard Aristide Briand', '105', 'Frères de l\'Ombre'),
(3, '3', '68 Chemin Des Bateliers', '45', 'Projector'),
(4, '4', '38 boulevard Amiral Courbet', '150', 'Au Septième'),
(5, '5', '72 rue du Paillle en queue', '135', 'Le Coin d\'Hollywood ');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `salle`
--
ALTER TABLE `salle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
