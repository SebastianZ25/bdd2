create table productos(
	codigo int not null,
	nombre varchar (50) not null,
	descripcion varchar (200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)

create table ventas (
    id_venta int,
    codigo_producto int not null,
    fecha_venta date not null,
    cantidad int,
	
    constraint ventas_fk foreign key (codigo_producto)
    references productos(codigo)
)