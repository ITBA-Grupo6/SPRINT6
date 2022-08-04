--Crear una vista con las columnas id, numero sucursal, nombre, apellido, DNI y edad de la tabla cliente calculada a partir de la fecha de nacimiento o Mostrar las columnas de los clientes, ordenadas por el DNI de menor a mayor y cuya edad sea superior a 40 años o Mostrar todos los clientes que se llaman “Anne” 
--o “Tyler” ordenados por edad de menor a mayor

CREATE VIEW customer_VIEW AS
select customer_id as 'ID cliente',
branch_id as 'numero de sucursal',
customer_name as nombre,
customer_surname as 'apellido',
customer_DNI as DNI,
CAST (ROUND((julianday('now') - Julianday(cliente.dob))/365) AS INT) as edad
FROM cliente WHERE edad>40
ORDER BY  
		(CASE 
         WHEN nombre ='Anne' or nombre='Tyler' THEN edad
		 END) ASC, DNI ASC;




--insertar los 5 clientes del JSON
INSERT INTO cliente (customer_name, customer_surname, customer_DNI, dob, branch_id)
VALUES ('Lois', 'Stout', 47730534, '1984-07-07', 80);

INSERT INTO cliente (customer_name, customer_surname, customer_DNI, dob, branch_id)
VALUES ('Hall', 'Mcconnell',52055464, '1968-04-30', 45);
INSERT INTO cliente (customer_name, customer_surname, customer_DNI, dob, branch_id)
VALUES ('Jin', 'Cooley', 21207908, '1959-08-24', 96);
INSERT INTO cliente (customer_name, customer_surname, customer_DNI, dob, branch_id)
VALUES ('Hilel', 'Mclean', 43625213, '1993-03-28',  77);

INSERT INTO cliente (customer_name, customer_surname, customer_DNI, dob, branch_id)
VALUES ('Gabriel', 'Harmon',57063950,'1976-04-01',27);        


--Actualizar 5 clientes recientemente agregados en la base de datos dado que hubo un error 
--en el JSON que traía la información, la sucursal de todos es la 10

UPDATE cliente
SET branch_id = 10
WHERE customer_id = 25 OR customer_id = 63 OR customer_id = 200 OR customer_id = 129 OR customer_id = 475;


--Eliminar el registro correspondiente a “Noel David” realizando la selección por el nombre 
--y apellido 
DELETE FROM cliente 
WHERE customer_name= 'Noel' and customer_surname= 'David';





--Consultar sobre cuál es el tipo de préstamo de mayor importe

SELECT loan_id,  MAX (loan_total) as Mayor_Importe
FROM prestamo;


