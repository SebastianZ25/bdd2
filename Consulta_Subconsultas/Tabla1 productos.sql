insert into productos (codigo, nombre, descripcion, precio, stock) values
(1, 'Manzanas', 'Frutas frescas', 1000.00, 50), 
(2, 'Leche', 'Lacteos', 2500.00, 30),
(3, 'Mantequilla', 'Lacteos', 1800.00, 40), 
(4, 'Pan',null, 500.00, 100), 
(5, 'Arroz', 'Granos', 800.00, 75),
(6, 'Tomates', 'Verduras', 900.00, 60), 
(7, 'Cafe',null, 3000.00, 25),
(8, 'Azucar', 'Endulzantes', 700.00, 80),
(9, 'Chocolate', 'Snacks', 1500.00, 45),
(10, 'Jabon', 'Higiene', 600.00, 90)

insert into ventas (id_venta,codigo_producto, fecha_venta, cantidad) values
(101, 1, '2023-01-15', 10), 
(102,2, '2023-02-20', 5),  
(103,3, '2023-03-10', 8), 
(104,4, '2023-04-05', 12),
(105,5, '2023-05-15', 6),  
(106,6, '2023-06-20', 7), 
(107,7, '2023-07-10', 9),  
(108,8, '2023-08-05', 11), 
(109,9, '2023-09-15', 4),  
(1101,10, '2023-10-20', 3)

select * from productos
select * from ventas

--Consulta 
select pt.nombre, pt.stock,vt.cantidad from 
productos pt, ventas vt
where pt.nombre like'%m%' or pt.descripcion is null

--Subconsulta
select nombre, stock from productos
where codigo= (select codigo_producto from ventas  where cantidad = 5)