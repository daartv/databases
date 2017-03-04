CREATE DATABASE chat;
USE chat;
DROP TABLE IF EXISTS `messages`;
CREATE TABLE messages (
  /* Describe your table here.*/
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `username` VARCHAR(10) NULL DEFAULT NULL,
  `room` VARCHAR(10) NULL DEFAULT NULL,
  `text` VARCHAR(120) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);
DROP TABLE IF EXISTS `username`;
    
CREATE TABLE `username` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `username` VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'room'
-- 
-- ---

DROP TABLE IF EXISTS `room`;
    
CREATE TABLE `room` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `room` VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);
/* Create other tables and define schemas for them here! */
/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.
-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'messages'
-- 
-- ---

DROP TABLE IF EXISTS `messages`;
    
CREATE TABLE `messages` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `username` VARCHAR(10) NULL DEFAULT NULL,
  `room` VARCHAR(10) NULL DEFAULT NULL,
  `text` VARCHAR(120) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'username'
-- 
-- ---

DROP TABLE IF EXISTS `username`;
    
CREATE TABLE `username` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `username` VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'room'
-- 
-- ---

DROP TABLE IF EXISTS `room`;
    
CREATE TABLE `room` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `room` VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `messages` ADD FOREIGN KEY (username) REFERENCES `username` (`id`);
ALTER TABLE `messages` ADD FOREIGN KEY (room) REFERENCES `room` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `username` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `room` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `messages` (`id`,`username`,`room`,`text`) VALUES
-- ('','','','');
-- INSERT INTO `username` (`id`,`username`) VALUES
-- ('','');
-- INSERT INTO `room` (`id`,`room`) VALUES
-- ('','');

 */
 