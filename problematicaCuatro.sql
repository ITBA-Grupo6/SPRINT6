--Listar la cantidad de clientes por nombre de sucursal ordenando de mayor a menor*/
SELECT COUNT(customer_id) as Cant_Clientes, branch_name
FROM cliente
INNER JOIN sucursal
ON cliente.branch_id = sucursal.branch_id
GROUP BY branch_name
ORDER BY Cant_Clientes DESC


--Obtener la cantidad de tarjetas de crédito por tipo por sucursal que la entrego*/
SELECT COUNT(tarjeta.tipo) as CantTarjetas, tipo as tipo_tarjeta, tarjeta_id as Nro_Sucursal
FROM tarjeta
GROUP BY tarjeta_id;


--Obtener el promedio de créditos otorgado por sucursal
SELECT COUNT (loan_type) as Promedio, loan_type as tipo_credito, loan_id as Sucursal
FROM prestamo
GROUP BY loan_type;




--crear una tabla denominada auditoria_cuenta 

CREATE TABLE auditoria_cuenta(
			old_id INTEGER PRIMARY KEY,
			new_id INTEGER,
			old_balance INTEGER,
			new_balance INTEGER, 
			old_iban TEXT,
			new_iban TEXT,
			old_type INTEGER,
			new_type INTEGER, 
			user_action INTEGER,
			created_at INTEGER
);



--Crear la tabla “movimientos” con los campos de identificación del movimiento, 
--número de cuenta, monto, tipo de operación y hora o Mediante el uso de transacciones, hacer una transferencia de 1000$ desde la cuenta 200 a la cuenta 400 o Registrar el movimiento en la tabla movimientos o En caso de no poder realizar la operación de forma completa, realizar un ROLLBACK# Sprint6
CREATE TABLE movimientos (
			movimiento INTEGER NOT NULL PRIMARY KEY,
			numeroCuenta INTEGER NOT NULL, 
			monto INTEGER NOT NULL,
			tipoOperacion INTEGER NOT NULL DEFAULT 'Transaccion',
			hora TIME NOT NULL
);