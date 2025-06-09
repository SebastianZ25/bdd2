create table registros_entrada (
codigo_registro int not null,
cedula_empleado char (10),
fecha date not null,
hora time not null,
constraint registros_pk primary key (codigo_registro)
)


insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (1111,'1198641011','2025/06/03','08:00')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (2222,'1198641012','2025/06/03','08:15')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (3333,'1198641013','2025/06/03','08:30')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (4444,'1198641014','2025/06/04','09:00')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (5555,'1198641015','2025/06/04','09:10')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (6666,'1198641016','2025/06/04','09:35')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (7777,'1198641017','2025/06/05','07:45')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (8888,'1198641018','2025/06/05','08:05')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (9999,'1198641099','2025/06/05','08:20')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (9595,'1198641010','2025/06/05','08:55')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values (9596,'1198641088','2025/08/05','08:55')

--1
select cedula_empleado,fecha,hora  from registros_entrada
--2
select * from registros_entrada where hora between '7:00' and '14:00'
--3
select * from registros_entrada where hora >'8:00'
--actualizaciones
select * from registros_entrada
update registros_entrada set cedula_empleado='082345679'
where fecha>='2025/08/01' and fecha<='2025/09/01'
--Eliminacion
delete from registros_entrada
where fecha>='2025/06/01' and fecha<='2025/07/01'
