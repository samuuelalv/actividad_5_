-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para heladeria_y_pizzeria_la_65
CREATE DATABASE IF NOT EXISTS `heladeria_y_pizzeria_la_65` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `heladeria_y_pizzeria_la_65`;

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.client
CREATE TABLE IF NOT EXISTS `client` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `age` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.client: ~4 rows (aproximadamente)
DELETE FROM `client`;
INSERT INTO `client` (`id`, `name`, `age`) VALUES
	(1, 'nicolas prieto', 24),
	(2, 'samuel camacho', 32),
	(3, 'andreus solillo', 28),
	(4, 'antonio salazar', 54),
	(5, 'manolo andolo', 45);

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.discoints
CREATE TABLE IF NOT EXISTS `discoints` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `value` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.discoints: ~4 rows (aproximadamente)
DELETE FROM `discoints`;
INSERT INTO `discoints` (`id`, `name`, `value`) VALUES
	(1, 'miercoles pizza grande', 0.1),
	(2, 'sabado de pollo', 0.15),
	(3, 'viernes de cucuruchos', 0.12),
	(4, 'martes de malteadas ', 0.08),
	(5, 'domingo de conchas', 0.11);

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.product
CREATE TABLE IF NOT EXISTS `product` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` float(12,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.product: ~4 rows (aproximadamente)
DELETE FROM `product`;
INSERT INTO `product` (`id`, `name`, `price`) VALUES
	(1, 'concha mediana', 12000.00),
	(2, 'cucurucho grande ', 15000.00),
	(3, 'pizza grande', 40000.00),
	(4, 'pollo entero', 35000.00),
	(5, 'malteada', 8000.00);

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.sales
CREATE TABLE IF NOT EXISTS `sales` (
  `id` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` tinyint(4) NOT NULL,
  `date` date NOT NULL,
  `sales_value` float(12,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.sales: ~4 rows (aproximadamente)
DELETE FROM `sales`;
INSERT INTO `sales` (`id`, `client_id`, `date`, `sales_value`) VALUES
	(1, 3, '2022-06-12', 12000.00),
	(2, 4, '2022-06-11', 16000.00),
	(3, 5, '2022-06-09', 35000.00),
	(4, 2, '2022-06-10', 45000.00),
	(5, 1, '2022-06-13', 80000.00);

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.sales_discoints
CREATE TABLE IF NOT EXISTS `sales_discoints` (
  `id` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `sales_id` tinyint(4) NOT NULL,
  `discoints` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.sales_discoints: ~4 rows (aproximadamente)
DELETE FROM `sales_discoints`;
INSERT INTO `sales_discoints` (`id`, `sales_id`, `discoints`) VALUES
	(1, 1, 1),
	(2, 2, 5),
	(3, 3, 4),
	(4, 4, 3),
	(5, 5, 2);

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.sales_products
CREATE TABLE IF NOT EXISTS `sales_products` (
  `id` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `sale_id` tinyint(4) NOT NULL,
  `product_id` tinyint(4) NOT NULL,
  `quantity` mediumint(9) NOT NULL,
  `price` float(12,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.sales_products: ~4 rows (aproximadamente)
DELETE FROM `sales_products`;
INSERT INTO `sales_products` (`id`, `sale_id`, `product_id`, `quantity`, `price`) VALUES
	(1, 1, 3, 2, 40000.00),
	(2, 4, 2, 3, 15000.00),
	(3, 2, 1, 1, 12000.00),
	(4, 3, 5, 2, 80000.00),
	(5, 5, 4, 1, 35000.00);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
