-- cria o banco de dados
create database oficina;
use oficina;

CREATE TABLE IF NOT EXISTS `oficina`.`employees` (
  `idemployee` INT NOT NULL,
  `Fname` VARCHAR(45) NULL,
  `Lname` VARCHAR(45) NULL,
  PRIMARY KEY (`idemployee`));
  
CREATE TABLE IF NOT EXISTS `oficina`.`clients` (
  `idclient` INT NOT NULL,
  `Fname` VARCHAR(45) NULL,
  `Lname` VARCHAR(45) NULL,
  `contact` VARCHAR(45) NULL,
  PRIMARY KEY (`idclient`));
  
CREATE TABLE IF NOT EXISTS `oficina`.`service_order` (
  `idservice_order` INT NOT NULL,
  `description` VARCHAR(255) NULL,
  `status` VARCHAR(45) NULL,
  `employee_idemployee` INT NULL DEFAULT NULL,
  PRIMARY KEY (`idservice_order`),
  INDEX `fk_service_order_employee1_idx` (`employee_idemployee` ASC) VISIBLE,
  CONSTRAINT `fk_service_order_employee1`
    FOREIGN KEY (`employee_idemployee`)
    REFERENCES `oficina`.`employees` (`idemployee`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
  
CREATE TABLE IF NOT EXISTS `oficina`.`vehicles` (
  `idvehicle` INT NOT NULL,
  `brand` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `year` VARCHAR(45) NULL,
  `register` VARCHAR(45) NULL,
  `client_idclient` INT NOT NULL,
  `service_order_idservice_order` INT NULL DEFAULT NULL,
  PRIMARY KEY (`idvehicle`, `client_idclient`),
  INDEX `fk_vehicle_client_idx` (`client_idclient` ASC) VISIBLE,
  INDEX `fk_vehicle_service_order1_idx` (`service_order_idservice_order` ASC) VISIBLE,
  CONSTRAINT `fk_vehicle_client`
    FOREIGN KEY (`client_idclient`)
    REFERENCES `oficina`.`clients` (`idclient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_vehicle_service_order1`
    FOREIGN KEY (`service_order_idservice_order`)
    REFERENCES `oficina`.`service_order` (`idservice_order`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

