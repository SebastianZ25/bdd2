insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) values
('1234567890', 'Sean', 'Johnson', 1.75, '1990-05-15', '08:30:00', 5000.00, 2),
('0987654321', 'Maria', 'García', 1.60, '1985-03-20', '07:45:00', 3000.00, 1),
('2345678901', 'Carlos', 'Rodríguez', 1.80, '1995-11-10', '09:15:00', 7000.00, 0),
('3456789012', 'Ana', 'Martínez', 1.65, '1992-07-05', '08:00:00', 4000.00, 3),
('4567890123', 'Pedro', 'López', 1.70, '1988-02-12', '07:30:00', 6000.00, 2),
('5678901234', 'Laura', 'Sánchez', 1.68, '1993-09-25', '08:45:00', 5500.00, 1),
('6789012345', 'Javier', 'Fernández', 1.72, '1991-04-18', '09:00:00', 4500.00, 0),
('7890123456', 'Camila', 'Pérez', 1.63, '1996-12-03', '08:15:00', 3500.00, 1),
('8901234567', 'Diego', 'Ramírez', 1.78, '1987-01-07', '07:50:00', 6500.00, 2),
('9012345678', 'Valentina', 'Ortega', 1.67, '1994-06-14', '08:30:00', 5200.00, 1)


insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) values
('1234567890', 500.00, '2023-01-15', '10:00', 'Juan Pérez'), 
('0987654321', 800.00, '2023-02-20', '11:30', 'María López'),
('2345678901', 1200.00, '2023-03-10', '09:45', 'Carlos Gómez'),
('3456789012', 750.00, '2023-04-05', '10:15', 'Ana Martínez'),
('4567890123', 900.00, '2023-05-15', '11:00', 'Pedro Sánchez'),
('5678901234', 1000.00, '2023-06-20', '09:30', 'Laura Ramírez'),
('6789012345', 150.00, '2023-07-10', '10:45', 'Javier Fernández'),
('7890123456', 600.00, '2023-08-05', '11:15', 'Camila Pérez'),
('8901234567', 850.00, '2023-09-15', '09:00', 'Diego Ortega'),
('9012345678', 950.00, '2023-10-20', '10:30', 'Valentina Gómez')
select * from persona
select * from prestamo
--funcion agregacion
select cedula, sum(cast (monto as numeric)) from prestamo
group by cedula
--2
select count(*) from persona
where numero_hijos>1