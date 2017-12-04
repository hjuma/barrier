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


-- Dumping database structure for barrier_ods
CREATE DATABASE IF NOT EXISTS `barrier_ods` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `barrier_ods`;

-- Dumping structure for table barrier_ods.ps_mapping_eis
CREATE TABLE IF NOT EXISTS `ps_mapping_eis` (
  `BarrierSk` int(11) NOT NULL AUTO_INCREMENT,
  `floc` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `system_status` varchar(50) DEFAULT NULL,
  `user_status` varchar(50) DEFAULT NULL,
  `support_floc` varchar(50) DEFAULT NULL,
  `ps_ref_1` varchar(50) DEFAULT NULL,
  `ps_ref_2` varchar(50) DEFAULT NULL,
  `ps_ref_3` varchar(50) DEFAULT NULL,
  `ps_mapping_barrier_1` varchar(50) DEFAULT NULL,
  `ps_mapping_barrier_2` varchar(50) DEFAULT NULL,
  `ps_mapping_barrier_3` varchar(50) DEFAULT NULL,
  `current_flag` bit(1) NOT NULL,
  `start_dt` datetime NOT NULL,
  `end_dt` datetime DEFAULT NULL,
  `source_extracted_dt` datetime NOT NULL,
  PRIMARY KEY (`BarrierSk`),
  KEY `floc` (`floc`,`current_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table barrier_ods.ps_mapping_eis: ~0 rows (approximately)
/*!40000 ALTER TABLE `ps_mapping_eis` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_mapping_eis` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
