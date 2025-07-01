create table videojuegos (
codigo int not null,
nombre varchar (100) not null,
descripcion varchar (300),
valoracion int not null,
constraint videojuegos_pk primary key (codigo)
)

create table plataformas (
    id_plataforma int,
    nombre_plataforma varchar(50) not null,
    codigo_videojuego int,
	
    constraint plataformas_fk foreign key (codigo_videojuego)
    references videojuegos(codigo)
)