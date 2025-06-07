create table transacciones (
codigo int not null,
numero_cuenta char (5) not null,
monto money not null,
tipo char (1) not null,
fecha date not null,
hora time not null,
constraint transacciones_pk primary key (codigo)
)

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (2121,'10001', 150.75, 'C','2025/06/05','10:15')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (2222,'20002', 50.00, 'D','2025/06/05','11:30')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (2323,'30003', 200.00, 'D','2025/06/05','12:45')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (2424,'40004', 200.00, 'C','2025/07/09','14:00')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (2525,'50005', 75.30, 'D','2025/07/09','15:20')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (2626,'60006', 120.50, 'C','2025/07/09','17:05')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (2727,'70007', 345.63, 'D','2025/08/10','09:35')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (2828,'80008', 58.64, 'C','2025/08/10','10:32')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (2929,'90009', 30.10, 'C','2025/08/10','11:05')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1111,'10010', 46.65, 'D','2025/08/10','11:45')

--1
select * from transacciones where tipo ='D'
--2
select * from transacciones where monto>=money(200) and monto<=money(2000)
--3
select codigo,monto,tipo,fecha from transacciones where fecha is not null