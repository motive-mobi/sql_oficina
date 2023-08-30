-- Listagem de todos os clientes (Recuperações simples com SELECT Statement e atributos derivados)
SELECT concat(c.Fname, ' ', c.Lname, ' ') as client, c.contact as contact from clients c;

-- Listagem de todos os funcionários com OS aberta (Filtros com WHERE Statement)
SELECT concat(e.Fname, ' ', e.Lname) as employee_name, so.idservice_order, so.description, so.status FROM employees e join service_order so on e.idemployee = so.employee_idemployee WHERE so.status = 'OPEN';

-- Listagem de ordens de serviço com funcionário responsável, ordenadas pelo status (Defina ordenações dos dados com ORDER BY)
SELECT concat(e.Fname, ' ', e.Lname) as employee_name, so.idservice_order, so.description, so.status FROM employees e join service_order so on e.idemployee = so.employee_idemployee ORDER BY so.status;

-- Condições de filtros aos grupos – HAVING Statement;
SELECT concat(c.Fname, ' ', c.Lname) as client, c.contact, v.model as model, v.register as register from clients c join vehicles v on v.client_idclient = c.idclient GROUP BY c.Fname, c.Lname, c.contact, v.model, v.register HAVING count(*) >= 1;

-- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados;
SELECT concat(c.Fname, ' ', c.Lname, ' ') as client, c.contact, v.model, v.register, so.status as os_status, concat(e.Fname, ' ', e.Lname) as emplyee_name from clients c join vehicles v on v.client_idclient = c.idclient join service_order so on v.service_order_idservice_order = so.idservice_order join employees e on so.employee_idemployee = e.idemployee;