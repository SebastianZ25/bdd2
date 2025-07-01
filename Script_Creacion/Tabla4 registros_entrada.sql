create table registros_entrada (
codigo_registro int not null,
cedula_empleado char (10),
fecha date not null,
hora time not null,
constraint registros_pk primary key (codigo_registro)
)

create table empleados (
    codigo_empleado int not null,
    nombre varchar(25) not null,
    fecha date not null,
    hora time not null,
    constraint empleados_pk primary key (codigo_empleado)
)

alter table registros_entrada
add column codigo_empleado int not null

alter table registros_entrada
add constraint registros_fk foreign key (codigo_empleado)
references empleados(codigo_empleado)