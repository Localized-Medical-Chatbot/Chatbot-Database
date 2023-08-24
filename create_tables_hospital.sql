drop database if exists hospitaldb;
create database hospitaldb;
use hospitaldb;

CREATE SCHEMA `hospital_db` ;
CREATE TABLE `speciality` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` Varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `doctor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` Varchar(50) NOT NULL,
  `last_name` Varchar(50) NOT NULL,
  `specialty` int,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`specialty`) REFERENCES `speciality`(`id`)
);

CREATE TABLE `appointment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `doctor_id` int NOT NULL,
  `first_name` Varchar(50) NOT NULL,
  `last_name` Varchar(50),
  `start_time` Time NOT NULL,
  `end_time` Time,
  `date` Date NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`doctor_id`) REFERENCES `doctor`(`id`)
);

CREATE TABLE `availability` (
  `doctor_id` int NOT NULL AUTO_INCREMENT,
  `start_time` Time NOT NULL,
  `end_time` Time NOT NULL,
  `date` Date NOT NULL,
  PRIMARY KEY (`doctor_id`, `date`)
);




