DELIMITER $$
CREATE FUNCTION InfoEquipos(nombre_equipo VARCHAR(100))
RETURNS VARCHAR(1000)
DETERMINISTIC
BEGIN
    DECLARE equipo_info VARCHAR(1000);
    SELECT CONCAT('ID: ', e.equipo_id, ';  ',
                  'Nombre: ', e.nombre, ';  ',
                  'Ciudad: ', e.ciudad, ';  ',
                  'Deporte: ', d.deporte) AS info
    INTO equipo_info
    FROM Equipos e
    INNER JOIN Deportes d ON e.deporte_id = d.deporte_id
    WHERE e.nombre = nombre_equipo;
    
    RETURN equipo_info;
END $$
DELIMITER ;

DELIMITER $$
CREATE FUNCTION InfoJugadorID(jugador_id INT)
RETURNS VARCHAR(1000)
DETERMINISTIC
BEGIN
    DECLARE jugador_info VARCHAR(1000);
    SELECT CONCAT('ID: ', j.jugador_id, ';  ',
                  'Nombre: ', j.nombre, ';  ',
                  'Apellido: ', j.apellido, ';  ',
                  'País: ', j.pais, ';  ',
                  'Fecha de nacimiento: ', j.fecha_nacimiento, ';  ',
                  'Equipo: ', e.nombre, ';  ',
                  'Posición: ', p.posicion, ';  ',
                  'Deporte: ', d.deporte)
    INTO jugador_info
    FROM Jugadores j
    INNER JOIN Equipos e ON j.equipo_id = e.equipo_id
    INNER JOIN PosicionesJugadores p ON j.posicion_id = p.posicion_id
    INNER JOIN Deportes d ON p.deporte_id = d.deporte_id
    WHERE j.jugador_id = jugador_id;
    
    RETURN jugador_info;
END $$
DELIMITER ;