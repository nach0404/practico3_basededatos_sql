CREATE DATABASE empresa_alimentos;

USE empresa_alimentos;

CREATE TABLE empleados (
elegajo VARCHAR(50) NOT NULL,
edni VARCHAR(50) NOT NULL,
enombre VARCHAR(50) NOT NULL,
etel VARCHAR(50),
edireccion VARCHAR(50),
eciudad VARCHAR(50),
eanio_nac INT NOT NULL,
eanio_ingreso INT NOT NULL,
PRIMARY KEY (elegajo),
UNIQUE (edni)
);

CREATE TABLE areas (
acod VARCHAR(50) NOT NULL,
anombre VARCHAR(50) NOT NULL,
PRIMARY KEY (acod)
);

CREATE TABLE productos (
pcod VARCHAR(50) NOT NULL,
pnombre VARCHAR(50) NOT NULL,
ppeso_max FLOAT NOT NULL,
ptipo VARCHAR(50) NOT NULL,
acod_produce VARCHAR(50) NOT NULL,
PRIMARY KEY (pcod),
FOREIGN KEY (acod_produce) REFERENCES areas(acod)
);

CREATE TABLE trabaja(
elegajo VARCHAR(50) NOT NULL,
acod VARCHAR(50) NOT NULL,
tanio_asig INT NOT NULL,
tcant_horas INT NOT NULL,
PRIMARY KEY (elegajo, acod),
FOREIGN KEY (elegajo) REFERENCES empleados(elegajo),
FOREIGN KEY (acod) REFERENCES areas(acod),
CHECK (tcant_horas BETWEEN 1 AND 8)
);