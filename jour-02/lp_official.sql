-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 23 août 2023 à 12:34
-- Version du serveur : 11.0.2-MariaDB
-- Version de PHP : 8.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `lp_official`
--

-- --------------------------------------------------------

--
-- Structure de la table `floor`
--

CREATE TABLE `floor` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `floor`
--

INSERT INTO `floor` (`id`, `name`, `level`) VALUES
(1, 'Rez-de-chaussée', 0),
(2, '1er étage', 1),
(3, '2ème étage', 2);

-- --------------------------------------------------------

--
-- Structure de la table `grade`
--

CREATE TABLE `grade` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `grade`
--

INSERT INTO `grade` (`id`, `room_id`, `name`, `year`) VALUES
(1, 8, 'Bachelor 1', '2023-01-09'),
(2, 5, 'Bachelor 2 Web', '2022-01-09'),
(3, 6, 'Bachelor 2 Logiciel', '2022-01-09'),
(4, 6, 'Bachelor 2 Cyber', '2022-01-09'),
(5, 6, 'Bachelor 2 IA', '2022-01-09'),
(6, 7, 'Bachelor 3 Web', '2021-01-09'),
(7, 4, 'Bachelor 3 Logiciel', '2021-01-09'),
(8, 4, 'Bachelor 3 Cyber', '2021-01-09'),
(9, 7, 'Bachelor 3 IA', '2021-01-09'),
(10, 10, 'Mastère 1 IT Business IT', '2020-01-09'),
(11, 10, 'Mastère 2 IT Business IT', '2019-01-09'),
(12, 9, 'Mastère DPO', '2022-01-09');

-- --------------------------------------------------------

--
-- Structure de la table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `floor_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `room`
--

INSERT INTO `room` (`id`, `floor_id`, `name`, `capacity`) VALUES
(1, 1, 'RDC Food and Drinks', 90),
(2, 1, 'Sound Studio', 5),
(3, 2, 'Video Studio', 5),
(4, 2, 'Cowork 1', 80),
(5, 2, 'Cowork 2', 60),
(6, 2, 'Cowork 3', 120),
(7, 2, 'Cowork 4', 100),
(8, 3, 'Big Black Room', 150),
(9, 3, 'Double Room', 30),
(10, 3, 'New Double Room', 25);

-- --------------------------------------------------------

--
-- Structure de la table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `student`
--

INSERT INTO `student` (`id`, `grade_id`, `email`, `fullname`, `birthdate`, `gender`) VALUES
(1, 10, 'frederic00@peltier.com', 'Terry Cristinelli', '1955-07-24', 'male'),
(2, 7, 'jpereira@yahoo.fr', 'Pascal Ascens', '1966-11-25', 'male'),
(3, 6, 'arobin@louis.com', 'Roxan Roumegas', '1979-01-24', 'male'),
(4, 2, 'manon11@muller.org', 'Ruben Habib', '1976-07-08', 'male'),
(5, 4, 'fontaine.charles@berthelot.com', 'Céline Emptoz-Lacote', '1999-09-10', 'female'),
(6, 9, 'regnier.eric@noos.fr', 'Kawther Eltarr', '1995-06-12', 'female'),
(7, 3, 'roger.lefebvre@live.com', 'Mylan Atlani', '2003-08-05', 'male'),
(8, 3, 'dominique.coste@dbmail.com', 'Sadatt Zakari', '1971-01-31', 'male'),
(9, 3, 'lejeune.gilles@live.com', 'Matthieu Ducamp', '1961-04-05', 'male'),
(10, 3, 'roger93@laposte.net', 'Nicolas Revel', '1983-07-14', 'male'),
(11, 11, 'theodore25@dbmail.com', 'Julie Barbier', '1972-08-12', 'male'),
(12, 6, 'charles.michel@louis.org', 'Nathalie Schmitt', '1990-09-15', 'male'),
(13, 9, 'fweiss@dupuy.org', 'Émile Roche', '2003-12-25', 'female'),
(14, 11, 'xdescamps@brun.fr', 'Andrée du Huet', '1964-05-24', 'female'),
(15, 10, 'capucine.blanc@free.fr', 'Suzanne de la Chevallier', '1973-02-03', 'male'),
(16, 12, 'alphonse.richard@noos.fr', 'Sylvie de Barbier', '1965-11-21', 'female'),
(17, 11, 'vidal.genevieve@wanadoo.fr', 'Jean-Hugues Maillard', '1990-02-25', 'male'),
(18, 12, 'zbernard@dbmail.com', 'Michelle Pruvost', '1987-07-13', 'female'),
(19, 8, 'nbonneau@free.fr', 'Christiane Benard-Pichon', '1964-05-31', 'female'),
(20, 8, 'claire.marques@alves.fr', 'Gilles Gregoire', '1955-04-11', 'female'),
(21, 10, 'deschamps.theodore@dbmail.com', 'Patrick Richard', '1961-07-24', 'female'),
(22, 3, 'maillet.tristan@club-internet.fr', 'Édouard Rodriguez', '1977-01-29', 'female'),
(23, 12, 'denis.alix@live.com', 'Henri Guerin', '1954-12-01', 'male'),
(24, 11, 'colette.langlois@hubert.org', 'Astrid Moreno', '1964-12-16', 'male'),
(25, 4, 'antoine.robin@maillard.com', 'Susanne de Lagarde', '2001-10-29', 'male'),
(26, 3, 'pvallet@lagarde.com', 'Margaud Blanc', '1985-08-12', 'male'),
(27, 9, 'francois39@orange.fr', 'Philippine-Nicole Simon', '1980-09-18', 'male'),
(28, 7, 'petienne@orange.fr', 'Claire Blanchard-Maillot', '1964-02-28', 'female'),
(29, 10, 'suzanne87@wanadoo.fr', 'Raymond Roche', '1957-04-27', 'male'),
(30, 3, 'ffleury@gmail.com', 'Alix Dufour', '1954-04-29', 'female'),
(31, 2, 'franck.coste@joseph.com', 'Paul Clerc', '1962-12-30', 'female'),
(32, 1, 'renee63@sfr.fr', 'Noël Michaud', '1959-07-29', 'female'),
(33, 6, 'marechal.aurelie@club-internet.fr', 'Véronique Maillot', '1982-10-19', 'male'),
(34, 7, 'eleonore71@blot.net', 'Catherine Chevalier', '1996-07-31', 'female'),
(35, 3, 'fparent@poirier.net', 'Manon Klein', '1979-04-07', 'male'),
(36, 7, 'hortense.besson@gmail.com', 'Arthur Girard', '1998-08-22', 'male'),
(37, 10, 'amelie50@boulay.com', 'Gabrielle-Simone Bourgeois', '1956-04-15', 'female'),
(38, 2, 'parent.anastasie@colin.fr', 'Nicole-Adèle Charpentier', '1953-11-28', 'female'),
(39, 11, 'jacqueline54@noos.fr', 'Constance Tessier', '1991-05-30', 'female'),
(40, 4, 'roux.victor@besnard.fr', 'Amélie Lefevre', '1986-07-09', 'female'),
(41, 5, 'madeleine.blin@live.com', 'Zoé Chauvin-Pires', '1999-12-02', 'female'),
(42, 4, 'bonneau.audrey@delorme.fr', 'Guillaume Carpentier', '1971-10-12', 'male'),
(43, 2, 'germain.camille@tele2.fr', 'Michelle de Turpin', '1960-09-27', 'female'),
(44, 9, 'danielle21@yahoo.fr', 'Marc Fernandez', '1955-07-20', 'female'),
(45, 6, 'gomez.thierry@laporte.net', 'Claire Neveu', '1968-10-05', 'female'),
(46, 6, 'cvalentin@hotmail.fr', 'Margot-Nath Lemaitre', '1956-12-14', 'male'),
(47, 12, 'xaubry@ollivier.org', 'Constance-Agathe Guillon', '1986-02-26', 'male'),
(48, 1, 'ebouchet@orange.fr', 'Claire Blin', '1984-11-29', 'female'),
(49, 6, 'philippine35@munoz.com', 'Alex-Élise Clement', '1964-04-03', 'male'),
(50, 5, 'legoff.nicolas@lejeune.org', 'Patrick Lemaitre', '1977-06-07', 'female'),
(51, 11, 'josephine09@masse.com', 'Guy Renaud', '1985-08-15', 'male'),
(52, 9, 'verdier.anais@berger.com', 'Denis Meyer', '1996-11-27', 'male'),
(53, 6, 'pfoucher@rolland.com', 'Roland de la Guerin', '1987-06-07', 'male'),
(54, 1, 'sebastien.aubert@gmail.com', 'Agnès Fontaine', '1955-01-27', 'female'),
(55, 7, 'guillaume.gomez@yahoo.fr', 'Charles-Adrien Lelievre', '1979-10-12', 'male'),
(56, 5, 'sguyot@lambert.fr', 'Michel Le Rolland', '1980-12-12', 'female'),
(57, 12, 'adam.julien@hotmail.fr', 'Victor Raymond', '1982-03-17', 'male'),
(58, 11, 'isaac.lefort@gmail.com', 'Philippine-Inès Meunier', '1967-05-29', 'female'),
(59, 9, 'didier.auguste@bertrand.fr', 'Diane Charpentier', '1982-09-19', 'female'),
(60, 11, 'henri89@yahoo.fr', 'André Roussel', '1975-10-20', 'male'),
(61, 12, 'audrey.hoarau@noos.fr', 'Alfred Hardy', '1973-01-07', 'female'),
(62, 4, 'alexandre.therese@hotmail.fr', 'Adèle Carpentier', '1998-12-26', 'female'),
(63, 10, 'anastasie35@ollivier.org', 'Henriette Bouvier', '1970-03-01', 'female'),
(64, 5, 'marcel.imbert@adam.org', 'David Barthelemy', '1959-06-24', 'male'),
(65, 8, 'deoliveira.patricia@martinez.com', 'Claude de Dumont', '1958-03-30', 'female'),
(66, 5, 'bertrand.mary@gmail.com', 'Gabriel Dupuy', '1962-01-12', 'male'),
(67, 11, 'petitjean.rene@gmail.com', 'Brigitte Blanc', '1975-09-03', 'female'),
(68, 1, 'nicolas.andre@collin.fr', 'Bertrand de Pascal', '1965-02-06', 'male'),
(69, 11, 'ljacquet@dupuis.fr', 'Étienne Payet-Devaux', '2003-07-22', 'male'),
(70, 6, 'lefort.marc@laposte.net', 'Christelle Giraud', '1973-02-18', 'male'),
(71, 5, 'eric88@morin.fr', 'Charlotte Le Robin', '1967-03-01', 'female'),
(72, 8, 'dias.stephane@sfr.fr', 'Philippine-Alexandria Perrot', '1959-02-01', 'male'),
(73, 11, 'wdelorme@gmail.com', 'Lucas Joly-Reynaud', '1979-12-01', 'female'),
(74, 6, 'ygaudin@lefevre.fr', 'Gabriel Moreau', '1963-12-19', 'male'),
(75, 3, 'eric74@laposte.net', 'Dominique Moreau', '1973-10-20', 'female'),
(76, 4, 'thierry.isaac@pons.net', 'Anastasie Le De Sousa', '1982-05-18', 'female'),
(77, 7, 'bherve@poirier.org', 'Marc Evrard', '1965-12-27', 'male'),
(78, 9, 'georges.klein@mahe.com', 'Alphonse Hoarau', '2004-09-05', 'female'),
(79, 1, 'goncalves.helene@sanchez.fr', 'Benoît de la Raynaud', '1958-09-12', 'male'),
(80, 6, 'roland30@club-internet.fr', 'Susan Antoine', '1973-02-08', 'female'),
(81, 11, 'reynaud.denis@martineau.fr', 'Jeanne Hebert-Daniel', '1962-07-10', 'female'),
(82, 10, 'alfred16@royer.fr', 'Olivier Duhamel', '1961-12-19', 'female'),
(83, 4, 'wmunoz@boulanger.com', 'Thérèse-Margot Bouvier', '1989-02-07', 'male'),
(84, 6, 'josephine.cousin@loiseau.fr', 'Raymond Blin', '1969-11-02', 'female'),
(85, 2, 'rene.bourdon@hotmail.fr', 'Isaac Dupont', '1980-08-06', 'female'),
(86, 2, 'gbesson@mace.com', 'Jules Andre', '1966-01-26', 'female'),
(87, 9, 'bruneau.margaud@huet.fr', 'Audrey de la Delannoy', '2003-11-15', 'female'),
(88, 2, 'cferrand@gmail.com', 'Éric Hoarau-Deschamps', '1960-02-17', 'female'),
(89, 11, 'josephine19@cordier.com', 'Émile Joly', '1966-09-25', 'male'),
(90, 4, 'girard.margot@leroy.fr', 'Raymond Berthelot', '1981-08-01', 'male'),
(91, 7, 'fabre.noemi@descamps.fr', 'Aurore de Gerard', '1987-12-16', 'female'),
(92, 8, 'oceane53@weber.fr', 'Luce-Suzanne Gallet', '1998-07-15', 'female'),
(93, 7, 'dupre.michele@rocher.fr', 'Patrick Pottier', '1996-11-28', 'male'),
(94, 5, 'lebon.edouard@live.com', 'Audrey de la Chretien', '2001-02-08', 'male'),
(95, 7, 'olivier.lacombe@letellier.com', 'Théodore-Alexandre Grondin', '1956-09-24', 'female'),
(96, 9, 'etienne06@club-internet.fr', 'Frédéric-Léon Morvan', '1995-07-22', 'male'),
(97, 2, 'plopez@guillaume.com', 'Jérôme Chretien', '1974-06-15', 'male'),
(98, 9, 'bourdon.therese@alves.com', 'Susanne Garcia', '1982-03-27', 'female'),
(99, 8, 'georges.ferrand@paul.fr', 'Édith Prevost', '1981-04-03', 'female'),
(100, 5, 'simone.paul@hoareau.com', 'Caroline Lenoir', '1953-09-06', 'female'),
(101, 2, 'arthur74@allain.fr', 'Noël Wagner', '1999-09-16', 'female'),
(102, 12, 'caroline98@moulin.fr', 'Michel Delahaye', '1972-07-06', 'male'),
(103, 2, 'qmorel@sfr.fr', 'Brigitte Fontaine', '1967-10-13', 'male'),
(104, 5, 'gerard.foucher@ollivier.com', 'Charles Lopez', '2005-04-21', 'male'),
(105, 6, 'payet.alfred@hotmail.fr', 'Victor Diallo', '1969-06-16', 'male'),
(106, 10, 'boucher.jeanne@robert.fr', 'William Clerc', '2003-12-21', 'male'),
(107, 12, 'guy52@gmail.com', 'Anaïs Chauvet', '1966-12-25', 'male'),
(108, 2, 'juliette76@gmail.com', 'Marthe Thomas-Vincent', '1956-12-14', 'female'),
(109, 10, 'vmasson@arnaud.com', 'Guillaume Tanguy', '1998-09-10', 'male'),
(110, 7, 'paulette53@francois.com', 'Nicolas Camus', '1971-11-06', 'female'),
(111, 2, 'torres.michele@bernard.fr', 'Charlotte Perret', '2002-07-16', 'male'),
(112, 5, 'lefevre.denis@sfr.fr', 'Auguste Renard', '2001-01-08', 'male'),
(113, 4, 'boucher.emmanuel@lacombe.com', 'Thierry de Guillet', '1976-08-06', 'female'),
(114, 7, 'bdevaux@hotmail.fr', 'Patrick Loiseau-Bouchet', '1956-03-28', 'male'),
(115, 5, 'hbourgeois@laposte.net', 'Théophile-Jacques Meunier', '1971-05-23', 'male'),
(116, 8, 'etienne.marques@dbmail.com', 'Denis Legendre', '1961-12-18', 'female'),
(117, 6, 'alex55@noos.fr', 'Mathilde Maury', '1985-10-24', 'male'),
(118, 6, 'denis80@free.fr', 'Andrée Lopez-Lambert', '1972-04-26', 'female'),
(119, 4, 'dlejeune@meunier.fr', 'Dorothée-Madeleine Camus', '1986-07-21', 'female'),
(120, 5, 'bertrand56@live.com', 'Clémence Joubert', '2000-01-13', 'male'),
(121, 12, 'adelaide29@orange.fr', 'Céline Le Torres', '1982-11-16', 'male'),
(122, 10, 'mercier.denis@antoine.org', 'Aimée Gaillard', '1976-05-01', 'male'),
(123, 6, 'roland28@lefort.net', 'Noël Regnier-Cordier', '1973-07-28', 'male'),
(124, 2, 'lacroix.christiane@laposte.net', 'Pierre Renard', '1975-10-23', 'female'),
(125, 7, 'maurice30@dbmail.com', 'Odette Albert', '2004-04-24', 'female'),
(126, 5, 'ocolin@club-internet.fr', 'Roland Bertrand', '1971-06-17', 'female'),
(127, 7, 'adrienne.gautier@club-internet.fr', 'Hugues Fernandez', '1959-04-12', 'female'),
(128, 12, 'dpires@live.com', 'Augustin Roche', '1963-04-16', 'male'),
(129, 12, 'druiz@club-internet.fr', 'Honoré Munoz', '1991-12-07', 'male'),
(130, 8, 'andree.bonnin@muller.net', 'Françoise Fleury', '1994-02-19', 'male'),
(131, 1, 'maurice.huet@tele2.fr', 'Alex Gilles', '1986-05-13', 'female'),
(132, 5, 'marc21@navarro.fr', 'Robert du Mary', '1967-06-16', 'female'),
(133, 11, 'josephine.philippe@live.com', 'Marine-Marine Bouvet', '2000-12-28', 'male'),
(134, 2, 'maurice98@wanadoo.fr', 'Grégoire Dumont', '1958-03-30', 'female'),
(135, 5, 'emilie.maury@club-internet.fr', 'Aimée Schmitt', '2000-01-23', 'male'),
(136, 8, 'blanchet.marcelle@wanadoo.fr', 'Nathalie Hubert', '1993-10-14', 'male'),
(137, 11, 'nleleu@voisin.net', 'Zacharie Sauvage', '1991-04-01', 'male'),
(138, 12, 'astrid15@dbmail.com', 'Philippe Guichard', '1994-02-21', 'female'),
(139, 3, 'zbrun@marques.net', 'Amélie Roy-Neveu', '1959-11-11', 'male'),
(140, 6, 'enormand@club-internet.fr', 'Michel Lopez', '1963-12-24', 'male'),
(141, 3, 'kbouvet@free.fr', 'Bernard Le Ramos', '2003-04-10', 'female'),
(142, 6, 'potier.emmanuelle@lemaire.org', 'Éric Jacquet-Delahaye', '1964-02-18', 'male'),
(143, 4, 'dominique.dubois@rodriguez.com', 'Hugues Gauthier', '1996-05-18', 'male'),
(144, 3, 'margaud17@club-internet.fr', 'Anastasie du Ledoux', '1990-04-10', 'male'),
(145, 1, 'elise80@yahoo.fr', 'Suzanne Brunet-Traore', '1986-10-16', 'female'),
(146, 8, 'xavier.thierry@moreau.fr', 'Émile Bouvet', '2000-01-01', 'male'),
(147, 6, 'colette.bertin@mercier.fr', 'Aurore-Luce Tanguy', '1993-09-07', 'female'),
(148, 4, 'tbruneau@hotmail.fr', 'Élodie Regnier', '1964-07-05', 'male'),
(149, 3, 'aimee86@wanadoo.fr', 'Nathalie Faivre', '1961-05-04', 'female'),
(150, 6, 'celina80@live.com', 'Théodore-Daniel Mary', '2000-08-18', 'male'),
(151, 11, 'sebastien08@blanchard.net', 'Charlotte Charles', '1960-03-07', 'male'),
(152, 5, 'afouquet@yahoo.fr', 'Alain Lefort', '1987-09-16', 'male'),
(153, 5, 'denis.isabelle@bonnet.com', 'Michelle Boulanger', '1963-08-06', 'female'),
(154, 7, 'etienne50@tele2.fr', 'Bertrand Le Goff', '1979-10-28', 'female'),
(155, 7, 'zgarnier@noos.fr', 'Louis Adam', '1954-10-17', 'female'),
(156, 3, 'gnavarro@klein.com', 'Élodie Meyer', '1979-12-20', 'female'),
(157, 5, 'gilbert45@hotmail.fr', 'Maggie Carre', '1997-04-18', 'female'),
(158, 3, 'marcelle.pons@orange.fr', 'Xavier Moreau', '1978-01-02', 'male'),
(159, 7, 'lucy99@paris.com', 'Thibault-Matthieu Allard', '1957-09-28', 'female'),
(160, 9, 'theophile.toussaint@rossi.fr', 'Théophile Coste', '1965-12-02', 'male'),
(161, 4, 'dvincent@ramos.com', 'Dominique Vaillant', '2005-05-13', 'female'),
(162, 1, 'clagarde@live.com', 'Alphonse Letellier', '1990-10-04', 'male'),
(163, 11, 'valerie99@hotmail.fr', 'Marcelle Blondel', '2004-02-28', 'female'),
(164, 7, 'lopez.juliette@buisson.fr', 'Antoinette Rey', '1972-05-20', 'female'),
(165, 2, 'kremy@yahoo.fr', 'Agnès Paris', '1964-10-13', 'male'),
(166, 11, 'hernandez.guy@lecomte.com', 'Élisabeth Letellier', '1971-03-18', 'female'),
(167, 9, 'henri.louis@noos.fr', 'Martine Andre', '1980-05-01', 'male'),
(168, 4, 'gilbert.duval@lacombe.fr', 'Anaïs Voisin', '1960-03-13', 'male'),
(169, 1, 'frederic.guillaume@cousin.com', 'Emmanuelle-Éléonore Olivier', '1975-12-26', 'female'),
(170, 8, 'ediaz@hotmail.fr', 'Denis Vallet', '1981-07-21', 'male'),
(171, 6, 'claude.durand@roussel.com', 'François Gaillard', '1966-09-19', 'male'),
(172, 4, 'fouquet.claire@ruiz.fr', 'Paul Bruneau', '1999-06-07', 'female'),
(173, 5, 'pblot@hebert.com', 'Andrée Benard-Hamon', '1997-07-08', 'male'),
(174, 11, 'franck94@sfr.fr', 'Hugues-Honoré Pelletier', '1977-02-14', 'female'),
(175, 4, 'jacques87@ferreira.net', 'Bernadette Lacroix-Rocher', '1995-03-07', 'female'),
(176, 9, 'qguibert@live.com', 'Olivie Loiseau', '1973-07-15', 'male'),
(177, 2, 'marc.leblanc@live.com', 'Benoît Prevost', '1966-08-23', 'male'),
(178, 7, 'philippe.payet@petitjean.fr', 'Théophile Tessier-Leroux', '1956-06-25', 'female'),
(179, 9, 'andre51@wanadoo.fr', 'Diane Lemaire', '1997-11-12', 'female'),
(180, 1, 'payet.charlotte@laposte.net', 'Pauline Boulay', '1967-04-09', 'female'),
(181, 4, 'lefort.marthe@picard.com', 'Eugène Bailly', '1958-08-10', 'female'),
(182, 5, 'marcelle11@free.fr', 'Henriette Vidal', '1979-07-09', 'male'),
(183, 8, 'louis.maillard@noos.fr', 'Clémence Lebrun', '1975-06-08', 'female'),
(184, 12, 'lorraine68@yahoo.fr', 'Gilles-François Picard', '2005-07-12', 'male'),
(185, 4, 'rocher.jeannine@caron.com', 'Luce Imbert-Bigot', '1977-02-17', 'female'),
(186, 11, 'qlesage@payet.net', 'Antoinette Le Roux', '1978-10-10', 'female'),
(187, 4, 'robert.noel@bonnet.org', 'Diane-Susanne Pires', '1992-09-09', 'male'),
(188, 10, 'arnaud.marcel@orange.fr', 'Aurore Bonnin', '1991-12-04', 'male'),
(189, 3, 'anouk61@hotmail.fr', 'Anne-Bernadette Morvan', '1973-12-31', 'female'),
(190, 3, 'dorothee92@yahoo.fr', 'Thibault Launay-Blin', '1990-05-25', 'male'),
(191, 9, 'fernandes.valerie@bouvet.fr', 'Victor Faivre', '1963-02-14', 'male'),
(192, 12, 'odelahaye@orange.fr', 'Joséphine Leveque', '1963-01-27', 'male'),
(193, 2, 'charlotte.paris@petitjean.com', 'Luce Jourdan', '1985-10-11', 'female'),
(194, 11, 'roger.mercier@hotmail.fr', 'Jules Gerard', '1964-08-14', 'female'),
(195, 12, 'gregoire41@noos.fr', 'Louis Lemoine', '1954-02-06', 'female'),
(196, 7, 'andree.benoit@gallet.fr', 'Thibault Lucas', '1999-05-05', 'female'),
(197, 8, 'elisabeth00@mahe.org', 'Maggie Chauveau', '1973-03-24', 'male'),
(198, 10, 'xleroy@blanc.com', 'Margot-Susan Valentin', '1966-04-13', 'male'),
(199, 8, 'bcollet@delattre.com', 'Adèle Leveque', '1957-12-27', 'male'),
(200, 1, 'theodore.vincent@wanadoo.fr', 'Isabelle Leveque', '1975-03-30', 'male'),
(201, 1, 'emmanuel67@yahoo.fr', 'Catherine Collin', '2003-09-18', 'male'),
(202, 11, 'richard58@millet.com', 'Matthieu-Yves Ferrand', '1966-11-25', 'female'),
(203, 3, 'roger.lagarde@henry.com', 'Capucine Hoarau-Olivier', '1969-04-30', 'female'),
(204, 3, 'ramos.brigitte@hotmail.fr', 'William Guilbert', '2003-03-31', 'female'),
(205, 1, 'nperrin@barbe.fr', 'Léon David', '1979-11-02', 'female'),
(206, 4, 'pbrun@brun.com', 'Laetitia Dumont', '1961-10-19', 'male'),
(207, 8, 'bertrand90@free.fr', 'Laure Dias', '1977-09-22', 'male'),
(208, 6, 'paul.claudine@normand.net', 'Arnaude Moreno', '1972-09-19', 'male'),
(209, 2, 'emile.alexandre@joubert.fr', 'Tristan Brunet-Thibault', '1966-05-26', 'male'),
(210, 7, 'lucie.leroux@sfr.fr', 'Maryse Dos Santos', '1965-08-08', 'female'),
(211, 5, 'vperrier@sfr.fr', 'Marcel Martineau-Bodin', '1973-07-03', 'female'),
(212, 10, 'pierre53@valentin.com', 'Astrid-Claudine Lelievre', '1955-12-20', 'male'),
(213, 8, 'blanchet.louise@gilles.com', 'Camille Petit', '1962-10-15', 'male'),
(214, 2, 'amelie55@gmail.com', 'Marcelle Barre-Giraud', '1963-11-26', 'female'),
(215, 5, 'benoit.alexandre@alves.com', 'Isaac Allard', '1967-07-11', 'female'),
(216, 9, 'frederic.berthelot@wanadoo.fr', 'Charles Blanchet', '2000-04-03', 'male'),
(217, 9, 'paulette11@leclerc.fr', 'Odette de Collet', '2003-05-09', 'female'),
(218, 6, 'claudine.grenier@wanadoo.fr', 'Henriette Riviere', '1957-04-06', 'male'),
(219, 2, 'perrin.lucas@live.com', 'Antoine Besson-Guillon', '1957-06-27', 'male'),
(220, 4, 'bertrand.costa@paul.com', 'Louise Carlier', '1993-05-24', 'female'),
(221, 2, 'lblanchet@etienne.fr', 'Suzanne Loiseau', '1987-01-08', 'male'),
(222, 7, 'julie97@hotmail.fr', 'Caroline Jean', '1994-01-22', 'female'),
(223, 10, 'jacqueline95@hotmail.fr', 'Michelle Lucas', '1954-11-28', 'female'),
(224, 8, 'christiane03@tanguy.fr', 'Valentine Mathieu', '1987-01-04', 'female'),
(225, 12, 'olivie.hebert@orange.fr', 'Alexandre-Guillaume Weiss', '1976-11-26', 'female'),
(226, 7, 'laurent.boucher@laposte.net', 'Alain-Louis Bourdon', '1965-12-03', 'female'),
(227, 2, 'thierry.couturier@berthelot.com', 'Dorothée Chauvet', '2000-12-13', 'male'),
(228, 11, 'laine.anastasie@gmail.com', 'Zoé Bailly-Rossi', '1982-11-03', 'female'),
(229, 9, 'noemi25@techer.fr', 'Gilles Alves-Chevallier', '1953-09-28', 'male'),
(230, 5, 'corinne07@yahoo.fr', 'Margaud Fournier', '1983-03-29', 'male'),
(231, 12, 'barbe.chantal@gmail.com', 'Timothée Le Salmon', '1987-11-23', 'female'),
(232, 9, 'xavier49@dbmail.com', 'Marc Roche-Roger', '1975-06-18', 'male'),
(233, 4, 'vidal.luc@sanchez.fr', 'Pierre Paris', '1976-11-22', 'male'),
(234, 12, 'thomas.denis@ledoux.net', 'Dominique Jacob', '1971-06-10', 'female'),
(235, 11, 'isaac.maury@martel.com', 'Patrick Le Blin', '1954-10-09', 'female'),
(236, 12, 'raymond.blanchard@sfr.fr', 'Mathilde de Imbert', '1986-01-03', 'female'),
(237, 12, 'alfred49@free.fr', 'Colette Dos Santos', '2000-01-24', 'female'),
(238, 4, 'brigitte.pottier@valette.com', 'Maryse du Riviere', '1974-07-12', 'female'),
(239, 6, 'ygodard@sfr.fr', 'Odette Menard', '1983-03-19', 'male'),
(240, 8, 'isabelle57@live.com', 'Danielle Gallet', '1994-12-19', 'male'),
(241, 3, 'lacombe.oceane@tele2.fr', 'Antoine Clement', '1986-05-08', 'male'),
(242, 4, 'amelie.marty@orange.fr', 'Gérard De Oliveira', '1994-04-24', 'female'),
(243, 9, 'denis.sebastien@yahoo.fr', 'René Bouvet', '1975-05-25', 'female'),
(244, 9, 'letellier.alexandrie@renault.com', 'Patrick Salmon', '1993-07-12', 'male'),
(245, 10, 'mguillet@colas.fr', 'Henri Lopes', '1977-04-16', 'male'),
(246, 3, 'astrid92@sfr.fr', 'Simone du Guyon', '1960-03-19', 'female'),
(247, 5, 'payet.margaret@marion.net', 'Marie Gimenez', '1999-04-03', 'male'),
(248, 7, 'marion.victoire@paris.com', 'Pierre Mallet', '1995-12-02', 'female'),
(249, 12, 'frichard@gmail.com', 'Aurore Lebon', '1977-04-17', 'male'),
(250, 8, 'merle.jeanne@sfr.fr', 'Roland Petitjean', '1966-07-02', 'female'),
(251, 4, 'jean54@free.fr', 'Suzanne-Manon Lefevre', '2005-01-20', 'male'),
(252, 8, 'timothee80@normand.org', 'Nicolas Legendre', '1964-05-09', 'male'),
(253, 3, 'cbruneau@couturier.com', 'Noël-Hugues David', '1996-04-15', 'male'),
(254, 1, 'gregoire.jacquet@deschamps.com', 'Alfred de la Hoarau', '1978-06-16', 'male'),
(255, 7, 'coulon.marianne@hotmail.fr', 'Philippine-Pauline Maillard', '1990-01-26', 'female'),
(256, 4, 'nauger@sfr.fr', 'Benoît Pottier', '1993-01-06', 'female'),
(257, 9, 'millet.marthe@joly.fr', 'Cécile Coulon', '1954-01-27', 'male'),
(258, 5, 'weiss.isaac@dijoux.com', 'Patrick Besson', '2000-02-04', 'male'),
(259, 5, 'petit.lucas@free.fr', 'Christophe Leconte', '1964-01-23', 'female'),
(260, 7, 'xavier97@guillaume.net', 'Roger-Timothée Gauthier', '1984-12-01', 'male'),
(261, 9, 'eleonore.roche@blanchet.com', 'Arthur de la Goncalves', '1966-12-06', 'female'),
(262, 5, 'adele87@dbmail.com', 'Théophile du Rolland', '1980-09-01', 'male'),
(263, 11, 'phebert@club-internet.fr', 'Isaac Lacombe', '1963-11-27', 'female'),
(264, 11, 'esanchez@noos.fr', 'Isaac Bonnet-Lebreton', '1982-03-10', 'male'),
(265, 1, 'antoinette53@didier.fr', 'Gilbert-Timothée Goncalves', '1976-11-25', 'male'),
(266, 9, 'emile16@diaz.com', 'Margaux Thibault', '1958-02-24', 'female'),
(267, 6, 'godard.laure@free.fr', 'Jeanne Huet', '1967-04-03', 'female'),
(268, 12, 'adele.antoine@noel.org', 'Honoré Bruneau', '1968-08-12', 'female'),
(269, 12, 'hortense13@auger.fr', 'Martine Pottier', '1991-07-09', 'female'),
(270, 11, 'margaret90@yahoo.fr', 'Daniel-René Lucas', '1968-09-18', 'female'),
(271, 7, 'susan32@wanadoo.fr', 'Marie Collet', '1965-08-23', 'female'),
(272, 10, 'gaillard.corinne@club-internet.fr', 'Louis Lacroix', '2003-03-27', 'female'),
(273, 12, 'bonnet.denise@nguyen.com', 'Louise Lejeune', '1994-07-02', 'male'),
(274, 9, 'theophile.navarro@henry.com', 'Anouk Boucher-Vaillant', '1972-04-25', 'female'),
(275, 1, 'rgautier@yahoo.fr', 'Théodore Cordier', '2002-04-01', 'female'),
(276, 2, 'victor52@sfr.fr', 'Grégoire Gomes', '1954-01-04', 'female'),
(277, 5, 'speltier@free.fr', 'Luc Alves', '1996-01-01', 'female'),
(278, 2, 'kdias@yahoo.fr', 'Michèle du Michaud', '1999-09-11', 'female'),
(279, 12, 'zdelmas@chartier.com', 'Joseph-Benjamin Collin', '1979-11-28', 'male'),
(280, 6, 'marcel.aubry@wanadoo.fr', 'Antoinette Arnaud', '2000-10-05', 'female'),
(281, 7, 'alphonse.lemonnier@yahoo.fr', 'Isaac Guerin', '1982-05-26', 'male'),
(282, 1, 'sanchez.alix@fischer.fr', 'Édith-Constance Marty', '1991-12-14', 'male'),
(283, 10, 'brigitte.diaz@sfr.fr', 'Jules Besson', '1982-02-02', 'female'),
(284, 1, 'anais69@gmail.com', 'Eugène Guichard', '2002-03-18', 'male'),
(285, 2, 'obarthelemy@gmail.com', 'Margaux Roche', '1976-10-10', 'female'),
(286, 8, 'juliette.techer@guibert.fr', 'Christophe de Moulin', '1979-10-23', 'male'),
(287, 4, 'gregoire.huet@weiss.net', 'Élise Pelletier', '1954-02-14', 'male'),
(288, 3, 'gabrielle43@cousin.fr', 'Claude Millet', '1998-04-25', 'male'),
(289, 8, 'arnaud.henri@paul.com', 'Hugues-Théophile Bouvet', '1953-12-01', 'male'),
(290, 8, 'zmarques@dbmail.com', 'Philippe Morel', '1975-12-01', 'male'),
(291, 12, 'girard.olivier@charpentier.com', 'Vincent Lenoir', '1956-11-05', 'female'),
(292, 8, 'pinto.agnes@lecomte.net', 'Pierre Delattre', '2003-03-06', 'male'),
(293, 10, 'lagarde.louise@yahoo.fr', 'Pénélope du Perrin', '1980-12-21', 'male'),
(294, 11, 'loiseau.alex@tele2.fr', 'Michel-William Guillet', '1980-10-27', 'female'),
(295, 4, 'frederique11@live.com', 'Corinne du Gillet', '1990-04-14', 'male'),
(296, 10, 'nbazin@jacques.net', 'Luce Moreno', '1998-02-21', 'female'),
(297, 5, 'antoine30@noos.fr', 'Frédérique Le Marchand', '1967-10-30', 'female'),
(298, 5, 'claude.lebreton@jacob.com', 'Xavier Pichon', '1973-03-25', 'female'),
(299, 8, 'zroche@hotmail.fr', 'Paul-Guy Pages', '1973-05-20', 'female'),
(300, 7, 'qhenry@club-internet.fr', 'Philippe Delahaye', '1956-05-18', 'male');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `floor`
--
ALTER TABLE `floor`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_595AAE3454177093` (`room_id`);

--
-- Index pour la table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_729F519B854679E2` (`floor_id`);

--
-- Index pour la table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B723AF33FE19A1A8` (`grade_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `floor`
--
ALTER TABLE `floor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `grade`
--
ALTER TABLE `grade`
  ADD CONSTRAINT `FK_595AAE3454177093` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`);

--
-- Contraintes pour la table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `FK_729F519B854679E2` FOREIGN KEY (`floor_id`) REFERENCES `floor` (`id`);

--
-- Contraintes pour la table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `FK_B723AF33FE19A1A8` FOREIGN KEY (`grade_id`) REFERENCES `grade` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;