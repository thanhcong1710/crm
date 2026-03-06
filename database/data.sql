/*
 Navicat Premium Dump SQL

 Source Server         : docker - localhost
 Source Server Type    : MySQL
 Source Server Version : 100508 (10.5.8-MariaDB-1:10.5.8+maria~focal)
 Source Host           : 127.0.0.1:33066
 Source Schema         : krayin_crm

 Target Server Type    : MySQL
 Target Server Version : 100508 (10.5.8-MariaDB-1:10.5.8+maria~focal)
 File Encoding         : 65001

 Date: 06/03/2026 16:48:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activities
-- ----------------------------
DROP TABLE IF EXISTS `activities`;
CREATE TABLE `activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `schedule_from` datetime DEFAULT NULL,
  `schedule_to` datetime DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activities_user_id_foreign` (`user_id`),
  CONSTRAINT `activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of activities
-- ----------------------------
BEGIN;
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (1, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:40:25', '2026-03-06 15:40:25', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (2, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:40:25', '2026-03-06 15:40:25', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (3, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:40:25', '2026-03-06 15:40:25', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (4, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:40:25', '2026-03-06 15:40:25', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (5, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:40:25', '2026-03-06 15:40:25', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (6, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:40:25', '2026-03-06 15:40:25', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (7, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:40:25', '2026-03-06 15:40:25', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (8, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:40:25', '2026-03-06 15:40:25', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (9, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (10, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (11, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (12, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (13, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (14, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (15, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (16, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (17, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (18, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (19, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (20, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (21, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (22, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (23, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (24, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (25, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (26, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (27, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (28, 'Đã tạo', 'system', NULL, NULL, NULL, NULL, 1, NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (29, 'Đã cập nhật Stage', 'system', NULL, '{\"attribute\":\"Stage\",\"new\":{\"value\":9,\"label\":\"T\\u01b0 V\\u1ea5n & \\u0110i Xem\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2026-03-06 15:46:54', '2026-03-06 15:46:54', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (30, 'Đã cập nhật Stage', 'system', NULL, '{\"attribute\":\"Stage\",\"new\":{\"value\":10,\"label\":\"Th\\u01b0\\u01a1ng L\\u01b0\\u1ee3ng \\/ B\\u00e1o Gi\\u00e1\"},\"old\":{\"value\":9,\"label\":\"T\\u01b0 V\\u1ea5n & \\u0110i Xem\"}}', NULL, NULL, 1, 1, '2026-03-06 15:46:58', '2026-03-06 15:46:58', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (31, 'Đã cập nhật Stage', 'system', NULL, '{\"attribute\":\"Stage\",\"new\":{\"value\":7,\"label\":\"M\\u1edbi Ti\\u1ebfp Nh\\u1eadn\"},\"old\":{\"value\":10,\"label\":\"Th\\u01b0\\u01a1ng L\\u01b0\\u1ee3ng \\/ B\\u00e1o Gi\\u00e1\"}}', NULL, NULL, 1, 1, '2026-03-06 15:47:04', '2026-03-06 15:47:04', NULL);
INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES (32, 'Đã cập nhật Stage', 'system', NULL, '{\"attribute\":\"Stage\",\"new\":{\"value\":8,\"label\":\"\\u0110\\u00e3 Li\\u00ean H\\u1ec7 \\/ Nhu C\\u1ea7u\"},\"old\":{\"value\":7,\"label\":\"M\\u1edbi Ti\\u1ebfp Nh\\u1eadn\"}}', NULL, NULL, 1, 1, '2026-03-06 15:47:07', '2026-03-06 15:47:07', NULL);
COMMIT;

-- ----------------------------
-- Table structure for activity_files
-- ----------------------------
DROP TABLE IF EXISTS `activity_files`;
CREATE TABLE `activity_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_files_activity_id_foreign` (`activity_id`),
  CONSTRAINT `activity_files_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of activity_files
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for activity_participants
-- ----------------------------
DROP TABLE IF EXISTS `activity_participants`;
CREATE TABLE `activity_participants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `activity_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `person_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_participants_activity_id_foreign` (`activity_id`),
  KEY `activity_participants_user_id_foreign` (`user_id`),
  KEY `activity_participants_person_id_foreign` (`person_id`),
  CONSTRAINT `activity_participants_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE,
  CONSTRAINT `activity_participants_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE,
  CONSTRAINT `activity_participants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of activity_participants
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for attribute_options
-- ----------------------------
DROP TABLE IF EXISTS `attribute_options`;
CREATE TABLE `attribute_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `attribute_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_options_attribute_id_foreign` (`attribute_id`),
  CONSTRAINT `attribute_options_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of attribute_options
-- ----------------------------
BEGIN;
INSERT INTO `attribute_options` (`id`, `name`, `sort_order`, `attribute_id`) VALUES (1, 'Quận 1', 1, 62);
INSERT INTO `attribute_options` (`id`, `name`, `sort_order`, `attribute_id`) VALUES (2, 'Quận 2', 2, 62);
INSERT INTO `attribute_options` (`id`, `name`, `sort_order`, `attribute_id`) VALUES (3, 'Quận 3', 3, 62);
INSERT INTO `attribute_options` (`id`, `name`, `sort_order`, `attribute_id`) VALUES (4, 'Quận 7', 4, 62);
INSERT INTO `attribute_options` (`id`, `name`, `sort_order`, `attribute_id`) VALUES (5, 'Quận 9', 5, 62);
INSERT INTO `attribute_options` (`id`, `name`, `sort_order`, `attribute_id`) VALUES (6, 'Bình Thạnh', 6, 62);
INSERT INTO `attribute_options` (`id`, `name`, `sort_order`, `attribute_id`) VALUES (7, 'Thủ Đức', 7, 62);
INSERT INTO `attribute_options` (`id`, `name`, `sort_order`, `attribute_id`) VALUES (8, 'Đông', 1, 63);
INSERT INTO `attribute_options` (`id`, `name`, `sort_order`, `attribute_id`) VALUES (9, 'Tây', 2, 63);
INSERT INTO `attribute_options` (`id`, `name`, `sort_order`, `attribute_id`) VALUES (10, 'Nam', 3, 63);
INSERT INTO `attribute_options` (`id`, `name`, `sort_order`, `attribute_id`) VALUES (11, 'Bắc', 4, 63);
INSERT INTO `attribute_options` (`id`, `name`, `sort_order`, `attribute_id`) VALUES (12, 'Đông Nam', 5, 63);
INSERT INTO `attribute_options` (`id`, `name`, `sort_order`, `attribute_id`) VALUES (13, 'Đông Bắc', 6, 63);
INSERT INTO `attribute_options` (`id`, `name`, `sort_order`, `attribute_id`) VALUES (14, 'Tây Nam', 7, 63);
INSERT INTO `attribute_options` (`id`, `name`, `sort_order`, `attribute_id`) VALUES (15, 'Tây Bắc', 8, 63);
INSERT INTO `attribute_options` (`id`, `name`, `sort_order`, `attribute_id`) VALUES (16, 'Đất nền', 1, 64);
INSERT INTO `attribute_options` (`id`, `name`, `sort_order`, `attribute_id`) VALUES (17, 'Căn hộ', 2, 64);
INSERT INTO `attribute_options` (`id`, `name`, `sort_order`, `attribute_id`) VALUES (18, 'Nhà phố', 3, 64);
INSERT INTO `attribute_options` (`id`, `name`, `sort_order`, `attribute_id`) VALUES (19, 'Biệt thự/Villa', 4, 64);
INSERT INTO `attribute_options` (`id`, `name`, `sort_order`, `attribute_id`) VALUES (20, 'Condotel', 5, 64);
COMMIT;

-- ----------------------------
-- Table structure for attribute_values
-- ----------------------------
DROP TABLE IF EXISTS `attribute_values`;
CREATE TABLE `attribute_values` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'leads',
  `text_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` double DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_value`)),
  `entity_id` int(10) unsigned NOT NULL,
  `attribute_id` int(10) unsigned NOT NULL,
  `unique_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_type_attribute_value_index_unique` (`entity_type`,`entity_id`,`attribute_id`),
  UNIQUE KEY `attribute_values_unique_id_unique` (`unique_id`),
  KEY `attribute_values_attribute_id_foreign` (`attribute_id`),
  CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of attribute_values
-- ----------------------------
BEGIN;
INSERT INTO `attribute_values` (`id`, `entity_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `entity_id`, `attribute_id`, `unique_id`) VALUES (1, 'products', '123', NULL, NULL, NULL, NULL, NULL, NULL, 1, 61, NULL);
INSERT INTO `attribute_values` (`id`, `entity_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `entity_id`, `attribute_id`, `unique_id`) VALUES (2, 'products', NULL, NULL, 19, NULL, NULL, NULL, NULL, 1, 64, NULL);
INSERT INTO `attribute_values` (`id`, `entity_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `entity_id`, `attribute_id`, `unique_id`) VALUES (3, 'products', NULL, NULL, 4, NULL, NULL, NULL, NULL, 1, 62, NULL);
INSERT INTO `attribute_values` (`id`, `entity_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `entity_id`, `attribute_id`, `unique_id`) VALUES (4, 'products', '103', NULL, NULL, NULL, NULL, NULL, NULL, 2, 61, NULL);
INSERT INTO `attribute_values` (`id`, `entity_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `entity_id`, `attribute_id`, `unique_id`) VALUES (5, 'products', NULL, NULL, 19, NULL, NULL, NULL, NULL, 2, 64, NULL);
INSERT INTO `attribute_values` (`id`, `entity_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `entity_id`, `attribute_id`, `unique_id`) VALUES (6, 'products', NULL, NULL, 4, NULL, NULL, NULL, NULL, 2, 62, NULL);
INSERT INTO `attribute_values` (`id`, `entity_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `entity_id`, `attribute_id`, `unique_id`) VALUES (7, 'products', '62', NULL, NULL, NULL, NULL, NULL, NULL, 3, 61, NULL);
INSERT INTO `attribute_values` (`id`, `entity_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `entity_id`, `attribute_id`, `unique_id`) VALUES (8, 'products', NULL, NULL, 17, NULL, NULL, NULL, NULL, 3, 64, NULL);
INSERT INTO `attribute_values` (`id`, `entity_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `entity_id`, `attribute_id`, `unique_id`) VALUES (9, 'products', NULL, NULL, 7, NULL, NULL, NULL, NULL, 3, 62, NULL);
INSERT INTO `attribute_values` (`id`, `entity_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `entity_id`, `attribute_id`, `unique_id`) VALUES (10, 'products', '78', NULL, NULL, NULL, NULL, NULL, NULL, 4, 61, NULL);
INSERT INTO `attribute_values` (`id`, `entity_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `entity_id`, `attribute_id`, `unique_id`) VALUES (11, 'products', NULL, NULL, 16, NULL, NULL, NULL, NULL, 4, 64, NULL);
INSERT INTO `attribute_values` (`id`, `entity_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `entity_id`, `attribute_id`, `unique_id`) VALUES (12, 'products', NULL, NULL, 4, NULL, NULL, NULL, NULL, 4, 62, NULL);
INSERT INTO `attribute_values` (`id`, `entity_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `entity_id`, `attribute_id`, `unique_id`) VALUES (13, 'products', '76', NULL, NULL, NULL, NULL, NULL, NULL, 5, 61, NULL);
INSERT INTO `attribute_values` (`id`, `entity_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `entity_id`, `attribute_id`, `unique_id`) VALUES (14, 'products', NULL, NULL, 16, NULL, NULL, NULL, NULL, 5, 64, NULL);
INSERT INTO `attribute_values` (`id`, `entity_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `entity_id`, `attribute_id`, `unique_id`) VALUES (15, 'products', NULL, NULL, 4, NULL, NULL, NULL, NULL, 5, 62, NULL);
INSERT INTO `attribute_values` (`id`, `entity_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `entity_id`, `attribute_id`, `unique_id`) VALUES (16, 'products', '128', NULL, NULL, NULL, NULL, NULL, NULL, 6, 61, NULL);
INSERT INTO `attribute_values` (`id`, `entity_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `entity_id`, `attribute_id`, `unique_id`) VALUES (17, 'products', NULL, NULL, 17, NULL, NULL, NULL, NULL, 6, 64, NULL);
INSERT INTO `attribute_values` (`id`, `entity_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `entity_id`, `attribute_id`, `unique_id`) VALUES (18, 'products', NULL, NULL, 5, NULL, NULL, NULL, NULL, 6, 62, NULL);
INSERT INTO `attribute_values` (`id`, `entity_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `entity_id`, `attribute_id`, `unique_id`) VALUES (19, 'products', '82', NULL, NULL, NULL, NULL, NULL, NULL, 7, 61, NULL);
INSERT INTO `attribute_values` (`id`, `entity_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `entity_id`, `attribute_id`, `unique_id`) VALUES (20, 'products', NULL, NULL, 16, NULL, NULL, NULL, NULL, 7, 64, NULL);
INSERT INTO `attribute_values` (`id`, `entity_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `entity_id`, `attribute_id`, `unique_id`) VALUES (21, 'products', NULL, NULL, 2, NULL, NULL, NULL, NULL, 7, 62, NULL);
INSERT INTO `attribute_values` (`id`, `entity_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `entity_id`, `attribute_id`, `unique_id`) VALUES (22, 'products', '130', NULL, NULL, NULL, NULL, NULL, NULL, 8, 61, NULL);
INSERT INTO `attribute_values` (`id`, `entity_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `entity_id`, `attribute_id`, `unique_id`) VALUES (23, 'products', NULL, NULL, 20, NULL, NULL, NULL, NULL, 8, 64, NULL);
INSERT INTO `attribute_values` (`id`, `entity_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `entity_id`, `attribute_id`, `unique_id`) VALUES (24, 'products', NULL, NULL, 6, NULL, NULL, NULL, NULL, 8, 62, NULL);
INSERT INTO `attribute_values` (`id`, `entity_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `entity_id`, `attribute_id`, `unique_id`) VALUES (25, 'leads', NULL, NULL, 8, NULL, NULL, NULL, NULL, 4, 27, NULL);
COMMIT;

-- ----------------------------
-- Table structure for attributes
-- ----------------------------
DROP TABLE IF EXISTS `attributes`;
CREATE TABLE `attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lookup_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `validation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT 0,
  `is_unique` tinyint(1) NOT NULL DEFAULT 0,
  `quick_add` tinyint(1) NOT NULL DEFAULT 0,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `attributes_code_entity_type_unique` (`code`,`entity_type`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of attributes
-- ----------------------------
BEGIN;
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (19, 'title', 'Title', 'text', NULL, 'leads', 1, NULL, 1, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (20, 'description', 'Description', 'textarea', NULL, 'leads', 2, NULL, 0, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (21, 'lead_value', 'Lead Value', 'price', NULL, 'leads', 3, 'decimal', 1, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (22, 'lead_source_id', 'Source', 'select', 'lead_sources', 'leads', 4, NULL, 1, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (23, 'lead_type_id', 'Type', 'select', 'lead_types', 'leads', 5, NULL, 1, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (24, 'user_id', 'Sales Owner', 'select', 'users', 'leads', 7, NULL, 0, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (25, 'expected_close_date', 'Expected Close Date', 'date', NULL, 'leads', 8, NULL, 0, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (26, 'lead_pipeline_id', 'Pipeline', 'lookup', 'lead_pipelines', 'leads', 9, NULL, 1, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (27, 'lead_pipeline_stage_id', 'Stage', 'lookup', 'lead_pipeline_stages', 'leads', 10, NULL, 1, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (28, 'name', 'Name', 'text', NULL, 'persons', 1, NULL, 1, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (29, 'emails', 'Emails', 'email', NULL, 'persons', 2, NULL, 1, 1, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (30, 'contact_numbers', 'Contact Numbers', 'phone', NULL, 'persons', 3, 'numeric', 0, 1, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (31, 'job_title', 'Job Title', 'text', NULL, 'persons', 4, NULL, 0, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (32, 'user_id', 'Sales Owner', 'lookup', 'users', 'persons', 5, NULL, 0, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (33, 'organization_id', 'Organization', 'lookup', 'organizations', 'persons', 6, NULL, 0, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (34, 'name', 'Name', 'text', NULL, 'organizations', 1, NULL, 1, 1, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (35, 'address', 'Address', 'address', NULL, 'organizations', 2, NULL, 0, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (36, 'user_id', 'Sales Owner', 'lookup', 'users', 'organizations', 3, NULL, 0, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (37, 'name', 'Name', 'text', NULL, 'products', 1, NULL, 1, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (38, 'description', 'Description', 'textarea', NULL, 'products', 2, NULL, 0, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (39, 'sku', 'SKU', 'text', NULL, 'products', 3, NULL, 1, 1, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (40, 'quantity', 'Quantity', 'text', NULL, 'products', 4, 'numeric', 1, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (41, 'price', 'Price', 'price', NULL, 'products', 5, 'decimal', 1, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (42, 'user_id', 'Sales Owner', 'select', 'users', 'quotes', 1, NULL, 1, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (43, 'subject', 'Subject', 'text', NULL, 'quotes', 2, NULL, 1, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (44, 'description', 'Description', 'textarea', NULL, 'quotes', 3, NULL, 0, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (45, 'billing_address', 'Billing Address', 'address', NULL, 'quotes', 4, NULL, 1, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (46, 'shipping_address', 'Shipping Address', 'address', NULL, 'quotes', 5, NULL, 0, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (47, 'discount_percent', 'Discount Percent', 'text', NULL, 'quotes', 6, 'decimal', 0, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (48, 'discount_amount', 'Discount Amount', 'price', NULL, 'quotes', 7, 'decimal', 0, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (49, 'tax_amount', 'Tax Amount', 'price', NULL, 'quotes', 8, 'decimal', 0, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (50, 'adjustment_amount', 'Adjustment Amount', 'price', NULL, 'quotes', 9, 'decimal', 0, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (51, 'sub_total', 'Sub Total', 'price', NULL, 'quotes', 10, 'decimal', 1, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (52, 'grand_total', 'Grand Total', 'price', NULL, 'quotes', 11, 'decimal', 1, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (53, 'expired_at', 'Expired At', 'date', NULL, 'quotes', 12, NULL, 1, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (54, 'person_id', 'Person', 'lookup', 'persons', 'quotes', 13, NULL, 1, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (55, 'name', 'Name', 'text', NULL, 'warehouses', 1, NULL, 1, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (56, 'description', 'Description', 'textarea', NULL, 'warehouses', 2, NULL, 0, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (57, 'contact_name', 'Contact Name', 'text', NULL, 'warehouses', 3, NULL, 1, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (58, 'contact_emails', 'Contact Emails', 'email', NULL, 'warehouses', 4, NULL, 1, 1, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (59, 'contact_numbers', 'Contact Numbers', 'phone', NULL, 'warehouses', 5, 'numeric', 0, 1, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (60, 'contact_address', 'Contact Address', 'address', NULL, 'warehouses', 6, NULL, 1, 0, 1, 0, '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (61, 'dien_tich_m2', 'Diện tích (m2)', 'text', NULL, 'products', NULL, 'numeric', 0, 0, 1, 1, '2026-03-06 15:40:25', '2026-03-06 15:40:25');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (62, 'vi_tri_quan', 'Vị trí/Quận huyện', 'select', NULL, 'products', NULL, NULL, 0, 0, 1, 1, '2026-03-06 15:40:25', '2026-03-06 15:40:25');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (63, 'huong_nha', 'Hướng nhà', 'select', NULL, 'products', NULL, NULL, 0, 0, 1, 1, '2026-03-06 15:40:25', '2026-03-06 15:40:25');
INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES (64, 'loai_bds', 'Loại BĐS', 'select', NULL, 'products', NULL, NULL, 0, 0, 1, 1, '2026-03-06 15:40:25', '2026-03-06 15:40:25');
COMMIT;

-- ----------------------------
-- Table structure for core_config
-- ----------------------------
DROP TABLE IF EXISTS `core_config`;
CREATE TABLE `core_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of core_config
-- ----------------------------
BEGIN;
INSERT INTO `core_config` (`id`, `code`, `value`, `created_at`, `updated_at`) VALUES (1, 'general.general.locale_settings.locale', 'vi', '2026-03-06 11:59:50', '2026-03-06 11:59:50');
INSERT INTO `core_config` (`id`, `code`, `value`, `created_at`, `updated_at`) VALUES (2, 'general.settings.menu.mail.mail', 'Thư', '2026-03-06 15:53:51', '2026-03-06 15:53:51');
INSERT INTO `core_config` (`id`, `code`, `value`, `created_at`, `updated_at`) VALUES (3, 'general.settings.menu.mail.inbox', 'Hộp Thư Đến', '2026-03-06 15:53:51', '2026-03-06 15:53:51');
INSERT INTO `core_config` (`id`, `code`, `value`, `created_at`, `updated_at`) VALUES (4, 'general.settings.menu.mail.draft', 'Thư Nháp', '2026-03-06 15:53:51', '2026-03-06 15:53:51');
INSERT INTO `core_config` (`id`, `code`, `value`, `created_at`, `updated_at`) VALUES (5, 'general.settings.menu.mail.outbox', 'Hộp Thư Đi', '2026-03-06 15:53:51', '2026-03-06 15:53:51');
INSERT INTO `core_config` (`id`, `code`, `value`, `created_at`, `updated_at`) VALUES (6, 'general.settings.menu.mail.sent', 'Đã Gửi', '2026-03-06 15:53:51', '2026-03-06 15:53:51');
INSERT INTO `core_config` (`id`, `code`, `value`, `created_at`, `updated_at`) VALUES (7, 'general.settings.menu.mail.trash', 'Thùng Rác', '2026-03-06 15:53:51', '2026-03-06 15:53:51');
INSERT INTO `core_config` (`id`, `code`, `value`, `created_at`, `updated_at`) VALUES (8, 'general.settings.menu.contacts.contacts', 'Liên Hệ', '2026-03-06 15:53:51', '2026-03-06 15:53:51');
INSERT INTO `core_config` (`id`, `code`, `value`, `created_at`, `updated_at`) VALUES (9, 'general.settings.menu.contacts.persons', 'Người Liên Hệ', '2026-03-06 15:53:51', '2026-03-06 15:53:51');
INSERT INTO `core_config` (`id`, `code`, `value`, `created_at`, `updated_at`) VALUES (10, 'general.settings.menu.contacts.organizations', 'Tổ Chức', '2026-03-06 15:53:51', '2026-03-06 15:53:51');
INSERT INTO `core_config` (`id`, `code`, `value`, `created_at`, `updated_at`) VALUES (11, 'general.settings.footer.label', '<p>&copy; 2025 C&ocirc;ng Nghệ Gi&aacute;o Dục. Bảo lưu mọi quyền.</p>', '2026-03-06 15:53:51', '2026-03-06 15:53:51');
INSERT INTO `core_config` (`id`, `code`, `value`, `created_at`, `updated_at`) VALUES (12, 'general.settings.menu.dashboard', 'Bảng Điều Khiển', '2026-03-06 15:53:51', '2026-03-06 15:53:51');
INSERT INTO `core_config` (`id`, `code`, `value`, `created_at`, `updated_at`) VALUES (13, 'general.settings.menu.leads', 'Khách Hàng Tiềm Năng', '2026-03-06 15:53:51', '2026-03-06 15:53:51');
INSERT INTO `core_config` (`id`, `code`, `value`, `created_at`, `updated_at`) VALUES (14, 'general.settings.menu.quotes', 'Báo Giá', '2026-03-06 15:53:51', '2026-03-06 15:53:51');
INSERT INTO `core_config` (`id`, `code`, `value`, `created_at`, `updated_at`) VALUES (15, 'general.settings.menu.activities', 'Hoạt Động', '2026-03-06 15:53:51', '2026-03-06 15:53:51');
INSERT INTO `core_config` (`id`, `code`, `value`, `created_at`, `updated_at`) VALUES (16, 'general.settings.menu.products', 'Sản Phẩm', '2026-03-06 15:53:51', '2026-03-06 15:53:51');
INSERT INTO `core_config` (`id`, `code`, `value`, `created_at`, `updated_at`) VALUES (17, 'general.settings.menu.settings', 'Cài Đặt', '2026-03-06 15:53:51', '2026-03-06 15:53:51');
INSERT INTO `core_config` (`id`, `code`, `value`, `created_at`, `updated_at`) VALUES (18, 'general.settings.menu.configuration', 'Cấu Hình', '2026-03-06 15:53:51', '2026-03-06 15:53:51');
INSERT INTO `core_config` (`id`, `code`, `value`, `created_at`, `updated_at`) VALUES (19, 'general.settings.menu_color.brand_color', '#0e90d9', '2026-03-06 15:53:51', '2026-03-06 15:53:51');
INSERT INTO `core_config` (`id`, `code`, `value`, `created_at`, `updated_at`) VALUES (20, 'general.magic_ai.settings.enable', '1', '2026-03-06 16:31:51', '2026-03-06 16:31:51');
INSERT INTO `core_config` (`id`, `code`, `value`, `created_at`, `updated_at`) VALUES (21, 'general.magic_ai.settings.api_key', 'AIzaSyAJk4yr6XCmQLWCVcPYwvlE0BoDGtzobsI', '2026-03-06 16:31:51', '2026-03-06 16:31:51');
INSERT INTO `core_config` (`id`, `code`, `value`, `created_at`, `updated_at`) VALUES (22, 'general.magic_ai.settings.model', 'google/gemini-2.0-flash-001', '2026-03-06 16:31:51', '2026-03-06 16:31:51');
INSERT INTO `core_config` (`id`, `code`, `value`, `created_at`, `updated_at`) VALUES (23, 'general.magic_ai.settings.other_model', '', '2026-03-06 16:31:51', '2026-03-06 16:31:51');
INSERT INTO `core_config` (`id`, `code`, `value`, `created_at`, `updated_at`) VALUES (24, 'general.magic_ai.doc_generation.enabled', '1', '2026-03-06 16:31:51', '2026-03-06 16:31:51');
COMMIT;

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of countries
-- ----------------------------
BEGIN;
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (1, 'AF', 'Afghanistan');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (2, 'AX', 'Åland Islands');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (3, 'AL', 'Albania');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (4, 'DZ', 'Algeria');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (5, 'AS', 'American Samoa');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (6, 'AD', 'Andorra');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (7, 'AO', 'Angola');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (8, 'AI', 'Anguilla');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (9, 'AQ', 'Antarctica');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (10, 'AG', 'Antigua & Barbuda');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (11, 'AR', 'Argentina');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (12, 'AM', 'Armenia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (13, 'AW', 'Aruba');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (14, 'AC', 'Ascension Island');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (15, 'AU', 'Australia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (16, 'AT', 'Austria');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (17, 'AZ', 'Azerbaijan');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (18, 'BS', 'Bahamas');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (19, 'BH', 'Bahrain');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (20, 'BD', 'Bangladesh');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (21, 'BB', 'Barbados');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (22, 'BY', 'Belarus');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (23, 'BE', 'Belgium');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (24, 'BZ', 'Belize');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (25, 'BJ', 'Benin');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (26, 'BM', 'Bermuda');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (27, 'BT', 'Bhutan');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (28, 'BO', 'Bolivia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (29, 'BA', 'Bosnia & Herzegovina');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (30, 'BW', 'Botswana');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (31, 'BR', 'Brazil');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (32, 'IO', 'British Indian Ocean Territory');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (33, 'VG', 'British Virgin Islands');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (34, 'BN', 'Brunei');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (35, 'BG', 'Bulgaria');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (36, 'BF', 'Burkina Faso');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (37, 'BI', 'Burundi');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (38, 'KH', 'Cambodia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (39, 'CM', 'Cameroon');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (40, 'CA', 'Canada');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (41, 'IC', 'Canary Islands');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (42, 'CV', 'Cape Verde');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (43, 'BQ', 'Caribbean Netherlands');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (44, 'KY', 'Cayman Islands');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (45, 'CF', 'Central African Republic');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (46, 'EA', 'Ceuta & Melilla');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (47, 'TD', 'Chad');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (48, 'CL', 'Chile');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (49, 'CN', 'China');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (50, 'CX', 'Christmas Island');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (51, 'CC', 'Cocos (Keeling) Islands');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (52, 'CO', 'Colombia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (53, 'KM', 'Comoros');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (54, 'CG', 'Congo - Brazzaville');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (55, 'CD', 'Congo - Kinshasa');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (56, 'CK', 'Cook Islands');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (57, 'CR', 'Costa Rica');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (58, 'CI', 'Côte d’Ivoire');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (59, 'HR', 'Croatia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (60, 'CU', 'Cuba');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (61, 'CW', 'Curaçao');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (62, 'CY', 'Cyprus');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (63, 'CZ', 'Czechia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (64, 'DK', 'Denmark');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (65, 'DG', 'Diego Garcia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (66, 'DJ', 'Djibouti');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (67, 'DM', 'Dominica');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (68, 'DO', 'Dominican Republic');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (69, 'EC', 'Ecuador');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (70, 'EG', 'Egypt');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (71, 'SV', 'El Salvador');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (72, 'GQ', 'Equatorial Guinea');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (73, 'ER', 'Eritrea');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (74, 'EE', 'Estonia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (75, 'ET', 'Ethiopia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (76, 'EZ', 'Eurozone');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (77, 'FK', 'Falkland Islands');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (78, 'FO', 'Faroe Islands');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (79, 'FJ', 'Fiji');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (80, 'FI', 'Finland');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (81, 'FR', 'France');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (82, 'GF', 'French Guiana');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (83, 'PF', 'French Polynesia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (84, 'TF', 'French Southern Territories');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (85, 'GA', 'Gabon');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (86, 'GM', 'Gambia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (87, 'GE', 'Georgia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (88, 'DE', 'Germany');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (89, 'GH', 'Ghana');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (90, 'GI', 'Gibraltar');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (91, 'GR', 'Greece');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (92, 'GL', 'Greenland');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (93, 'GD', 'Grenada');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (94, 'GP', 'Guadeloupe');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (95, 'GU', 'Guam');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (96, 'GT', 'Guatemala');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (97, 'GG', 'Guernsey');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (98, 'GN', 'Guinea');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (99, 'GW', 'Guinea-Bissau');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (100, 'GY', 'Guyana');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (101, 'HT', 'Haiti');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (102, 'HN', 'Honduras');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (103, 'HK', 'Hong Kong SAR China');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (104, 'HU', 'Hungary');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (105, 'IS', 'Iceland');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (106, 'IN', 'India');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (107, 'ID', 'Indonesia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (108, 'IR', 'Iran');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (109, 'IQ', 'Iraq');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (110, 'IE', 'Ireland');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (111, 'IM', 'Isle of Man');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (112, 'IL', 'Israel');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (113, 'IT', 'Italy');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (114, 'JM', 'Jamaica');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (115, 'JP', 'Japan');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (116, 'JE', 'Jersey');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (117, 'JO', 'Jordan');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (118, 'KZ', 'Kazakhstan');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (119, 'KE', 'Kenya');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (120, 'KI', 'Kiribati');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (121, 'XK', 'Kosovo');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (122, 'KW', 'Kuwait');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (123, 'KG', 'Kyrgyzstan');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (124, 'LA', 'Laos');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (125, 'LV', 'Latvia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (126, 'LB', 'Lebanon');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (127, 'LS', 'Lesotho');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (128, 'LR', 'Liberia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (129, 'LY', 'Libya');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (130, 'LI', 'Liechtenstein');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (131, 'LT', 'Lithuania');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (132, 'LU', 'Luxembourg');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (133, 'MO', 'Macau SAR China');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (134, 'MK', 'Macedonia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (135, 'MG', 'Madagascar');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (136, 'MW', 'Malawi');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (137, 'MY', 'Malaysia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (138, 'MV', 'Maldives');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (139, 'ML', 'Mali');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (140, 'MT', 'Malta');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (141, 'MH', 'Marshall Islands');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (142, 'MQ', 'Martinique');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (143, 'MR', 'Mauritania');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (144, 'MU', 'Mauritius');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (145, 'YT', 'Mayotte');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (146, 'MX', 'Mexico');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (147, 'FM', 'Micronesia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (148, 'MD', 'Moldova');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (149, 'MC', 'Monaco');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (150, 'MN', 'Mongolia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (151, 'ME', 'Montenegro');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (152, 'MS', 'Montserrat');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (153, 'MA', 'Morocco');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (154, 'MZ', 'Mozambique');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (155, 'MM', 'Myanmar (Burma)');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (156, 'NA', 'Namibia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (157, 'NR', 'Nauru');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (158, 'NP', 'Nepal');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (159, 'NL', 'Netherlands');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (160, 'NC', 'New Caledonia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (161, 'NZ', 'New Zealand');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (162, 'NI', 'Nicaragua');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (163, 'NE', 'Niger');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (164, 'NG', 'Nigeria');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (165, 'NU', 'Niue');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (166, 'NF', 'Norfolk Island');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (167, 'KP', 'North Korea');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (168, 'MP', 'Northern Mariana Islands');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (169, 'NO', 'Norway');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (170, 'OM', 'Oman');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (171, 'PK', 'Pakistan');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (172, 'PW', 'Palau');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (173, 'PS', 'Palestinian Territories');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (174, 'PA', 'Panama');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (175, 'PG', 'Papua New Guinea');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (176, 'PY', 'Paraguay');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (177, 'PE', 'Peru');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (178, 'PH', 'Philippines');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (179, 'PN', 'Pitcairn Islands');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (180, 'PL', 'Poland');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (181, 'PT', 'Portugal');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (182, 'PR', 'Puerto Rico');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (183, 'QA', 'Qatar');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (184, 'RE', 'Réunion');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (185, 'RO', 'Romania');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (186, 'RU', 'Russia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (187, 'RW', 'Rwanda');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (188, 'WS', 'Samoa');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (189, 'SM', 'San Marino');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (190, 'ST', 'São Tomé & Príncipe');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (191, 'SA', 'Saudi Arabia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (192, 'SN', 'Senegal');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (193, 'RS', 'Serbia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (194, 'SC', 'Seychelles');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (195, 'SL', 'Sierra Leone');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (196, 'SG', 'Singapore');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (197, 'SX', 'Sint Maarten');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (198, 'SK', 'Slovakia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (199, 'SI', 'Slovenia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (200, 'SB', 'Solomon Islands');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (201, 'SO', 'Somalia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (202, 'ZA', 'South Africa');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (203, 'GS', 'South Georgia & South Sandwich Islands');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (204, 'KR', 'South Korea');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (205, 'SS', 'South Sudan');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (206, 'ES', 'Spain');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (207, 'LK', 'Sri Lanka');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (208, 'BL', 'St. Barthélemy');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (209, 'SH', 'St. Helena');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (210, 'KN', 'St. Kitts & Nevis');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (211, 'LC', 'St. Lucia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (212, 'MF', 'St. Martin');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (213, 'PM', 'St. Pierre & Miquelon');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (214, 'VC', 'St. Vincent & Grenadines');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (215, 'SD', 'Sudan');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (216, 'SR', 'Suriname');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (217, 'SJ', 'Svalbard & Jan Mayen');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (218, 'SZ', 'Swaziland');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (219, 'SE', 'Sweden');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (220, 'CH', 'Switzerland');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (221, 'SY', 'Syria');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (222, 'TW', 'Taiwan');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (223, 'TJ', 'Tajikistan');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (224, 'TZ', 'Tanzania');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (225, 'TH', 'Thailand');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (226, 'TL', 'Timor-Leste');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (227, 'TG', 'Togo');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (228, 'TK', 'Tokelau');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (229, 'TO', 'Tonga');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (230, 'TT', 'Trinidad & Tobago');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (231, 'TA', 'Tristan da Cunha');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (232, 'TN', 'Tunisia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (233, 'TR', 'Turkey');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (234, 'TM', 'Turkmenistan');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (235, 'TC', 'Turks & Caicos Islands');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (236, 'TV', 'Tuvalu');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (237, 'UM', 'U.S. Outlying Islands');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (238, 'VI', 'U.S. Virgin Islands');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (239, 'UG', 'Uganda');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (240, 'UA', 'Ukraine');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (241, 'AE', 'United Arab Emirates');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (242, 'GB', 'United Kingdom');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (243, 'UN', 'United Nations');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (244, 'US', 'United States');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (245, 'UY', 'Uruguay');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (246, 'UZ', 'Uzbekistan');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (247, 'VU', 'Vanuatu');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (248, 'VA', 'Vatican City');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (249, 'VE', 'Venezuela');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (250, 'VN', 'Vietnam');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (251, 'WF', 'Wallis & Futuna');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (252, 'EH', 'Western Sahara');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (253, 'YE', 'Yemen');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (254, 'ZM', 'Zambia');
INSERT INTO `countries` (`id`, `code`, `name`) VALUES (255, 'ZW', 'Zimbabwe');
COMMIT;

-- ----------------------------
-- Table structure for country_states
-- ----------------------------
DROP TABLE IF EXISTS `country_states`;
CREATE TABLE `country_states` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `country_states_country_id_foreign` (`country_id`),
  CONSTRAINT `country_states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=569 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of country_states
-- ----------------------------
BEGIN;
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (1, 'US', 'AL', 'Alabama', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (2, 'US', 'AK', 'Alaska', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (3, 'US', 'AS', 'American Samoa', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (4, 'US', 'AZ', 'Arizona', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (5, 'US', 'AR', 'Arkansas', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (6, 'US', 'AE', 'Armed Forces Africa', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (7, 'US', 'AA', 'Armed Forces Americas', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (8, 'US', 'AE', 'Armed Forces Canada', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (9, 'US', 'AE', 'Armed Forces Europe', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (10, 'US', 'AE', 'Armed Forces Middle East', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (11, 'US', 'AP', 'Armed Forces Pacific', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (12, 'US', 'CA', 'California', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (13, 'US', 'CO', 'Colorado', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (14, 'US', 'CT', 'Connecticut', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (15, 'US', 'DE', 'Delaware', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (16, 'US', 'DC', 'District of Columbia', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (17, 'US', 'FM', 'Federated States Of Micronesia', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (18, 'US', 'FL', 'Florida', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (19, 'US', 'GA', 'Georgia', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (20, 'US', 'GU', 'Guam', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (21, 'US', 'HI', 'Hawaii', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (22, 'US', 'ID', 'Idaho', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (23, 'US', 'IL', 'Illinois', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (24, 'US', 'IN', 'Indiana', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (25, 'US', 'IA', 'Iowa', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (26, 'US', 'KS', 'Kansas', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (27, 'US', 'KY', 'Kentucky', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (28, 'US', 'LA', 'Louisiana', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (29, 'US', 'ME', 'Maine', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (30, 'US', 'MH', 'Marshall Islands', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (31, 'US', 'MD', 'Maryland', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (32, 'US', 'MA', 'Massachusetts', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (33, 'US', 'MI', 'Michigan', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (34, 'US', 'MN', 'Minnesota', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (35, 'US', 'MS', 'Mississippi', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (36, 'US', 'MO', 'Missouri', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (37, 'US', 'MT', 'Montana', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (38, 'US', 'NE', 'Nebraska', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (39, 'US', 'NV', 'Nevada', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (40, 'US', 'NH', 'New Hampshire', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (41, 'US', 'NJ', 'New Jersey', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (42, 'US', 'NM', 'New Mexico', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (43, 'US', 'NY', 'New York', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (44, 'US', 'NC', 'North Carolina', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (45, 'US', 'ND', 'North Dakota', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (46, 'US', 'MP', 'Northern Mariana Islands', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (47, 'US', 'OH', 'Ohio', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (48, 'US', 'OK', 'Oklahoma', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (49, 'US', 'OR', 'Oregon', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (50, 'US', 'PW', 'Palau', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (51, 'US', 'PA', 'Pennsylvania', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (52, 'US', 'PR', 'Puerto Rico', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (53, 'US', 'RI', 'Rhode Island', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (54, 'US', 'SC', 'South Carolina', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (55, 'US', 'SD', 'South Dakota', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (56, 'US', 'TN', 'Tennessee', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (57, 'US', 'TX', 'Texas', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (58, 'US', 'UT', 'Utah', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (59, 'US', 'VT', 'Vermont', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (60, 'US', 'VI', 'Virgin Islands', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (61, 'US', 'VA', 'Virginia', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (62, 'US', 'WA', 'Washington', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (63, 'US', 'WV', 'West Virginia', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (64, 'US', 'WI', 'Wisconsin', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (65, 'US', 'WY', 'Wyoming', 244);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (66, 'CA', 'AB', 'Alberta', 40);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (67, 'CA', 'BC', 'British Columbia', 40);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (68, 'CA', 'MB', 'Manitoba', 40);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (69, 'CA', 'NL', 'Newfoundland and Labrador', 40);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (70, 'CA', 'NB', 'New Brunswick', 40);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (71, 'CA', 'NS', 'Nova Scotia', 40);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (72, 'CA', 'NT', 'Northwest Territories', 40);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (73, 'CA', 'NU', 'Nunavut', 40);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (74, 'CA', 'ON', 'Ontario', 40);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (75, 'CA', 'PE', 'Prince Edward Island', 40);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (76, 'CA', 'QC', 'Quebec', 40);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (77, 'CA', 'SK', 'Saskatchewan', 40);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (78, 'CA', 'YT', 'Yukon Territory', 40);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (79, 'DE', 'NDS', 'Niedersachsen', 88);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (80, 'DE', 'BAW', 'Baden-Württemberg', 88);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (81, 'DE', 'BAY', 'Bayern', 88);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (82, 'DE', 'BER', 'Berlin', 88);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (83, 'DE', 'BRG', 'Brandenburg', 88);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (84, 'DE', 'BRE', 'Bremen', 88);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (85, 'DE', 'HAM', 'Hamburg', 88);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (86, 'DE', 'HES', 'Hessen', 88);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (87, 'DE', 'MEC', 'Mecklenburg-Vorpommern', 88);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (88, 'DE', 'NRW', 'Nordrhein-Westfalen', 88);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (89, 'DE', 'RHE', 'Rheinland-Pfalz', 88);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (90, 'DE', 'SAR', 'Saarland', 88);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (91, 'DE', 'SAS', 'Sachsen', 88);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (92, 'DE', 'SAC', 'Sachsen-Anhalt', 88);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (93, 'DE', 'SCN', 'Schleswig-Holstein', 88);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (94, 'DE', 'THE', 'Thüringen', 88);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (95, 'AT', 'WI', 'Wien', 16);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (96, 'AT', 'NO', 'Niederösterreich', 16);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (97, 'AT', 'OO', 'Oberösterreich', 16);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (98, 'AT', 'SB', 'Salzburg', 16);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (99, 'AT', 'KN', 'Kärnten', 16);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (100, 'AT', 'ST', 'Steiermark', 16);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (101, 'AT', 'TI', 'Tirol', 16);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (102, 'AT', 'BL', 'Burgenland', 16);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (103, 'AT', 'VB', 'Vorarlberg', 16);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (104, 'CH', 'AG', 'Aargau', 220);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (105, 'CH', 'AI', 'Appenzell Innerrhoden', 220);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (106, 'CH', 'AR', 'Appenzell Ausserrhoden', 220);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (107, 'CH', 'BE', 'Bern', 220);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (108, 'CH', 'BL', 'Basel-Landschaft', 220);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (109, 'CH', 'BS', 'Basel-Stadt', 220);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (110, 'CH', 'FR', 'Freiburg', 220);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (111, 'CH', 'GE', 'Genf', 220);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (112, 'CH', 'GL', 'Glarus', 220);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (113, 'CH', 'GR', 'Graubünden', 220);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (114, 'CH', 'JU', 'Jura', 220);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (115, 'CH', 'LU', 'Luzern', 220);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (116, 'CH', 'NE', 'Neuenburg', 220);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (117, 'CH', 'NW', 'Nidwalden', 220);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (118, 'CH', 'OW', 'Obwalden', 220);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (119, 'CH', 'SG', 'St. Gallen', 220);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (120, 'CH', 'SH', 'Schaffhausen', 220);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (121, 'CH', 'SO', 'Solothurn', 220);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (122, 'CH', 'SZ', 'Schwyz', 220);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (123, 'CH', 'TG', 'Thurgau', 220);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (124, 'CH', 'TI', 'Tessin', 220);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (125, 'CH', 'UR', 'Uri', 220);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (126, 'CH', 'VD', 'Waadt', 220);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (127, 'CH', 'VS', 'Wallis', 220);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (128, 'CH', 'ZG', 'Zug', 220);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (129, 'CH', 'ZH', 'Zürich', 220);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (130, 'ES', 'A Coruсa', 'A Coruña', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (131, 'ES', 'Alava', 'Alava', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (132, 'ES', 'Albacete', 'Albacete', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (133, 'ES', 'Alicante', 'Alicante', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (134, 'ES', 'Almeria', 'Almeria', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (135, 'ES', 'Asturias', 'Asturias', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (136, 'ES', 'Avila', 'Avila', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (137, 'ES', 'Badajoz', 'Badajoz', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (138, 'ES', 'Baleares', 'Baleares', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (139, 'ES', 'Barcelona', 'Barcelona', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (140, 'ES', 'Burgos', 'Burgos', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (141, 'ES', 'Caceres', 'Caceres', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (142, 'ES', 'Cadiz', 'Cadiz', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (143, 'ES', 'Cantabria', 'Cantabria', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (144, 'ES', 'Castellon', 'Castellon', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (145, 'ES', 'Ceuta', 'Ceuta', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (146, 'ES', 'Ciudad Real', 'Ciudad Real', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (147, 'ES', 'Cordoba', 'Cordoba', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (148, 'ES', 'Cuenca', 'Cuenca', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (149, 'ES', 'Girona', 'Girona', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (150, 'ES', 'Granada', 'Granada', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (151, 'ES', 'Guadalajara', 'Guadalajara', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (152, 'ES', 'Guipuzcoa', 'Guipuzcoa', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (153, 'ES', 'Huelva', 'Huelva', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (154, 'ES', 'Huesca', 'Huesca', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (155, 'ES', 'Jaen', 'Jaen', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (156, 'ES', 'La Rioja', 'La Rioja', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (157, 'ES', 'Las Palmas', 'Las Palmas', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (158, 'ES', 'Leon', 'Leon', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (159, 'ES', 'Lleida', 'Lleida', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (160, 'ES', 'Lugo', 'Lugo', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (161, 'ES', 'Madrid', 'Madrid', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (162, 'ES', 'Malaga', 'Malaga', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (163, 'ES', 'Melilla', 'Melilla', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (164, 'ES', 'Murcia', 'Murcia', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (165, 'ES', 'Navarra', 'Navarra', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (166, 'ES', 'Ourense', 'Ourense', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (167, 'ES', 'Palencia', 'Palencia', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (168, 'ES', 'Pontevedra', 'Pontevedra', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (169, 'ES', 'Salamanca', 'Salamanca', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (170, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (171, 'ES', 'Segovia', 'Segovia', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (172, 'ES', 'Sevilla', 'Sevilla', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (173, 'ES', 'Soria', 'Soria', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (174, 'ES', 'Tarragona', 'Tarragona', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (175, 'ES', 'Teruel', 'Teruel', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (176, 'ES', 'Toledo', 'Toledo', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (177, 'ES', 'Valencia', 'Valencia', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (178, 'ES', 'Valladolid', 'Valladolid', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (179, 'ES', 'Vizcaya', 'Vizcaya', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (180, 'ES', 'Zamora', 'Zamora', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (181, 'ES', 'Zaragoza', 'Zaragoza', 206);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (182, 'FR', '1', 'Ain', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (183, 'FR', '2', 'Aisne', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (184, 'FR', '3', 'Allier', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (185, 'FR', '4', 'Alpes-de-Haute-Provence', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (186, 'FR', '5', 'Hautes-Alpes', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (187, 'FR', '6', 'Alpes-Maritimes', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (188, 'FR', '7', 'Ardèche', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (189, 'FR', '8', 'Ardennes', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (190, 'FR', '9', 'Ariège', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (191, 'FR', '10', 'Aube', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (192, 'FR', '11', 'Aude', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (193, 'FR', '12', 'Aveyron', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (194, 'FR', '13', 'Bouches-du-Rhône', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (195, 'FR', '14', 'Calvados', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (196, 'FR', '15', 'Cantal', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (197, 'FR', '16', 'Charente', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (198, 'FR', '17', 'Charente-Maritime', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (199, 'FR', '18', 'Cher', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (200, 'FR', '19', 'Corrèze', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (201, 'FR', '2A', 'Corse-du-Sud', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (202, 'FR', '2B', 'Haute-Corse', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (203, 'FR', '21', 'Côte-d\'Or', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (204, 'FR', '22', 'Côtes-d\'Armor', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (205, 'FR', '23', 'Creuse', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (206, 'FR', '24', 'Dordogne', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (207, 'FR', '25', 'Doubs', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (208, 'FR', '26', 'Drôme', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (209, 'FR', '27', 'Eure', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (210, 'FR', '28', 'Eure-et-Loir', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (211, 'FR', '29', 'Finistère', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (212, 'FR', '30', 'Gard', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (213, 'FR', '31', 'Haute-Garonne', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (214, 'FR', '32', 'Gers', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (215, 'FR', '33', 'Gironde', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (216, 'FR', '34', 'Hérault', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (217, 'FR', '35', 'Ille-et-Vilaine', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (218, 'FR', '36', 'Indre', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (219, 'FR', '37', 'Indre-et-Loire', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (220, 'FR', '38', 'Isère', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (221, 'FR', '39', 'Jura', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (222, 'FR', '40', 'Landes', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (223, 'FR', '41', 'Loir-et-Cher', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (224, 'FR', '42', 'Loire', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (225, 'FR', '43', 'Haute-Loire', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (226, 'FR', '44', 'Loire-Atlantique', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (227, 'FR', '45', 'Loiret', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (228, 'FR', '46', 'Lot', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (229, 'FR', '47', 'Lot-et-Garonne', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (230, 'FR', '48', 'Lozère', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (231, 'FR', '49', 'Maine-et-Loire', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (232, 'FR', '50', 'Manche', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (233, 'FR', '51', 'Marne', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (234, 'FR', '52', 'Haute-Marne', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (235, 'FR', '53', 'Mayenne', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (236, 'FR', '54', 'Meurthe-et-Moselle', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (237, 'FR', '55', 'Meuse', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (238, 'FR', '56', 'Morbihan', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (239, 'FR', '57', 'Moselle', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (240, 'FR', '58', 'Nièvre', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (241, 'FR', '59', 'Nord', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (242, 'FR', '60', 'Oise', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (243, 'FR', '61', 'Orne', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (244, 'FR', '62', 'Pas-de-Calais', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (245, 'FR', '63', 'Puy-de-Dôme', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (246, 'FR', '64', 'Pyrénées-Atlantiques', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (247, 'FR', '65', 'Hautes-Pyrénées', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (248, 'FR', '66', 'Pyrénées-Orientales', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (249, 'FR', '67', 'Bas-Rhin', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (250, 'FR', '68', 'Haut-Rhin', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (251, 'FR', '69', 'Rhône', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (252, 'FR', '70', 'Haute-Saône', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (253, 'FR', '71', 'Saône-et-Loire', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (254, 'FR', '72', 'Sarthe', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (255, 'FR', '73', 'Savoie', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (256, 'FR', '74', 'Haute-Savoie', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (257, 'FR', '75', 'Paris', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (258, 'FR', '76', 'Seine-Maritime', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (259, 'FR', '77', 'Seine-et-Marne', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (260, 'FR', '78', 'Yvelines', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (261, 'FR', '79', 'Deux-Sèvres', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (262, 'FR', '80', 'Somme', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (263, 'FR', '81', 'Tarn', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (264, 'FR', '82', 'Tarn-et-Garonne', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (265, 'FR', '83', 'Var', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (266, 'FR', '84', 'Vaucluse', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (267, 'FR', '85', 'Vendée', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (268, 'FR', '86', 'Vienne', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (269, 'FR', '87', 'Haute-Vienne', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (270, 'FR', '88', 'Vosges', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (271, 'FR', '89', 'Yonne', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (272, 'FR', '90', 'Territoire-de-Belfort', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (273, 'FR', '91', 'Essonne', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (274, 'FR', '92', 'Hauts-de-Seine', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (275, 'FR', '93', 'Seine-Saint-Denis', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (276, 'FR', '94', 'Val-de-Marne', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (277, 'FR', '95', 'Val-d\'Oise', 81);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (278, 'RO', 'AB', 'Alba', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (279, 'RO', 'AR', 'Arad', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (280, 'RO', 'AG', 'Argeş', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (281, 'RO', 'BC', 'Bacău', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (282, 'RO', 'BH', 'Bihor', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (283, 'RO', 'BN', 'Bistriţa-Năsăud', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (284, 'RO', 'BT', 'Botoşani', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (285, 'RO', 'BV', 'Braşov', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (286, 'RO', 'BR', 'Brăila', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (287, 'RO', 'B', 'Bucureşti', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (288, 'RO', 'BZ', 'Buzău', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (289, 'RO', 'CS', 'Caraş-Severin', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (290, 'RO', 'CL', 'Călăraşi', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (291, 'RO', 'CJ', 'Cluj', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (292, 'RO', 'CT', 'Constanţa', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (293, 'RO', 'CV', 'Covasna', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (294, 'RO', 'DB', 'Dâmboviţa', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (295, 'RO', 'DJ', 'Dolj', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (296, 'RO', 'GL', 'Galaţi', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (297, 'RO', 'GR', 'Giurgiu', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (298, 'RO', 'GJ', 'Gorj', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (299, 'RO', 'HR', 'Harghita', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (300, 'RO', 'HD', 'Hunedoara', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (301, 'RO', 'IL', 'Ialomiţa', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (302, 'RO', 'IS', 'Iaşi', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (303, 'RO', 'IF', 'Ilfov', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (304, 'RO', 'MM', 'Maramureş', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (305, 'RO', 'MH', 'Mehedinţi', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (306, 'RO', 'MS', 'Mureş', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (307, 'RO', 'NT', 'Neamţ', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (308, 'RO', 'OT', 'Olt', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (309, 'RO', 'PH', 'Prahova', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (310, 'RO', 'SM', 'Satu-Mare', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (311, 'RO', 'SJ', 'Sălaj', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (312, 'RO', 'SB', 'Sibiu', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (313, 'RO', 'SV', 'Suceava', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (314, 'RO', 'TR', 'Teleorman', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (315, 'RO', 'TM', 'Timiş', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (316, 'RO', 'TL', 'Tulcea', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (317, 'RO', 'VS', 'Vaslui', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (318, 'RO', 'VL', 'Vâlcea', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (319, 'RO', 'VN', 'Vrancea', 185);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (320, 'FI', 'Lappi', 'Lappi', 80);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (321, 'FI', 'Pohjois-Pohjanmaa', 'Pohjois-Pohjanmaa', 80);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (322, 'FI', 'Kainuu', 'Kainuu', 80);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (323, 'FI', 'Pohjois-Karjala', 'Pohjois-Karjala', 80);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (324, 'FI', 'Pohjois-Savo', 'Pohjois-Savo', 80);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (325, 'FI', 'Etelä-Savo', 'Etelä-Savo', 80);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (326, 'FI', 'Etelä-Pohjanmaa', 'Etelä-Pohjanmaa', 80);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (327, 'FI', 'Pohjanmaa', 'Pohjanmaa', 80);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (328, 'FI', 'Pirkanmaa', 'Pirkanmaa', 80);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (329, 'FI', 'Satakunta', 'Satakunta', 80);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (330, 'FI', 'Keski-Pohjanmaa', 'Keski-Pohjanmaa', 80);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (331, 'FI', 'Keski-Suomi', 'Keski-Suomi', 80);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (332, 'FI', 'Varsinais-Suomi', 'Varsinais-Suomi', 80);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (333, 'FI', 'Etelä-Karjala', 'Etelä-Karjala', 80);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (334, 'FI', 'Päijät-Häme', 'Päijät-Häme', 80);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (335, 'FI', 'Kanta-Häme', 'Kanta-Häme', 80);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (336, 'FI', 'Uusimaa', 'Uusimaa', 80);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (337, 'FI', 'Itä-Uusimaa', 'Itä-Uusimaa', 80);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (338, 'FI', 'Kymenlaakso', 'Kymenlaakso', 80);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (339, 'FI', 'Ahvenanmaa', 'Ahvenanmaa', 80);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (340, 'EE', 'EE-37', 'Harjumaa', 74);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (341, 'EE', 'EE-39', 'Hiiumaa', 74);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (342, 'EE', 'EE-44', 'Ida-Virumaa', 74);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (343, 'EE', 'EE-49', 'Jõgevamaa', 74);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (344, 'EE', 'EE-51', 'Järvamaa', 74);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (345, 'EE', 'EE-57', 'Läänemaa', 74);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (346, 'EE', 'EE-59', 'Lääne-Virumaa', 74);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (347, 'EE', 'EE-65', 'Põlvamaa', 74);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (348, 'EE', 'EE-67', 'Pärnumaa', 74);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (349, 'EE', 'EE-70', 'Raplamaa', 74);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (350, 'EE', 'EE-74', 'Saaremaa', 74);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (351, 'EE', 'EE-78', 'Tartumaa', 74);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (352, 'EE', 'EE-82', 'Valgamaa', 74);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (353, 'EE', 'EE-84', 'Viljandimaa', 74);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (354, 'EE', 'EE-86', 'Võrumaa', 74);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (355, 'LV', 'LV-DGV', 'Daugavpils', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (356, 'LV', 'LV-JEL', 'Jelgava', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (357, 'LV', 'Jēkabpils', 'Jēkabpils', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (358, 'LV', 'LV-JUR', 'Jūrmala', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (359, 'LV', 'LV-LPX', 'Liepāja', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (360, 'LV', 'LV-LE', 'Liepājas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (361, 'LV', 'LV-REZ', 'Rēzekne', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (362, 'LV', 'LV-RIX', 'Rīga', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (363, 'LV', 'LV-RI', 'Rīgas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (364, 'LV', 'Valmiera', 'Valmiera', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (365, 'LV', 'LV-VEN', 'Ventspils', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (366, 'LV', 'Aglonas novads', 'Aglonas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (367, 'LV', 'LV-AI', 'Aizkraukles novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (368, 'LV', 'Aizputes novads', 'Aizputes novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (369, 'LV', 'Aknīstes novads', 'Aknīstes novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (370, 'LV', 'Alojas novads', 'Alojas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (371, 'LV', 'Alsungas novads', 'Alsungas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (372, 'LV', 'LV-AL', 'Alūksnes novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (373, 'LV', 'Amatas novads', 'Amatas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (374, 'LV', 'Apes novads', 'Apes novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (375, 'LV', 'Auces novads', 'Auces novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (376, 'LV', 'Babītes novads', 'Babītes novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (377, 'LV', 'Baldones novads', 'Baldones novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (378, 'LV', 'Baltinavas novads', 'Baltinavas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (379, 'LV', 'LV-BL', 'Balvu novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (380, 'LV', 'LV-BU', 'Bauskas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (381, 'LV', 'Beverīnas novads', 'Beverīnas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (382, 'LV', 'Brocēnu novads', 'Brocēnu novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (383, 'LV', 'Burtnieku novads', 'Burtnieku novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (384, 'LV', 'Carnikavas novads', 'Carnikavas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (385, 'LV', 'Cesvaines novads', 'Cesvaines novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (386, 'LV', 'Ciblas novads', 'Ciblas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (387, 'LV', 'LV-CE', 'Cēsu novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (388, 'LV', 'Dagdas novads', 'Dagdas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (389, 'LV', 'LV-DA', 'Daugavpils novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (390, 'LV', 'LV-DO', 'Dobeles novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (391, 'LV', 'Dundagas novads', 'Dundagas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (392, 'LV', 'Durbes novads', 'Durbes novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (393, 'LV', 'Engures novads', 'Engures novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (394, 'LV', 'Garkalnes novads', 'Garkalnes novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (395, 'LV', 'Grobiņas novads', 'Grobiņas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (396, 'LV', 'LV-GU', 'Gulbenes novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (397, 'LV', 'Iecavas novads', 'Iecavas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (398, 'LV', 'Ikšķiles novads', 'Ikšķiles novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (399, 'LV', 'Ilūkstes novads', 'Ilūkstes novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (400, 'LV', 'Inčukalna novads', 'Inčukalna novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (401, 'LV', 'Jaunjelgavas novads', 'Jaunjelgavas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (402, 'LV', 'Jaunpiebalgas novads', 'Jaunpiebalgas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (403, 'LV', 'Jaunpils novads', 'Jaunpils novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (404, 'LV', 'LV-JL', 'Jelgavas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (405, 'LV', 'LV-JK', 'Jēkabpils novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (406, 'LV', 'Kandavas novads', 'Kandavas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (407, 'LV', 'Kokneses novads', 'Kokneses novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (408, 'LV', 'Krimuldas novads', 'Krimuldas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (409, 'LV', 'Krustpils novads', 'Krustpils novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (410, 'LV', 'LV-KR', 'Krāslavas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (411, 'LV', 'LV-KU', 'Kuldīgas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (412, 'LV', 'Kārsavas novads', 'Kārsavas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (413, 'LV', 'Lielvārdes novads', 'Lielvārdes novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (414, 'LV', 'LV-LM', 'Limbažu novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (415, 'LV', 'Lubānas novads', 'Lubānas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (416, 'LV', 'LV-LU', 'Ludzas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (417, 'LV', 'Līgatnes novads', 'Līgatnes novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (418, 'LV', 'Līvānu novads', 'Līvānu novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (419, 'LV', 'LV-MA', 'Madonas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (420, 'LV', 'Mazsalacas novads', 'Mazsalacas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (421, 'LV', 'Mālpils novads', 'Mālpils novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (422, 'LV', 'Mārupes novads', 'Mārupes novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (423, 'LV', 'Naukšēnu novads', 'Naukšēnu novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (424, 'LV', 'Neretas novads', 'Neretas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (425, 'LV', 'Nīcas novads', 'Nīcas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (426, 'LV', 'LV-OG', 'Ogres novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (427, 'LV', 'Olaines novads', 'Olaines novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (428, 'LV', 'Ozolnieku novads', 'Ozolnieku novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (429, 'LV', 'LV-PR', 'Preiļu novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (430, 'LV', 'Priekules novads', 'Priekules novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (431, 'LV', 'Priekuļu novads', 'Priekuļu novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (432, 'LV', 'Pārgaujas novads', 'Pārgaujas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (433, 'LV', 'Pāvilostas novads', 'Pāvilostas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (434, 'LV', 'Pļaviņu novads', 'Pļaviņu novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (435, 'LV', 'Raunas novads', 'Raunas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (436, 'LV', 'Riebiņu novads', 'Riebiņu novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (437, 'LV', 'Rojas novads', 'Rojas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (438, 'LV', 'Ropažu novads', 'Ropažu novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (439, 'LV', 'Rucavas novads', 'Rucavas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (440, 'LV', 'Rugāju novads', 'Rugāju novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (441, 'LV', 'Rundāles novads', 'Rundāles novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (442, 'LV', 'LV-RE', 'Rēzeknes novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (443, 'LV', 'Rūjienas novads', 'Rūjienas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (444, 'LV', 'Salacgrīvas novads', 'Salacgrīvas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (445, 'LV', 'Salas novads', 'Salas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (446, 'LV', 'Salaspils novads', 'Salaspils novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (447, 'LV', 'LV-SA', 'Saldus novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (448, 'LV', 'Saulkrastu novads', 'Saulkrastu novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (449, 'LV', 'Siguldas novads', 'Siguldas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (450, 'LV', 'Skrundas novads', 'Skrundas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (451, 'LV', 'Skrīveru novads', 'Skrīveru novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (452, 'LV', 'Smiltenes novads', 'Smiltenes novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (453, 'LV', 'Stopiņu novads', 'Stopiņu novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (454, 'LV', 'Strenču novads', 'Strenču novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (455, 'LV', 'Sējas novads', 'Sējas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (456, 'LV', 'LV-TA', 'Talsu novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (457, 'LV', 'LV-TU', 'Tukuma novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (458, 'LV', 'Tērvetes novads', 'Tērvetes novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (459, 'LV', 'Vaiņodes novads', 'Vaiņodes novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (460, 'LV', 'LV-VK', 'Valkas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (461, 'LV', 'LV-VM', 'Valmieras novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (462, 'LV', 'Varakļānu novads', 'Varakļānu novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (463, 'LV', 'Vecpiebalgas novads', 'Vecpiebalgas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (464, 'LV', 'Vecumnieku novads', 'Vecumnieku novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (465, 'LV', 'LV-VE', 'Ventspils novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (466, 'LV', 'Viesītes novads', 'Viesītes novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (467, 'LV', 'Viļakas novads', 'Viļakas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (468, 'LV', 'Viļānu novads', 'Viļānu novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (469, 'LV', 'Vārkavas novads', 'Vārkavas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (470, 'LV', 'Zilupes novads', 'Zilupes novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (471, 'LV', 'Ādažu novads', 'Ādažu novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (472, 'LV', 'Ērgļu novads', 'Ērgļu novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (473, 'LV', 'Ķeguma novads', 'Ķeguma novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (474, 'LV', 'Ķekavas novads', 'Ķekavas novads', 125);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (475, 'LT', 'LT-AL', 'Alytaus Apskritis', 131);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (476, 'LT', 'LT-KU', 'Kauno Apskritis', 131);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (477, 'LT', 'LT-KL', 'Klaipėdos Apskritis', 131);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (478, 'LT', 'LT-MR', 'Marijampolės Apskritis', 131);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (479, 'LT', 'LT-PN', 'Panevėžio Apskritis', 131);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (480, 'LT', 'LT-SA', 'Šiaulių Apskritis', 131);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (481, 'LT', 'LT-TA', 'Tauragės Apskritis', 131);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (482, 'LT', 'LT-TE', 'Telšių Apskritis', 131);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (483, 'LT', 'LT-UT', 'Utenos Apskritis', 131);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (484, 'LT', 'LT-VL', 'Vilniaus Apskritis', 131);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (485, 'BR', 'AC', 'Acre', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (486, 'BR', 'AL', 'Alagoas', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (487, 'BR', 'AP', 'Amapá', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (488, 'BR', 'AM', 'Amazonas', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (489, 'BR', 'BA', 'Bahia', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (490, 'BR', 'CE', 'Ceará', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (491, 'BR', 'ES', 'Espírito Santo', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (492, 'BR', 'GO', 'Goiás', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (493, 'BR', 'MA', 'Maranhão', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (494, 'BR', 'MT', 'Mato Grosso', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (495, 'BR', 'MS', 'Mato Grosso do Sul', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (496, 'BR', 'MG', 'Minas Gerais', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (497, 'BR', 'PA', 'Pará', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (498, 'BR', 'PB', 'Paraíba', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (499, 'BR', 'PR', 'Paraná', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (500, 'BR', 'PE', 'Pernambuco', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (501, 'BR', 'PI', 'Piauí', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (502, 'BR', 'RJ', 'Rio de Janeiro', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (503, 'BR', 'RN', 'Rio Grande do Norte', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (504, 'BR', 'RS', 'Rio Grande do Sul', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (505, 'BR', 'RO', 'Rondônia', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (506, 'BR', 'RR', 'Roraima', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (507, 'BR', 'SC', 'Santa Catarina', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (508, 'BR', 'SP', 'São Paulo', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (509, 'BR', 'SE', 'Sergipe', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (510, 'BR', 'TO', 'Tocantins', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (511, 'BR', 'DF', 'Distrito Federal', 31);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (512, 'HR', 'HR-01', 'Zagrebačka županija', 59);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (513, 'HR', 'HR-02', 'Krapinsko-zagorska županija', 59);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (514, 'HR', 'HR-03', 'Sisačko-moslavačka županija', 59);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (515, 'HR', 'HR-04', 'Karlovačka županija', 59);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (516, 'HR', 'HR-05', 'Varaždinska županija', 59);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (517, 'HR', 'HR-06', 'Koprivničko-križevačka županija', 59);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (518, 'HR', 'HR-07', 'Bjelovarsko-bilogorska županija', 59);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (519, 'HR', 'HR-08', 'Primorsko-goranska županija', 59);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (520, 'HR', 'HR-09', 'Ličko-senjska županija', 59);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (521, 'HR', 'HR-10', 'Virovitičko-podravska županija', 59);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (522, 'HR', 'HR-11', 'Požeško-slavonska županija', 59);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (523, 'HR', 'HR-12', 'Brodsko-posavska županija', 59);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (524, 'HR', 'HR-13', 'Zadarska županija', 59);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (525, 'HR', 'HR-14', 'Osječko-baranjska županija', 59);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (526, 'HR', 'HR-15', 'Šibensko-kninska županija', 59);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (527, 'HR', 'HR-16', 'Vukovarsko-srijemska županija', 59);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (528, 'HR', 'HR-17', 'Splitsko-dalmatinska županija', 59);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (529, 'HR', 'HR-18', 'Istarska županija', 59);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (530, 'HR', 'HR-19', 'Dubrovačko-neretvanska županija', 59);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (531, 'HR', 'HR-20', 'Međimurska županija', 59);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (532, 'HR', 'HR-21', 'Grad Zagreb', 59);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (533, 'IN', 'AN', 'Andaman and Nicobar Islands', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (534, 'IN', 'AP', 'Andhra Pradesh', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (535, 'IN', 'AR', 'Arunachal Pradesh', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (536, 'IN', 'AS', 'Assam', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (537, 'IN', 'BR', 'Bihar', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (538, 'IN', 'CH', 'Chandigarh', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (539, 'IN', 'CT', 'Chhattisgarh', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (540, 'IN', 'DN', 'Dadra and Nagar Haveli', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (541, 'IN', 'DD', 'Daman and Diu', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (542, 'IN', 'DL', 'Delhi', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (543, 'IN', 'GA', 'Goa', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (544, 'IN', 'GJ', 'Gujarat', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (545, 'IN', 'HR', 'Haryana', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (546, 'IN', 'HP', 'Himachal Pradesh', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (547, 'IN', 'JK', 'Jammu and Kashmir', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (548, 'IN', 'JH', 'Jharkhand', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (549, 'IN', 'KA', 'Karnataka', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (550, 'IN', 'KL', 'Kerala', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (551, 'IN', 'LD', 'Lakshadweep', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (552, 'IN', 'MP', 'Madhya Pradesh', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (553, 'IN', 'MH', 'Maharashtra', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (554, 'IN', 'MN', 'Manipur', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (555, 'IN', 'ML', 'Meghalaya', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (556, 'IN', 'MZ', 'Mizoram', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (557, 'IN', 'NL', 'Nagaland', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (558, 'IN', 'OR', 'Odisha', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (559, 'IN', 'PY', 'Puducherry', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (560, 'IN', 'PB', 'Punjab', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (561, 'IN', 'RJ', 'Rajasthan', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (562, 'IN', 'SK', 'Sikkim', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (563, 'IN', 'TN', 'Tamil Nadu', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (564, 'IN', 'TG', 'Telangana', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (565, 'IN', 'TR', 'Tripura', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (566, 'IN', 'UP', 'Uttar Pradesh', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (567, 'IN', 'UT', 'Uttarakhand', 106);
INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES (568, 'IN', 'WB', 'West Bengal', 106);
COMMIT;

-- ----------------------------
-- Table structure for datagrid_saved_filters
-- ----------------------------
DROP TABLE IF EXISTS `datagrid_saved_filters`;
CREATE TABLE `datagrid_saved_filters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`applied`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `datagrid_saved_filters_user_id_name_src_unique` (`user_id`,`name`,`src`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of datagrid_saved_filters
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for email_attachments
-- ----------------------------
DROP TABLE IF EXISTS `email_attachments`;
CREATE TABLE `email_attachments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) DEFAULT NULL,
  `content_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email_attachments_email_id_foreign` (`email_id`),
  CONSTRAINT `email_attachments_email_id_foreign` FOREIGN KEY (`email_id`) REFERENCES `emails` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of email_attachments
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for email_tags
-- ----------------------------
DROP TABLE IF EXISTS `email_tags`;
CREATE TABLE `email_tags` (
  `tag_id` int(10) unsigned NOT NULL,
  `email_id` int(10) unsigned NOT NULL,
  KEY `email_tags_tag_id_foreign` (`tag_id`),
  KEY `email_tags_email_id_foreign` (`email_id`),
  CONSTRAINT `email_tags_email_id_foreign` FOREIGN KEY (`email_id`) REFERENCES `emails` (`id`) ON DELETE CASCADE,
  CONSTRAINT `email_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of email_tags
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for email_templates
-- ----------------------------
DROP TABLE IF EXISTS `email_templates`;
CREATE TABLE `email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_templates_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of email_templates
-- ----------------------------
BEGIN;
INSERT INTO `email_templates` (`id`, `name`, `subject`, `content`, `created_at`, `updated_at`) VALUES (1, 'Activity created', 'Activity created: {%activities.title%}', '<p style=\"font-size: 16px; color: #5e5e5e;\">You have a new activity, please find the details bellow:</p>\n                                <p><strong style=\"font-size: 16px;\">Details</strong></p>\n                                <table style=\"height: 97px; width: 952px;\">\n                                    <tbody>\n                                        <tr>\n                                            <td style=\"width: 116.953px; color: #546e7a; font-size: 16px;\">Title</td>\n                                            <td style=\"width: 770.047px; font-size: 16px;\">{%activities.title%}</td>\n                                        </tr>\n                                        <tr>\n                                            <td style=\"width: 116.953px; color: #546e7a; font-size: 16px;\">Type</td>\n                                                <td style=\"width: 770.047px; font-size: 16px;\">{%activities.type%}</td>\n                                        </tr>\n                                        <tr>\n                                            <td style=\"width: 116.953px; color: #546e7a; font-size: 16px;\">Date</td>\n                                            <td style=\"width: 770.047px; font-size: 16px;\">{%activities.schedule_from%} to&nbsp;{%activities.schedule_to%}</td>\n                                        </tr>\n                                        <tr>\n                                            <td style=\"width: 116.953px; color: #546e7a; font-size: 16px; vertical-align: text-top;\">Participants</td>\n                                            <td style=\"width: 770.047px; font-size: 16px;\">{%activities.participants%}</td>\n                                        </tr>\n                                    </tbody>\n                                </table>', '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `email_templates` (`id`, `name`, `subject`, `content`, `created_at`, `updated_at`) VALUES (2, 'Activity modified', 'Activity modified: {%activities.title%}', '<p style=\"font-size: 16px; color: #5e5e5e;\">You have a new activity modified, please find the details bellow:</p>\n                                <p><strong style=\"font-size: 16px;\">Details</strong></p>\n                                <table style=\"height: 97px; width: 952px;\">\n                                    <tbody>\n                                        <tr>\n                                            <td style=\"width: 116.953px; color: #546e7a; font-size: 16px;\">Title</td>\n                                            <td style=\"width: 770.047px; font-size: 16px;\">{%activities.title%}</td>\n                                        </tr>\n                                        <tr>\n                                            <td style=\"width: 116.953px; color: #546e7a; font-size: 16px;\">Type</td>\n                                            <td style=\"width: 770.047px; font-size: 16px;\">{%activities.type%}</td>\n                                        </tr>\n                                        <tr>\n                                            <td style=\"width: 116.953px; color: #546e7a; font-size: 16px;\">Date</td>\n                                            <td style=\"width: 770.047px; font-size: 16px;\">{%activities.schedule_from%} to&nbsp;{%activities.schedule_to%}</td>\n                                        </tr>\n                                        <tr>\n                                            <td style=\"width: 116.953px; color: #546e7a; font-size: 16px; vertical-align: text-top;\">Participants</td>\n                                            <td style=\"width: 770.047px; font-size: 16px;\">{%activities.participants%}</td>\n                                        </tr>\n                                    </tbody>\n                                </table>', '2026-03-06 11:20:35', '2026-03-06 11:20:35');
COMMIT;

-- ----------------------------
-- Table structure for emails
-- ----------------------------
DROP TABLE IF EXISTS `emails`;
CREATE TABLE `emails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `folders` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`folders`)),
  `from` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`from`)),
  `sender` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`sender`)),
  `reply_to` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`reply_to`)),
  `cc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`cc`)),
  `bcc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`bcc`)),
  `unique_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`reference_ids`)),
  `person_id` int(10) unsigned DEFAULT NULL,
  `lead_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emails_message_id_unique` (`message_id`),
  UNIQUE KEY `emails_unique_id_unique` (`unique_id`),
  KEY `emails_person_id_foreign` (`person_id`),
  KEY `emails_lead_id_foreign` (`lead_id`),
  KEY `emails_parent_id_foreign` (`parent_id`),
  CONSTRAINT `emails_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE SET NULL,
  CONSTRAINT `emails_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `emails` (`id`) ON DELETE CASCADE,
  CONSTRAINT `emails_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of emails
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `groups_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of groups
-- ----------------------------
BEGIN;
INSERT INTO `groups` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES (1, 'Phòng Kinh Doanh 1', NULL, '2026-03-06 15:40:25', '2026-03-06 15:40:25');
INSERT INTO `groups` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES (2, 'Phòng Kinh Doanh 2', NULL, '2026-03-06 15:40:25', '2026-03-06 15:40:25');
INSERT INTO `groups` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES (3, 'Bộ Phận Hành Chính', NULL, '2026-03-06 15:40:25', '2026-03-06 15:40:25');
INSERT INTO `groups` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES (4, 'Ban Giám Đốc', NULL, '2026-03-06 15:40:25', '2026-03-06 15:40:25');
COMMIT;

-- ----------------------------
-- Table structure for import_batches
-- ----------------------------
DROP TABLE IF EXISTS `import_batches`;
CREATE TABLE `import_batches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`data`)),
  `summary` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`summary`)),
  `import_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `import_batches_import_id_foreign` (`import_id`),
  CONSTRAINT `import_batches_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of import_batches
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for imports
-- ----------------------------
DROP TABLE IF EXISTS `imports`;
CREATE TABLE `imports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `process_in_queue` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validation_strategy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `allowed_errors` int(11) NOT NULL DEFAULT 0,
  `processed_rows_count` int(11) NOT NULL DEFAULT 0,
  `invalid_rows_count` int(11) NOT NULL DEFAULT 0,
  `errors_count` int(11) NOT NULL DEFAULT 0,
  `errors` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`errors`)),
  `field_separator` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `error_file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`summary`)),
  `started_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of imports
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of job_batches
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for lead_activities
-- ----------------------------
DROP TABLE IF EXISTS `lead_activities`;
CREATE TABLE `lead_activities` (
  `activity_id` int(10) unsigned NOT NULL,
  `lead_id` int(10) unsigned NOT NULL,
  KEY `lead_activities_activity_id_foreign` (`activity_id`),
  KEY `lead_activities_lead_id_foreign` (`lead_id`),
  CONSTRAINT `lead_activities_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lead_activities_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of lead_activities
-- ----------------------------
BEGIN;
INSERT INTO `lead_activities` (`activity_id`, `lead_id`) VALUES (10, 1);
INSERT INTO `lead_activities` (`activity_id`, `lead_id`) VALUES (12, 2);
INSERT INTO `lead_activities` (`activity_id`, `lead_id`) VALUES (14, 3);
INSERT INTO `lead_activities` (`activity_id`, `lead_id`) VALUES (16, 4);
INSERT INTO `lead_activities` (`activity_id`, `lead_id`) VALUES (18, 5);
INSERT INTO `lead_activities` (`activity_id`, `lead_id`) VALUES (20, 6);
INSERT INTO `lead_activities` (`activity_id`, `lead_id`) VALUES (22, 7);
INSERT INTO `lead_activities` (`activity_id`, `lead_id`) VALUES (24, 8);
INSERT INTO `lead_activities` (`activity_id`, `lead_id`) VALUES (26, 9);
INSERT INTO `lead_activities` (`activity_id`, `lead_id`) VALUES (28, 10);
INSERT INTO `lead_activities` (`activity_id`, `lead_id`) VALUES (29, 4);
INSERT INTO `lead_activities` (`activity_id`, `lead_id`) VALUES (30, 4);
INSERT INTO `lead_activities` (`activity_id`, `lead_id`) VALUES (31, 4);
INSERT INTO `lead_activities` (`activity_id`, `lead_id`) VALUES (32, 4);
COMMIT;

-- ----------------------------
-- Table structure for lead_pipeline_stages
-- ----------------------------
DROP TABLE IF EXISTS `lead_pipeline_stages`;
CREATE TABLE `lead_pipeline_stages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `probability` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `lead_pipeline_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lead_pipeline_stages_code_lead_pipeline_id_unique` (`code`,`lead_pipeline_id`),
  UNIQUE KEY `lead_pipeline_stages_name_lead_pipeline_id_unique` (`name`,`lead_pipeline_id`),
  KEY `lead_pipeline_stages_lead_pipeline_id_foreign` (`lead_pipeline_id`),
  CONSTRAINT `lead_pipeline_stages_lead_pipeline_id_foreign` FOREIGN KEY (`lead_pipeline_id`) REFERENCES `lead_pipelines` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of lead_pipeline_stages
-- ----------------------------
BEGIN;
INSERT INTO `lead_pipeline_stages` (`id`, `code`, `name`, `probability`, `sort_order`, `lead_pipeline_id`) VALUES (7, 'new', 'Mới Tiếp Nhận', 10, 1, 1);
INSERT INTO `lead_pipeline_stages` (`id`, `code`, `name`, `probability`, `sort_order`, `lead_pipeline_id`) VALUES (8, 'contacted', 'Đã Liên Hệ / Nhu Cầu', 30, 2, 1);
INSERT INTO `lead_pipeline_stages` (`id`, `code`, `name`, `probability`, `sort_order`, `lead_pipeline_id`) VALUES (9, 'site_visit', 'Tư Vấn & Đi Xem', 50, 3, 1);
INSERT INTO `lead_pipeline_stages` (`id`, `code`, `name`, `probability`, `sort_order`, `lead_pipeline_id`) VALUES (10, 'negotiation', 'Thương Lượng / Báo Giá', 80, 4, 1);
INSERT INTO `lead_pipeline_stages` (`id`, `code`, `name`, `probability`, `sort_order`, `lead_pipeline_id`) VALUES (11, 'won', 'Chốt Cọc (Thắng)', 100, 5, 1);
INSERT INTO `lead_pipeline_stages` (`id`, `code`, `name`, `probability`, `sort_order`, `lead_pipeline_id`) VALUES (12, 'lost', 'Trượt (Thua)', 0, 6, 1);
COMMIT;

-- ----------------------------
-- Table structure for lead_pipelines
-- ----------------------------
DROP TABLE IF EXISTS `lead_pipelines`;
CREATE TABLE `lead_pipelines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `rotten_days` int(11) NOT NULL DEFAULT 30,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lead_pipelines_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of lead_pipelines
-- ----------------------------
BEGIN;
INSERT INTO `lead_pipelines` (`id`, `name`, `is_default`, `rotten_days`, `created_at`, `updated_at`) VALUES (1, 'Quy Trình Đầu Tư BĐS', 1, 30, '2026-03-06 11:20:35', '2026-03-06 15:42:41');
COMMIT;

-- ----------------------------
-- Table structure for lead_products
-- ----------------------------
DROP TABLE IF EXISTS `lead_products`;
CREATE TABLE `lead_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `price` decimal(12,4) DEFAULT NULL,
  `amount` decimal(12,4) DEFAULT NULL,
  `lead_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_products_lead_id_foreign` (`lead_id`),
  KEY `lead_products_product_id_foreign` (`product_id`),
  CONSTRAINT `lead_products_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lead_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of lead_products
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for lead_quotes
-- ----------------------------
DROP TABLE IF EXISTS `lead_quotes`;
CREATE TABLE `lead_quotes` (
  `quote_id` int(10) unsigned NOT NULL,
  `lead_id` int(10) unsigned NOT NULL,
  KEY `lead_quotes_quote_id_foreign` (`quote_id`),
  KEY `lead_quotes_lead_id_foreign` (`lead_id`),
  CONSTRAINT `lead_quotes_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lead_quotes_quote_id_foreign` FOREIGN KEY (`quote_id`) REFERENCES `quotes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of lead_quotes
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for lead_sources
-- ----------------------------
DROP TABLE IF EXISTS `lead_sources`;
CREATE TABLE `lead_sources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of lead_sources
-- ----------------------------
BEGIN;
INSERT INTO `lead_sources` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'Email', '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `lead_sources` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'Web', '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `lead_sources` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'Web Form', '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `lead_sources` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'Phone', '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `lead_sources` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'Direct', '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `lead_sources` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'Quảng cáo Facebook', NULL, NULL);
INSERT INTO `lead_sources` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'Zalo', NULL, NULL);
INSERT INTO `lead_sources` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'Batdongsan.com.vn', NULL, NULL);
INSERT INTO `lead_sources` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'Môi giới giới thiệu', NULL, NULL);
INSERT INTO `lead_sources` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'Khách tự gọi đến', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for lead_stages
-- ----------------------------
DROP TABLE IF EXISTS `lead_stages`;
CREATE TABLE `lead_stages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of lead_stages
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for lead_tags
-- ----------------------------
DROP TABLE IF EXISTS `lead_tags`;
CREATE TABLE `lead_tags` (
  `tag_id` int(10) unsigned NOT NULL,
  `lead_id` int(10) unsigned NOT NULL,
  KEY `lead_tags_tag_id_foreign` (`tag_id`),
  KEY `lead_tags_lead_id_foreign` (`lead_id`),
  CONSTRAINT `lead_tags_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lead_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of lead_tags
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for lead_types
-- ----------------------------
DROP TABLE IF EXISTS `lead_types`;
CREATE TABLE `lead_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of lead_types
-- ----------------------------
BEGIN;
INSERT INTO `lead_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'New Business', '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `lead_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'Existing Business', '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `lead_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'Khách Mua Đầu Tư', NULL, NULL);
INSERT INTO `lead_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'Khách Mua Để Ở', NULL, NULL);
INSERT INTO `lead_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'Khách Thuê', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for leads
-- ----------------------------
DROP TABLE IF EXISTS `leads`;
CREATE TABLE `leads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_value` decimal(12,4) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `lost_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closed_at` datetime DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `person_id` int(10) unsigned DEFAULT NULL,
  `lead_source_id` int(10) unsigned DEFAULT NULL,
  `lead_type_id` int(10) unsigned DEFAULT NULL,
  `lead_pipeline_id` int(10) unsigned DEFAULT NULL,
  `lead_pipeline_stage_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expected_close_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leads_lead_pipeline_id_foreign` (`lead_pipeline_id`),
  KEY `leads_lead_pipeline_stage_id_foreign` (`lead_pipeline_stage_id`),
  KEY `leads_user_id_foreign` (`user_id`),
  KEY `leads_person_id_foreign` (`person_id`),
  KEY `leads_lead_source_id_foreign` (`lead_source_id`),
  KEY `leads_lead_type_id_foreign` (`lead_type_id`),
  CONSTRAINT `leads_lead_pipeline_id_foreign` FOREIGN KEY (`lead_pipeline_id`) REFERENCES `lead_pipelines` (`id`) ON DELETE CASCADE,
  CONSTRAINT `leads_lead_pipeline_stage_id_foreign` FOREIGN KEY (`lead_pipeline_stage_id`) REFERENCES `lead_pipeline_stages` (`id`) ON DELETE SET NULL,
  CONSTRAINT `leads_lead_source_id_foreign` FOREIGN KEY (`lead_source_id`) REFERENCES `lead_sources` (`id`),
  CONSTRAINT `leads_lead_type_id_foreign` FOREIGN KEY (`lead_type_id`) REFERENCES `lead_types` (`id`),
  CONSTRAINT `leads_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`),
  CONSTRAINT `leads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of leads
-- ----------------------------
BEGIN;
INSERT INTO `leads` (`id`, `title`, `description`, `lead_value`, `status`, `lost_reason`, `closed_at`, `user_id`, `person_id`, `lead_source_id`, `lead_type_id`, `lead_pipeline_id`, `lead_pipeline_stage_id`, `created_at`, `updated_at`, `expected_close_date`) VALUES (1, 'Quan tâm Dự Án X - KH 1', 'Khách hàng quan tâm dự án qua quảng cáo / referral.', 99999999.9999, 1, NULL, NULL, 4, 1, 3, 3, 1, 12, '2026-03-06 15:42:41', '2026-03-06 15:42:41', '2026-03-29');
INSERT INTO `leads` (`id`, `title`, `description`, `lead_value`, `status`, `lost_reason`, `closed_at`, `user_id`, `person_id`, `lead_source_id`, `lead_type_id`, `lead_pipeline_id`, `lead_pipeline_stage_id`, `created_at`, `updated_at`, `expected_close_date`) VALUES (2, 'Quan tâm Dự Án X - KH 2', 'Khách hàng quan tâm dự án qua quảng cáo / referral.', 99999999.9999, 1, NULL, NULL, 3, 2, 1, 5, 1, 8, '2026-03-06 15:42:41', '2026-03-06 15:42:41', '2026-03-30');
INSERT INTO `leads` (`id`, `title`, `description`, `lead_value`, `status`, `lost_reason`, `closed_at`, `user_id`, `person_id`, `lead_source_id`, `lead_type_id`, `lead_pipeline_id`, `lead_pipeline_stage_id`, `created_at`, `updated_at`, `expected_close_date`) VALUES (3, 'Quan tâm Dự Án X - KH 3', 'Khách hàng quan tâm dự án qua quảng cáo / referral.', 99999999.9999, 1, NULL, NULL, 4, 3, 8, 3, 1, 11, '2026-03-06 15:42:41', '2026-03-06 15:42:41', '2026-03-14');
INSERT INTO `leads` (`id`, `title`, `description`, `lead_value`, `status`, `lost_reason`, `closed_at`, `user_id`, `person_id`, `lead_source_id`, `lead_type_id`, `lead_pipeline_id`, `lead_pipeline_stage_id`, `created_at`, `updated_at`, `expected_close_date`) VALUES (4, 'Quan tâm Dự Án X - KH 4', 'Khách hàng quan tâm dự án qua quảng cáo / referral.', 99999999.9999, 1, NULL, NULL, 3, 4, 9, 5, 1, 8, '2026-03-06 15:42:41', '2026-03-06 15:47:07', NULL);
INSERT INTO `leads` (`id`, `title`, `description`, `lead_value`, `status`, `lost_reason`, `closed_at`, `user_id`, `person_id`, `lead_source_id`, `lead_type_id`, `lead_pipeline_id`, `lead_pipeline_stage_id`, `created_at`, `updated_at`, `expected_close_date`) VALUES (5, 'Quan tâm Dự Án X - KH 5', 'Khách hàng quan tâm dự án qua quảng cáo / referral.', 99999999.9999, 1, NULL, NULL, 4, 5, 2, 2, 1, 10, '2026-03-06 15:42:41', '2026-03-06 15:42:41', '2026-03-20');
INSERT INTO `leads` (`id`, `title`, `description`, `lead_value`, `status`, `lost_reason`, `closed_at`, `user_id`, `person_id`, `lead_source_id`, `lead_type_id`, `lead_pipeline_id`, `lead_pipeline_stage_id`, `created_at`, `updated_at`, `expected_close_date`) VALUES (6, 'Quan tâm Dự Án X - KH 6', 'Khách hàng quan tâm dự án qua quảng cáo / referral.', 99999999.9999, 1, NULL, NULL, 3, 6, 4, 5, 1, 8, '2026-03-06 15:42:41', '2026-03-06 15:42:41', '2026-03-21');
INSERT INTO `leads` (`id`, `title`, `description`, `lead_value`, `status`, `lost_reason`, `closed_at`, `user_id`, `person_id`, `lead_source_id`, `lead_type_id`, `lead_pipeline_id`, `lead_pipeline_stage_id`, `created_at`, `updated_at`, `expected_close_date`) VALUES (7, 'Quan tâm Dự Án X - KH 7', 'Khách hàng quan tâm dự án qua quảng cáo / referral.', 99999999.9999, 1, NULL, NULL, 4, 7, 6, 1, 1, 7, '2026-03-06 15:42:41', '2026-03-06 15:42:41', '2026-03-14');
INSERT INTO `leads` (`id`, `title`, `description`, `lead_value`, `status`, `lost_reason`, `closed_at`, `user_id`, `person_id`, `lead_source_id`, `lead_type_id`, `lead_pipeline_id`, `lead_pipeline_stage_id`, `created_at`, `updated_at`, `expected_close_date`) VALUES (8, 'Quan tâm Dự Án X - KH 8', 'Khách hàng quan tâm dự án qua quảng cáo / referral.', 99999999.9999, 1, NULL, NULL, 3, 8, 8, 2, 1, 11, '2026-03-06 15:42:41', '2026-03-06 15:42:41', '2026-03-21');
INSERT INTO `leads` (`id`, `title`, `description`, `lead_value`, `status`, `lost_reason`, `closed_at`, `user_id`, `person_id`, `lead_source_id`, `lead_type_id`, `lead_pipeline_id`, `lead_pipeline_stage_id`, `created_at`, `updated_at`, `expected_close_date`) VALUES (9, 'Quan tâm Dự Án X - KH 9', 'Khách hàng quan tâm dự án qua quảng cáo / referral.', 99999999.9999, 1, NULL, NULL, 4, 9, 8, 1, 1, 11, '2026-03-06 15:42:41', '2026-03-06 15:42:41', '2026-03-24');
INSERT INTO `leads` (`id`, `title`, `description`, `lead_value`, `status`, `lost_reason`, `closed_at`, `user_id`, `person_id`, `lead_source_id`, `lead_type_id`, `lead_pipeline_id`, `lead_pipeline_stage_id`, `created_at`, `updated_at`, `expected_close_date`) VALUES (10, 'Quan tâm Dự Án X - KH 10', 'Khách hàng quan tâm dự án qua quảng cáo / referral.', 99999999.9999, 1, NULL, NULL, 3, 10, 2, 5, 1, 8, '2026-03-06 15:42:41', '2026-03-06 15:42:41', '2026-04-03');
COMMIT;

-- ----------------------------
-- Table structure for marketing_campaigns
-- ----------------------------
DROP TABLE IF EXISTS `marketing_campaigns`;
CREATE TABLE `marketing_campaigns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spooling` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marketing_template_id` int(10) unsigned DEFAULT NULL,
  `marketing_event_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `marketing_campaigns_marketing_template_id_foreign` (`marketing_template_id`),
  KEY `marketing_campaigns_marketing_event_id_foreign` (`marketing_event_id`),
  CONSTRAINT `marketing_campaigns_marketing_event_id_foreign` FOREIGN KEY (`marketing_event_id`) REFERENCES `marketing_events` (`id`) ON DELETE SET NULL,
  CONSTRAINT `marketing_campaigns_marketing_template_id_foreign` FOREIGN KEY (`marketing_template_id`) REFERENCES `email_templates` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of marketing_campaigns
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for marketing_events
-- ----------------------------
DROP TABLE IF EXISTS `marketing_events`;
CREATE TABLE `marketing_events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of marketing_events
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (2, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (3, '2021_03_12_060658_create_core_config_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (4, '2021_03_12_074578_create_groups_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (5, '2021_03_12_074597_create_roles_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (6, '2021_03_12_074857_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (7, '2021_03_12_074867_create_user_groups_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (8, '2021_03_12_074957_create_user_password_resets_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (9, '2021_04_02_080709_create_attributes_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (10, '2021_04_02_080837_create_attribute_options_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (11, '2021_04_06_122751_create_attribute_values_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (12, '2021_04_09_051326_create_organizations_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (13, '2021_04_09_065617_create_persons_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (14, '2021_04_09_065617_create_products_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (15, '2021_04_12_173232_create_countries_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (16, '2021_04_12_173344_create_country_states_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (17, '2021_04_21_172825_create_lead_sources_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (18, '2021_04_21_172847_create_lead_types_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (19, '2021_04_22_153258_create_lead_stages_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (20, '2021_04_22_155706_create_lead_pipelines_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (21, '2021_04_22_155838_create_lead_pipeline_stages_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (22, '2021_04_22_164215_create_leads_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (23, '2021_04_22_171805_create_lead_products_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (24, '2021_05_12_150329_create_activities_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (25, '2021_05_12_150329_create_lead_activities_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (26, '2021_05_15_151855_create_activity_files_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (27, '2021_05_20_141230_create_tags_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (28, '2021_05_20_141240_create_lead_tags_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (29, '2021_05_24_075618_create_emails_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (30, '2021_05_25_072700_create_email_attachments_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (31, '2021_06_07_162808_add_lead_view_permission_column_in_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (32, '2021_07_01_230345_create_quotes_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (33, '2021_07_01_231317_create_quote_items_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (34, '2021_07_02_201822_create_lead_quotes_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (35, '2021_07_28_142453_create_activity_participants_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (36, '2021_08_26_133538_create_workflows_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (37, '2021_09_03_172713_create_email_templates_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (38, '2021_09_22_194103_add_unique_index_to_name_in_organizations_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (39, '2021_09_22_194622_add_unique_index_to_name_in_groups_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (40, '2021_09_23_221138_add_column_expected_close_date_in_leads_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (41, '2021_09_30_135857_add_column_rotten_days_in_lead_pipelines_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (42, '2021_09_30_154222_alter_lead_pipeline_stages_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (43, '2021_09_30_161722_alter_leads_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (44, '2021_09_30_183825_change_user_id_to_nullable_in_leads_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (45, '2021_10_02_170105_insert_expected_closed_date_column_in_attributes_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (46, '2021_11_11_180804_change_lead_pipeline_stage_id_constraint_in_leads_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (47, '2021_11_12_171510_add_image_column_in_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (48, '2021_11_17_190943_add_location_column_in_activities_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (49, '2021_12_14_213049_create_web_forms_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (50, '2021_12_14_214923_create_web_form_attributes_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (51, '2024_01_11_154640_create_imports_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (52, '2024_01_11_154741_create_import_batches_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (53, '2024_05_10_152848_create_saved_filters_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (54, '2024_06_21_160707_create_warehouses_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (55, '2024_06_21_160735_create_warehouse_locations_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (56, '2024_06_24_174241_insert_warehouse_attributes_in_attributes_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (57, '2024_06_28_154009_create_product_inventories_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (58, '2024_07_24_150821_create_webhooks_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (59, '2024_07_31_092951_add_job_title_in_persons_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (60, '2024_07_31_093603_add_organization_sales_owner_attribute_in_attributes_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (61, '2024_07_31_093605_add_person_job_title_attribute_in_attributes_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (62, '2024_07_31_093605_add_person_sales_owner_attribute_in_attributes_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (63, '2024_08_06_145943_create_person_tags_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (64, '2024_08_06_161212_create_person_activities_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (65, '2024_08_10_100329_create_warehouse_activities_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (66, '2024_08_10_100340_create_warehouse_tags_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (67, '2024_08_10_150329_create_product_activities_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (68, '2024_08_10_150340_create_product_tags_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (69, '2024_08_14_102116_add_user_id_column_in_persons_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (70, '2024_08_14_102136_add_user_id_column_in_organizations_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (71, '2024_08_21_153011_add_leads_stage_and_pipeline_attributes', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (72, '2024_08_27_091619_create_email_tags_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (73, '2024_09_06_065808_alter_product_inventories_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (74, '2024_09_09_094040_create_job_batches_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (75, '2024_09_09_094042_create_jobs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (76, '2024_09_09_112201_add_unique_id_to_person_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (77, '2024_10_29_044744_create_marketing_events_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (78, '2024_11_04_122500_create_marketing_campaigns_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (79, '2024_11_29_120302_modify_foreign_keys_in_leads_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (80, '2025_01_17_151632_alter_activities_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (81, '2025_01_29_133500_update_text_column_type_in_core_config_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (82, '2025_03_19_132236_update_organization_id_column_in_persons_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (83, '2025_07_01_133612_alter_lead_pipelines_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (84, '2025_07_02_191710_alter_attribute_values_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (85, '2025_07_09_133553_alter_email_templates_table', 1);
COMMIT;

-- ----------------------------
-- Table structure for organizations
-- ----------------------------
DROP TABLE IF EXISTS `organizations`;
CREATE TABLE `organizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`address`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `organizations_name_unique` (`name`),
  KEY `organizations_user_id_foreign` (`user_id`),
  CONSTRAINT `organizations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of organizations
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for person_activities
-- ----------------------------
DROP TABLE IF EXISTS `person_activities`;
CREATE TABLE `person_activities` (
  `activity_id` int(10) unsigned NOT NULL,
  `person_id` int(10) unsigned NOT NULL,
  KEY `person_activities_activity_id_foreign` (`activity_id`),
  KEY `person_activities_person_id_foreign` (`person_id`),
  CONSTRAINT `person_activities_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE,
  CONSTRAINT `person_activities_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of person_activities
-- ----------------------------
BEGIN;
INSERT INTO `person_activities` (`activity_id`, `person_id`) VALUES (9, 1);
INSERT INTO `person_activities` (`activity_id`, `person_id`) VALUES (11, 2);
INSERT INTO `person_activities` (`activity_id`, `person_id`) VALUES (13, 3);
INSERT INTO `person_activities` (`activity_id`, `person_id`) VALUES (15, 4);
INSERT INTO `person_activities` (`activity_id`, `person_id`) VALUES (17, 5);
INSERT INTO `person_activities` (`activity_id`, `person_id`) VALUES (19, 6);
INSERT INTO `person_activities` (`activity_id`, `person_id`) VALUES (21, 7);
INSERT INTO `person_activities` (`activity_id`, `person_id`) VALUES (23, 8);
INSERT INTO `person_activities` (`activity_id`, `person_id`) VALUES (25, 9);
INSERT INTO `person_activities` (`activity_id`, `person_id`) VALUES (27, 10);
COMMIT;

-- ----------------------------
-- Table structure for person_tags
-- ----------------------------
DROP TABLE IF EXISTS `person_tags`;
CREATE TABLE `person_tags` (
  `tag_id` int(10) unsigned NOT NULL,
  `person_id` int(10) unsigned NOT NULL,
  KEY `person_tags_tag_id_foreign` (`tag_id`),
  KEY `person_tags_person_id_foreign` (`person_id`),
  CONSTRAINT `person_tags_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE,
  CONSTRAINT `person_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of person_tags
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for persons
-- ----------------------------
DROP TABLE IF EXISTS `persons`;
CREATE TABLE `persons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emails` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`emails`)),
  `contact_numbers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`contact_numbers`)),
  `organization_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `unique_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `persons_unique_id_unique` (`unique_id`),
  KEY `persons_user_id_foreign` (`user_id`),
  KEY `persons_organization_id_foreign` (`organization_id`),
  CONSTRAINT `persons_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE SET NULL,
  CONSTRAINT `persons_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of persons
-- ----------------------------
BEGIN;
INSERT INTO `persons` (`id`, `name`, `emails`, `contact_numbers`, `organization_id`, `created_at`, `updated_at`, `job_title`, `user_id`, `unique_id`) VALUES (1, 'Khách BĐS Phạm Văn 1', '[{\"value\":\"khach1@test.com\",\"label\":\"work\"}]', '[{\"value\":\"0964824441\",\"label\":\"work\"}]', NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL, 4, NULL);
INSERT INTO `persons` (`id`, `name`, `emails`, `contact_numbers`, `organization_id`, `created_at`, `updated_at`, `job_title`, `user_id`, `unique_id`) VALUES (2, 'Khách BĐS Phạm Văn 2', '[{\"value\":\"khach2@test.com\",\"label\":\"work\"}]', '[{\"value\":\"0951866173\",\"label\":\"work\"}]', NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL, 3, NULL);
INSERT INTO `persons` (`id`, `name`, `emails`, `contact_numbers`, `organization_id`, `created_at`, `updated_at`, `job_title`, `user_id`, `unique_id`) VALUES (3, 'Khách BĐS Phạm Văn 3', '[{\"value\":\"khach3@test.com\",\"label\":\"work\"}]', '[{\"value\":\"0953832634\",\"label\":\"work\"}]', NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL, 4, NULL);
INSERT INTO `persons` (`id`, `name`, `emails`, `contact_numbers`, `organization_id`, `created_at`, `updated_at`, `job_title`, `user_id`, `unique_id`) VALUES (4, 'Khách BĐS Phạm Văn 4', '[{\"value\":\"khach4@test.com\",\"label\":\"work\"}]', '[{\"value\":\"0930126104\",\"label\":\"work\"}]', NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL, 3, NULL);
INSERT INTO `persons` (`id`, `name`, `emails`, `contact_numbers`, `organization_id`, `created_at`, `updated_at`, `job_title`, `user_id`, `unique_id`) VALUES (5, 'Khách BĐS Phạm Văn 5', '[{\"value\":\"khach5@test.com\",\"label\":\"work\"}]', '[{\"value\":\"0954319277\",\"label\":\"work\"}]', NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL, 4, NULL);
INSERT INTO `persons` (`id`, `name`, `emails`, `contact_numbers`, `organization_id`, `created_at`, `updated_at`, `job_title`, `user_id`, `unique_id`) VALUES (6, 'Khách BĐS Phạm Văn 6', '[{\"value\":\"khach6@test.com\",\"label\":\"work\"}]', '[{\"value\":\"0933367237\",\"label\":\"work\"}]', NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL, 3, NULL);
INSERT INTO `persons` (`id`, `name`, `emails`, `contact_numbers`, `organization_id`, `created_at`, `updated_at`, `job_title`, `user_id`, `unique_id`) VALUES (7, 'Khách BĐS Phạm Văn 7', '[{\"value\":\"khach7@test.com\",\"label\":\"work\"}]', '[{\"value\":\"0929599284\",\"label\":\"work\"}]', NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL, 4, NULL);
INSERT INTO `persons` (`id`, `name`, `emails`, `contact_numbers`, `organization_id`, `created_at`, `updated_at`, `job_title`, `user_id`, `unique_id`) VALUES (8, 'Khách BĐS Phạm Văn 8', '[{\"value\":\"khach8@test.com\",\"label\":\"work\"}]', '[{\"value\":\"0966107879\",\"label\":\"work\"}]', NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL, 3, NULL);
INSERT INTO `persons` (`id`, `name`, `emails`, `contact_numbers`, `organization_id`, `created_at`, `updated_at`, `job_title`, `user_id`, `unique_id`) VALUES (9, 'Khách BĐS Phạm Văn 9', '[{\"value\":\"khach9@test.com\",\"label\":\"work\"}]', '[{\"value\":\"0919372318\",\"label\":\"work\"}]', NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL, 4, NULL);
INSERT INTO `persons` (`id`, `name`, `emails`, `contact_numbers`, `organization_id`, `created_at`, `updated_at`, `job_title`, `user_id`, `unique_id`) VALUES (10, 'Khách BĐS Phạm Văn 10', '[{\"value\":\"khach10@test.com\",\"label\":\"work\"}]', '[{\"value\":\"0999858166\",\"label\":\"work\"}]', NULL, '2026-03-06 15:42:41', '2026-03-06 15:42:41', NULL, 3, NULL);
COMMIT;

-- ----------------------------
-- Table structure for product_activities
-- ----------------------------
DROP TABLE IF EXISTS `product_activities`;
CREATE TABLE `product_activities` (
  `activity_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  KEY `product_activities_activity_id_foreign` (`activity_id`),
  KEY `product_activities_product_id_foreign` (`product_id`),
  CONSTRAINT `product_activities_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_activities_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_activities
-- ----------------------------
BEGIN;
INSERT INTO `product_activities` (`activity_id`, `product_id`) VALUES (1, 1);
INSERT INTO `product_activities` (`activity_id`, `product_id`) VALUES (2, 2);
INSERT INTO `product_activities` (`activity_id`, `product_id`) VALUES (3, 3);
INSERT INTO `product_activities` (`activity_id`, `product_id`) VALUES (4, 4);
INSERT INTO `product_activities` (`activity_id`, `product_id`) VALUES (5, 5);
INSERT INTO `product_activities` (`activity_id`, `product_id`) VALUES (6, 6);
INSERT INTO `product_activities` (`activity_id`, `product_id`) VALUES (7, 7);
INSERT INTO `product_activities` (`activity_id`, `product_id`) VALUES (8, 8);
COMMIT;

-- ----------------------------
-- Table structure for product_inventories
-- ----------------------------
DROP TABLE IF EXISTS `product_inventories`;
CREATE TABLE `product_inventories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `in_stock` int(11) NOT NULL DEFAULT 0,
  `allocated` int(11) NOT NULL DEFAULT 0,
  `product_id` int(10) unsigned NOT NULL,
  `warehouse_id` int(10) unsigned DEFAULT NULL,
  `warehouse_location_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_inventories_product_id_foreign` (`product_id`),
  KEY `product_inventories_warehouse_id_foreign` (`warehouse_id`),
  KEY `product_inventories_warehouse_location_id_foreign` (`warehouse_location_id`),
  CONSTRAINT `product_inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_inventories_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_inventories_warehouse_location_id_foreign` FOREIGN KEY (`warehouse_location_id`) REFERENCES `warehouse_locations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_inventories
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for product_tags
-- ----------------------------
DROP TABLE IF EXISTS `product_tags`;
CREATE TABLE `product_tags` (
  `tag_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  KEY `product_tags_tag_id_foreign` (`tag_id`),
  KEY `product_tags_product_id_foreign` (`product_id`),
  CONSTRAINT `product_tags_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_tags
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `price` decimal(12,4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_sku_unique` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
BEGIN;
INSERT INTO `products` (`id`, `sku`, `name`, `description`, `quantity`, `price`, `created_at`, `updated_at`) VALUES (1, 'BDS-001', 'Sản Phẩm BĐS 1', 'Căn hộ/Đất nền vị trí đẹp số 1', 1, 99999999.9999, '2026-03-06 15:40:25', '2026-03-06 15:40:25');
INSERT INTO `products` (`id`, `sku`, `name`, `description`, `quantity`, `price`, `created_at`, `updated_at`) VALUES (2, 'BDS-002', 'Sản Phẩm BĐS 2', 'Căn hộ/Đất nền vị trí đẹp số 2', 1, 99999999.9999, '2026-03-06 15:40:25', '2026-03-06 15:40:25');
INSERT INTO `products` (`id`, `sku`, `name`, `description`, `quantity`, `price`, `created_at`, `updated_at`) VALUES (3, 'BDS-003', 'Sản Phẩm BĐS 3', 'Căn hộ/Đất nền vị trí đẹp số 3', 1, 99999999.9999, '2026-03-06 15:40:25', '2026-03-06 15:40:25');
INSERT INTO `products` (`id`, `sku`, `name`, `description`, `quantity`, `price`, `created_at`, `updated_at`) VALUES (4, 'BDS-004', 'Sản Phẩm BĐS 4', 'Căn hộ/Đất nền vị trí đẹp số 4', 1, 99999999.9999, '2026-03-06 15:40:25', '2026-03-06 15:40:25');
INSERT INTO `products` (`id`, `sku`, `name`, `description`, `quantity`, `price`, `created_at`, `updated_at`) VALUES (5, 'BDS-005', 'Sản Phẩm BĐS 5', 'Căn hộ/Đất nền vị trí đẹp số 5', 1, 99999999.9999, '2026-03-06 15:40:25', '2026-03-06 15:40:25');
INSERT INTO `products` (`id`, `sku`, `name`, `description`, `quantity`, `price`, `created_at`, `updated_at`) VALUES (6, 'BDS-006', 'Sản Phẩm BĐS 6', 'Căn hộ/Đất nền vị trí đẹp số 6', 1, 99999999.9999, '2026-03-06 15:40:25', '2026-03-06 15:40:25');
INSERT INTO `products` (`id`, `sku`, `name`, `description`, `quantity`, `price`, `created_at`, `updated_at`) VALUES (7, 'BDS-007', 'Sản Phẩm BĐS 7', 'Căn hộ/Đất nền vị trí đẹp số 7', 1, 99999999.9999, '2026-03-06 15:40:25', '2026-03-06 15:40:25');
INSERT INTO `products` (`id`, `sku`, `name`, `description`, `quantity`, `price`, `created_at`, `updated_at`) VALUES (8, 'BDS-008', 'Sản Phẩm BĐS 8', 'Căn hộ/Đất nền vị trí đẹp số 8', 1, 99999999.9999, '2026-03-06 15:40:25', '2026-03-06 15:40:25');
COMMIT;

-- ----------------------------
-- Table structure for quote_items
-- ----------------------------
DROP TABLE IF EXISTS `quote_items`;
CREATE TABLE `quote_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT 0,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `tax_percent` decimal(12,4) DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `product_id` int(10) unsigned NOT NULL,
  `quote_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quote_items_quote_id_foreign` (`quote_id`),
  CONSTRAINT `quote_items_quote_id_foreign` FOREIGN KEY (`quote_id`) REFERENCES `quotes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of quote_items
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for quotes
-- ----------------------------
DROP TABLE IF EXISTS `quotes`;
CREATE TABLE `quotes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`billing_address`)),
  `shipping_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`shipping_address`)),
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT NULL,
  `tax_amount` decimal(12,4) DEFAULT NULL,
  `adjustment_amount` decimal(12,4) DEFAULT NULL,
  `sub_total` decimal(12,4) DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT NULL,
  `expired_at` datetime DEFAULT NULL,
  `person_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quotes_person_id_foreign` (`person_id`),
  KEY `quotes_user_id_foreign` (`user_id`),
  CONSTRAINT `quotes_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE,
  CONSTRAINT `quotes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of quotes
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`permissions`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` (`id`, `name`, `description`, `permission_type`, `permissions`, `created_at`, `updated_at`) VALUES (1, 'Administrator', 'Administrator Role', 'all', NULL, NULL, NULL);
INSERT INTO `roles` (`id`, `name`, `description`, `permission_type`, `permissions`, `created_at`, `updated_at`) VALUES (2, 'Nhân Viên Kinh Doanh', 'Quyền NVKD (Chỉ cá nhân)', 'custom', '[\"leads\",\"leads.create\",\"leads.edit\",\"leads.view\",\"contacts\",\"contacts.persons\",\"contacts.persons.create\",\"contacts.persons.edit\",\"contacts.persons.view\",\"products\",\"products.create\",\"products.edit\",\"products.view\"]', '2026-03-06 15:40:25', '2026-03-06 15:40:25');
INSERT INTO `roles` (`id`, `name`, `description`, `permission_type`, `permissions`, `created_at`, `updated_at`) VALUES (3, 'Trưởng Phòng Kinh Doanh', 'Quyền TPKD (Đội nhóm)', 'custom', '[\"leads\",\"leads.create\",\"leads.edit\",\"leads.view\",\"contacts\",\"contacts.persons\",\"contacts.persons.create\",\"contacts.persons.edit\",\"contacts.persons.view\",\"products\",\"products.create\",\"products.edit\",\"products.view\",\"leads.delete\",\"quotes\",\"quotes.create\",\"quotes.edit\",\"quotes.delete\",\"quotes.view\",\"contacts.organizations\",\"contacts.organizations.create\",\"contacts.organizations.edit\"]', '2026-03-06 15:40:25', '2026-03-06 15:40:25');
COMMIT;

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tags_user_id_foreign` (`user_id`),
  CONSTRAINT `tags_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tags
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for user_groups
-- ----------------------------
DROP TABLE IF EXISTS `user_groups`;
CREATE TABLE `user_groups` (
  `group_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  KEY `user_groups_group_id_foreign` (`group_id`),
  KEY `user_groups_user_id_foreign` (`user_id`),
  CONSTRAINT `user_groups_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_groups_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_groups
-- ----------------------------
BEGIN;
INSERT INTO `user_groups` (`group_id`, `user_id`) VALUES (1, 2);
INSERT INTO `user_groups` (`group_id`, `user_id`) VALUES (1, 3);
INSERT INTO `user_groups` (`group_id`, `user_id`) VALUES (1, 4);
COMMIT;

-- ----------------------------
-- Table structure for user_password_resets
-- ----------------------------
DROP TABLE IF EXISTS `user_password_resets`;
CREATE TABLE `user_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `user_password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_password_resets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `view_permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'global',
  `role_id` int(10) unsigned NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`, `view_permission`, `role_id`, `remember_token`, `created_at`, `updated_at`, `image`) VALUES (1, 'Example Admin', 'admin@example.com', '$2y$10$caYWhg2HRolsMxIQ0AoAmeDQAAvmHyiwA/AIp/j4v1TdhU6z2s1Bq', 1, 'global', 1, NULL, '2026-03-06 11:20:35', '2026-03-06 11:20:35', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`, `view_permission`, `role_id`, `remember_token`, `created_at`, `updated_at`, `image`) VALUES (2, 'Trưởng Phòng KD1', 'manager@krayin.com', '$2y$10$h2LS1dbMAJtRTfUT1W2WGuHL6MKxuhzEDgfjmZhVhgxGnwdDJXbvS', 1, 'group', 3, NULL, '2026-03-06 15:40:25', '2026-03-06 15:40:25', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`, `view_permission`, `role_id`, `remember_token`, `created_at`, `updated_at`, `image`) VALUES (3, 'Nhân Viên KD1 A', 'sale1@krayin.com', '$2y$10$ox2W1Tv95FVH2ypusPnAHulKivH81nFdrF2dHBSHlAVoW.a4gGjTm', 1, 'individual', 2, NULL, '2026-03-06 15:40:25', '2026-03-06 15:40:25', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`, `view_permission`, `role_id`, `remember_token`, `created_at`, `updated_at`, `image`) VALUES (4, 'Nhân Viên KD1 B', 'sale2@krayin.com', '$2y$10$405.ooDqi5Io1hdyAMqzdOdhQzpv6a0M7DcBs0One2xTlZCsM8riS', 1, 'individual', 2, NULL, '2026-03-06 15:40:25', '2026-03-06 15:40:25', NULL);
COMMIT;

-- ----------------------------
-- Table structure for warehouse_activities
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_activities`;
CREATE TABLE `warehouse_activities` (
  `activity_id` int(10) unsigned NOT NULL,
  `warehouse_id` int(10) unsigned NOT NULL,
  KEY `warehouse_activities_activity_id_foreign` (`activity_id`),
  KEY `warehouse_activities_warehouse_id_foreign` (`warehouse_id`),
  CONSTRAINT `warehouse_activities_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE,
  CONSTRAINT `warehouse_activities_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of warehouse_activities
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for warehouse_locations
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_locations`;
CREATE TABLE `warehouse_locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `warehouse_locations_warehouse_id_name_unique` (`warehouse_id`,`name`),
  CONSTRAINT `warehouse_locations_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of warehouse_locations
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for warehouse_tags
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_tags`;
CREATE TABLE `warehouse_tags` (
  `tag_id` int(10) unsigned NOT NULL,
  `warehouse_id` int(10) unsigned NOT NULL,
  KEY `warehouse_tags_tag_id_foreign` (`tag_id`),
  KEY `warehouse_tags_warehouse_id_foreign` (`warehouse_id`),
  CONSTRAINT `warehouse_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE,
  CONSTRAINT `warehouse_tags_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of warehouse_tags
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for warehouses
-- ----------------------------
DROP TABLE IF EXISTS `warehouses`;
CREATE TABLE `warehouses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_emails` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`contact_emails`)),
  `contact_numbers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`contact_numbers`)),
  `contact_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`contact_address`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of warehouses
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for web_form_attributes
-- ----------------------------
DROP TABLE IF EXISTS `web_form_attributes`;
CREATE TABLE `web_form_attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT 0,
  `is_hidden` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` int(11) DEFAULT NULL,
  `attribute_id` int(10) unsigned NOT NULL,
  `web_form_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_form_attributes_attribute_id_foreign` (`attribute_id`),
  KEY `web_form_attributes_web_form_id_foreign` (`web_form_id`),
  CONSTRAINT `web_form_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `web_form_attributes_web_form_id_foreign` FOREIGN KEY (`web_form_id`) REFERENCES `web_forms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of web_form_attributes
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for web_forms
-- ----------------------------
DROP TABLE IF EXISTS `web_forms`;
CREATE TABLE `web_forms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submit_button_label` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `submit_success_action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submit_success_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_lead` tinyint(1) NOT NULL DEFAULT 0,
  `background_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_background_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_title_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_submit_button_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_label_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `web_forms_form_id_unique` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of web_forms
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for webhooks
-- ----------------------------
DROP TABLE IF EXISTS `webhooks`;
CREATE TABLE `webhooks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`query_params`)),
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`)),
  `payload_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `raw_payload_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payload`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of webhooks
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for workflows
-- ----------------------------
DROP TABLE IF EXISTS `workflows`;
CREATE TABLE `workflows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'and',
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `actions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`actions`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of workflows
-- ----------------------------
BEGIN;
INSERT INTO `workflows` (`id`, `name`, `description`, `entity_type`, `event`, `condition_type`, `conditions`, `actions`, `created_at`, `updated_at`) VALUES (1, 'Emails to participants after activity creation', 'Emails to participants after activity creation', 'activities', 'activity.create.after', 'and', '[{\"value\": [\"call\", \"meeting\", \"lunch\"], \"operator\": \"{}\", \"attribute\": \"type\", \"attribute_type\": \"multiselect\"}]', '[{\"id\": \"send_email_to_participants\", \"value\": \"1\"}]', '2026-03-06 11:20:35', '2026-03-06 11:20:35');
INSERT INTO `workflows` (`id`, `name`, `description`, `entity_type`, `event`, `condition_type`, `conditions`, `actions`, `created_at`, `updated_at`) VALUES (2, 'Emails to participants after activity updation', 'Emails to participants after activity updation', 'activities', 'activity.update.after', 'and', '[{\"value\": [\"call\", \"meeting\", \"lunch\"], \"operator\": \"{}\", \"attribute\": \"type\", \"attribute_type\": \"multiselect\"}]', '[{\"id\": \"send_email_to_participants\", \"value\": \"2\"}]', '2026-03-06 11:20:35', '2026-03-06 11:20:35');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
