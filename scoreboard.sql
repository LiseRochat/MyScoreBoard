-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 29 avr. 2022 à 19:14
-- Version du serveur : 5.7.36
-- Version de PHP : 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `scoreboard`
--

-- --------------------------------------------------------

--
-- Structure de la table `contest`
--

DROP TABLE IF EXISTS `contest`;
CREATE TABLE IF NOT EXISTS `contest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `winner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `contest`
--

INSERT INTO `contest` (`id`, `game_id`, `start_date`, `winner_id`) VALUES
(1, 23, '2019-12-25', 2),
(2, 23, '2019-12-25', 2),
(3, 25, '2025-12-25', 1);

-- --------------------------------------------------------

--
-- Structure de la table `game`
--

DROP TABLE IF EXISTS `game`;
CREATE TABLE IF NOT EXISTS `game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `min_players` int(11) DEFAULT NULL,
  `max_players` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `game`
--

INSERT INTO `game` (`id`, `title`, `min_players`, `max_players`) VALUES
(23, '7 Wonders', 2, 7),
(24, 'Ticket to Ride', 2, 5),
(25, 'Pandemic', 2, 4),
(26, 'Munchkin', 3, 6),
(27, 'Menteur', 10, 2),
(28, '7 Lois', 10, 2),
(29, '7 Lois', 10, 2);

-- --------------------------------------------------------

--
-- Structure de la table `player`
--

DROP TABLE IF EXISTS `player`;
CREATE TABLE IF NOT EXISTS `player` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `player`
--

INSERT INTO `player` (`id`, `email`, `nickname`) VALUES
(1, 'luke.skywalker@rogue.sw', 'Luke'),
(2, 'amidala.padme@naboo.gov', 'Padme'),
(3, 'luke.skywalker@rogue.sw', 'Luke'),
(4, 'amidala.padme@naboo.gov', 'Padme'),
(5, 'han.solo@milenium-falcon.com', 'HanSolo'),
(6, 'chewbacca@wook.ie', 'Chewbie'),
(7, 'han.solo@milenium-falcon.com', 'HanSolo'),
(8, 'chewbacca@wook.ie', 'Chewbie'),
(9, 'rey@jakku.planet', 'Rey'),
(10, 'rey@jakku.planet', 'Rey'),
(11, 'azert@live.fr', 'lilipucien'),
(12, 'azet@live.fr', 'ouioui');

-- --------------------------------------------------------

--
-- Structure de la table `player_contest`
--

DROP TABLE IF EXISTS `player_contest`;
CREATE TABLE IF NOT EXISTS `player_contest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `contest_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `player_contest`
--

INSERT INTO `player_contest` (`id`, `player_id`, `contest_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 2, 2),
(7, 3, 2),
(8, 5, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
