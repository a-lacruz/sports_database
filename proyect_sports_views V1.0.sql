 -- Vista InformacionJugadores
CREATE VIEW InformacionJugadores AS
SELECT j.jugador_id, j.nombre, j.apellido, j.pais, j.fecha_nacimiento, e.nombre AS equipo, p.posicion, d.deporte
FROM Jugadores j
INNER JOIN Equipos e ON j.equipo_id = e.equipo_id
INNER JOIN PosicionesJugadores p ON j.posicion_id = p.posicion_id
INNER JOIN Deportes d ON p.deporte_id = d.deporte_id;

 -- Vista InformacionPartido
CREATE VIEW InformacionPartido AS
SELECT p.partido_id, p.fecha, p.hora, e.nombre AS estadio, t.nombre AS temporada, d.deporte
FROM Partidos p
INNER JOIN Estadios e ON p.estadio_id = e.estadio_id
INNER JOIN Temporadas t ON p.temporada_id = t.temporada_id
INNER JOIN Deportes d ON p.deporte_id = d.deporte_id;

 -- Vista InformacionPartidos (con equipos)
CREATE VIEW InformacionPartidos AS
SELECT p.partido_id, p.fecha, p.hora, e.nombre AS estadio, t.nombre AS temporada, d.deporte, e_local.nombre AS equipo_local, e_visitante.nombre AS equipo_visitante
FROM Partidos p
INNER JOIN Estadios e ON p.estadio_id = e.estadio_id
INNER JOIN Temporadas t ON p.temporada_id = t.temporada_id
INNER JOIN Deportes d ON p.deporte_id = d.deporte_id
INNER JOIN Equipos e_local ON e_local.equipo_id = (
    SELECT equipo_local_id
    FROM Marcadores
    WHERE partido_id = p.partido_id
)
INNER JOIN Equipos e_visitante ON e_visitante.equipo_id = (
    SELECT equipo_visitante_id
    FROM Marcadores
    WHERE partido_id = p.partido_id
);

-- Vista MarcadoresPartidos
CREATE VIEW MarcadoresPartidos AS
SELECT m.marcador_id, p.fecha, p.hora, e.nombre AS estadio, t.nombre AS temporada, d.deporte,
       el.nombre AS equipo_local, ev.nombre AS equipo_visitante, m.marcador_local, m.marcador_visitante
FROM Marcadores m
INNER JOIN Partidos p ON m.partido_id = p.partido_id
INNER JOIN Estadios e ON p.estadio_id = e.estadio_id
INNER JOIN Temporadas t ON p.temporada_id = t.temporada_id
INNER JOIN Deportes d ON p.deporte_id = d.deporte_id
INNER JOIN Equipos el ON m.equipo_local_id = el.equipo_id
INNER JOIN Equipos ev ON m.equipo_visitante_id = ev.equipo_id;

-- Vista InformacionPatrocinios
CREATE VIEW InformacionPatrocinios AS
SELECT p.patrocinador_id, p.nombre AS patrocinador, e.equipo_id, e.nombre AS equipo, d.deporte, t.nombre AS temporada
FROM Patrocinadores p
INNER JOIN Patrocinios ps ON p.patrocinador_id = ps.patrocinador_id
INNER JOIN Equipos e ON ps.equipo_id = e.equipo_id
INNER JOIN Deportes d ON e.deporte_id = d.deporte_id
INNER JOIN Temporadas t ON ps.temporada_id = t.temporada_id;

-- Vista InformacionLesiones
CREATE VIEW InformacionLesiones AS
SELECT l.lesion_id, j.nombre, j.apellido, j.pais, p.posicion, d.deporte, l.descripcion_lesion
FROM Lesiones l
INNER JOIN Jugadores j ON l.jugador_id = j.jugador_id
INNER JOIN PosicionesJugadores p ON j.posicion_id = p.posicion_id
INNER JOIN Deportes d ON p.deporte_id = d.deporte_id;
