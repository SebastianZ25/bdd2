create table videojuegos (
codigo int not null,
nombre varchar (100) not null,
descripcion varchar (300),
valoracion int not null,
constraint videojuegos_pk primary key (codigo)
)

insert into videojuegos(codigo,nombre,valoracion)
values (111,'Forza Horizon 5', 4)

insert into videojuegos(codigo,nombre,valoracion)
values (222,'Grand Theft Auto V', 5)

insert into videojuegos(codigo,nombre,valoracion)
values (333,'Minecraft', 5)



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