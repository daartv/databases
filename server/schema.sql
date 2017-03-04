-- CREATE DATABASE chat;
USE chat;
CREATE TABLE messages (
  /* Describe your table here.*/
  id INT,
  username VARCHAR(15),
  text VARCHAR(120),
  room VARCHAR(10),
  PRIMARY KEY (id)
);
/* Create other tables and define schemas for them here! */
/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

/* -- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Messages'
-- 
-- ---

DROP TABLE IF EXISTS `Messages`;
    
CREATE TABLE `Messages` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `username` MEDIUMTEXT NULL DEFAULT NULL,
  `text` MEDIUMTEXT NULL DEFAULT NULL,
  `room` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---


-- ---
-- Table Properties
-- ---

-- ALTER TABLE `Messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `Messages` (`id`,`username`,`text`,`room`) VALUES
-- ('','','',''); */ 