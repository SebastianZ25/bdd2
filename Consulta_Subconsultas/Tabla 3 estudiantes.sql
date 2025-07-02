insert into profesores (codigo,nombre) values
(1,'Francisco'),
(2,'Ana'),
(3,'Luis'),
(4,'María'),
(5,'Carlos'),
(6,'Elena'),
(7,'Javier'),
(8,'Sofía'),
(9,'Pedro'),
(10,'Laura')


insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) values
('1234567890', 'Juan', 'González', 'juan.gonzalez@gonzalez.com', '2000-05-15', 1),
('2345678901', 'María', 'Martínez', 'maria.martinez@martinez.com', '2001-03-20', 2),
('3456789012', 'Carlos', 'Rodríguez', 'carlos.rodriguez@rodriguez.com', '2002-07-10', 3),
('4567890123', 'Ana', 'Hernández', 'ana.hernandez@hernandez.com', '2003-09-05', 4),
('5678901234', 'Luis', 'Jiménez', 'luis.jimenez@jimenez.com', '2004-11-25', 5),
('6789012345', 'Sofía', 'Ruiz', 'sofia.ruiz@ruiz.com', '2005-02-18', 6),
('7890123456', 'Pedro', 'Núñez', 'pedro.ruiz@ruiz.com', '2006-04-03', 7),
('8901234567', 'Laura', 'Torres', 'laura.torres@torres.com', '2007-06-12', 8),
('9012345678', 'Diego', 'Ramírez', 'diego.ramirez@ramirez.com', '2008-08-28', 9),
('0123456789', 'Marta', 'Suárez', 'marta.suarez@suarez.com', '2009-10-17', 10)

select  from estudiantes
--Consulta
select e.codigo_profesor,e.nombre,e.apellido from
    estudiantes e,profesores p
where
    e.codigo_profesor = p.codigo
and
    e.apellido like '%n%'
	--Subconsulta
	select * from estudiantes 
where codigo_profesor = (select codigo  from profesores where nombre = 'Francisco')
	
	