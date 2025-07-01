create table clientes (
    cedula char(10) not null,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    constraint clientes_pk primary key (cedula)
)

create table compras (
    id_compra int ,
    cedula char(10) not null,
    fecha_compra date not null,
    monto decimal(10, 2) not null,
    constraint compras_pk primary key (id_compra)
)
alter table compras
add constraint compras_fk foreign key (cedula)
references clientes(cedula)
