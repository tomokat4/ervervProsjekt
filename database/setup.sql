-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema prosjekt1
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `prosjekt1` ;

-- -----------------------------------------------------
-- Schema prosjekt1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `prosjekt1` DEFAULT CHARACTER SET utf8 ;
USE `prosjekt1` ;

-- -----------------------------------------------------
-- Table `prosjekt1`.`Forbund`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prosjekt1`.`Forbund` (
  `ForbundsNavn` VARCHAR(40) NOT NULL,
  `ForbundSymbol` VARCHAR(4) NULL,
  PRIMARY KEY (`ForbundsNavn`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `prosjekt1`.`Program`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prosjekt1`.`Program` (
  `ProgramNavn` VARCHAR(40) NOT NULL,
  `Forbund_ForbundsNavn` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`ProgramNavn`),
  INDEX `fk_Program_Forbund1_idx` (`Forbund_ForbundsNavn` ASC) VISIBLE,
  CONSTRAINT `fk_Program_Forbund1`
    FOREIGN KEY (`Forbund_ForbundsNavn`)
    REFERENCES `prosjekt1`.`Forbund` (`ForbundsNavn`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `prosjekt1`.`VapenTyper`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prosjekt1`.`VapenTyper` (
  `VapenType` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`VapenType`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `prosjekt1`.`AktivitetskravPrimary`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prosjekt1`.`AktivitetskravPrimary` (
  `kravTreninger` INT NULL,
  `kravStevneStarter` INT NULL,
  `VapenTyper_VapenType` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`VapenTyper_VapenType`),
  INDEX `fk_AktivitetskravPrimary_VapenTyper1_idx` (`VapenTyper_VapenType` ASC) VISIBLE,
  CONSTRAINT `fk_AktivitetskravPrimary_VapenTyper1`
    FOREIGN KEY (`VapenTyper_VapenType`)
    REFERENCES `prosjekt1`.`VapenTyper` (`VapenType`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `prosjekt1`.`Bruker`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prosjekt1`.`Bruker` (
  `idBruker` INT NOT NULL AUTO_INCREMENT,
  `Fornavn` VARCHAR(45) NULL,
  `Etternavn` VARCHAR(45) NULL,
  `JegerStatus` TINYINT NULL,
  PRIMARY KEY (`idBruker`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `prosjekt1`.`Aktivitetslogg`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prosjekt1`.`Aktivitetslogg` (
  `Bruker_idBruker` INT NOT NULL,
  `Dato` DATETIME NULL,
  `Kommentar` VARCHAR(80) NULL,
  `Program_ProgramNavn` VARCHAR(40) NOT NULL,
  INDEX `fk_Aktivitetslogg_Bruker_idx` (`Bruker_idBruker` ASC) VISIBLE,
  PRIMARY KEY (`Bruker_idBruker`),
  INDEX `fk_Aktivitetslogg_Program1_idx` (`Program_ProgramNavn` ASC) VISIBLE,
  CONSTRAINT `fk_Aktivitetslogg_Bruker`
    FOREIGN KEY (`Bruker_idBruker`)
    REFERENCES `prosjekt1`.`Bruker` (`idBruker`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Aktivitetslogg_Program1`
    FOREIGN KEY (`Program_ProgramNavn`)
    REFERENCES `prosjekt1`.`Program` (`ProgramNavn`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `prosjekt1`.`AktivitetsKravReserve`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prosjekt1`.`AktivitetsKravReserve` (
  `kravStevneStarter` INT NULL,
  `kravMesterskap` INT NULL,
  `VapenTyper_VapenType` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`VapenTyper_VapenType`),
  INDEX `fk_AktivitetsKravReserve_VapenTyper1_idx` (`VapenTyper_VapenType` ASC) VISIBLE,
  CONSTRAINT `fk_AktivitetsKravReserve_VapenTyper1`
    FOREIGN KEY (`VapenTyper_VapenType`)
    REFERENCES `prosjekt1`.`VapenTyper` (`VapenType`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `prosjekt1`.`Medlemskap`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prosjekt1`.`Medlemskap` (
  `Forbund_ForbundsNavn` VARCHAR(40) NOT NULL,
  `Bruker_idBruker` INT NOT NULL,
  PRIMARY KEY (`Forbund_ForbundsNavn`, `Bruker_idBruker`),
  INDEX `fk_Forbund_has_Bruker_Bruker1_idx` (`Bruker_idBruker` ASC) VISIBLE,
  INDEX `fk_Forbund_has_Bruker_Forbund1_idx` (`Forbund_ForbundsNavn` ASC) VISIBLE,
  CONSTRAINT `fk_Forbund_has_Bruker_Forbund1`
    FOREIGN KEY (`Forbund_ForbundsNavn`)
    REFERENCES `prosjekt1`.`Forbund` (`ForbundsNavn`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Forbund_has_Bruker_Bruker1`
    FOREIGN KEY (`Bruker_idBruker`)
    REFERENCES `prosjekt1`.`Bruker` (`idBruker`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `prosjekt1`.`ProgramVapen`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prosjekt1`.`ProgramVapen` (
  `Program_ProgramNavn` VARCHAR(40) NOT NULL,
  `VapenTyper_VapenType` VARCHAR(10) NOT NULL,
  INDEX `fk_VapenType_Program1_idx` (`Program_ProgramNavn` ASC) VISIBLE,
  PRIMARY KEY (`Program_ProgramNavn`, `VapenTyper_VapenType`),
  INDEX `fk_ProgramVapen_VapenTyper1_idx` (`VapenTyper_VapenType` ASC) VISIBLE,
  CONSTRAINT `fk_VapenType_Program1`
    FOREIGN KEY (`Program_ProgramNavn`)
    REFERENCES `prosjekt1`.`Program` (`ProgramNavn`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ProgramVapen_VapenTyper1`
    FOREIGN KEY (`VapenTyper_VapenType`)
    REFERENCES `prosjekt1`.`VapenTyper` (`VapenType`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
