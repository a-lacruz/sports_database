-- Inserción de datos en la tabla Deportes
INSERT INTO Deportes (deporte)
VALUES
  ('Fútbol'),
  ('Baloncesto'),
  ('Béisbol'),
  ('Voleibol');

-- Inserción de datos en la tabla PosicionesJugadores
-- Deporte: Fútbol
INSERT INTO PosicionesJugadores (posicion, deporte_id)
VALUES
  ('Portero', 1),
  ('Defensa', 1),
  ('Mediocampista', 1),
  ('Delantero', 1);

-- Deporte: Baloncesto
INSERT INTO PosicionesJugadores (posicion, deporte_id)
VALUES
  ('Base', 2),
  ('Escolta', 2),
  ('Alero', 2),
  ('Ala-Pívot', 2),
  ('Pívot', 2);

-- Deporte: Béisbol
INSERT INTO PosicionesJugadores (posicion, deporte_id)
VALUES
  ('Lanzador', 3),
  ('Receptor', 3),
  ('Primera Base', 3),
  ('Segunda Base', 3),
  ('Tercera Base', 3),
  ('Campocorto', 3),
  ('Jardinero', 3);

-- Deporte: Voleibol
INSERT INTO PosicionesJugadores (posicion, deporte_id)
VALUES
  ('Colocador', 4),
  ('Opuesto', 4),
  ('Atacante de Punta', 4),
  ('Central', 4),
  ('Líbero', 4);

-- Inserción de datos en la tabla Estadios
-- Deporte: Fútbol
INSERT INTO Estadios (nombre, ciudad, capacidad)
VALUES
  ('Estadio Cristiano Ronaldo', 'Lisboa', 18000),
  ('Estadio Eusébio', 'Oporto', 15000),
  ('Estadio Luís Figo', 'Faro', 12000),
  ('Estadio Pauleta', 'Braga', 20000),
  ('Estadio Futre', 'Coímbra', 10000);

-- Deporte: Baloncesto
INSERT INTO Estadios (nombre, ciudad, capacidad)
VALUES
  ('Pabellón Michael Jordan', 'Lisboa', 8000),
  ('Pabellón Magic Johnson', 'Oporto', 5000),
  ('Pabellón Larry Bird', 'Faro', 6000),
  ('Pabellón Kobe Bryant', 'Braga', 12000),
  ('Pabellón LeBron James', 'Coímbra', 9000);

-- Deporte: Béisbol
INSERT INTO Estadios (nombre, ciudad, capacidad)
VALUES
  ('Estadio Babe Ruth', 'Lisboa', 3000),
  ('Estadio Hank Aaron', 'Oporto', 2000),
  ('Estadio Roberto Clemente', 'Faro', 4000),
  ('Estadio Miguel Cabrera', 'Braga', 5000),
  ('Estadio Derek Jeter', 'Coímbra', 6000);

-- Deporte: Voleibol
INSERT INTO Estadios (nombre, ciudad, capacidad)
VALUES
  ('Pabellón Karch Kiraly', 'Lisboa', 6000),
  ('Pabellón Giba', 'Oporto', 5000),
  ('Pabellón Vladimir Grbic', 'Faro', 4000),
  ('Pabellón Dante Amaral', 'Braga', 3000),
  ('Pabellón Serginho', 'Coímbra', 2000);


-- Inserción de datos en la tabla Patrocinadores
INSERT INTO Patrocinadores (nombre, descripcion)
VALUES
  ('Nike', 'Empresa líder en la fabricación de artículos deportivos'),
  ('Adidas', 'Marca reconocida mundialmente en el ámbito deportivo'),
  ('Coca-Cola', 'Empresa de bebidas refrescantes'),
  ('Puma', 'Marca especializada en calzado y ropa deportiva'),
  ('Gatorade', 'Bebida deportiva para rehidratación'),
  ('Red Bull', 'Bebida energética'),
  ('Samsung', 'Empresa de electrónica y tecnología'),
  ('Banco Santander', 'Entidad financiera global'),
  ('Telefónica', 'Compañía de telecomunicaciones'),
  ('Mastercard', 'Empresa de servicios financieros y tecnológicos');

-- Inserción de datos en la tabla Equipos
-- Equipos de Fútbol
INSERT INTO Equipos (nombre, ciudad, deporte_id, liga)
VALUES
  ('Sporting CP', 'Lisboa', 1, 'Primeira Liga'),
  ('Porto', 'Oporto', 1, 'Primeira Liga'),
  ('Benfica', 'Lisboa', 1, 'Primeira Liga'),
  ('Braga', 'Braga', 1, 'Primeira Liga'),
  ('Vitória de Guimarães', 'Guimarães', 1, 'Primeira Liga'),
  ('Marítimo', 'Funchal', 1, 'Primeira Liga');
 
-- Equipos de Baloncesto
INSERT INTO Equipos (nombre, ciudad, deporte_id, liga)
VALUES
  ('Ovarense Dolce Vita', 'Ovar', 2, 'Liga Portuguesa de Basquetebol'),
  ('FC Porto BC', 'Oporto', 2, 'Liga Portuguesa de Basquetebol'),
  ('SL Benfica BC', 'Lisboa', 2, 'Liga Portuguesa de Basquetebol'),
  ('Sporting BC', 'Lisboa', 2, 'Liga Portuguesa de Basquetebol'),
  ('Lusitânia', 'Angra do Heroísmo', 2, 'Liga Portuguesa de Basquetebol'),
  ('Galitos Barreiro', 'Barreiro', 2, 'Liga Portuguesa de Basquetebol');

-- Equipos de Béisbol
INSERT INTO Equipos (nombre, ciudad, deporte_id, liga)
VALUES
  ('Lisboa Navigators', 'Lisboa', 3, 'Liga Portuguesa de Béisbol'),
  ('Oporto Lumberjacks', 'Oporto', 3, 'Liga Portuguesa de Béisbol'),
  ('Braga Tigers', 'Braga', 3, 'Liga Portuguesa de Béisbol'),
  ('Cascais Crusaders', 'Cascais', 3, 'Liga Portuguesa de Béisbol'),
  ('Estoril Blue Waves', 'Estoril', 3, 'Liga Portuguesa de Béisbol'),
  ('Funchal Hurricanes', 'Funchal', 3, 'Liga Portuguesa de Béisbol');

-- Equipos de Voleibol
INSERT INTO Equipos (nombre, ciudad, deporte_id, liga)
VALUES
  ('Sporting VC', 'Lisboa', 4, 'Liga Portuguesa de Voleibol'),
  ('SL Benfica VC', 'Lisboa', 4, 'Liga Portuguesa de Voleibol'),
  ('FC Porto VC', 'Oporto', 4, 'Liga Portuguesa de Voleibol'),
  ('Castêlo da Maia GC', 'Maia', 4, 'Liga Portuguesa de Voleibol'),
  ('SC Espinho', 'Espinho', 4, 'Liga Portuguesa de Voleibol'),
  ('VC Viana', 'Viana do Castelo', 4, 'Liga Portuguesa de Voleibol');
  
-- Inserción de datos en la tabla temporadas
INSERT INTO Temporadas (nombre, fecha_inicio, fecha_fin, deporte_id)
VALUES
    ('Temporada 2021-2022', '2021-07-01', '2022-06-30', 1),
    ('Temporada 2022-2023', '2022-07-01', '2023-06-30', 1),
    ('Temporada 2021-2022', '2021-07-01', '2022-06-30', 2),
    ('Temporada 2022-2023', '2022-07-01', '2023-06-30', 2),
    ('Temporada 2021-2022', '2021-07-01', '2022-06-30', 3),
    ('Temporada 2022-2023', '2022-07-01', '2023-06-30', 3),
    ('Temporada 2021-2022', '2021-07-01', '2022-06-30', 4),
    ('Temporada 2022-2023', '2022-07-01', '2023-06-30', 4);
    
-- Inserción de datos en la tabla Patrocinios
    INSERT INTO Patrocinios (patrocinador_id, equipo_id, temporada_id)
VALUES
    (1, 1, 1),
    (2, 1, 2),
    (3, 1, 3),
    (4, 2, 1),
    (5, 2, 2),
    (6, 2, 3),
    (7, 3, 1),
    (8, 3, 2),
    (9, 3, 3),
    (10, 4, 1),
    (1, 4, 2),
    (2, 4, 3),
    (3, 5, 1),
    (4, 5, 2),
    (5, 5, 3),
    (6, 6, 1),
    (7, 6, 2),
    (8, 6, 3),
    (9, 7, 1),
    (10, 7, 2),
    (1, 7, 3),
    (2, 8, 1),
    (3, 8, 2),
    (4, 8, 3),
    (5, 9, 1),
    (6, 9, 2),
    (7, 9, 3),
    (8, 10, 1),
    (9, 10, 2),
    (10, 10, 3),
    (1, 11, 1),
    (2, 11, 2),
    (3, 11, 3),
    (4, 12, 1),
    (5, 12, 2),
    (6, 12, 3),
    (7, 13, 1),
    (8, 13, 2),
    (9, 13, 3),
    (10, 14, 1),
    (1, 14, 2),
    (2, 14, 3),
    (3, 15, 1),
    (4, 15, 2),
    (5, 15, 3),
    (6, 16, 1),
    (7, 16, 2),
    (8, 16, 3),
    (9, 17, 1),
    (10, 17, 2),
    (1, 17, 3);
    
   -- Inserción de datos en la tabla Lesiones
INSERT INTO Lesiones (jugador_id, descripcion_lesion, fecha_inicio, fecha_fin)
VALUES
    (205, 'Fractura de tobillo', '2022-03-15', '2022-04-20'),
    (87, 'Esguince de rodilla', '2022-06-02', '2022-07-25'),
    (179, 'Tendinitis en el hombro', '2022-05-09', '2022-06-30'),
    (45, 'Desgarro muscular en el muslo', '2022-01-24', '2022-02-19'),
    (151, 'Torcedura de tobillo', '2022-04-10', '2022-05-18'),
    (284, 'Fractura de clavícula', '2022-07-12', '2022-08-28'),
    (92, 'Esguince de muñeca', '2022-01-19', '2022-03-08'),
    (120, 'Lesión en los ligamentos de la rodilla', '2022-06-29', '2022-07-30'),
    (41, 'Luxación de hombro', '2022-04-25', '2022-05-30'),
    (215, 'Desgarro de menisco', '2022-02-28', '2022-03-28'),
    (181, 'Fractura de brazo', '2022-07-05', '2022-07-25'),
    (67, 'Esguince de tobillo', '2022-02-14', '2022-04-04'),
    (267, 'Lesión en el tendón de Aquiles', '2022-05-12', '2022-06-22'),
    (112, 'Rotura de ligamento cruzado anterior de la rodilla', '2022-03-21', '2022-04-29'),
    (228, 'Contractura muscular en la espalda', '2022-06-08', '2022-07-10'),
    (78, 'Desgarro en el músculo del muslo', '2022-02-09', '2022-03-16'),
    (194, 'Tendinitis rotuliana', '2022-01-11', '2022-03-01'),
    (138, 'Lesión en el ligamento lateral externo del tobillo', '2022-06-19', '2022-07-30'),
    (31, 'Fractura de mano', '2022-04-20', '2022-05-23'),
    (75, 'Esguince de muñeca', '2022-02-05', '2022-03-10'),
    (267, 'Desgarro de músculo en la pantorrilla', '2022-03-29', '2022-04-30'),
    (205, 'Lesión en el ligamento colateral medial de la rodilla', '2022-01-30', '2022-02-25'),
    (120, 'Tendinitis en el codo', '2022-05-28', '2022-06-30'),
    (228, 'Desgarro de ligamento en el tobillo', '2022-07-18', '2022-08-20'),
    (78, 'Lesión en el ligamento lateral externo de la rodilla', '2022-04-05', '2022-05-10'),
    (194, 'Fractura de clavícula', '2022-02-15', '2022-04-02'),
    (31, 'Esguince de tobillo', '2022-07-05', '2022-08-10'),
    (87, 'Lesión en el tendón de la corva', '2022-04-30', '2022-06-06'),
    (215, 'Fractura de pierna', '2022-02-20', '2022-03-25'),
    (41, 'Desgarro en el músculo del brazo', '2022-05-15', '2022-06-20');
  
    -- Inserción de datos en la tabla Contratos
INSERT INTO Contratos (patrocinador_id, equipo_id, fecha_inicio, fecha_fin)
VALUES
    (1, 1, '2021-08-15', '2022-12-31'),
    (2, 1, '2022-01-01', '2023-06-30'),
    (3, 1, '2022-07-01', '2023-12-31'),
    (4, 2, '2021-08-15', '2022-12-31'),
    (5, 2, '2022-01-01', '2023-06-30'),
    (6, 2, '2022-07-01', '2023-12-31'),
    (7, 3, '2021-08-15', '2022-12-31'),
    (8, 3, '2022-01-01', '2023-06-30'),
    (9, 3, '2022-07-01', '2023-12-31'),
    (10, 4, '2021-08-15', '2022-12-31'),
    (1, 4, '2022-01-01', '2023-06-30'),
    (2, 4, '2022-07-01', '2023-12-31'),
    (3, 5, '2021-08-15', '2022-12-31'),
    (4, 5, '2022-01-01', '2023-06-30'),
    (5, 5, '2022-07-01', '2023-12-31'),
    (6, 6, '2021-08-15', '2022-12-31'),
    (7, 6, '2022-01-01', '2023-06-30'),
    (8, 6, '2022-07-01', '2023-12-31'),
    (9, 7, '2021-08-15', '2022-12-31'),
    (10, 7, '2022-01-01', '2023-06-30'),
    (1, 7, '2022-07-01', '2023-12-31'),
    (2, 8, '2021-08-15', '2022-12-31'),
    (3, 8, '2022-01-01', '2023-06-30'),
    (4, 8, '2022-07-01', '2023-12-31'),
    (5, 9, '2021-08-15', '2022-12-31'),
    (6, 9, '2022-01-01', '2023-06-30'),
    (7, 9, '2022-07-01', '2023-12-31'),
    (8, 10, '2021-08-15', '2022-12-31'),
    (9, 10, '2022-01-01', '2023-06-30'),
    (10, 10, '2022-07-01', '2023-12-31'),
    (1, 11, '2021-08-15', '2022-12-31'),
    (2, 11, '2022-01-01', '2023-06-30'),
    (3, 11, '2022-07-01', '2023-12-31'),
    (4, 12, '2021-08-15', '2022-12-31'),
    (5, 12, '2022-01-01', '2023-06-30'),
    (6, 12, '2022-07-01', '2023-12-31'),
    (7, 13, '2021-08-15', '2022-12-31'),
    (8, 13, '2022-01-01', '2023-06-30'),
    (9, 13, '2022-07-01', '2023-12-31'),
    (10, 14, '2021-08-15', '2022-12-31'),
    (1, 14, '2022-01-01', '2023-06-30'),
    (2, 14, '2022-07-01', '2023-12-31'),
    (3, 15, '2021-08-15', '2022-12-31'),
    (4, 15, '2022-01-01', '2023-06-30'),
    (5, 15, '2022-07-01', '2023-12-31'),
    (6, 16, '2021-08-15', '2022-12-31'),
    (7, 16, '2022-01-01', '2023-06-30'),
    (8, 16, '2022-07-01', '2023-12-31'),
    (9, 17, '2021-08-15', '2022-12-31'),
    (10, 17, '2022-01-01', '2023-06-30'),
    (1, 17, '2022-07-01', '2023-12-31');

