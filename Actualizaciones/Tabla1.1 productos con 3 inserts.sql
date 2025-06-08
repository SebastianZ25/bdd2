create table productos(
	codigo int not null,
	nombre varchar (50) not null,
	descripcion varchar (200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)

insert into productos (codigo,nombre,precio,stock)
values (00011,'Camisa de Lino',35.00,45 )

insert into productos (codigo,nombre,precio,stock)
values (00022,'Jean cargo',55.00,20 )

insert into productos (codigo,nombre,precio,stock)
values (00033,'Chaqueta impermeable',60.00,32 )



select * from productos where nombre like 'Q%'

select * from productos where descripcion is null

select *from productos where precio>=money(2) and precio<=money(3)

--Actualizaciones
select * from productos 
update productos set stock=0
where descripcion is null