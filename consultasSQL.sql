-- Crear tablas

DROP TABLE IF EXISTS Pokemon;
CREATE TABLE Pokemon (
    id INT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Tipo1 VARCHAR(20) NOT NULL,
    Tipo2 VARCHAR(20),
    HP INT,
    Ataque INT,
    Defensa INT,
    Velocidad INT,
    Generacion INT 
);

DROP TABLE IF EXISTS Entrenadores;
CREATE TABLE Entrenadores (
    Id INT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Ciudad VARCHAR(100) NOT NULL,
    Genero VARCHAR(50) NOT NULL,
    Edad INT 
);

DROP TABLE IF EXISTS Batalla;
CREATE TABLE Batalla (
    id INT PRIMARY KEY,
    Entrenador1_id INT,
    Entrenador2_id INT,
    Pokemon1_id INT,
    Pokemon2_id INT,
    Fecha DATE,
    Resultado VARCHAR(50),
    FOREIGN KEY (Entrenador1_id) REFERENCES Entrenadores(Id),
    FOREIGN KEY (Entrenador2_id) REFERENCES Entrenadores(Id),
    FOREIGN KEY (Pokemon1_id) REFERENCES Pokemon(Id),
    FOREIGN KEY (Pokemon2_id) REFERENCES Pokemon(Id)
);

DROP TABLE IF EXISTS Entrenador_Pokemon;
CREATE TABLE Entrenador_Pokemon (
    entrenador_id INT,
    pokemon1_id INT,
    pokemon2_id INT,
    PRIMARY KEY (entrenador_id, pokemon1_id, pokemon2_id),
    FOREIGN KEY (entrenador_id) REFERENCES Entrenadores(Id),
    FOREIGN KEY (pokemon1_id) REFERENCES Pokemon(Id),
    FOREIGN KEY (pokemon2_id) REFERENCES Pokemon(Id)
);
