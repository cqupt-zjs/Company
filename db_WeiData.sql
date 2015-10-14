SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `db_WeiData` ;
USE `db_WeiData` ;

-- -----------------------------------------------------
-- Table `db_WeiData`.`tb_UserInfor`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_WeiData`.`tb_UserInfor` (
  `UserID` BIGINT NOT NULL ,
  `UserName` VARCHAR(50) NULL ,
  `UserLocation` VARCHAR(30) NULL ,
  `UserProvince` TINYINT NULL ,
  `UserCity` TINYINT NULL ,
  `UserVerify` INT NULL DEFAULT 0 ,
  `UserGender` VARCHAR(10) NULL ,
  `UserCreateTime` DATETIME NULL ,
  `IsStatusList` INT NULL DEFAULT 0 ,
  `IsFansList` INT NULL DEFAULT 0 ,
  `UserIdCheck` INT NULL AUTO_INCREMENT ,
  PRIMARY KEY (`UserID`) ,
  UNIQUE INDEX `UserID_UNIQUE` (`UserID` ASC) ,
  UNIQUE INDEX `UserIdCheck_UNIQUE` (`UserIdCheck` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_WeiData`.`tb_UserStatus`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_WeiData`.`tb_UserStatus` (
  `StatusId` BIGINT NOT NULL ,
  `StatusCreateTime` DATETIME NULL ,
  `StatusText` VARCHAR(500) NULL ,
  `StatusSource` VARCHAR(50) NULL ,
  `UserName` VARCHAR(50) NULL ,
  `UserID` BIGINT NOT NULL ,
  `StatusReposts` INT NULL ,
  `StatusComments` INT NULL ,
  `StatusOriginal` INT NULL DEFAULT 0 ,
  `RetweetID` BIGINT NULL ,
  `RetweetCreateTime` DATETIME NULL ,
  `RetweetText` VARCHAR(500) NULL ,
  `RetweetSource` VARCHAR(50) NULL ,
  `RetweetUserName` VARCHAR(50) NULL ,
  `RetweetUserID` BIGINT NULL ,
  `RetweetUserLocation` VARCHAR(30) NULL ,
  `RetweetUserProvince` TINYINT NULL ,
  `RetweetUserCity` TINYINT NULL ,
  `RetweetUserCreateTime` DATETIME NULL ,
  `RetweetUserGender` VARCHAR(10) NULL ,
  `RetweetUserFans` INT NULL ,
  `RetweetUserFriends` INT NULL ,
  `RetweetUserStatusNo` INT NULL ,
  `RetweetUserVerify` INT NULL ,
  `RetweetReposts` INT NULL ,
  `RetweetComments` INT NULL ,
  `tb_UserInfor_UserID` BIGINT NOT NULL ,
  PRIMARY KEY (`StatusId`) ,
  UNIQUE INDEX `StatusId_UNIQUE` (`StatusId` ASC) ,
  UNIQUE INDEX `UserID_UNIQUE` (`UserID` ASC) ,
  INDEX `fk_tb_UserStatus_tb_UserInfor` (`tb_UserInfor_UserID` ASC) ,
  CONSTRAINT `fk_tb_UserStatus_tb_UserInfor`
    FOREIGN KEY (`tb_UserInfor_UserID` )
    REFERENCES `db_WeiData`.`tb_UserInfor` (`UserID` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_WeiData`.`tb_RetweetStatus`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `db_WeiData`.`tb_RetweetStatus` (
  `RetweetStatusId` BIGINT NOT NULL ,
  `StatusId` BIGINT NULL ,
  `UserID` BIGINT NULL ,
  `RetweetCreateTime` DATETIME NULL ,
  `RetweetText` VARCHAR(500) NULL ,
  `RetweetSource` VARCHAR(50) NULL ,
  `RetweetStatusRepost` INT NULL ,
  `RetweetStatusComments` INT NULL ,
  `RetweetUserName` VARCHAR(50) NULL ,
  `RetweetUserID` BIGINT NULL ,
  `RetweetUserLocation` VARCHAR(30) NULL ,
  `RetweetUserProvince` TINYINT NULL DEFAULT -1 ,
  `RetweetUserCity` TINYINT ZEROFILL NULL DEFAULT -1 ,
  `RetweetUserCreateTime` DATETIME NULL ,
  `RetweetUserGender` VARCHAR(10) NULL ,
  `RetweetUserFans` INT NULL DEFAULT -1 ,
  `RetweetUserFriends` INT NULL DEFAULT -1 ,
  `RetweetUserStatusNo` INT NULL DEFAULT -1 ,
  `RetweetUserVerify` INT NULL DEFAULT 0 ,
  `tb_UserStatus_StatusId` BIGINT NOT NULL ,
  PRIMARY KEY (`RetweetStatusId`) ,
  UNIQUE INDEX `StatusId_UNIQUE` (`StatusId` ASC) ,
  INDEX `fk_tb_RetweetStatus_tb_UserStatus1` (`tb_UserStatus_StatusId` ASC) ,
  CONSTRAINT `fk_tb_RetweetStatus_tb_UserStatus1`
    FOREIGN KEY (`tb_UserStatus_StatusId` )
    REFERENCES `db_WeiData`.`tb_UserStatus` (`StatusId` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
