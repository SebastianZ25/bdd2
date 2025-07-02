create table usuarios (
 id int,
 nombre varchar(25) not null,
 apellido varchar(25) not null,
 fecha_nacimiento date,
 constraint usuarios_pk primary key(id)
)

create table grupo(
 id int,
 nombre varchar(25) not null,
 descripcion varchar(75),
 fecha_creacion date,
  constraint grupo_pk primary key(id)
)

create table usuario_grupo(
us_id int not null,
gr_id int not null,
constraint usuario_fk foreign key (us_id) references usuarios(id),
constraint grupo_fk foreign key (gr_id) references grupo(id),
constraint usuario_grupo_pk primary key (us_id,gr_id )

)

insert into usuarios values (1,'Marilyn','Sagñay','05/11/2023'),
							(2,'Romel','Chamba','06/11/2023'),
							(3,'Mario','Guzñay','05/11/2023'),
							(4,'Johann','Domo','07/11/2023'),
							(5,'Monserrate','Vera','05/11/2023'),
							(6,'Lucio','Vargas','05/11/2023'),
							(7,'Martín','Arizaga','05/11/2023'),
							(8,'Fricson','Erazo','05/11/2023'),
							(9,'Jairo','Obando','05/11/2023'),
							(10,'Berni','Tomalá','05/11/2023')

insert into grupo values (1,'Maternal 1','Grupo de maternal matutino','08/03/2020'),
						 (2,'Maternal 2','Grupo de maternal vepertino','08/03/2020'),
						 (3,'Maternal 3','Grupo de maternal nocturno','08/03/2020'),
						 (4,'Incial 1 ','Grupo de inicial matutino','15/03/2021'),
						 (5,'Incial 2','Grupo de  inicial vespertino','15/03/2021'),
						 (6,'Incial 3','Grupo de  inicial  nocturno','15/03/2021'),
						 (7,'Incial intensivo','Grupo de inicial días sabados','15/03/2021'),
						 (8,'Maternal intensivo 1','Grupo de maternal matutino días sabados','15/03/2022'),
						 (9,'Maternal intensivo 2','Grupo de maternal vespertino días sabados','15/03/2022'),
						 (10,'Maternal intensivo 3','Grupo de maternal nocturno días sabados','15/03/2022')

insert into usuario_grupo values (1,8),
								 (2,3),
								 (3,8),
								 (4,9),
								 (5,1),
								 (6,2),
								 (7,8),
								 (8,8),
								 (9,10),
								 (10,1)
--Consulta							 
select u.nombre as nombre_usuario, g.nombre as nombre_grupo from  usuarios u, grupo g,usuario_grupo ug
where u.id = ug.us_id
and g.id = ug.gr_id;
--Subconsulta
SELECT u.nombre AS nombre_usuario FROM usuarios u
WHERE  u.id IN (SELECT ug.us_id FROM usuario_grupo ug WHERE ug.gr_id = 1)
--Funcion agregacio
SELECT  g.nombre AS nombre_grupo, COUNT (ug.us_id) AS cantidad_usuarios FROM grupo g,usuario_grupo ug
WHERE  g.id = ug.gr_id
GROUP BY  g.nombre
--Consulta 2
SELECT  u.nombre AS nombre_usuario,  g.nombre AS nombre_grupo FROM  usuarios u, grupo g, usuario_grupo ug
WHERE  u.id = ug.us_id
 AND g.id = ug.gr_id
 AND g.nombre LIKE '%intensivo%'
 --Subconsulta2
 SELECT u.nombre AS nombre_usuario FROM usuarios u
WHERE  u.id IN ( SELECT  ug.us_id FROM  usuario_grupo ug WHERE  ug.gr_id = 2)
--Funcion agregacion 2
SELECT  g.nombre AS nombre_grupo,MAX(ug.us_id) AS max_us_id, MIN(ug.us_id) AS min_us_id FROM  grupo g,usuario_grupo ug
WHERE g.id = ug.gr_id
GROUP BY g.nombre
--Consulta 3
SELECT  u.nombre AS nombre_usuario, g.fecha_creacion AS fecha_creacion_grupo FROM  usuarios u, grupo g,usuario_grupo ug
WHERE u.id = ug.us_id
AND g.id = ug.gr_id
AND g.fecha_creacion BETWEEN '2020-03-08' AND '2022-03-08'
--Subconsulta 3
SELECT  u.nombre AS nombre_usuario FROM  usuarios u
WHERE  u.id IN ( SELECT ug.us_id FROM usuario_grupo ug WHERE  ug.gr_id = 3)
--Funcion agregacion 3
SELECT g.descripcion AS descripcion_grupo, COUNT(ug.us_id) AS cantidad_usuarios FROM  grupo g,  usuario_grupo ug
WHERE  g.id = ug.gr_id
AND g.descripcion LIKE '%matutino%'
GROUP BY g.descripcion