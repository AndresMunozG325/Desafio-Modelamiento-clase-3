-- Desafío Caso 1
CREATE DATABASE caso1;

CREATE TABLE trabajadores(
id INT,
rut VARCHAR(255),
nombre VARCHAR(255),
direccion VARCHAR(255),
PRIMARY KEY(id) 
);

CREATE TABLE departamentos(
id INT,
nombre VARCHAR(255),
trabajador_id INT,
PRIMARY KEY(id),
FOREIGN KEY(trabajador_id) REFERENCES trabajadores(id)
);

CREATE TABLE drive(
id INT,
liquidacion INT,
trabajador_id INT,
PRIMARY KEY(id),
FOREIGN KEY(trabajador_id) REFERENCES trabajadores(id)
);


