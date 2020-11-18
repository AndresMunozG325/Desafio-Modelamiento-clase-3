-- Desafío Caso 2
CREATE DATABASE caso2;

CREATE TABLE alumnos(
    id INT,
    nombre VARCHAR(255),
    rut VARCHAR(255),
    PRIMARY KEY(id) 
);

CREATE TABLE cursos(
    id INT,
    nombre VARCHAR(255),
    alumno_id INT,
    PRIMARY KEY(id), 
    FOREIGN KEY(alumno_id) REFERENCES alumnos(id)
);

CREATE TABLE pruebas(
    id INT,
    puntaje INT,
    alumno_id INT,
    PRIMARY KEY(id),
    FOREIGN KEY(alumno_id) REFERENCES alumnos(id)
);

CREATE TABLE alumnospruebas(
    id INT,
    alumno_id INT,
    prueba_id INT,
    PRIMARY KEY(id),
    FOREIGN KEY(alumno_id) REFERENCES alumnos(id),
    FOREIGN KEY(prueba_id) REFERENCES pruebas(id)
);

CREATE TABLE profesores(
    id INT,
    nombre VARCHAR(255),
    departamento VARCHAR(255),
    prueba_id INT,
    FOREIGN KEY(prueba_id) REFERENCES pruebas(id)
);