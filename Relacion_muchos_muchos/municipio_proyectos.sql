create table ciudad(
id int,
nombre varchar (50)not null,
constraint ciudad_pk primary key(id)
)

create table municipio(
id int,
nombre varchar(50),
ciudad_id int,
constraint municipio_pk primary key(id),
constraint municipio_fk foreign key(ciudad_id) references ciudad(id)
)

create table proyecto (
    id int,
    proyecto varchar(50)not null,
    monto money not null,
    fecha_inicio date,
    fecha_entrega date,
	constraint proyecto_pk primary key(id)
)

create table proyecto_municipio (
    municipio_id int not null,
    proyecto_id int not null,
    foreign key (municipio_id) references municipio(id),
    foreign key (proyecto_id) references proyecto(id),
	primary key (municipio_id, proyecto_id)
)

insert into ciudad values   (1,'Quito'),
							(2,'Ambato'),
							(3,'Guayaquil'),
							(4,'Machala'),
							(5,'Manta'),
							(6,'Loja'),
							(7,'Otavalo'),
							(8,'Cuenca'),
							(9,'Latacunga'),
							(10,'Tena');

insert into municipio values (1,'GAD MUNICIPAL QUITO',1),
							 (2,'GAD MUNICIPAL DE CUENCA',8),
							 (3,'GAD MUNICIPALIDAD DE AMBATO',2),
							 (4,'MUNICIPALIDAD DE MACAHALA ',4),
							 (5,'MUNIUCIPIO DE GUAYAQUIL',3),
							 (6,'MUNICIPIO DE OTAVALO',7),
							 (7,'MUNICIPIO DE LOJA',6),
							 (8,'MUNICIPIO DE MANTA',5),
							 (9,'MUNICIPIO DE LATACUNGA',9),
							 (10,'MUNICIPIO DE TENA',10);

insert into proyecto values (1,'Proyectos de Gestión Ambiental',9543.327,'10/02/2022','10/02/2023'),
							(2,'Proyectos en Fomento y Desarrollo Productivo',26553.264,'25/06/2022','10/08/2022'),
							(3,'Proyectos en Cambio Climático',1292.194,'01/02/2021','10/12/2023');

insert into proyecto_municipio values 
(1,1),
(1,2),
(1,3),
(2,1),
(2,2),
(3,3),
(4,1),
(5,2),
(6,3),
(7,1)

--Consultas
SELECT  m.nombre AS nombre_municipio, p.proyecto AS nombre_proyecto FROM  municipio m, proyecto p, proyecto_municipio pm
WHERE  m.id = pm.municipio_id
AND p.id = pm.proyecto_id
--Subconsulta
SELECT  p.proyecto AS nombre_proyecto FROM proyecto p
WHERE  p.id IN( SELECT pm.proyecto_id FROM proyecto_municipio pm WHERE pm.municipio_id = 1)
--Funcion agregacion
SELECT  m.nombre AS nombre_municipio,COUNT(pm.proyecto_id) AS cantidad_proyectos FROM municipio m, proyecto_municipio pm
WHERE  m.id = pm.municipio_id
GROUP BY m.nombre
--Consulta 2
SELECT m.nombre AS nombre_municipio, p.proyecto AS nombre_proyecto FROM  municipio m,  proyecto p, proyecto_municipio pm
WHERE m.id = pm.municipio_id
AND p.id = pm.proyecto_id
AND m.nombre LIKE '%GAD%'
--Funcion agregacion 2
SELECT  m.nombre AS nombre_municipio, MIN(pm.proyecto_id) AS min_proyecto FROM  municipio m, proyecto_municipio pm
WHERE  m.id = pm.municipio_id
GROUP BY  m.nombre
--Consulta 3
SELECT  m.nombre AS nombre_municipio, c.nombre AS nombre_ciudad
FROM municipio m, ciudad c
WHERE m.ciudad_id = c.id
--Subconsulta 3
SELECT p.proyecto AS nombre_proyecto FROM proyecto p
WHERE p.id IN (SELECT pm.proyecto_id FROM proyecto_municipio pm WHERE pm.municipio_id = 3)
--Funcion agregacion 3
SELECT  m.nombre AS nombre_municipio,MAX(pm.proyecto_id) AS max_proyecto_id FROM municipio m,proyecto_municipio pm
WHERE m.id = pm.municipio_id
GROUP BY m.nombre