-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : jeu. 08 déc. 2022 à 21:54
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
-- Structure de la table `manif`
--

CREATE TABLE `manif` (
  `id` int(11) NOT NULL,
  `manif_id` int(11) NOT NULL,
  `manif_titre` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `manif_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `manif_auteur` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `manif_genre` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `manif_date` date NOT NULL,
  `manif_affiche` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `manif_prix` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manif_duree` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `manif`
--

INSERT INTO `manif` (`id`, `manif_id`, `manif_titre`, `manif_description`, `manif_auteur`, `manif_genre`, `manif_date`, `manif_affiche`, `manif_prix`, `manif_duree`) VALUES
(1, 1, 'Batman - Le Défi', 'À Gotham City, un couple fortuné, Tucker et Esther Cobblepot (Paul Reubens et Diane Salinger), abandonne son enfant à la naissance en le jetant dans les égouts à cause de sa difformité. Il est recueilli et élevé par les manchots du zoo. Trente-trois ans plus tard, Oswald Cobblepot (Danny DeVito) a grandi dans les égouts et refait surface comme un criminel nommé Le Pingouin.', 'Tim Burton', 'Action et fantastique', '2022-12-06', 'a.jpg', '15', '2h06'),
(3, 2, 'Blade Runner', '...', 'Ridley Scott', 'action', '1982-03-12', 'b.jpg', '9', '1h54'),
(4, 3, 'Harry Potter', '...', 'Chris Columbs', 'fantaisie', '2001-02-04', 'c.jpg', '8', '2h32'),
(5, 4, 'Ça', '...', 'Andrés Muschietti', 'horreur', '2017-06-07', 'd.jpg', '7.50', '2h15'),
(6, 5, 'Legend', '...', 'Brian Helgeland', 'fantaisie', '2015-01-15', 'e.jpg', '6', '2h11'),
(7, 6, 'Le Parrain', '...', 'Francis Ford Coppola', '...', '1972-08-04', 'f.jpg', '7.50', '2h55');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `manif`
--
ALTER TABLE `manif`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `manif`
--
ALTER TABLE `manif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
