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

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(07563, 'Call of Duty', 'juego de terror', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(85421, 'Free Fire', 'juego de accion', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(93475, 'Call of Clans', 'juego de terror', 10);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(15983, 'Fornite', 'juego de suspenso', 10);

insert into videojuegos(codigo, nombre, valoracion)
values(35784, 'Minecraft', 3);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(54682, 'Tom and Jerry', 'juego de comedia', 8);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(01456, 'Ajedres', 'juego de psicoligia', 6);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(70215, 'God of Ward', 'juego de aprendisaje', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63240, 'Crash', 'juego de deprote', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63549, 'Dragon Ball', 'juego de baile', 8);


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

--Selecciones 2
select * from videojuegos
where (nombre like '%C%') or (valoracion=7)

select * from videojuegos
where (codigo between '3' and '7') or (valoracion=7)

select * from videojuegos 
where (valoracion> 7) and (nombre like 'C%')
or (valoracion>8) and (nombre like 'D%')