-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para agenda
DROP DATABASE IF EXISTS `agenda`;
CREATE DATABASE IF NOT EXISTS `agenda` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `agenda`;

-- Volcando estructura para tabla agenda.agendas
DROP TABLE IF EXISTS `agendas`;
CREATE TABLE IF NOT EXISTS `agendas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fijo` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genero` char(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posicion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departamento` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla agenda.agendas: ~14 rows (aproximadamente)
DELETE FROM `agendas`;
/*!40000 ALTER TABLE `agendas` DISABLE KEYS */;
INSERT INTO `agendas` (`id`, `nombre`, `apellidos`, `fijo`, `telefono`, `genero`, `email`, `posicion`, `departamento`, `salario`, `fecha_nacimiento`, `created_at`, `updated_at`) VALUES
	(6, 'Laura', 'Escanes', '987987987', '654654111', 'Femenino', 'laura@web.com', 'Administrativa', 'Auditoria TI', 1234.00, '2009-01-30', '2020-03-28 16:49:33', '2020-03-29 17:03:19'),
	(7, 'Terelu', 'Posi', '988988988', '676767676', 'Femenino', 'tere@web.com', 'Becaria', 'Auditoria TI', 123.00, '1996-06-06', '2020-03-28 16:50:15', '2020-03-28 16:50:15'),
	(8, 'Jose', 'Ramirez', '987654457', '675675675', 'Masculino', 'jose@web.com', 'Ayudante', 'Gerencia de TI', 666.00, '2020-03-28', '2020-03-28 17:51:48', '2020-03-28 17:51:49'),
	(9, 'Pepe', 'Morales', '987768767', '611611611', 'Masculino', 'pepe@web.com', 'Ayudante', 'Auditoria TI', 678.00, '1998-12-23', '2020-03-28 16:52:31', '2020-03-28 16:52:31'),
	(10, 'Sara', 'Garcia', '987876522', '621123423', 'Femenino', 'sara@web.com', 'Becaria', 'Gerencia de TI', 689.00, '1999-01-31', '2020-03-28 16:53:19', '2020-03-28 16:53:19'),
	(11, 'Carlos', 'Linde', '987666222', '666777888', 'Masculino', 'carlos@web.com', 'Secretario', 'Gerencia de TI', 1212.00, '2000-02-03', '2020-03-28 16:54:22', '2020-03-28 16:54:22'),
	(12, 'Javier', 'Garcia', '988766544', '611622633', 'Masculino', 'javier@web.com', 'Gerente', 'Auditoria TI', 2000.00, '1999-12-30', '2020-03-28 16:55:00', '2020-03-28 16:55:00'),
	(13, 'Miguel', 'Arrido', '912912932', '678785744', 'Masculino', 'miguel@web.com', 'Administrativo', 'Contabilidad', 1221.00, '1997-02-12', '2020-03-28 16:56:20', '2020-03-28 16:56:20'),
	(14, 'Antonio', 'Moreno', '987372612', '677828394', 'Masculino', 'antonio@web.com', 'Administrativo', 'Contabilidad', 999.00, '1995-02-05', '2020-03-28 16:57:16', '2020-03-28 16:57:16'),
	(15, 'Julia', 'Hortelano', '926637465', '618728394', 'Femenino', 'julia@web.com', 'Administrativa', 'Contabilidad', 1253.00, '1999-03-12', '2020-03-28 16:58:08', '2020-03-28 16:58:08'),
	(16, 'Marta', 'Ollos', '982369542', '678928346', 'Masculino', 'marta@web.com', 'Gerente', 'Contabilidad', 6567.00, '2000-02-12', '2020-03-28 16:58:58', '2020-03-28 16:58:58'),
	(17, 'Alejandro', 'Gutierrez', '938283821', '672839212', 'Masculino', 'alejandro@web.com', 'Becario', 'Contabilidad', 888.00, '1992-03-31', '2020-03-28 16:59:58', '2020-03-28 16:59:58'),
	(18, 'Canela', 'Wild', '983572831', '689029321', 'Masculino', 'canela@web.com', 'Co-Gerente', 'Gerencia de TI', 1092.00, '1992-02-12', '2020-03-28 17:00:49', '2020-03-28 17:00:49'),
	(19, 'Tom', 'Nook', '927372123', '673812124', 'Masculino', 'tom@web.com', 'Marketing', 'Gerencia de TI', 9999.00, '1992-07-23', '2020-03-28 17:01:37', '2020-03-28 17:01:37');
/*!40000 ALTER TABLE `agendas` ENABLE KEYS */;

-- Volcando estructura para tabla agenda.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla agenda.failed_jobs: ~0 rows (aproximadamente)
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla agenda.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla agenda.migrations: ~4 rows (aproximadamente)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2020_03_27_174508_create_agendas_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla agenda.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla agenda.password_resets: ~0 rows (aproximadamente)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla agenda.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla agenda.users: ~0 rows (aproximadamente)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Sergio', 'sergio@web.com', NULL, '$2y$10$XmpA5s2QsGRmTwRaZuHXgeyX2/j2nOZ3c573t0wJ688lcKk4LNgS6', NULL, '2020-03-29 17:28:22', '2020-03-29 17:28:22');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
