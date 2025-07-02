create table habitaciones(
habitacion_numero int,
precio_por_noche decimal not null,
piso int not null,
max_personas int,
constraint habitaciones_pk primary key (habitacion_numero)
)

create table huespedes(
id int,
nombres varchar(45) not null,
apellidos varchar(45) not null,
telefono char (10),
correo varchar(45),
direccion varchar (45),
ciudad varchar (45),
pais varchar (45),
constraint huespedes_pk primary key (id)
)

create table reservas (
    inicio_fecha DATE not null,
    fin_fecha DATE not nulL,
    habitacion INT not nulL,
    huesped_id INT not nulL,
    constraint habitacion_fk foreign key (habitacion) references habitaciones(habitacion_numero),
    constraint huesped_fk foreign key  (huesped_id) references huespedes(id),
	 constraint reservas_pk primary key  (habitacion, huesped_id)
)

insert into habitaciones values (1,40.0,4,4),
 								 (2,20.0,4,2),
								 (3,40.0,4,4),
								 (4,40.0,3,4),
								 (5,20.0,3,2),
								 (6,20.0,3,2),
								 (7,20.0,2,2),
								 (8,20.0,2,2),
								 (9,20.0,2,2),
								 (10,15.0,1,1),
								 (11,15.0,1,1),
								 (12,15.0,1,1);

insert into huespedes values    (1,'Ricardo','Montero',0980658774,'Ricmontero@gmail.com'),
								(2,'Sofía','Martinez',09887563205,'Sofimar@gmail.com'),
								(3,'Yamilteh','Guami',0998763298,'YAMGUAM@gmail.com'),
								(4,'Esther','Contreras',0995783602,'Esthcontro@gmail.com'),
								(5,'Wiliam','Mantilla',09858796320,'wmANTILLA@gmail.com'),
								(6,'Carmen','Noguera',0995876321,'Cnoguera@gmail.com'),
								(7,'Anika','Jimenez',0978965432,'AniJimenez@gmail.com'),
								(8,'Belen','Orejuela',0996365748,'BOrejuela@gmail.com'),
								(9,'Diana','Monroy',0987963214,'DianaMroy@gmail.com'),
								(10,'Bryan','Moncada',0986325741,'BrMoncada@gmail.com');

insert into reservas values ('11/05/2023','12/05/2023',2,10),
						    ('11/05/2023','12/05/2023',2,9),
							('22/06/2023','23/06/2023',1,1),
							('22/06/2023','23/06/2023',1,2),
							('22/06/2023','23/06/2023',1,3),
							('22/06/2023','23/06/2023',1,4),
							('01/01/2023','02/01/2023',12,5),
							('11/08/2023','12/08/2023',11,6),
							('11/05/2023','12/05/2023',10,7),
							('11/05/2023','12/05/2023',9,8);

--Consultas
SELECT  h.habitacion_numero AS numero_habitacion, hp.nombres AS nombre,hp.apellidos AS apellido 
FROM  habitaciones h, huespedes hp, reservas r
WHERE  h.habitacion_numero = r.habitacion
 AND hp.id = r.huesped_id
 --Subconsulta
 SELECT  h.nombres AS nombre, h.apellidos AS apellido FROM huespedes h
WHERE h.id IN ( SELECT r.huesped_id FROM reservas r WHERE r.habitacion = 2)
--Funcion agregacion
SELECT  h.habitacion_numero AS numero_habitacion,COUNT(r.huesped_id) AS cantidad_huespedes FROM habitaciones h,reservas r
WHERE h.habitacion_numero = r.habitacion
GROUP BY h.habitacion_numero
--Consultas 2
SELECT  h.habitacion_numero AS numero_habitacion, h.piso AS piso, hp.nombres AS nombre, hp.apellidos AS apellido
FROM  habitaciones h, huespedes hp, reservas r
WHERE h.habitacion_numero = r.habitacion
AND hp.id = r.huesped_id
AND h.piso = 4
--Subconsultas 2
SELECT  h.nombres AS nombre, h.apellidos AS apellido FROM huespedes h
WHERE h.id IN( SELECT r.huesped_id FROM reservas r WHERE r.habitacion = 3)
--Funcion agregacion 2
SELECT h.habitacion_numero AS numero_habitacion, AVG(r.huesped_id) AS promedio_huesped_id FROM  habitaciones h, reservas r
WHERE  h.habitacion_numero = r.habitacion
GROUP BY h.habitacion_numero
--Consulta 3
SELECT h.habitacion_numero AS numero_habitacion, hp.nombres AS nombre, hp.apellidos AS apellido
FROM habitaciones h, huespedes hp, reservas r
WHERE h.habitacion_numero = r.habitacion
AND hp.id = r.huesped_id
--Subconsulta 3
SELECT  h.nombres AS nombre, h.apellidos AS apellido FROM huespedes h
WHERE h.id IN( SELECT r.huesped_id FROM reservas r WHERE r.habitacion = 4)
--Funcion agregacion 3
SELECT  h.habitacion_numero AS numero_habitacion, SUM(h.precio_por_noche) AS total_recaudado
FROM habitaciones h,reservas r
WHERE h.habitacion_numero = r.habitacion
GROUP BY  h.habitacion_numero