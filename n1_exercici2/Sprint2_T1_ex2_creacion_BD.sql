-- MySQL Workbench Synchronization
-- Generated: 2022-12-29 14:54
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Dario

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `exercici_n2_pizzeria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci ;

CREATE TABLE IF NOT EXISTS `exercici_n2_pizzeria`.`cliente` (
  `cliente_id` INT(11) NOT NULL AUTO_INCREMENT,
  `cliente_nombre` VARCHAR(45) NOT NULL,
  `cliente_apellido` VARCHAR(45) NOT NULL,
  `cliente_direccion` VARCHAR(45) NOT NULL,
  `cliente_codigo_postal` INT(11) NOT NULL,
  `cliente_telefono` INT(11) NOT NULL,
  `localidad_localidad_id` INT(11) NOT NULL,
  PRIMARY KEY (`cliente_id`, `localidad_localidad_id`),
  INDEX `fk_cliente_localidad1_idx` (`localidad_localidad_id` ASC) VISIBLE,
  CONSTRAINT `fk_cliente_localidad1`
    FOREIGN KEY (`localidad_localidad_id`)
    REFERENCES `exercici_n2_pizzeria`.`localidad` (`localidad_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_spanish2_ci;

CREATE TABLE IF NOT EXISTS `exercici_n2_pizzeria`.`provincia` (
  `provincia_id` INT(11) NOT NULL AUTO_INCREMENT,
  `provincia_nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`provincia_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_spanish2_ci;

CREATE TABLE IF NOT EXISTS `exercici_n2_pizzeria`.`localidad` (
  `localidad_id` INT(11) NOT NULL AUTO_INCREMENT,
  `localidad_nombre` VARCHAR(45) NOT NULL,
  `provincia_provincia_id` INT(11) NOT NULL,
  PRIMARY KEY (`localidad_id`, `provincia_provincia_id`),
  INDEX `fk_localidad_provincia1_idx` (`provincia_provincia_id` ASC) VISIBLE,
  CONSTRAINT `fk_localidad_provincia1`
    FOREIGN KEY (`provincia_provincia_id`)
    REFERENCES `exercici_n2_pizzeria`.`provincia` (`provincia_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_spanish2_ci;

CREATE TABLE IF NOT EXISTS `exercici_n2_pizzeria`.`pedido` (
  `pedido_id` INT(11) NOT NULL AUTO_INCREMENT,
  `pedido_fecha_y_hora` DATETIME NOT NULL,
  `pedido_reparto` VARCHAR(1) NOT NULL DEFAULT 'r' COMMENT 'R = reparto\nT = take away',
  `pedido_cantidad_pizzas` TINYINT(2) NULL DEFAULT NULL,
  `pedido_cantidad_hamburguesas` TINYINT(2) NULL DEFAULT NULL,
  `pedido_cantidad_bebidas` TINYINT(2) NULL DEFAULT NULL,
  `pedido_precio_total` FLOAT(11) NOT NULL,
  `cliente_cliente_id` INT(11) NOT NULL,
  `tienda_sucursal_id` INT(11) NOT NULL,
  `empleado_empleado_id` INT(11) NOT NULL,
  PRIMARY KEY (`pedido_id`, `cliente_cliente_id`, `tienda_sucursal_id`, `empleado_empleado_id`),
  INDEX `fk_pedido_cliente1_idx` (`cliente_cliente_id` ASC) VISIBLE,
  INDEX `fk_pedido_tienda1_idx` (`tienda_sucursal_id` ASC) VISIBLE,
  INDEX `fk_pedido_empleado1_idx` (`empleado_empleado_id` ASC) VISIBLE,
  CONSTRAINT `fk_pedido_cliente1`
    FOREIGN KEY (`cliente_cliente_id`)
    REFERENCES `exercici_n2_pizzeria`.`cliente` (`cliente_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_pedido_tienda1`
    FOREIGN KEY (`tienda_sucursal_id`)
    REFERENCES `exercici_n2_pizzeria`.`tienda` (`sucursal_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_pedido_empleado1`
    FOREIGN KEY (`empleado_empleado_id`)
    REFERENCES `exercici_n2_pizzeria`.`empleado` (`empleado_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_spanish2_ci;

CREATE TABLE IF NOT EXISTS `exercici_n2_pizzeria`.`producto` (
  `poducto_id` INT(11) NOT NULL AUTO_INCREMENT,
  `poducto_nombre` VARCHAR(45) NOT NULL,
  `poducto_descripcion` VARCHAR(45) NOT NULL,
  `poducto_imagen` VARCHAR(45) NOT NULL,
  `poducto_precio` DOUBLE NOT NULL,
  `categoria_pizza_categoria_pizza_id` INT(11) NOT NULL,
  PRIMARY KEY (`poducto_id`, `categoria_pizza_categoria_pizza_id`),
  INDEX `fk_poducto_categoria_pizza1_idx` (`categoria_pizza_categoria_pizza_id` ASC) VISIBLE,
  CONSTRAINT `fk_poducto_categoria_pizza1`
    FOREIGN KEY (`categoria_pizza_categoria_pizza_id`)
    REFERENCES `exercici_n2_pizzeria`.`categoria_pizza` (`categoria_pizza_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_spanish2_ci;

CREATE TABLE IF NOT EXISTS `exercici_n2_pizzeria`.`categoria_pizza` (
  `categoria_pizza_id` INT(11) NOT NULL AUTO_INCREMENT,
  `categoria_pizza_descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`categoria_pizza_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_spanish2_ci;

CREATE TABLE IF NOT EXISTS `exercici_n2_pizzeria`.`tienda` (
  `sucursal_id` INT(11) NOT NULL AUTO_INCREMENT,
  `sucursal_nombre` VARCHAR(45) NOT NULL,
  `sucursal_direccion` VARCHAR(45) NOT NULL,
  `sucursal_codigo_postal` INT(11) NOT NULL,
  PRIMARY KEY (`sucursal_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_spanish2_ci;

CREATE TABLE IF NOT EXISTS `exercici_n2_pizzeria`.`empleado` (
  `empleado_id` INT(11) NOT NULL AUTO_INCREMENT,
  `empleado_nombre` VARCHAR(45) NOT NULL,
  `empleado_apellido` VARCHAR(45) NOT NULL,
  `empleado_nif` VARCHAR(10) NOT NULL,
  `empleado_telefono` INT(11) NOT NULL,
  `empleado_funcionl` VARCHAR(10) NOT NULL COMMENT 'Valores: cocinero, repartidor, otro',
  `tienda_sucursal_id` INT(11) NOT NULL,
  PRIMARY KEY (`empleado_id`, `tienda_sucursal_id`),
  INDEX `fk_empleado_tienda1_idx` (`tienda_sucursal_id` ASC) VISIBLE,
  CONSTRAINT `fk_empleado_tienda1`
    FOREIGN KEY (`tienda_sucursal_id`)
    REFERENCES `exercici_n2_pizzeria`.`tienda` (`sucursal_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_spanish2_ci;

CREATE TABLE IF NOT EXISTS `exercici_n2_pizzeria`.`pedido_has_producto` (
  `pedido_has_poducto_col` INT(11) NOT NULL AUTO_INCREMENT,
  `pedido_pedido_id` INT(11) NOT NULL,
  `poducto_poducto_id` INT(11) NOT NULL,
  PRIMARY KEY (`pedido_has_poducto_col`, `pedido_pedido_id`, `poducto_poducto_id`),
  INDEX `fk_pedido_has_poducto_poducto1_idx` (`poducto_poducto_id` ASC) VISIBLE,
  INDEX `fk_pedido_has_poducto_pedido1_idx` (`pedido_pedido_id` ASC) VISIBLE,
  CONSTRAINT `fk_pedido_has_poducto_pedido1`
    FOREIGN KEY (`pedido_pedido_id`)
    REFERENCES `exercici_n2_pizzeria`.`pedido` (`pedido_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_pedido_has_poducto_poducto1`
    FOREIGN KEY (`poducto_poducto_id`)
    REFERENCES `exercici_n2_pizzeria`.`producto` (`poducto_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_spanish2_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
