create table cuentas(
numero_cuenta char (5) not null,
cedula_propietario char (5) not null,
fecha_creacion date not null,
saldo money not null,
constraint cuentas_pk primary key (numero_cuenta)
)
drop table cuentas
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('10001','54531', '01/02/2015',1500.50)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('20002','54532', '25/07/2018',2300.75)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('30003','54532', '18/09/2020',500.00)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('40004','54534', '10/03/2021',4200.20)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('50005','54535', '22/05/2022',800.00)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('60006','54536', '29/11/2022',345.10)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('70007','54537', '16/04/2023',600.00)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('80008','54538', '04/12/2016',3100.00)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('90009','54539', '08/08/2024',950.65)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('10010','54510', '13/12/2025',300.15)


select numero_cuenta,saldo from cuentas

select * from cuentas where fecha_creacion between '2025/04/06' and '2025/06/06'

select numero_cuenta,saldo from cuentas where fecha_creacion between '2025/04/06' and '2025/06/06'
-- version dos 
select * from cuentas where fecha_creacion between current_date- interval'2 months' and current_date

select numero_cuenta,saldo from cuentas where fecha_creacion between current_date - interval '2 months' and current_date
--actualizaciones
select * from cuentas
update cuentas set saldo= 10
where cedula_propietario like '17%'

