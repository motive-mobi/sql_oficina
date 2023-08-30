INSERT INTO `oficina`.`employees` (`idemployee`, `Fname`, `Lname`) VALUES
	(1, 'João', 'Penha'),
	(2, 'José', 'Cardoso'),
	(3, 'José', 'Manga');

INSERT INTO `oficina`.`clients` (`idclient`, `Fname`, `Lname`, `contact`) VALUES
	(1, 'Anderson', 'Nascimento', '19984756453'),
    (2, 'Juca', 'Arantes', '19867564532'),
	(3, 'Alexandre', 'Cunha', '19856453423');

INSERT INTO `oficina`.`service_order` (`idservice_order`, `description`, `status`, `employee_idemployee`) VALUES
	(1, 'Carburador zuado', 'OPEN', 1),
    (2, 'Injeção eletrônica falhando', 'OPEN', 2),
	(3, 'Troca de filtro de ar', 'CLOSED', 3);

INSERT INTO `oficina`.`vehicles` (`idvehicle`, `brand`, `model`, `year`, `register`, `client_idclient`, `service_order_idservice_order`) VALUES
	(1, 'Chevrolet', 'S10', '2006', 'ABC6564', 1, 1),
    (2, 'Fiat', 'Palio', '2003', 'ZZZ34343', 2, 2),
	(3, 'Volkswagen', 'Fusca', '1980', 'DDD3444', 3, 3);