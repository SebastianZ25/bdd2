create table productos(
	codigo int not null,
	nombre varchar (50) not null,
	descripcion varchar (200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (001,'Laptop Gamer','Potente para juegos',1299.99,10 )

insert into productos (codigo,nombre,descripcion,precio,stock)
values (002,'iphone 15','Telefono alta gama',980.00,200 )

insert into productos (codigo,nombre,descripcion,precio,stock)
values (003,'Auriculares','Con cancelacion de ruido',150.00,40 )

insert into productos (codigo,nombre,descripcion,precio,stock)
values (004,'Teclado Mecanico','Switches personalizables',189.99, 25 )

insert into productos (codigo,nombre,descripcion,precio,stock)
values (005,'Monitor Curvo','27 pulgadas, 144Hz',350.00, 15 )


select * from productos where nombre like 'Q%'

select * from productos where descripcion is null

select *from productos where precio>=money(2) and precio<=money(3)