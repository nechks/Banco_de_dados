-- MySQL Workbench Synchronization
-- Generated: 2023-11-07 23:08
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: usuario

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE IF NOT EXISTS `mydb`.`cartoes` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `partida_id` INT(11) NOT NULL,
  `clube` VARCHAR(1000) NOT NULL,
  `cartao` VARCHAR(1000) NOT NULL,
  `atleta` VARCHAR(1000) NOT NULL,
  `posicao` VARCHAR(1000) NOT NULL,
  `minutos` TIME NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_partida_cartoes_idx` (`partida_id` ASC) VISIBLE,
  CONSTRAINT `FK_partida_cartoes`
    FOREIGN KEY (`partida_id`)
    REFERENCES `mydb`.`partidas` (`partida_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `mydb`.`partidas` (
  `partida_id` INT(11) NOT NULL,
  `rodada` INT(11) NOT NULL,
  `data` DATE NOT NULL,
  `hora` TIME NOT NULL,
  `mandante` VARCHAR(1000) NOT NULL,
  `visitante` VARCHAR(1000) NOT NULL,
  `tecnico_mandante` VARCHAR(1000) NOT NULL,
  `tecnico_visitante` VARCHAR(1000) NOT NULL,
  `vencedor` VARCHAR(1000) NOT NULL,
  `arena` VARCHAR(1000) NOT NULL,
  PRIMARY KEY (`partida_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `mydb`.`gols` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `partida_id` INT(11) NOT NULL,
  `clube` VARCHAR(1000) NOT NULL,
  `atleta` VARCHAR(1000) NOT NULL,
  `minuto` VARCHAR(1000) NOT NULL,
  `tipo_de_gol` VARCHAR(1000) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_partidas_gols_idx` (`partida_id` ASC) VISIBLE,
  CONSTRAINT `FK_partidas_gols`
    FOREIGN KEY (`partida_id`)
    REFERENCES `mydb`.`partidas` (`partida_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `mydb`.`estatisticas` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `paritda_id` INT(11) NOT NULL,
  `chutes` INT(11) NOT NULL,
  `precisao_passes` INT(11) NULL DEFAULT NULL,
  `posse_de_bola` DECIMAL NOT NULL,
  `passes` INT(11) NOT NULL,
  `faltas` INT(11) NOT NULL,
  `impedimentos` INT(11) NOT NULL,
  `escanteios` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_partida_estatisticas_idx` (`paritda_id` ASC) VISIBLE,
  CONSTRAINT `FK_partida_estatisticas`
    FOREIGN KEY (`paritda_id`)
    REFERENCES `mydb`.`partidas` (`partida_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
