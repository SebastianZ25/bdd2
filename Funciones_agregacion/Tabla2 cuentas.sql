insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) values
('U1111', 'Carlos', 'Mendoza', 'Corriente', 1000.00),
('U2222', 'Laura', 'Rojas', 'Ahorros', 500.00),
('U3333', 'Andrés', 'Castaño', 'Corriente', 410.00),
('U4444', 'Sofía', 'Ortega', 'Ahorros', 600.00),
('U5555', 'Diego', 'Fernández', 'Corriente', 820.00),
('U6666', 'Valentina', 'López', 'Ahorros', 700.00),
('U8888', 'Camila', 'Pérez', 'Ahorros', 550.00),
('U7777', 'Javier', 'García', 'Corriente', 900.00),
('U9999', 'Sebastián', 'Martínez', 'Corriente', 160.00),
('U1010', 'Daniela', 'Silva', 'Ahorros', 650.00)
delete from usuario
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)values
('14651', 'U1111', '2022-08-10', 500.00),
('64728', 'U2222', '2022-08-15', 300.00),
('34680', 'U3333', '2023-01-20', 900.00),
('67855', 'U4444', '2022-11-05', 400.00),
('14875', 'U5555', '2023-02-28', 700.00),
('64973', 'U6666', '2022-08-25', 600.00),
('34578', 'U7777', '2023-04-12', 800.00),
('97584', 'U8888', '2022-09-18', 250.00),
('64571', 'U9999', '2023-06-01', 1000.00),
('47851', 'U1010', '2023-08-15', 150.00)

select * from cuentas
select * from usuario

--Funciones agregacion
select AVG (cast (saldo as numeric)) from cuentas
where cedula_propietario ='U1111'
--2
select tipo_cuenta ,count (*) from usuario
group by tipo_cuenta

