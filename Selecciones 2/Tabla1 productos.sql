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

insert into productos(codigo,nombre,descripcion,precio,stock) 
values (11,'Jabón','Lava todo',3.50,10);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (22,'Shampoo','Savital',2.50,20);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (33,'Deja','Deja',1.50,30);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (44,'Pasta dental','Fortident',3.0,40);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (55,'Cera','Cera de piso',2.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (66,'Pan',1.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (7,'Queso',5.50,60);
insert into productos(codigo,nombre,precio,stock)
values (8,'Leche',2.50,70);
insert into productos(codigo,nombre,precio,stock)
values (9,'Jamon',1.00,120);
insert into productos(codigo,nombre,precio,stock)
values (10,'Coca Cola',3.50,300);




select * from productos where nombre like 'Q%'

select * from productos where descripcion is null

select *from productos where precio>=money(2) and precio<=money(3)
--Actualizaciones
select * from productos 
update productos set stock=0
where descripcion is null
--Eliminacion
delete from productos
where descripcion is null

--Selecciones 2
select* from productos where stock= 10 and precio<money(10)

select nombre,stock from productos 
where nombre like '%m%' or descripcion like '% %'

select nombre from productos 
where descripcion is null or stock=0
