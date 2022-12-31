-- MySQL Workbench Synchronization
-- Generated: 2022-12-30 09:35
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Dario

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `N2_ex1_youtube` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci ;

CREATE TABLE IF NOT EXISTS `N2_ex1_youtube`.`usuario` (
  `usuario_id` INT(11) NOT NULL AUTO_INCREMENT,
  `usuario_email` VARCHAR(45) NOT NULL,
  `usuario_password` VARCHAR(16) NOT NULL,
  `usuario_nombre_de_usuario` VARCHAR(45) NOT NULL,
  `usuario_f_de:nacimiento` DATE NOT NULL,
  `usuario_sexo` ENUM('m', 'f', 'o') NOT NULL COMMENT 'm = masculino\nf = femenino\no = otro',
  `usuario_pais` VARCHAR(15) NOT NULL,
  `usuario_codigo_postal` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`usuario_id`),
  INDEX `nombre_usuario` (`usuario_nombre_de_usuario` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_spanish2_ci;

CREATE TABLE IF NOT EXISTS `N2_ex1_youtube`.`video` (
  `video_id` INT(11) NOT NULL AUTO_INCREMENT,
  `video_titulo` VARCHAR(45) NOT NULL,
  `video_descripcion` VARCHAR(145) NOT NULL,
  `video_tamanio` VARCHAR(8) NOT NULL,
  `video_nombre_archivo` VARCHAR(45) NOT NULL,
  `video_duracion` TIME NOT NULL,
  `video_thumbnail` VARCHAR(45) NOT NULL,
  `video_reproducciones` INT(11) NOT NULL,
  `video_likes` INT(11) NOT NULL,
  `video_dislikes` INT(11) NOT NULL,
  `video_estado` ENUM('publico', 'oculto', 'privado') NOT NULL,
  `canal_canal_id` INT(11) NOT NULL,
  PRIMARY KEY (`video_id`, `canal_canal_id`),
  INDEX `titulo` (`video_titulo` ASC) VISIBLE,
  INDEX `fk_video_canal1_idx` (`canal_canal_id` ASC) VISIBLE,
  CONSTRAINT `fk_video_canal1`
    FOREIGN KEY (`canal_canal_id`)
    REFERENCES `N2_ex1_youtube`.`canal` (`canal_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_spanish2_ci;

CREATE TABLE IF NOT EXISTS `N2_ex1_youtube`.`etiqueta` (
  `etiqueta_id` INT(11) NOT NULL,
  `etiqueta_titulo` VARCHAR(45) NOT NULL,
  `video_video_id` INT(11) NOT NULL,
  PRIMARY KEY (`etiqueta_id`),
  INDEX `fk_etiqueta_video_idx` (`video_video_id` ASC) VISIBLE,
  CONSTRAINT `fk_etiqueta_video`
    FOREIGN KEY (`video_video_id`)
    REFERENCES `N2_ex1_youtube`.`video` (`video_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_spanish2_ci;

CREATE TABLE IF NOT EXISTS `N2_ex1_youtube`.`video_has_usuario` (
  `video_has_usuario_col` INT(11) NOT NULL AUTO_INCREMENT,
  `video_video_id` INT(11) NOT NULL,
  `usuario_usuario_id` INT(11) NOT NULL,
  `video_has_usuario_fecha_subida` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`video_has_usuario_col`, `video_video_id`, `usuario_usuario_id`),
  INDEX `fk_video_has_usuario_usuario1_idx` (`usuario_usuario_id` ASC) VISIBLE,
  INDEX `fk_video_has_usuario_video1_idx` (`video_video_id` ASC) VISIBLE,
  CONSTRAINT `fk_video_has_usuario_video1`
    FOREIGN KEY (`video_video_id`)
    REFERENCES `N2_ex1_youtube`.`video` (`video_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_video_has_usuario_usuario1`
    FOREIGN KEY (`usuario_usuario_id`)
    REFERENCES `N2_ex1_youtube`.`usuario` (`usuario_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_spanish2_ci;

CREATE TABLE IF NOT EXISTS `N2_ex1_youtube`.`canal` (
  `canal_id` INT(11) NOT NULL AUTO_INCREMENT,
  `canal_nombre` VARCHAR(45) NULL DEFAULT NULL,
  `canal_descripcion` VARCHAR(145) NULL DEFAULT NULL,
  `canal_fecha_creacion` DATE NULL DEFAULT NULL,
  `usuario_usuario_id` INT(11) NOT NULL,
  PRIMARY KEY (`canal_id`, `usuario_usuario_id`),
  INDEX `fk_canal_usuario1_idx` (`usuario_usuario_id` ASC) VISIBLE,
  CONSTRAINT `fk_canal_usuario1`
    FOREIGN KEY (`usuario_usuario_id`)
    REFERENCES `N2_ex1_youtube`.`usuario` (`usuario_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_spanish2_ci;

CREATE TABLE IF NOT EXISTS `N2_ex1_youtube`.`suscripciones` (
  `suscripciones_id` INT(11) NOT NULL AUTO_INCREMENT,
  `usuario_usuario_id` INT(11) NOT NULL,
  `canal_canal_id` INT(11) NOT NULL,
  PRIMARY KEY (`suscripciones_id`, `usuario_usuario_id`, `canal_canal_id`),
  INDEX `fk_suscripciones_usuario1_idx` (`usuario_usuario_id` ASC) VISIBLE,
  INDEX `fk_suscripciones_canal1_idx` (`canal_canal_id` ASC) VISIBLE,
  CONSTRAINT `fk_suscripciones_usuario1`
    FOREIGN KEY (`usuario_usuario_id`)
    REFERENCES `N2_ex1_youtube`.`usuario` (`usuario_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_suscripciones_canal1`
    FOREIGN KEY (`canal_canal_id`)
    REFERENCES `N2_ex1_youtube`.`canal` (`canal_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_spanish2_ci;

CREATE TABLE IF NOT EXISTS `N2_ex1_youtube`.`dislikes` (
  `dislikes_id` INT(11) NOT NULL,
  `dislikes_date` DATETIME NOT NULL,
  `usuario_usuario_id` INT(11) NOT NULL,
  `video_video_id` INT(11) NOT NULL,
  PRIMARY KEY (`dislikes_id`, `usuario_usuario_id`, `video_video_id`),
  INDEX `fk_dislikes_usuario1_idx` (`usuario_usuario_id` ASC) VISIBLE,
  INDEX `fk_dislikes_video1_idx` (`video_video_id` ASC) VISIBLE,
  CONSTRAINT `fk_dislikes_usuario1`
    FOREIGN KEY (`usuario_usuario_id`)
    REFERENCES `N2_ex1_youtube`.`usuario` (`usuario_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_dislikes_video1`
    FOREIGN KEY (`video_video_id`)
    REFERENCES `N2_ex1_youtube`.`video` (`video_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_spanish2_ci;

CREATE TABLE IF NOT EXISTS `N2_ex1_youtube`.`playlist` (
  `playlist_id` INT(11) NOT NULL AUTO_INCREMENT,
  `playlist_nombre` VARCHAR(45) NULL DEFAULT NULL,
  `playlist_fecha_creacion` DATE NULL DEFAULT NULL,
  `playlist_estado` ENUM('publica', 'privada') NULL DEFAULT NULL,
  `video_video_id` INT(11) NOT NULL,
  `usuario_usuario_id` INT(11) NOT NULL,
  PRIMARY KEY (`playlist_id`, `video_video_id`, `usuario_usuario_id`),
  INDEX `fk_playlist_video1_idx` (`video_video_id` ASC) VISIBLE,
  INDEX `fk_playlist_usuario1_idx` (`usuario_usuario_id` ASC) VISIBLE,
  CONSTRAINT `fk_playlist_video1`
    FOREIGN KEY (`video_video_id`)
    REFERENCES `N2_ex1_youtube`.`video` (`video_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_playlist_usuario1`
    FOREIGN KEY (`usuario_usuario_id`)
    REFERENCES `N2_ex1_youtube`.`usuario` (`usuario_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_spanish2_ci;

CREATE TABLE IF NOT EXISTS `N2_ex1_youtube`.`comentarios` (
  `comentarios_id` INT(11) NOT NULL AUTO_INCREMENT,
  `comentarios_fecha_hora` DATETIME NOT NULL,
  `comentarios_texto` VARCHAR(240) NULL DEFAULT NULL,
  `usuario_usuario_id` INT(11) NOT NULL,
  `video_video_id` INT(11) NOT NULL,
  PRIMARY KEY (`comentarios_id`, `usuario_usuario_id`, `video_video_id`),
  INDEX `fk_comentarios_usuario1_idx` (`usuario_usuario_id` ASC) VISIBLE,
  INDEX `fk_comentarios_video1_idx` (`video_video_id` ASC) VISIBLE,
  CONSTRAINT `fk_comentarios_usuario1`
    FOREIGN KEY (`usuario_usuario_id`)
    REFERENCES `N2_ex1_youtube`.`usuario` (`usuario_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_comentarios_video1`
    FOREIGN KEY (`video_video_id`)
    REFERENCES `N2_ex1_youtube`.`video` (`video_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_spanish2_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
