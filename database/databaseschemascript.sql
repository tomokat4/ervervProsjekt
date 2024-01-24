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
  `ForbundsNavn` VARCHAR(20) NOT NULL,
  `ForbundSymbol` VARCHAR(4) NULL,
  PRIMARY KEY (`ForbundsNavn`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `prosjekt1`.`Program`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prosjekt1`.`Program` (
  `ProgramNavn` VARCHAR(20) NOT NULL,
  `Forbund_ForbundsNavn` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`ProgramNavn`),
  CONSTRAINT `fk_Program_Forbund1`
    FOREIGN KEY (`Forbund_ForbundsNavn`)
    REFERENCES `prosjekt1`.`Forbund` (`ForbundsNavn`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Program_Forbund1_idx` ON `prosjekt1`.`Program` (`Forbund_ForbundsNavn` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `prosjekt1`.`VapenType`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prosjekt1`.`VapenType` (
  `VapenType` VARCHAR(10) NOT NULL,
  `Program_ProgramNavn` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`VapenType`),
  CONSTRAINT `fk_VapenType_Program1`
    FOREIGN KEY (`Program_ProgramNavn`)
    REFERENCES `prosjekt1`.`Program` (`ProgramNavn`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_VapenType_Program1_idx` ON `prosjekt1`.`VapenType` (`Program_ProgramNavn` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `prosjekt1`.`AktivitetskravPrimary`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prosjekt1`.`AktivitetskravPrimary` (
  `kravTreninger` INT NOT NULL,
  `kravStevneStarter` VARCHAR(45) NULL,
  `VapenType_VapenType` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`kravTreninger`),
  CONSTRAINT `fk_AktivitetskravPrimary_VapenType1`
    FOREIGN KEY (`VapenType_VapenType`)
    REFERENCES `prosjekt1`.`VapenType` (`VapenType`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_AktivitetskravPrimary_VapenType1_idx` ON `prosjekt1`.`AktivitetskravPrimary` (`VapenType_VapenType` ASC) VISIBLE;


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
  `Kommentar` VARCHAR(45) NULL,
  `Program_ProgramNavn` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`Bruker_idBruker`),
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

CREATE INDEX `fk_Aktivitetslogg_Bruker_idx` ON `prosjekt1`.`Aktivitetslogg` (`Bruker_idBruker` ASC) VISIBLE;

CREATE INDEX `fk_Aktivitetslogg_Program1_idx` ON `prosjekt1`.`Aktivitetslogg` (`Program_ProgramNavn` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `prosjekt1`.`AktivitetsKravReserve`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prosjekt1`.`AktivitetsKravReserve` (
  `kravStevneStarter` INT NOT NULL,
  `kravMesterskap` VARCHAR(45) NULL,
  `VapenType_VapenType` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`kravStevneStarter`),
  CONSTRAINT `fk_AktivitetsKravReserve_VapenType1`
    FOREIGN KEY (`VapenType_VapenType`)
    REFERENCES `prosjekt1`.`VapenType` (`VapenType`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_AktivitetsKravReserve_VapenType1_idx` ON `prosjekt1`.`AktivitetsKravReserve` (`VapenType_VapenType` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `prosjekt1`.`Medlemskap`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `prosjekt1`.`Medlemskap` (
  `Forbund_ForbundsNavn` VARCHAR(20) NOT NULL,
  `Bruker_idBruker` INT NOT NULL,
  PRIMARY KEY (`Forbund_ForbundsNavn`, `Bruker_idBruker`),
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

CREATE INDEX `fk_Forbund_has_Bruker_Bruker1_idx` ON `prosjekt1`.`Medlemskap` (`Bruker_idBruker` ASC) VISIBLE;

CREATE INDEX `fk_Forbund_has_Bruker_Forbund1_idx` ON `prosjekt1`.`Medlemskap` (`Forbund_ForbundsNavn` ASC) VISIBLE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
