---------CRUD-------------

----------Inserci�n de datos-------

--------Insertar Entrenadores--------
INSERT INTO Entrenadores (Id, Nombre, Ciudad, Genero, Edad)
VALUES 
(1, 'Brock', 'Ciudad Plateada', 'Masculino', 15),
(2, 'Misty', 'Ciudad Celeste', 'Femenino', 14),
(3, 'Lt. Surge', 'Ciudad Carm�n', 'Masculino', 30),
(4, 'Erika', 'Ciudad Azulona', 'Femenino', 18),
(5, 'Koga', 'Ciudad Fucsia', 'Masculino', 25),
(6, 'Sabrina', 'Ciudad Azafr�n', 'Femenino', 21),
(7, 'Blaine', 'Isla Canela', 'Masculino', 40),
(8, 'Giovanni', 'Ciudad Verde', 'Masculino', 45),
(9, 'Lorelei', 'Meseta A�il', 'Femenino', 25),
(10, 'Bruno', 'Meseta A�il', 'Masculino', 30),
(11, 'Agatha', 'Meseta A�il', 'Femenino', 70),
(12, 'Lance', 'Meseta A�il', 'Masculino', 28),
(13, 'Blue', 'Pueblo Paleta', 'Masculino', 16),
(14, 'Profesor Oak', 'Pueblo Paleta', 'Masculino', 50),
(15, 'Gary Oak', 'Pueblo Paleta', 'Masculino', 10),
(16, 'Rojo', 'Pueblo Paleta', 'Masculino', 11),
(17, 'Jessie', 'Equipo Rocket', 'Femenino', 20),
(18, 'James', 'Equipo Rocket', 'Masculino', 20),
(19, 'Caballero', 'Ruta 8', 'Masculino', 35),
(20, 'Dominguera', 'Ruta 6', 'Femenino', 23),
(21, 'Cazabichos', 'Bosque Verde', 'Masculino', 10),
(22, 'Nadador', 'Ruta 19', 'Masculino', 22),
(23, 'Monta�ero', 'Monte Moon', 'Masculino', 30),
(24, 'Criapok�mon', 'Ruta 3', 'Femenino', 28);

---------Insertar Pok�mon---------
INSERT INTO Pokemon (Id, Nombre, Tipo1, Tipo2, HP, Ataque, Defensa, Velocidad, Generacion)
VALUES 
(1, 'Bulbasaur', 'Grass', 'Poison', 45, 49, 49, 45, 1),
(2, 'Ivysaur', 'Grass', 'Poison', 60, 62, 63, 60, 1),
(3, 'Venusaur', 'Grass', 'Poison', 80, 82, 83, 80, 1),
(4, 'Charmander', 'Fire', NULL, 39, 52, 43, 65, 1),
(5, 'Charmeleon', 'Fire', NULL, 58, 64, 58, 80, 1),
(6, 'Charizard', 'Fire', 'Flying', 78, 84, 78, 100, 1),
(7, 'Squirtle', 'Water', NULL, 44, 48, 65, 43, 1),
(8, 'Wartortle', 'Water', NULL, 59, 63, 80, 58, 1),
(9, 'Blastoise', 'Water', NULL, 79, 83, 100, 78, 1),
(10, 'Caterpie', 'Bug', NULL, 45, 30, 35, 45, 1),
(11, 'Metapod', 'Bug', NULL, 50, 20, 55, 30, 1),
(12, 'Butterfree', 'Bug', 'Flying', 60, 45, 50, 70, 1),
(13, 'Weedle', 'Bug', 'Poison', 40, 35, 30, 50, 1),
(14, 'Kakuna', 'Bug', 'Poison', 45, 25, 50, 35, 1),
(15, 'Beedrill', 'Bug', 'Poison', 65, 90, 40, 75, 1),
(16, 'Pidgey', 'Normal', 'Flying', 40, 45, 40, 56, 1),
(17, 'Pidgeotto', 'Normal', 'Flying', 63, 60, 55, 71, 1),
(18, 'Pidgeot', 'Normal', 'Flying', 83, 80, 75, 101, 1),
(19, 'Rattata', 'Normal', NULL, 30, 56, 35, 72, 1),
(20, 'Raticate', 'Normal', NULL, 55, 81, 60, 97, 1);

-------Insertar Batallas------
INSERT INTO Batalla (id, Entrenador1_id, Entrenador2_id, Pokemon1_id, Pokemon2_id, Fecha, Resultado) VALUES
(1, 1, 2, 7, 12, '2024-07-15', 'Victoria entrenador_2'),
(2, 3, 4, 20, 5, '2024-07-16', 'Victoria entrenador_3'),
(3, 5, 6, 10, 4, '2024-07-17', 'Victoria entrenador_6'),
(4, 9, 10, 17, 16, '2024-07-18', 'Victoria entrenador_9'),
(5, 11, 12, 14, 17, '2024-07-19', 'Victoria entrenador_12'),
(6, 19, 20, 19, 16, '2024-07-20', 'Victoria entrenador_19'),
(7, 1, 2, 10, 3, '2024-07-21', 'Victoria entrenador_22'),
(8, 3, 2, 4, 2, '2024-07-22', 'Victoria entrenador_23'),
(9, 1, 13, 8, 6, '2024-07-23', 'Victoria entrenador_13'),
(10, 9, 4, 7, 4, '2024-07-24', 'Victoria entrenador_9'),
(11, 17, 7, 7, 8, '2024-07-25', 'Victoria entrenador_7'),
(12, 14, 2, 1, 9, '2024-07-26', 'Victoria entrenador_14');

-- Inserci�n de datos en Entrenador_Pokemon------
INSERT INTO Entrenador_Pokemon (entrenador_id, pokemon1_id, pokemon2_id)
VALUES 
    (1, 3, 4),
    (3, 7, 7),
    (8, 8, 3),
    (9, 10, 2),
    (2, 6, 9),
    (5, 8, 2),
    (9, 5, 1),
    (5, 9, 5);

------------Consultas de lectura---------

-------------Obtener todos los Pok�mon----------
SELECT * FROM Pokemon;

--------Obtener informaci�n de un Pok�mon espec�fico---------------------
SELECT * FROM Pokemon WHERE id = 1;

---------Obtener todos los entrenadores-----------
SELECT * FROM Entrenadores;

-- Obtener todas las batallas
SELECT * FROM Batalla;

-- Actualizaci�n de datos

-- Actualizar la informaci�n de un Pok�mon
UPDATE Pokemon SET Ataque = 60 WHERE id = 1;

-- Actualizar la informaci�n de un entrenador
UPDATE Entrenadores SET Ciudad = 'Ciudad Plateada' WHERE id = 2;

--------Eliminaci�n de datos------

------Eliminar un Pok�mon-----
DELETE FROM Pokemon WHERE id = 3;

-------Eliminar un entrenador------
DELETE FROM Entrenadores WHERE id = 2;

-------Obtener todos los Pok�mon de un entrenador espec�fico-----
SELECT P.* 
FROM Pokemon P
JOIN Entrenador_Pokemon EP 
ON P.id = EP.pokemon1_id OR P.id = EP.pokemon2_id
WHERE EP.entrenador_id = 1;

---------Eliminaci�n con JOIN------------

--------Eliminar un Pok�mon y sus relaciones-----------
DELETE P, EP 
FROM Pokemon P
JOIN Entrenador_Pokemon EP 
ON P.id = EP.pokemon1_id OR P.id = EP.pokemon2_id
WHERE P.id = 1;

--------Consulta con JOIN--------

-- Obtener informaci�n detallada sobre Pok�mon y sus entrenadores
SELECT E.Nombre AS Entrenadores, P.Nombre AS Pokemon 
FROM Entrenadores E
JOIN Entrenador_Pokemon EP 
ON E.Id = EP.entrenador_id
JOIN Pokemon P 
ON P.id = EP.pokemon1_id OR P.id = EP.pokemon2_id;

---------Obtener informaci�n sobre batallas, incluyendo nombres de entrenadores y Pok�mon-----------------------
SELECT B.id, E1.Nombre AS Entrenador1, E2.Nombre AS Entrenador2, P1.Nombre AS Pokemon1, P2.Nombre AS Pokemon2, B.Fecha, B.Resultado
FROM Batalla B
JOIN Entrenadores E1 
ON B.Entrenador1_id = E1.id
JOIN Entrenadores E2 
ON B.Entrenador2_id = E2.id
JOIN Pokemon P1 
ON B.Pokemon1_id = P1.id
JOIN Pokemon P2 
ON B.Pokemon2_id = P2.id;
