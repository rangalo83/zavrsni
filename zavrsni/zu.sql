/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : karton

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-07-02 14:56:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `doctor`
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `speciality` varchar(255) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES ('Slobodan', 'Celic', 'Hirurg', '32');

-- ----------------------------
-- Table structure for `laboratory_examination`
-- ----------------------------
DROP TABLE IF EXISTS `laboratory_examination`;
CREATE TABLE `laboratory_examination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL,
  `patient_ID` int(11) DEFAULT NULL,
  `tip_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of laboratory_examination
-- ----------------------------
INSERT INTO `laboratory_examination` VALUES ('3', '2019-07-02 00:00:00', '25', '1');

-- ----------------------------
-- Table structure for `patients`
-- ----------------------------
DROP TABLE IF EXISTS `patients`;
CREATE TABLE `patients` (
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `jmbg` int(50) NOT NULL,
  `carton_No` int(50) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `doctor_id` (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of patients
-- ----------------------------
INSERT INTO `patients` VALUES ('Milos', 'Milosevic', '123456', '654321', '25', '32');

-- ----------------------------
-- Table structure for `results`
-- ----------------------------
DROP TABLE IF EXISTS `results`;
CREATE TABLE `results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `examination_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of results
-- ----------------------------
INSERT INTO `results` VALUES ('12', '3');

-- ----------------------------
-- Table structure for `resultsdetails`
-- ----------------------------
DROP TABLE IF EXISTS `resultsdetails`;
CREATE TABLE `resultsdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `results_ID` int(11) DEFAULT NULL,
  `type_examination_details_ID` int(11) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of resultsdetails
-- ----------------------------
INSERT INTO `resultsdetails` VALUES ('18', '12', '1', '120');
INSERT INTO `resultsdetails` VALUES ('19', '12', '2', '80');
INSERT INTO `resultsdetails` VALUES ('20', '12', '3', '80');

-- ----------------------------
-- Table structure for `type_examination`
-- ----------------------------
DROP TABLE IF EXISTS `type_examination`;
CREATE TABLE `type_examination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of type_examination
-- ----------------------------
INSERT INTO `type_examination` VALUES ('1', 'krvni pritisak');
INSERT INTO `type_examination` VALUES ('2', 'nivo secera u krvi');
INSERT INTO `type_examination` VALUES ('3', 'nivo holesterola u krvi');

-- ----------------------------
-- Table structure for `type_examination_details`
-- ----------------------------
DROP TABLE IF EXISTS `type_examination_details`;
CREATE TABLE `type_examination_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `typeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of type_examination_details
-- ----------------------------
INSERT INTO `type_examination_details` VALUES ('1', 'gornja vrednost', '1');
INSERT INTO `type_examination_details` VALUES ('2', 'donja vrednost', '1');
INSERT INTO `type_examination_details` VALUES ('3', 'puls', '1');
INSERT INTO `type_examination_details` VALUES ('4', 'vrednost', '2');
INSERT INTO `type_examination_details` VALUES ('5', 'vreme poslednjeg obroka', '2');
INSERT INTO `type_examination_details` VALUES ('6', 'vrednost', '3');
INSERT INTO `type_examination_details` VALUES ('7', 'vreme poslednjeg obroka 2', '3');
