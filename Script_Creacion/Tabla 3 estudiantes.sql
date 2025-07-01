create table estudiantes (
	cedula char (10) not null,
	nombre varchar (50) not null,
	apellido varchar (50) not null,
	email varchar (50) not null,
	fecha_nacimiento date not null,
	constraint estudiantes_pk primary key (cedula)
)


create table profesores (
    codigo int ,
    nombre varchar(50) not null,
    constraint profesores_pk primary key (codigo)
)

alter table estudiantes
add column codigo_profesor int

alter table estudiantes
add constraint estudiantes_fk foreign key (codigo_profesor)
references profesores(codigo)