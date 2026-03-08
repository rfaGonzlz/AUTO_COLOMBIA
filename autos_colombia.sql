CREATE DATABASE autos_colombia;
USE autos_colombia;

CREATE TABLE vehiculo (
    placa VARCHAR(10) PRIMARY KEY,
    tipo VARCHAR(20) NOT NULL,
    marca VARCHAR(30),
    color VARCHAR(30)
);

CREATE TABLE celda (
    numero INT PRIMARY KEY,
    ocupada BOOLEAN NOT NULL
);

CREATE TABLE registro (
    id INT AUTO_INCREMENT PRIMARY KEY,
    placa_vehiculo VARCHAR(10) NOT NULL,
    numero_celda INT NOT NULL,
    entrada DATETIME NOT NULL,
    salida DATETIME,
    FOREIGN KEY (placa_vehiculo) REFERENCES vehiculo(placa),
    FOREIGN KEY (numero_celda) REFERENCES celda(numero)
);

INSERT INTO celda (numero, ocupada) VALUES
(1, false),
(2, false),
(3, false),
(4, false),
(5, false);

select * from registro