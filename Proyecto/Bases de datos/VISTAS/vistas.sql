CREATE VIEW V_Boleta AS
	SELECT * FROM Boletas JOIN Ubicaciones ON (Boletas.idUbicacion=Ubicaciones.idUbicacion);
CREATE VIEW V_Peliculas AS
	SELECT idPelicula, idGenero, nombre, director, duracion, horaInicio, horaFin, clasificacion
	FROM Funciones JOIN Peliculas ON (idPelicula=idPelicula) JOIN Generos ON (idGenero=idGenero);
CREATE VIEW V_Clientes AS
	SELECT idCliente, primerNombre,segundoNombre, apellidos, documento, puntajePelicula, calificacionServicios, generoFavorito
	FROM Clientes JOIN EncuestasDeSatisfaccion ON (idCliente=idCliente);