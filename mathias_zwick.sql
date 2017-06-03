-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:8889
-- Généré le :  Sam 03 Juin 2017 à 20:37
-- Version du serveur :  5.5.42
-- Version de PHP :  5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mathias_zwick`
--

-- --------------------------------------------------------

--
-- Structure de la table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `photos_set` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `photos`
--

INSERT INTO `photos` (`id`, `name`, `picture`, `photos_set`) VALUES
(1, 'dad_1', 'ressources/img/day_after_day/dad_1.jpg', 'Day after day'),
(2, 'dad_2', 'ressources/img/day_after_day/dad_2.jpg', 'Day after day'),
(3, 'dad_3', 'ressources/img/day_after_day/dad_3.jpg', 'Day after day'),
(4, 'dad_4', 'ressources/img/day_after_day/dad_4.jpg', 'Day after day'),
(5, 'dad_5', 'ressources/img/day_after_day/dad_5.jpg', 'Day after day'),
(6, 'dad_6', 'ressources/img/day_after_day/dad_6.jpg', 'Day after day'),
(7, 'dad_7', 'ressources/img/day_after_day/dad_7.jpg', 'Day after day'),
(8, 'dad_8', 'ressources/img/day_after_day/dad_8.jpg', 'Day after day'),
(9, 'dad_9', 'ressources/img/day_after_day/dad_9.jpg', 'Day after day'),
(10, 'dad_10', 'ressources/img/day_after_day/dad_10.jpg', 'Day after day'),
(11, 'dad_11', 'ressources/img/day_after_day/dad_11.jpg', 'Day after day'),
(12, 'dad_12', 'ressources/img/day_after_day/dad_12.jpg', 'Day after day'),
(13, 'dad_13', 'ressources/img/day_after_day/dad_13.jpg', 'Day after day'),
(14, 'dad_14', 'ressources/img/day_after_day/dad_14.jpg', 'Day after day'),
(15, 'dad_15', 'ressources/img/day_after_day/dad_15.jpg', 'Day after day'),
(17, 'nml_1', 'ressources/img/no_mans_land/nml_1.jpg', 'No man''s land'),
(18, 'nml_2', 'ressources/img/no_mans_land/nml_2.jpg', 'No man''s land'),
(19, 'nml_3', 'ressources/img/no_mans_land/nml_3.jpg', 'No man''s land'),
(20, 'nml_4', 'ressources/img/no_mans_land/nml_4.jpg', 'No man''s land'),
(21, 'nml_5', 'ressources/img/no_mans_land/nml_5.jpg', 'No man''s land'),
(22, 'nml_6', 'ressources/img/no_mans_land/nml_6.jpg', 'No man''s land'),
(23, 'nml_7', 'ressources/img/no_mans_land/nml_7.jpg', 'No man''s land'),
(24, 'nml_8', 'ressources/img/no_mans_land/nml_8.jpg', 'No man''s land'),
(25, 'nml_9', 'ressources/img/no_mans_land/nml_9.jpg', 'No man''s land'),
(26, 'nml_10', 'ressources/img/no_mans_land/nml_10.jpg', 'No man''s land'),
(27, 'nml_11', 'ressources/img/no_mans_land/nml_11.jpg', 'No man''s land'),
(28, 'nml_12', 'ressources/img/no_mans_land/nml_12.jpg', 'No man''s land'),
(29, 'nml_13', 'ressources/img/no_mans_land/nml_13.jpg', 'No man''s land'),
(30, 'pttw_1', 'ressources/img/push_towards_the_west/pttw_1.jpg', 'A push towards the west'),
(31, 'pttw_2', 'ressources/img/push_towards_the_west/pttw_2.jpg', 'A push towards the west '),
(32, 'pttw_3', 'ressources/img/push_towards_the_west/pttw_3.jpg', 'A push towards the west '),
(33, 'pttw_4', 'ressources/img/push_towards_the_west/pttw_4.jpg', 'A push towards the west '),
(34, 'pttw_5', 'ressources/img/push_towards_the_west/pttw_5.jpg', 'A push towards the west '),
(35, 'pttw_6', 'ressources/img/push_towards_the_west/pttw_6.jpg', 'A push towards the west '),
(36, 'pttw_7', 'ressources/img/push_towards_the_west/pttw_7.jpg', 'A push towards the west '),
(37, 'pttw_8', 'ressources/img/push_towards_the_west/pttw_8.jpg', 'A push towards the west '),
(38, 'pttw_9', 'ressources/img/push_towards_the_west/pttw_9.jpg', 'A push towards the west '),
(39, 'pttw_10', 'ressources/img/push_towards_the_west/pttw_10.jpg', 'A push towards the west '),
(40, 'pttw_11', 'ressources/img/push_towards_the_west/pttw_11.jpg', 'A push towards the west '),
(41, 'pttw_12', 'ressources/img/push_towards_the_west/pttw_12.jpg', 'A push towards the west '),
(42, 'pttw_13', 'ressources/img/push_towards_the_west/pttw_13.jpg', 'A push towards the west '),
(43, 'pttw_14', 'ressources/img/push_towards_the_west/pttw_14.jpg', 'A push towards the west '),
(44, 'pttw_15', 'ressources/img/push_towards_the_west/pttw_15.jpg', 'A push towards the west '),
(45, 'pttw_16', 'ressources/img/push_towards_the_west/pttw_16.jpg', 'A push towards the west '),
(46, 'pttw_17', 'ressources/img/push_towards_the_west/pttw_17.jpg', 'A push towards the west '),
(47, 'pttw_18', 'ressources/img/push_towards_the_west/pttw_18.jpg', 'A push towards the west '),
(48, 'pttw_19', 'ressources/img/push_towards_the_west/pttw_19.jpg', 'A push towards the west '),
(49, 'pttw_20', 'ressources/img/push_towards_the_west/pttw_20.jpg', 'A push towards the west '),
(50, 'pttw_21', 'ressources/img/push_towards_the_west/pttw_21.jpg', 'A push towards the west '),
(51, 'pttw_22', 'ressources/img/push_towards_the_west/pttw_22.jpg', 'A push towards the west '),
(52, 'pttw_23', 'ressources/img/push_towards_the_west/pttw_23.jpg', 'A push towards the west '),
(53, 'pttw_24', 'ressources/img/push_towards_the_west/pttw_24.jpg', 'A push towards the west ');

-- --------------------------------------------------------

--
-- Structure de la table `photos_set`
--

CREATE TABLE `photos_set` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `slug` varchar(255) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `presentation_picture` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `photos_set`
--

INSERT INTO `photos_set` (`id`, `name`, `slug`, `description`, `presentation_picture`) VALUES
(1, 'A push towards the west', 'a-push-towards-the-west', 'Open to Western cultures, these young Iranians would like to see their country reconcile with the world. Weaving between French Peugeot cars and Paykan from the time of the Shah, the road belongs to them. Taking us far away from Iran''s mullahs and chadors, these skateboarders keep pushing towards the West.', 'pttw_1'),
(2, 'No man''s land', 'no-mans-land', 'As Europe isolates itself and builds walls at its borders, 2360 meters of anti-migrant fences have been installed in Paris (France) to counter the uncontrolled construction of refugee camps. The wall symbolises the management difficulties encountered by European countries in the migrant crisis. This fortress follows the path of line 2 of the Parisian metro. A no man''s land has emerged at the doorstep of north-east Parisian neighbourghood', 'nml_1'),
(3, 'Day after day', 'day-after-day', 'Day after day Mathias Zwick takes picture of his every day life. The poetry of life in white and black pictures.', 'dad_9');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `photos_set`
--
ALTER TABLE `photos_set`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT pour la table `photos_set`
--
ALTER TABLE `photos_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
