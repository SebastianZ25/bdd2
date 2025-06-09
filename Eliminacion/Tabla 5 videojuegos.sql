create table videojuegos (
codigo int not null,
nombre varchar (100) not null,
descripcion varchar (300),
valoracion int not null,
constraint videojuegos_pk primary key (codigo)
)
drop table videojuegos
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (111,'Cyberpunk 2077','RPG futurista,mundo abierto', 4)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (222,'God of War Ragnarok','Aventura,accion,narrativa potente', 10)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (333,'Red Dead Redemption 2','Mundo abierto inmersivo', 9)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (444,'Elden Ring','Accion,mundo abierto', 3)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (555,'Resident Evil 4','Survival,horror', 9)

--1
select * from videojuegos where nombre like 'C%'
--2
select * from videojuegos where valoracion between 9 and 10
--3
select * from videojuegos where descripcion is null

--actualizaciones
select* from videojuegos
update videojuegos set descripcion ='Mejor puntuado'
where valoracion > 9
--Eliminacion
delete from videojuegos
where valoracion< 7