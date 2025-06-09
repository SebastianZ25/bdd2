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

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1191,'10010', 150, 'D','2025/09/10','14:05')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values (1193,'10011', 150, 'D','2025/08/10','14:05')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78945, '75369', 200, 'C', '20/09/2023', '23:30');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(53147, '32102', 500.65, 'D', '15/06/2022', '17:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32548, '21001', 1600, 'C', '17/05/2021', '16:37');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32165, '51437', 1050, 'D', '25/04/2020', '15:48');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78542, '02147', 300, 'D', '20/03/2019', '22:19');

insert into transacciones(codigo, numero_cuenta, monto, tipo,fecha, hora)
values(23210, '32015', 400, 'C','21/04/2014' ,'13:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(35412, '85214', 600, 'D', '07/12/2015', '20:14');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54193, '96325', 800, 'D', '06/11/2012', '11:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(95124, '74125', 900, 'D', '23/10/2002', '9:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54143, '85213', 2000, 'C', '11/09/1999', '7:30');


--1
select * from transacciones where tipo ='D'
--2
select * from transacciones where monto>=money(200) and monto<=money(2000)
--3
select codigo,monto,tipo,fecha from transacciones where fecha is not null

--actualizaciones
select* from transacciones
update transacciones set tipo='T'
where monto>=money(100) and monto<=money(500) and fecha>='2025/09/01' and fecha<='2025/10/01'and hora between '14:00' and '20:00'

--elimnaciones
delete from transacciones 
where hora between '14:00' and '18:00' and fecha>='2025/08/01' and fecha<='2025/09/01'

--Selecciones 2
select * from transacciones 
where (tipo='C') and (numero_cuenta between '222001' and '22004')

select * from transacciones 
where (tipo='D') and (fecha='2025/05/25') and (numero_cuenta between '22007' and '22010')

select * from transacciones
where (codigo between 1 and 5) and (numero_cuenta between '22002' and '22004')
and fecha='2025/05/26' or fecha='2025/05/29'