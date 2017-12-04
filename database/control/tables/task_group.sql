-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.2.6-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for control
CREATE DATABASE IF NOT EXISTS `control` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `control`;

-- Dumping structure for table control.task_dependancy
CREATE TABLE IF NOT EXISTS `task_dependancy` (
  `taskgroupkey` int(11) NOT NULL,
  `taskgroupid` int(11) DEFAULT NULL,
  `taskgroupname` varchar(50) DEFAULT NULL,
  `taskgroupdescription` varchar(50) DEFAULT NULL,
  `taskgrouptype` int(11) NOT NULL DEFAULT 11,
  `taskgroupactiveflag` int(11) DEFAULT 0,
  `taskgroupstatusflag` int(11) DEFAULT 0,
  `taskpredecessorid` int(11) DEFAULT NULL,
  `tasksuccessorid` int(11) DEFAULT NULL,
  `taskgroupmodifieddate` datetime DEFAULT NULL,
  `taskgroupcreationdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table control.task_dependancy: ~0 rows (approximately)
/*!40000 ALTER TABLE `task_dependancy` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_dependancy` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
