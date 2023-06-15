-- Eliminar las tablas en orden inverso
DROP TABLE IF EXISTS Contratos;
DROP TABLE IF EXISTS Lesiones;
DROP TABLE IF EXISTS Patrocinios;
DROP TABLE IF EXISTS PosicionesEquipos;
DROP TABLE IF EXISTS Eventos;
DROP TABLE IF EXISTS Marcadores;
DROP TABLE IF EXISTS Partidos;
DROP TABLE IF EXISTS Temporadas;
DROP TABLE IF EXISTS Arbitros;
DROP TABLE IF EXISTS Jugadores;
DROP TABLE IF EXISTS Equipos;
DROP TABLE IF EXISTS Patrocinadores;
DROP TABLE IF EXISTS Estadios;
DROP TABLE IF EXISTS PosicionesJugadores;
DROP TABLE IF EXISTS Deportes;

-- Tabla: Deportes
CREATE TABLE IF NOT EXISTS Deportes (
deporte_id INT PRIMARY KEY AUTO_INCREMENT,
deporte VARCHAR(100)
) ENGINE=InnoDB ;

-- Tabla: PosicionesJugadores
CREATE TABLE IF NOT EXISTS PosicionesJugadores (
posicion_id INT PRIMARY KEY AUTO_INCREMENT,
posicion VARCHAR(100),
deporte_id INT,
CONSTRAINT fk_posicion_deporte
    FOREIGN KEY (deporte_id)
    REFERENCES Deportes(deporte_id)
) ENGINE=InnoDB ;

-- Tabla: Estadios
CREATE TABLE IF NOT EXISTS Estadios (
estadio_id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(100),
ciudad VARCHAR(100),
capacidad INT
) ENGINE=InnoDB ;

-- Tabla: Patrocinadores
CREATE TABLE IF NOT EXISTS Patrocinadores (
patrocinador_id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(100),
descripcion VARCHAR(100)
) ENGINE=InnoDB ;

-- Tabla: Equipos
CREATE TABLE IF NOT EXISTS Equipos (
equipo_id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(100),
ciudad VARCHAR(100),
deporte_id INT,
liga VARCHAR(100),
CONSTRAINT fk_equipo_deporte
    FOREIGN KEY (deporte_id)
    REFERENCES Deportes(deporte_id)
) ENGINE=InnoDB ;

-- Tabla: Jugadores
CREATE TABLE IF NOT EXISTS Jugadores (
jugador_id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(100),
apellido VARCHAR(100),
pais VARCHAR(100),
fecha_nacimiento DATE,
posicion_id INT,
equipo_id INT,
CONSTRAINT fk_jugador_posicion
    FOREIGN KEY (posicion_id)
    REFERENCES PosicionesJugadores(posicion_id),
CONSTRAINT fk_jugador_equipo 
    FOREIGN KEY (equipo_id) 
    REFERENCES Equipos(equipo_id)
) ENGINE=InnoDB ;

-- Tabla: Arbitros
CREATE TABLE IF NOT EXISTS Arbitros (
arbitro_id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(100),
apellido VARCHAR(100),
pais VARCHAR(100),
deporte_id INT,
CONSTRAINT fk_arbitro_deporte
    FOREIGN KEY (deporte_id)
    REFERENCES Deportes(deporte_id)
) ENGINE=InnoDB ;

-- Tabla: Temporadas
CREATE TABLE IF NOT EXISTS Temporadas (
temporada_id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(100),
fecha_inicio DATE,
fecha_fin DATE,
deporte_id INT,
  CONSTRAINT fk_temporada_deporte
    FOREIGN KEY (deporte_id)
    REFERENCES Deportes(deporte_id)
) ENGINE=InnoDB ;

-- Tabla: Partidos
CREATE TABLE IF NOT EXISTS Partidos (
partido_id INT PRIMARY KEY AUTO_INCREMENT,
fecha DATE,
hora TIME,
estadio_id INT,
temporada_id INT,
deporte_id INT,
CONSTRAINT fk_partido_estadio
    FOREIGN KEY (estadio_id)
    REFERENCES Estadios(estadio_id),
CONSTRAINT fk_partido_temporada
    FOREIGN KEY (temporada_id)
    REFERENCES Temporadas(temporada_id),
CONSTRAINT fk_partido_deporte
    FOREIGN KEY (deporte_id)
    REFERENCES Deportes(deporte_id)
) ENGINE=InnoDB;

-- Tabla: Marcadores
CREATE TABLE IF NOT EXISTS Marcadores (
marcador_id INT PRIMARY KEY AUTO_INCREMENT,
partido_id INT,
equipo_local_id INT,
equipo_visitante_id INT,
marcador_local INT,
marcador_visitante INT,
CONSTRAINT fk_marcador_partido
  FOREIGN KEY (partido_id)
  REFERENCES Partidos(partido_id),
CONSTRAINT fk_marcador_equipo_local
  FOREIGN KEY (equipo_local_id)
  REFERENCES Equipos(equipo_id),
CONSTRAINT fk_marcador_equipo_visitante
  FOREIGN KEY (equipo_visitante_id)
  REFERENCES Equipos(equipo_id)
) ENGINE=InnoDB;

-- Tabla: Eventos
CREATE TABLE IF NOT EXISTS Eventos (
evento_id INT PRIMARY KEY AUTO_INCREMENT,
partido_id INT, 
marcador_id INT,
arbitro_id INT,
estadio_id INT, 
CONSTRAINT fk_evento_partido 
    FOREIGN KEY (partido_id) 
    REFERENCES Partidos(partido_id),
CONSTRAINT fk_evento_marcador 
    FOREIGN KEY (marcador_id) 
    REFERENCES Marcadores(marcador_id),
CONSTRAINT fk_evento_arbitro 
    FOREIGN KEY (arbitro_id) 
    REFERENCES Arbitros(arbitro_id),
CONSTRAINT fk_evento_estadio 
    FOREIGN KEY (estadio_id) 
    REFERENCES Estadios(estadio_id)
) ENGINE=InnoDB;

-- Tabla: PosicionesEquipos
CREATE TABLE IF NOT EXISTS PosicionesEquipos (
posicion_equipo_id INT PRIMARY KEY AUTO_INCREMENT,
fecha_registro DATE,
jornada INT,
posicion INT,
puntos INT,
partidos_ganados INT,
partidos_empatados INT,
partidos_perdidos INT,
criterio_desempate BOOLEAN,
equipo_id INT,
temporada_id INT,
CONSTRAINT fk_posicion_equipo_equipo 
    FOREIGN KEY (equipo_id) 
    REFERENCES Equipos(equipo_id),
CONSTRAINT fk_posicion_equipo_temporada 
    FOREIGN KEY (temporada_id) 
    REFERENCES Temporadas(temporada_id)
) ENGINE=InnoDB;

-- Tabla: Patrocinios
CREATE TABLE IF NOT EXISTS Patrocinios (
patrocinio_id INT PRIMARY KEY AUTO_INCREMENT,
patrocinador_id INT,
equipo_id INT,
temporada_id INT,
CONSTRAINT fk_patrocinio_patrocinador 
    FOREIGN KEY (patrocinador_id) 
    REFERENCES Patrocinadores(patrocinador_id),
CONSTRAINT fk_patrocinio_equipo 
    FOREIGN KEY (equipo_id) 
    REFERENCES Equipos(equipo_id),
CONSTRAINT fk_patrocinio_temporada 
    FOREIGN KEY (temporada_id) 
    REFERENCES Temporadas(temporada_id)
) ENGINE=InnoDB ;

-- Tabla: Lesiones
CREATE TABLE IF NOT EXISTS Lesiones (
lesion_id INT PRIMARY KEY AUTO_INCREMENT,
jugador_id INT,
descripcion_lesion VARCHAR(120),
fecha_inicio DATE,
fecha_fin DATE,
CONSTRAINT fk_lesion_jugador 
    FOREIGN KEY (jugador_id) 
    REFERENCES Jugadores(jugador_id)
) ENGINE=InnoDB ; 

-- Tabla: Contratos
CREATE TABLE IF NOT EXISTS Contratos (
contrato_id INT PRIMARY KEY AUTO_INCREMENT,
patrocinador_id INT,
equipo_id INT,
fecha_inicio DATE,
fecha_fin DATE,
CONSTRAINT fk_contrato_patrocinador 
    FOREIGN KEY (patrocinador_id) 
    REFERENCES Patrocinadores(patrocinador_id),
CONSTRAINT fk_contrato_equipo 
    FOREIGN KEY (equipo_id) 
    REFERENCES Equipos(equipo_id)
) ENGINE=InnoDB ;
