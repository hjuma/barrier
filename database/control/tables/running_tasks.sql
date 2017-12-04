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

-- Dumping structure for table control.running_tasks
CREATE TABLE IF NOT EXISTS `running_tasks` (
  `moment` datetime DEFAULT NULL,
  `pid` varchar(20) DEFAULT NULL,
  `father_pid` varchar(20) DEFAULT NULL,
  `root_pid` varchar(20) DEFAULT NULL,
  `system_pid` varchar(8) DEFAULT NULL,
  `project` varchar(50) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `job_repository_id` varchar(255) DEFAULT NULL,
  `job_version` varchar(255) DEFAULT NULL,
  `context` varchar(255) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `message_type` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `duration` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table control.running_tasks: ~2,008 rows (approximately)
/*!40000 ALTER TABLE `running_tasks` DISABLE KEYS */;
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:28:58', 'NlMZzi', 'Vaa7qk', 'Vaa7qk', '8532', 'BARRIER_PROJECT', 'run_e2e_barrier_etl   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:28:58', 'NlMZzi', 'Vaa7qk', 'Vaa7qk', '8532', 'BARRIER_PROJECT', 'run_e2e_barrier_etl   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '234');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:28:58', '9VIlZ7', 'kSvv5g', 'Vaa7qk', '8532', 'BARRIER_PROJECT', 'run_task_landing   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:28:58', '9VIlZ7', 'kSvv5g', 'Vaa7qk', '8532', 'BARRIER_PROJECT', 'run_task_landing   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:28:59', 'tSxnbt', 'KIMRL1', 'Vaa7qk', '10816', 'BARRIER_PROJECT', 'jb_land_work_order_eis_mcp1   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:28:59', 'tSxnbt', 'KIMRL1', 'Vaa7qk', '10816', 'BARRIER_PROJECT', 'jb_land_work_order_eis_mcp1   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '234');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:01', '0xiFtv', 'KIMRL1', 'Vaa7qk', '10816', 'BARRIER_PROJECT', 'jb_land_work_order_eis_mcp1   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:01', '0xiFtv', 'KIMRL1', 'Vaa7qk', '10816', 'BARRIER_PROJECT', 'jb_land_work_order_eis_mcp1   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '0');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:02', 'qPpcno', 'dy5XOE', 'Vaa7qk', '6480', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_wind   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:03', 'qPpcno', 'dy5XOE', 'Vaa7qk', '6480', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_wind   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:03', 'YqjGck', 'dy5XOE', 'Vaa7qk', '6480', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_wind   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:03', 'YqjGck', 'dy5XOE', 'Vaa7qk', '6480', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_wind   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:04', 'AiyBf4', 'sTLTFo', 'Vaa7qk', '21212', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_stam   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:04', 'AiyBf4', 'sTLTFo', 'Vaa7qk', '21212', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_stam   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '234');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:04', 'Hk7kZ8', 'sTLTFo', 'Vaa7qk', '21212', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_stam   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:04', 'Hk7kZ8', 'sTLTFo', 'Vaa7qk', '21212', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_stam   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:05', 'nL9aw0', 'eMc398', 'Vaa7qk', '10560', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_mst1   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:06', 'nL9aw0', 'eMc398', 'Vaa7qk', '10560', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_mst1   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '234');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:06', 'kKlGzm', 'eMc398', 'Vaa7qk', '10560', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_mst1   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:06', 'kKlGzm', 'eMc398', 'Vaa7qk', '10560', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_mst1   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:07', 'gEq1kv', 'PPYkdJ', 'Vaa7qk', '14216', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_mkew   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:07', 'gEq1kv', 'PPYkdJ', 'Vaa7qk', '14216', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_mkew   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '218');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:07', 'TKtsnI', 'PPYkdJ', 'Vaa7qk', '14216', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_mkew   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:07', 'TKtsnI', 'PPYkdJ', 'Vaa7qk', '14216', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_mkew   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:08', 'jIyKKz', '45mb6a', 'Vaa7qk', '6448', 'BARRIER_PROJECT', 'jb_land_work_order_nm01   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:09', 'jIyKKz', '45mb6a', 'Vaa7qk', '6448', 'BARRIER_PROJECT', 'jb_land_work_order_nm01   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '222');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:09', 'XUMu6V', '45mb6a', 'Vaa7qk', '6448', 'BARRIER_PROJECT', 'jb_land_work_order_nm01   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:09', 'XUMu6V', '45mb6a', 'Vaa7qk', '6448', 'BARRIER_PROJECT', 'jb_land_work_order_nm01   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:10', 'IpgBxy', 'Ts1zpy', 'Vaa7qk', '18372', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_grow   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:11', 'IpgBxy', 'Ts1zpy', 'Vaa7qk', '18372', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_grow   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '218');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:11', 'MOUhzI', 'Ts1zpy', 'Vaa7qk', '18372', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_grow   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:11', 'MOUhzI', 'Ts1zpy', 'Vaa7qk', '18372', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_grow   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:12', 'V7NJGL', 'ePcVAU', 'Vaa7qk', '23608', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_grov   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:12', 'V7NJGL', 'ePcVAU', 'Vaa7qk', '23608', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_grov   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:12', 'UAhnuD', 'ePcVAU', 'Vaa7qk', '23608', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_grov   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:12', 'UAhnuD', 'ePcVAU', 'Vaa7qk', '23608', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_grov   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:13', 'QbkugL', 'ko0pB3', 'Vaa7qk', '24108', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_f3fa   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:14', 'QbkugL', 'ko0pB3', 'Vaa7qk', '24108', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_f3fa   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '211');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:14', 'bXsR4N', 'ko0pB3', 'Vaa7qk', '24108', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_f3fa   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:14', 'bXsR4N', 'ko0pB3', 'Vaa7qk', '24108', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_f3fa   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:15', 'v0TeXN', 'zKEB5r', 'Vaa7qk', '12128', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_chis   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:15', 'v0TeXN', 'zKEB5r', 'Vaa7qk', '12128', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_chis   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:15', 'JP2Wqk', 'zKEB5r', 'Vaa7qk', '12128', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_chis   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:15', 'JP2Wqk', 'zKEB5r', 'Vaa7qk', '12128', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_chis   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:17', 'YHVFHu', 'FUTUUJ', 'Vaa7qk', '14476', 'BARRIER_PROJECT', 'jb_land_work_order_eis_mdp1   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:17', 'YHVFHu', 'FUTUUJ', 'Vaa7qk', '14476', 'BARRIER_PROJECT', 'jb_land_work_order_eis_mdp1   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '234');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:18', 'o1zsmp', 'FUTUUJ', 'Vaa7qk', '14476', 'BARRIER_PROJECT', 'jb_land_work_order_eis_mdp1   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:18', 'o1zsmp', 'FUTUUJ', 'Vaa7qk', '14476', 'BARRIER_PROJECT', 'jb_land_work_order_eis_mdp1   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '0');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:19', 'muvMA2', 'W0EEy7', 'Vaa7qk', '22860', 'BARRIER_PROJECT', 'jb_land_work_order_eis_map1   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:19', 'muvMA2', 'W0EEy7', 'Vaa7qk', '22860', 'BARRIER_PROJECT', 'jb_land_work_order_eis_map1   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '218');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:20', 'NIW6dI', 'W0EEy7', 'Vaa7qk', '22860', 'BARRIER_PROJECT', 'jb_land_work_order_eis_map1   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:20', 'NIW6dI', 'W0EEy7', 'Vaa7qk', '22860', 'BARRIER_PROJECT', 'jb_land_work_order_eis_map1   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:21', 'Qw4sBY', 'zK5jVZ', 'Vaa7qk', '21992', 'BARRIER_PROJECT', 'jb_land_ps_mapping_nm01   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:22', 'Qw4sBY', 'zK5jVZ', 'Vaa7qk', '21992', 'BARRIER_PROJECT', 'jb_land_ps_mapping_nm01   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '234');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:22', 'y6GRFJ', 'zK5jVZ', 'Vaa7qk', '21992', 'BARRIER_PROJECT', 'jb_land_ps_mapping_nm01   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:22', 'y6GRFJ', 'zK5jVZ', 'Vaa7qk', '21992', 'BARRIER_PROJECT', 'jb_land_ps_mapping_nm01   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:23', 'eNhj8X', 'ZeCokZ', 'Vaa7qk', '11940', 'BARRIER_PROJECT', 'jb_land_ps_mapping_eis   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:24', 'eNhj8X', 'ZeCokZ', 'Vaa7qk', '11940', 'BARRIER_PROJECT', 'jb_land_ps_mapping_eis   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '234');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:26', 'NpGKMX', 'ZeCokZ', 'Vaa7qk', '11940', 'BARRIER_PROJECT', 'jb_land_ps_mapping_eis   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:26', 'NpGKMX', 'ZeCokZ', 'Vaa7qk', '11940', 'BARRIER_PROJECT', 'jb_land_ps_mapping_eis   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '0');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:27', 'tLqiBy', 'kSvv5g', 'Vaa7qk', '8532', 'BARRIER_PROJECT', 'run_task_landing   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:27', 'tLqiBy', 'kSvv5g', 'Vaa7qk', '8532', 'BARRIER_PROJECT', 'run_task_landing   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:27', 'VQYqKW', 'ZRtIOE', 'Vaa7qk', '8532', 'BARRIER_PROJECT', 'run_task_ods   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:27', 'VQYqKW', 'ZRtIOE', 'Vaa7qk', '8532', 'BARRIER_PROJECT', 'run_task_ods   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:27', 'QOYrcd', 'ziXJ42', 'Vaa7qk', '17328', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_chris   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:27', 'QOYrcd', 'ziXJ42', 'Vaa7qk', '17328', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_chris   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:28', 'eXhcHX', 'ziXJ42', 'Vaa7qk', '17328', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_chris   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:28', 'eXhcHX', 'ziXJ42', 'Vaa7qk', '17328', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_chris   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:30', '8KZ5QL', 'B1YdEs', 'Vaa7qk', '12484', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_f3fa   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:30', '8KZ5QL', 'B1YdEs', 'Vaa7qk', '12484', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_f3fa   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:30', 'uHAKjK', 'B1YdEs', 'Vaa7qk', '12484', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_f3fa   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:30', 'uHAKjK', 'B1YdEs', 'Vaa7qk', '12484', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_f3fa   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '0');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:31', 'sNQysT', 'i79A27', 'Vaa7qk', '20496', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_gov   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:32', 'sNQysT', 'i79A27', 'Vaa7qk', '20496', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_gov   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '238');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:32', 'IOdMgu', 'i79A27', 'Vaa7qk', '20496', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_gov   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:32', 'IOdMgu', 'i79A27', 'Vaa7qk', '20496', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_gov   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:33', 'd2Bi2D', 'Vhy6jo', 'Vaa7qk', '22036', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_grow   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:33', 'd2Bi2D', 'Vhy6jo', 'Vaa7qk', '22036', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_grow   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '225');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:33', 'HHTQ3l', 'Vhy6jo', 'Vaa7qk', '22036', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_grow   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:33', 'HHTQ3l', 'Vhy6jo', 'Vaa7qk', '22036', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_grow   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:34', 'zRdAA8', 'xYOUBP', 'Vaa7qk', '19796', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_mj6a   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:35', 'zRdAA8', 'xYOUBP', 'Vaa7qk', '19796', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_mj6a   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '234');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:35', 'lIYczY', 'xYOUBP', 'Vaa7qk', '19796', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_mj6a   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:35', 'lIYczY', 'xYOUBP', 'Vaa7qk', '19796', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_mj6a   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:36', 'llW5En', 'HjdQMa', 'Vaa7qk', '18144', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_mkew   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:36', 'llW5En', 'HjdQMa', 'Vaa7qk', '18144', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_mkew   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:36', 'X2EPIU', 'HjdQMa', 'Vaa7qk', '18144', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_mkew   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:36', 'X2EPIU', 'HjdQMa', 'Vaa7qk', '18144', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_mkew   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:37', 'wmhJ8g', 'g8G8yB', 'Vaa7qk', '22196', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_mst1   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:38', 'wmhJ8g', 'g8G8yB', 'Vaa7qk', '22196', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_mst1   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '250');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:38', 'RDaZT9', 'g8G8yB', 'Vaa7qk', '22196', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_mst1   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:38', 'RDaZT9', 'g8G8yB', 'Vaa7qk', '22196', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_mst1   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:39', 'PNP8fO', 'l5qKtK', 'Vaa7qk', '20748', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_stam   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:39', 'PNP8fO', 'l5qKtK', 'Vaa7qk', '20748', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_stam   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:39', 'XQ0Bh2', 'l5qKtK', 'Vaa7qk', '20748', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_stam   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:39', 'XQ0Bh2', 'l5qKtK', 'Vaa7qk', '20748', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_stam   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:40', 'jUaQdQ', '7KRXGe', 'Vaa7qk', '24556', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_wind   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:40', 'jUaQdQ', '7KRXGe', 'Vaa7qk', '24556', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_wind   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '234');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:40', 'PtJEaJ', '7KRXGe', 'Vaa7qk', '24556', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_wind   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:41', 'PtJEaJ', '7KRXGe', 'Vaa7qk', '24556', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_wind   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:42', 'coS8aW', 'xVutJx', 'Vaa7qk', '7008', 'BARRIER_PROJECT', 'jb_ods_merge_eis_map1   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:42', 'coS8aW', 'xVutJx', 'Vaa7qk', '7008', 'BARRIER_PROJECT', 'jb_ods_merge_eis_map1   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '234');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:42', 'Jm3iIh', 'xVutJx', 'Vaa7qk', '7008', 'BARRIER_PROJECT', 'jb_ods_merge_eis_map1   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:42', 'Jm3iIh', 'xVutJx', 'Vaa7qk', '7008', 'BARRIER_PROJECT', 'jb_ods_merge_eis_map1   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:44', 'THkm4z', 'iEfeZE', 'Vaa7qk', '22372', 'BARRIER_PROJECT', '(String)globalMap.get("parent_job_name")   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:44', 'THkm4z', 'iEfeZE', 'Vaa7qk', '22372', 'BARRIER_PROJECT', '(String)globalMap.get("parent_job_name")   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '235');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:45', '0Mwsnt', 'iEfeZE', 'Vaa7qk', '22372', 'BARRIER_PROJECT', '(String)globalMap.get("parent_job_name")   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:45', '0Mwsnt', 'iEfeZE', 'Vaa7qk', '22372', 'BARRIER_PROJECT', '(String)globalMap.get("parent_job_name")   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:46', 'h6YUiy', 'nkdPAA', 'Vaa7qk', '8260', 'BARRIER_PROJECT', 'jb_ods_merge_ps_mapping_nm01   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:29:46', 'h6YUiy', 'nkdPAA', 'Vaa7qk', '8260', 'BARRIER_PROJECT', 'jb_ods_merge_ps_mapping_nm01   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '230');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:45', 'ZjW21i', 'nkdPAA', 'Vaa7qk', '8260', 'BARRIER_PROJECT', 'jb_ods_merge_ps_mapping_nm01   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:45', 'ZjW21i', 'nkdPAA', 'Vaa7qk', '8260', 'BARRIER_PROJECT', 'jb_ods_merge_ps_mapping_nm01   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:46', 'EkHHq3', 'plcccj', 'Vaa7qk', '16156', 'BARRIER_PROJECT', 'jb_ods_merge_ps_mapping_eis   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:46', 'EkHHq3', 'plcccj', 'Vaa7qk', '16156', 'BARRIER_PROJECT', 'jb_ods_merge_ps_mapping_eis   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:50', '9WSo99', 'plcccj', 'Vaa7qk', '16156', 'BARRIER_PROJECT', 'jb_ods_merge_ps_mapping_eis   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:50', '9WSo99', 'plcccj', 'Vaa7qk', '16156', 'BARRIER_PROJECT', 'jb_ods_merge_ps_mapping_eis   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '0');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:51', 'FGmPZo', 'bVrySe', 'Vaa7qk', '1012', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_all   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:51', 'FGmPZo', 'bVrySe', 'Vaa7qk', '1012', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_all   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:51', 'qcP6ZG', 'bVrySe', 'Vaa7qk', '1012', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_all   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:51', 'qcP6ZG', 'bVrySe', 'Vaa7qk', '1012', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_all   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '0');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:53', 'd24UkV', 'kMvkhI', 'Vaa7qk', '21648', 'BARRIER_PROJECT', 'jb_ods_merge_eis   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:53', 'd24UkV', 'kMvkhI', 'Vaa7qk', '21648', 'BARRIER_PROJECT', 'jb_ods_merge_eis   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '231');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:56', 'pYV0en', 'kMvkhI', 'Vaa7qk', '21648', 'BARRIER_PROJECT', 'jb_ods_merge_eis   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:56', 'pYV0en', 'kMvkhI', 'Vaa7qk', '21648', 'BARRIER_PROJECT', 'jb_ods_merge_eis   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:57', 'LoFK9l', 'ZRtIOE', 'Vaa7qk', '8532', 'BARRIER_PROJECT', 'run_task_ods   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:57', 'LoFK9l', 'ZRtIOE', 'Vaa7qk', '8532', 'BARRIER_PROJECT', 'run_task_ods   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:57', 'm03kIx', 'SBPxHq', 'Vaa7qk', '8532', 'BARRIER_PROJECT', 'run_task_barrier_main_core   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:57', 'm03kIx', 'SBPxHq', 'Vaa7qk', '8532', 'BARRIER_PROJECT', 'run_task_barrier_main_core   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:57', 'MHvR44', 'tZLOy2', 'Vaa7qk', '8532', 'BARRIER_PROJECT', 'run_task_barrier_incr_core   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:57', 'MHvR44', 'tZLOy2', 'Vaa7qk', '8532', 'BARRIER_PROJECT', 'run_task_barrier_incr_core   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '0');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:58', '8saUgf', 'KjXHpP', 'Vaa7qk', '25172', 'BARRIER_PROJECT', 'jb_abc_indicator_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:58', '8saUgf', 'KjXHpP', 'Vaa7qk', '25172', 'BARRIER_PROJECT', 'jb_abc_indicator_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '235');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:58', 'Uuj6Ks', 'KjXHpP', 'Vaa7qk', '25172', 'BARRIER_PROJECT', 'jb_abc_indicator_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:58', 'Uuj6Ks', 'KjXHpP', 'Vaa7qk', '25172', 'BARRIER_PROJECT', 'jb_abc_indicator_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:59', 'fK0tZt', 'iegwQf', 'Vaa7qk', '15004', 'BARRIER_PROJECT', 'jb_asset_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:59', 'fK0tZt', 'iegwQf', 'Vaa7qk', '15004', 'BARRIER_PROJECT', 'jb_asset_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '238');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:59', 'trK4Ov', 'iegwQf', 'Vaa7qk', '15004', 'BARRIER_PROJECT', 'jb_asset_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:32:59', 'trK4Ov', 'iegwQf', 'Vaa7qk', '15004', 'BARRIER_PROJECT', 'jb_asset_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:00', 'ODHS0E', 'iF2X15', 'Vaa7qk', '20804', 'BARRIER_PROJECT', 'jb_asset_rule_set_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:01', 'ODHS0E', 'iF2X15', 'Vaa7qk', '20804', 'BARRIER_PROJECT', 'jb_asset_rule_set_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '250');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:01', 'aKaXJO', 'iF2X15', 'Vaa7qk', '20804', 'BARRIER_PROJECT', 'jb_asset_rule_set_refdt   -     P', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:01', 'aKaXJO', 'iF2X15', 'Vaa7qk', '20804', 'BARRIER_PROJECT', 'jb_asset_rule_set_refdt   -     P', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:02', '7dIbAc', 'OfITmB', 'Vaa7qk', '15296', 'BARRIER_PROJECT', 'jb_barrier_element_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:02', '7dIbAc', 'OfITmB', 'Vaa7qk', '15296', 'BARRIER_PROJECT', 'jb_barrier_element_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:02', 'E1rXlW', 'OfITmB', 'Vaa7qk', '15296', 'BARRIER_PROJECT', 'jb_barrier_element_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:02', 'E1rXlW', 'OfITmB', 'Vaa7qk', '15296', 'BARRIER_PROJECT', 'jb_barrier_element_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:03', 'hKTIMn', 'QSY7x0', 'Vaa7qk', '23192', 'BARRIER_PROJECT', 'jb_barrier_metric_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:04', 'hKTIMn', 'QSY7x0', 'Vaa7qk', '23192', 'BARRIER_PROJECT', 'jb_barrier_metric_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:04', 'VWMMOS', 'QSY7x0', 'Vaa7qk', '23192', 'BARRIER_PROJECT', 'jb_barrier_metric_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:04', 'VWMMOS', 'QSY7x0', 'Vaa7qk', '23192', 'BARRIER_PROJECT', 'jb_barrier_metric_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:05', 'BLrr0w', '76ZSXM', 'Vaa7qk', '19264', 'BARRIER_PROJECT', 'jb_barrier_type_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:05', 'BLrr0w', '76ZSXM', 'Vaa7qk', '19264', 'BARRIER_PROJECT', 'jb_barrier_type_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '235');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:05', 'FTU672', '76ZSXM', 'Vaa7qk', '19264', 'BARRIER_PROJECT', 'jb_barrier_type_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:05', 'FTU672', '76ZSXM', 'Vaa7qk', '19264', 'BARRIER_PROJECT', 'jb_barrier_type_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:06', 'TIBAkC', 'JQKvrK', 'Vaa7qk', '15468', 'BARRIER_PROJECT', 'jb_business_unit_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:06', 'TIBAkC', 'JQKvrK', 'Vaa7qk', '15468', 'BARRIER_PROJECT', 'jb_business_unit_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '218');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:06', 'o2rzke', 'JQKvrK', 'Vaa7qk', '15468', 'BARRIER_PROJECT', 'jb_business_unit_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:06', 'o2rzke', 'JQKvrK', 'Vaa7qk', '15468', 'BARRIER_PROJECT', 'jb_business_unit_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '12');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:08', '4D9yLf', 'ybjndK', 'Vaa7qk', '8460', 'BARRIER_PROJECT', 'jb_facility_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:08', '4D9yLf', 'ybjndK', 'Vaa7qk', '8460', 'BARRIER_PROJECT', 'jb_facility_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '235');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:08', 'uucC0B', 'ybjndK', 'Vaa7qk', '8460', 'BARRIER_PROJECT', 'jb_facility_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:08', 'uucC0B', 'ybjndK', 'Vaa7qk', '8460', 'BARRIER_PROJECT', 'jb_facility_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:10', 'rjK46S', 'NRPAcB', 'Vaa7qk', '9560', 'BARRIER_PROJECT', 'jb_facility_rule_set_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:10', 'rjK46S', 'NRPAcB', 'Vaa7qk', '9560', 'BARRIER_PROJECT', 'jb_facility_rule_set_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:10', 'Q8PG03', 'NRPAcB', 'Vaa7qk', '9560', 'BARRIER_PROJECT', 'jb_facility_rule_set_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:10', 'Q8PG03', 'NRPAcB', 'Vaa7qk', '9560', 'BARRIER_PROJECT', 'jb_facility_rule_set_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:11', 'K20hyN', 'I2J5PS', 'Vaa7qk', '14860', 'BARRIER_PROJECT', 'jb_performance_standard_mapping   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:11', 'K20hyN', 'I2J5PS', 'Vaa7qk', '14860', 'BARRIER_PROJECT', 'jb_performance_standard_mapping   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '218');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:12', 'ZYnH7c', 'I2J5PS', 'Vaa7qk', '14860', 'BARRIER_PROJECT', 'jb_performance_standard_mapping   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:12', 'ZYnH7c', 'I2J5PS', 'Vaa7qk', '14860', 'BARRIER_PROJECT', 'jb_performance_standard_mapping   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:13', 't6tVrJ', 'TEuONQ', 'Vaa7qk', '12272', 'BARRIER_PROJECT', 'jb_performance_standard_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:14', 't6tVrJ', 'TEuONQ', 'Vaa7qk', '12272', 'BARRIER_PROJECT', 'jb_performance_standard_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:14', 'OUcNCE', 'TEuONQ', 'Vaa7qk', '12272', 'BARRIER_PROJECT', 'jb_performance_standard_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:14', 'OUcNCE', 'TEuONQ', 'Vaa7qk', '12272', 'BARRIER_PROJECT', 'jb_performance_standard_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:15', 'mc8RtF', 'QT1Wcd', 'Vaa7qk', '21036', 'BARRIER_PROJECT', 'jb_planner_group   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:15', 'mc8RtF', 'QT1Wcd', 'Vaa7qk', '21036', 'BARRIER_PROJECT', 'jb_planner_group   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '406');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:15', 'aOaadp', 'QT1Wcd', 'Vaa7qk', '21036', 'BARRIER_PROJECT', 'jb_planner_group   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:15', 'aOaadp', 'QT1Wcd', 'Vaa7qk', '21036', 'BARRIER_PROJECT', 'jb_planner_group   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:16', 'Lda4jW', 'Dt42cD', 'Vaa7qk', '21140', 'BARRIER_PROJECT', 'jb_role_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:17', 'Lda4jW', 'Dt42cD', 'Vaa7qk', '21140', 'BARRIER_PROJECT', 'jb_role_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:17', 'ZlX9jO', 'Dt42cD', 'Vaa7qk', '21140', 'BARRIER_PROJECT', 'jb_role_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:17', 'ZlX9jO', 'Dt42cD', 'Vaa7qk', '21140', 'BARRIER_PROJECT', 'jb_role_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:18', 'tKvqt6', '2c9oNb', 'Vaa7qk', '6292', 'BARRIER_PROJECT', 'jb_user_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:18', 'tKvqt6', '2c9oNb', 'Vaa7qk', '6292', 'BARRIER_PROJECT', 'jb_user_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:18', '27sEGv', '2c9oNb', 'Vaa7qk', '6292', 'BARRIER_PROJECT', 'jb_user_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:18', '27sEGv', '2c9oNb', 'Vaa7qk', '6292', 'BARRIER_PROJECT', 'jb_user_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:19', '9IwFuF', '56nYbI', 'Vaa7qk', '228', 'BARRIER_PROJECT', 'refresh_sap_work_order_data   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:19', '9IwFuF', '56nYbI', 'Vaa7qk', '228', 'BARRIER_PROJECT', 'refresh_sap_work_order_data   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:38', 'RxGlp8', '56nYbI', 'Vaa7qk', '228', 'BARRIER_PROJECT', 'refresh_sap_work_order_data   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:38', 'RxGlp8', '56nYbI', 'Vaa7qk', '228', 'BARRIER_PROJECT', 'refresh_sap_work_order_data   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:40', '1XlFF1', 'oWpeRQ', 'Vaa7qk', '19160', 'BARRIER_PROJECT', 'refresh_facility_level_data   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:40', '1XlFF1', 'oWpeRQ', 'Vaa7qk', '19160', 'BARRIER_PROJECT', 'refresh_facility_level_data   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '266');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:41', 'DaeUxb', 'oWpeRQ', 'Vaa7qk', '19160', 'BARRIER_PROJECT', 'refresh_facility_level_data   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:41', 'DaeUxb', 'oWpeRQ', 'Vaa7qk', '19160', 'BARRIER_PROJECT', 'refresh_facility_level_data   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '14');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:42', 'wEXDXR', 'GmLkUm', 'Vaa7qk', '92', 'BARRIER_PROJECT', 'refresh_asset_level_data   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:42', 'wEXDXR', 'GmLkUm', 'Vaa7qk', '92', 'BARRIER_PROJECT', 'refresh_asset_level_data   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:42', '4xbK4D', 'GmLkUm', 'Vaa7qk', '92', 'BARRIER_PROJECT', 'refresh_asset_level_data   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:42', '4xbK4D', 'GmLkUm', 'Vaa7qk', '92', 'BARRIER_PROJECT', 'refresh_asset_level_data   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:44', 'i7IALA', 'lVlGZ1', 'Vaa7qk', '23080', 'BARRIER_PROJECT', 'refresh_work_order_level_data   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:33:44', 'i7IALA', 'lVlGZ1', 'Vaa7qk', '23080', 'BARRIER_PROJECT', 'refresh_work_order_level_data   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '218');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:34:02', 'BHX2XQ', 'lVlGZ1', 'Vaa7qk', '23080', 'BARRIER_PROJECT', 'refresh_work_order_level_data   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:34:02', 'BHX2XQ', 'lVlGZ1', 'Vaa7qk', '23080', 'BARRIER_PROJECT', 'refresh_work_order_level_data   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:34:03', '17ytpk', '19pywt', 'Vaa7qk', '6036', 'BARRIER_PROJECT', 'jb_barrier_type_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:34:04', '17ytpk', '19pywt', 'Vaa7qk', '6036', 'BARRIER_PROJECT', 'jb_barrier_type_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '234');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:34:04', 'qqao4K', '19pywt', 'Vaa7qk', '6036', 'BARRIER_PROJECT', 'jb_barrier_type_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:34:04', 'qqao4K', '19pywt', 'Vaa7qk', '6036', 'BARRIER_PROJECT', 'jb_barrier_type_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:34:04', '8Qwlkl', 'tZLOy2', 'Vaa7qk', '8532', 'BARRIER_PROJECT', 'run_task_barrier_incr_core   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:34:04', '8Qwlkl', 'tZLOy2', 'Vaa7qk', '8532', 'BARRIER_PROJECT', 'run_task_barrier_incr_core   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:34:04', 'QbrDM2', 'SBPxHq', 'Vaa7qk', '8532', 'BARRIER_PROJECT', 'run_task_barrier_main_core   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:34:04', 'QbrDM2', 'SBPxHq', 'Vaa7qk', '8532', 'BARRIER_PROJECT', 'run_task_barrier_main_core   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:34:04', 't6YOwj', 'Vaa7qk', 'Vaa7qk', '8532', 'BARRIER_PROJECT', 'run_e2e_barrier_etl   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 11:34:04', 't6YOwj', 'Vaa7qk', 'Vaa7qk', '8532', 'BARRIER_PROJECT', 'run_e2e_barrier_etl   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '0');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:08', '6Rjzpa', 'hMKAVB', 'hMKAVB', '10788', 'BARRIER_PROJECT', 'run_e2e_barrier_etl   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:08', '6Rjzpa', 'hMKAVB', 'hMKAVB', '10788', 'BARRIER_PROJECT', 'run_e2e_barrier_etl   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '422');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:08', 'LTdesA', 'gXQv3G', 'hMKAVB', '10788', 'BARRIER_PROJECT', 'run_task_landing   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:08', 'LTdesA', 'gXQv3G', 'hMKAVB', '10788', 'BARRIER_PROJECT', 'run_task_landing   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:09', 'T8wPTX', 'bnRHdf', 'hMKAVB', '18276', 'BARRIER_PROJECT', 'jb_land_work_order_eis_mcp1   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:09', 'T8wPTX', 'bnRHdf', 'hMKAVB', '18276', 'BARRIER_PROJECT', 'jb_land_work_order_eis_mcp1   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '235');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:11', 'kIeR6P', 'bnRHdf', 'hMKAVB', '18276', 'BARRIER_PROJECT', 'jb_land_work_order_eis_mcp1   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:11', 'kIeR6P', 'bnRHdf', 'hMKAVB', '18276', 'BARRIER_PROJECT', 'jb_land_work_order_eis_mcp1   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:12', 'tmPKy6', 'JQ6MkT', 'hMKAVB', '19592', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_wind   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:13', 'tmPKy6', 'JQ6MkT', 'hMKAVB', '19592', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_wind   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '235');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:13', '7CGx8S', 'JQ6MkT', 'hMKAVB', '19592', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_wind   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:13', '7CGx8S', 'JQ6MkT', 'hMKAVB', '19592', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_wind   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:14', 'yfW0nx', '0LWFO2', 'hMKAVB', '15088', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_stam   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:14', 'yfW0nx', '0LWFO2', 'hMKAVB', '15088', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_stam   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '234');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:14', 'HirgJe', '0LWFO2', 'hMKAVB', '15088', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_stam   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:14', 'HirgJe', '0LWFO2', 'hMKAVB', '15088', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_stam   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '0');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:15', '4OdtDz', '9uSqla', 'hMKAVB', '25292', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_mst1   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:16', '4OdtDz', '9uSqla', 'hMKAVB', '25292', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_mst1   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:16', 'EUbe24', '9uSqla', 'hMKAVB', '25292', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_mst1   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:16', 'EUbe24', '9uSqla', 'hMKAVB', '25292', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_mst1   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:17', 'hKmdzv', 'yl5fhG', 'hMKAVB', '18196', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_mkew   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:17', 'hKmdzv', 'yl5fhG', 'hMKAVB', '18196', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_mkew   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '218');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:17', '3fosHK', 'yl5fhG', 'hMKAVB', '18196', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_mkew   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:17', '3fosHK', 'yl5fhG', 'hMKAVB', '18196', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_mkew   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '0');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:18', 'MiyEBR', '4IHiGA', 'hMKAVB', '18740', 'BARRIER_PROJECT', 'jb_land_work_order_nm01   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:19', 'MiyEBR', '4IHiGA', 'hMKAVB', '18740', 'BARRIER_PROJECT', 'jb_land_work_order_nm01   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '235');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:19', 'UX3N9n', '4IHiGA', 'hMKAVB', '18740', 'BARRIER_PROJECT', 'jb_land_work_order_nm01   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:19', 'UX3N9n', '4IHiGA', 'hMKAVB', '18740', 'BARRIER_PROJECT', 'jb_land_work_order_nm01   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:20', 'A03jAs', 'irQT7Q', 'hMKAVB', '24840', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_grow   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:20', 'A03jAs', 'irQT7Q', 'hMKAVB', '24840', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_grow   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '235');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:20', 'SH0b2u', 'irQT7Q', 'hMKAVB', '24840', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_grow   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:20', 'SH0b2u', 'irQT7Q', 'hMKAVB', '24840', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_grow   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '0');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:22', 'kPbe49', 'Vye6WL', 'hMKAVB', '24980', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_grov   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:22', 'kPbe49', 'Vye6WL', 'hMKAVB', '24980', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_grov   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '235');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:22', 'spwo9U', 'Vye6WL', 'hMKAVB', '24980', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_grov   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:22', 'spwo9U', 'Vye6WL', 'hMKAVB', '24980', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_grov   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:23', 'QaUsrO', 'gGTqQN', 'hMKAVB', '17352', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_f3fa   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:23', 'QaUsrO', 'gGTqQN', 'hMKAVB', '17352', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_f3fa   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '235');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:24', 'yRM3J5', 'gGTqQN', 'hMKAVB', '17352', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_f3fa   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:24', 'yRM3J5', 'gGTqQN', 'hMKAVB', '17352', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_f3fa   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '0');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:25', 'tZs3vm', 'mN0LPj', 'hMKAVB', '19112', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_chis   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:25', 'tZs3vm', 'mN0LPj', 'hMKAVB', '19112', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_chis   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '218');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:25', 'MaKKCD', 'mN0LPj', 'hMKAVB', '19112', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_chis   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:25', 'MaKKCD', 'mN0LPj', 'hMKAVB', '19112', 'BARRIER_PROJECT', 'jb_land_work_order_nm01_chis   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:26', '6eeUU3', 'Ll8Zi3', 'hMKAVB', '24780', 'BARRIER_PROJECT', 'jb_land_work_order_eis_mdp1   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:27', '6eeUU3', 'Ll8Zi3', 'hMKAVB', '24780', 'BARRIER_PROJECT', 'jb_land_work_order_eis_mdp1   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '234');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:27', 'C0c0h6', 'Ll8Zi3', 'hMKAVB', '24780', 'BARRIER_PROJECT', 'jb_land_work_order_eis_mdp1   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:27', 'C0c0h6', 'Ll8Zi3', 'hMKAVB', '24780', 'BARRIER_PROJECT', 'jb_land_work_order_eis_mdp1   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '31');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:28', '4EIvoA', 'g2SAPZ', 'hMKAVB', '20880', 'BARRIER_PROJECT', 'jb_land_work_order_eis_map1   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:29', '4EIvoA', 'g2SAPZ', 'hMKAVB', '20880', 'BARRIER_PROJECT', 'jb_land_work_order_eis_map1   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:30', 'j3yVVs', 'g2SAPZ', 'hMKAVB', '20880', 'BARRIER_PROJECT', 'jb_land_work_order_eis_map1   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:30', 'j3yVVs', 'g2SAPZ', 'hMKAVB', '20880', 'BARRIER_PROJECT', 'jb_land_work_order_eis_map1   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '0');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:31', 'erF0cx', 'paCBZd', 'hMKAVB', '25192', 'BARRIER_PROJECT', 'jb_land_ps_mapping_nm01   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:31', 'erF0cx', 'paCBZd', 'hMKAVB', '25192', 'BARRIER_PROJECT', 'jb_land_ps_mapping_nm01   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '235');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:33', '99xoJb', 'paCBZd', 'hMKAVB', '25192', 'BARRIER_PROJECT', 'jb_land_ps_mapping_nm01   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:33', '99xoJb', 'paCBZd', 'hMKAVB', '25192', 'BARRIER_PROJECT', 'jb_land_ps_mapping_nm01   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:34', 'rJUfa7', 'g8jWDq', 'hMKAVB', '16424', 'BARRIER_PROJECT', 'jb_land_ps_mapping_eis   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:34', 'rJUfa7', 'g8jWDq', 'hMKAVB', '16424', 'BARRIER_PROJECT', 'jb_land_ps_mapping_eis   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:37', 'VxWvOX', 'g8jWDq', 'hMKAVB', '16424', 'BARRIER_PROJECT', 'jb_land_ps_mapping_eis   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:37', 'VxWvOX', 'g8jWDq', 'hMKAVB', '16424', 'BARRIER_PROJECT', 'jb_land_ps_mapping_eis   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:37', 'VRRdbN', 'gXQv3G', 'hMKAVB', '10788', 'BARRIER_PROJECT', 'run_task_landing   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:37', 'VRRdbN', 'gXQv3G', 'hMKAVB', '10788', 'BARRIER_PROJECT', 'run_task_landing   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:37', 'zqeXpa', 'nvCivW', 'hMKAVB', '10788', 'BARRIER_PROJECT', 'run_task_ods   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:37', 'zqeXpa', 'nvCivW', 'hMKAVB', '10788', 'BARRIER_PROJECT', 'run_task_ods   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:38', 'O9it1B', 'NwYreQ', 'hMKAVB', '15716', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_chris   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:38', 'O9it1B', 'NwYreQ', 'hMKAVB', '15716', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_chris   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '218');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:38', 'KMZ3e2', 'NwYreQ', 'hMKAVB', '15716', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_chris   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:38', 'KMZ3e2', 'NwYreQ', 'hMKAVB', '15716', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_chris   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '0');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:39', 'UQSjVf', 'F9Iu55', 'hMKAVB', '6560', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_f3fa   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:39', 'UQSjVf', 'F9Iu55', 'hMKAVB', '6560', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_f3fa   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '235');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:40', '6MAInG', 'F9Iu55', 'hMKAVB', '6560', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_f3fa   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:40', '6MAInG', 'F9Iu55', 'hMKAVB', '6560', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_f3fa   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:41', 'XEDSuU', 'B4X1fe', 'hMKAVB', '22216', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_gov   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:41', 'XEDSuU', 'B4X1fe', 'hMKAVB', '22216', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_gov   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '231');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:41', 's9RN2H', 'B4X1fe', 'hMKAVB', '22216', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_gov   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:41', 's9RN2H', 'B4X1fe', 'hMKAVB', '22216', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_gov   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:42', 'I5CQYe', 'fBnzqm', 'hMKAVB', '11920', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_grow   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:42', 'I5CQYe', 'fBnzqm', 'hMKAVB', '11920', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_grow   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '235');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:42', '0yOsBJ', 'fBnzqm', 'hMKAVB', '11920', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_grow   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:42', '0yOsBJ', 'fBnzqm', 'hMKAVB', '11920', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_grow   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '0');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:44', 'RbPlwA', 'SuZfIV', 'hMKAVB', '17852', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_mj6a   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:44', 'RbPlwA', 'SuZfIV', 'hMKAVB', '17852', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_mj6a   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '235');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:44', 'KmVDpU', 'SuZfIV', 'hMKAVB', '17852', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_mj6a   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:44', 'KmVDpU', 'SuZfIV', 'hMKAVB', '17852', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_mj6a   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:45', 'Zu9kPZ', 'V3RdLh', 'hMKAVB', '14500', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_mkew   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:45', 'Zu9kPZ', 'V3RdLh', 'hMKAVB', '14500', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_mkew   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '234');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:45', 'wH4mHR', 'V3RdLh', 'hMKAVB', '14500', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_mkew   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:45', 'wH4mHR', 'V3RdLh', 'hMKAVB', '14500', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_mkew   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '0');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:46', 'RfujdL', 'esU7Xr', 'hMKAVB', '7760', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_mst1   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:47', 'RfujdL', 'esU7Xr', 'hMKAVB', '7760', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_mst1   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:47', 'kC4t19', 'esU7Xr', 'hMKAVB', '7760', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_mst1   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:47', 'kC4t19', 'esU7Xr', 'hMKAVB', '7760', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_mst1   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:48', 'OJopkR', '3eNax6', 'hMKAVB', '8720', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_stam   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:48', 'OJopkR', '3eNax6', 'hMKAVB', '8720', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_stam   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '234');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:48', '22odN8', '3eNax6', 'hMKAVB', '8720', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_stam   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:48', '22odN8', '3eNax6', 'hMKAVB', '8720', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_stam   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '0');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:49', '143732', '3u733A', 'hMKAVB', '15048', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_wind   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:50', '143732', '3u733A', 'hMKAVB', '15048', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_wind   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '234');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:50', 'T2sDYJ', '3u733A', 'hMKAVB', '15048', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_wind   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:50', 'T2sDYJ', '3u733A', 'hMKAVB', '15048', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_wind   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:51', 'd7PpLc', 'oh6ApY', 'hMKAVB', '13252', 'BARRIER_PROJECT', 'jb_ods_merge_eis_map1   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:51', 'd7PpLc', 'oh6ApY', 'hMKAVB', '13252', 'BARRIER_PROJECT', 'jb_ods_merge_eis_map1   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '218');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:51', 'ZZrMRf', 'oh6ApY', 'hMKAVB', '13252', 'BARRIER_PROJECT', 'jb_ods_merge_eis_map1   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:52', 'ZZrMRf', 'oh6ApY', 'hMKAVB', '13252', 'BARRIER_PROJECT', 'jb_ods_merge_eis_map1   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '31');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:53', 'QeAGsj', 'ydiBBw', 'hMKAVB', '7160', 'BARRIER_PROJECT', '(String)globalMap.get("parent_job_name")   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:53', 'QeAGsj', 'ydiBBw', 'hMKAVB', '7160', 'BARRIER_PROJECT', '(String)globalMap.get("parent_job_name")   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '234');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:54', '6vIn2H', 'ydiBBw', 'hMKAVB', '7160', 'BARRIER_PROJECT', '(String)globalMap.get("parent_job_name")   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:54', '6vIn2H', 'ydiBBw', 'hMKAVB', '7160', 'BARRIER_PROJECT', '(String)globalMap.get("parent_job_name")   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:55', 'XV5Bec', 'AW7AT2', 'hMKAVB', '16984', 'BARRIER_PROJECT', 'jb_ods_merge_ps_mapping_nm01   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:55', 'XV5Bec', 'AW7AT2', 'hMKAVB', '16984', 'BARRIER_PROJECT', 'jb_ods_merge_ps_mapping_nm01   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '234');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:56', 'nUWGK3', 'AW7AT2', 'hMKAVB', '16984', 'BARRIER_PROJECT', 'jb_ods_merge_ps_mapping_nm01   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:56', 'nUWGK3', 'AW7AT2', 'hMKAVB', '16984', 'BARRIER_PROJECT', 'jb_ods_merge_ps_mapping_nm01   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:57', '5jkDTm', 'Aa6fHR', 'hMKAVB', '6212', 'BARRIER_PROJECT', 'jb_ods_merge_ps_mapping_eis   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:57', '5jkDTm', 'Aa6fHR', 'hMKAVB', '6212', 'BARRIER_PROJECT', 'jb_ods_merge_ps_mapping_eis   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:59', 'ZX6moS', 'Aa6fHR', 'hMKAVB', '6212', 'BARRIER_PROJECT', 'jb_ods_merge_ps_mapping_eis   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:13:59', 'ZX6moS', 'Aa6fHR', 'hMKAVB', '6212', 'BARRIER_PROJECT', 'jb_ods_merge_ps_mapping_eis   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '0');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:00', 'WtFt8J', '71ILce', 'hMKAVB', '25000', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_all   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:01', 'WtFt8J', '71ILce', 'hMKAVB', '25000', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_all   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '234');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:01', 'qBZKNb', '71ILce', 'hMKAVB', '25000', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_all   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:01', 'qBZKNb', '71ILce', 'hMKAVB', '25000', 'BARRIER_PROJECT', 'jb_ods_merge_nm01_all   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:02', 'pFuCgC', 'r0q7a0', 'hMKAVB', '14996', 'BARRIER_PROJECT', 'jb_ods_merge_eis   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:02', 'pFuCgC', 'r0q7a0', 'hMKAVB', '14996', 'BARRIER_PROJECT', 'jb_ods_merge_eis   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:06', 'tPa7ji', 'r0q7a0', 'hMKAVB', '14996', 'BARRIER_PROJECT', 'jb_ods_merge_eis   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:06', 'tPa7ji', 'r0q7a0', 'hMKAVB', '14996', 'BARRIER_PROJECT', 'jb_ods_merge_eis   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:06', 'YYRlzz', 'nvCivW', 'hMKAVB', '10788', 'BARRIER_PROJECT', 'run_task_ods   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:06', 'YYRlzz', 'nvCivW', 'hMKAVB', '10788', 'BARRIER_PROJECT', 'run_task_ods   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:06', 'M7qslI', '7N0QxI', 'hMKAVB', '10788', 'BARRIER_PROJECT', 'run_task_barrier_main_core   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:06', 'M7qslI', '7N0QxI', 'hMKAVB', '10788', 'BARRIER_PROJECT', 'run_task_barrier_main_core   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:06', 'swVWsg', 'AqYHyB', 'hMKAVB', '10788', 'BARRIER_PROJECT', 'run_task_barrier_incr_core   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:06', 'swVWsg', 'AqYHyB', 'hMKAVB', '10788', 'BARRIER_PROJECT', 'run_task_barrier_incr_core   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:07', 'Fm5xLl', 'D3mqqa', 'hMKAVB', '1644', 'BARRIER_PROJECT', 'jb_abc_indicator_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:07', 'Fm5xLl', 'D3mqqa', 'hMKAVB', '1644', 'BARRIER_PROJECT', 'jb_abc_indicator_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '218');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:07', 'JspaXi', 'D3mqqa', 'hMKAVB', '1644', 'BARRIER_PROJECT', 'jb_abc_indicator_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:07', 'JspaXi', 'D3mqqa', 'hMKAVB', '1644', 'BARRIER_PROJECT', 'jb_abc_indicator_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:08', 'HWg8wR', 'AhGsXr', 'hMKAVB', '14340', 'BARRIER_PROJECT', 'jb_asset_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:09', 'HWg8wR', 'AhGsXr', 'hMKAVB', '14340', 'BARRIER_PROJECT', 'jb_asset_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '235');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:09', '4omwN2', 'AhGsXr', 'hMKAVB', '14340', 'BARRIER_PROJECT', 'jb_asset_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:09', '4omwN2', 'AhGsXr', 'hMKAVB', '14340', 'BARRIER_PROJECT', 'jb_asset_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '24');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:10', 'hc7lWW', '1psmAo', 'hMKAVB', '4432', 'BARRIER_PROJECT', 'jb_asset_rule_set_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:10', 'hc7lWW', '1psmAo', 'hMKAVB', '4432', 'BARRIER_PROJECT', 'jb_asset_rule_set_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:10', 'fi0pmO', '1psmAo', 'hMKAVB', '4432', 'BARRIER_PROJECT', 'jb_asset_rule_set_refdt   -     P', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:10', 'fi0pmO', '1psmAo', 'hMKAVB', '4432', 'BARRIER_PROJECT', 'jb_asset_rule_set_refdt   -     P', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:11', 'U9mxxU', 'JvUvaM', 'hMKAVB', '24708', 'BARRIER_PROJECT', 'jb_barrier_element_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:12', 'U9mxxU', 'JvUvaM', 'hMKAVB', '24708', 'BARRIER_PROJECT', 'jb_barrier_element_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:12', 'jwj384', 'JvUvaM', 'hMKAVB', '24708', 'BARRIER_PROJECT', 'jb_barrier_element_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:12', 'jwj384', 'JvUvaM', 'hMKAVB', '24708', 'BARRIER_PROJECT', 'jb_barrier_element_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:13', 'lmvPig', 'Rfmoru', 'hMKAVB', '13800', 'BARRIER_PROJECT', 'jb_barrier_metric_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:13', 'lmvPig', 'Rfmoru', 'hMKAVB', '13800', 'BARRIER_PROJECT', 'jb_barrier_metric_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '234');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:13', 'EK53xe', 'Rfmoru', 'hMKAVB', '13800', 'BARRIER_PROJECT', 'jb_barrier_metric_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:13', 'EK53xe', 'Rfmoru', 'hMKAVB', '13800', 'BARRIER_PROJECT', 'jb_barrier_metric_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:14', 'IhvcUN', 'XQbkSE', 'hMKAVB', '824', 'BARRIER_PROJECT', 'jb_barrier_type_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:14', 'IhvcUN', 'XQbkSE', 'hMKAVB', '824', 'BARRIER_PROJECT', 'jb_barrier_type_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:14', 'mYNVcq', 'XQbkSE', 'hMKAVB', '824', 'BARRIER_PROJECT', 'jb_barrier_type_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:14', 'mYNVcq', 'XQbkSE', 'hMKAVB', '824', 'BARRIER_PROJECT', 'jb_barrier_type_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '0');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:16', 'MK6GxK', 'TUFSxP', 'hMKAVB', '13988', 'BARRIER_PROJECT', 'jb_business_unit_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:16', 'MK6GxK', 'TUFSxP', 'hMKAVB', '13988', 'BARRIER_PROJECT', 'jb_business_unit_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '231');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:16', 'kqfDBX', 'TUFSxP', 'hMKAVB', '13988', 'BARRIER_PROJECT', 'jb_business_unit_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:16', 'kqfDBX', 'TUFSxP', 'hMKAVB', '13988', 'BARRIER_PROJECT', 'jb_business_unit_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:17', 'LX2mMW', 'TjvOSe', 'hMKAVB', '15888', 'BARRIER_PROJECT', 'jb_facility_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:17', 'LX2mMW', 'TjvOSe', 'hMKAVB', '15888', 'BARRIER_PROJECT', 'jb_facility_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '234');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:17', 'd4sQxp', 'TjvOSe', 'hMKAVB', '15888', 'BARRIER_PROJECT', 'jb_facility_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:17', 'd4sQxp', 'TjvOSe', 'hMKAVB', '15888', 'BARRIER_PROJECT', 'jb_facility_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '11');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:18', 'MSCLcr', 'jrFvDt', 'hMKAVB', '21960', 'BARRIER_PROJECT', 'jb_facility_rule_set_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:19', 'MSCLcr', 'jrFvDt', 'hMKAVB', '21960', 'BARRIER_PROJECT', 'jb_facility_rule_set_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '235');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:19', '16fpyF', 'jrFvDt', 'hMKAVB', '21960', 'BARRIER_PROJECT', 'jb_facility_rule_set_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:19', '16fpyF', 'jrFvDt', 'hMKAVB', '21960', 'BARRIER_PROJECT', 'jb_facility_rule_set_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '0');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:20', '3aVLxH', 'IqQkiz', 'hMKAVB', '20916', 'BARRIER_PROJECT', 'jb_performance_standard_mapping   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:20', '3aVLxH', 'IqQkiz', 'hMKAVB', '20916', 'BARRIER_PROJECT', 'jb_performance_standard_mapping   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:21', 'WLQtsF', 'IqQkiz', 'hMKAVB', '20916', 'BARRIER_PROJECT', 'jb_performance_standard_mapping   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:21', 'WLQtsF', 'IqQkiz', 'hMKAVB', '20916', 'BARRIER_PROJECT', 'jb_performance_standard_mapping   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '0');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:23', 'b9qWJo', 'QzOCG2', 'hMKAVB', '14436', 'BARRIER_PROJECT', 'jb_performance_standard_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:23', 'b9qWJo', 'QzOCG2', 'hMKAVB', '14436', 'BARRIER_PROJECT', 'jb_performance_standard_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '250');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:23', 'a77uqc', 'QzOCG2', 'hMKAVB', '14436', 'BARRIER_PROJECT', 'jb_performance_standard_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:23', 'a77uqc', 'QzOCG2', 'hMKAVB', '14436', 'BARRIER_PROJECT', 'jb_performance_standard_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:24', 'XW76Uv', 'NwZgad', 'hMKAVB', '10356', 'BARRIER_PROJECT', 'jb_planner_group   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:24', 'XW76Uv', 'NwZgad', 'hMKAVB', '10356', 'BARRIER_PROJECT', 'jb_planner_group   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '234');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:24', 'FBC8pQ', 'NwZgad', 'hMKAVB', '10356', 'BARRIER_PROJECT', 'jb_planner_group   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:24', 'FBC8pQ', 'NwZgad', 'hMKAVB', '10356', 'BARRIER_PROJECT', 'jb_planner_group   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:26', 'kDTHqq', 'gAGm92', 'hMKAVB', '9364', 'BARRIER_PROJECT', 'jb_role_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:26', 'kDTHqq', 'gAGm92', 'hMKAVB', '9364', 'BARRIER_PROJECT', 'jb_role_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '235');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:26', 'CTq0us', 'gAGm92', 'hMKAVB', '9364', 'BARRIER_PROJECT', 'jb_role_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:26', 'CTq0us', 'gAGm92', 'hMKAVB', '9364', 'BARRIER_PROJECT', 'jb_role_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:27', 'OvacI6', 'mbUiWi', 'hMKAVB', '9648', 'BARRIER_PROJECT', 'jb_user_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:27', 'OvacI6', 'mbUiWi', 'hMKAVB', '9648', 'BARRIER_PROJECT', 'jb_user_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:27', 'fxEFMK', 'mbUiWi', 'hMKAVB', '9648', 'BARRIER_PROJECT', 'jb_user_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:27', 'fxEFMK', 'mbUiWi', 'hMKAVB', '9648', 'BARRIER_PROJECT', 'jb_user_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '0');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:28', 'rOPYsr', '05VZVZ', 'hMKAVB', '18008', 'BARRIER_PROJECT', 'refresh_sap_work_order_data   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:29', 'rOPYsr', '05VZVZ', 'hMKAVB', '18008', 'BARRIER_PROJECT', 'refresh_sap_work_order_data   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:33', 'AMR4sf', '05VZVZ', 'hMKAVB', '18008', 'BARRIER_PROJECT', 'refresh_sap_work_order_data   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:33', 'AMR4sf', '05VZVZ', 'hMKAVB', '18008', 'BARRIER_PROJECT', 'refresh_sap_work_order_data   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:34', '5C2Fop', 'wl8APn', 'hMKAVB', '23244', 'BARRIER_PROJECT', 'refresh_facility_level_data   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:35', '5C2Fop', 'wl8APn', 'hMKAVB', '23244', 'BARRIER_PROJECT', 'refresh_facility_level_data   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '207');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:35', 'wXkKGC', 'wl8APn', 'hMKAVB', '23244', 'BARRIER_PROJECT', 'refresh_facility_level_data   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:35', 'wXkKGC', 'wl8APn', 'hMKAVB', '23244', 'BARRIER_PROJECT', 'refresh_facility_level_data   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:37', 'p1gCvk', 'E3t6BJ', 'hMKAVB', '25316', 'BARRIER_PROJECT', 'refresh_asset_level_data   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:37', 'p1gCvk', 'E3t6BJ', 'hMKAVB', '25316', 'BARRIER_PROJECT', 'refresh_asset_level_data   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '234');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:37', 'wmXg8X', 'E3t6BJ', 'hMKAVB', '25316', 'BARRIER_PROJECT', 'refresh_asset_level_data   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:37', 'wmXg8X', 'E3t6BJ', 'hMKAVB', '25316', 'BARRIER_PROJECT', 'refresh_asset_level_data   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:38', 'gYxtXJ', 'OKjQHp', 'hMKAVB', '22064', 'BARRIER_PROJECT', 'refresh_work_order_level_data   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:14:39', 'gYxtXJ', 'OKjQHp', 'hMKAVB', '22064', 'BARRIER_PROJECT', 'refresh_work_order_level_data   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '234');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:15:00', 'uMnJpC', 'OKjQHp', 'hMKAVB', '22064', 'BARRIER_PROJECT', 'refresh_work_order_level_data   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:15:00', 'uMnJpC', 'OKjQHp', 'hMKAVB', '22064', 'BARRIER_PROJECT', 'refresh_work_order_level_data   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:15:01', 'Ennaw2', 'NulTe1', 'hMKAVB', '18860', 'BARRIER_PROJECT', 'jb_barrier_type_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:15:01', 'Ennaw2', 'NulTe1', 'hMKAVB', '18860', 'BARRIER_PROJECT', 'jb_barrier_type_refdt   -     (', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '219');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:15:01', 'FmIPdo', 'NulTe1', 'hMKAVB', '18860', 'BARRIER_PROJECT', 'jb_barrier_type_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:15:01', 'FmIPdo', 'NulTe1', 'hMKAVB', '18860', 'BARRIER_PROJECT', 'jb_barrier_type_refdt   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:15:02', 'yYvkQH', 'AqYHyB', 'hMKAVB', '10788', 'BARRIER_PROJECT', 'run_task_barrier_incr_core   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:15:02', 'yYvkQH', 'AqYHyB', 'hMKAVB', '10788', 'BARRIER_PROJECT', 'run_task_barrier_incr_core   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:15:02', 'qa5PNq', '7N0QxI', 'hMKAVB', '10788', 'BARRIER_PROJECT', 'run_task_barrier_main_core   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:15:02', 'qa5PNq', '7N0QxI', 'hMKAVB', '10788', 'BARRIER_PROJECT', 'run_task_barrier_main_core   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '16');
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:15:02', 'ATidWG', 'hMKAVB', 'hMKAVB', '10788', 'BARRIER_PROJECT', 'run_e2e_barrier_etl   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'begin', NULL, NULL);
INSERT INTO `running_tasks` (`moment`, `pid`, `father_pid`, `root_pid`, `system_pid`, `project`, `job`, `job_repository_id`, `job_version`, `context`, `origin`, `message_type`, `message`, `duration`) VALUES
	('2017-11-24 13:15:02', 'ATidWG', 'hMKAVB', 'hMKAVB', '10788', 'BARRIER_PROJECT', 'run_e2e_barrier_etl   -     p', '_B0G8kKk8EeeSBYFI7jNKBA', '0.1', 'Default', NULL, 'end', 'success', '15');
/*!40000 ALTER TABLE `running_tasks` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
