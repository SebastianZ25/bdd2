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

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476801,'Raul','Martínez','raumart01@gmail.com','04/02/2003');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476802,'Mario','Guaman','MarioG25@gmail.com', '08/12/2000');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476803,'Roberto','Quishpe','RobQuishpe64@gmail.com','29/06/2005');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476804,'Paul','Noguera','PaulNog55@gmail.com','22/07/2002');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476805,'Marcelo','Ramos','MarceloR72@gmail.com','15/08/2008');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476806,'Anthony','Agual','KAgual22@gmail.com','25/03/2002');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476807,'Paula','Celi','PauCeli31@gmail.com','30/09/2010' );
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476808,'Mónica','Martínez','MoniMar15@gmail.com','22/01/2001');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476809,'Anabel','Perlaza','WPerlaza18@gmail.com','12/04/2000');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476810,'Sofía','Jimenez','SofiJz22@gmail.com','22/01/2001');


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
--Eliminacion
delete from estudiantes
where cedula like '%05'
--Seleciones 2
select nombre,apellido from estudiantes
where nombre like 'M%' or apellido like '%Z'

select nombre from estudiantes
where cedula like '18%' and cedula like '%32%'

select nombre,apellido from estudiantes
where cedula like '%06' or cedula like '17%'

