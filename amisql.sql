-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.9-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.5042
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for ami
CREATE DATABASE IF NOT EXISTS `ami` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ami`;

-- Dumping structure for table ami.applications
CREATE TABLE IF NOT EXISTS `applications` (
  `id` int(11) NOT NULL,
  `label` varchar(10) DEFAULT NULL,
  `manufacturer` varchar(15) DEFAULT NULL,
  `timezone` timestamp NULL DEFAULT NULL,
  `comm_mode` varchar(15) DEFAULT NULL,
  `protocol` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table ami.application_data
CREATE TABLE IF NOT EXISTS `application_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(5) DEFAULT NULL,
  `data_structure` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table ami.application_request_datamap
CREATE TABLE IF NOT EXISTS `application_request_datamap` (
  `req_id` int(5) NOT NULL,
  `app_data_id` int(5) DEFAULT NULL,
  `source_key` varchar(20) DEFAULT NULL,
  `destination_key` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`req_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table ami.application_response_datamap
CREATE TABLE IF NOT EXISTS `application_response_datamap` (
  `res_id` int(5) NOT NULL,
  `app_data_id` int(5) DEFAULT NULL,
  `source_key` varchar(10) DEFAULT NULL,
  `destination_key` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table ami.device
CREATE TABLE IF NOT EXISTS `device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `headend_id` int(11) DEFAULT NULL,
  `label` varchar(20) DEFAULT NULL,
  `serial_no` varchar(20) DEFAULT NULL,
  `model_no` varchar(20) DEFAULT NULL,
  `lot_no` varchar(20) DEFAULT NULL,
  `energy_type` varchar(20) DEFAULT NULL,
  `service_provider` varchar(30) DEFAULT NULL,
  `interval_block` int(11) DEFAULT NULL,
  `timezone` varchar(20) DEFAULT NULL,
  `address_line` varchar(45) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `source_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table ami.headends
CREATE TABLE IF NOT EXISTS `headends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(50) DEFAULT NULL,
  `manufacturer` varchar(30) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `port` int(4) DEFAULT NULL,
  `protocol` varchar(10) DEFAULT NULL,
  `source_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table ami.processes
CREATE TABLE IF NOT EXISTS `processes` (
  `id` int(11) DEFAULT NULL,
  `name` int(11) DEFAULT NULL,
  `protocol` int(11) DEFAULT NULL,
  `server` int(11) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `path` int(11) DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table ami.reads
CREATE TABLE IF NOT EXISTS `reads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` int(11) DEFAULT NULL,
  `read` varchar(20) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `read_type` varchar(20) DEFAULT NULL,
  `unit` varchar(10) DEFAULT NULL,
  `source_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
