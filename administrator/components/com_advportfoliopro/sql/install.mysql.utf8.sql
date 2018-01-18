CREATE TABLE IF NOT EXISTS `#__advportfoliopro_projects` (
	`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
	`catid` int(10) NOT NULL DEFAULT '0',
	`title` varchar(250) NOT NULL DEFAULT '',
	`alias` varchar(255) NOT NULL DEFAULT '',
	`description` text NOT NULL,
	`state` tinyint(1) NOT NULL DEFAULT '0',
	`checked_out` int(10) NOT NULL DEFAULT '0',
	`checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`ordering` int(10) NOT NULL DEFAULT '0',
	`access` int(10) NOT NULL DEFAULT '1',
	`language` char(7) NOT NULL DEFAULT '',
	`created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`created_by` int(10) unsigned NOT NULL DEFAULT '0',
	`created_by_alias` varchar(255) NOT NULL DEFAULT '',
	`modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`modified_by` int(10) unsigned NOT NULL DEFAULT '0',
	`params` text NOT NULL,
	`metakey` text NOT NULL,
	`metadesc` text NOT NULL,
	`metadata` text NOT NULL,
	`images` text NOT NULL,
	`short_description` text NOT NULL,
	`thumbnail` varchar(250) NOT NULL DEFAULT '',
	`link` varchar(250) NOT NULL DEFAULT '',
	`type` tinyint(1) NOT NULL DEFAULT '0',
	`video_link` varchar(250) NOT NULL DEFAULT '',
	`featured` tinyint(1) NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	KEY `idx_access` (`access`),
	KEY `idx_checkout` (`checked_out`),
	KEY `idx_state` (`state`),
	KEY `idx_catid` (`catid`),
	KEY `idx_createdby` (`created_by`),
	KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
