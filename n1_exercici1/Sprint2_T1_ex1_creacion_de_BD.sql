-- MySQL Workbench Synchronization
-- Generated: 2022-12-28 14:26
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Dario

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER SCHEMA `optica`  DEFAULT COLLATE utf8_spanish_ci ;

ALTER TABLE `optica`.`Proveedor` 
COLLATE = utf8_spanish_ci ,
CHANGE COLUMN `Proveedor_nombre` `Proveedor_nombre` VARCHAR(45) NOT NULL ,
CHANGE COLUMN `Proveedor_nif` `Proveedor_nif` VARCHAR(9) NOT NULL ;

ALTER TABLE `optica`.`producto` 
COLLATE = utf8_spanish_ci ,
CHANGE COLUMN `producto_marca` `producto_marca` VARCHAR(45) NOT NULL ,
CHANGE COLUMN `producto_tipo_de_montura` `producto_tipo_de_montura` VARCHAR(1) NULL DEFAULT NULL COMMENT 'f = flotante\np = pasta \nm = metalica' ,
CHANGE COLUMN `producto_color_del_cristal` `producto_color_del_cristal` VARCHAR(45) NULL DEFAULT NULL ,
CHANGE COLUMN `producto_color_montura` `producto_color_montura` VARCHAR(10) NULL DEFAULT NULL ;

ALTER TABLE `optica`.`cliente` 
COLLATE = utf8_spanish_ci ,
CHANGE COLUMN `cliente_Nombre` `cliente_Nombre` VARCHAR(45) NOT NULL ,
CHANGE COLUMN `cliente_correo_electronico` `cliente_correo_electronico` VARCHAR(45) NOT NULL ;

ALTER TABLE `optica`.`ventas` 
COLLATE = utf8_spanish_ci ;

ALTER TABLE `optica`.`vendedor` 
COLLATE = utf8_spanish_ci ,
CHANGE COLUMN `vendedor_nombre` `vendedor_nombre` VARCHAR(45) NOT NULL ,
CHANGE COLUMN `vendedor_apellido` `vendedor_apellido` VARCHAR(45) NOT NULL ;

ALTER TABLE `optica`.`domicilio` 
COLLATE = utf8_spanish_ci ,
CHANGE COLUMN `domicilio_calle` `domicilio_calle` VARCHAR(45) NULL DEFAULT NULL ,
CHANGE COLUMN `domicilio_piso` `domicilio_piso` VARCHAR(10) NULL DEFAULT NULL ,
CHANGE COLUMN `domicilio_puerta` `domicilio_puerta` VARCHAR(10) NULL DEFAULT NULL ,
CHANGE COLUMN `domicilio_ciudad` `domicilio_ciudad` VARCHAR(15) NULL DEFAULT NULL ,
CHANGE COLUMN `domicilio_codigo_postal` `domicilio_codigo_postal` VARCHAR(8) NULL DEFAULT NULL ,
CHANGE COLUMN `domicilio_pais` `domicilio_pais` VARCHAR(45) NULL DEFAULT 'Spain' ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
