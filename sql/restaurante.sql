-- Elimino tabla plato_ingrediente
drop table if exists plato_ingrediente;
-- Elimino tabla plato
drop table if exists plato;
-- Creto tabla plato
CREATE TABLE plato (
    id int NOT NULL AUTO_INCREMENT,
    titulo varchar(255) NOT NULL,
    comensales int,
    tipo varchar(25),
    PRIMARY KEY (id)
);
-- Add registros
insert into plato (titulo, comensales, tipo) values ('paella', 8, 'principal');
insert into plato (titulo, comensales, tipo) values ('tortilla patatas', 1, 'principal');
insert into plato (titulo, comensales, tipo) values ('bravas', 4, 'entrante');
insert into plato (titulo, comensales, tipo) values ('flan', 1, 'postre');
insert into plato (titulo, comensales, tipo) values ('tarta tres chocolates', 8, 'postre');

-- Elimino tabla ingrediente
drop table if exists ingrediente;
-- Creto tabla ingrediente
CREATE TABLE ingrediente (
    id int NOT NULL AUTO_INCREMENT,
    nombre varchar(255) NOT NULL,
    cantidad int,
    PRIMARY KEY (id)
);
-- Add registros
insert into ingrediente (nombre, cantidad) values ('arroz', 100);
insert into ingrediente (nombre, cantidad) values ('huevo', 12);
insert into ingrediente (nombre, cantidad) values ('patata', 150);
insert into ingrediente (nombre, cantidad) values ('chocolate blanco', 100);
insert into ingrediente (nombre, cantidad) values ('chocolate negro', 100);

-- Creto tabla plato_ingrediente
CREATE TABLE plato_ingrediente (
    id int NOT null AUTO_INCREMENT,
    PlatoId int,
    IngredienteId int,
    PRIMARY KEY (id),
    CONSTRAINT FK_Plato FOREIGN KEY (PlatoId) REFERENCES Plato(id),
    CONSTRAINT FK_Ingrediente FOREIGN KEY (IngredienteId) REFERENCES Ingrediente(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
-- Add registros
insert into plato_ingrediente (PlatoId , IngredienteId) values (1, 1);
insert into plato_ingrediente (PlatoId , IngredienteId) values (2, 1);
insert into plato_ingrediente (PlatoId , IngredienteId) values (2, 2);
insert into plato_ingrediente (PlatoId , IngredienteId) values (1, 5);
insert into plato_ingrediente (PlatoId , IngredienteId) values (4, 3);



