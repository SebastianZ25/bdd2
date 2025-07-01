create table persona (
    cedula char(10) not null,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    estatura decimal(10, 2),
    fecha_nacimiento date not null,
    hora_nacimiento time,
    cantidad_ahorrada money,
    numero_hijos int,
    constraint persona_pk primary key (cedula)
)

create table prestamo (
    cedula char(10),
    monto money,
    fecha_prestamo date ,
    hora_prestamo time ,
    garante varchar(40),
    constraint prestamo_pk primary key (cedula),
	
    constraint prestamo_fk foreign key (cedula)
    references persona(cedula)
)
select * from persona
select * from prestamo