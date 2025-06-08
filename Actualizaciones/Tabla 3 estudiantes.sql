create table estudiantes (
	cedula char (10) not null,
	nombre varchar (50) not null,
	apellido varchar (50) not null,
	email varchar (50) not null,
	fecha_nacimiento date not null,
	constraint estudiantes_pk primary key (cedula)
)

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1732639001','Ana','Perez','anaPerez@gmail.com','2003/05/10')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1732639002','Luis','Martinez','luisMartinez@gmail.com','2005/11/25')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1732639003','Sofia','Torres','sofiaTorres@gmail.com','2001/03/18')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1732639004','Carlos','Rodriguez','carlosRodriguez@gmail.com','2006/07/01')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1732639005','Javier','Castro','javierCastro@gmail.com','2002/01/22')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1732639006','Valentina','Vargas','valentinaVargas@gmail.com','2004/04/30')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1732639007','Pablo','Morales','pabloMorales@gmail.com','2003/09/16')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values ('1732639008','Diego','Rojas','diegoRojas@gmail.com','2005/06/03')

--1
select nombre,cedula  from estudiantes
--2
select nombre from estudiantes where cedula like '17%'
--3
select nombre,apellido from estudiantes where nombre like 'A%'
--actualizaciones 
select * from estudiantes
update estudiantes set apellido ='Hernandez'
where cedula like '17%'
