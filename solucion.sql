 


CREATE TABLE tipo_cliente (
customer_id INTEGER NOT NULL PRIMARY KEY,
description_id INTEGER NOT NULL,
FOREIGN KEY (customer_id) REFERENCES cliente (customer_id)
);

INSERT INTO tipo_cliente (description_id, description_id, description_id)
VALUES ("Classic","Gold","Black");

CREATE TABLE tipo_cuenta(
account_id INTEGER PRIMARY KEY,
description_id NOT NULL,
FOREIGN KEY (account_id) REFERENCES cuenta (account_id)
);

INSERT INTO tipo_cuenta (description_id,description_id,description_id,description_id,description_id)
VALUES ("Caja de ahorro en pesos","Caja de ahorro en dolares","Cuenta Corriente);

CREATE TABLE marca_tarjeta(
brand_id INTEGER PRIMARY KEY,
brand_name TEXT NOT NULL,
customer_id INTEGER NOT NULL,
FOREIGN KEY (customer_id) REFERENCES cliente (customer_id)
);

INSERT INTO marca_tarjeta (brand_name)
VALUES 
  ("Master card"),
  ("Visa"),
  ("American Express");


CREATE TABLE tarjeta (
card_id INTEGER PRIMARY KEY AUTOINCREMENT,
card_number TEXT UNIQUE NOT NULL CHECK (length(card_number)<=20),
card_expire_date INTEGER NOT NULL,
card_given_date INTEGER NOT NULL,
card_cvv INTEGER NOT NULL,
card_type TEXT NOT NULL,
customer_id INTEGER NOT NULL,
brand_id INTEGER NOT NULL,
FOREIGN KEY (customer_id) REFERENCES cliente (customer_id),
FOREIGN KEY (brand_id) REFERENCES marca_tarjeta (brand_id)
);

INSERT INTO tarjeta (card_number,card_cvv,card_expire_date,card_given_date,card_type,customer_id,brand_id)
VALUES ("343549897659889",921,"0122","0923","Debito","2",1);

CREATE TABLE direcciones (
address_id INTEGER PRIMARY KEY,
andress_sucursal TEXT UNIQUE NOT NULL CHECK (length(andress_sucursal)<=1),
address_clientes TEXT NOT NULL,
address_empleado TEXT NOT NULL
);

INSERT INTO direcciones (address_sucursal,address_clientes,address_empleado)
VALUES ("av gaona 300", "pedro goyena 1526","rivadavia 1000");


