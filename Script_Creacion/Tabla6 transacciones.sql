create table transacciones (
codigo int not null,
numero_cuenta char (5) not null,
monto money not null,
tipo char (1) not null,
fecha date,
hora time ,
constraint transacciones_pk primary key (codigo)
)


create table banco (
    codigo_banco int not null,
    codigo_transaccion int not null,
    detalle varchar(100),
    constraint banco_pk primary key (codigo_banco)
)

alter table transacciones
add column codigo_banco int

alter table transacciones
add constraint transacciones_fk foreign key (codigo_banco)
references banco(codigo_banco)