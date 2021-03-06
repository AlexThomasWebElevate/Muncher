SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

CREATE DATABASE IF NOT EXISTS `Muncher` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `Muncher`;

CREATE TABLE IF NOT EXISTS `Messages` (
`id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `messageText` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `Users` (
`id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `subscribed` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=latin1;


ALTER TABLE `Messages`
 ADD PRIMARY KEY (`id`);

ALTER TABLE `Users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);


ALTER TABLE `Messages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=147;
ALTER TABLE `Users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=140;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
