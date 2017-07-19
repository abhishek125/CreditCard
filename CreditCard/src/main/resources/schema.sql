CREATE SCHEMA IF NOT EXISTS `creditdb` DEFAULT CHARACTER SET utf8 ;
USE `creditdb` ;

-- -----------------------------------------------------
-- Table `creditdb`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `creditdb`.`user` (
  `id` INT(11) NOT NULL,
  `name` VARCHAR(120) NOT NULL,
  `limitbal` INT(11) NOT NULL,
  `sex` TINYTEXT NOT NULL,
  `education` TINYTEXT NOT NULL,
  `marriage` TINYTEXT NOT NULL,
  `age` INT(11) NOT NULL,
  `pay_status1` INT(11) NOT NULL,
  `pay_status2` INT(11) NOT NULL,
  `pay_status3` INT(11) NOT NULL,
  `pay_status4` INT(11) NOT NULL,
  `pay_status5` INT(11) NOT NULL,
  `pay_status6` INT(11) NOT NULL,
  `billamt1` INT(11) NOT NULL,
  `billamt2` INT(11) NOT NULL,
  `billamt3` INT(11) NOT NULL,
  `billamt4` INT(11) NOT NULL,
  `billamt5` INT(11) NOT NULL,
  `billamt6` INT(11) NOT NULL,
  `payamt1` INT(11) NOT NULL,
  `payamt2` INT(11) NOT NULL,
  `payamt3` INT(11) NOT NULL,
  `payamt4` INT(11) NOT NULL,
  `payamt5` INT(11) NOT NULL,
  `payamt6` INT(11) NOT NULL,
  `default_payment_next_month` TINYINT(4) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;