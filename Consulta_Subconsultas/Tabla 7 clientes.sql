
insert into clientes (cedula, nombre, apellido) values
('1234567890', 'Monica', 'García'), 
('7890123456', 'Carlos', 'López'), 
('2345678901', 'Ana', 'Martínez'),
('3456789012', 'Pedro', 'Rodríguez'),
('4567890123', 'Laura', 'Sánchez'), 
('5678901234', 'Diego', 'Fernández'), 
('6789012345', 'Sofía', 'Ortega'), 
('8901234567', 'Valentina', 'López'), 
('9012345678', 'Javier', 'Pérez'), 
('1122334455', 'Camila', 'Rojas')

insert into compras (id_compra,cedula, fecha_compra, monto) values
(11,'1234567890', '2023-01-15', 150.50),
(22,'7890123456', '2023-02-20', 250.75), 
(33,'2345678901', '2023-03-10', 300.00), 
(44,'3456789012', '2023-04-05', 120.50), 
(55,'4567890123', '2023-05-15', 450.75), 
(66,'5678901234', '2023-06-20', 200.00),
(77,'6789012345', '2023-07-10', 350.50), 
(88,'8901234567', '2023-08-05', 180.75), 
(99,'9012345678', '2023-09-15', 220.00), 
(10,'1122334455', '2023-10-20', 150.50)

select * from clientes
select * from compras
--Consulta
select cl.nombre,cl.apellido from 
clientes cl
where cl.cedula like '%7%'

--Subconsulta
select cl.cedula, cl.nombre,cl.apellido from clientes cl, compras co
WHERE cl.cedula =co.cedula and nombre = 'Monica'
