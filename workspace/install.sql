
-- *** STRUCTURE: `tbl_fields_author` ***
DROP TABLE IF EXISTS `tbl_fields_author`;
CREATE TABLE `tbl_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_author_change` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_author` ***

-- *** STRUCTURE: `tbl_fields_checkbox` ***
DROP TABLE IF EXISTS `tbl_fields_checkbox`;
CREATE TABLE `tbl_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_checkbox` ***
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (1, 9, 'off', NULL);

-- *** STRUCTURE: `tbl_fields_date` ***
DROP TABLE IF EXISTS `tbl_fields_date`;
CREATE TABLE `tbl_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `calendar` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_date` ***

-- *** STRUCTURE: `tbl_fields_input` ***
DROP TABLE IF EXISTS `tbl_fields_input`;
CREATE TABLE `tbl_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_input` ***
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (6, 1, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (7, 3, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (8, 4, '/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i');
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (5, 5, NULL);

-- *** STRUCTURE: `tbl_fields_select` ***
DROP TABLE IF EXISTS `tbl_fields_select`;
CREATE TABLE `tbl_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_options` text COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_select` ***
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (4, 2, 'no', 'Inactive, Customer, Developer', NULL);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (3, 7, 'no', 'Active, Inactive, Finished', NULL);

-- *** STRUCTURE: `tbl_fields_selectbox_link` ***
DROP TABLE IF EXISTS `tbl_fields_selectbox_link`;
CREATE TABLE `tbl_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_selectbox_link` ***
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (2, 8, 'yes', 3, 20);

-- *** STRUCTURE: `tbl_fields_taglist` ***
DROP TABLE IF EXISTS `tbl_fields_taglist`;
CREATE TABLE `tbl_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_taglist` ***

-- *** STRUCTURE: `tbl_fields_textarea` ***
DROP TABLE IF EXISTS `tbl_fields_textarea`;
CREATE TABLE `tbl_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_textarea` ***
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (2, 6, NULL, 15);

-- *** STRUCTURE: `tbl_fields_upload` ***
DROP TABLE IF EXISTS `tbl_fields_upload`;
CREATE TABLE `tbl_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_upload` ***

-- *** STRUCTURE: `tbl_entries_data_1` ***
DROP TABLE IF EXISTS `tbl_entries_data_1`;
CREATE TABLE `tbl_entries_data_1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_1` ***
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 1, 'stephen', 'stephen');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 2, 'bob', 'bob');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 3, 'john', 'john');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 4, 'jane', 'jane');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 5, 'tracy', 'tracy');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 6, 'matt', 'matt');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 12, 'tom', 'tom');

-- *** STRUCTURE: `tbl_entries_data_2` ***
DROP TABLE IF EXISTS `tbl_entries_data_2`;
CREATE TABLE `tbl_entries_data_2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_2` ***
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 1, 'developer', 'Developer');
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 2, 'customer', 'Customer');
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 3, 'inactive', 'Inactive');
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 4, 'inactive', 'Inactive');
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 5, 'customer', 'Customer');
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 6, 'developer', 'Developer');
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 12, 'customer', 'Customer');

-- *** STRUCTURE: `tbl_entries_data_3` ***
DROP TABLE IF EXISTS `tbl_entries_data_3`;
CREATE TABLE `tbl_entries_data_3` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_3` ***
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 1, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 2, 'bob', 'Bob');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 3, 'john', 'John');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 4, 'jane', 'Jane');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 5, 'tracy', 'Tracy');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 6, 'matthew', 'Matthew');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 12, 'tom', 'Tom');

-- *** STRUCTURE: `tbl_entries_data_4` ***
DROP TABLE IF EXISTS `tbl_entries_data_4`;
CREATE TABLE `tbl_entries_data_4` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_4` ***
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 1, 'bauhouse-gmailcom', 'bauhouse@gmail.com');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 2, 'bob-examplecom', 'bob@example.com');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 3, 'john-examplecom', 'john@example.com');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 4, 'jane-examplecom', 'jane@example.com');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 5, 'tracy-examplecom', 'tracy@example.com');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 6, 'matt-examplecom', 'matt@example.com');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 12, 'tom-examplecom', 'tom@example.com');

-- *** STRUCTURE: `tbl_entries_data_5` ***
DROP TABLE IF EXISTS `tbl_entries_data_5`;
CREATE TABLE `tbl_entries_data_5` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_5` ***
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 7, 'symphony-cms-xslt-templates', 'Symphony CMS XSLT Templates');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 8, 'bugaroo-bug-tracker-ensemble', 'Bugaroo Bug Tracker Ensemble');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 9, 'try-saving-another-project', 'Try saving another project');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 10, 'testing-the-form-when-saving-multiple-contributors', 'Testing the form when saving multiple contributors');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 13, 'the-symphony-form-builder', 'The Symphony Form Builder');

-- *** STRUCTURE: `tbl_entries_data_6` ***
DROP TABLE IF EXISTS `tbl_entries_data_6`;
CREATE TABLE `tbl_entries_data_6` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_6` ***
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 7, 'Rebuilding the Symphony CMS Admin interface entirely with XSLT', 'Rebuilding the Symphony CMS Admin interface entirely with XSLT');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 8, 'Building a Symphony ensemble to track projects and issues', 'Building a Symphony ensemble to track projects and issues');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 9, 'The project description', 'The project description');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 10, 'A test of the Form Controls for saving multiple select box values', 'A test of the Form Controls for saving multiple select box values');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 13, 'An ensemble to demonstrate using Section Schemas and Form Controls to build front end forms in Symphony', 'An ensemble to demonstrate using Section Schemas and Form Controls to build front end forms in Symphony');

-- *** STRUCTURE: `tbl_entries_data_7` ***
DROP TABLE IF EXISTS `tbl_entries_data_7`;
CREATE TABLE `tbl_entries_data_7` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_7` ***
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 7, 'active', 'Active');
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 8, 'active', 'Active');
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 9, 'finished', 'Finished');
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 10, 'active', 'Active');
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 13, 'active', 'Active');

-- *** STRUCTURE: `tbl_entries_data_8` ***
DROP TABLE IF EXISTS `tbl_entries_data_8`;
CREATE TABLE `tbl_entries_data_8` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_8` ***
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (11, 7, 1);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (2, 8, 2);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (3, 8, 1);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (5, 9, 2);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (6, 9, 1);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (15, 10, 2);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (14, 10, 3);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (13, 10, 4);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (12, 10, 5);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (16, 13, 4);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (17, 13, 3);

-- *** STRUCTURE: `tbl_entries_data_9` ***
DROP TABLE IF EXISTS `tbl_entries_data_9`;
CREATE TABLE `tbl_entries_data_9` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_9` ***
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (1, 6, 'no');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (2, 5, 'no');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (3, 3, 'no');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (4, 2, 'no');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (5, 4, 'no');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (6, 12, 'no');

-- *** DATA: `tbl_entries` ***
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (1, 1, 0, '2010-03-10 10:48:39', '2010-03-10 18:48:39');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (2, 1, 0, '2010-03-10 11:18:24', '2010-03-10 19:18:24');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (3, 1, 0, '2010-03-10 11:20:37', '2010-03-10 19:20:37');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (4, 1, 0, '2010-03-10 11:24:38', '2010-03-10 19:24:38');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (5, 1, 0, '2010-03-10 11:59:57', '2010-03-10 19:59:57');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (6, 1, 0, '2010-03-10 12:33:37', '2010-03-10 20:33:37');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (7, 2, 0, '2010-03-10 19:19:27', '2010-03-11 03:19:27');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (8, 2, 0, '2010-03-10 19:28:18', '2010-03-11 03:28:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (9, 2, 0, '2010-03-10 19:32:18', '2010-03-11 03:32:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (10, 2, 0, '2010-03-10 19:41:19', '2010-03-11 03:41:19');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (12, 1, 0, '2010-03-11 07:54:14', '2010-03-11 15:54:14');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (13, 2, 0, '2010-03-11 20:16:33', '2010-03-12 04:16:33');

-- *** DATA: `tbl_extensions` ***
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (1, 'asdc', 'enabled', 1.3);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (2, 'databasemanipulator', 'enabled', 0.4);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (3, 'debugdevkit', 'enabled', 1);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (4, 'eventex', 'enabled', 1.01);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (5, 'export_ensemble', 'enabled', 1.9);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (7, 'selectbox_link_field', 'enabled', 1.1);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (8, 'jit_image_manipulation', 'enabled', 1.05);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (9, 'maintenance_mode', 'enabled', 1.1);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (10, 'markdown', 'enabled', 1.8);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (11, 'profiledevkit', 'enabled', 1);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (12, 'section_schemas', 'enabled', 1.4);

-- *** DATA: `tbl_extensions_delegates` ***
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (1, 3, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (2, 3, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (3, 5, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (4, 8, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (5, 8, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (6, 9, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (7, 9, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (8, 9, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (9, 9, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (10, 9, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (11, 9, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (12, 11, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (13, 11, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');

-- *** DATA: `tbl_fields` ***
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (1, 'Username', 'username', 'input', 1, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (2, 'Role', 'role', 'select', 1, 'no', 1, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (3, 'Name', 'name', 'input', 1, 'yes', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (4, 'Email', 'email', 'input', 1, 'yes', 3, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (5, 'Title', 'title', 'input', 2, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (6, 'Description', 'description', 'textarea', 2, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (7, 'Status', 'status', 'select', 2, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (8, 'Contributors', 'contributors', 'selectbox_link', 2, 'no', 3, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (9, 'Anonymous', 'anonymous', 'checkbox', 1, 'no', 4, 'sidebar', 'yes');

-- *** DATA: `tbl_pages` ***
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (1, NULL, 'Home', 'home', NULL, NULL, 'navigation,section_schema_users', 'login,save_project,save_user', 1);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (2, NULL, 'Users', 'users', NULL, 'action/id', 'navigation,section_schema_users', 'login,save_user', 2);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (3, NULL, 'Projects', 'projects', NULL, 'action/id', 'navigation,section_schema_projects', 'login,save_project', 3);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (4, NULL, 'Project User', 'project-user', NULL, NULL, 'navigation,section_schema_projects,section_schema_users', 'login,save_project_user', 4);

-- *** DATA: `tbl_pages_types` ***
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (11, 1, 'index');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (12, 2, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (13, 3, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (14, 4, 'admin');

-- *** DATA: `tbl_sections` ***
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (1, 'Users', 'users', 1, NULL, 'asc', 'no', 'Users');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (2, 'Projects', 'projects', 0, NULL, 'asc', 'no', 'Projects');

-- *** DATA: `tbl_sections_association` ***
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (2, 1, 3, 2, 8, 'no');
