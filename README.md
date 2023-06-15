# SQL Comision 43410
# Proyecto de Base de Datos Deportiva

Este proyecto de Base de Datos Deportiva tiene como objetivo diseñar y crear una base de datos para almacenar información relacionada con deportes, equipos, jugadores, partidos y otros elementos relevantes. A continuación se muestra un resumen de lo que se ha realizado hasta ahora.

## Estructura de la base de datos

El diseño de la base de datos se ha realizado utilizando MySQL Workbench. El script SQL principal que crea las tablas y define las relaciones se encuentra en el archivo `proyect_sports_tables V1.4.sql`. La estructura de la DB ha sido desarrollada considerando las siguientes tablas:

- `Deportes`: Almacena los diferentes deportes disponibles.
- `PosicionesJugadores`: Registra las posiciones en un deporte.
- `Estadios`: Contiene información sobre los estadios donde se celebran los eventos deportivos.
- `Patrocinadores`: Registra los patrocinadores de los equipos.
- `Equipos`: Almacena información sobre los equipos participantes.
- `Jugadores`: Contiene información sobre los jugadores de los equipos.
- `Arbitros`: Registra los árbitros que participan en los eventos deportivos.
- `Temporadas`: Almacena información sobre las temporadas en las que se llevan a cabo los eventos.
- `Partidos`: Contiene información sobre los partidos específicos.
- `Marcadores`: Almacena los marcadores de los eventos deportivos.
- `Eventos`: Registra los eventos deportivos, como partidos o competiciones.
- `PosicionesEquipos`: Registra las posiciones de los equipos en cada temporada.
- `Patrocinios`: Almacena los patrocinios de los equipos en cada temporada.
- `Lesiones`: Registra las lesiones sufridas por los jugadores.
- `Contratos`: Registra los contratos entre los patrocinadores y los equipos.

## Vistas

Se han creado las siguientes vistas para facilitar el acceso a la información:

- `InformacionJugadores`: Muestra la información detallada de los jugadores, incluyendo su equipo, posición y deporte.
- `InformacionPartido`: Muestra la información de los partidos, incluyendo el estadio, temporada y deporte.
- `InformacionPartidos` (con equipos): Muestra la información de los partidos, incluyendo el estadio, temporada, deporte y los nombres de los equipos local y visitante.
- `MarcadoresPartidos`: Muestra los marcadores de los partidos, incluyendo el estadio, temporada, deporte, nombres de los equipos locales y visitantes, y los marcadores de cada equipo.
- `InformacionPatrocinios`: Muestra la información de los patrocinios, incluyendo el nombre del patrocinador, nombre del equipo, deporte y temporada.
- `InformacionLesiones`: Muestra la información de las lesiones de los jugadores, incluyendo su nombre, apellido, país, posición, deporte y descripción de la lesión.

## Funciones

Se han creado las siguientes funciones para obtener información específica:

- `InfoEquipos(nombre_equipo)`: Devuelve una cadena con la información del equipo indicado en el parametro de entrada, incluyendo su ID, nombre, ciudad y deporte.
- `InfoJugadorID(jugador_id)`: Devuelve una cadena con la información del jugadorID indicado en el parametro de entrada, incluyendo su nombre, apellido, país, fecha de nacimiento, equipo, posiciónvy deporte.

## Uso del repositorio

El repositorio contiene los siguientes archivos:

- `Data_to_import`: Carpeta con archivos *.csv que contienen data para importar como registros dentro de la base de datos.
- `readme.md`: Este archivo que proporciona una descripción general del proyecto, incluyendo la estructura de la base de datos, vistas, funciones y contacto del autor.
- `proyect_sportsDER V1.0.png`: Imagen del diagrama Entidad-Relación (ER) de la base de datos.
- `proyect_sports_data V2.0.sql`: Script SQL para insercion de datos dentro de las tablas especificadas.
- `proyect_sports_functions V1.0.sql`:Script SQL para la creacion de 2 funciones.
- `proyect_sports_tables V1.4.sql`: Script SQL que crea las tablas y define las relaciones de la base de datos.
- `proyect_sports_views V1.0.sql`:Script SQL para la creacion de 6 vistas.

## Contribución

Este proyecto está en su etapa inicial y cualquier contribución es bienvenida. Si deseas agregar nuevas funcionalidades, corregir errores o mejorar el diseño de la base de datos, puedes hacerlo a través de solicitudes de extracción (pull requests).

## Contacto

Si tienes alguna pregunta o sugerencia relacionada con este proyecto, no dudes en ponerte en contacto con el autor:

- Nombre: Alex
- Correo electrónico: mvlctrading@gmail.com
