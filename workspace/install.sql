
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
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_checkbox` ***
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (1, 9, 'off', NULL);
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (18, 39, 'on', 'Display in Dashboard View');
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (19, 40, 'on', 'Display in Issues View');
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (20, 41, 'on', 'Display in Milestones View');
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (22, 42, 'off', 'Counts towards finished percentage');
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (21, 50, 'on', 'Display in Projects View');

-- *** STRUCTURE: `tbl_fields_colorchooser` ***
DROP TABLE IF EXISTS `tbl_fields_colorchooser`;
CREATE TABLE `tbl_fields_colorchooser` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_colorchooser` ***
INSERT INTO `tbl_fields_colorchooser` (`id`, `field_id`) VALUES (15, 37);
INSERT INTO `tbl_fields_colorchooser` (`id`, `field_id`) VALUES (14, 38);
INSERT INTO `tbl_fields_colorchooser` (`id`, `field_id`) VALUES (9, 44);
INSERT INTO `tbl_fields_colorchooser` (`id`, `field_id`) VALUES (8, 46);

-- *** STRUCTURE: `tbl_fields_date` ***
DROP TABLE IF EXISTS `tbl_fields_date`;
CREATE TABLE `tbl_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_date` ***
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (14, 15, 'yes');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (10, 17, 'yes');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (11, 25, 'yes');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (16, 28, 'yes');

-- *** STRUCTURE: `tbl_fields_input` ***
DROP TABLE IF EXISTS `tbl_fields_input`;
CREATE TABLE `tbl_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_input` ***
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (6, 1, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (7, 3, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (8, 4, '/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i');
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (11, 5, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (26, 11, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (24, 16, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (28, 36, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (22, 43, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (21, 45, NULL);

-- *** STRUCTURE: `tbl_fields_order_entries` ***
DROP TABLE IF EXISTS `tbl_fields_order_entries`;
CREATE TABLE `tbl_fields_order_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `force_sort` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  `hide` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_order_entries` ***
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (7, 47, 'yes', 'yes');
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (4, 48, 'yes', 'yes');
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (3, 49, 'yes', 'yes');

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_select` ***
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (4, 2, 'no', 'Inactive, Customer, Developer', NULL);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (7, 7, 'no', 'Active, Inactive, Finished', NULL);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (10, 13, 'no', 'Active, Inactive, Finished', NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_selectbox_link` ***
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (6, 8, 'yes', 3, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (7, 10, 'yes', 3, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (68, 14, 'no', 5, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (52, 18, 'no', 3, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (53, 19, 'no', 5, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (54, 20, 'no', 11, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (55, 21, 'no', 3, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (56, 22, 'no', 43, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (57, 23, 'no', 36, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (58, 24, 'no', 45, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (59, 26, 'no', 3, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (76, 29, 'no', 3, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (79, 30, 'no', 43, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (80, 31, 'no', 45, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (81, 32, 'no', 3, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (77, 33, 'no', 11, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (78, 34, 'no', 16, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (82, 35, 'no', 36, 20);

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_textarea` ***
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (5, 6, 'pb_markdownextrasmartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (12, 12, NULL, 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (14, 27, 'pb_markdownextrasmartypants', 15);

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_1` ***
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 1, 'stephen', 'stephen');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 2, 'bob', 'bob');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 3, 'john', 'john');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 4, 'jane', 'jane');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 5, 'tracy', 'tracy');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 6, 'matt', 'matt');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 12, 'tom', 'tom');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 16, 'jim', 'jim');

-- *** STRUCTURE: `tbl_entries_data_10` ***
DROP TABLE IF EXISTS `tbl_entries_data_10`;
CREATE TABLE `tbl_entries_data_10` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_10` ***
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `relation_id`) VALUES (3, 13, 1);
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `relation_id`) VALUES (9, 8, 5);
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `relation_id`) VALUES (8, 8, 1);

-- *** STRUCTURE: `tbl_entries_data_11` ***
DROP TABLE IF EXISTS `tbl_entries_data_11`;
CREATE TABLE `tbl_entries_data_11` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_11` ***
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 17, 'build-form-fields-with-form-controls', 'Build form fields with Form Controls ');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 18, 'build-form-automatically-with-section-schemas', 'Build form automatically with Section Schemas');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 19, 'create-an-eventex-event', 'Create an EventEx event');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 20, 'create-login-and-navigation-systems', 'Create login and navigation systems');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 21, 'create-notice', 'Create notice');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 22, 'update-entries', 'Update entries');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 23, 'edit-multiple-entries', 'Edit multiple entries');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 24, 'edit-entries-with-eventex', 'Edit entries with EventEx');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 40, 'update-to-symphony-208', 'Update to Symphony 2.0.8');

-- *** STRUCTURE: `tbl_entries_data_12` ***
DROP TABLE IF EXISTS `tbl_entries_data_12`;
CREATE TABLE `tbl_entries_data_12` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_12` ***
INSERT INTO `tbl_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (1, 17, 'Create a hard-coded version of the form using Form Controls', 'Create a hard-coded version of the form using Form Controls');
INSERT INTO `tbl_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 18, 'Create an XSLT template to automatically build the form based on the XML section schema.', 'Create an XSLT template to automatically build the form based on the XML section schema.');
INSERT INTO `tbl_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 19, 'Create an EventEx event to save entries to multiple sections', 'Create an EventEx event to save entries to multiple sections');
INSERT INTO `tbl_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 20, 'Modify navigation system to include a home page with a login form, an admin page to show a logged-in state, and pages to emulate the Symphony admin area.', 'Modify navigation system to include a home page with a login form, an admin page to show a logged-in state, and pages to emulate the Symphony admin area.');
INSERT INTO `tbl_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 21, 'Create notice for successfully created entries', 'Create notice for successfully created entries');
INSERT INTO `tbl_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 23, 'Add the ability to use the list view of a section to edit multiple entries using an event set to \"Allow multiple\" entries.', 'Add the ability to use the list view of a section to edit multiple entries using an event set to &quot;Allow multiple&quot; entries.');
INSERT INTO `tbl_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 24, 'Edit multiple entries with EventEx to complete the experiment that it is possible to use Form Controls, Section Schemas and EventEx to reproduce the Symphony admin interface.', 'Edit multiple entries with EventEx to complete the experiment that it is possible to use Form Controls, Section Schemas and EventEx to reproduce the Symphony admin interface.');
INSERT INTO `tbl_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 22, 'Add the ability to edit entries by pulling data into form fields\r\n\r\n* I also want to see how well textarea fields maintain the text formatting\r\n* I\'ll do this by using Markdown formatted list items\r\n\r\nThen, I\'ll see what happens to the text. Well, it seems to work very well. There is an issue with multiple select boxes where only the first selected option will be shown as selected when editing an entry.', 'Add the ability to edit entries by pulling data into form fields\r\n\r\n* I also want to see how well textarea fields maintain the text formatting\r\n* I\'ll do this by using Markdown formatted list items\r\n\r\nThen, I\'ll see what happens to the text. Well, it seems to work very well. There is an issue with multiple select boxes where only the first selected option will be shown as selected when editing an entry.');
INSERT INTO `tbl_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (14, 40, 'Symphony 2.0.8 RC1 has been released. Update Form Builder ensemble to test this latest release candidate', NULL);

-- *** STRUCTURE: `tbl_entries_data_13` ***
DROP TABLE IF EXISTS `tbl_entries_data_13`;
CREATE TABLE `tbl_entries_data_13` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_13` ***
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 17, 'finished', 'Finished');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 18, 'finished', 'Finished');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 19, 'finished', 'Finished');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 20, 'finished', 'Finished');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 21, 'active', 'Active');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 22, 'active', 'Active');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 23, 'active', 'Active');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 24, 'active', 'Active');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 40, 'active', 'Active');

-- *** STRUCTURE: `tbl_entries_data_14` ***
DROP TABLE IF EXISTS `tbl_entries_data_14`;
CREATE TABLE `tbl_entries_data_14` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_14` ***
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `relation_id`) VALUES (1, 17, 13);
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `relation_id`) VALUES (2, 18, 13);
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `relation_id`) VALUES (3, 19, 13);
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `relation_id`) VALUES (5, 20, 13);
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `relation_id`) VALUES (6, 21, 13);
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `relation_id`) VALUES (13, 22, 13);
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `relation_id`) VALUES (8, 23, 13);
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `relation_id`) VALUES (9, 24, 13);
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `relation_id`) VALUES (14, 40, 13);

-- *** STRUCTURE: `tbl_entries_data_15` ***
DROP TABLE IF EXISTS `tbl_entries_data_15`;
CREATE TABLE `tbl_entries_data_15` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_15` ***
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (1, 17, '2010-03-15T20:01:00-07:00', 1268708460, 1268708460);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (2, 18, '2010-03-15T20:07:00-07:00', 1268708820, 1268708820);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (3, 19, '2010-03-15T20:10:00-07:00', 1268709000, 1268709000);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (5, 20, '2010-03-15T20:21:00-07:00', 1268709660, 1268709660);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (6, 21, '2010-03-15T20:54:00-07:00', 1268711640, 1268711640);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (13, 22, '2010-03-15T21:03:00-07:00', 1268712180, 1268712180);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (8, 23, '2010-03-15T21:08:00-07:00', 1268712480, 1268712480);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (9, 24, '2010-03-15T21:16:00-07:00', 1268712960, 1268712960);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (14, 40, '2010-03-20T08:06:00-07:00', 1269097560, 1269097560);

-- *** STRUCTURE: `tbl_entries_data_16` ***
DROP TABLE IF EXISTS `tbl_entries_data_16`;
CREATE TABLE `tbl_entries_data_16` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_16` ***
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 38, 'the-created-time-ago-javascript-is-not-working-for-the-success-notice', 'The created time ago JavaScript is not working for the success notice');

-- *** STRUCTURE: `tbl_entries_data_17` ***
DROP TABLE IF EXISTS `tbl_entries_data_17`;
CREATE TABLE `tbl_entries_data_17` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_17` ***
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (1, 38, '2010-03-15T22:50:00-07:00', 1268718600, 1268718600);

-- *** STRUCTURE: `tbl_entries_data_18` ***
DROP TABLE IF EXISTS `tbl_entries_data_18`;
CREATE TABLE `tbl_entries_data_18` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_18` ***
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `relation_id`) VALUES (1, 38, 1);

-- *** STRUCTURE: `tbl_entries_data_19` ***
DROP TABLE IF EXISTS `tbl_entries_data_19`;
CREATE TABLE `tbl_entries_data_19` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_19` ***
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `relation_id`) VALUES (1, 38, 13);

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_2` ***
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 1, 'developer', 'Developer');
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 2, 'customer', 'Customer');
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 3, 'inactive', 'Inactive');
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 4, 'inactive', 'Inactive');
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 5, 'customer', 'Customer');
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 6, 'developer', 'Developer');
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 12, 'customer', 'Customer');
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 16, 'developer', 'Developer');

-- *** STRUCTURE: `tbl_entries_data_20` ***
DROP TABLE IF EXISTS `tbl_entries_data_20`;
CREATE TABLE `tbl_entries_data_20` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_20` ***
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `relation_id`) VALUES (1, 38, 21);

-- *** STRUCTURE: `tbl_entries_data_21` ***
DROP TABLE IF EXISTS `tbl_entries_data_21`;
CREATE TABLE `tbl_entries_data_21` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_21` ***
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES (1, 38, 1);

-- *** STRUCTURE: `tbl_entries_data_22` ***
DROP TABLE IF EXISTS `tbl_entries_data_22`;
CREATE TABLE `tbl_entries_data_22` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_22` ***
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `relation_id`) VALUES (1, 38, 32);

-- *** STRUCTURE: `tbl_entries_data_23` ***
DROP TABLE IF EXISTS `tbl_entries_data_23`;
CREATE TABLE `tbl_entries_data_23` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_23` ***
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `relation_id`) VALUES (1, 38, 25);

-- *** STRUCTURE: `tbl_entries_data_24` ***
DROP TABLE IF EXISTS `tbl_entries_data_24`;
CREATE TABLE `tbl_entries_data_24` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_24` ***
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `relation_id`) VALUES (1, 38, 35);

-- *** STRUCTURE: `tbl_entries_data_25` ***
DROP TABLE IF EXISTS `tbl_entries_data_25`;
CREATE TABLE `tbl_entries_data_25` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_25` ***
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (1, 38, '2010-03-15T22:50:00-07:00', 1268718600, 1268718600);

-- *** STRUCTURE: `tbl_entries_data_26` ***
DROP TABLE IF EXISTS `tbl_entries_data_26`;
CREATE TABLE `tbl_entries_data_26` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_26` ***
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `relation_id`) VALUES (1, 38, 1);

-- *** STRUCTURE: `tbl_entries_data_27` ***
DROP TABLE IF EXISTS `tbl_entries_data_27`;
CREATE TABLE `tbl_entries_data_27` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_formatted` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_27` ***
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (1, 39, 'I was able to pare down the page templates to bare essentials. Only two variables need to be declared for each page to display both the list view and the create view for each section.', 'I was able to pare down the page templates to bare essentials. Only two variables need to be declared for each page to display both the list view and the create view for each section.');

-- *** STRUCTURE: `tbl_entries_data_28` ***
DROP TABLE IF EXISTS `tbl_entries_data_28`;
CREATE TABLE `tbl_entries_data_28` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_28` ***
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (1, 39, '2010-03-15T23:13:00-07:00', 1268719980, 1268719980);

-- *** STRUCTURE: `tbl_entries_data_29` ***
DROP TABLE IF EXISTS `tbl_entries_data_29`;
CREATE TABLE `tbl_entries_data_29` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_29` ***
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `relation_id`) VALUES (1, 39, 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_3` ***
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 1, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 2, 'bob', 'Bob');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 3, 'john', 'John');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 4, 'jane', 'Jane');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 5, 'tracy', 'Tracy');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 6, 'matthew', 'Matthew');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 12, 'tom', 'Tom');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 16, 'jim', 'Jim');

-- *** STRUCTURE: `tbl_entries_data_30` ***
DROP TABLE IF EXISTS `tbl_entries_data_30`;
CREATE TABLE `tbl_entries_data_30` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_30` ***
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `relation_id`) VALUES (1, 39, 31);

-- *** STRUCTURE: `tbl_entries_data_31` ***
DROP TABLE IF EXISTS `tbl_entries_data_31`;
CREATE TABLE `tbl_entries_data_31` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_31` ***
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (1, 39, 36);

-- *** STRUCTURE: `tbl_entries_data_32` ***
DROP TABLE IF EXISTS `tbl_entries_data_32`;
CREATE TABLE `tbl_entries_data_32` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_32` ***
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `relation_id`) VALUES (1, 39, 1);

-- *** STRUCTURE: `tbl_entries_data_33` ***
DROP TABLE IF EXISTS `tbl_entries_data_33`;
CREATE TABLE `tbl_entries_data_33` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_33` ***
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (1, 39, 22);

-- *** STRUCTURE: `tbl_entries_data_34` ***
DROP TABLE IF EXISTS `tbl_entries_data_34`;
CREATE TABLE `tbl_entries_data_34` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_34` ***
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `relation_id`) VALUES (1, 39, 38);

-- *** STRUCTURE: `tbl_entries_data_35` ***
DROP TABLE IF EXISTS `tbl_entries_data_35`;
CREATE TABLE `tbl_entries_data_35` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_35` ***
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (1, 39, 25);

-- *** STRUCTURE: `tbl_entries_data_36` ***
DROP TABLE IF EXISTS `tbl_entries_data_36`;
CREATE TABLE `tbl_entries_data_36` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_36` ***
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 25, 'open', 'Open');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 26, 'reopened', 'Reopened');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 27, 'resolved', 'Resolved');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 28, 'closed', 'Closed');

-- *** STRUCTURE: `tbl_entries_data_37` ***
DROP TABLE IF EXISTS `tbl_entries_data_37`;
CREATE TABLE `tbl_entries_data_37` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_37` ***
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `value`) VALUES (11, 25, '#ffffff');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `value`) VALUES (12, 26, '#feff9f');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `value`) VALUES (13, 27, '#ffffcc');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `value`) VALUES (14, 28, '#dedede');

-- *** STRUCTURE: `tbl_entries_data_38` ***
DROP TABLE IF EXISTS `tbl_entries_data_38`;
CREATE TABLE `tbl_entries_data_38` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_38` ***
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `value`) VALUES (11, 25, '#58941c');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `value`) VALUES (12, 26, '#58941c');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `value`) VALUES (13, 27, '#8e5c2a');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `value`) VALUES (14, 28, '#000000');

-- *** STRUCTURE: `tbl_entries_data_39` ***
DROP TABLE IF EXISTS `tbl_entries_data_39`;
CREATE TABLE `tbl_entries_data_39` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_39` ***
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `value`) VALUES (11, 25, 'yes');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `value`) VALUES (12, 26, 'yes');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `value`) VALUES (13, 27, 'yes');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `value`) VALUES (14, 28, 'yes');

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_4` ***
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 1, 'bauhouse-gmailcom', 'bauhouse@gmail.com');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 2, 'bob-examplecom', 'bob@example.com');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 3, 'john-examplecom', 'john@example.com');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 4, 'jane-examplecom', 'jane@example.com');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 5, 'tracy-examplecom', 'tracy@example.com');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 6, 'matt-examplecom', 'matt@example.com');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 12, 'tom-examplecom', 'tom@example.com');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 16, 'jim-examplecom', 'jim@example.com');

-- *** STRUCTURE: `tbl_entries_data_40` ***
DROP TABLE IF EXISTS `tbl_entries_data_40`;
CREATE TABLE `tbl_entries_data_40` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_40` ***
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `value`) VALUES (11, 25, 'yes');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `value`) VALUES (12, 26, 'yes');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `value`) VALUES (13, 27, 'yes');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `value`) VALUES (14, 28, 'yes');

-- *** STRUCTURE: `tbl_entries_data_41` ***
DROP TABLE IF EXISTS `tbl_entries_data_41`;
CREATE TABLE `tbl_entries_data_41` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_41` ***
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`) VALUES (11, 25, 'yes');
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`) VALUES (12, 26, 'no');
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`) VALUES (13, 27, 'no');
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`) VALUES (14, 28, 'yes');

-- *** STRUCTURE: `tbl_entries_data_42` ***
DROP TABLE IF EXISTS `tbl_entries_data_42`;
CREATE TABLE `tbl_entries_data_42` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_42` ***
INSERT INTO `tbl_entries_data_42` (`id`, `entry_id`, `value`) VALUES (11, 25, 'no');
INSERT INTO `tbl_entries_data_42` (`id`, `entry_id`, `value`) VALUES (12, 26, 'no');
INSERT INTO `tbl_entries_data_42` (`id`, `entry_id`, `value`) VALUES (13, 27, 'yes');
INSERT INTO `tbl_entries_data_42` (`id`, `entry_id`, `value`) VALUES (14, 28, 'yes');

-- *** STRUCTURE: `tbl_entries_data_43` ***
DROP TABLE IF EXISTS `tbl_entries_data_43`;
CREATE TABLE `tbl_entries_data_43` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_43` ***
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 29, 'critical', 'Critical');
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 30, 'high', 'High');
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 31, 'normal', 'Normal');
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 32, 'low', 'Low');

-- *** STRUCTURE: `tbl_entries_data_44` ***
DROP TABLE IF EXISTS `tbl_entries_data_44`;
CREATE TABLE `tbl_entries_data_44` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_44` ***
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `value`) VALUES (1, 29, '#a30000');
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `value`) VALUES (2, 30, '#e68900');
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `value`) VALUES (3, 31, '#000000');
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `value`) VALUES (4, 32, '#4f4f4f');

-- *** STRUCTURE: `tbl_entries_data_45` ***
DROP TABLE IF EXISTS `tbl_entries_data_45`;
CREATE TABLE `tbl_entries_data_45` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_45` ***
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 34, 'bug', 'Bug');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 35, 'to-do', 'To Do');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 36, 'enhancement', 'Enhancement');
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 37, 'none', '(none)');

-- *** STRUCTURE: `tbl_entries_data_46` ***
DROP TABLE IF EXISTS `tbl_entries_data_46`;
CREATE TABLE `tbl_entries_data_46` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_46` ***
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `value`) VALUES (1, 34, '#a30000');
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `value`) VALUES (2, 35, '#cbf4c8');
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `value`) VALUES (3, 36, '#a2a7d8');
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `value`) VALUES (4, 37, '#ffffff');

-- *** STRUCTURE: `tbl_entries_data_47` ***
DROP TABLE IF EXISTS `tbl_entries_data_47`;
CREATE TABLE `tbl_entries_data_47` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_47` ***
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`) VALUES (11, 25, 1);
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`) VALUES (12, 26, 2);
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`) VALUES (13, 27, 3);
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`) VALUES (14, 28, 4);

-- *** STRUCTURE: `tbl_entries_data_48` ***
DROP TABLE IF EXISTS `tbl_entries_data_48`;
CREATE TABLE `tbl_entries_data_48` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_48` ***
INSERT INTO `tbl_entries_data_48` (`id`, `entry_id`, `value`) VALUES (1, 29, 1);
INSERT INTO `tbl_entries_data_48` (`id`, `entry_id`, `value`) VALUES (2, 30, 2);
INSERT INTO `tbl_entries_data_48` (`id`, `entry_id`, `value`) VALUES (3, 31, 3);
INSERT INTO `tbl_entries_data_48` (`id`, `entry_id`, `value`) VALUES (4, 32, 4);

-- *** STRUCTURE: `tbl_entries_data_49` ***
DROP TABLE IF EXISTS `tbl_entries_data_49`;
CREATE TABLE `tbl_entries_data_49` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_49` ***
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (1, 34, 1);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (2, 35, 2);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (3, 36, 3);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (4, 37, 4);

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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_5` ***
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 7, 'symphony-cms-xslt-templates', 'Symphony CMS XSLT Templates');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 8, 'bugaroo-bug-tracker-ensemble', 'Bugaroo Bug Tracker Ensemble');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 9, 'try-saving-another-project', 'Try saving another project');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 10, 'testing-the-form-when-saving-multiple-contributors', 'Testing the form when saving multiple contributors');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 13, 'the-symphony-form-builder', 'The Symphony Form Builder');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 15, 'testing-out-the-eventex-extension', 'Testing Out the EventEx Extension');

-- *** STRUCTURE: `tbl_entries_data_50` ***
DROP TABLE IF EXISTS `tbl_entries_data_50`;
CREATE TABLE `tbl_entries_data_50` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_50` ***
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (8, 27, 'yes');
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (7, 26, 'yes');
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (9, 28, 'yes');
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (6, 25, 'yes');

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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_6` ***
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 7, 'Rebuilding the Symphony CMS Admin interface entirely with XSLT', 'Rebuilding the Symphony CMS Admin interface entirely with XSLT');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (18, 8, 'Building a Symphony ensemble to track projects and issues', '<p>Building a Symphony ensemble to track projects and issues</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 9, 'The project description', 'The project description');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 10, 'A test of the Form Controls for saving multiple select box values', 'A test of the Form Controls for saving multiple select box values');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (14, 13, 'An ensemble to demonstrate using Section Schemas and Form Controls to build front end forms in Symphony', '<p>An ensemble to demonstrate using Section Schemas and Form Controls to build front end forms in Symphony</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (19, 15, 'Creating entries in two sections with a single action using the EventEx extension. I was encountering a fatal error when using the latest version of the ASDC extension. I needed to grab an earlier version in order to get this working.', '<p>Creating entries in two sections with a single action using the EventEx extension. I was encountering a fatal error when using the latest version of the ASDC extension. I needed to grab an earlier version in order to get this working.</p>\n');

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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_7` ***
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 7, 'active', 'Active');
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 8, 'active', 'Active');
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 9, 'finished', 'Finished');
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 10, 'active', 'Active');
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 13, 'active', 'Active');
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 15, 'inactive', 'Inactive');

-- *** STRUCTURE: `tbl_entries_data_8` ***
DROP TABLE IF EXISTS `tbl_entries_data_8`;
CREATE TABLE `tbl_entries_data_8` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_8` ***
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (11, 7, 1);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (38, 8, 2);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (37, 8, 1);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (5, 9, 2);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (6, 9, 1);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (15, 10, 2);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (14, 10, 3);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (13, 10, 4);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (12, 10, 5);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (30, 13, 1);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (29, 13, 3);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (40, 15, 6);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (39, 15, 4);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (28, 13, 4);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (27, 13, 5);

-- *** STRUCTURE: `tbl_entries_data_9` ***
DROP TABLE IF EXISTS `tbl_entries_data_9`;
CREATE TABLE `tbl_entries_data_9` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_9` ***
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (1, 6, 'no');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (2, 5, 'no');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (3, 3, 'no');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (4, 2, 'no');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (5, 4, 'no');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (6, 12, 'no');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (7, 16, 'no');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (8, 1, 'no');

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
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (15, 2, 0, '2010-03-14 10:28:07', '2010-03-14 17:28:07');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (16, 1, 0, '2010-03-14 10:28:07', '2010-03-14 17:28:07');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (17, 3, 0, '2010-03-15 20:01:51', '2010-03-16 03:01:51');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (18, 3, 0, '2010-03-15 20:07:44', '2010-03-16 03:07:44');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (19, 3, 0, '2010-03-15 20:10:29', '2010-03-16 03:10:29');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (20, 3, 0, '2010-03-15 20:21:44', '2010-03-16 03:21:44');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (21, 3, 0, '2010-03-15 20:54:36', '2010-03-16 03:54:36');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (22, 3, 0, '2010-03-15 21:03:20', '2010-03-16 04:03:20');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (23, 3, 0, '2010-03-15 21:08:57', '2010-03-16 04:08:57');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (24, 3, 0, '2010-03-15 21:16:25', '2010-03-16 04:16:25');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (25, 6, 1, '2010-03-15 22:35:47', '2010-03-16 05:35:47');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (26, 6, 1, '2010-03-15 22:38:02', '2010-03-16 05:38:02');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (27, 6, 1, '2010-03-15 22:39:11', '2010-03-16 05:39:11');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (28, 6, 1, '2010-03-15 22:43:07', '2010-03-16 05:43:07');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (29, 7, 1, '2010-03-15 22:44:29', '2010-03-16 05:44:29');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (30, 7, 1, '2010-03-15 22:44:54', '2010-03-16 05:44:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (31, 7, 1, '2010-03-15 22:45:16', '2010-03-16 05:45:16');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (32, 7, 1, '2010-03-15 22:45:32', '2010-03-16 05:45:32');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (34, 8, 1, '2010-03-15 22:47:28', '2010-03-16 05:47:28');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (35, 8, 1, '2010-03-15 22:47:48', '2010-03-16 05:47:48');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (36, 8, 1, '2010-03-15 22:48:16', '2010-03-16 05:48:16');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (37, 8, 1, '2010-03-15 22:48:35', '2010-03-16 05:48:35');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (38, 4, 0, '2010-03-15 22:50:33', '2010-03-16 05:50:33');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (39, 5, 0, '2010-03-15 23:13:00', '2010-03-16 06:13:00');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (40, 3, 1, '2010-03-20 08:06:44', '2010-03-20 15:06:44');

-- *** DATA: `tbl_extensions` ***
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (1, 'asdc', 'enabled', 1.3);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (2, 'databasemanipulator', 'enabled', 0.4);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (4, 'eventex', 'enabled', 1.01);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (5, 'export_ensemble', 'enabled', 1.9);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (16, 'selectbox_link_field', 'enabled', 1.18);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (8, 'jit_image_manipulation', 'enabled', 1.05);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (9, 'maintenance_mode', 'enabled', 1.1);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (10, 'markdown', 'enabled', 1.8);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (17, 'profiledevkit', 'enabled', '1.0.1');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (12, 'section_schemas', 'enabled', 1.4);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (13, 'color_chooser_field', 'enabled', 1.2);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (14, 'order_entries', 'enabled', 1.8);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (18, 'debugdevkit', 'enabled', '1.0.8');

-- *** DATA: `tbl_extensions_delegates` ***
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (21, 18, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (3, 5, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (4, 8, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (5, 8, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (6, 9, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (7, 9, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (8, 9, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (9, 9, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (10, 9, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (11, 9, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (20, 17, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (19, 17, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (14, 13, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (15, 14, '/backend/', 'InitaliseAdminPageHead', 'appendScriptToHead');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (16, 14, '/backend/', 'AppendElementBelowView', 'appendOrderFieldId');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (22, 18, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');

-- *** DATA: `tbl_fields` ***
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (1, 'Username', 'username', 'input', 1, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (2, 'Role', 'role', 'select', 1, 'no', 1, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (3, 'Name', 'name', 'input', 1, 'yes', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (4, 'Email', 'email', 'input', 1, 'yes', 3, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (5, 'Title', 'title', 'input', 2, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (6, 'Description', 'description', 'textarea', 2, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (7, 'Status', 'status', 'select', 2, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (8, 'Contributors', 'contributors', 'selectbox_link', 2, 'no', 3, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (9, 'Anonymous', 'anonymous', 'checkbox', 1, 'no', 4, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (10, 'Adminstrators', 'adminstrators', 'selectbox_link', 2, 'no', 4, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (11, 'Title', 'title', 'input', 3, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (12, 'Description', 'description', 'textarea', 3, 'no', 1, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (13, 'Status', 'status', 'select', 3, 'no', 4, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (14, 'Project', 'project', 'selectbox_link', 3, 'no', 2, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (15, 'Due', 'due', 'date', 3, 'no', 3, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (16, 'Title', 'title', 'input', 4, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (17, 'Date', 'date', 'date', 4, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (18, 'Creator', 'creator', 'selectbox_link', 4, 'yes', 2, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (19, 'Project', 'project', 'selectbox_link', 4, 'yes', 3, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (20, 'Milestone', 'milestone', 'selectbox_link', 4, 'yes', 4, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (21, 'Assignee', 'assignee', 'selectbox_link', 4, 'yes', 5, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (22, 'Priority', 'priority', 'selectbox_link', 4, 'no', 6, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (23, 'Status', 'status', 'selectbox_link', 4, 'no', 7, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (24, 'Category', 'category', 'selectbox_link', 4, 'yes', 8, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (25, 'Modified', 'modified', 'date', 4, 'no', 9, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (26, 'Modifier', 'modifier', 'selectbox_link', 4, 'yes', 10, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (27, 'Description', 'description', 'textarea', 5, 'no', 0, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (28, 'Date', 'date', 'date', 5, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (29, 'Creator', 'creator', 'selectbox_link', 5, 'yes', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (30, 'Priority', 'priority', 'selectbox_link', 5, 'yes', 5, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (31, 'Category', 'category', 'selectbox_link', 5, 'yes', 6, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (32, 'Assignee', 'assignee', 'selectbox_link', 5, 'yes', 7, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (33, 'Milestone', 'milestone', 'selectbox_link', 5, 'yes', 3, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (34, 'Issue', 'issue', 'selectbox_link', 5, 'yes', 4, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (35, 'Status', 'status', 'selectbox_link', 5, 'yes', 8, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (36, 'Title', 'title', 'input', 6, 'no', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (37, 'Background Color', 'background-color', 'colorchooser', 6, 'yes', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (38, 'Text Color', 'text-color', 'colorchooser', 6, 'yes', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (39, 'Dashboard', 'dashboard', 'checkbox', 6, 'no', 3, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (40, 'Issues', 'issues', 'checkbox', 6, 'no', 4, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (41, 'Milestones', 'milestones', 'checkbox', 6, 'no', 5, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (42, 'Finished', 'finished', 'checkbox', 6, 'no', 7, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (43, 'Title', 'title', 'input', 7, 'no', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (44, 'Color', 'color', 'colorchooser', 7, 'yes', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (45, 'Title', 'title', 'input', 8, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (46, 'Color', 'color', 'colorchooser', 8, 'yes', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (47, 'Order', 'order', 'order_entries', 6, 'no', 8, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (48, 'Order', 'order', 'order_entries', 7, 'no', 2, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (49, 'Order', 'order', 'order_entries', 8, 'no', 2, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (50, 'Projects', 'projects', 'checkbox', 6, 'no', 6, 'sidebar', 'yes');

-- *** DATA: `tbl_pages` ***
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (1, NULL, 'Home', 'home', NULL, NULL, 'navigation,section_schema_users', 'login,save_project,save_user', 0);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (2, 8, 'Users', 'users', 'users', 'action/id', 'navigation,section_schema_users,users', 'login,save_user', 13);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (3, 9, 'Projects', 'projects', 'projects', 'action/id', 'navigation,projects,section_schema_projects', 'login,save_project', 3);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (7, NULL, 'Dashboard', 'dashboard', NULL, NULL, 'navigation', 'login', 1);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (4, NULL, 'Project User', 'project-user', NULL, NULL, 'navigation,section_schema_projects,section_schema_users', 'login,save_project_user', 15);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (5, NULL, 'Form Controls', 'form-controls', NULL, NULL, 'navigation,section_schema_users', 'login,save_user', 16);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (6, NULL, 'Login', 'login', NULL, NULL, 'navigation', 'login', 14);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (8, NULL, 'Users', 'users', NULL, NULL, 'navigation', 'login', 12);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (9, NULL, 'Projects', 'projects', NULL, NULL, 'navigation', 'login', 2);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (10, 9, 'Milestones', 'milestones', 'projects', 'action/id', 'milestones,navigation,section_schema_milestones', 'login,save_milestone', 4);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (11, NULL, 'Issues', 'issues', NULL, NULL, 'navigation', 'login', 5);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (12, 11, 'Issues', 'issues', 'issues', 'action/id', 'issues,navigation,section_schema_issues', 'login,save_issue', 6);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (13, 11, 'Messages', 'messages', 'issues', 'action/id', 'messages,navigation,section_schema_messages', 'login,save_message', 7);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (14, NULL, 'Filters', 'filters', NULL, NULL, 'navigation', 'login', 8);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (15, 14, 'Status', 'status', 'filters', 'action/id', 'navigation,section_schema_status,status', 'login,save_status', 9);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (16, 14, 'Priority', 'priority', 'filters', 'action/id', 'navigation,priorities,section_schema_priority', 'login,save_priority', 10);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (17, 14, 'Category', 'category', 'filters', 'action/id', 'categories,navigation,section_schema_category', 'login,save_category', 11);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (18, NULL, 'Admin', 'admin', NULL, NULL, 'navigation', 'login', 17);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (19, 18, 'Projects', 'projects', 'admin', 'action/id', 'navigation,projects,section_schema_projects', 'login,save_project', 18);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (20, 18, 'Milestones', 'milestones', 'admin', 'action/id', 'milestones,navigation,section_schema_milestones', 'login,save_milestone', 19);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (21, 18, 'Issues', 'issues', 'admin', 'action/id', 'issues,navigation,section_schema_issues', 'login,save_issue', 20);

-- *** DATA: `tbl_pages_types` ***
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (42, 1, 'index');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (56, 4, 'hidden');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (55, 4, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (16, 5, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (17, 5, 'hidden');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (21, 6, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (22, 6, 'hidden');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (140, 2, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (145, 3, 'section');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (70, 7, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (59, 9, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (43, 1, 'front-end');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (71, 7, 'front-end');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (63, 8, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (60, 9, 'group');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (144, 3, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (64, 8, 'group');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (141, 2, 'section');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (128, 10, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (74, 11, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (75, 11, 'group');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (130, 12, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (133, 13, 'section');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (80, 14, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (81, 14, 'group');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (135, 15, 'section');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (137, 16, 'section');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (139, 17, 'section');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (134, 15, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (129, 10, 'section');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (131, 12, 'section');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (132, 13, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (136, 16, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (138, 17, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (160, 18, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (153, 19, 'section');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (152, 19, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (154, 20, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (155, 20, 'section');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (159, 21, 'section');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (158, 21, 'admin');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (161, 18, 'group');

-- *** DATA: `tbl_sections` ***
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (1, 'Users', 'users', 7, NULL, 'asc', 'no', 'Users');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (2, 'Projects', 'projects', 0, NULL, 'asc', 'no', 'Projects');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (3, 'Milestones', 'milestones', 1, NULL, 'asc', 'no', 'Projects');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (4, 'Issues', 'issues', 2, NULL, 'asc', 'no', 'Issues');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (5, 'Messages', 'messages', 3, NULL, 'asc', 'no', 'Issues');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (6, 'Status', 'status', 4, 47, 'asc', 'no', 'Filters');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (7, 'Priority', 'priority', 5, 48, 'asc', 'no', 'Filters');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (8, 'Category', 'category', 6, NULL, 'asc', 'no', 'Filters');

-- *** DATA: `tbl_sections_association` ***
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (6, 1, 3, 2, 8, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (7, 1, 3, 2, 10, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (68, 2, 5, 3, 14, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (52, 1, 3, 4, 18, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (53, 2, 5, 4, 19, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (54, 3, 11, 4, 20, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (55, 1, 3, 4, 21, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (56, 7, 43, 4, 22, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (57, 6, 36, 4, 23, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (58, 8, 45, 4, 24, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (59, 1, 3, 4, 26, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (76, 1, 3, 5, 29, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (79, 7, 43, 5, 30, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (80, 8, 45, 5, 31, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (81, 1, 3, 5, 32, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (77, 3, 11, 5, 33, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (78, 4, 16, 5, 34, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (82, 6, 36, 5, 35, 'no');
