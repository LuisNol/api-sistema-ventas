-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 27-01-2026 a las 14:52:33
-- Versión del servidor: 10.11.15-MariaDB-ubu2404
-- Versión de PHP: 8.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `avisonline_sv_facturacion_plan_1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `imagen` varchar(250) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es activo y 2 inactivo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `title`, `imagen`, `state`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Soporte Técnico', 'categories/xSnZvVKQCIxvsI4LDBzNQxI1PpiV8AypmvpTThCD.png', 1, '2025-06-13 03:29:22', '2025-06-13 03:29:22', NULL),
(2, 'Alimentos', 'categories/VIRjkl7WUCCttClfBLnyHd6KyWBk8JooWvhNREC7.png', 1, '2025-06-13 03:32:29', '2025-06-13 03:32:29', NULL),
(3, 'Mascotas 2026', 'categories/Ta809TIekwzl4yIVmDL7RNJGzQZ3QJTocRb8GdSr.png', 1, '2025-06-13 03:33:33', '2025-07-09 01:57:59', NULL),
(4, 'Otros', 'categories/y4nr68tvY97MQnFkr6WtCXWDdNB8hlP2DjAR6qqi.png', 1, '2025-07-18 00:00:59', '2025-07-18 00:00:59', NULL),
(5, 'Lubricantes', 'categories/THByGs4dEXcJeiyZQIPBRLrHPkrXe7IcxH0uFjoW.png', 1, '2026-01-22 18:51:40', '2026-01-22 18:51:40', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `surname` varchar(250) DEFAULT NULL,
  `full_name` varchar(250) NOT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `type_client` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es cliente normal y 2 es empresa',
  `type_document` varchar(150) DEFAULT NULL,
  `n_document` varchar(50) NOT NULL,
  `gender` varchar(1) DEFAULT NULL COMMENT 'M es masculino y F femenino',
  `birth_date` timestamp NULL DEFAULT NULL COMMENT 'fecha de cumple',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `ubigeo_distrito` varchar(25) DEFAULT NULL,
  `ubigeo_provincia` varchar(25) DEFAULT NULL,
  `ubigeo_region` varchar(25) DEFAULT NULL,
  `distrito` varchar(80) DEFAULT NULL,
  `provincia` varchar(80) DEFAULT NULL,
  `region` varchar(80) DEFAULT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id`, `name`, `surname`, `full_name`, `phone`, `email`, `type_client`, `type_document`, `n_document`, `gender`, `birth_date`, `user_id`, `address`, `ubigeo_distrito`, `ubigeo_provincia`, `ubigeo_region`, `distrito`, `provincia`, `region`, `state`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 'Lucero Sofia', 'Rojas Javier', 'Lucero Sofia Rojas Javier', '930518038', 'sofiajavierrojas6@gmail.com', 1, 'DNI', '75322356', 'M', '2004-12-26 00:00:00', 6, 'JR. PEDRO RODRIGUEZ PAIVA 124 - Calleria - Coronel', '100606', '1006', '10', 'Mariano Damaso Beraun', 'Leoncio Prado', 'Huánuco', 1, '2026-01-26 20:13:07', '2026-01-26 22:13:19', NULL),
(30, NULL, NULL, 'Distribuidora Surco EIRL 123', '94845454', 'distribuidorasurco@eirl.com', 2, 'RUC', '20161515649', 'M', '2007-03-26 00:00:00', 6, 'Av. Raymondi Nº1139', '200401', '2004', '20', 'Chulucanas', 'Morropón', 'Piura', 1, '2026-01-26 23:04:56', '2026-01-26 23:04:56', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `razon_social` varchar(250) NOT NULL,
  `razon_social_comercial` varchar(250) NOT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `n_document` varchar(50) NOT NULL,
  `birth_date` timestamp NULL DEFAULT NULL COMMENT 'fecha de cumple',
  `address` varchar(250) DEFAULT NULL,
  `urbanizacion` varchar(250) NOT NULL,
  `cod_local` varchar(150) NOT NULL,
  `ubigeo_distrito` varchar(25) DEFAULT NULL,
  `ubigeo_provincia` varchar(25) DEFAULT NULL,
  `ubigeo_region` varchar(25) DEFAULT NULL,
  `distrito` varchar(80) DEFAULT NULL,
  `provincia` varchar(80) DEFAULT NULL,
  `region` varchar(80) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `companies`
--

INSERT INTO `companies` (`id`, `razon_social`, `razon_social_comercial`, `phone`, `email`, `n_document`, `birth_date`, `address`, `urbanizacion`, `cod_local`, `ubigeo_distrito`, `ubigeo_provincia`, `ubigeo_region`, `distrito`, `provincia`, `region`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Laravest Sac. TEC .', 'Laravest', '958962565', 'echodeveloper960@gmail.com', '20161515648', '2025-04-29 00:00:00', 'Av. Primavera 2711, Santiago de Surco 25884', 'Peru', '0000', '150101', '1501', '15', 'Lima', 'Lima', 'Lima', '2026-01-27 03:01:06', '2026-01-27 03:01:06', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `electronic_notes`
--

CREATE TABLE `electronic_notes` (
  `id` bigint(20) NOT NULL,
  `serie` varchar(50) DEFAULT NULL,
  `correlativo` bigint(20) UNSIGNED DEFAULT NULL,
  `n_operacion` varchar(125) DEFAULT NULL,
  `doc_nota` varchar(10) NOT NULL DEFAULT '07' COMMENT '07 credito,08 debito',
  `type_nota` varchar(5) NOT NULL,
  `n_comprobante` varchar(150) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `type_client` smallint(6) NOT NULL DEFAULT 1 COMMENT '1 es cliente final, 2 es cliente empresa',
  `currency` varchar(15) NOT NULL DEFAULT '''S/.''',
  `subtotal` double NOT NULL DEFAULT 0,
  `total` double NOT NULL DEFAULT 0,
  `is_exportacion` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `discount` double DEFAULT 0,
  `discount_global` double NOT NULL DEFAULT 0,
  `igv` double NOT NULL,
  `type_payment` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es al contado, 2 credito',
  `state_sale` smallint(6) NOT NULL DEFAULT 1 COMMENT '1 es venta, 2 es cotizacion',
  `state_payment` smallint(6) NOT NULL DEFAULT 1 COMMENT '1 es pendiente, 2 es parcial, 3 es completo',
  `debt` double NOT NULL DEFAULT 0 COMMENT 'deuda',
  `paid_out` double NOT NULL DEFAULT 0 COMMENT 'pagado o cancelado',
  `retencion_igv` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1 Retención , 2 Detracción , 3 Percepción',
  `state_entrega` smallint(6) NOT NULL DEFAULT 1 COMMENT '1 es pendiente, 2 es parcial, 3 completo',
  `amount_anticipo` double NOT NULL DEFAULT 0,
  `sales_anticipos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`sales_anticipos`)),
  `description` text DEFAULT NULL,
  `description_motivo` text DEFAULT NULL,
  `cdr` varchar(250) DEFAULT NULL,
  `xml` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `electronic_notes`
--

INSERT INTO `electronic_notes` (`id`, `serie`, `correlativo`, `n_operacion`, `doc_nota`, `type_nota`, `n_comprobante`, `user_id`, `client_id`, `type_client`, `currency`, `subtotal`, `total`, `is_exportacion`, `discount`, `discount_global`, `igv`, `type_payment`, `state_sale`, `state_payment`, `debt`, `paid_out`, `retencion_igv`, `state_entrega`, `amount_anticipo`, `sales_anticipos`, `description`, `description_motivo`, `cdr`, `xml`, `created_at`, `updated_at`, `deleted_at`) VALUES
(41, 'FF01', 1, 'FF01-1', '07', '02', 'F001-6', 6, 30, 2, 'S/.', 236.44067, 278.99999, 0, 0, 0, 42.55932, 0, 0, 0, 0, 0, 1, 1, 0, NULL, NULL, 'Mal dato ingresado', 'https://api-fe.avisonline.store/storage/cdrs/6978658ebe6b0.zip', '/storage/xml/FF-20161515648-1-FF01-41 20260127_021318.xml', '2026-01-27 02:13:18', '2026-01-27 02:13:18', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `electronic_note_details`
--

CREATE TABLE `electronic_note_details` (
  `id` bigint(20) NOT NULL,
  `electronic_note_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_categorie_id` bigint(20) NOT NULL,
  `tip_afe_igv` int(3) UNSIGNED NOT NULL DEFAULT 10,
  `per_icbper` double NOT NULL DEFAULT 0,
  `icbper` double NOT NULL DEFAULT 0,
  `percentage_isc` double UNSIGNED NOT NULL DEFAULT 0,
  `isc` double UNSIGNED NOT NULL DEFAULT 0,
  `unidad_medida` varchar(25) NOT NULL,
  `quantity` double NOT NULL DEFAULT 1,
  `price_base` double NOT NULL DEFAULT 0,
  `price_final` double NOT NULL DEFAULT 0,
  `discount` double DEFAULT 0,
  `subtotal` double NOT NULL DEFAULT 0 COMMENT 'Es el precio unitario - descuento',
  `igv` double DEFAULT 0,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `electronic_note_details`
--

INSERT INTO `electronic_note_details` (`id`, `electronic_note_id`, `product_id`, `product_categorie_id`, `tip_afe_igv`, `per_icbper`, `icbper`, `percentage_isc`, `isc`, `unidad_medida`, `quantity`, `price_base`, `price_final`, `discount`, `subtotal`, `igv`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(41, 41, 16, 5, 10, 0, 0, 0, 0, 'LTR', 9, 26.271186, 31, 0, 236.440674, 42.55932132, NULL, '2026-01-27 02:13:18', '2026-01-27 02:13:18', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guia_remisions`
--

CREATE TABLE `guia_remisions` (
  `id` bigint(20) NOT NULL,
  `serie` varchar(50) DEFAULT NULL,
  `correlativo` bigint(20) UNSIGNED DEFAULT NULL,
  `n_operacion` varchar(125) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `type_client` smallint(6) NOT NULL DEFAULT 1 COMMENT '1 es cliente final, 2 es cliente empresa',
  `total` double NOT NULL DEFAULT 0,
  `quantity_total` double NOT NULL,
  `motivo_translado` varchar(5) NOT NULL,
  `num_dam` varchar(150) DEFAULT NULL,
  `type_transport` smallint(1) NOT NULL DEFAULT 1 COMMENT '1 es publico, 2 es privado',
  `punto_partida` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`punto_partida`)),
  `punto_llegada` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`punto_llegada`)),
  `transporte_datos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `conductor_datos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `description` text DEFAULT NULL,
  `cdr` varchar(250) DEFAULT NULL,
  `xml` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guia_remision_details`
--

CREATE TABLE `guia_remision_details` (
  `id` bigint(20) NOT NULL,
  `guia_remision_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_categorie_id` bigint(20) NOT NULL,
  `unidad_medida` varchar(25) NOT NULL,
  `quantity` double NOT NULL DEFAULT 1,
  `peso` double NOT NULL DEFAULT 0,
  `total` double NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
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
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 9),
(4, 'App\\Models\\User', 2),
(4, 'App\\Models\\User', 4),
(4, 'App\\Models\\User', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
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
(29, 'list_nota_electronica', 'api', '2025-06-06 05:53:53', '2025-06-06 05:53:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `sku` varchar(50) NOT NULL,
  `categorie_id` bigint(20) UNSIGNED NOT NULL,
  `imagen` varchar(250) NOT NULL,
  `price_general` double NOT NULL,
  `price_company` double NOT NULL,
  `description` longtext DEFAULT NULL,
  `is_discount` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es inactivo y 2 activo',
  `max_discount` double NOT NULL DEFAULT 0,
  `disponiblidad` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es venta sin stock , 2 venta con stock',
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es activo y 2 inactivo',
  `unidad_medida` varchar(25) NOT NULL,
  `stock` double NOT NULL DEFAULT 0,
  `include_igv` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 no 2 si',
  `is_icbper` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 no y 2 si ',
  `is_ivap` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 no y 2 si',
  `percentage_isc` double NOT NULL DEFAULT 0,
  `is_especial_nota` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es no y 2 si',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `title`, `sku`, `categorie_id`, `imagen`, `price_general`, `price_company`, `description`, `is_discount`, `max_discount`, `disponiblidad`, `state`, `unidad_medida`, `stock`, `include_igv`, `is_icbper`, `is_ivap`, `percentage_isc`, `is_especial_nota`, `created_at`, `updated_at`, `deleted_at`) VALUES
(16, '4T Aceite scooter expert 10W40 1LT MBL', 'MOT105935', 5, 'products/nrcNHWwziuxz4DZeMJcdr4rd8YzTTgAKNEjJhYRk.jpg', 33, 31, 'MOTUL Scooter Expert MB 10W-40 4T – 1 Litro es un aceite de motor Technosynthese® especialmente desarrollado para scooters y maxi scooters de 4 tiempos de uso urbano y diario.', 1, 0, 1, 1, 'LTR', 10, 2, 1, 1, 0, 1, '2026-01-22 19:30:53', '2026-01-26 20:42:50', NULL),
(17, '7100 Aceite motor 20W50 1L FS1', 'MOT836411-7100 4T Y 710 2T', 5, 'products/v6f3eaRahLTWBGWWmZmLLctCxYCEYGTcKdWdyYI2.jpg', 55, 52, 'Motos ruteras, trails, motos todo terreno, enduro, trial… equipos de motores 4 tiempos con cajas de velocidades integradas o no y embrague bañado en aceite o en seco, motores diseñados para utilizar lubricantes de baja viscosidad, que respondan a las normas anti-contaminantes Euro II o Euro III, equipadas con sistemas de pos tratamiento de gases de escape: catalizadores, inyección de aire en el escape', 1, 0, 1, 1, 'LTR', 10, 2, 1, 1, 0, 2, '2026-01-22 19:39:38', '2026-01-26 20:42:15', NULL),
(18, '5100 Aceite motor 15W50 1L TS-', 'MOT102779', 5, 'products/KJpvIiKHWArxMILuhiCFaxRIc7hAsxMPYgz30oCD.jpg', 35, 32, 'Lubricante Motos Altas Prestaciones Technosynthese® – Ester.\r\nMotos ruteras, trails, motos todo terreno, enduro, trial… equipos de motores 4 tiempos con cajas de velocidades integradas o no y embrague bañado en aceite o en seco, motores diseñados para utilizar lubricantes de baja viscosidad, que responda a las normas anti-contaminantes Euro 2, Euro 3, Euro 4 o Euro 5 equipadas con sistemas de pos tratamiento de gases de escape: catalizadores, inyección de aire en el escape…\r\nRecomendado particularmente para BMW, DUCATI, que recomiende un aceite de grado SAE 15W-50 para algunos de sus modelos.\r\nOtras aplicaciones: motos sin post catalizadores, Scooters, quads, ciclomotores', 1, 0, 1, 1, 'LTR', 10, 2, 1, 1, 0, 2, '2026-01-22 19:43:51', '2026-01-23 03:55:43', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
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
(7, 'Supervisor', 'api', '2026-01-25 05:52:20', '2026-01-25 05:52:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(2, 2),
(3, 2),
(3, 7),
(7, 7),
(10, 3),
(12, 3),
(13, 3),
(13, 7),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(19, 7),
(20, 3),
(22, 4),
(23, 4),
(24, 4),
(25, 4),
(27, 7),
(28, 4),
(29, 4),
(29, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) NOT NULL,
  `serie` varchar(50) DEFAULT NULL,
  `correlativo` bigint(20) UNSIGNED DEFAULT NULL,
  `n_operacion` varchar(125) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `type_client` smallint(6) NOT NULL DEFAULT 1 COMMENT '1 es cliente final, 2 es cliente empresa',
  `currency` varchar(15) NOT NULL DEFAULT '''S/.''',
  `subtotal` double NOT NULL DEFAULT 0,
  `total` double NOT NULL DEFAULT 0,
  `is_exportacion` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `discount` double DEFAULT 0,
  `discount_global` double NOT NULL DEFAULT 0,
  `sales_anticipos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`sales_anticipos`)),
  `n_comprobante_anticipo` varchar(150) DEFAULT NULL,
  `amount_anticipo` double DEFAULT NULL,
  `igv` double NOT NULL,
  `igv_discount_general` double UNSIGNED DEFAULT 0,
  `type_payment` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es al contado, 2 credito',
  `state_sale` smallint(6) NOT NULL DEFAULT 1 COMMENT '1 es venta, 2 es cotizacion',
  `state_payment` smallint(6) NOT NULL DEFAULT 1 COMMENT '1 es pendiente, 2 es parcial, 3 es completo',
  `debt` double NOT NULL DEFAULT 0 COMMENT 'deuda',
  `paid_out` double NOT NULL DEFAULT 0 COMMENT 'pagado o cancelado',
  `retencion_igv` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1 Retención , 2 Detracción , 3 Percepción',
  `description` text DEFAULT NULL,
  `cdr` varchar(250) DEFAULT NULL,
  `xml` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`id`, `serie`, `correlativo`, `n_operacion`, `user_id`, `client_id`, `type_client`, `currency`, `subtotal`, `total`, `is_exportacion`, `discount`, `discount_global`, `sales_anticipos`, `n_comprobante_anticipo`, `amount_anticipo`, `igv`, `igv_discount_general`, `type_payment`, `state_sale`, `state_payment`, `debt`, `paid_out`, `retencion_igv`, `description`, `cdr`, `xml`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1034, 'F001', 1, 'F001-1', 6, 30, 2, 'S/.', 105.08474, 123.99999, 0, 0, 0, NULL, NULL, NULL, 18.91525, 0, 1, 1, 3, 0, 120.27999, 1, NULL, '/storage/cdrs/697839dcd3cfd.zip', '/storage/xml/R-10756921849-1-F001-1034 20260127_040652.xml', '2026-01-26 23:06:44', '2026-01-26 23:06:52', NULL),
(1035, 'F001', 2, 'F001-2', 6, 30, 2, 'S/.', 26.27119, 31, 0, 0, 0, NULL, NULL, NULL, 4.72881, 0, 1, 1, 3, 0, 30.07, 1, NULL, '/storage/cdrs/697845e2a8881.zip', '/storage/xml/R-20161515648-2-F001-1035 20260127_045810.xml', '2026-01-26 23:58:02', '2026-01-26 23:58:10', NULL),
(1036, 'B001', 1, 'B001-1', 6, 7, 1, 'S/.', 27.9661, 33, 0, 0, 0, NULL, NULL, NULL, 5.0339, 0, 1, 1, 3, 0, 32.01, 1, NULL, '/storage/cdrs/697847792d29e.zip', '/storage/xml/R-20161515648-1-B001-1036 20260127_050457.xml', '2026-01-27 00:04:48', '2026-01-27 00:04:57', NULL),
(1037, 'F001', 3, 'F001-3', 6, 30, 2, 'S/.', 26.27119, 31, 0, 0, 0, NULL, NULL, NULL, 4.72881, 0, 1, 1, 3, 0, 30.07, 1, NULL, '/storage/cdrs/69784953e6373.zip', '/storage/xml/R-20161515648-3-F001-1037 20260127_051251.xml', '2026-01-27 00:12:42', '2026-01-27 00:12:51', NULL),
(1038, 'F001', 4, 'F001-4', 6, 30, 2, 'S/.', 52.54237, 62, 0, 0, 0, NULL, NULL, NULL, 9.45763, 0, 1, 1, 3, 0, 60.14, 1, NULL, '/storage/cdrs/6978575f98040.zip', '/storage/xml/R-20161515648-4-F001-1038 20260127_061247.xml', '2026-01-27 01:12:38', '2026-01-27 01:12:47', NULL),
(1039, 'F001', 5, 'F001-5', 6, 30, 2, 'S/.', 52.54237, 62, 0, 0, 0, NULL, NULL, NULL, 9.45763, 0, 1, 1, 3, 0, 60.14, 1, NULL, '/storage/cdrs/6978609936960.zip', 'https://api-fe.avisonline.store/storage/xml/R-20161515648-5-F001-1039 20260127_065209.xml', '2026-01-27 01:52:01', '2026-01-27 01:52:09', NULL),
(1040, 'F001', 6, 'F001-6', 6, 30, 2, 'S/.', 236.44067, 278.99999, 0, 0, 0, NULL, NULL, NULL, 42.55932, 0, 1, 1, 3, 0, 270.62999, 1, NULL, 'https://api-fe.avisonline.store/storage/cdrs/697864d028a71.zip', 'https://api-fe.avisonline.store/storage/xml/R-20161515648-6-F001-1040 20260127_071008.xml', '2026-01-27 02:09:58', '2026-01-27 02:10:08', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sale_details`
--

CREATE TABLE `sale_details` (
  `id` bigint(20) NOT NULL,
  `sale_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_categorie_id` bigint(20) NOT NULL,
  `tip_afe_igv` int(3) UNSIGNED NOT NULL DEFAULT 10,
  `per_icbper` double NOT NULL DEFAULT 0,
  `icbper` double NOT NULL DEFAULT 0,
  `percentage_isc` double UNSIGNED NOT NULL DEFAULT 0,
  `isc` double UNSIGNED NOT NULL DEFAULT 0,
  `unidad_medida` varchar(25) NOT NULL,
  `quantity` double NOT NULL DEFAULT 1,
  `price_base` double NOT NULL DEFAULT 0,
  `price_final` double NOT NULL DEFAULT 0,
  `discount` double DEFAULT 0,
  `subtotal` double NOT NULL DEFAULT 0 COMMENT 'Es el precio unitario - descuento',
  `igv` double DEFAULT 0,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sale_details`
--

INSERT INTO `sale_details` (`id`, `sale_id`, `product_id`, `product_categorie_id`, `tip_afe_igv`, `per_icbper`, `icbper`, `percentage_isc`, `isc`, `unidad_medida`, `quantity`, `price_base`, `price_final`, `discount`, `subtotal`, `igv`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(42, 1034, 16, 5, 10, 0, 0, 0, 0, 'LTR', 4, 26.271186, 31, 0, 105.084744, 18.91525392, NULL, '2026-01-26 23:06:44', '2026-01-26 23:06:44', NULL),
(43, 1035, 16, 5, 10, 0, 0, 0, 0, 'LTR', 1, 26.271186, 31, 0, 26.271186, 4.72881348, NULL, '2026-01-26 23:58:02', '2026-01-26 23:58:02', NULL),
(44, 1036, 16, 5, 10, 0, 0, 0, 0, 'LTR', 1, 27.966102, 33, 0, 27.966102, 5.03389836, NULL, '2026-01-27 00:04:48', '2026-01-27 00:04:48', NULL),
(45, 1037, 16, 5, 10, 0, 0, 0, 0, 'LTR', 1, 26.271186, 31, 0, 26.271186, 4.72881348, NULL, '2026-01-27 00:12:42', '2026-01-27 00:12:42', NULL),
(46, 1038, 16, 5, 10, 0, 0, 0, 0, 'LTR', 2, 26.271186, 31, 0, 52.542372, 9.45762696, NULL, '2026-01-27 01:12:38', '2026-01-27 01:12:38', NULL),
(47, 1039, 16, 5, 10, 0, 0, 0, 0, 'LTR', 2, 26.271186, 31, 0, 52.542372, 9.45762696, NULL, '2026-01-27 01:52:01', '2026-01-27 01:52:01', NULL),
(48, 1040, 16, 5, 10, 0, 0, 0, 0, 'LTR', 9, 26.271186, 31, 0, 236.440674, 42.55932132, NULL, '2026-01-27 02:09:58', '2026-01-27 02:09:58', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sale_payments`
--

CREATE TABLE `sale_payments` (
  `id` bigint(20) NOT NULL,
  `sale_id` bigint(20) NOT NULL,
  `method_payment` varchar(100) NOT NULL,
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
(31, 1025, 'EFECTIVO', 5000, NULL, '2025-07-15 19:57:45', '2025-07-15 19:57:45', NULL),
(33, 1026, 'EFECTIVO', 5000, NULL, '2025-07-15 20:05:25', '2025-07-15 20:05:25', NULL),
(34, 1027, 'EFECTIVO', 600, NULL, '2025-07-17 21:03:45', '2025-07-17 21:03:45', NULL),
(35, 1028, 'EFECTIVO', 632, NULL, '2025-07-17 21:10:22', '2025-07-17 21:10:22', NULL),
(36, 1029, 'EFECTIVO', 2000.8, NULL, '2025-07-17 21:25:52', '2025-07-17 21:25:52', NULL),
(37, 1030, 'EFECTIVO', 3300, NULL, '2025-07-17 21:27:22', '2025-07-17 21:27:22', NULL),
(38, 1031, 'TRANSFERENCIA', 32.01, NULL, '2026-01-26 20:37:18', '2026-01-26 20:37:18', NULL),
(39, 1032, 'TRANSFERENCIA', 32.01, NULL, '2026-01-26 22:20:03', '2026-01-26 22:20:03', NULL),
(40, 1033, 'TRANSFERENCIA', 90.21, NULL, '2026-01-26 22:43:09', '2026-01-26 22:43:09', NULL),
(41, 1034, 'TRANSFERENCIA', 120.27999, NULL, '2026-01-26 23:06:44', '2026-01-26 23:06:44', NULL),
(42, 1035, 'TRANSFERENCIA', 30.07, NULL, '2026-01-26 23:58:02', '2026-01-26 23:58:02', NULL),
(43, 1036, 'EFECTIVO', 32.01, NULL, '2026-01-27 00:04:48', '2026-01-27 00:04:48', NULL),
(44, 1037, 'TRANSFERENCIA', 30.07, NULL, '2026-01-27 00:12:42', '2026-01-27 00:12:42', NULL),
(45, 1038, 'TRANSFERENCIA', 60.14, NULL, '2026-01-27 01:12:38', '2026-01-27 01:12:38', NULL),
(46, 1039, 'EFECTIVO', 60.14, NULL, '2026-01-27 01:52:01', '2026-01-27 01:52:01', NULL),
(47, 1040, 'TRANSFERENCIA', 270.62999, NULL, '2026-01-27 02:09:58', '2026-01-27 02:09:58', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0gztceRipQrd5UUa5qs5nnSnLRMYS3ZhuzYKNrFw', NULL, '44.206.242.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUk9hZXBNcGRtVzhTOGZjdW1SVGgxRW5GMGFlTlZGRkZER2VVQzFFMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769521295),
('0JxAGUYqeS0zVIOLGHjmxVqZSoNln9Z9yyGDk9gd', NULL, '89.248.171.23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiajlscUpnWU9YRmh6d094SzVDME1MZjNyeUpzaDVRVzJhS0JvUFpCZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769495213),
('0NMgySiJmqJs65wVst4f19o4W5tRVxbLJP0KT6MQ', NULL, '154.28.229.19', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGpWV0p1Q2FuWkRpT09DVHdBUXZUQ2FhUEFjaTBlTTlFN0lhWk41ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769511527),
('0ufrSOz0KKoTKsb5gIaQT9uVSW2oDFVeJvrJ2gXW', NULL, '84.254.106.197', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVlOcURNMndNN3lMY2FOVGZ2SjdYbTF5SkRjcjYxaUE4QnJ6ektRTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769506904),
('2H7mTLajO8z8Ze56FWXtPwQfvNFLpOSDUy64A16s', NULL, '217.182.76.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.246', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV0R6SjJZaVY1UTNUVDRWMlYzTXRka0pBeW1ta1BUWm9veUdrd2huYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO319', 1769513033),
('3otV4CaIRkrLsIBY8IEZNSPN0jZAM6Eu5WJlfdXC', NULL, '100.48.227.178', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNm1nNEJTMXBEZ01mRUsxczlydG1WNEFuNlNsVldiOUtuOHdOd1E2YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769521290),
('4VLtKu8MK2p54iEhetRm9huidOlIDjMlhTTj4UQs', NULL, '174.129.153.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVTBZendXMmRseUpIRXZCYm5YWER6NkJOWVBldTBibDl4cFVEU0VsbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769496421),
('6bZMM8qfvtbb3zlZApJJlE2tXTIe95qJuk9QEVqX', NULL, '35.162.17.198', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/109.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVldBWDU5M0JMVkh6SWJoUzl6Qm5qREw4QkM2RUlvbVBibUJaZmpRSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769495045),
('7hVL3HwzeI1AJwnCCAvMJJ3euZS1Q2jmsOlxa37w', NULL, '54.84.139.73', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTBWOE4xVENlZ1JRUnhGVXVhVWxpblNyY0lrNTZUQU1QQnNXVWY2OSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769492397),
('92jD6EC4LrAD2EaDd8ijoPFUuRseZLdzudGqigif', NULL, '23.82.96.179', 'req/v3 (https://github.com/imroc/req)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoielRGQm5lMDAzcGZZSm5sVGNoTmJHaEk5TGZsSWlOcExSODBYUG5VQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769523779),
('a36aJAkMnsehNHrKuptjfdAIuS2OijT3I0yzGN9o', NULL, '44.204.114.3', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVnROZVlSaWNKTmhnYWpyQXBiM2NmZHl6S0F6czRnU1BKNGlQQ0x1NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769492406),
('aLwByfN1j74prtCwxzcxdATZTdmV5J5yefl98PcO', NULL, '34.126.152.26', 'curl/7.83.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWJ3SjBSWXFyYzdWSDdpalZFSGVqN0pLaDR6NHpMSGFOMmJjOWtBUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769487143),
('AP4OQvWZfbdMtQOoZUFP8H7tUV34N0ucuDGpYy7S', NULL, '80.82.70.40', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDZFYlFkaUFMcmZrVHlmQ0hBRE5FMnIxSUdBTTFhbWtjT0ROaXVMbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769495026),
('ax0wQ4Tgu2Sf65MdxQJrFUfhzbBP6tGxONtn5vLw', NULL, '217.182.76.73', 'Mozilla/5.0 (X11; CrOS x86_64 14541.0.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2FwQk1zUE1wZEFiY3llZFdRVjF1OEhvQ3dKWk51d2gyTlJOTFNLMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769513093),
('bMCNEY8NYEGd617hlaXjnBiaBCmLjJ7fh3T7XHwR', NULL, '44.211.83.140', 'okhttp/5.3.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHB3cHBLMVNWOWh3MFZGR0F4eTd3bTBpMHdSYTVSTUJ3TW11UVpaNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769498265),
('BZAxhXvhezN5AoQxWSR9R38Th7ssUdKUeZOPNxmJ', NULL, '100.48.3.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2x0NHBMOW1ydnRnMEZ4dmx3ZEZ4a3BCcGVnSEZ4YThqN2JMbXhKZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769502795),
('CroYzX8DjcckZ9HgIS4Tnzan2XfjeDV9wk6xR3z3', NULL, '133.242.174.119', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmp0b2txbjE5a2dTWFdaeXNLeVFoN0F3SmRKdjhRUU1rRUZ3dk9PSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769520839),
('D9MQboFQ5wfC4SWJQwuIsopEzg2qhslGyofJSibN', NULL, '44.210.69.51', 'okhttp/5.3.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUzlwMlhwMDZGTG9HTGtsMW9yWGFVdGhyeXliVUtBUExPOWFaamI2dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769512736),
('eTCGkC8qXez3RVHZUvT8EmWCsiIRCgd9YjnbB3b3', NULL, '217.182.76.73', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidHYxNEp3cFByZENWaVA4cGw5QnNzOWlUUGprTWFmbWJSNmlPQ3B5ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769513005),
('f4b1FD8RvRyWBtGKVABYzjtiOuGZyUViGHq9ybrI', NULL, '34.141.188.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.6422.143 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHJReFRYV3F1aDkxREVOcVg4YjFwOUJPN3kxMHp5bUZvcWd0cVpIRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769492932),
('fd3hFP21JKPR1j7HmtDfazkUtJRjm3Wp6K9qm1Dq', NULL, '89.248.172.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY2tCTFlzZHdpckZvVW5lRmRlZDBQbzlvbVZqNDR5OXZqZnBoR0tmRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769464975),
('fdoofuSKagit91Zb0Ht5yk7p3u4zLAHoEH3vXVnz', NULL, '149.57.180.140', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQmhPTU1QTWdNbENXS3hEanBDMzNWWWw4alp6TTE3ZXZMZW5leHpKRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769479893),
('fsVF2B4uEVQPzZMTwU2IO0Gkmbu6EmVXXkDPHiFm', NULL, '154.28.229.19', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRlZJT0N5RXdDeW1scU5YbkRzdno3b093bGZldWsweTVyMnFjNHNFRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769511536),
('FWLKx0fXl1Atug9EKyguSrzMTr8M7ctXviK5Rzw7', NULL, '59.132.65.172', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/118.0.5993.69 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUg0QlpVbDNmbVp4OE1SSkpaVXFnWGM1R3V3c3l1VFpWVzBPNW15YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769499917),
('FZSZRlnD5HSMXX7XNv51O9JmknPBhdhiVAd0AxgB', NULL, '23.19.230.168', 'Mozilla/5.0 (Linux; arm_64; Android 15; HMD Skyline) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.7444.303 YaBrowser/25.12.0.303.00 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSENhOHNCd0xXd05id3d0WjJBMk9TMnFBVUZjRlNGRmdvZ081ZzVBSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9hcGktZmUuYXZpc29ubGluZS5zdG9yZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769464983),
('G41qsKNDuD6W3C9INbZlrzRrEnZ3Tx3ffPWGIIp4', NULL, '91.231.89.36', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:134.0) Gecko/20100101 Firefox/134.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYkVISHJmaDVQR2kxUDFySTlkNmRtbTVDZ3F2c1YwZEZ0QkVOSWtvVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9hcGktZmUuYXZpc29ubGluZS5zdG9yZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769464785),
('gEOgEqxdjocmZcSaP4lbEMHD77ckywgTXKE69i55', NULL, '199.120.14.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYWhFczhqUzdicjBGZmprbFZ4V3lwdGlja2c2N09TNWFOdW9TbzRlOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769468893),
('gIeXfmBUsM2KINqxizvi5YX4qVFIvIkR0U0LgP8V', NULL, '54.83.180.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieWJwWE5vbmU4RTlBajB5eFFmSHo5ZFM0ZDd4R1RsYkNYZVpvd3dOZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769502793),
('GW4OPp7opDvPtDFHVJjPz1hwR2h4303USNibTeGd', NULL, '195.123.244.84', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSEE5NmxFQzlJNWVreHlnejlXZnpJSk1zNTF1a1A4a0xqdG1XV2RKYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769511526),
('HgnS9dOya1XupZCk3rTqcUM2TjWiDgZD0FMtTpCR', NULL, '94.154.113.136', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/117.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibElLbHNlVGtrTk9TY1d5SVVIOTZjSDAyZHMwRWtVUXl4ZTNUTDQzOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769464829),
('hYyPjhMA42fS3cI7D2R9dKs5ljYjQlNyru7T2F6Z', NULL, '205.169.39.205', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHl0NVFlSVR2dnE1Slh4dnNRdlc5SEFpTUcyQW9mZllROE1yZ01GZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769469372),
('I3gZcO5HnZRG4KFbqdEo2QOsJLRNh8yLRZUgIK6m', NULL, '80.82.70.40', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDdIRnAzMzdQbnRkSEhDQlV5cVd1a2pYeFRhTEpJWnZIc05EVVhNZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769495023),
('iIKXFrKQzxZJByjktox7CwF8VDcFUGxEjwxhcv82', NULL, '217.148.140.137', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUFtQlFvU3B5YkNpNTFlUWtTRDJNY3BNSFpPRWxaZjVLQklyYlY5ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769482869),
('iRLj9kdy8Ywma0eLqtJpFEuAE2M91aA9XkenG0mt', NULL, '217.182.76.73', 'Mozilla/5.0 (X11; CrOS x86_64 14541.0.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTTcxNjJ5RkhUVEFlYVlNMTRpM0hiQW9oTHJXWG04QXJYM3hycVNvQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769513095),
('IS5ydhj32Y6uuy5BLBARyTdDKLpjjiTIdKBzJXgR', NULL, '23.82.96.179', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXNZU1FIc0R5bTdWUmdmRnRRYkdadDZ2WFJKazdpNDlEdXo2QWJHOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769464982),
('ItGX4XB78Aj7tI4vSD4VGLkF0PqBhKzLoBpv8RNL', NULL, '109.70.100.8', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/6.0)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2Z6QjBOaVNBam85cThnajkxZWJ6YVd5b1BhSkl4TG1HOFZScmsxTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769465610),
('itRoNeqxzJoXki0SLtMeUPVq61osdm4WJRB4LP7x', NULL, '74.7.243.229', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.3; +https://openai.com/gptbot)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2pROWdWNEtLamxkbXVLR0J0OHpIV2thTW9jVmdRUEJRVEYxOFNmMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769522447),
('iycbQ2OxgS9C5JNdEFNyYECXYe8CivJDIoQuFZCJ', NULL, '176.125.230.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTGJGT25hRUI5VXlibXRreWpZZ1pVZ2tSNHlucHhGdksxdFgyd0NRdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769464819),
('iYZsTlUIKRqOssEpXmLdagdyyGWGP4oGGY59bMzy', NULL, '193.203.11.94', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiam05WWU5cHRPbmNNRmUxbnY0WVN2RUZmSkNKcUZtTGpOMjBRRjBoYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769471759),
('J0VCDqT9LLBMwuJvQ9vBqhIDbmzOanz3iHj1u2oy', NULL, '64.225.100.118', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.1.2 Safari/603.3.8', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZWhoeWpVanpacVR1M01SVjJBcHo0N25LMHV2UFI1Z0x6czhZcUJTOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769469967),
('jgzJGkHYlf9pnH4hFe3nZyyOPllZH1eLePZKiMDY', NULL, '34.125.230.24', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQkIwTmVNRWhYMUR5SlJrTkZRWEZ6Y2UzbDV2SjRDaXN6aFloc1dNZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769464873),
('JMKuKTVxQZ6WaJuqNItdXYYJZd6YQji5dIrlSHsQ', NULL, '205.169.39.205', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjcxUXp3TFl0eWRGVUMybXdZNnpJeklSdllGd3Q2bVlaSUE2a3VMTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769469382),
('jnVOpuv7B23qtYO2xS3japYThY0hHqzbTYfXjfNc', NULL, '212.143.94.254', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/122.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmtLV2R3cWNyR1g1SzJPMVNDVkN1TEdhRnRQNEp1YUVld3IzeWE5NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769464852),
('K6DTuPPWVIxss9RbFBmT0qvPvaqtaBXC2mcacWaI', NULL, '84.254.106.197', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXlZZk5heGxBTWM5UDl0TjY1S0h3N3hUUVRoRkdGbGsxckl3bXpUViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769493670),
('Keubyrz8fCQ5xuGJBxegumLB1ybaPdsX6a4Jp0NC', NULL, '192.175.111.249', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTm51UmxXNlVwZTFnVHpaQzdoQ1RiUGt6SlhqRm5QM1JlYlJtNjZJbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769466300),
('kRjmHFkxAHsvvwHuhcq3U02FNokMlAEFjdEkdwj2', NULL, '18.222.214.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.51', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHlnekZlQm1RWFA0T1h4WnBIaHRvcmU2bjR2YkNyRzZXenNRZVRMdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769464870),
('KtJQmYxkFwnh7ztLrFfQqOArmkKZt8DItMbDwbfu', NULL, '34.96.52.15', 'Python/3.11 aiohttp/3.13.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjdMSXI5SWJpZWQwV3Zub3ZUYXIycEM1NWZXWjhzMHVGYTFoZGNNZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769469712),
('KWe6Sf2NgadH77SNfP4ZKQMz2c3V3FoknlNEpdRh', NULL, '114.180.104.70', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/83.0.4103.88 Mobile/15E148 Safari/604.1', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTUNveVA5RGxXc2g1NHlqdVpKU0dMa1Npb3ZIc0dLa1htcGdtQTBLRyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1769475431),
('L3QaUhvAJeZQztWHC8b40KOoPRa1wZNcSsO8d7Zd', NULL, '186.163.10.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidm1jV0labG1ad1dYNEVTNGQyclM1WVhOY3pTdThuSFBPQUg4UnlLNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769490072),
('l5iQAFaufoEajtHeFSPXypBgDzzG5cFkkzq7uPS9', NULL, '149.57.180.132', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0p1anJnV2hmUzVaWVN2RFJGdXRBdXBhSktvVzVxSlVXSkF5UFptbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769483123),
('lmd0gUy0p74pnkg3ncQWRhtbw3gWlpLcTcwlSnCu', NULL, '84.254.106.197', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjdFMXFnYVVGZ1V6emoyNmlPRjlwZkxXcXNUWDJqeldNc2pndjdvZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769510373),
('meSx44Q8y3N2KXP7LdrGOQ7VHqQ9NoTtvQttVf7W', NULL, '176.65.148.161', 'Mozilla/5.0 (compatible; Let\'s Encrypt validation server; +https://www.letsencrypt.org)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSnEyNHg5OUdZNGF4VjdNcURZQmg5UEVncXEyNnhyZW9Mam90QnRlSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769466234),
('MFuIm2J9j6POyy5N5gTB4FqOx64a5kG8gDhG7fYB', NULL, '84.254.106.197', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFJrVWhOZ1lBZW0zV1REajJ0eG1Ldzk0R0Z5ZGM0dnlSQm95dXB1NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769470812),
('MuT6em4gHqnB94BJ5qe5TrH31xmV1Vyk1U8pDj5x', NULL, '34.123.170.104', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVhnWGNrS0t1Wng4WmFvQ2R3N2xGcm9YWVJNUGpHMzU2cmFKNkg2MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769468501),
('nB6xp8Z11w6nyUQIjrvsactzVKzCuDxUQeMN5EFP', NULL, '95.173.223.84', 'req/v3 (https://github.com/imroc/req)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaW5jTG1HZE10djBaOTFsRDZNWXhYaFJQZE9PdnNiQ2Y2Zms0bmk0YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769523779),
('nk7n5REVVM6K1p9LE72mwIDj13Ha9w131tTn4DWU', NULL, '149.57.180.122', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib0M4YnNCcThFZjRDaGd0VFNWenNRVDRnZ1pORk5YNUJ6a09oZmU4aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769485139),
('npn2gbjeiD3ApgxcljPMDXmWBNMLAXEhxxRGSEtb', NULL, '84.254.106.197', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0RJNGRhWHMzZzBRUjdHQTNqbzdmV0pFTldmQTFiYnJuak9DZ3JYYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769480804),
('ocLyXGSOlFpcghgMHAajyq5SE4i1lBxNL5lVh9yu', NULL, '54.71.187.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicEtsbHNYanJsdnNUS1VzTlhhU1N1elFLUm9qdEdXa1ZQMlk0YW44dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769464983),
('OeL8F1QqN93KqUdCwl0CnhT9Q2LouCjVEhADod8X', NULL, '44.210.69.51', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/138.0.7204.23 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib3FkS29JeTNVeWs1MEQweFlLQWFka2hRWm9qWU1RcnJyYlRBanBoRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769512779),
('oGd1fa3Bds9Viu7FhTJzz6Vot3VAQ9hj0rCUKXTc', NULL, '195.123.244.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUlcyZUpXOGhpR2hIM2lDQnY1UDg1MVAwTUoyWlFybFJUOEJ6Q0U5WiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1769511525),
('OvAWBWqPCgex4XkAVNBkRb8R5weLYIYPoCWWPpGP', NULL, '72.153.230.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.7444.163 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHRFMnFpVVExaWZnMHVQd240d1FUNHNMZWV4ZVROZzJPc0k1SnNlYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769496085),
('pa7CWSRiQ4TNP38hRDg1xERuaaKmirJwZvklT7E0', NULL, '217.138.162.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3ZCazZvbVVZQUJzRGw5MlpnNTI3Tk5lQjJiaHFmUmtRYVI0clRUNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769495046),
('pEIV80YyyBTKdZkPbqSwTKM5TkLIanQ1FTPqaoNi', NULL, '18.222.220.147', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.51', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieXBmRmJLSDFQYVhBTklXVE1Yb0ZKSDdFc3VaZnhPYzhMaVY5Y29ZVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769464870),
('Qm1GfMjHN9kNxZmkDlzNQqBIQPm8fUsL3JwGt1Zi', NULL, '159.26.99.164', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUk94Q0FHUnZLN1lVQ2daeHBFM1N3UjN6bjdqRTZ5WnJhZVY5U3ltdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769470579),
('qNPgYz8wPi5j2z0uWiF5hzQEM1KGSIYyQYJxcbOK', NULL, '59.132.65.172', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/118.0.5993.69 Mobile/15E148 Safari/604.1', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYzQyMHVEb09GVDBvUEhTWFdkMkpvYmVheVBXTU90SmdKQ2ltZ0lwaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1769499916),
('qSaefakOI1U0eoxRihqrHkdLKG4ScceyT49wqKeh', NULL, '199.45.154.123', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVVxZTliaGJyVVNmWHRaNkcyTUgzR0dlb0RndU1RdzBnVVBNWXhzNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHBzOi8vMTY1LjIyNy4xMDQuNTMvYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769493511),
('RC6zaOZmq6HR6eCHqcG6YkdqINJFYDTtT2xdQ2Wz', NULL, '217.138.216.124', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTlVhNWtwSGZUekp0VkFkNjBQTmxmNDk4VzI5TkdsZTdBbGhJRHRqdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769464725),
('RmGH3M2kaGVP9tOycOuLP6rdTObsCvTPpIFg8Uy4', NULL, '217.138.216.103', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmtWamJVRWgzVENzSFRYUHRyQmVhNENXcUNHMkFlWlVqdEZZNzBSeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769494961),
('Rw1GkpscEMyzDQXiWxtmBdTRL632HzfkC4m8xOOw', NULL, '34.19.32.25', 'Mozilla/5.0 (compatible; CMS-Checker/1.0; +https://example.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiblczT0R0Q1hyc25TTkJzc2JwMTI4cDVIbVh2VGxQZ2Zidk9XeDVhWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769514568),
('RZxRRthfWnt38sbvi3BuKhDGRwBE7mfSriNSTmpD', NULL, '114.180.104.70', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/83.0.4103.88 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS1AzVmw0OTR2VmdLQXZwUDJZQ1JsaWFtTnY3Qmw0NDlwMmdTRzRDaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769475432),
('s7Fn1riWOq0EzHoN1Le3vkeig7KeVmJhzNRwqV9P', NULL, '45.8.25.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVRGWU12NzBjME1aWmxwRmZsNWpHU1NXVVBlYjlsRWFKMXZFZ3dHNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769495711),
('SLhOrd9dVcrhnBIlG1hcYlkbEHps1Q9QTbhXz2lT', NULL, '181.56.233.63', 'Mozilla/5.0 (Linux, Android 10, K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkZzOFJBZ0FUbHlkNkx2SzlXN01SaEI4ZG14UTNZcUNnSk95YUtIcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769464980),
('SvxnJ19bDIvX12SnuBOKWgClUj7TapXkAbxX0FCq', NULL, '104.164.126.13', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUFY0U1hYUU9zU29iOHNTdWRWN1JUYUROWnJDWTBmaWFPUnBTazBpOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769511527),
('SZMk8nkxKkEKdxCO12tKEfoFdS7hGK6fnmuXDJ9n', NULL, '98.88.79.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWhrazBUa1BNMW5ia3RHNzJmRHhFbXNkVWVWYldFYk9rVFNPZm5DSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769464571),
('TXd9ZqLz6wgoIIX6YQHxaI7frAL3mSfKj8TR2oon', NULL, '142.248.80.123', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVp1RlBrUFlXTGoyWW9XSkdLY1FzVWk5NWQyVUh0QzJweTBPTVUyNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769508416),
('U1Dn6ohIheN053S1kbEdO0S7XjeJuSdqDZYojZOS', NULL, '186.163.10.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTVJWGNnQVRFTGFVYjBBazFNU3lkWGNDRXFUUFZLQ1VrS1d3ZkRHTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769465157),
('U9EWeDXwek0SGZA2d4LWQmeRFJX4yDCTqaXNdw2Y', NULL, '217.182.76.73', 'Mozilla/5.0 (X11; CrOS x86_64 14541.0.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGJ2b1M5em9IUmNVM0cxaTJmSndHUjlYQzNFa0JCa01SWFdhamJyQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769512997),
('udgSZuzQf5VZUx2rfeaK7xH0MCU38eZc5q23la8K', NULL, '216.73.216.159', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; ClaudeBot/1.0; +claudebot@anthropic.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid01sSWxyajBLZEw4akVxQXMzeTBTTHdheG5nalNPbjNnU0w1NVA4TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769469938),
('uLJ3ko444fUHP4C6xkDcOCqlLBsFMppncNhAvaoY', NULL, '35.233.95.0', 'Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101 Firefox/78.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmtEQjhFMEFoaDFKUTNwYWFUN0c0V0VBZ1BQWWl5QzB6VHhXNlRZZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHBzOi8vMTY1LjIyNy4xMDQuNTMvYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769501354),
('uXXZ6o3YBoWhprbBLau2NTxHsCIlnHU7JwQfrVYL', NULL, '34.116.39.71', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Safari/605.1.15 AppEngine-Google; (+http://code.google.com/appengine; appid: s~virustotalcloud)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRlp6MWVIVDZSS3d0eDR1d3N1ZlFzOUljRTB6OFdFcUloY0JVR2VZSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1769464868),
('uytWvO9UvS7iiCm5yL95lCO5fat1B0RGp2sRvJGO', NULL, '192.175.111.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGlHbnBrYjNSWjV4N3lHOVFWVXRjQlo5a3RRdnBmd1N3NVo5MERCRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769466299),
('UyZIt2c64n9YNWOr2EYCg5gB1uXQ036yRe2r7gNw', NULL, '49.12.147.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzlSc3dMcXFLMmdjVjk4TllFc1cxeDNMZjI4Mm9ScEN3emtWSkx6RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769464852),
('vcs8OtSb2cljH0AUf1vuxHmR5v66tVMCbpv8qm74', NULL, '103.4.250.71', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTkg3MWs3WG04endBcXFGSnlUY2R5a2trVXZVc3hRaDg1TUVRRUp0WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769466729),
('wflWI5OgXsnpqLAkVOy8cgL459smvsIFduJ6ovR3', NULL, '84.254.106.197', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzN4aEoyVzJYODFYN056TTlxazl0Um9hQ0xpNEVJbEZiMzR0NW80RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769467623),
('WFqZNAOebC7arOPDDvJ8PQlk6T94818N03vxiMVo', NULL, '104.164.173.58', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTzVZdDlDbGlZSE9uQkw0MTFmUzNXQ0xZdTd1ZDByTzJGakJMODRqZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769466732),
('WHGUU1ISLEwY5O6WciXHqT3KaXYezLqcL5GLs8TN', NULL, '174.138.61.51', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWEVFenVHTUpmTVV2VXREZ3BXZndxTUhWZDZSbmZLT3pKd25nSnRUcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769496627),
('WHwSZU6yX0eQ2pVpUIMadG7pENRv0NUS1Ww0i460', NULL, '23.82.96.179', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZlIzd1EwQ3Y3MjM2WjdlQ0dURVM5RUFQdEkybUIyQXQ4QVdoNzdoSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769465107),
('wTb3ZbC1BBlN7hDuFRbd2yLElvQwtD8FTTxWwOav', NULL, '66.132.153.115', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSjZvZE51aktkVGF2OUgwYjN0U2REZ2g0SEZrU3dwTE1wMHU2ekkzNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769523954),
('xgDkx8r3gCKbqwlcy3DoLtSzwD0uZYreJnpz1xdy', NULL, '52.23.203.129', 'okhttp/5.3.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSUtxTU13R0c2QlFVT1p5WFJIcUpWbjlNNjlyVnJ5dUptVkdGNDNnViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769466353),
('XHP2DLgtl0uNkWorSdRvkLQhN1de2330wVDoZ0ua', NULL, '54.191.33.144', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidE15Z0JlakVRMmhGRkhBbXQybG43WWhJQTN0ZUFGczRCbDRkSkdWeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769471660),
('XHpxqLDxkX0xYFv2xEJ3onk22l9rMfxyZqsUiPhy', NULL, '95.173.223.84', 'req/v3 (https://github.com/imroc/req)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSUFudXN6aU1Fa1FXMGFJNExuOE1sZTBPeEVXTmU4QkJLbTVjcTQ4QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769523833),
('YNnLruXbOycag1vym1wmX33i8w5rBLMIULXQ8fPj', NULL, '64.15.129.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTNudFpEQ2paUWdhRWFWVzl6QTZuV0V3VXZCVlFodmdXVkxWZFZzcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vYXBpLWZlLmF2aXNvbmxpbmUuc3RvcmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769466299),
('zCJWrDbQtMlFWi3egpfnirDSR6aGB2YoTCnKbqo2', NULL, '77.243.88.72', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/117.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidXpybGR3VURjQ2pCTWJVajh5SXk4c0RjVGc0dlRTNGNualg1VElwTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9hcGktZmUuYXZpc29ubGluZS5zdG9yZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769464828);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `surname` varchar(250) DEFAULT NULL,
  `avatar` varchar(250) DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `type_document` varchar(50) DEFAULT NULL,
  `n_document` varchar(25) DEFAULT NULL,
  `gender` varchar(1) DEFAULT 'M',
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es activo y 2 inactivo',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `surname`, `avatar`, `role_id`, `phone`, `type_document`, `n_document`, `gender`, `state`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'Nolberto Luis', 'nolberto.sumaran@gmail.com', 'Sumaran Pimentel', 'users/A5LgIiXgiYP8ygp8yPYllCYbPX628FNN5KAeSCk7.jpg', 1, '940078299', 'DNI', '75692184', 'M', 1, NULL, '$2y$12$McwV9K72eapcwybCVWsPP.Z/InOlVX0.ro87B/h7uONzkf2SDy/Oq', NULL, '2026-01-22 20:47:31', '2026-01-22 20:47:31', NULL),
(7, 'Sadith', 'rocio12@gmail.com', 'Rojas Ventura', 'users/UbeUAmlCXS0MyWnh5hRZyQ3wKuBxJYGhwZ6ExcyM.jpg', 2, '940078299', 'DNI', '7654321', 'F', 1, NULL, '$2y$12$EW.Y/sJTJUqiolz5TlObr.sx8tJTRuijvIj25q8UoLzbsX3gkyhlC', NULL, '2026-01-22 21:35:25', '2026-01-22 21:36:29', NULL),
(8, 'Romalda', 'romalda.p@gmail.com', 'Doroteo Pimentel', 'users/Iptl1A12YEakJ3asd3cDbDGmFwHuxstsvzs1c0od.jpg', 4, '930518038', 'DNI', '8765432', 'F', 1, NULL, '$2y$12$seTj7EqZfwLaekR92oXP9O827krbByA8MlpXXJwIRbRPvDGCYHNUS', NULL, '2026-01-22 21:43:21', '2026-01-22 21:43:21', NULL),
(9, 'Luis', 'luis12sumaran@hotmail.com', 'Pimentel', 'users/1j5sTj5xPeabpHWtHxtS6D2OpJmC4QaCAugB8MtX.jpg', 2, '940078299', 'DNI', '1234568', 'M', 1, NULL, '$2y$12$Dno/vHSq.9h.l20NqwnmY.JJlKC3XYP8jXy5f90DEFY1327nawovi', NULL, '2026-01-25 08:50:05', '2026-01-25 08:50:05', NULL);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `electronic_notes`
--
ALTER TABLE `electronic_notes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `electronic_note_details`
--
ALTER TABLE `electronic_note_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `guia_remisions`
--
ALTER TABLE `guia_remisions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;

--
-- AUTO_INCREMENT de la tabla `guia_remision_details`
--
ALTER TABLE `guia_remision_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1041;

--
-- AUTO_INCREMENT de la tabla `sale_details`
--
ALTER TABLE `sale_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `sale_payments`
--
ALTER TABLE `sale_payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
