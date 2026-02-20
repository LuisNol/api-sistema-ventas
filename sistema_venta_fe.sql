-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: mysql:3306
-- Tiempo de generación: 20-02-2026 a las 01:40:01
-- Versión del servidor: 8.2.0
-- Versión de PHP: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_venta_fe`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:58:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"dashboard\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:2:{i:0;i:8;i:1;i:9;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:13:\"register_role\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:2;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:9:\"list_role\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:4:{i:0;i:2;i:1;i:7;i:2;i:8;i:3;i:9;}}i:3;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:9:\"edit_role\";s:1:\"c\";s:3:\"api\";}i:4;a:3:{s:1:\"a\";i:5;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"api\";}i:5;a:3:{s:1:\"a\";i:6;s:1:\"b\";s:13:\"register_user\";s:1:\"c\";s:3:\"api\";}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:9:\"list_user\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:3:{i:0;i:7;i:1;i:8;i:2;i:9;}}i:7;a:3:{s:1:\"a\";i:8;s:1:\"b\";s:9:\"edit_user\";s:1:\"c\";s:3:\"api\";}i:8;a:3:{s:1:\"a\";i:9;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"api\";}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:18:\"register_categorie\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:3:{i:0;i:3;i:1;i:8;i:2;i:9;}}i:10;a:3:{s:1:\"a\";i:11;s:1:\"b\";s:14:\"edit_categorie\";s:1:\"c\";s:3:\"api\";}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:16:\"delete_categorie\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:3;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:14:\"list_categorie\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:4:{i:0;i:3;i:1;i:7;i:2;i:8;i:3;i:9;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:16:\"register_product\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:3:{i:0;i:3;i:1;i:8;i:2;i:9;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:12:\"list_product\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:3:{i:0;i:3;i:1;i:8;i:2;i:9;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:12:\"edit_product\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:3;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:14:\"delete_product\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:3;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:15:\"register_client\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:2:{i:0;i:3;i:1;i:8;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:11:\"list_client\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:3:{i:0;i:3;i:1;i:7;i:2;i:8;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:11:\"edit_client\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:3;}}i:20;a:3:{s:1:\"a\";i:21;s:1:\"b\";s:13:\"delete_client\";s:1:\"c\";s:3:\"api\";}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:13:\"register_sale\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:8;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:9:\"list_sale\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:8;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:9:\"edit_sale\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:4;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:11:\"delete_sale\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:4;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:22:\"register_guia_remision\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:8;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:18:\"list_guia_remision\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:2:{i:0;i:7;i:1;i:8;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:16:\"nota_electronica\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:8;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:21:\"list_nota_electronica\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:17:\"register_purchase\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:8;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:13:\"list_purchase\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:8;}}i:31;a:3:{s:1:\"a\";i:32;s:1:\"b\";s:13:\"edit_purchase\";s:1:\"c\";s:3:\"api\";}i:32;a:3:{s:1:\"a\";i:33;s:1:\"b\";s:15:\"delete_purchase\";s:1:\"c\";s:3:\"api\";}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:18:\"register_transport\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:8;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:14:\"list_transport\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:8;}}i:35;a:3:{s:1:\"a\";i:36;s:1:\"b\";s:14:\"edit_transport\";s:1:\"c\";s:3:\"api\";}i:36;a:3:{s:1:\"a\";i:37;s:1:\"b\";s:16:\"delete_transport\";s:1:\"c\";s:3:\"api\";}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:19:\"register_conversion\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:8;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:15:\"list_conversion\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:8;}}i:39;a:3:{s:1:\"a\";i:40;s:1:\"b\";s:15:\"edit_conversion\";s:1:\"c\";s:3:\"api\";}i:40;a:3:{s:1:\"a\";i:41;s:1:\"b\";s:17:\"delete_conversion\";s:1:\"c\";s:3:\"api\";}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:11:\"list_kardex\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:8;}}i:42;a:3:{s:1:\"a\";i:43;s:1:\"b\";s:22:\"register_branch_office\";s:1:\"c\";s:3:\"api\";}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:18:\"list_branch_office\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:8;}}i:44;a:3:{s:1:\"a\";i:45;s:1:\"b\";s:18:\"edit_branch_office\";s:1:\"c\";s:3:\"api\";}i:45;a:3:{s:1:\"a\";i:46;s:1:\"b\";s:20:\"delete_branch_office\";s:1:\"c\";s:3:\"api\";}i:46;a:3:{s:1:\"a\";i:47;s:1:\"b\";s:18:\"register_warehouse\";s:1:\"c\";s:3:\"api\";}i:47;a:3:{s:1:\"a\";i:48;s:1:\"b\";s:14:\"list_warehouse\";s:1:\"c\";s:3:\"api\";}i:48;a:3:{s:1:\"a\";i:49;s:1:\"b\";s:14:\"edit_warehouse\";s:1:\"c\";s:3:\"api\";}i:49;a:3:{s:1:\"a\";i:50;s:1:\"b\";s:16:\"delete_warehouse\";s:1:\"c\";s:3:\"api\";}i:50;a:3:{s:1:\"a\";i:51;s:1:\"b\";s:17:\"register_supplier\";s:1:\"c\";s:3:\"api\";}i:51;a:3:{s:1:\"a\";i:52;s:1:\"b\";s:13:\"list_supplier\";s:1:\"c\";s:3:\"api\";}i:52;a:3:{s:1:\"a\";i:53;s:1:\"b\";s:13:\"edit_supplier\";s:1:\"c\";s:3:\"api\";}i:53;a:3:{s:1:\"a\";i:54;s:1:\"b\";s:15:\"delete_supplier\";s:1:\"c\";s:3:\"api\";}i:54;a:3:{s:1:\"a\";i:55;s:1:\"b\";s:13:\"register_unit\";s:1:\"c\";s:3:\"api\";}i:55;a:3:{s:1:\"a\";i:56;s:1:\"b\";s:9:\"list_unit\";s:1:\"c\";s:3:\"api\";}i:56;a:3:{s:1:\"a\";i:57;s:1:\"b\";s:9:\"edit_unit\";s:1:\"c\";s:3:\"api\";}i:57;a:3:{s:1:\"a\";i:58;s:1:\"b\";s:11:\"delete_unit\";s:1:\"c\";s:3:\"api\";}}s:5:\"roles\";a:6:{i:0;a:3:{s:1:\"a\";i:8;s:1:\"b\";s:4:\"Demo\";s:1:\"c\";s:3:\"api\";}i:1;a:3:{s:1:\"a\";i:9;s:1:\"b\";s:6:\"admin2\";s:1:\"c\";s:3:\"api\";}i:2;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:16:\"Asesor Comercial\";s:1:\"c\";s:3:\"api\";}i:3;a:3:{s:1:\"a\";i:7;s:1:\"b\";s:10:\"Supervisor\";s:1:\"c\";s:3:\"api\";}i:4;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:21:\"Administrador de Sede\";s:1:\"c\";s:3:\"api\";}i:5;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:8:\"Contador\";s:1:\"c\";s:3:\"api\";}}}', 1771629390);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `imagen` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `state` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '1 es activo y 2 inactivo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `title`, `imagen`, `state`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'Lubricantes', 'categories/WhsOSvFG5Vyrug2YHXEXWhkXuko2UsRlUVUX3M5v.png', 1, '2026-01-22 18:51:40', '2026-01-27 22:49:15', NULL),
(6, 'Camara Moto Duro', 'categories/KvZi4f8b3EkvdYtZOUceEOGGcQH4WK0vX2GdsKXj.avif', 1, '2026-02-02 18:00:18', '2026-02-03 16:38:59', NULL),
(7, 'Camara Moto  JVX AUTO', 'categories/LiNyszQDGhufhX7FqL00XNRa5hURTr7RQ2e9fuyt.jpg', 1, '2026-02-03 16:18:10', '2026-02-03 16:21:26', NULL),
(8, 'Cámara moto BAJAJ', 'categories/cjlXz6P2ECXuORqB5xbRQwrLvGZIJVnpBYsXA04g.jpg', 1, '2026-02-04 17:09:31', '2026-02-04 17:11:06', NULL),
(9, 'Rodajes (Rodamientos)-MOTO', 'categories/NFhmo0HV6P778PevjQYLqBhMOIvvZaeqaR4TFbGo.jpg', 1, '2026-02-09 16:23:36', '2026-02-09 16:23:36', NULL),
(10, 'Neumáticos-Llantas-Moto', 'categories/G2FuR62ZGcL1Xl3Ge6sUhbjmbvOC0AaDnYzhut0h.jpg', 1, '2026-02-09 17:03:31', '2026-02-09 17:03:31', NULL),
(11, 'RUEDAS BAJAJ', 'categories/IQnBVzq3JtY6VRgqMiyLGoI0SG8ubIjMat3eFxN9.jpg', 1, '2026-02-15 11:23:55', '2026-02-15 11:23:55', NULL),
(12, 'Pegamento para parche', 'categories/ekNek3ZDmjDPucQ6mXJzY4vizzaoPsUFh39XvLqf.jpg', 1, '2026-02-15 11:43:04', '2026-02-15 11:43:04', NULL),
(13, 'Parches Ruzi', 'categories/3xuvI3FSzzc6kIWJG2iEk0BE6q6yvxoxCBXIdDXG.jpg', 1, '2026-02-15 17:08:15', '2026-02-15 17:08:15', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `surname` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `full_name` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type_client` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '1 es cliente normal y 2 es empresa',
  `type_document` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `n_document` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `gender` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'M es masculino y F femenino',
  `birth_date` timestamp NULL DEFAULT NULL COMMENT 'fecha de cumple',
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `address` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ubigeo_distrito` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ubigeo_provincia` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ubigeo_region` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `distrito` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provincia` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `region` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id`, `name`, `surname`, `full_name`, `phone`, `email`, `type_client`, `type_document`, `n_document`, `gender`, `birth_date`, `user_id`, `address`, `ubigeo_distrito`, `ubigeo_provincia`, `ubigeo_region`, `distrito`, `provincia`, `region`, `state`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 'Lucero Sofia', 'Rojas Javier', 'Lucero Sofia Rojas Javier', '930518038', 'sofiajavierrojas6@gmail.com', 1, 'DNI', '75322356', 'M', '2004-12-26 00:00:00', 6, 'JR. PEDRO RODRIGUEZ PAIVA 124 - Calleria - Coronel', '100606', '1006', '10', 'Mariano Damaso Beraun', 'Leoncio Prado', 'Huánuco', 1, '2026-01-26 20:13:07', '2026-01-26 22:13:19', NULL),
(30, NULL, NULL, 'Distribuidora Surco EIRL 123', '94845454', 'distribuidorasurco@eirl.com', 2, 'RUC', '20161515649', 'M', '2007-03-26 00:00:00', 6, 'Av. Raymondi Nº1139', '200401', '2004', '20', 'Chulucanas', 'Morropón', 'Piura', 1, '2026-01-26 23:04:56', '2026-01-26 23:04:56', NULL),
(31, NULL, NULL, 'socopur', '930518038', 'socoour.s@gmail.com', 2, 'RUC', '36925874158', 'M', '2021-08-11 00:00:00', 6, 'JR. PEDRO RODRIGUEZ PAIVA 124 - Calleria - Coronel', '250103', '2501', '25', 'Iparia', 'Coronel Portillo', 'Ucayali', 1, '2026-02-03 10:08:33', '2026-02-03 10:08:33', NULL),
(32, 'Franklin', 'Custodio', 'Franklin  Custodio', '940078299', 'franklin.custodio@gmail.com', 1, 'DNI', '78945632', 'M', '2005-02-03 00:00:00', 6, 'Castillo grande', '100608', '1006', '10', 'Castillo Grande', 'Leoncio Prado', 'Huánuco', 1, '2026-02-03 21:49:51', '2026-02-03 21:49:51', NULL),
(33, 'Jose', 'Suares', 'Jose Suares', '940078299', 'jose.suares@gmail.com', 1, 'DNI', '7894567', 'M', '2006-02-10 00:00:00', 6, 'Av. Raymondi Nº1139', '160202', '1602', '16', 'Balsapuerto', 'Alto Amazonas', 'Loreto', 1, '2026-02-10 22:16:04', '2026-02-10 22:16:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `companies`
--

CREATE TABLE `companies` (
  `id` bigint UNSIGNED NOT NULL,
  `razon_social` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `razon_social_comercial` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `n_document` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `birth_date` timestamp NULL DEFAULT NULL COMMENT 'fecha de cumple',
  `address` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `urbanizacion` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `cod_local` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `ubigeo_distrito` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ubigeo_provincia` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ubigeo_region` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `distrito` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provincia` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `region` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `companies`
--

INSERT INTO `companies` (`id`, `razon_social`, `razon_social_comercial`, `phone`, `email`, `n_document`, `birth_date`, `address`, `urbanizacion`, `cod_local`, `ubigeo_distrito`, `ubigeo_provincia`, `ubigeo_region`, `distrito`, `provincia`, `region`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Laravest Sac. TEC .', 'Laravest', '958962565', 'echodeveloper960@gmail.com', '20161515648', '2025-04-28 05:00:00', 'Av. Primavera 2711, Santiago de Surco 25884', 'Peru', '0000', '150101', '1501', '15', 'Lima', 'Lima', 'Lima', '2026-01-27 03:01:06', '2026-02-19 21:27:42', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `electronic_notes`
--

CREATE TABLE `electronic_notes` (
  `id` bigint NOT NULL,
  `serie` varchar(50) DEFAULT NULL,
  `correlativo` bigint UNSIGNED DEFAULT NULL,
  `n_operacion` varchar(125) DEFAULT NULL,
  `doc_nota` varchar(10) NOT NULL DEFAULT '07' COMMENT '07 credito,08 debito',
  `type_nota` varchar(5) NOT NULL,
  `n_comprobante` varchar(150) NOT NULL,
  `user_id` bigint NOT NULL,
  `client_id` bigint NOT NULL,
  `type_client` smallint NOT NULL DEFAULT '1' COMMENT '1 es cliente final, 2 es cliente empresa',
  `currency` varchar(15) NOT NULL DEFAULT '''S/.''',
  `subtotal` double NOT NULL DEFAULT '0',
  `total` double NOT NULL DEFAULT '0',
  `is_exportacion` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `discount` double DEFAULT '0',
  `discount_global` double NOT NULL DEFAULT '0',
  `igv` double NOT NULL,
  `type_payment` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '1 es al contado, 2 credito',
  `state_sale` smallint NOT NULL DEFAULT '1' COMMENT '1 es venta, 2 es cotizacion',
  `state_payment` smallint NOT NULL DEFAULT '1' COMMENT '1 es pendiente, 2 es parcial, 3 es completo',
  `debt` double NOT NULL DEFAULT '0' COMMENT 'deuda',
  `paid_out` double NOT NULL DEFAULT '0' COMMENT 'pagado o cancelado',
  `retencion_igv` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '1 Retención , 2 Detracción , 3 Percepción',
  `state_entrega` smallint NOT NULL DEFAULT '1' COMMENT '1 es pendiente, 2 es parcial, 3 completo',
  `amount_anticipo` double NOT NULL DEFAULT '0',
  `sales_anticipos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `description` text,
  `description_motivo` text,
  `cdr` varchar(250) DEFAULT NULL,
  `xml` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `electronic_note_details`
--

CREATE TABLE `electronic_note_details` (
  `id` bigint NOT NULL,
  `electronic_note_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `product_categorie_id` bigint NOT NULL,
  `tip_afe_igv` int UNSIGNED NOT NULL DEFAULT '10',
  `per_icbper` double NOT NULL DEFAULT '0',
  `icbper` double NOT NULL DEFAULT '0',
  `percentage_isc` double UNSIGNED NOT NULL DEFAULT '0',
  `isc` double UNSIGNED NOT NULL DEFAULT '0',
  `unidad_medida` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` double NOT NULL DEFAULT '1',
  `price_base` double NOT NULL DEFAULT '0',
  `price_final` double NOT NULL DEFAULT '0',
  `discount` double DEFAULT '0',
  `subtotal` double NOT NULL DEFAULT '0' COMMENT 'Es el precio unitario - descuento',
  `igv` double DEFAULT '0',
  `description` text COLLATE utf8mb4_general_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guia_remisions`
--

CREATE TABLE `guia_remisions` (
  `id` bigint NOT NULL,
  `serie` varchar(50) DEFAULT NULL,
  `correlativo` bigint UNSIGNED DEFAULT NULL,
  `n_operacion` varchar(125) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `client_id` bigint NOT NULL,
  `type_client` smallint NOT NULL DEFAULT '1' COMMENT '1 es cliente final, 2 es cliente empresa',
  `total` double NOT NULL DEFAULT '0',
  `quantity_total` double NOT NULL,
  `motivo_translado` varchar(5) NOT NULL,
  `num_dam` varchar(150) DEFAULT NULL,
  `type_transport` smallint NOT NULL DEFAULT '1' COMMENT '1 es publico, 2 es privado',
  `punto_partida` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `punto_llegada` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `transporte_datos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `conductor_datos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `description` text,
  `cdr` varchar(250) DEFAULT NULL,
  `xml` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `guia_remisions`
--

INSERT INTO `guia_remisions` (`id`, `serie`, `correlativo`, `n_operacion`, `user_id`, `client_id`, `type_client`, `total`, `quantity_total`, `motivo_translado`, `num_dam`, `type_transport`, `punto_partida`, `punto_llegada`, `transporte_datos`, `conductor_datos`, `description`, `cdr`, `xml`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1005, 'T001', 1, 'T001-1', 6, 30, 2, 115, 5, '01', NULL, 1, '{\"ubigeo_region\":\"10\",\"ubigeo_provincia\":\"1009\",\"ubigeo_distrito\":\"100901\",\"region\":\"Hu\\u00e1nuco\",\"provincia\":\"Puerto Inca\",\"distrito\":\"Puerto Inca\",\"address\":\"jhjlfg\"}', '{\"ubigeo_region\":\"13\",\"ubigeo_provincia\":\"1311\",\"ubigeo_distrito\":\"131104\",\"region\":\"La Libertad\",\"provincia\":\"Gran Chim\\u00fa\",\"distrito\":\"Sayapullo\",\"address\":\"ppjj\"}', '{\"n_document_ruc\":32145678945,\"razon_social_transportista\":\"turs\",\"nro_mtc\":\"3221\"}', NULL, 'hola', 'https://api-fe.avisonline.store/storage/cdrs/69816af1215bb.zip', 'https://api-fe.avisonline.store/storage/xml/FF-20161515648-1-T001-1005 20260202_222641.xml', '2026-02-02 22:26:40', '2026-02-02 22:26:41', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guia_remision_details`
--

CREATE TABLE `guia_remision_details` (
  `id` bigint NOT NULL,
  `guia_remision_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `product_categorie_id` bigint NOT NULL,
  `unidad_medida` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` double NOT NULL DEFAULT '1',
  `peso` double NOT NULL DEFAULT '0',
  `total` double NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_general_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `guia_remision_details`
--

INSERT INTO `guia_remision_details` (`id`, `guia_remision_id`, `product_id`, `product_categorie_id`, `unidad_medida`, `quantity`, `peso`, `total`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 1005, 19, 5, 'NIU', 5, 23, 115, NULL, '2026-02-02 22:26:40', '2026-02-02 22:26:40', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_06_04_012313_create_personal_access_tokens_table', 1),
(5, '2025_06_04_015917_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(4, 'App\\Models\\User', 2),
(4, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(1, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(4, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(3, 'App\\Models\\User', 11),
(3, 'App\\Models\\User', 12),
(8, 'App\\Models\\User', 13),
(9, 'App\\Models\\User', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(2, 'register_role', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(3, 'list_role', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(4, 'edit_role', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(5, 'delete_role', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(6, 'register_user', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(7, 'list_user', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(8, 'edit_user', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(9, 'delete_user', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(10, 'register_categorie', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(11, 'edit_categorie', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(12, 'delete_categorie', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(13, 'list_categorie', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(14, 'register_product', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(15, 'list_product', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(16, 'edit_product', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(17, 'delete_product', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(18, 'register_client', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(19, 'list_client', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(20, 'edit_client', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(21, 'delete_client', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(22, 'register_sale', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(23, 'list_sale', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(24, 'edit_sale', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(25, 'delete_sale', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(26, 'register_guia_remision', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(27, 'list_guia_remision', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(28, 'nota_electronica', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(29, 'list_nota_electronica', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(30, 'register_purchase', 'api', '2026-02-19 17:19:17', '2026-02-19 17:19:17'),
(31, 'list_purchase', 'api', '2026-02-19 17:19:17', '2026-02-19 17:19:17'),
(32, 'edit_purchase', 'api', '2026-02-19 17:19:17', '2026-02-19 17:19:17'),
(33, 'delete_purchase', 'api', '2026-02-19 17:19:17', '2026-02-19 17:19:17'),
(34, 'register_transport', 'api', '2026-02-19 17:19:17', '2026-02-19 17:19:17'),
(35, 'list_transport', 'api', '2026-02-19 17:19:17', '2026-02-19 17:19:17'),
(36, 'edit_transport', 'api', '2026-02-19 17:19:17', '2026-02-19 17:19:17'),
(37, 'delete_transport', 'api', '2026-02-19 17:19:17', '2026-02-19 17:19:17'),
(38, 'register_conversion', 'api', '2026-02-19 17:19:17', '2026-02-19 17:19:17'),
(39, 'list_conversion', 'api', '2026-02-19 17:19:17', '2026-02-19 17:19:17'),
(40, 'edit_conversion', 'api', '2026-02-19 17:19:17', '2026-02-19 17:19:17'),
(41, 'delete_conversion', 'api', '2026-02-19 17:19:17', '2026-02-19 17:19:17'),
(42, 'list_kardex', 'api', '2026-02-19 17:19:17', '2026-02-19 17:19:17'),
(43, 'register_branch_office', 'api', '2026-02-19 21:24:24', '2026-02-19 21:24:24'),
(44, 'list_branch_office', 'api', '2026-02-19 21:24:24', '2026-02-19 21:24:24'),
(45, 'edit_branch_office', 'api', '2026-02-19 21:24:24', '2026-02-19 21:24:24'),
(46, 'delete_branch_office', 'api', '2026-02-19 21:24:24', '2026-02-19 21:24:24'),
(47, 'register_warehouse', 'api', '2026-02-19 21:24:24', '2026-02-19 21:24:24'),
(48, 'list_warehouse', 'api', '2026-02-19 21:24:24', '2026-02-19 21:24:24'),
(49, 'edit_warehouse', 'api', '2026-02-19 21:24:24', '2026-02-19 21:24:24'),
(50, 'delete_warehouse', 'api', '2026-02-19 21:24:24', '2026-02-19 21:24:24'),
(51, 'register_supplier', 'api', '2026-02-19 21:24:24', '2026-02-19 21:24:24'),
(52, 'list_supplier', 'api', '2026-02-19 21:24:24', '2026-02-19 21:24:24'),
(53, 'edit_supplier', 'api', '2026-02-19 21:24:24', '2026-02-19 21:24:24'),
(54, 'delete_supplier', 'api', '2026-02-19 21:24:24', '2026-02-19 21:24:24'),
(55, 'register_unit', 'api', '2026-02-19 21:24:24', '2026-02-19 21:24:24'),
(56, 'list_unit', 'api', '2026-02-19 21:24:24', '2026-02-19 21:24:24'),
(57, 'edit_unit', 'api', '2026-02-19 21:24:24', '2026-02-19 21:24:24'),
(58, 'delete_unit', 'api', '2026-02-19 21:24:24', '2026-02-19 21:24:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `sku` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `categorie_id` bigint UNSIGNED NOT NULL,
  `imagen` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `price_general` double NOT NULL,
  `price_company` double NOT NULL,
  `description` longtext COLLATE utf8mb4_general_ci,
  `is_discount` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '1 es inactivo y 2 activo',
  `max_discount` double NOT NULL DEFAULT '0',
  `disponiblidad` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '1 es venta sin stock , 2 venta con stock',
  `state` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '1 es activo y 2 inactivo',
  `unidad_medida` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `stock` double NOT NULL DEFAULT '0',
  `include_igv` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '1 no 2 si',
  `is_icbper` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '1 no y 2 si ',
  `is_ivap` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '1 no y 2 si',
  `percentage_isc` double NOT NULL DEFAULT '0',
  `is_especial_nota` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '1 es no y 2 si',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `title`, `sku`, `categorie_id`, `imagen`, `price_general`, `price_company`, `description`, `is_discount`, `max_discount`, `disponiblidad`, `state`, `unidad_medida`, `stock`, `include_igv`, `is_icbper`, `is_ivap`, `percentage_isc`, `is_especial_nota`, `created_at`, `updated_at`, `deleted_at`) VALUES
(19, '4T Aceite scooter expert 10W40 1LT MBL', 'MOT105935', 5, 'products/d5uF6uNvW0VEE8jGDc89hNQQFmmSpRNfwUJqAZXO.jpg', 35, 32, 'mucho gusto', 1, 0, 1, 1, 'LTR', 10, 1, 1, 1, 0, 1, '2026-01-28 01:09:42', '2026-01-28 01:15:46', NULL),
(20, '5100 Aceite motor 15W50 1L TS-', 'PAS25', 5, 'products/JXI7nRm1V0BqKubLPo7iqW9WuOahSwvnjLQCfQfS.jpg', 55, 53, 'hola', 1, 0, 1, 1, 'LTR', 45, 1, 1, 1, 0, 1, '2026-01-28 01:14:36', '2026-01-28 01:15:28', NULL),
(21, 'MOTUL 7100 Aceite Motor 10W-40 4T 1L', 'MOT7100-10W40-1L', 5, 'products/A20ZuwJe79nw6GEu5PwEkZubjcRcrCEgPtWNYWva.jpg', 50, 48, 'MOTUL 7100 Aceite Motor 10W-40 4T 1L', 1, 0, 1, 1, 'LTR', 20, 1, 1, 1, 0, 1, '2026-01-29 00:37:22', '2026-01-29 00:37:22', NULL),
(22, 'Camara 300-18 p', '300-18_S1', 7, 'products/wbYDxPi3jDTBaxJSnjoYzAV0hoAL3yxzmniQEJ7n.jpg', 20, 18, 'Motocicleta JVX AUTO\r\nCamara 300-18 p/ Motocicleta JVX AUTO\r\nModelos para Motocicleta\r\nMedida: 300-18\r\nMarca: JVX AUTO', 1, 0, 1, 1, 'NIU', 30, 1, 1, 1, 0, 1, '2026-02-03 16:30:27', '2026-02-03 16:30:27', NULL),
(23, 'CAMARA 275/300-18 DURO', '275/300-18_S1', 6, 'products/BMZL0kSD9SS5VyuyGVwNmR2M20ItzLzoB7MXWVOj.jpg', 25, 23, 'Modelos para Motocicleta', 1, 0, 1, 1, 'NIU', 20, 1, 1, 1, 0, 1, '2026-02-03 16:38:35', '2026-02-03 16:38:35', NULL),
(24, 'Cámara para moto BAJAJ | WSB400-8', 'WSB400-8_s1', 8, 'products/luMRUUnVwHNb4CH39J5zhBX2pDgcHYxiuefItKcb.png', 25, 23, 'WSB400-8\r\nMedida: 400-8\r\nTipo de Válvula: TR 87C\r\nMarca: S&M', 1, 0, 1, 1, 'NIU', 50, 1, 1, 1, 0, 1, '2026-02-04 17:24:31', '2026-02-04 17:24:31', NULL),
(25, 'RODAJE BOLAS 6203-2NSL SCP', '6203-2NSL-SCP', 9, 'products/YQ1qsHzoA6JiD36Tos0OcUb7kpFUg8Ks2dqlzFst.jpg', 5, 2.2228, 'Rodaje de bolas marca SCP, modelo 6203-2NSL. Repuesto de alta precisión para motor/rueda.', 1, 0, 1, 1, 'NIU', 25, 1, 1, 1, 0, 1, '2026-02-09 16:34:00', '2026-02-09 16:34:00', NULL),
(26, 'RODAJE BOLAS 6204-2NSL SCP', '6204-2NSL-SCP', 9, 'products/HosfoUDMlkNBVfJkO9QmtqxFU3lLNZgsIviauayj.webp', 5, 2.754, 'Rodaje de bolas marca SCP, modelo 6204-2NSL. Componente técnico para transmisión o rodamiento.', 1, 0, 1, 1, 'NIU', 20, 1, 1, 1, 0, 1, '2026-02-09 16:39:55', '2026-02-09 16:39:55', NULL),
(27, 'RODAJE BOLAS 6206-2NSL SCP', '6206-2NSL-SCP', 9, 'products/DsnNMrR7pJ4NpmqllcLtM7MQ7vv0F7EFnFqYLyxe.jpg', 10, 5.4, 'Rodaje de bolas marca SCP, modelo 6206-2NSL. Rodamiento reforzado para uso mecánico.', 1, 0, 1, 1, 'NIU', 20, 1, 1, 1, 0, 1, '2026-02-09 16:47:00', '2026-02-09 16:47:00', NULL),
(28, 'RODAJE BOLAS 6302-2NSL SCP', '6302-2NSL-SCP', 9, 'products/ZFBGK4TMHZaIqPgnbXUqu9WJYIfuPxJNJzzi5g5E.jpg', 5, 2.223, 'Rodaje de bolas marca SCP, modelo 6302-2NSL. Ideal para mantenimiento preventivo.', 1, 0, 1, 1, 'NIU', 20, 1, 1, 1, 0, 1, '2026-02-09 16:49:54', '2026-02-09 16:49:54', NULL),
(29, 'RODAJE BOLAS 6304-2NSL SCP', '6304-2NSL-SCP', 9, 'products/0B8Fey2gSkMWO4zzaUntZsTjP2iFchVn5nKutO7D.jpg', 8, 4.554, 'Rodaje de bolas marca SCP, modelo 6304-2NSL. Repuesto original SCP de larga duración.', 1, 0, 1, 1, 'NIU', 20, 1, 1, 1, 0, 1, '2026-02-09 16:52:03', '2026-02-09 16:52:03', NULL),
(30, 'RODAJE BOLAS 6301-2NSL SCP', '6301-2NSL-SCP', 9, 'products/LaQew9p7yuuKekN5ojflJXe8OiPbGsWkwiWaNXur.jpg', 5, 2.115, 'Rodaje de bolas marca SCP, modelo 6301-2NSL. Alta disponibilidad para servicios técnicos.', 1, 0, 1, 1, 'NIU', 50, 1, 1, 1, 0, 1, '2026-02-09 16:54:53', '2026-02-09 16:54:53', NULL),
(31, 'Cámara 275/300-17 DURO', '300-17 DURO', 6, 'products/4CqF1EGdhfQT0wvejtjQPfA6E1GpiVHwyQwpzJac.png', 20, 12.18, 'Cámara 275/300-17 DURO', 1, 0, 1, 1, 'NIU', 25, 1, 1, 1, 0, 1, '2026-02-09 17:01:27', '2026-02-09 17:01:27', NULL),
(32, 'LLANTA 3.00-18 C033 6PR TT', 'SFX-18X300-C033', 10, 'products/rgVtlZLyEQPo6C05Sp8WkOv2yPQwXZPT8regb2Xq.jpg', 90, 51.885, 'Llanta marca SFX medida 3.00-18, modelo C033. Estructura de 6 lonas (6PR) tipo TT.', 1, 0, 1, 1, 'NIU', 10, 1, 1, 1, 0, 1, '2026-02-09 17:07:50', '2026-02-09 17:07:50', NULL),
(33, 'CAMARAS 400-8 P', 'PM400-8R_S1', 8, 'products/xFcqbtcSqDnLgbwQOOOP5asQ5dMkcyYaM7kYQmW0.jpg', 20, 8.5, 'CAMARAS 400-8 P/ BAJAJ TR87 REFORZADA JVX', 1, 0, 1, 1, 'NIU', 50, 1, 1, 1, 0, 1, '2026-02-15 11:15:51', '2026-02-15 11:15:51', NULL),
(34, 'ARO ESTANDAR P/ BAJAJ 400-8', 'STD_S1', 11, 'products/idiaxJui3vzoJiMQS9na4VCyT3SVUGDQb8BXRWCl.jpg', 40, 28, 'ARO ESTANDAR P/ BAJAJ 400-8 DE FIERRO KGM ( 1 UND ;\r\n5 UND/CAJA )', 1, 0, 1, 1, 'NIU', 10, 1, 1, 1, 0, 1, '2026-02-15 11:30:16', '2026-02-15 11:30:16', NULL),
(35, 'VULCANIZANTE VIPAL (32GR)', 'BV-03/CJ_s1', 12, 'products/742bGsHI11YokVmm3u9kWYcEoXR9HAGkxpZnza4g.jpg', 80, 52, 'C.VULCANIZANTE VIPAL (32GR) / CAJA * 6 UND', 1, 0, 1, 1, 'BX', 9, 1, 1, 1, 0, 1, '2026-02-15 16:57:30', '2026-02-15 16:57:30', NULL),
(36, 'ARO ANCHO P/ BAJAJ 400-8', 'ARO ANCHO P/ BAJAJ 400-8 _S1', 11, 'products/tnNY5xVjcUVY8WShH5QSjes5u1alK75jwb2NRuT4.jpg', 80, 40, 'ARO ANCHO P/ BAJAJ 400-8 DE FIERRO PLATEADO\r\nC/AZUL KGM ( 1 UND ; 6 UND/CAJA )', 1, 0, 1, 1, 'NIU', 10, 1, 1, 1, 0, 1, '2026-02-15 17:04:33', '2026-02-15 17:04:33', NULL),
(37, 'Parche para cámara Ruzi  (REM-01)', 'REM-01/CJ-2_S1', 13, 'products/wO1TFMIU6GvhOUPAE3cuToWBDFLhmWRMN9u8O0VQ.jpg', 52, 26, 'PARCHES RUZI (REM-01) \"P. CAMARA 40MM\" / CAJA * 120\r\nUND', 1, 0, 2, 1, 'BX', 10, 1, 1, 1, 0, 1, '2026-02-15 17:19:26', '2026-02-18 19:02:15', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super-Admin', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53'),
(2, 'Asesor Comercial', 'api', '2025-06-06 08:24:42', '2025-06-06 08:24:42'),
(3, 'Administrador de Sede', 'api', '2025-06-06 08:27:44', '2025-06-06 08:27:44'),
(4, 'Contador', 'api', '2025-06-06 08:30:05', '2025-06-06 08:30:05'),
(7, 'Supervisor', 'api', '2026-01-25 05:52:20', '2026-01-25 05:52:20'),
(8, 'Demo', 'api', '2026-02-09 23:53:27', '2026-02-09 23:53:27'),
(9, 'admin2', 'api', '2026-02-20 04:15:12', '2026-02-20 04:15:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(2, 2),
(3, 2),
(10, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(22, 4),
(23, 4),
(24, 4),
(25, 4),
(28, 4),
(29, 4),
(3, 7),
(7, 7),
(13, 7),
(19, 7),
(27, 7),
(29, 7),
(1, 8),
(3, 8),
(7, 8),
(10, 8),
(13, 8),
(14, 8),
(15, 8),
(18, 8),
(19, 8),
(22, 8),
(23, 8),
(26, 8),
(27, 8),
(28, 8),
(29, 8),
(30, 8),
(31, 8),
(34, 8),
(35, 8),
(38, 8),
(39, 8),
(42, 8),
(44, 8),
(1, 9),
(3, 9),
(7, 9),
(10, 9),
(13, 9),
(14, 9),
(15, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` bigint NOT NULL,
  `serie` varchar(50) DEFAULT NULL,
  `correlativo` bigint UNSIGNED DEFAULT NULL,
  `n_operacion` varchar(125) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `client_id` bigint NOT NULL,
  `type_client` smallint NOT NULL DEFAULT '1' COMMENT '1 es cliente final, 2 es cliente empresa',
  `currency` varchar(15) NOT NULL DEFAULT '''S/.''',
  `subtotal` double NOT NULL DEFAULT '0',
  `total` double NOT NULL DEFAULT '0',
  `is_exportacion` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `discount` double DEFAULT '0',
  `discount_global` double NOT NULL DEFAULT '0',
  `sales_anticipos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `n_comprobante_anticipo` varchar(150) DEFAULT NULL,
  `amount_anticipo` double DEFAULT NULL,
  `igv` double NOT NULL,
  `igv_discount_general` double UNSIGNED DEFAULT '0',
  `type_payment` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '1 es al contado, 2 credito',
  `state_sale` smallint NOT NULL DEFAULT '1' COMMENT '1 es venta, 2 es cotizacion',
  `state_payment` smallint NOT NULL DEFAULT '1' COMMENT '1 es pendiente, 2 es parcial, 3 es completo',
  `debt` double NOT NULL DEFAULT '0' COMMENT 'deuda',
  `paid_out` double NOT NULL DEFAULT '0' COMMENT 'pagado o cancelado',
  `retencion_igv` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '1 Retención , 2 Detracción , 3 Percepción',
  `description` text,
  `cdr` varchar(250) DEFAULT NULL,
  `xml` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`id`, `serie`, `correlativo`, `n_operacion`, `user_id`, `client_id`, `type_client`, `currency`, `subtotal`, `total`, `is_exportacion`, `discount`, `discount_global`, `sales_anticipos`, `n_comprobante_anticipo`, `amount_anticipo`, `igv`, `igv_discount_general`, `type_payment`, `state_sale`, `state_payment`, `debt`, `paid_out`, `retencion_igv`, `description`, `cdr`, `xml`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1048, 'F001', 1, 'F001-1', 6, 30, 2, 'S/.', 128, 151.04, 0, 0, 0, NULL, NULL, NULL, 23.04, 0, 1, 1, 3, 0, 151.04, 0, NULL, 'http://127.0.0.1:8000/storage/cdrs/69796428c5299.zip', 'http://127.0.0.1:8000/storage/xml/R-20161515648-1-F001-1048 20260128_011936.xml', '2026-01-27 20:16:34', '2026-01-27 20:19:36', NULL),
(1049, 'F001', 2, 'F001-2', 6, 30, 2, 'S/.', 265, 312.7, 0, 0, 0, NULL, NULL, NULL, 47.7, 0, 1, 1, 3, 0, 303.319, 1, NULL, 'http://127.0.0.1:8000/storage/cdrs/697964303e817.zip', 'http://127.0.0.1:8000/storage/xml/R-20161515648-2-F001-1049 20260128_011944.xml', '2026-01-27 20:17:13', '2026-01-27 20:19:44', NULL),
(1050, 'F001', 3, 'F001-3', 6, 30, 2, 'S/.', 212, 250.16, 0, 0, 0, NULL, NULL, NULL, 38.16, 0, 1, 1, 3, 0, 242.6552, 1, NULL, 'https://api-fe.avisonline.store/storage/cdrs/697af147c4f94.zip', 'https://api-fe.avisonline.store/storage/xml/R-20161515648-3-F001-1050 20260129_053359.xml', '2026-01-29 00:33:53', '2026-01-29 00:33:59', NULL),
(1051, 'F001', 4, 'F001-4', 6, 30, 2, 'S/.', 480, 566.4, 0, 0, 0, NULL, NULL, NULL, 86.4, 0, 1, 1, 3, 0, 549.408, 1, NULL, 'https://api-fe.avisonline.store/storage/cdrs/697af2b6d6ccf.zip', 'https://api-fe.avisonline.store/storage/xml/R-20161515648-4-F001-1051 20260129_054006.xml', '2026-01-29 00:40:01', '2026-01-29 00:40:06', NULL),
(1052, 'B001', 1, 'B001-1', 8, 7, 1, 'S/.', 200, 236, 0, 0, 0, NULL, NULL, NULL, 36, 0, 1, 1, 3, 0, 236, 0, NULL, 'https://api-fe.avisonline.store/storage/cdrs/697af54686fce.zip', 'https://api-fe.avisonline.store/storage/xml/R-20161515648-1-B001-1052 20260129_055102.xml', '2026-01-29 00:50:54', '2026-01-29 00:51:02', NULL),
(1053, 'F001', 5, 'F001-5', 6, 30, 2, 'S/.', 477, 562.86, 0, 0, 0, NULL, NULL, NULL, 85.86, 0, 1, 1, 3, 0, 545.9742, 1, NULL, 'https://api-fe.avisonline.store/storage/cdrs/697b03183445f.zip', 'https://api-fe.avisonline.store/storage/xml/R-20161515648-5-F001-1053 20260129_065000.xml', '2026-01-29 01:49:46', '2026-01-29 01:50:00', NULL),
(1054, 'F001', 6, 'F001-6', 6, 30, 2, 'S/.', 432, 509.76, 0, 0, 0, NULL, NULL, NULL, 77.76, 0, 1, 1, 3, 0, 494.4672, 1, NULL, 'https://api-fe.avisonline.store/storage/cdrs/69816a2e5ebca.zip', 'https://api-fe.avisonline.store/storage/xml/R-20161515648-6-F001-1054 20260203_032326.xml', '2026-02-02 22:22:42', '2026-02-02 22:23:26', NULL),
(1055, 'B001', 2, 'B001-2', 6, 7, 1, 'S/.', 245, 289.1, 0, 0, 0, NULL, NULL, NULL, 44.1, 0, 1, 1, 3, 0, 280.427, 1, NULL, 'https://api-fe.avisonline.store/storage/cdrs/69816a3314e79.zip', 'https://api-fe.avisonline.store/storage/xml/R-20161515648-2-B001-1055 20260203_032331.xml', '2026-02-02 22:23:14', '2026-02-02 22:23:31', NULL),
(1056, 'F001', 7, 'F001-7', 6, 30, 2, 'S/.', 480, 566.4, 0, 0, 0, NULL, NULL, NULL, 86.4, 0, 1, 1, 3, 0, 549.408, 1, NULL, 'https://api-fe.avisonline.store/storage/cdrs/69816e8e70214.zip', 'https://api-fe.avisonline.store/storage/xml/R-20161515648-7-F001-1056 20260203_034206.xml', '2026-02-02 22:41:53', '2026-02-02 22:42:06', NULL),
(1057, 'F001', 8, 'F001-8', 6, 31, 2, 'S/.', 234, 276.12, 0, 0, 0, NULL, NULL, NULL, 42.12, 0, 1, 1, 3, 0, 276.12, 0, NULL, 'https://api-fe.avisonline.store/storage/cdrs/69826bb14fb48.zip', 'https://api-fe.avisonline.store/storage/xml/R-20161515648-8-F001-1057 20260203_214209.xml', '2026-02-03 16:41:27', '2026-02-03 16:42:09', NULL),
(1058, 'F001', 9, 'F001-9', 6, 30, 2, 'S/.', 460, 542.8, 0, 0, 0, NULL, NULL, NULL, 82.8, 0, 1, 1, 3, 0, 526.516, 1, NULL, 'https://api-fe.avisonline.store/storage/cdrs/69826c1b5e15e.zip', 'https://api-fe.avisonline.store/storage/xml/R-20161515648-9-F001-1058 20260203_214355.xml', '2026-02-03 16:43:43', '2026-02-03 16:43:55', NULL),
(1059, 'B001', 3, 'B001-3', 6, 32, 1, 'S/.', 150, 177, 0, 0, 0, NULL, NULL, NULL, 27, 0, 1, 1, 3, 0, 171.69, 1, NULL, 'https://api-fe.avisonline.store/storage/cdrs/6982b4062c08f.zip', 'https://api-fe.avisonline.store/storage/xml/R-20161515648-3-B001-1059 20260204_025046.xml', '2026-02-03 21:50:39', '2026-02-03 21:50:46', NULL),
(1060, 'F001', 10, 'F001-10', 6, 31, 2, 'S/.', 1150, 1357, 0, 0, 0, NULL, NULL, NULL, 207, 0, 1, 1, 3, 0, 1316.29, 1, NULL, 'https://api-fe.avisonline.store/storage/cdrs/6983c7ff2ff2a.zip', 'https://api-fe.avisonline.store/storage/xml/R-20161515648-10-F001-1060 20260204_222815.xml', '2026-02-04 17:28:08', '2026-02-04 17:28:15', NULL),
(1061, 'B001', 4, 'B001-4', 6, 32, 1, 'S/.', 500, 590, 0, 0, 0, NULL, NULL, NULL, 90, 0, 1, 1, 3, 0, 572.3, 1, NULL, 'https://api-fe.avisonline.store/storage/cdrs/6983c896823dc.zip', 'https://api-fe.avisonline.store/storage/xml/R-20161515648-4-B001-1061 20260204_223046.xml', '2026-02-04 17:30:05', '2026-02-04 17:30:46', NULL),
(1062, 'B001', 5, 'B001-5', 6, 32, 1, 'S/.', 25, 29.5, 0, 0, 0, NULL, NULL, NULL, 4.5, 0, 1, 1, 3, 0, 29.5, 0, NULL, 'https://api-fe.avisonline.store/storage/cdrs/698a5b8f895c0.zip', 'https://api-fe.avisonline.store/storage/xml/R-20161515648-5-B001-1062 20260209_221127.xml', '2026-02-09 17:11:20', '2026-02-09 17:11:27', NULL),
(1063, 'B001', 6, 'B001-6', 6, 30, 2, 'S/.', 51.885, 61.2243, 0, 0, 0, NULL, NULL, NULL, 9.3393, 0, 1, 1, 3, 0, 59.38757, 1, NULL, 'https://api-fe.avisonline.store/storage/cdrs/698a5c867bac3.zip', 'https://api-fe.avisonline.store/storage/xml/R-20161515648-6-B001-1063 20260209_221534.xml', '2026-02-09 17:15:29', '2026-02-09 17:15:34', NULL),
(1064, 'F001', 11, 'F001-11', 6, 30, 2, 'S/.', 4.23, 4.9914, 0, 0, 0, NULL, NULL, NULL, 0.7614, 0, 1, 1, 3, 0, 4.84166, 1, NULL, 'https://api-fe.avisonline.store/storage/cdrs/698a5cc54331a.zip', 'https://api-fe.avisonline.store/storage/xml/R-20161515648-11-F001-1064 20260209_221637.xml', '2026-02-09 17:16:31', '2026-02-09 17:16:37', NULL),
(1065, 'B001', 7, 'B001-7', 6, 32, 1, 'S/.', 745, 879.1, 0, 0, 0, NULL, NULL, NULL, 134.1, 0, 1, 1, 3, 0, 879.1, 0, NULL, 'https://api-fe.avisonline.store/storage/cdrs/6992691a04677.zip', 'https://api-fe.avisonline.store/storage/xml/R-20161515648-7-B001-1065 20260216_004722.xml', '2026-02-15 19:46:29', '2026-02-15 19:47:22', NULL),
(1066, 'B001', 8, 'B001-8', 6, 32, 1, 'S/.', 365, 365, 0, 0, 0, NULL, NULL, NULL, 0, 0, 1, 1, 3, 0, 365, 0, NULL, 'https://api-fe.avisonline.store/storage/cdrs/69926bb2b0309.zip', 'https://api-fe.avisonline.store/storage/xml/R-20161515648-8-B001-1066 20260216_005826.xml', '2026-02-15 19:58:18', '2026-02-15 19:58:26', NULL),
(1067, 'B001', 9, 'B001-9', 13, 32, 1, 'S/.', 250, 250, 0, 0, 0, NULL, NULL, NULL, 0, 0, 1, 1, 3, 0, 250, 0, NULL, 'https://api-fe.avisonline.store/storage/cdrs/6996529feb784.zip', 'https://api-fe.avisonline.store/storage/xml/R-20161515648-9-B001-1067 20260219_000031.xml', '2026-02-18 19:00:21', '2026-02-18 19:00:31', NULL),
(1068, 'B001', 10, 'B001-10', 6, 32, 1, 'S/.', 208, 245.44, 0, 0, 0, NULL, NULL, NULL, 37.44, 0, 1, 1, 3, 0, 245.44, 0, NULL, 'https://api-fe.avisonline.store/storage/cdrs/699653658617e.zip', 'https://api-fe.avisonline.store/storage/xml/R-20161515648-10-B001-1068 20260219_000349.xml', '2026-02-18 19:03:35', '2026-02-18 19:03:49', NULL),
(1069, 'B001', 13, 'B001-13', 6, 32, 1, 'S/.', 100, 100, 0, 0, 0, NULL, NULL, NULL, 0, 0, 1, 1, 3, 0, 100, 0, NULL, 'http://127.0.0.1:8000/storage/cdrs/69979bbc74689.zip', 'http://127.0.0.1:8000/storage/xml/R-20161515648-13-B001-1069 20260219_232444.xml', '2026-02-19 18:24:17', '2026-02-19 18:24:44', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sale_details`
--

CREATE TABLE `sale_details` (
  `id` bigint NOT NULL,
  `sale_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `product_categorie_id` bigint NOT NULL,
  `tip_afe_igv` int UNSIGNED NOT NULL DEFAULT '10',
  `per_icbper` double NOT NULL DEFAULT '0',
  `icbper` double NOT NULL DEFAULT '0',
  `percentage_isc` double UNSIGNED NOT NULL DEFAULT '0',
  `isc` double UNSIGNED NOT NULL DEFAULT '0',
  `unidad_medida` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` double NOT NULL DEFAULT '1',
  `price_base` double NOT NULL DEFAULT '0',
  `price_final` double NOT NULL DEFAULT '0',
  `discount` double DEFAULT '0',
  `subtotal` double NOT NULL DEFAULT '0' COMMENT 'Es el precio unitario - descuento',
  `igv` double DEFAULT '0',
  `description` text COLLATE utf8mb4_general_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sale_details`
--

INSERT INTO `sale_details` (`id`, `sale_id`, `product_id`, `product_categorie_id`, `tip_afe_igv`, `per_icbper`, `icbper`, `percentage_isc`, `isc`, `unidad_medida`, `quantity`, `price_base`, `price_final`, `discount`, `subtotal`, `igv`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(56, 1048, 19, 5, 10, 0, 0, 0, 0, 'LTR', 4, 32, 37.76, 0, 128, 23.04, NULL, '2026-01-27 20:16:34', '2026-01-27 20:16:34', NULL),
(57, 1049, 20, 5, 10, 0, 0, 0, 0, 'LTR', 5, 53, 62.54, 0, 265, 47.7, NULL, '2026-01-27 20:17:14', '2026-01-27 20:17:14', NULL),
(58, 1050, 20, 5, 10, 0, 0, 0, 0, 'LTR', 4, 53, 62.54, 0, 212, 38.16, NULL, '2026-01-29 00:33:53', '2026-01-29 00:33:53', NULL),
(59, 1051, 21, 5, 10, 0, 0, 0, 0, 'LTR', 10, 48, 56.64, 0, 480, 86.4, NULL, '2026-01-29 00:40:01', '2026-01-29 00:40:01', NULL),
(60, 1052, 21, 5, 10, 0, 0, 0, 0, 'LTR', 4, 50, 59, 0, 200, 36, NULL, '2026-01-29 00:50:54', '2026-01-29 00:50:54', NULL),
(61, 1053, 20, 5, 10, 0, 0, 0, 0, 'LTR', 9, 53, 62.54, 0, 477, 85.86, NULL, '2026-01-29 01:49:46', '2026-01-29 01:49:46', NULL),
(62, 1054, 21, 5, 10, 0, 0, 0, 0, 'LTR', 9, 48, 56.64, 0, 432, 77.76, NULL, '2026-02-02 22:22:42', '2026-02-02 22:22:42', NULL),
(63, 1055, 19, 5, 10, 0, 0, 0, 0, 'LTR', 7, 35, 41.3, 0, 245, 44.1, NULL, '2026-02-02 22:23:14', '2026-02-02 22:23:14', NULL),
(64, 1056, 21, 5, 10, 0, 0, 0, 0, 'LTR', 10, 48, 56.64, 0, 480, 86.4, NULL, '2026-02-02 22:41:53', '2026-02-02 22:41:53', NULL),
(65, 1057, 22, 7, 10, 0, 0, 0, 0, 'NIU', 13, 18, 21.24, 0, 234, 42.12, NULL, '2026-02-03 16:41:27', '2026-02-03 16:41:27', NULL),
(66, 1058, 23, 6, 10, 0, 0, 0, 0, 'NIU', 20, 23, 27.14, 0, 460, 82.8, NULL, '2026-02-03 16:43:43', '2026-02-03 16:43:43', NULL),
(67, 1059, 23, 6, 10, 0, 0, 0, 0, 'NIU', 6, 25, 29.5, 0, 150, 27, NULL, '2026-02-03 21:50:39', '2026-02-03 21:50:39', NULL),
(68, 1060, 24, 8, 10, 0, 0, 0, 0, 'NIU', 50, 23, 27.14, 0, 1150, 207, NULL, '2026-02-04 17:28:08', '2026-02-04 17:28:08', NULL),
(69, 1061, 24, 8, 10, 0, 0, 0, 0, 'NIU', 20, 25, 29.5, 0, 500, 90, NULL, '2026-02-04 17:30:05', '2026-02-04 17:30:05', NULL),
(70, 1062, 24, 8, 10, 0, 0, 0, 0, 'NIU', 1, 25, 29.5, 0, 25, 4.5, NULL, '2026-02-09 17:11:20', '2026-02-09 17:11:20', NULL),
(71, 1063, 32, 10, 10, 0, 0, 0, 0, 'NIU', 1, 51.885, 61.2243, 0, 51.885, 9.3393, NULL, '2026-02-09 17:15:29', '2026-02-09 17:15:29', NULL),
(72, 1064, 30, 9, 10, 0, 0, 0, 0, 'NIU', 2, 2.115, 2.4957, 0, 4.23, 0.7614, NULL, '2026-02-09 17:16:31', '2026-02-09 17:16:31', NULL),
(73, 1065, 23, 6, 10, 0, 0, 0, 0, 'NIU', 6, 25, 29.5, 0, 150, 27, NULL, '2026-02-15 19:46:29', '2026-02-15 19:46:29', NULL),
(74, 1065, 22, 7, 10, 0, 0, 0, 0, 'NIU', 6, 20, 23.6, 0, 120, 21.6, NULL, '2026-02-15 19:46:29', '2026-02-15 19:46:29', NULL),
(75, 1065, 21, 5, 10, 0, 0, 0, 0, 'LTR', 3, 50, 59, 0, 150, 27, NULL, '2026-02-15 19:46:29', '2026-02-15 19:46:29', NULL),
(76, 1065, 20, 5, 10, 0, 0, 0, 0, 'LTR', 4, 55, 64.9, 0, 220, 39.6, NULL, '2026-02-15 19:46:29', '2026-02-15 19:46:29', NULL),
(77, 1065, 19, 5, 10, 0, 0, 0, 0, 'LTR', 3, 35, 41.3, 0, 105, 18.9, NULL, '2026-02-15 19:46:29', '2026-02-15 19:46:29', NULL),
(78, 1066, 33, 8, 20, 0, 0, 0, 0, 'NIU', 5, 20, 20, 0, 100, 0, NULL, '2026-02-15 19:58:18', '2026-02-15 19:58:18', NULL),
(79, 1066, 34, 11, 30, 0, 0, 0, 0, 'NIU', 6, 40, 40, 0, 240, 0, NULL, '2026-02-15 19:58:18', '2026-02-15 19:58:18', NULL),
(80, 1066, 30, 9, 20, 0, 0, 0, 0, 'NIU', 5, 5, 5, 0, 25, 0, NULL, '2026-02-15 19:58:18', '2026-02-15 19:58:18', NULL),
(81, 1067, 21, 5, 20, 0, 0, 0, 0, 'LTR', 5, 50, 50, 0, 250, 0, NULL, '2026-02-18 19:00:21', '2026-02-18 19:00:21', NULL),
(82, 1068, 37, 13, 10, 0, 0, 0, 0, 'BX', 4, 52, 61.36, 0, 208, 37.44, NULL, '2026-02-18 19:03:35', '2026-02-18 19:03:35', NULL),
(83, 1069, 23, 6, 20, 0, 0, 0, 0, 'NIU', 4, 25, 25, 0, 100, 0, NULL, '2026-02-19 18:24:17', '2026-02-19 18:24:17', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sale_payments`
--

CREATE TABLE `sale_payments` (
  `id` bigint NOT NULL,
  `sale_id` bigint NOT NULL,
  `method_payment` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `amount` double NOT NULL,
  `date_payment` timestamp NULL DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sale_payments`
--

INSERT INTO `sale_payments` (`id`, `sale_id`, `method_payment`, `amount`, `date_payment`, `created_at`, `updated_at`, `deleted_at`) VALUES
(55, 1048, 'TRANSFERENCIA', 151.04, NULL, '2026-01-27 20:16:34', '2026-01-27 20:16:34', NULL),
(56, 1049, 'TRANSFERENCIA', 303.319, NULL, '2026-01-27 20:17:14', '2026-01-27 20:17:14', NULL),
(57, 1050, 'TRANSFERENCIA', 242.6552, NULL, '2026-01-29 00:33:53', '2026-01-29 00:33:53', NULL),
(58, 1051, 'YAPE', 549.408, NULL, '2026-01-29 00:40:01', '2026-01-29 00:40:01', NULL),
(59, 1052, 'YAPE', 236, NULL, '2026-01-29 00:50:54', '2026-01-29 00:50:54', NULL),
(60, 1053, 'TRANSFERENCIA', 545.9742, NULL, '2026-01-29 01:49:46', '2026-01-29 01:49:46', NULL),
(61, 1054, 'TRANSFERENCIA', 494.4672, NULL, '2026-02-02 22:22:42', '2026-02-02 22:22:42', NULL),
(62, 1055, 'TRANSFERENCIA', 280.427, NULL, '2026-02-02 22:23:14', '2026-02-02 22:23:14', NULL),
(63, 1056, 'TRANSFERENCIA', 549.408, NULL, '2026-02-02 22:41:53', '2026-02-02 22:41:53', NULL),
(64, 1057, 'TRANSFERENCIA', 276.12, NULL, '2026-02-03 16:41:27', '2026-02-03 16:41:27', NULL),
(65, 1058, 'TRANSFERENCIA', 526.516, NULL, '2026-02-03 16:43:44', '2026-02-03 16:43:44', NULL),
(66, 1059, 'PLIN', 171.69, NULL, '2026-02-03 21:50:39', '2026-02-03 21:50:39', NULL),
(67, 1060, 'EFECTIVO', 1316.29, NULL, '2026-02-04 17:28:08', '2026-02-04 17:28:08', NULL),
(68, 1061, 'PLIN', 572.3, NULL, '2026-02-04 17:30:05', '2026-02-04 17:30:05', NULL),
(69, 1062, 'TRANSFERENCIA', 29.5, NULL, '2026-02-09 17:11:20', '2026-02-09 17:11:20', NULL),
(70, 1063, 'YAPE', 59.38757, NULL, '2026-02-09 17:15:29', '2026-02-09 17:15:29', NULL),
(71, 1064, 'TRANSFERENCIA', 4.84166, NULL, '2026-02-09 17:16:31', '2026-02-09 17:16:31', NULL),
(72, 1065, 'PLIN', 879.1, NULL, '2026-02-15 19:46:29', '2026-02-15 19:46:29', NULL),
(73, 1066, 'YAPE', 365, NULL, '2026-02-15 19:58:18', '2026-02-15 19:58:18', NULL),
(74, 1067, 'EFECTIVO', 250, NULL, '2026-02-18 19:00:21', '2026-02-18 19:00:21', NULL),
(75, 1068, 'EFECTIVO', 245.44, NULL, '2026-02-18 19:03:35', '2026-02-18 19:03:35', NULL),
(76, 1069, 'YAPE', 100, NULL, '2026-02-19 18:24:17', '2026-02-19 18:24:17', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0slsxIlCzcmrgO2g8BYQtKtYGTo7MlxZzOhGTEbR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3NKRkV1RWJPVUlGdWZlM2x5b2FZWGJ1WmNZUVQ0SnZRMm9UaTVSaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9kNXVGNnVOdlcwVkVFOGpHRGM4OWhOUVFGbW1TcFJOZndVSnFBWlhPLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472620),
('19pkukUwOTKvmIcfrcFm8tggS1iZPqv35UgALrgs', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmUxdU5NZTN3bVJTVHBtN0swQkhzWUlRZXpRN0ptUDU2WWdRdTV2NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy93YllEeFBpM2pEVEJheEpTbmpvWXpBVjBob0FMM3l4em1uaVFFSjduLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472943),
('1JkvkRSuNyvi5EOTu58JwAxmKB97UIOBBSs9lQkP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWVQbXNha0tGNjNSRW5XbVF1aTltMHhlQXRjenJ1YVhRcmx4amVRbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9jYXRlZ29yaWVzL0lRbkJWenEzSnRZNlZSZ3FNaXlMR29JMFNHOHViSWpNYXQzZUZ4TjkuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771472634),
('2cftJ3jWNbUgkDIcxbHRC6RI2HrHoS7676WwRqY4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic21nOFBTcWY4bjNDYUdFbnZoTnlRRUl0ZEM2bUpUa3N2MmNkRXJXOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9BMjBadXdKZTc5bnc2R0V1NVB3RWtadWJqY1JjckNFZ1B0V05ZV3ZhLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771473063),
('2Fuw3mwCVdwqGUFkDbTcpLMoAPpUIhfHfhY5wILV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTG1RdXlzTVhveU5TOGhHRGNVQnFuWE10NDI4U1JzUXp1Wnh5VmhCQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy8yZjNQcU5lTmtOZDJ1V2w1ZU1LdTNCM2ZLbENjRjREZDRoQkh2RUZ5LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771473058),
('4BjygLzJ5MJ8mPwtxXQAt0Pnr0XegfaNlp1KU6jX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNVEwOFliOWdKNDNKZ1dNaEZHa0ttTnhnVlRaTlVSODVQdnBUYTB4MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy93TzFURk1JVTZHdmhPVVBBRTNjdVRvV0JERkxobVdSTU45dThPMFZRLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771473067),
('54tZmnpfcJ0qqUJArHPAFKTV9cyuzgmJPwlrNvYJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWFV4d0hhUjhOMWFoWVNUeXdkU0hKN3Q3NFpCVXlkT1J1Ukk3TTlKZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy8yZjNQcU5lTmtOZDJ1V2w1ZU1LdTNCM2ZLbENjRjREZDRoQkh2RUZ5LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771473173),
('61bHWWEOr3lasN9frgUpYdiWWYqNRGvmroT1ODW7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1hOc2t6Tmp5WVlXa2JMWUxhTWVIejAyTTdCUDJkVTQyalY2Q0NsWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy8yZjNQcU5lTmtOZDJ1V2w1ZU1LdTNCM2ZLbENjRjREZDRoQkh2RUZ5LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472947),
('6WZhs1kkbb1qqrtFcSD3uEQJEXrQ8jaCGKgXhI7W', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUFqZ2hpb1ZhVnpYUDVaNzNBMWJYTG5rbTV4WmhWemlLMkp0YXhjayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy8yZjNQcU5lTmtOZDJ1V2w1ZU1LdTNCM2ZLbENjRjREZDRoQkh2RUZ5LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472953),
('7LxQg4npyZaWTPMnyLtPNYLVM3bXGIc6WeG5O5Z1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGNlREFiS2RhcEJHMnBLcHdjRHNiTFpsUGZWZHlvQ1M2UU90N2xTSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9pZGlheEp1aTN2em9KaU1RUzluYTRWQ3lUM1NWVUdEUWI4QlhSV0NsLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472945),
('9I7fJZZammKs0E2HUbeguRwnT5w7ia3ECx4cgyJW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0VUYXhOUFhtTW1veThNVzNTVGZyUWhjNUo3dUhoSE1CNjBhTWV0NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9jYXRlZ29yaWVzL0t2Wmk0ZjhiM0VrdmRZdFpPVWNlRU9HR2NRSDRXSzB2WDJHZHNLWGouYXZpZiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472819),
('agOWAD3yf8njSxsDfxBYOGdfsTWpGwTZNKEtJDoN', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0dlSWJDcmdqZ0xjZkQ2UkYxS3NiVGtUU3NBZzZwejBGT0YwSUhhaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9IMlYxRUxkV1BVYm0za0ZoYzdTamRCaWlFTFphbVR3U0lNRzBBUTJGLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472908),
('BF0ZA6ZLZV6hpueY5R9gCEoQel5ss5ydvQP9DPs5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieENwQVpId1Jxb0N3NXRPVEVaMnRMVG5OdUdEdGF6REtqWUcwY2NwSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9MYVFldzlwN3l1dUtla041b2pmbEpYZThPaVBiR3NXa3dpV2FOWHVyLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472624),
('bkdhoNIGlDJlEK65DxYyOtFQx9hPV3y2th1Lw5NX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlJxeFRRRTJ2SmVBa3RyUzBVU0JiYWY5cEFHazRCYkI1TlF0WnRBUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9kNXVGNnVOdlcwVkVFOGpHRGM4OWhOUVFGbW1TcFJOZndVSnFBWlhPLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771473065),
('bZEsl1n0rhXhhdbQJhdTvg2B90MympV2ckhimP2Z', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXVBbjBnbEhOM1NTUEg1c3htMUVBNmNBMzB0ZnI1ZkxtN3BWU0RaaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9yZ1Z0bFpMeUVRUG82QzA1U3A4V2tPdjJ5UFF3WFpQVDhyZWdiMlhxLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472849),
('CIbscfahNmASqhLNcS7OTd7UGkIWbmQFXQRBPiSl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGk4SFFEeVh5S21xV2lmZFlBSFQ5Y2FRZTdZNHJZR3VtaUlDcXh3SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9yZ1Z0bFpMeUVRUG82QzA1U3A4V2tPdjJ5UFF3WFpQVDhyZWdiMlhxLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472950),
('CNEpmI1dzf1u7PUwr6peGYsoGkSPgvjwajSKYgsK', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNzBCbnZiNVNBdUdGMlR1cUdtM3U5bGdWeVlRTUFjRXJGdENDMUJyVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy93TzFURk1JVTZHdmhPVVBBRTNjdVRvV0JERkxobVdSTU45dThPMFZRLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472946),
('EYS57lK7WKOccD1cBzruClA7VtuATEp0naBTQVUE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN2pZeTlqZ044aHM0YXkxaHdEUlg5dHpWellTUkp4bmpQc2ozN09xbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9jYXRlZ29yaWVzL0xpTnlzelFER2h1ZmhYN0ZxTDAwWE5SYTVoVVJUcjdSUTJlOWZ1eXQuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771472636),
('f9fVWmJXmzaoaaNNGEWWURaSQjKFeLzOCQCvbhvJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUpnT0k4NUJTVFl3NmYySHR0dWZqWng1M3JMbUx4SndXN3k1cnNnRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9jYXRlZ29yaWVzL1doc09TdkZHNVZ5cnVnMllIWEVYV2hrWHVrbzJVc1JsVVZVWDNNNXYucG5nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771472818),
('fHaFEbtcAMZNv33Qe5zrvWEVAbJRqgMsHpaGeVzV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVnJxMHNscU5LYVhraWN2UXp4YUtOTlZMNm5NYlJKd3ltMHVpRmxKQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9IMlYxRUxkV1BVYm0za0ZoYzdTamRCaWlFTFphbVR3U0lNRzBBUTJGLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472839),
('fmfSkE9TCEMasovr12EIDuHTlcpW80R4pJiNXr1k', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYkpmRThBTGxZYTBETWhnMWNqbXBkTWNESGNjTDcwdk16a3NoVWk1cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy82TTU3TTZsWkRVb3UxYzhYeWlCYUlNSGhJZDRDWjBmbHdjcksweGowLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472877),
('FSc21bhn3TXyORFITehRl3nz6VWHCUzcYlLifNJl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV0lVNmpoaXJMTkdDTVZGSnk2SERFVUo3UlJlbG1LaFBPd1RMYVF2OSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9jYXRlZ29yaWVzL2NqbFh6NlAyRUNYdU9ScUI1eGJSUXdyTHZHWklKVm5wQllzWEEwNGcuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771472636),
('ftFJS1cU6IXljcKjFlUSgo06V9OccoKg9XLmVjmv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVhvOGVoZExNR2RtVjZqUWNEZFplWVNDNVVRSTZsdkhqemdGSllsVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9KWEk3blJtMVYwQnFLdWJMUG83aXFXOVd1T2FoU3d2bmpMUUNmUWZTLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472847),
('gDeXheZTSUWlXlJOiK4PsIe5VNZ5c7kNJMAMyQaB', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2dyQUpQY0RJWEc0Vk5Qa3dGMkFQam9MeVAzcFc5cW5wZVJCS3ZVWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy94RmNxYnRjU3FEbkxnYndRT09PUDVhc1E1ZE1rY3lZYU03a1lRbVcwLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472949),
('Gf3EiRzR6aSXxpQGTMJCxPlRCcUUlTm0RFUqGxDf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoianM3RGMzNEhiZFJ3RWllY1B5ekhoZVlsWVZqakdVdUZqb3dpSkdwTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy94RmNxYnRjU3FEbkxnYndRT09PUDVhc1E1ZE1rY3lZYU03a1lRbVcwLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771473067),
('Gi9jBffQ0EQDzMIfD1C6V8tqo5AwerbThJmRe5ho', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWRKZldvcmE3Q0hVY3dGclF6emlDSjUzaWQ0c3U3Y2VxTzZicksweCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9jYXRlZ29yaWVzL05GaG1vMEhWNlA3NzhQZXZqUVlMcUJoTU9JdnZaYWVxYVI0VEZiR28uanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771472817),
('gj84z9yYr5uoekpAjVlxJbpU0dPId7a9FhgMB9O5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicU5HOHRLZkhoQnUycEw0RFVRdERMN0JORWNlOThsRXRraFpkWTJFZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy8yZjNQcU5lTmtOZDJ1V2w1ZU1LdTNCM2ZLbENjRjREZDRoQkh2RUZ5LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771473177),
('Gjtjdk6lwDrMGEOKVw7IgRNGxXFDB2cATuloLYM4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlZodGsxRkt4bkROUWsxZWwyU2dyTVl1RkJ3bkk0YWZRMnBzVjFsSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9IMlYxRUxkV1BVYm0za0ZoYzdTamRCaWlFTFphbVR3U0lNRzBBUTJGLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472867),
('gkSZH0vKboEBjqGht7VJXwc0H5hx2ci4rZTjHGLS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVV6OEV6TTFOSHREYlZzNnRRTUJ5VEM4SEJSTWxKTGZmZ3dld29NZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9CTVpMMGtTRDlTUzVWeXV5R1Z3Tm1SMk0yMEl0ekx6b0I3TVhXVk9qLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472943),
('glfLtnSp1MY931VpjJ5cB8hplIVzspnQoVJtszMT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieWUwWTZBT2R3RDBRd3o0RFJuSU5sWWtoem5LWkFiekYyVVYxVlBoVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy93YllEeFBpM2pEVEJheEpTbmpvWXpBVjBob0FMM3l4em1uaVFFSjduLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771473064),
('hAwINudZHjiYr4YjjnUFGQgezQ8UVHuEIVE9ZVTz', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmNZNXptZVJHY1FSbUVGdExNMnZGdksxb1dnTG1rWktLMk5TZXBWcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9MYVFldzlwN3l1dUtla041b2pmbEpYZThPaVBiR3NXa3dpV2FOWHVyLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472850),
('HfQZ9t2cD4W8fnQAp2nACCfd2k4DbCI22NaAIJBa', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXhOM3dEZXhRanlqV2h5bXBPdU5Ed2p2WDFnTEd0Y3VpdFozTGJhNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy93TzFURk1JVTZHdmhPVVBBRTNjdVRvV0JERkxobVdSTU45dThPMFZRLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472622),
('hK5F9yPq77aPKuEM9aDaO9innSlbeSTWwsUXGIQe', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTU8zNVlpaDNiWm8wUXBJZFppMVVCekc4dlgwM3Bwbm0wMmljYzRHUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771545146),
('irqHMe4CLhTc6ZZ1JqVC0Lcwsb9GLUEoVn4ZDlKP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUUU4VFB3SzUzVEJYSDlYUXJnYXNDRFp6SFJPY1hITnV3aDJ6VlJuTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9pZGlheEp1aTN2em9KaU1RUzluYTRWQ3lUM1NWVUdEUWI4QlhSV0NsLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472620),
('IwKTcHnlxAFxujyUNVQhGqcTPWXtK0XPbt8YvAWv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFZ6YkpaVkp4SDE3NkFuNjdwTjR2Z2h5MlFkbUpjUWlzdzQ1TGhTMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9KWEk3blJtMVYwQnFLdWJMUG83aXFXOVd1T2FoU3d2bmpMUUNmUWZTLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472621),
('JjGHTZzj5NUMt8MQediaYuM1ttMhz7CnVg8BdcAE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQzl4Y2oyQ1RBNW16YU44aFB5NXZzU1E1eDFrd2Y5Y09PNnVxQ2pjaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9yZ1Z0bFpMeUVRUG82QzA1U3A4V2tPdjJ5UFF3WFpQVDhyZWdiMlhxLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472623),
('jNgILrluvc5WBdM4PpwUiNH5udLYy1fEPOhkjV8c', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMml6SWdDSnM5RVltd3FqUmJuRGFzZXB0Nndtd1FWS29HZzZ4OUF6MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9yZ1Z0bFpMeUVRUG82QzA1U3A4V2tPdjJ5UFF3WFpQVDhyZWdiMlhxLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771473068),
('JyJ6GPq7P7CHXvw55INhoK2E6CslzjkP5yxzsfNx', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid0JIOFVCZHJXUDlQYUJGcUh0M2pZdmJIZW5CQzQ0TjBDeWt3Tm9nMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9pZGlheEp1aTN2em9KaU1RUzluYTRWQ3lUM1NWVUdEUWI4QlhSV0NsLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771473065),
('K5JYtLtS7yJXhkk4G6UsXxjpoYgl0TGvZi1DpX8h', NULL, '185.177.72.56', 'curl/8.7.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib01JUTdWWERsQ0k5SzduV3lZZktoVnRQekZLUkhvT1FvSGl0Q1U1QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1771469722),
('KDyCGGJ08GtxX1BZXbpVKQ1ywOeRZQesIgIEw92s', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSDcyNjlWTzJIdzFUWHZ0T0lTZXp6Z3JmOXpnNVR2V1kyR2d3bDAwZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9jYXRlZ29yaWVzL0cyRnVSNjJaR2NMMVhsM0dlNnNVaGJqbWJ2T0MwQWFEbll6aHV0MGguanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771472816),
('KMZjre1YiXsWEWFiGlsih6RJDs7RTSrKX3NhgN26', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUFhBWGQxdnFPNlFTQmJnd1M2eWd2cU5hdVhkRVdYNEtOeU8xNG1NYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9jYXRlZ29yaWVzL2NqbFh6NlAyRUNYdU9ScUI1eGJSUXdyTHZHWklKVm5wQllzWEEwNGcuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771472817),
('KoXLeNAmhzGBvwMR2JQJOmeDOo1TTDrAwRQPGG8Y', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQUNpM0w2WFlscXpyc09iMUFtWjVwU21xajVtSmRTUFpHSmdDOGRmNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9BMjBadXdKZTc5bnc2R0V1NVB3RWtadWJqY1JjckNFZ1B0V05ZV3ZhLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472618),
('Ks9HagN6ysw5StkOCGN8sOe8fmISC11CjPFlT1qj', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0JIdXdQeU9JbXZRbTRnelNlMWVhWks5TTV4WTdvVVZkYzljeHVPTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9IMlYxRUxkV1BVYm0za0ZoYzdTamRCaWlFTFphbVR3U0lNRzBBUTJGLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472858),
('lJXXHPPX43DCXt47brXwUhM3kUwQ9EVmSBzydOsV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3huOWJpeDNBazRKWmNTb3RzanlXVG85RVVyMlZIOVJobmdDUHdVUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9KWEk3blJtMVYwQnFLdWJMUG83aXFXOVd1T2FoU3d2bmpMUUNmUWZTLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771473066),
('lqgDSnlJR8anuc0EGyxgUR7ua33rvkRLfRdQiZL8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlJPaFE4bms5NFlhTlFkSXIyMkFQcnhKQUdFamFTTlRUWHFuaWJ5ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy8yZjNQcU5lTmtOZDJ1V2w1ZU1LdTNCM2ZLbENjRjREZDRoQkh2RUZ5LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472934),
('Lr4CkF3dvDpMqWJ9Tx6OCcM01YjDTTzW8sXneMUD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibTBTOXh1T3E5U3NyN2JPTXRnbUdOT1ZQYmNWd1d0Vk81MU1kc1hQZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy93YllEeFBpM2pEVEJheEpTbmpvWXpBVjBob0FMM3l4em1uaVFFSjduLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472619),
('M3cNaF3wbaaPuqItee91SdoZ5B99D4cuwAffxQT5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVg1cEVqUk1CZnJ0VVlWbXZ4TDNGQlVVYVVEZjd0T0doOWdTSnFzUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9BMjBadXdKZTc5bnc2R0V1NVB3RWtadWJqY1JjckNFZ1B0V05ZV3ZhLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472844),
('M6P8yxCtzp8DP9uDOCcte70qurkJWmx6f4KdwaO9', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1o2ZThva2pGU0NLRlB5SmdyM1IydGN5b0FNc3Y1RGNDbDNHd1RrSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy82TTU3TTZsWkRVb3UxYzhYeWlCYUlNSGhJZDRDWjBmbHdjcksweGowLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472812),
('MIwMFQU0rbd0XXjJIleyNwdu2Jb8pjbPERyGbg5t', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicm9XVEZ5SnFiQUdQR24yb29saHhQTE5hZDlPVFdvS2lKUGp5c1REViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9CTVpMMGtTRDlTUzVWeXV5R1Z3Tm1SMk0yMEl0ekx6b0I3TVhXVk9qLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472845),
('MrDfwMXtjasK9dp8seYmGeevADhLrBvDKjmRxBGv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEI4cVpac21ES2ZkRzFlR2JFZTBjZ1NSNDVYWE92Q2JWTXc5RTBqNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9jYXRlZ29yaWVzL2VrTmVrM1pEbWpEUHVjUTZtWEp6WTR2aXp6YW9Qc1VGaDM5WHZMcWYuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771472633),
('MxJIXhsB0WAezWA52Z4AkK7uZDlbbFWLh3WrHCuz', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUN1ZERWeXRNQ0JCWWwyeG9KVXNpOXR0azNjMk10aWlvVzF2a3VXUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy82TTU3TTZsWkRVb3UxYzhYeWlCYUlNSGhJZDRDWjBmbHdjcksweGowLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472612),
('NvLuuPA2DAYvCKhffM2uMGVJxAMfBlghRCI3lOz0', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMG9zc09xU2hyU3RqbTVxSUVoMmg5eFdldERpOHlkSHMxMTltRVk5RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9kNXVGNnVOdlcwVkVFOGpHRGM4OWhOUVFGbW1TcFJOZndVSnFBWlhPLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472944),
('O7rRVVZ0a5v3oEpioZ0gewVTBiXTT89kCIrUAarT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjNFNHZyNDBpVkZPYW1ka1cwWGJCZTNTRE00TlBJZzNQZlFIOGJHMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9jYXRlZ29yaWVzL0t2Wmk0ZjhiM0VrdmRZdFpPVWNlRU9HR2NRSDRXSzB2WDJHZHNLWGouYXZpZiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472637),
('OH3xLZljhWVaa9QyVP1zQVMfMGYBB3t6SDON6nJU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQUJyM1hLVmFWNFNMTXpVTXhUUjNIZnRlNDh0eGFvMHpDWW9jS1VyYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9jYXRlZ29yaWVzLzN4dXZJM0ZTenpjNmtJV0pHMmlFazBCRTZxNnl2eG94Q0JYSWREWEcuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771472814),
('ouVWXM4sVjL8Kjv6M8WDJhW78LAzte4ovCN8APip', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUllxTEJIMnpldDRoNkI5czBDM2tLT3dNSUdEbnVETzh0UFV5a1BPViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771550071),
('pcfpQQlxnhiM9WwCylbwkb6BIKizNJkGNelUJxE9', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ1BMbXJ6UGY5QlhjS0NCYlR0Q1hadUJnVnlRaThHamJyUUU2YWkzTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9sdU1SVVVuVndITmI0Q0gzOUo1emhCWDJwRGdjSFl4aXVlZkl0S2NiLnBuZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472843),
('pDqm0P4lNzIFhtnA3RrrVcMPbgzJWMIQqMyTSYKL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVZTWmZleGdYeURzM2M5SE45VjJjOFA5b0d0aTNOaGhMU2FXdVhibyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9MYVFldzlwN3l1dUtla041b2pmbEpYZThPaVBiR3NXa3dpV2FOWHVyLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771473068),
('q0KaP1lFptxaqvIYcGmAMPZ7gzMVL9XC9OUFctlP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3J6NDNSVk9CeTI5QUZ4UUdldk1ZZjVBbnNFY3hYeWlDY1VZOTFXbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy94RmNxYnRjU3FEbkxnYndRT09PUDVhc1E1ZE1rY3lZYU03a1lRbVcwLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472848),
('qGABaq62Hmj3iJ8cvnHpoyeXdZ5Eo9d0BTUW9kqM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic2pTb1huYnMyVEk5bEZSdVVEOXFubkRGaERQdWxSeU5mVzFqWEJyaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9jYXRlZ29yaWVzL0cyRnVSNjJaR2NMMVhsM0dlNnNVaGJqbWJ2T0MwQWFEbll6aHV0MGguanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771472635),
('rjjQC2YBL42HEvZV6TBC3MeeIGGnVlKxPt34fGHL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiczd0MGRJNE00YlpVOFYwblJpM2NHRm51QWlZaWo5R2hxTDNWTlF6MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9sdU1SVVVuVndITmI0Q0gzOUo1emhCWDJwRGdjSFl4aXVlZkl0S2NiLnBuZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771473062),
('RUhn6T4HJHRn6OjprAnXgsPoKpk7iul0ccR5bPwM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHIxYlVyUENiMkpCU3ZYRWRNNU1CS21XMFlHZ1RQdlhuZ0NZUnRLSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9CTVpMMGtTRDlTUzVWeXV5R1Z3Tm1SMk0yMEl0ekx6b0I3TVhXVk9qLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472618),
('Rz0B2i8FfGmLJTQboJfRLibv7c3yFqWEEjReeP3W', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibG5ZZTZXZkoxNTRxMmNBQTFaRkViaXc4YVFjRUI0SXVYeWJFVUJqOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9MYVFldzlwN3l1dUtla041b2pmbEpYZThPaVBiR3NXa3dpV2FOWHVyLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472950),
('sic0K3y6AISoN9wwZp6J5hEBbZKYuFaC3QGauJTc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2ZPV3NJeTNZQ2luRlNpaTFsMDFIeENWbnZxSkJrUjFtQklVZ2YzRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9jYXRlZ29yaWVzLzN4dXZJM0ZTenpjNmtJV0pHMmlFazBCRTZxNnl2eG94Q0JYSWREWEcuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771472633),
('T0TK4np9xDncwCuAwt3u2KXPJw3IB3PapfdA2jts', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmZXdlZDN3NqejRGMzBrYXR0WW8wTk9pd0VMYTFINlduTHRwUGoySSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9KWEk3blJtMVYwQnFLdWJMUG83aXFXOVd1T2FoU3d2bmpMUUNmUWZTLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472945),
('u3Q8rRyxsNfbVh7B9QF7sC1Iecj5XLV7Wy0HG4BQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUGx1MWVtUG1YNk9vYWxKaGRValZac2FiRTh4Z1NsYW15amtXWmRZSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9sdU1SVVVuVndITmI0Q0gzOUo1emhCWDJwRGdjSFl4aXVlZkl0S2NiLnBuZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472617),
('u4mMguZTIgc1SMZ7bOqBNY3JjjZtbrkva3QAvnN5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicVVua2FJRDVIZWYzY1QxVjZSaFhNS1ZWeGFCUmJZc0M0SVlzaHhsUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy82TTU3TTZsWkRVb3UxYzhYeWlCYUlNSGhJZDRDWjBmbHdjcksweGowLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472631),
('ubGjcCVwR3SRikrtNemJd11xOCvURZ64T48oyifz', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV0c0T0txMllEY3c0WnBnSUlqaWdHeHF1bHdDeTE2ZzlYQnd0Q1RYNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy93TzFURk1JVTZHdmhPVVBBRTNjdVRvV0JERkxobVdSTU45dThPMFZRLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472848),
('uV9jFNhdWHd9Paci5T2wbjcAQ17xi1CBMuXv2OJS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidkxESEZlUDZSdGNKbmp6V0toMXFQUnlOdWZRNUFHdzFBbWtZT3lGSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9jYXRlZ29yaWVzL05GaG1vMEhWNlA3NzhQZXZqUVlMcUJoTU9JdnZaYWVxYVI0VEZiR28uanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771472635),
('vUiuiOp6Vj1gcJZFYySxXlf0mnCnwgkxmcHgtVrm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUW5kajgwN1Y4anFHWEZ4dmlmYmpMRHNsRUZOb2pkUVpKV2kwM296dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy93YllEeFBpM2pEVEJheEpTbmpvWXpBVjBob0FMM3l4em1uaVFFSjduLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472845),
('w1xB0be9bBO6uflH01CMIty9FXKzPWE9nXZVtdIH', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0NTM2syVjJUWll2bmlzNGVHWkpRcUxXWHgzbzBRSkFkSHFjeVNsMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy8yZjNQcU5lTmtOZDJ1V2w1ZU1LdTNCM2ZLbENjRjREZDRoQkh2RUZ5LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771473184),
('w6vFbWV952n4YjTdpBQu5oXFI6zvYAYzIVbrQ1x9', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGtBUVNnM2J1Ykp5TlIzR3FzSEZRWlFwTTMwRWRqOFJTaDJha3RmNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9pZGlheEp1aTN2em9KaU1RUzluYTRWQ3lUM1NWVUdEUWI4QlhSV0NsLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472847),
('WCZ9lBV2izjBvMrstFQe5DIE4W2QaHCQUWK0fNyw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoianBWeHMwUkl1UjE3dW1IejQ0dHNMMUNvZXY4RXE1ampIZUppYTU2dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9jYXRlZ29yaWVzL1doc09TdkZHNVZ5cnVnMllIWEVYV2hrWHVrbzJVc1JsVVZVWDNNNXYucG5nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771472638),
('Wr1HneTwGuKfjKfMNn7NJk6AqJX3Oa6T42u4FBxn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWpHd2puV2FWRlY4N2NsN1NvdGk4d0lieE55ZDZ0dW1RRnhZeFdSWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy94RmNxYnRjU3FEbkxnYndRT09PUDVhc1E1ZE1rY3lZYU03a1lRbVcwLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472622),
('WREDu5sfHtRdAz7NbbGFQoPKllPgUKqK8VVMKkmF', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjFuNHRnUjN0M0NKNGEwUVhSc2lIQWNWMjhkVEdaQzhBcmkyYVlPOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9CTVpMMGtTRDlTUzVWeXV5R1Z3Tm1SMk0yMEl0ekx6b0I3TVhXVk9qLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771473064),
('wU4m74su24ZjCQPs9NlaIUwjlqZ2YDiJiO0P56z2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDVCTEhQbHU3RmN5SXZ3UXFrUlpvVFZRVmtNaXlFejl4MkU1dFVjOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy8yZjNQcU5lTmtOZDJ1V2w1ZU1LdTNCM2ZLbENjRjREZDRoQkh2RUZ5LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771473168),
('xbV8r8Z5kvwd0yEkmcKGW5wr6QlNDwOPF9lASgsS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGJvbkVKa1k1cFRpZTk1WnFtYWpxc2g5aHVUZW1vT3p1NG81RjE1MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9sdU1SVVVuVndITmI0Q0gzOUo1emhCWDJwRGdjSFl4aXVlZkl0S2NiLnBuZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472941),
('xxJfKOnzmBJokjLDlHySxhOWXmtWXnqWyDiG7LmC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidlhVbWMyd2dYQ2VmVms5OEpmWUIxblprcEl5UUNKVHlDOEFXQ0kxYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9BMjBadXdKZTc5bnc2R0V1NVB3RWtadWJqY1JjckNFZ1B0V05ZV3ZhLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472942),
('XYf8qUeBp5ApfyAD0ZsDC27bmd7KzfOhtROksrwE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaXRYWWkwMTNqelNKWUcwUW9Leks2a2lOT2o0VVVuMzlna0ZFNWlJQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9wcm9kdWN0cy9kNXVGNnVOdlcwVkVFOGpHRGM4OWhOUVFGbW1TcFJOZndVSnFBWlhPLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472846),
('yB7lpoxpovW899lE1YWef8Fu7c2XbkoZwJZSnYaE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWdXejFrUXZDbUxoVGdQdWZWODZyUHJyRW90WWs0T2xYNWJDTllwaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy9IMlYxRUxkV1BVYm0za0ZoYzdTamRCaWlFTFphbVR3U0lNRzBBUTJGLmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472856),
('YJ7dOEk91pgMGfap5DNPrl5HsQIrfx6iPmAIuFqw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVG9kaWNoRTNXMTlOTzlzYTZ5OHZCbmtCQWZIRklpMG9QeXZMQ2pBeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9jYXRlZ29yaWVzL0xpTnlzelFER2h1ZmhYN0ZxTDAwWE5SYTVoVVJUcjdSUTJlOWZ1eXQuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771472818),
('Z1L98jELvHpTqndd4eXz2vEHy1z9mbFkb3wHDds8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiczhudm8xMmFDNHQzb0N4WHhIa0N1Q2pNOGlOaEo5ZGRZaWMzT0lZdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS91c2Vycy8yZjNQcU5lTmtOZDJ1V2w1ZU1LdTNCM2ZLbENjRjREZDRoQkh2RUZ5LmpwZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771472902),
('ZUbuDChqX2Grh9XEOwJIALkdBDUEiO4xbxVG5Q5B', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnIyOUg2b3I5NWpjRTU0VUFXVUhrOWhrTGdxZktSR0JFenJWZHo3VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9jYXRlZ29yaWVzL2VrTmVrM1pEbWpEUHVjUTZtWEp6WTR2aXp6YW9Qc1VGaDM5WHZMcWYuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771472814),
('ZUFtSAAELYAZ4fR2wgYU5ZNlyfv7pZk90jqQDhKe', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZlMzckxXdGJtbllYYXNFZjZyWW04d0E4ZENBb3dFQU5TVGNTT0EwdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8vc3RvcmFnZS9jYXRlZ29yaWVzL0lRbkJWenEzSnRZNlZSZ3FNaXlMR29JMFNHOHViSWpNYXQzZUZ4TjkuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771472815);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_document` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `n_document` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'M',
  `state` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '1 es activo y 2 inactivo',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `surname`, `avatar`, `role_id`, `phone`, `type_document`, `n_document`, `gender`, `state`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'Nolberto Luis', 'nolberto.sumaran@gmail.com', 'Sumaran Pimentel', 'users/2f3PqNeNkNd2uWl5eMKu3B3fKlCcF4Dd4hBHvEFy.jpg', 1, '940078299', 'DNI', '75692184', 'M', 1, NULL, '$2y$12$McwV9K72eapcwybCVWsPP.Z/InOlVX0.ro87B/h7uONzkf2SDy/Oq', NULL, '2026-01-22 20:47:31', '2026-02-19 08:48:16', NULL),
(7, 'Sadith', 'rocio12@gmail.com', 'Rojas Ventura', 'users/CDEGpwKXiANJCavRzRlCnabhsC6JtmU6ppjaKVNQ.jpg', 2, '940078299', 'DNI', '7654321', 'F', 1, NULL, '$2y$12$EW.Y/sJTJUqiolz5TlObr.sx8tJTRuijvIj25q8UoLzbsX3gkyhlC', NULL, '2026-01-22 21:35:25', '2026-01-29 05:42:42', NULL),
(8, 'Romalda', 'romalda.p@gmail.com', 'Doroteo Pimentel', 'users/hxUbnhTHYvV0cyKBam17NEt9z4gGRQxMELBIaxGd.jpg', 4, '930518038', 'DNI', '8765432', 'F', 1, NULL, '$2y$12$seTj7EqZfwLaekR92oXP9O827krbByA8MlpXXJwIRbRPvDGCYHNUS', NULL, '2026-01-22 21:43:21', '2026-01-29 05:42:15', NULL),
(9, 'Luis', 'luis12sumaran@hotmail.com', 'Pimentel', 'users/o0WOEE67AvSyyNTMmXq7SuZDUzJeT5hafIm5COlT.jpg', 2, '940078299', 'DNI', '1234568', 'M', 1, NULL, '$2y$12$Dno/vHSq.9h.l20NqwnmY.JJlKC3XYP8jXy5f90DEFY1327nawovi', NULL, '2026-01-25 08:50:05', '2026-01-25 08:50:05', NULL),
(10, 'Lucero', 'lucero.rojas@gmail.com', 'Rojas', 'users/n0A9paPAH0R40JZDpeImVOFWB5ocJJAqOPEvvyF9.jpg', 2, '930518038', 'DNI', '4567892', 'F', 1, NULL, '$2y$12$3YkKcrJC.HYwE93kAomymOlAldsCNgBHG6TfLRvW303OZXK.gumYu', NULL, '2026-01-28 04:51:13', '2026-01-30 01:17:55', NULL),
(11, 'Fanny', 'rojas.su@gmail.com', 'Rojas', 'users/jz4xIMJtlqnyp7AxL3BDoOwS48cbsL5fsjB9Iyh9.jpg', 3, '930518038', 'DNI', '4567892', 'F', 1, NULL, '$2y$12$q5BmbcCh2QnT02CaHnQ5JOA.6Wdd.Cu9y8e6Cz1nlxl1MLdaXcrte', NULL, '2026-01-30 00:34:29', '2026-01-30 00:34:29', NULL),
(12, 'Fanny', 'fanny.dsumaran@gmail.com', 'Rojass', 'users/1Cz1oOvVTDP6MftO5hhYgZwXyq0yzJ0QeRlbJSzw.jpg', 3, '940078290', 'DNI', '75692184', 'F', 1, NULL, '$2y$12$3Ta5HrIkQx8JSnrRUM9Jfebjiw013nsrGESzRujEpqBWRg2FMSazO', NULL, '2026-01-30 00:36:10', '2026-02-20 02:32:30', NULL),
(13, 'Demo', 'demo.sum@gmail.com', 'Sum', 'users/H2V1ELdWPUbm3kFhc7SjdBiiELZamTwSIMG0AQ2F.jpg', 8, '940078299', 'DNI', '6541238', 'M', 1, NULL, '$2y$12$TB8GYRgK.qfXrMamS3S4zOLR5irsMi/tjyNUxf3ms4SvqIi3.tUiC', NULL, '2026-02-09 23:50:56', '2026-02-09 23:53:55', NULL),
(14, 'Nolberto', 'luis12@hotmail.com', 'Pimentel', 'users/CU3jfhYrj20PF6dzeDtYw58Hta03sTL4RGyKH99s.jpg', 9, '940078299', 'DNI', '45678901', 'M', 1, NULL, '$2y$12$KRmW5jDONzjQif9yIgIvTe6gUWSe3UOlI3ZG9yCsJ46RCtV4WbIoG', NULL, '2026-02-20 02:34:00', '2026-02-20 04:17:29', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `electronic_notes`
--
ALTER TABLE `electronic_notes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `noperacion_sales` (`n_operacion`),
  ADD UNIQUE KEY `sale_serie_correlativo` (`serie`,`correlativo`);

--
-- Indices de la tabla `electronic_note_details`
--
ALTER TABLE `electronic_note_details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `guia_remisions`
--
ALTER TABLE `guia_remisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `noperacion_sales` (`n_operacion`),
  ADD UNIQUE KEY `sale_serie_correlativo` (`serie`,`correlativo`);

--
-- Indices de la tabla `guia_remision_details`
--
ALTER TABLE `guia_remision_details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_categories` (`categorie_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `noperacion_sales` (`n_operacion`),
  ADD UNIQUE KEY `sale_serie_correlativo` (`serie`,`correlativo`);

--
-- Indices de la tabla `sale_details`
--
ALTER TABLE `sale_details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sale_payments`
--
ALTER TABLE `sale_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `restric_role_id` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `electronic_notes`
--
ALTER TABLE `electronic_notes`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `electronic_note_details`
--
ALTER TABLE `electronic_note_details`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `guia_remisions`
--
ALTER TABLE `guia_remisions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- AUTO_INCREMENT de la tabla `guia_remision_details`
--
ALTER TABLE `guia_remision_details`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1070;

--
-- AUTO_INCREMENT de la tabla `sale_details`
--
ALTER TABLE `sale_details`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT de la tabla `sale_payments`
--
ALTER TABLE `sale_payments`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `product_categories` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`);

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `restric_role_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
