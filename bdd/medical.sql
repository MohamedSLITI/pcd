

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


--
-- Base de données: `medical`
--
CREATE DATABASE IF NOT EXISTS `medical` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `medical`;

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `ida` int(11) NOT NULL AUTO_INCREMENT,
  `noma` varchar(20) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `mdp` varchar(20) NOT NULL,
  PRIMARY KEY (`ida`),
  UNIQUE KEY `mail` (`mail`),
  UNIQUE KEY `mail_2` (`mail`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`ida`, `noma`, `mail`, `mdp`) VALUES
(1, 'Mohamed', 'mdsliti@gmail.com', 'azerty'),
(2, 'Hazem', 'hazem@gmail.com', 'azerty'),
(3, 'Yassine', 'Yassine@gmail.com', 'azerty')

-- --------------------------------------------------------

--
-- Structure de la table `medecin`
--

CREATE TABLE IF NOT EXISTS `medecin` (
  `idm` int(11) NOT NULL AUTO_INCREMENT,
  `nomM` varchar(20) NOT NULL,
  `prenomM` varchar(20) NOT NULL,
  `daten` date NOT NULL,
  `numordre` int(11) NOT NULL,
  `specialite` varchar(50) NOT NULL,
  `adrss` varchar(50) NOT NULL,
  `numtel` varchar(15) NOT NULL,
  `horaire` varchar(20) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `mdp` varchar(30) NOT NULL,
  PRIMARY KEY (`idm`),
  UNIQUE KEY `mail` (`mail`),
  UNIQUE KEY `mail_2` (`mail`),
  UNIQUE KEY `numordre` (`numordre`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Contenu de la table `medecin`
--

INSERT INTO `medecin` (`idm`, `nomM`, `prenomM`, `daten`, `numordre`, `specialite`, `adrss`, `numtel`, `horaire`, `mail`, `mdp`) VALUES
(1, 'Asma', 'Achour', '1970-07-08', 1234, 'pediatre', 'Tunis', '/', '8h', 'asma@gmail.com', 'azerty'),


-- --------------------------------------------------------

--
-- Structure de la table `medecinavantverif`
--

CREATE TABLE IF NOT EXISTS `medecinavantverif` (
  `idm` int(11) NOT NULL AUTO_INCREMENT,
  `nomM` varchar(20) NOT NULL,
  `prenomM` varchar(20) NOT NULL,
  `daten` date NOT NULL,
  `numordre` int(11) NOT NULL,
  `specialite` varchar(20) NOT NULL,
  `adrss` varchar(30) NOT NULL,
  `numtel` varchar(15) NOT NULL,
  `horaire` varchar(20) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `mdp` varchar(30) NOT NULL,
  PRIMARY KEY (`idm`),
  UNIQUE KEY `mail` (`mail`),
  UNIQUE KEY `mail_2` (`mail`),
  UNIQUE KEY `numordre` (`numordre`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `idp` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `daten` date NOT NULL,
  `adrss` varchar(30) NOT NULL,
  `numidnat` varchar(30) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `mdp` varchar(30) NOT NULL,
  PRIMARY KEY (`idp`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `mail` (`mail`),
  UNIQUE KEY `numidnat` (`numidnat`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `patient`
--

INSERT INTO `patient` (`idp`, `nom`, `prenom`, `daten`, `adrss`, `numidnat`, `mail`, `username`, `mdp`) VALUES
(1, 'amine', 'amine', '2000-05-16', 'Ben Arous', '1234', 'a@gmail.com', 'amine', 'azerty'),


-- --------------------------------------------------------

--
-- Structure de la table `rdv`
--

CREATE TABLE IF NOT EXISTS `rdv` (
  `idrdv` int(11) NOT NULL AUTO_INCREMENT,
  `idm` int(11) NOT NULL,
  `idp` int(11) NOT NULL,
  `jour` date NOT NULL,
  `heure` varchar(10) NOT NULL,
  PRIMARY KEY (`idrdv`),
  KEY `idm` (`idm`),
  KEY `idp` (`idp`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=97 ;


