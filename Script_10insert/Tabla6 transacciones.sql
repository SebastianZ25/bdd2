insert into banco (codigo_banco, codigo_transaccion, detalle) values
(101, 1, 'Transacción bancaria exitosa'),
(102, 2, 'Depósito realizado'),
(103, 3, 'Transferencia enviada'),
(104, 4, 'Retiro efectuado'),
(105, 5, 'Pago procesado'),
(106, 6, 'Operación pendiente'),
(107, 7, 'Reversión de transacción'),
(108, 8, 'Cargo aplicado'),
(109, 9, 'Abono recibido'),
(110, 10, 'Consulta de saldo')


insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora, codigo_banco) values
(1, '22001', 500.00, 'C', '2023-01-15', '10:00:00', 101), -- Tipo 'C' y numero_cuenta entre '22001' y '22004'
(2, '22002', 1000.00, 'D', '2023-02-20', '11:30:00', 102),
(3, '22003', 750.00, 'C', '2023-03-10', '09:45:00', 103), -- Tipo 'C' y numero_cuenta entre '22001' y '22004'
(4, '22004', 200.00, 'C', '2023-04-05', '10:15:00', 104), -- Tipo 'C' y numero_cuenta entre '22001' y '22004'
(5, '11111', 300.00, 'D', '2023-05-15', '11:00:00', 105),
(6, '22002', 800.00, 'D', '2023-06-20', '09:30:00', 106),
(7, '33333', 550.00, 'C', '2023-07-10', '10:45:00', 107),
(8, '44444', 600.00, 'D', '2023-08-05', '11:15:00', 108),
(9, '55555', 700.00, 'D', '2023-09-15', '09:00:00', 109),
(10, '66666', 900.00, 'D', '2023-10-20', '10:30:00', 110)

select * from banco
select * from transacciones
