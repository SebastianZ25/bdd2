
insert into empleados (codigo_empleado, nombre, fecha, hora) values
(2201, 'Juan Pérez', '2023-08-01', '09:00'), 
(2202, 'María Gómez', '2023-08-02', '08:30'),
(2203, 'Carlos López', '2023-08-03', '12:00'),
(2204, 'Ana Martínez', '2023-08-04', '10:15'),
(2205, 'Pedro Rodríguez', '2023-08-05', '08:45'),
(2206, 'Laura Sánchez', '2023-08-06', '09:15'),
(2207, 'Andrés Ramírez', '2023-08-07', '11:30'),
(2208, 'Sofía Torres', '2023-08-08', '08:00'),
(2209, 'Javier García', '2023-08-09', '12:45'),
(2210, 'Camila Fernández', '2023-08-10', '13:00'),
(2211, 'Pepe Fernández', '2023-08-5', '8:00')

insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado) values
(1, '1234567890', '2023-08-01', '08:15', 2201),
(2, '0987654321', '2023-08-02', '09:00', 2202),
(3, '1122334455', '2023-08-03', '10:30', 2203),
(4, '5544332211', '2023-08-04', '11:45', 2204),
(5, '6677889900', '2023-08-05', '08:30', 2205),
(6, '9876543210', '2023-08-06', '12:00', 2206),
(7, '0123456789', '2023-08-07', '09:45', 2207),
(8, '2345678901', '2023-08-08', '10:15', 2208),
(9, '3456789012', '2023-08-09', '08:00', 2209),
(10, '4567890123', '2023-08-10', '13:00', 2210),
(11, '2201', '2023-08-10', '7:00', 2211)
select * from registros_entrada

--Consulta
select  re.cedula_empleado, re.fecha, e.nombre from
    empleados e,
    registros_entrada re
	where
	 e.codigo_empleado = re.codigo_empleado
	 and(re.fecha between '2023/08/01' and '2023/08/31')
    or(re.cedula_empleado like '17%' and re.hora between '08:00' and '12:00')
    or (re.fecha between '2023/10/06' and '2023/10/20'
	and re.cedula_empleado like '08%'
     and re.hora between '09:00' and '13:00')
--Sub culsulta 
SELECT *
FROM empleados
WHERE codigo_empleado = (
    SELECT codigo_empleado
    FROM registros_entrada
    WHERE cedula_empleado = '2201'
);

select re.codigo_registro, e.nombre from 
empleados e,
registros_entrada re
 where 
 e.codigo_empleado = re.codigo_empleado
and re.cedula_empleado = '2201'


